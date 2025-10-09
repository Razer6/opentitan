// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// ------------------- W A R N I N G: A U T O - G E N E R A T E D   C O D E !! -------------------//
// PLEASE DO NOT HAND-EDIT THIS FILE. IT HAS BEEN AUTO-GENERATED WITH THE FOLLOWING COMMAND:
//
// util/topgen.py -t hw/top_mio/data/top_mio.hjson \
//                -o hw/top_mio/

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
  parameter int unsigned TOP_MIO_MIO_SOC_PROXY_CTN_SIZE_BYTES = 32'h80000000;

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
   * Peripheral base address for cfg device on rv_core_ibex_mio in top mio.
   */
  parameter int unsigned TOP_MIO_RV_CORE_IBEX_MIO_CFG_BASE_ADDR = 32'h211F0000;

  /**
   * Peripheral size in bytes for cfg device on rv_core_ibex_mio in top mio.
   */
  parameter int unsigned TOP_MIO_RV_CORE_IBEX_MIO_CFG_SIZE_BYTES = 32'h800;

  /**
   * Memory base address for ctn in top mio.
   */
  parameter int unsigned TOP_MIO_CTN_BASE_ADDR = 32'h40000000;

  /**
   * Memory size for ctn in top mio.
   */
  parameter int unsigned TOP_MIO_CTN_SIZE_BYTES = 32'h80000000;

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
    TopMioAlertPeripheralRaclCtrlMio = 15,
    TopMioAlertPeripheralAcRangeCheckMio = 16,
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
    TopMioAlertIdRaclCtrlMioFatalFault = 22,
    TopMioAlertIdRaclCtrlMioRecovCtrlUpdateErr = 23,
    TopMioAlertIdAcRangeCheckMioRecovCtrlUpdateErr = 24,
    TopMioAlertIdAcRangeCheckMioFatalFault = 25,
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

  // Enumeration of interrupts
  typedef enum int unsigned {
    TopMioPlicMioIrqIdNone = 0,
    TopMioPlicMioIrqIdRvTimerTimerExpiredHart0Timer0 = 1,
    TopMioPlicMioIrqIdAonTimerAonWkupTimerExpired = 2,
    TopMioPlicMioIrqIdAonTimerAonWdogTimerBark = 3,
    TopMioPlicMioIrqIdDmaDmaDone = 4,
    TopMioPlicMioIrqIdDmaDmaChunkDone = 5,
    TopMioPlicMioIrqIdDmaDmaError = 6,
    TopMioPlicMioIrqIdMbx0MbxReady = 7,
    TopMioPlicMioIrqIdMbx0MbxAbort = 8,
    TopMioPlicMioIrqIdMbx0MbxError = 9,
    TopMioPlicMioIrqIdMbx1MbxReady = 10,
    TopMioPlicMioIrqIdMbx1MbxAbort = 11,
    TopMioPlicMioIrqIdMbx1MbxError = 12,
    TopMioPlicMioIrqIdMbx2MbxReady = 13,
    TopMioPlicMioIrqIdMbx2MbxAbort = 14,
    TopMioPlicMioIrqIdMbx2MbxError = 15,
    TopMioPlicMioIrqIdMbx3MbxReady = 16,
    TopMioPlicMioIrqIdMbx3MbxAbort = 17,
    TopMioPlicMioIrqIdMbx3MbxError = 18,
    TopMioPlicMioIrqIdMbx4MbxReady = 19,
    TopMioPlicMioIrqIdMbx4MbxAbort = 20,
    TopMioPlicMioIrqIdMbx4MbxError = 21,
    TopMioPlicMioIrqIdMbx5MbxReady = 22,
    TopMioPlicMioIrqIdMbx5MbxAbort = 23,
    TopMioPlicMioIrqIdMbx5MbxError = 24,
    TopMioPlicMioIrqIdMbxPcie0MbxReady = 25,
    TopMioPlicMioIrqIdMbxPcie0MbxAbort = 26,
    TopMioPlicMioIrqIdMbxPcie0MbxError = 27,
    TopMioPlicMioIrqIdMioHdrIpiFromMio0 = 28,
    TopMioPlicMioIrqIdMioHdrIpiFromMio1 = 29,
    TopMioPlicMioIrqIdMioHdrIpiFromMio2 = 30,
    TopMioPlicMioIrqIdMioHdrIpiFromRot = 31,
    TopMioPlicMioIrqIdMioHdrIpiFromPwc = 32,
    TopMioPlicMioIrqIdMioHdrIpiFromDuc = 33,
    TopMioPlicMioIrqIdLioGrpAIbexIrq = 34,
    TopMioPlicMioIrqIdLioGrpBIbexIrq = 35,
    TopMioPlicMioIrqIdLioGrpCIbexIrq = 36,
    TopMioPlicMioIrqIdCount
  } interrupt_rv_plic_mio_id_e;


  // Number of mio_external incoming interrupts
  parameter int unsigned NIncomingInterruptsMioExternal = 9;

  // Enumeration of interrupts for incoming group mio_external
  typedef enum int unsigned {
    TopMioIncomingIrqMioExternalIdMioHdrIpiFromMio0 = 0,
    TopMioIncomingIrqMioExternalIdMioHdrIpiFromMio1 = 1,
    TopMioIncomingIrqMioExternalIdMioHdrIpiFromMio2 = 2,
    TopMioIncomingIrqMioExternalIdMioHdrIpiFromRot = 3,
    TopMioIncomingIrqMioExternalIdMioHdrIpiFromPwc = 4,
    TopMioIncomingIrqMioExternalIdMioHdrIpiFromDuc = 5,
    TopMioIncomingIrqMioExternalIdLioGrpAIbexIrq = 6,
    TopMioIncomingIrqMioExternalIdLioGrpBIbexIrq = 7,
    TopMioIncomingIrqMioExternalIdLioGrpCIbexIrq = 8,
    TopMioIncomingIrqMioExternalIdCount
  } incoming_interrupt_mio_external_id_e;

  // Number of mio outgoing interrupts
  parameter int unsigned NOutgoingInterruptsMio = 2;

  // Enumeration of interrupts for outgoing group mio
  typedef enum int unsigned {
    TopMioOutgoingIrqMioIdRaclCtrlMioRaclError = 0,
    TopMioOutgoingIrqMioIdAcRangeCheckMioDenyCntReached = 1,
    TopMioOutgoingIrqMioIdCount
  } outgoing_interrupt_mio_id_e;

  // List of peripheral instantiated in this chip.
  typedef enum {
    PeripheralAonTimerAon,
    PeripheralDma,
    PeripheralMbx0,
    PeripheralMbx1,
    PeripheralMbx2,
    PeripheralMbx3,
    PeripheralMbx4,
    PeripheralMbx5,
    PeripheralMbxPcie0,
    PeripheralMioSocProxy,
    PeripheralRvCoreIbexMio,
    PeripheralRvDm,
    PeripheralRvPlicMio,
    PeripheralRvTimer,
    PeripheralSramCtrlMain,
    PeripheralSramCtrlMbox,
    PeripheralSramCtrlRetAon,
    PeripheralCount
  } peripheral_e;

  // MMIO Region
  //
  parameter int unsigned TOP_MIO_MMIO_BASE_ADDR = 32'h211C0000;
  parameter int unsigned TOP_MIO_MMIO_SIZE_BYTES = 32'hF441000;

  // TODO: Enumeration for PLIC Interrupt source peripheral.

endpackage
