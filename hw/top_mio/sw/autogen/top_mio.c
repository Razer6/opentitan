// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// ------------------- W A R N I N G: A U T O - G E N E R A T E D   C O D E !! -------------------//
// PLEASE DO NOT HAND-EDIT THIS FILE. IT HAS BEEN AUTO-GENERATED WITH THE FOLLOWING COMMAND:
// util/topgen.py -t hw/top_mio/data/top_mio.hjson
// -o hw/top_mio

#include "hw/top_mio/sw/autogen/top_mio.h"

/**
 * PLIC Interrupt Source to Peripheral Map
 *
 * This array is a mapping from `top_mio_plic_mio_irq_id_t` to
 * `top_mio_plic_mio_peripheral_t`.
 */
const top_mio_plic_mio_peripheral_t
    top_mio_plic_mio_interrupt_for_peripheral[37] = {
  [kTopMioPlicMioIrqIdNone] = kTopMioPlicMioPeripheralUnknown,
  [kTopMioPlicMioIrqIdRvTimerTimerExpiredHart0Timer0] = kTopMioPlicMioPeripheralRvTimer,
  [kTopMioPlicMioIrqIdAonTimerAonWkupTimerExpired] = kTopMioPlicMioPeripheralAonTimerAon,
  [kTopMioPlicMioIrqIdAonTimerAonWdogTimerBark] = kTopMioPlicMioPeripheralAonTimerAon,
  [kTopMioPlicMioIrqIdDmaDmaDone] = kTopMioPlicMioPeripheralDma,
  [kTopMioPlicMioIrqIdDmaDmaChunkDone] = kTopMioPlicMioPeripheralDma,
  [kTopMioPlicMioIrqIdDmaDmaError] = kTopMioPlicMioPeripheralDma,
  [kTopMioPlicMioIrqIdMbx0MbxReady] = kTopMioPlicMioPeripheralMbx0,
  [kTopMioPlicMioIrqIdMbx0MbxAbort] = kTopMioPlicMioPeripheralMbx0,
  [kTopMioPlicMioIrqIdMbx0MbxError] = kTopMioPlicMioPeripheralMbx0,
  [kTopMioPlicMioIrqIdMbx1MbxReady] = kTopMioPlicMioPeripheralMbx1,
  [kTopMioPlicMioIrqIdMbx1MbxAbort] = kTopMioPlicMioPeripheralMbx1,
  [kTopMioPlicMioIrqIdMbx1MbxError] = kTopMioPlicMioPeripheralMbx1,
  [kTopMioPlicMioIrqIdMbx2MbxReady] = kTopMioPlicMioPeripheralMbx2,
  [kTopMioPlicMioIrqIdMbx2MbxAbort] = kTopMioPlicMioPeripheralMbx2,
  [kTopMioPlicMioIrqIdMbx2MbxError] = kTopMioPlicMioPeripheralMbx2,
  [kTopMioPlicMioIrqIdMbx3MbxReady] = kTopMioPlicMioPeripheralMbx3,
  [kTopMioPlicMioIrqIdMbx3MbxAbort] = kTopMioPlicMioPeripheralMbx3,
  [kTopMioPlicMioIrqIdMbx3MbxError] = kTopMioPlicMioPeripheralMbx3,
  [kTopMioPlicMioIrqIdMbx4MbxReady] = kTopMioPlicMioPeripheralMbx4,
  [kTopMioPlicMioIrqIdMbx4MbxAbort] = kTopMioPlicMioPeripheralMbx4,
  [kTopMioPlicMioIrqIdMbx4MbxError] = kTopMioPlicMioPeripheralMbx4,
  [kTopMioPlicMioIrqIdMbx5MbxReady] = kTopMioPlicMioPeripheralMbx5,
  [kTopMioPlicMioIrqIdMbx5MbxAbort] = kTopMioPlicMioPeripheralMbx5,
  [kTopMioPlicMioIrqIdMbx5MbxError] = kTopMioPlicMioPeripheralMbx5,
  [kTopMioPlicMioIrqIdMbxPcie0MbxReady] = kTopMioPlicMioPeripheralMbxPcie0,
  [kTopMioPlicMioIrqIdMbxPcie0MbxAbort] = kTopMioPlicMioPeripheralMbxPcie0,
  [kTopMioPlicMioIrqIdMbxPcie0MbxError] = kTopMioPlicMioPeripheralMbxPcie0,
  [kTopMioPlicMioIrqIdMioHdrIpiFromMio0] = kTopMioPlicMioPeripheralUnknown,
  [kTopMioPlicMioIrqIdMioHdrIpiFromMio1] = kTopMioPlicMioPeripheralUnknown,
  [kTopMioPlicMioIrqIdMioHdrIpiFromMio2] = kTopMioPlicMioPeripheralUnknown,
  [kTopMioPlicMioIrqIdMioHdrIpiFromRot] = kTopMioPlicMioPeripheralUnknown,
  [kTopMioPlicMioIrqIdMioHdrIpiFromPwc] = kTopMioPlicMioPeripheralUnknown,
  [kTopMioPlicMioIrqIdMioHdrIpiFromDuc] = kTopMioPlicMioPeripheralUnknown,
  [kTopMioPlicMioIrqIdLioGrpAIbexIrq] = kTopMioPlicMioPeripheralUnknown,
  [kTopMioPlicMioIrqIdLioGrpBIbexIrq] = kTopMioPlicMioPeripheralUnknown,
  [kTopMioPlicMioIrqIdLioGrpCIbexIrq] = kTopMioPlicMioPeripheralUnknown,
};
