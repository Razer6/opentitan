// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// ------------------- W A R N I N G: A U T O - G E N E R A T E D   C O D E !! -------------------//
// PLEASE DO NOT HAND-EDIT THIS FILE. IT HAS BEEN AUTO-GENERATED WITH THE FOLLOWING COMMAND:
// util/topgen.py -t hw/top_pwc/data/top_pwc.hjson
// -o hw/top_pwc

#ifndef OPENTITAN_HW_TOP_PWC_SW_AUTOGEN_TOP_PWC_SOC_MBX_H_
#define OPENTITAN_HW_TOP_PWC_SW_AUTOGEN_TOP_PWC_SOC_MBX_H_

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
 */

#ifdef __cplusplus
extern "C" {
#endif

/**
 * Peripheral base address for soc device on mbx0 in top pwc.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_PWC_SOC_MBX_MBX0_SOC_BASE_ADDR 0x1475000u

/**
 * Peripheral size for soc device on mbx0 in top pwc.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_PWC_SOC_MBX_MBX0_SOC_BASE_ADDR and
 * `TOP_PWC_SOC_MBX_MBX0_SOC_BASE_ADDR + TOP_PWC_SOC_MBX_MBX0_SOC_SIZE_BYTES`.
 */
#define TOP_PWC_SOC_MBX_MBX0_SOC_SIZE_BYTES 0x20u

/**
 * Peripheral base address for soc device on mbx1 in top pwc.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_PWC_SOC_MBX_MBX1_SOC_BASE_ADDR 0x1475100u

/**
 * Peripheral size for soc device on mbx1 in top pwc.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_PWC_SOC_MBX_MBX1_SOC_BASE_ADDR and
 * `TOP_PWC_SOC_MBX_MBX1_SOC_BASE_ADDR + TOP_PWC_SOC_MBX_MBX1_SOC_SIZE_BYTES`.
 */
#define TOP_PWC_SOC_MBX_MBX1_SOC_SIZE_BYTES 0x20u

/**
 * Peripheral base address for soc device on mbx2 in top pwc.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_PWC_SOC_MBX_MBX2_SOC_BASE_ADDR 0x1475200u

/**
 * Peripheral size for soc device on mbx2 in top pwc.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_PWC_SOC_MBX_MBX2_SOC_BASE_ADDR and
 * `TOP_PWC_SOC_MBX_MBX2_SOC_BASE_ADDR + TOP_PWC_SOC_MBX_MBX2_SOC_SIZE_BYTES`.
 */
#define TOP_PWC_SOC_MBX_MBX2_SOC_SIZE_BYTES 0x20u

/**
 * Peripheral base address for soc device on mbx3 in top pwc.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_PWC_SOC_MBX_MBX3_SOC_BASE_ADDR 0x1475300u

/**
 * Peripheral size for soc device on mbx3 in top pwc.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_PWC_SOC_MBX_MBX3_SOC_BASE_ADDR and
 * `TOP_PWC_SOC_MBX_MBX3_SOC_BASE_ADDR + TOP_PWC_SOC_MBX_MBX3_SOC_SIZE_BYTES`.
 */
#define TOP_PWC_SOC_MBX_MBX3_SOC_SIZE_BYTES 0x20u

/**
 * Peripheral base address for soc device on mbx4 in top pwc.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_PWC_SOC_MBX_MBX4_SOC_BASE_ADDR 0x1475400u

/**
 * Peripheral size for soc device on mbx4 in top pwc.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_PWC_SOC_MBX_MBX4_SOC_BASE_ADDR and
 * `TOP_PWC_SOC_MBX_MBX4_SOC_BASE_ADDR + TOP_PWC_SOC_MBX_MBX4_SOC_SIZE_BYTES`.
 */
#define TOP_PWC_SOC_MBX_MBX4_SOC_SIZE_BYTES 0x20u

/**
 * Peripheral base address for soc device on mbx5 in top pwc.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_PWC_SOC_MBX_MBX5_SOC_BASE_ADDR 0x1475500u

/**
 * Peripheral size for soc device on mbx5 in top pwc.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_PWC_SOC_MBX_MBX5_SOC_BASE_ADDR and
 * `TOP_PWC_SOC_MBX_MBX5_SOC_BASE_ADDR + TOP_PWC_SOC_MBX_MBX5_SOC_SIZE_BYTES`.
 */
#define TOP_PWC_SOC_MBX_MBX5_SOC_SIZE_BYTES 0x20u

/**
 * Peripheral base address for soc device on mbx_pcie0 in top pwc.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_PWC_SOC_MBX_MBX_PCIE0_SOC_BASE_ADDR 0x1470100u

/**
 * Peripheral size for soc device on mbx_pcie0 in top pwc.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_PWC_SOC_MBX_MBX_PCIE0_SOC_BASE_ADDR and
 * `TOP_PWC_SOC_MBX_MBX_PCIE0_SOC_BASE_ADDR + TOP_PWC_SOC_MBX_MBX_PCIE0_SOC_SIZE_BYTES`.
 */
#define TOP_PWC_SOC_MBX_MBX_PCIE0_SOC_SIZE_BYTES 0x20u

/**
 * Peripheral base address for racl_ctrl in top pwc.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_PWC_SOC_MBX_RACL_CTRL_BASE_ADDR 0x1473000u

/**
 * Peripheral size for racl_ctrl in top pwc.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_PWC_SOC_MBX_RACL_CTRL_BASE_ADDR and
 * `TOP_PWC_SOC_MBX_RACL_CTRL_BASE_ADDR + TOP_PWC_SOC_MBX_RACL_CTRL_SIZE_BYTES`.
 */
#define TOP_PWC_SOC_MBX_RACL_CTRL_SIZE_BYTES 0x40u



// Header Extern Guard
#ifdef __cplusplus
}  // extern "C"
#endif

#endif  // OPENTITAN_HW_TOP_PWC_SW_AUTOGEN_TOP_PWC_SOC_MBX_H_
