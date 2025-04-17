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
typedef enum top_pwc_plic_peripheral {
  kTopPwcPlicPeripheralUnknown = 0, /**< Unknown Peripheral */
  kTopPwcPlicPeripheralGpio = 1, /**< gpio */
  kTopPwcPlicPeripheralRvTimer = 2, /**< rv_timer */
  kTopPwcPlicPeripheralAonTimerAon = 3, /**< aon_timer_aon */
  kTopPwcPlicPeripheralDma = 4, /**< dma */
  kTopPwcPlicPeripheralMbx0 = 5, /**< mbx0 */
  kTopPwcPlicPeripheralMbx1 = 6, /**< mbx1 */
  kTopPwcPlicPeripheralMbx2 = 7, /**< mbx2 */
  kTopPwcPlicPeripheralMbx3 = 8, /**< mbx3 */
  kTopPwcPlicPeripheralMbx4 = 9, /**< mbx4 */
  kTopPwcPlicPeripheralMbx5 = 10, /**< mbx5 */
  kTopPwcPlicPeripheralMbxPcie0 = 11, /**< mbx_pcie0 */
  kTopPwcPlicPeripheralRaclCtrl = 12, /**< racl_ctrl */
  kTopPwcPlicPeripheralAcRangeCheck = 13, /**< ac_range_check */
  kTopPwcPlicPeripheralLast = 13, /**< \internal Final PLIC peripheral */
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
  kTopPwcPlicIrqIdDmaDmaDone = 36, /**< dma_dma_done */
  kTopPwcPlicIrqIdDmaDmaChunkDone = 37, /**< dma_dma_chunk_done */
  kTopPwcPlicIrqIdDmaDmaError = 38, /**< dma_dma_error */
  kTopPwcPlicIrqIdMbx0MbxReady = 39, /**< mbx0_mbx_ready */
  kTopPwcPlicIrqIdMbx0MbxAbort = 40, /**< mbx0_mbx_abort */
  kTopPwcPlicIrqIdMbx0MbxError = 41, /**< mbx0_mbx_error */
  kTopPwcPlicIrqIdMbx1MbxReady = 42, /**< mbx1_mbx_ready */
  kTopPwcPlicIrqIdMbx1MbxAbort = 43, /**< mbx1_mbx_abort */
  kTopPwcPlicIrqIdMbx1MbxError = 44, /**< mbx1_mbx_error */
  kTopPwcPlicIrqIdMbx2MbxReady = 45, /**< mbx2_mbx_ready */
  kTopPwcPlicIrqIdMbx2MbxAbort = 46, /**< mbx2_mbx_abort */
  kTopPwcPlicIrqIdMbx2MbxError = 47, /**< mbx2_mbx_error */
  kTopPwcPlicIrqIdMbx3MbxReady = 48, /**< mbx3_mbx_ready */
  kTopPwcPlicIrqIdMbx3MbxAbort = 49, /**< mbx3_mbx_abort */
  kTopPwcPlicIrqIdMbx3MbxError = 50, /**< mbx3_mbx_error */
  kTopPwcPlicIrqIdMbx4MbxReady = 51, /**< mbx4_mbx_ready */
  kTopPwcPlicIrqIdMbx4MbxAbort = 52, /**< mbx4_mbx_abort */
  kTopPwcPlicIrqIdMbx4MbxError = 53, /**< mbx4_mbx_error */
  kTopPwcPlicIrqIdMbx5MbxReady = 54, /**< mbx5_mbx_ready */
  kTopPwcPlicIrqIdMbx5MbxAbort = 55, /**< mbx5_mbx_abort */
  kTopPwcPlicIrqIdMbx5MbxError = 56, /**< mbx5_mbx_error */
  kTopPwcPlicIrqIdMbxPcie0MbxReady = 57, /**< mbx_pcie0_mbx_ready */
  kTopPwcPlicIrqIdMbxPcie0MbxAbort = 58, /**< mbx_pcie0_mbx_abort */
  kTopPwcPlicIrqIdMbxPcie0MbxError = 59, /**< mbx_pcie0_mbx_error */
  kTopPwcPlicIrqIdRaclCtrlRaclError = 60, /**< racl_ctrl_racl_error */
  kTopPwcPlicIrqIdAcRangeCheckDenyCntReached = 61, /**< ac_range_check_deny_cnt_reached */
  kTopPwcPlicIrqIdPwcLteuSocHot = 62, /**< PWC_LTEU_SOC_HOT */
  kTopPwcPlicIrqIdPwcLteuFwTrip = 63, /**< PWC_LTEU_FW_TRIP */
  kTopPwcPlicIrqIdPwcLteuCatTrip = 64, /**< PWC_LTEU_CAT_TRIP */
  kTopPwcPlicIrqIdLioGrpAIbexIrq = 65, /**< LIO_GRP_A_IBEX_IRQ */
  kTopPwcPlicIrqIdLioGrpBIbexIrq = 66, /**< LIO_GRP_B_IBEX_IRQ */
  kTopPwcPlicIrqIdLioGrpCIbexIrq = 67, /**< LIO_GRP_C_IBEX_IRQ */
  kTopPwcPlicIrqIdPwcDvfsSocdpafsmstatus0 = 68, /**< PWC_DVFS_SocDpaFsmstatus0 */
  kTopPwcPlicIrqIdPwcDvfsSocdpafsmstatus1 = 69, /**< PWC_DVFS_SocDpaFsmstatus1 */
  kTopPwcPlicIrqIdPwcDvfsSocdpafsmstatus2 = 70, /**< PWC_DVFS_SocDpaFsmstatus2 */
  kTopPwcPlicIrqIdPwcDvfsSocdpafsmstatus3 = 71, /**< PWC_DVFS_SocDpaFsmstatus3 */
  kTopPwcPlicIrqIdPwcDvfsSocdpafsmstatus4 = 72, /**< PWC_DVFS_SocDpaFsmstatus4 */
  kTopPwcPlicIrqIdPwcDvfsTargetcmdavs0 = 73, /**< PWC_DVFS_TargetCmdAVS0 */
  kTopPwcPlicIrqIdPwcDvfsTargetcmdavs1 = 74, /**< PWC_DVFS_TargetCmdAVS1 */
  kTopPwcPlicIrqIdPwcDvfsTargetcmdavs2 = 75, /**< PWC_DVFS_TargetCmdAVS2 */
  kTopPwcPlicIrqIdPwcDvfsTargetcmdavs3 = 76, /**< PWC_DVFS_TargetCmdAVS3 */
  kTopPwcPlicIrqIdPwcDvfsTargetcmdavs4 = 77, /**< PWC_DVFS_TargetCmdAVS4 */
  kTopPwcPlicIrqIdPwcDvfsTargetcmdavs5 = 78, /**< PWC_DVFS_TargetCmdAVS5 */
  kTopPwcPlicIrqIdPwcDvfsTargetcmdavs6 = 79, /**< PWC_DVFS_TargetCmdAVS6 */
  kTopPwcPlicIrqIdPwcDvfsTargetcmdavs7 = 80, /**< PWC_DVFS_TargetCmdAVS7 */
  kTopPwcPlicIrqIdPwcDvfsTargetcmdavs8 = 81, /**< PWC_DVFS_TargetCmdAVS8 */
  kTopPwcPlicIrqIdPwcDvfsTargetcmdavs9 = 82, /**< PWC_DVFS_TargetCmdAVS9 */
  kTopPwcPlicIrqIdPwcDvfsTargetcmdavs10 = 83, /**< PWC_DVFS_TargetCmdAVS10 */
  kTopPwcPlicIrqIdPwcDvfsTargetcmdavs11 = 84, /**< PWC_DVFS_TargetCmdAVS11 */
  kTopPwcPlicIrqIdPwcDvfsTargetcmdavs12 = 85, /**< PWC_DVFS_TargetCmdAVS12 */
  kTopPwcPlicIrqIdPwcDvfsTargetcmdavs13 = 86, /**< PWC_DVFS_TargetCmdAVS13 */
  kTopPwcPlicIrqIdPwcAvsAvsError0 = 87, /**< PWC_AVS_AVS_ERROR_0 */
  kTopPwcPlicIrqIdPwcAvsAvsError1 = 88, /**< PWC_AVS_AVS_ERROR_1 */
  kTopPwcPlicIrqIdPwcAvsAvsError2 = 89, /**< PWC_AVS_AVS_ERROR_2 */
  kTopPwcPlicIrqIdPwcAvsAvsError3 = 90, /**< PWC_AVS_AVS_ERROR_3 */
  kTopPwcPlicIrqIdPwcAvsAvsError4 = 91, /**< PWC_AVS_AVS_ERROR_4 */
  kTopPwcPlicIrqIdPwcAvsAvsError5 = 92, /**< PWC_AVS_AVS_ERROR_5 */
  kTopPwcPlicIrqIdPwcAvsAvsError6 = 93, /**< PWC_AVS_AVS_ERROR_6 */
  kTopPwcPlicIrqIdPwcAvsAvsError7 = 94, /**< PWC_AVS_AVS_ERROR_7 */
  kTopPwcPlicIrqIdPwcAvsAvsError8 = 95, /**< PWC_AVS_AVS_ERROR_8 */
  kTopPwcPlicIrqIdPwcAvsAvsError9 = 96, /**< PWC_AVS_AVS_ERROR_9 */
  kTopPwcPlicIrqIdPwcAvsAvsError10 = 97, /**< PWC_AVS_AVS_ERROR_10 */
  kTopPwcPlicIrqIdPwcAvsAvsError11 = 98, /**< PWC_AVS_AVS_ERROR_11 */
  kTopPwcPlicIrqIdPwcAvsAvsError12 = 99, /**< PWC_AVS_AVS_ERROR_12 */
  kTopPwcPlicIrqIdPwcAvsAvsError13 = 100, /**< PWC_AVS_AVS_ERROR_13 */
  kTopPwcPlicIrqIdPwcAvsAvsError14 = 101, /**< PWC_AVS_AVS_ERROR_14 */
  kTopPwcPlicIrqIdPwcAvsAvsError15 = 102, /**< PWC_AVS_AVS_ERROR_15 */
  kTopPwcPlicIrqIdPwcAvsAvsError16 = 103, /**< PWC_AVS_AVS_ERROR_16 */
  kTopPwcPlicIrqIdPwcAvsAvsError17 = 104, /**< PWC_AVS_AVS_ERROR_17 */
  kTopPwcPlicIrqIdPwcAvsAvsError18 = 105, /**< PWC_AVS_AVS_ERROR_18 */
  kTopPwcPlicIrqIdPwcAvsAvsError19 = 106, /**< PWC_AVS_AVS_ERROR_19 */
  kTopPwcPlicIrqIdPwcAvsAvsError20 = 107, /**< PWC_AVS_AVS_ERROR_20 */
  kTopPwcPlicIrqIdPwcAvsAvsResponseToFw0 = 108, /**< PWC_AVS_AVS_RESPONSE_TO_FW_0 */
  kTopPwcPlicIrqIdPwcAvsAvsResponseToFw1 = 109, /**< PWC_AVS_AVS_RESPONSE_TO_FW_1 */
  kTopPwcPlicIrqIdPwcAvsAvsResponseToFw2 = 110, /**< PWC_AVS_AVS_RESPONSE_TO_FW_2 */
  kTopPwcPlicIrqIdPwcAvsAvsResponseToFw3 = 111, /**< PWC_AVS_AVS_RESPONSE_TO_FW_3 */
  kTopPwcPlicIrqIdPwcAvsAvsResponseToFw4 = 112, /**< PWC_AVS_AVS_RESPONSE_TO_FW_4 */
  kTopPwcPlicIrqIdPwcAvsAvsResponseToFw5 = 113, /**< PWC_AVS_AVS_RESPONSE_TO_FW_5 */
  kTopPwcPlicIrqIdPwcAvsAvsResponseToFw6 = 114, /**< PWC_AVS_AVS_RESPONSE_TO_FW_6 */
  kTopPwcPlicIrqIdPwcAvsAvsResponseToFw7 = 115, /**< PWC_AVS_AVS_RESPONSE_TO_FW_7 */
  kTopPwcPlicIrqIdPwcAvsAvsResponseToFw8 = 116, /**< PWC_AVS_AVS_RESPONSE_TO_FW_8 */
  kTopPwcPlicIrqIdPwcAvsAvsResponseToFw9 = 117, /**< PWC_AVS_AVS_RESPONSE_TO_FW_9 */
  kTopPwcPlicIrqIdPwcAvsAvsResponseToFw10 = 118, /**< PWC_AVS_AVS_RESPONSE_TO_FW_10 */
  kTopPwcPlicIrqIdPwcAvsAvsResponseToFw11 = 119, /**< PWC_AVS_AVS_RESPONSE_TO_FW_11 */
  kTopPwcPlicIrqIdPwcAvsAvsResponseToFw12 = 120, /**< PWC_AVS_AVS_RESPONSE_TO_FW_12 */
  kTopPwcPlicIrqIdPwcAvsAvsResponseToFw13 = 121, /**< PWC_AVS_AVS_RESPONSE_TO_FW_13 */
  kTopPwcPlicIrqIdPwcAvsAvsResponseToFw14 = 122, /**< PWC_AVS_AVS_RESPONSE_TO_FW_14 */
  kTopPwcPlicIrqIdPwcAvsAvsResponseToFw15 = 123, /**< PWC_AVS_AVS_RESPONSE_TO_FW_15 */
  kTopPwcPlicIrqIdPwcAvsAvsResponseToFw16 = 124, /**< PWC_AVS_AVS_RESPONSE_TO_FW_16 */
  kTopPwcPlicIrqIdPwcAvsAvsResponseToFw17 = 125, /**< PWC_AVS_AVS_RESPONSE_TO_FW_17 */
  kTopPwcPlicIrqIdPwcAvsAvsResponseToFw18 = 126, /**< PWC_AVS_AVS_RESPONSE_TO_FW_18 */
  kTopPwcPlicIrqIdPwcAvsAvsResponseToFw19 = 127, /**< PWC_AVS_AVS_RESPONSE_TO_FW_19 */
  kTopPwcPlicIrqIdPwcAvsAvsResponseToFw20 = 128, /**< PWC_AVS_AVS_RESPONSE_TO_FW_20 */
  kTopPwcPlicIrqIdPwcAvsAvsResponseToFw21 = 129, /**< PWC_AVS_AVS_RESPONSE_TO_FW_21 */
  kTopPwcPlicIrqIdPwcAvsAvsResponseToFw22 = 130, /**< PWC_AVS_AVS_RESPONSE_TO_FW_22 */
  kTopPwcPlicIrqIdPwcAvsAvsResponseToFw23 = 131, /**< PWC_AVS_AVS_RESPONSE_TO_FW_23 */
  kTopPwcPlicIrqIdPwcAvsAvsResponseToFw24 = 132, /**< PWC_AVS_AVS_RESPONSE_TO_FW_24 */
  kTopPwcPlicIrqIdPwcAvsAvsResponseToFw25 = 133, /**< PWC_AVS_AVS_RESPONSE_TO_FW_25 */
  kTopPwcPlicIrqIdPwcAvsAvsResponseToFw26 = 134, /**< PWC_AVS_AVS_RESPONSE_TO_FW_26 */
  kTopPwcPlicIrqIdPwcAvsAvsResponseToFw27 = 135, /**< PWC_AVS_AVS_RESPONSE_TO_FW_27 */
  kTopPwcPlicIrqIdPwcAvsAvsResponseToFw28 = 136, /**< PWC_AVS_AVS_RESPONSE_TO_FW_28 */
  kTopPwcPlicIrqIdPwcBcastCStateEntry = 137, /**< PWC_BCAST_C_STATE_ENTRY */
  kTopPwcPlicIrqIdPwcBcastCStateExit = 138, /**< PWC_BCAST_C_STATE_EXIT */
  kTopPwcPlicIrqIdPwcBcastDpaIdleEntry = 139, /**< PWC_BCAST_DPA_IDLE_ENTRY */
  kTopPwcPlicIrqIdPwcBcastDpaIdleExit = 140, /**< PWC_BCAST_DPA_IDLE_EXIT */
  kTopPwcPlicIrqIdPwcCcs0PwrVirusLvlReq = 141, /**< PWC_CCS_0_PWR_VIRUS_LVL_REQ */
  kTopPwcPlicIrqIdPwcCcs1PwrVirusLvlReq = 142, /**< PWC_CCS_1_PWR_VIRUS_LVL_REQ */
  kTopPwcPlicIrqIdPwcCcs2PwrVirusLvlReq = 143, /**< PWC_CCS_2_PWR_VIRUS_LVL_REQ */
  kTopPwcPlicIrqIdPwcCcs3PwrVirusLvlReq = 144, /**< PWC_CCS_3_PWR_VIRUS_LVL_REQ */
  kTopPwcPlicIrqIdPwcCcs4PwrVirusLvlReq = 145, /**< PWC_CCS_4_PWR_VIRUS_LVL_REQ */
  kTopPwcPlicIrqIdPwcCcs5PwrVirusLvlReq = 146, /**< PWC_CCS_5_PWR_VIRUS_LVL_REQ */
  kTopPwcPlicIrqIdPwcCcs6PwrVirusLvlReq = 147, /**< PWC_CCS_6_PWR_VIRUS_LVL_REQ */
  kTopPwcPlicIrqIdPwcCcs7PwrVirusLvlReq = 148, /**< PWC_CCS_7_PWR_VIRUS_LVL_REQ */
  kTopPwcPlicIrqIdPwcCcs0DvfsFsm = 149, /**< PWC_CCS_0_DVFS_FSM */
  kTopPwcPlicIrqIdPwcCcs1DvfsFsm = 150, /**< PWC_CCS_1_DVFS_FSM */
  kTopPwcPlicIrqIdPwcCcs2DvfsFsm = 151, /**< PWC_CCS_2_DVFS_FSM */
  kTopPwcPlicIrqIdPwcCcs3DvfsFsm = 152, /**< PWC_CCS_3_DVFS_FSM */
  kTopPwcPlicIrqIdPwcCcs4DvfsFsm = 153, /**< PWC_CCS_4_DVFS_FSM */
  kTopPwcPlicIrqIdPwcCcs5DvfsFsm = 154, /**< PWC_CCS_5_DVFS_FSM */
  kTopPwcPlicIrqIdPwcCcs6DvfsFsm = 155, /**< PWC_CCS_6_DVFS_FSM */
  kTopPwcPlicIrqIdPwcCcs7DvfsFsm = 156, /**< PWC_CCS_7_DVFS_FSM */
  kTopPwcPlicIrqIdPwcHmsEastStatus = 157, /**< PWC_HMS_East_STATUS */
  kTopPwcPlicIrqIdPwcHmsWestStatus = 158, /**< PWC_HMS_WEST_STATUS */
  kTopPwcPlicIrqIdPwcPcs0AllPortsStatus = 159, /**< PWC_PCS_0_ALL_PORTS_STATUS */
  kTopPwcPlicIrqIdPwcPcs0LinkBringup0 = 160, /**< PWC_PCS_0_LINK_BRINGUP_0 */
  kTopPwcPlicIrqIdPwcPcs0LinkBringup1 = 161, /**< PWC_PCS_0_LINK_BRINGUP_1 */
  kTopPwcPlicIrqIdPwcPcs0LinkBringup2 = 162, /**< PWC_PCS_0_LINK_BRINGUP_2 */
  kTopPwcPlicIrqIdPwcPcs0LinkBringup3 = 163, /**< PWC_PCS_0_LINK_BRINGUP_3 */
  kTopPwcPlicIrqIdPwcPcs0MsgCtrl = 164, /**< PWC_PCS_0_MSG_CTRL */
  kTopPwcPlicIrqIdPwcPcs0PhyStatus = 165, /**< PWC_PCS_0_PHY_STATUS */
  kTopPwcPlicIrqIdPwcPcs1AllPortsStatus = 166, /**< PWC_PCS_1_ALL_PORTS_STATUS */
  kTopPwcPlicIrqIdPwcPcs1LinkBringup0 = 167, /**< PWC_PCS_1_LINK_BRINGUP_0 */
  kTopPwcPlicIrqIdPwcPcs1LinkBringup1 = 168, /**< PWC_PCS_1_LINK_BRINGUP_1 */
  kTopPwcPlicIrqIdPwcPcs1LinkBringup2 = 169, /**< PWC_PCS_1_LINK_BRINGUP_2 */
  kTopPwcPlicIrqIdPwcPcs1LinkBringup3 = 170, /**< PWC_PCS_1_LINK_BRINGUP_3 */
  kTopPwcPlicIrqIdPwcPcs1MsgCtrl = 171, /**< PWC_PCS_1_MSG_CTRL */
  kTopPwcPlicIrqIdPwcPcs1PhyStatus = 172, /**< PWC_PCS_1_PHY_STATUS */
  kTopPwcPlicIrqIdPwcPcs2AllPortsStatus = 173, /**< PWC_PCS_2_ALL_PORTS_STATUS */
  kTopPwcPlicIrqIdPwcPcs2LinkBringup0 = 174, /**< PWC_PCS_2_LINK_BRINGUP_0 */
  kTopPwcPlicIrqIdPwcPcs2LinkBringup1 = 175, /**< PWC_PCS_2_LINK_BRINGUP_1 */
  kTopPwcPlicIrqIdPwcPcs2LinkBringup2 = 176, /**< PWC_PCS_2_LINK_BRINGUP_2 */
  kTopPwcPlicIrqIdPwcPcs2LinkBringup3 = 177, /**< PWC_PCS_2_LINK_BRINGUP_3 */
  kTopPwcPlicIrqIdPwcPcs2MsgCtrl = 178, /**< PWC_PCS_2_MSG_CTRL */
  kTopPwcPlicIrqIdPwcPcs2PhyStatus = 179, /**< PWC_PCS_2_PHY_STATUS */
  kTopPwcPlicIrqIdPwcPcs3AllPortsStatus = 180, /**< PWC_PCS_3_ALL_PORTS_STATUS */
  kTopPwcPlicIrqIdPwcPcs3LinkBringup0 = 181, /**< PWC_PCS_3_LINK_BRINGUP_0 */
  kTopPwcPlicIrqIdPwcPcs3LinkBringup1 = 182, /**< PWC_PCS_3_LINK_BRINGUP_1 */
  kTopPwcPlicIrqIdPwcPcs3LinkBringup2 = 183, /**< PWC_PCS_3_LINK_BRINGUP_2 */
  kTopPwcPlicIrqIdPwcPcs3LinkBringup3 = 184, /**< PWC_PCS_3_LINK_BRINGUP_3 */
  kTopPwcPlicIrqIdPwcPcs3MsgCtrl = 185, /**< PWC_PCS_3_MSG_CTRL */
  kTopPwcPlicIrqIdPwcPcs3PhyStatus = 186, /**< PWC_PCS_3_PHY_STATUS */
  kTopPwcPlicIrqIdPwcPcs4AllPortsStatus = 187, /**< PWC_PCS_4_ALL_PORTS_STATUS */
  kTopPwcPlicIrqIdPwcPcs4LinkBringup0 = 188, /**< PWC_PCS_4_LINK_BRINGUP_0 */
  kTopPwcPlicIrqIdPwcPcs4LinkBringup1 = 189, /**< PWC_PCS_4_LINK_BRINGUP_1 */
  kTopPwcPlicIrqIdPwcPcs4LinkBringup2 = 190, /**< PWC_PCS_4_LINK_BRINGUP_2 */
  kTopPwcPlicIrqIdPwcPcs4LinkBringup3 = 191, /**< PWC_PCS_4_LINK_BRINGUP_3 */
  kTopPwcPlicIrqIdPwcPcs4MsgCtrl = 192, /**< PWC_PCS_4_MSG_CTRL */
  kTopPwcPlicIrqIdPwcPcs4PhyStatus = 193, /**< PWC_PCS_4_PHY_STATUS */
  kTopPwcPlicIrqIdPwcPcs5AllPortsStatus = 194, /**< PWC_PCS_5_ALL_PORTS_STATUS */
  kTopPwcPlicIrqIdPwcPcs5LinkBringup0 = 195, /**< PWC_PCS_5_LINK_BRINGUP_0 */
  kTopPwcPlicIrqIdPwcPcs5LinkBringup1 = 196, /**< PWC_PCS_5_LINK_BRINGUP_1 */
  kTopPwcPlicIrqIdPwcPcs5LinkBringup2 = 197, /**< PWC_PCS_5_LINK_BRINGUP_2 */
  kTopPwcPlicIrqIdPwcPcs5LinkBringup3 = 198, /**< PWC_PCS_5_LINK_BRINGUP_3 */
  kTopPwcPlicIrqIdPwcPcs5MsgCtrl = 199, /**< PWC_PCS_5_MSG_CTRL */
  kTopPwcPlicIrqIdPwcPcs5PhyStatus = 200, /**< PWC_PCS_5_PHY_STATUS */
  kTopPwcPlicIrqIdPwcPcs6AllPortsStatus = 201, /**< PWC_PCS_6_ALL_PORTS_STATUS */
  kTopPwcPlicIrqIdPwcPcs6LinkBringup0 = 202, /**< PWC_PCS_6_LINK_BRINGUP_0 */
  kTopPwcPlicIrqIdPwcPcs6LinkBringup1 = 203, /**< PWC_PCS_6_LINK_BRINGUP_1 */
  kTopPwcPlicIrqIdPwcPcs6LinkBringup2 = 204, /**< PWC_PCS_6_LINK_BRINGUP_2 */
  kTopPwcPlicIrqIdPwcPcs6LinkBringup3 = 205, /**< PWC_PCS_6_LINK_BRINGUP_3 */
  kTopPwcPlicIrqIdPwcPcs6MsgCtrl = 206, /**< PWC_PCS_6_MSG_CTRL */
  kTopPwcPlicIrqIdPwcPcs6PhyStatus = 207, /**< PWC_PCS_6_PHY_STATUS */
  kTopPwcPlicIrqIdPwcPcs7AllPortsStatus = 208, /**< PWC_PCS_7_ALL_PORTS_STATUS */
  kTopPwcPlicIrqIdPwcPcs7LinkBringup0 = 209, /**< PWC_PCS_7_LINK_BRINGUP_0 */
  kTopPwcPlicIrqIdPwcPcs7LinkBringup1 = 210, /**< PWC_PCS_7_LINK_BRINGUP_1 */
  kTopPwcPlicIrqIdPwcPcs7LinkBringup2 = 211, /**< PWC_PCS_7_LINK_BRINGUP_2 */
  kTopPwcPlicIrqIdPwcPcs7LinkBringup3 = 212, /**< PWC_PCS_7_LINK_BRINGUP_3 */
  kTopPwcPlicIrqIdPwcPcs7MsgCtrl = 213, /**< PWC_PCS_7_MSG_CTRL */
  kTopPwcPlicIrqIdPwcPcs7PhyStatus = 214, /**< PWC_PCS_7_PHY_STATUS */
  kTopPwcPlicIrqIdPwcHdrIpiFromPwc0 = 215, /**< PWC_HDR_IPI_FROM_PWC_0 */
  kTopPwcPlicIrqIdPwcHdrIpiFromPwc1 = 216, /**< PWC_HDR_IPI_FROM_PWC_1 */
  kTopPwcPlicIrqIdPwcHdrIpiFromPwc2 = 217, /**< PWC_HDR_IPI_FROM_PWC_2 */
  kTopPwcPlicIrqIdPwcHdrIpiFromRot = 218, /**< PWC_HDR_IPI_FROM_ROT */
  kTopPwcPlicIrqIdPwcHdrIpiFromMio = 219, /**< PWC_HDR_IPI_FROM_MIO */
  kTopPwcPlicIrqIdPwcHdrIpiFromDuc = 220, /**< PWC_HDR_IPI_FROM_DUC */
  kTopPwcPlicIrqIdLioGrpAIpiFromLiogrpaI3c0PeriphRstReq = 221, /**< LIO_GRP_A_IPI_FROM_LIOGRPA_I3C0_PERIPH_RST_REQ */
  kTopPwcPlicIrqIdLioGrpAIpiFromLiogrpaI3c0ChipRstReq = 222, /**< LIO_GRP_A_IPI_FROM_LIOGRPA_I3C0_CHIP_RST_REQ */
  kTopPwcPlicIrqIdLioGrpAIpiFromLiogrpaI3c1PeriphRstReq = 223, /**< LIO_GRP_A_IPI_FROM_LIOGRPA_I3C1_PERIPH_RST_REQ */
  kTopPwcPlicIrqIdLioGrpAIpiFromLiogrpaI3c1ChipRstReq = 224, /**< LIO_GRP_A_IPI_FROM_LIOGRPA_I3C1_CHIP_RST_REQ */
  kTopPwcPlicIrqIdLioGrpAIpiFromLiogrpaI3c2PeriphRstReq = 225, /**< LIO_GRP_A_IPI_FROM_LIOGRPA_I3C2_PERIPH_RST_REQ */
  kTopPwcPlicIrqIdLioGrpAIpiFromLiogrpaI3c2ChipRstReq = 226, /**< LIO_GRP_A_IPI_FROM_LIOGRPA_I3C2_CHIP_RST_REQ */
  kTopPwcPlicIrqIdLioGrpBIpiFromLiogrpbI3c0PeriphRstReq = 227, /**< LIO_GRP_B_IPI_FROM_LIOGRPB_I3C0_PERIPH_RST_REQ */
  kTopPwcPlicIrqIdLioGrpBIpiFromLiogrpbI3c0ChipRstReq = 228, /**< LIO_GRP_B_IPI_FROM_LIOGRPB_I3C0_CHIP_RST_REQ */
  kTopPwcPlicIrqIdLioGrpBIpiFromLiogrpbI3c1PeriphRstReq = 229, /**< LIO_GRP_B_IPI_FROM_LIOGRPB_I3C1_PERIPH_RST_REQ */
  kTopPwcPlicIrqIdLioGrpBIpiFromLiogrpbI3c1ChipRstReq = 230, /**< LIO_GRP_B_IPI_FROM_LIOGRPB_I3C1_CHIP_RST_REQ */
  kTopPwcPlicIrqIdLioGrpBIpiFromLiogrpbI3c2PeriphRstReq = 231, /**< LIO_GRP_B_IPI_FROM_LIOGRPB_I3C2_PERIPH_RST_REQ */
  kTopPwcPlicIrqIdLioGrpBIpiFromLiogrpbI3c2ChipRstReq = 232, /**< LIO_GRP_B_IPI_FROM_LIOGRPB_I3C2_CHIP_RST_REQ */
  kTopPwcPlicIrqIdLioGrpCIpiFromLiogrpcI3c0PeriphRstReq = 233, /**< LIO_GRP_C_IPI_FROM_LIOGRPC_I3C0_PERIPH_RST_REQ */
  kTopPwcPlicIrqIdLioGrpCIpiFromLiogrpcI3c0ChipRstReq = 234, /**< LIO_GRP_C_IPI_FROM_LIOGRPC_I3C0_CHIP_RST_REQ */
  kTopPwcPlicIrqIdLioGrpCIpiFromLiogrpcI3c1PeriphRstReq = 235, /**< LIO_GRP_C_IPI_FROM_LIOGRPC_I3C1_PERIPH_RST_REQ */
  kTopPwcPlicIrqIdLioGrpCIpiFromLiogrpcI3c1ChipRstReq = 236, /**< LIO_GRP_C_IPI_FROM_LIOGRPC_I3C1_CHIP_RST_REQ */
  kTopPwcPlicIrqIdLioGrpCIpiFromLiogrpcI3c2PeriphRstReq = 237, /**< LIO_GRP_C_IPI_FROM_LIOGRPC_I3C2_PERIPH_RST_REQ */
  kTopPwcPlicIrqIdLioGrpCIpiFromLiogrpcI3c2ChipRstReq = 238, /**< LIO_GRP_C_IPI_FROM_LIOGRPC_I3C2_CHIP_RST_REQ */
  kTopPwcPlicIrqIdLioGrpDIpiFromLiogrpdI3c0PeriphRstReq = 239, /**< LIO_GRP_D_IPI_FROM_LIOGRPD_I3C0_PERIPH_RST_REQ */
  kTopPwcPlicIrqIdLioGrpDIpiFromLiogrpdI3c0ChipRstReq = 240, /**< LIO_GRP_D_IPI_FROM_LIOGRPD_I3C0_CHIP_RST_REQ */
  kTopPwcPlicIrqIdLioGrpDIpiFromLiogrpdI3c1PeriphRstReq = 241, /**< LIO_GRP_D_IPI_FROM_LIOGRPD_I3C1_PERIPH_RST_REQ */
  kTopPwcPlicIrqIdLioGrpDIpiFromLiogrpdI3c1ChipRstReq = 242, /**< LIO_GRP_D_IPI_FROM_LIOGRPD_I3C1_CHIP_RST_REQ */
  kTopPwcPlicIrqIdLioGrpDIpiFromLiogrpdI3c2PeriphRstReq = 243, /**< LIO_GRP_D_IPI_FROM_LIOGRPD_I3C2_PERIPH_RST_REQ */
  kTopPwcPlicIrqIdLioGrpDIpiFromLiogrpdI3c2ChipRstReq = 244, /**< LIO_GRP_D_IPI_FROM_LIOGRPD_I3C2_CHIP_RST_REQ */
  kTopPwcPlicIrqIdPwcErs0Req0ErsReqInterrupt = 245, /**< PWC_ERS0_REQ0_ERS_REQ_INTERRUPT */
  kTopPwcPlicIrqIdPwcErs0Req1ErsReqInterrupt = 246, /**< PWC_ERS0_REQ1_ERS_REQ_INTERRUPT */
  kTopPwcPlicIrqIdPwcErs1Req0ErsReqInterrupt = 247, /**< PWC_ERS1_REQ0_ERS_REQ_INTERRUPT */
  kTopPwcPlicIrqIdPwcErs1Req1ErsReqInterrupt = 248, /**< PWC_ERS1_REQ1_ERS_REQ_INTERRUPT */
  kTopPwcPlicIrqIdPwcCcs0CstateEntry = 249, /**< PWC_CCS_0_CSTATE_ENTRY */
  kTopPwcPlicIrqIdPwcCcs0CstateExit = 250, /**< PWC_CCS_0_CSTATE_EXIT */
  kTopPwcPlicIrqIdPwcCcs1CstateEntry = 251, /**< PWC_CCS_1_CSTATE_ENTRY */
  kTopPwcPlicIrqIdPwcCcs1CstateExit = 252, /**< PWC_CCS_1_CSTATE_EXIT */
  kTopPwcPlicIrqIdLast = 252, /**< \internal The Last Valid Interrupt ID. */
} top_pwc_plic_irq_id_t;

/**
 * PLIC Interrupt Source to Peripheral Map
 *
 * This array is a mapping from `top_pwc_plic_irq_id_t` to
 * `top_pwc_plic_peripheral_t`.
 */
extern const top_pwc_plic_peripheral_t
    top_pwc_plic_interrupt_for_peripheral[253];

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
