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

package top_darjeeling_soc_mbx_pkg;
  /**
   * Peripheral base address for soc device on mbx0 in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_SOC_MBX_MBX0_SOC_BASE_ADDR = 32'h1465000;

  /**
   * Peripheral size in bytes for soc device on mbx0 in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_SOC_MBX_MBX0_SOC_SIZE_BYTES = 32'h20;

  /**
   * Peripheral base address for soc device on mbx1 in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_SOC_MBX_MBX1_SOC_BASE_ADDR = 32'h1465100;

  /**
   * Peripheral size in bytes for soc device on mbx1 in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_SOC_MBX_MBX1_SOC_SIZE_BYTES = 32'h20;

  /**
   * Peripheral base address for soc device on mbx2 in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_SOC_MBX_MBX2_SOC_BASE_ADDR = 32'h1465200;

  /**
   * Peripheral size in bytes for soc device on mbx2 in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_SOC_MBX_MBX2_SOC_SIZE_BYTES = 32'h20;

  /**
   * Peripheral base address for soc device on mbx3 in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_SOC_MBX_MBX3_SOC_BASE_ADDR = 32'h1465300;

  /**
   * Peripheral size in bytes for soc device on mbx3 in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_SOC_MBX_MBX3_SOC_SIZE_BYTES = 32'h20;

  /**
   * Peripheral base address for soc device on mbx4 in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_SOC_MBX_MBX4_SOC_BASE_ADDR = 32'h1465400;

  /**
   * Peripheral size in bytes for soc device on mbx4 in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_SOC_MBX_MBX4_SOC_SIZE_BYTES = 32'h20;

  /**
   * Peripheral base address for soc device on mbx5 in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_SOC_MBX_MBX5_SOC_BASE_ADDR = 32'h1465500;

  /**
   * Peripheral size in bytes for soc device on mbx5 in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_SOC_MBX_MBX5_SOC_SIZE_BYTES = 32'h20;

  /**
   * Peripheral base address for soc device on mbx6 in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_SOC_MBX_MBX6_SOC_BASE_ADDR = 32'h1496000;

  /**
   * Peripheral size in bytes for soc device on mbx6 in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_SOC_MBX_MBX6_SOC_SIZE_BYTES = 32'h20;

  /**
   * Peripheral base address for soc device on mbx_pcie0 in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_SOC_MBX_MBX_PCIE0_SOC_BASE_ADDR = 32'h1460100;

  /**
   * Peripheral size in bytes for soc device on mbx_pcie0 in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_SOC_MBX_MBX_PCIE0_SOC_SIZE_BYTES = 32'h20;

  /**
   * Peripheral base address for soc device on mbx_pcie1 in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_SOC_MBX_MBX_PCIE1_SOC_BASE_ADDR = 32'h1460200;

  /**
   * Peripheral size in bytes for soc device on mbx_pcie1 in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_SOC_MBX_MBX_PCIE1_SOC_SIZE_BYTES = 32'h20;

  /**
   * Peripheral base address for racl_ctrl in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_SOC_MBX_RACL_CTRL_BASE_ADDR = 32'h1463000;

  /**
   * Peripheral size in bytes for racl_ctrl in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_SOC_MBX_RACL_CTRL_SIZE_BYTES = 32'h40;

  /**
   * Peripheral base address for ac_range_check in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_SOC_MBX_AC_RANGE_CHECK_BASE_ADDR = 32'h1464000;

  /**
   * Peripheral size in bytes for ac_range_check in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_SOC_MBX_AC_RANGE_CHECK_SIZE_BYTES = 32'h400;


  // Number of mio incoming alerts
  parameter int unsigned NIncomingAlertsMio = 31;

  // Number of LPGs for incoming alert group mio
  parameter int unsigned NIncomingLpgsMio = 2;

  // Number of pwc incoming alerts
  parameter int unsigned NIncomingAlertsPwc = 32;

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
