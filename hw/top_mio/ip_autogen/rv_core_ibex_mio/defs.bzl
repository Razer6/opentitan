# Copyright lowRISC contributors (OpenTitan project).
# Licensed under the Apache License, Version 2.0, see LICENSE for details.
# SPDX-License-Identifier: Apache-2.0
load("//rules/opentitan:hw.bzl", "opentitan_ip")

RV_CORE_IBEX_MIO = opentitan_ip(
    name = "rv_core_ibex_mio",
    hjson = "//hw/top_mio/ip_autogen/rv_core_ibex_mio/data:rv_core_ibex_mio.hjson",
    ipconfig = "//hw/top_mio/ip_autogen/rv_core_ibex_mio/data:top_mio_rv_core_ibex_mio.ipconfig.hjson",
)
