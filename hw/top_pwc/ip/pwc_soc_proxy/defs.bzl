# Copyright lowRISC contributors (OpenTitan project).
# Licensed under the Apache License, Version 2.0, see LICENSE for details.
# SPDX-License-Identifier: Apache-2.0
load("//rules/opentitan:hw.bzl", "opentitan_ip")

PWC_SOC_PROXY = opentitan_ip(
    name = "pwc_soc_proxy",
    hjson = "//hw/top_pwc/ip/pwc_soc_proxy/data:pwc_soc_proxy.hjson",
)
