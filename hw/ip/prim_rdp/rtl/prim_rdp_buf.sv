// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

`include "prim_assert.sv"

module prim_rdp_buf #(
  parameter int Width = 1
) (
  input        [Width-1:0] in_i,
  output logic [Width-1:0] out_o
);

import rdplib_pkg::*;

RDP_GATE_BUF
#(
  .WIDTH (Width),
  .STATUS(SIZE_ONLY)
)
buf_prim
(
  .I(in_i),
  .Z(out_o)
);

endmodule
