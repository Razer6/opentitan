// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// ------------------- W A R N I N G: A U T O - G E N E R A T E D   C O D E !! -------------------//
// PLEASE DO NOT HAND-EDIT THIS FILE. IT HAS BEEN AUTO-GENERATED WITH THE FOLLOWING COMMAND:
//
// util/topgen.py -t hw/top_pwc/data/top_pwc.hjson \
//                -o hw/top_pwc/

package top_pwc_pkg;
  /**
   * Peripheral base address for gpio in top pwc.
   */
  parameter int unsigned TOP_PWC_GPIO_BASE_ADDR = 32'h30000000;

  /**
   * Peripheral size in bytes for gpio in top pwc.
   */
  parameter int unsigned TOP_PWC_GPIO_SIZE_BYTES = 32'h80;

  /**
   * Peripheral base address for rv_timer in top pwc.
   */
  parameter int unsigned TOP_PWC_RV_TIMER_BASE_ADDR = 32'h30100000;

  /**
   * Peripheral size in bytes for rv_timer in top pwc.
   */
  parameter int unsigned TOP_PWC_RV_TIMER_SIZE_BYTES = 32'h200;

  /**
   * Peripheral base address for aon_timer_aon in top pwc.
   */
  parameter int unsigned TOP_PWC_AON_TIMER_AON_BASE_ADDR = 32'h30470000;

  /**
   * Peripheral size in bytes for aon_timer_aon in top pwc.
   */
  parameter int unsigned TOP_PWC_AON_TIMER_AON_SIZE_BYTES = 32'h40;

  /**
   * Peripheral base address for ctn device on pwc_soc_proxy in top pwc.
   */
  parameter int unsigned TOP_PWC_PWC_SOC_PROXY_CTN_BASE_ADDR = 32'h40000000;

  /**
   * Peripheral size in bytes for ctn device on pwc_soc_proxy in top pwc.
   */
  parameter int unsigned TOP_PWC_PWC_SOC_PROXY_CTN_SIZE_BYTES = 32'h80000000;

  /**
   * Peripheral base address for regs device on sram_ctrl_ret_aon in top pwc.
   */
  parameter int unsigned TOP_PWC_SRAM_CTRL_RET_AON_REGS_BASE_ADDR = 32'h30500000;

  /**
   * Peripheral size in bytes for regs device on sram_ctrl_ret_aon in top pwc.
   */
  parameter int unsigned TOP_PWC_SRAM_CTRL_RET_AON_REGS_SIZE_BYTES = 32'h40;

  /**
   * Peripheral base address for ram device on sram_ctrl_ret_aon in top pwc.
   */
  parameter int unsigned TOP_PWC_SRAM_CTRL_RET_AON_RAM_BASE_ADDR = 32'h30600000;

  /**
   * Peripheral size in bytes for ram device on sram_ctrl_ret_aon in top pwc.
   */
  parameter int unsigned TOP_PWC_SRAM_CTRL_RET_AON_RAM_SIZE_BYTES = 32'h1000;

  /**
   * Peripheral base address for regs device on rv_dm in top pwc.
   */
  parameter int unsigned TOP_PWC_RV_DM_REGS_BASE_ADDR = 32'h21200000;

  /**
   * Peripheral size in bytes for regs device on rv_dm in top pwc.
   */
  parameter int unsigned TOP_PWC_RV_DM_REGS_SIZE_BYTES = 32'h10;

  /**
   * Peripheral base address for mem device on rv_dm in top pwc.
   */
  parameter int unsigned TOP_PWC_RV_DM_MEM_BASE_ADDR = 32'h40000;

  /**
   * Peripheral size in bytes for mem device on rv_dm in top pwc.
   */
  parameter int unsigned TOP_PWC_RV_DM_MEM_SIZE_BYTES = 32'h1000;

  /**
   * Peripheral base address for rv_plic_pwc in top pwc.
   */
  parameter int unsigned TOP_PWC_RV_PLIC_PWC_BASE_ADDR = 32'h28000000;

  /**
   * Peripheral size in bytes for rv_plic_pwc in top pwc.
   */
  parameter int unsigned TOP_PWC_RV_PLIC_PWC_SIZE_BYTES = 32'h8000000;

  /**
   * Peripheral base address for regs device on sram_ctrl_main in top pwc.
   */
  parameter int unsigned TOP_PWC_SRAM_CTRL_MAIN_REGS_BASE_ADDR = 32'h211C0000;

  /**
   * Peripheral size in bytes for regs device on sram_ctrl_main in top pwc.
   */
  parameter int unsigned TOP_PWC_SRAM_CTRL_MAIN_REGS_SIZE_BYTES = 32'h40;

  /**
   * Peripheral base address for ram device on sram_ctrl_main in top pwc.
   */
  parameter int unsigned TOP_PWC_SRAM_CTRL_MAIN_RAM_BASE_ADDR = 32'h10000000;

  /**
   * Peripheral size in bytes for ram device on sram_ctrl_main in top pwc.
   */
  parameter int unsigned TOP_PWC_SRAM_CTRL_MAIN_RAM_SIZE_BYTES = 32'h10000;

  /**
   * Peripheral base address for regs device on sram_ctrl_mbox in top pwc.
   */
  parameter int unsigned TOP_PWC_SRAM_CTRL_MBOX_REGS_BASE_ADDR = 32'h211D0000;

  /**
   * Peripheral size in bytes for regs device on sram_ctrl_mbox in top pwc.
   */
  parameter int unsigned TOP_PWC_SRAM_CTRL_MBOX_REGS_SIZE_BYTES = 32'h40;

  /**
   * Peripheral base address for ram device on sram_ctrl_mbox in top pwc.
   */
  parameter int unsigned TOP_PWC_SRAM_CTRL_MBOX_RAM_BASE_ADDR = 32'h11000000;

  /**
   * Peripheral size in bytes for ram device on sram_ctrl_mbox in top pwc.
   */
  parameter int unsigned TOP_PWC_SRAM_CTRL_MBOX_RAM_SIZE_BYTES = 32'h1000;

  /**
   * Peripheral base address for dma in top pwc.
   */
  parameter int unsigned TOP_PWC_DMA_BASE_ADDR = 32'h22010000;

  /**
   * Peripheral size in bytes for dma in top pwc.
   */
  parameter int unsigned TOP_PWC_DMA_SIZE_BYTES = 32'h200;

  /**
   * Peripheral base address for core device on mbx0 in top pwc.
   */
  parameter int unsigned TOP_PWC_MBX0_CORE_BASE_ADDR = 32'h22000000;

  /**
   * Peripheral size in bytes for core device on mbx0 in top pwc.
   */
  parameter int unsigned TOP_PWC_MBX0_CORE_SIZE_BYTES = 32'h80;

  /**
   * Peripheral base address for core device on mbx1 in top pwc.
   */
  parameter int unsigned TOP_PWC_MBX1_CORE_BASE_ADDR = 32'h22000100;

  /**
   * Peripheral size in bytes for core device on mbx1 in top pwc.
   */
  parameter int unsigned TOP_PWC_MBX1_CORE_SIZE_BYTES = 32'h80;

  /**
   * Peripheral base address for core device on mbx2 in top pwc.
   */
  parameter int unsigned TOP_PWC_MBX2_CORE_BASE_ADDR = 32'h22000200;

  /**
   * Peripheral size in bytes for core device on mbx2 in top pwc.
   */
  parameter int unsigned TOP_PWC_MBX2_CORE_SIZE_BYTES = 32'h80;

  /**
   * Peripheral base address for core device on mbx3 in top pwc.
   */
  parameter int unsigned TOP_PWC_MBX3_CORE_BASE_ADDR = 32'h22000300;

  /**
   * Peripheral size in bytes for core device on mbx3 in top pwc.
   */
  parameter int unsigned TOP_PWC_MBX3_CORE_SIZE_BYTES = 32'h80;

  /**
   * Peripheral base address for core device on mbx4 in top pwc.
   */
  parameter int unsigned TOP_PWC_MBX4_CORE_BASE_ADDR = 32'h22000400;

  /**
   * Peripheral size in bytes for core device on mbx4 in top pwc.
   */
  parameter int unsigned TOP_PWC_MBX4_CORE_SIZE_BYTES = 32'h80;

  /**
   * Peripheral base address for core device on mbx5 in top pwc.
   */
  parameter int unsigned TOP_PWC_MBX5_CORE_BASE_ADDR = 32'h22000500;

  /**
   * Peripheral size in bytes for core device on mbx5 in top pwc.
   */
  parameter int unsigned TOP_PWC_MBX5_CORE_SIZE_BYTES = 32'h80;

  /**
   * Peripheral base address for core device on mbx_pcie0 in top pwc.
   */
  parameter int unsigned TOP_PWC_MBX_PCIE0_CORE_BASE_ADDR = 32'h22040000;

  /**
   * Peripheral size in bytes for core device on mbx_pcie0 in top pwc.
   */
  parameter int unsigned TOP_PWC_MBX_PCIE0_CORE_SIZE_BYTES = 32'h80;

  /**
   * Peripheral base address for cfg device on rv_core_ibex_pwc in top pwc.
   */
  parameter int unsigned TOP_PWC_RV_CORE_IBEX_PWC_CFG_BASE_ADDR = 32'h211F0000;

  /**
   * Peripheral size in bytes for cfg device on rv_core_ibex_pwc in top pwc.
   */
  parameter int unsigned TOP_PWC_RV_CORE_IBEX_PWC_CFG_SIZE_BYTES = 32'h800;

  /**
   * Memory base address for ctn in top pwc.
   */
  parameter int unsigned TOP_PWC_CTN_BASE_ADDR = 32'h40000000;

  /**
   * Memory size for ctn in top pwc.
   */
  parameter int unsigned TOP_PWC_CTN_SIZE_BYTES = 32'h80000000;

  /**
  * Memory base address for ram_ctn in top pwc.
  */
  parameter int unsigned TOP_PWC_RAM_CTN_BASE_ADDR = 32'h41000000;

  /**
  * Memory size for ram_ctn in top pwc.
  */
  parameter int unsigned TOP_PWC_RAM_CTN_SIZE_BYTES = 32'h100000;

  /**
   * Memory base address for ram_ret_aon in top pwc.
   */
  parameter int unsigned TOP_PWC_RAM_RET_AON_BASE_ADDR = 32'h30600000;

  /**
   * Memory size for ram_ret_aon in top pwc.
   */
  parameter int unsigned TOP_PWC_RAM_RET_AON_SIZE_BYTES = 32'h1000;

  /**
   * Memory base address for ram_main in top pwc.
   */
  parameter int unsigned TOP_PWC_RAM_MAIN_BASE_ADDR = 32'h10000000;

  /**
   * Memory size for ram_main in top pwc.
   */
  parameter int unsigned TOP_PWC_RAM_MAIN_SIZE_BYTES = 32'h10000;

  /**
   * Memory base address for ram_mbox in top pwc.
   */
  parameter int unsigned TOP_PWC_RAM_MBOX_BASE_ADDR = 32'h11000000;

  /**
   * Memory size for ram_mbox in top pwc.
   */
  parameter int unsigned TOP_PWC_RAM_MBOX_SIZE_BYTES = 32'h1000;


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

  // Enumeration of interrupts
  typedef enum int unsigned {
    TopPwcPlicPwcIrqIdNone = 0,
    TopPwcPlicPwcIrqIdGpioGpio0 = 1,
    TopPwcPlicPwcIrqIdGpioGpio1 = 2,
    TopPwcPlicPwcIrqIdGpioGpio2 = 3,
    TopPwcPlicPwcIrqIdGpioGpio3 = 4,
    TopPwcPlicPwcIrqIdGpioGpio4 = 5,
    TopPwcPlicPwcIrqIdGpioGpio5 = 6,
    TopPwcPlicPwcIrqIdGpioGpio6 = 7,
    TopPwcPlicPwcIrqIdGpioGpio7 = 8,
    TopPwcPlicPwcIrqIdGpioGpio8 = 9,
    TopPwcPlicPwcIrqIdGpioGpio9 = 10,
    TopPwcPlicPwcIrqIdGpioGpio10 = 11,
    TopPwcPlicPwcIrqIdGpioGpio11 = 12,
    TopPwcPlicPwcIrqIdGpioGpio12 = 13,
    TopPwcPlicPwcIrqIdGpioGpio13 = 14,
    TopPwcPlicPwcIrqIdGpioGpio14 = 15,
    TopPwcPlicPwcIrqIdGpioGpio15 = 16,
    TopPwcPlicPwcIrqIdGpioGpio16 = 17,
    TopPwcPlicPwcIrqIdGpioGpio17 = 18,
    TopPwcPlicPwcIrqIdGpioGpio18 = 19,
    TopPwcPlicPwcIrqIdGpioGpio19 = 20,
    TopPwcPlicPwcIrqIdGpioGpio20 = 21,
    TopPwcPlicPwcIrqIdGpioGpio21 = 22,
    TopPwcPlicPwcIrqIdGpioGpio22 = 23,
    TopPwcPlicPwcIrqIdGpioGpio23 = 24,
    TopPwcPlicPwcIrqIdGpioGpio24 = 25,
    TopPwcPlicPwcIrqIdGpioGpio25 = 26,
    TopPwcPlicPwcIrqIdGpioGpio26 = 27,
    TopPwcPlicPwcIrqIdGpioGpio27 = 28,
    TopPwcPlicPwcIrqIdGpioGpio28 = 29,
    TopPwcPlicPwcIrqIdGpioGpio29 = 30,
    TopPwcPlicPwcIrqIdGpioGpio30 = 31,
    TopPwcPlicPwcIrqIdGpioGpio31 = 32,
    TopPwcPlicPwcIrqIdRvTimerTimerExpiredHart0Timer0 = 33,
    TopPwcPlicPwcIrqIdAonTimerAonWkupTimerExpired = 34,
    TopPwcPlicPwcIrqIdAonTimerAonWdogTimerBark = 35,
    TopPwcPlicPwcIrqIdDmaDmaDone = 36,
    TopPwcPlicPwcIrqIdDmaDmaChunkDone = 37,
    TopPwcPlicPwcIrqIdDmaDmaError = 38,
    TopPwcPlicPwcIrqIdMbx0MbxReady = 39,
    TopPwcPlicPwcIrqIdMbx0MbxAbort = 40,
    TopPwcPlicPwcIrqIdMbx0MbxError = 41,
    TopPwcPlicPwcIrqIdMbx1MbxReady = 42,
    TopPwcPlicPwcIrqIdMbx1MbxAbort = 43,
    TopPwcPlicPwcIrqIdMbx1MbxError = 44,
    TopPwcPlicPwcIrqIdMbx2MbxReady = 45,
    TopPwcPlicPwcIrqIdMbx2MbxAbort = 46,
    TopPwcPlicPwcIrqIdMbx2MbxError = 47,
    TopPwcPlicPwcIrqIdMbx3MbxReady = 48,
    TopPwcPlicPwcIrqIdMbx3MbxAbort = 49,
    TopPwcPlicPwcIrqIdMbx3MbxError = 50,
    TopPwcPlicPwcIrqIdMbx4MbxReady = 51,
    TopPwcPlicPwcIrqIdMbx4MbxAbort = 52,
    TopPwcPlicPwcIrqIdMbx4MbxError = 53,
    TopPwcPlicPwcIrqIdMbx5MbxReady = 54,
    TopPwcPlicPwcIrqIdMbx5MbxAbort = 55,
    TopPwcPlicPwcIrqIdMbx5MbxError = 56,
    TopPwcPlicPwcIrqIdMbxPcie0MbxReady = 57,
    TopPwcPlicPwcIrqIdMbxPcie0MbxAbort = 58,
    TopPwcPlicPwcIrqIdMbxPcie0MbxError = 59,
    TopPwcPlicPwcIrqIdPwcLteuSocHot = 60,
    TopPwcPlicPwcIrqIdPwcLteuFwTrip = 61,
    TopPwcPlicPwcIrqIdPwcLteuCatTrip = 62,
    TopPwcPlicPwcIrqIdLioGrpAIbexIrq = 63,
    TopPwcPlicPwcIrqIdLioGrpBIbexIrq = 64,
    TopPwcPlicPwcIrqIdLioGrpCIbexIrq = 65,
    TopPwcPlicPwcIrqIdDuc0Ducpvlreq0 = 66,
    TopPwcPlicPwcIrqIdDuc1Ducpvlreq1 = 67,
    TopPwcPlicPwcIrqIdDuc0Ducivdrreq0 = 68,
    TopPwcPlicPwcIrqIdDuc1Ducivdrreq1 = 69,
    TopPwcPlicPwcIrqIdPwcDvfsTargetcmdavs0 = 70,
    TopPwcPlicPwcIrqIdPwcDvfsTargetcmdavs1 = 71,
    TopPwcPlicPwcIrqIdPwcDvfsTargetcmdavs2 = 72,
    TopPwcPlicPwcIrqIdPwcDvfsTargetcmdavs3 = 73,
    TopPwcPlicPwcIrqIdPwcDvfsTargetcmdavs4 = 74,
    TopPwcPlicPwcIrqIdPwcDvfsTargetcmdavs5 = 75,
    TopPwcPlicPwcIrqIdPwcDvfsTargetcmdavs6 = 76,
    TopPwcPlicPwcIrqIdPwcDvfsTargetcmdavs7 = 77,
    TopPwcPlicPwcIrqIdPwcDvfsTargetcmdavs8 = 78,
    TopPwcPlicPwcIrqIdPwcDvfsTargetcmdavs9 = 79,
    TopPwcPlicPwcIrqIdPwcDvfsTargetcmdavs10 = 80,
    TopPwcPlicPwcIrqIdPwcDvfsTargetcmdavs11 = 81,
    TopPwcPlicPwcIrqIdPwcDvfsTargetcmdavs12 = 82,
    TopPwcPlicPwcIrqIdPwcDvfsTargetcmdavs13 = 83,
    TopPwcPlicPwcIrqIdPwcAvsAvsError0 = 84,
    TopPwcPlicPwcIrqIdPwcAvsAvsError1 = 85,
    TopPwcPlicPwcIrqIdPwcAvsAvsError2 = 86,
    TopPwcPlicPwcIrqIdPwcAvsAvsError3 = 87,
    TopPwcPlicPwcIrqIdPwcAvsAvsError4 = 88,
    TopPwcPlicPwcIrqIdPwcAvsAvsError5 = 89,
    TopPwcPlicPwcIrqIdPwcAvsAvsError6 = 90,
    TopPwcPlicPwcIrqIdPwcAvsAvsError7 = 91,
    TopPwcPlicPwcIrqIdPwcAvsAvsError8 = 92,
    TopPwcPlicPwcIrqIdPwcAvsAvsError9 = 93,
    TopPwcPlicPwcIrqIdPwcAvsAvsError10 = 94,
    TopPwcPlicPwcIrqIdPwcAvsAvsError11 = 95,
    TopPwcPlicPwcIrqIdPwcAvsAvsError12 = 96,
    TopPwcPlicPwcIrqIdPwcAvsAvsError13 = 97,
    TopPwcPlicPwcIrqIdPwcAvsAvsError14 = 98,
    TopPwcPlicPwcIrqIdPwcAvsAvsError15 = 99,
    TopPwcPlicPwcIrqIdPwcAvsAvsError16 = 100,
    TopPwcPlicPwcIrqIdPwcAvsAvsError17 = 101,
    TopPwcPlicPwcIrqIdPwcAvsAvsError18 = 102,
    TopPwcPlicPwcIrqIdPwcAvsAvsError19 = 103,
    TopPwcPlicPwcIrqIdPwcAvsAvsError20 = 104,
    TopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw0 = 105,
    TopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw1 = 106,
    TopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw2 = 107,
    TopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw3 = 108,
    TopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw4 = 109,
    TopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw5 = 110,
    TopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw6 = 111,
    TopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw7 = 112,
    TopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw8 = 113,
    TopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw9 = 114,
    TopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw10 = 115,
    TopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw11 = 116,
    TopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw12 = 117,
    TopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw13 = 118,
    TopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw14 = 119,
    TopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw15 = 120,
    TopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw16 = 121,
    TopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw17 = 122,
    TopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw18 = 123,
    TopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw19 = 124,
    TopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw20 = 125,
    TopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw21 = 126,
    TopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw22 = 127,
    TopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw23 = 128,
    TopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw24 = 129,
    TopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw25 = 130,
    TopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw26 = 131,
    TopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw27 = 132,
    TopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw28 = 133,
    TopPwcPlicPwcIrqIdPwcBcastCStateEntry = 134,
    TopPwcPlicPwcIrqIdPwcBcastCStateExit = 135,
    TopPwcPlicPwcIrqIdPwcBcastDpaIdleEntry = 136,
    TopPwcPlicPwcIrqIdPwcBcastDpaIdleExit = 137,
    TopPwcPlicPwcIrqIdPwcCcs0PwrVirusLvlReq = 138,
    TopPwcPlicPwcIrqIdPwcCcs1PwrVirusLvlReq = 139,
    TopPwcPlicPwcIrqIdPwcCcs2PwrVirusLvlReq = 140,
    TopPwcPlicPwcIrqIdPwcCcs3PwrVirusLvlReq = 141,
    TopPwcPlicPwcIrqIdPwcCcs4PwrVirusLvlReq = 142,
    TopPwcPlicPwcIrqIdPwcCcs5PwrVirusLvlReq = 143,
    TopPwcPlicPwcIrqIdPwcCcs0DvfsFsm = 144,
    TopPwcPlicPwcIrqIdPwcCcs1DvfsFsm = 145,
    TopPwcPlicPwcIrqIdPwcDvfsSocdpafsmstatus0 = 146,
    TopPwcPlicPwcIrqIdPwcDvfsSocdpafsmstatus1 = 147,
    TopPwcPlicPwcIrqIdPwcDvfsSocdpafsmstatus2 = 148,
    TopPwcPlicPwcIrqIdPwcDvfsSocdpafsmstatus3 = 149,
    TopPwcPlicPwcIrqIdPwcDvfsSocdpafsmstatus4 = 150,
    TopPwcPlicPwcIrqIdPwcDvfsSocdpafsmstatus5 = 151,
    TopPwcPlicPwcIrqIdPwcHms0Status = 152,
    TopPwcPlicPwcIrqIdPwcHms1Status = 153,
    TopPwcPlicPwcIrqIdPwcHms2Status = 154,
    TopPwcPlicPwcIrqIdPwcHms3Status = 155,
    TopPwcPlicPwcIrqIdPwcPcs0AllPortsStatus = 156,
    TopPwcPlicPwcIrqIdPwcPcs0LinkBringup0 = 157,
    TopPwcPlicPwcIrqIdPwcPcs0LinkBringup1 = 158,
    TopPwcPlicPwcIrqIdPwcPcs0LinkBringup2 = 159,
    TopPwcPlicPwcIrqIdPwcPcs0LinkBringup3 = 160,
    TopPwcPlicPwcIrqIdPwcPcs0MsgCtrl = 161,
    TopPwcPlicPwcIrqIdPwcPcs0PhyStatus = 162,
    TopPwcPlicPwcIrqIdPwcPcs1AllPortsStatus = 163,
    TopPwcPlicPwcIrqIdPwcPcs1LinkBringup0 = 164,
    TopPwcPlicPwcIrqIdPwcPcs1LinkBringup1 = 165,
    TopPwcPlicPwcIrqIdPwcPcs1LinkBringup2 = 166,
    TopPwcPlicPwcIrqIdPwcPcs1LinkBringup3 = 167,
    TopPwcPlicPwcIrqIdPwcPcs1MsgCtrl = 168,
    TopPwcPlicPwcIrqIdPwcPcs1PhyStatus = 169,
    TopPwcPlicPwcIrqIdPwcPcs2AllPortsStatus = 170,
    TopPwcPlicPwcIrqIdPwcPcs2LinkBringup0 = 171,
    TopPwcPlicPwcIrqIdPwcPcs2LinkBringup1 = 172,
    TopPwcPlicPwcIrqIdPwcPcs2LinkBringup2 = 173,
    TopPwcPlicPwcIrqIdPwcPcs2LinkBringup3 = 174,
    TopPwcPlicPwcIrqIdPwcPcs2MsgCtrl = 175,
    TopPwcPlicPwcIrqIdPwcPcs2PhyStatus = 176,
    TopPwcPlicPwcIrqIdPwcPcs3AllPortsStatus = 177,
    TopPwcPlicPwcIrqIdPwcPcs3LinkBringup0 = 178,
    TopPwcPlicPwcIrqIdPwcPcs3LinkBringup1 = 179,
    TopPwcPlicPwcIrqIdPwcPcs3LinkBringup2 = 180,
    TopPwcPlicPwcIrqIdPwcPcs3LinkBringup3 = 181,
    TopPwcPlicPwcIrqIdPwcPcs3MsgCtrl = 182,
    TopPwcPlicPwcIrqIdPwcPcs3PhyStatus = 183,
    TopPwcPlicPwcIrqIdPwcPcs4AllPortsStatus = 184,
    TopPwcPlicPwcIrqIdPwcPcs4LinkBringup0 = 185,
    TopPwcPlicPwcIrqIdPwcPcs4LinkBringup1 = 186,
    TopPwcPlicPwcIrqIdPwcPcs4LinkBringup2 = 187,
    TopPwcPlicPwcIrqIdPwcPcs4LinkBringup3 = 188,
    TopPwcPlicPwcIrqIdPwcPcs4MsgCtrl = 189,
    TopPwcPlicPwcIrqIdPwcPcs4PhyStatus = 190,
    TopPwcPlicPwcIrqIdPwcPcs5AllPortsStatus = 191,
    TopPwcPlicPwcIrqIdPwcPcs5LinkBringup0 = 192,
    TopPwcPlicPwcIrqIdPwcPcs5LinkBringup1 = 193,
    TopPwcPlicPwcIrqIdPwcPcs5LinkBringup2 = 194,
    TopPwcPlicPwcIrqIdPwcPcs5LinkBringup3 = 195,
    TopPwcPlicPwcIrqIdPwcPcs5MsgCtrl = 196,
    TopPwcPlicPwcIrqIdPwcPcs5PhyStatus = 197,
    TopPwcPlicPwcIrqIdPwcPcs6AllPortsStatus = 198,
    TopPwcPlicPwcIrqIdPwcPcs6LinkBringup0 = 199,
    TopPwcPlicPwcIrqIdPwcPcs6LinkBringup1 = 200,
    TopPwcPlicPwcIrqIdPwcPcs6LinkBringup2 = 201,
    TopPwcPlicPwcIrqIdPwcPcs6LinkBringup3 = 202,
    TopPwcPlicPwcIrqIdPwcPcs6MsgCtrl = 203,
    TopPwcPlicPwcIrqIdPwcPcs6PhyStatus = 204,
    TopPwcPlicPwcIrqIdPwcPcs7AllPortsStatus = 205,
    TopPwcPlicPwcIrqIdPwcPcs7LinkBringup0 = 206,
    TopPwcPlicPwcIrqIdPwcPcs7LinkBringup1 = 207,
    TopPwcPlicPwcIrqIdPwcPcs7LinkBringup2 = 208,
    TopPwcPlicPwcIrqIdPwcPcs7LinkBringup3 = 209,
    TopPwcPlicPwcIrqIdPwcPcs7MsgCtrl = 210,
    TopPwcPlicPwcIrqIdPwcPcs7PhyStatus = 211,
    TopPwcPlicPwcIrqIdPwcHdrIpiFromPwc0 = 212,
    TopPwcPlicPwcIrqIdPwcHdrIpiFromPwc1 = 213,
    TopPwcPlicPwcIrqIdPwcHdrIpiFromPwc2 = 214,
    TopPwcPlicPwcIrqIdPwcHdrIpiFromRot = 215,
    TopPwcPlicPwcIrqIdPwcHdrIpiFromMio = 216,
    TopPwcPlicPwcIrqIdPwcHdrIpiFromDuc = 217,
    TopPwcPlicPwcIrqIdLioGrpAIpiFromLiogrpaI3c0PeriphRstReq = 218,
    TopPwcPlicPwcIrqIdLioGrpAIpiFromLiogrpaI3c0ChipRstReq = 219,
    TopPwcPlicPwcIrqIdLioGrpAIpiFromLiogrpaI3c1PeriphRstReq = 220,
    TopPwcPlicPwcIrqIdLioGrpAIpiFromLiogrpaI3c1ChipRstReq = 221,
    TopPwcPlicPwcIrqIdLioGrpAIpiFromLiogrpaI3c2PeriphRstReq = 222,
    TopPwcPlicPwcIrqIdLioGrpAIpiFromLiogrpaI3c2ChipRstReq = 223,
    TopPwcPlicPwcIrqIdLioGrpBIpiFromLiogrpbI3c0PeriphRstReq = 224,
    TopPwcPlicPwcIrqIdLioGrpBIpiFromLiogrpbI3c0ChipRstReq = 225,
    TopPwcPlicPwcIrqIdLioGrpBIpiFromLiogrpbI3c1PeriphRstReq = 226,
    TopPwcPlicPwcIrqIdLioGrpBIpiFromLiogrpbI3c1ChipRstReq = 227,
    TopPwcPlicPwcIrqIdLioGrpBIpiFromLiogrpbI3c2PeriphRstReq = 228,
    TopPwcPlicPwcIrqIdLioGrpBIpiFromLiogrpbI3c2ChipRstReq = 229,
    TopPwcPlicPwcIrqIdLioGrpCIpiFromLiogrpcI3c0PeriphRstReq = 230,
    TopPwcPlicPwcIrqIdLioGrpCIpiFromLiogrpcI3c0ChipRstReq = 231,
    TopPwcPlicPwcIrqIdLioGrpCIpiFromLiogrpcI3c1PeriphRstReq = 232,
    TopPwcPlicPwcIrqIdLioGrpCIpiFromLiogrpcI3c1ChipRstReq = 233,
    TopPwcPlicPwcIrqIdLioGrpCIpiFromLiogrpcI3c2PeriphRstReq = 234,
    TopPwcPlicPwcIrqIdLioGrpCIpiFromLiogrpcI3c2ChipRstReq = 235,
    TopPwcPlicPwcIrqIdLioGrpDIpiFromLiogrpdI3c0PeriphRstReq = 236,
    TopPwcPlicPwcIrqIdLioGrpDIpiFromLiogrpdI3c0ChipRstReq = 237,
    TopPwcPlicPwcIrqIdLioGrpDIpiFromLiogrpdI3c1PeriphRstReq = 238,
    TopPwcPlicPwcIrqIdLioGrpDIpiFromLiogrpdI3c1ChipRstReq = 239,
    TopPwcPlicPwcIrqIdLioGrpDIpiFromLiogrpdI3c2PeriphRstReq = 240,
    TopPwcPlicPwcIrqIdLioGrpDIpiFromLiogrpdI3c2ChipRstReq = 241,
    TopPwcPlicPwcIrqIdPwcErs0Req0ErsReqInterrupt = 242,
    TopPwcPlicPwcIrqIdPwcErs0Req1ErsReqInterrupt = 243,
    TopPwcPlicPwcIrqIdPwcErs1Req0ErsReqInterrupt = 244,
    TopPwcPlicPwcIrqIdPwcErs1Req1ErsReqInterrupt = 245,
    TopPwcPlicPwcIrqIdPwcCcs0CstateEntry = 246,
    TopPwcPlicPwcIrqIdPwcCcs0CstateExit = 247,
    TopPwcPlicPwcIrqIdPwcCcs1CstateEntry = 248,
    TopPwcPlicPwcIrqIdPwcCcs1CstateExit = 249,
    TopPwcPlicPwcIrqIdCount
  } interrupt_rv_plic_pwc_id_e;


  // Number of pwc_external incoming interrupts
  parameter int unsigned NIncomingInterruptsPwcExternal = 190;

  // Enumeration of interrupts for incoming group pwc_external
  typedef enum int unsigned {
    TopPwcIncomingIrqPwcExternalIdPwcLteuSocHot = 0,
    TopPwcIncomingIrqPwcExternalIdPwcLteuFwTrip = 1,
    TopPwcIncomingIrqPwcExternalIdPwcLteuCatTrip = 2,
    TopPwcIncomingIrqPwcExternalIdLioGrpAIbexIrq = 3,
    TopPwcIncomingIrqPwcExternalIdLioGrpBIbexIrq = 4,
    TopPwcIncomingIrqPwcExternalIdLioGrpCIbexIrq = 5,
    TopPwcIncomingIrqPwcExternalIdDuc0Ducpvlreq0 = 6,
    TopPwcIncomingIrqPwcExternalIdDuc1Ducpvlreq1 = 7,
    TopPwcIncomingIrqPwcExternalIdDuc0Ducivdrreq0 = 8,
    TopPwcIncomingIrqPwcExternalIdDuc1Ducivdrreq1 = 9,
    TopPwcIncomingIrqPwcExternalIdPwcDvfsTargetcmdavs0 = 10,
    TopPwcIncomingIrqPwcExternalIdPwcDvfsTargetcmdavs1 = 11,
    TopPwcIncomingIrqPwcExternalIdPwcDvfsTargetcmdavs2 = 12,
    TopPwcIncomingIrqPwcExternalIdPwcDvfsTargetcmdavs3 = 13,
    TopPwcIncomingIrqPwcExternalIdPwcDvfsTargetcmdavs4 = 14,
    TopPwcIncomingIrqPwcExternalIdPwcDvfsTargetcmdavs5 = 15,
    TopPwcIncomingIrqPwcExternalIdPwcDvfsTargetcmdavs6 = 16,
    TopPwcIncomingIrqPwcExternalIdPwcDvfsTargetcmdavs7 = 17,
    TopPwcIncomingIrqPwcExternalIdPwcDvfsTargetcmdavs8 = 18,
    TopPwcIncomingIrqPwcExternalIdPwcDvfsTargetcmdavs9 = 19,
    TopPwcIncomingIrqPwcExternalIdPwcDvfsTargetcmdavs10 = 20,
    TopPwcIncomingIrqPwcExternalIdPwcDvfsTargetcmdavs11 = 21,
    TopPwcIncomingIrqPwcExternalIdPwcDvfsTargetcmdavs12 = 22,
    TopPwcIncomingIrqPwcExternalIdPwcDvfsTargetcmdavs13 = 23,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsError0 = 24,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsError1 = 25,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsError2 = 26,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsError3 = 27,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsError4 = 28,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsError5 = 29,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsError6 = 30,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsError7 = 31,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsError8 = 32,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsError9 = 33,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsError10 = 34,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsError11 = 35,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsError12 = 36,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsError13 = 37,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsError14 = 38,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsError15 = 39,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsError16 = 40,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsError17 = 41,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsError18 = 42,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsError19 = 43,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsError20 = 44,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsResponseToFw0 = 45,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsResponseToFw1 = 46,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsResponseToFw2 = 47,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsResponseToFw3 = 48,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsResponseToFw4 = 49,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsResponseToFw5 = 50,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsResponseToFw6 = 51,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsResponseToFw7 = 52,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsResponseToFw8 = 53,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsResponseToFw9 = 54,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsResponseToFw10 = 55,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsResponseToFw11 = 56,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsResponseToFw12 = 57,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsResponseToFw13 = 58,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsResponseToFw14 = 59,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsResponseToFw15 = 60,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsResponseToFw16 = 61,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsResponseToFw17 = 62,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsResponseToFw18 = 63,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsResponseToFw19 = 64,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsResponseToFw20 = 65,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsResponseToFw21 = 66,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsResponseToFw22 = 67,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsResponseToFw23 = 68,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsResponseToFw24 = 69,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsResponseToFw25 = 70,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsResponseToFw26 = 71,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsResponseToFw27 = 72,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsResponseToFw28 = 73,
    TopPwcIncomingIrqPwcExternalIdPwcBcastCStateEntry = 74,
    TopPwcIncomingIrqPwcExternalIdPwcBcastCStateExit = 75,
    TopPwcIncomingIrqPwcExternalIdPwcBcastDpaIdleEntry = 76,
    TopPwcIncomingIrqPwcExternalIdPwcBcastDpaIdleExit = 77,
    TopPwcIncomingIrqPwcExternalIdPwcCcs0PwrVirusLvlReq = 78,
    TopPwcIncomingIrqPwcExternalIdPwcCcs1PwrVirusLvlReq = 79,
    TopPwcIncomingIrqPwcExternalIdPwcCcs2PwrVirusLvlReq = 80,
    TopPwcIncomingIrqPwcExternalIdPwcCcs3PwrVirusLvlReq = 81,
    TopPwcIncomingIrqPwcExternalIdPwcCcs4PwrVirusLvlReq = 82,
    TopPwcIncomingIrqPwcExternalIdPwcCcs5PwrVirusLvlReq = 83,
    TopPwcIncomingIrqPwcExternalIdPwcCcs0DvfsFsm = 84,
    TopPwcIncomingIrqPwcExternalIdPwcCcs1DvfsFsm = 85,
    TopPwcIncomingIrqPwcExternalIdPwcDvfsSocdpafsmstatus0 = 86,
    TopPwcIncomingIrqPwcExternalIdPwcDvfsSocdpafsmstatus1 = 87,
    TopPwcIncomingIrqPwcExternalIdPwcDvfsSocdpafsmstatus2 = 88,
    TopPwcIncomingIrqPwcExternalIdPwcDvfsSocdpafsmstatus3 = 89,
    TopPwcIncomingIrqPwcExternalIdPwcDvfsSocdpafsmstatus4 = 90,
    TopPwcIncomingIrqPwcExternalIdPwcDvfsSocdpafsmstatus5 = 91,
    TopPwcIncomingIrqPwcExternalIdPwcHms0Status = 92,
    TopPwcIncomingIrqPwcExternalIdPwcHms1Status = 93,
    TopPwcIncomingIrqPwcExternalIdPwcHms2Status = 94,
    TopPwcIncomingIrqPwcExternalIdPwcHms3Status = 95,
    TopPwcIncomingIrqPwcExternalIdPwcPcs0AllPortsStatus = 96,
    TopPwcIncomingIrqPwcExternalIdPwcPcs0LinkBringup0 = 97,
    TopPwcIncomingIrqPwcExternalIdPwcPcs0LinkBringup1 = 98,
    TopPwcIncomingIrqPwcExternalIdPwcPcs0LinkBringup2 = 99,
    TopPwcIncomingIrqPwcExternalIdPwcPcs0LinkBringup3 = 100,
    TopPwcIncomingIrqPwcExternalIdPwcPcs0MsgCtrl = 101,
    TopPwcIncomingIrqPwcExternalIdPwcPcs0PhyStatus = 102,
    TopPwcIncomingIrqPwcExternalIdPwcPcs1AllPortsStatus = 103,
    TopPwcIncomingIrqPwcExternalIdPwcPcs1LinkBringup0 = 104,
    TopPwcIncomingIrqPwcExternalIdPwcPcs1LinkBringup1 = 105,
    TopPwcIncomingIrqPwcExternalIdPwcPcs1LinkBringup2 = 106,
    TopPwcIncomingIrqPwcExternalIdPwcPcs1LinkBringup3 = 107,
    TopPwcIncomingIrqPwcExternalIdPwcPcs1MsgCtrl = 108,
    TopPwcIncomingIrqPwcExternalIdPwcPcs1PhyStatus = 109,
    TopPwcIncomingIrqPwcExternalIdPwcPcs2AllPortsStatus = 110,
    TopPwcIncomingIrqPwcExternalIdPwcPcs2LinkBringup0 = 111,
    TopPwcIncomingIrqPwcExternalIdPwcPcs2LinkBringup1 = 112,
    TopPwcIncomingIrqPwcExternalIdPwcPcs2LinkBringup2 = 113,
    TopPwcIncomingIrqPwcExternalIdPwcPcs2LinkBringup3 = 114,
    TopPwcIncomingIrqPwcExternalIdPwcPcs2MsgCtrl = 115,
    TopPwcIncomingIrqPwcExternalIdPwcPcs2PhyStatus = 116,
    TopPwcIncomingIrqPwcExternalIdPwcPcs3AllPortsStatus = 117,
    TopPwcIncomingIrqPwcExternalIdPwcPcs3LinkBringup0 = 118,
    TopPwcIncomingIrqPwcExternalIdPwcPcs3LinkBringup1 = 119,
    TopPwcIncomingIrqPwcExternalIdPwcPcs3LinkBringup2 = 120,
    TopPwcIncomingIrqPwcExternalIdPwcPcs3LinkBringup3 = 121,
    TopPwcIncomingIrqPwcExternalIdPwcPcs3MsgCtrl = 122,
    TopPwcIncomingIrqPwcExternalIdPwcPcs3PhyStatus = 123,
    TopPwcIncomingIrqPwcExternalIdPwcPcs4AllPortsStatus = 124,
    TopPwcIncomingIrqPwcExternalIdPwcPcs4LinkBringup0 = 125,
    TopPwcIncomingIrqPwcExternalIdPwcPcs4LinkBringup1 = 126,
    TopPwcIncomingIrqPwcExternalIdPwcPcs4LinkBringup2 = 127,
    TopPwcIncomingIrqPwcExternalIdPwcPcs4LinkBringup3 = 128,
    TopPwcIncomingIrqPwcExternalIdPwcPcs4MsgCtrl = 129,
    TopPwcIncomingIrqPwcExternalIdPwcPcs4PhyStatus = 130,
    TopPwcIncomingIrqPwcExternalIdPwcPcs5AllPortsStatus = 131,
    TopPwcIncomingIrqPwcExternalIdPwcPcs5LinkBringup0 = 132,
    TopPwcIncomingIrqPwcExternalIdPwcPcs5LinkBringup1 = 133,
    TopPwcIncomingIrqPwcExternalIdPwcPcs5LinkBringup2 = 134,
    TopPwcIncomingIrqPwcExternalIdPwcPcs5LinkBringup3 = 135,
    TopPwcIncomingIrqPwcExternalIdPwcPcs5MsgCtrl = 136,
    TopPwcIncomingIrqPwcExternalIdPwcPcs5PhyStatus = 137,
    TopPwcIncomingIrqPwcExternalIdPwcPcs6AllPortsStatus = 138,
    TopPwcIncomingIrqPwcExternalIdPwcPcs6LinkBringup0 = 139,
    TopPwcIncomingIrqPwcExternalIdPwcPcs6LinkBringup1 = 140,
    TopPwcIncomingIrqPwcExternalIdPwcPcs6LinkBringup2 = 141,
    TopPwcIncomingIrqPwcExternalIdPwcPcs6LinkBringup3 = 142,
    TopPwcIncomingIrqPwcExternalIdPwcPcs6MsgCtrl = 143,
    TopPwcIncomingIrqPwcExternalIdPwcPcs6PhyStatus = 144,
    TopPwcIncomingIrqPwcExternalIdPwcPcs7AllPortsStatus = 145,
    TopPwcIncomingIrqPwcExternalIdPwcPcs7LinkBringup0 = 146,
    TopPwcIncomingIrqPwcExternalIdPwcPcs7LinkBringup1 = 147,
    TopPwcIncomingIrqPwcExternalIdPwcPcs7LinkBringup2 = 148,
    TopPwcIncomingIrqPwcExternalIdPwcPcs7LinkBringup3 = 149,
    TopPwcIncomingIrqPwcExternalIdPwcPcs7MsgCtrl = 150,
    TopPwcIncomingIrqPwcExternalIdPwcPcs7PhyStatus = 151,
    TopPwcIncomingIrqPwcExternalIdPwcHdrIpiFromPwc0 = 152,
    TopPwcIncomingIrqPwcExternalIdPwcHdrIpiFromPwc1 = 153,
    TopPwcIncomingIrqPwcExternalIdPwcHdrIpiFromPwc2 = 154,
    TopPwcIncomingIrqPwcExternalIdPwcHdrIpiFromRot = 155,
    TopPwcIncomingIrqPwcExternalIdPwcHdrIpiFromMio = 156,
    TopPwcIncomingIrqPwcExternalIdPwcHdrIpiFromDuc = 157,
    TopPwcIncomingIrqPwcExternalIdLioGrpAIpiFromLiogrpaI3c0PeriphRstReq = 158,
    TopPwcIncomingIrqPwcExternalIdLioGrpAIpiFromLiogrpaI3c0ChipRstReq = 159,
    TopPwcIncomingIrqPwcExternalIdLioGrpAIpiFromLiogrpaI3c1PeriphRstReq = 160,
    TopPwcIncomingIrqPwcExternalIdLioGrpAIpiFromLiogrpaI3c1ChipRstReq = 161,
    TopPwcIncomingIrqPwcExternalIdLioGrpAIpiFromLiogrpaI3c2PeriphRstReq = 162,
    TopPwcIncomingIrqPwcExternalIdLioGrpAIpiFromLiogrpaI3c2ChipRstReq = 163,
    TopPwcIncomingIrqPwcExternalIdLioGrpBIpiFromLiogrpbI3c0PeriphRstReq = 164,
    TopPwcIncomingIrqPwcExternalIdLioGrpBIpiFromLiogrpbI3c0ChipRstReq = 165,
    TopPwcIncomingIrqPwcExternalIdLioGrpBIpiFromLiogrpbI3c1PeriphRstReq = 166,
    TopPwcIncomingIrqPwcExternalIdLioGrpBIpiFromLiogrpbI3c1ChipRstReq = 167,
    TopPwcIncomingIrqPwcExternalIdLioGrpBIpiFromLiogrpbI3c2PeriphRstReq = 168,
    TopPwcIncomingIrqPwcExternalIdLioGrpBIpiFromLiogrpbI3c2ChipRstReq = 169,
    TopPwcIncomingIrqPwcExternalIdLioGrpCIpiFromLiogrpcI3c0PeriphRstReq = 170,
    TopPwcIncomingIrqPwcExternalIdLioGrpCIpiFromLiogrpcI3c0ChipRstReq = 171,
    TopPwcIncomingIrqPwcExternalIdLioGrpCIpiFromLiogrpcI3c1PeriphRstReq = 172,
    TopPwcIncomingIrqPwcExternalIdLioGrpCIpiFromLiogrpcI3c1ChipRstReq = 173,
    TopPwcIncomingIrqPwcExternalIdLioGrpCIpiFromLiogrpcI3c2PeriphRstReq = 174,
    TopPwcIncomingIrqPwcExternalIdLioGrpCIpiFromLiogrpcI3c2ChipRstReq = 175,
    TopPwcIncomingIrqPwcExternalIdLioGrpDIpiFromLiogrpdI3c0PeriphRstReq = 176,
    TopPwcIncomingIrqPwcExternalIdLioGrpDIpiFromLiogrpdI3c0ChipRstReq = 177,
    TopPwcIncomingIrqPwcExternalIdLioGrpDIpiFromLiogrpdI3c1PeriphRstReq = 178,
    TopPwcIncomingIrqPwcExternalIdLioGrpDIpiFromLiogrpdI3c1ChipRstReq = 179,
    TopPwcIncomingIrqPwcExternalIdLioGrpDIpiFromLiogrpdI3c2PeriphRstReq = 180,
    TopPwcIncomingIrqPwcExternalIdLioGrpDIpiFromLiogrpdI3c2ChipRstReq = 181,
    TopPwcIncomingIrqPwcExternalIdPwcErs0Req0ErsReqInterrupt = 182,
    TopPwcIncomingIrqPwcExternalIdPwcErs0Req1ErsReqInterrupt = 183,
    TopPwcIncomingIrqPwcExternalIdPwcErs1Req0ErsReqInterrupt = 184,
    TopPwcIncomingIrqPwcExternalIdPwcErs1Req1ErsReqInterrupt = 185,
    TopPwcIncomingIrqPwcExternalIdPwcCcs0CstateEntry = 186,
    TopPwcIncomingIrqPwcExternalIdPwcCcs0CstateExit = 187,
    TopPwcIncomingIrqPwcExternalIdPwcCcs1CstateEntry = 188,
    TopPwcIncomingIrqPwcExternalIdPwcCcs1CstateExit = 189,
    TopPwcIncomingIrqPwcExternalIdCount
  } incoming_interrupt_pwc_external_id_e;

  // Number of pwc outgoing interrupts
  parameter int unsigned NOutgoingInterruptsPwc = 2;

  // Enumeration of interrupts for outgoing group pwc
  typedef enum int unsigned {
    TopPwcOutgoingIrqPwcIdRaclCtrlPwcRaclError = 0,
    TopPwcOutgoingIrqPwcIdAcRangeCheckPwcDenyCntReached = 1,
    TopPwcOutgoingIrqPwcIdCount
  } outgoing_interrupt_pwc_id_e;

  // List of peripheral instantiated in this chip.
  typedef enum {
    PeripheralAonTimerAon,
    PeripheralDma,
    PeripheralGpio,
    PeripheralMbx0,
    PeripheralMbx1,
    PeripheralMbx2,
    PeripheralMbx3,
    PeripheralMbx4,
    PeripheralMbx5,
    PeripheralMbxPcie0,
    PeripheralPwcSocProxy,
    PeripheralRvCoreIbexPwc,
    PeripheralRvDm,
    PeripheralRvPlicPwc,
    PeripheralRvTimer,
    PeripheralSramCtrlMain,
    PeripheralSramCtrlMbox,
    PeripheralSramCtrlRetAon,
    PeripheralCount
  } peripheral_e;

  // MPWC Region
  //
  parameter int unsigned TOP_PWC_MPWC_BASE_ADDR = 32'h211C0000;
  parameter int unsigned TOP_PWC_MPWC_SIZE_BYTES = 32'hF441000;

  // TODO: Enumeration for PLIC Interrupt source peripheral.

endpackage
