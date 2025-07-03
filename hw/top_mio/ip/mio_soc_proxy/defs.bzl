# Copyright lowRISC contributors (OpenTitan project).
# Licensed under the Apache License, Version 2.0, see LICENSE for details.
# SPDX-License-Identifier: Apache-2.0
load("//rules/opentitan:hw.bzl", "opentitan_ip")

MIO_SOC_PROXY = opentitan_ip(
    name = "mio_soc_proxy",
    hjson = "//hw/top_mio/ip/mio_soc_proxy/data:mio_soc_proxy.hjson",
)
