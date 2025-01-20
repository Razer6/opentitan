# Copyright lowRISC contributors (OpenTitan project).
# Licensed under the Apache License, Version 2.0, see LICENSE for details.
# SPDX-License-Identifier: Apache-2.0
load("//rules/opentitan:hw.bzl", "opentitan_ip")

LIO_RV_PLIC = opentitan_ip(
    name = "lio_rv_plic",
    hjson = "//hw/top_lio/ip_autogen/lio_rv_plic:data/lio_rv_plic.hjson",
)
