// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// ------------------- W A R N I N G: A U T O - G E N E R A T E D   C O D E !! -------------------//
// PLEASE DO NOT HAND-EDIT THIS FILE. IT HAS BEEN AUTO-GENERATED WITH THE FOLLOWING COMMAND:
//
// util/topgen.py -t hw/top_darjeeling/data/top_darjeeling.hjson \
//                -o hw/top_darjeeling/ \
//                --rnd_cnst_seed \
//                1017106219537032642877583828875051302543807092889754935647094601236425074047


package top_racl_pkg;
  // Number of RACL policies used
  parameter int unsigned NrRaclPolicies = 10;

  // RACL Policy selector bits
  parameter int unsigned RaclPolicySelLen = prim_util_pkg::vbits(NrRaclPolicies);

  // RACL Policy selector type
  typedef logic [RaclPolicySelLen-1:0] racl_policy_sel_t;

  // Number of RACL bits transferred
  parameter int unsigned NrRaclBits = 4;

  // Number of CTN UID bits transferred
  parameter int unsigned NrCtnUidBits = 5;

  // RACL role type binary encoded
  typedef logic [NrRaclBits-1:0] racl_role_t;

  // CTN UID assigned the bus originator
  typedef logic [NrCtnUidBits-1:0] ctn_uid_t;

  // RACL permission: A one-hot encoded role vector
  typedef logic [(2**NrRaclBits)-1:0] racl_role_vec_t;

  // RACL policy containing a read and write permission
  typedef struct packed {
    racl_role_vec_t read_perm;
    racl_role_vec_t write_perm;
  } racl_policy_t;

  // RACL policy vector for distributing RACL policies from the RACL widget to the subscribing IP
  typedef racl_policy_t [NrRaclPolicies-1:0] racl_policy_vec_t;

  // Default policy vector for unconnected RACL IPs
  parameter racl_policy_vec_t RACL_POLICY_VEC_DEFAULT = '0;

  // Default ROT Private read policy value
  parameter racl_role_vec_t RACL_POLICY_ROT_PRIVATE_RD = 16'h60;

  // Default ROT Private write policy value
  parameter racl_role_vec_t RACL_POLICY_ROT_PRIVATE_WR = 16'h60;

  // RACL information logged in case of a denial
  typedef struct packed {
    logic       valid;        // Error information is valid
    logic       overflow;     // Error overflow, More than 1 RACL error at a time
    racl_role_t racl_role;
    ctn_uid_t   ctn_uid;
    logic       read_access;  // 0: Write access, 1: Read access
  } racl_error_log_t;

  // Range definition for RACL protected SRAM adapter
  typedef struct packed {
    logic [top_pkg::TL_AW-1:0] base;
    logic [top_pkg::TL_AW-1:0] mask;
    racl_policy_sel_t          policy_sel;
  } racl_range_t;

  // Extract RACL role bits from the TLUL reserved user bits
  function automatic racl_role_t tlul_extract_racl_role_bits(logic [tlul_pkg::RsvdWidth-1:0] rsvd);
    // Waive unused bits
    logic unused_rsvd_bits;
    unused_rsvd_bits = ^{rsvd};

    return racl_role_t'(rsvd[8:5]);
  endfunction

  // Extract CTN UID bits from the TLUL reserved user bits
  function automatic ctn_uid_t tlul_extract_ctn_uid_bits(logic [tlul_pkg::RsvdWidth-1:0] rsvd);
    // Waive unused bits
    logic unused_rsvd_bits;
    unused_rsvd_bits = ^{rsvd};

    return ctn_uid_t'(rsvd[4:0]);
  endfunction

  // Build a TLUL reserved user bit vector based on RACL role and CTN UID
  function automatic logic [tlul_pkg::RsvdWidth-1:0] tlul_build_user_rsvd_vec(racl_role_t racl_role,
                                                                              ctn_uid_t ctn_uid);
    logic [tlul_pkg::RsvdWidth-1:0] rsvd;
    rsvd = '0;
    rsvd[8:5] = racl_role;
    rsvd[4:0] = ctn_uid;
    return rsvd;
  endfunction

  /**
   * RACL Roles
   */
  parameter racl_role_t RACL_ROLE_NOT_TEE      = 4'h0;
  parameter racl_role_t RACL_ROLE_M_MODE       = 4'h1;
  parameter racl_role_t RACL_ROLE_TEE_MODE     = 4'h2;
  parameter racl_role_t RACL_ROLE_R_CODE       = 4'h3;
  parameter racl_role_t RACL_ROLE_CAT2_DEBUG   = 4'h4;
  parameter racl_role_t RACL_ROLE_CAT3_DEBUG   = 4'h5;
  parameter racl_role_t RACL_ROLE_ROT          = 4'h6;
  parameter racl_role_t RACL_ROLE_MIO          = 4'h7;
  parameter racl_role_t RACL_ROLE_PWC          = 4'h8;
  parameter racl_role_t RACL_ROLE_INT_SOC      = 4'h9;
  parameter racl_role_t RACL_ROLE_IO_AGENT     = 4'ha;
  parameter racl_role_t RACL_ROLE_TEE_IO_AGENT = 4'hb;
  parameter racl_role_t RACL_ROLE_DUC_UC       = 4'hc;
  parameter racl_role_t RACL_ROLE_MIMT_R_MODE  = 4'hd;


endpackage
