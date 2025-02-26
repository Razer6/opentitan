#!/bin/bash
# Copyright lowRISC contributors.
# Licensed under the Apache License, Version 2.0, see LICENSE for details.
# SPDX-License-Identifier: Apache-2.0

# Check that each commit has a Change-Id label.

# Get the commit range
if [ -z "$CI_COMMIT_BEFORE_SHA" ] || [ -z "$CI_COMMIT_SHA" ]; then
    echo "No commit range provided."
    exit 1
fi

# Get the list of commits in the range
COMMIT_RANGE=$(git rev-list $CI_MERGE_REQUEST_DIFF_BASE_SHA..$CI_COMMIT_SHA)

# Check each commit in the range for a Change-Id
for commit in $COMMIT_RANGE; do
    if ! git log -1 --pretty=format:%B "$commit" | grep -q "Change-Id:"; then
        echo "Commit $commit does not contain a Change-Id label."
        echo "Install the pre-commit hooks: 'pip install pre-commit && pre-commit install'"
        echo "And run them on your changes: 'pre-commit run --all-files'"
        exit 1
    fi
done

echo "All commits contain a Change-Id label."
