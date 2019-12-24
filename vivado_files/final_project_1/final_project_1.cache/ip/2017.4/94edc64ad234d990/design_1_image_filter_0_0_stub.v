// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Fri Dec  6 09:23:12 2019
// Host        : kamek running 64-bit CentOS release 6.10 (Final)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_image_filter_0_0_stub.v
// Design      : design_1_image_filter_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "image_filter,Vivado 2017.4" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(s_axi_CONTROL_BUS_AWADDR, 
  s_axi_CONTROL_BUS_AWVALID, s_axi_CONTROL_BUS_AWREADY, s_axi_CONTROL_BUS_WDATA, 
  s_axi_CONTROL_BUS_WSTRB, s_axi_CONTROL_BUS_WVALID, s_axi_CONTROL_BUS_WREADY, 
  s_axi_CONTROL_BUS_BRESP, s_axi_CONTROL_BUS_BVALID, s_axi_CONTROL_BUS_BREADY, 
  s_axi_CONTROL_BUS_ARADDR, s_axi_CONTROL_BUS_ARVALID, s_axi_CONTROL_BUS_ARREADY, 
  s_axi_CONTROL_BUS_RDATA, s_axi_CONTROL_BUS_RRESP, s_axi_CONTROL_BUS_RVALID, 
  s_axi_CONTROL_BUS_RREADY, ap_clk, ap_rst_n, interrupt, m_axi_hostmem_AWADDR, 
  m_axi_hostmem_AWLEN, m_axi_hostmem_AWSIZE, m_axi_hostmem_AWBURST, m_axi_hostmem_AWLOCK, 
  m_axi_hostmem_AWREGION, m_axi_hostmem_AWCACHE, m_axi_hostmem_AWPROT, 
  m_axi_hostmem_AWQOS, m_axi_hostmem_AWVALID, m_axi_hostmem_AWREADY, m_axi_hostmem_WDATA, 
  m_axi_hostmem_WSTRB, m_axi_hostmem_WLAST, m_axi_hostmem_WVALID, m_axi_hostmem_WREADY, 
  m_axi_hostmem_BRESP, m_axi_hostmem_BVALID, m_axi_hostmem_BREADY, m_axi_hostmem_ARADDR, 
  m_axi_hostmem_ARLEN, m_axi_hostmem_ARSIZE, m_axi_hostmem_ARBURST, m_axi_hostmem_ARLOCK, 
  m_axi_hostmem_ARREGION, m_axi_hostmem_ARCACHE, m_axi_hostmem_ARPROT, 
  m_axi_hostmem_ARQOS, m_axi_hostmem_ARVALID, m_axi_hostmem_ARREADY, m_axi_hostmem_RDATA, 
  m_axi_hostmem_RRESP, m_axi_hostmem_RLAST, m_axi_hostmem_RVALID, m_axi_hostmem_RREADY)
/* synthesis syn_black_box black_box_pad_pin="s_axi_CONTROL_BUS_AWADDR[4:0],s_axi_CONTROL_BUS_AWVALID,s_axi_CONTROL_BUS_AWREADY,s_axi_CONTROL_BUS_WDATA[31:0],s_axi_CONTROL_BUS_WSTRB[3:0],s_axi_CONTROL_BUS_WVALID,s_axi_CONTROL_BUS_WREADY,s_axi_CONTROL_BUS_BRESP[1:0],s_axi_CONTROL_BUS_BVALID,s_axi_CONTROL_BUS_BREADY,s_axi_CONTROL_BUS_ARADDR[4:0],s_axi_CONTROL_BUS_ARVALID,s_axi_CONTROL_BUS_ARREADY,s_axi_CONTROL_BUS_RDATA[31:0],s_axi_CONTROL_BUS_RRESP[1:0],s_axi_CONTROL_BUS_RVALID,s_axi_CONTROL_BUS_RREADY,ap_clk,ap_rst_n,interrupt,m_axi_hostmem_AWADDR[31:0],m_axi_hostmem_AWLEN[7:0],m_axi_hostmem_AWSIZE[2:0],m_axi_hostmem_AWBURST[1:0],m_axi_hostmem_AWLOCK[1:0],m_axi_hostmem_AWREGION[3:0],m_axi_hostmem_AWCACHE[3:0],m_axi_hostmem_AWPROT[2:0],m_axi_hostmem_AWQOS[3:0],m_axi_hostmem_AWVALID,m_axi_hostmem_AWREADY,m_axi_hostmem_WDATA[63:0],m_axi_hostmem_WSTRB[7:0],m_axi_hostmem_WLAST,m_axi_hostmem_WVALID,m_axi_hostmem_WREADY,m_axi_hostmem_BRESP[1:0],m_axi_hostmem_BVALID,m_axi_hostmem_BREADY,m_axi_hostmem_ARADDR[31:0],m_axi_hostmem_ARLEN[7:0],m_axi_hostmem_ARSIZE[2:0],m_axi_hostmem_ARBURST[1:0],m_axi_hostmem_ARLOCK[1:0],m_axi_hostmem_ARREGION[3:0],m_axi_hostmem_ARCACHE[3:0],m_axi_hostmem_ARPROT[2:0],m_axi_hostmem_ARQOS[3:0],m_axi_hostmem_ARVALID,m_axi_hostmem_ARREADY,m_axi_hostmem_RDATA[63:0],m_axi_hostmem_RRESP[1:0],m_axi_hostmem_RLAST,m_axi_hostmem_RVALID,m_axi_hostmem_RREADY" */;
  input [4:0]s_axi_CONTROL_BUS_AWADDR;
  input s_axi_CONTROL_BUS_AWVALID;
  output s_axi_CONTROL_BUS_AWREADY;
  input [31:0]s_axi_CONTROL_BUS_WDATA;
  input [3:0]s_axi_CONTROL_BUS_WSTRB;
  input s_axi_CONTROL_BUS_WVALID;
  output s_axi_CONTROL_BUS_WREADY;
  output [1:0]s_axi_CONTROL_BUS_BRESP;
  output s_axi_CONTROL_BUS_BVALID;
  input s_axi_CONTROL_BUS_BREADY;
  input [4:0]s_axi_CONTROL_BUS_ARADDR;
  input s_axi_CONTROL_BUS_ARVALID;
  output s_axi_CONTROL_BUS_ARREADY;
  output [31:0]s_axi_CONTROL_BUS_RDATA;
  output [1:0]s_axi_CONTROL_BUS_RRESP;
  output s_axi_CONTROL_BUS_RVALID;
  input s_axi_CONTROL_BUS_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  output [31:0]m_axi_hostmem_AWADDR;
  output [7:0]m_axi_hostmem_AWLEN;
  output [2:0]m_axi_hostmem_AWSIZE;
  output [1:0]m_axi_hostmem_AWBURST;
  output [1:0]m_axi_hostmem_AWLOCK;
  output [3:0]m_axi_hostmem_AWREGION;
  output [3:0]m_axi_hostmem_AWCACHE;
  output [2:0]m_axi_hostmem_AWPROT;
  output [3:0]m_axi_hostmem_AWQOS;
  output m_axi_hostmem_AWVALID;
  input m_axi_hostmem_AWREADY;
  output [63:0]m_axi_hostmem_WDATA;
  output [7:0]m_axi_hostmem_WSTRB;
  output m_axi_hostmem_WLAST;
  output m_axi_hostmem_WVALID;
  input m_axi_hostmem_WREADY;
  input [1:0]m_axi_hostmem_BRESP;
  input m_axi_hostmem_BVALID;
  output m_axi_hostmem_BREADY;
  output [31:0]m_axi_hostmem_ARADDR;
  output [7:0]m_axi_hostmem_ARLEN;
  output [2:0]m_axi_hostmem_ARSIZE;
  output [1:0]m_axi_hostmem_ARBURST;
  output [1:0]m_axi_hostmem_ARLOCK;
  output [3:0]m_axi_hostmem_ARREGION;
  output [3:0]m_axi_hostmem_ARCACHE;
  output [2:0]m_axi_hostmem_ARPROT;
  output [3:0]m_axi_hostmem_ARQOS;
  output m_axi_hostmem_ARVALID;
  input m_axi_hostmem_ARREADY;
  input [63:0]m_axi_hostmem_RDATA;
  input [1:0]m_axi_hostmem_RRESP;
  input m_axi_hostmem_RLAST;
  input m_axi_hostmem_RVALID;
  output m_axi_hostmem_RREADY;
endmodule
