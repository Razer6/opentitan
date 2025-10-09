# Copyright lowRISC contributors (OpenTitan project).
# Licensed under the Apache License, Version 2.0, see LICENSE for details.
# SPDX-License-Identifier: Apache-2.0
load("//rules/opentitan:hw.bzl", "opentitan_ip")

AC_RANGE_CHECK_MIO = opentitan_ip(
    name = "ac_range_check_mio",
    hjson = "//hw/top_mio/ip_autogen/ac_range_check_mio/data:ac_range_check_mio.hjson",
    ipconfig = "//hw/top_mio/ip_autogen/ac_range_check_mio/data:top_mio_ac_range_check_mio.ipconfig.hjson",
)
