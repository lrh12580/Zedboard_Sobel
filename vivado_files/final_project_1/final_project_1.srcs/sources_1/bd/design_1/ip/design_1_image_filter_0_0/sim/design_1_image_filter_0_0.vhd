-- (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:hls:image_filter:1.0
-- IP Revision: 1912131200

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_image_filter_0_0 IS
  PORT (
    s_axi_CONTROL_BUS_AWADDR : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    s_axi_CONTROL_BUS_AWVALID : IN STD_LOGIC;
    s_axi_CONTROL_BUS_AWREADY : OUT STD_LOGIC;
    s_axi_CONTROL_BUS_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_CONTROL_BUS_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_CONTROL_BUS_WVALID : IN STD_LOGIC;
    s_axi_CONTROL_BUS_WREADY : OUT STD_LOGIC;
    s_axi_CONTROL_BUS_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_CONTROL_BUS_BVALID : OUT STD_LOGIC;
    s_axi_CONTROL_BUS_BREADY : IN STD_LOGIC;
    s_axi_CONTROL_BUS_ARADDR : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    s_axi_CONTROL_BUS_ARVALID : IN STD_LOGIC;
    s_axi_CONTROL_BUS_ARREADY : OUT STD_LOGIC;
    s_axi_CONTROL_BUS_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_CONTROL_BUS_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_CONTROL_BUS_RVALID : OUT STD_LOGIC;
    s_axi_CONTROL_BUS_RREADY : IN STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    interrupt : OUT STD_LOGIC;
    m_axi_hostmem_1_AWADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_hostmem_1_AWLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_hostmem_1_AWSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_hostmem_1_AWBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_hostmem_1_AWLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_hostmem_1_AWREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_hostmem_1_AWCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_hostmem_1_AWPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_hostmem_1_AWQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_hostmem_1_AWVALID : OUT STD_LOGIC;
    m_axi_hostmem_1_AWREADY : IN STD_LOGIC;
    m_axi_hostmem_1_WDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_hostmem_1_WSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_hostmem_1_WLAST : OUT STD_LOGIC;
    m_axi_hostmem_1_WVALID : OUT STD_LOGIC;
    m_axi_hostmem_1_WREADY : IN STD_LOGIC;
    m_axi_hostmem_1_BRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_hostmem_1_BVALID : IN STD_LOGIC;
    m_axi_hostmem_1_BREADY : OUT STD_LOGIC;
    m_axi_hostmem_1_ARADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_hostmem_1_ARLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_hostmem_1_ARSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_hostmem_1_ARBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_hostmem_1_ARLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_hostmem_1_ARREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_hostmem_1_ARCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_hostmem_1_ARPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_hostmem_1_ARQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_hostmem_1_ARVALID : OUT STD_LOGIC;
    m_axi_hostmem_1_ARREADY : IN STD_LOGIC;
    m_axi_hostmem_1_RDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_hostmem_1_RRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_hostmem_1_RLAST : IN STD_LOGIC;
    m_axi_hostmem_1_RVALID : IN STD_LOGIC;
    m_axi_hostmem_1_RREADY : OUT STD_LOGIC;
    m_axi_hostmem_2_AWADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_hostmem_2_AWLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_hostmem_2_AWSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_hostmem_2_AWBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_hostmem_2_AWLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_hostmem_2_AWREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_hostmem_2_AWCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_hostmem_2_AWPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_hostmem_2_AWQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_hostmem_2_AWVALID : OUT STD_LOGIC;
    m_axi_hostmem_2_AWREADY : IN STD_LOGIC;
    m_axi_hostmem_2_WDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_hostmem_2_WSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_hostmem_2_WLAST : OUT STD_LOGIC;
    m_axi_hostmem_2_WVALID : OUT STD_LOGIC;
    m_axi_hostmem_2_WREADY : IN STD_LOGIC;
    m_axi_hostmem_2_BRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_hostmem_2_BVALID : IN STD_LOGIC;
    m_axi_hostmem_2_BREADY : OUT STD_LOGIC;
    m_axi_hostmem_2_ARADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_hostmem_2_ARLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_hostmem_2_ARSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_hostmem_2_ARBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_hostmem_2_ARLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_hostmem_2_ARREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_hostmem_2_ARCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_hostmem_2_ARPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_hostmem_2_ARQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_hostmem_2_ARVALID : OUT STD_LOGIC;
    m_axi_hostmem_2_ARREADY : IN STD_LOGIC;
    m_axi_hostmem_2_RDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_hostmem_2_RRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_hostmem_2_RLAST : IN STD_LOGIC;
    m_axi_hostmem_2_RVALID : IN STD_LOGIC;
    m_axi_hostmem_2_RREADY : OUT STD_LOGIC
  );
END design_1_image_filter_0_0;

ARCHITECTURE design_1_image_filter_0_0_arch OF design_1_image_filter_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_image_filter_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT image_filter IS
    GENERIC (
      C_S_AXI_CONTROL_BUS_ADDR_WIDTH : INTEGER;
      C_S_AXI_CONTROL_BUS_DATA_WIDTH : INTEGER;
      C_M_AXI_HOSTMEM_1_ID_WIDTH : INTEGER;
      C_M_AXI_HOSTMEM_1_ADDR_WIDTH : INTEGER;
      C_M_AXI_HOSTMEM_1_DATA_WIDTH : INTEGER;
      C_M_AXI_HOSTMEM_1_AWUSER_WIDTH : INTEGER;
      C_M_AXI_HOSTMEM_1_ARUSER_WIDTH : INTEGER;
      C_M_AXI_HOSTMEM_1_WUSER_WIDTH : INTEGER;
      C_M_AXI_HOSTMEM_1_RUSER_WIDTH : INTEGER;
      C_M_AXI_HOSTMEM_1_BUSER_WIDTH : INTEGER;
      C_M_AXI_HOSTMEM_1_USER_VALUE : INTEGER;
      C_M_AXI_HOSTMEM_1_PROT_VALUE : INTEGER;
      C_M_AXI_HOSTMEM_1_CACHE_VALUE : INTEGER;
      C_M_AXI_HOSTMEM_2_ID_WIDTH : INTEGER;
      C_M_AXI_HOSTMEM_2_ADDR_WIDTH : INTEGER;
      C_M_AXI_HOSTMEM_2_DATA_WIDTH : INTEGER;
      C_M_AXI_HOSTMEM_2_AWUSER_WIDTH : INTEGER;
      C_M_AXI_HOSTMEM_2_ARUSER_WIDTH : INTEGER;
      C_M_AXI_HOSTMEM_2_WUSER_WIDTH : INTEGER;
      C_M_AXI_HOSTMEM_2_RUSER_WIDTH : INTEGER;
      C_M_AXI_HOSTMEM_2_BUSER_WIDTH : INTEGER;
      C_M_AXI_HOSTMEM_2_USER_VALUE : INTEGER;
      C_M_AXI_HOSTMEM_2_PROT_VALUE : INTEGER;
      C_M_AXI_HOSTMEM_2_CACHE_VALUE : INTEGER
    );
    PORT (
      s_axi_CONTROL_BUS_AWADDR : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      s_axi_CONTROL_BUS_AWVALID : IN STD_LOGIC;
      s_axi_CONTROL_BUS_AWREADY : OUT STD_LOGIC;
      s_axi_CONTROL_BUS_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_CONTROL_BUS_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_CONTROL_BUS_WVALID : IN STD_LOGIC;
      s_axi_CONTROL_BUS_WREADY : OUT STD_LOGIC;
      s_axi_CONTROL_BUS_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_CONTROL_BUS_BVALID : OUT STD_LOGIC;
      s_axi_CONTROL_BUS_BREADY : IN STD_LOGIC;
      s_axi_CONTROL_BUS_ARADDR : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      s_axi_CONTROL_BUS_ARVALID : IN STD_LOGIC;
      s_axi_CONTROL_BUS_ARREADY : OUT STD_LOGIC;
      s_axi_CONTROL_BUS_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_CONTROL_BUS_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_CONTROL_BUS_RVALID : OUT STD_LOGIC;
      s_axi_CONTROL_BUS_RREADY : IN STD_LOGIC;
      ap_clk : IN STD_LOGIC;
      ap_rst_n : IN STD_LOGIC;
      interrupt : OUT STD_LOGIC;
      m_axi_hostmem_1_AWID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_hostmem_1_AWADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_hostmem_1_AWLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_hostmem_1_AWSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_hostmem_1_AWBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_hostmem_1_AWLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_hostmem_1_AWREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_hostmem_1_AWCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_hostmem_1_AWPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_hostmem_1_AWQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_hostmem_1_AWUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_hostmem_1_AWVALID : OUT STD_LOGIC;
      m_axi_hostmem_1_AWREADY : IN STD_LOGIC;
      m_axi_hostmem_1_WID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_hostmem_1_WDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_hostmem_1_WSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_hostmem_1_WLAST : OUT STD_LOGIC;
      m_axi_hostmem_1_WUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_hostmem_1_WVALID : OUT STD_LOGIC;
      m_axi_hostmem_1_WREADY : IN STD_LOGIC;
      m_axi_hostmem_1_BID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_hostmem_1_BRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_hostmem_1_BUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_hostmem_1_BVALID : IN STD_LOGIC;
      m_axi_hostmem_1_BREADY : OUT STD_LOGIC;
      m_axi_hostmem_1_ARID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_hostmem_1_ARADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_hostmem_1_ARLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_hostmem_1_ARSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_hostmem_1_ARBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_hostmem_1_ARLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_hostmem_1_ARREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_hostmem_1_ARCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_hostmem_1_ARPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_hostmem_1_ARQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_hostmem_1_ARUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_hostmem_1_ARVALID : OUT STD_LOGIC;
      m_axi_hostmem_1_ARREADY : IN STD_LOGIC;
      m_axi_hostmem_1_RID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_hostmem_1_RDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_hostmem_1_RRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_hostmem_1_RLAST : IN STD_LOGIC;
      m_axi_hostmem_1_RUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_hostmem_1_RVALID : IN STD_LOGIC;
      m_axi_hostmem_1_RREADY : OUT STD_LOGIC;
      m_axi_hostmem_2_AWID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_hostmem_2_AWADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_hostmem_2_AWLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_hostmem_2_AWSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_hostmem_2_AWBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_hostmem_2_AWLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_hostmem_2_AWREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_hostmem_2_AWCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_hostmem_2_AWPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_hostmem_2_AWQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_hostmem_2_AWUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_hostmem_2_AWVALID : OUT STD_LOGIC;
      m_axi_hostmem_2_AWREADY : IN STD_LOGIC;
      m_axi_hostmem_2_WID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_hostmem_2_WDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_hostmem_2_WSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_hostmem_2_WLAST : OUT STD_LOGIC;
      m_axi_hostmem_2_WUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_hostmem_2_WVALID : OUT STD_LOGIC;
      m_axi_hostmem_2_WREADY : IN STD_LOGIC;
      m_axi_hostmem_2_BID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_hostmem_2_BRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_hostmem_2_BUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_hostmem_2_BVALID : IN STD_LOGIC;
      m_axi_hostmem_2_BREADY : OUT STD_LOGIC;
      m_axi_hostmem_2_ARID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_hostmem_2_ARADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_hostmem_2_ARLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_hostmem_2_ARSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_hostmem_2_ARBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_hostmem_2_ARLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_hostmem_2_ARREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_hostmem_2_ARCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_hostmem_2_ARPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_hostmem_2_ARQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_hostmem_2_ARUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_hostmem_2_ARVALID : OUT STD_LOGIC;
      m_axi_hostmem_2_ARREADY : IN STD_LOGIC;
      m_axi_hostmem_2_RID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_hostmem_2_RDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_hostmem_2_RRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_hostmem_2_RLAST : IN STD_LOGIC;
      m_axi_hostmem_2_RUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_hostmem_2_RVALID : IN STD_LOGIC;
      m_axi_hostmem_2_RREADY : OUT STD_LOGIC
    );
  END COMPONENT image_filter;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_2_RREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_2_RVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_2_RLAST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_2_RRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_2_RDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_2_ARREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_2_ARVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_2_ARQOS: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_2_ARPROT: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_2_ARCACHE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_2_ARREGION: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 ARREGION";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_2_ARLOCK: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_2_ARBURST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_2_ARSIZE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_2_ARLEN: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_2_ARADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_2_BREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_2_BVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_2_BRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_2_WREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_2_WVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_2_WLAST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_2_WSTRB: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_2_WDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_2_AWREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_2_AWVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_2_AWQOS: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_2_AWPROT: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_2_AWCACHE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_2_AWREGION: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 AWREGION";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_2_AWLOCK: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_2_AWBURST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_2_AWSIZE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_2_AWLEN: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 AWLEN";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axi_hostmem_2_AWADDR: SIGNAL IS "XIL_INTERFACENAME m_axi_hostmem_2, ADDR_WIDTH 32, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_2_AWADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_1_RREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_1_RVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_1_RLAST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_1_RRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_1_RDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_1_ARREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_1_ARVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_1_ARQOS: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_1_ARPROT: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_1_ARCACHE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_1_ARREGION: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 ARREGION";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_1_ARLOCK: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_1_ARBURST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_1_ARSIZE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_1_ARLEN: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_1_ARADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_1_BREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_1_BVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_1_BRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_1_WREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_1_WVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_1_WLAST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_1_WSTRB: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_1_WDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_1_AWREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_1_AWVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_1_AWQOS: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_1_AWPROT: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_1_AWCACHE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_1_AWREGION: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 AWREGION";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_1_AWLOCK: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_1_AWBURST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_1_AWSIZE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_1_AWLEN: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 AWLEN";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axi_hostmem_1_AWADDR: SIGNAL IS "XIL_INTERFACENAME m_axi_hostmem_1, ADDR_WIDTH 32, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_hostmem_1_AWADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 AWADDR";
  ATTRIBUTE X_INTERFACE_PARAMETER OF interrupt: SIGNAL IS "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {INTERRUPT {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, PortWidth 1";
  ATTRIBUTE X_INTERFACE_INFO OF interrupt: SIGNAL IS "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_rst_n: SIGNAL IS "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF ap_rst_n: SIGNAL IS "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_clk: SIGNAL IS "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_CONTROL_BUS:m_axi_hostmem_1:m_axi_hostmem_2, ASSOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0";
  ATTRIBUTE X_INTERFACE_INFO OF ap_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 ap_clk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CONTROL_BUS_RREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CONTROL_BUS_RVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CONTROL_BUS_RRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CONTROL_BUS_RDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CONTROL_BUS_ARREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CONTROL_BUS_ARVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CONTROL_BUS_ARADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CONTROL_BUS_BREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CONTROL_BUS_BVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CONTROL_BUS_BRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CONTROL_BUS_WREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CONTROL_BUS_WVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CONTROL_BUS_WSTRB: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CONTROL_BUS_WDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CONTROL_BUS_AWREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CONTROL_BUS_AWVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS AWVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_CONTROL_BUS_AWADDR: SIGNAL IS "XIL_INTERFACENAME s_axi_CONTROL_BUS, ADDR_WIDTH 6, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CONTROL_BUS_AWADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS AWADDR";
BEGIN
  U0 : image_filter
    GENERIC MAP (
      C_S_AXI_CONTROL_BUS_ADDR_WIDTH => 6,
      C_S_AXI_CONTROL_BUS_DATA_WIDTH => 32,
      C_M_AXI_HOSTMEM_1_ID_WIDTH => 1,
      C_M_AXI_HOSTMEM_1_ADDR_WIDTH => 32,
      C_M_AXI_HOSTMEM_1_DATA_WIDTH => 32,
      C_M_AXI_HOSTMEM_1_AWUSER_WIDTH => 1,
      C_M_AXI_HOSTMEM_1_ARUSER_WIDTH => 1,
      C_M_AXI_HOSTMEM_1_WUSER_WIDTH => 1,
      C_M_AXI_HOSTMEM_1_RUSER_WIDTH => 1,
      C_M_AXI_HOSTMEM_1_BUSER_WIDTH => 1,
      C_M_AXI_HOSTMEM_1_USER_VALUE => 0,
      C_M_AXI_HOSTMEM_1_PROT_VALUE => 0,
      C_M_AXI_HOSTMEM_1_CACHE_VALUE => 3,
      C_M_AXI_HOSTMEM_2_ID_WIDTH => 1,
      C_M_AXI_HOSTMEM_2_ADDR_WIDTH => 32,
      C_M_AXI_HOSTMEM_2_DATA_WIDTH => 32,
      C_M_AXI_HOSTMEM_2_AWUSER_WIDTH => 1,
      C_M_AXI_HOSTMEM_2_ARUSER_WIDTH => 1,
      C_M_AXI_HOSTMEM_2_WUSER_WIDTH => 1,
      C_M_AXI_HOSTMEM_2_RUSER_WIDTH => 1,
      C_M_AXI_HOSTMEM_2_BUSER_WIDTH => 1,
      C_M_AXI_HOSTMEM_2_USER_VALUE => 0,
      C_M_AXI_HOSTMEM_2_PROT_VALUE => 0,
      C_M_AXI_HOSTMEM_2_CACHE_VALUE => 3
    )
    PORT MAP (
      s_axi_CONTROL_BUS_AWADDR => s_axi_CONTROL_BUS_AWADDR,
      s_axi_CONTROL_BUS_AWVALID => s_axi_CONTROL_BUS_AWVALID,
      s_axi_CONTROL_BUS_AWREADY => s_axi_CONTROL_BUS_AWREADY,
      s_axi_CONTROL_BUS_WDATA => s_axi_CONTROL_BUS_WDATA,
      s_axi_CONTROL_BUS_WSTRB => s_axi_CONTROL_BUS_WSTRB,
      s_axi_CONTROL_BUS_WVALID => s_axi_CONTROL_BUS_WVALID,
      s_axi_CONTROL_BUS_WREADY => s_axi_CONTROL_BUS_WREADY,
      s_axi_CONTROL_BUS_BRESP => s_axi_CONTROL_BUS_BRESP,
      s_axi_CONTROL_BUS_BVALID => s_axi_CONTROL_BUS_BVALID,
      s_axi_CONTROL_BUS_BREADY => s_axi_CONTROL_BUS_BREADY,
      s_axi_CONTROL_BUS_ARADDR => s_axi_CONTROL_BUS_ARADDR,
      s_axi_CONTROL_BUS_ARVALID => s_axi_CONTROL_BUS_ARVALID,
      s_axi_CONTROL_BUS_ARREADY => s_axi_CONTROL_BUS_ARREADY,
      s_axi_CONTROL_BUS_RDATA => s_axi_CONTROL_BUS_RDATA,
      s_axi_CONTROL_BUS_RRESP => s_axi_CONTROL_BUS_RRESP,
      s_axi_CONTROL_BUS_RVALID => s_axi_CONTROL_BUS_RVALID,
      s_axi_CONTROL_BUS_RREADY => s_axi_CONTROL_BUS_RREADY,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      interrupt => interrupt,
      m_axi_hostmem_1_AWADDR => m_axi_hostmem_1_AWADDR,
      m_axi_hostmem_1_AWLEN => m_axi_hostmem_1_AWLEN,
      m_axi_hostmem_1_AWSIZE => m_axi_hostmem_1_AWSIZE,
      m_axi_hostmem_1_AWBURST => m_axi_hostmem_1_AWBURST,
      m_axi_hostmem_1_AWLOCK => m_axi_hostmem_1_AWLOCK,
      m_axi_hostmem_1_AWREGION => m_axi_hostmem_1_AWREGION,
      m_axi_hostmem_1_AWCACHE => m_axi_hostmem_1_AWCACHE,
      m_axi_hostmem_1_AWPROT => m_axi_hostmem_1_AWPROT,
      m_axi_hostmem_1_AWQOS => m_axi_hostmem_1_AWQOS,
      m_axi_hostmem_1_AWVALID => m_axi_hostmem_1_AWVALID,
      m_axi_hostmem_1_AWREADY => m_axi_hostmem_1_AWREADY,
      m_axi_hostmem_1_WDATA => m_axi_hostmem_1_WDATA,
      m_axi_hostmem_1_WSTRB => m_axi_hostmem_1_WSTRB,
      m_axi_hostmem_1_WLAST => m_axi_hostmem_1_WLAST,
      m_axi_hostmem_1_WVALID => m_axi_hostmem_1_WVALID,
      m_axi_hostmem_1_WREADY => m_axi_hostmem_1_WREADY,
      m_axi_hostmem_1_BID => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_hostmem_1_BRESP => m_axi_hostmem_1_BRESP,
      m_axi_hostmem_1_BUSER => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_hostmem_1_BVALID => m_axi_hostmem_1_BVALID,
      m_axi_hostmem_1_BREADY => m_axi_hostmem_1_BREADY,
      m_axi_hostmem_1_ARADDR => m_axi_hostmem_1_ARADDR,
      m_axi_hostmem_1_ARLEN => m_axi_hostmem_1_ARLEN,
      m_axi_hostmem_1_ARSIZE => m_axi_hostmem_1_ARSIZE,
      m_axi_hostmem_1_ARBURST => m_axi_hostmem_1_ARBURST,
      m_axi_hostmem_1_ARLOCK => m_axi_hostmem_1_ARLOCK,
      m_axi_hostmem_1_ARREGION => m_axi_hostmem_1_ARREGION,
      m_axi_hostmem_1_ARCACHE => m_axi_hostmem_1_ARCACHE,
      m_axi_hostmem_1_ARPROT => m_axi_hostmem_1_ARPROT,
      m_axi_hostmem_1_ARQOS => m_axi_hostmem_1_ARQOS,
      m_axi_hostmem_1_ARVALID => m_axi_hostmem_1_ARVALID,
      m_axi_hostmem_1_ARREADY => m_axi_hostmem_1_ARREADY,
      m_axi_hostmem_1_RID => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_hostmem_1_RDATA => m_axi_hostmem_1_RDATA,
      m_axi_hostmem_1_RRESP => m_axi_hostmem_1_RRESP,
      m_axi_hostmem_1_RLAST => m_axi_hostmem_1_RLAST,
      m_axi_hostmem_1_RUSER => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_hostmem_1_RVALID => m_axi_hostmem_1_RVALID,
      m_axi_hostmem_1_RREADY => m_axi_hostmem_1_RREADY,
      m_axi_hostmem_2_AWADDR => m_axi_hostmem_2_AWADDR,
      m_axi_hostmem_2_AWLEN => m_axi_hostmem_2_AWLEN,
      m_axi_hostmem_2_AWSIZE => m_axi_hostmem_2_AWSIZE,
      m_axi_hostmem_2_AWBURST => m_axi_hostmem_2_AWBURST,
      m_axi_hostmem_2_AWLOCK => m_axi_hostmem_2_AWLOCK,
      m_axi_hostmem_2_AWREGION => m_axi_hostmem_2_AWREGION,
      m_axi_hostmem_2_AWCACHE => m_axi_hostmem_2_AWCACHE,
      m_axi_hostmem_2_AWPROT => m_axi_hostmem_2_AWPROT,
      m_axi_hostmem_2_AWQOS => m_axi_hostmem_2_AWQOS,
      m_axi_hostmem_2_AWVALID => m_axi_hostmem_2_AWVALID,
      m_axi_hostmem_2_AWREADY => m_axi_hostmem_2_AWREADY,
      m_axi_hostmem_2_WDATA => m_axi_hostmem_2_WDATA,
      m_axi_hostmem_2_WSTRB => m_axi_hostmem_2_WSTRB,
      m_axi_hostmem_2_WLAST => m_axi_hostmem_2_WLAST,
      m_axi_hostmem_2_WVALID => m_axi_hostmem_2_WVALID,
      m_axi_hostmem_2_WREADY => m_axi_hostmem_2_WREADY,
      m_axi_hostmem_2_BID => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_hostmem_2_BRESP => m_axi_hostmem_2_BRESP,
      m_axi_hostmem_2_BUSER => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_hostmem_2_BVALID => m_axi_hostmem_2_BVALID,
      m_axi_hostmem_2_BREADY => m_axi_hostmem_2_BREADY,
      m_axi_hostmem_2_ARADDR => m_axi_hostmem_2_ARADDR,
      m_axi_hostmem_2_ARLEN => m_axi_hostmem_2_ARLEN,
      m_axi_hostmem_2_ARSIZE => m_axi_hostmem_2_ARSIZE,
      m_axi_hostmem_2_ARBURST => m_axi_hostmem_2_ARBURST,
      m_axi_hostmem_2_ARLOCK => m_axi_hostmem_2_ARLOCK,
      m_axi_hostmem_2_ARREGION => m_axi_hostmem_2_ARREGION,
      m_axi_hostmem_2_ARCACHE => m_axi_hostmem_2_ARCACHE,
      m_axi_hostmem_2_ARPROT => m_axi_hostmem_2_ARPROT,
      m_axi_hostmem_2_ARQOS => m_axi_hostmem_2_ARQOS,
      m_axi_hostmem_2_ARVALID => m_axi_hostmem_2_ARVALID,
      m_axi_hostmem_2_ARREADY => m_axi_hostmem_2_ARREADY,
      m_axi_hostmem_2_RID => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_hostmem_2_RDATA => m_axi_hostmem_2_RDATA,
      m_axi_hostmem_2_RRESP => m_axi_hostmem_2_RRESP,
      m_axi_hostmem_2_RLAST => m_axi_hostmem_2_RLAST,
      m_axi_hostmem_2_RUSER => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_hostmem_2_RVALID => m_axi_hostmem_2_RVALID,
      m_axi_hostmem_2_RREADY => m_axi_hostmem_2_RREADY
    );
END design_1_image_filter_0_0_arch;
