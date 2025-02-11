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
   * Peripheral base address for racl_ctrl in top pwc.
   */
  parameter int unsigned TOP_PWC_SOC_MBX_RACL_CTRL_BASE_ADDR = 32'h1473000;

  /**
   * Peripheral size in bytes for racl_ctrl in top pwc.
   */
  parameter int unsigned TOP_PWC_SOC_MBX_RACL_CTRL_SIZE_BYTES = 32'h40;

  
  // Number of pwc outgoing alerts
  parameter int unsigned NOutgoingAlertsPwc = 30;

  // Number of LPGs for outgoing alert group pwc
  parameter int unsigned NOutgoingLpgsPwc = 2;
  
  // Enumeration of pwc outgoing alert modules
  typedef enum int unsigned {
    TopPwcAlertPeripheralGpio = 0,
    TopPwcAlertPeripheralRvTimer = 1,
    TopPwcAlertPeripheralAonTimerAon = 2,
    TopPwcAlertPeripheralSocProxy = 3,
    TopPwcAlertPeripheralSramCtrlRetAon = 4,
    TopPwcAlertPeripheralRvDm = 5,
    TopPwcAlertPeripheralRvPlic = 6,
    TopPwcAlertPeripheralSramCtrlMain = 7,
    TopPwcAlertPeripheralSramCtrlMbox = 8,
    TopPwcAlertPeripheralDma = 9,
    TopPwcAlertPeripheralMbx0 = 10,
    TopPwcAlertPeripheralMbx1 = 11,
    TopPwcAlertPeripheralMbx2 = 12,
    TopPwcAlertPeripheralMbx3 = 13,
    TopPwcAlertPeripheralMbx4 = 14,
    TopPwcAlertPeripheralMbx5 = 15,
    TopPwcAlertPeripheralMbxPcie0 = 16,
    TopPwcAlertPeripheralRaclCtrl = 17,
    TopPwcAlertPeripheralRvCoreIbex = 18,
    TopPwcOutgoingAlertPwcPeripheralCount
  } outgoing_alert_pwc_peripheral_e;

  // Enumeration of pwc outgoing alerts
  typedef enum int unsigned {
    TopPwcAlertIdGpioFatalFault = 0,
    TopPwcAlertIdRvTimerFatalFault = 1,
    TopPwcAlertIdAonTimerAonFatalFault = 2,
    TopPwcAlertIdSocProxyFatalAlertIntg = 3,
    TopPwcAlertIdSramCtrlRetAonFatalError = 4,
    TopPwcAlertIdRvDmFatalFault = 5,
    TopPwcAlertIdRvPlicFatalFault = 6,
    TopPwcAlertIdSramCtrlMainFatalError = 7,
    TopPwcAlertIdSramCtrlMboxFatalError = 8,
    TopPwcAlertIdDmaFatalFault = 9,
    TopPwcAlertIdMbx0FatalFault = 10,
    TopPwcAlertIdMbx0RecovFault = 11,
    TopPwcAlertIdMbx1FatalFault = 12,
    TopPwcAlertIdMbx1RecovFault = 13,
    TopPwcAlertIdMbx2FatalFault = 14,
    TopPwcAlertIdMbx2RecovFault = 15,
    TopPwcAlertIdMbx3FatalFault = 16,
    TopPwcAlertIdMbx3RecovFault = 17,
    TopPwcAlertIdMbx4FatalFault = 18,
    TopPwcAlertIdMbx4RecovFault = 19,
    TopPwcAlertIdMbx5FatalFault = 20,
    TopPwcAlertIdMbx5RecovFault = 21,
    TopPwcAlertIdMbxPcie0FatalFault = 22,
    TopPwcAlertIdMbxPcie0RecovFault = 23,
    TopPwcAlertIdRaclCtrlRecovCtrlUpdateErr = 24,
    TopPwcAlertIdRaclCtrlFatalFault = 25,
    TopPwcAlertIdRvCoreIbexFatalSwErr = 26,
    TopPwcAlertIdRvCoreIbexRecovSwErr = 27,
    TopPwcAlertIdRvCoreIbexFatalHwErr = 28,
    TopPwcAlertIdRvCoreIbexRecovHwErr = 29,
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
    1'b1
  };


endpackage
