# SPDX-FileCopyrightText: Copyright (c) 2023-2025 by Rivos Inc.
# Licensed under the Apache License, Version 2.0, see LICENSE for details.
# SPDX-License-Identifier: Apache-2.0

load("@rtl_store//:version.bzl", "RIPLANG_VERSION", "RIPLANG_SHA256")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

rtl_store_deps = module_extension(
    implementation = lambda _: _rtl_store_deps(),
)

def _rtl_store_deps():
    git_version = RIPLANG_VERSION.split('-')[1]
    http_archive(
        name = "riplang-tool",
        url = "https://gitlab.ba.rivosinc.com/api/v4/projects/234/packages/generic/rivos-sdk-riplang/" + RIPLANG_VERSION + "/riplang-centos.tar.xz",
        sha256 = RIPLANG_SHA256,
        build_file = "@rtl_store//fwlib/riplang:BUILD.riplang",
        strip_prefix = "release/sw/sdk/modules/centos.7/x86_64/riplang/" + git_version,
    )
    http_archive(
        name = "bazel_skylib_150",
        sha256 = "cd55a062e763b9349921f0f5db8c3933288dc8ba4f76dd9416aac68acee3cb94",
        urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/bazel-skylib/releases/download/1.5.0/bazel-skylib-1.5.0.tar.gz",
            "https://github.com/bazelbuild/bazel-skylib/releases/download/1.5.0/bazel-skylib-1.5.0.tar.gz",
        ],
    )

    #rust_bindgen_dependencies()

    #rust_bindgen_register_toolchains()
