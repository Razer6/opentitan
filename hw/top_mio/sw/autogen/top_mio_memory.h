// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// ------------------- W A R N I N G: A U T O - G E N E R A T E D   C O D E !! -------------------//
// PLEASE DO NOT HAND-EDIT THIS FILE. IT HAS BEEN AUTO-GENERATED WITH THE FOLLOWING COMMAND:
// util/topgen.py -t hw/top_mio/data/top_mio.hjson \
//                -o hw/top_mio/

#ifndef OPENTITAN_HW_TOP_MIO_SW_AUTOGEN_TOP_MIO_MEMORY_H_
#define OPENTITAN_HW_TOP_MIO_SW_AUTOGEN_TOP_MIO_MEMORY_H_

/**
 * @file
 * @brief Assembler-only Top-Specific Definitions.
 *
 * This file contains preprocessor definitions for use within assembly code.
 *
 * These are not shared with C/C++ code because these are only allowed to be
 * preprocessor definitions, no data or type declarations are allowed. The
 * assembler is also stricter about literals (not allowing suffixes for
 * signed/unsigned which are sensible to use for unsigned values in C/C++).
 */

// Include guard for assembler
#ifdef __ASSEMBLER__
/**
 * Memory base for mio_soc_proxy_ctn in top mio.
 */
#define TOP_MIO_CTN_BASE_ADDR 0x40000000

/**
 * Memory size for mio_soc_proxy_ctn in top mio.
 */
#define TOP_MIO_CTN_SIZE_BYTES 0x80000000

/**
 * Memory base for sram_ctrl_ret_aon_ram_ret_aon in top mio.
 */
#define TOP_MIO_RAM_RET_AON_BASE_ADDR 0x30600000

/**
 * Memory size for sram_ctrl_ret_aon_ram_ret_aon in top mio.
 */
#define TOP_MIO_RAM_RET_AON_SIZE_BYTES 0x1000

/**
 * Memory base for sram_ctrl_main_ram_main in top mio.
 */
#define TOP_MIO_RAM_MAIN_BASE_ADDR 0x10000000

/**
 * Memory size for sram_ctrl_main_ram_main in top mio.
 */
#define TOP_MIO_RAM_MAIN_SIZE_BYTES 0x10000

/**
 * Memory base for sram_ctrl_mbox_ram_mbox in top mio.
 */
#define TOP_MIO_RAM_MBOX_BASE_ADDR 0x11000000

/**
 * Memory size for sram_ctrl_mbox_ram_mbox in top mio.
 */
#define TOP_MIO_RAM_MBOX_SIZE_BYTES 0x1000



/**
 * Peripheral base address for rv_timer in top mio.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_MIO_RV_TIMER_BASE_ADDR 0x30000000

/**
 * Peripheral size for rv_timer in top mio.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_MIO_RV_TIMER_BASE_ADDR and
 * `TOP_MIO_RV_TIMER_BASE_ADDR + TOP_MIO_RV_TIMER_SIZE_BYTES`.
 */
#define TOP_MIO_RV_TIMER_SIZE_BYTES 0x200
/**
 * Peripheral base address for aon_timer_aon in top mio.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_MIO_AON_TIMER_AON_BASE_ADDR 0x30470000

/**
 * Peripheral size for aon_timer_aon in top mio.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_MIO_AON_TIMER_AON_BASE_ADDR and
 * `TOP_MIO_AON_TIMER_AON_BASE_ADDR + TOP_MIO_AON_TIMER_AON_SIZE_BYTES`.
 */
#define TOP_MIO_AON_TIMER_AON_SIZE_BYTES 0x40
/**
 * Peripheral base address for regs device on sram_ctrl_ret_aon in top mio.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_MIO_SRAM_CTRL_RET_AON_REGS_BASE_ADDR 0x30500000

/**
 * Peripheral size for regs device on sram_ctrl_ret_aon in top mio.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_MIO_SRAM_CTRL_RET_AON_REGS_BASE_ADDR and
 * `TOP_MIO_SRAM_CTRL_RET_AON_REGS_BASE_ADDR + TOP_MIO_SRAM_CTRL_RET_AON_REGS_SIZE_BYTES`.
 */
#define TOP_MIO_SRAM_CTRL_RET_AON_REGS_SIZE_BYTES 0x40
/**
 * Peripheral base address for regs device on rv_dm in top mio.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_MIO_RV_DM_REGS_BASE_ADDR 0x21200000

/**
 * Peripheral size for regs device on rv_dm in top mio.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_MIO_RV_DM_REGS_BASE_ADDR and
 * `TOP_MIO_RV_DM_REGS_BASE_ADDR + TOP_MIO_RV_DM_REGS_SIZE_BYTES`.
 */
#define TOP_MIO_RV_DM_REGS_SIZE_BYTES 0x10
/**
 * Peripheral base address for mem device on rv_dm in top mio.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_MIO_RV_DM_MEM_BASE_ADDR 0x40000

/**
 * Peripheral size for mem device on rv_dm in top mio.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_MIO_RV_DM_MEM_BASE_ADDR and
 * `TOP_MIO_RV_DM_MEM_BASE_ADDR + TOP_MIO_RV_DM_MEM_SIZE_BYTES`.
 */
#define TOP_MIO_RV_DM_MEM_SIZE_BYTES 0x1000
/**
 * Peripheral base address for rv_plic_mio in top mio.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_MIO_RV_PLIC_MIO_BASE_ADDR 0x28000000

/**
 * Peripheral size for rv_plic_mio in top mio.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_MIO_RV_PLIC_MIO_BASE_ADDR and
 * `TOP_MIO_RV_PLIC_MIO_BASE_ADDR + TOP_MIO_RV_PLIC_MIO_SIZE_BYTES`.
 */
#define TOP_MIO_RV_PLIC_MIO_SIZE_BYTES 0x8000000
/**
 * Peripheral base address for regs device on sram_ctrl_main in top mio.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_MIO_SRAM_CTRL_MAIN_REGS_BASE_ADDR 0x211C0000

/**
 * Peripheral size for regs device on sram_ctrl_main in top mio.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_MIO_SRAM_CTRL_MAIN_REGS_BASE_ADDR and
 * `TOP_MIO_SRAM_CTRL_MAIN_REGS_BASE_ADDR + TOP_MIO_SRAM_CTRL_MAIN_REGS_SIZE_BYTES`.
 */
#define TOP_MIO_SRAM_CTRL_MAIN_REGS_SIZE_BYTES 0x40
/**
 * Peripheral base address for regs device on sram_ctrl_mbox in top mio.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_MIO_SRAM_CTRL_MBOX_REGS_BASE_ADDR 0x211D0000

/**
 * Peripheral size for regs device on sram_ctrl_mbox in top mio.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_MIO_SRAM_CTRL_MBOX_REGS_BASE_ADDR and
 * `TOP_MIO_SRAM_CTRL_MBOX_REGS_BASE_ADDR + TOP_MIO_SRAM_CTRL_MBOX_REGS_SIZE_BYTES`.
 */
#define TOP_MIO_SRAM_CTRL_MBOX_REGS_SIZE_BYTES 0x40
/**
 * Peripheral base address for dma in top mio.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_MIO_DMA_BASE_ADDR 0x22010000

/**
 * Peripheral size for dma in top mio.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_MIO_DMA_BASE_ADDR and
 * `TOP_MIO_DMA_BASE_ADDR + TOP_MIO_DMA_SIZE_BYTES`.
 */
#define TOP_MIO_DMA_SIZE_BYTES 0x200
/**
 * Peripheral base address for core device on mbx0 in top mio.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_MIO_MBX0_CORE_BASE_ADDR 0x22000000

/**
 * Peripheral size for core device on mbx0 in top mio.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_MIO_MBX0_CORE_BASE_ADDR and
 * `TOP_MIO_MBX0_CORE_BASE_ADDR + TOP_MIO_MBX0_CORE_SIZE_BYTES`.
 */
#define TOP_MIO_MBX0_CORE_SIZE_BYTES 0x80
/**
 * Peripheral base address for core device on mbx1 in top mio.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_MIO_MBX1_CORE_BASE_ADDR 0x22000100

/**
 * Peripheral size for core device on mbx1 in top mio.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_MIO_MBX1_CORE_BASE_ADDR and
 * `TOP_MIO_MBX1_CORE_BASE_ADDR + TOP_MIO_MBX1_CORE_SIZE_BYTES`.
 */
#define TOP_MIO_MBX1_CORE_SIZE_BYTES 0x80
/**
 * Peripheral base address for core device on mbx2 in top mio.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_MIO_MBX2_CORE_BASE_ADDR 0x22000200

/**
 * Peripheral size for core device on mbx2 in top mio.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_MIO_MBX2_CORE_BASE_ADDR and
 * `TOP_MIO_MBX2_CORE_BASE_ADDR + TOP_MIO_MBX2_CORE_SIZE_BYTES`.
 */
#define TOP_MIO_MBX2_CORE_SIZE_BYTES 0x80
/**
 * Peripheral base address for core device on mbx3 in top mio.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_MIO_MBX3_CORE_BASE_ADDR 0x22000300

/**
 * Peripheral size for core device on mbx3 in top mio.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_MIO_MBX3_CORE_BASE_ADDR and
 * `TOP_MIO_MBX3_CORE_BASE_ADDR + TOP_MIO_MBX3_CORE_SIZE_BYTES`.
 */
#define TOP_MIO_MBX3_CORE_SIZE_BYTES 0x80
/**
 * Peripheral base address for core device on mbx4 in top mio.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_MIO_MBX4_CORE_BASE_ADDR 0x22000400

/**
 * Peripheral size for core device on mbx4 in top mio.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_MIO_MBX4_CORE_BASE_ADDR and
 * `TOP_MIO_MBX4_CORE_BASE_ADDR + TOP_MIO_MBX4_CORE_SIZE_BYTES`.
 */
#define TOP_MIO_MBX4_CORE_SIZE_BYTES 0x80
/**
 * Peripheral base address for core device on mbx5 in top mio.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_MIO_MBX5_CORE_BASE_ADDR 0x22000500

/**
 * Peripheral size for core device on mbx5 in top mio.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_MIO_MBX5_CORE_BASE_ADDR and
 * `TOP_MIO_MBX5_CORE_BASE_ADDR + TOP_MIO_MBX5_CORE_SIZE_BYTES`.
 */
#define TOP_MIO_MBX5_CORE_SIZE_BYTES 0x80
/**
 * Peripheral base address for core device on mbx_pcie0 in top mio.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_MIO_MBX_PCIE0_CORE_BASE_ADDR 0x22040000

/**
 * Peripheral size for core device on mbx_pcie0 in top mio.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_MIO_MBX_PCIE0_CORE_BASE_ADDR and
 * `TOP_MIO_MBX_PCIE0_CORE_BASE_ADDR + TOP_MIO_MBX_PCIE0_CORE_SIZE_BYTES`.
 */
#define TOP_MIO_MBX_PCIE0_CORE_SIZE_BYTES 0x80
/**
 * Peripheral base address for cfg device on rv_core_ibex_mio in top mio.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_MIO_RV_CORE_IBEX_MIO_CFG_BASE_ADDR 0x211F0000

/**
 * Peripheral size for cfg device on rv_core_ibex_mio in top mio.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_MIO_RV_CORE_IBEX_MIO_CFG_BASE_ADDR and
 * `TOP_MIO_RV_CORE_IBEX_MIO_CFG_BASE_ADDR + TOP_MIO_RV_CORE_IBEX_MIO_CFG_SIZE_BYTES`.
 */
#define TOP_MIO_RV_CORE_IBEX_MIO_CFG_SIZE_BYTES 0x800

/**
 * MMIO Region
 *
 * MMIO region excludes any memory that is separate from the module
 * configuration space, i.e. ROM, main SRAM, and mbx SRAM are excluded but
 * retention SRAM or spi_device are included.
 */
#define TOP_MIO_MMIO_BASE_ADDR 0x211C0000
#define TOP_MIO_MMIO_SIZE_BYTES 0xF441000

#endif  // __ASSEMBLER__

#endif  // OPENTITAN_HW_TOP_MIO_SW_AUTOGEN_TOP_MIO_MEMORY_H_
