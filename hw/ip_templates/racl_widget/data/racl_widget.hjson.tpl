// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

# RACL widet register template
#
{
  name:               "racl_widget",
  human_name:         "RACL Widget",
  one_line_desc:      "Controls the on-chip reset signals, records reset cause and CPU crash dump for software",
  one_paragraph_desc: '''
  This IP implements the RACL policy permission widget that get distributed to all IPs that subscribe to RACL.
  '''
  // Unique comportable IP identifier defined under KNOWN_CIP_IDS in the regtool.
  cip_id:             "43",
  design_spec:        "../doc",
  dv_doc:             "../doc/dv",
  hw_checklist:       "../doc/checklist",
  sw_checklist:       "/sw/device/lib/dif/dif_rstmgr",
  revisions: [
    {
      version:            "1.0.0",
      life_stage:         "L1",
      design_stage:       "D1",
      verification_stage: "V0",
      dif_stage:          "S0",
    }
  ]
  clocking: [
    {clock: "clk_i", reset: "rst_ni"},
  ]
  bus_interfaces: [
    { protocol: "tlul", direction: "device" }
  ],
  alert_list: [
    { name: "recov_ctrl_update_err",
      desc: "This recoverable alert is triggered upon detecting an update error in the shadowed Control Register."
    }
    { name: "fatal_fault"
      desc: "This fatal alert is triggered when a fatal TL-UL bus integrity fault is detected or the internal counter has an error."
    }
  ],
  countermeasures: [
    { name: "BUS.INTEGRITY",
      desc: "End-to-end bus integrity scheme."
    }
  ]
  regwidth: "32",
  param_list: [
    { name: "NumPolicies",
      desc: "Number of policies",
      type: "int",
      default: "${nr_policies}",
      local: "true"
    },
    { name: "NumSubscribingIps",
      desc: "Number of subscribing RACL IPs",
      type: "int",
      default: "1",
      expose: "true"
      local: "true"
    },
  ],
  // Define rstmgr struct package
  inter_signal_list: [
    { struct:  "policies",
      type:    "uni",
      name:    "policies",
      act:     "rcv",
      package: "racl_pkg",
      desc:    '''
        Policy vector
      '''
    },
  ],

  registers: [
    { name: "ERROR_LOG"
      desc: "Error logging registers"
      swaccess: "ro"
      hwaccess: "hwo"
      hwqe: "true"
      fields: [
        { bits: "0"
          name: "error_valid"
          resval: 0x0
          swaccess: "rw1c"
          desc: '''
                Indicates a RACL error and the log register contains valid data.
                '''
        }
        { bits: "1"
          name: "overflow"
          resval: 0x0
          desc: '''
                Indicates a RACL error overflow when a RACL error occurred while the log register was set.
                '''
        }
        { bits: "2"
          name: "write_read"
          resval: 0x0
          desc: '''
                0: Write transfer was denied.
                1: Read transfer was denied.
                '''
        }
        { bits: "${3 + nr_racl_bits}:3"
          name: "role"
          resval: 0x0
          desc: '''
                RACL source issuing the error.
                '''
        }
      ]
    }
    % for policy in policies:
    { name: "POLICY_${policy['name'].upper()}"
      desc: '''
            Read and write policy for ${policy}
            '''
      swaccess: "rw"
      hwaccess: "hro"
      fields: [
        { bits: "31:16"
          name: "write_perm"
          resval: ${policy['wr_default']}
          desc: '''
                Write permission for policy ${policy}
                '''
        }
        { bits: "15:0"
          name: "read_perm"
          resval: ${policy['rd_default']}
          desc: '''
                Read permission for policy ${policy}
                '''
        }
      ]
    }
    % endfor
  ]
}
