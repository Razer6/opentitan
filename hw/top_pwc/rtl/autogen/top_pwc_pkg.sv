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
   * Peripheral base address for core device on pwc_soc_proxy in top pwc.
   */
  parameter int unsigned TOP_PWC_PWC_SOC_PROXY_CORE_BASE_ADDR = 32'h22030000;

  /**
   * Peripheral size in bytes for core device on pwc_soc_proxy in top pwc.
   */
  parameter int unsigned TOP_PWC_PWC_SOC_PROXY_CORE_SIZE_BYTES = 32'h10;

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
   * Peripheral base address for cfg device on rv_core_ibex in top pwc.
   */
  parameter int unsigned TOP_PWC_RV_CORE_IBEX_CFG_BASE_ADDR = 32'h211F0000;

  /**
   * Peripheral size in bytes for cfg device on rv_core_ibex in top pwc.
   */
  parameter int unsigned TOP_PWC_RV_CORE_IBEX_CFG_SIZE_BYTES = 32'h800;

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
  parameter int unsigned NOutgoingAlertsPwc = 32;

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
    TopPwcAlertPeripheralAcRangeCheck = 18,
    TopPwcAlertPeripheralRvCoreIbex = 19,
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
    TopPwcAlertIdAcRangeCheckRecovCtrlUpdateErr = 26,
    TopPwcAlertIdAcRangeCheckFatalFault = 27,
    TopPwcAlertIdRvCoreIbexFatalSwErr = 28,
    TopPwcAlertIdRvCoreIbexRecovSwErr = 29,
    TopPwcAlertIdRvCoreIbexFatalHwErr = 30,
    TopPwcAlertIdRvCoreIbexRecovHwErr = 31,
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
    1'b1,
    1'b1
  };


endpackage
