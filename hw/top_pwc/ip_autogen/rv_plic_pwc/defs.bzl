# Copyright lowRISC contributors (OpenTitan project).
# Licensed under the Apache License, Version 2.0, see LICENSE for details.
# SPDX-License-Identifier: Apache-2.0
load("//rules/opentitan:hw.bzl", "opentitan_ip")

RV_PLIC_PWC = opentitan_ip(
    name = "rv_plic_pwc",
    hjson = "//hw/top_pwc/ip_autogen/rv_plic_pwc:data/rv_plic_pwc.hjson",
)
