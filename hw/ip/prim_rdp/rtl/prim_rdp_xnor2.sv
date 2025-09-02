// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

`include "prim_assert.sv"

module prim_rdp_xnor2 #(
  parameter int Width = 1
) (
  input        [Width-1:0] in0_i,
  input        [Width-1:0] in1_i,
  output logic [Width-1:0] out_o
);

import rdplib_pkg::*;

RDP_GATE_XNOR2
  #(
    .WIDTH (Width),
    .STATUS(SIZE_ONLY)
  )
  prim_xnor
  (
    .A1(in0_i),
    .A2(in1_i),
    .Z (out_o)
  );

endmodule
