# Copyright lowRISC contributors (OpenTitan project).
# Licensed under the Apache License, Version 2.0, see LICENSE for details.
# SPDX-License-Identifier: Apache-2.0
#
# ------------------- W A R N I N G: A U T O - G E N E R A T E D   C O D E !! -------------------#
# PLEASE DO NOT HAND-EDIT THIS FILE. IT HAS BEEN AUTO-GENERATED WITH THE FOLLOWING COMMAND:
# util/topgen.py -t hw/top_pwc/data/top_pwc.hjson
# -o hw/top_pwc

load("//rules:linker.bzl", "ld_library")

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
)

ld_library(
    name = "top_pwc_memory",
    includes = ["top_pwc_memory.ld"],
)
