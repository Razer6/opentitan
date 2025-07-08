# Copyright lowRISC contributors (OpenTitan project).
# Licensed under the Apache License, Version 2.0, see LICENSE for details.
# SPDX-License-Identifier: Apache-2.0
#

load("//rules/opentitan:hw.bzl", "opentitan_top")
load("//hw/top_pwc/data/autogen:defs.bzl", "PWC_IPS")
load("//hw/top:ips_outside_tops.bzl", "LIO_IPS")

PWC = opentitan_top(
    name = "pwc",
    hjson = "//hw/top_pwc/data/autogen:top_pwc.gen.hjson",
    top_lib = "//hw/top_pwc/sw/autogen:top_pwc",
    top_ld = "//hw/top_pwc/sw/autogen:top_pwc_memory",
    ips = PWC_IPS + LIO_IPS,
    secret_cfgs = {
        "testing": "//hw/top_pwc/data/autogen:top_pwc.secrets.testing.gen.hjson",
    },
)
