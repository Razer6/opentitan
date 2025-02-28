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
 * Peripheral base address for core device on pwc_soc_proxy in top pwc.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_PWC_PWC_SOC_PROXY_CORE_BASE_ADDR 0x22030000u

/**
 * Peripheral size for core device on pwc_soc_proxy in top pwc.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_PWC_PWC_SOC_PROXY_CORE_BASE_ADDR and
 * `TOP_PWC_PWC_SOC_PROXY_CORE_BASE_ADDR + TOP_PWC_PWC_SOC_PROXY_CORE_SIZE_BYTES`.
 */
#define TOP_PWC_PWC_SOC_PROXY_CORE_SIZE_BYTES 0x10u

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
#define TOP_PWC_RV_CORE_IBEX_CFG_SIZE_BYTES 0x800u


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
  kTopPwcPlicPeripheralPwcSocProxy = 4, /**< pwc_soc_proxy */
  kTopPwcPlicPeripheralDma = 5, /**< dma */
  kTopPwcPlicPeripheralMbx0 = 6, /**< mbx0 */
  kTopPwcPlicPeripheralMbx1 = 7, /**< mbx1 */
  kTopPwcPlicPeripheralMbx2 = 8, /**< mbx2 */
  kTopPwcPlicPeripheralMbx3 = 9, /**< mbx3 */
  kTopPwcPlicPeripheralMbx4 = 10, /**< mbx4 */
  kTopPwcPlicPeripheralMbx5 = 11, /**< mbx5 */
  kTopPwcPlicPeripheralMbxPcie0 = 12, /**< mbx_pcie0 */
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
  kTopPwcPlicIrqIdPwcSocProxyExternal0 = 36, /**< pwc_soc_proxy_external 0 */
  kTopPwcPlicIrqIdPwcSocProxyExternal1 = 37, /**< pwc_soc_proxy_external 1 */
  kTopPwcPlicIrqIdPwcSocProxyExternal2 = 38, /**< pwc_soc_proxy_external 2 */
  kTopPwcPlicIrqIdPwcSocProxyExternal3 = 39, /**< pwc_soc_proxy_external 3 */
  kTopPwcPlicIrqIdPwcSocProxyExternal4 = 40, /**< pwc_soc_proxy_external 4 */
  kTopPwcPlicIrqIdPwcSocProxyExternal5 = 41, /**< pwc_soc_proxy_external 5 */
  kTopPwcPlicIrqIdPwcSocProxyExternal6 = 42, /**< pwc_soc_proxy_external 6 */
  kTopPwcPlicIrqIdPwcSocProxyExternal7 = 43, /**< pwc_soc_proxy_external 7 */
  kTopPwcPlicIrqIdPwcSocProxyExternal8 = 44, /**< pwc_soc_proxy_external 8 */
  kTopPwcPlicIrqIdPwcSocProxyExternal9 = 45, /**< pwc_soc_proxy_external 9 */
  kTopPwcPlicIrqIdPwcSocProxyExternal10 = 46, /**< pwc_soc_proxy_external 10 */
  kTopPwcPlicIrqIdPwcSocProxyExternal11 = 47, /**< pwc_soc_proxy_external 11 */
  kTopPwcPlicIrqIdPwcSocProxyExternal12 = 48, /**< pwc_soc_proxy_external 12 */
  kTopPwcPlicIrqIdPwcSocProxyExternal13 = 49, /**< pwc_soc_proxy_external 13 */
  kTopPwcPlicIrqIdPwcSocProxyExternal14 = 50, /**< pwc_soc_proxy_external 14 */
  kTopPwcPlicIrqIdPwcSocProxyExternal15 = 51, /**< pwc_soc_proxy_external 15 */
  kTopPwcPlicIrqIdPwcSocProxyExternal16 = 52, /**< pwc_soc_proxy_external 16 */
  kTopPwcPlicIrqIdPwcSocProxyExternal17 = 53, /**< pwc_soc_proxy_external 17 */
  kTopPwcPlicIrqIdPwcSocProxyExternal18 = 54, /**< pwc_soc_proxy_external 18 */
  kTopPwcPlicIrqIdPwcSocProxyExternal19 = 55, /**< pwc_soc_proxy_external 19 */
  kTopPwcPlicIrqIdPwcSocProxyExternal20 = 56, /**< pwc_soc_proxy_external 20 */
  kTopPwcPlicIrqIdPwcSocProxyExternal21 = 57, /**< pwc_soc_proxy_external 21 */
  kTopPwcPlicIrqIdPwcSocProxyExternal22 = 58, /**< pwc_soc_proxy_external 22 */
  kTopPwcPlicIrqIdPwcSocProxyExternal23 = 59, /**< pwc_soc_proxy_external 23 */
  kTopPwcPlicIrqIdPwcSocProxyExternal24 = 60, /**< pwc_soc_proxy_external 24 */
  kTopPwcPlicIrqIdPwcSocProxyExternal25 = 61, /**< pwc_soc_proxy_external 25 */
  kTopPwcPlicIrqIdPwcSocProxyExternal26 = 62, /**< pwc_soc_proxy_external 26 */
  kTopPwcPlicIrqIdPwcSocProxyExternal27 = 63, /**< pwc_soc_proxy_external 27 */
  kTopPwcPlicIrqIdPwcSocProxyExternal28 = 64, /**< pwc_soc_proxy_external 28 */
  kTopPwcPlicIrqIdPwcSocProxyExternal29 = 65, /**< pwc_soc_proxy_external 29 */
  kTopPwcPlicIrqIdPwcSocProxyExternal30 = 66, /**< pwc_soc_proxy_external 30 */
  kTopPwcPlicIrqIdPwcSocProxyExternal31 = 67, /**< pwc_soc_proxy_external 31 */
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
  kTopPwcPlicIrqIdMbxPcie0MbxReady = 89, /**< mbx_pcie0_mbx_ready */
  kTopPwcPlicIrqIdMbxPcie0MbxAbort = 90, /**< mbx_pcie0_mbx_abort */
  kTopPwcPlicIrqIdMbxPcie0MbxError = 91, /**< mbx_pcie0_mbx_error */
  kTopPwcPlicIrqIdAcRangeCheckDenyCntReached = 92, /**< ac_range_check_deny_cnt_reached */
  kTopPwcPlicIrqIdPwcLteuSocHot = 93, /**< PWC_LTEU_SOC_HOT */
  kTopPwcPlicIrqIdPwcLteuFwTrip = 94, /**< PWC_LTEU_FW_TRIP */
  kTopPwcPlicIrqIdPwcLteuCatTrip = 95, /**< PWC_LTEU_CAT_TRIP */
  kTopPwcPlicIrqIdLioGrpAIbexIrq = 96, /**< LIO_GRP_A_IBEX_IRQ */
  kTopPwcPlicIrqIdLioGrpBIbexIrq = 97, /**< LIO_GRP_B_IBEX_IRQ */
  kTopPwcPlicIrqIdLioGrpCIbexIrq = 98, /**< LIO_GRP_C_IBEX_IRQ */
  kTopPwcPlicIrqIdPwcDvfsSocdpafsmstatus0 = 99, /**< PWC_DVFS_SocDpaFsmstatus0 */
  kTopPwcPlicIrqIdPwcDvfsSocdpafsmstatus1 = 100, /**< PWC_DVFS_SocDpaFsmstatus1 */
  kTopPwcPlicIrqIdPwcDvfsSocdpafsmstatus2 = 101, /**< PWC_DVFS_SocDpaFsmstatus2 */
  kTopPwcPlicIrqIdPwcDvfsSocdpafsmstatus3 = 102, /**< PWC_DVFS_SocDpaFsmstatus3 */
  kTopPwcPlicIrqIdPwcDvfsSocdpafsmstatus4 = 103, /**< PWC_DVFS_SocDpaFsmstatus4 */
  kTopPwcPlicIrqIdPwcDvfsTargetcmdavs0 = 104, /**< PWC_DVFS_TargetCmdAVS0 */
  kTopPwcPlicIrqIdPwcDvfsTargetcmdavs1 = 105, /**< PWC_DVFS_TargetCmdAVS1 */
  kTopPwcPlicIrqIdPwcDvfsTargetcmdavs2 = 106, /**< PWC_DVFS_TargetCmdAVS2 */
  kTopPwcPlicIrqIdPwcDvfsTargetcmdavs3 = 107, /**< PWC_DVFS_TargetCmdAVS3 */
  kTopPwcPlicIrqIdPwcDvfsTargetcmdavs4 = 108, /**< PWC_DVFS_TargetCmdAVS4 */
  kTopPwcPlicIrqIdPwcDvfsTargetcmdavs5 = 109, /**< PWC_DVFS_TargetCmdAVS5 */
  kTopPwcPlicIrqIdPwcDvfsTargetcmdavs6 = 110, /**< PWC_DVFS_TargetCmdAVS6 */
  kTopPwcPlicIrqIdPwcDvfsTargetcmdavs7 = 111, /**< PWC_DVFS_TargetCmdAVS7 */
  kTopPwcPlicIrqIdPwcDvfsTargetcmdavs8 = 112, /**< PWC_DVFS_TargetCmdAVS8 */
  kTopPwcPlicIrqIdPwcDvfsTargetcmdavs9 = 113, /**< PWC_DVFS_TargetCmdAVS9 */
  kTopPwcPlicIrqIdPwcDvfsTargetcmdavs10 = 114, /**< PWC_DVFS_TargetCmdAVS10 */
  kTopPwcPlicIrqIdPwcDvfsTargetcmdavs11 = 115, /**< PWC_DVFS_TargetCmdAVS11 */
  kTopPwcPlicIrqIdPwcDvfsTargetcmdavs12 = 116, /**< PWC_DVFS_TargetCmdAVS12 */
  kTopPwcPlicIrqIdPwcDvfsTargetcmdavs13 = 117, /**< PWC_DVFS_TargetCmdAVS13 */
  kTopPwcPlicIrqIdPwcAvsAvsError0 = 118, /**< PWC_AVS_AVS_ERROR_0 */
  kTopPwcPlicIrqIdPwcAvsAvsError1 = 119, /**< PWC_AVS_AVS_ERROR_1 */
  kTopPwcPlicIrqIdPwcAvsAvsError2 = 120, /**< PWC_AVS_AVS_ERROR_2 */
  kTopPwcPlicIrqIdPwcAvsAvsError3 = 121, /**< PWC_AVS_AVS_ERROR_3 */
  kTopPwcPlicIrqIdPwcAvsAvsError4 = 122, /**< PWC_AVS_AVS_ERROR_4 */
  kTopPwcPlicIrqIdPwcAvsAvsError5 = 123, /**< PWC_AVS_AVS_ERROR_5 */
  kTopPwcPlicIrqIdPwcAvsAvsError6 = 124, /**< PWC_AVS_AVS_ERROR_6 */
  kTopPwcPlicIrqIdPwcAvsAvsError7 = 125, /**< PWC_AVS_AVS_ERROR_7 */
  kTopPwcPlicIrqIdPwcAvsAvsError8 = 126, /**< PWC_AVS_AVS_ERROR_8 */
  kTopPwcPlicIrqIdPwcAvsAvsError9 = 127, /**< PWC_AVS_AVS_ERROR_9 */
  kTopPwcPlicIrqIdPwcAvsAvsError10 = 128, /**< PWC_AVS_AVS_ERROR_10 */
  kTopPwcPlicIrqIdPwcAvsAvsError11 = 129, /**< PWC_AVS_AVS_ERROR_11 */
  kTopPwcPlicIrqIdPwcAvsAvsError12 = 130, /**< PWC_AVS_AVS_ERROR_12 */
  kTopPwcPlicIrqIdPwcAvsAvsError13 = 131, /**< PWC_AVS_AVS_ERROR_13 */
  kTopPwcPlicIrqIdPwcAvsAvsError14 = 132, /**< PWC_AVS_AVS_ERROR_14 */
  kTopPwcPlicIrqIdPwcAvsAvsError15 = 133, /**< PWC_AVS_AVS_ERROR_15 */
  kTopPwcPlicIrqIdPwcAvsAvsError16 = 134, /**< PWC_AVS_AVS_ERROR_16 */
  kTopPwcPlicIrqIdPwcAvsAvsError17 = 135, /**< PWC_AVS_AVS_ERROR_17 */
  kTopPwcPlicIrqIdPwcAvsAvsError18 = 136, /**< PWC_AVS_AVS_ERROR_18 */
  kTopPwcPlicIrqIdPwcAvsAvsError19 = 137, /**< PWC_AVS_AVS_ERROR_19 */
  kTopPwcPlicIrqIdPwcAvsAvsError20 = 138, /**< PWC_AVS_AVS_ERROR_20 */
  kTopPwcPlicIrqIdPwcAvsAvsResponseToFw0 = 139, /**< PWC_AVS_AVS_RESPONSE_TO_FW_0 */
  kTopPwcPlicIrqIdPwcAvsAvsResponseToFw1 = 140, /**< PWC_AVS_AVS_RESPONSE_TO_FW_1 */
  kTopPwcPlicIrqIdPwcAvsAvsResponseToFw2 = 141, /**< PWC_AVS_AVS_RESPONSE_TO_FW_2 */
  kTopPwcPlicIrqIdPwcAvsAvsResponseToFw3 = 142, /**< PWC_AVS_AVS_RESPONSE_TO_FW_3 */
  kTopPwcPlicIrqIdPwcAvsAvsResponseToFw4 = 143, /**< PWC_AVS_AVS_RESPONSE_TO_FW_4 */
  kTopPwcPlicIrqIdPwcAvsAvsResponseToFw5 = 144, /**< PWC_AVS_AVS_RESPONSE_TO_FW_5 */
  kTopPwcPlicIrqIdPwcAvsAvsResponseToFw6 = 145, /**< PWC_AVS_AVS_RESPONSE_TO_FW_6 */
  kTopPwcPlicIrqIdPwcAvsAvsResponseToFw7 = 146, /**< PWC_AVS_AVS_RESPONSE_TO_FW_7 */
  kTopPwcPlicIrqIdPwcAvsAvsResponseToFw8 = 147, /**< PWC_AVS_AVS_RESPONSE_TO_FW_8 */
  kTopPwcPlicIrqIdPwcAvsAvsResponseToFw9 = 148, /**< PWC_AVS_AVS_RESPONSE_TO_FW_9 */
  kTopPwcPlicIrqIdPwcAvsAvsResponseToFw10 = 149, /**< PWC_AVS_AVS_RESPONSE_TO_FW_10 */
  kTopPwcPlicIrqIdPwcAvsAvsResponseToFw11 = 150, /**< PWC_AVS_AVS_RESPONSE_TO_FW_11 */
  kTopPwcPlicIrqIdPwcAvsAvsResponseToFw12 = 151, /**< PWC_AVS_AVS_RESPONSE_TO_FW_12 */
  kTopPwcPlicIrqIdPwcAvsAvsResponseToFw13 = 152, /**< PWC_AVS_AVS_RESPONSE_TO_FW_13 */
  kTopPwcPlicIrqIdPwcAvsAvsResponseToFw14 = 153, /**< PWC_AVS_AVS_RESPONSE_TO_FW_14 */
  kTopPwcPlicIrqIdPwcAvsAvsResponseToFw15 = 154, /**< PWC_AVS_AVS_RESPONSE_TO_FW_15 */
  kTopPwcPlicIrqIdPwcAvsAvsResponseToFw16 = 155, /**< PWC_AVS_AVS_RESPONSE_TO_FW_16 */
  kTopPwcPlicIrqIdPwcAvsAvsResponseToFw17 = 156, /**< PWC_AVS_AVS_RESPONSE_TO_FW_17 */
  kTopPwcPlicIrqIdPwcAvsAvsResponseToFw18 = 157, /**< PWC_AVS_AVS_RESPONSE_TO_FW_18 */
  kTopPwcPlicIrqIdPwcAvsAvsResponseToFw19 = 158, /**< PWC_AVS_AVS_RESPONSE_TO_FW_19 */
  kTopPwcPlicIrqIdPwcAvsAvsResponseToFw20 = 159, /**< PWC_AVS_AVS_RESPONSE_TO_FW_20 */
  kTopPwcPlicIrqIdPwcAvsAvsResponseToFw21 = 160, /**< PWC_AVS_AVS_RESPONSE_TO_FW_21 */
  kTopPwcPlicIrqIdPwcAvsAvsResponseToFw22 = 161, /**< PWC_AVS_AVS_RESPONSE_TO_FW_22 */
  kTopPwcPlicIrqIdPwcAvsAvsResponseToFw23 = 162, /**< PWC_AVS_AVS_RESPONSE_TO_FW_23 */
  kTopPwcPlicIrqIdPwcAvsAvsResponseToFw24 = 163, /**< PWC_AVS_AVS_RESPONSE_TO_FW_24 */
  kTopPwcPlicIrqIdPwcAvsAvsResponseToFw25 = 164, /**< PWC_AVS_AVS_RESPONSE_TO_FW_25 */
  kTopPwcPlicIrqIdPwcAvsAvsResponseToFw26 = 165, /**< PWC_AVS_AVS_RESPONSE_TO_FW_26 */
  kTopPwcPlicIrqIdPwcAvsAvsResponseToFw27 = 166, /**< PWC_AVS_AVS_RESPONSE_TO_FW_27 */
  kTopPwcPlicIrqIdPwcAvsAvsResponseToFw28 = 167, /**< PWC_AVS_AVS_RESPONSE_TO_FW_28 */
  kTopPwcPlicIrqIdPwcBcastCStateEntry = 168, /**< PWC_BCAST_C_STATE_ENTRY */
  kTopPwcPlicIrqIdPwcBcastCStateExit = 169, /**< PWC_BCAST_C_STATE_EXIT */
  kTopPwcPlicIrqIdPwcBcastDpaIdleEntry = 170, /**< PWC_BCAST_DPA_IDLE_ENTRY */
  kTopPwcPlicIrqIdPwcBcastDpaIdleExit = 171, /**< PWC_BCAST_DPA_IDLE_EXIT */
  kTopPwcPlicIrqIdPwcCcs0PwrVirusLvlReq = 172, /**< PWC_CCS_0_PWR_VIRUS_LVL_REQ */
  kTopPwcPlicIrqIdPwcCcs1PwrVirusLvlReq = 173, /**< PWC_CCS_1_PWR_VIRUS_LVL_REQ */
  kTopPwcPlicIrqIdPwcCcs2PwrVirusLvlReq = 174, /**< PWC_CCS_2_PWR_VIRUS_LVL_REQ */
  kTopPwcPlicIrqIdPwcCcs3PwrVirusLvlReq = 175, /**< PWC_CCS_3_PWR_VIRUS_LVL_REQ */
  kTopPwcPlicIrqIdPwcCcs4PwrVirusLvlReq = 176, /**< PWC_CCS_4_PWR_VIRUS_LVL_REQ */
  kTopPwcPlicIrqIdPwcCcs5PwrVirusLvlReq = 177, /**< PWC_CCS_5_PWR_VIRUS_LVL_REQ */
  kTopPwcPlicIrqIdPwcCcs6PwrVirusLvlReq = 178, /**< PWC_CCS_6_PWR_VIRUS_LVL_REQ */
  kTopPwcPlicIrqIdPwcCcs7PwrVirusLvlReq = 179, /**< PWC_CCS_7_PWR_VIRUS_LVL_REQ */
  kTopPwcPlicIrqIdPwcCcs0DvfsFsm = 180, /**< PWC_CCS_0_DVFS_FSM */
  kTopPwcPlicIrqIdPwcCcs1DvfsFsm = 181, /**< PWC_CCS_1_DVFS_FSM */
  kTopPwcPlicIrqIdPwcCcs2DvfsFsm = 182, /**< PWC_CCS_2_DVFS_FSM */
  kTopPwcPlicIrqIdPwcCcs3DvfsFsm = 183, /**< PWC_CCS_3_DVFS_FSM */
  kTopPwcPlicIrqIdPwcCcs4DvfsFsm = 184, /**< PWC_CCS_4_DVFS_FSM */
  kTopPwcPlicIrqIdPwcCcs5DvfsFsm = 185, /**< PWC_CCS_5_DVFS_FSM */
  kTopPwcPlicIrqIdPwcCcs6DvfsFsm = 186, /**< PWC_CCS_6_DVFS_FSM */
  kTopPwcPlicIrqIdPwcCcs7DvfsFsm = 187, /**< PWC_CCS_7_DVFS_FSM */
  kTopPwcPlicIrqIdPwcHmsEastStatus = 188, /**< PWC_HMS_East_STATUS */
  kTopPwcPlicIrqIdPwcHmsWestStatus = 189, /**< PWC_HMS_WEST_STATUS */
  kTopPwcPlicIrqIdPwcPcs0AllPortsStatus = 190, /**< PWC_PCS_0_ALL_PORTS_STATUS */
  kTopPwcPlicIrqIdPwcPcs0LinkBringup0 = 191, /**< PWC_PCS_0_LINK_BRINGUP_0 */
  kTopPwcPlicIrqIdPwcPcs0LinkBringup1 = 192, /**< PWC_PCS_0_LINK_BRINGUP_1 */
  kTopPwcPlicIrqIdPwcPcs0LinkBringup2 = 193, /**< PWC_PCS_0_LINK_BRINGUP_2 */
  kTopPwcPlicIrqIdPwcPcs0LinkBringup3 = 194, /**< PWC_PCS_0_LINK_BRINGUP_3 */
  kTopPwcPlicIrqIdPwcPcs0MsgCtrl = 195, /**< PWC_PCS_0_MSG_CTRL */
  kTopPwcPlicIrqIdPwcPcs0PhyStatus = 196, /**< PWC_PCS_0_PHY_STATUS */
  kTopPwcPlicIrqIdPwcPcs1AllPortsStatus = 197, /**< PWC_PCS_1_ALL_PORTS_STATUS */
  kTopPwcPlicIrqIdPwcPcs1LinkBringup0 = 198, /**< PWC_PCS_1_LINK_BRINGUP_0 */
  kTopPwcPlicIrqIdPwcPcs1LinkBringup1 = 199, /**< PWC_PCS_1_LINK_BRINGUP_1 */
  kTopPwcPlicIrqIdPwcPcs1LinkBringup2 = 200, /**< PWC_PCS_1_LINK_BRINGUP_2 */
  kTopPwcPlicIrqIdPwcPcs1LinkBringup3 = 201, /**< PWC_PCS_1_LINK_BRINGUP_3 */
  kTopPwcPlicIrqIdPwcPcs1MsgCtrl = 202, /**< PWC_PCS_1_MSG_CTRL */
  kTopPwcPlicIrqIdPwcPcs1PhyStatus = 203, /**< PWC_PCS_1_PHY_STATUS */
  kTopPwcPlicIrqIdPwcPcs2AllPortsStatus = 204, /**< PWC_PCS_2_ALL_PORTS_STATUS */
  kTopPwcPlicIrqIdPwcPcs2LinkBringup0 = 205, /**< PWC_PCS_2_LINK_BRINGUP_0 */
  kTopPwcPlicIrqIdPwcPcs2LinkBringup1 = 206, /**< PWC_PCS_2_LINK_BRINGUP_1 */
  kTopPwcPlicIrqIdPwcPcs2LinkBringup2 = 207, /**< PWC_PCS_2_LINK_BRINGUP_2 */
  kTopPwcPlicIrqIdPwcPcs2LinkBringup3 = 208, /**< PWC_PCS_2_LINK_BRINGUP_3 */
  kTopPwcPlicIrqIdPwcPcs2MsgCtrl = 209, /**< PWC_PCS_2_MSG_CTRL */
  kTopPwcPlicIrqIdPwcPcs2PhyStatus = 210, /**< PWC_PCS_2_PHY_STATUS */
  kTopPwcPlicIrqIdPwcPcs3AllPortsStatus = 211, /**< PWC_PCS_3_ALL_PORTS_STATUS */
  kTopPwcPlicIrqIdPwcPcs3LinkBringup0 = 212, /**< PWC_PCS_3_LINK_BRINGUP_0 */
  kTopPwcPlicIrqIdPwcPcs3LinkBringup1 = 213, /**< PWC_PCS_3_LINK_BRINGUP_1 */
  kTopPwcPlicIrqIdPwcPcs3LinkBringup2 = 214, /**< PWC_PCS_3_LINK_BRINGUP_2 */
  kTopPwcPlicIrqIdPwcPcs3LinkBringup3 = 215, /**< PWC_PCS_3_LINK_BRINGUP_3 */
  kTopPwcPlicIrqIdPwcPcs3MsgCtrl = 216, /**< PWC_PCS_3_MSG_CTRL */
  kTopPwcPlicIrqIdPwcPcs3PhyStatus = 217, /**< PWC_PCS_3_PHY_STATUS */
  kTopPwcPlicIrqIdPwcPcs4AllPortsStatus = 218, /**< PWC_PCS_4_ALL_PORTS_STATUS */
  kTopPwcPlicIrqIdPwcPcs4LinkBringup0 = 219, /**< PWC_PCS_4_LINK_BRINGUP_0 */
  kTopPwcPlicIrqIdPwcPcs4LinkBringup1 = 220, /**< PWC_PCS_4_LINK_BRINGUP_1 */
  kTopPwcPlicIrqIdPwcPcs4LinkBringup2 = 221, /**< PWC_PCS_4_LINK_BRINGUP_2 */
  kTopPwcPlicIrqIdPwcPcs4LinkBringup3 = 222, /**< PWC_PCS_4_LINK_BRINGUP_3 */
  kTopPwcPlicIrqIdPwcPcs4MsgCtrl = 223, /**< PWC_PCS_4_MSG_CTRL */
  kTopPwcPlicIrqIdPwcPcs4PhyStatus = 224, /**< PWC_PCS_4_PHY_STATUS */
  kTopPwcPlicIrqIdPwcPcs5AllPortsStatus = 225, /**< PWC_PCS_5_ALL_PORTS_STATUS */
  kTopPwcPlicIrqIdPwcPcs5LinkBringup0 = 226, /**< PWC_PCS_5_LINK_BRINGUP_0 */
  kTopPwcPlicIrqIdPwcPcs5LinkBringup1 = 227, /**< PWC_PCS_5_LINK_BRINGUP_1 */
  kTopPwcPlicIrqIdPwcPcs5LinkBringup2 = 228, /**< PWC_PCS_5_LINK_BRINGUP_2 */
  kTopPwcPlicIrqIdPwcPcs5LinkBringup3 = 229, /**< PWC_PCS_5_LINK_BRINGUP_3 */
  kTopPwcPlicIrqIdPwcPcs5MsgCtrl = 230, /**< PWC_PCS_5_MSG_CTRL */
  kTopPwcPlicIrqIdPwcPcs5PhyStatus = 231, /**< PWC_PCS_5_PHY_STATUS */
  kTopPwcPlicIrqIdPwcPcs6AllPortsStatus = 232, /**< PWC_PCS_6_ALL_PORTS_STATUS */
  kTopPwcPlicIrqIdPwcPcs6LinkBringup0 = 233, /**< PWC_PCS_6_LINK_BRINGUP_0 */
  kTopPwcPlicIrqIdPwcPcs6LinkBringup1 = 234, /**< PWC_PCS_6_LINK_BRINGUP_1 */
  kTopPwcPlicIrqIdPwcPcs6LinkBringup2 = 235, /**< PWC_PCS_6_LINK_BRINGUP_2 */
  kTopPwcPlicIrqIdPwcPcs6LinkBringup3 = 236, /**< PWC_PCS_6_LINK_BRINGUP_3 */
  kTopPwcPlicIrqIdPwcPcs6MsgCtrl = 237, /**< PWC_PCS_6_MSG_CTRL */
  kTopPwcPlicIrqIdPwcPcs6PhyStatus = 238, /**< PWC_PCS_6_PHY_STATUS */
  kTopPwcPlicIrqIdPwcPcs7AllPortsStatus = 239, /**< PWC_PCS_7_ALL_PORTS_STATUS */
  kTopPwcPlicIrqIdPwcPcs7LinkBringup0 = 240, /**< PWC_PCS_7_LINK_BRINGUP_0 */
  kTopPwcPlicIrqIdPwcPcs7LinkBringup1 = 241, /**< PWC_PCS_7_LINK_BRINGUP_1 */
  kTopPwcPlicIrqIdPwcPcs7LinkBringup2 = 242, /**< PWC_PCS_7_LINK_BRINGUP_2 */
  kTopPwcPlicIrqIdPwcPcs7LinkBringup3 = 243, /**< PWC_PCS_7_LINK_BRINGUP_3 */
  kTopPwcPlicIrqIdPwcPcs7MsgCtrl = 244, /**< PWC_PCS_7_MSG_CTRL */
  kTopPwcPlicIrqIdPwcPcs7PhyStatus = 245, /**< PWC_PCS_7_PHY_STATUS */
  kTopPwcPlicIrqIdPwcHdrIpiFromPwc0 = 246, /**< PWC_HDR_IPI_FROM_PWC_0 */
  kTopPwcPlicIrqIdPwcHdrIpiFromPwc1 = 247, /**< PWC_HDR_IPI_FROM_PWC_1 */
  kTopPwcPlicIrqIdPwcHdrIpiFromPwc2 = 248, /**< PWC_HDR_IPI_FROM_PWC_2 */
  kTopPwcPlicIrqIdPwcHdrIpiFromRot = 249, /**< PWC_HDR_IPI_FROM_ROT */
  kTopPwcPlicIrqIdPwcHdrIpiFromMio = 250, /**< PWC_HDR_IPI_FROM_MIO */
  kTopPwcPlicIrqIdPwcHdrIpiFromDuc = 251, /**< PWC_HDR_IPI_FROM_DUC */
  kTopPwcPlicIrqIdLast = 251, /**< \internal The Last Valid Interrupt ID. */
} top_pwc_plic_irq_id_t;

/**
 * PLIC Interrupt Source to Peripheral Map
 *
 * This array is a mapping from `top_pwc_plic_irq_id_t` to
 * `top_pwc_plic_peripheral_t`.
 */
extern const top_pwc_plic_peripheral_t
    top_pwc_plic_interrupt_for_peripheral[252];

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
