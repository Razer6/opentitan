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
   * RACL groups:
   *   Null
   *     all_rd_wr_policy            (Idx  0)
   *     hw_rot_pwc_wr_all_rd_policy (Idx  1)
   *     pre_boot_m_policy           (Idx  2)
   *     post_boot_m_policy          (Idx  3)
   *     tee_limited_policy          (Idx  4)
   *     rcode_private_policy        (Idx  5)
   *     rot_private_policy          (Idx  6)
   *     pwc_private_policy          (Idx  7)
   *     mio_private_policy          (Idx  8)
   *     duc_private_policy          (Idx  9)
   */

  /**
   * Policy selection vector for mbx0
   *   TLUL interface name: soc
   *   RACL group: Null
   *   Register to policy mapping:
   *     SOC_CONTROL:           pwc_private_policy (Idx  7)
   *     SOC_STATUS:            pwc_private_policy (Idx  7)
   *     SOC_DOE_INTR_MSG_ADDR: pwc_private_policy (Idx  7)
   *     SOC_DOE_INTR_MSG_DATA: pwc_private_policy (Idx  7)
   *   Window to policy mapping:
   *     WDATA: pwc_private_policy (Idx  7)
   *     RDATA: pwc_private_policy (Idx  7)
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_MBX0_SOC [4] = '{
    7, 7, 7, 7
  };
  parameter racl_policy_sel_t RACL_POLICY_SEL_MBX0_SOC_WIN_WDATA = 7;
  parameter racl_policy_sel_t RACL_POLICY_SEL_MBX0_SOC_WIN_RDATA = 7;

  /**
   * Policy selection vector for mbx1
   *   TLUL interface name: soc
   *   RACL group: Null
   *   Register to policy mapping:
   *     SOC_CONTROL:           pwc_private_policy (Idx  7)
   *     SOC_STATUS:            pwc_private_policy (Idx  7)
   *     SOC_DOE_INTR_MSG_ADDR: pwc_private_policy (Idx  7)
   *     SOC_DOE_INTR_MSG_DATA: pwc_private_policy (Idx  7)
   *   Window to policy mapping:
   *     WDATA: pwc_private_policy (Idx  7)
   *     RDATA: pwc_private_policy (Idx  7)
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_MBX1_SOC [4] = '{
    7, 7, 7, 7
  };
  parameter racl_policy_sel_t RACL_POLICY_SEL_MBX1_SOC_WIN_WDATA = 7;
  parameter racl_policy_sel_t RACL_POLICY_SEL_MBX1_SOC_WIN_RDATA = 7;

  /**
   * Policy selection vector for mbx2
   *   TLUL interface name: soc
   *   RACL group: Null
   *   Register to policy mapping:
   *     SOC_CONTROL:           pwc_private_policy (Idx  7)
   *     SOC_STATUS:            pwc_private_policy (Idx  7)
   *     SOC_DOE_INTR_MSG_ADDR: pwc_private_policy (Idx  7)
   *     SOC_DOE_INTR_MSG_DATA: pwc_private_policy (Idx  7)
   *   Window to policy mapping:
   *     WDATA: pwc_private_policy (Idx  7)
   *     RDATA: pwc_private_policy (Idx  7)
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_MBX2_SOC [4] = '{
    7, 7, 7, 7
  };
  parameter racl_policy_sel_t RACL_POLICY_SEL_MBX2_SOC_WIN_WDATA = 7;
  parameter racl_policy_sel_t RACL_POLICY_SEL_MBX2_SOC_WIN_RDATA = 7;

  /**
   * Policy selection vector for mbx3
   *   TLUL interface name: soc
   *   RACL group: Null
   *   Register to policy mapping:
   *     SOC_CONTROL:           rot_private_policy (Idx  6)
   *     SOC_STATUS:            rot_private_policy (Idx  6)
   *     SOC_DOE_INTR_MSG_ADDR: rot_private_policy (Idx  6)
   *     SOC_DOE_INTR_MSG_DATA: rot_private_policy (Idx  6)
   *   Window to policy mapping:
   *     WDATA: rot_private_policy (Idx  6)
   *     RDATA: rot_private_policy (Idx  6)
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_MBX3_SOC [4] = '{
    6, 6, 6, 6
  };
  parameter racl_policy_sel_t RACL_POLICY_SEL_MBX3_SOC_WIN_WDATA = 6;
  parameter racl_policy_sel_t RACL_POLICY_SEL_MBX3_SOC_WIN_RDATA = 6;

  /**
   * Policy selection vector for mbx4
   *   TLUL interface name: soc
   *   RACL group: Null
   *   Register to policy mapping:
   *     SOC_CONTROL:           mio_private_policy (Idx  8)
   *     SOC_STATUS:            mio_private_policy (Idx  8)
   *     SOC_DOE_INTR_MSG_ADDR: mio_private_policy (Idx  8)
   *     SOC_DOE_INTR_MSG_DATA: mio_private_policy (Idx  8)
   *   Window to policy mapping:
   *     WDATA: mio_private_policy (Idx  8)
   *     RDATA: mio_private_policy (Idx  8)
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_MBX4_SOC [4] = '{
    8, 8, 8, 8
  };
  parameter racl_policy_sel_t RACL_POLICY_SEL_MBX4_SOC_WIN_WDATA = 8;
  parameter racl_policy_sel_t RACL_POLICY_SEL_MBX4_SOC_WIN_RDATA = 8;

  /**
   * Policy selection vector for mbx5
   *   TLUL interface name: soc
   *   RACL group: Null
   *   Register to policy mapping:
   *     SOC_CONTROL:           duc_private_policy (Idx  9)
   *     SOC_STATUS:            duc_private_policy (Idx  9)
   *     SOC_DOE_INTR_MSG_ADDR: duc_private_policy (Idx  9)
   *     SOC_DOE_INTR_MSG_DATA: duc_private_policy (Idx  9)
   *   Window to policy mapping:
   *     WDATA: duc_private_policy (Idx  9)
   *     RDATA: duc_private_policy (Idx  9)
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_MBX5_SOC [4] = '{
    9, 9, 9, 9
  };
  parameter racl_policy_sel_t RACL_POLICY_SEL_MBX5_SOC_WIN_WDATA = 9;
  parameter racl_policy_sel_t RACL_POLICY_SEL_MBX5_SOC_WIN_RDATA = 9;

  /**
   * Policy selection vector for mbx_pcie0
   *   TLUL interface name: soc
   *   RACL group: Null
   *   Register to policy mapping:
   *     SOC_CONTROL:           all_rd_wr_policy (Idx  0)
   *     SOC_STATUS:            all_rd_wr_policy (Idx  0)
   *     SOC_DOE_INTR_MSG_ADDR: all_rd_wr_policy (Idx  0)
   *     SOC_DOE_INTR_MSG_DATA: all_rd_wr_policy (Idx  0)
   *   Window to policy mapping:
   *     WDATA: all_rd_wr_policy (Idx  0)
   *     RDATA: all_rd_wr_policy (Idx  0)
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_MBX_PCIE0_SOC [4] = '{
    0, 0, 0, 0
  };
  parameter racl_policy_sel_t RACL_POLICY_SEL_MBX_PCIE0_SOC_WIN_WDATA = 0;
  parameter racl_policy_sel_t RACL_POLICY_SEL_MBX_PCIE0_SOC_WIN_RDATA = 0;

endpackage
