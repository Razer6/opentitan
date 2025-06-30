// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// ------------------- W A R N I N G: A U T O - G E N E R A T E D   C O D E !! -------------------//
// PLEASE DO NOT HAND-EDIT THIS FILE. IT HAS BEEN AUTO-GENERATED WITH THE FOLLOWING COMMAND:
//
// util/topgen.py -t hw/top_pwc/data/top_pwc.hjson \
//                -o hw/top_pwc/ \
//                --rnd_cnst_seed \
//                1017106219537032642877583828875051302543807092889754935647094601236425074047

package top_pwc_soc_mbx_pkg;
  /**
   * Peripheral base address for soc device on mbx0 in top pwc.
   */
  parameter int unsigned TOP_PWC_SOC_MBX_MBX0_SOC_BASE_ADDR = 32'h1475000;

  /**
   * Peripheral size in bytes for soc device on mbx0 in top pwc.
   */
  parameter int unsigned TOP_PWC_SOC_MBX_MBX0_SOC_SIZE_BYTES = 32'h20;

  /**
   * Peripheral base address for soc device on mbx1 in top pwc.
   */
  parameter int unsigned TOP_PWC_SOC_MBX_MBX1_SOC_BASE_ADDR = 32'h1475100;

  /**
   * Peripheral size in bytes for soc device on mbx1 in top pwc.
   */
  parameter int unsigned TOP_PWC_SOC_MBX_MBX1_SOC_SIZE_BYTES = 32'h20;

  /**
   * Peripheral base address for soc device on mbx2 in top pwc.
   */
  parameter int unsigned TOP_PWC_SOC_MBX_MBX2_SOC_BASE_ADDR = 32'h1475200;

  /**
   * Peripheral size in bytes for soc device on mbx2 in top pwc.
   */
  parameter int unsigned TOP_PWC_SOC_MBX_MBX2_SOC_SIZE_BYTES = 32'h20;

  /**
   * Peripheral base address for soc device on mbx3 in top pwc.
   */
  parameter int unsigned TOP_PWC_SOC_MBX_MBX3_SOC_BASE_ADDR = 32'h1475300;

  /**
   * Peripheral size in bytes for soc device on mbx3 in top pwc.
   */
  parameter int unsigned TOP_PWC_SOC_MBX_MBX3_SOC_SIZE_BYTES = 32'h20;

  /**
   * Peripheral base address for soc device on mbx4 in top pwc.
   */
  parameter int unsigned TOP_PWC_SOC_MBX_MBX4_SOC_BASE_ADDR = 32'h1475400;

  /**
   * Peripheral size in bytes for soc device on mbx4 in top pwc.
   */
  parameter int unsigned TOP_PWC_SOC_MBX_MBX4_SOC_SIZE_BYTES = 32'h20;

  /**
   * Peripheral base address for soc device on mbx5 in top pwc.
   */
  parameter int unsigned TOP_PWC_SOC_MBX_MBX5_SOC_BASE_ADDR = 32'h1475500;

  /**
   * Peripheral size in bytes for soc device on mbx5 in top pwc.
   */
  parameter int unsigned TOP_PWC_SOC_MBX_MBX5_SOC_SIZE_BYTES = 32'h20;

  /**
   * Peripheral base address for soc device on mbx_pcie0 in top pwc.
   */
  parameter int unsigned TOP_PWC_SOC_MBX_MBX_PCIE0_SOC_BASE_ADDR = 32'h1470100;

  /**
   * Peripheral size in bytes for soc device on mbx_pcie0 in top pwc.
   */
  parameter int unsigned TOP_PWC_SOC_MBX_MBX_PCIE0_SOC_SIZE_BYTES = 32'h20;

  /**
   * Peripheral base address for racl_ctrl_pwc in top pwc.
   */
  parameter int unsigned TOP_PWC_SOC_MBX_RACL_CTRL_PWC_BASE_ADDR = 32'h1471F00;

  /**
   * Peripheral size in bytes for racl_ctrl_pwc in top pwc.
   */
  parameter int unsigned TOP_PWC_SOC_MBX_RACL_CTRL_PWC_SIZE_BYTES = 32'h100;

  /**
   * Peripheral base address for ac_range_check_pwc in top pwc.
   */
  parameter int unsigned TOP_PWC_SOC_MBX_AC_RANGE_CHECK_PWC_BASE_ADDR = 32'h1474000;

  /**
   * Peripheral size in bytes for ac_range_check_pwc in top pwc.
   */
  parameter int unsigned TOP_PWC_SOC_MBX_AC_RANGE_CHECK_PWC_SIZE_BYTES = 32'h400;


  // Number of pwc outgoing alerts
  parameter int unsigned NOutgoingAlertsPwc = 31;

  // Number of LPGs for outgoing alert group pwc
  parameter int unsigned NOutgoingLpgsPwc = 2;

  // Enumeration of pwc outgoing alert modules
  typedef enum int unsigned {
    TopPwcAlertPeripheralGpio = 0,
    TopPwcAlertPeripheralRvTimer = 1,
    TopPwcAlertPeripheralAonTimerAon = 2,
    TopPwcAlertPeripheralSramCtrlRetAon = 3,
    TopPwcAlertPeripheralRvDm = 4,
    TopPwcAlertPeripheralRvPlicPwc = 5,
    TopPwcAlertPeripheralSramCtrlMain = 6,
    TopPwcAlertPeripheralSramCtrlMbox = 7,
    TopPwcAlertPeripheralDma = 8,
    TopPwcAlertPeripheralMbx0 = 9,
    TopPwcAlertPeripheralMbx1 = 10,
    TopPwcAlertPeripheralMbx2 = 11,
    TopPwcAlertPeripheralMbx3 = 12,
    TopPwcAlertPeripheralMbx4 = 13,
    TopPwcAlertPeripheralMbx5 = 14,
    TopPwcAlertPeripheralMbxPcie0 = 15,
    TopPwcAlertPeripheralRaclCtrlPwc = 16,
    TopPwcAlertPeripheralAcRangeCheckPwc = 17,
    TopPwcAlertPeripheralRvCoreIbexPwc = 18,
    TopPwcOutgoingAlertPwcPeripheralCount
  } outgoing_alert_pwc_peripheral_e;

  // Enumeration of pwc outgoing alerts
  typedef enum int unsigned {
    TopPwcAlertIdGpioFatalFault = 0,
    TopPwcAlertIdRvTimerFatalFault = 1,
    TopPwcAlertIdAonTimerAonFatalFault = 2,
    TopPwcAlertIdSramCtrlRetAonFatalError = 3,
    TopPwcAlertIdRvDmFatalFault = 4,
    TopPwcAlertIdRvPlicPwcFatalFault = 5,
    TopPwcAlertIdSramCtrlMainFatalError = 6,
    TopPwcAlertIdSramCtrlMboxFatalError = 7,
    TopPwcAlertIdDmaFatalFault = 8,
    TopPwcAlertIdMbx0FatalFault = 9,
    TopPwcAlertIdMbx0RecovFault = 10,
    TopPwcAlertIdMbx1FatalFault = 11,
    TopPwcAlertIdMbx1RecovFault = 12,
    TopPwcAlertIdMbx2FatalFault = 13,
    TopPwcAlertIdMbx2RecovFault = 14,
    TopPwcAlertIdMbx3FatalFault = 15,
    TopPwcAlertIdMbx3RecovFault = 16,
    TopPwcAlertIdMbx4FatalFault = 17,
    TopPwcAlertIdMbx4RecovFault = 18,
    TopPwcAlertIdMbx5FatalFault = 19,
    TopPwcAlertIdMbx5RecovFault = 20,
    TopPwcAlertIdMbxPcie0FatalFault = 21,
    TopPwcAlertIdMbxPcie0RecovFault = 22,
    TopPwcAlertIdRaclCtrlPwcFatalFault = 23,
    TopPwcAlertIdRaclCtrlPwcRecovCtrlUpdateErr = 24,
    TopPwcAlertIdAcRangeCheckPwcRecovCtrlUpdateErr = 25,
    TopPwcAlertIdAcRangeCheckPwcFatalFault = 26,
    TopPwcAlertIdRvCoreIbexPwcFatalSwErr = 27,
    TopPwcAlertIdRvCoreIbexPwcRecovSwErr = 28,
    TopPwcAlertIdRvCoreIbexPwcFatalHwErr = 29,
    TopPwcAlertIdRvCoreIbexPwcRecovHwErr = 30,
    TopPwcOutgoingAlertPwcIdCount
  } outgoing_alert_pwc_id_e;

  // Enumeration of pwc outgoing alerts AsyncOn configuration
  parameter logic [NOutgoingAlertsPwc-1:0] AsyncOnOutgoingAlertPwc = {
    1'b1,
    1'b1,
    1'b1,
    1'b1,
    1'b1,
    1'b1,
    1'b1,
    1'b1,
    1'b1,
    1'b1,
    1'b1,
    1'b1,
    1'b1,
    1'b1,
    1'b1,
    1'b1,
    1'b1,
    1'b1,
    1'b1,
    1'b1,
    1'b1,
    1'b1,
    1'b1,
    1'b1,
    1'b1,
    1'b1,
    1'b1,
    1'b1,
    1'b1,
    1'b1,
    1'b1
  };

endpackage
