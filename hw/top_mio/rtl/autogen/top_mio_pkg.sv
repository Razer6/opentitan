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
   * Peripheral base address for core device on soc_proxy in top mio.
   */
  parameter int unsigned TOP_MIO_SOC_PROXY_CORE_BASE_ADDR = 32'h22030000;

  /**
   * Peripheral size in bytes for core device on soc_proxy in top mio.
   */
  parameter int unsigned TOP_MIO_SOC_PROXY_CORE_SIZE_BYTES = 32'h10;

  /**
   * Peripheral base address for ctn device on soc_proxy in top mio.
   */
  parameter int unsigned TOP_MIO_SOC_PROXY_CTN_BASE_ADDR = 32'h40000000;

  /**
   * Peripheral size in bytes for ctn device on soc_proxy in top mio.
   */
  parameter int unsigned TOP_MIO_SOC_PROXY_CTN_SIZE_BYTES = 32'h40000000;

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
   * Peripheral base address for rv_plic in top mio.
   */
  parameter int unsigned TOP_MIO_RV_PLIC_BASE_ADDR = 32'h28000000;

  /**
   * Peripheral size in bytes for rv_plic in top mio.
   */
  parameter int unsigned TOP_MIO_RV_PLIC_SIZE_BYTES = 32'h8000000;

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
   * Peripheral base address for cfg device on rv_core_ibex in top mio.
   */
  parameter int unsigned TOP_MIO_RV_CORE_IBEX_CFG_BASE_ADDR = 32'h211F0000;

  /**
   * Peripheral size in bytes for cfg device on rv_core_ibex in top mio.
   */
  parameter int unsigned TOP_MIO_RV_CORE_IBEX_CFG_SIZE_BYTES = 32'h800;

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
  parameter int unsigned NOutgoingAlertsMio = 27;

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
    TopMioAlertPeripheralRaclCtrl = 15,
    TopMioAlertPeripheralRvCoreIbex = 16,
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
    TopMioAlertIdRaclCtrlRecovCtrlUpdateErr = 21,
    TopMioAlertIdRaclCtrlFatalFault = 22,
    TopMioAlertIdRvCoreIbexFatalSwErr = 23,
    TopMioAlertIdRvCoreIbexRecovSwErr = 24,
    TopMioAlertIdRvCoreIbexFatalHwErr = 25,
    TopMioAlertIdRvCoreIbexRecovHwErr = 26,
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
    1'b1
  };


endpackage
