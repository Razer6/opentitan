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
  parameter int unsigned TOP_PWC_PWC_SOC_PROXY_CTN_SIZE_BYTES = 32'h40000000;

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
  parameter int unsigned TOP_PWC_CTN_SIZE_BYTES = 32'h40000000;

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
    TopPwcPlicPwcIrqIdPwcSpareecoirq0 = 70,
    TopPwcPlicPwcIrqIdPwcDvfsTargetcmdavs0 = 71,
    TopPwcPlicPwcIrqIdPwcDvfsTargetcmdavs1 = 72,
    TopPwcPlicPwcIrqIdPwcDvfsTargetcmdavs2 = 73,
    TopPwcPlicPwcIrqIdPwcDvfsTargetcmdavs3 = 74,
    TopPwcPlicPwcIrqIdPwcDvfsTargetcmdavs4 = 75,
    TopPwcPlicPwcIrqIdPwcDvfsTargetcmdavs5 = 76,
    TopPwcPlicPwcIrqIdPwcDvfsTargetcmdavs6 = 77,
    TopPwcPlicPwcIrqIdPwcDvfsTargetcmdavs7 = 78,
    TopPwcPlicPwcIrqIdPwcDvfsTargetcmdavs8 = 79,
    TopPwcPlicPwcIrqIdPwcDvfsTargetcmdavs9 = 80,
    TopPwcPlicPwcIrqIdPwcDvfsTargetcmdavs10 = 81,
    TopPwcPlicPwcIrqIdPwcDvfsTargetcmdavs11 = 82,
    TopPwcPlicPwcIrqIdPwcDvfsTargetcmdavs12 = 83,
    TopPwcPlicPwcIrqIdPwcDvfsTargetcmdavs13 = 84,
    TopPwcPlicPwcIrqIdPwcAvsAvsError0 = 85,
    TopPwcPlicPwcIrqIdPwcAvsAvsError1 = 86,
    TopPwcPlicPwcIrqIdPwcAvsAvsError2 = 87,
    TopPwcPlicPwcIrqIdPwcAvsAvsError3 = 88,
    TopPwcPlicPwcIrqIdPwcAvsAvsError4 = 89,
    TopPwcPlicPwcIrqIdPwcAvsAvsError5 = 90,
    TopPwcPlicPwcIrqIdPwcAvsAvsError6 = 91,
    TopPwcPlicPwcIrqIdPwcAvsAvsError7 = 92,
    TopPwcPlicPwcIrqIdPwcAvsAvsError8 = 93,
    TopPwcPlicPwcIrqIdPwcAvsAvsError9 = 94,
    TopPwcPlicPwcIrqIdPwcAvsAvsError10 = 95,
    TopPwcPlicPwcIrqIdPwcAvsAvsError11 = 96,
    TopPwcPlicPwcIrqIdPwcAvsAvsError12 = 97,
    TopPwcPlicPwcIrqIdPwcAvsAvsError13 = 98,
    TopPwcPlicPwcIrqIdPwcAvsAvsError14 = 99,
    TopPwcPlicPwcIrqIdPwcAvsAvsError15 = 100,
    TopPwcPlicPwcIrqIdPwcAvsAvsError16 = 101,
    TopPwcPlicPwcIrqIdPwcAvsAvsError17 = 102,
    TopPwcPlicPwcIrqIdPwcAvsAvsError18 = 103,
    TopPwcPlicPwcIrqIdPwcAvsAvsError19 = 104,
    TopPwcPlicPwcIrqIdPwcAvsAvsError20 = 105,
    TopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw0 = 106,
    TopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw1 = 107,
    TopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw2 = 108,
    TopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw3 = 109,
    TopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw4 = 110,
    TopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw5 = 111,
    TopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw6 = 112,
    TopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw7 = 113,
    TopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw8 = 114,
    TopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw9 = 115,
    TopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw10 = 116,
    TopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw11 = 117,
    TopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw12 = 118,
    TopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw13 = 119,
    TopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw14 = 120,
    TopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw15 = 121,
    TopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw16 = 122,
    TopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw17 = 123,
    TopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw18 = 124,
    TopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw19 = 125,
    TopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw20 = 126,
    TopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw21 = 127,
    TopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw22 = 128,
    TopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw23 = 129,
    TopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw24 = 130,
    TopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw25 = 131,
    TopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw26 = 132,
    TopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw27 = 133,
    TopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw28 = 134,
    TopPwcPlicPwcIrqIdPwcBcastCStateEntry = 135,
    TopPwcPlicPwcIrqIdPwcBcastCStateExit = 136,
    TopPwcPlicPwcIrqIdPwcBcastDpaIdleEntry = 137,
    TopPwcPlicPwcIrqIdPwcBcastDpaIdleExit = 138,
    TopPwcPlicPwcIrqIdPwcCcs0PwrVirusLvlReq = 139,
    TopPwcPlicPwcIrqIdPwcCcs1PwrVirusLvlReq = 140,
    TopPwcPlicPwcIrqIdPwcCcs2PwrVirusLvlReq = 141,
    TopPwcPlicPwcIrqIdPwcCcs3PwrVirusLvlReq = 142,
    TopPwcPlicPwcIrqIdPwcCcs4PwrVirusLvlReq = 143,
    TopPwcPlicPwcIrqIdPwcCcs5PwrVirusLvlReq = 144,
    TopPwcPlicPwcIrqIdPwcCcs6PwrVirusLvlReq = 145,
    TopPwcPlicPwcIrqIdPwcCcs7PwrVirusLvlReq = 146,
    TopPwcPlicPwcIrqIdPwcCcs0DvfsFsm = 147,
    TopPwcPlicPwcIrqIdPwcCcs1DvfsFsm = 148,
    TopPwcPlicPwcIrqIdPwcDvfsSocdpafsmstatus0 = 149,
    TopPwcPlicPwcIrqIdPwcDvfsSocdpafsmstatus1 = 150,
    TopPwcPlicPwcIrqIdPwcDvfsSocdpafsmstatus2 = 151,
    TopPwcPlicPwcIrqIdPwcDvfsSocdpafsmstatus3 = 152,
    TopPwcPlicPwcIrqIdPwcDvfsSocdpafsmstatus4 = 153,
    TopPwcPlicPwcIrqIdPwcDvfsSocdpafsmstatus5 = 154,
    TopPwcPlicPwcIrqIdPwcHmsEastStatus = 155,
    TopPwcPlicPwcIrqIdPwcHmsWestStatus = 156,
    TopPwcPlicPwcIrqIdPwcPcs0AllPortsStatus = 157,
    TopPwcPlicPwcIrqIdPwcPcs0LinkBringup0 = 158,
    TopPwcPlicPwcIrqIdPwcPcs0LinkBringup1 = 159,
    TopPwcPlicPwcIrqIdPwcPcs0LinkBringup2 = 160,
    TopPwcPlicPwcIrqIdPwcPcs0LinkBringup3 = 161,
    TopPwcPlicPwcIrqIdPwcPcs0MsgCtrl = 162,
    TopPwcPlicPwcIrqIdPwcPcs0PhyStatus = 163,
    TopPwcPlicPwcIrqIdPwcPcs1AllPortsStatus = 164,
    TopPwcPlicPwcIrqIdPwcPcs1LinkBringup0 = 165,
    TopPwcPlicPwcIrqIdPwcPcs1LinkBringup1 = 166,
    TopPwcPlicPwcIrqIdPwcPcs1LinkBringup2 = 167,
    TopPwcPlicPwcIrqIdPwcPcs1LinkBringup3 = 168,
    TopPwcPlicPwcIrqIdPwcPcs1MsgCtrl = 169,
    TopPwcPlicPwcIrqIdPwcPcs1PhyStatus = 170,
    TopPwcPlicPwcIrqIdPwcPcs2AllPortsStatus = 171,
    TopPwcPlicPwcIrqIdPwcPcs2LinkBringup0 = 172,
    TopPwcPlicPwcIrqIdPwcPcs2LinkBringup1 = 173,
    TopPwcPlicPwcIrqIdPwcPcs2LinkBringup2 = 174,
    TopPwcPlicPwcIrqIdPwcPcs2LinkBringup3 = 175,
    TopPwcPlicPwcIrqIdPwcPcs2MsgCtrl = 176,
    TopPwcPlicPwcIrqIdPwcPcs2PhyStatus = 177,
    TopPwcPlicPwcIrqIdPwcPcs3AllPortsStatus = 178,
    TopPwcPlicPwcIrqIdPwcPcs3LinkBringup0 = 179,
    TopPwcPlicPwcIrqIdPwcPcs3LinkBringup1 = 180,
    TopPwcPlicPwcIrqIdPwcPcs3LinkBringup2 = 181,
    TopPwcPlicPwcIrqIdPwcPcs3LinkBringup3 = 182,
    TopPwcPlicPwcIrqIdPwcPcs3MsgCtrl = 183,
    TopPwcPlicPwcIrqIdPwcPcs3PhyStatus = 184,
    TopPwcPlicPwcIrqIdPwcPcs4AllPortsStatus = 185,
    TopPwcPlicPwcIrqIdPwcPcs4LinkBringup0 = 186,
    TopPwcPlicPwcIrqIdPwcPcs4LinkBringup1 = 187,
    TopPwcPlicPwcIrqIdPwcPcs4LinkBringup2 = 188,
    TopPwcPlicPwcIrqIdPwcPcs4LinkBringup3 = 189,
    TopPwcPlicPwcIrqIdPwcPcs4MsgCtrl = 190,
    TopPwcPlicPwcIrqIdPwcPcs4PhyStatus = 191,
    TopPwcPlicPwcIrqIdPwcPcs5AllPortsStatus = 192,
    TopPwcPlicPwcIrqIdPwcPcs5LinkBringup0 = 193,
    TopPwcPlicPwcIrqIdPwcPcs5LinkBringup1 = 194,
    TopPwcPlicPwcIrqIdPwcPcs5LinkBringup2 = 195,
    TopPwcPlicPwcIrqIdPwcPcs5LinkBringup3 = 196,
    TopPwcPlicPwcIrqIdPwcPcs5MsgCtrl = 197,
    TopPwcPlicPwcIrqIdPwcPcs5PhyStatus = 198,
    TopPwcPlicPwcIrqIdPwcPcs6AllPortsStatus = 199,
    TopPwcPlicPwcIrqIdPwcPcs6LinkBringup0 = 200,
    TopPwcPlicPwcIrqIdPwcPcs6LinkBringup1 = 201,
    TopPwcPlicPwcIrqIdPwcPcs6LinkBringup2 = 202,
    TopPwcPlicPwcIrqIdPwcPcs6LinkBringup3 = 203,
    TopPwcPlicPwcIrqIdPwcPcs6MsgCtrl = 204,
    TopPwcPlicPwcIrqIdPwcPcs6PhyStatus = 205,
    TopPwcPlicPwcIrqIdPwcPcs7AllPortsStatus = 206,
    TopPwcPlicPwcIrqIdPwcPcs7LinkBringup0 = 207,
    TopPwcPlicPwcIrqIdPwcPcs7LinkBringup1 = 208,
    TopPwcPlicPwcIrqIdPwcPcs7LinkBringup2 = 209,
    TopPwcPlicPwcIrqIdPwcPcs7LinkBringup3 = 210,
    TopPwcPlicPwcIrqIdPwcPcs7MsgCtrl = 211,
    TopPwcPlicPwcIrqIdPwcPcs7PhyStatus = 212,
    TopPwcPlicPwcIrqIdPwcHdrIpiFromPwc0 = 213,
    TopPwcPlicPwcIrqIdPwcHdrIpiFromPwc1 = 214,
    TopPwcPlicPwcIrqIdPwcHdrIpiFromPwc2 = 215,
    TopPwcPlicPwcIrqIdPwcHdrIpiFromRot = 216,
    TopPwcPlicPwcIrqIdPwcHdrIpiFromMio = 217,
    TopPwcPlicPwcIrqIdPwcHdrIpiFromDuc = 218,
    TopPwcPlicPwcIrqIdLioGrpAIpiFromLiogrpaI3c0PeriphRstReq = 219,
    TopPwcPlicPwcIrqIdLioGrpAIpiFromLiogrpaI3c0ChipRstReq = 220,
    TopPwcPlicPwcIrqIdLioGrpAIpiFromLiogrpaI3c1PeriphRstReq = 221,
    TopPwcPlicPwcIrqIdLioGrpAIpiFromLiogrpaI3c1ChipRstReq = 222,
    TopPwcPlicPwcIrqIdLioGrpAIpiFromLiogrpaI3c2PeriphRstReq = 223,
    TopPwcPlicPwcIrqIdLioGrpAIpiFromLiogrpaI3c2ChipRstReq = 224,
    TopPwcPlicPwcIrqIdLioGrpBIpiFromLiogrpbI3c0PeriphRstReq = 225,
    TopPwcPlicPwcIrqIdLioGrpBIpiFromLiogrpbI3c0ChipRstReq = 226,
    TopPwcPlicPwcIrqIdLioGrpBIpiFromLiogrpbI3c1PeriphRstReq = 227,
    TopPwcPlicPwcIrqIdLioGrpBIpiFromLiogrpbI3c1ChipRstReq = 228,
    TopPwcPlicPwcIrqIdLioGrpBIpiFromLiogrpbI3c2PeriphRstReq = 229,
    TopPwcPlicPwcIrqIdLioGrpBIpiFromLiogrpbI3c2ChipRstReq = 230,
    TopPwcPlicPwcIrqIdLioGrpCIpiFromLiogrpcI3c0PeriphRstReq = 231,
    TopPwcPlicPwcIrqIdLioGrpCIpiFromLiogrpcI3c0ChipRstReq = 232,
    TopPwcPlicPwcIrqIdLioGrpCIpiFromLiogrpcI3c1PeriphRstReq = 233,
    TopPwcPlicPwcIrqIdLioGrpCIpiFromLiogrpcI3c1ChipRstReq = 234,
    TopPwcPlicPwcIrqIdLioGrpCIpiFromLiogrpcI3c2PeriphRstReq = 235,
    TopPwcPlicPwcIrqIdLioGrpCIpiFromLiogrpcI3c2ChipRstReq = 236,
    TopPwcPlicPwcIrqIdLioGrpDIpiFromLiogrpdI3c0PeriphRstReq = 237,
    TopPwcPlicPwcIrqIdLioGrpDIpiFromLiogrpdI3c0ChipRstReq = 238,
    TopPwcPlicPwcIrqIdLioGrpDIpiFromLiogrpdI3c1PeriphRstReq = 239,
    TopPwcPlicPwcIrqIdLioGrpDIpiFromLiogrpdI3c1ChipRstReq = 240,
    TopPwcPlicPwcIrqIdLioGrpDIpiFromLiogrpdI3c2PeriphRstReq = 241,
    TopPwcPlicPwcIrqIdLioGrpDIpiFromLiogrpdI3c2ChipRstReq = 242,
    TopPwcPlicPwcIrqIdPwcErs0Req0ErsReqInterrupt = 243,
    TopPwcPlicPwcIrqIdPwcErs0Req1ErsReqInterrupt = 244,
    TopPwcPlicPwcIrqIdPwcErs1Req0ErsReqInterrupt = 245,
    TopPwcPlicPwcIrqIdPwcErs1Req1ErsReqInterrupt = 246,
    TopPwcPlicPwcIrqIdPwcCcs0CstateEntry = 247,
    TopPwcPlicPwcIrqIdPwcCcs0CstateExit = 248,
    TopPwcPlicPwcIrqIdPwcCcs1CstateEntry = 249,
    TopPwcPlicPwcIrqIdPwcCcs1CstateExit = 250,
    TopPwcPlicPwcIrqIdPwcSpareecoirq1 = 251,
    TopPwcPlicPwcIrqIdCount
  } interrupt_rv_plic_pwc_id_e;


  // Number of pwc_external incoming interrupts
  parameter int unsigned NIncomingInterruptsPwcExternal = 192;

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
    TopPwcIncomingIrqPwcExternalIdPwcSpareecoirq0 = 10,
    TopPwcIncomingIrqPwcExternalIdPwcDvfsTargetcmdavs0 = 11,
    TopPwcIncomingIrqPwcExternalIdPwcDvfsTargetcmdavs1 = 12,
    TopPwcIncomingIrqPwcExternalIdPwcDvfsTargetcmdavs2 = 13,
    TopPwcIncomingIrqPwcExternalIdPwcDvfsTargetcmdavs3 = 14,
    TopPwcIncomingIrqPwcExternalIdPwcDvfsTargetcmdavs4 = 15,
    TopPwcIncomingIrqPwcExternalIdPwcDvfsTargetcmdavs5 = 16,
    TopPwcIncomingIrqPwcExternalIdPwcDvfsTargetcmdavs6 = 17,
    TopPwcIncomingIrqPwcExternalIdPwcDvfsTargetcmdavs7 = 18,
    TopPwcIncomingIrqPwcExternalIdPwcDvfsTargetcmdavs8 = 19,
    TopPwcIncomingIrqPwcExternalIdPwcDvfsTargetcmdavs9 = 20,
    TopPwcIncomingIrqPwcExternalIdPwcDvfsTargetcmdavs10 = 21,
    TopPwcIncomingIrqPwcExternalIdPwcDvfsTargetcmdavs11 = 22,
    TopPwcIncomingIrqPwcExternalIdPwcDvfsTargetcmdavs12 = 23,
    TopPwcIncomingIrqPwcExternalIdPwcDvfsTargetcmdavs13 = 24,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsError0 = 25,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsError1 = 26,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsError2 = 27,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsError3 = 28,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsError4 = 29,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsError5 = 30,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsError6 = 31,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsError7 = 32,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsError8 = 33,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsError9 = 34,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsError10 = 35,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsError11 = 36,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsError12 = 37,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsError13 = 38,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsError14 = 39,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsError15 = 40,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsError16 = 41,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsError17 = 42,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsError18 = 43,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsError19 = 44,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsError20 = 45,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsResponseToFw0 = 46,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsResponseToFw1 = 47,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsResponseToFw2 = 48,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsResponseToFw3 = 49,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsResponseToFw4 = 50,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsResponseToFw5 = 51,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsResponseToFw6 = 52,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsResponseToFw7 = 53,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsResponseToFw8 = 54,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsResponseToFw9 = 55,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsResponseToFw10 = 56,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsResponseToFw11 = 57,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsResponseToFw12 = 58,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsResponseToFw13 = 59,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsResponseToFw14 = 60,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsResponseToFw15 = 61,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsResponseToFw16 = 62,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsResponseToFw17 = 63,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsResponseToFw18 = 64,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsResponseToFw19 = 65,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsResponseToFw20 = 66,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsResponseToFw21 = 67,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsResponseToFw22 = 68,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsResponseToFw23 = 69,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsResponseToFw24 = 70,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsResponseToFw25 = 71,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsResponseToFw26 = 72,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsResponseToFw27 = 73,
    TopPwcIncomingIrqPwcExternalIdPwcAvsAvsResponseToFw28 = 74,
    TopPwcIncomingIrqPwcExternalIdPwcBcastCStateEntry = 75,
    TopPwcIncomingIrqPwcExternalIdPwcBcastCStateExit = 76,
    TopPwcIncomingIrqPwcExternalIdPwcBcastDpaIdleEntry = 77,
    TopPwcIncomingIrqPwcExternalIdPwcBcastDpaIdleExit = 78,
    TopPwcIncomingIrqPwcExternalIdPwcCcs0PwrVirusLvlReq = 79,
    TopPwcIncomingIrqPwcExternalIdPwcCcs1PwrVirusLvlReq = 80,
    TopPwcIncomingIrqPwcExternalIdPwcCcs2PwrVirusLvlReq = 81,
    TopPwcIncomingIrqPwcExternalIdPwcCcs3PwrVirusLvlReq = 82,
    TopPwcIncomingIrqPwcExternalIdPwcCcs4PwrVirusLvlReq = 83,
    TopPwcIncomingIrqPwcExternalIdPwcCcs5PwrVirusLvlReq = 84,
    TopPwcIncomingIrqPwcExternalIdPwcCcs6PwrVirusLvlReq = 85,
    TopPwcIncomingIrqPwcExternalIdPwcCcs7PwrVirusLvlReq = 86,
    TopPwcIncomingIrqPwcExternalIdPwcCcs0DvfsFsm = 87,
    TopPwcIncomingIrqPwcExternalIdPwcCcs1DvfsFsm = 88,
    TopPwcIncomingIrqPwcExternalIdPwcDvfsSocdpafsmstatus0 = 89,
    TopPwcIncomingIrqPwcExternalIdPwcDvfsSocdpafsmstatus1 = 90,
    TopPwcIncomingIrqPwcExternalIdPwcDvfsSocdpafsmstatus2 = 91,
    TopPwcIncomingIrqPwcExternalIdPwcDvfsSocdpafsmstatus3 = 92,
    TopPwcIncomingIrqPwcExternalIdPwcDvfsSocdpafsmstatus4 = 93,
    TopPwcIncomingIrqPwcExternalIdPwcDvfsSocdpafsmstatus5 = 94,
    TopPwcIncomingIrqPwcExternalIdPwcHmsEastStatus = 95,
    TopPwcIncomingIrqPwcExternalIdPwcHmsWestStatus = 96,
    TopPwcIncomingIrqPwcExternalIdPwcPcs0AllPortsStatus = 97,
    TopPwcIncomingIrqPwcExternalIdPwcPcs0LinkBringup0 = 98,
    TopPwcIncomingIrqPwcExternalIdPwcPcs0LinkBringup1 = 99,
    TopPwcIncomingIrqPwcExternalIdPwcPcs0LinkBringup2 = 100,
    TopPwcIncomingIrqPwcExternalIdPwcPcs0LinkBringup3 = 101,
    TopPwcIncomingIrqPwcExternalIdPwcPcs0MsgCtrl = 102,
    TopPwcIncomingIrqPwcExternalIdPwcPcs0PhyStatus = 103,
    TopPwcIncomingIrqPwcExternalIdPwcPcs1AllPortsStatus = 104,
    TopPwcIncomingIrqPwcExternalIdPwcPcs1LinkBringup0 = 105,
    TopPwcIncomingIrqPwcExternalIdPwcPcs1LinkBringup1 = 106,
    TopPwcIncomingIrqPwcExternalIdPwcPcs1LinkBringup2 = 107,
    TopPwcIncomingIrqPwcExternalIdPwcPcs1LinkBringup3 = 108,
    TopPwcIncomingIrqPwcExternalIdPwcPcs1MsgCtrl = 109,
    TopPwcIncomingIrqPwcExternalIdPwcPcs1PhyStatus = 110,
    TopPwcIncomingIrqPwcExternalIdPwcPcs2AllPortsStatus = 111,
    TopPwcIncomingIrqPwcExternalIdPwcPcs2LinkBringup0 = 112,
    TopPwcIncomingIrqPwcExternalIdPwcPcs2LinkBringup1 = 113,
    TopPwcIncomingIrqPwcExternalIdPwcPcs2LinkBringup2 = 114,
    TopPwcIncomingIrqPwcExternalIdPwcPcs2LinkBringup3 = 115,
    TopPwcIncomingIrqPwcExternalIdPwcPcs2MsgCtrl = 116,
    TopPwcIncomingIrqPwcExternalIdPwcPcs2PhyStatus = 117,
    TopPwcIncomingIrqPwcExternalIdPwcPcs3AllPortsStatus = 118,
    TopPwcIncomingIrqPwcExternalIdPwcPcs3LinkBringup0 = 119,
    TopPwcIncomingIrqPwcExternalIdPwcPcs3LinkBringup1 = 120,
    TopPwcIncomingIrqPwcExternalIdPwcPcs3LinkBringup2 = 121,
    TopPwcIncomingIrqPwcExternalIdPwcPcs3LinkBringup3 = 122,
    TopPwcIncomingIrqPwcExternalIdPwcPcs3MsgCtrl = 123,
    TopPwcIncomingIrqPwcExternalIdPwcPcs3PhyStatus = 124,
    TopPwcIncomingIrqPwcExternalIdPwcPcs4AllPortsStatus = 125,
    TopPwcIncomingIrqPwcExternalIdPwcPcs4LinkBringup0 = 126,
    TopPwcIncomingIrqPwcExternalIdPwcPcs4LinkBringup1 = 127,
    TopPwcIncomingIrqPwcExternalIdPwcPcs4LinkBringup2 = 128,
    TopPwcIncomingIrqPwcExternalIdPwcPcs4LinkBringup3 = 129,
    TopPwcIncomingIrqPwcExternalIdPwcPcs4MsgCtrl = 130,
    TopPwcIncomingIrqPwcExternalIdPwcPcs4PhyStatus = 131,
    TopPwcIncomingIrqPwcExternalIdPwcPcs5AllPortsStatus = 132,
    TopPwcIncomingIrqPwcExternalIdPwcPcs5LinkBringup0 = 133,
    TopPwcIncomingIrqPwcExternalIdPwcPcs5LinkBringup1 = 134,
    TopPwcIncomingIrqPwcExternalIdPwcPcs5LinkBringup2 = 135,
    TopPwcIncomingIrqPwcExternalIdPwcPcs5LinkBringup3 = 136,
    TopPwcIncomingIrqPwcExternalIdPwcPcs5MsgCtrl = 137,
    TopPwcIncomingIrqPwcExternalIdPwcPcs5PhyStatus = 138,
    TopPwcIncomingIrqPwcExternalIdPwcPcs6AllPortsStatus = 139,
    TopPwcIncomingIrqPwcExternalIdPwcPcs6LinkBringup0 = 140,
    TopPwcIncomingIrqPwcExternalIdPwcPcs6LinkBringup1 = 141,
    TopPwcIncomingIrqPwcExternalIdPwcPcs6LinkBringup2 = 142,
    TopPwcIncomingIrqPwcExternalIdPwcPcs6LinkBringup3 = 143,
    TopPwcIncomingIrqPwcExternalIdPwcPcs6MsgCtrl = 144,
    TopPwcIncomingIrqPwcExternalIdPwcPcs6PhyStatus = 145,
    TopPwcIncomingIrqPwcExternalIdPwcPcs7AllPortsStatus = 146,
    TopPwcIncomingIrqPwcExternalIdPwcPcs7LinkBringup0 = 147,
    TopPwcIncomingIrqPwcExternalIdPwcPcs7LinkBringup1 = 148,
    TopPwcIncomingIrqPwcExternalIdPwcPcs7LinkBringup2 = 149,
    TopPwcIncomingIrqPwcExternalIdPwcPcs7LinkBringup3 = 150,
    TopPwcIncomingIrqPwcExternalIdPwcPcs7MsgCtrl = 151,
    TopPwcIncomingIrqPwcExternalIdPwcPcs7PhyStatus = 152,
    TopPwcIncomingIrqPwcExternalIdPwcHdrIpiFromPwc0 = 153,
    TopPwcIncomingIrqPwcExternalIdPwcHdrIpiFromPwc1 = 154,
    TopPwcIncomingIrqPwcExternalIdPwcHdrIpiFromPwc2 = 155,
    TopPwcIncomingIrqPwcExternalIdPwcHdrIpiFromRot = 156,
    TopPwcIncomingIrqPwcExternalIdPwcHdrIpiFromMio = 157,
    TopPwcIncomingIrqPwcExternalIdPwcHdrIpiFromDuc = 158,
    TopPwcIncomingIrqPwcExternalIdLioGrpAIpiFromLiogrpaI3c0PeriphRstReq = 159,
    TopPwcIncomingIrqPwcExternalIdLioGrpAIpiFromLiogrpaI3c0ChipRstReq = 160,
    TopPwcIncomingIrqPwcExternalIdLioGrpAIpiFromLiogrpaI3c1PeriphRstReq = 161,
    TopPwcIncomingIrqPwcExternalIdLioGrpAIpiFromLiogrpaI3c1ChipRstReq = 162,
    TopPwcIncomingIrqPwcExternalIdLioGrpAIpiFromLiogrpaI3c2PeriphRstReq = 163,
    TopPwcIncomingIrqPwcExternalIdLioGrpAIpiFromLiogrpaI3c2ChipRstReq = 164,
    TopPwcIncomingIrqPwcExternalIdLioGrpBIpiFromLiogrpbI3c0PeriphRstReq = 165,
    TopPwcIncomingIrqPwcExternalIdLioGrpBIpiFromLiogrpbI3c0ChipRstReq = 166,
    TopPwcIncomingIrqPwcExternalIdLioGrpBIpiFromLiogrpbI3c1PeriphRstReq = 167,
    TopPwcIncomingIrqPwcExternalIdLioGrpBIpiFromLiogrpbI3c1ChipRstReq = 168,
    TopPwcIncomingIrqPwcExternalIdLioGrpBIpiFromLiogrpbI3c2PeriphRstReq = 169,
    TopPwcIncomingIrqPwcExternalIdLioGrpBIpiFromLiogrpbI3c2ChipRstReq = 170,
    TopPwcIncomingIrqPwcExternalIdLioGrpCIpiFromLiogrpcI3c0PeriphRstReq = 171,
    TopPwcIncomingIrqPwcExternalIdLioGrpCIpiFromLiogrpcI3c0ChipRstReq = 172,
    TopPwcIncomingIrqPwcExternalIdLioGrpCIpiFromLiogrpcI3c1PeriphRstReq = 173,
    TopPwcIncomingIrqPwcExternalIdLioGrpCIpiFromLiogrpcI3c1ChipRstReq = 174,
    TopPwcIncomingIrqPwcExternalIdLioGrpCIpiFromLiogrpcI3c2PeriphRstReq = 175,
    TopPwcIncomingIrqPwcExternalIdLioGrpCIpiFromLiogrpcI3c2ChipRstReq = 176,
    TopPwcIncomingIrqPwcExternalIdLioGrpDIpiFromLiogrpdI3c0PeriphRstReq = 177,
    TopPwcIncomingIrqPwcExternalIdLioGrpDIpiFromLiogrpdI3c0ChipRstReq = 178,
    TopPwcIncomingIrqPwcExternalIdLioGrpDIpiFromLiogrpdI3c1PeriphRstReq = 179,
    TopPwcIncomingIrqPwcExternalIdLioGrpDIpiFromLiogrpdI3c1ChipRstReq = 180,
    TopPwcIncomingIrqPwcExternalIdLioGrpDIpiFromLiogrpdI3c2PeriphRstReq = 181,
    TopPwcIncomingIrqPwcExternalIdLioGrpDIpiFromLiogrpdI3c2ChipRstReq = 182,
    TopPwcIncomingIrqPwcExternalIdPwcErs0Req0ErsReqInterrupt = 183,
    TopPwcIncomingIrqPwcExternalIdPwcErs0Req1ErsReqInterrupt = 184,
    TopPwcIncomingIrqPwcExternalIdPwcErs1Req0ErsReqInterrupt = 185,
    TopPwcIncomingIrqPwcExternalIdPwcErs1Req1ErsReqInterrupt = 186,
    TopPwcIncomingIrqPwcExternalIdPwcCcs0CstateEntry = 187,
    TopPwcIncomingIrqPwcExternalIdPwcCcs0CstateExit = 188,
    TopPwcIncomingIrqPwcExternalIdPwcCcs1CstateEntry = 189,
    TopPwcIncomingIrqPwcExternalIdPwcCcs1CstateExit = 190,
    TopPwcIncomingIrqPwcExternalIdPwcSpareecoirq1 = 191,
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

endpackage
