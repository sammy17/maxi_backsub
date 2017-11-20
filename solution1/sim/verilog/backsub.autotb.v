// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.4
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ==============================================================

 `timescale 1ns/1ps


`define AUTOTB_DUT      backsub
`define AUTOTB_DUT_INST AESL_inst_backsub
`define AUTOTB_TOP      apatb_backsub_top
`define AUTOTB_LAT_RESULT_FILE "backsub.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "backsub.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_backsub_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_TRANSACTION_NUM  9
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00
`define LENGTH_gmem 1
`define LENGTH_gmem_offset 1
`define LENGTH_frame_in 1
`define LENGTH_frame_out 1
`define LENGTH_frame 76800
`define LENGTH_init 1
`define LENGTH_ap_return 1

`define   AESL_DEPTH_gmem 1
`define   AESL_DEPTH_gmem_offset 1
`define   AESL_DEPTH_frame_in 1
`define   AESL_DEPTH_frame_out 1
`define	AESL_BRAM_frame AESL_autobram_frame
`define	AESL_BRAM_INST_frame bram_inst_frame
`define   AESL_DEPTH_init 1
`define AUTOTB_TVIN_gmem  "../tv/cdatafile/c.backsub.autotvin_gmem.dat"
`define AUTOTB_TVIN_frame_in  "../tv/cdatafile/c.backsub.autotvin_frame_in.dat"
`define AUTOTB_TVIN_frame_out  "../tv/cdatafile/c.backsub.autotvin_frame_out.dat"
`define AUTOTB_TVIN_frame  "../tv/cdatafile/c.backsub.autotvin_frame.dat"
`define AUTOTB_TVIN_init  "../tv/cdatafile/c.backsub.autotvin_init.dat"
`define AUTOTB_TVIN_gmem_out_wrapc  "../tv/rtldatafile/rtl.backsub.autotvin_gmem.dat"
`define AUTOTB_TVIN_frame_in_out_wrapc  "../tv/rtldatafile/rtl.backsub.autotvin_frame_in.dat"
`define AUTOTB_TVIN_frame_out_out_wrapc  "../tv/rtldatafile/rtl.backsub.autotvin_frame_out.dat"
`define AUTOTB_TVIN_frame_out_wrapc  "../tv/rtldatafile/rtl.backsub.autotvin_frame.dat"
`define AUTOTB_TVIN_init_out_wrapc  "../tv/rtldatafile/rtl.backsub.autotvin_init.dat"
`define AUTOTB_TVOUT_gmem_offset  "../tv/cdatafile/c.backsub.autotvout_gmem_offset.dat"
`define AUTOTB_TVOUT_frame  "../tv/cdatafile/c.backsub.autotvout_frame.dat"
`define AUTOTB_TVOUT_ap_return  "../tv/cdatafile/c.backsub.autotvout_ap_return.dat"
`define AUTOTB_TVOUT_gmem_offset_out_wrapc  "../tv/rtldatafile/rtl.backsub.autotvout_gmem_offset.dat"
`define AUTOTB_TVOUT_frame_out_wrapc  "../tv/rtldatafile/rtl.backsub.autotvout_frame.dat"
`define AUTOTB_TVOUT_ap_return_out_wrapc  "../tv/rtldatafile/rtl.backsub.autotvout_ap_return.dat"

module `AUTOTB_TOP;

task read_token;
    input integer fp;
    output reg [231 : 0] token;
    reg [7:0] c;
    reg intoken;
    reg done;
    begin
        token = "";
        intoken = 0;
        done = 0;
        while (!done) begin
            c = $fgetc(fp);
            if (c == 8'hff) begin   // EOF
                done = 1;
            end
            else if (c == " " || c == "\011" || c == "\012" || c == "\015") begin   // blank
                if (intoken) begin
                    done = 1;
                end
            end
            else begin              // valid character
                intoken = 1;
                token = (token << 8) | c;
            end
        end
    end
endtask

reg AESL_clock;
reg rst;
reg start;
reg ce;
reg continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
reg [31 : 0] AESL_mLatCnterIn [0 : `AUTOTB_TRANSACTION_NUM + 1];
reg [31 : 0] AESL_mLatCnterIn_addr;
reg [31 : 0] AESL_mLatCnterOut [0 : `AUTOTB_TRANSACTION_NUM + 1];
reg [31 : 0] AESL_mLatCnterOut_addr ;
reg [31 : 0] AESL_clk_counter ;
reg [19 - 1 : 0] AESL_clk_ready[0 : `AUTOTB_TRANSACTION_NUM + 1];
reg [19 - 1 : 0] AESL_clk_done[0 : `AUTOTB_TRANSACTION_NUM + 1];

reg reported_stuck = 0;
reg reported_stuck_cnt = 0;
wire [5 : 0] AXILiteS_AWADDR;
wire  AXILiteS_AWVALID;
wire  AXILiteS_AWREADY;
wire  AXILiteS_WVALID;
wire  AXILiteS_WREADY;
wire [31 : 0] AXILiteS_WDATA;
wire [3 : 0] AXILiteS_WSTRB;
wire [5 : 0] AXILiteS_ARADDR;
wire  AXILiteS_ARVALID;
wire  AXILiteS_ARREADY;
wire  AXILiteS_RVALID;
wire  AXILiteS_RREADY;
wire [31 : 0] AXILiteS_RDATA;
wire [1 : 0] AXILiteS_RRESP;
wire  AXILiteS_BVALID;
wire  AXILiteS_BREADY;
wire [1 : 0] AXILiteS_BRESP;
wire [5 : 0] CRTL_BUS_AWADDR;
wire  CRTL_BUS_AWVALID;
wire  CRTL_BUS_AWREADY;
wire  CRTL_BUS_WVALID;
wire  CRTL_BUS_WREADY;
wire [31 : 0] CRTL_BUS_WDATA;
wire [3 : 0] CRTL_BUS_WSTRB;
wire [5 : 0] CRTL_BUS_ARADDR;
wire  CRTL_BUS_ARVALID;
wire  CRTL_BUS_ARREADY;
wire  CRTL_BUS_RVALID;
wire  CRTL_BUS_RREADY;
wire [31 : 0] CRTL_BUS_RDATA;
wire [1 : 0] CRTL_BUS_RRESP;
wire  CRTL_BUS_BVALID;
wire  CRTL_BUS_BREADY;
wire [1 : 0] CRTL_BUS_BRESP;
wire  gmem_AWVALID;
wire  gmem_AWREADY;
wire [31 : 0] gmem_AWADDR;
wire [0 : 0] gmem_AWID;
wire [7 : 0] gmem_AWLEN;
wire [2 : 0] gmem_AWSIZE;
wire [1 : 0] gmem_AWBURST;
wire [1 : 0] gmem_AWLOCK;
wire [3 : 0] gmem_AWCACHE;
wire [2 : 0] gmem_AWPROT;
wire [3 : 0] gmem_AWQOS;
wire [3 : 0] gmem_AWREGION;
wire [0 : 0] gmem_AWUSER;
wire  gmem_WVALID;
wire  gmem_WREADY;
wire [31 : 0] gmem_WDATA;
wire [3 : 0] gmem_WSTRB;
wire  gmem_WLAST;
wire [0 : 0] gmem_WID;
wire [0 : 0] gmem_WUSER;
wire  gmem_ARVALID;
wire  gmem_ARREADY;
wire [31 : 0] gmem_ARADDR;
wire [0 : 0] gmem_ARID;
wire [7 : 0] gmem_ARLEN;
wire [2 : 0] gmem_ARSIZE;
wire [1 : 0] gmem_ARBURST;
wire [1 : 0] gmem_ARLOCK;
wire [3 : 0] gmem_ARCACHE;
wire [2 : 0] gmem_ARPROT;
wire [3 : 0] gmem_ARQOS;
wire [3 : 0] gmem_ARREGION;
wire [0 : 0] gmem_ARUSER;
wire  gmem_RVALID;
wire  gmem_RREADY;
wire [31 : 0] gmem_RDATA;
wire  gmem_RLAST;
wire [0 : 0] gmem_RID;
wire [0 : 0] gmem_RUSER;
wire [1 : 0] gmem_RRESP;
wire  gmem_BVALID;
wire  gmem_BREADY;
wire [1 : 0] gmem_BRESP;
wire [0 : 0] gmem_BID;
wire [0 : 0] gmem_BUSER;
wire  gmem_offset_AWVALID;
wire  gmem_offset_AWREADY;
wire [31 : 0] gmem_offset_AWADDR;
wire [0 : 0] gmem_offset_AWID;
wire [7 : 0] gmem_offset_AWLEN;
wire [2 : 0] gmem_offset_AWSIZE;
wire [1 : 0] gmem_offset_AWBURST;
wire [1 : 0] gmem_offset_AWLOCK;
wire [3 : 0] gmem_offset_AWCACHE;
wire [2 : 0] gmem_offset_AWPROT;
wire [3 : 0] gmem_offset_AWQOS;
wire [3 : 0] gmem_offset_AWREGION;
wire [0 : 0] gmem_offset_AWUSER;
wire  gmem_offset_WVALID;
wire  gmem_offset_WREADY;
wire [31 : 0] gmem_offset_WDATA;
wire [3 : 0] gmem_offset_WSTRB;
wire  gmem_offset_WLAST;
wire [0 : 0] gmem_offset_WID;
wire [0 : 0] gmem_offset_WUSER;
wire  gmem_offset_ARVALID;
wire  gmem_offset_ARREADY;
wire [31 : 0] gmem_offset_ARADDR;
wire [0 : 0] gmem_offset_ARID;
wire [7 : 0] gmem_offset_ARLEN;
wire [2 : 0] gmem_offset_ARSIZE;
wire [1 : 0] gmem_offset_ARBURST;
wire [1 : 0] gmem_offset_ARLOCK;
wire [3 : 0] gmem_offset_ARCACHE;
wire [2 : 0] gmem_offset_ARPROT;
wire [3 : 0] gmem_offset_ARQOS;
wire [3 : 0] gmem_offset_ARREGION;
wire [0 : 0] gmem_offset_ARUSER;
wire  gmem_offset_RVALID;
wire  gmem_offset_RREADY;
wire [31 : 0] gmem_offset_RDATA;
wire  gmem_offset_RLAST;
wire [0 : 0] gmem_offset_RID;
wire [0 : 0] gmem_offset_RUSER;
wire [1 : 0] gmem_offset_RRESP;
wire  gmem_offset_BVALID;
wire  gmem_offset_BREADY;
wire [1 : 0] gmem_offset_BRESP;
wire [0 : 0] gmem_offset_BID;
wire [0 : 0] gmem_offset_BUSER;
wire [31 : 0] frame_ADDR_A;
wire  frame_EN_A;
wire [1 : 0] frame_WEN_A;
wire [15 : 0] frame_DIN_A;
wire [15 : 0] frame_DOUT_A;
wire  frame_CLK_A;
wire  frame_RST_A;
wire [31 : 0] frame_ADDR_B;
wire  frame_EN_B;
wire [1 : 0] frame_WEN_B;
wire [15 : 0] frame_DIN_B;
wire [15 : 0] frame_DOUT_B;
wire  frame_CLK_B;
wire  frame_RST_B;
wire  interrupt;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;
wire AXILiteS_write_data_finish;
wire CRTL_BUS_read_data_finish;
wire CRTL_BUS_write_data_finish;
wire AESL_slave_start;
wire AESL_slave_write_start_in;
wire AESL_slave_write_start_finish;
reg AESL_slave_ready;
wire AESL_slave_output_done;
reg ready_rise = 0;
reg start_rise = 0;
reg slave_start_status = 0;
reg slave_done_status = 0;

`AUTOTB_DUT `AUTOTB_DUT_INST(
	.s_axi_AXILiteS_AWADDR(AXILiteS_AWADDR),
	.s_axi_AXILiteS_AWVALID(AXILiteS_AWVALID),
	.s_axi_AXILiteS_AWREADY(AXILiteS_AWREADY),
	.s_axi_AXILiteS_WVALID(AXILiteS_WVALID),
	.s_axi_AXILiteS_WREADY(AXILiteS_WREADY),
	.s_axi_AXILiteS_WDATA(AXILiteS_WDATA),
	.s_axi_AXILiteS_WSTRB(AXILiteS_WSTRB),
	.s_axi_AXILiteS_ARADDR(AXILiteS_ARADDR),
	.s_axi_AXILiteS_ARVALID(AXILiteS_ARVALID),
	.s_axi_AXILiteS_ARREADY(AXILiteS_ARREADY),
	.s_axi_AXILiteS_RVALID(AXILiteS_RVALID),
	.s_axi_AXILiteS_RREADY(AXILiteS_RREADY),
	.s_axi_AXILiteS_RDATA(AXILiteS_RDATA),
	.s_axi_AXILiteS_RRESP(AXILiteS_RRESP),
	.s_axi_AXILiteS_BVALID(AXILiteS_BVALID),
	.s_axi_AXILiteS_BREADY(AXILiteS_BREADY),
	.s_axi_AXILiteS_BRESP(AXILiteS_BRESP),
	.s_axi_CRTL_BUS_AWADDR(CRTL_BUS_AWADDR),
	.s_axi_CRTL_BUS_AWVALID(CRTL_BUS_AWVALID),
	.s_axi_CRTL_BUS_AWREADY(CRTL_BUS_AWREADY),
	.s_axi_CRTL_BUS_WVALID(CRTL_BUS_WVALID),
	.s_axi_CRTL_BUS_WREADY(CRTL_BUS_WREADY),
	.s_axi_CRTL_BUS_WDATA(CRTL_BUS_WDATA),
	.s_axi_CRTL_BUS_WSTRB(CRTL_BUS_WSTRB),
	.s_axi_CRTL_BUS_ARADDR(CRTL_BUS_ARADDR),
	.s_axi_CRTL_BUS_ARVALID(CRTL_BUS_ARVALID),
	.s_axi_CRTL_BUS_ARREADY(CRTL_BUS_ARREADY),
	.s_axi_CRTL_BUS_RVALID(CRTL_BUS_RVALID),
	.s_axi_CRTL_BUS_RREADY(CRTL_BUS_RREADY),
	.s_axi_CRTL_BUS_RDATA(CRTL_BUS_RDATA),
	.s_axi_CRTL_BUS_RRESP(CRTL_BUS_RRESP),
	.s_axi_CRTL_BUS_BVALID(CRTL_BUS_BVALID),
	.s_axi_CRTL_BUS_BREADY(CRTL_BUS_BREADY),
	.s_axi_CRTL_BUS_BRESP(CRTL_BUS_BRESP),
	.ap_clk(ap_clk),
	.ap_rst_n(ap_rst_n),
	.m_axi_gmem_AWVALID(gmem_AWVALID),
	.m_axi_gmem_AWREADY(gmem_AWREADY),
	.m_axi_gmem_AWADDR(gmem_AWADDR),
	.m_axi_gmem_AWID(gmem_AWID),
	.m_axi_gmem_AWLEN(gmem_AWLEN),
	.m_axi_gmem_AWSIZE(gmem_AWSIZE),
	.m_axi_gmem_AWBURST(gmem_AWBURST),
	.m_axi_gmem_AWLOCK(gmem_AWLOCK),
	.m_axi_gmem_AWCACHE(gmem_AWCACHE),
	.m_axi_gmem_AWPROT(gmem_AWPROT),
	.m_axi_gmem_AWQOS(gmem_AWQOS),
	.m_axi_gmem_AWREGION(gmem_AWREGION),
	.m_axi_gmem_AWUSER(gmem_AWUSER),
	.m_axi_gmem_WVALID(gmem_WVALID),
	.m_axi_gmem_WREADY(gmem_WREADY),
	.m_axi_gmem_WDATA(gmem_WDATA),
	.m_axi_gmem_WSTRB(gmem_WSTRB),
	.m_axi_gmem_WLAST(gmem_WLAST),
	.m_axi_gmem_WID(gmem_WID),
	.m_axi_gmem_WUSER(gmem_WUSER),
	.m_axi_gmem_ARVALID(gmem_ARVALID),
	.m_axi_gmem_ARREADY(gmem_ARREADY),
	.m_axi_gmem_ARADDR(gmem_ARADDR),
	.m_axi_gmem_ARID(gmem_ARID),
	.m_axi_gmem_ARLEN(gmem_ARLEN),
	.m_axi_gmem_ARSIZE(gmem_ARSIZE),
	.m_axi_gmem_ARBURST(gmem_ARBURST),
	.m_axi_gmem_ARLOCK(gmem_ARLOCK),
	.m_axi_gmem_ARCACHE(gmem_ARCACHE),
	.m_axi_gmem_ARPROT(gmem_ARPROT),
	.m_axi_gmem_ARQOS(gmem_ARQOS),
	.m_axi_gmem_ARREGION(gmem_ARREGION),
	.m_axi_gmem_ARUSER(gmem_ARUSER),
	.m_axi_gmem_RVALID(gmem_RVALID),
	.m_axi_gmem_RREADY(gmem_RREADY),
	.m_axi_gmem_RDATA(gmem_RDATA),
	.m_axi_gmem_RLAST(gmem_RLAST),
	.m_axi_gmem_RID(gmem_RID),
	.m_axi_gmem_RUSER(gmem_RUSER),
	.m_axi_gmem_RRESP(gmem_RRESP),
	.m_axi_gmem_BVALID(gmem_BVALID),
	.m_axi_gmem_BREADY(gmem_BREADY),
	.m_axi_gmem_BRESP(gmem_BRESP),
	.m_axi_gmem_BID(gmem_BID),
	.m_axi_gmem_BUSER(gmem_BUSER),
	.m_axi_gmem_offset_AWVALID(gmem_offset_AWVALID),
	.m_axi_gmem_offset_AWREADY(gmem_offset_AWREADY),
	.m_axi_gmem_offset_AWADDR(gmem_offset_AWADDR),
	.m_axi_gmem_offset_AWID(gmem_offset_AWID),
	.m_axi_gmem_offset_AWLEN(gmem_offset_AWLEN),
	.m_axi_gmem_offset_AWSIZE(gmem_offset_AWSIZE),
	.m_axi_gmem_offset_AWBURST(gmem_offset_AWBURST),
	.m_axi_gmem_offset_AWLOCK(gmem_offset_AWLOCK),
	.m_axi_gmem_offset_AWCACHE(gmem_offset_AWCACHE),
	.m_axi_gmem_offset_AWPROT(gmem_offset_AWPROT),
	.m_axi_gmem_offset_AWQOS(gmem_offset_AWQOS),
	.m_axi_gmem_offset_AWREGION(gmem_offset_AWREGION),
	.m_axi_gmem_offset_AWUSER(gmem_offset_AWUSER),
	.m_axi_gmem_offset_WVALID(gmem_offset_WVALID),
	.m_axi_gmem_offset_WREADY(gmem_offset_WREADY),
	.m_axi_gmem_offset_WDATA(gmem_offset_WDATA),
	.m_axi_gmem_offset_WSTRB(gmem_offset_WSTRB),
	.m_axi_gmem_offset_WLAST(gmem_offset_WLAST),
	.m_axi_gmem_offset_WID(gmem_offset_WID),
	.m_axi_gmem_offset_WUSER(gmem_offset_WUSER),
	.m_axi_gmem_offset_ARVALID(gmem_offset_ARVALID),
	.m_axi_gmem_offset_ARREADY(gmem_offset_ARREADY),
	.m_axi_gmem_offset_ARADDR(gmem_offset_ARADDR),
	.m_axi_gmem_offset_ARID(gmem_offset_ARID),
	.m_axi_gmem_offset_ARLEN(gmem_offset_ARLEN),
	.m_axi_gmem_offset_ARSIZE(gmem_offset_ARSIZE),
	.m_axi_gmem_offset_ARBURST(gmem_offset_ARBURST),
	.m_axi_gmem_offset_ARLOCK(gmem_offset_ARLOCK),
	.m_axi_gmem_offset_ARCACHE(gmem_offset_ARCACHE),
	.m_axi_gmem_offset_ARPROT(gmem_offset_ARPROT),
	.m_axi_gmem_offset_ARQOS(gmem_offset_ARQOS),
	.m_axi_gmem_offset_ARREGION(gmem_offset_ARREGION),
	.m_axi_gmem_offset_ARUSER(gmem_offset_ARUSER),
	.m_axi_gmem_offset_RVALID(gmem_offset_RVALID),
	.m_axi_gmem_offset_RREADY(gmem_offset_RREADY),
	.m_axi_gmem_offset_RDATA(gmem_offset_RDATA),
	.m_axi_gmem_offset_RLAST(gmem_offset_RLAST),
	.m_axi_gmem_offset_RID(gmem_offset_RID),
	.m_axi_gmem_offset_RUSER(gmem_offset_RUSER),
	.m_axi_gmem_offset_RRESP(gmem_offset_RRESP),
	.m_axi_gmem_offset_BVALID(gmem_offset_BVALID),
	.m_axi_gmem_offset_BREADY(gmem_offset_BREADY),
	.m_axi_gmem_offset_BRESP(gmem_offset_BRESP),
	.m_axi_gmem_offset_BID(gmem_offset_BID),
	.m_axi_gmem_offset_BUSER(gmem_offset_BUSER),
	.frame_Addr_A(frame_ADDR_A),
	.frame_EN_A(frame_EN_A),
	.frame_WEN_A(frame_WEN_A),
	.frame_Din_A(frame_DIN_A),
	.frame_Dout_A(frame_DOUT_A),
	.frame_Clk_A(frame_CLK_A),
	.frame_Rst_A(frame_RST_A),
	.frame_Addr_B(frame_ADDR_B),
	.frame_EN_B(frame_EN_B),
	.frame_WEN_B(frame_WEN_B),
	.frame_Din_B(frame_DIN_B),
	.frame_Dout_B(frame_DOUT_B),
	.frame_Clk_B(frame_CLK_B),
	.frame_Rst_B(frame_RST_B),
	.interrupt(interrupt));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst_n = AESL_reset;
assign ap_rst_n_n = ~AESL_reset;
assign AESL_reset = rst;
assign AESL_start = start;
assign AESL_ce = ce;
assign AESL_continue = continue;
  assign AESL_slave_write_start_in = slave_start_status  & AXILiteS_write_data_finish & CRTL_BUS_write_data_finish;
  assign AESL_slave_start = AESL_slave_write_start_finish;
  assign AESL_done = slave_done_status  & CRTL_BUS_read_data_finish;

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        slave_start_status <= 1;
    end
    else begin
        if (AESL_start == 1 ) begin
            start_rise = 1;
        end
        if (start_rise == 1 && AESL_done == 1 ) begin
            slave_start_status <= 1;
        end
        if (AESL_slave_write_start_in == 1) begin 
            slave_start_status <= 0;
            start_rise = 0;
        end
    end
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        AESL_slave_ready <= 0;
        ready_rise = 0;
    end
    else begin
        if (AESL_ready == 1 ) begin
            ready_rise = 1;
        end
        if (ready_rise == 1 && AESL_done_delay == 1 ) begin
            AESL_slave_ready <= 1;
        end
        if (AESL_slave_ready == 1) begin 
            AESL_slave_ready <= 0;
            ready_rise = 0;
        end
    end
end

always @ (posedge AESL_clock)
begin
    if (AESL_done == 1) begin
        slave_done_status <= 0;
    end
    else if (AESL_slave_output_done == 1 ) begin
        slave_done_status <= 1;
    end
end




//------------------------bramframe Instantiation--------------

// The input and output of bramframe
wire  bramframe_Clk_A, bramframe_Clk_B;
wire  bramframe_EN_A, bramframe_EN_B;
wire  [2 - 1 : 0] bramframe_WEN_A, bramframe_WEN_B;
wire    [31 : 0]	bramframe_Addr_A, bramframe_Addr_B;
wire	[15 : 0]	bramframe_Din_A, bramframe_Din_B;
wire    [15 : 0]	bramframe_Dout_A, bramframe_Dout_B;
wire	bramframe_ready;
wire	bramframe_done;

`AESL_BRAM_frame `AESL_BRAM_INST_frame(
    .Clk_A    (bramframe_Clk_A),
    .Rst_A    (bramframe_Rst_A),
    .EN_A     (bramframe_EN_A),
    .WEN_A    (bramframe_WEN_A),
    .Addr_A   (bramframe_Addr_A),
    .Din_A    (bramframe_Din_A),
    .Dout_A   (bramframe_Dout_A),
    .Clk_B    (bramframe_Clk_B),
    .Rst_B    (bramframe_Rst_B),
    .EN_B     (bramframe_EN_B),
    .WEN_B    (bramframe_WEN_B),
    .Addr_B   (bramframe_Addr_B),
    .Din_B    (bramframe_Din_B),
    .Dout_B   (bramframe_Dout_B),
    .ready	(bramframe_ready),
    .done	    (bramframe_done)
);

// Assignment between dut and bramframe
assign bramframe_Clk_A = frame_CLK_A;
assign bramframe_Rst_A = frame_RST_A;
assign bramframe_Addr_A = frame_ADDR_A;
assign bramframe_EN_A = frame_EN_A;
assign frame_DOUT_A = bramframe_Dout_A;
assign bramframe_WEN_A = frame_WEN_A;
assign bramframe_Din_A = frame_DIN_A;
assign bramframe_Clk_B = frame_CLK_B;
assign bramframe_Rst_B = frame_RST_B;
assign bramframe_Addr_B = frame_ADDR_B;
assign bramframe_EN_B = frame_EN_B;
assign frame_DOUT_B = bramframe_Dout_B;
assign bramframe_WEN_B = frame_WEN_B;
assign bramframe_Din_B = frame_DIN_B;
assign bramframe_ready= ready;
assign bramframe_done = interface_done;



wire	AESL_axi_master_gmem_ready;
wire	AESL_axi_master_gmem_done;
wire [32 - 1:0] frame_in;
AESL_axi_master_gmem AESL_AXI_MASTER_gmem(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_gmem_AWVALID (gmem_AWVALID),
    .TRAN_gmem_AWREADY (gmem_AWREADY),
    .TRAN_gmem_AWADDR (gmem_AWADDR),
    .TRAN_gmem_AWID (gmem_AWID),
    .TRAN_gmem_AWLEN (gmem_AWLEN),
    .TRAN_gmem_AWSIZE (gmem_AWSIZE),
    .TRAN_gmem_AWBURST (gmem_AWBURST),
    .TRAN_gmem_AWLOCK (gmem_AWLOCK),
    .TRAN_gmem_AWCACHE (gmem_AWCACHE),
    .TRAN_gmem_AWPROT (gmem_AWPROT),
    .TRAN_gmem_AWQOS (gmem_AWQOS),
    .TRAN_gmem_AWREGION (gmem_AWREGION),
    .TRAN_gmem_AWUSER (gmem_AWUSER),
    .TRAN_gmem_WVALID (gmem_WVALID),
    .TRAN_gmem_WREADY (gmem_WREADY),
    .TRAN_gmem_WDATA (gmem_WDATA),
    .TRAN_gmem_WSTRB (gmem_WSTRB),
    .TRAN_gmem_WLAST (gmem_WLAST),
    .TRAN_gmem_WID (gmem_WID),
    .TRAN_gmem_WUSER (gmem_WUSER),
    .TRAN_gmem_ARVALID (gmem_ARVALID),
    .TRAN_gmem_ARREADY (gmem_ARREADY),
    .TRAN_gmem_ARADDR (gmem_ARADDR),
    .TRAN_gmem_ARID (gmem_ARID),
    .TRAN_gmem_ARLEN (gmem_ARLEN),
    .TRAN_gmem_ARSIZE (gmem_ARSIZE),
    .TRAN_gmem_ARBURST (gmem_ARBURST),
    .TRAN_gmem_ARLOCK (gmem_ARLOCK),
    .TRAN_gmem_ARCACHE (gmem_ARCACHE),
    .TRAN_gmem_ARPROT (gmem_ARPROT),
    .TRAN_gmem_ARQOS (gmem_ARQOS),
    .TRAN_gmem_ARREGION (gmem_ARREGION),
    .TRAN_gmem_ARUSER (gmem_ARUSER),
    .TRAN_gmem_RVALID (gmem_RVALID),
    .TRAN_gmem_RREADY (gmem_RREADY),
    .TRAN_gmem_RDATA (gmem_RDATA),
    .TRAN_gmem_RLAST (gmem_RLAST),
    .TRAN_gmem_RID (gmem_RID),
    .TRAN_gmem_RUSER (gmem_RUSER),
    .TRAN_gmem_RRESP (gmem_RRESP),
    .TRAN_gmem_BVALID (gmem_BVALID),
    .TRAN_gmem_BREADY (gmem_BREADY),
    .TRAN_gmem_BRESP (gmem_BRESP),
    .TRAN_gmem_BID (gmem_BID),
    .TRAN_gmem_BUSER (gmem_BUSER),
    .TRAN_gmem_frame_in (frame_in),
    .ready (AESL_axi_master_gmem_ready),
    .done  (AESL_axi_master_gmem_done)
);
assign	AESL_axi_master_gmem_ready	=   ready;
assign	AESL_axi_master_gmem_done	=   AESL_done_delay;
wire	AESL_axi_master_gmem_offset_ready;
wire	AESL_axi_master_gmem_offset_done;
wire [32 - 1:0] frame_out;
AESL_axi_master_gmem_offset AESL_AXI_MASTER_gmem_offset(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_gmem_offset_AWVALID (gmem_offset_AWVALID),
    .TRAN_gmem_offset_AWREADY (gmem_offset_AWREADY),
    .TRAN_gmem_offset_AWADDR (gmem_offset_AWADDR),
    .TRAN_gmem_offset_AWID (gmem_offset_AWID),
    .TRAN_gmem_offset_AWLEN (gmem_offset_AWLEN),
    .TRAN_gmem_offset_AWSIZE (gmem_offset_AWSIZE),
    .TRAN_gmem_offset_AWBURST (gmem_offset_AWBURST),
    .TRAN_gmem_offset_AWLOCK (gmem_offset_AWLOCK),
    .TRAN_gmem_offset_AWCACHE (gmem_offset_AWCACHE),
    .TRAN_gmem_offset_AWPROT (gmem_offset_AWPROT),
    .TRAN_gmem_offset_AWQOS (gmem_offset_AWQOS),
    .TRAN_gmem_offset_AWREGION (gmem_offset_AWREGION),
    .TRAN_gmem_offset_AWUSER (gmem_offset_AWUSER),
    .TRAN_gmem_offset_WVALID (gmem_offset_WVALID),
    .TRAN_gmem_offset_WREADY (gmem_offset_WREADY),
    .TRAN_gmem_offset_WDATA (gmem_offset_WDATA),
    .TRAN_gmem_offset_WSTRB (gmem_offset_WSTRB),
    .TRAN_gmem_offset_WLAST (gmem_offset_WLAST),
    .TRAN_gmem_offset_WID (gmem_offset_WID),
    .TRAN_gmem_offset_WUSER (gmem_offset_WUSER),
    .TRAN_gmem_offset_ARVALID (gmem_offset_ARVALID),
    .TRAN_gmem_offset_ARREADY (gmem_offset_ARREADY),
    .TRAN_gmem_offset_ARADDR (gmem_offset_ARADDR),
    .TRAN_gmem_offset_ARID (gmem_offset_ARID),
    .TRAN_gmem_offset_ARLEN (gmem_offset_ARLEN),
    .TRAN_gmem_offset_ARSIZE (gmem_offset_ARSIZE),
    .TRAN_gmem_offset_ARBURST (gmem_offset_ARBURST),
    .TRAN_gmem_offset_ARLOCK (gmem_offset_ARLOCK),
    .TRAN_gmem_offset_ARCACHE (gmem_offset_ARCACHE),
    .TRAN_gmem_offset_ARPROT (gmem_offset_ARPROT),
    .TRAN_gmem_offset_ARQOS (gmem_offset_ARQOS),
    .TRAN_gmem_offset_ARREGION (gmem_offset_ARREGION),
    .TRAN_gmem_offset_ARUSER (gmem_offset_ARUSER),
    .TRAN_gmem_offset_RVALID (gmem_offset_RVALID),
    .TRAN_gmem_offset_RREADY (gmem_offset_RREADY),
    .TRAN_gmem_offset_RDATA (gmem_offset_RDATA),
    .TRAN_gmem_offset_RLAST (gmem_offset_RLAST),
    .TRAN_gmem_offset_RID (gmem_offset_RID),
    .TRAN_gmem_offset_RUSER (gmem_offset_RUSER),
    .TRAN_gmem_offset_RRESP (gmem_offset_RRESP),
    .TRAN_gmem_offset_BVALID (gmem_offset_BVALID),
    .TRAN_gmem_offset_BREADY (gmem_offset_BREADY),
    .TRAN_gmem_offset_BRESP (gmem_offset_BRESP),
    .TRAN_gmem_offset_BID (gmem_offset_BID),
    .TRAN_gmem_offset_BUSER (gmem_offset_BUSER),
    .TRAN_gmem_offset_frame_out (frame_out),
    .ready (AESL_axi_master_gmem_offset_ready),
    .done  (AESL_axi_master_gmem_offset_done)
);
assign	AESL_axi_master_gmem_offset_ready	=   ready;
assign	AESL_axi_master_gmem_offset_done	=   AESL_done_delay;

AESL_axi_slave_AXILiteS AESL_AXI_SLAVE_AXILiteS(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_s_axi_AXILiteS_AWADDR (AXILiteS_AWADDR),
    .TRAN_s_axi_AXILiteS_AWVALID (AXILiteS_AWVALID),
    .TRAN_s_axi_AXILiteS_AWREADY (AXILiteS_AWREADY),
    .TRAN_s_axi_AXILiteS_WVALID (AXILiteS_WVALID),
    .TRAN_s_axi_AXILiteS_WREADY (AXILiteS_WREADY),
    .TRAN_s_axi_AXILiteS_WDATA (AXILiteS_WDATA),
    .TRAN_s_axi_AXILiteS_WSTRB (AXILiteS_WSTRB),
    .TRAN_s_axi_AXILiteS_ARADDR (AXILiteS_ARADDR),
    .TRAN_s_axi_AXILiteS_ARVALID (AXILiteS_ARVALID),
    .TRAN_s_axi_AXILiteS_ARREADY (AXILiteS_ARREADY),
    .TRAN_s_axi_AXILiteS_RVALID (AXILiteS_RVALID),
    .TRAN_s_axi_AXILiteS_RREADY (AXILiteS_RREADY),
    .TRAN_s_axi_AXILiteS_RDATA (AXILiteS_RDATA),
    .TRAN_s_axi_AXILiteS_RRESP (AXILiteS_RRESP),
    .TRAN_s_axi_AXILiteS_BVALID (AXILiteS_BVALID),
    .TRAN_s_axi_AXILiteS_BREADY (AXILiteS_BREADY),
    .TRAN_s_axi_AXILiteS_BRESP (AXILiteS_BRESP),
    .TRAN_frame_in (frame_in),
    .TRAN_frame_out (frame_out),
    .TRAN_AXILiteS_write_data_finish(AXILiteS_write_data_finish),
    .TRAN_AXILiteS_ready_in (AESL_slave_ready),
    .TRAN_AXILiteS_done_in (AESL_slave_output_done),
    .TRAN_AXILiteS_idle_in (AESL_idle),
    .TRAN_AXILiteS_transaction_done_in (AESL_done_delay),
    .TRAN_AXILiteS_interrupt  (interrupt),
    .TRAN_AXILiteS_start_in  (AESL_slave_start)
);
AESL_axi_slave_CRTL_BUS AESL_AXI_SLAVE_CRTL_BUS(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_s_axi_CRTL_BUS_AWADDR (CRTL_BUS_AWADDR),
    .TRAN_s_axi_CRTL_BUS_AWVALID (CRTL_BUS_AWVALID),
    .TRAN_s_axi_CRTL_BUS_AWREADY (CRTL_BUS_AWREADY),
    .TRAN_s_axi_CRTL_BUS_WVALID (CRTL_BUS_WVALID),
    .TRAN_s_axi_CRTL_BUS_WREADY (CRTL_BUS_WREADY),
    .TRAN_s_axi_CRTL_BUS_WDATA (CRTL_BUS_WDATA),
    .TRAN_s_axi_CRTL_BUS_WSTRB (CRTL_BUS_WSTRB),
    .TRAN_s_axi_CRTL_BUS_ARADDR (CRTL_BUS_ARADDR),
    .TRAN_s_axi_CRTL_BUS_ARVALID (CRTL_BUS_ARVALID),
    .TRAN_s_axi_CRTL_BUS_ARREADY (CRTL_BUS_ARREADY),
    .TRAN_s_axi_CRTL_BUS_RVALID (CRTL_BUS_RVALID),
    .TRAN_s_axi_CRTL_BUS_RREADY (CRTL_BUS_RREADY),
    .TRAN_s_axi_CRTL_BUS_RDATA (CRTL_BUS_RDATA),
    .TRAN_s_axi_CRTL_BUS_RRESP (CRTL_BUS_RRESP),
    .TRAN_s_axi_CRTL_BUS_BVALID (CRTL_BUS_BVALID),
    .TRAN_s_axi_CRTL_BUS_BREADY (CRTL_BUS_BREADY),
    .TRAN_s_axi_CRTL_BUS_BRESP (CRTL_BUS_BRESP),
    .TRAN_CRTL_BUS_read_data_finish(CRTL_BUS_read_data_finish),
    .TRAN_CRTL_BUS_write_data_finish(CRTL_BUS_write_data_finish),
    .TRAN_CRTL_BUS_ready_out (AESL_ready),
    .TRAN_CRTL_BUS_ready_in (AESL_slave_ready),
    .TRAN_CRTL_BUS_done_out (AESL_slave_output_done),
    .TRAN_CRTL_BUS_idle_out (AESL_idle),
    .TRAN_CRTL_BUS_write_start_in     (AESL_slave_write_start_in),
    .TRAN_CRTL_BUS_write_start_finish (AESL_slave_write_start_finish),
    .TRAN_CRTL_BUS_transaction_done_in (AESL_done_delay),
    .TRAN_CRTL_BUS_interrupt  (interrupt),
    .TRAN_CRTL_BUS_start_in  (AESL_slave_start)
);


reg dump_tvout_finish_ap_return;

initial begin : dump_tvout_runtime_sign_ap_return
	integer fp;
	dump_tvout_finish_ap_return = 0;
	fp = $fopen(`AUTOTB_TVOUT_ap_return_out_wrapc, "w");
	if (fp == 0) begin
		$display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_ap_return_out_wrapc);
		$display("ERROR: Simulation using HLS TB failed.");
		$finish;
	end
	$fdisplay(fp,"[[[runtime]]]");
	$fclose(fp);
	wait (done_cnt == `AUTOTB_TRANSACTION_NUM);
	// last transaction is saved at negedge right after last done
	@ (posedge AESL_clock);
	@ (posedge AESL_clock);
	@ (posedge AESL_clock);
	fp = $fopen(`AUTOTB_TVOUT_ap_return_out_wrapc, "a");
	if (fp == 0) begin
		$display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_ap_return_out_wrapc);
		$display("ERROR: Simulation using HLS TB failed.");
		$finish;
	end
	$fdisplay(fp,"[[[/runtime]]]");
	$fclose(fp);
	dump_tvout_finish_ap_return = 1;
end

initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 1);
    while(AESL_ready_cnt != `AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

	event next_trigger_ready_cnt;
	
	initial begin : gen_ready_cnt
		ready_cnt = 0;
		wait (AESL_reset === 1);
		forever begin
			@ (posedge AESL_clock);
			if (ready == 1) begin
				if (ready_cnt < `AUTOTB_TRANSACTION_NUM) begin
					ready_cnt = ready_cnt + 1;
				end
			end
			-> next_trigger_ready_cnt;
		end
	end
	
	wire all_finish = (done_cnt == `AUTOTB_TRANSACTION_NUM);
	
	// done_cnt
	always @ (posedge AESL_clock) begin
		if (~AESL_reset) begin
			done_cnt <= 0;
		end else begin
			if (AESL_done == 1) begin
				if (done_cnt < `AUTOTB_TRANSACTION_NUM) begin
					done_cnt <= done_cnt + 1;
				end
			end
		end
	end
	
	initial begin : finish_simulation
		wait (all_finish == 1);
		// last transaction is saved at negedge right after last done
		@ (posedge AESL_clock);
		@ (posedge AESL_clock);
		@ (posedge AESL_clock);
		@ (posedge AESL_clock);
		$finish;
	end
	
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_gmem;
reg [31:0] size_gmem;
reg end_frame_in;
reg [31:0] size_frame_in;
reg end_frame_out;
reg [31:0] size_frame_out;
reg end_frame;
reg [31:0] size_frame;
reg end_init;
reg [31:0] size_init;
reg end_gmem_offset;
reg [31:0] size_gmem_offset;
reg end_ap_return;
reg [31:0] size_ap_return;

initial begin : initial_process
    integer rand;
    rst = 0;
    # 100;
	  repeat(3) @(posedge AESL_clock);
    rst = 1;
end

initial begin : start_process
	integer rand;
	start = 0;
	ce = 1;
	wait (AESL_reset === 1);
	@ (posedge AESL_clock);
	start = 1;
	while (ready_cnt < `AUTOTB_TRANSACTION_NUM + 1) begin
		@ (posedge AESL_clock);
	end
	start = 0;
end

always @(AESL_done)
begin
    continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      AESL_ready_delay = 0;
  else
      AESL_ready_delay = AESL_ready;
end
initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == `AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready = (ready_initial | AESL_ready_delay);
assign ready_wire = ready_initial | AESL_ready_delay;
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < `AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < `AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == `AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end

reg dump_tvout_finish_gmem_offset;

initial begin : dump_tvout_runtime_sign_gmem_offset
	integer fp;
	dump_tvout_finish_gmem_offset = 0;
	fp = $fopen(`AUTOTB_TVOUT_gmem_offset_out_wrapc, "w");
	if (fp == 0) begin
		$display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_gmem_offset_out_wrapc);
		$display("ERROR: Simulation using HLS TB failed.");
		$finish;
	end
	$fdisplay(fp,"[[[runtime]]]");
	$fclose(fp);
	wait (done_cnt == `AUTOTB_TRANSACTION_NUM);
	// last transaction is saved at negedge right after last done
	@ (posedge AESL_clock);
	@ (posedge AESL_clock);
	@ (posedge AESL_clock);
	fp = $fopen(`AUTOTB_TVOUT_gmem_offset_out_wrapc, "a");
	if (fp == 0) begin
		$display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_gmem_offset_out_wrapc);
		$display("ERROR: Simulation using HLS TB failed.");
		$finish;
	end
	$fdisplay(fp,"[[[/runtime]]]");
	$fclose(fp);
	dump_tvout_finish_gmem_offset = 1;
end


reg dump_tvout_finish_frame;

initial begin : dump_tvout_runtime_sign_frame
	integer fp;
	dump_tvout_finish_frame = 0;
	fp = $fopen(`AUTOTB_TVOUT_frame_out_wrapc, "w");
	if (fp == 0) begin
		$display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_frame_out_wrapc);
		$display("ERROR: Simulation using HLS TB failed.");
		$finish;
	end
	$fdisplay(fp,"[[[runtime]]]");
	$fclose(fp);
	wait (done_cnt == `AUTOTB_TRANSACTION_NUM);
	// last transaction is saved at negedge right after last done
	@ (posedge AESL_clock);
	@ (posedge AESL_clock);
	@ (posedge AESL_clock);
	fp = $fopen(`AUTOTB_TVOUT_frame_out_wrapc, "a");
	if (fp == 0) begin
		$display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_frame_out_wrapc);
		$display("ERROR: Simulation using HLS TB failed.");
		$finish;
	end
	$fdisplay(fp,"[[[/runtime]]]");
	$fclose(fp);
	dump_tvout_finish_frame = 1;
end

always @ (negedge AESL_clock) begin
    if(AESL_reset === 0)
    begin
        AESL_clk_counter <= 0;
    end 
    else begin
        AESL_clk_counter = AESL_clk_counter + 1;
    end
end

always @ (posedge AESL_clock or negedge AESL_reset) begin
	if (~AESL_reset) begin
		AESL_mLatCnterOut_addr = 0;
		AESL_mLatCnterOut[AESL_mLatCnterOut_addr] = AESL_clk_counter + 1;
	end else if (AESL_done && AESL_mLatCnterOut_addr < `AUTOTB_TRANSACTION_NUM + 1) begin
		AESL_mLatCnterOut[AESL_mLatCnterOut_addr] = AESL_clk_counter;
		AESL_mLatCnterOut_addr = AESL_mLatCnterOut_addr + 1;
	end
end
always @ (posedge AESL_clock or negedge AESL_reset) begin
	if (~AESL_reset) begin
		AESL_mLatCnterIn_addr = 0;
	end else if (AESL_slave_write_start_finish && AESL_mLatCnterIn_addr < `AUTOTB_TRANSACTION_NUM + 1) begin
		AESL_mLatCnterIn[AESL_mLatCnterIn_addr] = AESL_clk_counter;
		AESL_mLatCnterIn_addr = AESL_mLatCnterIn_addr + 1;
	end
end

initial begin : performance_check
	integer transaction_counter;
	integer i;
	integer fp;

	integer latthistime;
	integer lattotal;
	integer latmax;
	integer latmin;


	integer thrthistime;
	integer thrtotal;
	integer thrmax;
	integer thrmin;

	integer lataver;
	integer thraver;
	reg [31 : 0] lat_array [0 : `AUTOTB_TRANSACTION_NUM];
	reg [31 : 0] thr_array [0 : `AUTOTB_TRANSACTION_NUM];

	i = 0;
	lattotal = 0;
	latmax = 0;
	latmin = 32'h 7fffffff;
	lataver = 0;

	thrtotal = 0;
	thrmax = 0;
	thrmin = 32'h 7fffffff;
	thraver = 0;

	@(negedge AESL_clock);

	@(posedge AESL_reset);
	while (done_cnt < `AUTOTB_TRANSACTION_NUM) begin
		@(posedge AESL_clock);
	end

	#0.001

	for (i = 0; i < `AUTOTB_TRANSACTION_NUM; i = i + 1) begin
		latthistime = AESL_mLatCnterOut[i] - AESL_mLatCnterIn[i];
		lat_array[i] = latthistime;
		if (latthistime > latmax) latmax = latthistime;
		if (latthistime < latmin) latmin = latthistime;
		lattotal = lattotal + latthistime;
		if (`AUTOTB_TRANSACTION_NUM == 1) begin
			thrthistime = latthistime;
		end else begin
			thrthistime = AESL_mLatCnterIn[i + 1] - AESL_mLatCnterIn[i];
		end
		thr_array[i] = thrthistime;
		if (thrthistime > thrmax) thrmax = thrthistime;
		if (thrthistime < thrmin) thrmin = thrthistime;
		thrtotal = thrtotal + thrthistime;
	end

	lataver = lattotal / `AUTOTB_TRANSACTION_NUM;
	thraver = thrtotal / `AUTOTB_TRANSACTION_NUM;

	fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

	if (`AUTOTB_TRANSACTION_NUM == 1) begin
		thrmax  = 0;
		thrmin  = 0;
		thraver = 0;
		$fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latmax);
		$fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latmin);
		$fdisplay(fp, "$AVER_LATENCY = \"%0d\"", lataver);
		$fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", thrmax);
		$fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", thrmin);
		$fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", thraver);
	end else begin
		// $::AESL_AUTOTB::g_axi_slave_port_list != ""
		$fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latmax);
		$fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latmin);
		$fdisplay(fp, "$AVER_LATENCY = \"%0d\"", lataver);
		$fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", latmax);
		$fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", latmin);
		$fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", lataver);
	end

	$fclose(fp);

	fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");
	$fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
	if (`AUTOTB_TRANSACTION_NUM == 1) begin
		i = 0;
		thr_array[i] = 0;
		$fdisplay(fp, "transaction%8d:%16d%16d", i, lat_array[i], thr_array[i]);
	end else begin
		for (i = 0; i < AESL_mLatCnterOut_addr; i = i + 1) begin
			$fdisplay(fp, "transaction%8d:%16d%16d", i, lat_array[i], thr_array[i]);
		end
	end
	$fclose(fp);
end

endmodule
