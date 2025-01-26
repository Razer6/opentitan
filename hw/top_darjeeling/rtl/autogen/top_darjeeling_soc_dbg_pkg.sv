// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// ------------------- W A R N I N G: A U T O - G E N E R A T E D   C O D E !! -------------------//
// PLEASE DO NOT HAND-EDIT THIS FILE. IT HAS BEEN AUTO-GENERATED WITH THE FOLLOWING COMMAND:
//
// util/topgen.py -t hw/top_darjeeling/data/top_darjeeling.hjson \
//                -o hw/top_darjeeling/ \
//                --rnd_cnst_seed \
//                1017106219537032642877583828875051302543807092889754935647094601236425074047

package top_darjeeling_soc_dbg_pkg;
  /**
   * Peripheral base address for dmi device on lc_ctrl in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_SOC_DBG_LC_CTRL_DMI_BASE_ADDR = 32'h20000;

  /**
   * Peripheral size in bytes for dmi device on lc_ctrl in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_SOC_DBG_LC_CTRL_DMI_SIZE_BYTES = 32'h1000;

  /**
   * Peripheral base address for dbg device on rv_dm in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_SOC_DBG_RV_DM_DBG_BASE_ADDR = 32'h0;

  /**
   * Peripheral size in bytes for dbg device on rv_dm in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_SOC_DBG_RV_DM_DBG_SIZE_BYTES = 32'h200;

  /**
   * Peripheral base address for soc device on mbx_jtag in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_SOC_DBG_MBX_JTAG_SOC_BASE_ADDR = 32'h1000;

  /**
   * Peripheral size in bytes for soc device on mbx_jtag in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_SOC_DBG_MBX_JTAG_SOC_SIZE_BYTES = 32'h20;

  /**
   * Peripheral base address for jtag device on soc_dbg_ctrl in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_SOC_DBG_SOC_DBG_CTRL_JTAG_BASE_ADDR = 32'h2300;

  /**
   * Peripheral size in bytes for jtag device on soc_dbg_ctrl in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_SOC_DBG_SOC_DBG_CTRL_JTAG_SIZE_BYTES = 32'h20;


  // Number of mio incoming alerts
  parameter int unsigned NIncomingAlertsMio = 25;

  // Number of LPGs for incoming alert group mio
  parameter int unsigned NIncomingLpgsMio = 2;

  // Number of pwc incoming alerts
  parameter int unsigned NIncomingAlertsPwc = 26;

  // Number of LPGs for incoming alert group pwc
  parameter int unsigned NIncomingLpgsPwc = 2;

  // Number of mio_extra_alerts incoming alerts
  parameter int unsigned NIncomingAlertsMio_extra_alerts = 1;

  // Number of LPGs for incoming alert group mio_extra_alerts
  parameter int unsigned NIncomingLpgsMio_extra_alerts = 1;

  // Number of pwc_extra_alerts incoming alerts
  parameter int unsigned NIncomingAlertsPwc_extra_alerts = 1;

  // Number of LPGs for incoming alert group pwc_extra_alerts
  parameter int unsigned NIncomingLpgsPwc_extra_alerts = 1;

  // Number of rot_extra_alerts incoming alerts
  parameter int unsigned NIncomingAlertsRot_extra_alerts = 20;

  // Number of LPGs for incoming alert group rot_extra_alerts
  parameter int unsigned NIncomingLpgsRot_extra_alerts = 1;


endpackage
