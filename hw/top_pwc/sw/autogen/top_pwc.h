// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// ------------------- W A R N I N G: A U T O - G E N E R A T E D   C O D E !! -------------------//
// PLEASE DO NOT HAND-EDIT THIS FILE. IT HAS BEEN AUTO-GENERATED WITH THE FOLLOWING COMMAND:
// util/topgen.py -t hw/top_pwc/data/top_pwc.hjson \
//                -o hw/top_pwc/

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
#define TOP_PWC_PWC_SOC_PROXY_CTN_SIZE_BYTES 0x80000000u

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
#define TOP_PWC_CTN_SIZE_BYTES 0x80000000u

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
  kTopPwcPlicPwcIrqIdPwcDvfsTargetcmdavs0 = 70, /**< PWC_DVFS_TargetCmdAVS0 */
  kTopPwcPlicPwcIrqIdPwcDvfsTargetcmdavs1 = 71, /**< PWC_DVFS_TargetCmdAVS1 */
  kTopPwcPlicPwcIrqIdPwcDvfsTargetcmdavs2 = 72, /**< PWC_DVFS_TargetCmdAVS2 */
  kTopPwcPlicPwcIrqIdPwcDvfsTargetcmdavs3 = 73, /**< PWC_DVFS_TargetCmdAVS3 */
  kTopPwcPlicPwcIrqIdPwcDvfsTargetcmdavs4 = 74, /**< PWC_DVFS_TargetCmdAVS4 */
  kTopPwcPlicPwcIrqIdPwcDvfsTargetcmdavs5 = 75, /**< PWC_DVFS_TargetCmdAVS5 */
  kTopPwcPlicPwcIrqIdPwcDvfsTargetcmdavs6 = 76, /**< PWC_DVFS_TargetCmdAVS6 */
  kTopPwcPlicPwcIrqIdPwcDvfsTargetcmdavs7 = 77, /**< PWC_DVFS_TargetCmdAVS7 */
  kTopPwcPlicPwcIrqIdPwcDvfsTargetcmdavs8 = 78, /**< PWC_DVFS_TargetCmdAVS8 */
  kTopPwcPlicPwcIrqIdPwcDvfsTargetcmdavs9 = 79, /**< PWC_DVFS_TargetCmdAVS9 */
  kTopPwcPlicPwcIrqIdPwcDvfsTargetcmdavs10 = 80, /**< PWC_DVFS_TargetCmdAVS10 */
  kTopPwcPlicPwcIrqIdPwcDvfsTargetcmdavs11 = 81, /**< PWC_DVFS_TargetCmdAVS11 */
  kTopPwcPlicPwcIrqIdPwcDvfsTargetcmdavs12 = 82, /**< PWC_DVFS_TargetCmdAVS12 */
  kTopPwcPlicPwcIrqIdPwcDvfsTargetcmdavs13 = 83, /**< PWC_DVFS_TargetCmdAVS13 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsError0 = 84, /**< PWC_AVS_AVS_ERROR_0 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsError1 = 85, /**< PWC_AVS_AVS_ERROR_1 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsError2 = 86, /**< PWC_AVS_AVS_ERROR_2 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsError3 = 87, /**< PWC_AVS_AVS_ERROR_3 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsError4 = 88, /**< PWC_AVS_AVS_ERROR_4 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsError5 = 89, /**< PWC_AVS_AVS_ERROR_5 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsError6 = 90, /**< PWC_AVS_AVS_ERROR_6 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsError7 = 91, /**< PWC_AVS_AVS_ERROR_7 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsError8 = 92, /**< PWC_AVS_AVS_ERROR_8 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsError9 = 93, /**< PWC_AVS_AVS_ERROR_9 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsError10 = 94, /**< PWC_AVS_AVS_ERROR_10 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsError11 = 95, /**< PWC_AVS_AVS_ERROR_11 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsError12 = 96, /**< PWC_AVS_AVS_ERROR_12 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsError13 = 97, /**< PWC_AVS_AVS_ERROR_13 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsError14 = 98, /**< PWC_AVS_AVS_ERROR_14 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsError15 = 99, /**< PWC_AVS_AVS_ERROR_15 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsError16 = 100, /**< PWC_AVS_AVS_ERROR_16 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsError17 = 101, /**< PWC_AVS_AVS_ERROR_17 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsError18 = 102, /**< PWC_AVS_AVS_ERROR_18 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsError19 = 103, /**< PWC_AVS_AVS_ERROR_19 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsError20 = 104, /**< PWC_AVS_AVS_ERROR_20 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw0 = 105, /**< PWC_AVS_AVS_RESPONSE_TO_FW_0 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw1 = 106, /**< PWC_AVS_AVS_RESPONSE_TO_FW_1 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw2 = 107, /**< PWC_AVS_AVS_RESPONSE_TO_FW_2 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw3 = 108, /**< PWC_AVS_AVS_RESPONSE_TO_FW_3 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw4 = 109, /**< PWC_AVS_AVS_RESPONSE_TO_FW_4 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw5 = 110, /**< PWC_AVS_AVS_RESPONSE_TO_FW_5 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw6 = 111, /**< PWC_AVS_AVS_RESPONSE_TO_FW_6 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw7 = 112, /**< PWC_AVS_AVS_RESPONSE_TO_FW_7 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw8 = 113, /**< PWC_AVS_AVS_RESPONSE_TO_FW_8 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw9 = 114, /**< PWC_AVS_AVS_RESPONSE_TO_FW_9 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw10 = 115, /**< PWC_AVS_AVS_RESPONSE_TO_FW_10 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw11 = 116, /**< PWC_AVS_AVS_RESPONSE_TO_FW_11 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw12 = 117, /**< PWC_AVS_AVS_RESPONSE_TO_FW_12 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw13 = 118, /**< PWC_AVS_AVS_RESPONSE_TO_FW_13 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw14 = 119, /**< PWC_AVS_AVS_RESPONSE_TO_FW_14 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw15 = 120, /**< PWC_AVS_AVS_RESPONSE_TO_FW_15 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw16 = 121, /**< PWC_AVS_AVS_RESPONSE_TO_FW_16 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw17 = 122, /**< PWC_AVS_AVS_RESPONSE_TO_FW_17 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw18 = 123, /**< PWC_AVS_AVS_RESPONSE_TO_FW_18 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw19 = 124, /**< PWC_AVS_AVS_RESPONSE_TO_FW_19 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw20 = 125, /**< PWC_AVS_AVS_RESPONSE_TO_FW_20 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw21 = 126, /**< PWC_AVS_AVS_RESPONSE_TO_FW_21 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw22 = 127, /**< PWC_AVS_AVS_RESPONSE_TO_FW_22 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw23 = 128, /**< PWC_AVS_AVS_RESPONSE_TO_FW_23 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw24 = 129, /**< PWC_AVS_AVS_RESPONSE_TO_FW_24 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw25 = 130, /**< PWC_AVS_AVS_RESPONSE_TO_FW_25 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw26 = 131, /**< PWC_AVS_AVS_RESPONSE_TO_FW_26 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw27 = 132, /**< PWC_AVS_AVS_RESPONSE_TO_FW_27 */
  kTopPwcPlicPwcIrqIdPwcAvsAvsResponseToFw28 = 133, /**< PWC_AVS_AVS_RESPONSE_TO_FW_28 */
  kTopPwcPlicPwcIrqIdPwcBcastCStateEntry = 134, /**< PWC_BCAST_C_STATE_ENTRY */
  kTopPwcPlicPwcIrqIdPwcBcastCStateExit = 135, /**< PWC_BCAST_C_STATE_EXIT */
  kTopPwcPlicPwcIrqIdPwcBcastDpaIdleEntry = 136, /**< PWC_BCAST_DPA_IDLE_ENTRY */
  kTopPwcPlicPwcIrqIdPwcBcastDpaIdleExit = 137, /**< PWC_BCAST_DPA_IDLE_EXIT */
  kTopPwcPlicPwcIrqIdPwcCcs0PwrVirusLvlReq = 138, /**< PWC_CCS_0_PWR_VIRUS_LVL_REQ */
  kTopPwcPlicPwcIrqIdPwcCcs1PwrVirusLvlReq = 139, /**< PWC_CCS_1_PWR_VIRUS_LVL_REQ */
  kTopPwcPlicPwcIrqIdPwcCcs2PwrVirusLvlReq = 140, /**< PWC_CCS_2_PWR_VIRUS_LVL_REQ */
  kTopPwcPlicPwcIrqIdPwcCcs3PwrVirusLvlReq = 141, /**< PWC_CCS_3_PWR_VIRUS_LVL_REQ */
  kTopPwcPlicPwcIrqIdPwcCcs4PwrVirusLvlReq = 142, /**< PWC_CCS_4_PWR_VIRUS_LVL_REQ */
  kTopPwcPlicPwcIrqIdPwcCcs5PwrVirusLvlReq = 143, /**< PWC_CCS_5_PWR_VIRUS_LVL_REQ */
  kTopPwcPlicPwcIrqIdPwcCcs0DvfsFsm = 144, /**< PWC_CCS_0_DVFS_FSM */
  kTopPwcPlicPwcIrqIdPwcCcs1DvfsFsm = 145, /**< PWC_CCS_1_DVFS_FSM */
  kTopPwcPlicPwcIrqIdPwcDvfsSocdpafsmstatus0 = 146, /**< PWC_DVFS_SocDpaFsmstatus0 */
  kTopPwcPlicPwcIrqIdPwcDvfsSocdpafsmstatus1 = 147, /**< PWC_DVFS_SocDpaFsmstatus1 */
  kTopPwcPlicPwcIrqIdPwcDvfsSocdpafsmstatus2 = 148, /**< PWC_DVFS_SocDpaFsmstatus2 */
  kTopPwcPlicPwcIrqIdPwcDvfsSocdpafsmstatus3 = 149, /**< PWC_DVFS_SocDpaFsmstatus3 */
  kTopPwcPlicPwcIrqIdPwcDvfsSocdpafsmstatus4 = 150, /**< PWC_DVFS_SocDpaFsmstatus4 */
  kTopPwcPlicPwcIrqIdPwcDvfsSocdpafsmstatus5 = 151, /**< PWC_DVFS_SocDpaFsmstatus5 */
  kTopPwcPlicPwcIrqIdPwcHms0Status = 152, /**< PWC_HMS_0_STATUS */
  kTopPwcPlicPwcIrqIdPwcHms1Status = 153, /**< PWC_HMS_1_STATUS */
  kTopPwcPlicPwcIrqIdPwcHms2Status = 154, /**< PWC_HMS_2_STATUS */
  kTopPwcPlicPwcIrqIdPwcHms3Status = 155, /**< PWC_HMS_3_STATUS */
  kTopPwcPlicPwcIrqIdPwcPcs0AllPortsStatus = 156, /**< PWC_PCS_0_ALL_PORTS_STATUS */
  kTopPwcPlicPwcIrqIdPwcPcs0LinkBringup0 = 157, /**< PWC_PCS_0_LINK_BRINGUP_0 */
  kTopPwcPlicPwcIrqIdPwcPcs0LinkBringup1 = 158, /**< PWC_PCS_0_LINK_BRINGUP_1 */
  kTopPwcPlicPwcIrqIdPwcPcs0LinkBringup2 = 159, /**< PWC_PCS_0_LINK_BRINGUP_2 */
  kTopPwcPlicPwcIrqIdPwcPcs0LinkBringup3 = 160, /**< PWC_PCS_0_LINK_BRINGUP_3 */
  kTopPwcPlicPwcIrqIdPwcPcs0MsgCtrl = 161, /**< PWC_PCS_0_MSG_CTRL */
  kTopPwcPlicPwcIrqIdPwcPcs0PhyStatus = 162, /**< PWC_PCS_0_PHY_STATUS */
  kTopPwcPlicPwcIrqIdPwcPcs1AllPortsStatus = 163, /**< PWC_PCS_1_ALL_PORTS_STATUS */
  kTopPwcPlicPwcIrqIdPwcPcs1LinkBringup0 = 164, /**< PWC_PCS_1_LINK_BRINGUP_0 */
  kTopPwcPlicPwcIrqIdPwcPcs1LinkBringup1 = 165, /**< PWC_PCS_1_LINK_BRINGUP_1 */
  kTopPwcPlicPwcIrqIdPwcPcs1LinkBringup2 = 166, /**< PWC_PCS_1_LINK_BRINGUP_2 */
  kTopPwcPlicPwcIrqIdPwcPcs1LinkBringup3 = 167, /**< PWC_PCS_1_LINK_BRINGUP_3 */
  kTopPwcPlicPwcIrqIdPwcPcs1MsgCtrl = 168, /**< PWC_PCS_1_MSG_CTRL */
  kTopPwcPlicPwcIrqIdPwcPcs1PhyStatus = 169, /**< PWC_PCS_1_PHY_STATUS */
  kTopPwcPlicPwcIrqIdPwcPcs2AllPortsStatus = 170, /**< PWC_PCS_2_ALL_PORTS_STATUS */
  kTopPwcPlicPwcIrqIdPwcPcs2LinkBringup0 = 171, /**< PWC_PCS_2_LINK_BRINGUP_0 */
  kTopPwcPlicPwcIrqIdPwcPcs2LinkBringup1 = 172, /**< PWC_PCS_2_LINK_BRINGUP_1 */
  kTopPwcPlicPwcIrqIdPwcPcs2LinkBringup2 = 173, /**< PWC_PCS_2_LINK_BRINGUP_2 */
  kTopPwcPlicPwcIrqIdPwcPcs2LinkBringup3 = 174, /**< PWC_PCS_2_LINK_BRINGUP_3 */
  kTopPwcPlicPwcIrqIdPwcPcs2MsgCtrl = 175, /**< PWC_PCS_2_MSG_CTRL */
  kTopPwcPlicPwcIrqIdPwcPcs2PhyStatus = 176, /**< PWC_PCS_2_PHY_STATUS */
  kTopPwcPlicPwcIrqIdPwcPcs3AllPortsStatus = 177, /**< PWC_PCS_3_ALL_PORTS_STATUS */
  kTopPwcPlicPwcIrqIdPwcPcs3LinkBringup0 = 178, /**< PWC_PCS_3_LINK_BRINGUP_0 */
  kTopPwcPlicPwcIrqIdPwcPcs3LinkBringup1 = 179, /**< PWC_PCS_3_LINK_BRINGUP_1 */
  kTopPwcPlicPwcIrqIdPwcPcs3LinkBringup2 = 180, /**< PWC_PCS_3_LINK_BRINGUP_2 */
  kTopPwcPlicPwcIrqIdPwcPcs3LinkBringup3 = 181, /**< PWC_PCS_3_LINK_BRINGUP_3 */
  kTopPwcPlicPwcIrqIdPwcPcs3MsgCtrl = 182, /**< PWC_PCS_3_MSG_CTRL */
  kTopPwcPlicPwcIrqIdPwcPcs3PhyStatus = 183, /**< PWC_PCS_3_PHY_STATUS */
  kTopPwcPlicPwcIrqIdPwcPcs4AllPortsStatus = 184, /**< PWC_PCS_4_ALL_PORTS_STATUS */
  kTopPwcPlicPwcIrqIdPwcPcs4LinkBringup0 = 185, /**< PWC_PCS_4_LINK_BRINGUP_0 */
  kTopPwcPlicPwcIrqIdPwcPcs4LinkBringup1 = 186, /**< PWC_PCS_4_LINK_BRINGUP_1 */
  kTopPwcPlicPwcIrqIdPwcPcs4LinkBringup2 = 187, /**< PWC_PCS_4_LINK_BRINGUP_2 */
  kTopPwcPlicPwcIrqIdPwcPcs4LinkBringup3 = 188, /**< PWC_PCS_4_LINK_BRINGUP_3 */
  kTopPwcPlicPwcIrqIdPwcPcs4MsgCtrl = 189, /**< PWC_PCS_4_MSG_CTRL */
  kTopPwcPlicPwcIrqIdPwcPcs4PhyStatus = 190, /**< PWC_PCS_4_PHY_STATUS */
  kTopPwcPlicPwcIrqIdPwcPcs5AllPortsStatus = 191, /**< PWC_PCS_5_ALL_PORTS_STATUS */
  kTopPwcPlicPwcIrqIdPwcPcs5LinkBringup0 = 192, /**< PWC_PCS_5_LINK_BRINGUP_0 */
  kTopPwcPlicPwcIrqIdPwcPcs5LinkBringup1 = 193, /**< PWC_PCS_5_LINK_BRINGUP_1 */
  kTopPwcPlicPwcIrqIdPwcPcs5LinkBringup2 = 194, /**< PWC_PCS_5_LINK_BRINGUP_2 */
  kTopPwcPlicPwcIrqIdPwcPcs5LinkBringup3 = 195, /**< PWC_PCS_5_LINK_BRINGUP_3 */
  kTopPwcPlicPwcIrqIdPwcPcs5MsgCtrl = 196, /**< PWC_PCS_5_MSG_CTRL */
  kTopPwcPlicPwcIrqIdPwcPcs5PhyStatus = 197, /**< PWC_PCS_5_PHY_STATUS */
  kTopPwcPlicPwcIrqIdPwcPcs6AllPortsStatus = 198, /**< PWC_PCS_6_ALL_PORTS_STATUS */
  kTopPwcPlicPwcIrqIdPwcPcs6LinkBringup0 = 199, /**< PWC_PCS_6_LINK_BRINGUP_0 */
  kTopPwcPlicPwcIrqIdPwcPcs6LinkBringup1 = 200, /**< PWC_PCS_6_LINK_BRINGUP_1 */
  kTopPwcPlicPwcIrqIdPwcPcs6LinkBringup2 = 201, /**< PWC_PCS_6_LINK_BRINGUP_2 */
  kTopPwcPlicPwcIrqIdPwcPcs6LinkBringup3 = 202, /**< PWC_PCS_6_LINK_BRINGUP_3 */
  kTopPwcPlicPwcIrqIdPwcPcs6MsgCtrl = 203, /**< PWC_PCS_6_MSG_CTRL */
  kTopPwcPlicPwcIrqIdPwcPcs6PhyStatus = 204, /**< PWC_PCS_6_PHY_STATUS */
  kTopPwcPlicPwcIrqIdPwcPcs7AllPortsStatus = 205, /**< PWC_PCS_7_ALL_PORTS_STATUS */
  kTopPwcPlicPwcIrqIdPwcPcs7LinkBringup0 = 206, /**< PWC_PCS_7_LINK_BRINGUP_0 */
  kTopPwcPlicPwcIrqIdPwcPcs7LinkBringup1 = 207, /**< PWC_PCS_7_LINK_BRINGUP_1 */
  kTopPwcPlicPwcIrqIdPwcPcs7LinkBringup2 = 208, /**< PWC_PCS_7_LINK_BRINGUP_2 */
  kTopPwcPlicPwcIrqIdPwcPcs7LinkBringup3 = 209, /**< PWC_PCS_7_LINK_BRINGUP_3 */
  kTopPwcPlicPwcIrqIdPwcPcs7MsgCtrl = 210, /**< PWC_PCS_7_MSG_CTRL */
  kTopPwcPlicPwcIrqIdPwcPcs7PhyStatus = 211, /**< PWC_PCS_7_PHY_STATUS */
  kTopPwcPlicPwcIrqIdPwcHdrIpiFromPwc0 = 212, /**< PWC_HDR_IPI_FROM_PWC_0 */
  kTopPwcPlicPwcIrqIdPwcHdrIpiFromPwc1 = 213, /**< PWC_HDR_IPI_FROM_PWC_1 */
  kTopPwcPlicPwcIrqIdPwcHdrIpiFromPwc2 = 214, /**< PWC_HDR_IPI_FROM_PWC_2 */
  kTopPwcPlicPwcIrqIdPwcHdrIpiFromRot = 215, /**< PWC_HDR_IPI_FROM_ROT */
  kTopPwcPlicPwcIrqIdPwcHdrIpiFromMio = 216, /**< PWC_HDR_IPI_FROM_MIO */
  kTopPwcPlicPwcIrqIdPwcHdrIpiFromDuc = 217, /**< PWC_HDR_IPI_FROM_DUC */
  kTopPwcPlicPwcIrqIdLioGrpAIpiFromLiogrpaI3c0PeriphRstReq = 218, /**< LIO_GRP_A_IPI_FROM_LIOGRPA_I3C0_PERIPH_RST_REQ */
  kTopPwcPlicPwcIrqIdLioGrpAIpiFromLiogrpaI3c0ChipRstReq = 219, /**< LIO_GRP_A_IPI_FROM_LIOGRPA_I3C0_CHIP_RST_REQ */
  kTopPwcPlicPwcIrqIdLioGrpAIpiFromLiogrpaI3c1PeriphRstReq = 220, /**< LIO_GRP_A_IPI_FROM_LIOGRPA_I3C1_PERIPH_RST_REQ */
  kTopPwcPlicPwcIrqIdLioGrpAIpiFromLiogrpaI3c1ChipRstReq = 221, /**< LIO_GRP_A_IPI_FROM_LIOGRPA_I3C1_CHIP_RST_REQ */
  kTopPwcPlicPwcIrqIdLioGrpAIpiFromLiogrpaI3c2PeriphRstReq = 222, /**< LIO_GRP_A_IPI_FROM_LIOGRPA_I3C2_PERIPH_RST_REQ */
  kTopPwcPlicPwcIrqIdLioGrpAIpiFromLiogrpaI3c2ChipRstReq = 223, /**< LIO_GRP_A_IPI_FROM_LIOGRPA_I3C2_CHIP_RST_REQ */
  kTopPwcPlicPwcIrqIdLioGrpBIpiFromLiogrpbI3c0PeriphRstReq = 224, /**< LIO_GRP_B_IPI_FROM_LIOGRPB_I3C0_PERIPH_RST_REQ */
  kTopPwcPlicPwcIrqIdLioGrpBIpiFromLiogrpbI3c0ChipRstReq = 225, /**< LIO_GRP_B_IPI_FROM_LIOGRPB_I3C0_CHIP_RST_REQ */
  kTopPwcPlicPwcIrqIdLioGrpBIpiFromLiogrpbI3c1PeriphRstReq = 226, /**< LIO_GRP_B_IPI_FROM_LIOGRPB_I3C1_PERIPH_RST_REQ */
  kTopPwcPlicPwcIrqIdLioGrpBIpiFromLiogrpbI3c1ChipRstReq = 227, /**< LIO_GRP_B_IPI_FROM_LIOGRPB_I3C1_CHIP_RST_REQ */
  kTopPwcPlicPwcIrqIdLioGrpBIpiFromLiogrpbI3c2PeriphRstReq = 228, /**< LIO_GRP_B_IPI_FROM_LIOGRPB_I3C2_PERIPH_RST_REQ */
  kTopPwcPlicPwcIrqIdLioGrpBIpiFromLiogrpbI3c2ChipRstReq = 229, /**< LIO_GRP_B_IPI_FROM_LIOGRPB_I3C2_CHIP_RST_REQ */
  kTopPwcPlicPwcIrqIdLioGrpCIpiFromLiogrpcI3c0PeriphRstReq = 230, /**< LIO_GRP_C_IPI_FROM_LIOGRPC_I3C0_PERIPH_RST_REQ */
  kTopPwcPlicPwcIrqIdLioGrpCIpiFromLiogrpcI3c0ChipRstReq = 231, /**< LIO_GRP_C_IPI_FROM_LIOGRPC_I3C0_CHIP_RST_REQ */
  kTopPwcPlicPwcIrqIdLioGrpCIpiFromLiogrpcI3c1PeriphRstReq = 232, /**< LIO_GRP_C_IPI_FROM_LIOGRPC_I3C1_PERIPH_RST_REQ */
  kTopPwcPlicPwcIrqIdLioGrpCIpiFromLiogrpcI3c1ChipRstReq = 233, /**< LIO_GRP_C_IPI_FROM_LIOGRPC_I3C1_CHIP_RST_REQ */
  kTopPwcPlicPwcIrqIdLioGrpCIpiFromLiogrpcI3c2PeriphRstReq = 234, /**< LIO_GRP_C_IPI_FROM_LIOGRPC_I3C2_PERIPH_RST_REQ */
  kTopPwcPlicPwcIrqIdLioGrpCIpiFromLiogrpcI3c2ChipRstReq = 235, /**< LIO_GRP_C_IPI_FROM_LIOGRPC_I3C2_CHIP_RST_REQ */
  kTopPwcPlicPwcIrqIdLioGrpDIpiFromLiogrpdI3c0PeriphRstReq = 236, /**< LIO_GRP_D_IPI_FROM_LIOGRPD_I3C0_PERIPH_RST_REQ */
  kTopPwcPlicPwcIrqIdLioGrpDIpiFromLiogrpdI3c0ChipRstReq = 237, /**< LIO_GRP_D_IPI_FROM_LIOGRPD_I3C0_CHIP_RST_REQ */
  kTopPwcPlicPwcIrqIdLioGrpDIpiFromLiogrpdI3c1PeriphRstReq = 238, /**< LIO_GRP_D_IPI_FROM_LIOGRPD_I3C1_PERIPH_RST_REQ */
  kTopPwcPlicPwcIrqIdLioGrpDIpiFromLiogrpdI3c1ChipRstReq = 239, /**< LIO_GRP_D_IPI_FROM_LIOGRPD_I3C1_CHIP_RST_REQ */
  kTopPwcPlicPwcIrqIdLioGrpDIpiFromLiogrpdI3c2PeriphRstReq = 240, /**< LIO_GRP_D_IPI_FROM_LIOGRPD_I3C2_PERIPH_RST_REQ */
  kTopPwcPlicPwcIrqIdLioGrpDIpiFromLiogrpdI3c2ChipRstReq = 241, /**< LIO_GRP_D_IPI_FROM_LIOGRPD_I3C2_CHIP_RST_REQ */
  kTopPwcPlicPwcIrqIdPwcErs0Req0ErsReqInterrupt = 242, /**< PWC_ERS0_REQ0_ERS_REQ_INTERRUPT */
  kTopPwcPlicPwcIrqIdPwcErs0Req1ErsReqInterrupt = 243, /**< PWC_ERS0_REQ1_ERS_REQ_INTERRUPT */
  kTopPwcPlicPwcIrqIdPwcErs1Req0ErsReqInterrupt = 244, /**< PWC_ERS1_REQ0_ERS_REQ_INTERRUPT */
  kTopPwcPlicPwcIrqIdPwcErs1Req1ErsReqInterrupt = 245, /**< PWC_ERS1_REQ1_ERS_REQ_INTERRUPT */
  kTopPwcPlicPwcIrqIdPwcCcs0CstateEntry = 246, /**< PWC_CCS_0_CSTATE_ENTRY */
  kTopPwcPlicPwcIrqIdPwcCcs0CstateExit = 247, /**< PWC_CCS_0_CSTATE_EXIT */
  kTopPwcPlicPwcIrqIdPwcCcs1CstateEntry = 248, /**< PWC_CCS_1_CSTATE_ENTRY */
  kTopPwcPlicPwcIrqIdPwcCcs1CstateExit = 249, /**< PWC_CCS_1_CSTATE_EXIT */
  kTopPwcPlicPwcIrqIdLast = 249, /**< \internal The Last Valid Interrupt ID. */
} top_pwc_plic_pwc_irq_id_t;

/**
 * PLIC Interrupt Source to Peripheral Map
 *
 * This array is a mapping from `top_pwc_plic_pwc_irq_id_t` to
 * `top_pwc_plic_pwc_peripheral_t`.
 */
extern const top_pwc_plic_pwc_peripheral_t
    top_pwc_plic_pwc_interrupt_for_peripheral[250];

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
