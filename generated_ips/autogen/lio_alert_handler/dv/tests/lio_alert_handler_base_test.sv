// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

class lio_alert_handler_base_test extends cip_base_test #(
    .ENV_T(lio_alert_handler_env),
    .CFG_T(lio_alert_handler_env_cfg)
  );

  `uvm_component_utils(lio_alert_handler_base_test)
  `uvm_component_new

  // the base class dv_base_test creates the following instances:
  // lio_alert_handler_env_cfg: cfg
  // lio_alert_handler_env:     env

  // the base class also looks up UVM_TEST_SEQ plusarg to create and run that seq in
  // the run_phase; as such, nothing more needs to be done

endclass : lio_alert_handler_base_test
