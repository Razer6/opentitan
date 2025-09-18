#!/usr/bin/env bash
# Copyright lowRISC contributors (OpenTitan project).
# Licensed under the Apache License, Version 2.0, see LICENSE for details.
# SPDX-License-Identifier: Apache-2.0

# Script to validate that the number of values in alert classification arrays
# matches the number of alerts in the alert handler configuration
# and validate/update digest values
# Usage: ./validate_alert_classification.sh [--update] <alert_handler_ipconfig.hjson> <owner_sw_cfg.hjson> [top_name]

set -e

# =============================================================================
# FUNCTIONS
# =============================================================================

# Function to count classification values in a section
count_classification_values() {
    local start_name="$1"
    local end_name="$2"
    local section_type="$3"
    local file="$4"
    
    # Find start and end line numbers
    local start_line=$(grep -n "name: \"$start_name\"" "$file" | cut -d: -f1)
    local end_line=$(grep -n "name: \"$end_name\"" "$file" | cut -d: -f1)
    
    if [ -z "$start_line" ] || [ -z "$end_line" ]; then
        echo "Error: Could not find $section_type classification section boundaries"
        exit 1
    fi
    
    # Extract the range and count hex values
    local count=$(sed -n "${start_line},${end_line}p" "$file" | grep -c '"0x' || echo "0")
    
    if [ "$count" -eq 0 ]; then
        echo "Error: Could not find or count $start_name values"
        exit 1
    fi
    
    echo "$count"
}

# Function to convert decimal to hex
decimal_to_hex() {
    printf "0x%x" "$1"
}

# Function to extract digest value from owner_sw_cfg.hjson
extract_digest_value() {
    local digest_name="$1"
    local file="$2"
    grep -A 1 "name: \"$digest_name\"" "$file" | grep "value:" | sed 's/.*value: "0x\([0-9a-fA-F]*\)".*/\1/'
}

# Function to update digest value in owner_sw_cfg.hjson
update_digest_value() {
    local digest_name="$1"
    local new_hex_value="$2"
    local file="$3"
    local temp_file=$(mktemp)
    
    # Create backup
    cp "$file" "${file}.backup.$(date +%Y%m%d_%H%M%S)"
    
    # Update the value using sed
    sed "/name: \"$digest_name\"/,/value: \"0x[0-9a-fA-F]*\"/s/value: \"0x[0-9a-fA-F]*\"/value: \"$new_hex_value\"/" "$file" > "$temp_file"
    mv "$temp_file" "$file"
}

# =============================================================================
# MAIN SCRIPT
# =============================================================================

UPDATE_MODE=false
TOP_NAME="darjeeling"

# Parse arguments
while [[ $# -gt 0 ]]; do
    case $1 in
        --update)
            UPDATE_MODE=true
            shift
            ;;
        *)
            if [ -z "$ALERT_HANDLER_FILE" ]; then
                ALERT_HANDLER_FILE="$1"
            elif [ -z "$OWNER_SW_CFG_FILE" ]; then
                OWNER_SW_CFG_FILE="$1"
            elif [ -z "$TOP_NAME" ] || [ "$TOP_NAME" = "darjeeling" ]; then
                TOP_NAME="$1"
            else
                echo "Error: Too many arguments"
                exit 1
            fi
            shift
            ;;
    esac
done

# Check required arguments
if [ -z "$ALERT_HANDLER_FILE" ] || [ -z "$OWNER_SW_CFG_FILE" ]; then
    echo "Usage: $0 [--update] <alert_handler_ipconfig.hjson> <owner_sw_cfg.hjson> [top_name]"
    echo "  --update: Update the digest values in the owner_sw_cfg.hjson file"
    echo "  alert_handler_ipconfig.hjson: Alert handler configuration file"
    echo "  owner_sw_cfg.hjson: Owner SW configuration file"
    echo "  top_name: Top name (default: darjeeling)"
    exit 1
fi

# Check if files exist
if [ ! -f "$ALERT_HANDLER_FILE" ]; then
    echo "Error: Alert handler file '$ALERT_HANDLER_FILE' not found"
    exit 1
fi

if [ ! -f "$OWNER_SW_CFG_FILE" ]; then
    echo "Error: Owner SW config file '$OWNER_SW_CFG_FILE' not found"
    exit 1
fi

echo "Extracting alert counts from alert handler..."
# Use grep to extract n_alerts since it's HJSON format
ALERT_COUNT=$(grep 'n_alerts:' "$ALERT_HANDLER_FILE" | sed 's/.*n_alerts: *\([0-9]*\).*/\1/')
LOC_ALERT_COUNT=$(grep 'n_loc_alert:' "$ALERT_HANDLER_FILE" | sed 's/.*n_loc_alert: *\([0-9]*\).*/\1/')

if [ -z "$ALERT_COUNT" ] || ! [[ "$ALERT_COUNT" =~ ^[0-9]+$ ]]; then
    echo "Error: Could not extract n_alerts from alert handler config"
    exit 1
fi

if [ -z "$LOC_ALERT_COUNT" ] || ! [[ "$LOC_ALERT_COUNT" =~ ^[0-9]+$ ]]; then
    echo "Error: Could not extract n_loc_alert from alert handler config"
    exit 1
fi

echo "   Alert handler has $ALERT_COUNT alerts"
echo "   Alert handler has $LOC_ALERT_COUNT local alerts"

echo "Extracting classification counts from owner SW config..."

# Count regular alert classification values
CLASSIFICATION_COUNT=$(count_classification_values \
    "OWNER_SW_CFG_ROM_ALERT_CLASSIFICATION" \
    "OWNER_SW_CFG_ROM_LOCAL_ALERT_CLASSIFICATION" \
    "alert" \
    "$OWNER_SW_CFG_FILE")

echo "   Owner SW config has $CLASSIFICATION_COUNT alert classification values"

# Count local alert classification values
LOCAL_CLASSIFICATION_COUNT=$(count_classification_values \
    "OWNER_SW_CFG_ROM_LOCAL_ALERT_CLASSIFICATION" \
    "OWNER_SW_CFG_ROM_ALERT_ACCUM_THRESH" \
    "local alert" \
    "$OWNER_SW_CFG_FILE")

echo "   Owner SW config has $LOCAL_CLASSIFICATION_COUNT local alert classification values"

# Digest validation (always performed)
DIGEST_MATCH=true
echo ""
echo "Validating digest values..."

# Extract current digest values from owner_sw_cfg.hjson
CURRENT_PROD_HEX=$(extract_digest_value "OWNER_SW_CFG_ROM_ALERT_DIGEST_PROD" "$OWNER_SW_CFG_FILE")
CURRENT_PROD_END_HEX=$(extract_digest_value "OWNER_SW_CFG_ROM_ALERT_DIGEST_PROD_END" "$OWNER_SW_CFG_FILE")
CURRENT_DEV_HEX=$(extract_digest_value "OWNER_SW_CFG_ROM_ALERT_DIGEST_DEV" "$OWNER_SW_CFG_FILE")
CURRENT_RMA_HEX=$(extract_digest_value "OWNER_SW_CFG_ROM_ALERT_DIGEST_RMA" "$OWNER_SW_CFG_FILE")

if [ -z "$CURRENT_PROD_HEX" ] || [ -z "$CURRENT_PROD_END_HEX" ] || [ -z "$CURRENT_DEV_HEX" ] || [ -z "$CURRENT_RMA_HEX" ]; then
    echo "Error: Could not extract digest values from owner SW config"
    exit 1
fi

echo "   Current digest values:"
echo "     PROD: 0x$CURRENT_PROD_HEX"
echo "     PROD_END: 0x$CURRENT_PROD_END_HEX"
echo "     DEV: 0x$CURRENT_DEV_HEX"
echo "     RMA: 0x$CURRENT_RMA_HEX"

# Generate expected digest values using opentitantool
echo "   Generating expected digest values using opentitantool..."

# Determine the top-specific paths
TOP_ALERT_HANDLER_FILE="hw/top_${TOP_NAME}/ip_autogen/alert_handler/data/alert_handler.hjson"
TOP_OWNER_SW_CFG_FILE="hw/top_${TOP_NAME}/data/otp/otp_ctrl_img_owner_sw_cfg.hjson"

if [ ! -f "$TOP_ALERT_HANDLER_FILE" ]; then
    echo "Error: Top-specific alert handler file '$TOP_ALERT_HANDLER_FILE' not found"
    exit 1
fi

if [ ! -f "$TOP_OWNER_SW_CFG_FILE" ]; then
    echo "Error: Top-specific owner SW config file '$TOP_OWNER_SW_CFG_FILE' not found"
    exit 1
fi

# Generate the alert handler registers
echo "   Generating alert handler registers..."
./util/regtool.py "$TOP_ALERT_HANDLER_FILE" -R -o "sw/host/opentitanlib/src/otp/alert_handler_regs.rs"

# Run opentitantool to get expected digest values
echo "   Running opentitantool to calculate expected digest values..."
echo "   Command: bazel run //sw/host/opentitantool -- --rcfile=\"\" otp alert-digest \"$(realpath "$TOP_OWNER_SW_CFG_FILE")\""
EXPECTED_DIGESTS=$(timeout 300 bazel run //sw/host/opentitantool -- --rcfile="" otp alert-digest "$(realpath "$TOP_OWNER_SW_CFG_FILE")" 2>&1)

if [ -z "$EXPECTED_DIGESTS" ]; then
    echo "Error: Failed to generate expected digest values"
    echo "Debug: opentitantool output was empty"
    exit 1
fi

# Check if opentitantool failed
if echo "$EXPECTED_DIGESTS" | grep -q "ERROR\|FAILED\|Exception"; then
    echo "Error: opentitantool failed with error:"
    echo "$EXPECTED_DIGESTS"
    exit 1
fi

echo "   Debug: opentitantool output (first 500 chars):"
echo "$EXPECTED_DIGESTS" | head -c 500
echo ""

# Extract expected values from the JSON output
EXPECTED_PROD_DECIMAL=$(echo "$EXPECTED_DIGESTS" | grep -o '"OWNER_SW_CFG_ROM_ALERT_DIGEST_PROD"[^}]*"value": *\([0-9]*\)' | grep -o '[0-9]*$')
EXPECTED_PROD_END_DECIMAL=$(echo "$EXPECTED_DIGESTS" | grep -o '"OWNER_SW_CFG_ROM_ALERT_DIGEST_PROD_END"[^}]*"value": *\([0-9]*\)' | grep -o '[0-9]*$')
EXPECTED_DEV_DECIMAL=$(echo "$EXPECTED_DIGESTS" | grep -o '"OWNER_SW_CFG_ROM_ALERT_DIGEST_DEV"[^}]*"value": *\([0-9]*\)' | grep -o '[0-9]*$')
EXPECTED_RMA_DECIMAL=$(echo "$EXPECTED_DIGESTS" | grep -o '"OWNER_SW_CFG_ROM_ALERT_DIGEST_RMA"[^}]*"value": *\([0-9]*\)' | grep -o '[0-9]*$')

if [ -z "$EXPECTED_PROD_DECIMAL" ] || [ -z "$EXPECTED_PROD_END_DECIMAL" ] || [ -z "$EXPECTED_DEV_DECIMAL" ] || [ -z "$EXPECTED_RMA_DECIMAL" ]; then
    echo "Error: Could not extract expected digest values from opentitantool output"
    echo "Output was: $EXPECTED_DIGESTS"
    exit 1
fi

# Convert to hex
EXPECTED_PROD_HEX=$(decimal_to_hex "$EXPECTED_PROD_DECIMAL")
EXPECTED_PROD_END_HEX=$(decimal_to_hex "$EXPECTED_PROD_END_DECIMAL")
EXPECTED_DEV_HEX=$(decimal_to_hex "$EXPECTED_DEV_DECIMAL")
EXPECTED_RMA_HEX=$(decimal_to_hex "$EXPECTED_RMA_DECIMAL")

echo "   Expected digest values:"
echo "     PROD: $EXPECTED_PROD_HEX ($EXPECTED_PROD_DECIMAL)"
echo "     PROD_END: $EXPECTED_PROD_END_HEX ($EXPECTED_PROD_END_DECIMAL)"
echo "     DEV: $EXPECTED_DEV_HEX ($EXPECTED_DEV_DECIMAL)"
echo "     RMA: $EXPECTED_RMA_HEX ($EXPECTED_RMA_DECIMAL)"

# Compare digest values
if [ "0x$CURRENT_PROD_HEX" != "$EXPECTED_PROD_HEX" ]; then
    DIGEST_MATCH=false
fi
if [ "0x$CURRENT_PROD_END_HEX" != "$EXPECTED_PROD_END_HEX" ]; then
    DIGEST_MATCH=false
fi
if [ "0x$CURRENT_DEV_HEX" != "$EXPECTED_DEV_HEX" ]; then
    DIGEST_MATCH=false
fi
if [ "0x$CURRENT_RMA_HEX" != "$EXPECTED_RMA_HEX" ]; then
    DIGEST_MATCH=false
fi

# Update mode
if [ "$UPDATE_MODE" = true ]; then
    echo ""
    echo "Update mode enabled..."
    
    if [ "$DIGEST_MATCH" = false ]; then
        echo "   Updating digest values..."
        update_digest_value "OWNER_SW_CFG_ROM_ALERT_DIGEST_PROD" "$EXPECTED_PROD_HEX" "$OWNER_SW_CFG_FILE"
        update_digest_value "OWNER_SW_CFG_ROM_ALERT_DIGEST_PROD_END" "$EXPECTED_PROD_END_HEX" "$OWNER_SW_CFG_FILE"
        update_digest_value "OWNER_SW_CFG_ROM_ALERT_DIGEST_DEV" "$EXPECTED_DEV_HEX" "$OWNER_SW_CFG_FILE"
        update_digest_value "OWNER_SW_CFG_ROM_ALERT_DIGEST_RMA" "$EXPECTED_RMA_HEX" "$OWNER_SW_CFG_FILE"
        echo "   SUCCESS: Digest values updated successfully!"
        echo "   Backup created: ${OWNER_SW_CFG_FILE}.backup.$(date +%Y%m%d_%H%M%S)"
    else
        echo "   SUCCESS: Digest values are already correct, no update needed"
    fi
fi

echo ""
echo "   Validation Results:"
echo "   Alert Handler Alerts: $ALERT_COUNT"
echo "   Alert Classification Values: $CLASSIFICATION_COUNT"
echo "   Alert Handler Local Alerts: $LOC_ALERT_COUNT"
echo "   Local Alert Classification Values: $LOCAL_CLASSIFICATION_COUNT"
echo "   Digest Values Match: $([ "$DIGEST_MATCH" = true ] && echo "YES" || echo "NO")"

# Compare the counts
ALERT_MATCH=false
LOCAL_ALERT_MATCH=false

if [ "$ALERT_COUNT" -eq "$CLASSIFICATION_COUNT" ]; then
    ALERT_MATCH=true
fi

if [ "$LOC_ALERT_COUNT" -eq "$LOCAL_CLASSIFICATION_COUNT" ]; then
    LOCAL_ALERT_MATCH=true
fi

# Final validation result
if [ "$ALERT_MATCH" = true ] && [ "$LOCAL_ALERT_MATCH" = true ] && [ "$DIGEST_MATCH" = true ]; then
    echo ""
    echo "SUCCESS: All validations passed!"
    echo "   Regular alerts: $ALERT_COUNT items"
    echo "   Local alerts: $LOC_ALERT_COUNT items"
    echo "   Digest values: All match expected values"
    exit 0
else
    echo ""
    echo "VALIDATION FAILED:"
    if [ "$ALERT_MATCH" = false ]; then
        echo "   Regular alerts: handler has $ALERT_COUNT, config has $CLASSIFICATION_COUNT"
    fi
    if [ "$LOCAL_ALERT_MATCH" = false ]; then
        echo "   Local alerts: handler has $LOC_ALERT_COUNT, config has $LOCAL_CLASSIFICATION_COUNT"
    fi
    if [ "$DIGEST_MATCH" = false ]; then
        echo "   Digest values: Current values do not match expected values"
        if [ "$UPDATE_MODE" = false ]; then
            echo "     Use --update flag to automatically update digest values"
        fi
    fi
    exit 1
fi
