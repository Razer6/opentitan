// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// This module is a wrapper to flop a differentially encoded signal.

module prim_diff_flop #(
  parameter int   Width       = 1,
  parameter logic ResetValueP = 1'b0
) (
  input  logic                             clk_i,
  input  logic                             rst_ni,
  input  prim_diff_pkg::diff_t [Width-1:0] diff_i,
  output prim_diff_pkg::diff_t [Width-1:0] diff_o
);

for(genvar i = 0; i < Width; i++) begin : gen_diff_flop
  prim_flop #(
    .Width      ( 1           ),
    .ResetValue ( ResetValueP )
  ) u_diff_p (
    .clk_i  ( clk_i       ),
    .rst_ni ( rst_ni      ),
    .d_i    ( diff_i[i].p ),
    .q_o    ( diff_o[i].p )
  );

  prim_flop #(
    .Width      ( 1            ),
    .ResetValue ( ~ResetValueP )
  ) u_diff_n (
    .clk_i  ( clk_i       ),
    .rst_ni ( rst_ni      ),
    .d_i    ( diff_i[i].n ),
    .q_o    ( diff_o[i].n )
  );
end

endmodule : prim_diff_flop
