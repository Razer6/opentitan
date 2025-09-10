#!/bin/bash

# SPDX-FileCopyrightText: Copyright (c) 2025 by Rivos Inc.
# SPDX-License-Identifier: LicenseRef-Rivos-Internal-Only

# set -e  # Commented out to prevent script from exiting on arithmetic operations

# Check if operation argument is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <encrypt|decrypt>"
    echo "  encrypt: Encrypt all tapeout files using sops"
    echo "  decrypt: Decrypt all tapeout files using sops"
    echo ""
    echo "Examples:"
    echo "  $0 encrypt"
    echo "  $0 decrypt"
    exit 1
fi

# Validate operation argument
if [ "$1" != "encrypt" ] && [ "$1" != "decrypt" ]; then
    echo "Error: Operation must be either 'encrypt' or 'decrypt'"
    echo "Usage: $0 <encrypt|decrypt>"
    exit 1
fi

OPERATION="$1"

# Get the script directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"

echo "${OPERATION^}ing tapeout files using sops..."
echo "Project root: $PROJECT_ROOT"

# Change to project root directory
cd "$PROJECT_ROOT"

# Check if sops is available
if ! command -v sops &> /dev/null; then
    echo "Error: sops command not found. Please install sops first."
    exit 1
fi

# Define the files to encrypt
files_to_encrypt=(
    "hw/top_darjeeling/data/top_darjeeling_seed.tapeout.hjson"
    "hw/top_darjeeling/data/autogen/top_darjeeling.secrets.tapeout.gen.hjson"
    "hw/top_darjeeling/rtl/autogen/tapeout/lc_ctrl_state_pkg.sv"
    "hw/top_darjeeling/rtl/autogen/tapeout/top_darjeeling_rnd_cnst_pkg.sv"
    "hw/top_mio/data/top_mio_seed.tapeout.hjson"
    "hw/top_mio/data/autogen/top_mio.secrets.tapeout.gen.hjson"
    "hw/top_mio/rtl/autogen/tapeout/top_mio_rnd_cnst_pkg.sv"
    "hw/top_pwc/data/top_pwc_seed.tapeout.hjson"
    "hw/top_pwc/data/autogen/top_pwc.secrets.tapeout.gen.hjson"
    "hw/top_pwc/rtl/autogen/tapeout/top_pwc_rnd_cnst_pkg.sv"
)

echo "Files to ${OPERATION}:"
for file in "${files_to_encrypt[@]}"; do
    echo "  $file"
done
echo ""

# Process each specified file
processed_count=0
failed_count=0


for file in "${files_to_encrypt[@]}"; do
    # Check if file exists
    if [ ! -f "$file" ]; then
        echo "Warning: File does not exist: $file"
        continue
    fi
    
    echo "${OPERATION^}ing: $file"
    
    # Use sops to encrypt or decrypt the file in-place
    if [ "$OPERATION" = "encrypt" ]; then
        if sops --encrypt --in-place "$file" 2>/dev/null; then
            echo "  ✓ Successfully encrypted: $file"
            processed_count=$((processed_count + 1))
        else
            echo "  ✗ Failed to encrypt: $file"
            failed_count=$((failed_count + 1))
        fi
    else
        if sops --decrypt --in-place "$file" 2>/dev/null; then
            echo "  ✓ Successfully decrypted: $file"
            processed_count=$((processed_count + 1))
        else
            echo "  ✗ Failed to decrypt: $file"
            failed_count=$((failed_count + 1))
        fi
    fi
done

echo ""
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
