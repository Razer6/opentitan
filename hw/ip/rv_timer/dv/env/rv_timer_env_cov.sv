// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

// We are enclosing covergroups inside class so that we can
// take avoid tool limitation of not allowing arrays of covergroup
// Refer to Issue#375 for more details
// class for wrapping timer config covergroup
class rv_timer_cfg_cov_obj extends uvm_object;
  `uvm_object_utils(rv_timer_cfg_cov_obj)

  const bit [PRESCALER_WIDTH-1:0]   max_prescaler = 2**PRESCALER_WIDTH - 1;
  const bit [STEP_WIDTH-1:0]        max_step      = 2**STEP_WIDTH - 1;
  const bit [MTIME_WIDTH-1:0]       max_mtime     = 2**MTIME_WIDTH - 1;

  // Covergroup: timer_cfg_cg
  // timer config covergroup definition
  covergroup timer_cfg_cg(string name) with function sample(bit [7:0]  step,
                                                      bit [11:0] prescale,
                                                      uint64 mtime,
                                                      uint64 mtime_cmp);
    cp_step: coverpoint step {
      bins step_0   = {0};
      bins step[16] = {[1:max_step-1]};
      bins step_max = {'1};
    }
    cp_prescale: coverpoint prescale {
      bins prescale_0   = {0};
      bins prescale[16] = {[1:max_prescaler-1]};
      bins prescale_max = {'1};
    }
    cp_mtime: coverpoint mtime {
      bins mtime_0   = {0};
      bins mtime[16] = {[1:max_mtime-1]};
      bins mtime_max = {'1};
    }
    cp_mtime_cmp: coverpoint mtime_cmp {
      bins mtime_cmp_0 = {0};
      bins mtime_cmp[16] = {[1:max_mtime-1]};
      bins mtime_cmp_max = {'1};
    }
  endgroup : timer_cfg_cg

  function new(string name = "");
    super.new(name);
    timer_cfg_cg = new(name);
  endfunction : new
endclass : rv_timer_cfg_cov_obj

// class for wrapping all timers active in one Hart covergroup
class rv_timer_ctrl_reg_cov_obj extends uvm_object;
  `uvm_object_utils(rv_timer_ctrl_reg_cov_obj)

  // Covergroup: timer_active_cg
  // all timer in one hart covergroup definition
  covergroup timer_active_cg(string name) with function sample(bit [31:0] value);
    cp_active_timers: coverpoint value {
      bins all_timers_active[] = {{NUM_TIMERS{1'b1}}};
    }
  endgroup : timer_active_cg

  function new(string name = "");
    super.new(name);
    timer_active_cg = new(name);
  endfunction : new
endclass : rv_timer_ctrl_reg_cov_obj

class rv_timer_env_cov extends cip_base_env_cov #(.CFG_T(rv_timer_env_cfg));
  `uvm_component_utils(rv_timer_env_cov)

  rv_timer_cfg_cov_obj      cfg_values_cov_obj[NUM_HARTS*NUM_TIMERS];
  rv_timer_ctrl_reg_cov_obj ctrl_reg_cov_obj[NUM_HARTS];
  bit_toggle_cg_wrap        rv_timer_prescale_values_cov_obj[NUM_HARTS][12];

  function new(string name, uvm_component parent);
    super.new(name, parent);
    //Create cfg coverage for each timer
    foreach (cfg_values_cov_obj[timer]) begin
      cfg_values_cov_obj[timer] = rv_timer_cfg_cov_obj::type_id::create($sformatf("rv_timer-%0d",
                                                                                  timer));
      sticky_intr_cov[{"rv_timer_sticky_intr_pin", $sformatf("%0d", timer)}] =
            new(.name({"rv_timer_sticky_intr_pin", $sformatf("%0d", timer)}), .toggle_cov_en(0));
    end
    //Create toggle coverage for each prescale bit
    foreach (rv_timer_prescale_values_cov_obj[timer, bit_num]) begin
      rv_timer_prescale_values_cov_obj[timer][bit_num] = new($sformatf("rv_timer-%0d-prescale-%0d",
                                                                       timer, bit_num));
    end
    //Create all timers active coverage for each hart
    foreach (ctrl_reg_cov_obj[hart]) begin
      ctrl_reg_cov_obj[hart] =
        rv_timer_ctrl_reg_cov_obj::type_id::create($sformatf("hart_%0d_all_timer_active", hart));
    end
  endfunction : new

endclass
