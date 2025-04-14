// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// ------------------- W A R N I N G: A U T O - G E N E R A T E D   C O D E !! -------------------//
// PLEASE DO NOT HAND-EDIT THIS FILE. IT HAS BEEN AUTO-GENERATED WITH THE FOLLOWING COMMAND:
//
// util/topgen.py -t hw/top_mio/data/top_mio.hjson \
//                -o hw/top_mio/ \
//                --rnd_cnst_seed \
//                1017106219537032642877583828875051302543807092889754935647094601236425074047

package top_mio_soc_dbg_pkg;
  /**
   * Peripheral base address for dbg device on rv_dm in top mio.
   */
  parameter int unsigned TOP_MIO_SOC_DBG_RV_DM_DBG_BASE_ADDR = 32'h0;

  /**
   * Peripheral size in bytes for dbg device on rv_dm in top mio.
   */
  parameter int unsigned TOP_MIO_SOC_DBG_RV_DM_DBG_SIZE_BYTES = 32'h200;

  
  // Number of mio outgoing alerts
  parameter int unsigned NOutgoingAlertsMio = 30;

  // Number of LPGs for outgoing alert group mio
  parameter int unsigned NOutgoingLpgsMio = 2;
  
  // Enumeration of mio outgoing alert modules
  typedef enum int unsigned {
    TopMioAlertPeripheralRvTimer = 0,
    TopMioAlertPeripheralAonTimerAon = 1,
    TopMioAlertPeripheralSramCtrlRetAon = 2,
    TopMioAlertPeripheralRvDm = 3,
    TopMioAlertPeripheralRvPlicMio = 4,
    TopMioAlertPeripheralSramCtrlMain = 5,
    TopMioAlertPeripheralSramCtrlMbox = 6,
    TopMioAlertPeripheralDma = 7,
    TopMioAlertPeripheralMbx0 = 8,
    TopMioAlertPeripheralMbx1 = 9,
    TopMioAlertPeripheralMbx2 = 10,
    TopMioAlertPeripheralMbx3 = 11,
    TopMioAlertPeripheralMbx4 = 12,
    TopMioAlertPeripheralMbx5 = 13,
    TopMioAlertPeripheralMbxPcie0 = 14,
    TopMioAlertPeripheralRaclCtrl = 15,
    TopMioAlertPeripheralAcRangeCheck = 16,
    TopMioAlertPeripheralRvCoreIbexMio = 17,
    TopMioOutgoingAlertMioPeripheralCount
  } outgoing_alert_mio_peripheral_e;

  // Enumeration of mio outgoing alerts
  typedef enum int unsigned {
    TopMioAlertIdRvTimerFatalFault = 0,
    TopMioAlertIdAonTimerAonFatalFault = 1,
    TopMioAlertIdSramCtrlRetAonFatalError = 2,
    TopMioAlertIdRvDmFatalFault = 3,
    TopMioAlertIdRvPlicMioFatalFault = 4,
    TopMioAlertIdSramCtrlMainFatalError = 5,
    TopMioAlertIdSramCtrlMboxFatalError = 6,
    TopMioAlertIdDmaFatalFault = 7,
    TopMioAlertIdMbx0FatalFault = 8,
    TopMioAlertIdMbx0RecovFault = 9,
    TopMioAlertIdMbx1FatalFault = 10,
    TopMioAlertIdMbx1RecovFault = 11,
    TopMioAlertIdMbx2FatalFault = 12,
    TopMioAlertIdMbx2RecovFault = 13,
    TopMioAlertIdMbx3FatalFault = 14,
    TopMioAlertIdMbx3RecovFault = 15,
    TopMioAlertIdMbx4FatalFault = 16,
    TopMioAlertIdMbx4RecovFault = 17,
    TopMioAlertIdMbx5FatalFault = 18,
    TopMioAlertIdMbx5RecovFault = 19,
    TopMioAlertIdMbxPcie0FatalFault = 20,
    TopMioAlertIdMbxPcie0RecovFault = 21,
    TopMioAlertIdRaclCtrlFatalFault = 22,
    TopMioAlertIdRaclCtrlRecovCtrlUpdateErr = 23,
    TopMioAlertIdAcRangeCheckRecovCtrlUpdateErr = 24,
    TopMioAlertIdAcRangeCheckFatalFault = 25,
    TopMioAlertIdRvCoreIbexMioFatalSwErr = 26,
    TopMioAlertIdRvCoreIbexMioRecovSwErr = 27,
    TopMioAlertIdRvCoreIbexMioFatalHwErr = 28,
    TopMioAlertIdRvCoreIbexMioRecovHwErr = 29,
    TopMioOutgoingAlertMioIdCount
  } outgoing_alert_mio_id_e;

  // Enumeration of mio outgoing alerts AsyncOn configuration
  parameter logic [NOutgoingAlertsMio-1:0] AsyncOnOutgoingAlertMio = {
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


  // Number of mio outgoing interrupts
  parameter int unsigned NOutgoingInterruptsMio = 1;


endpackage
