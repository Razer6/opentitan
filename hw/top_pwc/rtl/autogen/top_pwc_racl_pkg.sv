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
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_VEC_AC_RANGE_CHECK [168] = '{
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //   0 INTR_STATE                    : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //   1 INTR_ENABLE                   : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //   2 INTR_TEST                     : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //   3 ALERT_TEST                    : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //   4 ALERT_STATUS                  : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //   5 LOG_CONFIG                    : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //   6 LOG_STATUS                    : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //   7 LOG_ADDRESS                   : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //   8 RANGE_REGWEN_0                : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //   9 RANGE_REGWEN_1                : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  10 RANGE_REGWEN_2                : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  11 RANGE_REGWEN_3                : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  12 RANGE_REGWEN_4                : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  13 RANGE_REGWEN_5                : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  14 RANGE_REGWEN_6                : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  15 RANGE_REGWEN_7                : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  16 RANGE_REGWEN_8                : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  17 RANGE_REGWEN_9                : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  18 RANGE_REGWEN_10               : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  19 RANGE_REGWEN_11               : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  20 RANGE_REGWEN_12               : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  21 RANGE_REGWEN_13               : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  22 RANGE_REGWEN_14               : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  23 RANGE_REGWEN_15               : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  24 RANGE_REGWEN_16               : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  25 RANGE_REGWEN_17               : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  26 RANGE_REGWEN_18               : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  27 RANGE_REGWEN_19               : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  28 RANGE_REGWEN_20               : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  29 RANGE_REGWEN_21               : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  30 RANGE_REGWEN_22               : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  31 RANGE_REGWEN_23               : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  32 RANGE_REGWEN_24               : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  33 RANGE_REGWEN_25               : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  34 RANGE_REGWEN_26               : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  35 RANGE_REGWEN_27               : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  36 RANGE_REGWEN_28               : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  37 RANGE_REGWEN_29               : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  38 RANGE_REGWEN_30               : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  39 RANGE_REGWEN_31               : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  40 RANGE_BASE_0                  : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  41 RANGE_BASE_1                  : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  42 RANGE_BASE_2                  : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  43 RANGE_BASE_3                  : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  44 RANGE_BASE_4                  : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  45 RANGE_BASE_5                  : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  46 RANGE_BASE_6                  : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  47 RANGE_BASE_7                  : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  48 RANGE_BASE_8                  : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  49 RANGE_BASE_9                  : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  50 RANGE_BASE_10                 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  51 RANGE_BASE_11                 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  52 RANGE_BASE_12                 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  53 RANGE_BASE_13                 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  54 RANGE_BASE_14                 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  55 RANGE_BASE_15                 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  56 RANGE_BASE_16                 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  57 RANGE_BASE_17                 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  58 RANGE_BASE_18                 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  59 RANGE_BASE_19                 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  60 RANGE_BASE_20                 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  61 RANGE_BASE_21                 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  62 RANGE_BASE_22                 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  63 RANGE_BASE_23                 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  64 RANGE_BASE_24                 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  65 RANGE_BASE_25                 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  66 RANGE_BASE_26                 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  67 RANGE_BASE_27                 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  68 RANGE_BASE_28                 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  69 RANGE_BASE_29                 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  70 RANGE_BASE_30                 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  71 RANGE_BASE_31                 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  72 RANGE_LIMIT_0                 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  73 RANGE_LIMIT_1                 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  74 RANGE_LIMIT_2                 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  75 RANGE_LIMIT_3                 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  76 RANGE_LIMIT_4                 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  77 RANGE_LIMIT_5                 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  78 RANGE_LIMIT_6                 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  79 RANGE_LIMIT_7                 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  80 RANGE_LIMIT_8                 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  81 RANGE_LIMIT_9                 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  82 RANGE_LIMIT_10                : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  83 RANGE_LIMIT_11                : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  84 RANGE_LIMIT_12                : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  85 RANGE_LIMIT_13                : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  86 RANGE_LIMIT_14                : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  87 RANGE_LIMIT_15                : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  88 RANGE_LIMIT_16                : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  89 RANGE_LIMIT_17                : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  90 RANGE_LIMIT_18                : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  91 RANGE_LIMIT_19                : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  92 RANGE_LIMIT_20                : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  93 RANGE_LIMIT_21                : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  94 RANGE_LIMIT_22                : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  95 RANGE_LIMIT_23                : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  96 RANGE_LIMIT_24                : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  97 RANGE_LIMIT_25                : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  98 RANGE_LIMIT_26                : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          //  99 RANGE_LIMIT_27                : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 100 RANGE_LIMIT_28                : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 101 RANGE_LIMIT_29                : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 102 RANGE_LIMIT_30                : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 103 RANGE_LIMIT_31                : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 104 RANGE_PERM_0                  : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 105 RANGE_PERM_1                  : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 106 RANGE_PERM_2                  : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 107 RANGE_PERM_3                  : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 108 RANGE_PERM_4                  : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 109 RANGE_PERM_5                  : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 110 RANGE_PERM_6                  : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 111 RANGE_PERM_7                  : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 112 RANGE_PERM_8                  : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 113 RANGE_PERM_9                  : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 114 RANGE_PERM_10                 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 115 RANGE_PERM_11                 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 116 RANGE_PERM_12                 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 117 RANGE_PERM_13                 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 118 RANGE_PERM_14                 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 119 RANGE_PERM_15                 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 120 RANGE_PERM_16                 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 121 RANGE_PERM_17                 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 122 RANGE_PERM_18                 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 123 RANGE_PERM_19                 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 124 RANGE_PERM_20                 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 125 RANGE_PERM_21                 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 126 RANGE_PERM_22                 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 127 RANGE_PERM_23                 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 128 RANGE_PERM_24                 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 129 RANGE_PERM_25                 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 130 RANGE_PERM_26                 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 131 RANGE_PERM_27                 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 132 RANGE_PERM_28                 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 133 RANGE_PERM_29                 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 134 RANGE_PERM_30                 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 135 RANGE_PERM_31                 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 136 RANGE_RACL_POLICY_SHADOWED_0  : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 137 RANGE_RACL_POLICY_SHADOWED_1  : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 138 RANGE_RACL_POLICY_SHADOWED_2  : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 139 RANGE_RACL_POLICY_SHADOWED_3  : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 140 RANGE_RACL_POLICY_SHADOWED_4  : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 141 RANGE_RACL_POLICY_SHADOWED_5  : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 142 RANGE_RACL_POLICY_SHADOWED_6  : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 143 RANGE_RACL_POLICY_SHADOWED_7  : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 144 RANGE_RACL_POLICY_SHADOWED_8  : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 145 RANGE_RACL_POLICY_SHADOWED_9  : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 146 RANGE_RACL_POLICY_SHADOWED_10 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 147 RANGE_RACL_POLICY_SHADOWED_11 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 148 RANGE_RACL_POLICY_SHADOWED_12 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 149 RANGE_RACL_POLICY_SHADOWED_13 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 150 RANGE_RACL_POLICY_SHADOWED_14 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 151 RANGE_RACL_POLICY_SHADOWED_15 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 152 RANGE_RACL_POLICY_SHADOWED_16 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 153 RANGE_RACL_POLICY_SHADOWED_17 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 154 RANGE_RACL_POLICY_SHADOWED_18 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 155 RANGE_RACL_POLICY_SHADOWED_19 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 156 RANGE_RACL_POLICY_SHADOWED_20 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 157 RANGE_RACL_POLICY_SHADOWED_21 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 158 RANGE_RACL_POLICY_SHADOWED_22 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 159 RANGE_RACL_POLICY_SHADOWED_23 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 160 RANGE_RACL_POLICY_SHADOWED_24 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 161 RANGE_RACL_POLICY_SHADOWED_25 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 162 RANGE_RACL_POLICY_SHADOWED_26 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 163 RANGE_RACL_POLICY_SHADOWED_27 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 164 RANGE_RACL_POLICY_SHADOWED_28 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 165 RANGE_RACL_POLICY_SHADOWED_29 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY,          // 166 RANGE_RACL_POLICY_SHADOWED_30 : Policy Idx  6
    RACL_POLICY_SEL_ROT_PRIVATE_POLICY           // 167 RANGE_RACL_POLICY_SHADOWED_31 : Policy Idx  6
  };

endpackage
