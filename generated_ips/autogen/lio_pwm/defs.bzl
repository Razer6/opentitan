# Copyright lowRISC contributors (OpenTitan project).
# Licensed under the Apache License, Version 2.0, see LICENSE for details.
# SPDX-License-Identifier: Apache-2.0
load("//rules/opentitan:hw.bzl", "opentitan_ip")

LIO_PWM = opentitan_ip(
    name = "lio_pwm",
    hjson = "//hw/top_lio/ip_autogen/lio_pwm:data/lio_pwm.hjson",
)
