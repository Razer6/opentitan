# Copyright lowRISC contributors (OpenTitan project).
# Licensed under the Apache License, Version 2.0, see LICENSE for details.
# SPDX-License-Identifier: Apache-2.0
#
# ------------------- W A R N I N G: A U T O - G E N E R A T E D   C O D E !! -------------------#
# PLEASE DO NOT HAND-EDIT THIS FILE. IT HAS BEEN AUTO-GENERATED WITH THE FOLLOWING COMMAND:
# util/topgen.py -t hw/top_pwc/data/top_pwc.hjson
# -o hw/top_pwc

load("//rules:linker.bzl", "ld_library")
load("//hw/top:defs.bzl", "opentitan_require_top")

package(default_visibility = ["//visibility:public"])

cc_library(
    name = "top_pwc",
    srcs = [
        "top_pwc.c",
    ],
    hdrs = [
        "top_pwc.h",
        "top_pwc_memory.h",
    ],
    target_compatible_with = opentitan_require_top("pwc"),
)

ld_library(
    name = "top_pwc_memory",
    defines = ["OPENTITAN_TOP_MEMORY_LD=top_pwc_memory.ld"],
    includes = ["top_pwc_memory.ld"],
    target_compatible_with = opentitan_require_top("pwc"),
)
