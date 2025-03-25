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

package top_mio_pkg;
  /**
   * Peripheral base address for rv_timer in top mio.
   */
  parameter int unsigned TOP_MIO_RV_TIMER_BASE_ADDR = 32'h30000000;

  /**
   * Peripheral size in bytes for rv_timer in top mio.
   */
  parameter int unsigned TOP_MIO_RV_TIMER_SIZE_BYTES = 32'h200;

  /**
   * Peripheral base address for aon_timer_aon in top mio.
   */
  parameter int unsigned TOP_MIO_AON_TIMER_AON_BASE_ADDR = 32'h30470000;

  /**
   * Peripheral size in bytes for aon_timer_aon in top mio.
   */
  parameter int unsigned TOP_MIO_AON_TIMER_AON_SIZE_BYTES = 32'h40;

  /**
   * Peripheral base address for ctn device on mio_soc_proxy in top mio.
   */
  parameter int unsigned TOP_MIO_MIO_SOC_PROXY_CTN_BASE_ADDR = 32'h40000000;

  /**
   * Peripheral size in bytes for ctn device on mio_soc_proxy in top mio.
   */
  parameter int unsigned TOP_MIO_MIO_SOC_PROXY_CTN_SIZE_BYTES = 32'h40000000;

  /**
   * Peripheral base address for regs device on sram_ctrl_ret_aon in top mio.
   */
  parameter int unsigned TOP_MIO_SRAM_CTRL_RET_AON_REGS_BASE_ADDR = 32'h30500000;

  /**
   * Peripheral size in bytes for regs device on sram_ctrl_ret_aon in top mio.
   */
  parameter int unsigned TOP_MIO_SRAM_CTRL_RET_AON_REGS_SIZE_BYTES = 32'h40;

  /**
   * Peripheral base address for ram device on sram_ctrl_ret_aon in top mio.
   */
  parameter int unsigned TOP_MIO_SRAM_CTRL_RET_AON_RAM_BASE_ADDR = 32'h30600000;

  /**
   * Peripheral size in bytes for ram device on sram_ctrl_ret_aon in top mio.
   */
  parameter int unsigned TOP_MIO_SRAM_CTRL_RET_AON_RAM_SIZE_BYTES = 32'h1000;

  /**
   * Peripheral base address for regs device on rv_dm in top mio.
   */
  parameter int unsigned TOP_MIO_RV_DM_REGS_BASE_ADDR = 32'h21200000;

  /**
   * Peripheral size in bytes for regs device on rv_dm in top mio.
   */
  parameter int unsigned TOP_MIO_RV_DM_REGS_SIZE_BYTES = 32'h10;

  /**
   * Peripheral base address for mem device on rv_dm in top mio.
   */
  parameter int unsigned TOP_MIO_RV_DM_MEM_BASE_ADDR = 32'h40000;

  /**
   * Peripheral size in bytes for mem device on rv_dm in top mio.
   */
  parameter int unsigned TOP_MIO_RV_DM_MEM_SIZE_BYTES = 32'h1000;

  /**
   * Peripheral base address for rv_plic_mio in top mio.
   */
  parameter int unsigned TOP_MIO_RV_PLIC_MIO_BASE_ADDR = 32'h28000000;

  /**
   * Peripheral size in bytes for rv_plic_mio in top mio.
   */
  parameter int unsigned TOP_MIO_RV_PLIC_MIO_SIZE_BYTES = 32'h8000000;

  /**
   * Peripheral base address for regs device on sram_ctrl_main in top mio.
   */
  parameter int unsigned TOP_MIO_SRAM_CTRL_MAIN_REGS_BASE_ADDR = 32'h211C0000;

  /**
   * Peripheral size in bytes for regs device on sram_ctrl_main in top mio.
   */
  parameter int unsigned TOP_MIO_SRAM_CTRL_MAIN_REGS_SIZE_BYTES = 32'h40;

  /**
   * Peripheral base address for ram device on sram_ctrl_main in top mio.
   */
  parameter int unsigned TOP_MIO_SRAM_CTRL_MAIN_RAM_BASE_ADDR = 32'h10000000;

  /**
   * Peripheral size in bytes for ram device on sram_ctrl_main in top mio.
   */
  parameter int unsigned TOP_MIO_SRAM_CTRL_MAIN_RAM_SIZE_BYTES = 32'h10000;

  /**
   * Peripheral base address for regs device on sram_ctrl_mbox in top mio.
   */
  parameter int unsigned TOP_MIO_SRAM_CTRL_MBOX_REGS_BASE_ADDR = 32'h211D0000;

  /**
   * Peripheral size in bytes for regs device on sram_ctrl_mbox in top mio.
   */
  parameter int unsigned TOP_MIO_SRAM_CTRL_MBOX_REGS_SIZE_BYTES = 32'h40;

  /**
   * Peripheral base address for ram device on sram_ctrl_mbox in top mio.
   */
  parameter int unsigned TOP_MIO_SRAM_CTRL_MBOX_RAM_BASE_ADDR = 32'h11000000;

  /**
   * Peripheral size in bytes for ram device on sram_ctrl_mbox in top mio.
   */
  parameter int unsigned TOP_MIO_SRAM_CTRL_MBOX_RAM_SIZE_BYTES = 32'h1000;

  /**
   * Peripheral base address for dma in top mio.
   */
  parameter int unsigned TOP_MIO_DMA_BASE_ADDR = 32'h22010000;

  /**
   * Peripheral size in bytes for dma in top mio.
   */
  parameter int unsigned TOP_MIO_DMA_SIZE_BYTES = 32'h200;

  /**
   * Peripheral base address for core device on mbx0 in top mio.
   */
  parameter int unsigned TOP_MIO_MBX0_CORE_BASE_ADDR = 32'h22000000;

  /**
   * Peripheral size in bytes for core device on mbx0 in top mio.
   */
  parameter int unsigned TOP_MIO_MBX0_CORE_SIZE_BYTES = 32'h80;

  /**
   * Peripheral base address for core device on mbx1 in top mio.
   */
  parameter int unsigned TOP_MIO_MBX1_CORE_BASE_ADDR = 32'h22000100;

  /**
   * Peripheral size in bytes for core device on mbx1 in top mio.
   */
  parameter int unsigned TOP_MIO_MBX1_CORE_SIZE_BYTES = 32'h80;

  /**
   * Peripheral base address for core device on mbx2 in top mio.
   */
  parameter int unsigned TOP_MIO_MBX2_CORE_BASE_ADDR = 32'h22000200;

  /**
   * Peripheral size in bytes for core device on mbx2 in top mio.
   */
  parameter int unsigned TOP_MIO_MBX2_CORE_SIZE_BYTES = 32'h80;

  /**
   * Peripheral base address for core device on mbx3 in top mio.
   */
  parameter int unsigned TOP_MIO_MBX3_CORE_BASE_ADDR = 32'h22000300;

  /**
   * Peripheral size in bytes for core device on mbx3 in top mio.
   */
  parameter int unsigned TOP_MIO_MBX3_CORE_SIZE_BYTES = 32'h80;

  /**
   * Peripheral base address for core device on mbx4 in top mio.
   */
  parameter int unsigned TOP_MIO_MBX4_CORE_BASE_ADDR = 32'h22000400;

  /**
   * Peripheral size in bytes for core device on mbx4 in top mio.
   */
  parameter int unsigned TOP_MIO_MBX4_CORE_SIZE_BYTES = 32'h80;

  /**
   * Peripheral base address for core device on mbx5 in top mio.
   */
  parameter int unsigned TOP_MIO_MBX5_CORE_BASE_ADDR = 32'h22000500;

  /**
   * Peripheral size in bytes for core device on mbx5 in top mio.
   */
  parameter int unsigned TOP_MIO_MBX5_CORE_SIZE_BYTES = 32'h80;

  /**
   * Peripheral base address for core device on mbx_pcie0 in top mio.
   */
  parameter int unsigned TOP_MIO_MBX_PCIE0_CORE_BASE_ADDR = 32'h22040000;

  /**
   * Peripheral size in bytes for core device on mbx_pcie0 in top mio.
   */
  parameter int unsigned TOP_MIO_MBX_PCIE0_CORE_SIZE_BYTES = 32'h80;

  /**
   * Peripheral base address for cfg device on rv_core_ibex in top mio.
   */
  parameter int unsigned TOP_MIO_RV_CORE_IBEX_CFG_BASE_ADDR = 32'h211F0000;

  /**
   * Peripheral size in bytes for cfg device on rv_core_ibex in top mio.
   */
  parameter int unsigned TOP_MIO_RV_CORE_IBEX_CFG_SIZE_BYTES = 32'h100;

  /**
   * Memory base address for ctn in top mio.
   */
  parameter int unsigned TOP_MIO_CTN_BASE_ADDR = 32'h40000000;

  /**
   * Memory size for ctn in top mio.
   */
  parameter int unsigned TOP_MIO_CTN_SIZE_BYTES = 32'h40000000;

  /**
  * Memory base address for ram_ctn in top mio.
  */
  parameter int unsigned TOP_MIO_RAM_CTN_BASE_ADDR = 32'h41000000;

  /**
  * Memory size for ram_ctn in top mio.
  */
  parameter int unsigned TOP_MIO_RAM_CTN_SIZE_BYTES = 32'h100000;

  /**
   * Memory base address for ram_ret_aon in top mio.
   */
  parameter int unsigned TOP_MIO_RAM_RET_AON_BASE_ADDR = 32'h30600000;

  /**
   * Memory size for ram_ret_aon in top mio.
   */
  parameter int unsigned TOP_MIO_RAM_RET_AON_SIZE_BYTES = 32'h1000;

  /**
   * Memory base address for ram_main in top mio.
   */
  parameter int unsigned TOP_MIO_RAM_MAIN_BASE_ADDR = 32'h10000000;

  /**
   * Memory size for ram_main in top mio.
   */
  parameter int unsigned TOP_MIO_RAM_MAIN_SIZE_BYTES = 32'h10000;

  /**
   * Memory base address for ram_mbox in top mio.
   */
  parameter int unsigned TOP_MIO_RAM_MBOX_BASE_ADDR = 32'h11000000;

  /**
   * Memory size for ram_mbox in top mio.
   */
  parameter int unsigned TOP_MIO_RAM_MBOX_SIZE_BYTES = 32'h1000;

  
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
    TopMioAlertPeripheralRvCoreIbex = 17,
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
    TopMioAlertIdRvCoreIbexFatalSwErr = 26,
    TopMioAlertIdRvCoreIbexRecovSwErr = 27,
    TopMioAlertIdRvCoreIbexFatalHwErr = 28,
    TopMioAlertIdRvCoreIbexRecovHwErr = 29,
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


endpackage
