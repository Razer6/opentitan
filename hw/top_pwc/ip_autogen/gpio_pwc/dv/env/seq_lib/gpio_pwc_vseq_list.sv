// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

`include "gpio_pwc_base_vseq.sv"
`include "gpio_pwc_smoke_vseq.sv"
`include "gpio_pwc_common_vseq.sv"
`include "gpio_pwc_random_dout_din_vseq.sv"
`include "gpio_pwc_dout_din_regs_random_rw_vseq.sv"
`include "gpio_pwc_intr_rand_pgm_vseq.sv"
`include "gpio_pwc_rand_intr_trigger_vseq.sv"
`include "gpio_pwc_intr_with_filter_rand_intr_event_vseq.sv"
`include "gpio_pwc_filter_stress_vseq.sv"
`include "gpio_pwc_random_long_reg_writes_reg_reads_vseq.sv"
`include "gpio_pwc_full_random_vseq.sv"
`include "gpio_pwc_stress_all_vseq.sv"
`include "gpio_pwc_rand_straps_vseq.sv"
