// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

#include "hw/top_darjeeling/sw/device/silicon_creator/rom/second_rom.h"

#include <assert.h>
#include <stdbool.h>
#include <stdint.h>

#include "sw/device/lib/base/hardened.h"
#include "sw/device/lib/base/macros.h"
#include "sw/device/lib/base/memory.h"
#include "sw/device/lib/base/stdasm.h"
#include "sw/device/silicon_creator/lib/cfi.h"
#include "sw/device/silicon_creator/lib/dbg_print.h"
#include "sw/device/silicon_creator/lib/error.h"
#include "sw/device/silicon_creator/lib/shutdown.h"
#include "sw/device/silicon_creator/rom/rom_state.h"

#define DBG_PRINTF(format, ...) dbg_printf("[ROM1] " format, ##__VA_ARGS__)

/**
 * Table of forward branch Control Flow Integrity (CFI) counters.
 *
 * Columns: Name, Initital Value.
 *
 * Each counter is indexed by Name. The Initial Value is used to initialize the
 * counters with unique values with a good hamming distance. The values are
 * restricted to 11-bit to be able use immediate load instructions.

 * Encoding generated with
 * $ ./util/design/sparse-fsm-encode.py -d 6 -m 6 -n 11 \
 *     -s 1630646358 --language=c
 *
 * Minimum Hamming distance: 6
 * Maximum Hamming distance: 8
 * Minimum Hamming weight: 5
 * Maximum Hamming weight: 8
 */
// clang-format off
#define SECOND_ROM_CFI_FUNC_COUNTERS_TABLE(X)  \
  X(kCfiSecondRomFsm,         0x14b)                \
  X(kCfiSecondRomRoTInit,         0x7dc)                \
  X(kCfiSecondRomSoCInit,       0x5a7)                \
  X(kCfiSecondRomPlatformInit,      0x235)                \
  X(kCfiSecondRomFetchFirmware, 0x43a)                \
  X(kCfiSecondRomTryBoot,         0x2e2)
// clang-format on

// Define counters and constant values required by the CFI counter macros.
CFI_DEFINE_COUNTERS(second_rom_counters, SECOND_ROM_CFI_FUNC_COUNTERS_TABLE);

/**
 * Performs once-per-boot initialization of ROM modules and peripherals.
 */
OT_WARN_UNUSED_RESULT
static rom_error_t second_rom_rot_init(void) {
  CFI_FUNC_COUNTER_INCREMENT(second_rom_counters, kCfiSecondRomRoTInit, 1);

  DBG_PRINTF("RoT init\r\n");

  CFI_FUNC_COUNTER_INCREMENT(second_rom_counters, kCfiSecondRomRoTInit, 2);
  return kErrorOk;
}

OT_WARN_UNUSED_RESULT
static rom_error_t second_rom_soc_init(void) {
  CFI_FUNC_COUNTER_INCREMENT(second_rom_counters, kCfiSecondRomSoCInit, 1);

  DBG_PRINTF("SoC init\r\n");

  CFI_FUNC_COUNTER_INCREMENT(second_rom_counters, kCfiSecondRomSoCInit, 2);
  return kErrorOk;
}

OT_WARN_UNUSED_RESULT
static rom_error_t second_rom_platform_init(void) {
  CFI_FUNC_COUNTER_INCREMENT(second_rom_counters, kCfiSecondRomPlatformInit, 1);

  DBG_PRINTF("Platform init\r\n");

  CFI_FUNC_COUNTER_INCREMENT(second_rom_counters, kCfiSecondRomPlatformInit, 2);
  return kErrorOk;
}

OT_WARN_UNUSED_RESULT
static rom_error_t second_rom_fetch_firmware(void) {
  CFI_FUNC_COUNTER_INCREMENT(second_rom_counters, kCfiSecondRomFetchFirmware,
                             1);

  DBG_PRINTF("Fetch firmware\r\n");

  CFI_FUNC_COUNTER_INCREMENT(second_rom_counters, kCfiSecondRomFetchFirmware,
                             2);
  return kErrorOk;
}

/**
 * Attempts to load and boot next stage (Bootstrap/ROM_EXT).
 * @return Error code on error, never returns on success.
 */
OT_WARN_UNUSED_RESULT
static rom_error_t second_rom_try_boot(void) {
  CFI_FUNC_COUNTER_INCREMENT(second_rom_counters, kCfiSecondRomTryBoot, 1);

  dbg_printf("Boot next stage\n");

  return kErrorRomBootFailed;
}

enum {
  kSecondRomStateCnt = 5,
};

/**
 * Table of second ROM states.
 *
 * Encoding generated with:
 * $ ./util/design/sparse-fsm-encode.py -d 6 -m 5 -n 16 \
 *     -s 2121961327 --language=c
 */
// clang-format off
#define SECOND_ROM_STATES(X)                                            \
  X(kSecondRomStateRoTInit,        0x7425, second_rom_state_rot_init, NULL) \
  X(kSecondRomStateSoCInit,        0x48e8, second_rom_state_soc_init, NULL) \
  X(kSecondRomStatePlatformInit,   0x833f, second_rom_state_platform_init, NULL) \
  X(kSecondRomStateFetchFirmware,  0x3cbb, second_rom_state_fetch_firmware, NULL) \
  X(kSecondRomStateTryBoot,        0xce4f, second_rom_state_try_boot, NULL) \
  // clang-format on

ROM_STATE_INIT_TABLE(second_rom_states, kSecondRomStateCnt, SECOND_ROM_STATES);

static OT_WARN_UNUSED_RESULT rom_error_t
second_rom_state_rot_init(void *arg, uint32_t *next_state) {
  CFI_FUNC_COUNTER_PREPCALL(second_rom_counters, kCfiSecondRomFsm, 1,
                            kCfiSecondRomRoTInit);
  HARDENED_RETURN_IF_ERROR(second_rom_rot_init());
  CFI_FUNC_COUNTER_INCREMENT(second_rom_counters, kCfiSecondRomFsm, 3);

  *next_state = kSecondRomStateSoCInit;

  return kErrorOk;
}

static OT_WARN_UNUSED_RESULT rom_error_t
second_rom_state_soc_init(void *arg, uint32_t *next_state) {
  CFI_FUNC_COUNTER_PREPCALL(second_rom_counters, kCfiSecondRomFsm, 4,
                            kCfiSecondRomSoCInit);
  HARDENED_RETURN_IF_ERROR(second_rom_soc_init());
  CFI_FUNC_COUNTER_INCREMENT(second_rom_counters, kCfiSecondRomFsm, 6);

  *next_state = kSecondRomStatePlatformInit;

  return kErrorOk;
}

static OT_WARN_UNUSED_RESULT rom_error_t
second_rom_state_platform_init(void *arg, uint32_t *next_state) {
  CFI_FUNC_COUNTER_PREPCALL(second_rom_counters, kCfiSecondRomFsm, 7,
                            kCfiSecondRomPlatformInit);
  HARDENED_RETURN_IF_ERROR(second_rom_platform_init());
  CFI_FUNC_COUNTER_INCREMENT(second_rom_counters, kCfiSecondRomFsm, 9);

  *next_state = kSecondRomStateFetchFirmware;

  return kErrorOk;
}

static OT_WARN_UNUSED_RESULT rom_error_t
second_rom_state_fetch_firmware(void *arg, uint32_t *next_state) {
  CFI_FUNC_COUNTER_PREPCALL(second_rom_counters, kCfiSecondRomFsm, 10,
                            kCfiSecondRomFetchFirmware);
  HARDENED_RETURN_IF_ERROR(second_rom_fetch_firmware());
  CFI_FUNC_COUNTER_INCREMENT(second_rom_counters, kCfiSecondRomFsm, 12);

  *next_state = kSecondRomStateTryBoot;

  return kErrorOk;
}

static OT_WARN_UNUSED_RESULT rom_error_t
second_rom_state_try_boot(void *arg, uint32_t *next_state) {
  /* `second_rom_try_boot` will not return unless there is an error. */
  CFI_FUNC_COUNTER_PREPCALL(second_rom_counters, kCfiSecondRomFsm, 13,
                            kCfiSecondRomTryBoot);
  return second_rom_try_boot();
}

void second_rom_main(void) {
  CFI_FUNC_COUNTER_INIT(second_rom_counters, kCfiSecondRomFsm);
  shutdown_finalize(rom_state_fsm_walk(second_rom_states, kSecondRomStateCnt,
                                       kSecondRomStateRoTInit,
                                       second_rom_states_cfi));
}
