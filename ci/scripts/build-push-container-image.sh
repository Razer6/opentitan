#!/bin/sh

# SPDX-FileCopyrightText: Copyright (c) 2025 by Rivos Inc.
# Licensed under the Apache License, Version 2.0, see LICENSE for details.
# SPDX-License-Identifier: Apache-2.0

# Builds and pushes the OpenTitan container image to Rivos' opentitan-integrated container registry.
# This script is expected to be run from a GitLab CI job.

set -ex

# Build the container image
docker build --secret id=gitlab_token,env=CI_JOB_TOKEN --tag "$CI_REGISTRY_IMAGE:$CI_COMMIT_SHA" --file util/container/Dockerfile .

# Push the image if the job is not running on a dev branch
if [ -n "$CI_COMMIT_BRANCH" ] && [ "$CI_COMMIT_BRANCH" != "dev/*" ]; then
    docker push "$CI_REGISTRY_IMAGE:$CI_COMMIT_SHA"

    # Also push an image tagged with the branch name
    cleaned_branch=$(printf '%s' "$CI_COMMIT_BRANCH" | tr '/' '-')

    docker tag "$CI_REGISTRY_IMAGE:$CI_COMMIT_SHA" "$CI_REGISTRY_IMAGE:$cleaned_branch"
    docker push "$CI_REGISTRY_IMAGE:$cleaned_branch"
fi

# Push the latest tag if the job is running on the default branch
if [ "$CI_COMMIT_BRANCH" = "$CI_DEFAULT_BRANCH" ]; then
    docker tag "$CI_REGISTRY_IMAGE:$CI_COMMIT_SHA" "$CI_REGISTRY_IMAGE:latest"
    docker push "$CI_REGISTRY_IMAGE:latest"
fi
