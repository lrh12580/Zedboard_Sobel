// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module bgr2gray (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        start_out,
        start_write,
        src_V_V_dout,
        src_V_V_empty_n,
        src_V_V_read,
        dst_V_V_din,
        dst_V_V_full_n,
        dst_V_V_write
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state29 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   start_out;
output   start_write;
input  [31:0] src_V_V_dout;
input   src_V_V_empty_n;
output   src_V_V_read;
output  [7:0] dst_V_V_din;
input   dst_V_V_full_n;
output   dst_V_V_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg src_V_V_read;
reg dst_V_V_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    src_V_V_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] exitcond_reg_326;
reg    dst_V_V_blk_n;
reg    ap_enable_reg_pp0_iter26;
reg   [0:0] ap_reg_pp0_iter25_exitcond_reg_326;
reg   [18:0] i_reg_113;
wire   [0:0] exitcond_fu_159_p2;
wire    ap_block_state2_pp0_stage0_iter0;
reg    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_state4_pp0_stage0_iter2;
wire    ap_block_state5_pp0_stage0_iter3;
wire    ap_block_state6_pp0_stage0_iter4;
wire    ap_block_state7_pp0_stage0_iter5;
wire    ap_block_state8_pp0_stage0_iter6;
wire    ap_block_state9_pp0_stage0_iter7;
wire    ap_block_state10_pp0_stage0_iter8;
wire    ap_block_state11_pp0_stage0_iter9;
wire    ap_block_state12_pp0_stage0_iter10;
wire    ap_block_state13_pp0_stage0_iter11;
wire    ap_block_state14_pp0_stage0_iter12;
wire    ap_block_state15_pp0_stage0_iter13;
wire    ap_block_state16_pp0_stage0_iter14;
wire    ap_block_state17_pp0_stage0_iter15;
wire    ap_block_state18_pp0_stage0_iter16;
wire    ap_block_state19_pp0_stage0_iter17;
wire    ap_block_state20_pp0_stage0_iter18;
wire    ap_block_state21_pp0_stage0_iter19;
wire    ap_block_state22_pp0_stage0_iter20;
wire    ap_block_state23_pp0_stage0_iter21;
wire    ap_block_state24_pp0_stage0_iter22;
wire    ap_block_state25_pp0_stage0_iter23;
wire    ap_block_state26_pp0_stage0_iter24;
wire    ap_block_state27_pp0_stage0_iter25;
reg    ap_block_state28_pp0_stage0_iter26;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] ap_reg_pp0_iter1_exitcond_reg_326;
reg   [0:0] ap_reg_pp0_iter2_exitcond_reg_326;
reg   [0:0] ap_reg_pp0_iter3_exitcond_reg_326;
reg   [0:0] ap_reg_pp0_iter4_exitcond_reg_326;
reg   [0:0] ap_reg_pp0_iter5_exitcond_reg_326;
reg   [0:0] ap_reg_pp0_iter6_exitcond_reg_326;
reg   [0:0] ap_reg_pp0_iter7_exitcond_reg_326;
reg   [0:0] ap_reg_pp0_iter8_exitcond_reg_326;
reg   [0:0] ap_reg_pp0_iter9_exitcond_reg_326;
reg   [0:0] ap_reg_pp0_iter10_exitcond_reg_326;
reg   [0:0] ap_reg_pp0_iter11_exitcond_reg_326;
reg   [0:0] ap_reg_pp0_iter12_exitcond_reg_326;
reg   [0:0] ap_reg_pp0_iter13_exitcond_reg_326;
reg   [0:0] ap_reg_pp0_iter14_exitcond_reg_326;
reg   [0:0] ap_reg_pp0_iter15_exitcond_reg_326;
reg   [0:0] ap_reg_pp0_iter16_exitcond_reg_326;
reg   [0:0] ap_reg_pp0_iter17_exitcond_reg_326;
reg   [0:0] ap_reg_pp0_iter18_exitcond_reg_326;
reg   [0:0] ap_reg_pp0_iter19_exitcond_reg_326;
reg   [0:0] ap_reg_pp0_iter20_exitcond_reg_326;
reg   [0:0] ap_reg_pp0_iter21_exitcond_reg_326;
reg   [0:0] ap_reg_pp0_iter22_exitcond_reg_326;
reg   [0:0] ap_reg_pp0_iter23_exitcond_reg_326;
reg   [0:0] ap_reg_pp0_iter24_exitcond_reg_326;
wire   [18:0] i_3_fu_165_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [7:0] blue_V_fu_171_p1;
reg   [7:0] blue_V_reg_335;
reg   [7:0] green_V_reg_340;
reg   [7:0] red_V_reg_345;
reg   [7:0] ap_reg_pp0_iter2_red_V_reg_345;
reg   [7:0] ap_reg_pp0_iter3_red_V_reg_345;
reg   [7:0] ap_reg_pp0_iter4_red_V_reg_345;
reg   [7:0] ap_reg_pp0_iter5_red_V_reg_345;
reg   [7:0] ap_reg_pp0_iter6_red_V_reg_345;
wire   [63:0] grp_fu_150_p1;
reg   [63:0] tmp_s_reg_360;
wire   [63:0] grp_fu_153_p1;
reg   [63:0] tmp_26_reg_365;
wire   [63:0] grp_fu_156_p1;
reg   [63:0] tmp_30_reg_375;
wire   [63:0] grp_fu_135_p2;
reg   [63:0] tmp_24_reg_380;
wire   [63:0] grp_fu_140_p2;
reg   [63:0] tmp_27_reg_385;
wire   [63:0] grp_fu_127_p2;
reg   [63:0] tmp_28_reg_390;
wire   [63:0] grp_fu_145_p2;
reg   [63:0] tmp_31_reg_395;
wire   [63:0] grp_fu_131_p2;
reg   [63:0] tmp_32_reg_400;
reg   [7:0] loc_V_reg_405;
wire   [22:0] loc_V_1_fu_221_p1;
reg   [22:0] loc_V_1_reg_411;
wire   [7:0] p_Val2_s_fu_318_p3;
reg   [7:0] p_Val2_s_reg_416;
reg    ap_block_state1;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_enable_reg_pp0_iter11;
reg    ap_enable_reg_pp0_iter12;
reg    ap_enable_reg_pp0_iter13;
reg    ap_enable_reg_pp0_iter14;
reg    ap_enable_reg_pp0_iter15;
reg    ap_enable_reg_pp0_iter16;
reg    ap_enable_reg_pp0_iter17;
reg    ap_enable_reg_pp0_iter18;
reg    ap_enable_reg_pp0_iter19;
reg    ap_enable_reg_pp0_iter20;
reg    ap_enable_reg_pp0_iter21;
reg    ap_enable_reg_pp0_iter22;
reg    ap_enable_reg_pp0_iter23;
reg    ap_enable_reg_pp0_iter24;
reg    ap_enable_reg_pp0_iter25;
reg    ap_block_pp0_stage0_01001;
wire   [31:0] grp_fu_150_p0;
wire   [31:0] grp_fu_153_p0;
wire   [31:0] grp_fu_156_p0;
wire   [31:0] tmp_6_fu_124_p1;
wire   [31:0] p_Val2_1_fu_207_p1;
wire   [24:0] tmp_26_i_i_i_fu_225_p4;
wire   [8:0] tmp_i_i_i_i_cast_fu_238_p1;
wire   [8:0] sh_assign_fu_241_p2;
wire   [7:0] tmp_27_i_i_i_fu_255_p2;
wire   [0:0] isNeg_fu_247_p3;
wire  signed [8:0] tmp_27_i_i_i_cast_fu_260_p1;
wire   [8:0] sh_assign_2_fu_264_p3;
wire  signed [31:0] sh_assign_2_i_i_i_ca_fu_272_p1;
wire  signed [24:0] sh_assign_2_i_i_i_ca_1_fu_276_p1;
wire   [54:0] tmp_26_i_i_i_cast2_fu_234_p1;
wire   [54:0] tmp_28_i_i_i_fu_280_p1;
wire   [24:0] tmp_29_i_i_i_fu_284_p2;
wire   [0:0] tmp_44_fu_296_p3;
wire   [54:0] tmp_30_i_i_i_fu_290_p2;
wire   [7:0] tmp_33_fu_304_p1;
wire   [7:0] tmp_34_fu_308_p4;
reg    grp_fu_127_ce;
reg    grp_fu_131_ce;
reg    grp_fu_135_ce;
reg    grp_fu_140_ce;
reg    grp_fu_145_ce;
reg    grp_fu_150_ce;
reg    grp_fu_153_ce;
reg    grp_fu_156_ce;
wire    ap_CS_fsm_state29;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter26 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 ap_enable_reg_pp0_iter12 = 1'b0;
#0 ap_enable_reg_pp0_iter13 = 1'b0;
#0 ap_enable_reg_pp0_iter14 = 1'b0;
#0 ap_enable_reg_pp0_iter15 = 1'b0;
#0 ap_enable_reg_pp0_iter16 = 1'b0;
#0 ap_enable_reg_pp0_iter17 = 1'b0;
#0 ap_enable_reg_pp0_iter18 = 1'b0;
#0 ap_enable_reg_pp0_iter19 = 1'b0;
#0 ap_enable_reg_pp0_iter20 = 1'b0;
#0 ap_enable_reg_pp0_iter21 = 1'b0;
#0 ap_enable_reg_pp0_iter22 = 1'b0;
#0 ap_enable_reg_pp0_iter23 = 1'b0;
#0 ap_enable_reg_pp0_iter24 = 1'b0;
#0 ap_enable_reg_pp0_iter25 = 1'b0;
end

image_filter_fptrbkb #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 64 ),
    .dout_WIDTH( 32 ))
image_filter_fptrbkb_U14(
    .din0(tmp_32_reg_400),
    .dout(tmp_6_fu_124_p1)
);

image_filter_daddcud #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
image_filter_daddcud_U15(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(tmp_24_reg_380),
    .din1(tmp_27_reg_385),
    .ce(grp_fu_127_ce),
    .dout(grp_fu_127_p2)
);

image_filter_daddcud #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
image_filter_daddcud_U16(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(tmp_28_reg_390),
    .din1(tmp_31_reg_395),
    .ce(grp_fu_131_ce),
    .dout(grp_fu_131_p2)
);

image_filter_dmuldEe #(
    .ID( 1 ),
    .NUM_STAGE( 6 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
image_filter_dmuldEe_U17(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(tmp_s_reg_360),
    .din1(64'd4592878986383488713),
    .ce(grp_fu_135_ce),
    .dout(grp_fu_135_p2)
);

image_filter_dmuldEe #(
    .ID( 1 ),
    .NUM_STAGE( 6 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
image_filter_dmuldEe_U18(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(tmp_26_reg_365),
    .din1(64'd4603462445507809378),
    .ce(grp_fu_140_ce),
    .dout(grp_fu_140_p2)
);

image_filter_dmuldEe #(
    .ID( 1 ),
    .NUM_STAGE( 6 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
image_filter_dmuldEe_U19(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(tmp_30_reg_375),
    .din1(64'd4599057925072241033),
    .ce(grp_fu_145_ce),
    .dout(grp_fu_145_p2)
);

image_filter_sitoeOg #(
    .ID( 1 ),
    .NUM_STAGE( 6 ),
    .din0_WIDTH( 32 ),
    .dout_WIDTH( 64 ))
image_filter_sitoeOg_U20(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_150_p0),
    .ce(grp_fu_150_ce),
    .dout(grp_fu_150_p1)
);

image_filter_sitoeOg #(
    .ID( 1 ),
    .NUM_STAGE( 6 ),
    .din0_WIDTH( 32 ),
    .dout_WIDTH( 64 ))
image_filter_sitoeOg_U21(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_153_p0),
    .ce(grp_fu_153_ce),
    .dout(grp_fu_153_p1)
);

image_filter_sitoeOg #(
    .ID( 1 ),
    .NUM_STAGE( 6 ),
    .din0_WIDTH( 32 ),
    .dout_WIDTH( 64 ))
image_filter_sitoeOg_U22(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_156_p0),
    .ce(grp_fu_156_ce),
    .dout(grp_fu_156_p1)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state29)) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state2)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter17 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter17 <= ap_enable_reg_pp0_iter16;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter18 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter18 <= ap_enable_reg_pp0_iter17;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter19 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter19 <= ap_enable_reg_pp0_iter18;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter20 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter20 <= ap_enable_reg_pp0_iter19;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter21 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter21 <= ap_enable_reg_pp0_iter20;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter22 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter22 <= ap_enable_reg_pp0_iter21;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter23 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter23 <= ap_enable_reg_pp0_iter22;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter24 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter24 <= ap_enable_reg_pp0_iter23;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter25 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter25 <= ap_enable_reg_pp0_iter24;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter26 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter26 <= ap_enable_reg_pp0_iter25;
        end else if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter26 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((internal_ap_ready == 1'b0) & (real_start == 1'b1))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_fu_159_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        i_reg_113 <= i_3_fu_165_p2;
    end else if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        i_reg_113 <= 19'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_reg_pp0_iter10_exitcond_reg_326 <= ap_reg_pp0_iter9_exitcond_reg_326;
        ap_reg_pp0_iter11_exitcond_reg_326 <= ap_reg_pp0_iter10_exitcond_reg_326;
        ap_reg_pp0_iter12_exitcond_reg_326 <= ap_reg_pp0_iter11_exitcond_reg_326;
        ap_reg_pp0_iter13_exitcond_reg_326 <= ap_reg_pp0_iter12_exitcond_reg_326;
        ap_reg_pp0_iter14_exitcond_reg_326 <= ap_reg_pp0_iter13_exitcond_reg_326;
        ap_reg_pp0_iter15_exitcond_reg_326 <= ap_reg_pp0_iter14_exitcond_reg_326;
        ap_reg_pp0_iter16_exitcond_reg_326 <= ap_reg_pp0_iter15_exitcond_reg_326;
        ap_reg_pp0_iter17_exitcond_reg_326 <= ap_reg_pp0_iter16_exitcond_reg_326;
        ap_reg_pp0_iter18_exitcond_reg_326 <= ap_reg_pp0_iter17_exitcond_reg_326;
        ap_reg_pp0_iter19_exitcond_reg_326 <= ap_reg_pp0_iter18_exitcond_reg_326;
        ap_reg_pp0_iter20_exitcond_reg_326 <= ap_reg_pp0_iter19_exitcond_reg_326;
        ap_reg_pp0_iter21_exitcond_reg_326 <= ap_reg_pp0_iter20_exitcond_reg_326;
        ap_reg_pp0_iter22_exitcond_reg_326 <= ap_reg_pp0_iter21_exitcond_reg_326;
        ap_reg_pp0_iter23_exitcond_reg_326 <= ap_reg_pp0_iter22_exitcond_reg_326;
        ap_reg_pp0_iter24_exitcond_reg_326 <= ap_reg_pp0_iter23_exitcond_reg_326;
        ap_reg_pp0_iter25_exitcond_reg_326 <= ap_reg_pp0_iter24_exitcond_reg_326;
        ap_reg_pp0_iter2_exitcond_reg_326 <= ap_reg_pp0_iter1_exitcond_reg_326;
        ap_reg_pp0_iter2_red_V_reg_345 <= red_V_reg_345;
        ap_reg_pp0_iter3_exitcond_reg_326 <= ap_reg_pp0_iter2_exitcond_reg_326;
        ap_reg_pp0_iter3_red_V_reg_345 <= ap_reg_pp0_iter2_red_V_reg_345;
        ap_reg_pp0_iter4_exitcond_reg_326 <= ap_reg_pp0_iter3_exitcond_reg_326;
        ap_reg_pp0_iter4_red_V_reg_345 <= ap_reg_pp0_iter3_red_V_reg_345;
        ap_reg_pp0_iter5_exitcond_reg_326 <= ap_reg_pp0_iter4_exitcond_reg_326;
        ap_reg_pp0_iter5_red_V_reg_345 <= ap_reg_pp0_iter4_red_V_reg_345;
        ap_reg_pp0_iter6_exitcond_reg_326 <= ap_reg_pp0_iter5_exitcond_reg_326;
        ap_reg_pp0_iter6_red_V_reg_345 <= ap_reg_pp0_iter5_red_V_reg_345;
        ap_reg_pp0_iter7_exitcond_reg_326 <= ap_reg_pp0_iter6_exitcond_reg_326;
        ap_reg_pp0_iter8_exitcond_reg_326 <= ap_reg_pp0_iter7_exitcond_reg_326;
        ap_reg_pp0_iter9_exitcond_reg_326 <= ap_reg_pp0_iter8_exitcond_reg_326;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_reg_pp0_iter1_exitcond_reg_326 <= exitcond_reg_326;
        exitcond_reg_326 <= exitcond_fu_159_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_reg_326 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        blue_V_reg_335 <= blue_V_fu_171_p1;
        green_V_reg_340 <= {{src_V_V_dout[15:8]}};
        red_V_reg_345 <= {{src_V_V_dout[23:16]}};
    end
end

always @ (posedge ap_clk) begin
    if (((ap_reg_pp0_iter23_exitcond_reg_326 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        loc_V_1_reg_411 <= loc_V_1_fu_221_p1;
        loc_V_reg_405 <= {{p_Val2_1_fu_207_p1[30:23]}};
    end
end

always @ (posedge ap_clk) begin
    if (((ap_reg_pp0_iter24_exitcond_reg_326 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        p_Val2_s_reg_416 <= p_Val2_s_fu_318_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_reg_pp0_iter12_exitcond_reg_326 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_24_reg_380 <= grp_fu_135_p2;
        tmp_27_reg_385 <= grp_fu_140_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_reg_pp0_iter6_exitcond_reg_326 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_26_reg_365 <= grp_fu_153_p1;
        tmp_s_reg_360 <= grp_fu_150_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_reg_pp0_iter17_exitcond_reg_326 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_28_reg_390 <= grp_fu_127_p2;
        tmp_31_reg_395 <= grp_fu_145_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_reg_pp0_iter11_exitcond_reg_326 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_30_reg_375 <= grp_fu_156_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_reg_pp0_iter22_exitcond_reg_326 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_32_reg_400 <= grp_fu_131_p2;
    end
end

always @ (*) begin
    if ((exitcond_fu_159_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state29)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((real_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter26 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter25 == 1'b0) & (ap_enable_reg_pp0_iter24 == 1'b0) & (ap_enable_reg_pp0_iter23 == 1'b0) & (ap_enable_reg_pp0_iter22 == 1'b0) & (ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_reg_pp0_iter25_exitcond_reg_326 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter26 == 1'b1))) begin
        dst_V_V_blk_n = dst_V_V_full_n;
    end else begin
        dst_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_reg_pp0_iter25_exitcond_reg_326 == 1'd0) & (ap_enable_reg_pp0_iter26 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        dst_V_V_write = 1'b1;
    end else begin
        dst_V_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        grp_fu_127_ce = 1'b1;
    end else begin
        grp_fu_127_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        grp_fu_131_ce = 1'b1;
    end else begin
        grp_fu_131_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        grp_fu_135_ce = 1'b1;
    end else begin
        grp_fu_135_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        grp_fu_140_ce = 1'b1;
    end else begin
        grp_fu_140_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        grp_fu_145_ce = 1'b1;
    end else begin
        grp_fu_145_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        grp_fu_150_ce = 1'b1;
    end else begin
        grp_fu_150_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        grp_fu_153_ce = 1'b1;
    end else begin
        grp_fu_153_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        grp_fu_156_ce = 1'b1;
    end else begin
        grp_fu_156_ce = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state29)) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (start_full_n == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if (((exitcond_reg_326 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        src_V_V_blk_n = src_V_V_empty_n;
    end else begin
        src_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((exitcond_reg_326 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        src_V_V_read = 1'b1;
    end else begin
        src_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (real_start == 1'b1))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((exitcond_fu_159_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1)) & ~((ap_enable_reg_pp0_iter25 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter26 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_enable_reg_pp0_iter25 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter26 == 1'b1)) | ((exitcond_fu_159_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_state29;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state29 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state29 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((ap_reg_pp0_iter25_exitcond_reg_326 == 1'd0) & (dst_V_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter26 == 1'b1)) | ((exitcond_reg_326 == 1'd0) & (src_V_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((ap_reg_pp0_iter25_exitcond_reg_326 == 1'd0) & (dst_V_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter26 == 1'b1)) | ((exitcond_reg_326 == 1'd0) & (src_V_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((ap_reg_pp0_iter25_exitcond_reg_326 == 1'd0) & (dst_V_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter26 == 1'b1)) | ((exitcond_reg_326 == 1'd0) & (src_V_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

always @ (*) begin
    ap_block_state1 = ((real_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state10_pp0_stage0_iter8 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter9 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage0_iter10 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter11 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage0_iter12 = ~(1'b1 == 1'b1);

assign ap_block_state15_pp0_stage0_iter13 = ~(1'b1 == 1'b1);

assign ap_block_state16_pp0_stage0_iter14 = ~(1'b1 == 1'b1);

assign ap_block_state17_pp0_stage0_iter15 = ~(1'b1 == 1'b1);

assign ap_block_state18_pp0_stage0_iter16 = ~(1'b1 == 1'b1);

assign ap_block_state19_pp0_stage0_iter17 = ~(1'b1 == 1'b1);

assign ap_block_state20_pp0_stage0_iter18 = ~(1'b1 == 1'b1);

assign ap_block_state21_pp0_stage0_iter19 = ~(1'b1 == 1'b1);

assign ap_block_state22_pp0_stage0_iter20 = ~(1'b1 == 1'b1);

assign ap_block_state23_pp0_stage0_iter21 = ~(1'b1 == 1'b1);

assign ap_block_state24_pp0_stage0_iter22 = ~(1'b1 == 1'b1);

assign ap_block_state25_pp0_stage0_iter23 = ~(1'b1 == 1'b1);

assign ap_block_state26_pp0_stage0_iter24 = ~(1'b1 == 1'b1);

assign ap_block_state27_pp0_stage0_iter25 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state28_pp0_stage0_iter26 = ((ap_reg_pp0_iter25_exitcond_reg_326 == 1'd0) & (dst_V_V_full_n == 1'b0));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_pp0_stage0_iter1 = ((exitcond_reg_326 == 1'd0) & (src_V_V_empty_n == 1'b0));
end

assign ap_block_state4_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter6 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter7 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_ready = internal_ap_ready;

assign blue_V_fu_171_p1 = src_V_V_dout[7:0];

assign dst_V_V_din = p_Val2_s_reg_416;

assign exitcond_fu_159_p2 = ((i_reg_113 == 19'd262144) ? 1'b1 : 1'b0);

assign grp_fu_150_p0 = blue_V_reg_335;

assign grp_fu_153_p0 = green_V_reg_340;

assign grp_fu_156_p0 = ap_reg_pp0_iter6_red_V_reg_345;

assign i_3_fu_165_p2 = (i_reg_113 + 19'd1);

assign isNeg_fu_247_p3 = sh_assign_fu_241_p2[32'd8];

assign loc_V_1_fu_221_p1 = p_Val2_1_fu_207_p1[22:0];

assign p_Val2_1_fu_207_p1 = tmp_6_fu_124_p1;

assign p_Val2_s_fu_318_p3 = ((isNeg_fu_247_p3[0:0] === 1'b1) ? tmp_33_fu_304_p1 : tmp_34_fu_308_p4);

assign sh_assign_2_fu_264_p3 = ((isNeg_fu_247_p3[0:0] === 1'b1) ? tmp_27_i_i_i_cast_fu_260_p1 : sh_assign_fu_241_p2);

assign sh_assign_2_i_i_i_ca_1_fu_276_p1 = $signed(sh_assign_2_fu_264_p3);

assign sh_assign_2_i_i_i_ca_fu_272_p1 = $signed(sh_assign_2_fu_264_p3);

assign sh_assign_fu_241_p2 = ($signed(9'd385) + $signed(tmp_i_i_i_i_cast_fu_238_p1));

assign start_out = real_start;

assign tmp_26_i_i_i_cast2_fu_234_p1 = tmp_26_i_i_i_fu_225_p4;

assign tmp_26_i_i_i_fu_225_p4 = {{{{1'd1}, {loc_V_1_reg_411}}}, {1'd0}};

assign tmp_27_i_i_i_cast_fu_260_p1 = $signed(tmp_27_i_i_i_fu_255_p2);

assign tmp_27_i_i_i_fu_255_p2 = (8'd127 - loc_V_reg_405);

assign tmp_28_i_i_i_fu_280_p1 = $unsigned(sh_assign_2_i_i_i_ca_fu_272_p1);

assign tmp_29_i_i_i_fu_284_p2 = tmp_26_i_i_i_fu_225_p4 >> sh_assign_2_i_i_i_ca_1_fu_276_p1;

assign tmp_30_i_i_i_fu_290_p2 = tmp_26_i_i_i_cast2_fu_234_p1 << tmp_28_i_i_i_fu_280_p1;

assign tmp_33_fu_304_p1 = tmp_44_fu_296_p3;

assign tmp_34_fu_308_p4 = {{tmp_30_i_i_i_fu_290_p2[31:24]}};

assign tmp_44_fu_296_p3 = tmp_29_i_i_i_fu_284_p2[32'd24];

assign tmp_i_i_i_i_cast_fu_238_p1 = loc_V_reg_405;

endmodule //bgr2gray