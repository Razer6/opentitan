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

package top_mio_soc_mbx_pkg;
  /**
   * Peripheral base address for soc device on mbx0 in top mio.
   */
  parameter int unsigned TOP_MIO_SOC_MBX_MBX0_SOC_BASE_ADDR = 32'h1485000;

  /**
   * Peripheral size in bytes for soc device on mbx0 in top mio.
   */
  parameter int unsigned TOP_MIO_SOC_MBX_MBX0_SOC_SIZE_BYTES = 32'h20;

  /**
   * Peripheral base address for soc device on mbx1 in top mio.
   */
  parameter int unsigned TOP_MIO_SOC_MBX_MBX1_SOC_BASE_ADDR = 32'h1485100;

  /**
   * Peripheral size in bytes for soc device on mbx1 in top mio.
   */
  parameter int unsigned TOP_MIO_SOC_MBX_MBX1_SOC_SIZE_BYTES = 32'h20;

  /**
   * Peripheral base address for soc device on mbx2 in top mio.
   */
  parameter int unsigned TOP_MIO_SOC_MBX_MBX2_SOC_BASE_ADDR = 32'h1485200;

  /**
   * Peripheral size in bytes for soc device on mbx2 in top mio.
   */
  parameter int unsigned TOP_MIO_SOC_MBX_MBX2_SOC_SIZE_BYTES = 32'h20;

  /**
   * Peripheral base address for soc device on mbx3 in top mio.
   */
  parameter int unsigned TOP_MIO_SOC_MBX_MBX3_SOC_BASE_ADDR = 32'h1485300;

  /**
   * Peripheral size in bytes for soc device on mbx3 in top mio.
   */
  parameter int unsigned TOP_MIO_SOC_MBX_MBX3_SOC_SIZE_BYTES = 32'h20;

  /**
   * Peripheral base address for soc device on mbx4 in top mio.
   */
  parameter int unsigned TOP_MIO_SOC_MBX_MBX4_SOC_BASE_ADDR = 32'h1485400;

  /**
   * Peripheral size in bytes for soc device on mbx4 in top mio.
   */
  parameter int unsigned TOP_MIO_SOC_MBX_MBX4_SOC_SIZE_BYTES = 32'h20;

  /**
   * Peripheral base address for soc device on mbx5 in top mio.
   */
  parameter int unsigned TOP_MIO_SOC_MBX_MBX5_SOC_BASE_ADDR = 32'h1485500;

  /**
   * Peripheral size in bytes for soc device on mbx5 in top mio.
   */
  parameter int unsigned TOP_MIO_SOC_MBX_MBX5_SOC_SIZE_BYTES = 32'h20;

  /**
   * Peripheral base address for soc device on mbx_pcie0 in top mio.
   */
  parameter int unsigned TOP_MIO_SOC_MBX_MBX_PCIE0_SOC_BASE_ADDR = 32'h1480100;

  /**
   * Peripheral size in bytes for soc device on mbx_pcie0 in top mio.
   */
  parameter int unsigned TOP_MIO_SOC_MBX_MBX_PCIE0_SOC_SIZE_BYTES = 32'h20;

  /**
   * Peripheral base address for racl_ctrl in top mio.
   */
  parameter int unsigned TOP_MIO_SOC_MBX_RACL_CTRL_BASE_ADDR = 32'h1463000;

  /**
   * Peripheral size in bytes for racl_ctrl in top mio.
   */
  parameter int unsigned TOP_MIO_SOC_MBX_RACL_CTRL_SIZE_BYTES = 32'h40;

  
  // Number of mio outgoing alerts
  parameter int unsigned NOutgoingAlertsMio = 29;

  // Number of LPGs for outgoing alert group mio
  parameter int unsigned NOutgoingLpgsMio = 2;
  
  // Enumeration of mio outgoing alert modules
  typedef enum int unsigned {
    TopMioAlertPeripheralRvTimer = 0,
    TopMioAlertPeripheralAonTimerAon = 1,
    TopMioAlertPeripheralSocProxy = 2,
    TopMioAlertPeripheralSramCtrlRetAon = 3,
    TopMioAlertPeripheralRvDm = 4,
    TopMioAlertPeripheralRvPlic = 5,
    TopMioAlertPeripheralSramCtrlMain = 6,
    TopMioAlertPeripheralSramCtrlMbox = 7,
    TopMioAlertPeripheralDma = 8,
    TopMioAlertPeripheralMbx0 = 9,
    TopMioAlertPeripheralMbx1 = 10,
    TopMioAlertPeripheralMbx2 = 11,
    TopMioAlertPeripheralMbx3 = 12,
    TopMioAlertPeripheralMbx4 = 13,
    TopMioAlertPeripheralMbx5 = 14,
    TopMioAlertPeripheralMbxPcie0 = 15,
    TopMioAlertPeripheralRaclCtrl = 16,
    TopMioAlertPeripheralRvCoreIbex = 17,
    TopMioOutgoingAlertMioPeripheralCount
  } outgoing_alert_mio_peripheral_e;

  // Enumeration of mio outgoing alerts
  typedef enum int unsigned {
    TopMioAlertIdRvTimerFatalFault = 0,
    TopMioAlertIdAonTimerAonFatalFault = 1,
    TopMioAlertIdSocProxyFatalAlertIntg = 2,
    TopMioAlertIdSramCtrlRetAonFatalError = 3,
    TopMioAlertIdRvDmFatalFault = 4,
    TopMioAlertIdRvPlicFatalFault = 5,
    TopMioAlertIdSramCtrlMainFatalError = 6,
    TopMioAlertIdSramCtrlMboxFatalError = 7,
    TopMioAlertIdDmaFatalFault = 8,
    TopMioAlertIdMbx0FatalFault = 9,
    TopMioAlertIdMbx0RecovFault = 10,
    TopMioAlertIdMbx1FatalFault = 11,
    TopMioAlertIdMbx1RecovFault = 12,
    TopMioAlertIdMbx2FatalFault = 13,
    TopMioAlertIdMbx2RecovFault = 14,
    TopMioAlertIdMbx3FatalFault = 15,
    TopMioAlertIdMbx3RecovFault = 16,
    TopMioAlertIdMbx4FatalFault = 17,
    TopMioAlertIdMbx4RecovFault = 18,
    TopMioAlertIdMbx5FatalFault = 19,
    TopMioAlertIdMbx5RecovFault = 20,
    TopMioAlertIdMbxPcie0FatalFault = 21,
    TopMioAlertIdMbxPcie0RecovFault = 22,
    TopMioAlertIdRaclCtrlRecovCtrlUpdateErr = 23,
    TopMioAlertIdRaclCtrlFatalFault = 24,
    TopMioAlertIdRvCoreIbexFatalSwErr = 25,
    TopMioAlertIdRvCoreIbexRecovSwErr = 26,
    TopMioAlertIdRvCoreIbexFatalHwErr = 27,
    TopMioAlertIdRvCoreIbexRecovHwErr = 28,
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
    1'b1
  };


endpackage
