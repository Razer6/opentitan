// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// ------------------- W A R N I N G: A U T O - G E N E R A T E D   C O D E !! -------------------//
// PLEASE DO NOT HAND-EDIT THIS FILE. IT HAS BEEN AUTO-GENERATED WITH THE FOLLOWING COMMAND:
//
// util/topgen.py -t hw/top_mio/data/top_mio.hjson \
//                -o hw/top_mio/ \
//                --rnd_cnst_seed \
//                1017106219537032642877583828875051302543807092889754935647094601236425074047


package top_mio_racl_pkg;
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
    RACL_POLICY_SEL_MIO_PRIVATE_POLICY,          // 0 SOC_CONTROL           : Policy Idx  8
    RACL_POLICY_SEL_MIO_PRIVATE_POLICY,          // 1 SOC_STATUS            : Policy Idx  8
    RACL_POLICY_SEL_MIO_PRIVATE_POLICY,          // 2 SOC_DOE_INTR_MSG_ADDR : Policy Idx  8
    RACL_POLICY_SEL_MIO_PRIVATE_POLICY           // 3 SOC_DOE_INTR_MSG_DATA : Policy Idx  8
  };
  parameter racl_policy_sel_t RACL_POLICY_SEL_WIN_MBX0_SOC_WDATA =
    RACL_POLICY_SEL_MIO_PRIVATE_POLICY;          // Policy Idx  8
  parameter racl_policy_sel_t RACL_POLICY_SEL_WIN_MBX0_SOC_RDATA =
    RACL_POLICY_SEL_MIO_PRIVATE_POLICY;          // Policy Idx  8

  /**
   * Policy selection vector for mbx1
   *   TLUL interface name: soc
   *   RACL group: Null
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_VEC_MBX1_SOC [4] = '{
    RACL_POLICY_SEL_MIO_PRIVATE_POLICY,          // 0 SOC_CONTROL           : Policy Idx  8
    RACL_POLICY_SEL_MIO_PRIVATE_POLICY,          // 1 SOC_STATUS            : Policy Idx  8
    RACL_POLICY_SEL_MIO_PRIVATE_POLICY,          // 2 SOC_DOE_INTR_MSG_ADDR : Policy Idx  8
    RACL_POLICY_SEL_MIO_PRIVATE_POLICY           // 3 SOC_DOE_INTR_MSG_DATA : Policy Idx  8
  };
  parameter racl_policy_sel_t RACL_POLICY_SEL_WIN_MBX1_SOC_WDATA =
    RACL_POLICY_SEL_MIO_PRIVATE_POLICY;          // Policy Idx  8
  parameter racl_policy_sel_t RACL_POLICY_SEL_WIN_MBX1_SOC_RDATA =
    RACL_POLICY_SEL_MIO_PRIVATE_POLICY;          // Policy Idx  8

  /**
   * Policy selection vector for mbx2
   *   TLUL interface name: soc
   *   RACL group: Null
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_VEC_MBX2_SOC [4] = '{
    RACL_POLICY_SEL_MIO_PRIVATE_POLICY,          // 0 SOC_CONTROL           : Policy Idx  8
    RACL_POLICY_SEL_MIO_PRIVATE_POLICY,          // 1 SOC_STATUS            : Policy Idx  8
    RACL_POLICY_SEL_MIO_PRIVATE_POLICY,          // 2 SOC_DOE_INTR_MSG_ADDR : Policy Idx  8
    RACL_POLICY_SEL_MIO_PRIVATE_POLICY           // 3 SOC_DOE_INTR_MSG_DATA : Policy Idx  8
  };
  parameter racl_policy_sel_t RACL_POLICY_SEL_WIN_MBX2_SOC_WDATA =
    RACL_POLICY_SEL_MIO_PRIVATE_POLICY;          // Policy Idx  8
  parameter racl_policy_sel_t RACL_POLICY_SEL_WIN_MBX2_SOC_RDATA =
    RACL_POLICY_SEL_MIO_PRIVATE_POLICY;          // Policy Idx  8

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
    RACL_POLICY_SEL_PWC_PRIVATE_POLICY,          // 0 SOC_CONTROL           : Policy Idx  7
    RACL_POLICY_SEL_PWC_PRIVATE_POLICY,          // 1 SOC_STATUS            : Policy Idx  7
    RACL_POLICY_SEL_PWC_PRIVATE_POLICY,          // 2 SOC_DOE_INTR_MSG_ADDR : Policy Idx  7
    RACL_POLICY_SEL_PWC_PRIVATE_POLICY           // 3 SOC_DOE_INTR_MSG_DATA : Policy Idx  7
  };
  parameter racl_policy_sel_t RACL_POLICY_SEL_WIN_MBX4_SOC_WDATA =
    RACL_POLICY_SEL_PWC_PRIVATE_POLICY;          // Policy Idx  7
  parameter racl_policy_sel_t RACL_POLICY_SEL_WIN_MBX4_SOC_RDATA =
    RACL_POLICY_SEL_PWC_PRIVATE_POLICY;          // Policy Idx  7

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

endpackage
