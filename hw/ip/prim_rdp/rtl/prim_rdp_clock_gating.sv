// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// Common Library: Clock Gating cell
//
// The logic assumes that en_i is synchronized (so the instantiation site might need to put a
// synchronizer before en_i).

module prim_rdp_clock_gating #(
  parameter bit NoFpgaGate = 1'b0, // this parameter has no function in rdp
  parameter bit FpgaBufGlobal = 1'b1 // this parameter has no function in rdp
) (
  input        clk_i,
  input        en_i,
  input        test_en_i,
  output logic clk_o
);

import rdplib_pkg::*;

RDP_GATE_CKG
#(
  .STATUS(SIZE_ONLY)
)
ckg_prim
(
  .clkin (clk_i),
  .en    (en_i),
  .tston (test_en_i),
  .clkout(clk_o)
);

endmodule
