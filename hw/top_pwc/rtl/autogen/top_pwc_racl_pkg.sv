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


package top_pwc_racl_pkg;
  import top_racl_pkg::*;

  /**
   * RACL groups and policies:
   *   Null
   *      0: all_rd_wr_policy
   *      1: hw_rot_pwc_wr_all_rd_policy
   *      2: pre_boot_m_policy
   *      3: post_boot_m_policy
   *      4: tee_limited_policy
   *      5: rcode_private_policy
   *      6: rot_private_policy
   *      7: pwc_private_policy
   *      8: mio_private_policy
   *      9: duc_private_policy
   */

  /**
   * Policy selection vector for mbx0
   *   TLUL interface name: soc
   *   RACL group: Null
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_VEC_MBX0_SOC [4] = '{
    RACL_POLICY_SEL_PWC_PRIVATE_POLICY,          // 0 SOC_CONTROL           : Policy Idx  7
    RACL_POLICY_SEL_PWC_PRIVATE_POLICY,          // 1 SOC_STATUS            : Policy Idx  7
    RACL_POLICY_SEL_PWC_PRIVATE_POLICY,          // 2 SOC_DOE_INTR_MSG_ADDR : Policy Idx  7
    RACL_POLICY_SEL_PWC_PRIVATE_POLICY           // 3 SOC_DOE_INTR_MSG_DATA : Policy Idx  7
  };
  parameter racl_policy_sel_t RACL_POLICY_SEL_WIN_MBX0_SOC_WDATA =
    RACL_POLICY_SEL_PWC_PRIVATE_POLICY;          // Policy Idx  7
  parameter racl_policy_sel_t RACL_POLICY_SEL_WIN_MBX0_SOC_RDATA =
    RACL_POLICY_SEL_PWC_PRIVATE_POLICY;          // Policy Idx  7

  /**
   * Policy selection vector for mbx1
   *   TLUL interface name: soc
   *   RACL group: Null
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_VEC_MBX1_SOC [4] = '{
    RACL_POLICY_SEL_PWC_PRIVATE_POLICY,          // 0 SOC_CONTROL           : Policy Idx  7
    RACL_POLICY_SEL_PWC_PRIVATE_POLICY,          // 1 SOC_STATUS            : Policy Idx  7
    RACL_POLICY_SEL_PWC_PRIVATE_POLICY,          // 2 SOC_DOE_INTR_MSG_ADDR : Policy Idx  7
    RACL_POLICY_SEL_PWC_PRIVATE_POLICY           // 3 SOC_DOE_INTR_MSG_DATA : Policy Idx  7
  };
  parameter racl_policy_sel_t RACL_POLICY_SEL_WIN_MBX1_SOC_WDATA =
    RACL_POLICY_SEL_PWC_PRIVATE_POLICY;          // Policy Idx  7
  parameter racl_policy_sel_t RACL_POLICY_SEL_WIN_MBX1_SOC_RDATA =
    RACL_POLICY_SEL_PWC_PRIVATE_POLICY;          // Policy Idx  7

  /**
   * Policy selection vector for mbx2
   *   TLUL interface name: soc
   *   RACL group: Null
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_VEC_MBX2_SOC [4] = '{
    RACL_POLICY_SEL_PWC_PRIVATE_POLICY,          // 0 SOC_CONTROL           : Policy Idx  7
    RACL_POLICY_SEL_PWC_PRIVATE_POLICY,          // 1 SOC_STATUS            : Policy Idx  7
    RACL_POLICY_SEL_PWC_PRIVATE_POLICY,          // 2 SOC_DOE_INTR_MSG_ADDR : Policy Idx  7
    RACL_POLICY_SEL_PWC_PRIVATE_POLICY           // 3 SOC_DOE_INTR_MSG_DATA : Policy Idx  7
  };
  parameter racl_policy_sel_t RACL_POLICY_SEL_WIN_MBX2_SOC_WDATA =
    RACL_POLICY_SEL_PWC_PRIVATE_POLICY;          // Policy Idx  7
  parameter racl_policy_sel_t RACL_POLICY_SEL_WIN_MBX2_SOC_RDATA =
    RACL_POLICY_SEL_PWC_PRIVATE_POLICY;          // Policy Idx  7

  /**
   * Policy selection vector for mbx3
   *   TLUL interface name: soc
   *   RACL group: Null
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_VEC_MBX3_SOC [4] = '{
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 0 SOC_CONTROL           : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 1 SOC_STATUS            : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 2 SOC_DOE_INTR_MSG_ADDR : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY           // 3 SOC_DOE_INTR_MSG_DATA : Policy Idx  6
  };
  parameter racl_policy_sel_t RACL_POLICY_SEL_WIN_MBX3_SOC_WDATA =
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY;          // Policy Idx  6
  parameter racl_policy_sel_t RACL_POLICY_SEL_WIN_MBX3_SOC_RDATA =
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY;          // Policy Idx  6

  /**
   * Policy selection vector for mbx4
   *   TLUL interface name: soc
   *   RACL group: Null
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_VEC_MBX4_SOC [4] = '{
    RACL_POLICY_SEL_MIO_PRIVATE_POLICY,          // 0 SOC_CONTROL           : Policy Idx  8
    RACL_POLICY_SEL_MIO_PRIVATE_POLICY,          // 1 SOC_STATUS            : Policy Idx  8
    RACL_POLICY_SEL_MIO_PRIVATE_POLICY,          // 2 SOC_DOE_INTR_MSG_ADDR : Policy Idx  8
    RACL_POLICY_SEL_MIO_PRIVATE_POLICY           // 3 SOC_DOE_INTR_MSG_DATA : Policy Idx  8
  };
  parameter racl_policy_sel_t RACL_POLICY_SEL_WIN_MBX4_SOC_WDATA =
    RACL_POLICY_SEL_MIO_PRIVATE_POLICY;          // Policy Idx  8
  parameter racl_policy_sel_t RACL_POLICY_SEL_WIN_MBX4_SOC_RDATA =
    RACL_POLICY_SEL_MIO_PRIVATE_POLICY;          // Policy Idx  8

  /**
   * Policy selection vector for mbx5
   *   TLUL interface name: soc
   *   RACL group: Null
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_VEC_MBX5_SOC [4] = '{
    RACL_POLICY_SEL_DUC_PRIVATE_POLICY,          // 0 SOC_CONTROL           : Policy Idx  9
    RACL_POLICY_SEL_DUC_PRIVATE_POLICY,          // 1 SOC_STATUS            : Policy Idx  9
    RACL_POLICY_SEL_DUC_PRIVATE_POLICY,          // 2 SOC_DOE_INTR_MSG_ADDR : Policy Idx  9
    RACL_POLICY_SEL_DUC_PRIVATE_POLICY           // 3 SOC_DOE_INTR_MSG_DATA : Policy Idx  9
  };
  parameter racl_policy_sel_t RACL_POLICY_SEL_WIN_MBX5_SOC_WDATA =
    RACL_POLICY_SEL_DUC_PRIVATE_POLICY;          // Policy Idx  9
  parameter racl_policy_sel_t RACL_POLICY_SEL_WIN_MBX5_SOC_RDATA =
    RACL_POLICY_SEL_DUC_PRIVATE_POLICY;          // Policy Idx  9

  /**
   * Policy selection vector for mbx_pcie0
   *   TLUL interface name: soc
   *   RACL group: Null
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_VEC_MBX_PCIE0_SOC [4] = '{
    RACL_POLICY_SEL_ALL_RD_WR_POLICY,            // 0 SOC_CONTROL           : Policy Idx  0
    RACL_POLICY_SEL_ALL_RD_WR_POLICY,            // 1 SOC_STATUS            : Policy Idx  0
    RACL_POLICY_SEL_ALL_RD_WR_POLICY,            // 2 SOC_DOE_INTR_MSG_ADDR : Policy Idx  0
    RACL_POLICY_SEL_ALL_RD_WR_POLICY             // 3 SOC_DOE_INTR_MSG_DATA : Policy Idx  0
  };
  parameter racl_policy_sel_t RACL_POLICY_SEL_WIN_MBX_PCIE0_SOC_WDATA =
    RACL_POLICY_SEL_ALL_RD_WR_POLICY;            // Policy Idx  0
  parameter racl_policy_sel_t RACL_POLICY_SEL_WIN_MBX_PCIE0_SOC_RDATA =
    RACL_POLICY_SEL_ALL_RD_WR_POLICY;            // Policy Idx  0

  /**
   * Policy selection vector for ac_range_check
   *   TLUL interface name: None
   *   RACL group: Null
   *   Register to policy mapping:
   *     INTR_STATE:                    rot_private_policy (Idx  6)
   *     INTR_ENABLE:                   rot_private_policy (Idx  6)
   *     INTR_TEST:                     rot_private_policy (Idx  6)
   *     ALERT_TEST:                    rot_private_policy (Idx  6)
   *     ALERT_STATUS:                  rot_private_policy (Idx  6)
   *     LOG_CONFIG:                    rot_private_policy (Idx  6)
   *     LOG_STATUS:                    rot_private_policy (Idx  6)
   *     LOG_ADDRESS:                   rot_private_policy (Idx  6)
   *     RANGE_REGWEN_0:                rot_private_policy (Idx  6)
   *     RANGE_REGWEN_1:                rot_private_policy (Idx  6)
   *     RANGE_REGWEN_2:                rot_private_policy (Idx  6)
   *     RANGE_REGWEN_3:                rot_private_policy (Idx  6)
   *     RANGE_REGWEN_4:                rot_private_policy (Idx  6)
   *     RANGE_REGWEN_5:                rot_private_policy (Idx  6)
   *     RANGE_REGWEN_6:                rot_private_policy (Idx  6)
   *     RANGE_REGWEN_7:                rot_private_policy (Idx  6)
   *     RANGE_REGWEN_8:                rot_private_policy (Idx  6)
   *     RANGE_REGWEN_9:                rot_private_policy (Idx  6)
   *     RANGE_REGWEN_10:               rot_private_policy (Idx  6)
   *     RANGE_REGWEN_11:               rot_private_policy (Idx  6)
   *     RANGE_REGWEN_12:               rot_private_policy (Idx  6)
   *     RANGE_REGWEN_13:               rot_private_policy (Idx  6)
   *     RANGE_REGWEN_14:               rot_private_policy (Idx  6)
   *     RANGE_REGWEN_15:               rot_private_policy (Idx  6)
   *     RANGE_REGWEN_16:               rot_private_policy (Idx  6)
   *     RANGE_REGWEN_17:               rot_private_policy (Idx  6)
   *     RANGE_REGWEN_18:               rot_private_policy (Idx  6)
   *     RANGE_REGWEN_19:               rot_private_policy (Idx  6)
   *     RANGE_REGWEN_20:               rot_private_policy (Idx  6)
   *     RANGE_REGWEN_21:               rot_private_policy (Idx  6)
   *     RANGE_REGWEN_22:               rot_private_policy (Idx  6)
   *     RANGE_REGWEN_23:               rot_private_policy (Idx  6)
   *     RANGE_REGWEN_24:               rot_private_policy (Idx  6)
   *     RANGE_REGWEN_25:               rot_private_policy (Idx  6)
   *     RANGE_REGWEN_26:               rot_private_policy (Idx  6)
   *     RANGE_REGWEN_27:               rot_private_policy (Idx  6)
   *     RANGE_REGWEN_28:               rot_private_policy (Idx  6)
   *     RANGE_REGWEN_29:               rot_private_policy (Idx  6)
   *     RANGE_REGWEN_30:               rot_private_policy (Idx  6)
   *     RANGE_REGWEN_31:               rot_private_policy (Idx  6)
   *     RANGE_BASE_0:                  rot_private_policy (Idx  6)
   *     RANGE_BASE_1:                  rot_private_policy (Idx  6)
   *     RANGE_BASE_2:                  rot_private_policy (Idx  6)
   *     RANGE_BASE_3:                  rot_private_policy (Idx  6)
   *     RANGE_BASE_4:                  rot_private_policy (Idx  6)
   *     RANGE_BASE_5:                  rot_private_policy (Idx  6)
   *     RANGE_BASE_6:                  rot_private_policy (Idx  6)
   *     RANGE_BASE_7:                  rot_private_policy (Idx  6)
   *     RANGE_BASE_8:                  rot_private_policy (Idx  6)
   *     RANGE_BASE_9:                  rot_private_policy (Idx  6)
   *     RANGE_BASE_10:                 rot_private_policy (Idx  6)
   *     RANGE_BASE_11:                 rot_private_policy (Idx  6)
   *     RANGE_BASE_12:                 rot_private_policy (Idx  6)
   *     RANGE_BASE_13:                 rot_private_policy (Idx  6)
   *     RANGE_BASE_14:                 rot_private_policy (Idx  6)
   *     RANGE_BASE_15:                 rot_private_policy (Idx  6)
   *     RANGE_BASE_16:                 rot_private_policy (Idx  6)
   *     RANGE_BASE_17:                 rot_private_policy (Idx  6)
   *     RANGE_BASE_18:                 rot_private_policy (Idx  6)
   *     RANGE_BASE_19:                 rot_private_policy (Idx  6)
   *     RANGE_BASE_20:                 rot_private_policy (Idx  6)
   *     RANGE_BASE_21:                 rot_private_policy (Idx  6)
   *     RANGE_BASE_22:                 rot_private_policy (Idx  6)
   *     RANGE_BASE_23:                 rot_private_policy (Idx  6)
   *     RANGE_BASE_24:                 rot_private_policy (Idx  6)
   *     RANGE_BASE_25:                 rot_private_policy (Idx  6)
   *     RANGE_BASE_26:                 rot_private_policy (Idx  6)
   *     RANGE_BASE_27:                 rot_private_policy (Idx  6)
   *     RANGE_BASE_28:                 rot_private_policy (Idx  6)
   *     RANGE_BASE_29:                 rot_private_policy (Idx  6)
   *     RANGE_BASE_30:                 rot_private_policy (Idx  6)
   *     RANGE_BASE_31:                 rot_private_policy (Idx  6)
   *     RANGE_LIMIT_0:                 rot_private_policy (Idx  6)
   *     RANGE_LIMIT_1:                 rot_private_policy (Idx  6)
   *     RANGE_LIMIT_2:                 rot_private_policy (Idx  6)
   *     RANGE_LIMIT_3:                 rot_private_policy (Idx  6)
   *     RANGE_LIMIT_4:                 rot_private_policy (Idx  6)
   *     RANGE_LIMIT_5:                 rot_private_policy (Idx  6)
   *     RANGE_LIMIT_6:                 rot_private_policy (Idx  6)
   *     RANGE_LIMIT_7:                 rot_private_policy (Idx  6)
   *     RANGE_LIMIT_8:                 rot_private_policy (Idx  6)
   *     RANGE_LIMIT_9:                 rot_private_policy (Idx  6)
   *     RANGE_LIMIT_10:                rot_private_policy (Idx  6)
   *     RANGE_LIMIT_11:                rot_private_policy (Idx  6)
   *     RANGE_LIMIT_12:                rot_private_policy (Idx  6)
   *     RANGE_LIMIT_13:                rot_private_policy (Idx  6)
   *     RANGE_LIMIT_14:                rot_private_policy (Idx  6)
   *     RANGE_LIMIT_15:                rot_private_policy (Idx  6)
   *     RANGE_LIMIT_16:                rot_private_policy (Idx  6)
   *     RANGE_LIMIT_17:                rot_private_policy (Idx  6)
   *     RANGE_LIMIT_18:                rot_private_policy (Idx  6)
   *     RANGE_LIMIT_19:                rot_private_policy (Idx  6)
   *     RANGE_LIMIT_20:                rot_private_policy (Idx  6)
   *     RANGE_LIMIT_21:                rot_private_policy (Idx  6)
   *     RANGE_LIMIT_22:                rot_private_policy (Idx  6)
   *     RANGE_LIMIT_23:                rot_private_policy (Idx  6)
   *     RANGE_LIMIT_24:                rot_private_policy (Idx  6)
   *     RANGE_LIMIT_25:                rot_private_policy (Idx  6)
   *     RANGE_LIMIT_26:                rot_private_policy (Idx  6)
   *     RANGE_LIMIT_27:                rot_private_policy (Idx  6)
   *     RANGE_LIMIT_28:                rot_private_policy (Idx  6)
   *     RANGE_LIMIT_29:                rot_private_policy (Idx  6)
   *     RANGE_LIMIT_30:                rot_private_policy (Idx  6)
   *     RANGE_LIMIT_31:                rot_private_policy (Idx  6)
   *     RANGE_PERM_0:                  rot_private_policy (Idx  6)
   *     RANGE_PERM_1:                  rot_private_policy (Idx  6)
   *     RANGE_PERM_2:                  rot_private_policy (Idx  6)
   *     RANGE_PERM_3:                  rot_private_policy (Idx  6)
   *     RANGE_PERM_4:                  rot_private_policy (Idx  6)
   *     RANGE_PERM_5:                  rot_private_policy (Idx  6)
   *     RANGE_PERM_6:                  rot_private_policy (Idx  6)
   *     RANGE_PERM_7:                  rot_private_policy (Idx  6)
   *     RANGE_PERM_8:                  rot_private_policy (Idx  6)
   *     RANGE_PERM_9:                  rot_private_policy (Idx  6)
   *     RANGE_PERM_10:                 rot_private_policy (Idx  6)
   *     RANGE_PERM_11:                 rot_private_policy (Idx  6)
   *     RANGE_PERM_12:                 rot_private_policy (Idx  6)
   *     RANGE_PERM_13:                 rot_private_policy (Idx  6)
   *     RANGE_PERM_14:                 rot_private_policy (Idx  6)
   *     RANGE_PERM_15:                 rot_private_policy (Idx  6)
   *     RANGE_PERM_16:                 rot_private_policy (Idx  6)
   *     RANGE_PERM_17:                 rot_private_policy (Idx  6)
   *     RANGE_PERM_18:                 rot_private_policy (Idx  6)
   *     RANGE_PERM_19:                 rot_private_policy (Idx  6)
   *     RANGE_PERM_20:                 rot_private_policy (Idx  6)
   *     RANGE_PERM_21:                 rot_private_policy (Idx  6)
   *     RANGE_PERM_22:                 rot_private_policy (Idx  6)
   *     RANGE_PERM_23:                 rot_private_policy (Idx  6)
   *     RANGE_PERM_24:                 rot_private_policy (Idx  6)
   *     RANGE_PERM_25:                 rot_private_policy (Idx  6)
   *     RANGE_PERM_26:                 rot_private_policy (Idx  6)
   *     RANGE_PERM_27:                 rot_private_policy (Idx  6)
   *     RANGE_PERM_28:                 rot_private_policy (Idx  6)
   *     RANGE_PERM_29:                 rot_private_policy (Idx  6)
   *     RANGE_PERM_30:                 rot_private_policy (Idx  6)
   *     RANGE_PERM_31:                 rot_private_policy (Idx  6)
   *     RANGE_RACL_POLICY_SHADOWED_0:  rot_private_policy (Idx  6)
   *     RANGE_RACL_POLICY_SHADOWED_1:  rot_private_policy (Idx  6)
   *     RANGE_RACL_POLICY_SHADOWED_2:  rot_private_policy (Idx  6)
   *     RANGE_RACL_POLICY_SHADOWED_3:  rot_private_policy (Idx  6)
   *     RANGE_RACL_POLICY_SHADOWED_4:  rot_private_policy (Idx  6)
   *     RANGE_RACL_POLICY_SHADOWED_5:  rot_private_policy (Idx  6)
   *     RANGE_RACL_POLICY_SHADOWED_6:  rot_private_policy (Idx  6)
   *     RANGE_RACL_POLICY_SHADOWED_7:  rot_private_policy (Idx  6)
   *     RANGE_RACL_POLICY_SHADOWED_8:  rot_private_policy (Idx  6)
   *     RANGE_RACL_POLICY_SHADOWED_9:  rot_private_policy (Idx  6)
   *     RANGE_RACL_POLICY_SHADOWED_10: rot_private_policy (Idx  6)
   *     RANGE_RACL_POLICY_SHADOWED_11: rot_private_policy (Idx  6)
   *     RANGE_RACL_POLICY_SHADOWED_12: rot_private_policy (Idx  6)
   *     RANGE_RACL_POLICY_SHADOWED_13: rot_private_policy (Idx  6)
   *     RANGE_RACL_POLICY_SHADOWED_14: rot_private_policy (Idx  6)
   *     RANGE_RACL_POLICY_SHADOWED_15: rot_private_policy (Idx  6)
   *     RANGE_RACL_POLICY_SHADOWED_16: rot_private_policy (Idx  6)
   *     RANGE_RACL_POLICY_SHADOWED_17: rot_private_policy (Idx  6)
   *     RANGE_RACL_POLICY_SHADOWED_18: rot_private_policy (Idx  6)
   *     RANGE_RACL_POLICY_SHADOWED_19: rot_private_policy (Idx  6)
   *     RANGE_RACL_POLICY_SHADOWED_20: rot_private_policy (Idx  6)
   *     RANGE_RACL_POLICY_SHADOWED_21: rot_private_policy (Idx  6)
   *     RANGE_RACL_POLICY_SHADOWED_22: rot_private_policy (Idx  6)
   *     RANGE_RACL_POLICY_SHADOWED_23: rot_private_policy (Idx  6)
   *     RANGE_RACL_POLICY_SHADOWED_24: rot_private_policy (Idx  6)
   *     RANGE_RACL_POLICY_SHADOWED_25: rot_private_policy (Idx  6)
   *     RANGE_RACL_POLICY_SHADOWED_26: rot_private_policy (Idx  6)
   *     RANGE_RACL_POLICY_SHADOWED_27: rot_private_policy (Idx  6)
   *     RANGE_RACL_POLICY_SHADOWED_28: rot_private_policy (Idx  6)
   *     RANGE_RACL_POLICY_SHADOWED_29: rot_private_policy (Idx  6)
   *     RANGE_RACL_POLICY_SHADOWED_30: rot_private_policy (Idx  6)
   *     RANGE_RACL_POLICY_SHADOWED_31: rot_private_policy (Idx  6)
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_AC_RANGE_CHECK [168] = '{
    6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
    6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
    6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
    6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
    6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
    6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6
  };

endpackage
