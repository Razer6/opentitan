// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// ------------------- W A R N I N G: A U T O - G E N E R A T E D   C O D E !! -------------------//
// PLEASE DO NOT HAND-EDIT THIS FILE. IT HAS BEEN AUTO-GENERATED WITH THE FOLLOWING COMMAND:
// util/topgen.py -t hw/top_mio/data/top_mio.hjson \
//                -o hw/top_mio/

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
 * Peripheral base address for cfg device on rv_core_ibex_mio in top mio.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_MIO_RV_CORE_IBEX_MIO_CFG_BASE_ADDR 0x211F0000u

/**
 * Peripheral size for cfg device on rv_core_ibex_mio in top mio.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_MIO_RV_CORE_IBEX_MIO_CFG_BASE_ADDR and
 * `TOP_MIO_RV_CORE_IBEX_MIO_CFG_BASE_ADDR + TOP_MIO_RV_CORE_IBEX_MIO_CFG_SIZE_BYTES`.
 */
#define TOP_MIO_RV_CORE_IBEX_MIO_CFG_SIZE_BYTES 0x800u


/**
 * Memory base address for ctn memory on mio_soc_proxy in top mio.
 */
#define TOP_MIO_MIO_SOC_PROXY_CTN_BASE_ADDR 0x40000000u

/**
 * Memory size for ctn memory on mio_soc_proxy in top mio.
 */
#define TOP_MIO_MIO_SOC_PROXY_CTN_SIZE_BYTES 0x80000000u

/**
 * Memory base address for ram memory on sram_ctrl_ret_aon in top mio.
 */
#define TOP_MIO_SRAM_CTRL_RET_AON_RAM_BASE_ADDR 0x30600000u

/**
 * Memory size for ram memory on sram_ctrl_ret_aon in top mio.
 */
#define TOP_MIO_SRAM_CTRL_RET_AON_RAM_SIZE_BYTES 0x1000u

/**
 * Memory base address for ram memory on sram_ctrl_main in top mio.
 */
#define TOP_MIO_SRAM_CTRL_MAIN_RAM_BASE_ADDR 0x10000000u

/**
 * Memory size for ram memory on sram_ctrl_main in top mio.
 */
#define TOP_MIO_SRAM_CTRL_MAIN_RAM_SIZE_BYTES 0x10000u

/**
 * Memory base address for ram memory on sram_ctrl_mbox in top mio.
 */
#define TOP_MIO_SRAM_CTRL_MBOX_RAM_BASE_ADDR 0x11000000u

/**
 * Memory size for ram memory on sram_ctrl_mbox in top mio.
 */
#define TOP_MIO_SRAM_CTRL_MBOX_RAM_SIZE_BYTES 0x1000u


/**
 * PLIC Interrupt Source Peripheral.
 *
 * Enumeration used to determine which peripheral asserted the corresponding
 * interrupt.
 */
typedef enum top_mio_plic_mio_peripheral {
  kTopMioPlicMioPeripheralUnknown = 0, /**< Unknown Peripheral */
  kTopMioPlicMioPeripheralRvTimer = 1, /**< rv_timer */
  kTopMioPlicMioPeripheralAonTimerAon = 2, /**< aon_timer_aon */
  kTopMioPlicMioPeripheralDma = 3, /**< dma */
  kTopMioPlicMioPeripheralMbx0 = 4, /**< mbx0 */
  kTopMioPlicMioPeripheralMbx1 = 5, /**< mbx1 */
  kTopMioPlicMioPeripheralMbx2 = 6, /**< mbx2 */
  kTopMioPlicMioPeripheralMbx3 = 7, /**< mbx3 */
  kTopMioPlicMioPeripheralMbx4 = 8, /**< mbx4 */
  kTopMioPlicMioPeripheralMbx5 = 9, /**< mbx5 */
  kTopMioPlicMioPeripheralMbxPcie0 = 10, /**< mbx_pcie0 */
  kTopMioPlicMioPeripheralLast = 10, /**< \internal Final PLIC peripheral */
} top_mio_plic_mio_peripheral_t;

/**
 * PLIC Interrupt Source.
 *
 * Enumeration of all PLIC interrupt sources. The interrupt sources belonging to
 * the same peripheral are guaranteed to be consecutive.
 */
typedef enum top_mio_plic_mio_irq_id {
  kTopMioPlicMioIrqIdNone = 0, /**< No Interrupt */
  kTopMioPlicMioIrqIdRvTimerTimerExpiredHart0Timer0 = 1, /**< rv_timer_timer_expired_hart0_timer0 */
  kTopMioPlicMioIrqIdAonTimerAonWkupTimerExpired = 2, /**< aon_timer_aon_wkup_timer_expired */
  kTopMioPlicMioIrqIdAonTimerAonWdogTimerBark = 3, /**< aon_timer_aon_wdog_timer_bark */
  kTopMioPlicMioIrqIdDmaDmaDone = 4, /**< dma_dma_done */
  kTopMioPlicMioIrqIdDmaDmaChunkDone = 5, /**< dma_dma_chunk_done */
  kTopMioPlicMioIrqIdDmaDmaError = 6, /**< dma_dma_error */
  kTopMioPlicMioIrqIdMbx0MbxReady = 7, /**< mbx0_mbx_ready */
  kTopMioPlicMioIrqIdMbx0MbxAbort = 8, /**< mbx0_mbx_abort */
  kTopMioPlicMioIrqIdMbx0MbxError = 9, /**< mbx0_mbx_error */
  kTopMioPlicMioIrqIdMbx1MbxReady = 10, /**< mbx1_mbx_ready */
  kTopMioPlicMioIrqIdMbx1MbxAbort = 11, /**< mbx1_mbx_abort */
  kTopMioPlicMioIrqIdMbx1MbxError = 12, /**< mbx1_mbx_error */
  kTopMioPlicMioIrqIdMbx2MbxReady = 13, /**< mbx2_mbx_ready */
  kTopMioPlicMioIrqIdMbx2MbxAbort = 14, /**< mbx2_mbx_abort */
  kTopMioPlicMioIrqIdMbx2MbxError = 15, /**< mbx2_mbx_error */
  kTopMioPlicMioIrqIdMbx3MbxReady = 16, /**< mbx3_mbx_ready */
  kTopMioPlicMioIrqIdMbx3MbxAbort = 17, /**< mbx3_mbx_abort */
  kTopMioPlicMioIrqIdMbx3MbxError = 18, /**< mbx3_mbx_error */
  kTopMioPlicMioIrqIdMbx4MbxReady = 19, /**< mbx4_mbx_ready */
  kTopMioPlicMioIrqIdMbx4MbxAbort = 20, /**< mbx4_mbx_abort */
  kTopMioPlicMioIrqIdMbx4MbxError = 21, /**< mbx4_mbx_error */
  kTopMioPlicMioIrqIdMbx5MbxReady = 22, /**< mbx5_mbx_ready */
  kTopMioPlicMioIrqIdMbx5MbxAbort = 23, /**< mbx5_mbx_abort */
  kTopMioPlicMioIrqIdMbx5MbxError = 24, /**< mbx5_mbx_error */
  kTopMioPlicMioIrqIdMbxPcie0MbxReady = 25, /**< mbx_pcie0_mbx_ready */
  kTopMioPlicMioIrqIdMbxPcie0MbxAbort = 26, /**< mbx_pcie0_mbx_abort */
  kTopMioPlicMioIrqIdMbxPcie0MbxError = 27, /**< mbx_pcie0_mbx_error */
  kTopMioPlicMioIrqIdMioHdrIpiFromMio0 = 28, /**< MIO_HDR_IPI_FROM_MIO_0 */
  kTopMioPlicMioIrqIdMioHdrIpiFromMio1 = 29, /**< MIO_HDR_IPI_FROM_MIO_1 */
  kTopMioPlicMioIrqIdMioHdrIpiFromMio2 = 30, /**< MIO_HDR_IPI_FROM_MIO_2 */
  kTopMioPlicMioIrqIdMioHdrIpiFromRot = 31, /**< MIO_HDR_IPI_FROM_ROT */
  kTopMioPlicMioIrqIdMioHdrIpiFromPwc = 32, /**< MIO_HDR_IPI_FROM_PWC */
  kTopMioPlicMioIrqIdMioHdrIpiFromDuc = 33, /**< MIO_HDR_IPI_FROM_DUC */
  kTopMioPlicMioIrqIdLioGrpAIbexIrq = 34, /**< LIO_GRP_A_IBEX_IRQ */
  kTopMioPlicMioIrqIdLioGrpBIbexIrq = 35, /**< LIO_GRP_B_IBEX_IRQ */
  kTopMioPlicMioIrqIdLioGrpCIbexIrq = 36, /**< LIO_GRP_C_IBEX_IRQ */
  kTopMioPlicMioIrqIdLast = 36, /**< \internal The Last Valid Interrupt ID. */
} top_mio_plic_mio_irq_id_t;

/**
 * PLIC Interrupt Source to Peripheral Map
 *
 * This array is a mapping from `top_mio_plic_mio_irq_id_t` to
 * `top_mio_plic_mio_peripheral_t`.
 */
extern const top_mio_plic_mio_peripheral_t
    top_mio_plic_mio_interrupt_for_peripheral[37];

/**
 * PLIC Interrupt Target.
 *
 * Enumeration used to determine which set of IE, CC, threshold registers to
 * access for a given interrupt target.
 */
typedef enum top_mio_plic_mio_target {
  kTopMioPlicMioTargetIbexMio = 0, /**< Ibex rv_core_ibex_mio */
  kTopMioPlicMioTargetLast = 0, /**< \internal Final PLIC target */
} top_mio_plic_mio_target_t;


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
