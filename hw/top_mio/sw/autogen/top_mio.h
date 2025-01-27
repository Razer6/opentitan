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
 * Peripheral base address for core device on soc_proxy in top mio.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_MIO_SOC_PROXY_CORE_BASE_ADDR 0x22030000u

/**
 * Peripheral size for core device on soc_proxy in top mio.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_MIO_SOC_PROXY_CORE_BASE_ADDR and
 * `TOP_MIO_SOC_PROXY_CORE_BASE_ADDR + TOP_MIO_SOC_PROXY_CORE_SIZE_BYTES`.
 */
#define TOP_MIO_SOC_PROXY_CORE_SIZE_BYTES 0x10u

/**
 * Peripheral base address for ctn device on soc_proxy in top mio.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_MIO_SOC_PROXY_CTN_BASE_ADDR 0x40000000u

/**
 * Peripheral size for ctn device on soc_proxy in top mio.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_MIO_SOC_PROXY_CTN_BASE_ADDR and
 * `TOP_MIO_SOC_PROXY_CTN_BASE_ADDR + TOP_MIO_SOC_PROXY_CTN_SIZE_BYTES`.
 */
#define TOP_MIO_SOC_PROXY_CTN_SIZE_BYTES 0x40000000u

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
 * Peripheral base address for rv_plic in top mio.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_MIO_RV_PLIC_BASE_ADDR 0x28000000u

/**
 * Peripheral size for rv_plic in top mio.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_MIO_RV_PLIC_BASE_ADDR and
 * `TOP_MIO_RV_PLIC_BASE_ADDR + TOP_MIO_RV_PLIC_SIZE_BYTES`.
 */
#define TOP_MIO_RV_PLIC_SIZE_BYTES 0x8000000u

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
  kTopMioPlicPeripheralSocProxy = 3, /**< soc_proxy */
  kTopMioPlicPeripheralDma = 4, /**< dma */
  kTopMioPlicPeripheralMbx0 = 5, /**< mbx0 */
  kTopMioPlicPeripheralMbx1 = 6, /**< mbx1 */
  kTopMioPlicPeripheralMbx2 = 7, /**< mbx2 */
  kTopMioPlicPeripheralMbx3 = 8, /**< mbx3 */
  kTopMioPlicPeripheralMbx4 = 9, /**< mbx4 */
  kTopMioPlicPeripheralMbx5 = 10, /**< mbx5 */
  kTopMioPlicPeripheralLast = 10, /**< \internal Final PLIC peripheral */
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
  kTopMioPlicIrqIdSocProxyExternal0 = 4, /**< soc_proxy_external 0 */
  kTopMioPlicIrqIdSocProxyExternal1 = 5, /**< soc_proxy_external 1 */
  kTopMioPlicIrqIdSocProxyExternal2 = 6, /**< soc_proxy_external 2 */
  kTopMioPlicIrqIdSocProxyExternal3 = 7, /**< soc_proxy_external 3 */
  kTopMioPlicIrqIdSocProxyExternal4 = 8, /**< soc_proxy_external 4 */
  kTopMioPlicIrqIdSocProxyExternal5 = 9, /**< soc_proxy_external 5 */
  kTopMioPlicIrqIdSocProxyExternal6 = 10, /**< soc_proxy_external 6 */
  kTopMioPlicIrqIdSocProxyExternal7 = 11, /**< soc_proxy_external 7 */
  kTopMioPlicIrqIdSocProxyExternal8 = 12, /**< soc_proxy_external 8 */
  kTopMioPlicIrqIdSocProxyExternal9 = 13, /**< soc_proxy_external 9 */
  kTopMioPlicIrqIdSocProxyExternal10 = 14, /**< soc_proxy_external 10 */
  kTopMioPlicIrqIdSocProxyExternal11 = 15, /**< soc_proxy_external 11 */
  kTopMioPlicIrqIdSocProxyExternal12 = 16, /**< soc_proxy_external 12 */
  kTopMioPlicIrqIdSocProxyExternal13 = 17, /**< soc_proxy_external 13 */
  kTopMioPlicIrqIdSocProxyExternal14 = 18, /**< soc_proxy_external 14 */
  kTopMioPlicIrqIdSocProxyExternal15 = 19, /**< soc_proxy_external 15 */
  kTopMioPlicIrqIdSocProxyExternal16 = 20, /**< soc_proxy_external 16 */
  kTopMioPlicIrqIdSocProxyExternal17 = 21, /**< soc_proxy_external 17 */
  kTopMioPlicIrqIdSocProxyExternal18 = 22, /**< soc_proxy_external 18 */
  kTopMioPlicIrqIdSocProxyExternal19 = 23, /**< soc_proxy_external 19 */
  kTopMioPlicIrqIdSocProxyExternal20 = 24, /**< soc_proxy_external 20 */
  kTopMioPlicIrqIdSocProxyExternal21 = 25, /**< soc_proxy_external 21 */
  kTopMioPlicIrqIdSocProxyExternal22 = 26, /**< soc_proxy_external 22 */
  kTopMioPlicIrqIdSocProxyExternal23 = 27, /**< soc_proxy_external 23 */
  kTopMioPlicIrqIdSocProxyExternal24 = 28, /**< soc_proxy_external 24 */
  kTopMioPlicIrqIdSocProxyExternal25 = 29, /**< soc_proxy_external 25 */
  kTopMioPlicIrqIdSocProxyExternal26 = 30, /**< soc_proxy_external 26 */
  kTopMioPlicIrqIdSocProxyExternal27 = 31, /**< soc_proxy_external 27 */
  kTopMioPlicIrqIdSocProxyExternal28 = 32, /**< soc_proxy_external 28 */
  kTopMioPlicIrqIdSocProxyExternal29 = 33, /**< soc_proxy_external 29 */
  kTopMioPlicIrqIdSocProxyExternal30 = 34, /**< soc_proxy_external 30 */
  kTopMioPlicIrqIdSocProxyExternal31 = 35, /**< soc_proxy_external 31 */
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
  kTopMioPlicIrqIdMioHdrIpiFromMio0 = 57, /**< MIO_HDR_IPI_FROM_MIO_0 */
  kTopMioPlicIrqIdMioHdrIpiFromMio1 = 58, /**< MIO_HDR_IPI_FROM_MIO_1 */
  kTopMioPlicIrqIdMioHdrIpiFromMio2 = 59, /**< MIO_HDR_IPI_FROM_MIO_2 */
  kTopMioPlicIrqIdMioHdrIpiFromPwc = 60, /**< MIO_HDR_IPI_FROM_PWC */
  kTopMioPlicIrqIdMioHdrIpiFromRot = 61, /**< MIO_HDR_IPI_FROM_ROT */
  kTopMioPlicIrqIdMioHdrIpiFromPwc = 62, /**< MIO_HDR_IPI_FROM_PWC */
  kTopMioPlicIrqIdLioGrpAIbexIrq = 63, /**< LIO_GRP_A_IBEX_IRQ */
  kTopMioPlicIrqIdLioGrpBIbexIrq = 64, /**< LIO_GRP_B_IBEX_IRQ */
  kTopMioPlicIrqIdLioGrpCIbexIrq = 65, /**< LIO_GRP_C_IBEX_IRQ */
  kTopMioPlicIrqIdLast = 65, /**< \internal The Last Valid Interrupt ID. */
} top_mio_plic_irq_id_t;

/**
 * PLIC Interrupt Source to Peripheral Map
 *
 * This array is a mapping from `top_mio_plic_irq_id_t` to
 * `top_mio_plic_peripheral_t`.
 */
extern const top_mio_plic_peripheral_t
    top_mio_plic_interrupt_for_peripheral[65];

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
