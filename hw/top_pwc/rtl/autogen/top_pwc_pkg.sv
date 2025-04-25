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
    TopPwcAlertPeripheralRaclCtrl = 16,
    TopPwcAlertPeripheralAcRangeCheck = 17,
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
    TopPwcAlertIdRaclCtrlFatalFault = 23,
    TopPwcAlertIdRaclCtrlRecovCtrlUpdateErr = 24,
    TopPwcAlertIdAcRangeCheckRecovCtrlUpdateErr = 25,
    TopPwcAlertIdAcRangeCheckFatalFault = 26,
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
    TopPwcIrqIdGpioGpio0 = 1,
    TopPwcIrqIdGpioGpio1 = 2,
    TopPwcIrqIdGpioGpio2 = 3,
    TopPwcIrqIdGpioGpio3 = 4,
    TopPwcIrqIdGpioGpio4 = 5,
    TopPwcIrqIdGpioGpio5 = 6,
    TopPwcIrqIdGpioGpio6 = 7,
    TopPwcIrqIdGpioGpio7 = 8,
    TopPwcIrqIdGpioGpio8 = 9,
    TopPwcIrqIdGpioGpio9 = 10,
    TopPwcIrqIdGpioGpio10 = 11,
    TopPwcIrqIdGpioGpio11 = 12,
    TopPwcIrqIdGpioGpio12 = 13,
    TopPwcIrqIdGpioGpio13 = 14,
    TopPwcIrqIdGpioGpio14 = 15,
    TopPwcIrqIdGpioGpio15 = 16,
    TopPwcIrqIdGpioGpio16 = 17,
    TopPwcIrqIdGpioGpio17 = 18,
    TopPwcIrqIdGpioGpio18 = 19,
    TopPwcIrqIdGpioGpio19 = 20,
    TopPwcIrqIdGpioGpio20 = 21,
    TopPwcIrqIdGpioGpio21 = 22,
    TopPwcIrqIdGpioGpio22 = 23,
    TopPwcIrqIdGpioGpio23 = 24,
    TopPwcIrqIdGpioGpio24 = 25,
    TopPwcIrqIdGpioGpio25 = 26,
    TopPwcIrqIdGpioGpio26 = 27,
    TopPwcIrqIdGpioGpio27 = 28,
    TopPwcIrqIdGpioGpio28 = 29,
    TopPwcIrqIdGpioGpio29 = 30,
    TopPwcIrqIdGpioGpio30 = 31,
    TopPwcIrqIdGpioGpio31 = 32,
    TopPwcIrqIdRvTimerTimerExpiredHart0Timer0 = 33,
    TopPwcIrqIdAonTimerAonWkupTimerExpired = 34,
    TopPwcIrqIdAonTimerAonWdogTimerBark = 35,
    TopPwcIrqIdDmaDmaDone = 36,
    TopPwcIrqIdDmaDmaChunkDone = 37,
    TopPwcIrqIdDmaDmaError = 38,
    TopPwcIrqIdMbx0MbxReady = 39,
    TopPwcIrqIdMbx0MbxAbort = 40,
    TopPwcIrqIdMbx0MbxError = 41,
    TopPwcIrqIdMbx1MbxReady = 42,
    TopPwcIrqIdMbx1MbxAbort = 43,
    TopPwcIrqIdMbx1MbxError = 44,
    TopPwcIrqIdMbx2MbxReady = 45,
    TopPwcIrqIdMbx2MbxAbort = 46,
    TopPwcIrqIdMbx2MbxError = 47,
    TopPwcIrqIdMbx3MbxReady = 48,
    TopPwcIrqIdMbx3MbxAbort = 49,
    TopPwcIrqIdMbx3MbxError = 50,
    TopPwcIrqIdMbx4MbxReady = 51,
    TopPwcIrqIdMbx4MbxAbort = 52,
    TopPwcIrqIdMbx4MbxError = 53,
    TopPwcIrqIdMbx5MbxReady = 54,
    TopPwcIrqIdMbx5MbxAbort = 55,
    TopPwcIrqIdMbx5MbxError = 56,
    TopPwcIrqIdMbxPcie0MbxReady = 57,
    TopPwcIrqIdMbxPcie0MbxAbort = 58,
    TopPwcIrqIdMbxPcie0MbxError = 59,
    TopPwcIrqIdAcRangeCheckDenyCntReached = 60,
    TopPwcIrqIdPwcLteuSocHot = 61,
    TopPwcIrqIdPwcLteuFwTrip = 62,
    TopPwcIrqIdPwcLteuCatTrip = 63,
    TopPwcIrqIdLioGrpAIbexIrq = 64,
    TopPwcIrqIdLioGrpBIbexIrq = 65,
    TopPwcIrqIdLioGrpCIbexIrq = 66,
    TopPwcIrqIdDuc0Ducpvlreq0 = 67,
    TopPwcIrqIdDuc1Ducpvlreq1 = 68,
    TopPwcIrqIdDuc0Ducivdrreq0 = 69,
    TopPwcIrqIdDuc1Ducivdrreq1 = 70,
    TopPwcIrqIdPwcSpareecoirq0 = 71,
    TopPwcIrqIdPwcDvfsTargetcmdavs0 = 72,
    TopPwcIrqIdPwcDvfsTargetcmdavs1 = 73,
    TopPwcIrqIdPwcDvfsTargetcmdavs2 = 74,
    TopPwcIrqIdPwcDvfsTargetcmdavs3 = 75,
    TopPwcIrqIdPwcDvfsTargetcmdavs4 = 76,
    TopPwcIrqIdPwcDvfsTargetcmdavs5 = 77,
    TopPwcIrqIdPwcDvfsTargetcmdavs6 = 78,
    TopPwcIrqIdPwcDvfsTargetcmdavs7 = 79,
    TopPwcIrqIdPwcDvfsTargetcmdavs8 = 80,
    TopPwcIrqIdPwcDvfsTargetcmdavs9 = 81,
    TopPwcIrqIdPwcDvfsTargetcmdavs10 = 82,
    TopPwcIrqIdPwcDvfsTargetcmdavs11 = 83,
    TopPwcIrqIdPwcDvfsTargetcmdavs12 = 84,
    TopPwcIrqIdPwcDvfsTargetcmdavs13 = 85,
    TopPwcIrqIdPwcAvsAvsError0 = 86,
    TopPwcIrqIdPwcAvsAvsError1 = 87,
    TopPwcIrqIdPwcAvsAvsError2 = 88,
    TopPwcIrqIdPwcAvsAvsError3 = 89,
    TopPwcIrqIdPwcAvsAvsError4 = 90,
    TopPwcIrqIdPwcAvsAvsError5 = 91,
    TopPwcIrqIdPwcAvsAvsError6 = 92,
    TopPwcIrqIdPwcAvsAvsError7 = 93,
    TopPwcIrqIdPwcAvsAvsError8 = 94,
    TopPwcIrqIdPwcAvsAvsError9 = 95,
    TopPwcIrqIdPwcAvsAvsError10 = 96,
    TopPwcIrqIdPwcAvsAvsError11 = 97,
    TopPwcIrqIdPwcAvsAvsError12 = 98,
    TopPwcIrqIdPwcAvsAvsError13 = 99,
    TopPwcIrqIdPwcAvsAvsError14 = 100,
    TopPwcIrqIdPwcAvsAvsError15 = 101,
    TopPwcIrqIdPwcAvsAvsError16 = 102,
    TopPwcIrqIdPwcAvsAvsError17 = 103,
    TopPwcIrqIdPwcAvsAvsError18 = 104,
    TopPwcIrqIdPwcAvsAvsError19 = 105,
    TopPwcIrqIdPwcAvsAvsError20 = 106,
    TopPwcIrqIdPwcAvsAvsResponseToFw0 = 107,
    TopPwcIrqIdPwcAvsAvsResponseToFw1 = 108,
    TopPwcIrqIdPwcAvsAvsResponseToFw2 = 109,
    TopPwcIrqIdPwcAvsAvsResponseToFw3 = 110,
    TopPwcIrqIdPwcAvsAvsResponseToFw4 = 111,
    TopPwcIrqIdPwcAvsAvsResponseToFw5 = 112,
    TopPwcIrqIdPwcAvsAvsResponseToFw6 = 113,
    TopPwcIrqIdPwcAvsAvsResponseToFw7 = 114,
    TopPwcIrqIdPwcAvsAvsResponseToFw8 = 115,
    TopPwcIrqIdPwcAvsAvsResponseToFw9 = 116,
    TopPwcIrqIdPwcAvsAvsResponseToFw10 = 117,
    TopPwcIrqIdPwcAvsAvsResponseToFw11 = 118,
    TopPwcIrqIdPwcAvsAvsResponseToFw12 = 119,
    TopPwcIrqIdPwcAvsAvsResponseToFw13 = 120,
    TopPwcIrqIdPwcAvsAvsResponseToFw14 = 121,
    TopPwcIrqIdPwcAvsAvsResponseToFw15 = 122,
    TopPwcIrqIdPwcAvsAvsResponseToFw16 = 123,
    TopPwcIrqIdPwcAvsAvsResponseToFw17 = 124,
    TopPwcIrqIdPwcAvsAvsResponseToFw18 = 125,
    TopPwcIrqIdPwcAvsAvsResponseToFw19 = 126,
    TopPwcIrqIdPwcAvsAvsResponseToFw20 = 127,
    TopPwcIrqIdPwcAvsAvsResponseToFw21 = 128,
    TopPwcIrqIdPwcAvsAvsResponseToFw22 = 129,
    TopPwcIrqIdPwcAvsAvsResponseToFw23 = 130,
    TopPwcIrqIdPwcAvsAvsResponseToFw24 = 131,
    TopPwcIrqIdPwcAvsAvsResponseToFw25 = 132,
    TopPwcIrqIdPwcAvsAvsResponseToFw26 = 133,
    TopPwcIrqIdPwcAvsAvsResponseToFw27 = 134,
    TopPwcIrqIdPwcAvsAvsResponseToFw28 = 135,
    TopPwcIrqIdPwcBcastCStateEntry = 136,
    TopPwcIrqIdPwcBcastCStateExit = 137,
    TopPwcIrqIdPwcBcastDpaIdleEntry = 138,
    TopPwcIrqIdPwcBcastDpaIdleExit = 139,
    TopPwcIrqIdPwcCcs0PwrVirusLvlReq = 140,
    TopPwcIrqIdPwcCcs1PwrVirusLvlReq = 141,
    TopPwcIrqIdPwcCcs2PwrVirusLvlReq = 142,
    TopPwcIrqIdPwcCcs3PwrVirusLvlReq = 143,
    TopPwcIrqIdPwcCcs4PwrVirusLvlReq = 144,
    TopPwcIrqIdPwcCcs5PwrVirusLvlReq = 145,
    TopPwcIrqIdPwcCcs6PwrVirusLvlReq = 146,
    TopPwcIrqIdPwcCcs7PwrVirusLvlReq = 147,
    TopPwcIrqIdPwcCcs0DvfsFsm = 148,
    TopPwcIrqIdPwcCcs1DvfsFsm = 149,
    TopPwcIrqIdPwcDvfsSocdpafsmstatus0 = 150,
    TopPwcIrqIdPwcDvfsSocdpafsmstatus1 = 151,
    TopPwcIrqIdPwcDvfsSocdpafsmstatus2 = 152,
    TopPwcIrqIdPwcDvfsSocdpafsmstatus3 = 153,
    TopPwcIrqIdPwcDvfsSocdpafsmstatus4 = 154,
    TopPwcIrqIdPwcDvfsSocdpafsmstatus5 = 155,
    TopPwcIrqIdPwcHmsEastStatus = 156,
    TopPwcIrqIdPwcHmsWestStatus = 157,
    TopPwcIrqIdPwcPcs0AllPortsStatus = 158,
    TopPwcIrqIdPwcPcs0LinkBringup0 = 159,
    TopPwcIrqIdPwcPcs0LinkBringup1 = 160,
    TopPwcIrqIdPwcPcs0LinkBringup2 = 161,
    TopPwcIrqIdPwcPcs0LinkBringup3 = 162,
    TopPwcIrqIdPwcPcs0MsgCtrl = 163,
    TopPwcIrqIdPwcPcs0PhyStatus = 164,
    TopPwcIrqIdPwcPcs1AllPortsStatus = 165,
    TopPwcIrqIdPwcPcs1LinkBringup0 = 166,
    TopPwcIrqIdPwcPcs1LinkBringup1 = 167,
    TopPwcIrqIdPwcPcs1LinkBringup2 = 168,
    TopPwcIrqIdPwcPcs1LinkBringup3 = 169,
    TopPwcIrqIdPwcPcs1MsgCtrl = 170,
    TopPwcIrqIdPwcPcs1PhyStatus = 171,
    TopPwcIrqIdPwcPcs2AllPortsStatus = 172,
    TopPwcIrqIdPwcPcs2LinkBringup0 = 173,
    TopPwcIrqIdPwcPcs2LinkBringup1 = 174,
    TopPwcIrqIdPwcPcs2LinkBringup2 = 175,
    TopPwcIrqIdPwcPcs2LinkBringup3 = 176,
    TopPwcIrqIdPwcPcs2MsgCtrl = 177,
    TopPwcIrqIdPwcPcs2PhyStatus = 178,
    TopPwcIrqIdPwcPcs3AllPortsStatus = 179,
    TopPwcIrqIdPwcPcs3LinkBringup0 = 180,
    TopPwcIrqIdPwcPcs3LinkBringup1 = 181,
    TopPwcIrqIdPwcPcs3LinkBringup2 = 182,
    TopPwcIrqIdPwcPcs3LinkBringup3 = 183,
    TopPwcIrqIdPwcPcs3MsgCtrl = 184,
    TopPwcIrqIdPwcPcs3PhyStatus = 185,
    TopPwcIrqIdPwcPcs4AllPortsStatus = 186,
    TopPwcIrqIdPwcPcs4LinkBringup0 = 187,
    TopPwcIrqIdPwcPcs4LinkBringup1 = 188,
    TopPwcIrqIdPwcPcs4LinkBringup2 = 189,
    TopPwcIrqIdPwcPcs4LinkBringup3 = 190,
    TopPwcIrqIdPwcPcs4MsgCtrl = 191,
    TopPwcIrqIdPwcPcs4PhyStatus = 192,
    TopPwcIrqIdPwcPcs5AllPortsStatus = 193,
    TopPwcIrqIdPwcPcs5LinkBringup0 = 194,
    TopPwcIrqIdPwcPcs5LinkBringup1 = 195,
    TopPwcIrqIdPwcPcs5LinkBringup2 = 196,
    TopPwcIrqIdPwcPcs5LinkBringup3 = 197,
    TopPwcIrqIdPwcPcs5MsgCtrl = 198,
    TopPwcIrqIdPwcPcs5PhyStatus = 199,
    TopPwcIrqIdPwcPcs6AllPortsStatus = 200,
    TopPwcIrqIdPwcPcs6LinkBringup0 = 201,
    TopPwcIrqIdPwcPcs6LinkBringup1 = 202,
    TopPwcIrqIdPwcPcs6LinkBringup2 = 203,
    TopPwcIrqIdPwcPcs6LinkBringup3 = 204,
    TopPwcIrqIdPwcPcs6MsgCtrl = 205,
    TopPwcIrqIdPwcPcs6PhyStatus = 206,
    TopPwcIrqIdPwcPcs7AllPortsStatus = 207,
    TopPwcIrqIdPwcPcs7LinkBringup0 = 208,
    TopPwcIrqIdPwcPcs7LinkBringup1 = 209,
    TopPwcIrqIdPwcPcs7LinkBringup2 = 210,
    TopPwcIrqIdPwcPcs7LinkBringup3 = 211,
    TopPwcIrqIdPwcPcs7MsgCtrl = 212,
    TopPwcIrqIdPwcPcs7PhyStatus = 213,
    TopPwcIrqIdPwcHdrIpiFromPwc0 = 214,
    TopPwcIrqIdPwcHdrIpiFromPwc1 = 215,
    TopPwcIrqIdPwcHdrIpiFromPwc2 = 216,
    TopPwcIrqIdPwcHdrIpiFromRot = 217,
    TopPwcIrqIdPwcHdrIpiFromMio = 218,
    TopPwcIrqIdPwcHdrIpiFromDuc = 219,
    TopPwcIrqIdLioGrpAIpiFromLiogrpaI3c0PeriphRstReq = 220,
    TopPwcIrqIdLioGrpAIpiFromLiogrpaI3c0ChipRstReq = 221,
    TopPwcIrqIdLioGrpAIpiFromLiogrpaI3c1PeriphRstReq = 222,
    TopPwcIrqIdLioGrpAIpiFromLiogrpaI3c1ChipRstReq = 223,
    TopPwcIrqIdLioGrpAIpiFromLiogrpaI3c2PeriphRstReq = 224,
    TopPwcIrqIdLioGrpAIpiFromLiogrpaI3c2ChipRstReq = 225,
    TopPwcIrqIdLioGrpBIpiFromLiogrpbI3c0PeriphRstReq = 226,
    TopPwcIrqIdLioGrpBIpiFromLiogrpbI3c0ChipRstReq = 227,
    TopPwcIrqIdLioGrpBIpiFromLiogrpbI3c1PeriphRstReq = 228,
    TopPwcIrqIdLioGrpBIpiFromLiogrpbI3c1ChipRstReq = 229,
    TopPwcIrqIdLioGrpBIpiFromLiogrpbI3c2PeriphRstReq = 230,
    TopPwcIrqIdLioGrpBIpiFromLiogrpbI3c2ChipRstReq = 231,
    TopPwcIrqIdLioGrpCIpiFromLiogrpcI3c0PeriphRstReq = 232,
    TopPwcIrqIdLioGrpCIpiFromLiogrpcI3c0ChipRstReq = 233,
    TopPwcIrqIdLioGrpCIpiFromLiogrpcI3c1PeriphRstReq = 234,
    TopPwcIrqIdLioGrpCIpiFromLiogrpcI3c1ChipRstReq = 235,
    TopPwcIrqIdLioGrpCIpiFromLiogrpcI3c2PeriphRstReq = 236,
    TopPwcIrqIdLioGrpCIpiFromLiogrpcI3c2ChipRstReq = 237,
    TopPwcIrqIdLioGrpDIpiFromLiogrpdI3c0PeriphRstReq = 238,
    TopPwcIrqIdLioGrpDIpiFromLiogrpdI3c0ChipRstReq = 239,
    TopPwcIrqIdLioGrpDIpiFromLiogrpdI3c1PeriphRstReq = 240,
    TopPwcIrqIdLioGrpDIpiFromLiogrpdI3c1ChipRstReq = 241,
    TopPwcIrqIdLioGrpDIpiFromLiogrpdI3c2PeriphRstReq = 242,
    TopPwcIrqIdLioGrpDIpiFromLiogrpdI3c2ChipRstReq = 243,
    TopPwcIrqIdPwcErs0Req0ErsReqInterrupt = 244,
    TopPwcIrqIdPwcErs0Req1ErsReqInterrupt = 245,
    TopPwcIrqIdPwcErs1Req0ErsReqInterrupt = 246,
    TopPwcIrqIdPwcErs1Req1ErsReqInterrupt = 247,
    TopPwcIrqIdPwcCcs0CstateEntry = 248,
    TopPwcIrqIdPwcCcs0CstateExit = 249,
    TopPwcIrqIdPwcCcs1CstateEntry = 250,
    TopPwcIrqIdPwcCcs1CstateExit = 251,
    TopPwcIrqIdPwcSpareecoirq1 = 252,
    TopPwcIrqIdCount
  } interrupt_id_e;

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
    TopPwcIncomingIrqIdCount
  } incoming_interrupt_pwc_external_id_e;

  // Number of pwc outgoing interrupts
  parameter int unsigned NOutgoingInterruptsPwc = 1;

  // Enumeration of interrupts for outgoing group pwc
  typedef enum int unsigned {
    TopPwcOutgoingIrqPwcIdRaclCtrlRaclError = 0,
    TopPwcOutgoingIrqIdCount
  } outgoing_interrupt_pwc_id_e;

endpackage
