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

`include "prim_assert.sv"

module top_mio #(
  // Auto-inferred parameters
  // parameters for rv_timer
  // parameters for aon_timer_aon
  // parameters for mio_soc_proxy
  // parameters for sram_ctrl_ret_aon
  parameter int SramCtrlRetAonInstSize = 4096,
  parameter int SramCtrlRetAonNumRamInst = 1,
  parameter bit SramCtrlRetAonInstrExec = 0,
  parameter int SramCtrlRetAonNumPrinceRoundsHalf = 3,
  parameter bit SramCtrlRetAonUseOTIntegErr = 1,
  parameter bit SramCtrlRetAonFlopRamOutput = 1,
  // parameters for rv_dm
  parameter logic [31:0] RvDmIdcodeValue = 32'h 0000_0001,
  parameter bit RvDmUseDmiInterface = 1,
  parameter bit SecRvDmVolatileRawUnlockEn = top_pkg::SecVolatileRawUnlockEn,
  parameter logic [tlul_pkg::RsvdWidth-1:0] RvDmTlulHostUserRsvdBits = '0,
  // parameters for rv_plic_mio
  // parameters for sram_ctrl_main
  parameter int SramCtrlMainInstSize = 65536,
  parameter int SramCtrlMainNumRamInst = 1,
  parameter bit SramCtrlMainInstrExec = 1,
  parameter int SramCtrlMainNumPrinceRoundsHalf = 3,
  parameter bit SramCtrlMainUseOTIntegErr = 1,
  parameter bit SramCtrlMainFlopRamOutput = 1,
  // parameters for sram_ctrl_mbox
  parameter int SramCtrlMboxInstSize = 4096,
  parameter int SramCtrlMboxNumRamInst = 1,
  parameter bit SramCtrlMboxInstrExec = 0,
  parameter int SramCtrlMboxNumPrinceRoundsHalf = 3,
  parameter bit SramCtrlMboxUseOTIntegErr = 1,
  parameter bit SramCtrlMboxFlopRamOutput = 1,
  // parameters for dma
  parameter bit DmaEnableDataIntgGen = 1'b1,
  parameter bit DmaEnableRspDataIntgCheck = 1'b1,
  parameter logic [tlul_pkg::RsvdWidth-1:0] DmaTlUserRsvd = '0,
  parameter logic [dma_pkg::SYS_RACL_WIDTH-1:0] DmaSysRacl = '0,
  parameter int unsigned DmaOtAgentId = 0,
  // parameters for mbx0
  // parameters for mbx1
  // parameters for mbx2
  // parameters for mbx3
  // parameters for mbx4
  // parameters for mbx5
  // parameters for mbx_pcie0
  // parameters for racl_ctrl
  parameter int RaclCtrlNumExternalSubscribingIps = 1,
  // parameters for rv_core_ibex
  parameter bit RvCoreIbexPMPEnable = 1,
  parameter int unsigned RvCoreIbexPMPGranularity = 0,
  parameter int unsigned RvCoreIbexPMPNumRegions = 16,
  parameter int unsigned RvCoreIbexMHPMCounterNum = 10,
  parameter int unsigned RvCoreIbexMHPMCounterWidth = 32,
  parameter ibex_pkg::pmp_cfg_t RvCoreIbexPMPRstCfg[16] = ibex_pmp_reset_pkg::MioPmpCfgRst,
  parameter logic [33:0] RvCoreIbexPMPRstAddr[16] = ibex_pmp_reset_pkg::MioPmpAddrRst,
  parameter ibex_pkg::pmp_mseccfg_t RvCoreIbexPMPRstMsecCfg = ibex_pmp_reset_pkg::MioPmpMseccfgRst,
  parameter bit RvCoreIbexRV32E = 0,
  parameter ibex_pkg::rv32m_e RvCoreIbexRV32M = ibex_pkg::RV32MSingleCycle,
  parameter ibex_pkg::rv32b_e RvCoreIbexRV32B = ibex_pkg::RV32BOTEarlGrey,
  parameter ibex_pkg::regfile_e RvCoreIbexRegFile = ibex_pkg::RegFileFF,
  parameter bit RvCoreIbexBranchTargetALU = 1,
  parameter bit RvCoreIbexWritebackStage = 1,
  parameter bit RvCoreIbexICache = 1,
  parameter bit RvCoreIbexICacheECC = 1,
  parameter bit RvCoreIbexICacheScramble = 1,
  parameter int unsigned RvCoreIbexICacheNWays = 2,
  parameter bit RvCoreIbexBranchPredictor = 0,
  parameter bit RvCoreIbexDbgTriggerEn = 1,
  parameter int RvCoreIbexDbgHwBreakNum = 4,
  parameter bit RvCoreIbexSecureIbex = 1,
  parameter int unsigned RvCoreIbexDmBaseAddr = tl_mio_main_pkg::ADDR_SPACE_RV_DM__MEM,
  parameter int unsigned RvCoreIbexDmAddrMask = tl_mio_main_pkg::ADDR_MASK_RV_DM__MEM,
  parameter int unsigned RvCoreIbexDmHaltAddr =
      tl_mio_main_pkg::ADDR_SPACE_RV_DM__MEM + dm::HaltAddress[31:0],
  parameter int unsigned RvCoreIbexDmExceptionAddr =
      tl_mio_main_pkg::ADDR_SPACE_RV_DM__MEM + dm::ExceptionAddress[31:0],
  parameter bit RvCoreIbexPipeLine = 0,
  parameter logic [tlul_pkg::RsvdWidth-1:0] RvCoreIbexTlulHostUserRsvdBits = '0
) (


  // Inter-module Signal External type
  output dma_pkg::sys_req_t       dma_sys_req_o,
  input  dma_pkg::sys_rsp_t       dma_sys_rsp_i,
  output tlul_pkg::tl_h2d_t       dma_ctn_tl_h2d_o,
  input  tlul_pkg::tl_d2h_t       dma_ctn_tl_d2h_i,
  input  tlul_pkg::tl_h2d_t       mbx_tl_req_i,
  output tlul_pkg::tl_d2h_t       mbx_tl_rsp_o,
  input  rv_dm_pkg::next_dm_addr_t       rv_dm_next_dm_addr_i,
  input  tlul_pkg::tl_h2d_t       rv_dm_dbg_req_i,
  output tlul_pkg::tl_d2h_t       rv_dm_dbg_rsp_o,
  input  logic [31:0] fpga_info_i,
  output tlul_pkg::tl_h2d_t       ctn_tl_h2d_o,
  input  logic [31:0] rv_boot_addr_i,
  input  lc_ctrl_pkg::lc_tx_t       rv_pwrmgr_cpu_en_i,
  input  lc_ctrl_pkg::lc_tx_t       rv_cpu_en_i,
  output prim_esc_pkg::esc_rx_t       rv_core_esc_rx_o,
  input  prim_esc_pkg::esc_tx_t       rv_core_esc_tx_i,
  input  logic [7:0] soc_lsio_trigger_i,
  input  tlul_pkg::tl_d2h_t       ctn_tl_d2h_i,
  input  lc_ctrl_pkg::lc_tx_t       lc_hw_debug_en_ext_i,
  input  lc_ctrl_pkg::lc_tx_t       lc_escalate_en_ext_i,
  input  lc_ctrl_pkg::lc_tx_t       lc_check_byp_en_i,
  input  prim_ram_1p_pkg::ram_1p_cfg_t [SramCtrlRetAonNumRamInst-1:0] sram_ctrl_ret_aon_ram_1p_cfg_i,
  output prim_ram_1p_pkg::ram_1p_cfg_rsp_t [SramCtrlRetAonNumRamInst-1:0] sram_ctrl_ret_aon_ram_1p_cfg_rsp_o,
  input  prim_ram_1p_pkg::ram_1p_cfg_t [SramCtrlMainNumRamInst-1:0] sram_ctrl_main_ram_1p_cfg_i,
  output prim_ram_1p_pkg::ram_1p_cfg_rsp_t [SramCtrlMainNumRamInst-1:0] sram_ctrl_main_ram_1p_cfg_rsp_o,
  input  prim_ram_1p_pkg::ram_1p_cfg_t [SramCtrlMboxNumRamInst-1:0] sram_ctrl_mbox_ram_1p_cfg_i,
  output prim_ram_1p_pkg::ram_1p_cfg_rsp_t [SramCtrlMboxNumRamInst-1:0] sram_ctrl_mbox_ram_1p_cfg_rsp_o,
  output top_racl_pkg::racl_policy_vec_t       racl_policies_o,
  input  top_racl_pkg::racl_error_log_t [RaclCtrlNumExternalSubscribingIps-1:0] racl_error_i,

  // Incoming interrupt of group mio_external
  input logic [8:0] incoming_interrupt_mio_external_i,

  // All externally supplied clocks

  // Outgoing alerts for group mio
  output prim_alert_pkg::alert_tx_t [top_mio_pkg::NOutgoingAlertsMio-1:0] outgoing_alert_mio_tx_o,
  input  prim_alert_pkg::alert_rx_t [top_mio_pkg::NOutgoingAlertsMio-1:0] outgoing_alert_mio_rx_i,
  output prim_mubi_pkg::mubi4_t     [top_mio_pkg::NOutgoingLpgsMio-1:0]   outgoing_lpg_cg_en_mio_o,
  output prim_mubi_pkg::mubi4_t     [top_mio_pkg::NOutgoingLpgsMio-1:0]   outgoing_lpg_rst_en_mio_o,


  // Unmanaged external clocks
  input                        clk_ext_io_div4_i,
  input prim_mubi_pkg::mubi4_t cg_en_ext_io_div4_i,
  input                        clk_ext_main_i,
  input prim_mubi_pkg::mubi4_t cg_en_ext_main_i,
  input                        clk_ext_aon_i,
  input prim_mubi_pkg::mubi4_t cg_en_ext_aon_i,

  // Unmanaged external resets
  input                        rst_ext_rst_io_div4_i,
  input prim_mubi_pkg::mubi4_t rst_en_ext_rst_io_div4_i,
  input                        rst_ext_rst_main_i,
  input prim_mubi_pkg::mubi4_t rst_en_ext_rst_main_i,
  input                        rst_ext_rst_aon_i,
  input prim_mubi_pkg::mubi4_t rst_en_ext_rst_aon_i,

  input                      scan_rst_ni, // reset used for test mode
  input prim_mubi_pkg::mubi4_t scanmode_i   // lc_ctrl_pkg::On for Scan
);

  import tlul_pkg::*;
  import top_pkg::*;
  import tl_mio_main_pkg::*;
  import top_mio_pkg::*;
  // Compile-time random constants
  import top_mio_rnd_cnst_pkg::*;
  import top_mio_racl_pkg::*;

  // Local Parameters
  // local parameters for racl_ctrl
  localparam int RaclCtrlNumSubscribingIps = 7;
  // local parameters for rv_core_ibex
  localparam int unsigned RvCoreIbexNEscalationSeverities = 4;
  localparam int unsigned RvCoreIbexWidthPingCounter = 16;

  // Signals


  logic [68:0]  intr_vector;
  // Interrupt source list
  logic intr_rv_timer_timer_expired_hart0_timer0;
  logic intr_aon_timer_aon_wkup_timer_expired;
  logic intr_aon_timer_aon_wdog_timer_bark;
  logic [31:0] intr_mio_soc_proxy_external;
  logic intr_dma_dma_done;
  logic intr_dma_dma_chunk_done;
  logic intr_dma_dma_error;
  logic intr_mbx0_mbx_ready;
  logic intr_mbx0_mbx_abort;
  logic intr_mbx0_mbx_error;
  logic intr_mbx1_mbx_ready;
  logic intr_mbx1_mbx_abort;
  logic intr_mbx1_mbx_error;
  logic intr_mbx2_mbx_ready;
  logic intr_mbx2_mbx_abort;
  logic intr_mbx2_mbx_error;
  logic intr_mbx3_mbx_ready;
  logic intr_mbx3_mbx_abort;
  logic intr_mbx3_mbx_error;
  logic intr_mbx4_mbx_ready;
  logic intr_mbx4_mbx_abort;
  logic intr_mbx4_mbx_error;
  logic intr_mbx5_mbx_ready;
  logic intr_mbx5_mbx_abort;
  logic intr_mbx5_mbx_error;
  logic intr_mbx_pcie0_mbx_ready;
  logic intr_mbx_pcie0_mbx_abort;
  logic intr_mbx_pcie0_mbx_error;

  // define inter-module signals
  logic       aon_timer_aon_nmi_wdog_timer_bark;
  dma_pkg::lsio_trigger_t       dma_lsio_trigger;
  logic       rv_plic_mio_msip;
  logic       rv_plic_mio_irq;
  logic       rv_dm_debug_req;
  lc_ctrl_pkg::lc_tx_t       mio_soc_proxy_lc_hw_debug_en;
  lc_ctrl_pkg::lc_tx_t       mio_soc_proxy_lc_escalate_en;
  prim_mubi_pkg::mubi8_t       sram_ctrl_main_otp_en_sram_ifetch;
  tlul_pkg::tl_h2d_t       mio_main_tl_rv_core_ibex__corei_req;
  tlul_pkg::tl_d2h_t       mio_main_tl_rv_core_ibex__corei_rsp;
  tlul_pkg::tl_h2d_t       mio_main_tl_rv_core_ibex__cored_req;
  tlul_pkg::tl_d2h_t       mio_main_tl_rv_core_ibex__cored_rsp;
  tlul_pkg::tl_h2d_t       mio_main_tl_rv_dm__sba_req;
  tlul_pkg::tl_d2h_t       mio_main_tl_rv_dm__sba_rsp;
  tlul_pkg::tl_h2d_t       rv_dm_regs_tl_d_req;
  tlul_pkg::tl_d2h_t       rv_dm_regs_tl_d_rsp;
  tlul_pkg::tl_h2d_t       rv_dm_mem_tl_d_req;
  tlul_pkg::tl_d2h_t       rv_dm_mem_tl_d_rsp;
  tlul_pkg::tl_h2d_t       mio_main_tl_mio_peri_req;
  tlul_pkg::tl_d2h_t       mio_main_tl_mio_peri_rsp;
  tlul_pkg::tl_h2d_t       mio_soc_proxy_core_tl_req;
  tlul_pkg::tl_d2h_t       mio_soc_proxy_core_tl_rsp;
  tlul_pkg::tl_h2d_t       mio_soc_proxy_ctn_tl_req;
  tlul_pkg::tl_d2h_t       mio_soc_proxy_ctn_tl_rsp;
  tlul_pkg::tl_h2d_t       rv_plic_mio_tl_req;
  tlul_pkg::tl_d2h_t       rv_plic_mio_tl_rsp;
  tlul_pkg::tl_h2d_t       rv_core_ibex_cfg_tl_d_req;
  tlul_pkg::tl_d2h_t       rv_core_ibex_cfg_tl_d_rsp;
  tlul_pkg::tl_h2d_t       sram_ctrl_main_regs_tl_req;
  tlul_pkg::tl_d2h_t       sram_ctrl_main_regs_tl_rsp;
  tlul_pkg::tl_h2d_t       sram_ctrl_main_ram_tl_req;
  tlul_pkg::tl_d2h_t       sram_ctrl_main_ram_tl_rsp;
  tlul_pkg::tl_h2d_t       sram_ctrl_mbox_regs_tl_req;
  tlul_pkg::tl_d2h_t       sram_ctrl_mbox_regs_tl_rsp;
  tlul_pkg::tl_h2d_t       sram_ctrl_mbox_ram_tl_req;
  tlul_pkg::tl_d2h_t       sram_ctrl_mbox_ram_tl_rsp;
  tlul_pkg::tl_h2d_t       dma_tl_d_req;
  tlul_pkg::tl_d2h_t       dma_tl_d_rsp;
  tlul_pkg::tl_h2d_t       mio_main_tl_dma__host_req;
  tlul_pkg::tl_d2h_t       mio_main_tl_dma__host_rsp;
  tlul_pkg::tl_h2d_t       mbx0_core_tl_d_req;
  tlul_pkg::tl_d2h_t       mbx0_core_tl_d_rsp;
  tlul_pkg::tl_h2d_t       mio_main_tl_mbx0__sram_req;
  tlul_pkg::tl_d2h_t       mio_main_tl_mbx0__sram_rsp;
  tlul_pkg::tl_h2d_t       mbx1_core_tl_d_req;
  tlul_pkg::tl_d2h_t       mbx1_core_tl_d_rsp;
  tlul_pkg::tl_h2d_t       mio_main_tl_mbx1__sram_req;
  tlul_pkg::tl_d2h_t       mio_main_tl_mbx1__sram_rsp;
  tlul_pkg::tl_h2d_t       mbx2_core_tl_d_req;
  tlul_pkg::tl_d2h_t       mbx2_core_tl_d_rsp;
  tlul_pkg::tl_h2d_t       mio_main_tl_mbx2__sram_req;
  tlul_pkg::tl_d2h_t       mio_main_tl_mbx2__sram_rsp;
  tlul_pkg::tl_h2d_t       mbx3_core_tl_d_req;
  tlul_pkg::tl_d2h_t       mbx3_core_tl_d_rsp;
  tlul_pkg::tl_h2d_t       mio_main_tl_mbx3__sram_req;
  tlul_pkg::tl_d2h_t       mio_main_tl_mbx3__sram_rsp;
  tlul_pkg::tl_h2d_t       mbx4_core_tl_d_req;
  tlul_pkg::tl_d2h_t       mbx4_core_tl_d_rsp;
  tlul_pkg::tl_h2d_t       mio_main_tl_mbx4__sram_req;
  tlul_pkg::tl_d2h_t       mio_main_tl_mbx4__sram_rsp;
  tlul_pkg::tl_h2d_t       mbx5_core_tl_d_req;
  tlul_pkg::tl_d2h_t       mbx5_core_tl_d_rsp;
  tlul_pkg::tl_h2d_t       mio_main_tl_mbx5__sram_req;
  tlul_pkg::tl_d2h_t       mio_main_tl_mbx5__sram_rsp;
  tlul_pkg::tl_h2d_t       mbx_pcie0_core_tl_d_req;
  tlul_pkg::tl_d2h_t       mbx_pcie0_core_tl_d_rsp;
  tlul_pkg::tl_h2d_t       mio_main_tl_mbx_pcie0__sram_req;
  tlul_pkg::tl_d2h_t       mio_main_tl_mbx_pcie0__sram_rsp;
  tlul_pkg::tl_h2d_t       rv_timer_tl_req;
  tlul_pkg::tl_d2h_t       rv_timer_tl_rsp;
  tlul_pkg::tl_h2d_t       sram_ctrl_ret_aon_regs_tl_req;
  tlul_pkg::tl_d2h_t       sram_ctrl_ret_aon_regs_tl_rsp;
  tlul_pkg::tl_h2d_t       sram_ctrl_ret_aon_ram_tl_req;
  tlul_pkg::tl_d2h_t       sram_ctrl_ret_aon_ram_tl_rsp;
  tlul_pkg::tl_h2d_t       aon_timer_aon_tl_req;
  tlul_pkg::tl_d2h_t       aon_timer_aon_tl_rsp;
  tlul_pkg::tl_h2d_t       mbx0_soc_tl_d_req;
  tlul_pkg::tl_d2h_t       mbx0_soc_tl_d_rsp;
  tlul_pkg::tl_h2d_t       mbx1_soc_tl_d_req;
  tlul_pkg::tl_d2h_t       mbx1_soc_tl_d_rsp;
  tlul_pkg::tl_h2d_t       mbx2_soc_tl_d_req;
  tlul_pkg::tl_d2h_t       mbx2_soc_tl_d_rsp;
  tlul_pkg::tl_h2d_t       mbx3_soc_tl_d_req;
  tlul_pkg::tl_d2h_t       mbx3_soc_tl_d_rsp;
  tlul_pkg::tl_h2d_t       mbx4_soc_tl_d_req;
  tlul_pkg::tl_d2h_t       mbx4_soc_tl_d_rsp;
  tlul_pkg::tl_h2d_t       mbx5_soc_tl_d_req;
  tlul_pkg::tl_d2h_t       mbx5_soc_tl_d_rsp;
  tlul_pkg::tl_h2d_t       mbx_pcie0_soc_tl_d_req;
  tlul_pkg::tl_d2h_t       mbx_pcie0_soc_tl_d_rsp;
  tlul_pkg::tl_h2d_t       racl_ctrl_tl_req;
  tlul_pkg::tl_d2h_t       racl_ctrl_tl_rsp;
  top_racl_pkg::racl_policy_vec_t       racl_ctrl_racl_policies;
  top_racl_pkg::racl_error_log_t [RaclCtrlNumSubscribingIps-1:0] racl_ctrl_racl_error;
  logic       rv_core_ibex_irq_timer;
  logic [31:0] rv_core_ibex_hart_id;

  // define mixed connection to port
  assign racl_policies_o = racl_ctrl_racl_policies;

  // define partial inter-module tie-off

  // assign partial inter-module tie-off



  // ibex specific assignments
  // TODO: This should be further automated in the future.
  assign rv_core_ibex_irq_timer = intr_rv_timer_timer_expired_hart0_timer0;
  assign rv_core_ibex_hart_id = '0;



  // Outgoing LPGs for alert group mio
  // clk_ext_io_div4_i_ext_rst_io_div4_0
  assign outgoing_lpg_cg_en_mio_o[0] = cg_en_ext_io_div4_i;
  assign outgoing_lpg_rst_en_mio_o[0] = rst_en_ext_rst_io_div4_i;
  // clk_ext_main_i_ext_rst_main_0
  assign outgoing_lpg_cg_en_mio_o[1] = cg_en_ext_main_i;
  assign outgoing_lpg_rst_en_mio_o[1] = rst_en_ext_rst_main_i;

  // Peripheral Instantiation


  rv_timer #(
    .AlertAsyncOn(AsyncOnOutgoingAlertMio[0:0])
  ) u_rv_timer (

      // Interrupt
      .intr_timer_expired_hart0_timer0_o (intr_rv_timer_timer_expired_hart0_timer0),
      // External alert group "mio" [0]: fatal_fault
      .alert_tx_o  ( outgoing_alert_mio_tx_o[0:0] ),
      .alert_rx_i  ( outgoing_alert_mio_rx_i[0:0] ),

      // Inter-module signals
      .tl_i(rv_timer_tl_req),
      .tl_o(rv_timer_tl_rsp),

      // Clock and reset connections
      .clk_i (clk_ext_io_div4_i),
      .rst_ni (rst_ext_rst_io_div4_i)
  );
  aon_timer #(
    .AlertAsyncOn(AsyncOnOutgoingAlertMio[1:1])
  ) u_aon_timer_aon (

      // Interrupt
      .intr_wkup_timer_expired_o (intr_aon_timer_aon_wkup_timer_expired),
      .intr_wdog_timer_bark_o    (intr_aon_timer_aon_wdog_timer_bark),
      // External alert group "mio" [1]: fatal_fault
      .alert_tx_o  ( outgoing_alert_mio_tx_o[1:1] ),
      .alert_rx_i  ( outgoing_alert_mio_rx_i[1:1] ),

      // Inter-module signals
      .nmi_wdog_timer_bark_o(aon_timer_aon_nmi_wdog_timer_bark),
      .wkup_req_o(),
      .aon_timer_rst_req_o(),
      .lc_escalate_en_i(mio_soc_proxy_lc_escalate_en),
      .sleep_mode_i('0),
      .tl_i(aon_timer_aon_tl_req),
      .tl_o(aon_timer_aon_tl_rsp),

      // Clock and reset connections
      .clk_i (clk_ext_io_div4_i),
      .clk_aon_i (clk_ext_aon_i),
      .rst_ni (rst_ext_rst_io_div4_i),
      .rst_aon_ni (rst_ext_rst_aon_i)
  );
  mio_soc_proxy #(
    .AlertAsyncOn(AsyncOnOutgoingAlertMio[2:2])
  ) u_mio_soc_proxy (

      // Interrupt
      .intr_external_o (intr_mio_soc_proxy_external),
      // External alert group "mio" [2]: fatal_alert_intg
      .alert_tx_o  ( outgoing_alert_mio_tx_o[2:2] ),
      .alert_rx_i  ( outgoing_alert_mio_rx_i[2:2] ),

      // Inter-module signals
      .lc_escalate_en_o(mio_soc_proxy_lc_escalate_en),
      .lc_escalate_en_ext_i(lc_escalate_en_ext_i),
      .lc_hw_debug_en_o(mio_soc_proxy_lc_hw_debug_en),
      .lc_hw_debug_en_ext_i(lc_hw_debug_en_ext_i),
      .ctn_tl_h2d_o(ctn_tl_h2d_o),
      .ctn_tl_d2h_i(ctn_tl_d2h_i),
      .soc_lsio_trigger_i(soc_lsio_trigger_i),
      .dma_lsio_trigger_o(dma_lsio_trigger),
      .soc_intr_async_i('0),
      .mubi8_true_o(sram_ctrl_main_otp_en_sram_ifetch),
      .core_tl_i(mio_soc_proxy_core_tl_req),
      .core_tl_o(mio_soc_proxy_core_tl_rsp),
      .ctn_tl_i(mio_soc_proxy_ctn_tl_req),
      .ctn_tl_o(mio_soc_proxy_ctn_tl_rsp),

      // Clock and reset connections
      .clk_i (clk_ext_main_i),
      .rst_ni (rst_ext_rst_main_i)
  );
  sram_ctrl #(
    .AlertAsyncOn(AsyncOnOutgoingAlertMio[3:3]),
    .RndCnstSramKey(RndCnstSramCtrlRetAonSramKey),
    .RndCnstSramNonce(RndCnstSramCtrlRetAonSramNonce),
    .RndCnstLfsrSeed(RndCnstSramCtrlRetAonLfsrSeed),
    .RndCnstLfsrPerm(RndCnstSramCtrlRetAonLfsrPerm),
    .MemSizeRam(4096),
    .InstSize(SramCtrlRetAonInstSize),
    .NumRamInst(SramCtrlRetAonNumRamInst),
    .InstrExec(SramCtrlRetAonInstrExec),
    .NumPrinceRoundsHalf(SramCtrlRetAonNumPrinceRoundsHalf),
    .UseOTIntegErr(SramCtrlRetAonUseOTIntegErr),
    .FlopRamOutput(SramCtrlRetAonFlopRamOutput)
  ) u_sram_ctrl_ret_aon (
      // External alert group "mio" [3]: fatal_error
      .alert_tx_o  ( outgoing_alert_mio_tx_o[3:3] ),
      .alert_rx_i  ( outgoing_alert_mio_rx_i[3:3] ),

      // Inter-module signals
      .sram_otp_key_o(),
      .sram_otp_key_i(otp_ctrl_pkg::SRAM_OTP_KEY_RSP_DEFAULT),
      .cfg_i(sram_ctrl_ret_aon_ram_1p_cfg_i),
      .cfg_rsp_o(sram_ctrl_ret_aon_ram_1p_cfg_rsp_o),
      .lc_escalate_en_i(mio_soc_proxy_lc_escalate_en),
      .lc_hw_debug_en_i(mio_soc_proxy_lc_hw_debug_en),
      .otp_en_sram_ifetch_i(prim_mubi_pkg::MuBi8False),
      .racl_policies_i(top_racl_pkg::RACL_POLICY_VEC_DEFAULT),
      .racl_error_o(),
      .sram_error_record_uncor_err_o(),
      .sram_error_record_corr_err_o(),
      .sram_error_record_err_addr_o(),
      .regs_tl_i(sram_ctrl_ret_aon_regs_tl_req),
      .regs_tl_o(sram_ctrl_ret_aon_regs_tl_rsp),
      .ram_tl_i(sram_ctrl_ret_aon_ram_tl_req),
      .ram_tl_o(sram_ctrl_ret_aon_ram_tl_rsp),

      // Clock and reset connections
      .clk_i (clk_ext_io_div4_i),
      .clk_otp_i (clk_ext_io_div4_i),
      .rst_ni (rst_ext_rst_io_div4_i),
      .rst_otp_ni (rst_ext_rst_io_div4_i)
  );
  rv_dm #(
    .AlertAsyncOn(AsyncOnOutgoingAlertMio[4:4]),
    .IdcodeValue(RvDmIdcodeValue),
    .UseDmiInterface(RvDmUseDmiInterface),
    .SecVolatileRawUnlockEn(SecRvDmVolatileRawUnlockEn),
    .TlulHostUserRsvdBits(RvDmTlulHostUserRsvdBits)
  ) u_rv_dm (
      // External alert group "mio" [4]: fatal_fault
      .alert_tx_o  ( outgoing_alert_mio_tx_o[4:4] ),
      .alert_rx_i  ( outgoing_alert_mio_rx_i[4:4] ),

      // Inter-module signals
      .next_dm_addr_i(rv_dm_next_dm_addr_i),
      .jtag_i(jtag_pkg::JTAG_REQ_DEFAULT),
      .jtag_o(),
      .lc_hw_debug_en_i(mio_soc_proxy_lc_hw_debug_en),
      .lc_dft_en_i(lc_ctrl_pkg::Off),
      .pinmux_hw_debug_en_i(lc_ctrl_pkg::Off),
      .otp_dis_rv_dm_late_debug_i(prim_mubi_pkg::MuBi8False),
      .unavailable_i(1'b0),
      .ndmreset_req_o(),
      .dmactive_o(),
      .debug_req_o(rv_dm_debug_req),
      .lc_escalate_en_i(mio_soc_proxy_lc_escalate_en),
      .lc_check_byp_en_i(lc_check_byp_en_i),
      .strap_en_i(1'b0),
      .strap_en_override_i(1'b0),
      .sba_tl_h_o(mio_main_tl_rv_dm__sba_req),
      .sba_tl_h_i(mio_main_tl_rv_dm__sba_rsp),
      .regs_tl_d_i(rv_dm_regs_tl_d_req),
      .regs_tl_d_o(rv_dm_regs_tl_d_rsp),
      .mem_tl_d_i(rv_dm_mem_tl_d_req),
      .mem_tl_d_o(rv_dm_mem_tl_d_rsp),
      .dbg_tl_d_i(rv_dm_dbg_req_i),
      .dbg_tl_d_o(rv_dm_dbg_rsp_o),
      .scanmode_i,
      .scan_rst_ni,

      // Clock and reset connections
      .clk_i (clk_ext_main_i),
      .clk_lc_i (clk_ext_main_i),
      .rst_ni (rst_ext_rst_main_i),
      .rst_lc_ni (rst_ext_rst_main_i)
  );
  rv_plic_mio #(
    .AlertAsyncOn(AsyncOnOutgoingAlertMio[5:5])
  ) u_rv_plic_mio (
      // External alert group "mio" [5]: fatal_fault
      .alert_tx_o  ( outgoing_alert_mio_tx_o[5:5] ),
      .alert_rx_i  ( outgoing_alert_mio_rx_i[5:5] ),

      // Inter-module signals
      .irq_o(rv_plic_mio_irq),
      .irq_id_o(),
      .msip_o(rv_plic_mio_msip),
      .tl_i(rv_plic_mio_tl_req),
      .tl_o(rv_plic_mio_tl_rsp),
      .intr_src_i (intr_vector),

      // Clock and reset connections
      .clk_i (clk_ext_main_i),
      .rst_ni (rst_ext_rst_main_i)
  );
  sram_ctrl #(
    .AlertAsyncOn(AsyncOnOutgoingAlertMio[6:6]),
    .RndCnstSramKey(RndCnstSramCtrlMainSramKey),
    .RndCnstSramNonce(RndCnstSramCtrlMainSramNonce),
    .RndCnstLfsrSeed(RndCnstSramCtrlMainLfsrSeed),
    .RndCnstLfsrPerm(RndCnstSramCtrlMainLfsrPerm),
    .MemSizeRam(65536),
    .InstSize(SramCtrlMainInstSize),
    .NumRamInst(SramCtrlMainNumRamInst),
    .InstrExec(SramCtrlMainInstrExec),
    .NumPrinceRoundsHalf(SramCtrlMainNumPrinceRoundsHalf),
    .UseOTIntegErr(SramCtrlMainUseOTIntegErr),
    .FlopRamOutput(SramCtrlMainFlopRamOutput)
  ) u_sram_ctrl_main (
      // External alert group "mio" [6]: fatal_error
      .alert_tx_o  ( outgoing_alert_mio_tx_o[6:6] ),
      .alert_rx_i  ( outgoing_alert_mio_rx_i[6:6] ),

      // Inter-module signals
      .sram_otp_key_o(),
      .sram_otp_key_i(otp_ctrl_pkg::SRAM_OTP_KEY_RSP_DEFAULT),
      .cfg_i(sram_ctrl_main_ram_1p_cfg_i),
      .cfg_rsp_o(sram_ctrl_main_ram_1p_cfg_rsp_o),
      .lc_escalate_en_i(mio_soc_proxy_lc_escalate_en),
      .lc_hw_debug_en_i(mio_soc_proxy_lc_hw_debug_en),
      .otp_en_sram_ifetch_i(sram_ctrl_main_otp_en_sram_ifetch),
      .racl_policies_i(top_racl_pkg::RACL_POLICY_VEC_DEFAULT),
      .racl_error_o(),
      .sram_error_record_uncor_err_o(),
      .sram_error_record_corr_err_o(),
      .sram_error_record_err_addr_o(),
      .regs_tl_i(sram_ctrl_main_regs_tl_req),
      .regs_tl_o(sram_ctrl_main_regs_tl_rsp),
      .ram_tl_i(sram_ctrl_main_ram_tl_req),
      .ram_tl_o(sram_ctrl_main_ram_tl_rsp),

      // Clock and reset connections
      .clk_i (clk_ext_main_i),
      .clk_otp_i (clk_ext_io_div4_i),
      .rst_ni (rst_ext_rst_main_i),
      .rst_otp_ni (rst_ext_rst_io_div4_i)
  );
  sram_ctrl #(
    .AlertAsyncOn(AsyncOnOutgoingAlertMio[7:7]),
    .RndCnstSramKey(RndCnstSramCtrlMboxSramKey),
    .RndCnstSramNonce(RndCnstSramCtrlMboxSramNonce),
    .RndCnstLfsrSeed(RndCnstSramCtrlMboxLfsrSeed),
    .RndCnstLfsrPerm(RndCnstSramCtrlMboxLfsrPerm),
    .MemSizeRam(4096),
    .InstSize(SramCtrlMboxInstSize),
    .NumRamInst(SramCtrlMboxNumRamInst),
    .InstrExec(SramCtrlMboxInstrExec),
    .NumPrinceRoundsHalf(SramCtrlMboxNumPrinceRoundsHalf),
    .UseOTIntegErr(SramCtrlMboxUseOTIntegErr),
    .FlopRamOutput(SramCtrlMboxFlopRamOutput)
  ) u_sram_ctrl_mbox (
      // External alert group "mio" [7]: fatal_error
      .alert_tx_o  ( outgoing_alert_mio_tx_o[7:7] ),
      .alert_rx_i  ( outgoing_alert_mio_rx_i[7:7] ),

      // Inter-module signals
      .sram_otp_key_o(),
      .sram_otp_key_i(otp_ctrl_pkg::SRAM_OTP_KEY_RSP_DEFAULT),
      .cfg_i(sram_ctrl_mbox_ram_1p_cfg_i),
      .cfg_rsp_o(sram_ctrl_mbox_ram_1p_cfg_rsp_o),
      .lc_escalate_en_i(mio_soc_proxy_lc_escalate_en),
      .lc_hw_debug_en_i(mio_soc_proxy_lc_hw_debug_en),
      .otp_en_sram_ifetch_i(prim_mubi_pkg::MuBi8False),
      .racl_policies_i(top_racl_pkg::RACL_POLICY_VEC_DEFAULT),
      .racl_error_o(),
      .sram_error_record_uncor_err_o(),
      .sram_error_record_corr_err_o(),
      .sram_error_record_err_addr_o(),
      .regs_tl_i(sram_ctrl_mbox_regs_tl_req),
      .regs_tl_o(sram_ctrl_mbox_regs_tl_rsp),
      .ram_tl_i(sram_ctrl_mbox_ram_tl_req),
      .ram_tl_o(sram_ctrl_mbox_ram_tl_rsp),

      // Clock and reset connections
      .clk_i (clk_ext_main_i),
      .clk_otp_i (clk_ext_io_div4_i),
      .rst_ni (rst_ext_rst_main_i),
      .rst_otp_ni (rst_ext_rst_io_div4_i)
  );
  dma #(
    .AlertAsyncOn(AsyncOnOutgoingAlertMio[8:8]),
    .EnableDataIntgGen(DmaEnableDataIntgGen),
    .EnableRspDataIntgCheck(DmaEnableRspDataIntgCheck),
    .TlUserRsvd(DmaTlUserRsvd),
    .SysRacl(DmaSysRacl),
    .OtAgentId(DmaOtAgentId)
  ) u_dma (

      // Interrupt
      .intr_dma_done_o       (intr_dma_dma_done),
      .intr_dma_chunk_done_o (intr_dma_dma_chunk_done),
      .intr_dma_error_o      (intr_dma_dma_error),
      // External alert group "mio" [8]: fatal_fault
      .alert_tx_o  ( outgoing_alert_mio_tx_o[8:8] ),
      .alert_rx_i  ( outgoing_alert_mio_rx_i[8:8] ),

      // Inter-module signals
      .lsio_trigger_i(dma_lsio_trigger),
      .sys_o(dma_sys_req_o),
      .sys_i(dma_sys_rsp_i),
      .ctn_tl_h2d_o(dma_ctn_tl_h2d_o),
      .ctn_tl_d2h_i(dma_ctn_tl_d2h_i),
      .host_tl_h_o(mio_main_tl_dma__host_req),
      .host_tl_h_i(mio_main_tl_dma__host_rsp),
      .tl_d_i(dma_tl_d_req),
      .tl_d_o(dma_tl_d_rsp),
      .scanmode_i,

      // Clock and reset connections
      .clk_i (clk_ext_main_i),
      .rst_ni (rst_ext_rst_main_i)
  );
  mbx #(
    .EnableRacl(1'b1),
    .RaclErrorRsp(1'b1),
    .RaclPolicySelVecSoc(RACL_POLICY_SEL_MBX0_SOC),
    .RaclPolicySelWinSocWdata(RACL_POLICY_SEL_MBX0_SOC_WIN_WDATA),
    .RaclPolicySelWinSocRdata(RACL_POLICY_SEL_MBX0_SOC_WIN_RDATA),
    .AlertAsyncOn(AsyncOnOutgoingAlertMio[10:9])
  ) u_mbx0 (

      // Interrupt
      .intr_mbx_ready_o (intr_mbx0_mbx_ready),
      .intr_mbx_abort_o (intr_mbx0_mbx_abort),
      .intr_mbx_error_o (intr_mbx0_mbx_error),
      // External alert group "mio" [9]: fatal_fault
      // External alert group "mio" [10]: recov_fault
      .alert_tx_o  ( outgoing_alert_mio_tx_o[10:9] ),
      .alert_rx_i  ( outgoing_alert_mio_rx_i[10:9] ),

      // Inter-module signals
      .doe_intr_support_o(),
      .doe_intr_en_o(),
      .doe_intr_o(),
      .doe_async_msg_support_o(),
      .racl_policies_i(racl_ctrl_racl_policies),
      .racl_error_o(racl_ctrl_racl_error[0]),
      .sram_tl_h_o(mio_main_tl_mbx0__sram_req),
      .sram_tl_h_i(mio_main_tl_mbx0__sram_rsp),
      .core_tl_d_i(mbx0_core_tl_d_req),
      .core_tl_d_o(mbx0_core_tl_d_rsp),
      .soc_tl_d_i(mbx0_soc_tl_d_req),
      .soc_tl_d_o(mbx0_soc_tl_d_rsp),

      // Clock and reset connections
      .clk_i (clk_ext_main_i),
      .rst_ni (rst_ext_rst_main_i)
  );
  mbx #(
    .EnableRacl(1'b1),
    .RaclErrorRsp(1'b1),
    .RaclPolicySelVecSoc(RACL_POLICY_SEL_MBX1_SOC),
    .RaclPolicySelWinSocWdata(RACL_POLICY_SEL_MBX1_SOC_WIN_WDATA),
    .RaclPolicySelWinSocRdata(RACL_POLICY_SEL_MBX1_SOC_WIN_RDATA),
    .AlertAsyncOn(AsyncOnOutgoingAlertMio[12:11])
  ) u_mbx1 (

      // Interrupt
      .intr_mbx_ready_o (intr_mbx1_mbx_ready),
      .intr_mbx_abort_o (intr_mbx1_mbx_abort),
      .intr_mbx_error_o (intr_mbx1_mbx_error),
      // External alert group "mio" [11]: fatal_fault
      // External alert group "mio" [12]: recov_fault
      .alert_tx_o  ( outgoing_alert_mio_tx_o[12:11] ),
      .alert_rx_i  ( outgoing_alert_mio_rx_i[12:11] ),

      // Inter-module signals
      .doe_intr_support_o(),
      .doe_intr_en_o(),
      .doe_intr_o(),
      .doe_async_msg_support_o(),
      .racl_policies_i(racl_ctrl_racl_policies),
      .racl_error_o(racl_ctrl_racl_error[1]),
      .sram_tl_h_o(mio_main_tl_mbx1__sram_req),
      .sram_tl_h_i(mio_main_tl_mbx1__sram_rsp),
      .core_tl_d_i(mbx1_core_tl_d_req),
      .core_tl_d_o(mbx1_core_tl_d_rsp),
      .soc_tl_d_i(mbx1_soc_tl_d_req),
      .soc_tl_d_o(mbx1_soc_tl_d_rsp),

      // Clock and reset connections
      .clk_i (clk_ext_main_i),
      .rst_ni (rst_ext_rst_main_i)
  );
  mbx #(
    .EnableRacl(1'b1),
    .RaclErrorRsp(1'b1),
    .RaclPolicySelVecSoc(RACL_POLICY_SEL_MBX2_SOC),
    .RaclPolicySelWinSocWdata(RACL_POLICY_SEL_MBX2_SOC_WIN_WDATA),
    .RaclPolicySelWinSocRdata(RACL_POLICY_SEL_MBX2_SOC_WIN_RDATA),
    .AlertAsyncOn(AsyncOnOutgoingAlertMio[14:13])
  ) u_mbx2 (

      // Interrupt
      .intr_mbx_ready_o (intr_mbx2_mbx_ready),
      .intr_mbx_abort_o (intr_mbx2_mbx_abort),
      .intr_mbx_error_o (intr_mbx2_mbx_error),
      // External alert group "mio" [13]: fatal_fault
      // External alert group "mio" [14]: recov_fault
      .alert_tx_o  ( outgoing_alert_mio_tx_o[14:13] ),
      .alert_rx_i  ( outgoing_alert_mio_rx_i[14:13] ),

      // Inter-module signals
      .doe_intr_support_o(),
      .doe_intr_en_o(),
      .doe_intr_o(),
      .doe_async_msg_support_o(),
      .racl_policies_i(racl_ctrl_racl_policies),
      .racl_error_o(racl_ctrl_racl_error[2]),
      .sram_tl_h_o(mio_main_tl_mbx2__sram_req),
      .sram_tl_h_i(mio_main_tl_mbx2__sram_rsp),
      .core_tl_d_i(mbx2_core_tl_d_req),
      .core_tl_d_o(mbx2_core_tl_d_rsp),
      .soc_tl_d_i(mbx2_soc_tl_d_req),
      .soc_tl_d_o(mbx2_soc_tl_d_rsp),

      // Clock and reset connections
      .clk_i (clk_ext_main_i),
      .rst_ni (rst_ext_rst_main_i)
  );
  mbx #(
    .EnableRacl(1'b1),
    .RaclErrorRsp(1'b1),
    .RaclPolicySelVecSoc(RACL_POLICY_SEL_MBX3_SOC),
    .RaclPolicySelWinSocWdata(RACL_POLICY_SEL_MBX3_SOC_WIN_WDATA),
    .RaclPolicySelWinSocRdata(RACL_POLICY_SEL_MBX3_SOC_WIN_RDATA),
    .AlertAsyncOn(AsyncOnOutgoingAlertMio[16:15])
  ) u_mbx3 (

      // Interrupt
      .intr_mbx_ready_o (intr_mbx3_mbx_ready),
      .intr_mbx_abort_o (intr_mbx3_mbx_abort),
      .intr_mbx_error_o (intr_mbx3_mbx_error),
      // External alert group "mio" [15]: fatal_fault
      // External alert group "mio" [16]: recov_fault
      .alert_tx_o  ( outgoing_alert_mio_tx_o[16:15] ),
      .alert_rx_i  ( outgoing_alert_mio_rx_i[16:15] ),

      // Inter-module signals
      .doe_intr_support_o(),
      .doe_intr_en_o(),
      .doe_intr_o(),
      .doe_async_msg_support_o(),
      .racl_policies_i(racl_ctrl_racl_policies),
      .racl_error_o(racl_ctrl_racl_error[3]),
      .sram_tl_h_o(mio_main_tl_mbx3__sram_req),
      .sram_tl_h_i(mio_main_tl_mbx3__sram_rsp),
      .core_tl_d_i(mbx3_core_tl_d_req),
      .core_tl_d_o(mbx3_core_tl_d_rsp),
      .soc_tl_d_i(mbx3_soc_tl_d_req),
      .soc_tl_d_o(mbx3_soc_tl_d_rsp),

      // Clock and reset connections
      .clk_i (clk_ext_main_i),
      .rst_ni (rst_ext_rst_main_i)
  );
  mbx #(
    .EnableRacl(1'b1),
    .RaclErrorRsp(1'b1),
    .RaclPolicySelVecSoc(RACL_POLICY_SEL_MBX4_SOC),
    .RaclPolicySelWinSocWdata(RACL_POLICY_SEL_MBX4_SOC_WIN_WDATA),
    .RaclPolicySelWinSocRdata(RACL_POLICY_SEL_MBX4_SOC_WIN_RDATA),
    .AlertAsyncOn(AsyncOnOutgoingAlertMio[18:17])
  ) u_mbx4 (

      // Interrupt
      .intr_mbx_ready_o (intr_mbx4_mbx_ready),
      .intr_mbx_abort_o (intr_mbx4_mbx_abort),
      .intr_mbx_error_o (intr_mbx4_mbx_error),
      // External alert group "mio" [17]: fatal_fault
      // External alert group "mio" [18]: recov_fault
      .alert_tx_o  ( outgoing_alert_mio_tx_o[18:17] ),
      .alert_rx_i  ( outgoing_alert_mio_rx_i[18:17] ),

      // Inter-module signals
      .doe_intr_support_o(),
      .doe_intr_en_o(),
      .doe_intr_o(),
      .doe_async_msg_support_o(),
      .racl_policies_i(racl_ctrl_racl_policies),
      .racl_error_o(racl_ctrl_racl_error[4]),
      .sram_tl_h_o(mio_main_tl_mbx4__sram_req),
      .sram_tl_h_i(mio_main_tl_mbx4__sram_rsp),
      .core_tl_d_i(mbx4_core_tl_d_req),
      .core_tl_d_o(mbx4_core_tl_d_rsp),
      .soc_tl_d_i(mbx4_soc_tl_d_req),
      .soc_tl_d_o(mbx4_soc_tl_d_rsp),

      // Clock and reset connections
      .clk_i (clk_ext_main_i),
      .rst_ni (rst_ext_rst_main_i)
  );
  mbx #(
    .EnableRacl(1'b1),
    .RaclErrorRsp(1'b1),
    .RaclPolicySelVecSoc(RACL_POLICY_SEL_MBX5_SOC),
    .RaclPolicySelWinSocWdata(RACL_POLICY_SEL_MBX5_SOC_WIN_WDATA),
    .RaclPolicySelWinSocRdata(RACL_POLICY_SEL_MBX5_SOC_WIN_RDATA),
    .AlertAsyncOn(AsyncOnOutgoingAlertMio[20:19])
  ) u_mbx5 (

      // Interrupt
      .intr_mbx_ready_o (intr_mbx5_mbx_ready),
      .intr_mbx_abort_o (intr_mbx5_mbx_abort),
      .intr_mbx_error_o (intr_mbx5_mbx_error),
      // External alert group "mio" [19]: fatal_fault
      // External alert group "mio" [20]: recov_fault
      .alert_tx_o  ( outgoing_alert_mio_tx_o[20:19] ),
      .alert_rx_i  ( outgoing_alert_mio_rx_i[20:19] ),

      // Inter-module signals
      .doe_intr_support_o(),
      .doe_intr_en_o(),
      .doe_intr_o(),
      .doe_async_msg_support_o(),
      .racl_policies_i(racl_ctrl_racl_policies),
      .racl_error_o(racl_ctrl_racl_error[5]),
      .sram_tl_h_o(mio_main_tl_mbx5__sram_req),
      .sram_tl_h_i(mio_main_tl_mbx5__sram_rsp),
      .core_tl_d_i(mbx5_core_tl_d_req),
      .core_tl_d_o(mbx5_core_tl_d_rsp),
      .soc_tl_d_i(mbx5_soc_tl_d_req),
      .soc_tl_d_o(mbx5_soc_tl_d_rsp),

      // Clock and reset connections
      .clk_i (clk_ext_main_i),
      .rst_ni (rst_ext_rst_main_i)
  );
  mbx #(
    .EnableRacl(1'b1),
    .RaclErrorRsp(1'b1),
    .RaclPolicySelVecSoc(RACL_POLICY_SEL_MBX_PCIE0_SOC),
    .RaclPolicySelWinSocWdata(RACL_POLICY_SEL_MBX_PCIE0_SOC_WIN_WDATA),
    .RaclPolicySelWinSocRdata(RACL_POLICY_SEL_MBX_PCIE0_SOC_WIN_RDATA),
    .AlertAsyncOn(AsyncOnOutgoingAlertMio[22:21])
  ) u_mbx_pcie0 (

      // Interrupt
      .intr_mbx_ready_o (intr_mbx_pcie0_mbx_ready),
      .intr_mbx_abort_o (intr_mbx_pcie0_mbx_abort),
      .intr_mbx_error_o (intr_mbx_pcie0_mbx_error),
      // External alert group "mio" [21]: fatal_fault
      // External alert group "mio" [22]: recov_fault
      .alert_tx_o  ( outgoing_alert_mio_tx_o[22:21] ),
      .alert_rx_i  ( outgoing_alert_mio_rx_i[22:21] ),

      // Inter-module signals
      .doe_intr_support_o(),
      .doe_intr_en_o(),
      .doe_intr_o(),
      .doe_async_msg_support_o(),
      .racl_policies_i(racl_ctrl_racl_policies),
      .racl_error_o(racl_ctrl_racl_error[6]),
      .sram_tl_h_o(mio_main_tl_mbx_pcie0__sram_req),
      .sram_tl_h_i(mio_main_tl_mbx_pcie0__sram_rsp),
      .core_tl_d_i(mbx_pcie0_core_tl_d_req),
      .core_tl_d_o(mbx_pcie0_core_tl_d_rsp),
      .soc_tl_d_i(mbx_pcie0_soc_tl_d_req),
      .soc_tl_d_o(mbx_pcie0_soc_tl_d_rsp),

      // Clock and reset connections
      .clk_i (clk_ext_main_i),
      .rst_ni (rst_ext_rst_main_i)
  );
  racl_ctrl_mio #(
    .RaclErrorRsp(1'b1),
    .AlertAsyncOn(AsyncOnOutgoingAlertMio[24:23]),
    .NumSubscribingIps(RaclCtrlNumSubscribingIps),
    .NumExternalSubscribingIps(RaclCtrlNumExternalSubscribingIps)
  ) u_racl_ctrl (
      // External alert group "mio" [23]: recov_ctrl_update_err
      // External alert group "mio" [24]: fatal_fault
      .alert_tx_o  ( outgoing_alert_mio_tx_o[24:23] ),
      .alert_rx_i  ( outgoing_alert_mio_rx_i[24:23] ),

      // Inter-module signals
      .racl_policies_o(racl_ctrl_racl_policies),
      .racl_error_i(racl_ctrl_racl_error),
      .racl_error_external_i(racl_error_i),
      .tl_i(racl_ctrl_tl_req),
      .tl_o(racl_ctrl_tl_rsp),

      // Clock and reset connections
      .clk_i (clk_ext_main_i),
      .rst_shadowed_ni (rst_ext_rst_main_i),
      .rst_ni (rst_ext_rst_main_i)
  );
  rv_core_ibex #(
    .AlertAsyncOn(AsyncOnOutgoingAlertMio[28:25]),
    .RndCnstLfsrSeed(RndCnstRvCoreIbexLfsrSeed),
    .RndCnstLfsrPerm(RndCnstRvCoreIbexLfsrPerm),
    .RndCnstIbexKeyDefault(RndCnstRvCoreIbexIbexKeyDefault),
    .RndCnstIbexNonceDefault(RndCnstRvCoreIbexIbexNonceDefault),
    .NEscalationSeverities(RvCoreIbexNEscalationSeverities),
    .WidthPingCounter(RvCoreIbexWidthPingCounter),
    .PMPEnable(RvCoreIbexPMPEnable),
    .PMPGranularity(RvCoreIbexPMPGranularity),
    .PMPNumRegions(RvCoreIbexPMPNumRegions),
    .MHPMCounterNum(RvCoreIbexMHPMCounterNum),
    .MHPMCounterWidth(RvCoreIbexMHPMCounterWidth),
    .PMPRstCfg(RvCoreIbexPMPRstCfg),
    .PMPRstAddr(RvCoreIbexPMPRstAddr),
    .PMPRstMsecCfg(RvCoreIbexPMPRstMsecCfg),
    .RV32E(RvCoreIbexRV32E),
    .RV32M(RvCoreIbexRV32M),
    .RV32B(RvCoreIbexRV32B),
    .RegFile(RvCoreIbexRegFile),
    .BranchTargetALU(RvCoreIbexBranchTargetALU),
    .WritebackStage(RvCoreIbexWritebackStage),
    .ICache(RvCoreIbexICache),
    .ICacheECC(RvCoreIbexICacheECC),
    .ICacheScramble(RvCoreIbexICacheScramble),
    .ICacheNWays(RvCoreIbexICacheNWays),
    .BranchPredictor(RvCoreIbexBranchPredictor),
    .DbgTriggerEn(RvCoreIbexDbgTriggerEn),
    .DbgHwBreakNum(RvCoreIbexDbgHwBreakNum),
    .SecureIbex(RvCoreIbexSecureIbex),
    .DmBaseAddr(RvCoreIbexDmBaseAddr),
    .DmAddrMask(RvCoreIbexDmAddrMask),
    .DmHaltAddr(RvCoreIbexDmHaltAddr),
    .DmExceptionAddr(RvCoreIbexDmExceptionAddr),
    .PipeLine(RvCoreIbexPipeLine),
    .TlulHostUserRsvdBits(RvCoreIbexTlulHostUserRsvdBits)
  ) u_rv_core_ibex (
      // External alert group "mio" [25]: fatal_sw_err
      // External alert group "mio" [26]: recov_sw_err
      // External alert group "mio" [27]: fatal_hw_err
      // External alert group "mio" [28]: recov_hw_err
      .alert_tx_o  ( outgoing_alert_mio_tx_o[28:25] ),
      .alert_rx_i  ( outgoing_alert_mio_rx_i[28:25] ),

      // Inter-module signals
      .rst_cpu_n_o(),
      .ram_cfg_icache_tag_i(prim_ram_1p_pkg::RAM_1P_CFG_DEFAULT),
      .ram_cfg_rsp_icache_tag_o(),
      .ram_cfg_icache_data_i(prim_ram_1p_pkg::RAM_1P_CFG_DEFAULT),
      .ram_cfg_rsp_icache_data_o(),
      .hart_id_i(rv_core_ibex_hart_id),
      .boot_addr_i(rv_boot_addr_i),
      .irq_software_i(rv_plic_mio_msip),
      .irq_timer_i(rv_core_ibex_irq_timer),
      .irq_external_i(rv_plic_mio_irq),
      .esc_tx_i(rv_core_esc_tx_i),
      .esc_rx_o(rv_core_esc_rx_o),
      .debug_req_i(rv_dm_debug_req),
      .crash_dump_o(),
      .lc_cpu_en_i(rv_cpu_en_i),
      .pwrmgr_cpu_en_i(rv_pwrmgr_cpu_en_i),
      .pwrmgr_o(),
      .nmi_wdog_i(aon_timer_aon_nmi_wdog_timer_bark),
      .edn_o(),
      .edn_i(edn_pkg::EDN_RSP_DEFAULT),
      .icache_otp_key_o(),
      .icache_otp_key_i(otp_ctrl_pkg::SRAM_OTP_KEY_RSP_DEFAULT),
      .fpga_info_i(fpga_info_i),
      .corei_tl_h_o(mio_main_tl_rv_core_ibex__corei_req),
      .corei_tl_h_i(mio_main_tl_rv_core_ibex__corei_rsp),
      .cored_tl_h_o(mio_main_tl_rv_core_ibex__cored_req),
      .cored_tl_h_i(mio_main_tl_rv_core_ibex__cored_rsp),
      .cfg_tl_d_i(rv_core_ibex_cfg_tl_d_req),
      .cfg_tl_d_o(rv_core_ibex_cfg_tl_d_rsp),
      .scanmode_i,
      .scan_rst_ni,

      // Clock and reset connections
      .clk_i (clk_ext_main_i),
      .clk_edn_i (clk_ext_main_i),
      .clk_esc_i (clk_ext_io_div4_i),
      .clk_otp_i (clk_ext_io_div4_i),
      .rst_ni (rst_ext_rst_main_i),
      .rst_edn_ni (rst_ext_rst_main_i),
      .rst_esc_ni (rst_ext_rst_io_div4_i),
      .rst_otp_ni (rst_ext_rst_io_div4_i)
  );
  // interrupt assignments
  assign intr_vector = {
      incoming_interrupt_mio_external_i, // IDs [60 +: 9]
      intr_mbx_pcie0_mbx_error, // IDs [59 +: 1]
      intr_mbx_pcie0_mbx_abort, // IDs [58 +: 1]
      intr_mbx_pcie0_mbx_ready, // IDs [57 +: 1]
      intr_mbx5_mbx_error, // IDs [56 +: 1]
      intr_mbx5_mbx_abort, // IDs [55 +: 1]
      intr_mbx5_mbx_ready, // IDs [54 +: 1]
      intr_mbx4_mbx_error, // IDs [53 +: 1]
      intr_mbx4_mbx_abort, // IDs [52 +: 1]
      intr_mbx4_mbx_ready, // IDs [51 +: 1]
      intr_mbx3_mbx_error, // IDs [50 +: 1]
      intr_mbx3_mbx_abort, // IDs [49 +: 1]
      intr_mbx3_mbx_ready, // IDs [48 +: 1]
      intr_mbx2_mbx_error, // IDs [47 +: 1]
      intr_mbx2_mbx_abort, // IDs [46 +: 1]
      intr_mbx2_mbx_ready, // IDs [45 +: 1]
      intr_mbx1_mbx_error, // IDs [44 +: 1]
      intr_mbx1_mbx_abort, // IDs [43 +: 1]
      intr_mbx1_mbx_ready, // IDs [42 +: 1]
      intr_mbx0_mbx_error, // IDs [41 +: 1]
      intr_mbx0_mbx_abort, // IDs [40 +: 1]
      intr_mbx0_mbx_ready, // IDs [39 +: 1]
      intr_dma_dma_error, // IDs [38 +: 1]
      intr_dma_dma_chunk_done, // IDs [37 +: 1]
      intr_dma_dma_done, // IDs [36 +: 1]
      intr_mio_soc_proxy_external, // IDs [4 +: 32]
      intr_aon_timer_aon_wdog_timer_bark, // IDs [3 +: 1]
      intr_aon_timer_aon_wkup_timer_expired, // IDs [2 +: 1]
      intr_rv_timer_timer_expired_hart0_timer0, // IDs [1 +: 1]
      1'b 0 // ID [0 +: 1] is a special case and tied to zero.
  };

  // TL-UL Crossbar
  xbar_mio_main u_xbar_mio_main (
    .clk_main_i (clk_ext_main_i),
    .clk_fixed_i (clk_ext_io_div4_i),
    .rst_main_ni (rst_ext_rst_main_i),
    .rst_fixed_ni (rst_ext_rst_io_div4_i),

    // port: tl_rv_core_ibex__corei
    .tl_rv_core_ibex__corei_i(mio_main_tl_rv_core_ibex__corei_req),
    .tl_rv_core_ibex__corei_o(mio_main_tl_rv_core_ibex__corei_rsp),

    // port: tl_rv_core_ibex__cored
    .tl_rv_core_ibex__cored_i(mio_main_tl_rv_core_ibex__cored_req),
    .tl_rv_core_ibex__cored_o(mio_main_tl_rv_core_ibex__cored_rsp),

    // port: tl_rv_dm__sba
    .tl_rv_dm__sba_i(mio_main_tl_rv_dm__sba_req),
    .tl_rv_dm__sba_o(mio_main_tl_rv_dm__sba_rsp),

    // port: tl_dma__host
    .tl_dma__host_i(mio_main_tl_dma__host_req),
    .tl_dma__host_o(mio_main_tl_dma__host_rsp),

    // port: tl_mbx0__sram
    .tl_mbx0__sram_i(mio_main_tl_mbx0__sram_req),
    .tl_mbx0__sram_o(mio_main_tl_mbx0__sram_rsp),

    // port: tl_mbx1__sram
    .tl_mbx1__sram_i(mio_main_tl_mbx1__sram_req),
    .tl_mbx1__sram_o(mio_main_tl_mbx1__sram_rsp),

    // port: tl_mbx2__sram
    .tl_mbx2__sram_i(mio_main_tl_mbx2__sram_req),
    .tl_mbx2__sram_o(mio_main_tl_mbx2__sram_rsp),

    // port: tl_mbx3__sram
    .tl_mbx3__sram_i(mio_main_tl_mbx3__sram_req),
    .tl_mbx3__sram_o(mio_main_tl_mbx3__sram_rsp),

    // port: tl_mbx4__sram
    .tl_mbx4__sram_i(mio_main_tl_mbx4__sram_req),
    .tl_mbx4__sram_o(mio_main_tl_mbx4__sram_rsp),

    // port: tl_mbx5__sram
    .tl_mbx5__sram_i(mio_main_tl_mbx5__sram_req),
    .tl_mbx5__sram_o(mio_main_tl_mbx5__sram_rsp),

    // port: tl_mbx_pcie0__sram
    .tl_mbx_pcie0__sram_i(mio_main_tl_mbx_pcie0__sram_req),
    .tl_mbx_pcie0__sram_o(mio_main_tl_mbx_pcie0__sram_rsp),

    // port: tl_rv_dm__regs
    .tl_rv_dm__regs_o(rv_dm_regs_tl_d_req),
    .tl_rv_dm__regs_i(rv_dm_regs_tl_d_rsp),

    // port: tl_rv_dm__mem
    .tl_rv_dm__mem_o(rv_dm_mem_tl_d_req),
    .tl_rv_dm__mem_i(rv_dm_mem_tl_d_rsp),

    // port: tl_mio_peri
    .tl_mio_peri_o(mio_main_tl_mio_peri_req),
    .tl_mio_peri_i(mio_main_tl_mio_peri_rsp),

    // port: tl_mio_soc_proxy__core
    .tl_mio_soc_proxy__core_o(mio_soc_proxy_core_tl_req),
    .tl_mio_soc_proxy__core_i(mio_soc_proxy_core_tl_rsp),

    // port: tl_mio_soc_proxy__ctn
    .tl_mio_soc_proxy__ctn_o(mio_soc_proxy_ctn_tl_req),
    .tl_mio_soc_proxy__ctn_i(mio_soc_proxy_ctn_tl_rsp),

    // port: tl_rv_plic_mio
    .tl_rv_plic_mio_o(rv_plic_mio_tl_req),
    .tl_rv_plic_mio_i(rv_plic_mio_tl_rsp),

    // port: tl_rv_core_ibex__cfg
    .tl_rv_core_ibex__cfg_o(rv_core_ibex_cfg_tl_d_req),
    .tl_rv_core_ibex__cfg_i(rv_core_ibex_cfg_tl_d_rsp),

    // port: tl_sram_ctrl_main__regs
    .tl_sram_ctrl_main__regs_o(sram_ctrl_main_regs_tl_req),
    .tl_sram_ctrl_main__regs_i(sram_ctrl_main_regs_tl_rsp),

    // port: tl_sram_ctrl_main__ram
    .tl_sram_ctrl_main__ram_o(sram_ctrl_main_ram_tl_req),
    .tl_sram_ctrl_main__ram_i(sram_ctrl_main_ram_tl_rsp),

    // port: tl_sram_ctrl_mbox__regs
    .tl_sram_ctrl_mbox__regs_o(sram_ctrl_mbox_regs_tl_req),
    .tl_sram_ctrl_mbox__regs_i(sram_ctrl_mbox_regs_tl_rsp),

    // port: tl_sram_ctrl_mbox__ram
    .tl_sram_ctrl_mbox__ram_o(sram_ctrl_mbox_ram_tl_req),
    .tl_sram_ctrl_mbox__ram_i(sram_ctrl_mbox_ram_tl_rsp),

    // port: tl_dma
    .tl_dma_o(dma_tl_d_req),
    .tl_dma_i(dma_tl_d_rsp),

    // port: tl_mbx0__core
    .tl_mbx0__core_o(mbx0_core_tl_d_req),
    .tl_mbx0__core_i(mbx0_core_tl_d_rsp),

    // port: tl_mbx1__core
    .tl_mbx1__core_o(mbx1_core_tl_d_req),
    .tl_mbx1__core_i(mbx1_core_tl_d_rsp),

    // port: tl_mbx2__core
    .tl_mbx2__core_o(mbx2_core_tl_d_req),
    .tl_mbx2__core_i(mbx2_core_tl_d_rsp),

    // port: tl_mbx3__core
    .tl_mbx3__core_o(mbx3_core_tl_d_req),
    .tl_mbx3__core_i(mbx3_core_tl_d_rsp),

    // port: tl_mbx4__core
    .tl_mbx4__core_o(mbx4_core_tl_d_req),
    .tl_mbx4__core_i(mbx4_core_tl_d_rsp),

    // port: tl_mbx5__core
    .tl_mbx5__core_o(mbx5_core_tl_d_req),
    .tl_mbx5__core_i(mbx5_core_tl_d_rsp),

    // port: tl_mbx_pcie0__core
    .tl_mbx_pcie0__core_o(mbx_pcie0_core_tl_d_req),
    .tl_mbx_pcie0__core_i(mbx_pcie0_core_tl_d_rsp),


    .scanmode_i
  );
  xbar_mio_peri u_xbar_mio_peri (
    .clk_peri_i (clk_ext_io_div4_i),
    .rst_peri_ni (rst_ext_rst_io_div4_i),

    // port: tl_mio_main
    .tl_mio_main_i(mio_main_tl_mio_peri_req),
    .tl_mio_main_o(mio_main_tl_mio_peri_rsp),

    // port: tl_rv_timer
    .tl_rv_timer_o(rv_timer_tl_req),
    .tl_rv_timer_i(rv_timer_tl_rsp),

    // port: tl_sram_ctrl_ret_aon__regs
    .tl_sram_ctrl_ret_aon__regs_o(sram_ctrl_ret_aon_regs_tl_req),
    .tl_sram_ctrl_ret_aon__regs_i(sram_ctrl_ret_aon_regs_tl_rsp),

    // port: tl_sram_ctrl_ret_aon__ram
    .tl_sram_ctrl_ret_aon__ram_o(sram_ctrl_ret_aon_ram_tl_req),
    .tl_sram_ctrl_ret_aon__ram_i(sram_ctrl_ret_aon_ram_tl_rsp),

    // port: tl_aon_timer_aon
    .tl_aon_timer_aon_o(aon_timer_aon_tl_req),
    .tl_aon_timer_aon_i(aon_timer_aon_tl_rsp),


    .scanmode_i
  );
  xbar_mio_mbx u_xbar_mio_mbx (
    .clk_mbx_i (clk_ext_main_i),
    .rst_mbx_ni (rst_ext_rst_main_i),

    // port: tl_mio_mbx
    .tl_mio_mbx_i(mbx_tl_req_i),
    .tl_mio_mbx_o(mbx_tl_rsp_o),

    // port: tl_mbx0__soc
    .tl_mbx0__soc_o(mbx0_soc_tl_d_req),
    .tl_mbx0__soc_i(mbx0_soc_tl_d_rsp),

    // port: tl_mbx1__soc
    .tl_mbx1__soc_o(mbx1_soc_tl_d_req),
    .tl_mbx1__soc_i(mbx1_soc_tl_d_rsp),

    // port: tl_mbx2__soc
    .tl_mbx2__soc_o(mbx2_soc_tl_d_req),
    .tl_mbx2__soc_i(mbx2_soc_tl_d_rsp),

    // port: tl_mbx3__soc
    .tl_mbx3__soc_o(mbx3_soc_tl_d_req),
    .tl_mbx3__soc_i(mbx3_soc_tl_d_rsp),

    // port: tl_mbx4__soc
    .tl_mbx4__soc_o(mbx4_soc_tl_d_req),
    .tl_mbx4__soc_i(mbx4_soc_tl_d_rsp),

    // port: tl_mbx5__soc
    .tl_mbx5__soc_o(mbx5_soc_tl_d_req),
    .tl_mbx5__soc_i(mbx5_soc_tl_d_rsp),

    // port: tl_mbx_pcie0__soc
    .tl_mbx_pcie0__soc_o(mbx_pcie0_soc_tl_d_req),
    .tl_mbx_pcie0__soc_i(mbx_pcie0_soc_tl_d_rsp),

    // port: tl_racl_ctrl
    .tl_racl_ctrl_o(racl_ctrl_tl_req),
    .tl_racl_ctrl_i(racl_ctrl_tl_rsp),


    .scanmode_i
  );

  // make sure scanmode_i is never X (including during reset)
  `ASSERT_KNOWN(scanmodeKnown, scanmode_i, clk_ext_main_i, 0)

endmodule
// Local Variables:
// fill-column:1
// verilog-auto-arg-sort:t
// verilog-typedef-regexp: "_[etu]$"
// End:
