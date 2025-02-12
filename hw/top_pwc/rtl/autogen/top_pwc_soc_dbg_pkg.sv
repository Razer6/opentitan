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

package top_pwc_soc_dbg_pkg;
  /**
   * Peripheral base address for dbg device on rv_dm in top pwc.
   */
  parameter int unsigned TOP_PWC_SOC_DBG_RV_DM_DBG_BASE_ADDR = 32'h0;

  /**
   * Peripheral size in bytes for dbg device on rv_dm in top pwc.
   */
  parameter int unsigned TOP_PWC_SOC_DBG_RV_DM_DBG_SIZE_BYTES = 32'h200;

  
  // Number of pwc outgoing alerts
  parameter int unsigned NOutgoingAlertsPwc = 30;

  // Number of LPGs for outgoing alert group pwc
  parameter int unsigned NOutgoingLpgsPwc = 2;
  
  // Enumeration of pwc outgoing alert modules
  typedef enum int unsigned {
    TopPwcAlertPeripheralGpio = 0,
    TopPwcAlertPeripheralRvTimer = 1,
    TopPwcAlertPeripheralAonTimerAon = 2,
    TopPwcAlertPeripheralPwcSocProxy = 3,
    TopPwcAlertPeripheralSramCtrlRetAon = 4,
    TopPwcAlertPeripheralRvDm = 5,
    TopPwcAlertPeripheralRvPlicPwc = 6,
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
    TopPwcAlertIdPwcSocProxyFatalAlertIntg = 3,
    TopPwcAlertIdSramCtrlRetAonFatalError = 4,
    TopPwcAlertIdRvDmFatalFault = 5,
    TopPwcAlertIdRvPlicPwcFatalFault = 6,
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
