// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
// clang-format off
//
// ------------------- W A R N I N G: A U T O - G E N E R A T E D   C O D E !! -------------------//
// PLEASE DO NOT HAND-EDIT THIS FILE. IT HAS BEEN AUTO-GENERATED WITH THE FOLLOWING COMMAND:
// util/topgen.py -t hw/top_mio/data/top_mio.hjson
// -o hw/top_mio
#include <limits.h>

// This test should avoid otp_ctrl interrupts in rom_ext, since the rom
// extension configures CSR accesses to OTP and AST to become illegal.
//
// This test is getting too big so we need to split it up. To do so,
// each peripheral is given an ID (according to their alphabetical order)
// and we define TEST_MIN_IRQ_PERIPHERAL and TEST_MAX_IRQ_PERIPHERAL to
// choose which ones are being tested.

#ifndef TEST_MIN_IRQ_PERIPHERAL
#define TEST_MIN_IRQ_PERIPHERAL 0
#endif

#ifndef TEST_MAX_IRQ_PERIPHERAL
#define TEST_MAX_IRQ_PERIPHERAL 5
#endif

#include "sw/device/lib/arch/boot_stage.h"
#include "sw/device/lib/base/csr.h"
#include "sw/device/lib/base/mmio.h"
#include "sw/device/lib/dif/dif_aon_timer.h"
#include "sw/device/lib/dif/dif_dma.h"
#include "sw/device/lib/dif/dif_mbx.h"
#include "sw/device/lib/dif/dif_mio_soc_proxy.h"
#include "sw/device/lib/dif/dif_rv_plic.h"
#include "sw/device/lib/dif/dif_rv_timer.h"
#include "sw/device/lib/runtime/ibex.h"
#include "sw/device/lib/runtime/irq.h"
#include "sw/device/lib/runtime/log.h"
#include "sw/device/lib/testing/rv_plic_testutils.h"
#include "sw/device/lib/testing/test_framework/check.h"
#include "sw/device/lib/testing/test_framework/ottf_main.h"
#include "sw/device/lib/testing/test_framework/status.h"

#include "hw/top_mio/sw/autogen/top_mio.h"

#if TEST_MIN_IRQ_PERIPHERAL <= 0 && 0 < TEST_MAX_IRQ_PERIPHERAL
static dif_aon_timer_t aon_timer_aon;
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 1 && 1 < TEST_MAX_IRQ_PERIPHERAL
static dif_dma_t dma;
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 2 && 2 < TEST_MAX_IRQ_PERIPHERAL
static dif_mbx_t mbx0;
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 2 && 2 < TEST_MAX_IRQ_PERIPHERAL
static dif_mbx_t mbx1;
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 2 && 2 < TEST_MAX_IRQ_PERIPHERAL
static dif_mbx_t mbx2;
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 2 && 2 < TEST_MAX_IRQ_PERIPHERAL
static dif_mbx_t mbx3;
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 2 && 2 < TEST_MAX_IRQ_PERIPHERAL
static dif_mbx_t mbx4;
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 2 && 2 < TEST_MAX_IRQ_PERIPHERAL
static dif_mbx_t mbx5;
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 2 && 2 < TEST_MAX_IRQ_PERIPHERAL
static dif_mbx_t mbx_pcie0;
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 3 && 3 < TEST_MAX_IRQ_PERIPHERAL
static dif_rv_timer_t rv_timer;
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 4 && 4 < TEST_MAX_IRQ_PERIPHERAL
static dif_mio_soc_proxy_t soc_proxy;
#endif

static dif_rv_plic_t plic;
static const top_mio_plic_target_t kHart = kTopMioPlicTargetIbex0;

/**
 * Flag indicating which peripheral is under test.
 *
 * Declared volatile because it is referenced in the main program flow as well
 * as the ISR.
 */
static volatile top_mio_plic_peripheral_t peripheral_expected;

/**
 * Flags indicating the IRQ expected to have triggered and serviced within the
 * peripheral.
 *
 * Declared volatile because it is referenced in the main program flow as well
 * as the ISR.
 */

#if TEST_MIN_IRQ_PERIPHERAL <= 0 && 0 < TEST_MAX_IRQ_PERIPHERAL
static volatile dif_aon_timer_irq_t aon_timer_irq_expected;
static volatile dif_aon_timer_irq_t aon_timer_irq_serviced;
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 1 && 1 < TEST_MAX_IRQ_PERIPHERAL
static volatile dif_dma_irq_t dma_irq_expected;
static volatile dif_dma_irq_t dma_irq_serviced;
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 2 && 2 < TEST_MAX_IRQ_PERIPHERAL
static volatile dif_mbx_irq_t mbx_irq_expected;
static volatile dif_mbx_irq_t mbx_irq_serviced;
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 3 && 3 < TEST_MAX_IRQ_PERIPHERAL
static volatile dif_rv_timer_irq_t rv_timer_irq_expected;
static volatile dif_rv_timer_irq_t rv_timer_irq_serviced;
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 4 && 4 < TEST_MAX_IRQ_PERIPHERAL
static volatile dif_mio_soc_proxy_irq_t mio_soc_proxy_irq_expected;
static volatile dif_mio_soc_proxy_irq_t mio_soc_proxy_irq_serviced;
#endif

/**
 * Provides external IRQ handling for this test.
 *
 * This function overrides the default OTTF external ISR.
 *
 * For each IRQ, it performs the following:
 * 1. Claims the IRQ fired (finds PLIC IRQ index).
 * 2. Checks that the index belongs to the expected peripheral.
 * 3. Checks that the correct and the only IRQ from the expected peripheral
 *    triggered.
 * 4. Clears the IRQ at the peripheral.
 * 5. Completes the IRQ service at PLIC.
 */
void ottf_external_isr(uint32_t *exc_info) {
  dif_rv_plic_irq_id_t plic_irq_id;
  CHECK_DIF_OK(dif_rv_plic_irq_claim(&plic, kHart, &plic_irq_id));

  top_mio_plic_peripheral_t peripheral = (top_mio_plic_peripheral_t)
      top_mio_plic_interrupt_for_peripheral[plic_irq_id];
  CHECK(peripheral == peripheral_expected,
        "Interrupt from incorrect peripheral: exp = %d, obs = %d",
        peripheral_expected, peripheral);

  switch (peripheral) {
#if TEST_MIN_IRQ_PERIPHERAL <= 0 && 0 < TEST_MAX_IRQ_PERIPHERAL
    case kTopMioPlicPeripheralAonTimerAon: {
      dif_aon_timer_irq_t irq =
          (dif_aon_timer_irq_t)(plic_irq_id -
                                (dif_rv_plic_irq_id_t)
                                    kTopMioPlicIrqIdAonTimerAonWkupTimerExpired);
      CHECK(irq == aon_timer_irq_expected,
            "Incorrect aon_timer_aon IRQ triggered: exp = %d, obs = %d",
            aon_timer_irq_expected, irq);
      aon_timer_irq_serviced = irq;

      dif_aon_timer_irq_state_snapshot_t snapshot;
      CHECK_DIF_OK(dif_aon_timer_irq_get_state(&aon_timer_aon, &snapshot));
      CHECK(snapshot == (dif_aon_timer_irq_state_snapshot_t)(1 << irq),
            "Only aon_timer_aon IRQ %d expected to fire. Actual interrupt "
            "status = %x",
            irq, snapshot);

      CHECK_DIF_OK(dif_aon_timer_irq_acknowledge(&aon_timer_aon, irq));
      break;
    }
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 1 && 1 < TEST_MAX_IRQ_PERIPHERAL
    case kTopMioPlicPeripheralDma: {
      dif_dma_irq_t irq =
          (dif_dma_irq_t)(plic_irq_id -
                          (dif_rv_plic_irq_id_t)
                              kTopMioPlicIrqIdDmaDmaDone);
      CHECK(irq == dma_irq_expected,
            "Incorrect dma IRQ triggered: exp = %d, obs = %d",
            dma_irq_expected, irq);
      dma_irq_serviced = irq;

      dif_dma_irq_state_snapshot_t snapshot;
      CHECK_DIF_OK(dif_dma_irq_get_state(&dma, &snapshot));
      CHECK(snapshot == (dif_dma_irq_state_snapshot_t)(1 << irq),
            "Only dma IRQ %d expected to fire. Actual interrupt "
            "status = %x",
            irq, snapshot);

      if (0x7 & (1 << irq)) {
        // We do not acknowledge status type interrupt at the IP side, but we
        // need to clear the test force register.
        CHECK_DIF_OK(dif_dma_irq_force(&dma, irq, false));
        // In case this status interrupt is asserted by default, we also
        // disable it at this point so that it does not interfere with the
        // rest of the test.
        if ((0x0 & (1 << irq))) {
          CHECK_DIF_OK(dif_dma_irq_set_enabled(&dma, irq, false));
        }
      } else {
        // We acknowledge event type interrupt.
        CHECK_DIF_OK(dif_dma_irq_acknowledge(&dma, irq));
      }
      break;
    }
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 2 && 2 < TEST_MAX_IRQ_PERIPHERAL
    case kTopMioPlicPeripheralMbx0: {
      dif_mbx_irq_t irq =
          (dif_mbx_irq_t)(plic_irq_id -
                          (dif_rv_plic_irq_id_t)
                              kTopMioPlicIrqIdMbx0MbxReady);
      CHECK(irq == mbx_irq_expected,
            "Incorrect mbx0 IRQ triggered: exp = %d, obs = %d",
            mbx_irq_expected, irq);
      mbx_irq_serviced = irq;

      dif_mbx_irq_state_snapshot_t snapshot;
      CHECK_DIF_OK(dif_mbx_irq_get_state(&mbx0, &snapshot));
      CHECK(snapshot == (dif_mbx_irq_state_snapshot_t)(1 << irq),
            "Only mbx0 IRQ %d expected to fire. Actual interrupt "
            "status = %x",
            irq, snapshot);

      CHECK_DIF_OK(dif_mbx_irq_acknowledge(&mbx0, irq));
      break;
    }
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 2 && 2 < TEST_MAX_IRQ_PERIPHERAL
    case kTopMioPlicPeripheralMbx1: {
      dif_mbx_irq_t irq =
          (dif_mbx_irq_t)(plic_irq_id -
                          (dif_rv_plic_irq_id_t)
                              kTopMioPlicIrqIdMbx1MbxReady);
      CHECK(irq == mbx_irq_expected,
            "Incorrect mbx1 IRQ triggered: exp = %d, obs = %d",
            mbx_irq_expected, irq);
      mbx_irq_serviced = irq;

      dif_mbx_irq_state_snapshot_t snapshot;
      CHECK_DIF_OK(dif_mbx_irq_get_state(&mbx1, &snapshot));
      CHECK(snapshot == (dif_mbx_irq_state_snapshot_t)(1 << irq),
            "Only mbx1 IRQ %d expected to fire. Actual interrupt "
            "status = %x",
            irq, snapshot);

      CHECK_DIF_OK(dif_mbx_irq_acknowledge(&mbx1, irq));
      break;
    }
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 2 && 2 < TEST_MAX_IRQ_PERIPHERAL
    case kTopMioPlicPeripheralMbx2: {
      dif_mbx_irq_t irq =
          (dif_mbx_irq_t)(plic_irq_id -
                          (dif_rv_plic_irq_id_t)
                              kTopMioPlicIrqIdMbx2MbxReady);
      CHECK(irq == mbx_irq_expected,
            "Incorrect mbx2 IRQ triggered: exp = %d, obs = %d",
            mbx_irq_expected, irq);
      mbx_irq_serviced = irq;

      dif_mbx_irq_state_snapshot_t snapshot;
      CHECK_DIF_OK(dif_mbx_irq_get_state(&mbx2, &snapshot));
      CHECK(snapshot == (dif_mbx_irq_state_snapshot_t)(1 << irq),
            "Only mbx2 IRQ %d expected to fire. Actual interrupt "
            "status = %x",
            irq, snapshot);

      CHECK_DIF_OK(dif_mbx_irq_acknowledge(&mbx2, irq));
      break;
    }
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 2 && 2 < TEST_MAX_IRQ_PERIPHERAL
    case kTopMioPlicPeripheralMbx3: {
      dif_mbx_irq_t irq =
          (dif_mbx_irq_t)(plic_irq_id -
                          (dif_rv_plic_irq_id_t)
                              kTopMioPlicIrqIdMbx3MbxReady);
      CHECK(irq == mbx_irq_expected,
            "Incorrect mbx3 IRQ triggered: exp = %d, obs = %d",
            mbx_irq_expected, irq);
      mbx_irq_serviced = irq;

      dif_mbx_irq_state_snapshot_t snapshot;
      CHECK_DIF_OK(dif_mbx_irq_get_state(&mbx3, &snapshot));
      CHECK(snapshot == (dif_mbx_irq_state_snapshot_t)(1 << irq),
            "Only mbx3 IRQ %d expected to fire. Actual interrupt "
            "status = %x",
            irq, snapshot);

      CHECK_DIF_OK(dif_mbx_irq_acknowledge(&mbx3, irq));
      break;
    }
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 2 && 2 < TEST_MAX_IRQ_PERIPHERAL
    case kTopMioPlicPeripheralMbx4: {
      dif_mbx_irq_t irq =
          (dif_mbx_irq_t)(plic_irq_id -
                          (dif_rv_plic_irq_id_t)
                              kTopMioPlicIrqIdMbx4MbxReady);
      CHECK(irq == mbx_irq_expected,
            "Incorrect mbx4 IRQ triggered: exp = %d, obs = %d",
            mbx_irq_expected, irq);
      mbx_irq_serviced = irq;

      dif_mbx_irq_state_snapshot_t snapshot;
      CHECK_DIF_OK(dif_mbx_irq_get_state(&mbx4, &snapshot));
      CHECK(snapshot == (dif_mbx_irq_state_snapshot_t)(1 << irq),
            "Only mbx4 IRQ %d expected to fire. Actual interrupt "
            "status = %x",
            irq, snapshot);

      CHECK_DIF_OK(dif_mbx_irq_acknowledge(&mbx4, irq));
      break;
    }
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 2 && 2 < TEST_MAX_IRQ_PERIPHERAL
    case kTopMioPlicPeripheralMbx5: {
      dif_mbx_irq_t irq =
          (dif_mbx_irq_t)(plic_irq_id -
                          (dif_rv_plic_irq_id_t)
                              kTopMioPlicIrqIdMbx5MbxReady);
      CHECK(irq == mbx_irq_expected,
            "Incorrect mbx5 IRQ triggered: exp = %d, obs = %d",
            mbx_irq_expected, irq);
      mbx_irq_serviced = irq;

      dif_mbx_irq_state_snapshot_t snapshot;
      CHECK_DIF_OK(dif_mbx_irq_get_state(&mbx5, &snapshot));
      CHECK(snapshot == (dif_mbx_irq_state_snapshot_t)(1 << irq),
            "Only mbx5 IRQ %d expected to fire. Actual interrupt "
            "status = %x",
            irq, snapshot);

      CHECK_DIF_OK(dif_mbx_irq_acknowledge(&mbx5, irq));
      break;
    }
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 2 && 2 < TEST_MAX_IRQ_PERIPHERAL
    case kTopMioPlicPeripheralMbxPcie0: {
      dif_mbx_irq_t irq =
          (dif_mbx_irq_t)(plic_irq_id -
                          (dif_rv_plic_irq_id_t)
                              kTopMioPlicIrqIdMbxPcie0MbxReady);
      CHECK(irq == mbx_irq_expected,
            "Incorrect mbx_pcie0 IRQ triggered: exp = %d, obs = %d",
            mbx_irq_expected, irq);
      mbx_irq_serviced = irq;

      dif_mbx_irq_state_snapshot_t snapshot;
      CHECK_DIF_OK(dif_mbx_irq_get_state(&mbx_pcie0, &snapshot));
      CHECK(snapshot == (dif_mbx_irq_state_snapshot_t)(1 << irq),
            "Only mbx_pcie0 IRQ %d expected to fire. Actual interrupt "
            "status = %x",
            irq, snapshot);

      CHECK_DIF_OK(dif_mbx_irq_acknowledge(&mbx_pcie0, irq));
      break;
    }
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 3 && 3 < TEST_MAX_IRQ_PERIPHERAL
    case kTopMioPlicPeripheralRvTimer: {
      dif_rv_timer_irq_t irq =
          (dif_rv_timer_irq_t)(plic_irq_id -
                               (dif_rv_plic_irq_id_t)
                                   kTopMioPlicIrqIdRvTimerTimerExpiredHart0Timer0);
      CHECK(irq == rv_timer_irq_expected,
            "Incorrect rv_timer IRQ triggered: exp = %d, obs = %d",
            rv_timer_irq_expected, irq);
      rv_timer_irq_serviced = irq;

      dif_rv_timer_irq_state_snapshot_t snapshot;
      CHECK_DIF_OK(dif_rv_timer_irq_get_state(&rv_timer, kHart, &snapshot));
      CHECK(snapshot == (dif_rv_timer_irq_state_snapshot_t)(1 << irq),
            "Only rv_timer IRQ %d expected to fire. Actual interrupt "
            "status = %x",
            irq, snapshot);

      CHECK_DIF_OK(dif_rv_timer_irq_acknowledge(&rv_timer, irq));
      break;
    }
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 4 && 4 < TEST_MAX_IRQ_PERIPHERAL
    case kTopMioPlicPeripheralSocProxy: {
      dif_mio_soc_proxy_irq_t irq =
          (dif_mio_soc_proxy_irq_t)(plic_irq_id -
                                    (dif_rv_plic_irq_id_t)
                                        kTopMioPlicIrqIdSocProxyExternal0);
      CHECK(irq == mio_soc_proxy_irq_expected,
            "Incorrect soc_proxy IRQ triggered: exp = %d, obs = %d",
            mio_soc_proxy_irq_expected, irq);
      mio_soc_proxy_irq_serviced = irq;

      dif_mio_soc_proxy_irq_state_snapshot_t snapshot;
      CHECK_DIF_OK(dif_mio_soc_proxy_irq_get_state(&soc_proxy, &snapshot));
      CHECK(snapshot == (dif_mio_soc_proxy_irq_state_snapshot_t)(1 << irq),
            "Only soc_proxy IRQ %d expected to fire. Actual interrupt "
            "status = %x",
            irq, snapshot);

      CHECK_DIF_OK(dif_mio_soc_proxy_irq_acknowledge(&soc_proxy, irq));
      break;
    }
#endif

    default:
      LOG_FATAL("ISR is not implemented!");
      test_status_set(kTestStatusFailed);
  }
  // Complete the IRQ at PLIC.
  CHECK_DIF_OK(dif_rv_plic_irq_complete(&plic, kHart, plic_irq_id));
}

/**
 * Initializes the handles to all peripherals.
 */
static void peripherals_init(void) {
  mmio_region_t base_addr;

#if TEST_MIN_IRQ_PERIPHERAL <= 0 && 0 < TEST_MAX_IRQ_PERIPHERAL
  base_addr = mmio_region_from_addr(TOP_MIO_AON_TIMER_AON_BASE_ADDR);
  CHECK_DIF_OK(dif_aon_timer_init(base_addr, &aon_timer_aon));
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 1 && 1 < TEST_MAX_IRQ_PERIPHERAL
  base_addr = mmio_region_from_addr(TOP_MIO_DMA_BASE_ADDR);
  CHECK_DIF_OK(dif_dma_init(base_addr, &dma));
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 2 && 2 < TEST_MAX_IRQ_PERIPHERAL
  base_addr = mmio_region_from_addr(TOP_MIO_MBX0_CORE_BASE_ADDR);
  CHECK_DIF_OK(dif_mbx_init(base_addr, &mbx0));
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 2 && 2 < TEST_MAX_IRQ_PERIPHERAL
  base_addr = mmio_region_from_addr(TOP_MIO_MBX1_CORE_BASE_ADDR);
  CHECK_DIF_OK(dif_mbx_init(base_addr, &mbx1));
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 2 && 2 < TEST_MAX_IRQ_PERIPHERAL
  base_addr = mmio_region_from_addr(TOP_MIO_MBX2_CORE_BASE_ADDR);
  CHECK_DIF_OK(dif_mbx_init(base_addr, &mbx2));
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 2 && 2 < TEST_MAX_IRQ_PERIPHERAL
  base_addr = mmio_region_from_addr(TOP_MIO_MBX3_CORE_BASE_ADDR);
  CHECK_DIF_OK(dif_mbx_init(base_addr, &mbx3));
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 2 && 2 < TEST_MAX_IRQ_PERIPHERAL
  base_addr = mmio_region_from_addr(TOP_MIO_MBX4_CORE_BASE_ADDR);
  CHECK_DIF_OK(dif_mbx_init(base_addr, &mbx4));
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 2 && 2 < TEST_MAX_IRQ_PERIPHERAL
  base_addr = mmio_region_from_addr(TOP_MIO_MBX5_CORE_BASE_ADDR);
  CHECK_DIF_OK(dif_mbx_init(base_addr, &mbx5));
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 2 && 2 < TEST_MAX_IRQ_PERIPHERAL
  base_addr = mmio_region_from_addr(TOP_MIO_MBX_PCIE0_CORE_BASE_ADDR);
  CHECK_DIF_OK(dif_mbx_init(base_addr, &mbx_pcie0));
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 3 && 3 < TEST_MAX_IRQ_PERIPHERAL
  base_addr = mmio_region_from_addr(TOP_MIO_RV_TIMER_BASE_ADDR);
  CHECK_DIF_OK(dif_rv_timer_init(base_addr, &rv_timer));
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 4 && 4 < TEST_MAX_IRQ_PERIPHERAL
  base_addr = mmio_region_from_addr(TOP_MIO_SOC_PROXY_CORE_BASE_ADDR);
  CHECK_DIF_OK(dif_mio_soc_proxy_init(base_addr, &soc_proxy));
#endif

  base_addr = mmio_region_from_addr(TOP_MIO_RV_PLIC_BASE_ADDR);
  CHECK_DIF_OK(dif_rv_plic_init(base_addr, &plic));
}

/**
 * Clears pending IRQs in all peripherals.
 */
static void peripheral_irqs_clear(void) {
#if TEST_MIN_IRQ_PERIPHERAL <= 0 && 0 < TEST_MAX_IRQ_PERIPHERAL
  CHECK_DIF_OK(dif_aon_timer_irq_acknowledge_all(&aon_timer_aon));
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 1 && 1 < TEST_MAX_IRQ_PERIPHERAL
  CHECK_DIF_OK(dif_dma_irq_acknowledge_all(&dma));
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 2 && 2 < TEST_MAX_IRQ_PERIPHERAL
  CHECK_DIF_OK(dif_mbx_irq_acknowledge_all(&mbx0));
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 2 && 2 < TEST_MAX_IRQ_PERIPHERAL
  CHECK_DIF_OK(dif_mbx_irq_acknowledge_all(&mbx1));
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 2 && 2 < TEST_MAX_IRQ_PERIPHERAL
  CHECK_DIF_OK(dif_mbx_irq_acknowledge_all(&mbx2));
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 2 && 2 < TEST_MAX_IRQ_PERIPHERAL
  CHECK_DIF_OK(dif_mbx_irq_acknowledge_all(&mbx3));
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 2 && 2 < TEST_MAX_IRQ_PERIPHERAL
  CHECK_DIF_OK(dif_mbx_irq_acknowledge_all(&mbx4));
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 2 && 2 < TEST_MAX_IRQ_PERIPHERAL
  CHECK_DIF_OK(dif_mbx_irq_acknowledge_all(&mbx5));
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 2 && 2 < TEST_MAX_IRQ_PERIPHERAL
  CHECK_DIF_OK(dif_mbx_irq_acknowledge_all(&mbx_pcie0));
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 3 && 3 < TEST_MAX_IRQ_PERIPHERAL
  CHECK_DIF_OK(dif_rv_timer_irq_acknowledge_all(&rv_timer, kHart));
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 4 && 4 < TEST_MAX_IRQ_PERIPHERAL
  CHECK_DIF_OK(dif_mio_soc_proxy_irq_acknowledge_all(&soc_proxy));
#endif
}

/**
 * Enables all IRQs in all peripherals.
 */
static void peripheral_irqs_enable(void) {
#if TEST_MIN_IRQ_PERIPHERAL <= 1 && 1 < TEST_MAX_IRQ_PERIPHERAL
  dif_dma_irq_state_snapshot_t dma_irqs =
      (dif_dma_irq_state_snapshot_t)0xffffffff;
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 2 && 2 < TEST_MAX_IRQ_PERIPHERAL
  dif_mbx_irq_state_snapshot_t mbx_irqs =
      (dif_mbx_irq_state_snapshot_t)0xffffffff;
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 3 && 3 < TEST_MAX_IRQ_PERIPHERAL
  dif_rv_timer_irq_state_snapshot_t rv_timer_irqs =
      (dif_rv_timer_irq_state_snapshot_t)0xffffffff;
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 4 && 4 < TEST_MAX_IRQ_PERIPHERAL
  dif_mio_soc_proxy_irq_state_snapshot_t mio_soc_proxy_irqs =
      (dif_mio_soc_proxy_irq_state_snapshot_t)0xffffffff;
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 1 && 1 < TEST_MAX_IRQ_PERIPHERAL
  CHECK_DIF_OK(dif_dma_irq_restore_all(&dma, &dma_irqs));
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 2 && 2 < TEST_MAX_IRQ_PERIPHERAL
  CHECK_DIF_OK(dif_mbx_irq_restore_all(&mbx0, &mbx_irqs));
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 2 && 2 < TEST_MAX_IRQ_PERIPHERAL
  CHECK_DIF_OK(dif_mbx_irq_restore_all(&mbx1, &mbx_irqs));
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 2 && 2 < TEST_MAX_IRQ_PERIPHERAL
  CHECK_DIF_OK(dif_mbx_irq_restore_all(&mbx2, &mbx_irqs));
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 2 && 2 < TEST_MAX_IRQ_PERIPHERAL
  CHECK_DIF_OK(dif_mbx_irq_restore_all(&mbx3, &mbx_irqs));
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 2 && 2 < TEST_MAX_IRQ_PERIPHERAL
  CHECK_DIF_OK(dif_mbx_irq_restore_all(&mbx4, &mbx_irqs));
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 2 && 2 < TEST_MAX_IRQ_PERIPHERAL
  CHECK_DIF_OK(dif_mbx_irq_restore_all(&mbx5, &mbx_irqs));
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 2 && 2 < TEST_MAX_IRQ_PERIPHERAL
  CHECK_DIF_OK(dif_mbx_irq_restore_all(&mbx_pcie0, &mbx_irqs));
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 3 && 3 < TEST_MAX_IRQ_PERIPHERAL
  CHECK_DIF_OK(dif_rv_timer_irq_restore_all(&rv_timer, kHart, &rv_timer_irqs));
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 4 && 4 < TEST_MAX_IRQ_PERIPHERAL
  CHECK_DIF_OK(dif_mio_soc_proxy_irq_restore_all(&soc_proxy, &mio_soc_proxy_irqs));
#endif
}

/**
 * Triggers all IRQs in all peripherals one by one.
 *
 * Walks through all instances of all peripherals and triggers an interrupt one
 * by one, by forcing with the `intr_test` CSR. On trigger, the CPU instantly
 * jumps into the ISR. The main flow of execution thus proceeds to check that
 * the correct IRQ was serviced immediately. The ISR, in turn checks if the
 * expected IRQ from the expected peripheral triggered.
 */
static void peripheral_irqs_trigger(void) {
  unsigned int status_default_mask;
  // Depending on the build configuration, this variable may show up as unused
  // in the clang linter. This statement waives that error.
  (void)status_default_mask;

#if TEST_MIN_IRQ_PERIPHERAL <= 0 && 0 < TEST_MAX_IRQ_PERIPHERAL
  // lowrisc/opentitan#8656: Skip UART0 in non-DV setups due to interference
  // from the logging facility.
  // aon_timer may generate a NMI instead of a PLIC IRQ depending on the ROM.
  // Since there are other tests covering this already, we just skip this for
  // non-DV setups.
  if (kDeviceType == kDeviceSimDV) {
    peripheral_expected = kTopMioPlicPeripheralAonTimerAon;
    for (dif_aon_timer_irq_t irq = kDifAonTimerIrqWkupTimerExpired; irq <= kDifAonTimerIrqWdogTimerBark;
         ++irq) {
      aon_timer_irq_expected = irq;
      LOG_INFO("Triggering aon_timer_aon IRQ %d.", irq);
      CHECK_DIF_OK(dif_aon_timer_irq_force(&aon_timer_aon, irq, true));

      // This avoids a race where *irq_serviced is read before
      // entering the ISR.
      IBEX_SPIN_FOR(aon_timer_irq_serviced == irq, 1);
      LOG_INFO("IRQ %d from aon_timer_aon is serviced.", irq);
    }
  }
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 1 && 1 < TEST_MAX_IRQ_PERIPHERAL
  peripheral_expected = kTopMioPlicPeripheralDma;
  status_default_mask = 0x0;
  for (dif_dma_irq_t irq = kDifDmaIrqDmaDone; irq <= kDifDmaIrqDmaError;
       ++irq) {
    dma_irq_expected = irq;
    LOG_INFO("Triggering dma IRQ %d.", irq);
    CHECK_DIF_OK(dif_dma_irq_force(&dma, irq, true));

    // In this case, the interrupt has not been enabled yet because that would
    // interfere with testing other interrupts. We enable it here and let the
    // interrupt handler disable it again.
    if ((status_default_mask & 0x1)) {
      CHECK_DIF_OK(dif_dma_irq_set_enabled(&dma, irq, true));
    }
    status_default_mask >>= 1;

    // This avoids a race where *irq_serviced is read before
    // entering the ISR.
    IBEX_SPIN_FOR(dma_irq_serviced == irq, 1);
    LOG_INFO("IRQ %d from dma is serviced.", irq);
  }
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 2 && 2 < TEST_MAX_IRQ_PERIPHERAL
  peripheral_expected = kTopMioPlicPeripheralMbx0;
  for (dif_mbx_irq_t irq = kDifMbxIrqMbxReady; irq <= kDifMbxIrqMbxError;
       ++irq) {
    mbx_irq_expected = irq;
    LOG_INFO("Triggering mbx0 IRQ %d.", irq);
    CHECK_DIF_OK(dif_mbx_irq_force(&mbx0, irq, true));

    // This avoids a race where *irq_serviced is read before
    // entering the ISR.
    IBEX_SPIN_FOR(mbx_irq_serviced == irq, 1);
    LOG_INFO("IRQ %d from mbx0 is serviced.", irq);
  }
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 2 && 2 < TEST_MAX_IRQ_PERIPHERAL
  peripheral_expected = kTopMioPlicPeripheralMbx1;
  for (dif_mbx_irq_t irq = kDifMbxIrqMbxReady; irq <= kDifMbxIrqMbxError;
       ++irq) {
    mbx_irq_expected = irq;
    LOG_INFO("Triggering mbx1 IRQ %d.", irq);
    CHECK_DIF_OK(dif_mbx_irq_force(&mbx1, irq, true));

    // This avoids a race where *irq_serviced is read before
    // entering the ISR.
    IBEX_SPIN_FOR(mbx_irq_serviced == irq, 1);
    LOG_INFO("IRQ %d from mbx1 is serviced.", irq);
  }
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 2 && 2 < TEST_MAX_IRQ_PERIPHERAL
  peripheral_expected = kTopMioPlicPeripheralMbx2;
  for (dif_mbx_irq_t irq = kDifMbxIrqMbxReady; irq <= kDifMbxIrqMbxError;
       ++irq) {
    mbx_irq_expected = irq;
    LOG_INFO("Triggering mbx2 IRQ %d.", irq);
    CHECK_DIF_OK(dif_mbx_irq_force(&mbx2, irq, true));

    // This avoids a race where *irq_serviced is read before
    // entering the ISR.
    IBEX_SPIN_FOR(mbx_irq_serviced == irq, 1);
    LOG_INFO("IRQ %d from mbx2 is serviced.", irq);
  }
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 2 && 2 < TEST_MAX_IRQ_PERIPHERAL
  peripheral_expected = kTopMioPlicPeripheralMbx3;
  for (dif_mbx_irq_t irq = kDifMbxIrqMbxReady; irq <= kDifMbxIrqMbxError;
       ++irq) {
    mbx_irq_expected = irq;
    LOG_INFO("Triggering mbx3 IRQ %d.", irq);
    CHECK_DIF_OK(dif_mbx_irq_force(&mbx3, irq, true));

    // This avoids a race where *irq_serviced is read before
    // entering the ISR.
    IBEX_SPIN_FOR(mbx_irq_serviced == irq, 1);
    LOG_INFO("IRQ %d from mbx3 is serviced.", irq);
  }
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 2 && 2 < TEST_MAX_IRQ_PERIPHERAL
  peripheral_expected = kTopMioPlicPeripheralMbx4;
  for (dif_mbx_irq_t irq = kDifMbxIrqMbxReady; irq <= kDifMbxIrqMbxError;
       ++irq) {
    mbx_irq_expected = irq;
    LOG_INFO("Triggering mbx4 IRQ %d.", irq);
    CHECK_DIF_OK(dif_mbx_irq_force(&mbx4, irq, true));

    // This avoids a race where *irq_serviced is read before
    // entering the ISR.
    IBEX_SPIN_FOR(mbx_irq_serviced == irq, 1);
    LOG_INFO("IRQ %d from mbx4 is serviced.", irq);
  }
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 2 && 2 < TEST_MAX_IRQ_PERIPHERAL
  peripheral_expected = kTopMioPlicPeripheralMbx5;
  for (dif_mbx_irq_t irq = kDifMbxIrqMbxReady; irq <= kDifMbxIrqMbxError;
       ++irq) {
    mbx_irq_expected = irq;
    LOG_INFO("Triggering mbx5 IRQ %d.", irq);
    CHECK_DIF_OK(dif_mbx_irq_force(&mbx5, irq, true));

    // This avoids a race where *irq_serviced is read before
    // entering the ISR.
    IBEX_SPIN_FOR(mbx_irq_serviced == irq, 1);
    LOG_INFO("IRQ %d from mbx5 is serviced.", irq);
  }
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 2 && 2 < TEST_MAX_IRQ_PERIPHERAL
  peripheral_expected = kTopMioPlicPeripheralMbxPcie0;
  for (dif_mbx_irq_t irq = kDifMbxIrqMbxReady; irq <= kDifMbxIrqMbxError;
       ++irq) {
    mbx_irq_expected = irq;
    LOG_INFO("Triggering mbx_pcie0 IRQ %d.", irq);
    CHECK_DIF_OK(dif_mbx_irq_force(&mbx_pcie0, irq, true));

    // This avoids a race where *irq_serviced is read before
    // entering the ISR.
    IBEX_SPIN_FOR(mbx_irq_serviced == irq, 1);
    LOG_INFO("IRQ %d from mbx_pcie0 is serviced.", irq);
  }
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 3 && 3 < TEST_MAX_IRQ_PERIPHERAL
  peripheral_expected = kTopMioPlicPeripheralRvTimer;
  for (dif_rv_timer_irq_t irq = kDifRvTimerIrqTimerExpiredHart0Timer0; irq <= kDifRvTimerIrqTimerExpiredHart0Timer0;
       ++irq) {
    rv_timer_irq_expected = irq;
    LOG_INFO("Triggering rv_timer IRQ %d.", irq);
    CHECK_DIF_OK(dif_rv_timer_irq_force(&rv_timer, irq, true));

    // This avoids a race where *irq_serviced is read before
    // entering the ISR.
    IBEX_SPIN_FOR(rv_timer_irq_serviced == irq, 1);
    LOG_INFO("IRQ %d from rv_timer is serviced.", irq);
  }
#endif

#if TEST_MIN_IRQ_PERIPHERAL <= 4 && 4 < TEST_MAX_IRQ_PERIPHERAL
  peripheral_expected = kTopMioPlicPeripheralSocProxy;
  for (dif_mio_soc_proxy_irq_t irq = kDifMioSocProxyIrqExternal0; irq <= kDifMioSocProxyIrqExternal31;
       ++irq) {
    mio_soc_proxy_irq_expected = irq;
    LOG_INFO("Triggering soc_proxy IRQ %d.", irq);
    CHECK_DIF_OK(dif_mio_soc_proxy_irq_force(&soc_proxy, irq, true));

    // This avoids a race where *irq_serviced is read before
    // entering the ISR.
    IBEX_SPIN_FOR(mio_soc_proxy_irq_serviced == irq, 1);
    LOG_INFO("IRQ %d from soc_proxy is serviced.", irq);
  }
#endif
}

/**
 * Checks that the target ID corresponds to the ID of the hart on which
 * this test is executed on. This check is meant to be used in a
 * single-hart system only.
 */
static void check_hart_id(uint32_t exp_hart_id) {
  uint32_t act_hart_id;
  CSR_READ(CSR_REG_MHARTID, &act_hart_id);
  CHECK(act_hart_id == exp_hart_id, "Processor has unexpected HART ID.");
}

OTTF_DEFINE_TEST_CONFIG();

bool test_main(void) {
  irq_global_ctrl(true);
  irq_external_ctrl(true);
  peripherals_init();
  check_hart_id((uint32_t)kHart);
  rv_plic_testutils_irq_range_enable(
      &plic, kHart, kTopMioPlicIrqIdNone + 1, kTopMioPlicIrqIdLast);
  peripheral_irqs_clear();
  peripheral_irqs_enable();
  peripheral_irqs_trigger();
  return true;
}

// clang-format on
