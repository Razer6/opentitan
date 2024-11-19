// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

`include "prim_assert.sv"

module prim_rdp_and2 #(
  parameter int Width = 1
) (
  input        [Width-1:0] in0_i,
  input        [Width-1:0] in1_i,
  output logic [Width-1:0] out_o
);

import rdplib_pkg::*;

logic [Width-1:0] out_n;

RDP_GATE_NAND2
#(
  .WIDTH (Width),
  .STATUS(SIZE_ONLY)
)
nand2_prim
(
  .A1(in0_i),
  .A2(in1_i),
  .Z (out_n)
);

RDP_GATE_INV
#(
  .WIDTH (Width),
  .STATUS(SIZE_ONLY)
)
inv_prim
(
  .I(out_n),
  .Z(out_o)
);

endmodule
