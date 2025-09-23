# Copyright lowRISC contributors (OpenTitan project).
# Licensed under the Apache License, Version 2.0, see LICENSE for details.
# SPDX-License-Identifier: Apache-2.0
#

load("//rules/opentitan:hw.bzl", "opentitan_top")
load("//hw/top_mio/data/autogen:defs.bzl", "MIO_IPS")
load("//hw/top:ips_outside_tops.bzl", "LIO_IPS")

MIO = opentitan_top(
    name = "mio",
    hjson = "//hw/top_mio/data/autogen:top_mio.gen.hjson",
    top_lib = "//hw/top_mio/sw/autogen:top_mio",
    top_ld = "//hw/top_mio/sw/autogen:top_mio_memory",
    ips = MIO_IPS + LIO_IPS,
    secret_cfgs = {
        "testing": "//hw/top_mio/data/autogen:top_mio.secrets.testing.gen.hjson",
        "tapeout": "//hw/top_mio/data/autogen:top_mio.secrets.tapeout.gen.hjson",
    },
)
