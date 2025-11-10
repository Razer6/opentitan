#!/bin/bash

# SPDX-FileCopyrightText: Copyright (c) 2025 by Rivos Inc.
# Licensed under the Apache License, Version 2.0, see LICENSE for details.
# SPDX-License-Identifier: Apache-2.0

set -e
set -o pipefail

ROM_ROT_RELEASES=ci/rom-rot-releases
RVSYS=ci/rvsys

mkdir -p ci

function cleanup {
    EXIT_CODE=$?

    echo "Cleaning up resources..."
    rm -rf ${ROM_ROT_RELEASES=}
    rm -rf ${RVSYS=}

    exit $EXIT_CODE
}

apt update
apt install -y \
    build-essential \
    clang-format \
    curl \
    g++ \
    git \
    libclang-dev \
    libftdi1-dev \
    libtinfo5 \
    libudev-dev \
    lld pkgconf \
    python3 \
    python3-pip \
    rustfmt \
    srecord \
    binutils-riscv64-unknown-elf \
    libssl3 \
    libssl-dev \
    pip

pip install uv

# Install python requirements
uv venv
source .venv/bin/activate
uv pip sync python-requirements.txt

# Clone repos
git clone --depth 1 --branch rivos/gb0 https://gitlab-ci-token:${CI_JOB_TOKEN}@gitlab.ba.rivosinc.com/rv/sw/int/fw/rom-rot-releases.git ${ROM_ROT_RELEASES=}
git clone --depth 1 --branch rivos/main https://gitlab-ci-token:${CI_JOB_TOKEN}@gitlab.ba.rivosinc.com/rv/si/int/rvsys.git ${RVSYS}

# Set git URL replacement rule on the container
git config --global url."https://gitlab-ci-token:${CI_JOB_TOKEN}@gitlab.ba.rivosinc.com/".insteadOf "git@gitlab.ba.rivosinc.com:"

# Build all ROM artefacts
./${RVSYS=}/rvscs/util/rot-rom-release.py build -m ${ROM_ROT_RELEASES=}/gb0-manifest.yaml -r ${PWD} --rom-hooks ./sw/vendor/rivos/rot-rom-hooks/
