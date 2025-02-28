# Copyright lowRISC contributors (OpenTitan project).
# Licensed under the Apache License, Version 2.0, see LICENSE for details.
# SPDX-License-Identifier: Apache-2.0
#
# ------------------- W A R N I N G: A U T O - G E N E R A T E D   C O D E !! -------------------#
# PLEASE DO NOT HAND-EDIT THIS FILE. IT HAS BEEN AUTO-GENERATED WITH THE FOLLOWING COMMAND:
# util/topgen.py -t hw/top_pwc/data/top_pwc.hjson
# -o hw/top_pwc

load("//rules/opentitan:hw.bzl", "opentitan_top")
load("//hw/top_pwc/ip_autogen/ac_range_check_pwc:defs.bzl", "AC_RANGE_CHECK_PWC")
load("//hw/ip/aon_timer:defs.bzl", "AON_TIMER")
load("//hw/ip/dma:defs.bzl", "DMA")
load("//hw/ip/gpio:defs.bzl", "GPIO")
load("//hw/ip/mbx:defs.bzl", "MBX")
load("//hw/top_pwc/ip/pwc_soc_proxy:defs.bzl", "PWC_SOC_PROXY")
load("//hw/top_pwc/ip_autogen/racl_ctrl_pwc:defs.bzl", "RACL_CTRL_PWC")
load("//hw/ip/rv_core_ibex:defs.bzl", "RV_CORE_IBEX")
load("//hw/ip/rv_dm:defs.bzl", "RV_DM")
load("//hw/top_pwc/ip_autogen/rv_plic_pwc:defs.bzl", "RV_PLIC_PWC")
load("//hw/ip/rv_timer:defs.bzl", "RV_TIMER")
load("//hw/ip/sram_ctrl:defs.bzl", "SRAM_CTRL")

PWC = opentitan_top(
    name = "pwc",
    hjson = "//hw/top_pwc/data/autogen:top_pwc.gen.hjson",
    top_lib = "//hw/top_pwc/sw/autogen:top_pwc",
    top_ld = "//hw/top_pwc/sw/autogen:top_pwc_memory",
    ips = [
        AC_RANGE_CHECK_PWC,
        AON_TIMER,
        DMA,
        GPIO,
        MBX,
        PWC_SOC_PROXY,
        RACL_CTRL_PWC,
        RV_CORE_IBEX,
        RV_DM,
        RV_PLIC_PWC,
        RV_TIMER,
        SRAM_CTRL,
    ],
)
