// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// ------------------- W A R N I N G: A U T O - G E N E R A T E D   C O D E !! -------------------//
// PLEASE DO NOT HAND-EDIT THIS FILE. IT HAS BEEN AUTO-GENERATED WITH THE FOLLOWING COMMAND:
// util/topgen.py -t hw/top_pwc/data/top_pwc.hjson
// -o hw/top_pwc

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
 * Peripheral base address for ctn device on pwc_soc_proxy in top pwc.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_PWC_PWC_SOC_PROXY_CTN_BASE_ADDR 0x40000000u

/**
 * Peripheral size for ctn device on pwc_soc_proxy in top pwc.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_PWC_PWC_SOC_PROXY_CTN_BASE_ADDR and
 * `TOP_PWC_PWC_SOC_PROXY_CTN_BASE_ADDR + TOP_PWC_PWC_SOC_PROXY_CTN_SIZE_BYTES`.
 */
#define TOP_PWC_PWC_SOC_PROXY_CTN_SIZE_BYTES 0x40000000u

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
 * Peripheral base address for rv_plic_pwc in top pwc.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_PWC_RV_PLIC_PWC_BASE_ADDR 0x28000000u

/**
 * Peripheral size for rv_plic_pwc in top pwc.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_PWC_RV_PLIC_PWC_BASE_ADDR and
 * `TOP_PWC_RV_PLIC_PWC_BASE_ADDR + TOP_PWC_RV_PLIC_PWC_SIZE_BYTES`.
 */
#define TOP_PWC_RV_PLIC_PWC_SIZE_BYTES 0x8000000u

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
 * Peripheral base address for core device on mbx_pcie0 in top pwc.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_PWC_MBX_PCIE0_CORE_BASE_ADDR 0x22040000u

/**
 * Peripheral size for core device on mbx_pcie0 in top pwc.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_PWC_MBX_PCIE0_CORE_BASE_ADDR and
 * `TOP_PWC_MBX_PCIE0_CORE_BASE_ADDR + TOP_PWC_MBX_PCIE0_CORE_SIZE_BYTES`.
 */
#define TOP_PWC_MBX_PCIE0_CORE_SIZE_BYTES 0x80u

/**
 * Peripheral base address for cfg device on rv_core_ibex_pwc in top pwc.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_PWC_RV_CORE_IBEX_PWC_CFG_BASE_ADDR 0x211F0000u

/**
 * Peripheral size for cfg device on rv_core_ibex_pwc in top pwc.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_PWC_RV_CORE_IBEX_PWC_CFG_BASE_ADDR and
 * `TOP_PWC_RV_CORE_IBEX_PWC_CFG_BASE_ADDR + TOP_PWC_RV_CORE_IBEX_PWC_CFG_SIZE_BYTES`.
 */
#define TOP_PWC_RV_CORE_IBEX_PWC_CFG_SIZE_BYTES 0x800u


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
typedef enum top_pwc_plic_pwc_peripheral {
  kTopPwcPlicPwcPeripheralUnknown = 0, /**< Unknown Peripheral */
  kTopPwcPlicPwcPeripheralGpio = 1, /**< gpio */
  kTopPwcPlicPwcPeripheralRvTimer = 2, /**< rv_timer */
  kTopPwcPlicPwcPeripheralAonTimerAon = 3, /**< aon_timer_aon */
  kTopPwcPlicPwcPeripheralDma = 4, /**< dma */
  kTopPwcPlicPwcPeripheralMbx0 = 5, /**< mbx0 */
  kTopPwcPlicPwcPeripheralMbx1 = 6, /**< mbx1 */
  kTopPwcPlicPwcPeripheralMbx2 = 7, /**< mbx2 */
  kTopPwcPlicPwcPeripheralMbx3 = 8, /**< mbx3 */
  kTopPwcPlicPwcPeripheralMbx4 = 9, /**< mbx4 */
  kTopPwcPlicPwcPeripheralMbx5 = 10, /**< mbx5 */
  kTopPwcPlicPwcPeripheralMbxPcie0 = 11, /**< mbx_pcie0 */
  kTopPwcPlicPwcPeripheralLast = 11, /**< \internal Final PLIC peripheral */
} top_pwc_plic_pwc_peripheral_t;

/**
 * PLIC Interrupt Source.
 *
 * Enumeration of all PLIC interrupt sources. The interrupt sources belonging to
 * the same peripheral are guaranteed to be consecutive.
 */
typedef enum top_pwc_plic_pwc_irq_id {
  kTopPwcPlicPwcIrqIdNone = 0, /**< No Interrupt */
  kTopPwcPlicPwcIrqIdGpioGpio0 = 1, /**< gpio_gpio 0 */
  kTopPwcPlicPwcIrqIdGpioGpio1 = 2, /**< gpio_gpio 1 */
  kTopPwcPlicPwcIrqIdGpioGpio2 = 3, /**< gpio_gpio 2 */
  kTopPwcPlicPwcIrqIdGpioGpio3 = 4, /**< gpio_gpio 3 */
  kTopPwcPlicPwcIrqIdGpioGpio4 = 5, /**< gpio_gpio 4 */
  kTopPwcPlicPwcIrqIdGpioGpio5 = 6, /**< gpio_gpio 5 */
  kTopPwcPlicPwcIrqIdGpioGpio6 = 7, /**< gpio_gpio 6 */
  kTopPwcPlicPwcIrqIdGpioGpio7 = 8, /**< gpio_gpio 7 */
  kTopPwcPlicPwcIrqIdGpioGpio8 = 9, /**< gpio_gpio 8 */
  kTopPwcPlicPwcIrqIdGpioGpio9 = 10, /**< gpio_gpio 9 */
  kTopPwcPlicPwcIrqIdGpioGpio10 = 11, /**< gpio_gpio 10 */
  kTopPwcPlicPwcIrqIdGpioGpio11 = 12, /**< gpio_gpio 11 */
  kTopPwcPlicPwcIrqIdGpioGpio12 = 13, /**< gpio_gpio 12 */
  kTopPwcPlicPwcIrqIdGpioGpio13 = 14, /**< gpio_gpio 13 */
  kTopPwcPlicPwcIrqIdGpioGpio14 = 15, /**< gpio_gpio 14 */
  kTopPwcPlicPwcIrqIdGpioGpio15 = 16, /**< gpio_gpio 15 */
  kTopPwcPlicPwcIrqIdGpioGpio16 = 17, /**< gpio_gpio 16 */
  kTopPwcPlicPwcIrqIdGpioGpio17 = 18, /**< gpio_gpio 17 */
  kTopPwcPlicPwcIrqIdGpioGpio18 = 19, /**< gpio_gpio 18 */
  kTopPwcPlicPwcIrqIdGpioGpio19 = 20, /**< gpio_gpio 19 */
  kTopPwcPlicPwcIrqIdGpioGpio20 = 21, /**< gpio_gpio 20 */
  kTopPwcPlicPwcIrqIdGpioGpio21 = 22, /**< gpio_gpio 21 */
  kTopPwcPlicPwcIrqIdGpioGpio22 = 23, /**< gpio_gpio 22 */
  kTopPwcPlicPwcIrqIdGpioGpio23 = 24, /**< gpio_gpio 23 */
  kTopPwcPlicPwcIrqIdGpioGpio24 = 25, /**< gpio_gpio 24 */
  kTopPwcPlicPwcIrqIdGpioGpio25 = 26, /**< gpio_gpio 25 */
  kTopPwcPlicPwcIrqIdGpioGpio26 = 27, /**< gpio_gpio 26 */
  kTopPwcPlicPwcIrqIdGpioGpio27 = 28, /**< gpio_gpio 27 */
  kTopPwcPlicPwcIrqIdGpioGpio28 = 29, /**< gpio_gpio 28 */
  kTopPwcPlicPwcIrqIdGpioGpio29 = 30, /**< gpio_gpio 29 */
  kTopPwcPlicPwcIrqIdGpioGpio30 = 31, /**< gpio_gpio 30 */
  kTopPwcPlicPwcIrqIdGpioGpio31 = 32, /**< gpio_gpio 31 */
  kTopPwcPlicPwcIrqIdRvTimerTimerExpiredHart0Timer0 = 33, /**< rv_timer_timer_expired_hart0_timer0 */
  kTopPwcPlicPwcIrqIdAonTimerAonWkupTimerExpired = 34, /**< aon_timer_aon_wkup_timer_expired */
  kTopPwcPlicPwcIrqIdAonTimerAonWdogTimerBark = 35, /**< aon_timer_aon_wdog_timer_bark */
  kTopPwcPlicPwcIrqIdDmaDmaDone = 36, /**< dma_dma_done */
  kTopPwcPlicPwcIrqIdDmaDmaChunkDone = 37, /**< dma_dma_chunk_done */
  kTopPwcPlicPwcIrqIdDmaDmaError = 38, /**< dma_dma_error */
  kTopPwcPlicPwcIrqIdMbx0MbxReady = 39, /**< mbx0_mbx_ready */
  kTopPwcPlicPwcIrqIdMbx0MbxAbort = 40, /**< mbx0_mbx_abort */
  kTopPwcPlicPwcIrqIdMbx0MbxError = 41, /**< mbx0_mbx_error */
  kTopPwcPlicPwcIrqIdMbx1MbxReady = 42, /**< mbx1_mbx_ready */
  kTopPwcPlicPwcIrqIdMbx1MbxAbort = 43, /**< mbx1_mbx_abort */
  kTopPwcPlicPwcIrqIdMbx1MbxError = 44, /**< mbx1_mbx_error */
  kTopPwcPlicPwcIrqIdMbx2MbxReady = 45, /**< mbx2_mbx_ready */
  kTopPwcPlicPwcIrqIdMbx2MbxAbort = 46, /**< mbx2_mbx_abort */
  kTopPwcPlicPwcIrqIdMbx2MbxError = 47, /**< mbx2_mbx_error */
  kTopPwcPlicPwcIrqIdMbx3MbxReady = 48, /**< mbx3_mbx_ready */
  kTopPwcPlicPwcIrqIdMbx3MbxAbort = 49, /**< mbx3_mbx_abort */
  kTopPwcPlicPwcIrqIdMbx3MbxError = 50, /**< mbx3_mbx_error */
  kTopPwcPlicPwcIrqIdMbx4MbxReady = 51, /**< mbx4_mbx_ready */
  kTopPwcPlicPwcIrqIdMbx4MbxAbort = 52, /**< mbx4_mbx_abort */
  kTopPwcPlicPwcIrqIdMbx4MbxError = 53, /**< mbx4_mbx_error */
  kTopPwcPlicPwcIrqIdMbx5MbxReady = 54, /**< mbx5_mbx_ready */
  kTopPwcPlicPwcIrqIdMbx5MbxAbort = 55, /**< mbx5_mbx_abort */
  kTopPwcPlicPwcIrqIdMbx5MbxError = 56, /**< mbx5_mbx_error */
  kTopPwcPlicPwcIrqIdMbxPcie0MbxReady = 57, /**< mbx_pcie0_mbx_ready */
  kTopPwcPlicPwcIrqIdMbxPcie0MbxAbort = 58, /**< mbx_pcie0_mbx_abort */
  kTopPwcPlicPwcIrqIdMbxPcie0MbxError = 59, /**< mbx_pcie0_mbx_error */
  kTopPwcPlicPwcIrqIdPwcLteuSocHot = 60, /**< PWC_LTEU_SOC_HOT */
  kTopPwcPlicPwcIrqIdPwcLteuFwTrip = 61, /**< PWC_LTEU_FW_TRIP */
  kTopPwcPlicPwcIrqIdPwcLteuCatTrip = 62, /**< PWC_LTEU_CAT_TRIP */
  kTopPwcPlicPwcIrqIdLioGrpAIbexIrq = 63, /**< LIO_GRP_A_IBEX_IRQ */
  kTopPwcPlicPwcIrqIdLioGrpBIbexIrq = 64, /**< LIO_GRP_B_IBEX_IRQ */
  kTopPwcPlicPwcIrqIdLioGrpCIbexIrq = 65, /**< LIO_GRP_C_IBEX_IRQ */
  kTopPwcPlicPwcIrqIdDuc0Ducpvlreq0 = 66, /**< DUC0_ducPvlReq0 */
  kTopPwcPlicPwcIrqIdDuc1Ducpvlreq1 = 67, /**< DUC1_ducPvlReq1 */
  kTopPwcPlicPwcIrqIdDuc0Ducivdrreq0 = 68, /**< DUC0_ducIvdrReq0 */
  kTopPwcPlicPwcIrqIdDuc1Ducivdrreq1 = 69, /**< DUC1_ducIvdrReq1 */
  kTopPwcPlicPwcIrqIdPwcSpareecoirq0 = 70, /**< PWC_spareEcoIrq0 */
  kTopPwcPlicPwcIrqIdPwcDvfsTargetcmdavs0 = 71, /**< PWC_DVFS_TargetCmdAVS0 */
  kTopPwcPlicPwcIrqIdPwcDvfsTargetcmdavs1 = 72, /**< PWC_DVFS_TargetCmdAVS1 */
  kTopPwcPlicPwcIrqIdPwcDvfsTargetcmdavs2 = 73, /**< PWC_DVFS_TargetCmdAVS2 */
  kTopPwcPlicPwcIrqIdPwcDvfsTargetcmdavs3 = 74, /**< PWC_DVFS_TargetCmdAVS3 */
  kTopPwcPlicPwcIrqIdPwcDvfsTargetcmdavs4 = 75, /**< PWC_DVFS_TargetCmdAVS4 */
  kTopPwcPlicPwcIrqIdPwcDvfsTargetcmdavs5 = 76, /**< PWC_DVFS_TargetCmdAVS5 */
  kTopPwcPlicPwcIrqIdPwcDvfsTargetcmdavs6 = 77, /**< PWC_DVFS_TargetCmdAVS6 */
  kTopPwcPlicPwcIrqIdPwcDvfsTargetcmdavs7 = 78, /**< PWC_DVFS_TargetCmdAVS7 */
  kTopPwcPlicPwcIrqIdPwcDvfsTargetcmdavs8 = 79, /**< PWC_DVFS_TargetCmdAVS8 */
  kTopPwcPlicPwcIrqIdPwcDvfsTargetcmdavs9 = 80, /**< PWC_DVFS_TargetCmdAVS9 */
  kTopPwcPlicPwcIrqIdPwcDvfsTargetcmdavs10 = 81, /**< PWC_DVFS_TargetCmdAVS10 */
  kTopPwcPlicPwcIrqIdPwcDvfsTargetcmdavs11 = 82, /**< PWC_DVFS_TargetCmdAVS11 */
  kTopPwcPlicPwcIrqIdPwcDvfsTargetcmdavs12 = 83, /**< PWC_DVFS_TargetCmdAVS12 */
  kTopPwcPlicPwcIrqIdPwcDvfsTargetcmdavs13 = 84, /**< PWC_DVFS_TargetCmdAVS13 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsError0 = 85, /**< PWC_AVS_AVS_ERROR_0 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsError1 = 86, /**< PWC_AVS_AVS_ERROR_1 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsError2 = 87, /**< PWC_AVS_AVS_ERROR_2 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsError3 = 88, /**< PWC_AVS_AVS_ERROR_3 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsError4 = 89, /**< PWC_AVS_AVS_ERROR_4 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsError5 = 90, /**< PWC_AVS_AVS_ERROR_5 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsError6 = 91, /**< PWC_AVS_AVS_ERROR_6 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsError7 = 92, /**< PWC_AVS_AVS_ERROR_7 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsError8 = 93, /**< PWC_AVS_AVS_ERROR_8 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsError9 = 94, /**< PWC_AVS_AVS_ERROR_9 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsError10 = 95, /**< PWC_AVS_AVS_ERROR_10 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsError11 = 96, /**< PWC_AVS_AVS_ERROR_11 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsError12 = 97, /**< PWC_AVS_AVS_ERROR_12 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsError13 = 98, /**< PWC_AVS_AVS_ERROR_13 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsError14 = 99, /**< PWC_AVS_AVS_ERROR_14 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsError15 = 100, /**< PWC_AVS_AVS_ERROR_15 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsError16 = 101, /**< PWC_AVS_AVS_ERROR_16 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsError17 = 102, /**< PWC_AVS_AVS_ERROR_17 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsError18 = 103, /**< PWC_AVS_AVS_ERROR_18 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsError19 = 104, /**< PWC_AVS_AVS_ERROR_19 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsError20 = 105, /**< PWC_AVS_AVS_ERROR_20 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw0 = 106, /**< PWC_AVS_AVS_RESPONSE_TO_FW_0 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw1 = 107, /**< PWC_AVS_AVS_RESPONSE_TO_FW_1 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw2 = 108, /**< PWC_AVS_AVS_RESPONSE_TO_FW_2 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw3 = 109, /**< PWC_AVS_AVS_RESPONSE_TO_FW_3 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw4 = 110, /**< PWC_AVS_AVS_RESPONSE_TO_FW_4 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw5 = 111, /**< PWC_AVS_AVS_RESPONSE_TO_FW_5 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw6 = 112, /**< PWC_AVS_AVS_RESPONSE_TO_FW_6 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw7 = 113, /**< PWC_AVS_AVS_RESPONSE_TO_FW_7 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw8 = 114, /**< PWC_AVS_AVS_RESPONSE_TO_FW_8 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw9 = 115, /**< PWC_AVS_AVS_RESPONSE_TO_FW_9 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw10 = 116, /**< PWC_AVS_AVS_RESPONSE_TO_FW_10 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw11 = 117, /**< PWC_AVS_AVS_RESPONSE_TO_FW_11 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw12 = 118, /**< PWC_AVS_AVS_RESPONSE_TO_FW_12 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw13 = 119, /**< PWC_AVS_AVS_RESPONSE_TO_FW_13 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw14 = 120, /**< PWC_AVS_AVS_RESPONSE_TO_FW_14 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw15 = 121, /**< PWC_AVS_AVS_RESPONSE_TO_FW_15 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw16 = 122, /**< PWC_AVS_AVS_RESPONSE_TO_FW_16 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw17 = 123, /**< PWC_AVS_AVS_RESPONSE_TO_FW_17 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw18 = 124, /**< PWC_AVS_AVS_RESPONSE_TO_FW_18 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw19 = 125, /**< PWC_AVS_AVS_RESPONSE_TO_FW_19 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw20 = 126, /**< PWC_AVS_AVS_RESPONSE_TO_FW_20 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw21 = 127, /**< PWC_AVS_AVS_RESPONSE_TO_FW_21 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw22 = 128, /**< PWC_AVS_AVS_RESPONSE_TO_FW_22 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw23 = 129, /**< PWC_AVS_AVS_RESPONSE_TO_FW_23 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw24 = 130, /**< PWC_AVS_AVS_RESPONSE_TO_FW_24 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw25 = 131, /**< PWC_AVS_AVS_RESPONSE_TO_FW_25 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw26 = 132, /**< PWC_AVS_AVS_RESPONSE_TO_FW_26 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw27 = 133, /**< PWC_AVS_AVS_RESPONSE_TO_FW_27 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw28 = 134, /**< PWC_AVS_AVS_RESPONSE_TO_FW_28 */
  kTopPwcPlicPwcIrqIdPwcBcastCStateEntry = 135, /**< PWC_BCAST_C_STATE_ENTRY */
  kTopPwcPlicPwcIrqIdPwcBcastCStateExit = 136, /**< PWC_BCAST_C_STATE_EXIT */
  kTopPwcPlicPwcIrqIdPwcBcastDpaIdleEntry = 137, /**< PWC_BCAST_DPA_IDLE_ENTRY */
  kTopPwcPlicPwcIrqIdPwcBcastDpaIdleExit = 138, /**< PWC_BCAST_DPA_IDLE_EXIT */
  kTopPwcPlicPwcIrqIdPwcCcs0PwrVirusLvlReq = 139, /**< PWC_CCS_0_PWR_VIRUS_LVL_REQ */
  kTopPwcPlicPwcIrqIdPwcCcs1PwrVirusLvlReq = 140, /**< PWC_CCS_1_PWR_VIRUS_LVL_REQ */
  kTopPwcPlicPwcIrqIdPwcCcs2PwrVirusLvlReq = 141, /**< PWC_CCS_2_PWR_VIRUS_LVL_REQ */
  kTopPwcPlicPwcIrqIdPwcCcs3PwrVirusLvlReq = 142, /**< PWC_CCS_3_PWR_VIRUS_LVL_REQ */
  kTopPwcPlicPwcIrqIdPwcCcs4PwrVirusLvlReq = 143, /**< PWC_CCS_4_PWR_VIRUS_LVL_REQ */
  kTopPwcPlicPwcIrqIdPwcCcs5PwrVirusLvlReq = 144, /**< PWC_CCS_5_PWR_VIRUS_LVL_REQ */
  kTopPwcPlicPwcIrqIdPwcCcs6PwrVirusLvlReq = 145, /**< PWC_CCS_6_PWR_VIRUS_LVL_REQ */
  kTopPwcPlicPwcIrqIdPwcCcs7PwrVirusLvlReq = 146, /**< PWC_CCS_7_PWR_VIRUS_LVL_REQ */
  kTopPwcPlicPwcIrqIdPwcCcs0DvfsFsm = 147, /**< PWC_CCS_0_DVFS_FSM */
  kTopPwcPlicPwcIrqIdPwcCcs1DvfsFsm = 148, /**< PWC_CCS_1_DVFS_FSM */
  kTopPwcPlicPwcIrqIdPwcDvfsSocdpafsmstatus0 = 149, /**< PWC_DVFS_SocDpaFsmstatus0 */
  kTopPwcPlicPwcIrqIdPwcDvfsSocdpafsmstatus1 = 150, /**< PWC_DVFS_SocDpaFsmstatus1 */
  kTopPwcPlicPwcIrqIdPwcDvfsSocdpafsmstatus2 = 151, /**< PWC_DVFS_SocDpaFsmstatus2 */
  kTopPwcPlicPwcIrqIdPwcDvfsSocdpafsmstatus3 = 152, /**< PWC_DVFS_SocDpaFsmstatus3 */
  kTopPwcPlicPwcIrqIdPwcDvfsSocdpafsmstatus4 = 153, /**< PWC_DVFS_SocDpaFsmstatus4 */
  kTopPwcPlicPwcIrqIdPwcDvfsSocdpafsmstatus5 = 154, /**< PWC_DVFS_SocDpaFsmstatus5 */
  kTopPwcPlicPwcIrqIdPwcHmsEastStatus = 155, /**< PWC_HMS_East_STATUS */
  kTopPwcPlicPwcIrqIdPwcHmsWestStatus = 156, /**< PWC_HMS_WEST_STATUS */
  kTopPwcPlicPwcIrqIdPwcPcs0AllPortsStatus = 157, /**< PWC_PCS_0_ALL_PORTS_STATUS */
  kTopPwcPlicPwcIrqIdPwcPcs0LinkBringup0 = 158, /**< PWC_PCS_0_LINK_BRINGUP_0 */
  kTopPwcPlicPwcIrqIdPwcPcs0LinkBringup1 = 159, /**< PWC_PCS_0_LINK_BRINGUP_1 */
  kTopPwcPlicPwcIrqIdPwcPcs0LinkBringup2 = 160, /**< PWC_PCS_0_LINK_BRINGUP_2 */
  kTopPwcPlicPwcIrqIdPwcPcs0LinkBringup3 = 161, /**< PWC_PCS_0_LINK_BRINGUP_3 */
  kTopPwcPlicPwcIrqIdPwcPcs0MsgCtrl = 162, /**< PWC_PCS_0_MSG_CTRL */
  kTopPwcPlicPwcIrqIdPwcPcs0PhyStatus = 163, /**< PWC_PCS_0_PHY_STATUS */
  kTopPwcPlicPwcIrqIdPwcPcs1AllPortsStatus = 164, /**< PWC_PCS_1_ALL_PORTS_STATUS */
  kTopPwcPlicPwcIrqIdPwcPcs1LinkBringup0 = 165, /**< PWC_PCS_1_LINK_BRINGUP_0 */
  kTopPwcPlicPwcIrqIdPwcPcs1LinkBringup1 = 166, /**< PWC_PCS_1_LINK_BRINGUP_1 */
  kTopPwcPlicPwcIrqIdPwcPcs1LinkBringup2 = 167, /**< PWC_PCS_1_LINK_BRINGUP_2 */
  kTopPwcPlicPwcIrqIdPwcPcs1LinkBringup3 = 168, /**< PWC_PCS_1_LINK_BRINGUP_3 */
  kTopPwcPlicPwcIrqIdPwcPcs1MsgCtrl = 169, /**< PWC_PCS_1_MSG_CTRL */
  kTopPwcPlicPwcIrqIdPwcPcs1PhyStatus = 170, /**< PWC_PCS_1_PHY_STATUS */
  kTopPwcPlicPwcIrqIdPwcPcs2AllPortsStatus = 171, /**< PWC_PCS_2_ALL_PORTS_STATUS */
  kTopPwcPlicPwcIrqIdPwcPcs2LinkBringup0 = 172, /**< PWC_PCS_2_LINK_BRINGUP_0 */
  kTopPwcPlicPwcIrqIdPwcPcs2LinkBringup1 = 173, /**< PWC_PCS_2_LINK_BRINGUP_1 */
  kTopPwcPlicPwcIrqIdPwcPcs2LinkBringup2 = 174, /**< PWC_PCS_2_LINK_BRINGUP_2 */
  kTopPwcPlicPwcIrqIdPwcPcs2LinkBringup3 = 175, /**< PWC_PCS_2_LINK_BRINGUP_3 */
  kTopPwcPlicPwcIrqIdPwcPcs2MsgCtrl = 176, /**< PWC_PCS_2_MSG_CTRL */
  kTopPwcPlicPwcIrqIdPwcPcs2PhyStatus = 177, /**< PWC_PCS_2_PHY_STATUS */
  kTopPwcPlicPwcIrqIdPwcPcs3AllPortsStatus = 178, /**< PWC_PCS_3_ALL_PORTS_STATUS */
  kTopPwcPlicPwcIrqIdPwcPcs3LinkBringup0 = 179, /**< PWC_PCS_3_LINK_BRINGUP_0 */
  kTopPwcPlicPwcIrqIdPwcPcs3LinkBringup1 = 180, /**< PWC_PCS_3_LINK_BRINGUP_1 */
  kTopPwcPlicPwcIrqIdPwcPcs3LinkBringup2 = 181, /**< PWC_PCS_3_LINK_BRINGUP_2 */
  kTopPwcPlicPwcIrqIdPwcPcs3LinkBringup3 = 182, /**< PWC_PCS_3_LINK_BRINGUP_3 */
  kTopPwcPlicPwcIrqIdPwcPcs3MsgCtrl = 183, /**< PWC_PCS_3_MSG_CTRL */
  kTopPwcPlicPwcIrqIdPwcPcs3PhyStatus = 184, /**< PWC_PCS_3_PHY_STATUS */
  kTopPwcPlicPwcIrqIdPwcPcs4AllPortsStatus = 185, /**< PWC_PCS_4_ALL_PORTS_STATUS */
  kTopPwcPlicPwcIrqIdPwcPcs4LinkBringup0 = 186, /**< PWC_PCS_4_LINK_BRINGUP_0 */
  kTopPwcPlicPwcIrqIdPwcPcs4LinkBringup1 = 187, /**< PWC_PCS_4_LINK_BRINGUP_1 */
  kTopPwcPlicPwcIrqIdPwcPcs4LinkBringup2 = 188, /**< PWC_PCS_4_LINK_BRINGUP_2 */
  kTopPwcPlicPwcIrqIdPwcPcs4LinkBringup3 = 189, /**< PWC_PCS_4_LINK_BRINGUP_3 */
  kTopPwcPlicPwcIrqIdPwcPcs4MsgCtrl = 190, /**< PWC_PCS_4_MSG_CTRL */
  kTopPwcPlicPwcIrqIdPwcPcs4PhyStatus = 191, /**< PWC_PCS_4_PHY_STATUS */
  kTopPwcPlicPwcIrqIdPwcPcs5AllPortsStatus = 192, /**< PWC_PCS_5_ALL_PORTS_STATUS */
  kTopPwcPlicPwcIrqIdPwcPcs5LinkBringup0 = 193, /**< PWC_PCS_5_LINK_BRINGUP_0 */
  kTopPwcPlicPwcIrqIdPwcPcs5LinkBringup1 = 194, /**< PWC_PCS_5_LINK_BRINGUP_1 */
  kTopPwcPlicPwcIrqIdPwcPcs5LinkBringup2 = 195, /**< PWC_PCS_5_LINK_BRINGUP_2 */
  kTopPwcPlicPwcIrqIdPwcPcs5LinkBringup3 = 196, /**< PWC_PCS_5_LINK_BRINGUP_3 */
  kTopPwcPlicPwcIrqIdPwcPcs5MsgCtrl = 197, /**< PWC_PCS_5_MSG_CTRL */
  kTopPwcPlicPwcIrqIdPwcPcs5PhyStatus = 198, /**< PWC_PCS_5_PHY_STATUS */
  kTopPwcPlicPwcIrqIdPwcPcs6AllPortsStatus = 199, /**< PWC_PCS_6_ALL_PORTS_STATUS */
  kTopPwcPlicPwcIrqIdPwcPcs6LinkBringup0 = 200, /**< PWC_PCS_6_LINK_BRINGUP_0 */
  kTopPwcPlicPwcIrqIdPwcPcs6LinkBringup1 = 201, /**< PWC_PCS_6_LINK_BRINGUP_1 */
  kTopPwcPlicPwcIrqIdPwcPcs6LinkBringup2 = 202, /**< PWC_PCS_6_LINK_BRINGUP_2 */
  kTopPwcPlicPwcIrqIdPwcPcs6LinkBringup3 = 203, /**< PWC_PCS_6_LINK_BRINGUP_3 */
  kTopPwcPlicPwcIrqIdPwcPcs6MsgCtrl = 204, /**< PWC_PCS_6_MSG_CTRL */
  kTopPwcPlicPwcIrqIdPwcPcs6PhyStatus = 205, /**< PWC_PCS_6_PHY_STATUS */
  kTopPwcPlicPwcIrqIdPwcPcs7AllPortsStatus = 206, /**< PWC_PCS_7_ALL_PORTS_STATUS */
  kTopPwcPlicPwcIrqIdPwcPcs7LinkBringup0 = 207, /**< PWC_PCS_7_LINK_BRINGUP_0 */
  kTopPwcPlicPwcIrqIdPwcPcs7LinkBringup1 = 208, /**< PWC_PCS_7_LINK_BRINGUP_1 */
  kTopPwcPlicPwcIrqIdPwcPcs7LinkBringup2 = 209, /**< PWC_PCS_7_LINK_BRINGUP_2 */
  kTopPwcPlicPwcIrqIdPwcPcs7LinkBringup3 = 210, /**< PWC_PCS_7_LINK_BRINGUP_3 */
  kTopPwcPlicPwcIrqIdPwcPcs7MsgCtrl = 211, /**< PWC_PCS_7_MSG_CTRL */
  kTopPwcPlicPwcIrqIdPwcPcs7PhyStatus = 212, /**< PWC_PCS_7_PHY_STATUS */
  kTopPwcPlicPwcIrqIdPwcHdrIpiFromPwc0 = 213, /**< PWC_HDR_IPI_FROM_PWC_0 */
  kTopPwcPlicPwcIrqIdPwcHdrIpiFromPwc1 = 214, /**< PWC_HDR_IPI_FROM_PWC_1 */
  kTopPwcPlicPwcIrqIdPwcHdrIpiFromPwc2 = 215, /**< PWC_HDR_IPI_FROM_PWC_2 */
  kTopPwcPlicPwcIrqIdPwcHdrIpiFromRot = 216, /**< PWC_HDR_IPI_FROM_ROT */
  kTopPwcPlicPwcIrqIdPwcHdrIpiFromMio = 217, /**< PWC_HDR_IPI_FROM_MIO */
  kTopPwcPlicPwcIrqIdPwcHdrIpiFromDuc = 218, /**< PWC_HDR_IPI_FROM_DUC */
  kTopPwcPlicPwcIrqIdLioGrpAIpiFromLiogrpaI3c0PeriphRstReq = 219, /**< LIO_GRP_A_IPI_FROM_LIOGRPA_I3C0_PERIPH_RST_REQ */
  kTopPwcPlicPwcIrqIdLioGrpAIpiFromLiogrpaI3c0ChipRstReq = 220, /**< LIO_GRP_A_IPI_FROM_LIOGRPA_I3C0_CHIP_RST_REQ */
  kTopPwcPlicPwcIrqIdLioGrpAIpiFromLiogrpaI3c1PeriphRstReq = 221, /**< LIO_GRP_A_IPI_FROM_LIOGRPA_I3C1_PERIPH_RST_REQ */
  kTopPwcPlicPwcIrqIdLioGrpAIpiFromLiogrpaI3c1ChipRstReq = 222, /**< LIO_GRP_A_IPI_FROM_LIOGRPA_I3C1_CHIP_RST_REQ */
  kTopPwcPlicPwcIrqIdLioGrpAIpiFromLiogrpaI3c2PeriphRstReq = 223, /**< LIO_GRP_A_IPI_FROM_LIOGRPA_I3C2_PERIPH_RST_REQ */
  kTopPwcPlicPwcIrqIdLioGrpAIpiFromLiogrpaI3c2ChipRstReq = 224, /**< LIO_GRP_A_IPI_FROM_LIOGRPA_I3C2_CHIP_RST_REQ */
  kTopPwcPlicPwcIrqIdLioGrpBIpiFromLiogrpbI3c0PeriphRstReq = 225, /**< LIO_GRP_B_IPI_FROM_LIOGRPB_I3C0_PERIPH_RST_REQ */
  kTopPwcPlicPwcIrqIdLioGrpBIpiFromLiogrpbI3c0ChipRstReq = 226, /**< LIO_GRP_B_IPI_FROM_LIOGRPB_I3C0_CHIP_RST_REQ */
  kTopPwcPlicPwcIrqIdLioGrpBIpiFromLiogrpbI3c1PeriphRstReq = 227, /**< LIO_GRP_B_IPI_FROM_LIOGRPB_I3C1_PERIPH_RST_REQ */
  kTopPwcPlicPwcIrqIdLioGrpBIpiFromLiogrpbI3c1ChipRstReq = 228, /**< LIO_GRP_B_IPI_FROM_LIOGRPB_I3C1_CHIP_RST_REQ */
  kTopPwcPlicPwcIrqIdLioGrpBIpiFromLiogrpbI3c2PeriphRstReq = 229, /**< LIO_GRP_B_IPI_FROM_LIOGRPB_I3C2_PERIPH_RST_REQ */
  kTopPwcPlicPwcIrqIdLioGrpBIpiFromLiogrpbI3c2ChipRstReq = 230, /**< LIO_GRP_B_IPI_FROM_LIOGRPB_I3C2_CHIP_RST_REQ */
  kTopPwcPlicPwcIrqIdLioGrpCIpiFromLiogrpcI3c0PeriphRstReq = 231, /**< LIO_GRP_C_IPI_FROM_LIOGRPC_I3C0_PERIPH_RST_REQ */
  kTopPwcPlicPwcIrqIdLioGrpCIpiFromLiogrpcI3c0ChipRstReq = 232, /**< LIO_GRP_C_IPI_FROM_LIOGRPC_I3C0_CHIP_RST_REQ */
  kTopPwcPlicPwcIrqIdLioGrpCIpiFromLiogrpcI3c1PeriphRstReq = 233, /**< LIO_GRP_C_IPI_FROM_LIOGRPC_I3C1_PERIPH_RST_REQ */
  kTopPwcPlicPwcIrqIdLioGrpCIpiFromLiogrpcI3c1ChipRstReq = 234, /**< LIO_GRP_C_IPI_FROM_LIOGRPC_I3C1_CHIP_RST_REQ */
  kTopPwcPlicPwcIrqIdLioGrpCIpiFromLiogrpcI3c2PeriphRstReq = 235, /**< LIO_GRP_C_IPI_FROM_LIOGRPC_I3C2_PERIPH_RST_REQ */
  kTopPwcPlicPwcIrqIdLioGrpCIpiFromLiogrpcI3c2ChipRstReq = 236, /**< LIO_GRP_C_IPI_FROM_LIOGRPC_I3C2_CHIP_RST_REQ */
  kTopPwcPlicPwcIrqIdLioGrpDIpiFromLiogrpdI3c0PeriphRstReq = 237, /**< LIO_GRP_D_IPI_FROM_LIOGRPD_I3C0_PERIPH_RST_REQ */
  kTopPwcPlicPwcIrqIdLioGrpDIpiFromLiogrpdI3c0ChipRstReq = 238, /**< LIO_GRP_D_IPI_FROM_LIOGRPD_I3C0_CHIP_RST_REQ */
  kTopPwcPlicPwcIrqIdLioGrpDIpiFromLiogrpdI3c1PeriphRstReq = 239, /**< LIO_GRP_D_IPI_FROM_LIOGRPD_I3C1_PERIPH_RST_REQ */
  kTopPwcPlicPwcIrqIdLioGrpDIpiFromLiogrpdI3c1ChipRstReq = 240, /**< LIO_GRP_D_IPI_FROM_LIOGRPD_I3C1_CHIP_RST_REQ */
  kTopPwcPlicPwcIrqIdLioGrpDIpiFromLiogrpdI3c2PeriphRstReq = 241, /**< LIO_GRP_D_IPI_FROM_LIOGRPD_I3C2_PERIPH_RST_REQ */
  kTopPwcPlicPwcIrqIdLioGrpDIpiFromLiogrpdI3c2ChipRstReq = 242, /**< LIO_GRP_D_IPI_FROM_LIOGRPD_I3C2_CHIP_RST_REQ */
  kTopPwcPlicPwcIrqIdPwcErs0Req0ErsReqInterrupt = 243, /**< PWC_ERS0_REQ0_ERS_REQ_INTERRUPT */
  kTopPwcPlicPwcIrqIdPwcErs0Req1ErsReqInterrupt = 244, /**< PWC_ERS0_REQ1_ERS_REQ_INTERRUPT */
  kTopPwcPlicPwcIrqIdPwcErs1Req0ErsReqInterrupt = 245, /**< PWC_ERS1_REQ0_ERS_REQ_INTERRUPT */
  kTopPwcPlicPwcIrqIdPwcErs1Req1ErsReqInterrupt = 246, /**< PWC_ERS1_REQ1_ERS_REQ_INTERRUPT */
  kTopPwcPlicPwcIrqIdPwcCcs0CstateEntry = 247, /**< PWC_CCS_0_CSTATE_ENTRY */
  kTopPwcPlicPwcIrqIdPwcCcs0CstateExit = 248, /**< PWC_CCS_0_CSTATE_EXIT */
  kTopPwcPlicPwcIrqIdPwcCcs1CstateEntry = 249, /**< PWC_CCS_1_CSTATE_ENTRY */
  kTopPwcPlicPwcIrqIdPwcCcs1CstateExit = 250, /**< PWC_CCS_1_CSTATE_EXIT */
  kTopPwcPlicPwcIrqIdPwcSpareecoirq1 = 251, /**< PWC_spareEcoIrq1 */
  kTopPwcPlicPwcIrqIdLast = 251, /**< \internal The Last Valid Interrupt ID. */
} top_pwc_plic_pwc_irq_id_t;

/**
 * PLIC Interrupt Source to Peripheral Map
 *
 * This array is a mapping from `top_pwc_plic_pwc_irq_id_t` to
 * `top_pwc_plic_pwc_peripheral_t`.
 */
extern const top_pwc_plic_pwc_peripheral_t
    top_pwc_plic_pwc_interrupt_for_peripheral[252];

/**
 * PLIC Interrupt Target.
 *
 * Enumeration used to determine which set of IE, CC, threshold registers to
 * access for a given interrupt target.
 */
typedef enum top_pwc_plic_pwc_target {
  kTopPwcPlicPwcTargetIbexPwc = 0, /**< Ibex rv_core_ibex_pwc */
  kTopPwcPlicPwcTargetLast = 0, /**< \internal Final PLIC target */
} top_pwc_plic_pwc_target_t;


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
