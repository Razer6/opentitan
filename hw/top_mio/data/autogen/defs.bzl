# Copyright lowRISC contributors (OpenTitan project).
# Licensed under the Apache License, Version 2.0, see LICENSE for details.
# SPDX-License-Identifier: Apache-2.0
#
# ------------------- W A R N I N G: A U T O - G E N E R A T E D   C O D E !! -------------------#
# PLEASE DO NOT HAND-EDIT THIS FILE. IT HAS BEEN AUTO-GENERATED WITH THE FOLLOWING COMMAND:
# util/topgen.py -t hw/top_mio/data/top_mio.hjson
# -o hw/top_mio

load("//rules/opentitan:hw.bzl", "opentitan_top")
load("//hw/ip/aon_timer:defs.bzl", "AON_TIMER")
load("//hw/ip/dma:defs.bzl", "DMA")
load("//hw/ip/mbx:defs.bzl", "MBX")
load("//hw/top_mio/ip/mio_soc_proxy:defs.bzl", "MIO_SOC_PROXY")
load("//hw/top_mio/ip_autogen/racl_ctrl_mio:defs.bzl", "RACL_CTRL_MIO")
load("//hw/ip/rv_core_ibex:defs.bzl", "RV_CORE_IBEX")
load("//hw/ip/rv_dm:defs.bzl", "RV_DM")
load("//hw/top_mio/ip_autogen/rv_plic_mio:defs.bzl", "RV_PLIC_MIO")
load("//hw/ip/rv_timer:defs.bzl", "RV_TIMER")
load("//hw/ip/sram_ctrl:defs.bzl", "SRAM_CTRL")

MIO = opentitan_top(
    name = "mio",
    hjson = "//hw/top_mio/data/autogen:top_mio.gen.hjson",
    top_lib = "//hw/top_mio/sw/autogen:top_mio",
    top_ld = "//hw/top_mio/sw/autogen:top_mio_memory",
    ips = [
        AON_TIMER,
        DMA,
        MBX,
        MIO_SOC_PROXY,
        RACL_CTRL_MIO,
        RV_CORE_IBEX,
        RV_DM,
        RV_PLIC_MIO,
        RV_TIMER,
        SRAM_CTRL,
    ],
)
