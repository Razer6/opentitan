# Copyright lowRISC contributors (OpenTitan project).
# Licensed under the Apache License, Version 2.0, see LICENSE for details.
# SPDX-License-Identifier: Apache-2.0
load("//rules/opentitan:hw.bzl", "opentitan_ip")

RV_PLIC_MIO = opentitan_ip(
    name = "rv_plic_mio",
    hjson = "//hw/top_mio/ip_autogen/rv_plic_mio:data/rv_plic_mio.hjson",
)
