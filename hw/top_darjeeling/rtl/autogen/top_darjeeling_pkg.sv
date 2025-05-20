// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// ------------------- W A R N I N G: A U T O - G E N E R A T E D   C O D E !! -------------------//
// PLEASE DO NOT HAND-EDIT THIS FILE. IT HAS BEEN AUTO-GENERATED WITH THE FOLLOWING COMMAND:
//
// util/topgen.py -t hw/top_darjeeling/data/top_darjeeling.hjson \
//                -o hw/top_darjeeling/ \
//                --rnd_cnst_seed \
//                1017106219537032642877583828875051302543807092889754935647094601236425074047

package top_darjeeling_pkg;
  /**
   * Peripheral base address for uart0 in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_UART0_BASE_ADDR = 32'h30010000;

  /**
   * Peripheral size in bytes for uart0 in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_UART0_SIZE_BYTES = 32'h40;

  /**
   * Peripheral base address for gpio in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_GPIO_BASE_ADDR = 32'h30000000;

  /**
   * Peripheral size in bytes for gpio in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_GPIO_SIZE_BYTES = 32'h100;

  /**
   * Peripheral base address for spi_device in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_SPI_DEVICE_BASE_ADDR = 32'h30310000;

  /**
   * Peripheral size in bytes for spi_device in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_SPI_DEVICE_SIZE_BYTES = 32'h2000;

  /**
   * Peripheral base address for i2c0 in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_I2C0_BASE_ADDR = 32'h30080000;

  /**
   * Peripheral size in bytes for i2c0 in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_I2C0_SIZE_BYTES = 32'h80;

  /**
   * Peripheral base address for rv_timer in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_RV_TIMER_BASE_ADDR = 32'h30100000;

  /**
   * Peripheral size in bytes for rv_timer in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_RV_TIMER_SIZE_BYTES = 32'h200;

  /**
   * Peripheral base address for core device on otp_ctrl in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_OTP_CTRL_CORE_BASE_ADDR = 32'h30130000;

  /**
   * Peripheral size in bytes for core device on otp_ctrl in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_OTP_CTRL_CORE_SIZE_BYTES = 32'h10000;

  /**
   * Peripheral base address for otp_macro in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_OTP_MACRO_BASE_ADDR = 32'h30140000;

  /**
   * Peripheral size in bytes for otp_macro in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_OTP_MACRO_SIZE_BYTES = 32'h80;

  /**
   * Peripheral base address for regs device on lc_ctrl in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_LC_CTRL_REGS_BASE_ADDR = 32'h30150000;

  /**
   * Peripheral size in bytes for regs device on lc_ctrl in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_LC_CTRL_REGS_SIZE_BYTES = 32'h100;

  /**
   * Peripheral base address for alert_handler in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_ALERT_HANDLER_BASE_ADDR = 32'h30160000;

  /**
   * Peripheral size in bytes for alert_handler in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_ALERT_HANDLER_SIZE_BYTES = 32'h1000;

  /**
   * Peripheral base address for spi_host0 in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_SPI_HOST0_BASE_ADDR = 32'h30300000;

  /**
   * Peripheral size in bytes for spi_host0 in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_SPI_HOST0_SIZE_BYTES = 32'h40;

  /**
   * Peripheral base address for pwrmgr_aon in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_PWRMGR_AON_BASE_ADDR = 32'h30400000;

  /**
   * Peripheral size in bytes for pwrmgr_aon in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_PWRMGR_AON_SIZE_BYTES = 32'h80;

  /**
   * Peripheral base address for rstmgr_aon in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_RSTMGR_AON_BASE_ADDR = 32'h30410000;

  /**
   * Peripheral size in bytes for rstmgr_aon in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_RSTMGR_AON_SIZE_BYTES = 32'h80;

  /**
   * Peripheral base address for clkmgr_aon in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_CLKMGR_AON_BASE_ADDR = 32'h30420000;

  /**
   * Peripheral size in bytes for clkmgr_aon in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_CLKMGR_AON_SIZE_BYTES = 32'h40;

  /**
   * Peripheral base address for pinmux_aon in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_PINMUX_AON_BASE_ADDR = 32'h30460000;

  /**
   * Peripheral size in bytes for pinmux_aon in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_PINMUX_AON_SIZE_BYTES = 32'h800;

  /**
   * Peripheral base address for aon_timer_aon in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_AON_TIMER_AON_BASE_ADDR = 32'h30470000;

  /**
   * Peripheral size in bytes for aon_timer_aon in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_AON_TIMER_AON_SIZE_BYTES = 32'h40;

  /**
   * Peripheral base address for ast in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_AST_BASE_ADDR = 32'h30480000;

  /**
   * Peripheral size in bytes for ast in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_AST_SIZE_BYTES = 32'h400;

  /**
   * Peripheral base address for ctn device on soc_proxy in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_SOC_PROXY_CTN_BASE_ADDR = 32'h40000000;

  /**
   * Peripheral size in bytes for ctn device on soc_proxy in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_SOC_PROXY_CTN_SIZE_BYTES = 32'h40000000;

  /**
   * Peripheral base address for regs device on sram_ctrl_ret_aon in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_SRAM_CTRL_RET_AON_REGS_BASE_ADDR = 32'h30500000;

  /**
   * Peripheral size in bytes for regs device on sram_ctrl_ret_aon in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_SRAM_CTRL_RET_AON_REGS_SIZE_BYTES = 32'h40;

  /**
   * Peripheral base address for ram device on sram_ctrl_ret_aon in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_SRAM_CTRL_RET_AON_RAM_BASE_ADDR = 32'h30600000;

  /**
   * Peripheral size in bytes for ram device on sram_ctrl_ret_aon in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_SRAM_CTRL_RET_AON_RAM_SIZE_BYTES = 32'h1000;

  /**
   * Peripheral base address for regs device on rv_dm in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_RV_DM_REGS_BASE_ADDR = 32'h21200000;

  /**
   * Peripheral size in bytes for regs device on rv_dm in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_RV_DM_REGS_SIZE_BYTES = 32'h10;

  /**
   * Peripheral base address for mem device on rv_dm in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_RV_DM_MEM_BASE_ADDR = 32'h40000;

  /**
   * Peripheral size in bytes for mem device on rv_dm in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_RV_DM_MEM_SIZE_BYTES = 32'h1000;

  /**
   * Peripheral base address for rv_plic in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_RV_PLIC_BASE_ADDR = 32'h28000000;

  /**
   * Peripheral size in bytes for rv_plic in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_RV_PLIC_SIZE_BYTES = 32'h8000000;

  /**
   * Peripheral base address for aes in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_AES_BASE_ADDR = 32'h21100000;

  /**
   * Peripheral size in bytes for aes in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_AES_SIZE_BYTES = 32'h100;

  /**
   * Peripheral base address for hmac in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_HMAC_BASE_ADDR = 32'h21110000;

  /**
   * Peripheral size in bytes for hmac in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_HMAC_SIZE_BYTES = 32'h2000;

  /**
   * Peripheral base address for kmac in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_KMAC_BASE_ADDR = 32'h21120000;

  /**
   * Peripheral size in bytes for kmac in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_KMAC_SIZE_BYTES = 32'h1000;

  /**
   * Peripheral base address for otbn in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_OTBN_BASE_ADDR = 32'h21130000;

  /**
   * Peripheral size in bytes for otbn in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_OTBN_SIZE_BYTES = 32'h10000;

  /**
   * Peripheral base address for keymgr_dpe in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_KEYMGR_DPE_BASE_ADDR = 32'h21140000;

  /**
   * Peripheral size in bytes for keymgr_dpe in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_KEYMGR_DPE_SIZE_BYTES = 32'h100;

  /**
   * Peripheral base address for csrng in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_CSRNG_BASE_ADDR = 32'h21150000;

  /**
   * Peripheral size in bytes for csrng in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_CSRNG_SIZE_BYTES = 32'h80;

  /**
   * Peripheral base address for edn0 in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_EDN0_BASE_ADDR = 32'h21170000;

  /**
   * Peripheral size in bytes for edn0 in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_EDN0_SIZE_BYTES = 32'h80;

  /**
   * Peripheral base address for edn1 in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_EDN1_BASE_ADDR = 32'h21180000;

  /**
   * Peripheral size in bytes for edn1 in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_EDN1_SIZE_BYTES = 32'h80;

  /**
   * Peripheral base address for regs device on sram_ctrl_main in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_SRAM_CTRL_MAIN_REGS_BASE_ADDR = 32'h211C0000;

  /**
   * Peripheral size in bytes for regs device on sram_ctrl_main in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_SRAM_CTRL_MAIN_REGS_SIZE_BYTES = 32'h40;

  /**
   * Peripheral base address for ram device on sram_ctrl_main in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_SRAM_CTRL_MAIN_RAM_BASE_ADDR = 32'h10000000;

  /**
   * Peripheral size in bytes for ram device on sram_ctrl_main in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_SRAM_CTRL_MAIN_RAM_SIZE_BYTES = 32'h10000;

  /**
   * Peripheral base address for regs device on sram_ctrl_mbox in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_SRAM_CTRL_MBOX_REGS_BASE_ADDR = 32'h211D0000;

  /**
   * Peripheral size in bytes for regs device on sram_ctrl_mbox in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_SRAM_CTRL_MBOX_REGS_SIZE_BYTES = 32'h40;

  /**
   * Peripheral base address for ram device on sram_ctrl_mbox in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_SRAM_CTRL_MBOX_RAM_BASE_ADDR = 32'h11000000;

  /**
   * Peripheral size in bytes for ram device on sram_ctrl_mbox in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_SRAM_CTRL_MBOX_RAM_SIZE_BYTES = 32'h1000;

  /**
   * Peripheral base address for regs device on rom_ctrl0 in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_ROM_CTRL0_REGS_BASE_ADDR = 32'h211E0000;

  /**
   * Peripheral size in bytes for regs device on rom_ctrl0 in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_ROM_CTRL0_REGS_SIZE_BYTES = 32'h80;

  /**
   * Peripheral base address for rom device on rom_ctrl0 in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_ROM_CTRL0_ROM_BASE_ADDR = 32'h8000;

  /**
   * Peripheral size in bytes for rom device on rom_ctrl0 in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_ROM_CTRL0_ROM_SIZE_BYTES = 32'h8000;

  /**
   * Peripheral base address for regs device on rom_ctrl1 in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_ROM_CTRL1_REGS_BASE_ADDR = 32'h211E1000;

  /**
   * Peripheral size in bytes for regs device on rom_ctrl1 in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_ROM_CTRL1_REGS_SIZE_BYTES = 32'h80;

  /**
   * Peripheral base address for rom device on rom_ctrl1 in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_ROM_CTRL1_ROM_BASE_ADDR = 32'h20000;

  /**
   * Peripheral size in bytes for rom device on rom_ctrl1 in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_ROM_CTRL1_ROM_SIZE_BYTES = 32'h10000;

  /**
   * Peripheral base address for dma in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_DMA_BASE_ADDR = 32'h22010000;

  /**
   * Peripheral size in bytes for dma in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_DMA_SIZE_BYTES = 32'h200;

  /**
   * Peripheral base address for core device on mbx0 in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_MBX0_CORE_BASE_ADDR = 32'h22000000;

  /**
   * Peripheral size in bytes for core device on mbx0 in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_MBX0_CORE_SIZE_BYTES = 32'h80;

  /**
   * Peripheral base address for core device on mbx1 in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_MBX1_CORE_BASE_ADDR = 32'h22000100;

  /**
   * Peripheral size in bytes for core device on mbx1 in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_MBX1_CORE_SIZE_BYTES = 32'h80;

  /**
   * Peripheral base address for core device on mbx2 in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_MBX2_CORE_BASE_ADDR = 32'h22000200;

  /**
   * Peripheral size in bytes for core device on mbx2 in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_MBX2_CORE_SIZE_BYTES = 32'h80;

  /**
   * Peripheral base address for core device on mbx3 in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_MBX3_CORE_BASE_ADDR = 32'h22000300;

  /**
   * Peripheral size in bytes for core device on mbx3 in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_MBX3_CORE_SIZE_BYTES = 32'h80;

  /**
   * Peripheral base address for core device on mbx4 in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_MBX4_CORE_BASE_ADDR = 32'h22000400;

  /**
   * Peripheral size in bytes for core device on mbx4 in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_MBX4_CORE_SIZE_BYTES = 32'h80;

  /**
   * Peripheral base address for core device on mbx5 in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_MBX5_CORE_BASE_ADDR = 32'h22000500;

  /**
   * Peripheral size in bytes for core device on mbx5 in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_MBX5_CORE_SIZE_BYTES = 32'h80;

  /**
   * Peripheral base address for core device on mbx6 in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_MBX6_CORE_BASE_ADDR = 32'h22000600;

  /**
   * Peripheral size in bytes for core device on mbx6 in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_MBX6_CORE_SIZE_BYTES = 32'h80;

  /**
   * Peripheral base address for core device on mbx_jtag in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_MBX_JTAG_CORE_BASE_ADDR = 32'h22000800;

  /**
   * Peripheral size in bytes for core device on mbx_jtag in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_MBX_JTAG_CORE_SIZE_BYTES = 32'h80;

  /**
   * Peripheral base address for core device on mbx_pcie0 in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_MBX_PCIE0_CORE_BASE_ADDR = 32'h22040000;

  /**
   * Peripheral size in bytes for core device on mbx_pcie0 in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_MBX_PCIE0_CORE_SIZE_BYTES = 32'h80;

  /**
   * Peripheral base address for core device on mbx_pcie1 in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_MBX_PCIE1_CORE_BASE_ADDR = 32'h22040100;

  /**
   * Peripheral size in bytes for core device on mbx_pcie1 in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_MBX_PCIE1_CORE_SIZE_BYTES = 32'h80;

  /**
   * Peripheral base address for core device on soc_dbg_ctrl in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_SOC_DBG_CTRL_CORE_BASE_ADDR = 32'h30170000;

  /**
   * Peripheral size in bytes for core device on soc_dbg_ctrl in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_SOC_DBG_CTRL_CORE_SIZE_BYTES = 32'h20;

  /**
   * Peripheral base address for cfg device on rv_core_ibex in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_RV_CORE_IBEX_CFG_BASE_ADDR = 32'h211F0000;

  /**
   * Peripheral size in bytes for cfg device on rv_core_ibex in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_RV_CORE_IBEX_CFG_SIZE_BYTES = 32'h800;

  /**
   * Memory base address for ctn in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_CTN_BASE_ADDR = 32'h40000000;

  /**
   * Memory size for ctn in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_CTN_SIZE_BYTES = 32'h40000000;

  /**
  * Memory base address for ram_ctn in top darjeeling.
  */
  parameter int unsigned TOP_DARJEELING_RAM_CTN_BASE_ADDR = 32'h41000000;

  /**
  * Memory size for ram_ctn in top darjeeling.
  */
  parameter int unsigned TOP_DARJEELING_RAM_CTN_SIZE_BYTES = 32'h100000;

  /**
   * Memory base address for ram_ret_aon in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_RAM_RET_AON_BASE_ADDR = 32'h30600000;

  /**
   * Memory size for ram_ret_aon in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_RAM_RET_AON_SIZE_BYTES = 32'h1000;

  /**
   * Memory base address for ram_main in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_RAM_MAIN_BASE_ADDR = 32'h10000000;

  /**
   * Memory size for ram_main in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_RAM_MAIN_SIZE_BYTES = 32'h10000;

  /**
   * Memory base address for ram_mbox in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_RAM_MBOX_BASE_ADDR = 32'h11000000;

  /**
   * Memory size for ram_mbox in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_RAM_MBOX_SIZE_BYTES = 32'h1000;

  /**
   * Memory base address for rom0 in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_ROM0_BASE_ADDR = 32'h8000;

  /**
   * Memory size for rom0 in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_ROM0_SIZE_BYTES = 32'h8000;

  /**
   * Memory base address for rom1 in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_ROM1_BASE_ADDR = 32'h20000;

  /**
   * Memory size for rom1 in top darjeeling.
   */
  parameter int unsigned TOP_DARJEELING_ROM1_SIZE_BYTES = 32'h10000;


  // Enumeration of alert modules
  typedef enum int unsigned {
    TopDarjeelingAlertPeripheralUart0 = 0,
    TopDarjeelingAlertPeripheralGpio = 1,
    TopDarjeelingAlertPeripheralSpiDevice = 2,
    TopDarjeelingAlertPeripheralI2c0 = 3,
    TopDarjeelingAlertPeripheralRvTimer = 4,
    TopDarjeelingAlertPeripheralOtpCtrl = 5,
    TopDarjeelingAlertPeripheralLcCtrl = 6,
    TopDarjeelingAlertPeripheralSpiHost0 = 7,
    TopDarjeelingAlertPeripheralPwrmgrAon = 8,
    TopDarjeelingAlertPeripheralRstmgrAon = 9,
    TopDarjeelingAlertPeripheralClkmgrAon = 10,
    TopDarjeelingAlertPeripheralPinmuxAon = 11,
    TopDarjeelingAlertPeripheralAonTimerAon = 12,
    TopDarjeelingAlertPeripheralSramCtrlRetAon = 13,
    TopDarjeelingAlertPeripheralRvDm = 14,
    TopDarjeelingAlertPeripheralRvPlic = 15,
    TopDarjeelingAlertPeripheralAes = 16,
    TopDarjeelingAlertPeripheralHmac = 17,
    TopDarjeelingAlertPeripheralKmac = 18,
    TopDarjeelingAlertPeripheralOtbn = 19,
    TopDarjeelingAlertPeripheralKeymgrDpe = 20,
    TopDarjeelingAlertPeripheralCsrng = 21,
    TopDarjeelingAlertPeripheralEdn0 = 22,
    TopDarjeelingAlertPeripheralEdn1 = 23,
    TopDarjeelingAlertPeripheralSramCtrlMain = 24,
    TopDarjeelingAlertPeripheralSramCtrlMbox = 25,
    TopDarjeelingAlertPeripheralRomCtrl0 = 26,
    TopDarjeelingAlertPeripheralRomCtrl1 = 27,
    TopDarjeelingAlertPeripheralDma = 28,
    TopDarjeelingAlertPeripheralMbx0 = 29,
    TopDarjeelingAlertPeripheralMbx1 = 30,
    TopDarjeelingAlertPeripheralMbx2 = 31,
    TopDarjeelingAlertPeripheralMbx3 = 32,
    TopDarjeelingAlertPeripheralMbx4 = 33,
    TopDarjeelingAlertPeripheralMbx5 = 34,
    TopDarjeelingAlertPeripheralMbx6 = 35,
    TopDarjeelingAlertPeripheralMbxJtag = 36,
    TopDarjeelingAlertPeripheralMbxPcie0 = 37,
    TopDarjeelingAlertPeripheralMbxPcie1 = 38,
    TopDarjeelingAlertPeripheralSocDbgCtrl = 39,
    TopDarjeelingAlertPeripheralRaclCtrl = 40,
    TopDarjeelingAlertPeripheralAcRangeCheck = 41,
    TopDarjeelingAlertPeripheralRvCoreIbex = 42,
    TopDarjeelingAlertPeripheralCount
  } alert_peripheral_e;

  // Enumeration of alerts
  typedef enum int unsigned {
    TopDarjeelingAlertIdUart0FatalFault = 0,
    TopDarjeelingAlertIdGpioFatalFault = 1,
    TopDarjeelingAlertIdSpiDeviceFatalFault = 2,
    TopDarjeelingAlertIdI2c0FatalFault = 3,
    TopDarjeelingAlertIdRvTimerFatalFault = 4,
    TopDarjeelingAlertIdOtpCtrlFatalMacroError = 5,
    TopDarjeelingAlertIdOtpCtrlFatalCheckError = 6,
    TopDarjeelingAlertIdOtpCtrlFatalBusIntegError = 7,
    TopDarjeelingAlertIdOtpCtrlFatalPrimOtpAlert = 8,
    TopDarjeelingAlertIdOtpCtrlRecovPrimOtpAlert = 9,
    TopDarjeelingAlertIdLcCtrlFatalProgError = 10,
    TopDarjeelingAlertIdLcCtrlFatalStateError = 11,
    TopDarjeelingAlertIdLcCtrlFatalBusIntegError = 12,
    TopDarjeelingAlertIdSpiHost0FatalFault = 13,
    TopDarjeelingAlertIdPwrmgrAonFatalFault = 14,
    TopDarjeelingAlertIdRstmgrAonFatalFault = 15,
    TopDarjeelingAlertIdRstmgrAonFatalCnstyFault = 16,
    TopDarjeelingAlertIdClkmgrAonRecovFault = 17,
    TopDarjeelingAlertIdClkmgrAonFatalFault = 18,
    TopDarjeelingAlertIdPinmuxAonFatalFault = 19,
    TopDarjeelingAlertIdAonTimerAonFatalFault = 20,
    TopDarjeelingAlertIdSramCtrlRetAonFatalError = 21,
    TopDarjeelingAlertIdRvDmFatalFault = 22,
    TopDarjeelingAlertIdRvPlicFatalFault = 23,
    TopDarjeelingAlertIdAesRecovCtrlUpdateErr = 24,
    TopDarjeelingAlertIdAesFatalFault = 25,
    TopDarjeelingAlertIdHmacFatalFault = 26,
    TopDarjeelingAlertIdKmacRecovOperationErr = 27,
    TopDarjeelingAlertIdKmacFatalFaultErr = 28,
    TopDarjeelingAlertIdOtbnFatal = 29,
    TopDarjeelingAlertIdOtbnRecov = 30,
    TopDarjeelingAlertIdKeymgrDpeRecovOperationErr = 31,
    TopDarjeelingAlertIdKeymgrDpeFatalFaultErr = 32,
    TopDarjeelingAlertIdCsrngRecovAlert = 33,
    TopDarjeelingAlertIdCsrngFatalAlert = 34,
    TopDarjeelingAlertIdEdn0RecovAlert = 35,
    TopDarjeelingAlertIdEdn0FatalAlert = 36,
    TopDarjeelingAlertIdEdn1RecovAlert = 37,
    TopDarjeelingAlertIdEdn1FatalAlert = 38,
    TopDarjeelingAlertIdSramCtrlMainFatalError = 39,
    TopDarjeelingAlertIdSramCtrlMboxFatalError = 40,
    TopDarjeelingAlertIdRomCtrl0Fatal = 41,
    TopDarjeelingAlertIdRomCtrl1Fatal = 42,
    TopDarjeelingAlertIdDmaFatalFault = 43,
    TopDarjeelingAlertIdMbx0FatalFault = 44,
    TopDarjeelingAlertIdMbx0RecovFault = 45,
    TopDarjeelingAlertIdMbx1FatalFault = 46,
    TopDarjeelingAlertIdMbx1RecovFault = 47,
    TopDarjeelingAlertIdMbx2FatalFault = 48,
    TopDarjeelingAlertIdMbx2RecovFault = 49,
    TopDarjeelingAlertIdMbx3FatalFault = 50,
    TopDarjeelingAlertIdMbx3RecovFault = 51,
    TopDarjeelingAlertIdMbx4FatalFault = 52,
    TopDarjeelingAlertIdMbx4RecovFault = 53,
    TopDarjeelingAlertIdMbx5FatalFault = 54,
    TopDarjeelingAlertIdMbx5RecovFault = 55,
    TopDarjeelingAlertIdMbx6FatalFault = 56,
    TopDarjeelingAlertIdMbx6RecovFault = 57,
    TopDarjeelingAlertIdMbxJtagFatalFault = 58,
    TopDarjeelingAlertIdMbxJtagRecovFault = 59,
    TopDarjeelingAlertIdMbxPcie0FatalFault = 60,
    TopDarjeelingAlertIdMbxPcie0RecovFault = 61,
    TopDarjeelingAlertIdMbxPcie1FatalFault = 62,
    TopDarjeelingAlertIdMbxPcie1RecovFault = 63,
    TopDarjeelingAlertIdSocDbgCtrlFatalFault = 64,
    TopDarjeelingAlertIdSocDbgCtrlRecovCtrlUpdateErr = 65,
    TopDarjeelingAlertIdRaclCtrlFatalFault = 66,
    TopDarjeelingAlertIdRaclCtrlRecovCtrlUpdateErr = 67,
    TopDarjeelingAlertIdAcRangeCheckRecovCtrlUpdateErr = 68,
    TopDarjeelingAlertIdAcRangeCheckFatalFault = 69,
    TopDarjeelingAlertIdRvCoreIbexFatalSwErr = 70,
    TopDarjeelingAlertIdRvCoreIbexRecovSwErr = 71,
    TopDarjeelingAlertIdRvCoreIbexFatalHwErr = 72,
    TopDarjeelingAlertIdRvCoreIbexRecovHwErr = 73,
    TopDarjeelingAlertIdCount
  } alert_id_e;

  // Enumeration of mio incoming alerts
  typedef enum int unsigned {
    TopDarjeelingIncomingAlertMioIdRvTimerFatalFault = 0,
    TopDarjeelingIncomingAlertMioIdAonTimerAonFatalFault = 1,
    TopDarjeelingIncomingAlertMioIdSramCtrlRetAonFatalError = 2,
    TopDarjeelingIncomingAlertMioIdRvDmFatalFault = 3,
    TopDarjeelingIncomingAlertMioIdRvPlicMioFatalFault = 4,
    TopDarjeelingIncomingAlertMioIdSramCtrlMainFatalError = 5,
    TopDarjeelingIncomingAlertMioIdSramCtrlMboxFatalError = 6,
    TopDarjeelingIncomingAlertMioIdDmaFatalFault = 7,
    TopDarjeelingIncomingAlertMioIdMbx0FatalFault = 8,
    TopDarjeelingIncomingAlertMioIdMbx0RecovFault = 9,
    TopDarjeelingIncomingAlertMioIdMbx1FatalFault = 10,
    TopDarjeelingIncomingAlertMioIdMbx1RecovFault = 11,
    TopDarjeelingIncomingAlertMioIdMbx2FatalFault = 12,
    TopDarjeelingIncomingAlertMioIdMbx2RecovFault = 13,
    TopDarjeelingIncomingAlertMioIdMbx3FatalFault = 14,
    TopDarjeelingIncomingAlertMioIdMbx3RecovFault = 15,
    TopDarjeelingIncomingAlertMioIdMbx4FatalFault = 16,
    TopDarjeelingIncomingAlertMioIdMbx4RecovFault = 17,
    TopDarjeelingIncomingAlertMioIdMbx5FatalFault = 18,
    TopDarjeelingIncomingAlertMioIdMbx5RecovFault = 19,
    TopDarjeelingIncomingAlertMioIdMbxPcie0FatalFault = 20,
    TopDarjeelingIncomingAlertMioIdMbxPcie0RecovFault = 21,
    TopDarjeelingIncomingAlertMioIdRaclCtrlFatalFault = 22,
    TopDarjeelingIncomingAlertMioIdRaclCtrlRecovCtrlUpdateErr = 23,
    TopDarjeelingIncomingAlertMioIdAcRangeCheckRecovCtrlUpdateErr = 24,
    TopDarjeelingIncomingAlertMioIdAcRangeCheckFatalFault = 25,
    TopDarjeelingIncomingAlertMioIdRvCoreIbexMioFatalSwErr = 26,
    TopDarjeelingIncomingAlertMioIdRvCoreIbexMioRecovSwErr = 27,
    TopDarjeelingIncomingAlertMioIdRvCoreIbexMioFatalHwErr = 28,
    TopDarjeelingIncomingAlertMioIdRvCoreIbexMioRecovHwErr = 29,
    TopDarjeelingIncomingAlertMioIdCount
  } outgoing_alert_mio_id_e;

  // Number of mio incoming alerts
  parameter int unsigned NIncomingAlertsMio = 30;

  // Number of LPGs for incoming alert group mio
  parameter int unsigned NIncomingLpgsMio = 2;

  // Enumeration of pwc incoming alerts
  typedef enum int unsigned {
    TopDarjeelingIncomingAlertPwcIdGpioFatalFault = 0,
    TopDarjeelingIncomingAlertPwcIdRvTimerFatalFault = 1,
    TopDarjeelingIncomingAlertPwcIdAonTimerAonFatalFault = 2,
    TopDarjeelingIncomingAlertPwcIdSramCtrlRetAonFatalError = 3,
    TopDarjeelingIncomingAlertPwcIdRvDmFatalFault = 4,
    TopDarjeelingIncomingAlertPwcIdRvPlicPwcFatalFault = 5,
    TopDarjeelingIncomingAlertPwcIdSramCtrlMainFatalError = 6,
    TopDarjeelingIncomingAlertPwcIdSramCtrlMboxFatalError = 7,
    TopDarjeelingIncomingAlertPwcIdDmaFatalFault = 8,
    TopDarjeelingIncomingAlertPwcIdMbx0FatalFault = 9,
    TopDarjeelingIncomingAlertPwcIdMbx0RecovFault = 10,
    TopDarjeelingIncomingAlertPwcIdMbx1FatalFault = 11,
    TopDarjeelingIncomingAlertPwcIdMbx1RecovFault = 12,
    TopDarjeelingIncomingAlertPwcIdMbx2FatalFault = 13,
    TopDarjeelingIncomingAlertPwcIdMbx2RecovFault = 14,
    TopDarjeelingIncomingAlertPwcIdMbx3FatalFault = 15,
    TopDarjeelingIncomingAlertPwcIdMbx3RecovFault = 16,
    TopDarjeelingIncomingAlertPwcIdMbx4FatalFault = 17,
    TopDarjeelingIncomingAlertPwcIdMbx4RecovFault = 18,
    TopDarjeelingIncomingAlertPwcIdMbx5FatalFault = 19,
    TopDarjeelingIncomingAlertPwcIdMbx5RecovFault = 20,
    TopDarjeelingIncomingAlertPwcIdMbxPcie0FatalFault = 21,
    TopDarjeelingIncomingAlertPwcIdMbxPcie0RecovFault = 22,
    TopDarjeelingIncomingAlertPwcIdRaclCtrlFatalFault = 23,
    TopDarjeelingIncomingAlertPwcIdRaclCtrlRecovCtrlUpdateErr = 24,
    TopDarjeelingIncomingAlertPwcIdAcRangeCheckRecovCtrlUpdateErr = 25,
    TopDarjeelingIncomingAlertPwcIdAcRangeCheckFatalFault = 26,
    TopDarjeelingIncomingAlertPwcIdRvCoreIbexPwcFatalSwErr = 27,
    TopDarjeelingIncomingAlertPwcIdRvCoreIbexPwcRecovSwErr = 28,
    TopDarjeelingIncomingAlertPwcIdRvCoreIbexPwcFatalHwErr = 29,
    TopDarjeelingIncomingAlertPwcIdRvCoreIbexPwcRecovHwErr = 30,
    TopDarjeelingIncomingAlertPwcIdCount
  } outgoing_alert_pwc_id_e;

  // Number of pwc incoming alerts
  parameter int unsigned NIncomingAlertsPwc = 31;

  // Number of LPGs for incoming alert group pwc
  parameter int unsigned NIncomingLpgsPwc = 2;

  // Enumeration of mio_extra_alerts incoming alerts
  typedef enum int unsigned {
    TopDarjeelingIncomingAlertMioExtraAlertsIdIntegError = 0,
    TopDarjeelingIncomingAlertMioExtraAlertsIdCount
  } outgoing_alert_mio_extra_alerts_id_e;

  // Number of mio_extra_alerts incoming alerts
  parameter int unsigned NIncomingAlertsMio_extra_alerts = 1;

  // Number of LPGs for incoming alert group mio_extra_alerts
  parameter int unsigned NIncomingLpgsMio_extra_alerts = 1;

  // Enumeration of pwc_extra_alerts incoming alerts
  typedef enum int unsigned {
    TopDarjeelingIncomingAlertPwcExtraAlertsIdIntegError = 0,
    TopDarjeelingIncomingAlertPwcExtraAlertsIdCount
  } outgoing_alert_pwc_extra_alerts_id_e;

  // Number of pwc_extra_alerts incoming alerts
  parameter int unsigned NIncomingAlertsPwc_extra_alerts = 1;

  // Number of LPGs for incoming alert group pwc_extra_alerts
  parameter int unsigned NIncomingLpgsPwc_extra_alerts = 1;

  // Enumeration of rot_extra_alerts incoming alerts
  typedef enum int unsigned {
    TopDarjeelingIncomingAlertRotExtraAlertsIdAmsIpWrapperIntegError = 0,
    TopDarjeelingIncomingAlertRotExtraAlertsIdAmsIpWrapperCsrngRecov = 1,
    TopDarjeelingIncomingAlertRotExtraAlertsIdRcWidgetIntegError = 2,
    TopDarjeelingIncomingAlertRotExtraAlertsIdRotHdrIntegError = 3,
    TopDarjeelingIncomingAlertRotExtraAlertsIdRotPcieAdapterIntegError = 4,
    TopDarjeelingIncomingAlertRotExtraAlertsIdRasCtlResetAlert = 5,
    TopDarjeelingIncomingAlertRotExtraAlertsIdScsRaiAlertTrigger = 6,
    TopDarjeelingIncomingAlertRotExtraAlertsIdLsioGroupAEscErr0 = 7,
    TopDarjeelingIncomingAlertRotExtraAlertsIdLsioGroupAEscErr1 = 8,
    TopDarjeelingIncomingAlertRotExtraAlertsIdLsioGroupAEscErr2 = 9,
    TopDarjeelingIncomingAlertRotExtraAlertsIdLsioGroupAEscErr3 = 10,
    TopDarjeelingIncomingAlertRotExtraAlertsIdLsioGroupBEscErr0 = 11,
    TopDarjeelingIncomingAlertRotExtraAlertsIdLsioGroupBEscErr1 = 12,
    TopDarjeelingIncomingAlertRotExtraAlertsIdLsioGroupBEscErr2 = 13,
    TopDarjeelingIncomingAlertRotExtraAlertsIdLsioGroupBEscErr3 = 14,
    TopDarjeelingIncomingAlertRotExtraAlertsIdLsioGroupCEscErr0 = 15,
    TopDarjeelingIncomingAlertRotExtraAlertsIdLsioGroupCEscErr1 = 16,
    TopDarjeelingIncomingAlertRotExtraAlertsIdLsioGroupCEscErr2 = 17,
    TopDarjeelingIncomingAlertRotExtraAlertsIdLsioGroupCEscErr3 = 18,
    TopDarjeelingIncomingAlertRotExtraAlertsIdLsioGroupDEscErr0 = 19,
    TopDarjeelingIncomingAlertRotExtraAlertsIdLsioGroupDEscErr1 = 20,
    TopDarjeelingIncomingAlertRotExtraAlertsIdLsioGroupDEscErr2 = 21,
    TopDarjeelingIncomingAlertRotExtraAlertsIdLsioGroupDEscErr3 = 22,
    TopDarjeelingIncomingAlertRotExtraAlertsIdLsioGroupATimerRstReq = 23,
    TopDarjeelingIncomingAlertRotExtraAlertsIdLsioGroupBTimerRstReq = 24,
    TopDarjeelingIncomingAlertRotExtraAlertsIdLsioGroupCTimerRstReq = 25,
    TopDarjeelingIncomingAlertRotExtraAlertsIdLsioGroupDTimerRstReq = 26,
    TopDarjeelingIncomingAlertRotExtraAlertsIdCount
  } outgoing_alert_rot_extra_alerts_id_e;

  // Number of rot_extra_alerts incoming alerts
  parameter int unsigned NIncomingAlertsRot_extra_alerts = 27;

  // Number of LPGs for incoming alert group rot_extra_alerts
  parameter int unsigned NIncomingLpgsRot_extra_alerts = 1;

  // Enumeration of other_extra_alerts incoming alerts
  typedef enum int unsigned {
    TopDarjeelingIncomingAlertOtherExtraAlertsIdSsramLoIntegErr = 0,
    TopDarjeelingIncomingAlertOtherExtraAlertsIdSsramHiIntegErr = 1,
    TopDarjeelingIncomingAlertOtherExtraAlertsIdScsifregsRaclCtrlFatalFault = 2,
    TopDarjeelingIncomingAlertOtherExtraAlertsIdScsifregsRaclCtrlRecovCtrlUpdateErr = 3,
    TopDarjeelingIncomingAlertOtherExtraAlertsIdScsifregsErr = 4,
    TopDarjeelingIncomingAlertOtherExtraAlertsIdScsctnif0CtnAcRangeRecovErr = 5,
    TopDarjeelingIncomingAlertOtherExtraAlertsIdScsctnif0CtnAcRangeFatalErr = 6,
    TopDarjeelingIncomingAlertOtherExtraAlertsIdScsctnif0BcastAcRangeRecovErr = 7,
    TopDarjeelingIncomingAlertOtherExtraAlertsIdScsctnif0BcastAcRangeFatalErr = 8,
    TopDarjeelingIncomingAlertOtherExtraAlertsIdScsctnif1CtnAcRangeRecovErr = 9,
    TopDarjeelingIncomingAlertOtherExtraAlertsIdScsctnif1CtnAcRangeFatalErr = 10,
    TopDarjeelingIncomingAlertOtherExtraAlertsIdNsgrpRaclCtrlFatalFault = 11,
    TopDarjeelingIncomingAlertOtherExtraAlertsIdNsgrpRaclCtrlRecovCtrlUpdateErr = 12,
    TopDarjeelingIncomingAlertOtherExtraAlertsIdNsefuseBusIntegErr = 13,
    TopDarjeelingIncomingAlertOtherExtraAlertsIdNsefusePrimFatalErr = 14,
    TopDarjeelingIncomingAlertOtherExtraAlertsIdNsefusePrimRecovErr = 15,
    TopDarjeelingIncomingAlertOtherExtraAlertsIdNsefuseApbAdapterIntegErr = 16,
    TopDarjeelingIncomingAlertOtherExtraAlertsIdLioGroupVRaclCtrlFatalFault = 17,
    TopDarjeelingIncomingAlertOtherExtraAlertsIdLioGroupVRaclCtrlRecovCtrlUpdateErr = 18,
    TopDarjeelingIncomingAlertOtherExtraAlertsIdLioGroupVIntegError = 19,
    TopDarjeelingIncomingAlertOtherExtraAlertsIdLioGroupPRaclCtrlFatalFault = 20,
    TopDarjeelingIncomingAlertOtherExtraAlertsIdLioGroupPRaclCtrlRecovCtrlUpdateErr = 21,
    TopDarjeelingIncomingAlertOtherExtraAlertsIdLioGroupPIntegError = 22,
    TopDarjeelingIncomingAlertOtherExtraAlertsIdCount
  } outgoing_alert_other_extra_alerts_id_e;

  // Number of other_extra_alerts incoming alerts
  parameter int unsigned NIncomingAlertsOther_extra_alerts = 23;

  // Number of LPGs for incoming alert group other_extra_alerts
  parameter int unsigned NIncomingLpgsOther_extra_alerts = 1;

  // Enumeration of interrupts
  typedef enum int unsigned {
    TopDarjeelingIrqIdUart0TxWatermark = 1,
    TopDarjeelingIrqIdUart0RxWatermark = 2,
    TopDarjeelingIrqIdUart0TxDone = 3,
    TopDarjeelingIrqIdUart0RxOverflow = 4,
    TopDarjeelingIrqIdUart0RxFrameErr = 5,
    TopDarjeelingIrqIdUart0RxBreakErr = 6,
    TopDarjeelingIrqIdUart0RxTimeout = 7,
    TopDarjeelingIrqIdUart0RxParityErr = 8,
    TopDarjeelingIrqIdUart0TxEmpty = 9,
    TopDarjeelingIrqIdGpioGpio0 = 10,
    TopDarjeelingIrqIdGpioGpio1 = 11,
    TopDarjeelingIrqIdGpioGpio2 = 12,
    TopDarjeelingIrqIdGpioGpio3 = 13,
    TopDarjeelingIrqIdGpioGpio4 = 14,
    TopDarjeelingIrqIdGpioGpio5 = 15,
    TopDarjeelingIrqIdGpioGpio6 = 16,
    TopDarjeelingIrqIdGpioGpio7 = 17,
    TopDarjeelingIrqIdGpioGpio8 = 18,
    TopDarjeelingIrqIdGpioGpio9 = 19,
    TopDarjeelingIrqIdGpioGpio10 = 20,
    TopDarjeelingIrqIdGpioGpio11 = 21,
    TopDarjeelingIrqIdGpioGpio12 = 22,
    TopDarjeelingIrqIdGpioGpio13 = 23,
    TopDarjeelingIrqIdGpioGpio14 = 24,
    TopDarjeelingIrqIdGpioGpio15 = 25,
    TopDarjeelingIrqIdGpioGpio16 = 26,
    TopDarjeelingIrqIdGpioGpio17 = 27,
    TopDarjeelingIrqIdGpioGpio18 = 28,
    TopDarjeelingIrqIdGpioGpio19 = 29,
    TopDarjeelingIrqIdGpioGpio20 = 30,
    TopDarjeelingIrqIdGpioGpio21 = 31,
    TopDarjeelingIrqIdGpioGpio22 = 32,
    TopDarjeelingIrqIdGpioGpio23 = 33,
    TopDarjeelingIrqIdGpioGpio24 = 34,
    TopDarjeelingIrqIdGpioGpio25 = 35,
    TopDarjeelingIrqIdGpioGpio26 = 36,
    TopDarjeelingIrqIdGpioGpio27 = 37,
    TopDarjeelingIrqIdGpioGpio28 = 38,
    TopDarjeelingIrqIdGpioGpio29 = 39,
    TopDarjeelingIrqIdGpioGpio30 = 40,
    TopDarjeelingIrqIdGpioGpio31 = 41,
    TopDarjeelingIrqIdSpiDeviceUploadCmdfifoNotEmpty = 42,
    TopDarjeelingIrqIdSpiDeviceUploadPayloadNotEmpty = 43,
    TopDarjeelingIrqIdSpiDeviceUploadPayloadOverflow = 44,
    TopDarjeelingIrqIdSpiDeviceReadbufWatermark = 45,
    TopDarjeelingIrqIdSpiDeviceReadbufFlip = 46,
    TopDarjeelingIrqIdSpiDeviceTpmHeaderNotEmpty = 47,
    TopDarjeelingIrqIdSpiDeviceTpmRdfifoCmdEnd = 48,
    TopDarjeelingIrqIdSpiDeviceTpmRdfifoDrop = 49,
    TopDarjeelingIrqIdI2c0FmtThreshold = 50,
    TopDarjeelingIrqIdI2c0RxThreshold = 51,
    TopDarjeelingIrqIdI2c0AcqThreshold = 52,
    TopDarjeelingIrqIdI2c0RxOverflow = 53,
    TopDarjeelingIrqIdI2c0ControllerHalt = 54,
    TopDarjeelingIrqIdI2c0SclInterference = 55,
    TopDarjeelingIrqIdI2c0SdaInterference = 56,
    TopDarjeelingIrqIdI2c0StretchTimeout = 57,
    TopDarjeelingIrqIdI2c0SdaUnstable = 58,
    TopDarjeelingIrqIdI2c0CmdComplete = 59,
    TopDarjeelingIrqIdI2c0TxStretch = 60,
    TopDarjeelingIrqIdI2c0TxThreshold = 61,
    TopDarjeelingIrqIdI2c0AcqStretch = 62,
    TopDarjeelingIrqIdI2c0UnexpStop = 63,
    TopDarjeelingIrqIdI2c0HostTimeout = 64,
    TopDarjeelingIrqIdRvTimerTimerExpiredHart0Timer0 = 65,
    TopDarjeelingIrqIdOtpCtrlOtpOperationDone = 66,
    TopDarjeelingIrqIdOtpCtrlOtpError = 67,
    TopDarjeelingIrqIdAlertHandlerClassa = 68,
    TopDarjeelingIrqIdAlertHandlerClassb = 69,
    TopDarjeelingIrqIdAlertHandlerClassc = 70,
    TopDarjeelingIrqIdAlertHandlerClassd = 71,
    TopDarjeelingIrqIdSpiHost0Error = 72,
    TopDarjeelingIrqIdSpiHost0SpiEvent = 73,
    TopDarjeelingIrqIdPwrmgrAonWakeup = 74,
    TopDarjeelingIrqIdAonTimerAonWkupTimerExpired = 75,
    TopDarjeelingIrqIdAonTimerAonWdogTimerBark = 76,
    TopDarjeelingIrqIdHmacHmacDone = 77,
    TopDarjeelingIrqIdHmacFifoEmpty = 78,
    TopDarjeelingIrqIdHmacHmacErr = 79,
    TopDarjeelingIrqIdKmacKmacDone = 80,
    TopDarjeelingIrqIdKmacFifoEmpty = 81,
    TopDarjeelingIrqIdKmacKmacErr = 82,
    TopDarjeelingIrqIdOtbnDone = 83,
    TopDarjeelingIrqIdKeymgrDpeOpDone = 84,
    TopDarjeelingIrqIdCsrngCsCmdReqDone = 85,
    TopDarjeelingIrqIdCsrngCsEntropyReq = 86,
    TopDarjeelingIrqIdCsrngCsHwInstExc = 87,
    TopDarjeelingIrqIdCsrngCsFatalErr = 88,
    TopDarjeelingIrqIdEdn0EdnCmdReqDone = 89,
    TopDarjeelingIrqIdEdn0EdnFatalErr = 90,
    TopDarjeelingIrqIdEdn1EdnCmdReqDone = 91,
    TopDarjeelingIrqIdEdn1EdnFatalErr = 92,
    TopDarjeelingIrqIdDmaDmaDone = 93,
    TopDarjeelingIrqIdDmaDmaChunkDone = 94,
    TopDarjeelingIrqIdDmaDmaError = 95,
    TopDarjeelingIrqIdMbx0MbxReady = 96,
    TopDarjeelingIrqIdMbx0MbxAbort = 97,
    TopDarjeelingIrqIdMbx0MbxError = 98,
    TopDarjeelingIrqIdMbx1MbxReady = 99,
    TopDarjeelingIrqIdMbx1MbxAbort = 100,
    TopDarjeelingIrqIdMbx1MbxError = 101,
    TopDarjeelingIrqIdMbx2MbxReady = 102,
    TopDarjeelingIrqIdMbx2MbxAbort = 103,
    TopDarjeelingIrqIdMbx2MbxError = 104,
    TopDarjeelingIrqIdMbx3MbxReady = 105,
    TopDarjeelingIrqIdMbx3MbxAbort = 106,
    TopDarjeelingIrqIdMbx3MbxError = 107,
    TopDarjeelingIrqIdMbx4MbxReady = 108,
    TopDarjeelingIrqIdMbx4MbxAbort = 109,
    TopDarjeelingIrqIdMbx4MbxError = 110,
    TopDarjeelingIrqIdMbx5MbxReady = 111,
    TopDarjeelingIrqIdMbx5MbxAbort = 112,
    TopDarjeelingIrqIdMbx5MbxError = 113,
    TopDarjeelingIrqIdMbx6MbxReady = 114,
    TopDarjeelingIrqIdMbx6MbxAbort = 115,
    TopDarjeelingIrqIdMbx6MbxError = 116,
    TopDarjeelingIrqIdMbxJtagMbxReady = 117,
    TopDarjeelingIrqIdMbxJtagMbxAbort = 118,
    TopDarjeelingIrqIdMbxJtagMbxError = 119,
    TopDarjeelingIrqIdMbxPcie0MbxReady = 120,
    TopDarjeelingIrqIdMbxPcie0MbxAbort = 121,
    TopDarjeelingIrqIdMbxPcie0MbxError = 122,
    TopDarjeelingIrqIdMbxPcie1MbxReady = 123,
    TopDarjeelingIrqIdMbxPcie1MbxAbort = 124,
    TopDarjeelingIrqIdMbxPcie1MbxError = 125,
    TopDarjeelingIrqIdRaclCtrlRaclError = 126,
    TopDarjeelingIrqIdAcRangeCheckDenyCntReached = 127,
    TopDarjeelingIrqIdRotHdrIpiFromDuc = 128,
    TopDarjeelingIrqIdRotHdrIpiFromMio = 129,
    TopDarjeelingIrqIdRotHdrIpiFromPwc = 130,
    TopDarjeelingIrqIdRotHdrIpiFromRot2 = 131,
    TopDarjeelingIrqIdRotHdrIpiFromRot1 = 132,
    TopDarjeelingIrqIdRotHdrIpiFromRot0 = 133,
    TopDarjeelingIrqIdLioGrpCIbexIrq = 134,
    TopDarjeelingIrqIdLioGrpBIbexIrq = 135,
    TopDarjeelingIrqIdLioGrpAIbexIrq = 136,
    TopDarjeelingIrqIdRasCtrlErrorIrq = 137,
    TopDarjeelingIrqIdAmsRefClkSlow = 138,
    TopDarjeelingIrqIdAmsRefClkFast = 139,
    TopDarjeelingIrqIdAmsAvgsGlitch = 140,
    TopDarjeelingIrqIdScsifregsRaclError = 141,
    TopDarjeelingIrqIdNsgrpRaclError = 142,
    TopDarjeelingIrqIdLioGrpVRaclError = 143,
    TopDarjeelingIrqIdLioGrpPRaclError = 144,
    TopDarjeelingIrqIdLioGrpDRaclError = 145,
    TopDarjeelingIrqIdLioGrpCRaclError = 146,
    TopDarjeelingIrqIdLioGrpBRaclError = 147,
    TopDarjeelingIrqIdLioGrpARaclError = 148,
    TopDarjeelingIrqIdPwcRaclError = 149,
    TopDarjeelingIrqIdMioRaclError = 150,
    TopDarjeelingIrqIdLioGrpAAlerthandlerClassA = 151,
    TopDarjeelingIrqIdLioGrpAAlerthandlerClassB = 152,
    TopDarjeelingIrqIdLioGrpAAlerthandlerClassC = 153,
    TopDarjeelingIrqIdLioGrpAAlerthandlerClassD = 154,
    TopDarjeelingIrqIdLioGrpBAlerthandlerClassA = 155,
    TopDarjeelingIrqIdLioGrpBAlerthandlerClassB = 156,
    TopDarjeelingIrqIdLioGrpBAlerthandlerClassC = 157,
    TopDarjeelingIrqIdLioGrpBAlerthandlerClassD = 158,
    TopDarjeelingIrqIdLioGrpCAlerthandlerClassA = 159,
    TopDarjeelingIrqIdLioGrpCAlerthandlerClassB = 160,
    TopDarjeelingIrqIdLioGrpCAlerthandlerClassC = 161,
    TopDarjeelingIrqIdLioGrpCAlerthandlerClassD = 162,
    TopDarjeelingIrqIdLioGrpDAlerthandlerClassA = 163,
    TopDarjeelingIrqIdLioGrpDAlerthandlerClassB = 164,
    TopDarjeelingIrqIdLioGrpDAlerthandlerClassC = 165,
    TopDarjeelingIrqIdLioGrpDAlerthandlerClassD = 166,
    TopDarjeelingIrqIdScsctnif0AcRangeCtnDenyCntReached = 167,
    TopDarjeelingIrqIdScsctnif0AcRangeBcastDenyCntReached = 168,
    TopDarjeelingIrqIdScsctnif1AcRangeCtnDenyCntReached = 169,
    TopDarjeelingIrqIdCount
  } interrupt_id_e;

  // Number of rot_external incoming interrupts
  parameter int unsigned NIncomingInterruptsRotExternal = 42;

  // Enumeration of interrupts for incoming group rot_external
  typedef enum int unsigned {
    TopDarjeelingIncomingIrqRotExternalIdRotHdrIpiFromDuc = 0,
    TopDarjeelingIncomingIrqRotExternalIdRotHdrIpiFromMio = 1,
    TopDarjeelingIncomingIrqRotExternalIdRotHdrIpiFromPwc = 2,
    TopDarjeelingIncomingIrqRotExternalIdRotHdrIpiFromRot2 = 3,
    TopDarjeelingIncomingIrqRotExternalIdRotHdrIpiFromRot1 = 4,
    TopDarjeelingIncomingIrqRotExternalIdRotHdrIpiFromRot0 = 5,
    TopDarjeelingIncomingIrqRotExternalIdLioGrpCIbexIrq = 6,
    TopDarjeelingIncomingIrqRotExternalIdLioGrpBIbexIrq = 7,
    TopDarjeelingIncomingIrqRotExternalIdLioGrpAIbexIrq = 8,
    TopDarjeelingIncomingIrqRotExternalIdRasCtrlErrorIrq = 9,
    TopDarjeelingIncomingIrqRotExternalIdAmsRefClkSlow = 10,
    TopDarjeelingIncomingIrqRotExternalIdAmsRefClkFast = 11,
    TopDarjeelingIncomingIrqRotExternalIdAmsAvgsGlitch = 12,
    TopDarjeelingIncomingIrqRotExternalIdScsifregsRaclError = 13,
    TopDarjeelingIncomingIrqRotExternalIdNsgrpRaclError = 14,
    TopDarjeelingIncomingIrqRotExternalIdLioGrpVRaclError = 15,
    TopDarjeelingIncomingIrqRotExternalIdLioGrpPRaclError = 16,
    TopDarjeelingIncomingIrqRotExternalIdLioGrpDRaclError = 17,
    TopDarjeelingIncomingIrqRotExternalIdLioGrpCRaclError = 18,
    TopDarjeelingIncomingIrqRotExternalIdLioGrpBRaclError = 19,
    TopDarjeelingIncomingIrqRotExternalIdLioGrpARaclError = 20,
    TopDarjeelingIncomingIrqRotExternalIdPwcRaclError = 21,
    TopDarjeelingIncomingIrqRotExternalIdMioRaclError = 22,
    TopDarjeelingIncomingIrqRotExternalIdLioGrpAAlerthandlerClassA = 23,
    TopDarjeelingIncomingIrqRotExternalIdLioGrpAAlerthandlerClassB = 24,
    TopDarjeelingIncomingIrqRotExternalIdLioGrpAAlerthandlerClassC = 25,
    TopDarjeelingIncomingIrqRotExternalIdLioGrpAAlerthandlerClassD = 26,
    TopDarjeelingIncomingIrqRotExternalIdLioGrpBAlerthandlerClassA = 27,
    TopDarjeelingIncomingIrqRotExternalIdLioGrpBAlerthandlerClassB = 28,
    TopDarjeelingIncomingIrqRotExternalIdLioGrpBAlerthandlerClassC = 29,
    TopDarjeelingIncomingIrqRotExternalIdLioGrpBAlerthandlerClassD = 30,
    TopDarjeelingIncomingIrqRotExternalIdLioGrpCAlerthandlerClassA = 31,
    TopDarjeelingIncomingIrqRotExternalIdLioGrpCAlerthandlerClassB = 32,
    TopDarjeelingIncomingIrqRotExternalIdLioGrpCAlerthandlerClassC = 33,
    TopDarjeelingIncomingIrqRotExternalIdLioGrpCAlerthandlerClassD = 34,
    TopDarjeelingIncomingIrqRotExternalIdLioGrpDAlerthandlerClassA = 35,
    TopDarjeelingIncomingIrqRotExternalIdLioGrpDAlerthandlerClassB = 36,
    TopDarjeelingIncomingIrqRotExternalIdLioGrpDAlerthandlerClassC = 37,
    TopDarjeelingIncomingIrqRotExternalIdLioGrpDAlerthandlerClassD = 38,
    TopDarjeelingIncomingIrqRotExternalIdScsctnif0AcRangeCtnDenyCntReached = 39,
    TopDarjeelingIncomingIrqRotExternalIdScsctnif0AcRangeBcastDenyCntReached = 40,
    TopDarjeelingIncomingIrqRotExternalIdScsctnif1AcRangeCtnDenyCntReached = 41,
    TopDarjeelingIncomingIrqIdCount
  } incoming_interrupt_rot_external_id_e;

  // Enumeration of IO power domains.
  // Only used in ASIC target.
  typedef enum logic [0:0] {
    IoBankVio = 0,
    IoBankCount = 1
  } pwr_dom_e;

  // Enumeration for MIO signals on the top-level.
  typedef enum int unsigned {
    MioInSocProxySocGpi12 = 0,
    MioInSocProxySocGpi13 = 1,
    MioInSocProxySocGpi14 = 2,
    MioInSocProxySocGpi15 = 3,
    MioInCount = 4
  } mio_in_e;

  typedef enum {
    MioOutSocProxySocGpo12 = 0,
    MioOutSocProxySocGpo13 = 1,
    MioOutSocProxySocGpo14 = 2,
    MioOutSocProxySocGpo15 = 3,
    MioOutOtpMacroTest0 = 4,
    MioOutCount = 5
  } mio_out_e;

  // Enumeration for DIO signals, used on both the top and chip-levels.
  typedef enum int unsigned {
    DioSpiHost0Sd0 = 0,
    DioSpiHost0Sd1 = 1,
    DioSpiHost0Sd2 = 2,
    DioSpiHost0Sd3 = 3,
    DioSpiDeviceSd0 = 4,
    DioSpiDeviceSd1 = 5,
    DioSpiDeviceSd2 = 6,
    DioSpiDeviceSd3 = 7,
    DioI2c0Scl = 8,
    DioI2c0Sda = 9,
    DioGpioGpio0 = 10,
    DioGpioGpio1 = 11,
    DioGpioGpio2 = 12,
    DioGpioGpio3 = 13,
    DioGpioGpio4 = 14,
    DioGpioGpio5 = 15,
    DioGpioGpio6 = 16,
    DioGpioGpio7 = 17,
    DioGpioGpio8 = 18,
    DioGpioGpio9 = 19,
    DioGpioGpio10 = 20,
    DioGpioGpio11 = 21,
    DioGpioGpio12 = 22,
    DioGpioGpio13 = 23,
    DioGpioGpio14 = 24,
    DioGpioGpio15 = 25,
    DioGpioGpio16 = 26,
    DioGpioGpio17 = 27,
    DioGpioGpio18 = 28,
    DioGpioGpio19 = 29,
    DioGpioGpio20 = 30,
    DioGpioGpio21 = 31,
    DioGpioGpio22 = 32,
    DioGpioGpio23 = 33,
    DioGpioGpio24 = 34,
    DioGpioGpio25 = 35,
    DioGpioGpio26 = 36,
    DioGpioGpio27 = 37,
    DioGpioGpio28 = 38,
    DioGpioGpio29 = 39,
    DioGpioGpio30 = 40,
    DioGpioGpio31 = 41,
    DioSpiDeviceSck = 42,
    DioSpiDeviceCsb = 43,
    DioSpiDeviceTpmCsb = 44,
    DioUart0Rx = 45,
    DioSocProxySocGpi0 = 46,
    DioSocProxySocGpi1 = 47,
    DioSocProxySocGpi2 = 48,
    DioSocProxySocGpi3 = 49,
    DioSocProxySocGpi4 = 50,
    DioSocProxySocGpi5 = 51,
    DioSocProxySocGpi6 = 52,
    DioSocProxySocGpi7 = 53,
    DioSocProxySocGpi8 = 54,
    DioSocProxySocGpi9 = 55,
    DioSocProxySocGpi10 = 56,
    DioSocProxySocGpi11 = 57,
    DioSpiHost0Sck = 58,
    DioSpiHost0Csb = 59,
    DioUart0Tx = 60,
    DioSocProxySocGpo0 = 61,
    DioSocProxySocGpo1 = 62,
    DioSocProxySocGpo2 = 63,
    DioSocProxySocGpo3 = 64,
    DioSocProxySocGpo4 = 65,
    DioSocProxySocGpo5 = 66,
    DioSocProxySocGpo6 = 67,
    DioSocProxySocGpo7 = 68,
    DioSocProxySocGpo8 = 69,
    DioSocProxySocGpo9 = 70,
    DioSocProxySocGpo10 = 71,
    DioSocProxySocGpo11 = 72,
    DioCount = 73
  } dio_e;

  // Enumeration for the types of pads.
  typedef enum {
    MioPad,
    DioPad
  } pad_type_e;

  // Raw MIO/DIO input array indices on chip-level.
  // TODO: Does not account for target specific stubbed/added pads.
  // Need to make a target-specific package for those.
  typedef enum int unsigned {
    MioPadMio0 = 0,
    MioPadMio1 = 1,
    MioPadMio2 = 2,
    MioPadMio3 = 3,
    MioPadMio4 = 4,
    MioPadMio5 = 5,
    MioPadMio6 = 6,
    MioPadMio7 = 7,
    MioPadMio8 = 8,
    MioPadMio9 = 9,
    MioPadMio10 = 10,
    MioPadMio11 = 11,
    MioPadCount
  } mio_pad_e;

  typedef enum int unsigned {
    DioPadPorN = 0,
    DioPadJtagTck = 1,
    DioPadJtagTms = 2,
    DioPadJtagTdi = 3,
    DioPadJtagTdo = 4,
    DioPadJtagTrstN = 5,
    DioPadOtpExtVolt = 6,
    DioPadSpiHostD0 = 7,
    DioPadSpiHostD1 = 8,
    DioPadSpiHostD2 = 9,
    DioPadSpiHostD3 = 10,
    DioPadSpiHostClk = 11,
    DioPadSpiHostCsL = 12,
    DioPadSpiDevD0 = 13,
    DioPadSpiDevD1 = 14,
    DioPadSpiDevD2 = 15,
    DioPadSpiDevD3 = 16,
    DioPadSpiDevClk = 17,
    DioPadSpiDevCsL = 18,
    DioPadSpiDevTpmCsL = 19,
    DioPadUartRx = 20,
    DioPadUartTx = 21,
    DioPadI2cScl = 22,
    DioPadI2cSda = 23,
    DioPadGpio0 = 24,
    DioPadGpio1 = 25,
    DioPadGpio2 = 26,
    DioPadGpio3 = 27,
    DioPadGpio4 = 28,
    DioPadGpio5 = 29,
    DioPadGpio6 = 30,
    DioPadGpio7 = 31,
    DioPadGpio8 = 32,
    DioPadGpio9 = 33,
    DioPadGpio10 = 34,
    DioPadGpio11 = 35,
    DioPadGpio12 = 36,
    DioPadGpio13 = 37,
    DioPadGpio14 = 38,
    DioPadGpio15 = 39,
    DioPadGpio16 = 40,
    DioPadGpio17 = 41,
    DioPadGpio18 = 42,
    DioPadGpio19 = 43,
    DioPadGpio20 = 44,
    DioPadGpio21 = 45,
    DioPadGpio22 = 46,
    DioPadGpio23 = 47,
    DioPadGpio24 = 48,
    DioPadGpio25 = 49,
    DioPadGpio26 = 50,
    DioPadGpio27 = 51,
    DioPadGpio28 = 52,
    DioPadGpio29 = 53,
    DioPadGpio30 = 54,
    DioPadGpio31 = 55,
    DioPadSocGpi0 = 56,
    DioPadSocGpi1 = 57,
    DioPadSocGpi2 = 58,
    DioPadSocGpi3 = 59,
    DioPadSocGpi4 = 60,
    DioPadSocGpi5 = 61,
    DioPadSocGpi6 = 62,
    DioPadSocGpi7 = 63,
    DioPadSocGpi8 = 64,
    DioPadSocGpi9 = 65,
    DioPadSocGpi10 = 66,
    DioPadSocGpi11 = 67,
    DioPadSocGpo0 = 68,
    DioPadSocGpo1 = 69,
    DioPadSocGpo2 = 70,
    DioPadSocGpo3 = 71,
    DioPadSocGpo4 = 72,
    DioPadSocGpo5 = 73,
    DioPadSocGpo6 = 74,
    DioPadSocGpo7 = 75,
    DioPadSocGpo8 = 76,
    DioPadSocGpo9 = 77,
    DioPadSocGpo10 = 78,
    DioPadSocGpo11 = 79,
    DioPadCount
  } dio_pad_e;

  // List of peripheral instantiated in this chip.
  typedef enum {
    PeripheralAes,
    PeripheralAlertHandler,
    PeripheralAonTimerAon,
    PeripheralAst,
    PeripheralClkmgrAon,
    PeripheralCsrng,
    PeripheralDma,
    PeripheralEdn0,
    PeripheralEdn1,
    PeripheralGpio,
    PeripheralHmac,
    PeripheralI2c0,
    PeripheralKeymgrDpe,
    PeripheralKmac,
    PeripheralLcCtrl,
    PeripheralMbx0,
    PeripheralMbx1,
    PeripheralMbx2,
    PeripheralMbx3,
    PeripheralMbx4,
    PeripheralMbx5,
    PeripheralMbx6,
    PeripheralMbxJtag,
    PeripheralMbxPcie0,
    PeripheralMbxPcie1,
    PeripheralOtbn,
    PeripheralOtpCtrl,
    PeripheralOtpMacro,
    PeripheralPinmuxAon,
    PeripheralPwrmgrAon,
    PeripheralRomCtrl0,
    PeripheralRomCtrl1,
    PeripheralRstmgrAon,
    PeripheralRvCoreIbex,
    PeripheralRvDm,
    PeripheralRvPlic,
    PeripheralRvTimer,
    PeripheralSocDbgCtrl,
    PeripheralSocProxy,
    PeripheralSpiDevice,
    PeripheralSpiHost0,
    PeripheralSramCtrlMain,
    PeripheralSramCtrlMbox,
    PeripheralSramCtrlRetAon,
    PeripheralUart0,
    PeripheralCount
  } peripheral_e;

  // TODO: Enumeration for PLIC Interrupt source peripheral.

// MACROs for AST analog simulation support
`ifdef ANALOGSIM
  `define INOUT_AI input ast_pkg::awire_t
  `define INOUT_AO output ast_pkg::awire_t
`else
  `define INOUT_AI inout
  `define INOUT_AO inout
`endif

endpackage
