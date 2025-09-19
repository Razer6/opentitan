#!/bin/bash

# SPDX-FileCopyrightText: Copyright (c) 2025 by Rivos Inc.
# SPDX-License-Identifier: LicenseRef-Rivos-Internal-Only

# A pre-commit hook to ensure that files matching a SOPS path_regex are encrypted.

# Colors for output
RED='\033[0;31m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

# Find repository root and .sops.yaml
REPO_ROOT=$(git rev-parse --show-toplevel)
if [ -z "$REPO_ROOT" ]; then
    echo -e "${RED}Error: Not a git repository.${NC}"
    exit 1
fi

SOPS_CONFIG_FILE="$REPO_ROOT/.sops.yaml"

if [ ! -f "$SOPS_CONFIG_FILE" ]; then
    echo -e "${YELLOW}Warning: .sops.yaml not found. Skipping SOPS pre-commit check.${NC}"
    exit 0
fi

# Get the list of file patterns that should be encrypted from the sops config file
ENCRYPTED_FILE_PATTERNS=$(grep 'path_regex:' "$SOPS_CONFIG_FILE" | sed 's/.*path_regex:[[:space:]]*//')

if [ -z "$ENCRYPTED_FILE_PATTERNS" ]; then
    echo -e "${YELLOW}Warning: No 'path_regex' found in .sops.yaml. Skipping check.${NC}"
    exit 0
fi

# Get staged files for the commit
# We check added (A), copied (C), modified (M), and renamed (R) files.
STAGED_FILES=$(git diff --cached --name-only --diff-filter=ACMR)
UNENCRYPTED_VIOLATIONS=()

echo "Checking for unencrypted secrets..."

# Main loop to check each staged file if it is encrypted
while IFS= read -r file; do
    # Check if this file is staged and exists (and not deleted)
    if [ -f "$REPO_ROOT/$file" ]; then
        # Check if the file path matches any SOPS pattern
        for pattern in $ENCRYPTED_FILE_PATTERNS; do
            if [[ "$file" =~ $pattern ]]; then
                # It's a match! Now check if the file is actually encrypted.
                # SOPS files contain a `sops:` key in YAML or `"sops":` in JSON.
                if ! grep -q -E '^\s*("sops":|sops:)' "$REPO_ROOT/$file"; then
                    # This file is a violation
                    UNENCRYPTED_VIOLATIONS+=("$file")
                fi
                # Once matched, no need to check other patterns for this file
                break
            fi
        done
    fi
done <<< "$STAGED_FILES"


if [ ${#UNENCRYPTED_VIOLATIONS[@]} -ne 0 ]; then
    echo -e "\n${RED}COMMIT REJECTED${NC}"
    echo -e "${RED}------------------${NC}"
    echo -e "Found the following files that should be SOPS-encrypted but are not:"
    for violation in "${UNENCRYPTED_VIOLATIONS[@]}"; do
        echo -e "  - ${YELLOW}$violation${NC}"
    done
    echo -e "\nPlease encrypt them using ${GREEN}'util/rivos/encrypt_tapeout_files.sh encrypt'${NC} and stage the changes."
    exit 1
else
    echo -e "${GREEN}All secrets seem to be properly encrypted. Proceeding with commit.${NC}"
    exit 0
fi
