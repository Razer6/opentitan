// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

#ifndef OPENTITAN_HW_TOP_PWC_SW_AUTOGEN_TOP_PWC_H_
#define OPENTITAN_HW_TOP_PWC_SW_AUTOGEN_TOP_PWC_H_

/**
 * @file
 * @brief Top-specific Definitions
 *
 * This file contains preprocessor and type definitions for use within the
 * device C/C++ codebase.
 *
 * These definitions are for information that depends on the top-specific chip
 * configuration, which includes:
 * - Device Memory Information (for Peripherals and Memory)
 * - PLIC Interrupt ID Names and Source Mappings
 */

#ifdef __cplusplus
extern "C" {
#endif

/**
 * Peripheral base address for gpio in top pwc.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_PWC_GPIO_BASE_ADDR 0x30000000u

/**
 * Peripheral size for gpio in top pwc.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_PWC_GPIO_BASE_ADDR and
 * `TOP_PWC_GPIO_BASE_ADDR + TOP_PWC_GPIO_SIZE_BYTES`.
 */
#define TOP_PWC_GPIO_SIZE_BYTES 0x80u

/**
 * Peripheral base address for rv_timer in top pwc.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_PWC_RV_TIMER_BASE_ADDR 0x30100000u

/**
 * Peripheral size for rv_timer in top pwc.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_PWC_RV_TIMER_BASE_ADDR and
 * `TOP_PWC_RV_TIMER_BASE_ADDR + TOP_PWC_RV_TIMER_SIZE_BYTES`.
 */
#define TOP_PWC_RV_TIMER_SIZE_BYTES 0x200u

/**
 * Peripheral base address for aon_timer_aon in top pwc.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_PWC_AON_TIMER_AON_BASE_ADDR 0x30470000u

/**
 * Peripheral size for aon_timer_aon in top pwc.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_PWC_AON_TIMER_AON_BASE_ADDR and
 * `TOP_PWC_AON_TIMER_AON_BASE_ADDR + TOP_PWC_AON_TIMER_AON_SIZE_BYTES`.
 */
#define TOP_PWC_AON_TIMER_AON_SIZE_BYTES 0x40u

/**
 * Peripheral base address for core device on soc_proxy in top pwc.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_PWC_SOC_PROXY_CORE_BASE_ADDR 0x22030000u

/**
 * Peripheral size for core device on soc_proxy in top pwc.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_PWC_SOC_PROXY_CORE_BASE_ADDR and
 * `TOP_PWC_SOC_PROXY_CORE_BASE_ADDR + TOP_PWC_SOC_PROXY_CORE_SIZE_BYTES`.
 */
#define TOP_PWC_SOC_PROXY_CORE_SIZE_BYTES 0x10u

/**
 * Peripheral base address for ctn device on soc_proxy in top pwc.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_PWC_SOC_PROXY_CTN_BASE_ADDR 0x40000000u

/**
 * Peripheral size for ctn device on soc_proxy in top pwc.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_PWC_SOC_PROXY_CTN_BASE_ADDR and
 * `TOP_PWC_SOC_PROXY_CTN_BASE_ADDR + TOP_PWC_SOC_PROXY_CTN_SIZE_BYTES`.
 */
#define TOP_PWC_SOC_PROXY_CTN_SIZE_BYTES 0x40000000u

/**
 * Peripheral base address for regs device on sram_ctrl_ret_aon in top pwc.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_PWC_SRAM_CTRL_RET_AON_REGS_BASE_ADDR 0x30500000u

/**
 * Peripheral size for regs device on sram_ctrl_ret_aon in top pwc.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_PWC_SRAM_CTRL_RET_AON_REGS_BASE_ADDR and
 * `TOP_PWC_SRAM_CTRL_RET_AON_REGS_BASE_ADDR + TOP_PWC_SRAM_CTRL_RET_AON_REGS_SIZE_BYTES`.
 */
#define TOP_PWC_SRAM_CTRL_RET_AON_REGS_SIZE_BYTES 0x40u

/**
 * Peripheral base address for ram device on sram_ctrl_ret_aon in top pwc.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_PWC_SRAM_CTRL_RET_AON_RAM_BASE_ADDR 0x30600000u

/**
 * Peripheral size for ram device on sram_ctrl_ret_aon in top pwc.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_PWC_SRAM_CTRL_RET_AON_RAM_BASE_ADDR and
 * `TOP_PWC_SRAM_CTRL_RET_AON_RAM_BASE_ADDR + TOP_PWC_SRAM_CTRL_RET_AON_RAM_SIZE_BYTES`.
 */
#define TOP_PWC_SRAM_CTRL_RET_AON_RAM_SIZE_BYTES 0x1000u

/**
 * Peripheral base address for regs device on rv_dm in top pwc.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_PWC_RV_DM_REGS_BASE_ADDR 0x21200000u

/**
 * Peripheral size for regs device on rv_dm in top pwc.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_PWC_RV_DM_REGS_BASE_ADDR and
 * `TOP_PWC_RV_DM_REGS_BASE_ADDR + TOP_PWC_RV_DM_REGS_SIZE_BYTES`.
 */
#define TOP_PWC_RV_DM_REGS_SIZE_BYTES 0x10u

/**
 * Peripheral base address for mem device on rv_dm in top pwc.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_PWC_RV_DM_MEM_BASE_ADDR 0x40000u

/**
 * Peripheral size for mem device on rv_dm in top pwc.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_PWC_RV_DM_MEM_BASE_ADDR and
 * `TOP_PWC_RV_DM_MEM_BASE_ADDR + TOP_PWC_RV_DM_MEM_SIZE_BYTES`.
 */
#define TOP_PWC_RV_DM_MEM_SIZE_BYTES 0x1000u

/**
 * Peripheral base address for rv_plic in top pwc.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_PWC_RV_PLIC_BASE_ADDR 0x28000000u

/**
 * Peripheral size for rv_plic in top pwc.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_PWC_RV_PLIC_BASE_ADDR and
 * `TOP_PWC_RV_PLIC_BASE_ADDR + TOP_PWC_RV_PLIC_SIZE_BYTES`.
 */
#define TOP_PWC_RV_PLIC_SIZE_BYTES 0x8000000u

/**
 * Peripheral base address for regs device on sram_ctrl_main in top pwc.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_PWC_SRAM_CTRL_MAIN_REGS_BASE_ADDR 0x211C0000u

/**
 * Peripheral size for regs device on sram_ctrl_main in top pwc.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_PWC_SRAM_CTRL_MAIN_REGS_BASE_ADDR and
 * `TOP_PWC_SRAM_CTRL_MAIN_REGS_BASE_ADDR + TOP_PWC_SRAM_CTRL_MAIN_REGS_SIZE_BYTES`.
 */
#define TOP_PWC_SRAM_CTRL_MAIN_REGS_SIZE_BYTES 0x40u

/**
 * Peripheral base address for ram device on sram_ctrl_main in top pwc.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_PWC_SRAM_CTRL_MAIN_RAM_BASE_ADDR 0x10000000u

/**
 * Peripheral size for ram device on sram_ctrl_main in top pwc.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_PWC_SRAM_CTRL_MAIN_RAM_BASE_ADDR and
 * `TOP_PWC_SRAM_CTRL_MAIN_RAM_BASE_ADDR + TOP_PWC_SRAM_CTRL_MAIN_RAM_SIZE_BYTES`.
 */
#define TOP_PWC_SRAM_CTRL_MAIN_RAM_SIZE_BYTES 0x10000u

/**
 * Peripheral base address for regs device on sram_ctrl_mbox in top pwc.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_PWC_SRAM_CTRL_MBOX_REGS_BASE_ADDR 0x211D0000u

/**
 * Peripheral size for regs device on sram_ctrl_mbox in top pwc.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_PWC_SRAM_CTRL_MBOX_REGS_BASE_ADDR and
 * `TOP_PWC_SRAM_CTRL_MBOX_REGS_BASE_ADDR + TOP_PWC_SRAM_CTRL_MBOX_REGS_SIZE_BYTES`.
 */
#define TOP_PWC_SRAM_CTRL_MBOX_REGS_SIZE_BYTES 0x40u

/**
 * Peripheral base address for ram device on sram_ctrl_mbox in top pwc.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_PWC_SRAM_CTRL_MBOX_RAM_BASE_ADDR 0x11000000u

/**
 * Peripheral size for ram device on sram_ctrl_mbox in top pwc.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_PWC_SRAM_CTRL_MBOX_RAM_BASE_ADDR and
 * `TOP_PWC_SRAM_CTRL_MBOX_RAM_BASE_ADDR + TOP_PWC_SRAM_CTRL_MBOX_RAM_SIZE_BYTES`.
 */
#define TOP_PWC_SRAM_CTRL_MBOX_RAM_SIZE_BYTES 0x1000u

/**
 * Peripheral base address for dma in top pwc.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_PWC_DMA_BASE_ADDR 0x22010000u

/**
 * Peripheral size for dma in top pwc.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_PWC_DMA_BASE_ADDR and
 * `TOP_PWC_DMA_BASE_ADDR + TOP_PWC_DMA_SIZE_BYTES`.
 */
#define TOP_PWC_DMA_SIZE_BYTES 0x200u

/**
 * Peripheral base address for core device on mbx0 in top pwc.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_PWC_MBX0_CORE_BASE_ADDR 0x22000000u

/**
 * Peripheral size for core device on mbx0 in top pwc.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_PWC_MBX0_CORE_BASE_ADDR and
 * `TOP_PWC_MBX0_CORE_BASE_ADDR + TOP_PWC_MBX0_CORE_SIZE_BYTES`.
 */
#define TOP_PWC_MBX0_CORE_SIZE_BYTES 0x80u

/**
 * Peripheral base address for core device on mbx1 in top pwc.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_PWC_MBX1_CORE_BASE_ADDR 0x22000100u

/**
 * Peripheral size for core device on mbx1 in top pwc.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_PWC_MBX1_CORE_BASE_ADDR and
 * `TOP_PWC_MBX1_CORE_BASE_ADDR + TOP_PWC_MBX1_CORE_SIZE_BYTES`.
 */
#define TOP_PWC_MBX1_CORE_SIZE_BYTES 0x80u

/**
 * Peripheral base address for core device on mbx2 in top pwc.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_PWC_MBX2_CORE_BASE_ADDR 0x22000200u

/**
 * Peripheral size for core device on mbx2 in top pwc.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_PWC_MBX2_CORE_BASE_ADDR and
 * `TOP_PWC_MBX2_CORE_BASE_ADDR + TOP_PWC_MBX2_CORE_SIZE_BYTES`.
 */
#define TOP_PWC_MBX2_CORE_SIZE_BYTES 0x80u

/**
 * Peripheral base address for core device on mbx3 in top pwc.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_PWC_MBX3_CORE_BASE_ADDR 0x22000300u

/**
 * Peripheral size for core device on mbx3 in top pwc.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_PWC_MBX3_CORE_BASE_ADDR and
 * `TOP_PWC_MBX3_CORE_BASE_ADDR + TOP_PWC_MBX3_CORE_SIZE_BYTES`.
 */
#define TOP_PWC_MBX3_CORE_SIZE_BYTES 0x80u

/**
 * Peripheral base address for core device on mbx4 in top pwc.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_PWC_MBX4_CORE_BASE_ADDR 0x22000400u

/**
 * Peripheral size for core device on mbx4 in top pwc.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_PWC_MBX4_CORE_BASE_ADDR and
 * `TOP_PWC_MBX4_CORE_BASE_ADDR + TOP_PWC_MBX4_CORE_SIZE_BYTES`.
 */
#define TOP_PWC_MBX4_CORE_SIZE_BYTES 0x80u

/**
 * Peripheral base address for core device on mbx5 in top pwc.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_PWC_MBX5_CORE_BASE_ADDR 0x22000500u

/**
 * Peripheral size for core device on mbx5 in top pwc.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_PWC_MBX5_CORE_BASE_ADDR and
 * `TOP_PWC_MBX5_CORE_BASE_ADDR + TOP_PWC_MBX5_CORE_SIZE_BYTES`.
 */
#define TOP_PWC_MBX5_CORE_SIZE_BYTES 0x80u

/**
 * Peripheral base address for cfg device on rv_core_ibex in top pwc.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_PWC_RV_CORE_IBEX_CFG_BASE_ADDR 0x211F0000u

/**
 * Peripheral size for cfg device on rv_core_ibex in top pwc.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_PWC_RV_CORE_IBEX_CFG_BASE_ADDR and
 * `TOP_PWC_RV_CORE_IBEX_CFG_BASE_ADDR + TOP_PWC_RV_CORE_IBEX_CFG_SIZE_BYTES`.
 */
#define TOP_PWC_RV_CORE_IBEX_CFG_SIZE_BYTES 0x100u


/**
 * Memory base address for ctn in top pwc.
 */
#define TOP_PWC_CTN_BASE_ADDR 0x40000000u

/**
 * Memory size for ctn in top pwc.
 */
#define TOP_PWC_CTN_SIZE_BYTES 0x40000000u

/**
 * Memory base address for ram_ret_aon in top pwc.
 */
#define TOP_PWC_RAM_RET_AON_BASE_ADDR 0x30600000u

/**
 * Memory size for ram_ret_aon in top pwc.
 */
#define TOP_PWC_RAM_RET_AON_SIZE_BYTES 0x1000u

/**
 * Memory base address for ram_main in top pwc.
 */
#define TOP_PWC_RAM_MAIN_BASE_ADDR 0x10000000u

/**
 * Memory size for ram_main in top pwc.
 */
#define TOP_PWC_RAM_MAIN_SIZE_BYTES 0x10000u

/**
 * Memory base address for ram_mbox in top pwc.
 */
#define TOP_PWC_RAM_MBOX_BASE_ADDR 0x11000000u

/**
 * Memory size for ram_mbox in top pwc.
 */
#define TOP_PWC_RAM_MBOX_SIZE_BYTES 0x1000u


/**
 * PLIC Interrupt Source Peripheral.
 *
 * Enumeration used to determine which peripheral asserted the corresponding
 * interrupt.
 */
typedef enum top_pwc_plic_peripheral {
  kTopPwcPlicPeripheralUnknown = 0, /**< Unknown Peripheral */
  kTopPwcPlicPeripheralGpio = 1, /**< gpio */
  kTopPwcPlicPeripheralRvTimer = 2, /**< rv_timer */
  kTopPwcPlicPeripheralAonTimerAon = 3, /**< aon_timer_aon */
  kTopPwcPlicPeripheralSocProxy = 4, /**< soc_proxy */
  kTopPwcPlicPeripheralDma = 5, /**< dma */
  kTopPwcPlicPeripheralMbx0 = 6, /**< mbx0 */
  kTopPwcPlicPeripheralMbx1 = 7, /**< mbx1 */
  kTopPwcPlicPeripheralMbx2 = 8, /**< mbx2 */
  kTopPwcPlicPeripheralMbx3 = 9, /**< mbx3 */
  kTopPwcPlicPeripheralMbx4 = 10, /**< mbx4 */
  kTopPwcPlicPeripheralMbx5 = 11, /**< mbx5 */
  kTopPwcPlicPeripheralLast = 11, /**< \internal Final PLIC peripheral */
} top_pwc_plic_peripheral_t;

/**
 * PLIC Interrupt Source.
 *
 * Enumeration of all PLIC interrupt sources. The interrupt sources belonging to
 * the same peripheral are guaranteed to be consecutive.
 */
typedef enum top_pwc_plic_irq_id {
  kTopPwcPlicIrqIdNone = 0, /**< No Interrupt */
  kTopPwcPlicIrqIdGpioGpio0 = 1, /**< gpio_gpio 0 */
  kTopPwcPlicIrqIdGpioGpio1 = 2, /**< gpio_gpio 1 */
  kTopPwcPlicIrqIdGpioGpio2 = 3, /**< gpio_gpio 2 */
  kTopPwcPlicIrqIdGpioGpio3 = 4, /**< gpio_gpio 3 */
  kTopPwcPlicIrqIdGpioGpio4 = 5, /**< gpio_gpio 4 */
  kTopPwcPlicIrqIdGpioGpio5 = 6, /**< gpio_gpio 5 */
  kTopPwcPlicIrqIdGpioGpio6 = 7, /**< gpio_gpio 6 */
  kTopPwcPlicIrqIdGpioGpio7 = 8, /**< gpio_gpio 7 */
  kTopPwcPlicIrqIdGpioGpio8 = 9, /**< gpio_gpio 8 */
  kTopPwcPlicIrqIdGpioGpio9 = 10, /**< gpio_gpio 9 */
  kTopPwcPlicIrqIdGpioGpio10 = 11, /**< gpio_gpio 10 */
  kTopPwcPlicIrqIdGpioGpio11 = 12, /**< gpio_gpio 11 */
  kTopPwcPlicIrqIdGpioGpio12 = 13, /**< gpio_gpio 12 */
  kTopPwcPlicIrqIdGpioGpio13 = 14, /**< gpio_gpio 13 */
  kTopPwcPlicIrqIdGpioGpio14 = 15, /**< gpio_gpio 14 */
  kTopPwcPlicIrqIdGpioGpio15 = 16, /**< gpio_gpio 15 */
  kTopPwcPlicIrqIdGpioGpio16 = 17, /**< gpio_gpio 16 */
  kTopPwcPlicIrqIdGpioGpio17 = 18, /**< gpio_gpio 17 */
  kTopPwcPlicIrqIdGpioGpio18 = 19, /**< gpio_gpio 18 */
  kTopPwcPlicIrqIdGpioGpio19 = 20, /**< gpio_gpio 19 */
  kTopPwcPlicIrqIdGpioGpio20 = 21, /**< gpio_gpio 20 */
  kTopPwcPlicIrqIdGpioGpio21 = 22, /**< gpio_gpio 21 */
  kTopPwcPlicIrqIdGpioGpio22 = 23, /**< gpio_gpio 22 */
  kTopPwcPlicIrqIdGpioGpio23 = 24, /**< gpio_gpio 23 */
  kTopPwcPlicIrqIdGpioGpio24 = 25, /**< gpio_gpio 24 */
  kTopPwcPlicIrqIdGpioGpio25 = 26, /**< gpio_gpio 25 */
  kTopPwcPlicIrqIdGpioGpio26 = 27, /**< gpio_gpio 26 */
  kTopPwcPlicIrqIdGpioGpio27 = 28, /**< gpio_gpio 27 */
  kTopPwcPlicIrqIdGpioGpio28 = 29, /**< gpio_gpio 28 */
  kTopPwcPlicIrqIdGpioGpio29 = 30, /**< gpio_gpio 29 */
  kTopPwcPlicIrqIdGpioGpio30 = 31, /**< gpio_gpio 30 */
  kTopPwcPlicIrqIdGpioGpio31 = 32, /**< gpio_gpio 31 */
  kTopPwcPlicIrqIdRvTimerTimerExpiredHart0Timer0 = 33, /**< rv_timer_timer_expired_hart0_timer0 */
  kTopPwcPlicIrqIdAonTimerAonWkupTimerExpired = 34, /**< aon_timer_aon_wkup_timer_expired */
  kTopPwcPlicIrqIdAonTimerAonWdogTimerBark = 35, /**< aon_timer_aon_wdog_timer_bark */
  kTopPwcPlicIrqIdSocProxyExternal0 = 36, /**< soc_proxy_external 0 */
  kTopPwcPlicIrqIdSocProxyExternal1 = 37, /**< soc_proxy_external 1 */
  kTopPwcPlicIrqIdSocProxyExternal2 = 38, /**< soc_proxy_external 2 */
  kTopPwcPlicIrqIdSocProxyExternal3 = 39, /**< soc_proxy_external 3 */
  kTopPwcPlicIrqIdSocProxyExternal4 = 40, /**< soc_proxy_external 4 */
  kTopPwcPlicIrqIdSocProxyExternal5 = 41, /**< soc_proxy_external 5 */
  kTopPwcPlicIrqIdSocProxyExternal6 = 42, /**< soc_proxy_external 6 */
  kTopPwcPlicIrqIdSocProxyExternal7 = 43, /**< soc_proxy_external 7 */
  kTopPwcPlicIrqIdSocProxyExternal8 = 44, /**< soc_proxy_external 8 */
  kTopPwcPlicIrqIdSocProxyExternal9 = 45, /**< soc_proxy_external 9 */
  kTopPwcPlicIrqIdSocProxyExternal10 = 46, /**< soc_proxy_external 10 */
  kTopPwcPlicIrqIdSocProxyExternal11 = 47, /**< soc_proxy_external 11 */
  kTopPwcPlicIrqIdSocProxyExternal12 = 48, /**< soc_proxy_external 12 */
  kTopPwcPlicIrqIdSocProxyExternal13 = 49, /**< soc_proxy_external 13 */
  kTopPwcPlicIrqIdSocProxyExternal14 = 50, /**< soc_proxy_external 14 */
  kTopPwcPlicIrqIdSocProxyExternal15 = 51, /**< soc_proxy_external 15 */
  kTopPwcPlicIrqIdSocProxyExternal16 = 52, /**< soc_proxy_external 16 */
  kTopPwcPlicIrqIdSocProxyExternal17 = 53, /**< soc_proxy_external 17 */
  kTopPwcPlicIrqIdSocProxyExternal18 = 54, /**< soc_proxy_external 18 */
  kTopPwcPlicIrqIdSocProxyExternal19 = 55, /**< soc_proxy_external 19 */
  kTopPwcPlicIrqIdSocProxyExternal20 = 56, /**< soc_proxy_external 20 */
  kTopPwcPlicIrqIdSocProxyExternal21 = 57, /**< soc_proxy_external 21 */
  kTopPwcPlicIrqIdSocProxyExternal22 = 58, /**< soc_proxy_external 22 */
  kTopPwcPlicIrqIdSocProxyExternal23 = 59, /**< soc_proxy_external 23 */
  kTopPwcPlicIrqIdSocProxyExternal24 = 60, /**< soc_proxy_external 24 */
  kTopPwcPlicIrqIdSocProxyExternal25 = 61, /**< soc_proxy_external 25 */
  kTopPwcPlicIrqIdSocProxyExternal26 = 62, /**< soc_proxy_external 26 */
  kTopPwcPlicIrqIdSocProxyExternal27 = 63, /**< soc_proxy_external 27 */
  kTopPwcPlicIrqIdSocProxyExternal28 = 64, /**< soc_proxy_external 28 */
  kTopPwcPlicIrqIdSocProxyExternal29 = 65, /**< soc_proxy_external 29 */
  kTopPwcPlicIrqIdSocProxyExternal30 = 66, /**< soc_proxy_external 30 */
  kTopPwcPlicIrqIdSocProxyExternal31 = 67, /**< soc_proxy_external 31 */
  kTopPwcPlicIrqIdDmaDmaDone = 68, /**< dma_dma_done */
  kTopPwcPlicIrqIdDmaDmaChunkDone = 69, /**< dma_dma_chunk_done */
  kTopPwcPlicIrqIdDmaDmaError = 70, /**< dma_dma_error */
  kTopPwcPlicIrqIdMbx0MbxReady = 71, /**< mbx0_mbx_ready */
  kTopPwcPlicIrqIdMbx0MbxAbort = 72, /**< mbx0_mbx_abort */
  kTopPwcPlicIrqIdMbx0MbxError = 73, /**< mbx0_mbx_error */
  kTopPwcPlicIrqIdMbx1MbxReady = 74, /**< mbx1_mbx_ready */
  kTopPwcPlicIrqIdMbx1MbxAbort = 75, /**< mbx1_mbx_abort */
  kTopPwcPlicIrqIdMbx1MbxError = 76, /**< mbx1_mbx_error */
  kTopPwcPlicIrqIdMbx2MbxReady = 77, /**< mbx2_mbx_ready */
  kTopPwcPlicIrqIdMbx2MbxAbort = 78, /**< mbx2_mbx_abort */
  kTopPwcPlicIrqIdMbx2MbxError = 79, /**< mbx2_mbx_error */
  kTopPwcPlicIrqIdMbx3MbxReady = 80, /**< mbx3_mbx_ready */
  kTopPwcPlicIrqIdMbx3MbxAbort = 81, /**< mbx3_mbx_abort */
  kTopPwcPlicIrqIdMbx3MbxError = 82, /**< mbx3_mbx_error */
  kTopPwcPlicIrqIdMbx4MbxReady = 83, /**< mbx4_mbx_ready */
  kTopPwcPlicIrqIdMbx4MbxAbort = 84, /**< mbx4_mbx_abort */
  kTopPwcPlicIrqIdMbx4MbxError = 85, /**< mbx4_mbx_error */
  kTopPwcPlicIrqIdMbx5MbxReady = 86, /**< mbx5_mbx_ready */
  kTopPwcPlicIrqIdMbx5MbxAbort = 87, /**< mbx5_mbx_abort */
  kTopPwcPlicIrqIdMbx5MbxError = 88, /**< mbx5_mbx_error */
  kTopPwcPlicIrqIdLast = 88, /**< \internal The Last Valid Interrupt ID. */
} top_pwc_plic_irq_id_t;

/**
 * PLIC Interrupt Source to Peripheral Map
 *
 * This array is a mapping from `top_pwc_plic_irq_id_t` to
 * `top_pwc_plic_peripheral_t`.
 */
extern const top_pwc_plic_peripheral_t
    top_pwc_plic_interrupt_for_peripheral[89];

/**
 * PLIC Interrupt Target.
 *
 * Enumeration used to determine which set of IE, CC, threshold registers to
 * access for a given interrupt target.
 */
typedef enum top_pwc_plic_target {
  kTopPwcPlicTargetIbex0 = 0, /**< Ibex Core 0 */
  kTopPwcPlicTargetLast = 0, /**< \internal Final PLIC target */
} top_pwc_plic_target_t;

/**
 * MPWC Region
 *
 * MMIO region excludes any memory that is separate from the module
 * configuration space, i.e. ROM, main SRAM, and mbx SRAM are excluded but
 * retention SRAM or spi_device are included.
 */
#define TOP_PWC_MPWC_BASE_ADDR 0x211C0000u
#define TOP_PWC_MPWC_SIZE_BYTES 0xF441000u

// Header Extern Guard
#ifdef __cplusplus
}  // extern "C"
#endif

#endif  // OPENTITAN_HW_TOP_PWC_SW_AUTOGEN_TOP_PWC_H_
