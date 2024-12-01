// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
${gencmd}

package top_racl_pkg;
  // Number of RACL policies used
  parameter int unsigned NrRaclPolicies = ${racl_config['nr_policies']};

  // RACL role type binary encoded
  typedef logic [3:0] racl_rolt_t;

  // RACL permission and one-hot encoded role vector
  typedef logic [2**$bits(racl_rolt_t)] racl_role_vec_t;

  // RACL policy vector containing a read and write permission
  typedef struct packed {
    racl_role_vec_t read_perm;
    racl_role_vec_t write_perm;
  } racl_policy_t;

  // RACL policy vector for distributing RACL policies from the RACL widget to the subscribing IP
  typedef racl_policy_t [NrRaclPolicies] racl_policy_vec_t;

  // RACL information logged in case of a denial
  typedef struct packed {
    racl_rolt_t racl_role;
    // 0: Write access, 1: Read access
    logic       write_read;
  } racl_error_log_t;

  // Extract RACL role bits from the TLUL reserved user bits
  function racl_rolt_t tlul_extract_racl_bits(tl_a_user_t tl_req_user);
    racl_rolt_t out;
    out = tl_req_user.rsvd[3:0];
    return out;
  endfunction

% for racl_group, policies in racl_config['policies'].items():
<% prefix = "" if len(racl_config['policies'].keys()) == 1 else f"{racl_group.upper()}_" %>\
  /**
   * Policies for group ${racl_group}
   */

  % for policy in policies:
  /*
   * Policy ${policy['name']} allowed READ roles:
   *   ${', '.join(policy['allowed_wr'])}
   */
  parameter racl_policy_t RACL_POLICY_${prefix}${policy['name'].upper()}_RD_DEFAULT = 16'h${f'{policy['rd_default']:x}'};

  /**
   * Policy ${policy['name']} allowed WRITE roles:
   *   ${', '.join(policy['allowed_wr'])}
   */
  parameter racl_policy_t RACL_POLICY_${prefix}${policy['name'].upper()}_WR_DEFAULT = 16'h${f'{policy['wr_default']:x}'};

  % endfor
% endfor

% for m in modules:
  % if m.get('racl_mapping', False):
    % for reg_if, mapping in m['racl_mapping']['reg_policy_mapping'].items():
  /**
   * RACL mapping for instance: ${m['name]}
   */
  parameter int unsigned RACL_POLICY_MAPPING_${m['name'].upper()}_${reg_if.upper()}[${len(mapping)}] = ${gen_racl_polic_sel_vec(m, mapping, name_to_block)};
    % endfor 
    % for reg_if, mapping in m['racl_mapping']['reg_window_policy_mapping'].items():
    % endfor
  % endif
% endfor

endpackage
