// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// ------------------- W A R N I N G: A U T O - G E N E R A T E D   C O D E !! -------------------//
// PLEASE DO NOT HAND-EDIT THIS FILE. IT HAS BEEN AUTO-GENERATED WITH THE FOLLOWING COMMAND:
// util/topgen.py -t hw/top_mio/data/top_mio.hjson
// -o hw/top_mio

#ifndef OPENTITAN_HW_TOP_MIO_SW_AUTOGEN_TOP_MIO_H_
#define OPENTITAN_HW_TOP_MIO_SW_AUTOGEN_TOP_MIO_H_

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
 * Peripheral base address for rv_timer in top mio.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_MIO_RV_TIMER_BASE_ADDR 0x30000000u

/**
 * Peripheral size for rv_timer in top mio.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_MIO_RV_TIMER_BASE_ADDR and
 * `TOP_MIO_RV_TIMER_BASE_ADDR + TOP_MIO_RV_TIMER_SIZE_BYTES`.
 */
#define TOP_MIO_RV_TIMER_SIZE_BYTES 0x200u

/**
 * Peripheral base address for aon_timer_aon in top mio.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_MIO_AON_TIMER_AON_BASE_ADDR 0x30470000u

/**
 * Peripheral size for aon_timer_aon in top mio.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_MIO_AON_TIMER_AON_BASE_ADDR and
 * `TOP_MIO_AON_TIMER_AON_BASE_ADDR + TOP_MIO_AON_TIMER_AON_SIZE_BYTES`.
 */
#define TOP_MIO_AON_TIMER_AON_SIZE_BYTES 0x40u

/**
 * Peripheral base address for core device on mio_soc_proxy in top mio.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_MIO_MIO_SOC_PROXY_CORE_BASE_ADDR 0x22030000u

/**
 * Peripheral size for core device on mio_soc_proxy in top mio.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_MIO_MIO_SOC_PROXY_CORE_BASE_ADDR and
 * `TOP_MIO_MIO_SOC_PROXY_CORE_BASE_ADDR + TOP_MIO_MIO_SOC_PROXY_CORE_SIZE_BYTES`.
 */
#define TOP_MIO_MIO_SOC_PROXY_CORE_SIZE_BYTES 0x10u

/**
 * Peripheral base address for ctn device on mio_soc_proxy in top mio.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_MIO_MIO_SOC_PROXY_CTN_BASE_ADDR 0x40000000u

/**
 * Peripheral size for ctn device on mio_soc_proxy in top mio.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_MIO_MIO_SOC_PROXY_CTN_BASE_ADDR and
 * `TOP_MIO_MIO_SOC_PROXY_CTN_BASE_ADDR + TOP_MIO_MIO_SOC_PROXY_CTN_SIZE_BYTES`.
 */
#define TOP_MIO_MIO_SOC_PROXY_CTN_SIZE_BYTES 0x40000000u

/**
 * Peripheral base address for regs device on sram_ctrl_ret_aon in top mio.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_MIO_SRAM_CTRL_RET_AON_REGS_BASE_ADDR 0x30500000u

/**
 * Peripheral size for regs device on sram_ctrl_ret_aon in top mio.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_MIO_SRAM_CTRL_RET_AON_REGS_BASE_ADDR and
 * `TOP_MIO_SRAM_CTRL_RET_AON_REGS_BASE_ADDR + TOP_MIO_SRAM_CTRL_RET_AON_REGS_SIZE_BYTES`.
 */
#define TOP_MIO_SRAM_CTRL_RET_AON_REGS_SIZE_BYTES 0x40u

/**
 * Peripheral base address for ram device on sram_ctrl_ret_aon in top mio.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_MIO_SRAM_CTRL_RET_AON_RAM_BASE_ADDR 0x30600000u

/**
 * Peripheral size for ram device on sram_ctrl_ret_aon in top mio.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_MIO_SRAM_CTRL_RET_AON_RAM_BASE_ADDR and
 * `TOP_MIO_SRAM_CTRL_RET_AON_RAM_BASE_ADDR + TOP_MIO_SRAM_CTRL_RET_AON_RAM_SIZE_BYTES`.
 */
#define TOP_MIO_SRAM_CTRL_RET_AON_RAM_SIZE_BYTES 0x1000u

/**
 * Peripheral base address for regs device on rv_dm in top mio.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_MIO_RV_DM_REGS_BASE_ADDR 0x21200000u

/**
 * Peripheral size for regs device on rv_dm in top mio.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_MIO_RV_DM_REGS_BASE_ADDR and
 * `TOP_MIO_RV_DM_REGS_BASE_ADDR + TOP_MIO_RV_DM_REGS_SIZE_BYTES`.
 */
#define TOP_MIO_RV_DM_REGS_SIZE_BYTES 0x10u

/**
 * Peripheral base address for mem device on rv_dm in top mio.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_MIO_RV_DM_MEM_BASE_ADDR 0x40000u

/**
 * Peripheral size for mem device on rv_dm in top mio.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_MIO_RV_DM_MEM_BASE_ADDR and
 * `TOP_MIO_RV_DM_MEM_BASE_ADDR + TOP_MIO_RV_DM_MEM_SIZE_BYTES`.
 */
#define TOP_MIO_RV_DM_MEM_SIZE_BYTES 0x1000u

/**
 * Peripheral base address for rv_plic_mio in top mio.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_MIO_RV_PLIC_MIO_BASE_ADDR 0x28000000u

/**
 * Peripheral size for rv_plic_mio in top mio.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_MIO_RV_PLIC_MIO_BASE_ADDR and
 * `TOP_MIO_RV_PLIC_MIO_BASE_ADDR + TOP_MIO_RV_PLIC_MIO_SIZE_BYTES`.
 */
#define TOP_MIO_RV_PLIC_MIO_SIZE_BYTES 0x8000000u

/**
 * Peripheral base address for regs device on sram_ctrl_main in top mio.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_MIO_SRAM_CTRL_MAIN_REGS_BASE_ADDR 0x211C0000u

/**
 * Peripheral size for regs device on sram_ctrl_main in top mio.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_MIO_SRAM_CTRL_MAIN_REGS_BASE_ADDR and
 * `TOP_MIO_SRAM_CTRL_MAIN_REGS_BASE_ADDR + TOP_MIO_SRAM_CTRL_MAIN_REGS_SIZE_BYTES`.
 */
#define TOP_MIO_SRAM_CTRL_MAIN_REGS_SIZE_BYTES 0x40u

/**
 * Peripheral base address for ram device on sram_ctrl_main in top mio.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_MIO_SRAM_CTRL_MAIN_RAM_BASE_ADDR 0x10000000u

/**
 * Peripheral size for ram device on sram_ctrl_main in top mio.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_MIO_SRAM_CTRL_MAIN_RAM_BASE_ADDR and
 * `TOP_MIO_SRAM_CTRL_MAIN_RAM_BASE_ADDR + TOP_MIO_SRAM_CTRL_MAIN_RAM_SIZE_BYTES`.
 */
#define TOP_MIO_SRAM_CTRL_MAIN_RAM_SIZE_BYTES 0x10000u

/**
 * Peripheral base address for regs device on sram_ctrl_mbox in top mio.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_MIO_SRAM_CTRL_MBOX_REGS_BASE_ADDR 0x211D0000u

/**
 * Peripheral size for regs device on sram_ctrl_mbox in top mio.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_MIO_SRAM_CTRL_MBOX_REGS_BASE_ADDR and
 * `TOP_MIO_SRAM_CTRL_MBOX_REGS_BASE_ADDR + TOP_MIO_SRAM_CTRL_MBOX_REGS_SIZE_BYTES`.
 */
#define TOP_MIO_SRAM_CTRL_MBOX_REGS_SIZE_BYTES 0x40u

/**
 * Peripheral base address for ram device on sram_ctrl_mbox in top mio.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_MIO_SRAM_CTRL_MBOX_RAM_BASE_ADDR 0x11000000u

/**
 * Peripheral size for ram device on sram_ctrl_mbox in top mio.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_MIO_SRAM_CTRL_MBOX_RAM_BASE_ADDR and
 * `TOP_MIO_SRAM_CTRL_MBOX_RAM_BASE_ADDR + TOP_MIO_SRAM_CTRL_MBOX_RAM_SIZE_BYTES`.
 */
#define TOP_MIO_SRAM_CTRL_MBOX_RAM_SIZE_BYTES 0x1000u

/**
 * Peripheral base address for dma in top mio.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_MIO_DMA_BASE_ADDR 0x22010000u

/**
 * Peripheral size for dma in top mio.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_MIO_DMA_BASE_ADDR and
 * `TOP_MIO_DMA_BASE_ADDR + TOP_MIO_DMA_SIZE_BYTES`.
 */
#define TOP_MIO_DMA_SIZE_BYTES 0x200u

/**
 * Peripheral base address for core device on mbx0 in top mio.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_MIO_MBX0_CORE_BASE_ADDR 0x22000000u

/**
 * Peripheral size for core device on mbx0 in top mio.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_MIO_MBX0_CORE_BASE_ADDR and
 * `TOP_MIO_MBX0_CORE_BASE_ADDR + TOP_MIO_MBX0_CORE_SIZE_BYTES`.
 */
#define TOP_MIO_MBX0_CORE_SIZE_BYTES 0x80u

/**
 * Peripheral base address for core device on mbx1 in top mio.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_MIO_MBX1_CORE_BASE_ADDR 0x22000100u

/**
 * Peripheral size for core device on mbx1 in top mio.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_MIO_MBX1_CORE_BASE_ADDR and
 * `TOP_MIO_MBX1_CORE_BASE_ADDR + TOP_MIO_MBX1_CORE_SIZE_BYTES`.
 */
#define TOP_MIO_MBX1_CORE_SIZE_BYTES 0x80u

/**
 * Peripheral base address for core device on mbx2 in top mio.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_MIO_MBX2_CORE_BASE_ADDR 0x22000200u

/**
 * Peripheral size for core device on mbx2 in top mio.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_MIO_MBX2_CORE_BASE_ADDR and
 * `TOP_MIO_MBX2_CORE_BASE_ADDR + TOP_MIO_MBX2_CORE_SIZE_BYTES`.
 */
#define TOP_MIO_MBX2_CORE_SIZE_BYTES 0x80u

/**
 * Peripheral base address for core device on mbx3 in top mio.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_MIO_MBX3_CORE_BASE_ADDR 0x22000300u

/**
 * Peripheral size for core device on mbx3 in top mio.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_MIO_MBX3_CORE_BASE_ADDR and
 * `TOP_MIO_MBX3_CORE_BASE_ADDR + TOP_MIO_MBX3_CORE_SIZE_BYTES`.
 */
#define TOP_MIO_MBX3_CORE_SIZE_BYTES 0x80u

/**
 * Peripheral base address for core device on mbx4 in top mio.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_MIO_MBX4_CORE_BASE_ADDR 0x22000400u

/**
 * Peripheral size for core device on mbx4 in top mio.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_MIO_MBX4_CORE_BASE_ADDR and
 * `TOP_MIO_MBX4_CORE_BASE_ADDR + TOP_MIO_MBX4_CORE_SIZE_BYTES`.
 */
#define TOP_MIO_MBX4_CORE_SIZE_BYTES 0x80u

/**
 * Peripheral base address for core device on mbx5 in top mio.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_MIO_MBX5_CORE_BASE_ADDR 0x22000500u

/**
 * Peripheral size for core device on mbx5 in top mio.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_MIO_MBX5_CORE_BASE_ADDR and
 * `TOP_MIO_MBX5_CORE_BASE_ADDR + TOP_MIO_MBX5_CORE_SIZE_BYTES`.
 */
#define TOP_MIO_MBX5_CORE_SIZE_BYTES 0x80u

/**
 * Peripheral base address for core device on mbx_pcie0 in top mio.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_MIO_MBX_PCIE0_CORE_BASE_ADDR 0x22040000u

/**
 * Peripheral size for core device on mbx_pcie0 in top mio.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_MIO_MBX_PCIE0_CORE_BASE_ADDR and
 * `TOP_MIO_MBX_PCIE0_CORE_BASE_ADDR + TOP_MIO_MBX_PCIE0_CORE_SIZE_BYTES`.
 */
#define TOP_MIO_MBX_PCIE0_CORE_SIZE_BYTES 0x80u

/**
 * Peripheral base address for cfg device on rv_core_ibex in top mio.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_MIO_RV_CORE_IBEX_CFG_BASE_ADDR 0x211F0000u

/**
 * Peripheral size for cfg device on rv_core_ibex in top mio.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_MIO_RV_CORE_IBEX_CFG_BASE_ADDR and
 * `TOP_MIO_RV_CORE_IBEX_CFG_BASE_ADDR + TOP_MIO_RV_CORE_IBEX_CFG_SIZE_BYTES`.
 */
#define TOP_MIO_RV_CORE_IBEX_CFG_SIZE_BYTES 0x800u


/**
 * Memory base address for ctn in top mio.
 */
#define TOP_MIO_CTN_BASE_ADDR 0x40000000u

/**
 * Memory size for ctn in top mio.
 */
#define TOP_MIO_CTN_SIZE_BYTES 0x40000000u

/**
 * Memory base address for ram_ret_aon in top mio.
 */
#define TOP_MIO_RAM_RET_AON_BASE_ADDR 0x30600000u

/**
 * Memory size for ram_ret_aon in top mio.
 */
#define TOP_MIO_RAM_RET_AON_SIZE_BYTES 0x1000u

/**
 * Memory base address for ram_main in top mio.
 */
#define TOP_MIO_RAM_MAIN_BASE_ADDR 0x10000000u

/**
 * Memory size for ram_main in top mio.
 */
#define TOP_MIO_RAM_MAIN_SIZE_BYTES 0x10000u

/**
 * Memory base address for ram_mbox in top mio.
 */
#define TOP_MIO_RAM_MBOX_BASE_ADDR 0x11000000u

/**
 * Memory size for ram_mbox in top mio.
 */
#define TOP_MIO_RAM_MBOX_SIZE_BYTES 0x1000u


/**
 * PLIC Interrupt Source Peripheral.
 *
 * Enumeration used to determine which peripheral asserted the corresponding
 * interrupt.
 */
typedef enum top_mio_plic_peripheral {
  kTopMioPlicPeripheralUnknown = 0, /**< Unknown Peripheral */
  kTopMioPlicPeripheralRvTimer = 1, /**< rv_timer */
  kTopMioPlicPeripheralAonTimerAon = 2, /**< aon_timer_aon */
  kTopMioPlicPeripheralMioSocProxy = 3, /**< mio_soc_proxy */
  kTopMioPlicPeripheralDma = 4, /**< dma */
  kTopMioPlicPeripheralMbx0 = 5, /**< mbx0 */
  kTopMioPlicPeripheralMbx1 = 6, /**< mbx1 */
  kTopMioPlicPeripheralMbx2 = 7, /**< mbx2 */
  kTopMioPlicPeripheralMbx3 = 8, /**< mbx3 */
  kTopMioPlicPeripheralMbx4 = 9, /**< mbx4 */
  kTopMioPlicPeripheralMbx5 = 10, /**< mbx5 */
  kTopMioPlicPeripheralMbxPcie0 = 11, /**< mbx_pcie0 */
  kTopMioPlicPeripheralLast = 11, /**< \internal Final PLIC peripheral */
} top_mio_plic_peripheral_t;

/**
 * PLIC Interrupt Source.
 *
 * Enumeration of all PLIC interrupt sources. The interrupt sources belonging to
 * the same peripheral are guaranteed to be consecutive.
 */
typedef enum top_mio_plic_irq_id {
  kTopMioPlicIrqIdNone = 0, /**< No Interrupt */
  kTopMioPlicIrqIdRvTimerTimerExpiredHart0Timer0 = 1, /**< rv_timer_timer_expired_hart0_timer0 */
  kTopMioPlicIrqIdAonTimerAonWkupTimerExpired = 2, /**< aon_timer_aon_wkup_timer_expired */
  kTopMioPlicIrqIdAonTimerAonWdogTimerBark = 3, /**< aon_timer_aon_wdog_timer_bark */
  kTopMioPlicIrqIdMioSocProxyExternal0 = 4, /**< mio_soc_proxy_external 0 */
  kTopMioPlicIrqIdMioSocProxyExternal1 = 5, /**< mio_soc_proxy_external 1 */
  kTopMioPlicIrqIdMioSocProxyExternal2 = 6, /**< mio_soc_proxy_external 2 */
  kTopMioPlicIrqIdMioSocProxyExternal3 = 7, /**< mio_soc_proxy_external 3 */
  kTopMioPlicIrqIdMioSocProxyExternal4 = 8, /**< mio_soc_proxy_external 4 */
  kTopMioPlicIrqIdMioSocProxyExternal5 = 9, /**< mio_soc_proxy_external 5 */
  kTopMioPlicIrqIdMioSocProxyExternal6 = 10, /**< mio_soc_proxy_external 6 */
  kTopMioPlicIrqIdMioSocProxyExternal7 = 11, /**< mio_soc_proxy_external 7 */
  kTopMioPlicIrqIdMioSocProxyExternal8 = 12, /**< mio_soc_proxy_external 8 */
  kTopMioPlicIrqIdMioSocProxyExternal9 = 13, /**< mio_soc_proxy_external 9 */
  kTopMioPlicIrqIdMioSocProxyExternal10 = 14, /**< mio_soc_proxy_external 10 */
  kTopMioPlicIrqIdMioSocProxyExternal11 = 15, /**< mio_soc_proxy_external 11 */
  kTopMioPlicIrqIdMioSocProxyExternal12 = 16, /**< mio_soc_proxy_external 12 */
  kTopMioPlicIrqIdMioSocProxyExternal13 = 17, /**< mio_soc_proxy_external 13 */
  kTopMioPlicIrqIdMioSocProxyExternal14 = 18, /**< mio_soc_proxy_external 14 */
  kTopMioPlicIrqIdMioSocProxyExternal15 = 19, /**< mio_soc_proxy_external 15 */
  kTopMioPlicIrqIdMioSocProxyExternal16 = 20, /**< mio_soc_proxy_external 16 */
  kTopMioPlicIrqIdMioSocProxyExternal17 = 21, /**< mio_soc_proxy_external 17 */
  kTopMioPlicIrqIdMioSocProxyExternal18 = 22, /**< mio_soc_proxy_external 18 */
  kTopMioPlicIrqIdMioSocProxyExternal19 = 23, /**< mio_soc_proxy_external 19 */
  kTopMioPlicIrqIdMioSocProxyExternal20 = 24, /**< mio_soc_proxy_external 20 */
  kTopMioPlicIrqIdMioSocProxyExternal21 = 25, /**< mio_soc_proxy_external 21 */
  kTopMioPlicIrqIdMioSocProxyExternal22 = 26, /**< mio_soc_proxy_external 22 */
  kTopMioPlicIrqIdMioSocProxyExternal23 = 27, /**< mio_soc_proxy_external 23 */
  kTopMioPlicIrqIdMioSocProxyExternal24 = 28, /**< mio_soc_proxy_external 24 */
  kTopMioPlicIrqIdMioSocProxyExternal25 = 29, /**< mio_soc_proxy_external 25 */
  kTopMioPlicIrqIdMioSocProxyExternal26 = 30, /**< mio_soc_proxy_external 26 */
  kTopMioPlicIrqIdMioSocProxyExternal27 = 31, /**< mio_soc_proxy_external 27 */
  kTopMioPlicIrqIdMioSocProxyExternal28 = 32, /**< mio_soc_proxy_external 28 */
  kTopMioPlicIrqIdMioSocProxyExternal29 = 33, /**< mio_soc_proxy_external 29 */
  kTopMioPlicIrqIdMioSocProxyExternal30 = 34, /**< mio_soc_proxy_external 30 */
  kTopMioPlicIrqIdMioSocProxyExternal31 = 35, /**< mio_soc_proxy_external 31 */
  kTopMioPlicIrqIdDmaDmaDone = 36, /**< dma_dma_done */
  kTopMioPlicIrqIdDmaDmaChunkDone = 37, /**< dma_dma_chunk_done */
  kTopMioPlicIrqIdDmaDmaError = 38, /**< dma_dma_error */
  kTopMioPlicIrqIdMbx0MbxReady = 39, /**< mbx0_mbx_ready */
  kTopMioPlicIrqIdMbx0MbxAbort = 40, /**< mbx0_mbx_abort */
  kTopMioPlicIrqIdMbx0MbxError = 41, /**< mbx0_mbx_error */
  kTopMioPlicIrqIdMbx1MbxReady = 42, /**< mbx1_mbx_ready */
  kTopMioPlicIrqIdMbx1MbxAbort = 43, /**< mbx1_mbx_abort */
  kTopMioPlicIrqIdMbx1MbxError = 44, /**< mbx1_mbx_error */
  kTopMioPlicIrqIdMbx2MbxReady = 45, /**< mbx2_mbx_ready */
  kTopMioPlicIrqIdMbx2MbxAbort = 46, /**< mbx2_mbx_abort */
  kTopMioPlicIrqIdMbx2MbxError = 47, /**< mbx2_mbx_error */
  kTopMioPlicIrqIdMbx3MbxReady = 48, /**< mbx3_mbx_ready */
  kTopMioPlicIrqIdMbx3MbxAbort = 49, /**< mbx3_mbx_abort */
  kTopMioPlicIrqIdMbx3MbxError = 50, /**< mbx3_mbx_error */
  kTopMioPlicIrqIdMbx4MbxReady = 51, /**< mbx4_mbx_ready */
  kTopMioPlicIrqIdMbx4MbxAbort = 52, /**< mbx4_mbx_abort */
  kTopMioPlicIrqIdMbx4MbxError = 53, /**< mbx4_mbx_error */
  kTopMioPlicIrqIdMbx5MbxReady = 54, /**< mbx5_mbx_ready */
  kTopMioPlicIrqIdMbx5MbxAbort = 55, /**< mbx5_mbx_abort */
  kTopMioPlicIrqIdMbx5MbxError = 56, /**< mbx5_mbx_error */
  kTopMioPlicIrqIdMbxPcie0MbxReady = 57, /**< mbx_pcie0_mbx_ready */
  kTopMioPlicIrqIdMbxPcie0MbxAbort = 58, /**< mbx_pcie0_mbx_abort */
  kTopMioPlicIrqIdMbxPcie0MbxError = 59, /**< mbx_pcie0_mbx_error */
  kTopMioPlicIrqIdMioHdrIpiFromMio0 = 60, /**< MIO_HDR_IPI_FROM_MIO_0 */
  kTopMioPlicIrqIdMioHdrIpiFromMio1 = 61, /**< MIO_HDR_IPI_FROM_MIO_1 */
  kTopMioPlicIrqIdMioHdrIpiFromMio2 = 62, /**< MIO_HDR_IPI_FROM_MIO_2 */
  kTopMioPlicIrqIdMioHdrIpiFromPwc = 63, /**< MIO_HDR_IPI_FROM_PWC */
  kTopMioPlicIrqIdMioHdrIpiFromRot = 64, /**< MIO_HDR_IPI_FROM_ROT */
  kTopMioPlicIrqIdMioHdrIpiFromPwc = 65, /**< MIO_HDR_IPI_FROM_PWC */
  kTopMioPlicIrqIdLioGrpAIbexIrq = 66, /**< LIO_GRP_A_IBEX_IRQ */
  kTopMioPlicIrqIdLioGrpBIbexIrq = 67, /**< LIO_GRP_B_IBEX_IRQ */
  kTopMioPlicIrqIdLioGrpCIbexIrq = 68, /**< LIO_GRP_C_IBEX_IRQ */
  kTopMioPlicIrqIdLast = 68, /**< \internal The Last Valid Interrupt ID. */
} top_mio_plic_irq_id_t;

/**
 * PLIC Interrupt Source to Peripheral Map
 *
 * This array is a mapping from `top_mio_plic_irq_id_t` to
 * `top_mio_plic_peripheral_t`.
 */
extern const top_mio_plic_peripheral_t
    top_mio_plic_interrupt_for_peripheral[68];

/**
 * PLIC Interrupt Target.
 *
 * Enumeration used to determine which set of IE, CC, threshold registers to
 * access for a given interrupt target.
 */
typedef enum top_mio_plic_target {
  kTopMioPlicTargetIbex0 = 0, /**< Ibex Core 0 */
  kTopMioPlicTargetLast = 0, /**< \internal Final PLIC target */
} top_mio_plic_target_t;

/**
 * MMIO Region
 *
 * MMIO region excludes any memory that is separate from the module
 * configuration space, i.e. ROM, main SRAM, and mbx SRAM are excluded but
 * retention SRAM or spi_device are included.
 */
#define TOP_MIO_MMIO_BASE_ADDR 0x211C0000u
#define TOP_MIO_MMIO_SIZE_BYTES 0xF441000u

// Header Extern Guard
#ifdef __cplusplus
}  // extern "C"
#endif

#endif  // OPENTITAN_HW_TOP_MIO_SW_AUTOGEN_TOP_MIO_H_
