-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Fri Dec 13 12:13:05 2019
-- Host        : kamek running 64-bit CentOS release 6.10 (Final)
-- Command     : write_vhdl -force -mode synth_stub
--               /home/ecelrc/students/rli3/Vivado/projects/final_project_1/final_project_1.srcs/sources_1/bd/design_1/ip/design_1_image_filter_0_0/design_1_image_filter_0_0_stub.vhdl
-- Design      : design_1_image_filter_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_image_filter_0_0 is
  Port ( 
    s_axi_CONTROL_BUS_AWADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_CONTROL_BUS_AWVALID : in STD_LOGIC;
    s_axi_CONTROL_BUS_AWREADY : out STD_LOGIC;
    s_axi_CONTROL_BUS_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CONTROL_BUS_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CONTROL_BUS_WVALID : in STD_LOGIC;
    s_axi_CONTROL_BUS_WREADY : out STD_LOGIC;
    s_axi_CONTROL_BUS_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CONTROL_BUS_BVALID : out STD_LOGIC;
    s_axi_CONTROL_BUS_BREADY : in STD_LOGIC;
    s_axi_CONTROL_BUS_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_CONTROL_BUS_ARVALID : in STD_LOGIC;
    s_axi_CONTROL_BUS_ARREADY : out STD_LOGIC;
    s_axi_CONTROL_BUS_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CONTROL_BUS_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CONTROL_BUS_RVALID : out STD_LOGIC;
    s_axi_CONTROL_BUS_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    m_axi_hostmem_1_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_hostmem_1_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_hostmem_1_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_hostmem_1_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_hostmem_1_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_hostmem_1_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_hostmem_1_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_hostmem_1_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_hostmem_1_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_hostmem_1_AWVALID : out STD_LOGIC;
    m_axi_hostmem_1_AWREADY : in STD_LOGIC;
    m_axi_hostmem_1_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_hostmem_1_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_hostmem_1_WLAST : out STD_LOGIC;
    m_axi_hostmem_1_WVALID : out STD_LOGIC;
    m_axi_hostmem_1_WREADY : in STD_LOGIC;
    m_axi_hostmem_1_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_hostmem_1_BVALID : in STD_LOGIC;
    m_axi_hostmem_1_BREADY : out STD_LOGIC;
    m_axi_hostmem_1_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_hostmem_1_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_hostmem_1_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_hostmem_1_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_hostmem_1_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_hostmem_1_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_hostmem_1_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_hostmem_1_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_hostmem_1_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_hostmem_1_ARVALID : out STD_LOGIC;
    m_axi_hostmem_1_ARREADY : in STD_LOGIC;
    m_axi_hostmem_1_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_hostmem_1_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_hostmem_1_RLAST : in STD_LOGIC;
    m_axi_hostmem_1_RVALID : in STD_LOGIC;
    m_axi_hostmem_1_RREADY : out STD_LOGIC;
    m_axi_hostmem_2_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_hostmem_2_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_hostmem_2_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_hostmem_2_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_hostmem_2_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_hostmem_2_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_hostmem_2_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_hostmem_2_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_hostmem_2_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_hostmem_2_AWVALID : out STD_LOGIC;
    m_axi_hostmem_2_AWREADY : in STD_LOGIC;
    m_axi_hostmem_2_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_hostmem_2_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_hostmem_2_WLAST : out STD_LOGIC;
    m_axi_hostmem_2_WVALID : out STD_LOGIC;
    m_axi_hostmem_2_WREADY : in STD_LOGIC;
    m_axi_hostmem_2_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_hostmem_2_BVALID : in STD_LOGIC;
    m_axi_hostmem_2_BREADY : out STD_LOGIC;
    m_axi_hostmem_2_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_hostmem_2_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_hostmem_2_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_hostmem_2_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_hostmem_2_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_hostmem_2_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_hostmem_2_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_hostmem_2_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_hostmem_2_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_hostmem_2_ARVALID : out STD_LOGIC;
    m_axi_hostmem_2_ARREADY : in STD_LOGIC;
    m_axi_hostmem_2_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_hostmem_2_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_hostmem_2_RLAST : in STD_LOGIC;
    m_axi_hostmem_2_RVALID : in STD_LOGIC;
    m_axi_hostmem_2_RREADY : out STD_LOGIC
  );

end design_1_image_filter_0_0;

architecture stub of design_1_image_filter_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_CONTROL_BUS_AWADDR[5:0],s_axi_CONTROL_BUS_AWVALID,s_axi_CONTROL_BUS_AWREADY,s_axi_CONTROL_BUS_WDATA[31:0],s_axi_CONTROL_BUS_WSTRB[3:0],s_axi_CONTROL_BUS_WVALID,s_axi_CONTROL_BUS_WREADY,s_axi_CONTROL_BUS_BRESP[1:0],s_axi_CONTROL_BUS_BVALID,s_axi_CONTROL_BUS_BREADY,s_axi_CONTROL_BUS_ARADDR[5:0],s_axi_CONTROL_BUS_ARVALID,s_axi_CONTROL_BUS_ARREADY,s_axi_CONTROL_BUS_RDATA[31:0],s_axi_CONTROL_BUS_RRESP[1:0],s_axi_CONTROL_BUS_RVALID,s_axi_CONTROL_BUS_RREADY,ap_clk,ap_rst_n,interrupt,m_axi_hostmem_1_AWADDR[31:0],m_axi_hostmem_1_AWLEN[7:0],m_axi_hostmem_1_AWSIZE[2:0],m_axi_hostmem_1_AWBURST[1:0],m_axi_hostmem_1_AWLOCK[1:0],m_axi_hostmem_1_AWREGION[3:0],m_axi_hostmem_1_AWCACHE[3:0],m_axi_hostmem_1_AWPROT[2:0],m_axi_hostmem_1_AWQOS[3:0],m_axi_hostmem_1_AWVALID,m_axi_hostmem_1_AWREADY,m_axi_hostmem_1_WDATA[31:0],m_axi_hostmem_1_WSTRB[3:0],m_axi_hostmem_1_WLAST,m_axi_hostmem_1_WVALID,m_axi_hostmem_1_WREADY,m_axi_hostmem_1_BRESP[1:0],m_axi_hostmem_1_BVALID,m_axi_hostmem_1_BREADY,m_axi_hostmem_1_ARADDR[31:0],m_axi_hostmem_1_ARLEN[7:0],m_axi_hostmem_1_ARSIZE[2:0],m_axi_hostmem_1_ARBURST[1:0],m_axi_hostmem_1_ARLOCK[1:0],m_axi_hostmem_1_ARREGION[3:0],m_axi_hostmem_1_ARCACHE[3:0],m_axi_hostmem_1_ARPROT[2:0],m_axi_hostmem_1_ARQOS[3:0],m_axi_hostmem_1_ARVALID,m_axi_hostmem_1_ARREADY,m_axi_hostmem_1_RDATA[31:0],m_axi_hostmem_1_RRESP[1:0],m_axi_hostmem_1_RLAST,m_axi_hostmem_1_RVALID,m_axi_hostmem_1_RREADY,m_axi_hostmem_2_AWADDR[31:0],m_axi_hostmem_2_AWLEN[7:0],m_axi_hostmem_2_AWSIZE[2:0],m_axi_hostmem_2_AWBURST[1:0],m_axi_hostmem_2_AWLOCK[1:0],m_axi_hostmem_2_AWREGION[3:0],m_axi_hostmem_2_AWCACHE[3:0],m_axi_hostmem_2_AWPROT[2:0],m_axi_hostmem_2_AWQOS[3:0],m_axi_hostmem_2_AWVALID,m_axi_hostmem_2_AWREADY,m_axi_hostmem_2_WDATA[31:0],m_axi_hostmem_2_WSTRB[3:0],m_axi_hostmem_2_WLAST,m_axi_hostmem_2_WVALID,m_axi_hostmem_2_WREADY,m_axi_hostmem_2_BRESP[1:0],m_axi_hostmem_2_BVALID,m_axi_hostmem_2_BREADY,m_axi_hostmem_2_ARADDR[31:0],m_axi_hostmem_2_ARLEN[7:0],m_axi_hostmem_2_ARSIZE[2:0],m_axi_hostmem_2_ARBURST[1:0],m_axi_hostmem_2_ARLOCK[1:0],m_axi_hostmem_2_ARREGION[3:0],m_axi_hostmem_2_ARCACHE[3:0],m_axi_hostmem_2_ARPROT[2:0],m_axi_hostmem_2_ARQOS[3:0],m_axi_hostmem_2_ARVALID,m_axi_hostmem_2_ARREADY,m_axi_hostmem_2_RDATA[31:0],m_axi_hostmem_2_RRESP[1:0],m_axi_hostmem_2_RLAST,m_axi_hostmem_2_RVALID,m_axi_hostmem_2_RREADY";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "image_filter,Vivado 2017.4";
begin
end;
