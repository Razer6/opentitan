// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// ------------------- W A R N I N G: A U T O - G E N E R A T E D   C O D E !! -------------------//
// PLEASE DO NOT HAND-EDIT THIS FILE. IT HAS BEEN AUTO-GENERATED WITH THE FOLLOWING COMMAND:
// util/topgen.py -t hw/top_pwc/data/top_pwc.hjson \
//                -o hw/top_pwc/

#ifndef OPENTITAN_HW_TOP_PWC_SW_AUTOGEN_TOP_PWC_SOC_DBG_MEMORY_H_
#define OPENTITAN_HW_TOP_PWC_SW_AUTOGEN_TOP_PWC_SOC_DBG_MEMORY_H_

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
 * Peripheral base address for dbg device on rv_dm in top pwc.
 *
 * This should be used with #mmio_region_from_addr to access the memory-mapped
 * registers associated with the peripheral (usually via a DIF).
 */
#define TOP_PWC_SOC_DBG_RV_DM_DBG_BASE_ADDR 0x0

/**
 * Peripheral size for dbg device on rv_dm in top pwc.
 *
 * This is the size (in bytes) of the peripheral's reserved memory area. All
 * memory-mapped registers associated with this peripheral should have an
 * address between #TOP_PWC_SOC_DBG_RV_DM_DBG_BASE_ADDR and
 * `TOP_PWC_SOC_DBG_RV_DM_DBG_BASE_ADDR + TOP_PWC_SOC_DBG_RV_DM_DBG_SIZE_BYTES`.
 */
#define TOP_PWC_SOC_DBG_RV_DM_DBG_SIZE_BYTES 0x200


#endif  // __ASSEMBLER__

#endif  // OPENTITAN_HW_TOP_PWC_SW_AUTOGEN_TOP_PWC_SOC_DBG_MEMORY_H_
