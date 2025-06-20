#!/bin/bash

# SPDX-FileCopyrightText: Copyright (c) 2025 by Rivos Inc.
# Licensed under the Apache License, Version 2.0, see LICENSE for details.
# SPDX-License-Identifier: Apache-2.0

DESCRIPTION="Opentitan Integrated for $PF"

PIP_BDEPEND="
  pycryptodome
  pyelftools
  pyyaml
"

# Ubuntu packages in builder arch
# Unclear if we want a hard BDEPEND on many of these packages that are
# on base systems?  This is simply a copy/paste from the .gitlab-ci.yml for now:
# * rustfmt - already available via snap or module (shouldn't be apt installing)
BDEPEND="
  rivos-sdk-rpkg-md
  rivos-sdk-rpkg-cargo
  build-essential
  clang-format
  libclang-dev
  libftdi1-dev
  libudev-dev
  libtinfo6
  lld
  pkgconf
  srecord
  binutils-riscv64-unknown-elf
"

## Build time dependencies in target arch
DEPEND="
"

## Which cross-compiled or native architectures are valid, * in front of default
VALID_CROSS="*native"

BUILD_DIR="output"

## Relative path to the repo
REPO_PATH="rv/si/ext/opentitan-integrated-gb0"

## For local/dev/user builds point to /scratch/.cache for speed
SCRATCH_CACHE="/scratch/.cache"
[[ -w "$SCRATCH_CACHE" ]] && SCRATCH_CACHE_ARG="-c $SCRATCH_CACHE"

src_configure() {
    return 0
}

src_compile() {
    ./util/release/rom-release.sh -v -b $TARGET -p "$PF" $SCRATCH_CACHE_ARG -d . -o . -s
}

src_test() {
    return 0
}

src_install() {
    local install_path="rivos/fw/rot-$PF/$TARGET"
    local out_dir="$OUT_ROOT/$install_path"

    safe_rmrf "$out_dir"
    mkdir -p "$out_dir"
    cp -rp output/staging/* "$out_dir"

    # rpkg tools
    rpkg_md_install install_path:"$install_path"
}

src_clean() {
    ./util/release/rom-release.sh -v --clean -p "$PF" $SCRATCH_CACHE_ARG -d . -o . -s
    safe_rmrf "$BUILD_DIR"
}
