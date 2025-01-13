// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// Binds LIO_ALERT_HANDLER functional coverage interafaces to the top level LIO_ALERT_HANDLER module.

module lio_alert_handler_cov_bind;
  import lio_alert_handler_pkg::*;

  bind lio_alert_handler cip_mubi_cov_wrapper#(.NumMubis(NLpg)) u_lpg_cg_en_cov_if (
    .rst_ni (rst_ni),
    .mubis  (lpg_cg_en_i)
  );

  bind lio_alert_handler cip_mubi_cov_wrapper#(.NumMubis(NLpg)) u_lpg_rst_en_cov_if (
    .rst_ni (rst_ni),
    .mubis  (lpg_rst_en_i)
  );
endmodule : lio_alert_handler_cov_bind
