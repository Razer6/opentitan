// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

`include "prim_assert.sv"

module prim_rdp_sync_cell #(
  parameter int               Width      = 1,
  parameter logic [Width-1:0] ResetValue = 0
) (
  input                    clk_i,
  input                    rst_ni,
  input        [Width-1:0] d_i,
  output logic [Width-1:0] q_o
);
  import rdplib_pkg::*;

generate
  for(genvar g_i = 0; g_i < Width; g_i++) begin : gen_rdp_gate_sync_cell
    RDP_SYNC
    #(
      .RST_VALUE(ResetValue[g_i])
    )
    u_sync_cell
    (
      .clk      (clk_i),      ///< posedge triggered clock
      .rst_l    (rst_ni),    ///< active low async reset
      .async_in (d_i[g_i]), ///< signal to be synchronized

      .sync_out (q_o[g_i])  ///< q-output
    );
  end
endgenerate

endmodule
