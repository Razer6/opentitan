# Copyright lowRISC contributors (OpenTitan project).
# Licensed under the Apache License, Version 2.0, see LICENSE for details.
# SPDX-License-Identifier: Apache-2.0
load("//rules/opentitan:hw.bzl", "opentitan_ip")

GPIO_PWC = opentitan_ip(
    name = "gpio_pwc",
    hjson = "//hw/top_pwc/ip_autogen/gpio_pwc/data:gpio_pwc.hjson",
    ipconfig = "//hw/top_pwc/ip_autogen/gpio_pwc/data:top_pwc_gpio_pwc.ipconfig.hjson",
)
