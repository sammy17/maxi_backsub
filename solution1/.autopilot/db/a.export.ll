; ModuleID = 'F:/maxi/backsub_maxi/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@mode1 = internal constant [10 x i8] c"s_axilite\00"
@mode = internal constant [10 x i8] c"s_axilite\00"
@memcpy_OC_yuv_frame_OC_frame_i = internal unnamed_addr constant [26 x i8] c"memcpy.yuv_frame.frame_in\00"
@memcpy_OC_frame_out_OC_str = internal unnamed_addr constant [18 x i8] c"memcpy.frame_out.\00"
@llvm_global_ctors_1 = appending global [2 x void ()*] [void ()* @_GLOBAL__I_a, void ()* @_GLOBAL__I_a1941]
@llvm_global_ctors_0 = appending global [2 x i32] [i32 65535, i32 65535]
@burstwrite_OC_region_str = internal unnamed_addr constant [18 x i8] c"burstwrite.region\00"
@burstread_OC_region_str = internal unnamed_addr constant [17 x i8] c"burstread.region\00"
@bundle2 = internal constant [1 x i8] zeroinitializer
@bundle = internal constant [1 x i8] zeroinitializer
@backsub_str = internal unnamed_addr constant [8 x i8] c"backsub\00"
@p_str2 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str1813 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1
@p_str1812 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str1811 = private unnamed_addr constant [6 x i8] c"loop1\00", align 1
@p_str1810 = private unnamed_addr constant [9 x i8] c"CRTL_BUS\00", align 1
@p_str1809 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str1808 = private unnamed_addr constant [5 x i8] c"bram\00", align 1
@p_str1807 = private unnamed_addr constant [6 x i8] c"slave\00", align 1
@p_str1806 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1805 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1
@p_str1 = internal unnamed_addr constant [1 x i8] zeroinitializer

declare i54 @llvm.part.select.i54(i54, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i17 @llvm.part.select.i17(i17, i32, i32) nounwind readnone

declare i16 @llvm.part.select.i16(i16, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define i32 @backsub(i32* %gmem, i8* %gmem_offset, i32 %frame_in, i32 %frame_out, [76800 x i16]* %frame, i1 %init) {
  %init_read = call i1 @_ssdm_op_Read.s_axilite.i1(i1 %init)
  %frame_out_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %frame_out)
  %frame_in_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %frame_in)
  %tmp_13 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %frame_in_read, i32 2, i32 31)
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %gmem_offset), !map !11
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %gmem), !map !17
  call void (...)* @_ssdm_op_SpecBitsMap([76800 x i16]* %frame) nounwind, !map !23
  call void (...)* @_ssdm_op_SpecBitsMap(i1 %init) nounwind, !map !27
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !33
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @backsub_str) nounwind
  %yuv_frame = alloca [38400 x i32], align 16
  %grey_frame = alloca [76800 x i8], align 16
  call void (...)* @_ssdm_op_SpecInterface(i8* %gmem_offset, [6 x i8]* @p_str1805, i32 0, i32 0, i32 0, i32 76800, [1 x i8]* @p_str1806, [6 x i8]* @p_str1807, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %frame_out, [10 x i8]* @mode1, i32 0, i32 0, i32 0, i32 76800, [1 x i8]* @bundle2, [6 x i8]* @p_str1807, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %gmem, [6 x i8]* @p_str1805, i32 0, i32 0, i32 0, i32 38400, [1 x i8]* @p_str1806, [6 x i8]* @p_str1807, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %frame_in, [10 x i8]* @mode, i32 0, i32 0, i32 0, i32 38400, [1 x i8]* @bundle, [6 x i8]* @p_str1807, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806) nounwind
  call void (...)* @_ssdm_op_SpecInterface([76800 x i16]* %frame, [5 x i8]* @p_str1808, i32 0, i32 0, i32 0, i32 76800, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1 %init, [10 x i8]* @p_str1809, i32 0, i32 0, i32 0, i32 0, [9 x i8]* @p_str1810, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str1809, i32 0, i32 0, i32 0, i32 0, [9 x i8]* @p_str1810, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806) nounwind
  %tmp_16 = zext i30 %tmp_13 to i64
  %gmem_addr = getelementptr i32* %gmem, i64 %tmp_16
  %p_rd_req = call i1 @_ssdm_op_ReadReq.m_axi.i32P(i32* %gmem_addr, i32 38400)
  br label %burst.rd.header

burst.rd.header:                                  ; preds = %burst.rd.body, %0
  %indvar = phi i16 [ 0, %0 ], [ %indvar_next, %burst.rd.body ]
  %exitcond = icmp eq i16 %indvar, -27136
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 38400, i64 38400, i64 38400) nounwind
  %indvar_next = add i16 %indvar, 1
  br i1 %exitcond, label %burst.rd.end, label %burst.rd.body

burst.rd.body:                                    ; preds = %burst.rd.header
  %burstread_rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region_str) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1)
  %empty_11 = call i32 (...)* @_ssdm_op_SpecLoopName([26 x i8]* @memcpy_OC_yuv_frame_OC_frame_i) nounwind
  %tmp_s = zext i16 %indvar to i64
  %gmem_addr_read = call i32 @_ssdm_op_Read.m_axi.i32P(i32* %gmem_addr)
  %yuv_frame_addr = getelementptr [38400 x i32]* %yuv_frame, i64 0, i64 %tmp_s
  store i32 %gmem_addr_read, i32* %yuv_frame_addr, align 4
  %burstread_rend = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region_str, i32 %burstread_rbegin) nounwind
  br label %burst.rd.header

burst.rd.end:                                     ; preds = %burst.rd.header
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([6 x i8]* @p_str1811) nounwind
  br i1 %init_read, label %.preheader1.0, label %.preheader.0

.preheader.0:                                     ; preds = %burst.rd.end, %.preheader.1
  %i1 = phi i17 [ %i_2_15, %.preheader.1 ], [ 0, %burst.rd.end ]
  %tmp_5 = icmp ult i17 %i1, -54272
  br i1 %tmp_5, label %.preheader.1, label %.loopexit

.preheader.1:                                     ; preds = %.preheader.0
  %empty_12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2400, i64 2400, i64 2400) nounwind
  %tmp_10 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1813) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  %p_lshr_f1_cast = call i16 @_ssdm_op_PartSelect.i16.i17.i32.i32(i17 %i1, i32 1, i32 16)
  %tmp_11 = zext i16 %p_lshr_f1_cast to i64
  %yuv_frame_addr_17 = getelementptr inbounds [38400 x i32]* %yuv_frame, i64 0, i64 %tmp_11
  %yuv_frame_load_16 = load i32* %yuv_frame_addr_17, align 16
  %tmp_59 = trunc i32 %yuv_frame_load_16 to i8
  %yuv_struct_y2_write_assign_15 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %yuv_frame_load_16, i32 16, i32 23)
  %tmp_12 = zext i17 %i1 to i64
  %frame_addr_32 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_12
  %frame_load = load i16* %frame_addr_32, align 2
  %tmp_60 = trunc i16 %frame_load to i8
  %pix_1 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %frame_load, i32 8, i32 15)
  %tmp_14 = or i17 %i1, 1
  %tmp_15 = zext i17 %tmp_14 to i64
  %frame_addr_33 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_15
  %frame_load_1 = load i16* %frame_addr_33, align 2
  %tmp_61 = trunc i16 %frame_load_1 to i8
  %pix_3 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %frame_load_1, i32 8, i32 15)
  %tmp_17 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %tmp_60, i8 %tmp_59)
  store i16 %tmp_17, i16* %frame_addr_32, align 2
  %tmp_18 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %tmp_61, i8 %yuv_struct_y2_write_assign_15)
  store i16 %tmp_18, i16* %frame_addr_33, align 2
  %tmp_19 = zext i8 %tmp_59 to i32
  %tmp_36_cast = zext i8 %tmp_59 to i9
  %tmp_20 = sitofp i32 %tmp_19 to float
  %tmp_21 = fmul float %tmp_20, 0x3FB99999A0000000
  %tmp_22 = zext i8 %tmp_60 to i32
  %tmp_23 = sitofp i32 %tmp_22 to float
  %tmp_24 = fmul float %tmp_23, 0x3FC99999A0000000
  %tmp_25 = fadd float %tmp_21, %tmp_24
  %tmp_26 = zext i8 %pix_1 to i32
  %tmp_27 = sitofp i32 %tmp_26 to float
  %tmp_28 = fmul float %tmp_27, 0x3FE6666660000000
  %tmp_29 = fadd float %tmp_25, %tmp_28
  %temp_1 = call fastcc i8 @backsub___hls_fptoui_float_i8(float %tmp_29)
  %tmp_30 = zext i8 %yuv_struct_y2_write_assign_15 to i32
  %tmp_47_cast = zext i8 %yuv_struct_y2_write_assign_15 to i9
  %tmp_31 = sitofp i32 %tmp_30 to float
  %tmp_32 = fmul float %tmp_31, 0x3FB99999A0000000
  %tmp_33 = zext i8 %tmp_61 to i32
  %tmp_34 = sitofp i32 %tmp_33 to float
  %tmp_35 = fmul float %tmp_34, 0x3FC99999A0000000
  %tmp_36 = fadd float %tmp_32, %tmp_35
  %tmp_37 = zext i8 %pix_3 to i32
  %tmp_38 = sitofp i32 %tmp_37 to float
  %tmp_39 = fmul float %tmp_38, 0x3FE6666660000000
  %tmp_40 = fadd float %tmp_36, %tmp_39
  %temp_2 = call fastcc i8 @backsub___hls_fptoui_float_i8(float %tmp_40)
  %tmp_58_cast = zext i8 %temp_1 to i9
  %x_assign = sub i9 %tmp_36_cast, %tmp_58_cast
  %neg_i1 = sub i9 0, %x_assign
  %abscond_i1 = icmp sgt i9 %x_assign, 0
  %abs_i1 = select i1 %abscond_i1, i9 %x_assign, i9 %neg_i1
  %grey_frame_addr_33 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_12
  %not_tmp_s = icmp sgt i9 %abs_i1, 14
  %p_36_cast = select i1 %not_tmp_s, i8 -1, i8 0
  store i8 %p_36_cast, i8* %grey_frame_addr_33, align 16
  %tmp_61_cast = zext i8 %temp_2 to i9
  %x_assign_1 = sub i9 %tmp_47_cast, %tmp_61_cast
  %neg_i2 = sub i9 0, %x_assign_1
  %abscond_i2 = icmp sgt i9 %x_assign_1, 0
  %abs_i2 = select i1 %abscond_i2, i9 %x_assign_1, i9 %neg_i2
  %grey_frame_addr_34 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_15
  %not_tmp_1 = icmp sgt i9 %abs_i2, 14
  %p_cast = select i1 %not_tmp_1, i8 -1, i8 0
  store i8 %p_cast, i8* %grey_frame_addr_34, align 1
  %empty_13 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1813, i32 %tmp_10) nounwind
  %i_2_s = or i17 %i1, 2
  %p_lshr_f32_1_cast = call i16 @_ssdm_op_PartSelect.i16.i17.i32.i32(i17 %i_2_s, i32 1, i32 16)
  %tmp_26_1 = zext i16 %p_lshr_f32_1_cast to i64
  %yuv_frame_addr_18 = getelementptr inbounds [38400 x i32]* %yuv_frame, i64 0, i64 %tmp_26_1
  %yuv_frame_load_17 = load i32* %yuv_frame_addr_18, align 4
  %tmp_62 = trunc i32 %yuv_frame_load_17 to i8
  %yuv_struct_y2_write_assign_16 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %yuv_frame_load_17, i32 16, i32 23)
  %tmp_27_1 = zext i17 %i_2_s to i64
  %frame_addr_34 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_27_1
  %frame_load_16 = load i16* %frame_addr_34, align 2
  %tmp_63 = trunc i16 %frame_load_16 to i8
  %pix_13_1 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %frame_load_16, i32 8, i32 15)
  %tmp_29_1 = or i17 %i1, 3
  %tmp_30_1 = zext i17 %tmp_29_1 to i64
  %frame_addr_35 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_30_1
  %frame_load_17 = load i16* %frame_addr_35, align 2
  %tmp_64 = trunc i16 %frame_load_17 to i8
  %pix_23_1 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %frame_load_17, i32 8, i32 15)
  %tmp_35_1 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %tmp_63, i8 %tmp_62)
  store i16 %tmp_35_1, i16* %frame_addr_34, align 2
  %tmp_39_1 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %tmp_64, i8 %yuv_struct_y2_write_assign_16)
  store i16 %tmp_39_1, i16* %frame_addr_35, align 2
  %tmp_40_1 = zext i8 %tmp_62 to i32
  %tmp_40_1_cast = zext i8 %tmp_62 to i9
  %tmp_41_1 = sitofp i32 %tmp_40_1 to float
  %tmp_42_1 = fmul float %tmp_41_1, 0x3FB99999A0000000
  %tmp_43_1 = zext i8 %tmp_63 to i32
  %tmp_44_1 = sitofp i32 %tmp_43_1 to float
  %tmp_45_1 = fmul float %tmp_44_1, 0x3FC99999A0000000
  %tmp_46_1 = fadd float %tmp_42_1, %tmp_45_1
  %tmp_47_1 = zext i8 %pix_13_1 to i32
  %tmp_48_1 = sitofp i32 %tmp_47_1 to float
  %tmp_49_1 = fmul float %tmp_48_1, 0x3FE6666660000000
  %tmp_50_1 = fadd float %tmp_46_1, %tmp_49_1
  %temp_1_1 = call fastcc i8 @backsub___hls_fptoui_float_i8(float %tmp_50_1)
  %tmp_51_1 = zext i8 %yuv_struct_y2_write_assign_16 to i32
  %tmp_51_1_cast = zext i8 %yuv_struct_y2_write_assign_16 to i9
  %tmp_52_1 = sitofp i32 %tmp_51_1 to float
  %tmp_53_1 = fmul float %tmp_52_1, 0x3FB99999A0000000
  %tmp_54_1 = zext i8 %tmp_64 to i32
  %tmp_55_1 = sitofp i32 %tmp_54_1 to float
  %tmp_56_1 = fmul float %tmp_55_1, 0x3FC99999A0000000
  %tmp_57_1 = fadd float %tmp_53_1, %tmp_56_1
  %tmp_58_1 = zext i8 %pix_23_1 to i32
  %tmp_59_1 = sitofp i32 %tmp_58_1 to float
  %tmp_60_1 = fmul float %tmp_59_1, 0x3FE6666660000000
  %tmp_61_1 = fadd float %tmp_57_1, %tmp_60_1
  %temp_2_1 = call fastcc i8 @backsub___hls_fptoui_float_i8(float %tmp_61_1)
  %tmp_62_1_cast = zext i8 %temp_1_1 to i9
  %x_assign_2 = sub i9 %tmp_40_1_cast, %tmp_62_1_cast
  %neg_i = sub i9 0, %x_assign_2
  %abscond_i = icmp sgt i9 %x_assign_2, 0
  %abs_i = select i1 %abscond_i, i9 %x_assign_2, i9 %neg_i
  %grey_frame_addr_35 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_27_1
  %not_tmp_65_1 = icmp sgt i9 %abs_i, 14
  %p_38_cast = select i1 %not_tmp_65_1, i8 -1, i8 0
  store i8 %p_38_cast, i8* %grey_frame_addr_35, align 2
  %tmp_66_1_cast = zext i8 %temp_2_1 to i9
  %x_assign_3 = sub i9 %tmp_51_1_cast, %tmp_66_1_cast
  %neg_i3 = sub i9 0, %x_assign_3
  %abscond_i3 = icmp sgt i9 %x_assign_3, 0
  %abs_i3 = select i1 %abscond_i3, i9 %x_assign_3, i9 %neg_i3
  %grey_frame_addr_36 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_30_1
  %not_tmp_69_1 = icmp sgt i9 %abs_i3, 14
  %p_37_cast = select i1 %not_tmp_69_1, i8 -1, i8 0
  store i8 %p_37_cast, i8* %grey_frame_addr_36, align 1
  %i_2_1 = or i17 %i1, 4
  %p_lshr_f32_2_cast = call i16 @_ssdm_op_PartSelect.i16.i17.i32.i32(i17 %i_2_1, i32 1, i32 16)
  %tmp_26_2 = zext i16 %p_lshr_f32_2_cast to i64
  %yuv_frame_addr_19 = getelementptr inbounds [38400 x i32]* %yuv_frame, i64 0, i64 %tmp_26_2
  %yuv_frame_load_18 = load i32* %yuv_frame_addr_19, align 8
  %tmp_65 = trunc i32 %yuv_frame_load_18 to i8
  %yuv_struct_y2_write_assign_17 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %yuv_frame_load_18, i32 16, i32 23)
  %tmp_27_2 = zext i17 %i_2_1 to i64
  %frame_addr_36 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_27_2
  %frame_load_2 = load i16* %frame_addr_36, align 2
  %tmp_66 = trunc i16 %frame_load_2 to i8
  %pix_13_2 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %frame_load_2, i32 8, i32 15)
  %tmp_29_2 = or i17 %i1, 5
  %tmp_30_2 = zext i17 %tmp_29_2 to i64
  %frame_addr_37 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_30_2
  %frame_load_18 = load i16* %frame_addr_37, align 2
  %tmp_67 = trunc i16 %frame_load_18 to i8
  %pix_23_2 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %frame_load_18, i32 8, i32 15)
  %tmp_35_2 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %tmp_66, i8 %tmp_65)
  store i16 %tmp_35_2, i16* %frame_addr_36, align 2
  %tmp_39_2 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %tmp_67, i8 %yuv_struct_y2_write_assign_17)
  store i16 %tmp_39_2, i16* %frame_addr_37, align 2
  %tmp_40_2 = zext i8 %tmp_65 to i32
  %tmp_40_2_cast = zext i8 %tmp_65 to i9
  %tmp_41_2 = sitofp i32 %tmp_40_2 to float
  %tmp_42_2 = fmul float %tmp_41_2, 0x3FB99999A0000000
  %tmp_43_2 = zext i8 %tmp_66 to i32
  %tmp_44_2 = sitofp i32 %tmp_43_2 to float
  %tmp_45_2 = fmul float %tmp_44_2, 0x3FC99999A0000000
  %tmp_46_2 = fadd float %tmp_42_2, %tmp_45_2
  %tmp_47_2 = zext i8 %pix_13_2 to i32
  %tmp_48_2 = sitofp i32 %tmp_47_2 to float
  %tmp_49_2 = fmul float %tmp_48_2, 0x3FE6666660000000
  %tmp_50_2 = fadd float %tmp_46_2, %tmp_49_2
  %temp_1_2 = call fastcc i8 @backsub___hls_fptoui_float_i8(float %tmp_50_2)
  %tmp_51_2 = zext i8 %yuv_struct_y2_write_assign_17 to i32
  %tmp_51_2_cast = zext i8 %yuv_struct_y2_write_assign_17 to i9
  %tmp_52_2 = sitofp i32 %tmp_51_2 to float
  %tmp_53_2 = fmul float %tmp_52_2, 0x3FB99999A0000000
  %tmp_54_2 = zext i8 %tmp_67 to i32
  %tmp_55_2 = sitofp i32 %tmp_54_2 to float
  %tmp_56_2 = fmul float %tmp_55_2, 0x3FC99999A0000000
  %tmp_57_2 = fadd float %tmp_53_2, %tmp_56_2
  %tmp_58_2 = zext i8 %pix_23_2 to i32
  %tmp_59_2 = sitofp i32 %tmp_58_2 to float
  %tmp_60_2 = fmul float %tmp_59_2, 0x3FE6666660000000
  %tmp_61_2 = fadd float %tmp_57_2, %tmp_60_2
  %temp_2_2 = call fastcc i8 @backsub___hls_fptoui_float_i8(float %tmp_61_2)
  %tmp_62_2_cast = zext i8 %temp_1_2 to i9
  %x_assign_4 = sub i9 %tmp_40_2_cast, %tmp_62_2_cast
  %neg_i4 = sub i9 0, %x_assign_4
  %abscond_i4 = icmp sgt i9 %x_assign_4, 0
  %abs_i4 = select i1 %abscond_i4, i9 %x_assign_4, i9 %neg_i4
  %grey_frame_addr_37 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_27_2
  %not_tmp_65_2 = icmp sgt i9 %abs_i4, 14
  %p_40_cast = select i1 %not_tmp_65_2, i8 -1, i8 0
  store i8 %p_40_cast, i8* %grey_frame_addr_37, align 4
  %tmp_66_2_cast = zext i8 %temp_2_2 to i9
  %x_assign_5 = sub i9 %tmp_51_2_cast, %tmp_66_2_cast
  %neg_i5 = sub i9 0, %x_assign_5
  %abscond_i5 = icmp sgt i9 %x_assign_5, 0
  %abs_i5 = select i1 %abscond_i5, i9 %x_assign_5, i9 %neg_i5
  %grey_frame_addr_38 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_30_2
  %not_tmp_69_2 = icmp sgt i9 %abs_i5, 14
  %p_39_cast = select i1 %not_tmp_69_2, i8 -1, i8 0
  store i8 %p_39_cast, i8* %grey_frame_addr_38, align 1
  %i_2_2 = or i17 %i1, 6
  %p_lshr_f32_3_cast = call i16 @_ssdm_op_PartSelect.i16.i17.i32.i32(i17 %i_2_2, i32 1, i32 16)
  %tmp_26_3 = zext i16 %p_lshr_f32_3_cast to i64
  %yuv_frame_addr_20 = getelementptr inbounds [38400 x i32]* %yuv_frame, i64 0, i64 %tmp_26_3
  %yuv_frame_load_19 = load i32* %yuv_frame_addr_20, align 4
  %tmp_68 = trunc i32 %yuv_frame_load_19 to i8
  %yuv_struct_y2_write_assign_18 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %yuv_frame_load_19, i32 16, i32 23)
  %tmp_27_3 = zext i17 %i_2_2 to i64
  %frame_addr_38 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_27_3
  %frame_load_3 = load i16* %frame_addr_38, align 2
  %tmp_69 = trunc i16 %frame_load_3 to i8
  %pix_13_3 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %frame_load_3, i32 8, i32 15)
  %tmp_29_3 = or i17 %i1, 7
  %tmp_30_3 = zext i17 %tmp_29_3 to i64
  %frame_addr_39 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_30_3
  %frame_load_19 = load i16* %frame_addr_39, align 2
  %tmp_70 = trunc i16 %frame_load_19 to i8
  %pix_23_3 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %frame_load_19, i32 8, i32 15)
  %tmp_35_3 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %tmp_69, i8 %tmp_68)
  store i16 %tmp_35_3, i16* %frame_addr_38, align 2
  %tmp_39_3 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %tmp_70, i8 %yuv_struct_y2_write_assign_18)
  store i16 %tmp_39_3, i16* %frame_addr_39, align 2
  %tmp_40_3 = zext i8 %tmp_68 to i32
  %tmp_40_3_cast = zext i8 %tmp_68 to i9
  %tmp_41_3 = sitofp i32 %tmp_40_3 to float
  %tmp_42_3 = fmul float %tmp_41_3, 0x3FB99999A0000000
  %tmp_43_3 = zext i8 %tmp_69 to i32
  %tmp_44_3 = sitofp i32 %tmp_43_3 to float
  %tmp_45_3 = fmul float %tmp_44_3, 0x3FC99999A0000000
  %tmp_46_3 = fadd float %tmp_42_3, %tmp_45_3
  %tmp_47_3 = zext i8 %pix_13_3 to i32
  %tmp_48_3 = sitofp i32 %tmp_47_3 to float
  %tmp_49_3 = fmul float %tmp_48_3, 0x3FE6666660000000
  %tmp_50_3 = fadd float %tmp_46_3, %tmp_49_3
  %temp_1_3 = call fastcc i8 @backsub___hls_fptoui_float_i8(float %tmp_50_3)
  %tmp_51_3 = zext i8 %yuv_struct_y2_write_assign_18 to i32
  %tmp_51_3_cast = zext i8 %yuv_struct_y2_write_assign_18 to i9
  %tmp_52_3 = sitofp i32 %tmp_51_3 to float
  %tmp_53_3 = fmul float %tmp_52_3, 0x3FB99999A0000000
  %tmp_54_3 = zext i8 %tmp_70 to i32
  %tmp_55_3 = sitofp i32 %tmp_54_3 to float
  %tmp_56_3 = fmul float %tmp_55_3, 0x3FC99999A0000000
  %tmp_57_3 = fadd float %tmp_53_3, %tmp_56_3
  %tmp_58_3 = zext i8 %pix_23_3 to i32
  %tmp_59_3 = sitofp i32 %tmp_58_3 to float
  %tmp_60_3 = fmul float %tmp_59_3, 0x3FE6666660000000
  %tmp_61_3 = fadd float %tmp_57_3, %tmp_60_3
  %temp_2_3 = call fastcc i8 @backsub___hls_fptoui_float_i8(float %tmp_61_3)
  %tmp_62_3_cast = zext i8 %temp_1_3 to i9
  %x_assign_6 = sub i9 %tmp_40_3_cast, %tmp_62_3_cast
  %neg_i6 = sub i9 0, %x_assign_6
  %abscond_i6 = icmp sgt i9 %x_assign_6, 0
  %abs_i6 = select i1 %abscond_i6, i9 %x_assign_6, i9 %neg_i6
  %grey_frame_addr_39 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_27_3
  %not_tmp_65_3 = icmp sgt i9 %abs_i6, 14
  %p_42_cast = select i1 %not_tmp_65_3, i8 -1, i8 0
  store i8 %p_42_cast, i8* %grey_frame_addr_39, align 2
  %tmp_66_3_cast = zext i8 %temp_2_3 to i9
  %x_assign_7 = sub i9 %tmp_51_3_cast, %tmp_66_3_cast
  %neg_i7 = sub i9 0, %x_assign_7
  %abscond_i7 = icmp sgt i9 %x_assign_7, 0
  %abs_i7 = select i1 %abscond_i7, i9 %x_assign_7, i9 %neg_i7
  %grey_frame_addr_40 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_30_3
  %not_tmp_69_3 = icmp sgt i9 %abs_i7, 14
  %p_41_cast = select i1 %not_tmp_69_3, i8 -1, i8 0
  store i8 %p_41_cast, i8* %grey_frame_addr_40, align 1
  %i_2_3 = or i17 %i1, 8
  %p_lshr_f32_4_cast = call i16 @_ssdm_op_PartSelect.i16.i17.i32.i32(i17 %i_2_3, i32 1, i32 16)
  %tmp_26_4 = zext i16 %p_lshr_f32_4_cast to i64
  %yuv_frame_addr_21 = getelementptr inbounds [38400 x i32]* %yuv_frame, i64 0, i64 %tmp_26_4
  %yuv_frame_load_20 = load i32* %yuv_frame_addr_21, align 16
  %tmp_71 = trunc i32 %yuv_frame_load_20 to i8
  %yuv_struct_y2_write_assign_19 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %yuv_frame_load_20, i32 16, i32 23)
  %tmp_27_4 = zext i17 %i_2_3 to i64
  %frame_addr_40 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_27_4
  %frame_load_4 = load i16* %frame_addr_40, align 2
  %tmp_72 = trunc i16 %frame_load_4 to i8
  %pix_13_4 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %frame_load_4, i32 8, i32 15)
  %tmp_29_4 = or i17 %i1, 9
  %tmp_30_4 = zext i17 %tmp_29_4 to i64
  %frame_addr_41 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_30_4
  %frame_load_20 = load i16* %frame_addr_41, align 2
  %tmp_73 = trunc i16 %frame_load_20 to i8
  %pix_23_4 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %frame_load_20, i32 8, i32 15)
  %tmp_35_4 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %tmp_72, i8 %tmp_71)
  store i16 %tmp_35_4, i16* %frame_addr_40, align 2
  %tmp_39_4 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %tmp_73, i8 %yuv_struct_y2_write_assign_19)
  store i16 %tmp_39_4, i16* %frame_addr_41, align 2
  %tmp_40_4 = zext i8 %tmp_71 to i32
  %tmp_40_4_cast = zext i8 %tmp_71 to i9
  %tmp_41_4 = sitofp i32 %tmp_40_4 to float
  %tmp_42_4 = fmul float %tmp_41_4, 0x3FB99999A0000000
  %tmp_43_4 = zext i8 %tmp_72 to i32
  %tmp_44_4 = sitofp i32 %tmp_43_4 to float
  %tmp_45_4 = fmul float %tmp_44_4, 0x3FC99999A0000000
  %tmp_46_4 = fadd float %tmp_42_4, %tmp_45_4
  %tmp_47_4 = zext i8 %pix_13_4 to i32
  %tmp_48_4 = sitofp i32 %tmp_47_4 to float
  %tmp_49_4 = fmul float %tmp_48_4, 0x3FE6666660000000
  %tmp_50_4 = fadd float %tmp_46_4, %tmp_49_4
  %temp_1_4 = call fastcc i8 @backsub___hls_fptoui_float_i8(float %tmp_50_4)
  %tmp_51_4 = zext i8 %yuv_struct_y2_write_assign_19 to i32
  %tmp_51_4_cast = zext i8 %yuv_struct_y2_write_assign_19 to i9
  %tmp_52_4 = sitofp i32 %tmp_51_4 to float
  %tmp_53_4 = fmul float %tmp_52_4, 0x3FB99999A0000000
  %tmp_54_4 = zext i8 %tmp_73 to i32
  %tmp_55_4 = sitofp i32 %tmp_54_4 to float
  %tmp_56_4 = fmul float %tmp_55_4, 0x3FC99999A0000000
  %tmp_57_4 = fadd float %tmp_53_4, %tmp_56_4
  %tmp_58_4 = zext i8 %pix_23_4 to i32
  %tmp_59_4 = sitofp i32 %tmp_58_4 to float
  %tmp_60_4 = fmul float %tmp_59_4, 0x3FE6666660000000
  %tmp_61_4 = fadd float %tmp_57_4, %tmp_60_4
  %temp_2_4 = call fastcc i8 @backsub___hls_fptoui_float_i8(float %tmp_61_4)
  %tmp_62_4_cast = zext i8 %temp_1_4 to i9
  %x_assign_8 = sub i9 %tmp_40_4_cast, %tmp_62_4_cast
  %neg_i8 = sub i9 0, %x_assign_8
  %abscond_i8 = icmp sgt i9 %x_assign_8, 0
  %abs_i8 = select i1 %abscond_i8, i9 %x_assign_8, i9 %neg_i8
  %grey_frame_addr_41 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_27_4
  %not_tmp_65_4 = icmp sgt i9 %abs_i8, 14
  %p_44_cast = select i1 %not_tmp_65_4, i8 -1, i8 0
  store i8 %p_44_cast, i8* %grey_frame_addr_41, align 8
  %tmp_66_4_cast = zext i8 %temp_2_4 to i9
  %x_assign_9 = sub i9 %tmp_51_4_cast, %tmp_66_4_cast
  %neg_i9 = sub i9 0, %x_assign_9
  %abscond_i9 = icmp sgt i9 %x_assign_9, 0
  %abs_i9 = select i1 %abscond_i9, i9 %x_assign_9, i9 %neg_i9
  %grey_frame_addr_42 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_30_4
  %not_tmp_69_4 = icmp sgt i9 %abs_i9, 14
  %p_43_cast = select i1 %not_tmp_69_4, i8 -1, i8 0
  store i8 %p_43_cast, i8* %grey_frame_addr_42, align 1
  %i_2_4 = or i17 %i1, 10
  %p_lshr_f32_5_cast = call i16 @_ssdm_op_PartSelect.i16.i17.i32.i32(i17 %i_2_4, i32 1, i32 16)
  %tmp_26_5 = zext i16 %p_lshr_f32_5_cast to i64
  %yuv_frame_addr_22 = getelementptr inbounds [38400 x i32]* %yuv_frame, i64 0, i64 %tmp_26_5
  %yuv_frame_load_21 = load i32* %yuv_frame_addr_22, align 4
  %tmp_74 = trunc i32 %yuv_frame_load_21 to i8
  %yuv_struct_y2_write_assign_20 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %yuv_frame_load_21, i32 16, i32 23)
  %tmp_27_5 = zext i17 %i_2_4 to i64
  %frame_addr_42 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_27_5
  %frame_load_5 = load i16* %frame_addr_42, align 2
  %tmp_75 = trunc i16 %frame_load_5 to i8
  %pix_13_5 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %frame_load_5, i32 8, i32 15)
  %tmp_29_5 = or i17 %i1, 11
  %tmp_30_5 = zext i17 %tmp_29_5 to i64
  %frame_addr_43 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_30_5
  %frame_load_21 = load i16* %frame_addr_43, align 2
  %tmp_76 = trunc i16 %frame_load_21 to i8
  %pix_23_5 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %frame_load_21, i32 8, i32 15)
  %tmp_35_5 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %tmp_75, i8 %tmp_74)
  store i16 %tmp_35_5, i16* %frame_addr_42, align 2
  %tmp_39_5 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %tmp_76, i8 %yuv_struct_y2_write_assign_20)
  store i16 %tmp_39_5, i16* %frame_addr_43, align 2
  %tmp_40_5 = zext i8 %tmp_74 to i32
  %tmp_40_5_cast = zext i8 %tmp_74 to i9
  %tmp_41_5 = sitofp i32 %tmp_40_5 to float
  %tmp_42_5 = fmul float %tmp_41_5, 0x3FB99999A0000000
  %tmp_43_5 = zext i8 %tmp_75 to i32
  %tmp_44_5 = sitofp i32 %tmp_43_5 to float
  %tmp_45_5 = fmul float %tmp_44_5, 0x3FC99999A0000000
  %tmp_46_5 = fadd float %tmp_42_5, %tmp_45_5
  %tmp_47_5 = zext i8 %pix_13_5 to i32
  %tmp_48_5 = sitofp i32 %tmp_47_5 to float
  %tmp_49_5 = fmul float %tmp_48_5, 0x3FE6666660000000
  %tmp_50_5 = fadd float %tmp_46_5, %tmp_49_5
  %temp_1_5 = call fastcc i8 @backsub___hls_fptoui_float_i8(float %tmp_50_5)
  %tmp_51_5 = zext i8 %yuv_struct_y2_write_assign_20 to i32
  %tmp_51_5_cast = zext i8 %yuv_struct_y2_write_assign_20 to i9
  %tmp_52_5 = sitofp i32 %tmp_51_5 to float
  %tmp_53_5 = fmul float %tmp_52_5, 0x3FB99999A0000000
  %tmp_54_5 = zext i8 %tmp_76 to i32
  %tmp_55_5 = sitofp i32 %tmp_54_5 to float
  %tmp_56_5 = fmul float %tmp_55_5, 0x3FC99999A0000000
  %tmp_57_5 = fadd float %tmp_53_5, %tmp_56_5
  %tmp_58_5 = zext i8 %pix_23_5 to i32
  %tmp_59_5 = sitofp i32 %tmp_58_5 to float
  %tmp_60_5 = fmul float %tmp_59_5, 0x3FE6666660000000
  %tmp_61_5 = fadd float %tmp_57_5, %tmp_60_5
  %temp_2_5 = call fastcc i8 @backsub___hls_fptoui_float_i8(float %tmp_61_5)
  %tmp_62_5_cast = zext i8 %temp_1_5 to i9
  %x_assign_s = sub i9 %tmp_40_5_cast, %tmp_62_5_cast
  %neg_i10 = sub i9 0, %x_assign_s
  %abscond_i10 = icmp sgt i9 %x_assign_s, 0
  %abs_i10 = select i1 %abscond_i10, i9 %x_assign_s, i9 %neg_i10
  %grey_frame_addr_43 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_27_5
  %not_tmp_65_5 = icmp sgt i9 %abs_i10, 14
  %p_46_cast = select i1 %not_tmp_65_5, i8 -1, i8 0
  store i8 %p_46_cast, i8* %grey_frame_addr_43, align 2
  %tmp_66_5_cast = zext i8 %temp_2_5 to i9
  %x_assign_10 = sub i9 %tmp_51_5_cast, %tmp_66_5_cast
  %neg_i11 = sub i9 0, %x_assign_10
  %abscond_i11 = icmp sgt i9 %x_assign_10, 0
  %abs_i11 = select i1 %abscond_i11, i9 %x_assign_10, i9 %neg_i11
  %grey_frame_addr_44 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_30_5
  %not_tmp_69_5 = icmp sgt i9 %abs_i11, 14
  %p_45_cast = select i1 %not_tmp_69_5, i8 -1, i8 0
  store i8 %p_45_cast, i8* %grey_frame_addr_44, align 1
  %i_2_5 = or i17 %i1, 12
  %p_lshr_f32_6_cast = call i16 @_ssdm_op_PartSelect.i16.i17.i32.i32(i17 %i_2_5, i32 1, i32 16)
  %tmp_26_6 = zext i16 %p_lshr_f32_6_cast to i64
  %yuv_frame_addr_23 = getelementptr inbounds [38400 x i32]* %yuv_frame, i64 0, i64 %tmp_26_6
  %yuv_frame_load_22 = load i32* %yuv_frame_addr_23, align 8
  %tmp_77 = trunc i32 %yuv_frame_load_22 to i8
  %yuv_struct_y2_write_assign_21 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %yuv_frame_load_22, i32 16, i32 23)
  %tmp_27_6 = zext i17 %i_2_5 to i64
  %frame_addr_44 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_27_6
  %frame_load_6 = load i16* %frame_addr_44, align 2
  %tmp_78 = trunc i16 %frame_load_6 to i8
  %pix_13_6 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %frame_load_6, i32 8, i32 15)
  %tmp_29_6 = or i17 %i1, 13
  %tmp_30_6 = zext i17 %tmp_29_6 to i64
  %frame_addr_45 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_30_6
  %frame_load_22 = load i16* %frame_addr_45, align 2
  %tmp_79 = trunc i16 %frame_load_22 to i8
  %pix_23_6 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %frame_load_22, i32 8, i32 15)
  %tmp_35_6 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %tmp_78, i8 %tmp_77)
  store i16 %tmp_35_6, i16* %frame_addr_44, align 2
  %tmp_39_6 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %tmp_79, i8 %yuv_struct_y2_write_assign_21)
  store i16 %tmp_39_6, i16* %frame_addr_45, align 2
  %tmp_40_6 = zext i8 %tmp_77 to i32
  %tmp_40_6_cast = zext i8 %tmp_77 to i9
  %tmp_41_6 = sitofp i32 %tmp_40_6 to float
  %tmp_42_6 = fmul float %tmp_41_6, 0x3FB99999A0000000
  %tmp_43_6 = zext i8 %tmp_78 to i32
  %tmp_44_6 = sitofp i32 %tmp_43_6 to float
  %tmp_45_6 = fmul float %tmp_44_6, 0x3FC99999A0000000
  %tmp_46_6 = fadd float %tmp_42_6, %tmp_45_6
  %tmp_47_6 = zext i8 %pix_13_6 to i32
  %tmp_48_6 = sitofp i32 %tmp_47_6 to float
  %tmp_49_6 = fmul float %tmp_48_6, 0x3FE6666660000000
  %tmp_50_6 = fadd float %tmp_46_6, %tmp_49_6
  %temp_1_6 = call fastcc i8 @backsub___hls_fptoui_float_i8(float %tmp_50_6)
  %tmp_51_6 = zext i8 %yuv_struct_y2_write_assign_21 to i32
  %tmp_51_6_cast = zext i8 %yuv_struct_y2_write_assign_21 to i9
  %tmp_52_6 = sitofp i32 %tmp_51_6 to float
  %tmp_53_6 = fmul float %tmp_52_6, 0x3FB99999A0000000
  %tmp_54_6 = zext i8 %tmp_79 to i32
  %tmp_55_6 = sitofp i32 %tmp_54_6 to float
  %tmp_56_6 = fmul float %tmp_55_6, 0x3FC99999A0000000
  %tmp_57_6 = fadd float %tmp_53_6, %tmp_56_6
  %tmp_58_6 = zext i8 %pix_23_6 to i32
  %tmp_59_6 = sitofp i32 %tmp_58_6 to float
  %tmp_60_6 = fmul float %tmp_59_6, 0x3FE6666660000000
  %tmp_61_6 = fadd float %tmp_57_6, %tmp_60_6
  %temp_2_6 = call fastcc i8 @backsub___hls_fptoui_float_i8(float %tmp_61_6)
  %tmp_62_6_cast = zext i8 %temp_1_6 to i9
  %x_assign_11 = sub i9 %tmp_40_6_cast, %tmp_62_6_cast
  %neg_i12 = sub i9 0, %x_assign_11
  %abscond_i12 = icmp sgt i9 %x_assign_11, 0
  %abs_i12 = select i1 %abscond_i12, i9 %x_assign_11, i9 %neg_i12
  %grey_frame_addr_45 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_27_6
  %not_tmp_65_6 = icmp sgt i9 %abs_i12, 14
  %p_48_cast = select i1 %not_tmp_65_6, i8 -1, i8 0
  store i8 %p_48_cast, i8* %grey_frame_addr_45, align 4
  %tmp_66_6_cast = zext i8 %temp_2_6 to i9
  %x_assign_12 = sub i9 %tmp_51_6_cast, %tmp_66_6_cast
  %neg_i13 = sub i9 0, %x_assign_12
  %abscond_i13 = icmp sgt i9 %x_assign_12, 0
  %abs_i13 = select i1 %abscond_i13, i9 %x_assign_12, i9 %neg_i13
  %grey_frame_addr_46 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_30_6
  %not_tmp_69_6 = icmp sgt i9 %abs_i13, 14
  %p_47_cast = select i1 %not_tmp_69_6, i8 -1, i8 0
  store i8 %p_47_cast, i8* %grey_frame_addr_46, align 1
  %i_2_6 = or i17 %i1, 14
  %p_lshr_f32_7_cast = call i16 @_ssdm_op_PartSelect.i16.i17.i32.i32(i17 %i_2_6, i32 1, i32 16)
  %tmp_26_7 = zext i16 %p_lshr_f32_7_cast to i64
  %yuv_frame_addr_24 = getelementptr inbounds [38400 x i32]* %yuv_frame, i64 0, i64 %tmp_26_7
  %yuv_frame_load_23 = load i32* %yuv_frame_addr_24, align 4
  %tmp_80 = trunc i32 %yuv_frame_load_23 to i8
  %yuv_struct_y2_write_assign_22 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %yuv_frame_load_23, i32 16, i32 23)
  %tmp_27_7 = zext i17 %i_2_6 to i64
  %frame_addr_46 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_27_7
  %frame_load_7 = load i16* %frame_addr_46, align 2
  %tmp_81 = trunc i16 %frame_load_7 to i8
  %pix_13_7 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %frame_load_7, i32 8, i32 15)
  %tmp_29_7 = or i17 %i1, 15
  %tmp_30_7 = zext i17 %tmp_29_7 to i64
  %frame_addr_47 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_30_7
  %frame_load_23 = load i16* %frame_addr_47, align 2
  %tmp_82 = trunc i16 %frame_load_23 to i8
  %pix_23_7 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %frame_load_23, i32 8, i32 15)
  %tmp_35_7 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %tmp_81, i8 %tmp_80)
  store i16 %tmp_35_7, i16* %frame_addr_46, align 2
  %tmp_39_7 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %tmp_82, i8 %yuv_struct_y2_write_assign_22)
  store i16 %tmp_39_7, i16* %frame_addr_47, align 2
  %tmp_40_7 = zext i8 %tmp_80 to i32
  %tmp_40_7_cast = zext i8 %tmp_80 to i9
  %tmp_41_7 = sitofp i32 %tmp_40_7 to float
  %tmp_42_7 = fmul float %tmp_41_7, 0x3FB99999A0000000
  %tmp_43_7 = zext i8 %tmp_81 to i32
  %tmp_44_7 = sitofp i32 %tmp_43_7 to float
  %tmp_45_7 = fmul float %tmp_44_7, 0x3FC99999A0000000
  %tmp_46_7 = fadd float %tmp_42_7, %tmp_45_7
  %tmp_47_7 = zext i8 %pix_13_7 to i32
  %tmp_48_7 = sitofp i32 %tmp_47_7 to float
  %tmp_49_7 = fmul float %tmp_48_7, 0x3FE6666660000000
  %tmp_50_7 = fadd float %tmp_46_7, %tmp_49_7
  %temp_1_7 = call fastcc i8 @backsub___hls_fptoui_float_i8(float %tmp_50_7)
  %tmp_51_7 = zext i8 %yuv_struct_y2_write_assign_22 to i32
  %tmp_51_7_cast = zext i8 %yuv_struct_y2_write_assign_22 to i9
  %tmp_52_7 = sitofp i32 %tmp_51_7 to float
  %tmp_53_7 = fmul float %tmp_52_7, 0x3FB99999A0000000
  %tmp_54_7 = zext i8 %tmp_82 to i32
  %tmp_55_7 = sitofp i32 %tmp_54_7 to float
  %tmp_56_7 = fmul float %tmp_55_7, 0x3FC99999A0000000
  %tmp_57_7 = fadd float %tmp_53_7, %tmp_56_7
  %tmp_58_7 = zext i8 %pix_23_7 to i32
  %tmp_59_7 = sitofp i32 %tmp_58_7 to float
  %tmp_60_7 = fmul float %tmp_59_7, 0x3FE6666660000000
  %tmp_61_7 = fadd float %tmp_57_7, %tmp_60_7
  %temp_2_7 = call fastcc i8 @backsub___hls_fptoui_float_i8(float %tmp_61_7)
  %tmp_62_7_cast = zext i8 %temp_1_7 to i9
  %x_assign_13 = sub i9 %tmp_40_7_cast, %tmp_62_7_cast
  %neg_i14 = sub i9 0, %x_assign_13
  %abscond_i14 = icmp sgt i9 %x_assign_13, 0
  %abs_i14 = select i1 %abscond_i14, i9 %x_assign_13, i9 %neg_i14
  %grey_frame_addr_47 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_27_7
  %not_tmp_65_7 = icmp sgt i9 %abs_i14, 14
  %p_50_cast = select i1 %not_tmp_65_7, i8 -1, i8 0
  store i8 %p_50_cast, i8* %grey_frame_addr_47, align 2
  %tmp_66_7_cast = zext i8 %temp_2_7 to i9
  %x_assign_14 = sub i9 %tmp_51_7_cast, %tmp_66_7_cast
  %neg_i15 = sub i9 0, %x_assign_14
  %abscond_i15 = icmp sgt i9 %x_assign_14, 0
  %abs_i15 = select i1 %abscond_i15, i9 %x_assign_14, i9 %neg_i15
  %grey_frame_addr_48 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_30_7
  %not_tmp_69_7 = icmp sgt i9 %abs_i15, 14
  %p_49_cast = select i1 %not_tmp_69_7, i8 -1, i8 0
  store i8 %p_49_cast, i8* %grey_frame_addr_48, align 1
  %i_2_7 = or i17 %i1, 16
  %p_lshr_f32_8_cast = call i16 @_ssdm_op_PartSelect.i16.i17.i32.i32(i17 %i_2_7, i32 1, i32 16)
  %tmp_26_8 = zext i16 %p_lshr_f32_8_cast to i64
  %yuv_frame_addr_25 = getelementptr inbounds [38400 x i32]* %yuv_frame, i64 0, i64 %tmp_26_8
  %yuv_frame_load_24 = load i32* %yuv_frame_addr_25, align 16
  %tmp_83 = trunc i32 %yuv_frame_load_24 to i8
  %yuv_struct_y2_write_assign_23 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %yuv_frame_load_24, i32 16, i32 23)
  %tmp_27_8 = zext i17 %i_2_7 to i64
  %frame_addr_48 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_27_8
  %frame_load_8 = load i16* %frame_addr_48, align 2
  %tmp_84 = trunc i16 %frame_load_8 to i8
  %pix_13_8 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %frame_load_8, i32 8, i32 15)
  %tmp_29_8 = or i17 %i1, 17
  %tmp_30_8 = zext i17 %tmp_29_8 to i64
  %frame_addr_49 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_30_8
  %frame_load_24 = load i16* %frame_addr_49, align 2
  %tmp_85 = trunc i16 %frame_load_24 to i8
  %pix_23_8 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %frame_load_24, i32 8, i32 15)
  %tmp_35_8 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %tmp_84, i8 %tmp_83)
  store i16 %tmp_35_8, i16* %frame_addr_48, align 2
  %tmp_39_8 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %tmp_85, i8 %yuv_struct_y2_write_assign_23)
  store i16 %tmp_39_8, i16* %frame_addr_49, align 2
  %tmp_40_8 = zext i8 %tmp_83 to i32
  %tmp_40_8_cast = zext i8 %tmp_83 to i9
  %tmp_41_8 = sitofp i32 %tmp_40_8 to float
  %tmp_42_8 = fmul float %tmp_41_8, 0x3FB99999A0000000
  %tmp_43_8 = zext i8 %tmp_84 to i32
  %tmp_44_8 = sitofp i32 %tmp_43_8 to float
  %tmp_45_8 = fmul float %tmp_44_8, 0x3FC99999A0000000
  %tmp_46_8 = fadd float %tmp_42_8, %tmp_45_8
  %tmp_47_8 = zext i8 %pix_13_8 to i32
  %tmp_48_8 = sitofp i32 %tmp_47_8 to float
  %tmp_49_8 = fmul float %tmp_48_8, 0x3FE6666660000000
  %tmp_50_8 = fadd float %tmp_46_8, %tmp_49_8
  %temp_1_8 = call fastcc i8 @backsub___hls_fptoui_float_i8(float %tmp_50_8)
  %tmp_51_8 = zext i8 %yuv_struct_y2_write_assign_23 to i32
  %tmp_51_8_cast = zext i8 %yuv_struct_y2_write_assign_23 to i9
  %tmp_52_8 = sitofp i32 %tmp_51_8 to float
  %tmp_53_8 = fmul float %tmp_52_8, 0x3FB99999A0000000
  %tmp_54_8 = zext i8 %tmp_85 to i32
  %tmp_55_8 = sitofp i32 %tmp_54_8 to float
  %tmp_56_8 = fmul float %tmp_55_8, 0x3FC99999A0000000
  %tmp_57_8 = fadd float %tmp_53_8, %tmp_56_8
  %tmp_58_8 = zext i8 %pix_23_8 to i32
  %tmp_59_8 = sitofp i32 %tmp_58_8 to float
  %tmp_60_8 = fmul float %tmp_59_8, 0x3FE6666660000000
  %tmp_61_8 = fadd float %tmp_57_8, %tmp_60_8
  %temp_2_8 = call fastcc i8 @backsub___hls_fptoui_float_i8(float %tmp_61_8)
  %tmp_62_8_cast = zext i8 %temp_1_8 to i9
  %x_assign_15 = sub i9 %tmp_40_8_cast, %tmp_62_8_cast
  %neg_i16 = sub i9 0, %x_assign_15
  %abscond_i16 = icmp sgt i9 %x_assign_15, 0
  %abs_i16 = select i1 %abscond_i16, i9 %x_assign_15, i9 %neg_i16
  %grey_frame_addr_49 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_27_8
  %not_tmp_65_8 = icmp sgt i9 %abs_i16, 14
  %p_52_cast = select i1 %not_tmp_65_8, i8 -1, i8 0
  store i8 %p_52_cast, i8* %grey_frame_addr_49, align 16
  %tmp_66_8_cast = zext i8 %temp_2_8 to i9
  %x_assign_16 = sub i9 %tmp_51_8_cast, %tmp_66_8_cast
  %neg_i17 = sub i9 0, %x_assign_16
  %abscond_i17 = icmp sgt i9 %x_assign_16, 0
  %abs_i17 = select i1 %abscond_i17, i9 %x_assign_16, i9 %neg_i17
  %grey_frame_addr_50 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_30_8
  %not_tmp_69_8 = icmp sgt i9 %abs_i17, 14
  %p_51_cast = select i1 %not_tmp_69_8, i8 -1, i8 0
  store i8 %p_51_cast, i8* %grey_frame_addr_50, align 1
  %i_2_8 = or i17 %i1, 18
  %p_lshr_f32_9_cast = call i16 @_ssdm_op_PartSelect.i16.i17.i32.i32(i17 %i_2_8, i32 1, i32 16)
  %tmp_26_9 = zext i16 %p_lshr_f32_9_cast to i64
  %yuv_frame_addr_26 = getelementptr inbounds [38400 x i32]* %yuv_frame, i64 0, i64 %tmp_26_9
  %yuv_frame_load_25 = load i32* %yuv_frame_addr_26, align 4
  %tmp_86 = trunc i32 %yuv_frame_load_25 to i8
  %yuv_struct_y2_write_assign_24 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %yuv_frame_load_25, i32 16, i32 23)
  %tmp_27_9 = zext i17 %i_2_8 to i64
  %frame_addr_50 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_27_9
  %frame_load_9 = load i16* %frame_addr_50, align 2
  %tmp_87 = trunc i16 %frame_load_9 to i8
  %pix_13_9 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %frame_load_9, i32 8, i32 15)
  %tmp_29_9 = or i17 %i1, 19
  %tmp_30_9 = zext i17 %tmp_29_9 to i64
  %frame_addr_51 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_30_9
  %frame_load_25 = load i16* %frame_addr_51, align 2
  %tmp_88 = trunc i16 %frame_load_25 to i8
  %pix_23_9 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %frame_load_25, i32 8, i32 15)
  %tmp_35_9 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %tmp_87, i8 %tmp_86)
  store i16 %tmp_35_9, i16* %frame_addr_50, align 2
  %tmp_39_9 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %tmp_88, i8 %yuv_struct_y2_write_assign_24)
  store i16 %tmp_39_9, i16* %frame_addr_51, align 2
  %tmp_40_9 = zext i8 %tmp_86 to i32
  %tmp_40_9_cast = zext i8 %tmp_86 to i9
  %tmp_41_9 = sitofp i32 %tmp_40_9 to float
  %tmp_42_9 = fmul float %tmp_41_9, 0x3FB99999A0000000
  %tmp_43_9 = zext i8 %tmp_87 to i32
  %tmp_44_9 = sitofp i32 %tmp_43_9 to float
  %tmp_45_9 = fmul float %tmp_44_9, 0x3FC99999A0000000
  %tmp_46_9 = fadd float %tmp_42_9, %tmp_45_9
  %tmp_47_9 = zext i8 %pix_13_9 to i32
  %tmp_48_9 = sitofp i32 %tmp_47_9 to float
  %tmp_49_9 = fmul float %tmp_48_9, 0x3FE6666660000000
  %tmp_50_9 = fadd float %tmp_46_9, %tmp_49_9
  %temp_1_9 = call fastcc i8 @backsub___hls_fptoui_float_i8(float %tmp_50_9)
  %tmp_51_9 = zext i8 %yuv_struct_y2_write_assign_24 to i32
  %tmp_51_9_cast = zext i8 %yuv_struct_y2_write_assign_24 to i9
  %tmp_52_9 = sitofp i32 %tmp_51_9 to float
  %tmp_53_9 = fmul float %tmp_52_9, 0x3FB99999A0000000
  %tmp_54_9 = zext i8 %tmp_88 to i32
  %tmp_55_9 = sitofp i32 %tmp_54_9 to float
  %tmp_56_9 = fmul float %tmp_55_9, 0x3FC99999A0000000
  %tmp_57_9 = fadd float %tmp_53_9, %tmp_56_9
  %tmp_58_9 = zext i8 %pix_23_9 to i32
  %tmp_59_9 = sitofp i32 %tmp_58_9 to float
  %tmp_60_9 = fmul float %tmp_59_9, 0x3FE6666660000000
  %tmp_61_9 = fadd float %tmp_57_9, %tmp_60_9
  %temp_2_9 = call fastcc i8 @backsub___hls_fptoui_float_i8(float %tmp_61_9)
  %tmp_62_9_cast = zext i8 %temp_1_9 to i9
  %x_assign_17 = sub i9 %tmp_40_9_cast, %tmp_62_9_cast
  %neg_i18 = sub i9 0, %x_assign_17
  %abscond_i18 = icmp sgt i9 %x_assign_17, 0
  %abs_i18 = select i1 %abscond_i18, i9 %x_assign_17, i9 %neg_i18
  %grey_frame_addr_51 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_27_9
  %not_tmp_65_9 = icmp sgt i9 %abs_i18, 14
  %p_54_cast = select i1 %not_tmp_65_9, i8 -1, i8 0
  store i8 %p_54_cast, i8* %grey_frame_addr_51, align 2
  %tmp_66_9_cast = zext i8 %temp_2_9 to i9
  %x_assign_18 = sub i9 %tmp_51_9_cast, %tmp_66_9_cast
  %neg_i19 = sub i9 0, %x_assign_18
  %abscond_i19 = icmp sgt i9 %x_assign_18, 0
  %abs_i19 = select i1 %abscond_i19, i9 %x_assign_18, i9 %neg_i19
  %grey_frame_addr_52 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_30_9
  %not_tmp_69_9 = icmp sgt i9 %abs_i19, 14
  %p_53_cast = select i1 %not_tmp_69_9, i8 -1, i8 0
  store i8 %p_53_cast, i8* %grey_frame_addr_52, align 1
  %i_2_9 = or i17 %i1, 20
  %p_lshr_f32_cast = call i16 @_ssdm_op_PartSelect.i16.i17.i32.i32(i17 %i_2_9, i32 1, i32 16)
  %tmp_26_s = zext i16 %p_lshr_f32_cast to i64
  %yuv_frame_addr_27 = getelementptr inbounds [38400 x i32]* %yuv_frame, i64 0, i64 %tmp_26_s
  %yuv_frame_load_26 = load i32* %yuv_frame_addr_27, align 8
  %tmp_89 = trunc i32 %yuv_frame_load_26 to i8
  %yuv_struct_y2_write_assign_25 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %yuv_frame_load_26, i32 16, i32 23)
  %tmp_27_s = zext i17 %i_2_9 to i64
  %frame_addr_52 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_27_s
  %frame_load_10 = load i16* %frame_addr_52, align 2
  %tmp_90 = trunc i16 %frame_load_10 to i8
  %pix_13_s = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %frame_load_10, i32 8, i32 15)
  %tmp_29_s = or i17 %i1, 21
  %tmp_30_s = zext i17 %tmp_29_s to i64
  %frame_addr_53 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_30_s
  %frame_load_26 = load i16* %frame_addr_53, align 2
  %tmp_91 = trunc i16 %frame_load_26 to i8
  %pix_23_s = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %frame_load_26, i32 8, i32 15)
  %tmp_35_s = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %tmp_90, i8 %tmp_89)
  store i16 %tmp_35_s, i16* %frame_addr_52, align 2
  %tmp_39_s = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %tmp_91, i8 %yuv_struct_y2_write_assign_25)
  store i16 %tmp_39_s, i16* %frame_addr_53, align 2
  %tmp_40_s = zext i8 %tmp_89 to i32
  %tmp_40_cast = zext i8 %tmp_89 to i9
  %tmp_41_s = sitofp i32 %tmp_40_s to float
  %tmp_42_s = fmul float %tmp_41_s, 0x3FB99999A0000000
  %tmp_43_s = zext i8 %tmp_90 to i32
  %tmp_44_s = sitofp i32 %tmp_43_s to float
  %tmp_45_s = fmul float %tmp_44_s, 0x3FC99999A0000000
  %tmp_46_s = fadd float %tmp_42_s, %tmp_45_s
  %tmp_47_s = zext i8 %pix_13_s to i32
  %tmp_48_s = sitofp i32 %tmp_47_s to float
  %tmp_49_s = fmul float %tmp_48_s, 0x3FE6666660000000
  %tmp_50_s = fadd float %tmp_46_s, %tmp_49_s
  %temp_1_s = call fastcc i8 @backsub___hls_fptoui_float_i8(float %tmp_50_s)
  %tmp_51_s = zext i8 %yuv_struct_y2_write_assign_25 to i32
  %tmp_51_cast = zext i8 %yuv_struct_y2_write_assign_25 to i9
  %tmp_52_s = sitofp i32 %tmp_51_s to float
  %tmp_53_s = fmul float %tmp_52_s, 0x3FB99999A0000000
  %tmp_54_s = zext i8 %tmp_91 to i32
  %tmp_55_s = sitofp i32 %tmp_54_s to float
  %tmp_56_s = fmul float %tmp_55_s, 0x3FC99999A0000000
  %tmp_57_s = fadd float %tmp_53_s, %tmp_56_s
  %tmp_58_s = zext i8 %pix_23_s to i32
  %tmp_59_s = sitofp i32 %tmp_58_s to float
  %tmp_60_s = fmul float %tmp_59_s, 0x3FE6666660000000
  %tmp_61_s = fadd float %tmp_57_s, %tmp_60_s
  %temp_2_s = call fastcc i8 @backsub___hls_fptoui_float_i8(float %tmp_61_s)
  %tmp_62_cast = zext i8 %temp_1_s to i9
  %x_assign_19 = sub i9 %tmp_40_cast, %tmp_62_cast
  %neg_i20 = sub i9 0, %x_assign_19
  %abscond_i20 = icmp sgt i9 %x_assign_19, 0
  %abs_i20 = select i1 %abscond_i20, i9 %x_assign_19, i9 %neg_i20
  %grey_frame_addr_53 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_27_s
  %not_tmp_65_s = icmp sgt i9 %abs_i20, 14
  %p_56_cast = select i1 %not_tmp_65_s, i8 -1, i8 0
  store i8 %p_56_cast, i8* %grey_frame_addr_53, align 4
  %tmp_66_cast = zext i8 %temp_2_s to i9
  %x_assign_20 = sub i9 %tmp_51_cast, %tmp_66_cast
  %neg_i21 = sub i9 0, %x_assign_20
  %abscond_i21 = icmp sgt i9 %x_assign_20, 0
  %abs_i21 = select i1 %abscond_i21, i9 %x_assign_20, i9 %neg_i21
  %grey_frame_addr_54 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_30_s
  %not_tmp_69_s = icmp sgt i9 %abs_i21, 14
  %p_55_cast = select i1 %not_tmp_69_s, i8 -1, i8 0
  store i8 %p_55_cast, i8* %grey_frame_addr_54, align 1
  %i_2_10 = or i17 %i1, 22
  %p_lshr_f32_10_cast = call i16 @_ssdm_op_PartSelect.i16.i17.i32.i32(i17 %i_2_10, i32 1, i32 16)
  %tmp_26_10 = zext i16 %p_lshr_f32_10_cast to i64
  %yuv_frame_addr_28 = getelementptr inbounds [38400 x i32]* %yuv_frame, i64 0, i64 %tmp_26_10
  %yuv_frame_load_27 = load i32* %yuv_frame_addr_28, align 4
  %tmp_92 = trunc i32 %yuv_frame_load_27 to i8
  %yuv_struct_y2_write_assign_26 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %yuv_frame_load_27, i32 16, i32 23)
  %tmp_27_10 = zext i17 %i_2_10 to i64
  %frame_addr_54 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_27_10
  %frame_load_11 = load i16* %frame_addr_54, align 2
  %tmp_93 = trunc i16 %frame_load_11 to i8
  %pix_13_10 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %frame_load_11, i32 8, i32 15)
  %tmp_29_10 = or i17 %i1, 23
  %tmp_30_10 = zext i17 %tmp_29_10 to i64
  %frame_addr_55 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_30_10
  %frame_load_27 = load i16* %frame_addr_55, align 2
  %tmp_94 = trunc i16 %frame_load_27 to i8
  %pix_23_10 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %frame_load_27, i32 8, i32 15)
  %tmp_35_10 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %tmp_93, i8 %tmp_92)
  store i16 %tmp_35_10, i16* %frame_addr_54, align 2
  %tmp_39_10 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %tmp_94, i8 %yuv_struct_y2_write_assign_26)
  store i16 %tmp_39_10, i16* %frame_addr_55, align 2
  %tmp_40_10 = zext i8 %tmp_92 to i32
  %tmp_40_10_cast = zext i8 %tmp_92 to i9
  %tmp_41_10 = sitofp i32 %tmp_40_10 to float
  %tmp_42_10 = fmul float %tmp_41_10, 0x3FB99999A0000000
  %tmp_43_10 = zext i8 %tmp_93 to i32
  %tmp_44_10 = sitofp i32 %tmp_43_10 to float
  %tmp_45_10 = fmul float %tmp_44_10, 0x3FC99999A0000000
  %tmp_46_10 = fadd float %tmp_42_10, %tmp_45_10
  %tmp_47_10 = zext i8 %pix_13_10 to i32
  %tmp_48_10 = sitofp i32 %tmp_47_10 to float
  %tmp_49_10 = fmul float %tmp_48_10, 0x3FE6666660000000
  %tmp_50_10 = fadd float %tmp_46_10, %tmp_49_10
  %temp_1_10 = call fastcc i8 @backsub___hls_fptoui_float_i8(float %tmp_50_10)
  %tmp_51_10 = zext i8 %yuv_struct_y2_write_assign_26 to i32
  %tmp_51_10_cast = zext i8 %yuv_struct_y2_write_assign_26 to i9
  %tmp_52_10 = sitofp i32 %tmp_51_10 to float
  %tmp_53_10 = fmul float %tmp_52_10, 0x3FB99999A0000000
  %tmp_54_10 = zext i8 %tmp_94 to i32
  %tmp_55_10 = sitofp i32 %tmp_54_10 to float
  %tmp_56_10 = fmul float %tmp_55_10, 0x3FC99999A0000000
  %tmp_57_10 = fadd float %tmp_53_10, %tmp_56_10
  %tmp_58_10 = zext i8 %pix_23_10 to i32
  %tmp_59_10 = sitofp i32 %tmp_58_10 to float
  %tmp_60_10 = fmul float %tmp_59_10, 0x3FE6666660000000
  %tmp_61_10 = fadd float %tmp_57_10, %tmp_60_10
  %temp_2_10 = call fastcc i8 @backsub___hls_fptoui_float_i8(float %tmp_61_10)
  %tmp_62_10_cast = zext i8 %temp_1_10 to i9
  %x_assign_21 = sub i9 %tmp_40_10_cast, %tmp_62_10_cast
  %neg_i22 = sub i9 0, %x_assign_21
  %abscond_i22 = icmp sgt i9 %x_assign_21, 0
  %abs_i22 = select i1 %abscond_i22, i9 %x_assign_21, i9 %neg_i22
  %grey_frame_addr_55 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_27_10
  %not_tmp_65_10 = icmp sgt i9 %abs_i22, 14
  %p_58_cast = select i1 %not_tmp_65_10, i8 -1, i8 0
  store i8 %p_58_cast, i8* %grey_frame_addr_55, align 2
  %tmp_66_10_cast = zext i8 %temp_2_10 to i9
  %x_assign_22 = sub i9 %tmp_51_10_cast, %tmp_66_10_cast
  %neg_i23 = sub i9 0, %x_assign_22
  %abscond_i23 = icmp sgt i9 %x_assign_22, 0
  %abs_i23 = select i1 %abscond_i23, i9 %x_assign_22, i9 %neg_i23
  %grey_frame_addr_56 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_30_10
  %not_tmp_69_10 = icmp sgt i9 %abs_i23, 14
  %p_57_cast = select i1 %not_tmp_69_10, i8 -1, i8 0
  store i8 %p_57_cast, i8* %grey_frame_addr_56, align 1
  %i_2_11 = or i17 %i1, 24
  %p_lshr_f32_11_cast = call i16 @_ssdm_op_PartSelect.i16.i17.i32.i32(i17 %i_2_11, i32 1, i32 16)
  %tmp_26_11 = zext i16 %p_lshr_f32_11_cast to i64
  %yuv_frame_addr_29 = getelementptr inbounds [38400 x i32]* %yuv_frame, i64 0, i64 %tmp_26_11
  %yuv_frame_load_28 = load i32* %yuv_frame_addr_29, align 16
  %tmp_95 = trunc i32 %yuv_frame_load_28 to i8
  %yuv_struct_y2_write_assign_27 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %yuv_frame_load_28, i32 16, i32 23)
  %tmp_27_11 = zext i17 %i_2_11 to i64
  %frame_addr_56 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_27_11
  %frame_load_12 = load i16* %frame_addr_56, align 2
  %tmp_96 = trunc i16 %frame_load_12 to i8
  %pix_13_11 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %frame_load_12, i32 8, i32 15)
  %tmp_29_11 = or i17 %i1, 25
  %tmp_30_11 = zext i17 %tmp_29_11 to i64
  %frame_addr_57 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_30_11
  %frame_load_28 = load i16* %frame_addr_57, align 2
  %tmp_97 = trunc i16 %frame_load_28 to i8
  %pix_23_11 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %frame_load_28, i32 8, i32 15)
  %tmp_35_11 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %tmp_96, i8 %tmp_95)
  store i16 %tmp_35_11, i16* %frame_addr_56, align 2
  %tmp_39_11 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %tmp_97, i8 %yuv_struct_y2_write_assign_27)
  store i16 %tmp_39_11, i16* %frame_addr_57, align 2
  %tmp_40_11 = zext i8 %tmp_95 to i32
  %tmp_40_11_cast = zext i8 %tmp_95 to i9
  %tmp_41_11 = sitofp i32 %tmp_40_11 to float
  %tmp_42_11 = fmul float %tmp_41_11, 0x3FB99999A0000000
  %tmp_43_11 = zext i8 %tmp_96 to i32
  %tmp_44_11 = sitofp i32 %tmp_43_11 to float
  %tmp_45_11 = fmul float %tmp_44_11, 0x3FC99999A0000000
  %tmp_46_11 = fadd float %tmp_42_11, %tmp_45_11
  %tmp_47_11 = zext i8 %pix_13_11 to i32
  %tmp_48_11 = sitofp i32 %tmp_47_11 to float
  %tmp_49_11 = fmul float %tmp_48_11, 0x3FE6666660000000
  %tmp_50_11 = fadd float %tmp_46_11, %tmp_49_11
  %temp_1_11 = call fastcc i8 @backsub___hls_fptoui_float_i8(float %tmp_50_11)
  %tmp_51_11 = zext i8 %yuv_struct_y2_write_assign_27 to i32
  %tmp_51_11_cast = zext i8 %yuv_struct_y2_write_assign_27 to i9
  %tmp_52_11 = sitofp i32 %tmp_51_11 to float
  %tmp_53_11 = fmul float %tmp_52_11, 0x3FB99999A0000000
  %tmp_54_11 = zext i8 %tmp_97 to i32
  %tmp_55_11 = sitofp i32 %tmp_54_11 to float
  %tmp_56_11 = fmul float %tmp_55_11, 0x3FC99999A0000000
  %tmp_57_11 = fadd float %tmp_53_11, %tmp_56_11
  %tmp_58_11 = zext i8 %pix_23_11 to i32
  %tmp_59_11 = sitofp i32 %tmp_58_11 to float
  %tmp_60_11 = fmul float %tmp_59_11, 0x3FE6666660000000
  %tmp_61_11 = fadd float %tmp_57_11, %tmp_60_11
  %temp_2_11 = call fastcc i8 @backsub___hls_fptoui_float_i8(float %tmp_61_11)
  %tmp_62_11_cast = zext i8 %temp_1_11 to i9
  %x_assign_23 = sub i9 %tmp_40_11_cast, %tmp_62_11_cast
  %neg_i24 = sub i9 0, %x_assign_23
  %abscond_i24 = icmp sgt i9 %x_assign_23, 0
  %abs_i24 = select i1 %abscond_i24, i9 %x_assign_23, i9 %neg_i24
  %grey_frame_addr_57 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_27_11
  %not_tmp_65_11 = icmp sgt i9 %abs_i24, 14
  %p_60_cast = select i1 %not_tmp_65_11, i8 -1, i8 0
  store i8 %p_60_cast, i8* %grey_frame_addr_57, align 8
  %tmp_66_11_cast = zext i8 %temp_2_11 to i9
  %x_assign_24 = sub i9 %tmp_51_11_cast, %tmp_66_11_cast
  %neg_i25 = sub i9 0, %x_assign_24
  %abscond_i25 = icmp sgt i9 %x_assign_24, 0
  %abs_i25 = select i1 %abscond_i25, i9 %x_assign_24, i9 %neg_i25
  %grey_frame_addr_58 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_30_11
  %not_tmp_69_11 = icmp sgt i9 %abs_i25, 14
  %p_59_cast = select i1 %not_tmp_69_11, i8 -1, i8 0
  store i8 %p_59_cast, i8* %grey_frame_addr_58, align 1
  %i_2_12 = or i17 %i1, 26
  %p_lshr_f32_12_cast = call i16 @_ssdm_op_PartSelect.i16.i17.i32.i32(i17 %i_2_12, i32 1, i32 16)
  %tmp_26_12 = zext i16 %p_lshr_f32_12_cast to i64
  %yuv_frame_addr_30 = getelementptr inbounds [38400 x i32]* %yuv_frame, i64 0, i64 %tmp_26_12
  %yuv_frame_load_29 = load i32* %yuv_frame_addr_30, align 4
  %tmp_98 = trunc i32 %yuv_frame_load_29 to i8
  %yuv_struct_y2_write_assign_28 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %yuv_frame_load_29, i32 16, i32 23)
  %tmp_27_12 = zext i17 %i_2_12 to i64
  %frame_addr_58 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_27_12
  %frame_load_13 = load i16* %frame_addr_58, align 2
  %tmp_99 = trunc i16 %frame_load_13 to i8
  %pix_13_12 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %frame_load_13, i32 8, i32 15)
  %tmp_29_12 = or i17 %i1, 27
  %tmp_30_12 = zext i17 %tmp_29_12 to i64
  %frame_addr_59 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_30_12
  %frame_load_29 = load i16* %frame_addr_59, align 2
  %tmp_100 = trunc i16 %frame_load_29 to i8
  %pix_23_12 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %frame_load_29, i32 8, i32 15)
  %tmp_35_12 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %tmp_99, i8 %tmp_98)
  store i16 %tmp_35_12, i16* %frame_addr_58, align 2
  %tmp_39_12 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %tmp_100, i8 %yuv_struct_y2_write_assign_28)
  store i16 %tmp_39_12, i16* %frame_addr_59, align 2
  %tmp_40_12 = zext i8 %tmp_98 to i32
  %tmp_40_12_cast = zext i8 %tmp_98 to i9
  %tmp_41_12 = sitofp i32 %tmp_40_12 to float
  %tmp_42_12 = fmul float %tmp_41_12, 0x3FB99999A0000000
  %tmp_43_12 = zext i8 %tmp_99 to i32
  %tmp_44_12 = sitofp i32 %tmp_43_12 to float
  %tmp_45_12 = fmul float %tmp_44_12, 0x3FC99999A0000000
  %tmp_46_12 = fadd float %tmp_42_12, %tmp_45_12
  %tmp_47_12 = zext i8 %pix_13_12 to i32
  %tmp_48_12 = sitofp i32 %tmp_47_12 to float
  %tmp_49_12 = fmul float %tmp_48_12, 0x3FE6666660000000
  %tmp_50_12 = fadd float %tmp_46_12, %tmp_49_12
  %temp_1_12 = call fastcc i8 @backsub___hls_fptoui_float_i8(float %tmp_50_12)
  %tmp_51_12 = zext i8 %yuv_struct_y2_write_assign_28 to i32
  %tmp_51_12_cast = zext i8 %yuv_struct_y2_write_assign_28 to i9
  %tmp_52_12 = sitofp i32 %tmp_51_12 to float
  %tmp_53_12 = fmul float %tmp_52_12, 0x3FB99999A0000000
  %tmp_54_12 = zext i8 %tmp_100 to i32
  %tmp_55_12 = sitofp i32 %tmp_54_12 to float
  %tmp_56_12 = fmul float %tmp_55_12, 0x3FC99999A0000000
  %tmp_57_12 = fadd float %tmp_53_12, %tmp_56_12
  %tmp_58_12 = zext i8 %pix_23_12 to i32
  %tmp_59_12 = sitofp i32 %tmp_58_12 to float
  %tmp_60_12 = fmul float %tmp_59_12, 0x3FE6666660000000
  %tmp_61_12 = fadd float %tmp_57_12, %tmp_60_12
  %temp_2_12 = call fastcc i8 @backsub___hls_fptoui_float_i8(float %tmp_61_12)
  %tmp_62_12_cast = zext i8 %temp_1_12 to i9
  %x_assign_25 = sub i9 %tmp_40_12_cast, %tmp_62_12_cast
  %neg_i26 = sub i9 0, %x_assign_25
  %abscond_i26 = icmp sgt i9 %x_assign_25, 0
  %abs_i26 = select i1 %abscond_i26, i9 %x_assign_25, i9 %neg_i26
  %grey_frame_addr_59 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_27_12
  %not_tmp_65_12 = icmp sgt i9 %abs_i26, 14
  %p_62_cast = select i1 %not_tmp_65_12, i8 -1, i8 0
  store i8 %p_62_cast, i8* %grey_frame_addr_59, align 2
  %tmp_66_12_cast = zext i8 %temp_2_12 to i9
  %x_assign_26 = sub i9 %tmp_51_12_cast, %tmp_66_12_cast
  %neg_i27 = sub i9 0, %x_assign_26
  %abscond_i27 = icmp sgt i9 %x_assign_26, 0
  %abs_i27 = select i1 %abscond_i27, i9 %x_assign_26, i9 %neg_i27
  %grey_frame_addr_60 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_30_12
  %not_tmp_69_12 = icmp sgt i9 %abs_i27, 14
  %p_61_cast = select i1 %not_tmp_69_12, i8 -1, i8 0
  store i8 %p_61_cast, i8* %grey_frame_addr_60, align 1
  %i_2_13 = or i17 %i1, 28
  %p_lshr_f32_13_cast = call i16 @_ssdm_op_PartSelect.i16.i17.i32.i32(i17 %i_2_13, i32 1, i32 16)
  %tmp_26_13 = zext i16 %p_lshr_f32_13_cast to i64
  %yuv_frame_addr_31 = getelementptr inbounds [38400 x i32]* %yuv_frame, i64 0, i64 %tmp_26_13
  %yuv_frame_load_30 = load i32* %yuv_frame_addr_31, align 8
  %tmp_101 = trunc i32 %yuv_frame_load_30 to i8
  %yuv_struct_y2_write_assign_29 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %yuv_frame_load_30, i32 16, i32 23)
  %tmp_27_13 = zext i17 %i_2_13 to i64
  %frame_addr_60 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_27_13
  %frame_load_14 = load i16* %frame_addr_60, align 2
  %tmp_102 = trunc i16 %frame_load_14 to i8
  %pix_13_13 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %frame_load_14, i32 8, i32 15)
  %tmp_29_13 = or i17 %i1, 29
  %tmp_30_13 = zext i17 %tmp_29_13 to i64
  %frame_addr_61 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_30_13
  %frame_load_30 = load i16* %frame_addr_61, align 2
  %tmp_103 = trunc i16 %frame_load_30 to i8
  %pix_23_13 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %frame_load_30, i32 8, i32 15)
  %tmp_35_13 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %tmp_102, i8 %tmp_101)
  store i16 %tmp_35_13, i16* %frame_addr_60, align 2
  %tmp_39_13 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %tmp_103, i8 %yuv_struct_y2_write_assign_29)
  store i16 %tmp_39_13, i16* %frame_addr_61, align 2
  %tmp_40_13 = zext i8 %tmp_101 to i32
  %tmp_40_13_cast = zext i8 %tmp_101 to i9
  %tmp_41_13 = sitofp i32 %tmp_40_13 to float
  %tmp_42_13 = fmul float %tmp_41_13, 0x3FB99999A0000000
  %tmp_43_13 = zext i8 %tmp_102 to i32
  %tmp_44_13 = sitofp i32 %tmp_43_13 to float
  %tmp_45_13 = fmul float %tmp_44_13, 0x3FC99999A0000000
  %tmp_46_13 = fadd float %tmp_42_13, %tmp_45_13
  %tmp_47_13 = zext i8 %pix_13_13 to i32
  %tmp_48_13 = sitofp i32 %tmp_47_13 to float
  %tmp_49_13 = fmul float %tmp_48_13, 0x3FE6666660000000
  %tmp_50_13 = fadd float %tmp_46_13, %tmp_49_13
  %temp_1_13 = call fastcc i8 @backsub___hls_fptoui_float_i8(float %tmp_50_13)
  %tmp_51_13 = zext i8 %yuv_struct_y2_write_assign_29 to i32
  %tmp_51_13_cast = zext i8 %yuv_struct_y2_write_assign_29 to i9
  %tmp_52_13 = sitofp i32 %tmp_51_13 to float
  %tmp_53_13 = fmul float %tmp_52_13, 0x3FB99999A0000000
  %tmp_54_13 = zext i8 %tmp_103 to i32
  %tmp_55_13 = sitofp i32 %tmp_54_13 to float
  %tmp_56_13 = fmul float %tmp_55_13, 0x3FC99999A0000000
  %tmp_57_13 = fadd float %tmp_53_13, %tmp_56_13
  %tmp_58_13 = zext i8 %pix_23_13 to i32
  %tmp_59_13 = sitofp i32 %tmp_58_13 to float
  %tmp_60_13 = fmul float %tmp_59_13, 0x3FE6666660000000
  %tmp_61_13 = fadd float %tmp_57_13, %tmp_60_13
  %temp_2_13 = call fastcc i8 @backsub___hls_fptoui_float_i8(float %tmp_61_13)
  %tmp_62_13_cast = zext i8 %temp_1_13 to i9
  %x_assign_27 = sub i9 %tmp_40_13_cast, %tmp_62_13_cast
  %neg_i28 = sub i9 0, %x_assign_27
  %abscond_i28 = icmp sgt i9 %x_assign_27, 0
  %abs_i28 = select i1 %abscond_i28, i9 %x_assign_27, i9 %neg_i28
  %grey_frame_addr_61 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_27_13
  %not_tmp_65_13 = icmp sgt i9 %abs_i28, 14
  %p_64_cast = select i1 %not_tmp_65_13, i8 -1, i8 0
  store i8 %p_64_cast, i8* %grey_frame_addr_61, align 4
  %tmp_66_13_cast = zext i8 %temp_2_13 to i9
  %x_assign_28 = sub i9 %tmp_51_13_cast, %tmp_66_13_cast
  %neg_i29 = sub i9 0, %x_assign_28
  %abscond_i29 = icmp sgt i9 %x_assign_28, 0
  %abs_i29 = select i1 %abscond_i29, i9 %x_assign_28, i9 %neg_i29
  %grey_frame_addr_62 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_30_13
  %not_tmp_69_13 = icmp sgt i9 %abs_i29, 14
  %p_63_cast = select i1 %not_tmp_69_13, i8 -1, i8 0
  store i8 %p_63_cast, i8* %grey_frame_addr_62, align 1
  %i_2_14 = or i17 %i1, 30
  %p_lshr_f32_14_cast = call i16 @_ssdm_op_PartSelect.i16.i17.i32.i32(i17 %i_2_14, i32 1, i32 16)
  %tmp_26_14 = zext i16 %p_lshr_f32_14_cast to i64
  %yuv_frame_addr_32 = getelementptr inbounds [38400 x i32]* %yuv_frame, i64 0, i64 %tmp_26_14
  %yuv_frame_load_31 = load i32* %yuv_frame_addr_32, align 4
  %tmp_104 = trunc i32 %yuv_frame_load_31 to i8
  %yuv_struct_y2_write_assign_30 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %yuv_frame_load_31, i32 16, i32 23)
  %tmp_27_14 = zext i17 %i_2_14 to i64
  %frame_addr_62 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_27_14
  %frame_load_15 = load i16* %frame_addr_62, align 2
  %tmp_105 = trunc i16 %frame_load_15 to i8
  %pix_13_14 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %frame_load_15, i32 8, i32 15)
  %tmp_29_14 = or i17 %i1, 31
  %tmp_30_14 = zext i17 %tmp_29_14 to i64
  %frame_addr_63 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_30_14
  %frame_load_31 = load i16* %frame_addr_63, align 2
  %tmp_106 = trunc i16 %frame_load_31 to i8
  %pix_23_14 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %frame_load_31, i32 8, i32 15)
  %tmp_35_14 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %tmp_105, i8 %tmp_104)
  store i16 %tmp_35_14, i16* %frame_addr_62, align 2
  %tmp_39_14 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %tmp_106, i8 %yuv_struct_y2_write_assign_30)
  store i16 %tmp_39_14, i16* %frame_addr_63, align 2
  %tmp_40_14 = zext i8 %tmp_104 to i32
  %tmp_40_14_cast = zext i8 %tmp_104 to i9
  %tmp_41_14 = sitofp i32 %tmp_40_14 to float
  %tmp_42_14 = fmul float %tmp_41_14, 0x3FB99999A0000000
  %tmp_43_14 = zext i8 %tmp_105 to i32
  %tmp_44_14 = sitofp i32 %tmp_43_14 to float
  %tmp_45_14 = fmul float %tmp_44_14, 0x3FC99999A0000000
  %tmp_46_14 = fadd float %tmp_42_14, %tmp_45_14
  %tmp_47_14 = zext i8 %pix_13_14 to i32
  %tmp_48_14 = sitofp i32 %tmp_47_14 to float
  %tmp_49_14 = fmul float %tmp_48_14, 0x3FE6666660000000
  %tmp_50_14 = fadd float %tmp_46_14, %tmp_49_14
  %temp_1_14 = call fastcc i8 @backsub___hls_fptoui_float_i8(float %tmp_50_14)
  %tmp_51_14 = zext i8 %yuv_struct_y2_write_assign_30 to i32
  %tmp_51_14_cast = zext i8 %yuv_struct_y2_write_assign_30 to i9
  %tmp_52_14 = sitofp i32 %tmp_51_14 to float
  %tmp_53_14 = fmul float %tmp_52_14, 0x3FB99999A0000000
  %tmp_54_14 = zext i8 %tmp_106 to i32
  %tmp_55_14 = sitofp i32 %tmp_54_14 to float
  %tmp_56_14 = fmul float %tmp_55_14, 0x3FC99999A0000000
  %tmp_57_14 = fadd float %tmp_53_14, %tmp_56_14
  %tmp_58_14 = zext i8 %pix_23_14 to i32
  %tmp_59_14 = sitofp i32 %tmp_58_14 to float
  %tmp_60_14 = fmul float %tmp_59_14, 0x3FE6666660000000
  %tmp_61_14 = fadd float %tmp_57_14, %tmp_60_14
  %temp_2_14 = call fastcc i8 @backsub___hls_fptoui_float_i8(float %tmp_61_14)
  %tmp_62_14_cast = zext i8 %temp_1_14 to i9
  %x_assign_29 = sub i9 %tmp_40_14_cast, %tmp_62_14_cast
  %neg_i30 = sub i9 0, %x_assign_29
  %abscond_i30 = icmp sgt i9 %x_assign_29, 0
  %abs_i30 = select i1 %abscond_i30, i9 %x_assign_29, i9 %neg_i30
  %grey_frame_addr_63 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_27_14
  %not_tmp_65_14 = icmp sgt i9 %abs_i30, 14
  %p_66_cast = select i1 %not_tmp_65_14, i8 -1, i8 0
  store i8 %p_66_cast, i8* %grey_frame_addr_63, align 2
  %tmp_66_14_cast = zext i8 %temp_2_14 to i9
  %x_assign_30 = sub i9 %tmp_51_14_cast, %tmp_66_14_cast
  %neg_i31 = sub i9 0, %x_assign_30
  %abscond_i31 = icmp sgt i9 %x_assign_30, 0
  %abs_i31 = select i1 %abscond_i31, i9 %x_assign_30, i9 %neg_i31
  %grey_frame_addr_64 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_30_14
  %not_tmp_69_14 = icmp sgt i9 %abs_i31, 14
  %p_65_cast = select i1 %not_tmp_69_14, i8 -1, i8 0
  store i8 %p_65_cast, i8* %grey_frame_addr_64, align 1
  %i_2_15 = add i17 32, %i1
  br label %.preheader.0

.preheader1.0:                                    ; preds = %burst.rd.end, %.preheader1.1
  %i = phi i17 [ %i_1_15, %.preheader1.1 ], [ 0, %burst.rd.end ]
  %tmp_3 = icmp ult i17 %i, -54272
  br i1 %tmp_3, label %.preheader1.1, label %.loopexit

.preheader1.1:                                    ; preds = %.preheader1.0
  %empty_14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2400, i64 2400, i64 2400) nounwind
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1812) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  %p_lshr_f_cast = call i16 @_ssdm_op_PartSelect.i16.i17.i32.i32(i17 %i, i32 1, i32 16)
  %tmp_7 = zext i16 %p_lshr_f_cast to i64
  %yuv_frame_addr_1 = getelementptr inbounds [38400 x i32]* %yuv_frame, i64 0, i64 %tmp_7
  %yuv_frame_load = load i32* %yuv_frame_addr_1, align 16
  %tmp_41 = trunc i32 %yuv_frame_load to i8
  %yuv_struct_y2_write_assign = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %yuv_frame_load, i32 16, i32 23)
  %tmp_9 = zext i17 %i to i64
  %frame_addr = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_9
  %tmp_2 = or i17 %i, 1
  %tmp_4 = zext i17 %tmp_2 to i64
  %frame_addr_1 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_4
  %tmp_6 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %tmp_41, i8 %tmp_41)
  store i16 %tmp_6, i16* %frame_addr, align 2
  %tmp_8 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %yuv_struct_y2_write_assign, i8 %yuv_struct_y2_write_assign)
  store i16 %tmp_8, i16* %frame_addr_1, align 2
  %grey_frame_addr = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_9
  store i8 %tmp_41, i8* %grey_frame_addr, align 16
  %grey_frame_addr_1 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_4
  store i8 %yuv_struct_y2_write_assign, i8* %grey_frame_addr_1, align 1
  %empty_15 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1812, i32 %tmp_1) nounwind
  %i_1_s = or i17 %i, 2
  %p_lshr_f_1_cast = call i16 @_ssdm_op_PartSelect.i16.i17.i32.i32(i17 %i_1_s, i32 1, i32 16)
  %tmp_17_1 = zext i16 %p_lshr_f_1_cast to i64
  %yuv_frame_addr_2 = getelementptr inbounds [38400 x i32]* %yuv_frame, i64 0, i64 %tmp_17_1
  %yuv_frame_load_1 = load i32* %yuv_frame_addr_2, align 4
  %tmp_43 = trunc i32 %yuv_frame_load_1 to i8
  %yuv_struct_y2_write_assign_1 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %yuv_frame_load_1, i32 16, i32 23)
  %tmp_19_1 = zext i17 %i_1_s to i64
  %frame_addr_2 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_19_1
  %tmp_21_1 = or i17 %i, 3
  %tmp_22_1 = zext i17 %tmp_21_1 to i64
  %frame_addr_3 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_22_1
  %tmp_23_1 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %tmp_43, i8 %tmp_43)
  store i16 %tmp_23_1, i16* %frame_addr_2, align 2
  %tmp_24_1 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %yuv_struct_y2_write_assign_1, i8 %yuv_struct_y2_write_assign_1)
  store i16 %tmp_24_1, i16* %frame_addr_3, align 2
  %grey_frame_addr_2 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_19_1
  store i8 %tmp_43, i8* %grey_frame_addr_2, align 2
  %grey_frame_addr_3 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_22_1
  store i8 %yuv_struct_y2_write_assign_1, i8* %grey_frame_addr_3, align 1
  %i_1_1 = or i17 %i, 4
  %p_lshr_f_2_cast = call i16 @_ssdm_op_PartSelect.i16.i17.i32.i32(i17 %i_1_1, i32 1, i32 16)
  %tmp_17_2 = zext i16 %p_lshr_f_2_cast to i64
  %yuv_frame_addr_3 = getelementptr inbounds [38400 x i32]* %yuv_frame, i64 0, i64 %tmp_17_2
  %yuv_frame_load_2 = load i32* %yuv_frame_addr_3, align 8
  %tmp_44 = trunc i32 %yuv_frame_load_2 to i8
  %yuv_struct_y2_write_assign_2 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %yuv_frame_load_2, i32 16, i32 23)
  %tmp_19_2 = zext i17 %i_1_1 to i64
  %frame_addr_4 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_19_2
  %tmp_21_2 = or i17 %i, 5
  %tmp_22_2 = zext i17 %tmp_21_2 to i64
  %frame_addr_5 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_22_2
  %tmp_23_2 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %tmp_44, i8 %tmp_44)
  store i16 %tmp_23_2, i16* %frame_addr_4, align 2
  %tmp_24_2 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %yuv_struct_y2_write_assign_2, i8 %yuv_struct_y2_write_assign_2)
  store i16 %tmp_24_2, i16* %frame_addr_5, align 2
  %grey_frame_addr_5 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_19_2
  store i8 %tmp_44, i8* %grey_frame_addr_5, align 4
  %grey_frame_addr_6 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_22_2
  store i8 %yuv_struct_y2_write_assign_2, i8* %grey_frame_addr_6, align 1
  %i_1_2 = or i17 %i, 6
  %p_lshr_f_3_cast = call i16 @_ssdm_op_PartSelect.i16.i17.i32.i32(i17 %i_1_2, i32 1, i32 16)
  %tmp_17_3 = zext i16 %p_lshr_f_3_cast to i64
  %yuv_frame_addr_4 = getelementptr inbounds [38400 x i32]* %yuv_frame, i64 0, i64 %tmp_17_3
  %yuv_frame_load_3 = load i32* %yuv_frame_addr_4, align 4
  %tmp_45 = trunc i32 %yuv_frame_load_3 to i8
  %yuv_struct_y2_write_assign_3 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %yuv_frame_load_3, i32 16, i32 23)
  %tmp_19_3 = zext i17 %i_1_2 to i64
  %frame_addr_6 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_19_3
  %tmp_21_3 = or i17 %i, 7
  %tmp_22_3 = zext i17 %tmp_21_3 to i64
  %frame_addr_7 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_22_3
  %tmp_23_3 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %tmp_45, i8 %tmp_45)
  store i16 %tmp_23_3, i16* %frame_addr_6, align 2
  %tmp_24_3 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %yuv_struct_y2_write_assign_3, i8 %yuv_struct_y2_write_assign_3)
  store i16 %tmp_24_3, i16* %frame_addr_7, align 2
  %grey_frame_addr_16 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_19_3
  store i8 %tmp_45, i8* %grey_frame_addr_16, align 2
  %grey_frame_addr_17 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_22_3
  store i8 %yuv_struct_y2_write_assign_3, i8* %grey_frame_addr_17, align 1
  %i_1_3 = or i17 %i, 8
  %p_lshr_f_4_cast = call i16 @_ssdm_op_PartSelect.i16.i17.i32.i32(i17 %i_1_3, i32 1, i32 16)
  %tmp_17_4 = zext i16 %p_lshr_f_4_cast to i64
  %yuv_frame_addr_5 = getelementptr inbounds [38400 x i32]* %yuv_frame, i64 0, i64 %tmp_17_4
  %yuv_frame_load_4 = load i32* %yuv_frame_addr_5, align 16
  %tmp_46 = trunc i32 %yuv_frame_load_4 to i8
  %yuv_struct_y2_write_assign_4 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %yuv_frame_load_4, i32 16, i32 23)
  %tmp_19_4 = zext i17 %i_1_3 to i64
  %frame_addr_8 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_19_4
  %tmp_21_4 = or i17 %i, 9
  %tmp_22_4 = zext i17 %tmp_21_4 to i64
  %frame_addr_9 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_22_4
  %tmp_23_4 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %tmp_46, i8 %tmp_46)
  store i16 %tmp_23_4, i16* %frame_addr_8, align 2
  %tmp_24_4 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %yuv_struct_y2_write_assign_4, i8 %yuv_struct_y2_write_assign_4)
  store i16 %tmp_24_4, i16* %frame_addr_9, align 2
  %grey_frame_addr_18 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_19_4
  store i8 %tmp_46, i8* %grey_frame_addr_18, align 8
  %grey_frame_addr_19 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_22_4
  store i8 %yuv_struct_y2_write_assign_4, i8* %grey_frame_addr_19, align 1
  %i_1_4 = or i17 %i, 10
  %p_lshr_f_5_cast = call i16 @_ssdm_op_PartSelect.i16.i17.i32.i32(i17 %i_1_4, i32 1, i32 16)
  %tmp_17_5 = zext i16 %p_lshr_f_5_cast to i64
  %yuv_frame_addr_6 = getelementptr inbounds [38400 x i32]* %yuv_frame, i64 0, i64 %tmp_17_5
  %yuv_frame_load_5 = load i32* %yuv_frame_addr_6, align 4
  %tmp_47 = trunc i32 %yuv_frame_load_5 to i8
  %yuv_struct_y2_write_assign_5 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %yuv_frame_load_5, i32 16, i32 23)
  %tmp_19_5 = zext i17 %i_1_4 to i64
  %frame_addr_10 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_19_5
  %tmp_21_5 = or i17 %i, 11
  %tmp_22_5 = zext i17 %tmp_21_5 to i64
  %frame_addr_11 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_22_5
  %tmp_23_5 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %tmp_47, i8 %tmp_47)
  store i16 %tmp_23_5, i16* %frame_addr_10, align 2
  %tmp_24_5 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %yuv_struct_y2_write_assign_5, i8 %yuv_struct_y2_write_assign_5)
  store i16 %tmp_24_5, i16* %frame_addr_11, align 2
  %grey_frame_addr_20 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_19_5
  store i8 %tmp_47, i8* %grey_frame_addr_20, align 2
  %grey_frame_addr_21 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_22_5
  store i8 %yuv_struct_y2_write_assign_5, i8* %grey_frame_addr_21, align 1
  %i_1_5 = or i17 %i, 12
  %p_lshr_f_6_cast = call i16 @_ssdm_op_PartSelect.i16.i17.i32.i32(i17 %i_1_5, i32 1, i32 16)
  %tmp_17_6 = zext i16 %p_lshr_f_6_cast to i64
  %yuv_frame_addr_7 = getelementptr inbounds [38400 x i32]* %yuv_frame, i64 0, i64 %tmp_17_6
  %yuv_frame_load_6 = load i32* %yuv_frame_addr_7, align 8
  %tmp_48 = trunc i32 %yuv_frame_load_6 to i8
  %yuv_struct_y2_write_assign_6 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %yuv_frame_load_6, i32 16, i32 23)
  %tmp_19_6 = zext i17 %i_1_5 to i64
  %frame_addr_12 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_19_6
  %tmp_21_6 = or i17 %i, 13
  %tmp_22_6 = zext i17 %tmp_21_6 to i64
  %frame_addr_13 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_22_6
  %tmp_23_6 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %tmp_48, i8 %tmp_48)
  store i16 %tmp_23_6, i16* %frame_addr_12, align 2
  %tmp_24_6 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %yuv_struct_y2_write_assign_6, i8 %yuv_struct_y2_write_assign_6)
  store i16 %tmp_24_6, i16* %frame_addr_13, align 2
  %grey_frame_addr_22 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_19_6
  store i8 %tmp_48, i8* %grey_frame_addr_22, align 4
  %grey_frame_addr_23 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_22_6
  store i8 %yuv_struct_y2_write_assign_6, i8* %grey_frame_addr_23, align 1
  %i_1_6 = or i17 %i, 14
  %p_lshr_f_7_cast = call i16 @_ssdm_op_PartSelect.i16.i17.i32.i32(i17 %i_1_6, i32 1, i32 16)
  %tmp_17_7 = zext i16 %p_lshr_f_7_cast to i64
  %yuv_frame_addr_8 = getelementptr inbounds [38400 x i32]* %yuv_frame, i64 0, i64 %tmp_17_7
  %yuv_frame_load_7 = load i32* %yuv_frame_addr_8, align 4
  %tmp_49 = trunc i32 %yuv_frame_load_7 to i8
  %yuv_struct_y2_write_assign_7 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %yuv_frame_load_7, i32 16, i32 23)
  %tmp_19_7 = zext i17 %i_1_6 to i64
  %frame_addr_14 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_19_7
  %tmp_21_7 = or i17 %i, 15
  %tmp_22_7 = zext i17 %tmp_21_7 to i64
  %frame_addr_15 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_22_7
  %tmp_23_7 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %tmp_49, i8 %tmp_49)
  store i16 %tmp_23_7, i16* %frame_addr_14, align 2
  %tmp_24_7 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %yuv_struct_y2_write_assign_7, i8 %yuv_struct_y2_write_assign_7)
  store i16 %tmp_24_7, i16* %frame_addr_15, align 2
  %grey_frame_addr_7 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_19_7
  store i8 %tmp_49, i8* %grey_frame_addr_7, align 2
  %grey_frame_addr_24 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_22_7
  store i8 %yuv_struct_y2_write_assign_7, i8* %grey_frame_addr_24, align 1
  %i_1_7 = or i17 %i, 16
  %p_lshr_f_8_cast = call i16 @_ssdm_op_PartSelect.i16.i17.i32.i32(i17 %i_1_7, i32 1, i32 16)
  %tmp_17_8 = zext i16 %p_lshr_f_8_cast to i64
  %yuv_frame_addr_9 = getelementptr inbounds [38400 x i32]* %yuv_frame, i64 0, i64 %tmp_17_8
  %yuv_frame_load_8 = load i32* %yuv_frame_addr_9, align 16
  %tmp_50 = trunc i32 %yuv_frame_load_8 to i8
  %yuv_struct_y2_write_assign_8 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %yuv_frame_load_8, i32 16, i32 23)
  %tmp_19_8 = zext i17 %i_1_7 to i64
  %frame_addr_16 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_19_8
  %tmp_21_8 = or i17 %i, 17
  %tmp_22_8 = zext i17 %tmp_21_8 to i64
  %frame_addr_17 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_22_8
  %tmp_23_8 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %tmp_50, i8 %tmp_50)
  store i16 %tmp_23_8, i16* %frame_addr_16, align 2
  %tmp_24_8 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %yuv_struct_y2_write_assign_8, i8 %yuv_struct_y2_write_assign_8)
  store i16 %tmp_24_8, i16* %frame_addr_17, align 2
  %grey_frame_addr_8 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_19_8
  store i8 %tmp_50, i8* %grey_frame_addr_8, align 16
  %grey_frame_addr_25 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_22_8
  store i8 %yuv_struct_y2_write_assign_8, i8* %grey_frame_addr_25, align 1
  %i_1_8 = or i17 %i, 18
  %p_lshr_f_9_cast = call i16 @_ssdm_op_PartSelect.i16.i17.i32.i32(i17 %i_1_8, i32 1, i32 16)
  %tmp_17_9 = zext i16 %p_lshr_f_9_cast to i64
  %yuv_frame_addr_10 = getelementptr inbounds [38400 x i32]* %yuv_frame, i64 0, i64 %tmp_17_9
  %yuv_frame_load_9 = load i32* %yuv_frame_addr_10, align 4
  %tmp_51 = trunc i32 %yuv_frame_load_9 to i8
  %yuv_struct_y2_write_assign_9 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %yuv_frame_load_9, i32 16, i32 23)
  %tmp_19_9 = zext i17 %i_1_8 to i64
  %frame_addr_18 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_19_9
  %tmp_21_9 = or i17 %i, 19
  %tmp_22_9 = zext i17 %tmp_21_9 to i64
  %frame_addr_19 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_22_9
  %tmp_23_9 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %tmp_51, i8 %tmp_51)
  store i16 %tmp_23_9, i16* %frame_addr_18, align 2
  %tmp_24_9 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %yuv_struct_y2_write_assign_9, i8 %yuv_struct_y2_write_assign_9)
  store i16 %tmp_24_9, i16* %frame_addr_19, align 2
  %grey_frame_addr_9 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_19_9
  store i8 %tmp_51, i8* %grey_frame_addr_9, align 2
  %grey_frame_addr_26 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_22_9
  store i8 %yuv_struct_y2_write_assign_9, i8* %grey_frame_addr_26, align 1
  %i_1_9 = or i17 %i, 20
  %p_lshr_f_cast_16 = call i16 @_ssdm_op_PartSelect.i16.i17.i32.i32(i17 %i_1_9, i32 1, i32 16)
  %tmp_17_s = zext i16 %p_lshr_f_cast_16 to i64
  %yuv_frame_addr_11 = getelementptr inbounds [38400 x i32]* %yuv_frame, i64 0, i64 %tmp_17_s
  %yuv_frame_load_10 = load i32* %yuv_frame_addr_11, align 8
  %tmp_52 = trunc i32 %yuv_frame_load_10 to i8
  %yuv_struct_y2_write_assign_s = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %yuv_frame_load_10, i32 16, i32 23)
  %tmp_19_s = zext i17 %i_1_9 to i64
  %frame_addr_20 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_19_s
  %tmp_21_s = or i17 %i, 21
  %tmp_22_s = zext i17 %tmp_21_s to i64
  %frame_addr_21 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_22_s
  %tmp_23_s = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %tmp_52, i8 %tmp_52)
  store i16 %tmp_23_s, i16* %frame_addr_20, align 2
  %tmp_24_s = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %yuv_struct_y2_write_assign_s, i8 %yuv_struct_y2_write_assign_s)
  store i16 %tmp_24_s, i16* %frame_addr_21, align 2
  %grey_frame_addr_10 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_19_s
  store i8 %tmp_52, i8* %grey_frame_addr_10, align 4
  %grey_frame_addr_27 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_22_s
  store i8 %yuv_struct_y2_write_assign_s, i8* %grey_frame_addr_27, align 1
  %i_1_10 = or i17 %i, 22
  %p_lshr_f_10_cast = call i16 @_ssdm_op_PartSelect.i16.i17.i32.i32(i17 %i_1_10, i32 1, i32 16)
  %tmp_17_10 = zext i16 %p_lshr_f_10_cast to i64
  %yuv_frame_addr_12 = getelementptr inbounds [38400 x i32]* %yuv_frame, i64 0, i64 %tmp_17_10
  %yuv_frame_load_11 = load i32* %yuv_frame_addr_12, align 4
  %tmp_53 = trunc i32 %yuv_frame_load_11 to i8
  %yuv_struct_y2_write_assign_10 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %yuv_frame_load_11, i32 16, i32 23)
  %tmp_19_10 = zext i17 %i_1_10 to i64
  %frame_addr_22 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_19_10
  %tmp_21_10 = or i17 %i, 23
  %tmp_22_10 = zext i17 %tmp_21_10 to i64
  %frame_addr_23 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_22_10
  %tmp_23_10 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %tmp_53, i8 %tmp_53)
  store i16 %tmp_23_10, i16* %frame_addr_22, align 2
  %tmp_24_10 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %yuv_struct_y2_write_assign_10, i8 %yuv_struct_y2_write_assign_10)
  store i16 %tmp_24_10, i16* %frame_addr_23, align 2
  %grey_frame_addr_11 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_19_10
  store i8 %tmp_53, i8* %grey_frame_addr_11, align 2
  %grey_frame_addr_28 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_22_10
  store i8 %yuv_struct_y2_write_assign_10, i8* %grey_frame_addr_28, align 1
  %i_1_11 = or i17 %i, 24
  %p_lshr_f_11_cast = call i16 @_ssdm_op_PartSelect.i16.i17.i32.i32(i17 %i_1_11, i32 1, i32 16)
  %tmp_17_11 = zext i16 %p_lshr_f_11_cast to i64
  %yuv_frame_addr_13 = getelementptr inbounds [38400 x i32]* %yuv_frame, i64 0, i64 %tmp_17_11
  %yuv_frame_load_12 = load i32* %yuv_frame_addr_13, align 16
  %tmp_54 = trunc i32 %yuv_frame_load_12 to i8
  %yuv_struct_y2_write_assign_11 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %yuv_frame_load_12, i32 16, i32 23)
  %tmp_19_11 = zext i17 %i_1_11 to i64
  %frame_addr_24 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_19_11
  %tmp_21_11 = or i17 %i, 25
  %tmp_22_11 = zext i17 %tmp_21_11 to i64
  %frame_addr_25 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_22_11
  %tmp_23_11 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %tmp_54, i8 %tmp_54)
  store i16 %tmp_23_11, i16* %frame_addr_24, align 2
  %tmp_24_11 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %yuv_struct_y2_write_assign_11, i8 %yuv_struct_y2_write_assign_11)
  store i16 %tmp_24_11, i16* %frame_addr_25, align 2
  %grey_frame_addr_12 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_19_11
  store i8 %tmp_54, i8* %grey_frame_addr_12, align 8
  %grey_frame_addr_29 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_22_11
  store i8 %yuv_struct_y2_write_assign_11, i8* %grey_frame_addr_29, align 1
  %i_1_12 = or i17 %i, 26
  %p_lshr_f_12_cast = call i16 @_ssdm_op_PartSelect.i16.i17.i32.i32(i17 %i_1_12, i32 1, i32 16)
  %tmp_17_12 = zext i16 %p_lshr_f_12_cast to i64
  %yuv_frame_addr_14 = getelementptr inbounds [38400 x i32]* %yuv_frame, i64 0, i64 %tmp_17_12
  %yuv_frame_load_13 = load i32* %yuv_frame_addr_14, align 4
  %tmp_55 = trunc i32 %yuv_frame_load_13 to i8
  %yuv_struct_y2_write_assign_12 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %yuv_frame_load_13, i32 16, i32 23)
  %tmp_19_12 = zext i17 %i_1_12 to i64
  %frame_addr_26 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_19_12
  %tmp_21_12 = or i17 %i, 27
  %tmp_22_12 = zext i17 %tmp_21_12 to i64
  %frame_addr_27 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_22_12
  %tmp_23_12 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %tmp_55, i8 %tmp_55)
  store i16 %tmp_23_12, i16* %frame_addr_26, align 2
  %tmp_24_12 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %yuv_struct_y2_write_assign_12, i8 %yuv_struct_y2_write_assign_12)
  store i16 %tmp_24_12, i16* %frame_addr_27, align 2
  %grey_frame_addr_13 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_19_12
  store i8 %tmp_55, i8* %grey_frame_addr_13, align 2
  %grey_frame_addr_30 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_22_12
  store i8 %yuv_struct_y2_write_assign_12, i8* %grey_frame_addr_30, align 1
  %i_1_13 = or i17 %i, 28
  %p_lshr_f_13_cast = call i16 @_ssdm_op_PartSelect.i16.i17.i32.i32(i17 %i_1_13, i32 1, i32 16)
  %tmp_17_13 = zext i16 %p_lshr_f_13_cast to i64
  %yuv_frame_addr_15 = getelementptr inbounds [38400 x i32]* %yuv_frame, i64 0, i64 %tmp_17_13
  %yuv_frame_load_14 = load i32* %yuv_frame_addr_15, align 8
  %tmp_56 = trunc i32 %yuv_frame_load_14 to i8
  %yuv_struct_y2_write_assign_13 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %yuv_frame_load_14, i32 16, i32 23)
  %tmp_19_13 = zext i17 %i_1_13 to i64
  %frame_addr_28 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_19_13
  %tmp_21_13 = or i17 %i, 29
  %tmp_22_13 = zext i17 %tmp_21_13 to i64
  %frame_addr_29 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_22_13
  %tmp_23_13 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %tmp_56, i8 %tmp_56)
  store i16 %tmp_23_13, i16* %frame_addr_28, align 2
  %tmp_24_13 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %yuv_struct_y2_write_assign_13, i8 %yuv_struct_y2_write_assign_13)
  store i16 %tmp_24_13, i16* %frame_addr_29, align 2
  %grey_frame_addr_14 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_19_13
  store i8 %tmp_56, i8* %grey_frame_addr_14, align 4
  %grey_frame_addr_31 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_22_13
  store i8 %yuv_struct_y2_write_assign_13, i8* %grey_frame_addr_31, align 1
  %i_1_14 = or i17 %i, 30
  %p_lshr_f_14_cast = call i16 @_ssdm_op_PartSelect.i16.i17.i32.i32(i17 %i_1_14, i32 1, i32 16)
  %tmp_17_14 = zext i16 %p_lshr_f_14_cast to i64
  %yuv_frame_addr_16 = getelementptr inbounds [38400 x i32]* %yuv_frame, i64 0, i64 %tmp_17_14
  %yuv_frame_load_15 = load i32* %yuv_frame_addr_16, align 4
  %tmp_57 = trunc i32 %yuv_frame_load_15 to i8
  %yuv_struct_y2_write_assign_14 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %yuv_frame_load_15, i32 16, i32 23)
  %tmp_19_14 = zext i17 %i_1_14 to i64
  %frame_addr_30 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_19_14
  %tmp_21_14 = or i17 %i, 31
  %tmp_22_14 = zext i17 %tmp_21_14 to i64
  %frame_addr_31 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_22_14
  %tmp_23_14 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %tmp_57, i8 %tmp_57)
  store i16 %tmp_23_14, i16* %frame_addr_30, align 2
  %tmp_24_14 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %yuv_struct_y2_write_assign_14, i8 %yuv_struct_y2_write_assign_14)
  store i16 %tmp_24_14, i16* %frame_addr_31, align 2
  %grey_frame_addr_15 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_19_14
  store i8 %tmp_57, i8* %grey_frame_addr_15, align 2
  %grey_frame_addr_32 = getelementptr inbounds [76800 x i8]* %grey_frame, i64 0, i64 %tmp_22_14
  store i8 %yuv_struct_y2_write_assign_14, i8* %grey_frame_addr_32, align 1
  %i_1_15 = add i17 32, %i
  br label %.preheader1.0

.loopexit:                                        ; preds = %.preheader.0, %.preheader1.0
  %empty_17 = call i32 (...)* @_ssdm_op_SpecRegionEnd([6 x i8]* @p_str1811, i32 %tmp) nounwind
  %tmp_58 = sext i32 %frame_out_read to i64
  %gmem_offset_addr = getelementptr i8* %gmem_offset, i64 %tmp_58
  %p_wr_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %gmem_offset_addr, i32 76800)
  br label %burst.wr.header

burst.wr.header:                                  ; preds = %burst.wr.body, %.loopexit
  %indvar8 = phi i17 [ 0, %.loopexit ], [ %indvar_next9, %burst.wr.body ]
  %exitcond1 = icmp eq i17 %indvar8, -54272
  %empty_18 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 76800, i64 76800, i64 76800) nounwind
  %indvar_next9 = add i17 %indvar8, 1
  br i1 %exitcond1, label %burst.wr.end, label %burst.wr.body

burst.wr.body:                                    ; preds = %burst.wr.header
  %burstwrite_rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin([18 x i8]* @burstwrite_OC_region_str) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2)
  %empty_19 = call i32 (...)* @_ssdm_op_SpecLoopName([18 x i8]* @memcpy_OC_frame_out_OC_str) nounwind
  %tmp_42 = zext i17 %indvar8 to i64
  %grey_frame_addr_4 = getelementptr [76800 x i8]* %grey_frame, i64 0, i64 %tmp_42
  %grey_frame_load = load i8* %grey_frame_addr_4, align 1
  call void @_ssdm_op_Write.m_axi.i8P(i8* %gmem_offset_addr, i8 %grey_frame_load, i1 true)
  %burstwrite_rend = call i32 (...)* @_ssdm_op_SpecRegionEnd([18 x i8]* @burstwrite_OC_region_str, i32 %burstwrite_rbegin) nounwind
  br label %burst.wr.header

burst.wr.end:                                     ; preds = %burst.wr.header
  %p_wr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %gmem_offset_addr)
  ret i32 0
}

define weak i1 @_ssdm_op_WriteResp.m_axi.i8P(i8*) {
entry:
  ret i1 true
}

define weak i1 @_ssdm_op_WriteReq.m_axi.i8P(i8*, i32) {
entry:
  ret i1 true
}

define weak void @_ssdm_op_Write.m_axi.i8P(i8*, i8, i1) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecLoopName(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i1 @_ssdm_op_ReadReq.m_axi.i32P(i32*, i32) {
entry:
  ret i1 true
}

define weak i32 @_ssdm_op_Read.s_axilite.i32(i32) {
entry:
  ret i32 %0
}

define weak i1 @_ssdm_op_Read.s_axilite.i1(i1) {
entry:
  ret i1 %0
}

define weak i32 @_ssdm_op_Read.m_axi.i32P(i32*) {
entry:
  %empty = load i32* %0
  ret i32 %empty
}

define weak float @_ssdm_op_Read.ap_auto.float(float) {
entry:
  ret float %0
}

define weak i8 @_ssdm_op_PartSelect.i8.i54.i32.i32(i54, i32, i32) nounwind readnone {
entry:
  %empty = call i54 @llvm.part.select.i54(i54 %0, i32 %1, i32 %2)
  %empty_20 = trunc i54 %empty to i8
  ret i8 %empty_20
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_21 = trunc i32 %empty to i8
  ret i8 %empty_21
}

define weak i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16, i32, i32) nounwind readnone {
entry:
  %empty = call i16 @llvm.part.select.i16(i16 %0, i32 %1, i32 %2)
  %empty_22 = trunc i16 %empty to i8
  ret i8 %empty_22
}

define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_23 = trunc i32 %empty to i30
  ret i30 %empty_23
}

declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i16 @_ssdm_op_PartSelect.i16.i17.i32.i32(i17, i32, i32) nounwind readnone {
entry:
  %empty = call i17 @llvm.part.select.i17(i17 %0, i32 %1, i32 %2)
  %empty_24 = trunc i17 %empty to i16
  ret i16 %empty_24
}

declare i16 @_ssdm_op_HSub(...)

declare i16 @_ssdm_op_HMul(...)

declare i16 @_ssdm_op_HDiv(...)

declare i16 @_ssdm_op_HAdd(...)

define weak i1 @_ssdm_op_BitSelect.i1.i9.i32(i9, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i9
  %empty_25 = shl i9 1, %empty
  %empty_26 = and i9 %0, %empty_25
  %empty_27 = icmp ne i9 %empty_26, 0
  ret i1 %empty_27
}

define weak i1 @_ssdm_op_BitSelect.i1.i24.i32(i24, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i24
  %empty_28 = shl i24 1, %empty
  %empty_29 = and i24 %0, %empty_28
  %empty_30 = icmp ne i24 %empty_29, 0
  ret i1 %empty_30
}

define weak i24 @_ssdm_op_BitConcatenate.i24.i1.i23(i1, i23) nounwind readnone {
entry:
  %empty = zext i1 %0 to i24
  %empty_31 = zext i23 %1 to i24
  %empty_32 = shl i24 %empty, 23
  %empty_33 = or i24 %empty_32, %empty_31
  ret i24 %empty_33
}

define weak i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %0 to i16
  %empty_34 = zext i8 %1 to i16
  %empty_35 = shl i16 %empty, 8
  %empty_36 = or i16 %empty_35, %empty_34
  ret i16 %empty_36
}

define internal fastcc zeroext i8 @backsub___hls_fptoui_float_i8(float %x) nounwind uwtable readnone {
_ifconv:
  %x_read = call float @_ssdm_op_Read.ap_auto.float(float %x) nounwind
  %p_Val2_s = bitcast float %x_read to i32
  %loc_V = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_s, i32 23, i32 30) nounwind
  %loc_V_1 = trunc i32 %p_Val2_s to i23
  %p_Result_s = call i24 @_ssdm_op_BitConcatenate.i24.i1.i23(i1 true, i23 %loc_V_1) nounwind
  %tmp_8_i = zext i24 %p_Result_s to i54
  %tmp_i_i_cast1 = zext i8 %loc_V to i9
  %sh_assign = add i9 -127, %tmp_i_i_cast1
  %isNeg = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %sh_assign, i32 8)
  %tmp_i = sub i8 127, %loc_V
  %tmp_i_cast = sext i8 %tmp_i to i9
  %sh_assign_1 = select i1 %isNeg, i9 %tmp_i_cast, i9 %sh_assign
  %sh_assign_1_cast = sext i9 %sh_assign_1 to i32
  %sh_assign_1_cast_cast = sext i9 %sh_assign_1 to i24
  %tmp_1_i = zext i32 %sh_assign_1_cast to i54
  %tmp_2_i = lshr i24 %p_Result_s, %sh_assign_1_cast_cast
  %tmp_4_i = shl i54 %tmp_8_i, %tmp_1_i
  %tmp_109 = call i1 @_ssdm_op_BitSelect.i1.i24.i32(i24 %tmp_2_i, i32 23)
  %tmp = zext i1 %tmp_109 to i8
  %tmp_17 = call i8 @_ssdm_op_PartSelect.i8.i54.i32.i32(i54 %tmp_4_i, i32 23, i32 30)
  %result_V = select i1 %isNeg, i8 %tmp, i8 %tmp_17
  ret i8 %result_V
}

declare void @_GLOBAL__I_a1941() nounwind

declare void @_GLOBAL__I_a() nounwind

!hls.encrypted.func = !{}
!llvm.map.gv = !{!0}
!axi4.master.portmap = !{!7, !8}
!axi4.slave.bundlemap = !{!9, !10}

!0 = metadata !{metadata !1, [2 x i32]* @llvm_global_ctors_0}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !"", i32 0, i32 31}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 1, i32 1}
!7 = metadata !{metadata !"gmem", metadata !"frame_in", metadata !"READONLY"}
!8 = metadata !{metadata !"gmem_offset", metadata !"frame_out", metadata !"WRITEONLY"}
!9 = metadata !{metadata !"frame_in", metadata !""}
!10 = metadata !{metadata !"frame_out", metadata !""}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 7, metadata !13}
!13 = metadata !{metadata !14}
!14 = metadata !{metadata !"frame_out", metadata !15, metadata !"unsigned char", i32 0, i32 7}
!15 = metadata !{metadata !16}
!16 = metadata !{i32 0, i32 76799, i32 1}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 31, metadata !19}
!19 = metadata !{metadata !20}
!20 = metadata !{metadata !"frame_in", metadata !21, metadata !"unsigned int", i32 0, i32 31}
!21 = metadata !{metadata !22}
!22 = metadata !{i32 0, i32 38399, i32 1}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 15, metadata !25}
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !"frame", metadata !15, metadata !"unsigned short", i32 0, i32 15}
!27 = metadata !{metadata !28}
!28 = metadata !{i32 0, i32 0, metadata !29}
!29 = metadata !{metadata !30}
!30 = metadata !{metadata !"init", metadata !31, metadata !"bool", i32 0, i32 0}
!31 = metadata !{metadata !32}
!32 = metadata !{i32 0, i32 0, i32 0}
!33 = metadata !{metadata !34}
!34 = metadata !{i32 0, i32 31, metadata !35}
!35 = metadata !{metadata !36}
!36 = metadata !{metadata !"return", metadata !37, metadata !"int", i32 0, i32 31}
!37 = metadata !{metadata !38}
!38 = metadata !{i32 0, i32 1, i32 0}
