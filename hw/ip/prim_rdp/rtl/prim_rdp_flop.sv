// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

`include "prim_assert.sv"

module prim_rdp_flop #(
  parameter int               Width      = 1,
  // Depth of the flop, used for pipelining. Values >= 1 lead to the corresponding number of flop
  // stages, connected in series. Values < 1 lead `q_o` to be directly connected to `d_i`.
  parameter int               Depth      = 1,
  parameter logic [Width-1:0] ResetValue = 0
) (
  input                    clk_i,
  input                    rst_ni,
  input        [Width-1:0] d_i,
  output logic [Width-1:0] q_o
);

  import rdplib_pkg::*;

  if (Depth <= 0) begin : gen_fallthrough
    assign q_o = d_i;

    logic unused_signals;
    assign unused_signals = ^{clk_i, rst_ni};
  end else begin : gen_flops
    logic [Depth-1:0][Width-1:0] d, q;

    // Connect D of first flop to input.
    assign d[0] = d_i;

    // Connect Q of last flop to output.
    assign q_o = q[Depth-1];

    for (genvar j = 0; j < Depth; j++) begin : gen_depth
      for(genvar i = 0; i < Width; i++) begin : gen_rdp_gate_aff
        if(ResetValue[i]) begin : gen_pos_reset
          RDP_GATE_AFFS
            #(
              .STATUS(SIZE_ONLY)
            )
            prim_aff
            (
              .clk   (clk_i),      ///< posedge triggered clock
              .rst_l (rst_ni),     ///< active low async reset
              //
              .d     (d[j][i]),   ///< d-input
              .si    (1'b0),       ///< scan-in (typically 1'b0)
              .se    (1'b0),       ///< scan-enable (typically 1'b0)
              .q     (q[j][i])    ///< q-output
            );
        end
        else begin : gen_neg_reset
          RDP_GATE_AFFR
            #(
              .STATUS(SIZE_ONLY)
            )
            prim_aff
            (
              .clk   (clk_i),      ///< posedge triggered clock
              .rst_l (rst_ni),     ///< active low async reset
              //
              .d     (d[j][i]),   ///< d-input
              .si    (1'b0),       ///< scan-in (typically 1'b0)
              .se    (1'b0),       ///< scan-enable (typically 1'b0)
              .q     (q[j][i])    ///< q-output
            );
        end
      end

      if (j > 0) begin : gen_connect_d
        // Connect D of current flop to Q of previous flop.
        assign d[j] = q[j-1];
      end
    end
  end

endmodule
