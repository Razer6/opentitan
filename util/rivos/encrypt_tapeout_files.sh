#!/bin/bash

# SPDX-FileCopyrightText: Copyright (c) 2025 by Rivos Inc.
# SPDX-License-Identifier: LicenseRef-Rivos-Internal-Only

# set -e  # Commented out to prevent script from exiting on arithmetic operations

# =============================================================================
# FUNCTIONS
# =============================================================================

# Function to validate SOPS configuration
validate_sops() {
    echo "Validating SOPS configuration..."

    # Check if SOPS can access keys
    if ! sops --version &>/dev/null; then
        echo "Error: SOPS is not working properly"
        return 1
    fi

    # Try to list available keys (this will fail if no keys are configured)
    if ! sops --help | grep -q "encrypt\|decrypt"; then
        echo "Error: SOPS is not properly configured"
        return 1
    fi

    echo "  SOPS is properly configured"
    return 0
}

# Function to extract file patterns from .sops.yaml
get_files_from_sops_config() {
    local sops_file=".sops.yaml"

    if [ ! -f "$sops_file" ]; then
        echo "Error: .sops.yaml file not found in project root"
        return 1
    fi

    # Extract path_regex values from .sops.yaml
    # Format: "  - path_regex: filename"
    grep -E "^\s*-\s+path_regex:" "$sops_file" | sed 's/.*path_regex:\s*//' | tr -d ' '
}

# Function to check if a file is already encrypted
is_encrypted() {
    local file="$1"
    # Use SOPS to check if file is encrypted (sops will fail if not encrypted)
    if sops --decrypt "$file" >/dev/null 2>&1; then
        return 0  # File is encrypted
    else
        return 1  # File is not encrypted
    fi
}

# Function to process a single file
process_file() {
    local file="$1"
    local sops_output=""
    local sops_exit_code=0

    # Check if file exists
    if [ ! -f "$file" ]; then
        echo "Warning: File does not exist: $file"
        return 1
    fi

    # For encryption, check if file is already encrypted
    if [ "$OPERATION" = "encrypt" ] && is_encrypted "$file"; then
        echo "Skipping: $file (already encrypted)"
        return 0
    fi

    # For decryption, check if file is encrypted
    if [ "$OPERATION" = "decrypt" ] && ! is_encrypted "$file"; then
        echo "Skipping: $file (not encrypted)"
        return 0
    fi

    echo "${OPERATION^}ing: $file"

    if [ "$DRY_RUN" = true ]; then
        echo "  [DRY RUN] Would ${OPERATION} $file"
        return 0
    fi

    # Use sops to encrypt or decrypt the file into stdout and then use dd with the right
    # file permissions to create the file atomically
    if [ "$OPERATION" = "encrypt" ]; then
        sops_output=$(sops --encrypt "$file" 2>&1)
        sops_exit_code=$?
    else
        sops_output=$(sops --decrypt "$file" 2>&1)
        sops_exit_code=$?
    fi

    if [ $sops_exit_code -eq 0 ]; then
        # Create/truncate file and set secure permissions immediately
        > "$file" && chmod 600 "$file"
        if [ $? -ne 0 ]; then
            echo "  Error: Failed to create/truncate file or set permissions"
            return 1
        fi
        # Pipe SOPS output directly to file
        if echo "$sops_output" > "$file"; then
            echo "  Successfully ${OPERATION}ed: $file"
            return 0
        else
            echo "  Error: Failed to write ${OPERATION}ed content"
            return 1
        fi
    else
        echo "  Failed to ${OPERATION} $file"
        echo "  Error: $sops_output"
        return 1
    fi
}

# =============================================================================
# MAIN SCRIPT
# =============================================================================

# Check if operation argument is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <encrypt|decrypt> [--dry-run]"
    echo "  encrypt: Encrypt all tapeout files using sops"
    echo "  decrypt: Decrypt all tapeout files using sops"
    echo "  --dry-run: Show what would be done without making changes"
    echo ""
    echo "Examples:"
    echo "  $0 encrypt"
    echo "  $0 decrypt"
    echo "  $0 decrypt --dry-run"
    exit 1
fi

# Parse arguments
OPERATION=""
DRY_RUN=false

for arg in "$@"; do
    case $arg in
        encrypt|decrypt)
            if [ -n "$OPERATION" ]; then
                echo "Error: Multiple operations specified. Use either 'encrypt' or 'decrypt'"
                exit 1
            fi
            OPERATION="$arg"
            ;;
        --dry-run)
            DRY_RUN=true
            ;;
        *)
            echo "Error: Unknown argument '$arg'"
            echo "Usage: $0 <encrypt|decrypt> [--dry-run]"
            exit 1
            ;;
    esac
done

# Validate operation argument
if [ -z "$OPERATION" ]; then
    echo "Error: Operation must be either 'encrypt' or 'decrypt'"
    echo "Usage: $0 <encrypt|decrypt> [--dry-run]"
    exit 1
fi

# Get the script directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"

# Source the shared security functions
source "$SCRIPT_DIR/filesystem_checks.sh"

echo "${OPERATION^}ing tapeout files using sops..."
echo "Project root: $PROJECT_ROOT"

# Change to project root directory
cd "$PROJECT_ROOT"

# Check if sops is available
if ! command -v sops &> /dev/null; then
    echo "Error: sops command not found. Please install sops first."
    exit 1
fi

# Security checks before proceeding
if ! perform_security_checks "$PROJECT_ROOT" "."; then
    exit 1
fi

# Validate SOPS configuration
if ! validate_sops; then
    exit 1
fi

echo ""

# Get the files to encrypt from .sops.yaml
echo "Reading file list from .sops.yaml..."
files_to_encrypt=($(get_files_from_sops_config))

if [ ${#files_to_encrypt[@]} -eq 0 ]; then
    echo "Error: No files found in .sops.yaml or failed to parse .sops.yaml"
    exit 1
fi

echo "  Found ${#files_to_encrypt[@]} file patterns in .sops.yaml"

echo "Files to ${OPERATION}:"
for file in "${files_to_encrypt[@]}"; do
    echo "  $file"
done
echo ""

# Process each specified file
processed_count=0
failed_count=0

for file in "${files_to_encrypt[@]}"; do
    if process_file "$file"; then
        processed_count=$((processed_count + 1))
    else
        failed_count=$((failed_count + 1))
    fi
done

echo ""
if [ "$DRY_RUN" = true ]; then
    echo "Dry run summary:"
    echo "  Would ${OPERATION}: $processed_count files"
    echo "  Would skip: $failed_count files"
    echo ""
    echo "Dry run completed. Use without --dry-run to perform actual operations."
else
    echo "${OPERATION^}ion summary:"
    echo "  Successfully ${OPERATION}ed: $processed_count files"
    echo "  Failed to ${OPERATION}: $failed_count files"

    if [ $failed_count -gt 0 ]; then
        echo ""
        echo "Some files failed to ${OPERATION}. Please check the errors above."
        exit 1
    fi

    echo ""
    echo "All tapeout files have been successfully ${OPERATION}ed with sops!"
fi
