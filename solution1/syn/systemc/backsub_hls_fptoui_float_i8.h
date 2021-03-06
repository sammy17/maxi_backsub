// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.4
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#ifndef _backsub_hls_fptoui_float_i8_HH_
#define _backsub_hls_fptoui_float_i8_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct backsub_hls_fptoui_float_i8 : public sc_module {
    // Port declarations 5
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_lv<32> > x;
    sc_out< sc_lv<8> > ap_return;
    sc_in< sc_logic > ap_ce;


    // Module declarations
    backsub_hls_fptoui_float_i8(sc_module_name name);
    SC_HAS_PROCESS(backsub_hls_fptoui_float_i8);

    ~backsub_hls_fptoui_float_i8();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<1> > isNeg_fu_72_p3;
    sc_signal< sc_lv<1> > isNeg_reg_149;
    sc_signal< sc_lv<1> > tmp_109_reg_154;
    sc_signal< sc_lv<8> > tmp_17_reg_159;
    sc_signal< sc_lv<32> > p_Val2_s_fu_32_p1;
    sc_signal< sc_lv<23> > loc_V_1_fu_46_p1;
    sc_signal< sc_lv<24> > p_Result_s_fu_50_p3;
    sc_signal< sc_lv<8> > loc_V_fu_36_p4;
    sc_signal< sc_lv<9> > tmp_i_i_cast1_fu_62_p1;
    sc_signal< sc_lv<9> > sh_assign_fu_66_p2;
    sc_signal< sc_lv<8> > tmp_i_fu_80_p2;
    sc_signal< sc_lv<9> > tmp_i_cast_fu_86_p1;
    sc_signal< sc_lv<9> > sh_assign_1_fu_90_p3;
    sc_signal< sc_lv<32> > sh_assign_1_cast_fu_98_p1;
    sc_signal< sc_lv<24> > sh_assign_1_cast_cast_fu_102_p1;
    sc_signal< sc_lv<54> > tmp_8_i_fu_58_p1;
    sc_signal< sc_lv<54> > tmp_1_i_fu_106_p1;
    sc_signal< sc_lv<24> > tmp_2_i_fu_110_p2;
    sc_signal< sc_lv<54> > tmp_4_i_fu_116_p2;
    sc_signal< sc_lv<8> > tmp_fu_140_p1;
    static const sc_logic ap_const_logic_1;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_1E;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<9> ap_const_lv9_181;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<8> ap_const_lv8_7F;
    static const sc_logic ap_const_logic_0;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_return();
    void thread_isNeg_fu_72_p3();
    void thread_loc_V_1_fu_46_p1();
    void thread_loc_V_fu_36_p4();
    void thread_p_Result_s_fu_50_p3();
    void thread_p_Val2_s_fu_32_p1();
    void thread_sh_assign_1_cast_cast_fu_102_p1();
    void thread_sh_assign_1_cast_fu_98_p1();
    void thread_sh_assign_1_fu_90_p3();
    void thread_sh_assign_fu_66_p2();
    void thread_tmp_1_i_fu_106_p1();
    void thread_tmp_2_i_fu_110_p2();
    void thread_tmp_4_i_fu_116_p2();
    void thread_tmp_8_i_fu_58_p1();
    void thread_tmp_fu_140_p1();
    void thread_tmp_i_cast_fu_86_p1();
    void thread_tmp_i_fu_80_p2();
    void thread_tmp_i_i_cast1_fu_62_p1();
};

}

using namespace ap_rtl;

#endif
