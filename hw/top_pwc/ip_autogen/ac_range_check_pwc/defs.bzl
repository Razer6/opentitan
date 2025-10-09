# Copyright lowRISC contributors (OpenTitan project).
# Licensed under the Apache License, Version 2.0, see LICENSE for details.
# SPDX-License-Identifier: Apache-2.0
load("//rules/opentitan:hw.bzl", "opentitan_ip")

AC_RANGE_CHECK_PWC = opentitan_ip(
    name = "ac_range_check_pwc",
    hjson = "//hw/top_pwc/ip_autogen/ac_range_check_pwc/data:ac_range_check_pwc.hjson",
    ipconfig = "//hw/top_pwc/ip_autogen/ac_range_check_pwc/data:top_pwc_ac_range_check_pwc.ipconfig.hjson",
)
