// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

#ifndef OPENTITAN_HW_TOP_DARJEELING_SW_DEVICE_SILICON_CREATOR_ROM_SECOND_ROM_H_
#define OPENTITAN_HW_TOP_DARJEELING_SW_DEVICE_SILICON_CREATOR_ROM_SECOND_ROM_H_

#include <stdnoreturn.h>

#include "sw/device/silicon_creator/lib/error.h"

#ifdef __cplusplus
extern "C" {
#endif  // __cplusplus

/**
 * Second ROM states run callbacks.
 */
static OT_WARN_UNUSED_RESULT rom_error_t
second_rom_state_rot_init(void *arg, uint32_t *next_state);

static OT_WARN_UNUSED_RESULT rom_error_t
second_rom_state_soc_init(void *arg, uint32_t *next_state);

static OT_WARN_UNUSED_RESULT rom_error_t
second_rom_state_platform_init(void *arg, uint32_t *next_state);

static OT_WARN_UNUSED_RESULT rom_error_t
second_rom_state_fetch_firmware(void *arg, uint32_t *next_state);

static OT_WARN_UNUSED_RESULT rom_error_t
second_rom_state_try_boot(void *arg, uint32_t *next_state);

/**
 * The first C function executed by the second ROM (defined in `second_rom.c`)
 */
noreturn void second_rom_main(void);

#ifdef __cplusplus
}  // extern "C"
#endif  // __cplusplus

#endif  // OPENTITAN_HW_TOP_DARJEELING_SW_DEVICE_SILICON_CREATOR_ROM_SECOND_ROM_H_
