#!/bin/bash

# SPDX-FileCopyrightText: Copyright (c) 2025 by Rivos Inc.
# SPDX-License-Identifier: LicenseRef-Rivos-Internal-Only

set -e

# Check if exactly one argument is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <testing|tapeout>"
    echo "  testing: Generate development seeds"
    echo "  tapeout: Generate production seeds"
    exit 1
fi

# Validate input argument
if [ "$1" != "testing" ] && [ "$1" != "tapeout" ]; then
    echo "Error: Argument must be either 'testing' or 'tapeout'"
    echo "Usage: $0 <testing|tapeout>"
    exit 1
fi

SEED_TYPE="$1"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"
SEEDGEN_SCRIPT="$SCRIPT_DIR/seedgen.py"
HW_DIR="$PROJECT_ROOT/hw"

# Source the shared security functions
source "$SCRIPT_DIR/filesystem_checks.sh"

echo "Running seed generation for type: $SEED_TYPE"
echo "Script directory: $SCRIPT_DIR"
echo "Seedgen script: $SEEDGEN_SCRIPT"
echo "HW directory: $HW_DIR"

# Check if seedgen script exists
if [ ! -f "$SEEDGEN_SCRIPT" ]; then
    echo "Error: seedgen.py not found at $SEEDGEN_SCRIPT"
    exit 1
fi

# Check if hw directory exists
if [ ! -d "$HW_DIR" ]; then
    echo "Error: hw directory not found at $HW_DIR"
    exit 1
fi

# Security checks before proceeding
if ! perform_security_checks "$PROJECT_ROOT" "."; then
    exit 1
fi

# Generate seeds for each top-level module
echo ""
echo "=== Generating seeds for darjeeling (with lc_ctrl and otp_img) ==="
python3 "$SEEDGEN_SCRIPT" "$SEED_TYPE" -t darjeeling --include-seeds lc_ctrl otp_img

echo ""
echo "=== Generating seeds for pwc ==="
python3 "$SEEDGEN_SCRIPT" "$SEED_TYPE" -t pwc

echo ""
echo "=== Generating seeds for mio ==="
python3 "$SEEDGEN_SCRIPT" "$SEED_TYPE" -t mio

echo ""
echo "=== Running Makefile in hw directory ==="
cd "$HW_DIR"
make all SEED_MODE="$SEED_TYPE" TOPS="top_darjeeling top_mio top_pwc"

echo ""
echo "=== Seed generation and build completed successfully ==="
