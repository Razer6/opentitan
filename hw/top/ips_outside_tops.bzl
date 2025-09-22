# Copyright lowRISC contributors (OpenTitan project).
# Licensed under the Apache License, Version 2.0, see LICENSE for details.
# SPDX-License-Identifier: Apache-2.0

load("//hw/top_darjeeling/ip_autogen/gpio:defs.bzl", "GPIO")
load("//hw/ip/i2c:defs.bzl", "I2C")
load("//hw/ip/spi_device:defs.bzl", "SPI_DEVICE")
load("//hw/ip/spi_host:defs.bzl", "SPI_HOST")
load("//hw/ip/uart:defs.bzl", "UART")
# load("generated_ips/autogen/lio_alert_handler/defs.bzl, LIO_ALERT_HANDLER)
load("//hw/top_darjeeling/ip_autogen/alert_handler:defs.bzl", "ALERT_HANDLER")
load("//hw/top_darjeeling/ip_autogen/rv_plic:defs.bzl", "RV_PLIC")
# TODO maybe: lio_pwm, lio_rv_plic, lio_alert_handler, scs_ac_range_check

LIO_IPS = [
    # LIO_ALERT_HANDLER,
    ALERT_HANDLER, # HACK using darjeeling alert_handler because lio_isr_testutils wouldnt otherwise be able to access the DIF
    GPIO,
    I2C,
    SPI_DEVICE,
    SPI_HOST,
    UART,
]
