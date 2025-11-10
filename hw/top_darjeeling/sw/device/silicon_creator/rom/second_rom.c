// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

#include "hw/top_darjeeling/sw/device/silicon_creator/rom/second_rom.h"

#include <assert.h>
#include <stdbool.h>
#include <stdint.h>

#include "hw/top_darjeeling/sw/device/silicon_creator/rom/second_rom_epmp.h"
#include "sw/device/lib/base/csr.h"
#include "sw/device/lib/base/hardened.h"
#include "sw/device/lib/base/macros.h"
#include "sw/device/lib/base/memory.h"
#include "sw/device/lib/base/stdasm.h"
#include "sw/device/silicon_creator/lib/base/sec_mmio.h"
#include "sw/device/silicon_creator/lib/base/static_critical_version.h"
#include "sw/device/silicon_creator/lib/cfi.h"
#include "sw/device/silicon_creator/lib/dbg_print.h"
#include "sw/device/silicon_creator/lib/drivers/alert.h"
#include "sw/device/silicon_creator/lib/drivers/lifecycle.h"
#include "sw/device/silicon_creator/lib/drivers/otp.h"
#include "sw/device/silicon_creator/lib/drivers/retention_sram.h"
#include "sw/device/silicon_creator/lib/drivers/rnd.h"
#include "sw/device/silicon_creator/lib/drivers/rstmgr.h"
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
 * $ ./util/design/sparse-fsm-encode.py -d 6 -m 6 -n 11 -s 1395657612
 *
 * Minimum Hamming distance: 6
 * Maximum Hamming distance: 8
 * Minimum Hamming weight: 3
 * Maximum Hamming weight: 9
 */
// clang-format off
#define SECOND_ROM_CFI_FUNC_COUNTERS_TABLE(X)  \
  X(kCfiSecondRomFsm,           0x380) \
  X(kCfiSecondRomRoTInit,       0x6ef) \
  X(kCfiSecondRomSoCInit,       0x272) \
  X(kCfiSecondRomPlatformInit,  0x1d7) \
  X(kCfiSecondRomFetchFirmware, 0x75c) \
  X(kCfiSecondRomPreBootCheck,  0x029) \
  X(kCfiSecondRomTryBoot,       0x406)
// clang-format on

// Define counters and constant values required by the CFI counter macros.
CFI_DEFINE_COUNTERS(second_rom_counters, SECOND_ROM_CFI_FUNC_COUNTERS_TABLE);

// Life cycle state of the chip.
lifecycle_state_t lc_state = (lifecycle_state_t)0;

OT_WARN_UNUSED_RESULT
static rom_error_t second_rom_rot_init(void) {
  CFI_FUNC_COUNTER_INCREMENT(second_rom_counters, kCfiSecondRomRoTInit, 1);

  DBG_PRINTF("RoT init\r\n");

  // Reset MMIO counters
  sec_mmio_next_stage_init();

  // Set static_critical region format version.
  static_critical_version = kStaticCriticalVersion2;

  lc_state = lifecycle_state_get();

  // Update in-memory copy of the ePMP register configuration.
  second_rom_epmp_state_init();
  HARDENED_RETURN_IF_ERROR(epmp_state_check());

  // Check that AST is in the expected state.
  // TODO Re-enable once https://github.com/lowRISC/opentitan/issues/28701 is closed.
  // HARDENED_RETURN_IF_ERROR(ast_check(lc_state));

  sec_mmio_check_values(rnd_uint32());
  sec_mmio_check_counters(/*expected_check_count=*/1);

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
 * Performs consistency checks before booting the first mutable FW image.
 *
 * All of the checks in this function are expected to pass and any failures
 * result in shutdown.
 */
static void second_rom_pre_boot_check(void) {
  CFI_FUNC_COUNTER_INCREMENT(second_rom_counters, kCfiSecondRomPreBootCheck, 1);

  // Check the alert_handler configuration.
  SHUTDOWN_IF_ERROR(alert_config_check(lc_state));
  SHUTDOWN_IF_ERROR(rnd_health_config_check(lc_state));
  CFI_FUNC_COUNTER_INCREMENT(second_rom_counters, kCfiSecondRomPreBootCheck, 2);

  // Check cached life cycle state against the value reported by hardware.
  lifecycle_state_t lc_state_check = lifecycle_state_get();
  if (launder32(lc_state_check) != lc_state) {
    HARDENED_TRAP();
  }
  HARDENED_CHECK_EQ(lc_state_check, lc_state);
  CFI_FUNC_COUNTER_INCREMENT(second_rom_counters, kCfiSecondRomPreBootCheck, 3);

  // Check the ePMP state
  SHUTDOWN_IF_ERROR(epmp_state_check());
  CFI_FUNC_COUNTER_INCREMENT(second_rom_counters, kCfiSecondRomPreBootCheck, 4);

  // Check the cpuctrl CSR.
  uint32_t cpuctrl_csr;
  uint32_t cpuctrl_otp =
      otp_read32(OTP_CTRL_PARAM_CREATOR_SW_CFG_CPUCTRL_OFFSET);
  CSR_READ(CSR_REG_CPUCTRL, &cpuctrl_csr);
  // We only mask the 8th bit (`ic_scr_key_valid`) to include exception flags
  // (bits 6 and 7) in the check.
  cpuctrl_csr = bitfield_bit32_write(cpuctrl_csr, 8, false);
  if (launder32(cpuctrl_csr) != cpuctrl_otp) {
    HARDENED_TRAP();
  }

  HARDENED_CHECK_EQ(cpuctrl_csr, cpuctrl_otp);
  // Check rstmgr alert and cpu info collection configuration.
  SHUTDOWN_IF_ERROR(
      rstmgr_info_en_check(retention_sram_get()->creator.reset_reasons));
  CFI_FUNC_COUNTER_INCREMENT(second_rom_counters, kCfiSecondRomPreBootCheck, 5);

  sec_mmio_check_counters(/*expected_check_count=*/2);
  CFI_FUNC_COUNTER_INCREMENT(second_rom_counters, kCfiSecondRomPreBootCheck, 6);
}

/**
 * Attempts to load and boot next stage (Bootstrap/ROM_EXT).
 * @return Error code on error, never returns on success.
 */
OT_WARN_UNUSED_RESULT
static rom_error_t second_rom_try_boot(void) {
  CFI_FUNC_COUNTER_INCREMENT(second_rom_counters, kCfiSecondRomTryBoot, 1);

  DBG_PRINTF("Boot next stage\n");

  // Do the pre-boot check
  CFI_FUNC_COUNTER_PREPCALL(second_rom_counters, kCfiSecondRomTryBoot, 2,
                            kCfiSecondRomPreBootCheck);
  second_rom_pre_boot_check();
  CFI_FUNC_COUNTER_INCREMENT(second_rom_counters, kCfiSecondRomTryBoot, 4);
  CFI_FUNC_COUNTER_CHECK(second_rom_counters, kCfiSecondRomPreBootCheck, 7);

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

  DBG_PRINTF("Starting 2nd stage ROM\r\n");

  shutdown_finalize(rom_state_fsm_walk(second_rom_states, kSecondRomStateCnt,
                                       kSecondRomStateRoTInit,
                                       second_rom_states_cfi));
}
