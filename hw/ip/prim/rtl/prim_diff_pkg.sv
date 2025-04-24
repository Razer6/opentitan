// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

package prim_diff_pkg;

  // Struct for a differentially encoded signal
  typedef struct packed {
    logic p;
    logic n;
  } diff_t;

  // Default zero-parameter for a differentially encoded signal
  parameter diff_t DIFF_DEFAULT = '{
    p: 1'b0,
    n: 1'b1
  };

endpackage
// Local Variables:
// fill-column:1
// verilog-auto-arg-sort:t
// verilog-typedef-regexp: "_[etu]$"
// End:
