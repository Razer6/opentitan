# Copyright lowRISC contributors (OpenTitan project).
# Licensed under the Apache License, Version 2.0, see LICENSE for details.
# SPDX-License-Identifier: Apache-2.0

load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

rtl_store = module_extension(
    implementation = lambda _: _rtl_store_repos(),
)

def _rtl_store_repos():
    git_repository(
        name = "rtl_store",
        # branch = "rivos/main",
        commit = "3568db2396166881f29779ca4409b580d3886d14",
        remote = "git@gitlab.ba.rivosinc.com:rv/sw/int/fw/rtl_store.git",
        shallow_since = "1761946040 +0000"
    )
