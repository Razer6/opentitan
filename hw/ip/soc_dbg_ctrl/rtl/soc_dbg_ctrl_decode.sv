// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

module soc_dbg_ctrl_decode #(
  parameter bit SyncDbgPolicy   = 1'b0,
  parameter bit SampleValidOnce = 1'b0
) (
  input  logic                              clk_i,
  input  logic                              rst_ni,
  input  soc_dbg_ctrl_pkg::soc_dbg_policy_t soc_dbg_policy_bus_i,
  // Decoded signals
  output logic                              relocked_o,
  output logic                              cat2_dbg_o,
  output logic                              cat3_dbg_o,
  output logic                              cat4_dbg_o
);

  ///////////////////////////////////////////////////////////////////////////////
  // Optional Synchronization + Sampling authentication state
  ///////////////////////////////////////////////////////////////////////////////

  prim_mubi_pkg::mubi4_t valid_sync, relocked_sync;

  if (SyncDbgPolicy) begin : gen_dbg_policy_sync
    prim_flop_2sync #(
      .Width      ( prim_mubi_pkg::MuBi4Width   ),
      .ResetValue ( {prim_mubi_pkg::MuBi4False} )
    ) u_sync_valid (
      .clk_i  ( clk_i                      ),
      .rst_ni ( rst_ni                     ),
      .d_i    ( soc_dbg_policy_bus_i.valid ),
      .q_o    ( {valid_sync}               )
    );

    prim_flop_2sync #(
      .Width      ( prim_mubi_pkg::MuBi4Width   ),
      .ResetValue ( {prim_mubi_pkg::MuBi4False} )
    ) u_sync_relocked (
      .clk_i  ( clk_i                         ),
      .rst_ni ( rst_ni                        ),
      .d_i    ( soc_dbg_policy_bus_i.relocked ),
      .q_o    ( {relocked_sync}               )
    );
  end else begin: gen_dbg_policy_async
    assign valid_sync    = soc_dbg_policy_bus_i.valid;
    assign relocked_sync = soc_dbg_policy_bus_i.relocked;
  end

  logic valid_sample;
  assign valid_sample = prim_mubi_pkg::mubi4_test_true_strict(valid_sync);

  logic valid_rising;
  // Determine the rising edge of valid to latch the debug policy
  if (SampleValidOnce) begin : gen_sample_valid_once
    prim_edge_detector u_rising_valid (
      .clk_i             ( clk_i        ),
      .rst_ni            ( rst_ni       ),
      .d_i               ( valid_sample ),
      .q_sync_o          (              ),
      .q_posedge_pulse_o ( valid_rising ),
      .q_negedge_pulse_o (              )
    );
  end else begin : gen_sample_valid_every_cycle
    // Sample valid every cycle that valid is asserted when using a special CDC structure
    assign valid_rising = valid_sample;
  end

  // Sample the debug policy and the relocked signal on the rising edge of valid
  prim_mubi_pkg::mubi4_t relocked_q;


  prim_flop_en #(
    .Width      ( prim_mubi_pkg::MuBi4Width   ),
    .ResetValue ( {prim_mubi_pkg::MuBi4False} )
  ) u_delay_relock (
    .clk_i  ( clk_i         ),
    .rst_ni ( rst_ni        ),
    .en_i   ( valid_rising  ),
    .d_i    ( relocked_sync ),
    .q_o    ( {relocked_q}  )
  );

  logic relocked_decoded, relocked_decoded_q;
  assign relocked_decoded   = prim_mubi_pkg::mubi4_test_true_strict(relocked_sync);
  assign relocked_decoded_q = prim_mubi_pkg::mubi4_test_true_strict(relocked_q);

  ///////////////////////////////////////////////////////////////////////////////
  // Decode and register outputs (ECO: make cat3 sticky)
  ///////////////////////////////////////////////////////////////////////////////

  logic cat2_dbg_d, cat2_dbg_q;
  logic cat3_dbg_d, cat3_dbg_q;
  logic cat4_dbg_d, cat4_dbg_q;

  // Decode logic
  assign cat4_dbg_d = soc_dbg_policy_bus_i.category == soc_dbg_ctrl_pkg::DbgCategory4;
  assign cat2_dbg_d = (soc_dbg_policy_bus_i.category == soc_dbg_ctrl_pkg::DbgCategory4 |
                       soc_dbg_policy_bus_i.category == soc_dbg_ctrl_pkg::DbgCategory3 |
                       soc_dbg_policy_bus_i.category == soc_dbg_ctrl_pkg::DbgCategory2);

  // RVSDS-4244 ECO: Make cat3 sticky by moving ~relocked condition to flop input
  // Once CAT3 is asserted, it stays asserted until relocked to avoid scan modifying the debug
  // policy.
  assign cat3_dbg_d = cat3_dbg_q |
                      ((soc_dbg_policy_bus_i.category == soc_dbg_ctrl_pkg::DbgCategory4 |
                        soc_dbg_policy_bus_i.category == soc_dbg_ctrl_pkg::DbgCategory3) &
                       ~relocked_decoded);

  // Register outputs
  prim_flop_en #(
    .Width      ( 1    ),
    .ResetValue ( 1'b0 )
  ) u_cat2_dbg_flop (
    .clk_i  ( clk_i        ),
    .rst_ni ( rst_ni       ),
    .en_i   ( valid_rising ),
    .d_i    ( cat2_dbg_d   ),
    .q_o    ( cat2_dbg_q   )
  );

  prim_flop_en #(
    .Width      ( 1    ),
    .ResetValue ( 1'b0 )
  ) u_cat3_dbg_flop (
    .clk_i  ( clk_i        ),
    .rst_ni ( rst_ni       ),
    .en_i   ( valid_rising ),
    .d_i    ( cat3_dbg_d   ),
    .q_o    ( cat3_dbg_q   )
  );

  prim_flop_en #(
    .Width      ( 1    ),
    .ResetValue ( 1'b0 )
  ) u_cat4_dbg_flop (
    .clk_i  ( clk_i        ),
    .rst_ni ( rst_ni       ),
    .en_i   ( valid_rising ),
    .d_i    ( cat4_dbg_d   ),
    .q_o    ( cat4_dbg_q   )
  );

  // Output the decoded logic
  assign relocked_o = relocked_decoded_q;
  assign cat4_dbg_o = cat4_dbg_q;
  // ECO: cat3 is already qualified with ~relocked in the flop input
  assign cat3_dbg_o = cat3_dbg_q;
  // cat2 needs to be qualified with ~relocked at output
  assign cat2_dbg_o = cat2_dbg_q && ~relocked_decoded_q;

endmodule
