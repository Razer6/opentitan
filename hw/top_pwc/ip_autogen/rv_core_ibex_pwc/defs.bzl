# Copyright lowRISC contributors (OpenTitan project).
# Licensed under the Apache License, Version 2.0, see LICENSE for details.
# SPDX-License-Identifier: Apache-2.0
load("//rules/opentitan:hw.bzl", "opentitan_ip")

RV_CORE_IBEX_PWC = opentitan_ip(
    name = "rv_core_ibex_pwc",
    hjson = "//hw/top_pwc/ip_autogen/rv_core_ibex_pwc/data:rv_core_ibex_pwc.hjson",
    ipconfig = "//hw/top_pwc/ip_autogen/rv_core_ibex_pwc/data:top_pwc_rv_core_ibex_pwc.ipconfig.hjson",
)
