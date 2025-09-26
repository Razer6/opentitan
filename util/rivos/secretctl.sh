#!/bin/bash

# SPDX-FileCopyrightText: Copyright (c) 2025 by Rivos Inc.
# SPDX-License-Identifier: LicenseRef-Rivos-Internal-Only

# set -e  # Commented out to prevent script from exiting on arithmetic operations

# Color definitions
RED='\033[0;31m'
ORANGE='\033[0;33m'
NC='\033[0m' # No Color

# =============================================================================
# FUNCTIONS
# =============================================================================

# Function to validate SOPS configuration
validate_sops() {
    echo "Validating SOPS configuration..."

    # Check if SOPS can access keys
    if ! sops --version &>/dev/null; then
        echo -e "${RED}Error: SOPS is not working properly${NC}"
        return 1
    fi

    # Try to list available keys (this will fail if no keys are configured)
    if ! sops --help | grep -q "encrypt\|decrypt"; then
        echo -e "${RED}Error: SOPS is not properly configured${NC}"
        return 1
    fi

    echo "  SOPS is properly configured"
    return 0
}

# Function to extract file patterns from .sops.yaml
get_files_from_sops_config() {
    local sops_file=".sops.yaml"

    if [ ! -f "$sops_file" ]; then
        echo -e "${RED}Error: .sops.yaml file not found in project root${NC}"
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
        echo -e "${ORANGE}Warning: File does not exist: $file${NC}"
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
            echo -e "  ${RED}Error: Failed to create/truncate file or set permissions${NC}"
            return 1
        fi
        # Pipe SOPS output directly to file
        if echo "$sops_output" > "$file"; then
            echo "  Successfully ${OPERATION}ed: $file"
            return 0
        else
            echo -e "  ${RED}Error: Failed to write ${OPERATION}ed content${NC}"
            return 1
        fi
    else
        echo -e "  ${RED}Failed to ${OPERATION} $file${NC}"
        echo -e "  ${RED}Error: $sops_output${NC}"
        return 1
    fi
}

# Function to clean (restore encrypted files from git)
clean_files() {
    local file="$1"

    # Check if file exists in git
    if ! git ls-files --error-unmatch "$file" >/dev/null 2>&1; then
        echo -e "${ORANGE}Warning: File not tracked in git: $file${NC}"
        return 1
    fi

    echo "Cleaning: $file"

    if [ "$DRY_RUN" = true ]; then
        echo "  [DRY RUN] Would restore $file from git"
        return 0
    fi

    # Use git to restore the file to its last committed state
    if git checkout HEAD -- "$file" 2>/dev/null; then
        echo "  Successfully restored: $file"
        return 0
    else
        echo -e "  ${RED}Error: Failed to restore $file from git${NC}"
        return 1
    fi
}

# Function to perform HJSON structure sanity check
perform_hjson_sanity_check() {
    local hjson_diff_script="$SCRIPT_DIR/hjson_structure_diff.py"
    local overall_success=0

    echo "Performing HJSON structure sanity checks..."

    # Define the top configurations to check
    local -a top_configs=("darjeeling" "mio" "pwc")

    for top_config in "${top_configs[@]}"; do
        local encrypted_file="hw/top_${top_config}/data/autogen/top_${top_config}.secrets.tapeout.gen.hjson"
        local testing_file="hw/top_${top_config}/data/autogen/top_${top_config}.secrets.testing.gen.hjson"

        echo ""
        echo "Checking top_${top_config}:"
        echo "  Comparing: $encrypted_file"
        echo "  With:      $testing_file"

        # Run the structure comparison
        if python3 "$hjson_diff_script" "$encrypted_file" "$testing_file" >/dev/null 2>&1; then
            echo "  HJSON structure sanity check passed for top_${top_config}"
        else
            echo -e "  ${RED}ERROR: HJSON structure mismatch detected for top_${top_config}!${NC}"
            echo ""
            echo -e "${RED}The structure of the decrypted tapeout secrets file does not match${NC}"
            echo -e "${RED}the structure of the testing secrets file. This indicates a potential${NC}"
            echo -e "${RED}issue with the secret generation or file structure.${NC}"
            echo ""
            echo -e "${RED}Please contact one of the following people immediately:${NC}"
            echo -e "${RED}  - Robert Schilling (rschilling@rivosinc.com)${NC}"
            echo -e "${RED}  - David Schrammel (davidschrammel@rivosinc.com)${NC}"
            echo ""
            echo -e "${RED}Detailed structure differences:${NC}"
            python3 "$hjson_diff_script" "$encrypted_file" "$testing_file"
            echo ""
            overall_success=1
        fi
    done

    if [ $overall_success -eq 0 ]; then
        echo ""
        echo "All HJSON structure sanity checks passed!"
    else
        echo ""
        echo -e "${RED}One or more HJSON structure sanity checks failed!${NC}"
    fi

    return $overall_success
}

# =============================================================================
# MAIN SCRIPT
# =============================================================================

# Check if operation argument is provided
if [ $# -eq 0 ]; then
    echo -e "${RED}Usage: $0 <encrypt|decrypt|clean> [--dry-run]${NC}"
    echo -e "${RED}  encrypt: Encrypt all tapeout files using sops${NC}"
    echo -e "${RED}  decrypt: Decrypt all tapeout files using sops${NC}"
    echo -e "${RED}  clean: Restore encrypted files from git (removes decrypted files)${NC}"
    echo -e "${RED}  --dry-run: Show what would be done without making changes${NC}"
    echo ""
    echo -e "${RED}Examples:${NC}"
    echo -e "${RED}  $0 encrypt${NC}"
    echo -e "${RED}  $0 decrypt${NC}"
    echo -e "${RED}  $0 clean${NC}"
    echo -e "${RED}  $0 decrypt --dry-run${NC}"
    exit 1
fi

# Parse arguments
OPERATION=""
DRY_RUN=false

for arg in "$@"; do
    case $arg in
        encrypt|decrypt|clean)
            if [ -n "$OPERATION" ]; then
                echo -e "${RED}Error: Multiple operations specified. Use either 'encrypt', 'decrypt', or 'clean'${NC}"
                exit 1
            fi
            OPERATION="$arg"
            ;;
        --dry-run)
            DRY_RUN=true
            ;;
        *)
            echo -e "${RED}Error: Unknown argument '$arg'${NC}"
            echo -e "${RED}Usage: $0 <encrypt|decrypt|clean> [--dry-run]${NC}"
            exit 1
            ;;
    esac
done

# Validate operation argument
if [ -z "$OPERATION" ]; then
    echo -e "${RED}Error: Operation must be either 'encrypt', 'decrypt', or 'clean'${NC}"
    echo -e "${RED}Usage: $0 <encrypt|decrypt|clean> [--dry-run]${NC}"
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

# Check if sops is available (only needed for encrypt/decrypt operations)
if [ "$OPERATION" != "clean" ] && ! command -v sops &> /dev/null; then
    echo -e "${RED}Error: sops command not found. Please install sops first.${NC}"
    exit 1
fi

# Security checks before proceeding (only needed for encrypt/decrypt operations)
if [ "$OPERATION" != "clean" ] && ! perform_security_checks "$PROJECT_ROOT" "."; then
    exit 1
fi

# Validate SOPS configuration (only needed for encrypt/decrypt operations)
if [ "$OPERATION" != "clean" ] && ! validate_sops; then
    exit 1
fi

# Perform HJSON validation before encryption
if [ "$OPERATION" = "encrypt" ]; then
    echo ""
    if ! perform_hjson_sanity_check; then
        echo ""
        echo -e "${RED}HJSON structure validation failed before encryption!${NC}"
        echo -e "${RED}Please review the error message above and contact the appropriate people.${NC}"
        exit 1
    fi
fi

echo ""

# Get the files to process from .sops.yaml
echo "Reading file list from .sops.yaml..."
files_to_process=($(get_files_from_sops_config))

if [ ${#files_to_process[@]} -eq 0 ]; then
    echo -e "${RED}Error: No files found in .sops.yaml or failed to parse .sops.yaml${NC}"
    exit 1
fi

echo "  Found ${#files_to_process[@]} file patterns in .sops.yaml"

echo "Files to ${OPERATION}:"
for file in "${files_to_process[@]}"; do
    echo "  $file"
done
echo ""

# Process each specified file
processed_count=0
failed_count=0

for file in "${files_to_process[@]}"; do
    if [ "$OPERATION" = "clean" ]; then
        if clean_files "$file"; then
            processed_count=$((processed_count + 1))
        else
            failed_count=$((failed_count + 1))
        fi
    else
        if process_file "$file"; then
            processed_count=$((processed_count + 1))
        else
            failed_count=$((failed_count + 1))
        fi
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
        echo -e "${RED}Some files failed to ${OPERATION}. Please check the errors above.${NC}"
        exit 1
    fi

    echo ""
    if [ "$OPERATION" = "clean" ]; then
        echo "All tapeout files have been successfully restored from git!"
    else
        echo "All tapeout files have been successfully ${OPERATION}ed with sops!"

        # Perform HJSON structure sanity check after decryption
        if [ "$OPERATION" = "decrypt" ]; then
            echo ""
            if ! perform_hjson_sanity_check; then
                echo ""
                echo -e "${RED}Decryption completed but HJSON structure sanity check failed!${NC}"
                echo -e "${RED}Please review the error message above and contact the appropriate people.${NC}"
                exit 1
            fi
        fi
    fi
fi
