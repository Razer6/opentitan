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
 * This array is a mapping from `top_mio_plic_irq_id_t` to
 * `top_mio_plic_peripheral_t`.
 */
const top_mio_plic_peripheral_t
    top_mio_plic_interrupt_for_peripheral[68] = {
  [kTopMioPlicIrqIdNone] = kTopMioPlicPeripheralUnknown,
  [kTopMioPlicIrqIdRvTimerTimerExpiredHart0Timer0] = kTopMioPlicPeripheralRvTimer,
  [kTopMioPlicIrqIdAonTimerAonWkupTimerExpired] = kTopMioPlicPeripheralAonTimerAon,
  [kTopMioPlicIrqIdAonTimerAonWdogTimerBark] = kTopMioPlicPeripheralAonTimerAon,
  [kTopMioPlicIrqIdSocProxyExternal0] = kTopMioPlicPeripheralSocProxy,
  [kTopMioPlicIrqIdSocProxyExternal1] = kTopMioPlicPeripheralSocProxy,
  [kTopMioPlicIrqIdSocProxyExternal2] = kTopMioPlicPeripheralSocProxy,
  [kTopMioPlicIrqIdSocProxyExternal3] = kTopMioPlicPeripheralSocProxy,
  [kTopMioPlicIrqIdSocProxyExternal4] = kTopMioPlicPeripheralSocProxy,
  [kTopMioPlicIrqIdSocProxyExternal5] = kTopMioPlicPeripheralSocProxy,
  [kTopMioPlicIrqIdSocProxyExternal6] = kTopMioPlicPeripheralSocProxy,
  [kTopMioPlicIrqIdSocProxyExternal7] = kTopMioPlicPeripheralSocProxy,
  [kTopMioPlicIrqIdSocProxyExternal8] = kTopMioPlicPeripheralSocProxy,
  [kTopMioPlicIrqIdSocProxyExternal9] = kTopMioPlicPeripheralSocProxy,
  [kTopMioPlicIrqIdSocProxyExternal10] = kTopMioPlicPeripheralSocProxy,
  [kTopMioPlicIrqIdSocProxyExternal11] = kTopMioPlicPeripheralSocProxy,
  [kTopMioPlicIrqIdSocProxyExternal12] = kTopMioPlicPeripheralSocProxy,
  [kTopMioPlicIrqIdSocProxyExternal13] = kTopMioPlicPeripheralSocProxy,
  [kTopMioPlicIrqIdSocProxyExternal14] = kTopMioPlicPeripheralSocProxy,
  [kTopMioPlicIrqIdSocProxyExternal15] = kTopMioPlicPeripheralSocProxy,
  [kTopMioPlicIrqIdSocProxyExternal16] = kTopMioPlicPeripheralSocProxy,
  [kTopMioPlicIrqIdSocProxyExternal17] = kTopMioPlicPeripheralSocProxy,
  [kTopMioPlicIrqIdSocProxyExternal18] = kTopMioPlicPeripheralSocProxy,
  [kTopMioPlicIrqIdSocProxyExternal19] = kTopMioPlicPeripheralSocProxy,
  [kTopMioPlicIrqIdSocProxyExternal20] = kTopMioPlicPeripheralSocProxy,
  [kTopMioPlicIrqIdSocProxyExternal21] = kTopMioPlicPeripheralSocProxy,
  [kTopMioPlicIrqIdSocProxyExternal22] = kTopMioPlicPeripheralSocProxy,
  [kTopMioPlicIrqIdSocProxyExternal23] = kTopMioPlicPeripheralSocProxy,
  [kTopMioPlicIrqIdSocProxyExternal24] = kTopMioPlicPeripheralSocProxy,
  [kTopMioPlicIrqIdSocProxyExternal25] = kTopMioPlicPeripheralSocProxy,
  [kTopMioPlicIrqIdSocProxyExternal26] = kTopMioPlicPeripheralSocProxy,
  [kTopMioPlicIrqIdSocProxyExternal27] = kTopMioPlicPeripheralSocProxy,
  [kTopMioPlicIrqIdSocProxyExternal28] = kTopMioPlicPeripheralSocProxy,
  [kTopMioPlicIrqIdSocProxyExternal29] = kTopMioPlicPeripheralSocProxy,
  [kTopMioPlicIrqIdSocProxyExternal30] = kTopMioPlicPeripheralSocProxy,
  [kTopMioPlicIrqIdSocProxyExternal31] = kTopMioPlicPeripheralSocProxy,
  [kTopMioPlicIrqIdDmaDmaDone] = kTopMioPlicPeripheralDma,
  [kTopMioPlicIrqIdDmaDmaChunkDone] = kTopMioPlicPeripheralDma,
  [kTopMioPlicIrqIdDmaDmaError] = kTopMioPlicPeripheralDma,
  [kTopMioPlicIrqIdMbx0MbxReady] = kTopMioPlicPeripheralMbx0,
  [kTopMioPlicIrqIdMbx0MbxAbort] = kTopMioPlicPeripheralMbx0,
  [kTopMioPlicIrqIdMbx0MbxError] = kTopMioPlicPeripheralMbx0,
  [kTopMioPlicIrqIdMbx1MbxReady] = kTopMioPlicPeripheralMbx1,
  [kTopMioPlicIrqIdMbx1MbxAbort] = kTopMioPlicPeripheralMbx1,
  [kTopMioPlicIrqIdMbx1MbxError] = kTopMioPlicPeripheralMbx1,
  [kTopMioPlicIrqIdMbx2MbxReady] = kTopMioPlicPeripheralMbx2,
  [kTopMioPlicIrqIdMbx2MbxAbort] = kTopMioPlicPeripheralMbx2,
  [kTopMioPlicIrqIdMbx2MbxError] = kTopMioPlicPeripheralMbx2,
  [kTopMioPlicIrqIdMbx3MbxReady] = kTopMioPlicPeripheralMbx3,
  [kTopMioPlicIrqIdMbx3MbxAbort] = kTopMioPlicPeripheralMbx3,
  [kTopMioPlicIrqIdMbx3MbxError] = kTopMioPlicPeripheralMbx3,
  [kTopMioPlicIrqIdMbx4MbxReady] = kTopMioPlicPeripheralMbx4,
  [kTopMioPlicIrqIdMbx4MbxAbort] = kTopMioPlicPeripheralMbx4,
  [kTopMioPlicIrqIdMbx4MbxError] = kTopMioPlicPeripheralMbx4,
  [kTopMioPlicIrqIdMbx5MbxReady] = kTopMioPlicPeripheralMbx5,
  [kTopMioPlicIrqIdMbx5MbxAbort] = kTopMioPlicPeripheralMbx5,
  [kTopMioPlicIrqIdMbx5MbxError] = kTopMioPlicPeripheralMbx5,
  [kTopMioPlicIrqIdMbxPcie0MbxReady] = kTopMioPlicPeripheralMbxPcie0,
  [kTopMioPlicIrqIdMbxPcie0MbxAbort] = kTopMioPlicPeripheralMbxPcie0,
  [kTopMioPlicIrqIdMbxPcie0MbxError] = kTopMioPlicPeripheralMbxPcie0,
  [kTopMioPlicIrqIdMioHdrIpiFromMio0] = kTopMioPlicPeripheralUnknown,
  [kTopMioPlicIrqIdMioHdrIpiFromMio1] = kTopMioPlicPeripheralUnknown,
  [kTopMioPlicIrqIdMioHdrIpiFromMio2] = kTopMioPlicPeripheralUnknown,
  [kTopMioPlicIrqIdMioHdrIpiFromPwc] = kTopMioPlicPeripheralUnknown,
  [kTopMioPlicIrqIdMioHdrIpiFromRot] = kTopMioPlicPeripheralUnknown,
  [kTopMioPlicIrqIdLioGrpAIbexIrq] = kTopMioPlicPeripheralUnknown,
  [kTopMioPlicIrqIdLioGrpBIbexIrq] = kTopMioPlicPeripheralUnknown,
  [kTopMioPlicIrqIdLioGrpCIbexIrq] = kTopMioPlicPeripheralUnknown,
};
