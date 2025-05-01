# Copyright lowRISC contributors (OpenTitan project).
# Licensed under the Apache License, Version 2.0, see LICENSE for details.
# SPDX-License-Identifier: Apache-2.0
load("//rules/opentitan:hw.bzl", "opentitan_ip")

RACL_CTRL_NSEFUSE = opentitan_ip(
    name = "racl_ctrl_nsEfuse",
    hjson = "//hw/top_darjeeling/ip_autogen/racl_ctrl_nsEfuse:data/racl_ctrl_nsEfuse.hjson",
)
