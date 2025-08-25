// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// ------------------- W A R N I N G: A U T O - G E N E R A T E D   C O D E !! -------------------//
// PLEASE DO NOT HAND-EDIT THIS FILE. IT HAS BEEN AUTO-GENERATED WITH THE FOLLOWING COMMAND:
// util/topgen.py -t hw/top_pwc/data/top_pwc.hjson \
//                -o hw/top_pwc/

#ifndef OPENTITAN_HW_TOP_PWC_SW_AUTOGEN_TOP_PWC_SOC_MBX_MEMORY_H_
#define OPENTITAN_HW_TOP_PWC_SW_AUTOGEN_TOP_PWC_SOC_MBX_MEMORY_H_

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
 * Peripheral base address for soc device on mbx0 in top pwc.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_PWC_SOC_MBX_MBX0_SOC_BASE_ADDR 0x1475000

/**
 * Peripheral size for soc device on mbx0 in top pwc.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_PWC_SOC_MBX_MBX0_SOC_BASE_ADDR and
 * `TOP_PWC_SOC_MBX_MBX0_SOC_BASE_ADDR + TOP_PWC_SOC_MBX_MBX0_SOC_SIZE_BYTES`.
 */
#define TOP_PWC_SOC_MBX_MBX0_SOC_SIZE_BYTES 0x20
/**
 * Peripheral base address for soc device on mbx1 in top pwc.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_PWC_SOC_MBX_MBX1_SOC_BASE_ADDR 0x1475100

/**
 * Peripheral size for soc device on mbx1 in top pwc.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_PWC_SOC_MBX_MBX1_SOC_BASE_ADDR and
 * `TOP_PWC_SOC_MBX_MBX1_SOC_BASE_ADDR + TOP_PWC_SOC_MBX_MBX1_SOC_SIZE_BYTES`.
 */
#define TOP_PWC_SOC_MBX_MBX1_SOC_SIZE_BYTES 0x20
/**
 * Peripheral base address for soc device on mbx2 in top pwc.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_PWC_SOC_MBX_MBX2_SOC_BASE_ADDR 0x1475200

/**
 * Peripheral size for soc device on mbx2 in top pwc.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_PWC_SOC_MBX_MBX2_SOC_BASE_ADDR and
 * `TOP_PWC_SOC_MBX_MBX2_SOC_BASE_ADDR + TOP_PWC_SOC_MBX_MBX2_SOC_SIZE_BYTES`.
 */
#define TOP_PWC_SOC_MBX_MBX2_SOC_SIZE_BYTES 0x20
/**
 * Peripheral base address for soc device on mbx3 in top pwc.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_PWC_SOC_MBX_MBX3_SOC_BASE_ADDR 0x1475300

/**
 * Peripheral size for soc device on mbx3 in top pwc.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_PWC_SOC_MBX_MBX3_SOC_BASE_ADDR and
 * `TOP_PWC_SOC_MBX_MBX3_SOC_BASE_ADDR + TOP_PWC_SOC_MBX_MBX3_SOC_SIZE_BYTES`.
 */
#define TOP_PWC_SOC_MBX_MBX3_SOC_SIZE_BYTES 0x20
/**
 * Peripheral base address for soc device on mbx4 in top pwc.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_PWC_SOC_MBX_MBX4_SOC_BASE_ADDR 0x1475400

/**
 * Peripheral size for soc device on mbx4 in top pwc.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_PWC_SOC_MBX_MBX4_SOC_BASE_ADDR and
 * `TOP_PWC_SOC_MBX_MBX4_SOC_BASE_ADDR + TOP_PWC_SOC_MBX_MBX4_SOC_SIZE_BYTES`.
 */
#define TOP_PWC_SOC_MBX_MBX4_SOC_SIZE_BYTES 0x20
/**
 * Peripheral base address for soc device on mbx5 in top pwc.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_PWC_SOC_MBX_MBX5_SOC_BASE_ADDR 0x1475500

/**
 * Peripheral size for soc device on mbx5 in top pwc.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_PWC_SOC_MBX_MBX5_SOC_BASE_ADDR and
 * `TOP_PWC_SOC_MBX_MBX5_SOC_BASE_ADDR + TOP_PWC_SOC_MBX_MBX5_SOC_SIZE_BYTES`.
 */
#define TOP_PWC_SOC_MBX_MBX5_SOC_SIZE_BYTES 0x20
/**
 * Peripheral base address for soc device on mbx_pcie0 in top pwc.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_PWC_SOC_MBX_MBX_PCIE0_SOC_BASE_ADDR 0x1470100

/**
 * Peripheral size for soc device on mbx_pcie0 in top pwc.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_PWC_SOC_MBX_MBX_PCIE0_SOC_BASE_ADDR and
 * `TOP_PWC_SOC_MBX_MBX_PCIE0_SOC_BASE_ADDR + TOP_PWC_SOC_MBX_MBX_PCIE0_SOC_SIZE_BYTES`.
 */
#define TOP_PWC_SOC_MBX_MBX_PCIE0_SOC_SIZE_BYTES 0x20
/**
 * Peripheral base address for racl_ctrl_pwc in top pwc.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_PWC_SOC_MBX_RACL_CTRL_PWC_BASE_ADDR 0x1471F00

/**
 * Peripheral size for racl_ctrl_pwc in top pwc.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_PWC_SOC_MBX_RACL_CTRL_PWC_BASE_ADDR and
 * `TOP_PWC_SOC_MBX_RACL_CTRL_PWC_BASE_ADDR + TOP_PWC_SOC_MBX_RACL_CTRL_PWC_SIZE_BYTES`.
 */
#define TOP_PWC_SOC_MBX_RACL_CTRL_PWC_SIZE_BYTES 0x100
/**
 * Peripheral base address for ac_range_check_pwc in top pwc.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_PWC_SOC_MBX_AC_RANGE_CHECK_PWC_BASE_ADDR 0x1474000

/**
 * Peripheral size for ac_range_check_pwc in top pwc.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_PWC_SOC_MBX_AC_RANGE_CHECK_PWC_BASE_ADDR and
 * `TOP_PWC_SOC_MBX_AC_RANGE_CHECK_PWC_BASE_ADDR + TOP_PWC_SOC_MBX_AC_RANGE_CHECK_PWC_SIZE_BYTES`.
 */
#define TOP_PWC_SOC_MBX_AC_RANGE_CHECK_PWC_SIZE_BYTES 0x400


#endif  // __ASSEMBLER__

#endif  // OPENTITAN_HW_TOP_PWC_SW_AUTOGEN_TOP_PWC_SOC_MBX_MEMORY_H_
