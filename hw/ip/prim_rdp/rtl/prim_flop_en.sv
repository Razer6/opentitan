// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

`include "prim_assert.sv"

module prim_flop_en #(
  parameter int               Width      = 1,
  // Depth of the flop, used for pipelining. Values >= 1 lead to the corresponding number of flop
  // stages, connected in series. The `en_i` input determines when the *first* flop stage gets
  // updated, all other flop stages are updated in subsequent clock cycles as the data propagates
  // through the stages (the `en_i` input doesn't need to be high for that propagation). Parameter
  // values < 1 lead `q_o` to be directly connected to `d_i`.
  parameter int               Depth = 1,
  parameter bit               EnSecBuf   = 0,
  parameter logic [Width-1:0] ResetValue = 0
) (
  input                    clk_i,
  input                    rst_ni,
  input                    en_i,
  input        [Width-1:0] d_i,
  output logic [Width-1:0] q_o
);
  import rdplib_pkg::*;

  logic en;

  if (EnSecBuf) begin : gen_en_sec_buf
    prim_sec_anchor_buf #(
      .Width(1)
    ) u_en_buf (
      .in_i(en_i),
      .out_o(en)
    );
  end else begin : gen_en_no_sec_buf
    assign en = en_i;
  end

  if (Depth <= 0) begin : gen_fallthrough
    assign q_o = d_i;
  end else begin : gen_flops
    logic [Width-1:0] q;
    logic clk;

    RDP_GATE_CKG #(
      .STATUS(SIZE_ONLY)
    ) prim_aff_gate  (
      .clkin (clk_i),
      .en    (en),
      .tston (1'b0),
      .clkout(clk)
    );

    // The first stage uses the enabled clock to capture the data
    for(genvar i = 0; i < Width; i++) begin : gen_rdp_gate_aff
      if(ResetValue[i]) begin : gen_pos_reset
        RDP_GATE_AFFS #(
          .STATUS(SIZE_ONLY)
        ) prim_aff (
          .clk   (clk),        ///< posedge triggered clock
          .rst_l (rst_ni),     ///< active low async reset
          //
          .d     (d_i[i]),   ///< d-input
          .si    (1'b0),       ///< scan-in (typically 1'b0)
          .se    (1'b0),       ///< scan-enable (typically 1'b0)
          .q     (q[i])    ///< q-output
        );
      end else begin  : gen_neg_reset
        RDP_GATE_AFFR #(
          .STATUS(SIZE_ONLY)
        ) prim_aff (
          .clk   (clk),        ///< posedge triggered clock
          .rst_l (rst_ni),     ///< active low async reset
          //
          .d     (d_i[i]),   ///< d-input
          .si    (1'b0),       ///< scan-in (typically 1'b0)
          .se    (1'b0),       ///< scan-enable (typically 1'b0)
          .q     (q[i])    ///< q-output
        );
      end
    end

    // Later stages unconditionally propgate first stage
    prim_flop #(
      .Width      ( Width      ),
      .Depth      ( Depth - 1  ),
      .ResetValue ( ResetValue )
    ) u_flop_later_stage (
      .clk_i,
      .rst_ni,
      .d_i      (q),
      .q_o
    );
  end

endmodule
