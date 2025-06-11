# Copyright lowRISC contributors (OpenTitan project).
# Licensed under the Apache License, Version 2.0, see LICENSE for details.
# SPDX-License-Identifier: Apache-2.0
load("//rules/opentitan:hw.bzl", "opentitan_ip")

RACL_CTRL_LIOGRPV = opentitan_ip(
    name = "racl_ctrl_lioGrpV",
    hjson = "//hw/top_darjeeling/ip_autogen/racl_ctrl_lioGrpV/data:racl_ctrl_lioGrpV.hjson",
)
