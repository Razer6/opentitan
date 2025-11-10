// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// prim_alert_to_diff: This module receives an alert signal (using the alert protocol) and
// translates it into a differentially encoded signal (without the alert protocol).
// It also handles integrity errors from the alert receiver, treating them as alerts.
//
// IMPORTANT: This primitive is NOT intended to be used in OpenTitan top-level designs.
// In top-level designs, prim_alert_{sender,receiver} pairs should be used instead.
// The intended use case of this primitive is to signal an alert through a differential
// encoding (for minimal integrity protection) to modules that do not support
// OpenTitan's alert protocol.

`include "prim_assert.sv"

module prim_alert_to_diff #(
  // AsyncOn: Enables additional synchronization logic within the alert receiver.
  parameter bit AsyncOn = 1'b0,
  // Number of cycles a differential skew is tolerated on the alert signal
  parameter int unsigned SkewCycles = 1,
  // Number of cycles to stretch the outgoing alert signal
  parameter int unsigned StretchCycles = 8
) (
  input logic                       clk_i,
  input logic                       rst_ni,
  // Alert pair (interface signals for the alert protocol)
  output prim_alert_pkg::alert_rx_t alert_rx_o,
  input  prim_alert_pkg::alert_tx_t alert_tx_i,
  // Output diff pair (differentially encoded alert signal)
  output logic                      diff_po,
  output logic                      diff_no
);
  // Ensure StretchCycles is greater than 0 for shift register
  `ASSERT_INIT(StretchCycles_A, StretchCycles > 0);

  logic integ_error;
  logic alert;

  // u_prim_alert_receiver: Instantiates the alert receiver module.
  prim_alert_receiver #(
    .AsyncOn(AsyncOn),
    .SkewCycles(SkewCycles)
  ) u_prim_alert_receiver (
    .clk_i,
    .rst_ni,
    .init_trig_i  (prim_mubi_pkg::MuBi4False),
    .ping_req_i   (1'b0),
    .ping_ok_o    (),
    .integ_fail_o (integ_error),
    .alert_o      (alert),
    .alert_rx_o,
    .alert_tx_i
  );

  // Combines the decoded alert and the integrity error signal.
  // An alert is triggered if either a valid alert is received or an integrity error occurs.
  logic combined_alert;
  assign combined_alert = integ_error | alert;

  // Logic to stretch the combined_alert signal using a shift register.
  logic [StretchCycles-1:0] stretch_sr_d, stretch_sr_q;
  logic combined_alert_stretched;

  assign stretch_sr_d = {stretch_sr_q[StretchCycles-2:0], combined_alert};

  prim_flop #(
    .Width(StretchCycles),
    .ResetValue('0)
  ) u_stretch_flop (
    .clk_i,
    .rst_ni,
    .d_i(stretch_sr_d),
    .q_o(stretch_sr_q)
  );

  // The stretched output is high if a new alert just came OR any bit in the register is high.
  assign combined_alert_stretched = |stretch_sr_q | combined_alert;

  // Instantiates the differential encoder module.
  prim_diff_encode u_prim_diff_encode (
    .clk_i,
    .rst_ni,
    .req_i(combined_alert_stretched),
    .diff_po,
    .diff_no
  );
endmodule
// Local Variables:
// fill-column:1
// verilog-auto-arg-sort:t
// verilog-typedef-regexp: "_[etu]$"
// End:
