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
        commit = "4b5636bd090ad726e58e0448c52e6e1f2b32809e",
        remote = "git@gitlab.ba.rivosinc.com:rv/sw/int/fw/rtl_store.git",
        shallow_since = "1762773275 +0000",
    )
