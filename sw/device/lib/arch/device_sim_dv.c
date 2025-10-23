// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

#include <stdbool.h>

#include "sw/device/lib/arch/device.h"

#if defined(ROT)
#include "hw/top/dt/dt_rv_core_ibex.h"
#include "hw/top/rv_core_ibex_regs.h"
#define DT_RV_CORE_IBEX_TYPE dt_rv_core_ibex_t
#define KDT_RV_CORE_IBEX_COUNT kDtRvCoreIbexCount
#define KDT_RV_CORE_IBEX_PRIMARY_REG_BLOCK dt_rv_core_ibex_primary_reg_block
#elif defined(PWC)
#include "hw/top/dt/dt_rv_core_ibex_pwc.h"
#include "hw/top/rv_core_ibex_pwc_regs.h"
#define DT_RV_CORE_IBEX_TYPE dt_rv_core_ibex_pwc_t
#define KDT_RV_CORE_IBEX_COUNT kDtRvCoreIbexPwcCount
#define KDT_RV_CORE_IBEX_PRIMARY_REG_BLOCK dt_rv_core_ibex_pwc_primary_reg_block
#define RV_CORE_IBEX_DV_SIM_WINDOW_REG_OFFSET RV_CORE_IBEX_PWC_DV_SIM_WINDOW_REG_OFFSET
#elif defined(MIO)
#include "hw/top/dt/dt_rv_core_ibex_mio.h"
#include "hw/top/rv_core_ibex_mio_regs.h"
#define DT_RV_CORE_IBEX_TYPE dt_rv_core_ibex_mio_t
#define KDT_RV_CORE_IBEX_COUNT kDtRvCoreIbexMioCount
#define KDT_RV_CORE_IBEX_PRIMARY_REG_BLOCK dt_rv_core_ibex_mio_primary_reg_block
#define RV_CORE_IBEX_DV_SIM_WINDOW_REG_OFFSET RV_CORE_IBEX_MIO_DV_SIM_WINDOW_REG_OFFSET
#endif

#if defined(ROT) || defined(PWC) || defined(MIO)
// Use the first DT_RV_CORE_IBEX_TYPE enum, i.e. the first Ibex core instance.
static const DT_RV_CORE_IBEX_TYPE kRvCoreIbexDt = (DT_RV_CORE_IBEX_TYPE)0;
static_assert(KDT_RV_CORE_IBEX_COUNT == 1, "Only single core tops are supported");

static inline uintptr_t rv_core_ibex_base(void) {
    return (uintptr_t)KDT_RV_CORE_IBEX_PRIMARY_REG_BLOCK(kRvCoreIbexDt);
}
#endif

/**
 * Device-specific symbol definitions for the DV simulation device.
 */

const device_type_t kDeviceType = kDeviceSimDV;

// TODO: DV testbench completely randomizes these. Need to add code to
// retrieve these from a preloaded memory location set by the testbench.

const uint64_t kClockFreqCpuMhz = 100;

const uint64_t kClockFreqCpuHz = kClockFreqCpuMhz * 1000 * 1000;

uint64_t to_cpu_cycles(uint64_t usec) { return usec * kClockFreqCpuMhz; }

const uint64_t kClockFreqHiSpeedPeripheralHz = 96 * 1000 * 1000;  // 96MHz

const uint64_t kClockFreqPeripheralHz = 24 * 1000 * 1000;  // 24MHz

const uint64_t kClockFreqUsbHz = 48 * 1000 * 1000;  // 48MHz

const uint64_t kClockFreqAonHz = 200 * 1000;  // 200kHz

const uint64_t kUartBaudrate = 1 * 1000 * 1000;  // 1Mbps

const uint32_t kUartNCOValue =
    CALCULATE_UART_NCO(kUartBaudrate, kClockFreqPeripheralHz);

const uint32_t kUartBaud115K =
    CALCULATE_UART_NCO(115200, kClockFreqPeripheralHz);
const uint32_t kUartBaud230K =
    CALCULATE_UART_NCO(115200 * 2, kClockFreqPeripheralHz);
const uint32_t kUartBaud460K =
    CALCULATE_UART_NCO(115200 * 4, kClockFreqPeripheralHz);
const uint32_t kUartBaud921K =
    CALCULATE_UART_NCO(115200 * 8, kClockFreqPeripheralHz);
const uint32_t kUartBaud1M33 =
    CALCULATE_UART_NCO(1333333, kClockFreqPeripheralHz);
const uint32_t kUartBaud1M50 =
    CALCULATE_UART_NCO(1500000, kClockFreqPeripheralHz);

const uint32_t kAstCheckPollCpuCycles =
    CALCULATE_AST_CHECK_POLL_CPU_CYCLES(kClockFreqCpuHz);

#if defined(ROT) || defined(PWC) || defined(MIO)
#define SCS_SSRAM_LO_BASE_ADDR 0x41000000u
uintptr_t device_test_status_address(void) {
#if defined(GLS)
    // This corresponds to SSRAM_SW_STATUS_ADDR in rvscs/tb/scs_tb/env/scs_common_env_pkg.sv
    return SCS_SSRAM_LO_BASE_ADDR + 0x540;
#else
    return rv_core_ibex_base() + RV_CORE_IBEX_DV_SIM_WINDOW_REG_OFFSET;
#endif
}

uintptr_t device_log_bypass_uart_address(void) {
#if defined(GLS)
    // This corresponds to SSRAM_SW_LOGGER_ADDR in rvscs/tb/scs_tb/env/scs_common_env_pkg.sv
    return SCS_SSRAM_LO_BASE_ADDR + 0x540 + 0x04;
#else
    return rv_core_ibex_base() + RV_CORE_IBEX_DV_SIM_WINDOW_REG_OFFSET + 0x04;
#endif
}
#endif
