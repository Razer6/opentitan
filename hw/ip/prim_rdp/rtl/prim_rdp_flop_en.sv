// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

`include "prim_assert.sv"

module prim_rdp_flop_en #(
  parameter int               Width      = 1,
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
genvar g_i;

logic en;
logic clk;

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

RDP_GATE_CKG
  #(
    .STATUS(SIZE_ONLY)
  )
  prim_aff_gate
  (
    .clkin (clk_i),
    .en    (en),
    .tston (1'b0),
    .clkout(clk)
  );


generate
  for(g_i=0;g_i<Width;g_i++) begin : gen_rdp_gate_aff
    if(ResetValue[g_i]) begin : gen_pos_reset
      RDP_GATE_AFFS
        #(
          .STATUS(SIZE_ONLY)
        )
        prim_aff
        (
          .clk   (clk),        ///< posedge triggered clock
          .rst_l (rst_ni),     ///< active low async reset
          //
          .d     (d_i[g_i]),   ///< d-input
          .si    (1'b0),       ///< scan-in (typically 1'b0)
          .se    (1'b0),       ///< scan-enable (typically 1'b0)
          .q     (q_o[g_i])    ///< q-output
        );
    end
    else begin  : gen_neg_reset
      RDP_GATE_AFFR
        #(
          .STATUS(SIZE_ONLY)
        )
        prim_aff
        (
          .clk   (clk),        ///< posedge triggered clock
          .rst_l (rst_ni),     ///< active low async reset
          //
          .d     (d_i[g_i]),   ///< d-input
          .si    (1'b0),       ///< scan-in (typically 1'b0)
          .se    (1'b0),       ///< scan-enable (typically 1'b0)
          .q     (q_o[g_i])    ///< q-output
        );
    end
  end
endgenerate

endmodule
