// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// ------------------- W A R N I N G: A U T O - G E N E R A T E D   C O D E !! -------------------//
// PLEASE DO NOT HAND-EDIT THIS FILE. IT HAS BEEN AUTO-GENERATED WITH THE FOLLOWING COMMAND:
//
// util/topgen.py -t hw/top_pwc/data/top_pwc.hjson \
//                -o hw/top_pwc/ \
//                --rnd_cnst_seed \
//                1017106219537032642877583828875051302543807092889754935647094601236425074047


package top_racl_pkg;
  // Number of RACL policies used
  parameter int unsigned NrRaclPolicies = 10;

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
    racl_role_t racl_role;
    ctn_uid_t   ctn_uid;
    // 0: Write access, 1: Read access
    logic       read_access;
  } racl_error_log_t;

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

  /**
   * Policies for group Null
   */

  /*
   * Policy ALL_RD_WR allowed READ roles:
   *   NOT_TEE, M_MODE, TEE_MODE, R_CODE, CAT2_DEBUG, CAT3_DEBUG, ROT, MIO, PWC, INT_SOC, IO_AGENT, TEE_IO_AGENT, DUC_UC, MIMT_R_MODE
   */
  parameter racl_role_vec_t RACL_POLICY_ALL_RD_WR_RD_DEFAULT = 16'h3fff;

  /**
   * Policy ALL_RD_WR allowed WRITE roles:
   *   NOT_TEE, M_MODE, TEE_MODE, R_CODE, CAT2_DEBUG, CAT3_DEBUG, ROT, MIO, PWC, INT_SOC, IO_AGENT, TEE_IO_AGENT, DUC_UC, MIMT_R_MODE
   */
  parameter racl_role_vec_t RACL_POLICY_ALL_RD_WR_WR_DEFAULT = 16'h3fff;

  /*
   * Policy HW_ROT_PWC_WR_ALL_RD allowed READ roles:
   *   CAT3_DEBUG, ROT, PWC, INT_SOC
   */
  parameter racl_role_vec_t RACL_POLICY_HW_ROT_PWC_WR_ALL_RD_RD_DEFAULT = 16'h3fff;

  /**
   * Policy HW_ROT_PWC_WR_ALL_RD allowed WRITE roles:
   *   CAT3_DEBUG, ROT, PWC, INT_SOC
   */
  parameter racl_role_vec_t RACL_POLICY_HW_ROT_PWC_WR_ALL_RD_WR_DEFAULT = 16'h360;

  /*
   * Policy PRE_BOOT_M allowed READ roles:
   *   M_MODE, R_CODE, CAT2_DEBUG, CAT3_DEBUG, ROT, PWC, INT_SOC
   */
  parameter racl_role_vec_t RACL_POLICY_PRE_BOOT_M_RD_DEFAULT = 16'h3ff;

  /**
   * Policy PRE_BOOT_M allowed WRITE roles:
   *   M_MODE, R_CODE, CAT2_DEBUG, CAT3_DEBUG, ROT, PWC, INT_SOC
   */
  parameter racl_role_vec_t RACL_POLICY_PRE_BOOT_M_WR_DEFAULT = 16'h37a;

  /*
   * Policy POST_BOOT_M allowed READ roles:
   *   M_MODE, R_CODE, CAT2_DEBUG, CAT3_DEBUG, ROT, PWC, INT_SOC
   */
  parameter racl_role_vec_t RACL_POLICY_POST_BOOT_M_RD_DEFAULT = 16'h3ff;

  /**
   * Policy POST_BOOT_M allowed WRITE roles:
   *   M_MODE, R_CODE, CAT2_DEBUG, CAT3_DEBUG, ROT, PWC, INT_SOC
   */
  parameter racl_role_vec_t RACL_POLICY_POST_BOOT_M_WR_DEFAULT = 16'h37a;

  /*
   * Policy TEE_LIMITED allowed READ roles:
   *   TEE_MODE, R_CODE, CAT2_DEBUG, CAT3_DEBUG, ROT, PWC, INT_SOC, TEE_IO_AGENT
   */
  parameter racl_role_vec_t RACL_POLICY_TEE_LIMITED_RD_DEFAULT = 16'hb7c;

  /**
   * Policy TEE_LIMITED allowed WRITE roles:
   *   TEE_MODE, R_CODE, CAT2_DEBUG, CAT3_DEBUG, ROT, PWC, INT_SOC, TEE_IO_AGENT
   */
  parameter racl_role_vec_t RACL_POLICY_TEE_LIMITED_WR_DEFAULT = 16'hb7c;

  /*
   * Policy RCODE_PRIVATE allowed READ roles:
   *   R_CODE, CAT3_DEBUG, ROT, PWC, INT_SOC
   */
  parameter racl_role_vec_t RACL_POLICY_RCODE_PRIVATE_RD_DEFAULT = 16'h368;

  /**
   * Policy RCODE_PRIVATE allowed WRITE roles:
   *   R_CODE, CAT3_DEBUG, ROT, PWC, INT_SOC
   */
  parameter racl_role_vec_t RACL_POLICY_RCODE_PRIVATE_WR_DEFAULT = 16'h368;

  /*
   * Policy ROT_PRIVATE allowed READ roles:
   *   CAT3_DEBUG, ROT
   */
  parameter racl_role_vec_t RACL_POLICY_ROT_PRIVATE_RD_DEFAULT = 16'h60;

  /**
   * Policy ROT_PRIVATE allowed WRITE roles:
   *   CAT3_DEBUG, ROT
   */
  parameter racl_role_vec_t RACL_POLICY_ROT_PRIVATE_WR_DEFAULT = 16'h60;

  /*
   * Policy PWC_PRIVATE allowed READ roles:
   *   CAT3_DEBUG, ROT, PWC, INT_SOC
   */
  parameter racl_role_vec_t RACL_POLICY_PWC_PRIVATE_RD_DEFAULT = 16'h360;

  /**
   * Policy PWC_PRIVATE allowed WRITE roles:
   *   CAT3_DEBUG, ROT, PWC, INT_SOC
   */
  parameter racl_role_vec_t RACL_POLICY_PWC_PRIVATE_WR_DEFAULT = 16'h360;

  /*
   * Policy MIO_PRIVATE allowed READ roles:
   *   CAT3_DEBUG, ROT, MIO, PWC, INT_SOC
   */
  parameter racl_role_vec_t RACL_POLICY_MIO_PRIVATE_RD_DEFAULT = 16'h3e0;

  /**
   * Policy MIO_PRIVATE allowed WRITE roles:
   *   CAT3_DEBUG, ROT, MIO, PWC, INT_SOC
   */
  parameter racl_role_vec_t RACL_POLICY_MIO_PRIVATE_WR_DEFAULT = 16'h3e0;

  /*
   * Policy DUC_PRIVATE allowed READ roles:
   *   CAT3_DEBUG, ROT, PWC, INT_SOC, DUC_UC, MIMT_R_MODE
   */
  parameter racl_role_vec_t RACL_POLICY_DUC_PRIVATE_RD_DEFAULT = 16'h3360;

  /**
   * Policy DUC_PRIVATE allowed WRITE roles:
   *   CAT3_DEBUG, ROT, PWC, INT_SOC, DUC_UC, MIMT_R_MODE
   */
  parameter racl_role_vec_t RACL_POLICY_DUC_PRIVATE_WR_DEFAULT = 16'h3360;


  /**
   * RACL groups:
   *   Null
   *     ALL_RD_WR            (Idx  0)
   *     HW_ROT_PWC_WR_ALL_RD (Idx  1)
   *     PRE_BOOT_M           (Idx  2)
   *     POST_BOOT_M          (Idx  3)
   *     TEE_LIMITED          (Idx  4)
   *     RCODE_PRIVATE        (Idx  5)
   *     ROT_PRIVATE          (Idx  6)
   *     PWC_PRIVATE          (Idx  7)
   *     MIO_PRIVATE          (Idx  8)
   *     DUC_PRIVATE          (Idx  9)
   */

  /**
   * Policy selection vector for mbx0
   *   TLUL interface name: soc
   *   RACL group: Null
   *   Register to policy mapping:
   *     SOC_CONTROL:           PWC_PRIVATE (Idx  7)
   *     SOC_STATUS:            PWC_PRIVATE (Idx  7)
   *     SOC_DOE_INTR_MSG_ADDR: PWC_PRIVATE (Idx  7)
   *     SOC_DOE_INTR_MSG_DATA: PWC_PRIVATE (Idx  7)
   *   Window to policy mapping:
   *     WDATA: PWC_PRIVATE (Idx  7)
   *     RDATA: PWC_PRIVATE (Idx  7)
   */
  parameter int unsigned RACL_POLICY_SEL_MBX0_SOC [4] = '{7, 7, 7, 7};
  parameter int unsigned RACL_POLICY_SEL_MBX0_SOC_WIN_WDATA = 7;
  parameter int unsigned RACL_POLICY_SEL_MBX0_SOC_WIN_RDATA = 7;

  /**
   * Policy selection vector for mbx1
   *   TLUL interface name: soc
   *   RACL group: Null
   *   Register to policy mapping:
   *     SOC_CONTROL:           PWC_PRIVATE (Idx  7)
   *     SOC_STATUS:            PWC_PRIVATE (Idx  7)
   *     SOC_DOE_INTR_MSG_ADDR: PWC_PRIVATE (Idx  7)
   *     SOC_DOE_INTR_MSG_DATA: PWC_PRIVATE (Idx  7)
   *   Window to policy mapping:
   *     WDATA: PWC_PRIVATE (Idx  7)
   *     RDATA: PWC_PRIVATE (Idx  7)
   */
  parameter int unsigned RACL_POLICY_SEL_MBX1_SOC [4] = '{7, 7, 7, 7};
  parameter int unsigned RACL_POLICY_SEL_MBX1_SOC_WIN_WDATA = 7;
  parameter int unsigned RACL_POLICY_SEL_MBX1_SOC_WIN_RDATA = 7;

  /**
   * Policy selection vector for mbx2
   *   TLUL interface name: soc
   *   RACL group: Null
   *   Register to policy mapping:
   *     SOC_CONTROL:           PWC_PRIVATE (Idx  7)
   *     SOC_STATUS:            PWC_PRIVATE (Idx  7)
   *     SOC_DOE_INTR_MSG_ADDR: PWC_PRIVATE (Idx  7)
   *     SOC_DOE_INTR_MSG_DATA: PWC_PRIVATE (Idx  7)
   *   Window to policy mapping:
   *     WDATA: PWC_PRIVATE (Idx  7)
   *     RDATA: PWC_PRIVATE (Idx  7)
   */
  parameter int unsigned RACL_POLICY_SEL_MBX2_SOC [4] = '{7, 7, 7, 7};
  parameter int unsigned RACL_POLICY_SEL_MBX2_SOC_WIN_WDATA = 7;
  parameter int unsigned RACL_POLICY_SEL_MBX2_SOC_WIN_RDATA = 7;

  /**
   * Policy selection vector for mbx3
   *   TLUL interface name: soc
   *   RACL group: Null
   *   Register to policy mapping:
   *     SOC_CONTROL:           ROT_PRIVATE (Idx  6)
   *     SOC_STATUS:            ROT_PRIVATE (Idx  6)
   *     SOC_DOE_INTR_MSG_ADDR: ROT_PRIVATE (Idx  6)
   *     SOC_DOE_INTR_MSG_DATA: ROT_PRIVATE (Idx  6)
   *   Window to policy mapping:
   *     WDATA: ROT_PRIVATE (Idx  6)
   *     RDATA: ROT_PRIVATE (Idx  6)
   */
  parameter int unsigned RACL_POLICY_SEL_MBX3_SOC [4] = '{6, 6, 6, 6};
  parameter int unsigned RACL_POLICY_SEL_MBX3_SOC_WIN_WDATA = 6;
  parameter int unsigned RACL_POLICY_SEL_MBX3_SOC_WIN_RDATA = 6;

  /**
   * Policy selection vector for mbx4
   *   TLUL interface name: soc
   *   RACL group: Null
   *   Register to policy mapping:
   *     SOC_CONTROL:           MIO_PRIVATE (Idx  8)
   *     SOC_STATUS:            MIO_PRIVATE (Idx  8)
   *     SOC_DOE_INTR_MSG_ADDR: MIO_PRIVATE (Idx  8)
   *     SOC_DOE_INTR_MSG_DATA: MIO_PRIVATE (Idx  8)
   *   Window to policy mapping:
   *     WDATA: MIO_PRIVATE (Idx  8)
   *     RDATA: MIO_PRIVATE (Idx  8)
   */
  parameter int unsigned RACL_POLICY_SEL_MBX4_SOC [4] = '{8, 8, 8, 8};
  parameter int unsigned RACL_POLICY_SEL_MBX4_SOC_WIN_WDATA = 8;
  parameter int unsigned RACL_POLICY_SEL_MBX4_SOC_WIN_RDATA = 8;

  /**
   * Policy selection vector for mbx5
   *   TLUL interface name: soc
   *   RACL group: Null
   *   Register to policy mapping:
   *     SOC_CONTROL:           PWC_PRIVATE (Idx  7)
   *     SOC_STATUS:            PWC_PRIVATE (Idx  7)
   *     SOC_DOE_INTR_MSG_ADDR: PWC_PRIVATE (Idx  7)
   *     SOC_DOE_INTR_MSG_DATA: PWC_PRIVATE (Idx  7)
   *   Window to policy mapping:
   *     WDATA: PWC_PRIVATE (Idx  7)
   *     RDATA: PWC_PRIVATE (Idx  7)
   */
  parameter int unsigned RACL_POLICY_SEL_MBX5_SOC [4] = '{7, 7, 7, 7};
  parameter int unsigned RACL_POLICY_SEL_MBX5_SOC_WIN_WDATA = 7;
  parameter int unsigned RACL_POLICY_SEL_MBX5_SOC_WIN_RDATA = 7;

endpackage
