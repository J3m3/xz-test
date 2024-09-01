; ModuleID = 'liblzma/lzma/lzma_encoder_optimum_normal.c'
source_filename = "liblzma/lzma/lzma_encoder_optimum_normal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_optimal = type { i32, i8, i8, i32, i32, i32, i32, i32, [4 x i32] }
%struct.lzma_match = type { i32, i32 }

@lzma_rc_prices = external local_unnamed_addr constant [128 x i8], align 16
@lzma_fastpos = external local_unnamed_addr constant [8192 x i8], align 16

; Function Attrs: nounwind uwtable
define dso_local void @lzma_lzma_optimum_normal(ptr noundef %pcoder, ptr noalias noundef %mf, ptr noalias nocapture noundef writeonly %back_res, ptr noalias nocapture noundef writeonly %len_res, i32 noundef %position) local_unnamed_addr #0 !dbg !74 {
entry:
  %matches_count.i = alloca i32, align 4, !DIAssignID !239
    #dbg_assign(i1 undef, !240, !DIExpression(), !239, ptr %matches_count.i, !DIExpression(), !296)
  %rep_lens.i = alloca [4 x i32], align 16, !DIAssignID !298
  %reps = alloca [4 x i32], align 16, !DIAssignID !299
    #dbg_assign(i1 undef, !237, !DIExpression(), !299, ptr %reps, !DIExpression(), !300)
    #dbg_value(ptr %pcoder, !126, !DIExpression(), !300)
    #dbg_value(ptr %mf, !127, !DIExpression(), !300)
    #dbg_value(ptr %back_res, !128, !DIExpression(), !300)
    #dbg_value(ptr %len_res, !129, !DIExpression(), !300)
    #dbg_value(i32 %position, !130, !DIExpression(), !300)
    #dbg_value(ptr %pcoder, !131, !DIExpression(), !300)
  %opts_end_index = getelementptr inbounds i8, ptr %pcoder, i64 69340, !dbg !301
  %0 = load i32, ptr %opts_end_index, align 4, !dbg !301
  %opts_current_index = getelementptr inbounds i8, ptr %pcoder, i64 69344, !dbg !303
  %1 = load i32, ptr %opts_current_index, align 8, !dbg !303
  %cmp.not = icmp eq i32 %0, %1, !dbg !304
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !305

if.then:                                          ; preds = %entry
  %opts = getelementptr inbounds i8, ptr %pcoder, i64 69348, !dbg !306
  %idxprom = zext i32 %1 to i64, !dbg !308
  %pos_prev = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts, i64 0, i64 %idxprom, i32 6, !dbg !309
  %2 = load i32, ptr %pos_prev, align 4, !dbg !309
  %sub = sub i32 %2, %1, !dbg !310
  store i32 %sub, ptr %len_res, align 4, !dbg !311
  %back_prev = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts, i64 0, i64 %idxprom, i32 7, !dbg !312
  %3 = load i32, ptr %back_prev, align 4, !dbg !312
  store i32 %3, ptr %back_res, align 4, !dbg !313
  store i32 %2, ptr %opts_current_index, align 8, !dbg !314
  br label %cleanup45, !dbg !315

if.end:                                           ; preds = %entry
  %read_ahead = getelementptr inbounds i8, ptr %mf, i64 28, !dbg !316
  %4 = load i32, ptr %read_ahead, align 4, !dbg !316
  %cmp13 = icmp eq i32 %4, 0, !dbg !318
  br i1 %cmp13, label %if.then14, label %if.end21.thread, !dbg !319

if.end21.thread:                                  ; preds = %if.end
  tail call void @llvm.experimental.noalias.scope.decl(metadata !320), !dbg !323
    #dbg_assign(i1 undef, !259, !DIExpression(), !298, ptr %rep_lens.i, !DIExpression(), !296)
    #dbg_value(ptr %pcoder, !245, !DIExpression(), !296)
    #dbg_value(ptr %mf, !246, !DIExpression(), !296)
    #dbg_value(ptr %back_res, !247, !DIExpression(), !296)
    #dbg_value(ptr %len_res, !248, !DIExpression(), !296)
    #dbg_value(i32 %position, !249, !DIExpression(), !296)
    #dbg_value(ptr %pcoder, !250, !DIExpression(), !296)
  %nice_len1.i328 = getelementptr inbounds i8, ptr %mf, i64 96, !dbg !324
  %5 = load i32, ptr %nice_len1.i328, align 8, !dbg !324, !alias.scope !320, !noalias !325
    #dbg_value(i32 %5, !251, !DIExpression(), !296)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %matches_count.i) #6, !dbg !328, !noalias !329
  %longest_match_length.i = getelementptr inbounds i8, ptr %pcoder, i64 2952, !dbg !330
  %6 = load i32, ptr %longest_match_length.i, align 8, !dbg !330, !noalias !333
    #dbg_value(i32 %6, !253, !DIExpression(), !296)
  %matches_count2.i = getelementptr inbounds i8, ptr %pcoder, i64 2948, !dbg !337
  %7 = load i32, ptr %matches_count2.i, align 4, !dbg !337, !noalias !333
  store i32 %7, ptr %matches_count.i, align 4, !dbg !338, !noalias !333, !DIAssignID !339
    #dbg_assign(i32 %7, !240, !DIExpression(), !339, ptr %matches_count.i, !DIExpression(), !296)
  br label %if.end.i

if.then14:                                        ; preds = %if.end
  %match_price_count = getelementptr inbounds i8, ptr %pcoder, i64 69268, !dbg !340
  %8 = load i32, ptr %match_price_count, align 4, !dbg !340
  %cmp15 = icmp ugt i32 %8, 127, !dbg !343
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !344

if.then16:                                        ; preds = %if.then14
    #dbg_value(ptr %pcoder, !345, !DIExpression(), !373)
    #dbg_value(ptr %pcoder, !350, !DIExpression(), !373)
    #dbg_value(i32 0, !351, !DIExpression(), !375)
  %pos_slot_prices1.i = getelementptr inbounds i8, ptr %pcoder, i64 66192
  %dist_table_size.i = getelementptr inbounds i8, ptr %pcoder, i64 69264
  %distances_prices.i = getelementptr inbounds i8, ptr %pcoder, i64 67216
  %pos_slot6.i = getelementptr inbounds i8, ptr %pcoder, i64 28412
    #dbg_value(i64 0, !351, !DIExpression(), !375)
    #dbg_value(ptr %pos_slot_prices1.i, !353, !DIExpression(), !376)
    #dbg_value(i32 0, !357, !DIExpression(), !377)
  %9 = load i32, ptr %dist_table_size.i, align 8, !dbg !378
  %cmp3132.not.i = icmp eq i32 %9, 0, !dbg !380
  br i1 %cmp3132.not.i, label %for.cond25.preheader.i, label %for.body5.i, !dbg !381

for.cond13.preheader.i:                           ; preds = %rc_bittree_price.exit.i
    #dbg_value(i32 14, !359, !DIExpression(), !382)
  %cmp15134.i = icmp ugt i32 %14, 14, !dbg !383
  br i1 %cmp15134.i, label %for.body17.i, label %for.cond25.preheader.i, !dbg !385

for.body5.i:                                      ; preds = %if.then16, %rc_bittree_price.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %rc_bittree_price.exit.i ], [ 0, %if.then16 ]
    #dbg_value(i64 %indvars.iv.i, !357, !DIExpression(), !377)
    #dbg_value(ptr %pos_slot6.i, !386, !DIExpression(), !400)
    #dbg_value(i32 6, !395, !DIExpression(), !400)
    #dbg_value(i64 %indvars.iv.i, !396, !DIExpression(), !400)
    #dbg_value(i32 0, !397, !DIExpression(), !400)
  %10 = trunc nuw i64 %indvars.iv.i to i32, !dbg !402
  %add.i.i = add i32 %10, 64, !dbg !402
    #dbg_value(i32 %add.i.i, !396, !DIExpression(), !400)
  br label %do.body.i.i, !dbg !403

do.body.i.i:                                      ; preds = %do.body.i.i, %for.body5.i
  %price.0.i.i = phi i32 [ 0, %for.body5.i ], [ %add1.i.i, %do.body.i.i ], !dbg !400
  %symbol.addr.0.i.i = phi i32 [ %add.i.i, %for.body5.i ], [ %shr.i.i, %do.body.i.i ], !dbg !400
    #dbg_value(i32 %symbol.addr.0.i.i, !396, !DIExpression(), !400)
    #dbg_value(i32 %price.0.i.i, !397, !DIExpression(), !400)
  %and.i.i = and i32 %symbol.addr.0.i.i, 1, !dbg !404
    #dbg_value(i32 %and.i.i, !398, !DIExpression(), !405)
  %shr.i.i = lshr i32 %symbol.addr.0.i.i, 1, !dbg !406
    #dbg_value(i32 %shr.i.i, !396, !DIExpression(), !400)
  %idxprom.i.i = zext nneg i32 %shr.i.i to i64, !dbg !407
  %arrayidx.i.i = getelementptr inbounds i16, ptr %pos_slot6.i, i64 %idxprom.i.i, !dbg !407
  %11 = load i16, ptr %arrayidx.i.i, align 2, !dbg !407
    #dbg_value(i16 %11, !408, !DIExpression(), !414)
    #dbg_value(i32 %and.i.i, !413, !DIExpression(), !414)
  %conv.i.i.i = zext i16 %11 to i64, !dbg !416
  %12 = icmp eq i32 %and.i.i, 0, !dbg !417
  %and.i.i.i = select i1 %12, i64 0, i64 2032, !dbg !417
  %xor.i.i.i = xor i64 %and.i.i.i, %conv.i.i.i, !dbg !418
  %shr.i.i.i = lshr i64 %xor.i.i.i, 4, !dbg !419
  %arrayidx.i.i.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i.i, !dbg !420
  %13 = load i8, ptr %arrayidx.i.i.i, align 1, !dbg !420
  %conv1.i.i.i = zext i8 %13 to i32, !dbg !420
  %add1.i.i = add i32 %price.0.i.i, %conv1.i.i.i, !dbg !421
    #dbg_value(i32 %add1.i.i, !397, !DIExpression(), !400)
  %cmp.not.i.i = icmp eq i32 %shr.i.i, 1, !dbg !422
  br i1 %cmp.not.i.i, label %rc_bittree_price.exit.i, label %do.body.i.i, !dbg !423, !llvm.loop !424

rc_bittree_price.exit.i:                          ; preds = %do.body.i.i
  %arrayidx11.i = getelementptr inbounds i32, ptr %pos_slot_prices1.i, i64 %indvars.iv.i, !dbg !426
  store i32 %add1.i.i, ptr %arrayidx11.i, align 4, !dbg !427
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !428
    #dbg_value(i64 %indvars.iv.next.i, !357, !DIExpression(), !377)
  %14 = load i32, ptr %dist_table_size.i, align 8, !dbg !378
  %15 = zext i32 %14 to i64, !dbg !380
  %cmp3.i = icmp ult i64 %indvars.iv.next.i, %15, !dbg !380
  br i1 %cmp3.i, label %for.body5.i, label %for.cond13.preheader.i, !dbg !381, !llvm.loop !429

for.cond25.preheader.i:                           ; preds = %for.body17.i, %for.cond13.preheader.i, %if.then16
  %16 = phi i32 [ %14, %for.cond13.preheader.i ], [ 0, %if.then16 ], [ %21, %for.body17.i ], !dbg !378
    #dbg_value(i64 0, !361, !DIExpression(), !431)
    #dbg_value(i64 1, !361, !DIExpression(), !431)
    #dbg_value(i64 2, !361, !DIExpression(), !431)
    #dbg_value(i64 3, !361, !DIExpression(), !431)
  %17 = load <4 x i32>, ptr %pos_slot_prices1.i, align 4, !dbg !432
  store <4 x i32> %17, ptr %distances_prices.i, align 4, !dbg !434
    #dbg_value(i64 4, !361, !DIExpression(), !431)
    #dbg_value(i64 1, !351, !DIExpression(), !375)
  %arrayidx.1.i = getelementptr inbounds i8, ptr %pcoder, i64 66448, !dbg !435
    #dbg_value(ptr %arrayidx.1.i, !353, !DIExpression(), !376)
    #dbg_value(i32 0, !357, !DIExpression(), !377)
  %cmp3132.not.1.i = icmp eq i32 %16, 0, !dbg !380
  br i1 %cmp3132.not.1.i, label %for.cond25.preheader.1.i, label %for.body5.lr.ph.1.i, !dbg !381

for.body17.i:                                     ; preds = %for.cond13.preheader.i, %for.body17.i
  %indvars.iv141.i = phi i64 [ %indvars.iv.next142.i, %for.body17.i ], [ 14, %for.cond13.preheader.i ]
    #dbg_value(i64 %indvars.iv141.i, !359, !DIExpression(), !382)
    #dbg_value(i64 %indvars.iv141.i, !436, !DIExpression(DW_OP_constu, 1, DW_OP_shr, DW_OP_plus_uconst, 268435451, DW_OP_stack_value), !441)
  %18 = trunc nuw i64 %indvars.iv141.i to i32, !dbg !443
  %19 = shl i32 %18, 3, !dbg !443
  %sub18.i = and i32 %19, -16, !dbg !443
  %arrayidx21.i = getelementptr inbounds i32, ptr %pos_slot_prices1.i, i64 %indvars.iv141.i, !dbg !444
  %20 = load i32, ptr %arrayidx21.i, align 4, !dbg !445
  %shl.i.i = add i32 %20, -80, !dbg !443
  %add.i = add i32 %shl.i.i, %sub18.i, !dbg !445
  store i32 %add.i, ptr %arrayidx21.i, align 4, !dbg !445
  %indvars.iv.next142.i = add nuw nsw i64 %indvars.iv141.i, 1, !dbg !446
    #dbg_value(i64 %indvars.iv.next142.i, !359, !DIExpression(), !382)
  %21 = load i32, ptr %dist_table_size.i, align 8, !dbg !447
  %22 = zext i32 %21 to i64, !dbg !383
  %cmp15.i = icmp ult i64 %indvars.iv.next142.i, %22, !dbg !383
  br i1 %cmp15.i, label %for.body17.i, label %for.cond25.preheader.i, !dbg !385, !llvm.loop !448

for.body5.lr.ph.1.i:                              ; preds = %for.cond25.preheader.i
  %arrayidx8.1.i = getelementptr inbounds i8, ptr %pcoder, i64 28540
  br label %for.body5.1.i, !dbg !381

for.body5.1.i:                                    ; preds = %rc_bittree_price.exit.1.i, %for.body5.lr.ph.1.i
  %indvars.iv.1.i = phi i64 [ 0, %for.body5.lr.ph.1.i ], [ %indvars.iv.next.1.i, %rc_bittree_price.exit.1.i ]
    #dbg_value(i64 %indvars.iv.1.i, !357, !DIExpression(), !377)
    #dbg_value(ptr %arrayidx8.1.i, !386, !DIExpression(), !400)
    #dbg_value(i32 6, !395, !DIExpression(), !400)
    #dbg_value(i64 %indvars.iv.1.i, !396, !DIExpression(), !400)
    #dbg_value(i32 0, !397, !DIExpression(), !400)
  %23 = trunc nuw i64 %indvars.iv.1.i to i32, !dbg !402
  %add.i.1.i = add i32 %23, 64, !dbg !402
    #dbg_value(i32 %add.i.1.i, !396, !DIExpression(), !400)
  br label %do.body.i.1.i, !dbg !403

do.body.i.1.i:                                    ; preds = %do.body.i.1.i, %for.body5.1.i
  %price.0.i.1.i = phi i32 [ 0, %for.body5.1.i ], [ %add1.i.1.i, %do.body.i.1.i ], !dbg !400
  %symbol.addr.0.i.1.i = phi i32 [ %add.i.1.i, %for.body5.1.i ], [ %shr.i.1.i, %do.body.i.1.i ], !dbg !400
    #dbg_value(i32 %symbol.addr.0.i.1.i, !396, !DIExpression(), !400)
    #dbg_value(i32 %price.0.i.1.i, !397, !DIExpression(), !400)
  %and.i.1.i = and i32 %symbol.addr.0.i.1.i, 1, !dbg !404
    #dbg_value(i32 %and.i.1.i, !398, !DIExpression(), !405)
  %shr.i.1.i = lshr i32 %symbol.addr.0.i.1.i, 1, !dbg !406
    #dbg_value(i32 %shr.i.1.i, !396, !DIExpression(), !400)
  %idxprom.i.1.i = zext nneg i32 %shr.i.1.i to i64, !dbg !407
  %arrayidx.i.1.i = getelementptr inbounds i16, ptr %arrayidx8.1.i, i64 %idxprom.i.1.i, !dbg !407
  %24 = load i16, ptr %arrayidx.i.1.i, align 2, !dbg !407
    #dbg_value(i16 %24, !408, !DIExpression(), !414)
    #dbg_value(i32 %and.i.1.i, !413, !DIExpression(), !414)
  %conv.i.i.1.i = zext i16 %24 to i64, !dbg !416
  %25 = icmp eq i32 %and.i.1.i, 0, !dbg !417
  %and.i.i.1.i = select i1 %25, i64 0, i64 2032, !dbg !417
  %xor.i.i.1.i = xor i64 %and.i.i.1.i, %conv.i.i.1.i, !dbg !418
  %shr.i.i.1.i = lshr i64 %xor.i.i.1.i, 4, !dbg !419
  %arrayidx.i.i.1.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i.1.i, !dbg !420
  %26 = load i8, ptr %arrayidx.i.i.1.i, align 1, !dbg !420
  %conv1.i.i.1.i = zext i8 %26 to i32, !dbg !420
  %add1.i.1.i = add i32 %price.0.i.1.i, %conv1.i.i.1.i, !dbg !421
    #dbg_value(i32 %add1.i.1.i, !397, !DIExpression(), !400)
  %cmp.not.i.1.i = icmp eq i32 %shr.i.1.i, 1, !dbg !422
  br i1 %cmp.not.i.1.i, label %rc_bittree_price.exit.1.i, label %do.body.i.1.i, !dbg !423, !llvm.loop !450

rc_bittree_price.exit.1.i:                        ; preds = %do.body.i.1.i
  %arrayidx11.1.i = getelementptr inbounds i32, ptr %arrayidx.1.i, i64 %indvars.iv.1.i, !dbg !426
  store i32 %add1.i.1.i, ptr %arrayidx11.1.i, align 4, !dbg !427
  %indvars.iv.next.1.i = add nuw nsw i64 %indvars.iv.1.i, 1, !dbg !428
    #dbg_value(i64 %indvars.iv.next.1.i, !357, !DIExpression(), !377)
  %27 = load i32, ptr %dist_table_size.i, align 8, !dbg !378
  %28 = zext i32 %27 to i64, !dbg !380
  %cmp3.1.i = icmp ult i64 %indvars.iv.next.1.i, %28, !dbg !380
  br i1 %cmp3.1.i, label %for.body5.1.i, label %for.cond13.preheader.1.i, !dbg !381, !llvm.loop !451

for.cond13.preheader.1.i:                         ; preds = %rc_bittree_price.exit.1.i
    #dbg_value(i32 14, !359, !DIExpression(), !382)
  %cmp15134.1.i = icmp ugt i32 %27, 14, !dbg !383
  br i1 %cmp15134.1.i, label %for.body17.1.i, label %for.cond25.preheader.1.i, !dbg !385

for.body17.1.i:                                   ; preds = %for.cond13.preheader.1.i, %for.body17.1.i
  %indvars.iv141.1.i = phi i64 [ %indvars.iv.next142.1.i, %for.body17.1.i ], [ 14, %for.cond13.preheader.1.i ]
    #dbg_value(i64 %indvars.iv141.1.i, !359, !DIExpression(), !382)
    #dbg_value(i64 %indvars.iv141.1.i, !436, !DIExpression(DW_OP_constu, 1, DW_OP_shr, DW_OP_plus_uconst, 268435451, DW_OP_stack_value), !441)
  %29 = trunc nuw i64 %indvars.iv141.1.i to i32, !dbg !443
  %30 = shl i32 %29, 3, !dbg !443
  %sub18.1.i = and i32 %30, -16, !dbg !443
  %arrayidx21.1.i = getelementptr inbounds i32, ptr %arrayidx.1.i, i64 %indvars.iv141.1.i, !dbg !444
  %31 = load i32, ptr %arrayidx21.1.i, align 4, !dbg !445
  %shl.i.1.i = add i32 %31, -80, !dbg !443
  %add.1.i = add i32 %shl.i.1.i, %sub18.1.i, !dbg !445
  store i32 %add.1.i, ptr %arrayidx21.1.i, align 4, !dbg !445
  %indvars.iv.next142.1.i = add nuw nsw i64 %indvars.iv141.1.i, 1, !dbg !446
    #dbg_value(i64 %indvars.iv.next142.1.i, !359, !DIExpression(), !382)
  %32 = load i32, ptr %dist_table_size.i, align 8, !dbg !447
  %33 = zext i32 %32 to i64, !dbg !383
  %cmp15.1.i = icmp ult i64 %indvars.iv.next142.1.i, %33, !dbg !383
  br i1 %cmp15.1.i, label %for.body17.1.i, label %for.cond25.preheader.1.i, !dbg !385, !llvm.loop !452

for.cond25.preheader.1.i:                         ; preds = %for.body17.1.i, %for.cond13.preheader.1.i, %for.cond25.preheader.i
  %34 = phi i32 [ %27, %for.cond13.preheader.1.i ], [ 0, %for.cond25.preheader.i ], [ %32, %for.body17.1.i ], !dbg !378
    #dbg_value(i64 0, !361, !DIExpression(), !431)
  %arrayidx34.1151.i = getelementptr inbounds i8, ptr %pcoder, i64 67728, !dbg !453
    #dbg_value(i64 1, !361, !DIExpression(), !431)
    #dbg_value(i64 2, !361, !DIExpression(), !431)
    #dbg_value(i64 3, !361, !DIExpression(), !431)
  %35 = load <4 x i32>, ptr %arrayidx.1.i, align 4, !dbg !432
  store <4 x i32> %35, ptr %arrayidx34.1151.i, align 4, !dbg !434
    #dbg_value(i64 4, !361, !DIExpression(), !431)
    #dbg_value(i64 2, !351, !DIExpression(), !375)
  %arrayidx.2.i = getelementptr inbounds i8, ptr %pcoder, i64 66704, !dbg !435
    #dbg_value(ptr %arrayidx.2.i, !353, !DIExpression(), !376)
    #dbg_value(i32 0, !357, !DIExpression(), !377)
  %cmp3132.not.2.i = icmp eq i32 %34, 0, !dbg !380
  br i1 %cmp3132.not.2.i, label %for.cond25.preheader.2.i, label %for.body5.lr.ph.2.i, !dbg !381

for.body5.lr.ph.2.i:                              ; preds = %for.cond25.preheader.1.i
  %arrayidx8.2.i = getelementptr inbounds i8, ptr %pcoder, i64 28668
  br label %for.body5.2.i, !dbg !381

for.body5.2.i:                                    ; preds = %rc_bittree_price.exit.2.i, %for.body5.lr.ph.2.i
  %indvars.iv.2.i = phi i64 [ 0, %for.body5.lr.ph.2.i ], [ %indvars.iv.next.2.i, %rc_bittree_price.exit.2.i ]
    #dbg_value(i64 %indvars.iv.2.i, !357, !DIExpression(), !377)
    #dbg_value(ptr %arrayidx8.2.i, !386, !DIExpression(), !400)
    #dbg_value(i32 6, !395, !DIExpression(), !400)
    #dbg_value(i64 %indvars.iv.2.i, !396, !DIExpression(), !400)
    #dbg_value(i32 0, !397, !DIExpression(), !400)
  %36 = trunc nuw i64 %indvars.iv.2.i to i32, !dbg !402
  %add.i.2.i = add i32 %36, 64, !dbg !402
    #dbg_value(i32 %add.i.2.i, !396, !DIExpression(), !400)
  br label %do.body.i.2.i, !dbg !403

do.body.i.2.i:                                    ; preds = %do.body.i.2.i, %for.body5.2.i
  %price.0.i.2.i = phi i32 [ 0, %for.body5.2.i ], [ %add1.i.2.i, %do.body.i.2.i ], !dbg !400
  %symbol.addr.0.i.2.i = phi i32 [ %add.i.2.i, %for.body5.2.i ], [ %shr.i.2.i, %do.body.i.2.i ], !dbg !400
    #dbg_value(i32 %symbol.addr.0.i.2.i, !396, !DIExpression(), !400)
    #dbg_value(i32 %price.0.i.2.i, !397, !DIExpression(), !400)
  %and.i.2.i = and i32 %symbol.addr.0.i.2.i, 1, !dbg !404
    #dbg_value(i32 %and.i.2.i, !398, !DIExpression(), !405)
  %shr.i.2.i = lshr i32 %symbol.addr.0.i.2.i, 1, !dbg !406
    #dbg_value(i32 %shr.i.2.i, !396, !DIExpression(), !400)
  %idxprom.i.2.i = zext nneg i32 %shr.i.2.i to i64, !dbg !407
  %arrayidx.i.2.i = getelementptr inbounds i16, ptr %arrayidx8.2.i, i64 %idxprom.i.2.i, !dbg !407
  %37 = load i16, ptr %arrayidx.i.2.i, align 2, !dbg !407
    #dbg_value(i16 %37, !408, !DIExpression(), !414)
    #dbg_value(i32 %and.i.2.i, !413, !DIExpression(), !414)
  %conv.i.i.2.i = zext i16 %37 to i64, !dbg !416
  %38 = icmp eq i32 %and.i.2.i, 0, !dbg !417
  %and.i.i.2.i = select i1 %38, i64 0, i64 2032, !dbg !417
  %xor.i.i.2.i = xor i64 %and.i.i.2.i, %conv.i.i.2.i, !dbg !418
  %shr.i.i.2.i = lshr i64 %xor.i.i.2.i, 4, !dbg !419
  %arrayidx.i.i.2.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i.2.i, !dbg !420
  %39 = load i8, ptr %arrayidx.i.i.2.i, align 1, !dbg !420
  %conv1.i.i.2.i = zext i8 %39 to i32, !dbg !420
  %add1.i.2.i = add i32 %price.0.i.2.i, %conv1.i.i.2.i, !dbg !421
    #dbg_value(i32 %add1.i.2.i, !397, !DIExpression(), !400)
  %cmp.not.i.2.i = icmp eq i32 %shr.i.2.i, 1, !dbg !422
  br i1 %cmp.not.i.2.i, label %rc_bittree_price.exit.2.i, label %do.body.i.2.i, !dbg !423, !llvm.loop !454

rc_bittree_price.exit.2.i:                        ; preds = %do.body.i.2.i
  %arrayidx11.2.i = getelementptr inbounds i32, ptr %arrayidx.2.i, i64 %indvars.iv.2.i, !dbg !426
  store i32 %add1.i.2.i, ptr %arrayidx11.2.i, align 4, !dbg !427
  %indvars.iv.next.2.i = add nuw nsw i64 %indvars.iv.2.i, 1, !dbg !428
    #dbg_value(i64 %indvars.iv.next.2.i, !357, !DIExpression(), !377)
  %40 = load i32, ptr %dist_table_size.i, align 8, !dbg !378
  %41 = zext i32 %40 to i64, !dbg !380
  %cmp3.2.i = icmp ult i64 %indvars.iv.next.2.i, %41, !dbg !380
  br i1 %cmp3.2.i, label %for.body5.2.i, label %for.cond13.preheader.2.i, !dbg !381, !llvm.loop !455

for.cond13.preheader.2.i:                         ; preds = %rc_bittree_price.exit.2.i
    #dbg_value(i32 14, !359, !DIExpression(), !382)
  %cmp15134.2.i = icmp ugt i32 %40, 14, !dbg !383
  br i1 %cmp15134.2.i, label %for.body17.2.i, label %for.cond25.preheader.2.i, !dbg !385

for.body17.2.i:                                   ; preds = %for.cond13.preheader.2.i, %for.body17.2.i
  %indvars.iv141.2.i = phi i64 [ %indvars.iv.next142.2.i, %for.body17.2.i ], [ 14, %for.cond13.preheader.2.i ]
    #dbg_value(i64 %indvars.iv141.2.i, !359, !DIExpression(), !382)
    #dbg_value(i64 %indvars.iv141.2.i, !436, !DIExpression(DW_OP_constu, 1, DW_OP_shr, DW_OP_plus_uconst, 268435451, DW_OP_stack_value), !441)
  %42 = trunc nuw i64 %indvars.iv141.2.i to i32, !dbg !443
  %43 = shl i32 %42, 3, !dbg !443
  %sub18.2.i = and i32 %43, -16, !dbg !443
  %arrayidx21.2.i = getelementptr inbounds i32, ptr %arrayidx.2.i, i64 %indvars.iv141.2.i, !dbg !444
  %44 = load i32, ptr %arrayidx21.2.i, align 4, !dbg !445
  %shl.i.2.i = add i32 %44, -80, !dbg !443
  %add.2.i = add i32 %shl.i.2.i, %sub18.2.i, !dbg !445
  store i32 %add.2.i, ptr %arrayidx21.2.i, align 4, !dbg !445
  %indvars.iv.next142.2.i = add nuw nsw i64 %indvars.iv141.2.i, 1, !dbg !446
    #dbg_value(i64 %indvars.iv.next142.2.i, !359, !DIExpression(), !382)
  %45 = load i32, ptr %dist_table_size.i, align 8, !dbg !447
  %46 = zext i32 %45 to i64, !dbg !383
  %cmp15.2.i = icmp ult i64 %indvars.iv.next142.2.i, %46, !dbg !383
  br i1 %cmp15.2.i, label %for.body17.2.i, label %for.cond25.preheader.2.i, !dbg !385, !llvm.loop !456

for.cond25.preheader.2.i:                         ; preds = %for.body17.2.i, %for.cond13.preheader.2.i, %for.cond25.preheader.1.i
  %47 = phi i32 [ %40, %for.cond13.preheader.2.i ], [ 0, %for.cond25.preheader.1.i ], [ %45, %for.body17.2.i ], !dbg !378
    #dbg_value(i64 0, !361, !DIExpression(), !431)
  %arrayidx34.2152.i = getelementptr inbounds i8, ptr %pcoder, i64 68240, !dbg !453
    #dbg_value(i64 1, !361, !DIExpression(), !431)
    #dbg_value(i64 2, !361, !DIExpression(), !431)
    #dbg_value(i64 3, !361, !DIExpression(), !431)
  %48 = load <4 x i32>, ptr %arrayidx.2.i, align 4, !dbg !432
  store <4 x i32> %48, ptr %arrayidx34.2152.i, align 4, !dbg !434
    #dbg_value(i64 4, !361, !DIExpression(), !431)
    #dbg_value(i64 3, !351, !DIExpression(), !375)
  %arrayidx.3.i = getelementptr inbounds i8, ptr %pcoder, i64 66960, !dbg !435
    #dbg_value(ptr %arrayidx.3.i, !353, !DIExpression(), !376)
    #dbg_value(i32 0, !357, !DIExpression(), !377)
  %cmp3132.not.3.i = icmp eq i32 %47, 0, !dbg !380
  br i1 %cmp3132.not.3.i, label %for.cond25.preheader.3.i, label %for.body5.lr.ph.3.i, !dbg !381

for.body5.lr.ph.3.i:                              ; preds = %for.cond25.preheader.2.i
  %arrayidx8.3.i = getelementptr inbounds i8, ptr %pcoder, i64 28796
  br label %for.body5.3.i, !dbg !381

for.body5.3.i:                                    ; preds = %rc_bittree_price.exit.3.i, %for.body5.lr.ph.3.i
  %indvars.iv.3.i = phi i64 [ 0, %for.body5.lr.ph.3.i ], [ %indvars.iv.next.3.i, %rc_bittree_price.exit.3.i ]
    #dbg_value(i64 %indvars.iv.3.i, !357, !DIExpression(), !377)
    #dbg_value(ptr %arrayidx8.3.i, !386, !DIExpression(), !400)
    #dbg_value(i32 6, !395, !DIExpression(), !400)
    #dbg_value(i64 %indvars.iv.3.i, !396, !DIExpression(), !400)
    #dbg_value(i32 0, !397, !DIExpression(), !400)
  %49 = trunc nuw i64 %indvars.iv.3.i to i32, !dbg !402
  %add.i.3.i = add i32 %49, 64, !dbg !402
    #dbg_value(i32 %add.i.3.i, !396, !DIExpression(), !400)
  br label %do.body.i.3.i, !dbg !403

do.body.i.3.i:                                    ; preds = %do.body.i.3.i, %for.body5.3.i
  %price.0.i.3.i = phi i32 [ 0, %for.body5.3.i ], [ %add1.i.3.i, %do.body.i.3.i ], !dbg !400
  %symbol.addr.0.i.3.i = phi i32 [ %add.i.3.i, %for.body5.3.i ], [ %shr.i.3.i, %do.body.i.3.i ], !dbg !400
    #dbg_value(i32 %symbol.addr.0.i.3.i, !396, !DIExpression(), !400)
    #dbg_value(i32 %price.0.i.3.i, !397, !DIExpression(), !400)
  %and.i.3.i = and i32 %symbol.addr.0.i.3.i, 1, !dbg !404
    #dbg_value(i32 %and.i.3.i, !398, !DIExpression(), !405)
  %shr.i.3.i = lshr i32 %symbol.addr.0.i.3.i, 1, !dbg !406
    #dbg_value(i32 %shr.i.3.i, !396, !DIExpression(), !400)
  %idxprom.i.3.i = zext nneg i32 %shr.i.3.i to i64, !dbg !407
  %arrayidx.i.3.i = getelementptr inbounds i16, ptr %arrayidx8.3.i, i64 %idxprom.i.3.i, !dbg !407
  %50 = load i16, ptr %arrayidx.i.3.i, align 2, !dbg !407
    #dbg_value(i16 %50, !408, !DIExpression(), !414)
    #dbg_value(i32 %and.i.3.i, !413, !DIExpression(), !414)
  %conv.i.i.3.i = zext i16 %50 to i64, !dbg !416
  %51 = icmp eq i32 %and.i.3.i, 0, !dbg !417
  %and.i.i.3.i = select i1 %51, i64 0, i64 2032, !dbg !417
  %xor.i.i.3.i = xor i64 %and.i.i.3.i, %conv.i.i.3.i, !dbg !418
  %shr.i.i.3.i = lshr i64 %xor.i.i.3.i, 4, !dbg !419
  %arrayidx.i.i.3.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i.3.i, !dbg !420
  %52 = load i8, ptr %arrayidx.i.i.3.i, align 1, !dbg !420
  %conv1.i.i.3.i = zext i8 %52 to i32, !dbg !420
  %add1.i.3.i = add i32 %price.0.i.3.i, %conv1.i.i.3.i, !dbg !421
    #dbg_value(i32 %add1.i.3.i, !397, !DIExpression(), !400)
  %cmp.not.i.3.i = icmp eq i32 %shr.i.3.i, 1, !dbg !422
  br i1 %cmp.not.i.3.i, label %rc_bittree_price.exit.3.i, label %do.body.i.3.i, !dbg !423, !llvm.loop !457

rc_bittree_price.exit.3.i:                        ; preds = %do.body.i.3.i
  %arrayidx11.3.i = getelementptr inbounds i32, ptr %arrayidx.3.i, i64 %indvars.iv.3.i, !dbg !426
  store i32 %add1.i.3.i, ptr %arrayidx11.3.i, align 4, !dbg !427
  %indvars.iv.next.3.i = add nuw nsw i64 %indvars.iv.3.i, 1, !dbg !428
    #dbg_value(i64 %indvars.iv.next.3.i, !357, !DIExpression(), !377)
  %53 = load i32, ptr %dist_table_size.i, align 8, !dbg !378
  %54 = zext i32 %53 to i64, !dbg !380
  %cmp3.3.i = icmp ult i64 %indvars.iv.next.3.i, %54, !dbg !380
  br i1 %cmp3.3.i, label %for.body5.3.i, label %for.cond13.preheader.3.i, !dbg !381, !llvm.loop !458

for.cond13.preheader.3.i:                         ; preds = %rc_bittree_price.exit.3.i
  %55 = icmp ugt i32 %53, 14, !dbg !383
    #dbg_value(i32 14, !359, !DIExpression(), !382)
  br i1 %55, label %for.body17.3.i, label %for.cond25.preheader.3.i, !dbg !385

for.body17.3.i:                                   ; preds = %for.cond13.preheader.3.i, %for.body17.3.i
  %indvars.iv141.3.i = phi i64 [ %indvars.iv.next142.3.i, %for.body17.3.i ], [ 14, %for.cond13.preheader.3.i ]
    #dbg_value(i64 %indvars.iv141.3.i, !359, !DIExpression(), !382)
    #dbg_value(i64 %indvars.iv141.3.i, !436, !DIExpression(DW_OP_constu, 1, DW_OP_shr, DW_OP_plus_uconst, 268435451, DW_OP_stack_value), !441)
  %56 = trunc nuw i64 %indvars.iv141.3.i to i32, !dbg !443
  %57 = shl i32 %56, 3, !dbg !443
  %sub18.3.i = and i32 %57, -16, !dbg !443
  %arrayidx21.3.i = getelementptr inbounds i32, ptr %arrayidx.3.i, i64 %indvars.iv141.3.i, !dbg !444
  %58 = load i32, ptr %arrayidx21.3.i, align 4, !dbg !445
  %shl.i.3.i = add i32 %58, -80, !dbg !443
  %add.3.i = add i32 %shl.i.3.i, %sub18.3.i, !dbg !445
  store i32 %add.3.i, ptr %arrayidx21.3.i, align 4, !dbg !445
  %indvars.iv.next142.3.i = add nuw nsw i64 %indvars.iv141.3.i, 1, !dbg !446
    #dbg_value(i64 %indvars.iv.next142.3.i, !359, !DIExpression(), !382)
  %59 = load i32, ptr %dist_table_size.i, align 8, !dbg !447
  %60 = zext i32 %59 to i64, !dbg !383
  %cmp15.3.i = icmp ult i64 %indvars.iv.next142.3.i, %60, !dbg !383
  br i1 %cmp15.3.i, label %for.body17.3.i, label %for.cond25.preheader.3.i, !dbg !385, !llvm.loop !459

for.cond25.preheader.3.i:                         ; preds = %for.body17.3.i, %for.cond13.preheader.3.i, %for.cond25.preheader.2.i
    #dbg_value(i64 0, !361, !DIExpression(), !431)
  %arrayidx34.3153.i = getelementptr inbounds i8, ptr %pcoder, i64 68752, !dbg !453
    #dbg_value(i64 1, !361, !DIExpression(), !431)
    #dbg_value(i64 2, !361, !DIExpression(), !431)
    #dbg_value(i64 3, !361, !DIExpression(), !431)
  %61 = load <4 x i32>, ptr %arrayidx.3.i, align 4, !dbg !432
  store <4 x i32> %61, ptr %arrayidx34.3153.i, align 4, !dbg !434
    #dbg_value(i64 4, !361, !DIExpression(), !431)
    #dbg_value(i64 4, !351, !DIExpression(), !375)
  %pos_special.i = getelementptr inbounds i8, ptr %pcoder, i64 28924
    #dbg_value(i32 4, !363, !DIExpression(), !460)
  br label %for.body45.i, !dbg !461

for.body45.i:                                     ; preds = %for.cond57.preheader.i, %for.cond25.preheader.3.i
  %indvars.iv157.i = phi i64 [ 4, %for.cond25.preheader.3.i ], [ %indvars.iv.next158.i, %for.cond57.preheader.i ]
    #dbg_value(i64 %indvars.iv157.i, !363, !DIExpression(), !460)
    #dbg_value(i64 %indvars.iv157.i, !462, !DIExpression(), !468)
  %arrayidx.i114.i = getelementptr inbounds [8192 x i8], ptr @lzma_fastpos, i64 0, i64 %indvars.iv157.i, !dbg !470
  %62 = load i8, ptr %arrayidx.i114.i, align 1, !dbg !470
  %conv.i.i = zext i8 %62 to i32, !dbg !470
    #dbg_value(i32 %conv.i.i, !365, !DIExpression(), !472)
  %shr48.i = lshr i32 %conv.i.i, 1, !dbg !473
  %sub49.i = add nsw i32 %shr48.i, -1, !dbg !474
    #dbg_value(i32 %sub49.i, !368, !DIExpression(), !472)
  %and.i = and i32 %conv.i.i, 1, !dbg !475
  %or.i = or disjoint i32 %and.i, 2, !dbg !476
  %shl.i = shl i32 %or.i, %sub49.i, !dbg !477
    #dbg_value(i32 %shl.i, !369, !DIExpression(), !472)
  %idx.ext.i = zext i32 %shl.i to i64, !dbg !478
  %add.ptr.i = getelementptr inbounds i16, ptr %pos_special.i, i64 %idx.ext.i, !dbg !478
  %idx.ext51.i = zext i8 %62 to i64, !dbg !479
  %idx.neg.i = sub nsw i64 0, %idx.ext51.i, !dbg !479
  %add.ptr52.i = getelementptr inbounds i16, ptr %add.ptr.i, i64 %idx.neg.i, !dbg !479
  %add.ptr53.i = getelementptr inbounds i8, ptr %add.ptr52.i, i64 -2, !dbg !480
  %63 = trunc nuw nsw i64 %indvars.iv157.i to i32, !dbg !481
  %sub54.i = sub i32 %63, %shl.i, !dbg !481
    #dbg_value(ptr %add.ptr53.i, !482, !DIExpression(), !493)
    #dbg_value(i32 %sub49.i, !487, !DIExpression(), !493)
    #dbg_value(i32 %sub54.i, !488, !DIExpression(), !493)
    #dbg_value(i32 0, !489, !DIExpression(), !493)
    #dbg_value(i32 1, !490, !DIExpression(), !493)
  %xtraiter = and i32 %sub49.i, 1, !dbg !495
  %64 = icmp eq i32 %shr48.i, 2, !dbg !495
  br i1 %64, label %for.cond57.preheader.i.unr-lcssa, label %for.body45.i.new, !dbg !495

for.body45.i.new:                                 ; preds = %for.body45.i
  %unroll_iter = and i32 %sub49.i, -2, !dbg !495
  br label %do.body.i115.i, !dbg !495

do.body.i115.i:                                   ; preds = %do.body.i115.i, %for.body45.i.new
  %symbol.addr.0.i116.i = phi i32 [ %sub54.i, %for.body45.i.new ], [ %shr.i119.i.1, %do.body.i115.i ]
  %price.0.i117.i = phi i32 [ 0, %for.body45.i.new ], [ %add.i128.i.1, %do.body.i115.i ], !dbg !493
  %model_index.0.i.i = phi i32 [ 1, %for.body45.i.new ], [ %add1.i130.i.1, %do.body.i115.i ], !dbg !493
  %niter = phi i32 [ 0, %for.body45.i.new ], [ %niter.next.1, %do.body.i115.i ]
    #dbg_value(i32 poison, !487, !DIExpression(), !493)
    #dbg_value(i32 %model_index.0.i.i, !490, !DIExpression(), !493)
    #dbg_value(i32 %price.0.i117.i, !489, !DIExpression(), !493)
    #dbg_value(i32 %symbol.addr.0.i116.i, !488, !DIExpression(), !493)
  %and.i118.i = and i32 %symbol.addr.0.i116.i, 1, !dbg !496
    #dbg_value(i32 %and.i118.i, !491, !DIExpression(), !497)
  %shr.i119.i = lshr i32 %symbol.addr.0.i116.i, 1, !dbg !498
    #dbg_value(i32 %shr.i119.i, !488, !DIExpression(), !493)
  %idxprom.i120.i = zext i32 %model_index.0.i.i to i64, !dbg !499
  %arrayidx.i121.i = getelementptr inbounds i16, ptr %add.ptr53.i, i64 %idxprom.i120.i, !dbg !499
  %65 = load i16, ptr %arrayidx.i121.i, align 2, !dbg !499
    #dbg_value(i16 %65, !408, !DIExpression(), !500)
    #dbg_value(i32 %and.i118.i, !413, !DIExpression(), !500)
  %conv.i.i122.i = zext i16 %65 to i64, !dbg !502
  %66 = icmp eq i32 %and.i118.i, 0, !dbg !503
  %and.i.i123.i = select i1 %66, i64 0, i64 2032, !dbg !503
  %xor.i.i124.i = xor i64 %and.i.i123.i, %conv.i.i122.i, !dbg !504
  %shr.i.i125.i = lshr i64 %xor.i.i124.i, 4, !dbg !505
  %arrayidx.i.i126.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i125.i, !dbg !506
  %67 = load i8, ptr %arrayidx.i.i126.i, align 1, !dbg !506
  %conv1.i.i127.i = zext i8 %67 to i32, !dbg !506
  %add.i128.i = add i32 %price.0.i117.i, %conv1.i.i127.i, !dbg !507
    #dbg_value(i32 %add.i128.i, !489, !DIExpression(), !493)
  %shl.i129.i = shl i32 %model_index.0.i.i, 1, !dbg !508
  %add1.i130.i = or disjoint i32 %shl.i129.i, %and.i118.i, !dbg !509
    #dbg_value(i32 %add1.i130.i, !490, !DIExpression(), !493)
    #dbg_value(i32 poison, !487, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !493)
  %and.i118.i.1 = and i32 %shr.i119.i, 1, !dbg !496
    #dbg_value(i32 %and.i118.i.1, !491, !DIExpression(), !497)
  %shr.i119.i.1 = lshr i32 %symbol.addr.0.i116.i, 2, !dbg !498
    #dbg_value(i32 %shr.i119.i.1, !488, !DIExpression(), !493)
  %idxprom.i120.i.1 = zext i32 %add1.i130.i to i64, !dbg !499
  %arrayidx.i121.i.1 = getelementptr inbounds i16, ptr %add.ptr53.i, i64 %idxprom.i120.i.1, !dbg !499
  %68 = load i16, ptr %arrayidx.i121.i.1, align 2, !dbg !499
    #dbg_value(i16 %68, !408, !DIExpression(), !500)
    #dbg_value(i32 %and.i118.i.1, !413, !DIExpression(), !500)
  %conv.i.i122.i.1 = zext i16 %68 to i64, !dbg !502
  %69 = icmp eq i32 %and.i118.i.1, 0, !dbg !503
  %and.i.i123.i.1 = select i1 %69, i64 0, i64 2032, !dbg !503
  %xor.i.i124.i.1 = xor i64 %and.i.i123.i.1, %conv.i.i122.i.1, !dbg !504
  %shr.i.i125.i.1 = lshr i64 %xor.i.i124.i.1, 4, !dbg !505
  %arrayidx.i.i126.i.1 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i125.i.1, !dbg !506
  %70 = load i8, ptr %arrayidx.i.i126.i.1, align 1, !dbg !506
  %conv1.i.i127.i.1 = zext i8 %70 to i32, !dbg !506
  %add.i128.i.1 = add i32 %add.i128.i, %conv1.i.i127.i.1, !dbg !507
    #dbg_value(i32 %add.i128.i.1, !489, !DIExpression(), !493)
  %shl.i129.i.1 = shl i32 %add1.i130.i, 1, !dbg !508
  %add1.i130.i.1 = or disjoint i32 %shl.i129.i.1, %and.i118.i.1, !dbg !509
    #dbg_value(i32 %add1.i130.i.1, !490, !DIExpression(), !493)
    #dbg_value(i32 poison, !487, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !493)
  %niter.next.1 = add i32 %niter, 2, !dbg !510
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter, !dbg !510
  br i1 %niter.ncmp.1, label %for.cond57.preheader.i.unr-lcssa, label %do.body.i115.i, !dbg !510, !llvm.loop !511

for.cond57.preheader.i.unr-lcssa:                 ; preds = %do.body.i115.i, %for.body45.i
  %add.i128.i.lcssa.ph = phi i32 [ poison, %for.body45.i ], [ %add.i128.i.1, %do.body.i115.i ]
  %symbol.addr.0.i116.i.unr = phi i32 [ %sub54.i, %for.body45.i ], [ %shr.i119.i.1, %do.body.i115.i ]
  %price.0.i117.i.unr = phi i32 [ 0, %for.body45.i ], [ %add.i128.i.1, %do.body.i115.i ]
  %model_index.0.i.i.unr = phi i32 [ 1, %for.body45.i ], [ %add1.i130.i.1, %do.body.i115.i ]
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !510
  br i1 %lcmp.mod.not, label %for.cond57.preheader.i, label %do.body.i115.i.epil, !dbg !510

do.body.i115.i.epil:                              ; preds = %for.cond57.preheader.i.unr-lcssa
    #dbg_value(i32 poison, !487, !DIExpression(), !493)
    #dbg_value(i32 %model_index.0.i.i.unr, !490, !DIExpression(), !493)
    #dbg_value(i32 %price.0.i117.i.unr, !489, !DIExpression(), !493)
    #dbg_value(i32 %symbol.addr.0.i116.i.unr, !488, !DIExpression(), !493)
  %and.i118.i.epil = and i32 %symbol.addr.0.i116.i.unr, 1, !dbg !496
    #dbg_value(i32 %and.i118.i.epil, !491, !DIExpression(), !497)
    #dbg_value(i32 %symbol.addr.0.i116.i.unr, !488, !DIExpression(DW_OP_constu, 1, DW_OP_shr, DW_OP_stack_value), !493)
  %idxprom.i120.i.epil = zext i32 %model_index.0.i.i.unr to i64, !dbg !499
  %arrayidx.i121.i.epil = getelementptr inbounds i16, ptr %add.ptr53.i, i64 %idxprom.i120.i.epil, !dbg !499
  %71 = load i16, ptr %arrayidx.i121.i.epil, align 2, !dbg !499
    #dbg_value(i16 %71, !408, !DIExpression(), !500)
    #dbg_value(i32 %and.i118.i.epil, !413, !DIExpression(), !500)
  %conv.i.i122.i.epil = zext i16 %71 to i64, !dbg !502
  %72 = icmp eq i32 %and.i118.i.epil, 0, !dbg !503
  %and.i.i123.i.epil = select i1 %72, i64 0, i64 2032, !dbg !503
  %xor.i.i124.i.epil = xor i64 %and.i.i123.i.epil, %conv.i.i122.i.epil, !dbg !504
  %shr.i.i125.i.epil = lshr i64 %xor.i.i124.i.epil, 4, !dbg !505
  %arrayidx.i.i126.i.epil = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i125.i.epil, !dbg !506
  %73 = load i8, ptr %arrayidx.i.i126.i.epil, align 1, !dbg !506
  %conv1.i.i127.i.epil = zext i8 %73 to i32, !dbg !506
  %add.i128.i.epil = add i32 %price.0.i117.i.unr, %conv1.i.i127.i.epil, !dbg !507
    #dbg_value(i32 %add.i128.i.epil, !489, !DIExpression(), !493)
    #dbg_value(!DIArgList(i32 %model_index.0.i.i.unr, i32 %and.i118.i.epil), !490, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !493)
    #dbg_value(i32 poison, !487, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !493)
  br label %for.cond57.preheader.i, !dbg !513

for.cond57.preheader.i:                           ; preds = %for.cond57.preheader.i.unr-lcssa, %do.body.i115.i.epil
  %add.i128.i.lcssa = phi i32 [ %add.i128.i.lcssa.ph, %for.cond57.preheader.i.unr-lcssa ], [ %add.i128.i.epil, %do.body.i115.i.epil ], !dbg !507
    #dbg_value(i64 0, !371, !DIExpression(), !515)
  %arrayidx65.i = getelementptr inbounds [4 x [64 x i32]], ptr %pos_slot_prices1.i, i64 0, i64 0, i64 %idx.ext51.i, !dbg !513
  %74 = load i32, ptr %arrayidx65.i, align 4, !dbg !513
  %add66.i = add i32 %74, %add.i128.i.lcssa, !dbg !516
  %arrayidx71.i = getelementptr inbounds [4 x [128 x i32]], ptr %distances_prices.i, i64 0, i64 0, i64 %indvars.iv157.i, !dbg !517
  store i32 %add66.i, ptr %arrayidx71.i, align 4, !dbg !518
    #dbg_value(i64 1, !371, !DIExpression(), !515)
  %arrayidx65.1.i = getelementptr inbounds [4 x [64 x i32]], ptr %pos_slot_prices1.i, i64 0, i64 1, i64 %idx.ext51.i, !dbg !513
  %75 = load i32, ptr %arrayidx65.1.i, align 4, !dbg !513
  %add66.1.i = add i32 %75, %add.i128.i.lcssa, !dbg !516
  %arrayidx71.1.i = getelementptr inbounds [4 x [128 x i32]], ptr %distances_prices.i, i64 0, i64 1, i64 %indvars.iv157.i, !dbg !517
  store i32 %add66.1.i, ptr %arrayidx71.1.i, align 4, !dbg !518
    #dbg_value(i64 2, !371, !DIExpression(), !515)
  %arrayidx65.2.i = getelementptr inbounds [4 x [64 x i32]], ptr %pos_slot_prices1.i, i64 0, i64 2, i64 %idx.ext51.i, !dbg !513
  %76 = load i32, ptr %arrayidx65.2.i, align 4, !dbg !513
  %add66.2.i = add i32 %76, %add.i128.i.lcssa, !dbg !516
  %arrayidx71.2.i = getelementptr inbounds [4 x [128 x i32]], ptr %distances_prices.i, i64 0, i64 2, i64 %indvars.iv157.i, !dbg !517
  store i32 %add66.2.i, ptr %arrayidx71.2.i, align 4, !dbg !518
    #dbg_value(i64 3, !371, !DIExpression(), !515)
  %arrayidx65.3.i = getelementptr inbounds [4 x [64 x i32]], ptr %pos_slot_prices1.i, i64 0, i64 3, i64 %idx.ext51.i, !dbg !513
  %77 = load i32, ptr %arrayidx65.3.i, align 4, !dbg !513
  %add66.3.i = add i32 %77, %add.i128.i.lcssa, !dbg !516
  %arrayidx71.3.i = getelementptr inbounds [4 x [128 x i32]], ptr %distances_prices.i, i64 0, i64 3, i64 %indvars.iv157.i, !dbg !517
  store i32 %add66.3.i, ptr %arrayidx71.3.i, align 4, !dbg !518
    #dbg_value(i64 4, !371, !DIExpression(), !515)
  %indvars.iv.next158.i = add nuw nsw i64 %indvars.iv157.i, 1, !dbg !519
    #dbg_value(i64 %indvars.iv.next158.i, !363, !DIExpression(), !460)
  %exitcond.not.i = icmp eq i64 %indvars.iv.next158.i, 128, !dbg !520
  br i1 %exitcond.not.i, label %fill_distances_prices.exit, label %for.body45.i, !dbg !461, !llvm.loop !521

fill_distances_prices.exit:                       ; preds = %for.cond57.preheader.i
  store i32 0, ptr %match_price_count, align 4, !dbg !523
  br label %if.end17, !dbg !524

if.end17:                                         ; preds = %fill_distances_prices.exit, %if.then14
  %align_price_count = getelementptr inbounds i8, ptr %pcoder, i64 69336, !dbg !525
  %78 = load i32, ptr %align_price_count, align 8, !dbg !525
  %cmp18 = icmp ugt i32 %78, 15, !dbg !527
  br i1 %cmp18, label %if.then19, label %if.end21, !dbg !528

if.then19:                                        ; preds = %if.end17
    #dbg_value(ptr %pcoder, !529, !DIExpression(), !535)
    #dbg_value(ptr %pcoder, !532, !DIExpression(), !535)
    #dbg_value(i32 0, !533, !DIExpression(), !537)
  %pos_align.i = getelementptr inbounds i8, ptr %pcoder, i64 29152
  %align_prices.i = getelementptr inbounds i8, ptr %pcoder, i64 69272
  %arrayidx.i.phi.trans.insert.i = getelementptr inbounds i8, ptr %pcoder, i64 29154
  %.pre.i = load i16, ptr %arrayidx.i.phi.trans.insert.i, align 2, !dbg !538
  %conv.i.i.i92 = zext i16 %.pre.i to i64
  br label %for.body.i, !dbg !541

for.body.i:                                       ; preds = %for.body.i, %if.then19
  %indvars.iv.i93 = phi i64 [ 0, %if.then19 ], [ %indvars.iv.next.i136, %for.body.i ]
    #dbg_value(i64 %indvars.iv.i93, !533, !DIExpression(), !537)
    #dbg_value(ptr %pos_align.i, !482, !DIExpression(), !542)
    #dbg_value(i32 4, !487, !DIExpression(), !542)
    #dbg_value(i32 1, !490, !DIExpression(), !542)
    #dbg_value(i32 0, !489, !DIExpression(), !542)
    #dbg_value(i64 %indvars.iv.i93, !488, !DIExpression(), !542)
  %79 = trunc nuw nsw i64 %indvars.iv.i93 to i32, !dbg !543
  %and.i.i94 = and i32 %79, 1, !dbg !543
    #dbg_value(i32 %and.i.i94, !491, !DIExpression(), !544)
  %shr.i.i95 = lshr i32 %79, 1, !dbg !545
    #dbg_value(i32 %shr.i.i95, !488, !DIExpression(), !542)
    #dbg_value(i16 %.pre.i, !408, !DIExpression(), !546)
    #dbg_value(i32 %and.i.i94, !413, !DIExpression(), !546)
  %80 = icmp eq i32 %and.i.i94, 0, !dbg !548
  %and.i.i.i96 = select i1 %80, i64 0, i64 2032, !dbg !548
  %xor.i.i.i97 = xor i64 %and.i.i.i96, %conv.i.i.i92, !dbg !549
  %shr.i.i.i98 = lshr i64 %xor.i.i.i97, 4, !dbg !550
  %arrayidx.i.i.i99 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i.i98, !dbg !551
  %81 = load i8, ptr %arrayidx.i.i.i99, align 1, !dbg !551
  %conv1.i.i.i100 = zext i8 %81 to i32, !dbg !551
    #dbg_value(i32 %conv1.i.i.i100, !489, !DIExpression(), !542)
  %add1.i.i101 = or disjoint i32 %and.i.i94, 2, !dbg !552
    #dbg_value(i32 %add1.i.i101, !490, !DIExpression(), !542)
    #dbg_value(i32 3, !487, !DIExpression(), !542)
  %and.i.1.i102 = and i32 %shr.i.i95, 1, !dbg !543
    #dbg_value(i32 %and.i.1.i102, !491, !DIExpression(), !544)
  %shr.i.1.i103 = lshr i32 %79, 2, !dbg !545
    #dbg_value(i32 %shr.i.1.i103, !488, !DIExpression(), !542)
  %idxprom.i.1.i104 = zext nneg i32 %add1.i.i101 to i64, !dbg !538
  %arrayidx.i.1.i105 = getelementptr inbounds i16, ptr %pos_align.i, i64 %idxprom.i.1.i104, !dbg !538
  %82 = load i16, ptr %arrayidx.i.1.i105, align 2, !dbg !538
    #dbg_value(i16 %82, !408, !DIExpression(), !546)
    #dbg_value(i32 %and.i.1.i102, !413, !DIExpression(), !546)
  %conv.i.i.1.i106 = zext i16 %82 to i64, !dbg !553
  %83 = icmp eq i32 %and.i.1.i102, 0, !dbg !548
  %and.i.i.1.i107 = select i1 %83, i64 0, i64 2032, !dbg !548
  %xor.i.i.1.i108 = xor i64 %and.i.i.1.i107, %conv.i.i.1.i106, !dbg !549
  %shr.i.i.1.i109 = lshr i64 %xor.i.i.1.i108, 4, !dbg !550
  %arrayidx.i.i.1.i110 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i.1.i109, !dbg !551
  %84 = load i8, ptr %arrayidx.i.i.1.i110, align 1, !dbg !551
  %conv1.i.i.1.i111 = zext i8 %84 to i32, !dbg !551
  %add.i.1.i112 = add nuw nsw i32 %conv1.i.i.1.i111, %conv1.i.i.i100, !dbg !554
    #dbg_value(i32 %add.i.1.i112, !489, !DIExpression(), !542)
  %shl.i.1.i113 = shl nuw nsw i32 %add1.i.i101, 1, !dbg !555
  %add1.i.1.i114 = or disjoint i32 %shl.i.1.i113, %and.i.1.i102, !dbg !552
    #dbg_value(i32 %add1.i.1.i114, !490, !DIExpression(), !542)
    #dbg_value(i32 2, !487, !DIExpression(), !542)
  %and.i.2.i115 = and i32 %shr.i.1.i103, 1, !dbg !543
    #dbg_value(i32 %and.i.2.i115, !491, !DIExpression(), !544)
    #dbg_value(i32 %79, !488, !DIExpression(DW_OP_constu, 3, DW_OP_shr, DW_OP_stack_value), !542)
  %idxprom.i.2.i116 = zext nneg i32 %add1.i.1.i114 to i64, !dbg !538
  %arrayidx.i.2.i117 = getelementptr inbounds i16, ptr %pos_align.i, i64 %idxprom.i.2.i116, !dbg !538
  %85 = load i16, ptr %arrayidx.i.2.i117, align 2, !dbg !538
    #dbg_value(i16 %85, !408, !DIExpression(), !546)
    #dbg_value(i32 %and.i.2.i115, !413, !DIExpression(), !546)
  %conv.i.i.2.i118 = zext i16 %85 to i64, !dbg !553
  %86 = icmp eq i32 %and.i.2.i115, 0, !dbg !548
  %and.i.i.2.i119 = select i1 %86, i64 0, i64 2032, !dbg !548
  %xor.i.i.2.i120 = xor i64 %and.i.i.2.i119, %conv.i.i.2.i118, !dbg !549
  %shr.i.i.2.i121 = lshr i64 %xor.i.i.2.i120, 4, !dbg !550
  %arrayidx.i.i.2.i122 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i.2.i121, !dbg !551
  %87 = load i8, ptr %arrayidx.i.i.2.i122, align 1, !dbg !551
  %conv1.i.i.2.i123 = zext i8 %87 to i32, !dbg !551
  %add.i.2.i124 = add nuw nsw i32 %add.i.1.i112, %conv1.i.i.2.i123, !dbg !554
    #dbg_value(i32 %add.i.2.i124, !489, !DIExpression(), !542)
  %shl.i.2.i125 = shl nuw nsw i32 %add1.i.1.i114, 1, !dbg !555
  %add1.i.2.i126 = or disjoint i32 %shl.i.2.i125, %and.i.2.i115, !dbg !552
    #dbg_value(i32 %add1.i.2.i126, !490, !DIExpression(), !542)
    #dbg_value(i32 1, !487, !DIExpression(), !542)
    #dbg_value(i32 %79, !491, !DIExpression(DW_OP_constu, 3, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value), !544)
    #dbg_value(i32 %79, !488, !DIExpression(DW_OP_constu, 3, DW_OP_shr, DW_OP_constu, 1, DW_OP_shr, DW_OP_stack_value), !542)
  %idxprom.i.3.i127 = zext nneg i32 %add1.i.2.i126 to i64, !dbg !538
  %arrayidx.i.3.i128 = getelementptr inbounds i16, ptr %pos_align.i, i64 %idxprom.i.3.i127, !dbg !538
  %88 = load i16, ptr %arrayidx.i.3.i128, align 2, !dbg !538
    #dbg_value(i16 %88, !408, !DIExpression(), !546)
    #dbg_value(i32 %79, !413, !DIExpression(DW_OP_constu, 3, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value), !546)
  %conv.i.i.3.i129 = zext i16 %88 to i64, !dbg !553
  %89 = and i32 %79, 8, !dbg !548
  %90 = icmp eq i32 %89, 0, !dbg !548
  %and.i.i.3.i130 = select i1 %90, i64 0, i64 2032, !dbg !548
  %xor.i.i.3.i131 = xor i64 %and.i.i.3.i130, %conv.i.i.3.i129, !dbg !549
  %shr.i.i.3.i132 = lshr i64 %xor.i.i.3.i131, 4, !dbg !550
  %arrayidx.i.i.3.i133 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i.3.i132, !dbg !551
  %91 = load i8, ptr %arrayidx.i.i.3.i133, align 1, !dbg !551
  %conv1.i.i.3.i134 = zext i8 %91 to i32, !dbg !551
  %add.i.3.i135 = add nuw nsw i32 %add.i.2.i124, %conv1.i.i.3.i134, !dbg !554
    #dbg_value(i32 %add.i.3.i135, !489, !DIExpression(), !542)
    #dbg_value(!DIArgList(i32 %add1.i.2.i126, i32 %79), !490, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_or, DW_OP_stack_value), !542)
    #dbg_value(i32 0, !487, !DIExpression(), !542)
  %arrayidx.i = getelementptr inbounds [16 x i32], ptr %align_prices.i, i64 0, i64 %indvars.iv.i93, !dbg !556
  store i32 %add.i.3.i135, ptr %arrayidx.i, align 4, !dbg !557
  %indvars.iv.next.i136 = add nuw nsw i64 %indvars.iv.i93, 1, !dbg !558
    #dbg_value(i64 %indvars.iv.next.i136, !533, !DIExpression(), !537)
  %exitcond.not.i137 = icmp eq i64 %indvars.iv.next.i136, 16, !dbg !559
  br i1 %exitcond.not.i137, label %fill_align_prices.exit, label %for.body.i, !dbg !541, !llvm.loop !560

fill_align_prices.exit:                           ; preds = %for.body.i
  store i32 0, ptr %align_price_count, align 8, !dbg !562
  br label %if.end21, !dbg !563

if.end21:                                         ; preds = %if.end17, %fill_align_prices.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !564), !dbg !323
  tail call void @llvm.experimental.noalias.scope.decl(metadata !565), !dbg !323
  tail call void @llvm.experimental.noalias.scope.decl(metadata !566), !dbg !323
    #dbg_assign(i1 undef, !259, !DIExpression(), !298, ptr %rep_lens.i, !DIExpression(), !296)
    #dbg_value(ptr %pcoder, !245, !DIExpression(), !296)
    #dbg_value(ptr %mf, !246, !DIExpression(), !296)
    #dbg_value(ptr %back_res, !247, !DIExpression(), !296)
    #dbg_value(ptr %len_res, !248, !DIExpression(), !296)
    #dbg_value(i32 %position, !249, !DIExpression(), !296)
    #dbg_value(ptr %pcoder, !250, !DIExpression(), !296)
  %nice_len1.i = getelementptr inbounds i8, ptr %mf, i64 96, !dbg !324
  %92 = load i32, ptr %nice_len1.i, align 8, !dbg !324, !alias.scope !564, !noalias !567
    #dbg_value(i32 %92, !251, !DIExpression(), !296)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %matches_count.i) #6, !dbg !328, !noalias !333
  %matches.i = getelementptr inbounds i8, ptr %pcoder, i64 756, !dbg !568
  %call.i = call i32 @lzma_mf_find(ptr noundef nonnull %mf, ptr noundef nonnull %matches_count.i, ptr noundef nonnull %matches.i) #6, !dbg !570, !noalias !567
    #dbg_value(i32 %call.i, !253, !DIExpression(), !296)
  br label %if.end.i, !dbg !571

if.end.i:                                         ; preds = %if.end21.thread, %if.end21
  %93 = phi i32 [ %92, %if.end21 ], [ %5, %if.end21.thread ]
  %nice_len1.i329 = phi ptr [ %nice_len1.i, %if.end21 ], [ %nice_len1.i328, %if.end21.thread ]
  %len_main.0.i = phi i32 [ %call.i, %if.end21 ], [ %6, %if.end21.thread ], !dbg !572
    #dbg_value(i32 %len_main.0.i, !253, !DIExpression(), !296)
  %94 = getelementptr i8, ptr %mf, i64 24, !dbg !573
  %mf.val484.i = load i32, ptr %94, align 8, !dbg !573, !alias.scope !564, !noalias !567
  %95 = getelementptr i8, ptr %mf, i64 36, !dbg !573
  %mf.val485.i = load i32, ptr %95, align 4, !dbg !573, !alias.scope !564, !noalias !567
    #dbg_value(ptr undef, !574, !DIExpression(), !581)
  %sub.i.i = sub i32 %mf.val485.i, %mf.val484.i, !dbg !583
  %add.i138 = add i32 %sub.i.i, 1, !dbg !573
  %cmp4.i = icmp ult i32 %add.i138, 273, !dbg !573
  br i1 %cmp4.i, label %cond.end.i, label %if.end9.i, !dbg !573

cond.end.i:                                       ; preds = %if.end.i
    #dbg_value(ptr undef, !574, !DIExpression(), !584)
    #dbg_value(i32 %add.i138, !254, !DIExpression(), !296)
  %cmp7.i = icmp ult i32 %add.i138, 2, !dbg !586
  br i1 %cmp7.i, label %helper1.exit.thread, label %if.end9.i, !dbg !588

helper1.exit.thread:                              ; preds = %cond.end.i
  store i32 -1, ptr %back_res, align 4, !dbg !589, !alias.scope !565, !noalias !591
  store i32 1, ptr %len_res, align 4, !dbg !592, !alias.scope !566, !noalias !593
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %matches_count.i) #6, !dbg !594, !noalias !333
    #dbg_value(i32 -1, !236, !DIExpression(), !300)
  br label %cleanup45, !dbg !595

if.end9.i:                                        ; preds = %cond.end.i, %if.end.i
  %cond546.i = phi i32 [ %add.i138, %cond.end.i ], [ 273, %if.end.i ]
  %mf.val486.i = load ptr, ptr %mf, align 8, !dbg !596, !alias.scope !564, !noalias !567
    #dbg_value(ptr undef, !597, !DIExpression(), !602)
  %idx.ext.i.i = zext i32 %mf.val484.i to i64, !dbg !604
  %add.ptr.i.i = getelementptr inbounds i8, ptr %mf.val486.i, i64 %idx.ext.i.i, !dbg !604
  %add.ptr.i139 = getelementptr inbounds i8, ptr %add.ptr.i.i, i64 -1, !dbg !605
    #dbg_value(ptr %add.ptr.i139, !255, !DIExpression(), !296)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rep_lens.i) #6, !dbg !606, !noalias !333
    #dbg_value(i32 0, !260, !DIExpression(), !296)
    #dbg_value(i32 0, !261, !DIExpression(), !607)
  %reps.i = getelementptr inbounds i8, ptr %pcoder, i64 740
  %96 = load i8, ptr %add.ptr.i139, align 1, !noalias !567
  %cmp30549.i = icmp ult i32 %cond546.i, 3
    #dbg_value(i64 0, !261, !DIExpression(), !607)
  %97 = load i32, ptr %reps.i, align 4, !dbg !608, !noalias !333
  %idx.ext.i140 = zext i32 %97 to i64, !dbg !609
  %idx.neg.i141 = sub nsw i64 0, %idx.ext.i140, !dbg !609
  %add.ptr12.i = getelementptr inbounds i8, ptr %add.ptr.i139, i64 %idx.neg.i141, !dbg !609
  %add.ptr13.i = getelementptr inbounds i8, ptr %add.ptr12.i, i64 -1, !dbg !610
    #dbg_value(ptr %add.ptr13.i, !263, !DIExpression(), !611)
  %98 = load i8, ptr %add.ptr13.i, align 1, !dbg !612, !noalias !567
  %cmp17.not.i = icmp eq i8 %96, %98, !dbg !612
  br i1 %cmp17.not.i, label %lor.lhs.false.i, label %cleanup.i, !dbg !612

lor.lhs.false.i:                                  ; preds = %if.end9.i
  %99 = load i8, ptr %add.ptr.i.i, align 1, !dbg !612, !noalias !567
  %100 = load i8, ptr %add.ptr12.i, align 1, !dbg !612, !noalias !567
  %cmp23.not.i = icmp ne i8 %99, %100, !dbg !612
  %brmerge.i = or i1 %cmp30549.i, %cmp23.not.i, !dbg !614
  %.mux.i = select i1 %cmp23.not.i, i32 0, i32 2, !dbg !614
  br i1 %brmerge.i, label %cleanup.i, label %land.rhs.preheader.i, !dbg !614

land.rhs.preheader.i:                             ; preds = %lor.lhs.false.i
  %wide.trip.count.i = zext nneg i32 %cond546.i to i64, !dbg !615
  br label %land.rhs.i, !dbg !618

land.rhs.i:                                       ; preds = %for.inc.i, %land.rhs.preheader.i
  %indvars.iv.i168 = phi i64 [ 2, %land.rhs.preheader.i ], [ %indvars.iv.next.i169, %for.inc.i ]
    #dbg_value(i64 %indvars.iv.i168, !266, !DIExpression(), !611)
  %arrayidx33.i = getelementptr inbounds i8, ptr %add.ptr.i139, i64 %indvars.iv.i168, !dbg !619
  %101 = load i8, ptr %arrayidx33.i, align 1, !dbg !619, !noalias !567
  %arrayidx36.i = getelementptr inbounds i8, ptr %add.ptr13.i, i64 %indvars.iv.i168, !dbg !620
  %102 = load i8, ptr %arrayidx36.i, align 1, !dbg !620, !noalias !567
  %cmp38.i = icmp eq i8 %101, %102, !dbg !621
  br i1 %cmp38.i, label %for.inc.i, label %cleanup.loopexit.split.loop.exit.i, !dbg !618

for.inc.i:                                        ; preds = %land.rhs.i
  %indvars.iv.next.i169 = add nuw nsw i64 %indvars.iv.i168, 1, !dbg !622
    #dbg_value(i64 %indvars.iv.next.i169, !266, !DIExpression(), !611)
  %exitcond.not.i170 = icmp eq i64 %indvars.iv.next.i169, %wide.trip.count.i, !dbg !615
  br i1 %exitcond.not.i170, label %cleanup.i, label %land.rhs.i, !dbg !623, !llvm.loop !624

cleanup.loopexit.split.loop.exit.i:               ; preds = %land.rhs.i
  %103 = trunc nuw nsw i64 %indvars.iv.i168 to i32
  br label %cleanup.i, !dbg !611

cleanup.i:                                        ; preds = %for.inc.i, %cleanup.loopexit.split.loop.exit.i, %lor.lhs.false.i, %if.end9.i
  %storemerge.i = phi i32 [ %.mux.i, %lor.lhs.false.i ], [ 0, %if.end9.i ], [ %103, %cleanup.loopexit.split.loop.exit.i ], [ %cond546.i, %for.inc.i ], !dbg !611
  store i32 %storemerge.i, ptr %rep_lens.i, align 16, !dbg !611, !noalias !333
    #dbg_value(i32 0, !260, !DIExpression(), !296)
    #dbg_value(i64 1, !261, !DIExpression(), !607)
  %arrayidx.1.i142 = getelementptr inbounds i8, ptr %pcoder, i64 744, !dbg !608
  %104 = load i32, ptr %arrayidx.1.i142, align 4, !dbg !608, !noalias !333
  %idx.ext.1.i = zext i32 %104 to i64, !dbg !609
  %idx.neg.1.i = sub nsw i64 0, %idx.ext.1.i, !dbg !609
  %add.ptr12.1.i = getelementptr inbounds i8, ptr %add.ptr.i139, i64 %idx.neg.1.i, !dbg !609
  %add.ptr13.1.i = getelementptr inbounds i8, ptr %add.ptr12.1.i, i64 -1, !dbg !610
    #dbg_value(ptr %add.ptr13.1.i, !263, !DIExpression(), !611)
  %105 = load i8, ptr %add.ptr13.1.i, align 1, !dbg !612, !noalias !567
  %cmp17.not.1.i = icmp eq i8 %96, %105, !dbg !612
  br i1 %cmp17.not.1.i, label %lor.lhs.false.1.i, label %if.then25.1.i, !dbg !612

lor.lhs.false.1.i:                                ; preds = %cleanup.i
  %106 = load i8, ptr %add.ptr.i.i, align 1, !dbg !612, !noalias !567
  %107 = load i8, ptr %add.ptr12.1.i, align 1, !dbg !612, !noalias !567
  %cmp23.not.1.i = icmp eq i8 %106, %107, !dbg !612
  br i1 %cmp23.not.1.i, label %for.cond29.preheader.1.i, label %if.then25.1.i, !dbg !614

if.then25.1.i:                                    ; preds = %lor.lhs.false.1.i, %cleanup.i
  %arrayidx27.1.i = getelementptr inbounds i8, ptr %rep_lens.i, i64 4, !dbg !626
  store i32 0, ptr %arrayidx27.1.i, align 4, !dbg !628, !noalias !333
  br label %cleanup.1.i, !dbg !629

for.cond29.preheader.1.i:                         ; preds = %lor.lhs.false.1.i
    #dbg_value(i32 2, !266, !DIExpression(), !611)
  br i1 %cmp30549.i, label %for.end.1.i, label %land.rhs.preheader.1.i, !dbg !623

land.rhs.preheader.1.i:                           ; preds = %for.cond29.preheader.1.i
  %wide.trip.count.1.i = zext nneg i32 %cond546.i to i64, !dbg !615
  br label %land.rhs.1.i, !dbg !618

land.rhs.1.i:                                     ; preds = %for.inc.1.i, %land.rhs.preheader.1.i
  %indvars.iv.1.i166 = phi i64 [ 2, %land.rhs.preheader.1.i ], [ %indvars.iv.next.1.i167, %for.inc.1.i ]
    #dbg_value(i64 %indvars.iv.1.i166, !266, !DIExpression(), !611)
  %arrayidx33.1.i = getelementptr inbounds i8, ptr %add.ptr.i139, i64 %indvars.iv.1.i166, !dbg !619
  %108 = load i8, ptr %arrayidx33.1.i, align 1, !dbg !619, !noalias !567
  %arrayidx36.1.i = getelementptr inbounds i8, ptr %add.ptr13.1.i, i64 %indvars.iv.1.i166, !dbg !620
  %109 = load i8, ptr %arrayidx36.1.i, align 1, !dbg !620, !noalias !567
  %cmp38.1.i = icmp eq i8 %108, %109, !dbg !621
  br i1 %cmp38.1.i, label %for.inc.1.i, label %for.end.1.loopexit.split.loop.exit578.i, !dbg !618

for.inc.1.i:                                      ; preds = %land.rhs.1.i
  %indvars.iv.next.1.i167 = add nuw nsw i64 %indvars.iv.1.i166, 1, !dbg !622
    #dbg_value(i64 %indvars.iv.next.1.i167, !266, !DIExpression(), !611)
  %exitcond.1.not.i = icmp eq i64 %indvars.iv.next.1.i167, %wide.trip.count.1.i, !dbg !615
  br i1 %exitcond.1.not.i, label %for.end.1.i, label %land.rhs.1.i, !dbg !623, !llvm.loop !630

for.end.1.loopexit.split.loop.exit578.i:          ; preds = %land.rhs.1.i
  %110 = trunc nuw nsw i64 %indvars.iv.1.i166 to i32
  br label %for.end.1.i, !dbg !631

for.end.1.i:                                      ; preds = %for.inc.1.i, %for.end.1.loopexit.split.loop.exit578.i, %for.cond29.preheader.1.i
  %len_test.0.lcssa.1.i = phi i32 [ 2, %for.cond29.preheader.1.i ], [ %110, %for.end.1.loopexit.split.loop.exit578.i ], [ %cond546.i, %for.inc.1.i ], !dbg !632
  %arrayidx42.1.i = getelementptr inbounds i8, ptr %rep_lens.i, i64 4, !dbg !631
  store i32 %len_test.0.lcssa.1.i, ptr %arrayidx42.1.i, align 4, !dbg !633, !noalias !333
  %cmp45.1.i = icmp ugt i32 %len_test.0.lcssa.1.i, %storemerge.i, !dbg !634
  %spec.select.1.i = zext i1 %cmp45.1.i to i32, !dbg !636
    #dbg_value(i32 %spec.select.1.i, !260, !DIExpression(), !296)
  br label %cleanup.1.i, !dbg !637

cleanup.1.i:                                      ; preds = %for.end.1.i, %if.then25.1.i
  %111 = phi i32 [ 0, %if.then25.1.i ], [ %len_test.0.lcssa.1.i, %for.end.1.i ]
  %rep_max_index.2.1.i = phi i32 [ 0, %if.then25.1.i ], [ %spec.select.1.i, %for.end.1.i ], !dbg !296
    #dbg_value(i32 %rep_max_index.2.1.i, !260, !DIExpression(), !296)
    #dbg_value(i64 2, !261, !DIExpression(), !607)
  %arrayidx.2.i143 = getelementptr inbounds i8, ptr %pcoder, i64 748, !dbg !608
  %112 = load i32, ptr %arrayidx.2.i143, align 4, !dbg !608, !noalias !333
  %idx.ext.2.i = zext i32 %112 to i64, !dbg !609
  %idx.neg.2.i = sub nsw i64 0, %idx.ext.2.i, !dbg !609
  %add.ptr12.2.i = getelementptr inbounds i8, ptr %add.ptr.i139, i64 %idx.neg.2.i, !dbg !609
  %add.ptr13.2.i = getelementptr inbounds i8, ptr %add.ptr12.2.i, i64 -1, !dbg !610
    #dbg_value(ptr %add.ptr13.2.i, !263, !DIExpression(), !611)
  %113 = load i8, ptr %add.ptr13.2.i, align 1, !dbg !612, !noalias !567
  %cmp17.not.2.i = icmp eq i8 %96, %113, !dbg !612
  br i1 %cmp17.not.2.i, label %lor.lhs.false.2.i, label %if.then25.2.i, !dbg !612

lor.lhs.false.2.i:                                ; preds = %cleanup.1.i
  %114 = load i8, ptr %add.ptr.i.i, align 1, !dbg !612, !noalias !567
  %115 = load i8, ptr %add.ptr12.2.i, align 1, !dbg !612, !noalias !567
  %cmp23.not.2.i = icmp eq i8 %114, %115, !dbg !612
  br i1 %cmp23.not.2.i, label %for.cond29.preheader.2.i, label %if.then25.2.i, !dbg !614

if.then25.2.i:                                    ; preds = %lor.lhs.false.2.i, %cleanup.1.i
  %arrayidx27.2.i = getelementptr inbounds i8, ptr %rep_lens.i, i64 8, !dbg !626
  store i32 0, ptr %arrayidx27.2.i, align 8, !dbg !628, !noalias !333
  br label %cleanup.2.i, !dbg !629

for.cond29.preheader.2.i:                         ; preds = %lor.lhs.false.2.i
    #dbg_value(i32 2, !266, !DIExpression(), !611)
  br i1 %cmp30549.i, label %for.end.2.i, label %land.rhs.preheader.2.i, !dbg !623

land.rhs.preheader.2.i:                           ; preds = %for.cond29.preheader.2.i
  %wide.trip.count.2.i = zext nneg i32 %cond546.i to i64, !dbg !615
  br label %land.rhs.2.i, !dbg !618

land.rhs.2.i:                                     ; preds = %for.inc.2.i, %land.rhs.preheader.2.i
  %indvars.iv.2.i164 = phi i64 [ 2, %land.rhs.preheader.2.i ], [ %indvars.iv.next.2.i165, %for.inc.2.i ]
    #dbg_value(i64 %indvars.iv.2.i164, !266, !DIExpression(), !611)
  %arrayidx33.2.i = getelementptr inbounds i8, ptr %add.ptr.i139, i64 %indvars.iv.2.i164, !dbg !619
  %116 = load i8, ptr %arrayidx33.2.i, align 1, !dbg !619, !noalias !567
  %arrayidx36.2.i = getelementptr inbounds i8, ptr %add.ptr13.2.i, i64 %indvars.iv.2.i164, !dbg !620
  %117 = load i8, ptr %arrayidx36.2.i, align 1, !dbg !620, !noalias !567
  %cmp38.2.i = icmp eq i8 %116, %117, !dbg !621
  br i1 %cmp38.2.i, label %for.inc.2.i, label %for.end.2.loopexit.split.loop.exit580.i, !dbg !618

for.inc.2.i:                                      ; preds = %land.rhs.2.i
  %indvars.iv.next.2.i165 = add nuw nsw i64 %indvars.iv.2.i164, 1, !dbg !622
    #dbg_value(i64 %indvars.iv.next.2.i165, !266, !DIExpression(), !611)
  %exitcond.2.not.i = icmp eq i64 %indvars.iv.next.2.i165, %wide.trip.count.2.i, !dbg !615
  br i1 %exitcond.2.not.i, label %for.end.2.i, label %land.rhs.2.i, !dbg !623, !llvm.loop !638

for.end.2.loopexit.split.loop.exit580.i:          ; preds = %land.rhs.2.i
  %118 = trunc nuw nsw i64 %indvars.iv.2.i164 to i32
  br label %for.end.2.i, !dbg !631

for.end.2.i:                                      ; preds = %for.inc.2.i, %for.end.2.loopexit.split.loop.exit580.i, %for.cond29.preheader.2.i
  %len_test.0.lcssa.2.i = phi i32 [ 2, %for.cond29.preheader.2.i ], [ %118, %for.end.2.loopexit.split.loop.exit580.i ], [ %cond546.i, %for.inc.2.i ], !dbg !632
  %arrayidx42.2.i = getelementptr inbounds i8, ptr %rep_lens.i, i64 8, !dbg !631
  store i32 %len_test.0.lcssa.2.i, ptr %arrayidx42.2.i, align 8, !dbg !633, !noalias !333
  %idxprom43.2.i = zext nneg i32 %rep_max_index.2.1.i to i64, !dbg !639
  %arrayidx44.2.i = getelementptr inbounds [4 x i32], ptr %rep_lens.i, i64 0, i64 %idxprom43.2.i, !dbg !639
  %119 = load i32, ptr %arrayidx44.2.i, align 4, !dbg !639, !noalias !333
  %cmp45.2.i = icmp ugt i32 %len_test.0.lcssa.2.i, %119, !dbg !634
  %spec.select.2.i = select i1 %cmp45.2.i, i32 2, i32 %rep_max_index.2.1.i, !dbg !636
    #dbg_value(i32 %spec.select.2.i, !260, !DIExpression(), !296)
  br label %cleanup.2.i, !dbg !637

cleanup.2.i:                                      ; preds = %for.end.2.i, %if.then25.2.i
  %120 = phi i32 [ 0, %if.then25.2.i ], [ %len_test.0.lcssa.2.i, %for.end.2.i ]
  %rep_max_index.2.2.i = phi i32 [ %rep_max_index.2.1.i, %if.then25.2.i ], [ %spec.select.2.i, %for.end.2.i ], !dbg !296
    #dbg_value(i32 %rep_max_index.2.2.i, !260, !DIExpression(), !296)
    #dbg_value(i64 3, !261, !DIExpression(), !607)
  %arrayidx.3.i144 = getelementptr inbounds i8, ptr %pcoder, i64 752, !dbg !608
  %121 = load i32, ptr %arrayidx.3.i144, align 4, !dbg !608, !noalias !333
  %idx.ext.3.i = zext i32 %121 to i64, !dbg !609
  %idx.neg.3.i = sub nsw i64 0, %idx.ext.3.i, !dbg !609
  %add.ptr12.3.i = getelementptr inbounds i8, ptr %add.ptr.i139, i64 %idx.neg.3.i, !dbg !609
  %add.ptr13.3.i = getelementptr inbounds i8, ptr %add.ptr12.3.i, i64 -1, !dbg !610
    #dbg_value(ptr %add.ptr13.3.i, !263, !DIExpression(), !611)
  %122 = load i8, ptr %add.ptr13.3.i, align 1, !dbg !612, !noalias !567
  %cmp17.not.3.i = icmp eq i8 %96, %122, !dbg !612
  br i1 %cmp17.not.3.i, label %lor.lhs.false.3.i, label %if.then25.3.i, !dbg !612

lor.lhs.false.3.i:                                ; preds = %cleanup.2.i
  %123 = load i8, ptr %add.ptr.i.i, align 1, !dbg !612, !noalias !567
  %124 = load i8, ptr %add.ptr12.3.i, align 1, !dbg !612, !noalias !567
  %cmp23.not.3.i = icmp eq i8 %123, %124, !dbg !612
  br i1 %cmp23.not.3.i, label %for.cond29.preheader.3.i, label %if.then25.3.i, !dbg !614

if.then25.3.i:                                    ; preds = %lor.lhs.false.3.i, %cleanup.2.i
  %arrayidx27.3.i = getelementptr inbounds i8, ptr %rep_lens.i, i64 12, !dbg !626
  store i32 0, ptr %arrayidx27.3.i, align 4, !dbg !628, !noalias !333
  br label %cleanup.3.i, !dbg !629

for.cond29.preheader.3.i:                         ; preds = %lor.lhs.false.3.i
    #dbg_value(i32 2, !266, !DIExpression(), !611)
  br i1 %cmp30549.i, label %for.end.3.i, label %land.rhs.preheader.3.i, !dbg !623

land.rhs.preheader.3.i:                           ; preds = %for.cond29.preheader.3.i
  %wide.trip.count.3.i = zext nneg i32 %cond546.i to i64, !dbg !615
  br label %land.rhs.3.i, !dbg !618

land.rhs.3.i:                                     ; preds = %for.inc.3.i, %land.rhs.preheader.3.i
  %indvars.iv.3.i162 = phi i64 [ 2, %land.rhs.preheader.3.i ], [ %indvars.iv.next.3.i163, %for.inc.3.i ]
    #dbg_value(i64 %indvars.iv.3.i162, !266, !DIExpression(), !611)
  %arrayidx33.3.i = getelementptr inbounds i8, ptr %add.ptr.i139, i64 %indvars.iv.3.i162, !dbg !619
  %125 = load i8, ptr %arrayidx33.3.i, align 1, !dbg !619, !noalias !567
  %arrayidx36.3.i = getelementptr inbounds i8, ptr %add.ptr13.3.i, i64 %indvars.iv.3.i162, !dbg !620
  %126 = load i8, ptr %arrayidx36.3.i, align 1, !dbg !620, !noalias !567
  %cmp38.3.i = icmp eq i8 %125, %126, !dbg !621
  br i1 %cmp38.3.i, label %for.inc.3.i, label %for.end.3.loopexit.split.loop.exit582.i, !dbg !618

for.inc.3.i:                                      ; preds = %land.rhs.3.i
  %indvars.iv.next.3.i163 = add nuw nsw i64 %indvars.iv.3.i162, 1, !dbg !622
    #dbg_value(i64 %indvars.iv.next.3.i163, !266, !DIExpression(), !611)
  %exitcond.3.not.i = icmp eq i64 %indvars.iv.next.3.i163, %wide.trip.count.3.i, !dbg !615
  br i1 %exitcond.3.not.i, label %for.end.3.i, label %land.rhs.3.i, !dbg !623, !llvm.loop !640

for.end.3.loopexit.split.loop.exit582.i:          ; preds = %land.rhs.3.i
  %127 = trunc nuw nsw i64 %indvars.iv.3.i162 to i32
  br label %for.end.3.i, !dbg !631

for.end.3.i:                                      ; preds = %for.inc.3.i, %for.end.3.loopexit.split.loop.exit582.i, %for.cond29.preheader.3.i
  %len_test.0.lcssa.3.i = phi i32 [ 2, %for.cond29.preheader.3.i ], [ %127, %for.end.3.loopexit.split.loop.exit582.i ], [ %cond546.i, %for.inc.3.i ], !dbg !632
  %arrayidx42.3.i = getelementptr inbounds i8, ptr %rep_lens.i, i64 12, !dbg !631
  store i32 %len_test.0.lcssa.3.i, ptr %arrayidx42.3.i, align 4, !dbg !633, !noalias !333
  %idxprom43.3.i = zext nneg i32 %rep_max_index.2.2.i to i64, !dbg !639
  %arrayidx44.3.i = getelementptr inbounds [4 x i32], ptr %rep_lens.i, i64 0, i64 %idxprom43.3.i, !dbg !639
  %128 = load i32, ptr %arrayidx44.3.i, align 4, !dbg !639, !noalias !333
  %cmp45.3.i = icmp ugt i32 %len_test.0.lcssa.3.i, %128, !dbg !634
  %spec.select.3.i = select i1 %cmp45.3.i, i32 3, i32 %rep_max_index.2.2.i, !dbg !636
    #dbg_value(i32 %spec.select.3.i, !260, !DIExpression(), !296)
  br label %cleanup.3.i, !dbg !637

cleanup.3.i:                                      ; preds = %for.end.3.i, %if.then25.3.i
  %129 = phi i32 [ 0, %if.then25.3.i ], [ %len_test.0.lcssa.3.i, %for.end.3.i ]
  %rep_max_index.2.3.i = phi i32 [ %rep_max_index.2.2.i, %if.then25.3.i ], [ %spec.select.3.i, %for.end.3.i ], !dbg !296
    #dbg_value(i32 %rep_max_index.2.3.i, !260, !DIExpression(), !296)
    #dbg_value(i64 4, !261, !DIExpression(), !607)
  %idxprom53.i = zext nneg i32 %rep_max_index.2.3.i to i64, !dbg !641
  %arrayidx54.i = getelementptr inbounds [4 x i32], ptr %rep_lens.i, i64 0, i64 %idxprom53.i, !dbg !641
  %130 = load i32, ptr %arrayidx54.i, align 4, !dbg !641, !noalias !333
  %cmp55.not.i = icmp ult i32 %130, %93, !dbg !643
  br i1 %cmp55.not.i, label %if.end60.i, label %if.then57.i, !dbg !644

if.then57.i:                                      ; preds = %cleanup.3.i
  store i32 %rep_max_index.2.3.i, ptr %back_res, align 4, !dbg !645, !alias.scope !565, !noalias !591
  store i32 %130, ptr %len_res, align 4, !dbg !647, !alias.scope !566, !noalias !593
  %sub.i = add i32 %130, -1, !dbg !648
    #dbg_value(ptr %mf, !649, !DIExpression(), !653)
    #dbg_value(i32 %sub.i, !652, !DIExpression(), !653)
  %cmp.not.i.i145 = icmp eq i32 %sub.i, 0, !dbg !655
  br i1 %cmp.not.i.i145, label %helper1.exit.thread333, label %if.then.i.i, !dbg !657

if.then.i.i:                                      ; preds = %if.then57.i
  %skip.i.i = getelementptr inbounds i8, ptr %mf, i64 56, !dbg !658
  %131 = load ptr, ptr %skip.i.i, align 8, !dbg !658, !alias.scope !564, !noalias !567
  call void %131(ptr noundef nonnull %mf, i32 noundef %sub.i) #6, !dbg !660, !noalias !567
  %132 = load i32, ptr %read_ahead, align 4, !dbg !661, !alias.scope !564, !noalias !567
  %add.i.i146 = add i32 %132, %sub.i, !dbg !661
  store i32 %add.i.i146, ptr %read_ahead, align 4, !dbg !661, !alias.scope !564, !noalias !567
  br label %helper1.exit.thread333, !dbg !662

if.end60.i:                                       ; preds = %cleanup.3.i
  %cmp61.not.i = icmp ult i32 %len_main.0.i, %93, !dbg !663
  br i1 %cmp61.not.i, label %if.end70.i, label %if.then63.i, !dbg !665

if.then63.i:                                      ; preds = %if.end60.i
  %matches64.i = getelementptr inbounds i8, ptr %pcoder, i64 756, !dbg !666
  %133 = load i32, ptr %matches_count.i, align 4, !dbg !668, !noalias !333
  %sub65.i = add i32 %133, -1, !dbg !669
  %idxprom66.i = zext i32 %sub65.i to i64, !dbg !670
  %dist.i = getelementptr inbounds [274 x %struct.lzma_match], ptr %matches64.i, i64 0, i64 %idxprom66.i, i32 1, !dbg !671
  %134 = load i32, ptr %dist.i, align 4, !dbg !671, !noalias !333
  %add68.i = add i32 %134, 4, !dbg !672
  store i32 %add68.i, ptr %back_res, align 4, !dbg !673, !alias.scope !565, !noalias !591
  store i32 %len_main.0.i, ptr %len_res, align 4, !dbg !674, !alias.scope !566, !noalias !593
  %sub69.i = add i32 %len_main.0.i, -1, !dbg !675
    #dbg_value(ptr %mf, !649, !DIExpression(), !676)
    #dbg_value(i32 %sub69.i, !652, !DIExpression(), !676)
  %cmp.not.i489.i = icmp eq i32 %sub69.i, 0, !dbg !678
  br i1 %cmp.not.i489.i, label %helper1.exit.thread333, label %if.then.i490.i, !dbg !679

if.then.i490.i:                                   ; preds = %if.then63.i
  %skip.i491.i = getelementptr inbounds i8, ptr %mf, i64 56, !dbg !680
  %135 = load ptr, ptr %skip.i491.i, align 8, !dbg !680, !alias.scope !564, !noalias !567
  call void %135(ptr noundef nonnull %mf, i32 noundef %sub69.i) #6, !dbg !681, !noalias !567
  %136 = load i32, ptr %read_ahead, align 4, !dbg !682, !alias.scope !564, !noalias !567
  %add.i493.i = add i32 %136, %sub69.i, !dbg !682
  store i32 %add.i493.i, ptr %read_ahead, align 4, !dbg !682, !alias.scope !564, !noalias !567
  br label %helper1.exit.thread333, !dbg !683

if.end70.i:                                       ; preds = %if.end60.i
    #dbg_value(i8 %96, !267, !DIExpression(), !296)
    #dbg_value(i8 %98, !268, !DIExpression(), !296)
  %cmp81.not.i = icmp ne i8 %96, %98
  %137 = or i32 %130, %len_main.0.i, !dbg !684
  %138 = icmp ult i32 %137, 2, !dbg !684
  %or.cond481.i = and i1 %cmp81.not.i, %138, !dbg !684
  br i1 %or.cond481.i, label %if.then88.i, label %if.end89.i, !dbg !684

if.then88.i:                                      ; preds = %if.end70.i
  store i32 -1, ptr %back_res, align 4, !dbg !686, !alias.scope !565, !noalias !591
  store i32 1, ptr %len_res, align 4, !dbg !688, !alias.scope !566, !noalias !593
  br label %helper1.exit.thread333, !dbg !689

if.end89.i:                                       ; preds = %if.end70.i
  %state.i = getelementptr inbounds i8, ptr %pcoder, i64 736, !dbg !690
  %139 = load i32, ptr %state.i, align 8, !dbg !690, !noalias !333
  %opts.i = getelementptr inbounds i8, ptr %pcoder, i64 69348, !dbg !691
  store i32 %139, ptr %opts.i, align 4, !dbg !692, !noalias !333
  %pos_mask.i = getelementptr inbounds i8, ptr %pcoder, i64 2960, !dbg !693
  %140 = load i32, ptr %pos_mask.i, align 8, !dbg !693, !noalias !333
  %and.i147 = and i32 %140, %position, !dbg !694
    #dbg_value(i32 %and.i147, !269, !DIExpression(), !296)
  %is_match.i = getelementptr inbounds i8, ptr %pcoder, i64 27548, !dbg !695
  %idxprom93.i = zext i32 %139 to i64, !dbg !696
  %idxprom95.i = zext i32 %and.i147 to i64, !dbg !696
  %arrayidx96.i = getelementptr inbounds [12 x [16 x i16]], ptr %is_match.i, i64 0, i64 %idxprom93.i, i64 %idxprom95.i, !dbg !696
  %141 = load i16, ptr %arrayidx96.i, align 2, !dbg !696, !noalias !333
    #dbg_value(i16 %141, !697, !DIExpression(), !702)
  %142 = lshr i16 %141, 4, !dbg !704
  %idxprom.i.i148 = zext nneg i16 %142 to i64, !dbg !705
  %arrayidx.i.i149 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i.i148, !dbg !705
  %143 = load i8, ptr %arrayidx.i.i149, align 1, !dbg !705, !noalias !333
  %conv1.i.i = zext i8 %143 to i32, !dbg !705
  %arrayidx98.i = getelementptr inbounds i8, ptr %add.ptr.i.i, i64 -2, !dbg !706
  %144 = load i8, ptr %arrayidx98.i, align 1, !dbg !706, !noalias !567
  %conv99.i = zext i8 %144 to i32, !dbg !706
  %cmp101.i = icmp ugt i32 %139, 6, !dbg !707
  %conv104.i = zext i8 %96 to i32, !dbg !708
    #dbg_value(ptr %pcoder, !709, !DIExpression(), !736)
    #dbg_value(i32 %position, !718, !DIExpression(), !736)
    #dbg_value(i32 %conv99.i, !719, !DIExpression(), !736)
    #dbg_value(i1 %cmp101.i, !720, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !736)
    #dbg_value(i8 %98, !721, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !736)
    #dbg_value(i32 %conv104.i, !722, !DIExpression(), !736)
    #dbg_value(ptr %pcoder, !723, !DIExpression(), !736)
  %literal.i.i = getelementptr inbounds i8, ptr %pcoder, i64 2972, !dbg !738
  %literal_pos_mask.i.i = getelementptr inbounds i8, ptr %pcoder, i64 2968, !dbg !738
  %145 = load i32, ptr %literal_pos_mask.i.i, align 8, !dbg !738, !noalias !333
  %and.i.i150 = and i32 %145, %position, !dbg !738
  %literal_context_bits.i.i = getelementptr inbounds i8, ptr %pcoder, i64 2964, !dbg !738
  %146 = load i32, ptr %literal_context_bits.i.i, align 4, !dbg !738, !noalias !333
  %shl.i.i151 = shl i32 %and.i.i150, %146, !dbg !738
  %sub.i495.i = sub i32 8, %146, !dbg !738
  %shr.i.i152 = lshr i32 %conv99.i, %sub.i495.i, !dbg !738
  %add.i496.i = add i32 %shr.i.i152, %shl.i.i151, !dbg !738
  %idxprom.i497.i = zext i32 %add.i496.i to i64, !dbg !738
  %arrayidx.i498.i = getelementptr inbounds [16 x [768 x i16]], ptr %literal.i.i, i64 0, i64 %idxprom.i497.i, !dbg !738
    #dbg_value(ptr %arrayidx.i498.i, !727, !DIExpression(), !736)
    #dbg_value(i32 0, !728, !DIExpression(), !736)
  %add2.i.i = or disjoint i32 %conv104.i, 256, !dbg !739
  br i1 %cmp101.i, label %do.body.i.preheader.i, label %do.body.i.i.i, !dbg !740

do.body.i.preheader.i:                            ; preds = %if.end89.i
  %conv103.i = zext i8 %98 to i32, !dbg !741
    #dbg_value(i32 %conv103.i, !721, !DIExpression(), !736)
  br label %do.body.i.i156, !dbg !742

do.body.i.i.i:                                    ; preds = %if.end89.i, %do.body.i.i.i
  %price.0.i.i.i = phi i32 [ %add1.i.i.i, %do.body.i.i.i ], [ 0, %if.end89.i ], !dbg !743
  %symbol.addr.0.i.i.i = phi i32 [ %shr.i.i.i154, %do.body.i.i.i ], [ %add2.i.i, %if.end89.i ], !dbg !743
    #dbg_value(i32 %symbol.addr.0.i.i.i, !396, !DIExpression(), !743)
    #dbg_value(i32 %price.0.i.i.i, !397, !DIExpression(), !743)
  %and.i.i.i153 = and i32 %symbol.addr.0.i.i.i, 1, !dbg !746
    #dbg_value(i32 %and.i.i.i153, !398, !DIExpression(), !747)
  %shr.i.i.i154 = lshr i32 %symbol.addr.0.i.i.i, 1, !dbg !748
    #dbg_value(i32 %shr.i.i.i154, !396, !DIExpression(), !743)
  %idxprom.i.i.i = zext nneg i32 %shr.i.i.i154 to i64, !dbg !749
  %arrayidx.i.i.i155 = getelementptr inbounds i16, ptr %arrayidx.i498.i, i64 %idxprom.i.i.i, !dbg !749
  %147 = load i16, ptr %arrayidx.i.i.i155, align 2, !dbg !749, !noalias !333
    #dbg_value(i16 %147, !408, !DIExpression(), !750)
    #dbg_value(i32 %and.i.i.i153, !413, !DIExpression(), !750)
  %conv.i.i.i.i = zext i16 %147 to i64, !dbg !752
  %148 = icmp eq i32 %and.i.i.i153, 0, !dbg !753
  %and.i.i.i.i = select i1 %148, i64 0, i64 2032, !dbg !753
  %xor.i.i.i.i = xor i64 %and.i.i.i.i, %conv.i.i.i.i, !dbg !754
  %shr.i.i.i.i = lshr i64 %xor.i.i.i.i, 4, !dbg !755
  %arrayidx.i.i.i.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i.i.i, !dbg !756
  %149 = load i8, ptr %arrayidx.i.i.i.i, align 1, !dbg !756, !noalias !333
  %conv1.i.i.i.i = zext i8 %149 to i32, !dbg !756
  %add1.i.i.i = add i32 %price.0.i.i.i, %conv1.i.i.i.i, !dbg !757
    #dbg_value(i32 %add1.i.i.i, !397, !DIExpression(), !743)
  %cmp.not.i.i.i = icmp eq i32 %shr.i.i.i154, 1, !dbg !758
  br i1 %cmp.not.i.i.i, label %get_literal_price.exit.i, label %do.body.i.i.i, !dbg !759, !llvm.loop !760

do.body.i.i156:                                   ; preds = %do.body.i.i156, %do.body.i.preheader.i
  %offset.0.i.i = phi i32 [ %and15.i.i, %do.body.i.i156 ], [ 256, %do.body.i.preheader.i ], !dbg !763
  %price.0.i.i157 = phi i32 [ %add13.i.i, %do.body.i.i156 ], [ 0, %do.body.i.preheader.i ], !dbg !736
  %symbol.addr.0.i.i158 = phi i32 [ %shl14.i.i, %do.body.i.i156 ], [ %add2.i.i, %do.body.i.preheader.i ], !dbg !763
  %match_byte.addr.0.i.i = phi i32 [ %shl3.i.i, %do.body.i.i156 ], [ %conv103.i, %do.body.i.preheader.i ]
    #dbg_value(i32 %match_byte.addr.0.i.i, !721, !DIExpression(), !736)
    #dbg_value(i32 %symbol.addr.0.i.i158, !722, !DIExpression(), !736)
    #dbg_value(i32 %price.0.i.i157, !728, !DIExpression(), !736)
    #dbg_value(i32 %offset.0.i.i, !729, !DIExpression(), !763)
  %shl3.i.i = shl i32 %match_byte.addr.0.i.i, 1, !dbg !764
    #dbg_value(i32 %shl3.i.i, !721, !DIExpression(), !736)
  %and4.i.i = and i32 %shl3.i.i, %offset.0.i.i, !dbg !765
    #dbg_value(i32 %and4.i.i, !732, !DIExpression(), !766)
  %shr6.i.i = lshr i32 %symbol.addr.0.i.i158, 8, !dbg !767
  %add5.i.i = add nuw nsw i32 %shr6.i.i, %offset.0.i.i, !dbg !768
  %add7.i.i = add nuw nsw i32 %add5.i.i, %and4.i.i, !dbg !769
    #dbg_value(i32 %add7.i.i, !734, !DIExpression(), !766)
    #dbg_value(i32 %symbol.addr.0.i.i158, !735, !DIExpression(DW_OP_constu, 7, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value), !766)
  %idxprom10.i.i = zext nneg i32 %add7.i.i to i64, !dbg !770
  %arrayidx11.i.i = getelementptr inbounds i16, ptr %arrayidx.i498.i, i64 %idxprom10.i.i, !dbg !770
  %150 = load i16, ptr %arrayidx11.i.i, align 2, !dbg !770, !noalias !333
    #dbg_value(i16 %150, !408, !DIExpression(), !771)
    #dbg_value(i32 %symbol.addr.0.i.i158, !413, !DIExpression(DW_OP_constu, 7, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value), !771)
  %conv.i.i.i159 = zext i16 %150 to i64, !dbg !773
  %.mask.i.i = and i32 %symbol.addr.0.i.i158, 128, !dbg !774
  %isneg.not.i.i = icmp eq i32 %.mask.i.i, 0, !dbg !774
  %and.i31.i.i = select i1 %isneg.not.i.i, i64 0, i64 2032, !dbg !774
  %xor.i.i.i160 = xor i64 %and.i31.i.i, %conv.i.i.i159, !dbg !775
  %shr.i32.i.i = lshr i64 %xor.i.i.i160, 4, !dbg !776
  %arrayidx.i34.i.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i32.i.i, !dbg !777
  %151 = load i8, ptr %arrayidx.i34.i.i, align 1, !dbg !777, !noalias !333
  %conv1.i.i.i161 = zext i8 %151 to i32, !dbg !777
  %add13.i.i = add i32 %price.0.i.i157, %conv1.i.i.i161, !dbg !778
    #dbg_value(i32 %add13.i.i, !728, !DIExpression(), !736)
  %shl14.i.i = shl nuw nsw i32 %symbol.addr.0.i.i158, 1, !dbg !779
    #dbg_value(i32 %shl14.i.i, !722, !DIExpression(), !736)
  %152 = xor i32 %shl14.i.i, %shl3.i.i, !dbg !780
  %not.i.i = xor i32 %152, -1, !dbg !780
  %and15.i.i = and i32 %offset.0.i.i, %not.i.i, !dbg !781
    #dbg_value(i32 %and15.i.i, !729, !DIExpression(), !763)
  %cmp.i.i = icmp ult i32 %symbol.addr.0.i.i158, 32768, !dbg !782
  br i1 %cmp.i.i, label %do.body.i.i156, label %get_literal_price.exit.i, !dbg !783, !llvm.loop !784

get_literal_price.exit.i:                         ; preds = %do.body.i.i.i, %do.body.i.i156
  %price.1.i.i = phi i32 [ %add13.i.i, %do.body.i.i156 ], [ %add1.i.i.i, %do.body.i.i.i ], !dbg !739
    #dbg_value(i32 %price.1.i.i, !728, !DIExpression(), !736)
  %add106.i = add i32 %price.1.i.i, %conv1.i.i, !dbg !786
  %price.i = getelementptr inbounds i8, ptr %pcoder, i64 69408, !dbg !787
  store i32 %add106.i, ptr %price.i, align 4, !dbg !788, !noalias !333
    #dbg_value(ptr %pcoder, !789, !DIExpression(DW_OP_plus_uconst, 69392, DW_OP_stack_value), !795)
  %back_prev.i.i = getelementptr inbounds i8, ptr %pcoder, i64 69416, !dbg !797
  store i32 -1, ptr %back_prev.i.i, align 4, !dbg !798, !noalias !333
  %prev_1_is_literal.i.i = getelementptr inbounds i8, ptr %pcoder, i64 69396, !dbg !799
  store i8 0, ptr %prev_1_is_literal.i.i, align 4, !dbg !800, !noalias !333
  %153 = load i16, ptr %arrayidx96.i, align 2, !dbg !801, !noalias !333
    #dbg_value(i16 %153, !802, !DIExpression(), !805)
  %154 = lshr i16 %153, 4, !dbg !807
  %155 = xor i16 %154, 127, !dbg !807
  %idxprom.i499.i = zext nneg i16 %155 to i64, !dbg !808
  %arrayidx.i500.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i499.i, !dbg !808
  %156 = load i8, ptr %arrayidx.i500.i, align 1, !dbg !808, !noalias !333
  %conv1.i501.i = zext i8 %156 to i32, !dbg !808
    #dbg_value(i32 %conv1.i501.i, !270, !DIExpression(), !296)
  %is_rep.i = getelementptr inbounds i8, ptr %pcoder, i64 27932, !dbg !809
  %arrayidx120.i = getelementptr inbounds [12 x i16], ptr %is_rep.i, i64 0, i64 %idxprom93.i, !dbg !810
  %157 = load i16, ptr %arrayidx120.i, align 2, !dbg !810, !noalias !333
    #dbg_value(i16 %157, !802, !DIExpression(), !811)
  %158 = lshr i16 %157, 4, !dbg !813
  %159 = xor i16 %158, 127, !dbg !813
  %idxprom.i502.i = zext nneg i16 %159 to i64, !dbg !814
  %arrayidx.i503.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i502.i, !dbg !814
  %160 = load i8, ptr %arrayidx.i503.i, align 1, !dbg !814, !noalias !333
  %conv1.i504.i = zext i8 %160 to i32, !dbg !814
  %add122.i = add nuw nsw i32 %conv1.i504.i, %conv1.i501.i, !dbg !815
    #dbg_value(i32 %add122.i, !271, !DIExpression(), !296)
  br i1 %cmp81.not.i, label %if.end143.i, label %if.then127.i, !dbg !816

if.then127.i:                                     ; preds = %get_literal_price.exit.i
    #dbg_value(ptr %pcoder, !817, !DIExpression(), !826)
    #dbg_value(i32 %139, !823, !DIExpression(), !826)
    #dbg_value(i32 %and.i147, !824, !DIExpression(), !826)
    #dbg_value(ptr %pcoder, !825, !DIExpression(), !826)
  %is_rep0.i.i = getelementptr inbounds i8, ptr %pcoder, i64 27956, !dbg !828
  %arrayidx.i506.i = getelementptr inbounds [12 x i16], ptr %is_rep0.i.i, i64 0, i64 %idxprom93.i, !dbg !829
  %161 = load i16, ptr %arrayidx.i506.i, align 2, !dbg !829, !noalias !333
    #dbg_value(i16 %161, !697, !DIExpression(), !830)
  %162 = lshr i16 %161, 4, !dbg !832
  %idxprom.i.i507.i = zext nneg i16 %162 to i64, !dbg !833
  %arrayidx.i.i508.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i.i507.i, !dbg !833
  %163 = load i8, ptr %arrayidx.i.i508.i, align 1, !dbg !833, !noalias !333
  %conv1.i.i509.i = zext i8 %163 to i32, !dbg !833
  %is_rep0_long.i.i = getelementptr inbounds i8, ptr %pcoder, i64 28028, !dbg !834
  %arrayidx4.i.i = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long.i.i, i64 0, i64 %idxprom93.i, i64 %idxprom95.i, !dbg !835
  %164 = load i16, ptr %arrayidx4.i.i, align 2, !dbg !835, !noalias !333
    #dbg_value(i16 %164, !697, !DIExpression(), !836)
  %165 = lshr i16 %164, 4, !dbg !838
  %idxprom.i8.i.i = zext nneg i16 %165 to i64, !dbg !839
  %arrayidx.i9.i.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i8.i.i, !dbg !839
  %166 = load i8, ptr %arrayidx.i9.i.i, align 1, !dbg !839, !noalias !333
  %conv1.i10.i.i = zext i8 %166 to i32, !dbg !839
  %add.i510.i = add nuw nsw i32 %add122.i, %conv1.i.i509.i, !dbg !840
  %add130.i = add nuw nsw i32 %add.i510.i, %conv1.i10.i.i, !dbg !841
    #dbg_value(i32 %add130.i, !272, !DIExpression(), !842)
  %cmp134.i = icmp ult i32 %add130.i, %add106.i, !dbg !843
  br i1 %cmp134.i, label %if.then136.i, label %if.end143.i, !dbg !845

if.then136.i:                                     ; preds = %if.then127.i
  store i32 %add130.i, ptr %price.i, align 4, !dbg !846, !noalias !333
    #dbg_value(ptr %pcoder, !848, !DIExpression(DW_OP_plus_uconst, 69392, DW_OP_stack_value), !851)
  store i32 0, ptr %back_prev.i.i, align 4, !dbg !853, !noalias !333
  store i8 0, ptr %prev_1_is_literal.i.i, align 4, !dbg !854, !noalias !333
  br label %if.end143.i, !dbg !855

if.end143.i:                                      ; preds = %if.then136.i, %if.then127.i, %get_literal_price.exit.i
  %167 = phi i32 [ -1, %if.then127.i ], [ 0, %if.then136.i ], [ -1, %get_literal_price.exit.i ]
  %len_main.0..i = call i32 @llvm.umax.i32(i32 %len_main.0.i, i32 %130), !dbg !856
    #dbg_value(i32 %len_main.0..i, !275, !DIExpression(), !296)
  %cmp154.i = icmp ult i32 %len_main.0..i, 2, !dbg !857
  br i1 %cmp154.i, label %if.then156.i, label %if.end159.i, !dbg !859

if.then156.i:                                     ; preds = %if.end143.i
  store i32 %167, ptr %back_res, align 4, !dbg !860, !alias.scope !565, !noalias !591
  store i32 1, ptr %len_res, align 4, !dbg !862, !alias.scope !566, !noalias !593
  br label %helper1.exit.thread333, !dbg !863

if.end159.i:                                      ; preds = %if.end143.i
  %pos_prev.i = getelementptr inbounds i8, ptr %pcoder, i64 69412, !dbg !864
  store i32 0, ptr %pos_prev.i, align 4, !dbg !865, !noalias !333
    #dbg_value(i32 0, !276, !DIExpression(), !866)
  %backs.i = getelementptr i8, ptr %pcoder, i64 69376
    #dbg_value(i64 0, !276, !DIExpression(), !866)
  store i32 %97, ptr %backs.i, align 4, !dbg !867, !noalias !333
    #dbg_value(i64 1, !276, !DIExpression(), !866)
  %arrayidx174.1.i = getelementptr inbounds i8, ptr %pcoder, i64 69380, !dbg !869
  store i32 %104, ptr %arrayidx174.1.i, align 4, !dbg !867, !noalias !333
    #dbg_value(i64 2, !276, !DIExpression(), !866)
  %arrayidx174.2.i = getelementptr inbounds i8, ptr %pcoder, i64 69384, !dbg !869
  store i32 %112, ptr %arrayidx174.2.i, align 4, !dbg !867, !noalias !333
    #dbg_value(i64 3, !276, !DIExpression(), !866)
  %arrayidx174.3.i = getelementptr inbounds i8, ptr %pcoder, i64 69388, !dbg !869
  store i32 %121, ptr %arrayidx174.3.i, align 4, !dbg !867, !noalias !333
    #dbg_value(i64 4, !276, !DIExpression(), !866)
  %umax.i = zext i32 %len_main.0..i to i64, !dbg !870
  %168 = add i32 %len_main.0..i, -1, !dbg !870
  %169 = zext i32 %168 to i64, !dbg !870
  %min.iters.check = icmp ult i32 %len_main.0..i, 5, !dbg !870
  br i1 %min.iters.check, label %do.body.i.preheader, label %vector.ph, !dbg !870

vector.ph:                                        ; preds = %if.end159.i
  %n.vec = and i64 %169, 4294967292, !dbg !870
  %ind.end = sub nsw i64 %umax.i, %n.vec, !dbg !870
  %.cast = trunc nuw i64 %n.vec to i32, !dbg !870
  %ind.end430 = sub i32 %len_main.0..i, %.cast, !dbg !870
  br label %vector.body, !dbg !870

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = sub i64 %umax.i, %index, !dbg !870
  %170 = add i64 %offset.idx, -1, !dbg !870
  %171 = add i64 %offset.idx, -2, !dbg !870
  %172 = add i64 %offset.idx, -3, !dbg !870
  %173 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %offset.idx, i32 5, !dbg !871
  %174 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %170, i32 5, !dbg !871
  %175 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %171, i32 5, !dbg !871
  %176 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %172, i32 5, !dbg !871
  store i32 1073741824, ptr %173, align 4, !dbg !873, !noalias !333
  store i32 1073741824, ptr %174, align 4, !dbg !873, !noalias !333
  store i32 1073741824, ptr %175, align 4, !dbg !873, !noalias !333
  store i32 1073741824, ptr %176, align 4, !dbg !873, !noalias !333
  %index.next = add nuw i64 %index, 4
  %177 = icmp eq i64 %index.next, %n.vec
  br i1 %177, label %middle.block, label %vector.body, !llvm.loop !874

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %169, !dbg !878
  br i1 %cmp.n, label %for.cond186.preheader.i, label %do.body.i.preheader, !dbg !878

do.body.i.preheader:                              ; preds = %middle.block, %if.end159.i
  %indvars.iv568.i.ph = phi i64 [ %umax.i, %if.end159.i ], [ %ind.end, %middle.block ]
  %len.0.i.ph = phi i32 [ %len_main.0..i, %if.end159.i ], [ %ind.end430, %middle.block ]
  br label %do.body.i, !dbg !870

do.body.i:                                        ; preds = %do.body.i.preheader, %do.body.i
  %indvars.iv568.i = phi i64 [ %indvars.iv.next569.i, %do.body.i ], [ %indvars.iv568.i.ph, %do.body.i.preheader ], !dbg !296
  %len.0.i = phi i32 [ %dec.i, %do.body.i ], [ %len.0.i.ph, %do.body.i.preheader ], !dbg !296
    #dbg_value(i64 %indvars.iv568.i, !278, !DIExpression(), !296)
  %price182.i = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv568.i, i32 5, !dbg !871
  store i32 1073741824, ptr %price182.i, align 4, !dbg !873, !noalias !333
  %dec.i = add i32 %len.0.i, -1, !dbg !879
    #dbg_value(i32 %dec.i, !278, !DIExpression(), !296)
  %cmp183.i = icmp ugt i32 %dec.i, 1, !dbg !880
  %indvars.iv.next569.i = add nsw i64 %indvars.iv568.i, -1, !dbg !879
  br i1 %cmp183.i, label %do.body.i, label %for.cond186.preheader.i, !dbg !878, !llvm.loop !881

for.cond186.preheader.i:                          ; preds = %do.body.i, %middle.block
    #dbg_value(i32 0, !279, !DIExpression(), !882)
  %is_rep0.i517.i = getelementptr inbounds i8, ptr %pcoder, i64 27956
  %arrayidx.i519.i = getelementptr inbounds [12 x i16], ptr %is_rep0.i517.i, i64 0, i64 %idxprom93.i
  %is_rep1.i.i = getelementptr inbounds i8, ptr %pcoder, i64 27980
  %arrayidx13.i.i = getelementptr inbounds [12 x i16], ptr %is_rep1.i.i, i64 0, i64 %idxprom93.i
  %is_rep2.i.i = getelementptr inbounds i8, ptr %pcoder, i64 28004
  %arrayidx23.i.i = getelementptr inbounds [12 x i16], ptr %is_rep2.i.i, i64 0, i64 %idxprom93.i
  %prices.i.i = getelementptr inbounds i8, ptr %pcoder, i64 48716
    #dbg_value(i64 0, !279, !DIExpression(), !882)
    #dbg_value(i32 %storemerge.i, !281, !DIExpression(), !883)
  %cmp193.i = icmp ult i32 %storemerge.i, 2, !dbg !884
  br i1 %cmp193.i, label %cleanup232.i, label %get_pure_rep_price.exit.i, !dbg !886

while.cond.preheader.i:                           ; preds = %cleanup232.3.i
  %matches258.i = getelementptr inbounds i8, ptr %pcoder, i64 756
  br label %while.cond.i, !dbg !887

get_pure_rep_price.exit.i:                        ; preds = %for.cond186.preheader.i
  %is_rep0_long.i529.i = getelementptr inbounds i8, ptr %pcoder, i64 28028
  %arrayidx4.i531.i = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long.i529.i, i64 0, i64 %idxprom93.i, i64 %idxprom95.i
    #dbg_value(ptr %pcoder, !888, !DIExpression(), !898)
    #dbg_value(i64 0, !893, !DIExpression(), !898)
    #dbg_value(i32 %139, !894, !DIExpression(), !898)
    #dbg_value(i32 %and.i147, !895, !DIExpression(), !898)
    #dbg_value(ptr %pcoder, !896, !DIExpression(), !898)
    #dbg_value(i16 poison, !697, !DIExpression(), !900)
    #dbg_value(i16 poison, !802, !DIExpression(), !904)
    #dbg_value(!DIArgList(i32 poison, i8 poison), !897, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !898)
  %178 = load i16, ptr %arrayidx4.i531.i, align 2, !dbg !906, !noalias !333
    #dbg_value(i16 %178, !802, !DIExpression(), !904)
  %179 = lshr i16 %178, 4, !dbg !907
  %180 = xor i16 %179, 127, !dbg !907
  %idxprom.i43.i.i = zext nneg i16 %180 to i64, !dbg !908
  %arrayidx.i44.i.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i43.i.i, !dbg !908
  %181 = load i8, ptr %arrayidx.i44.i.i, align 1, !dbg !908, !noalias !333
  %conv1.i45.i.i = zext i8 %181 to i32, !dbg !908
  %182 = load i16, ptr %arrayidx.i519.i, align 2, !dbg !909, !noalias !333
    #dbg_value(i16 %182, !697, !DIExpression(), !900)
  %183 = lshr i16 %182, 4, !dbg !909
  %idxprom.i.i526.i = zext nneg i16 %183 to i64, !dbg !910
  %arrayidx.i.i527.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i.i526.i, !dbg !910
  %184 = load i8, ptr %arrayidx.i.i527.i, align 1, !dbg !910, !noalias !333
    #dbg_value(!DIArgList(i32 %conv1.i45.i.i, i8 %184), !897, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !898)
  %conv1.i.i528.i = zext i8 %184 to i32, !dbg !910
    #dbg_value(i32 poison, !897, !DIExpression(), !898)
    #dbg_value(i32 %add200.i, !284, !DIExpression(), !883)
  %add.i532.i = add nuw nsw i32 %add122.i, %conv1.i45.i.i
  %add200.i = add nuw nsw i32 %add.i532.i, %conv1.i.i528.i
  %185 = zext i32 %storemerge.i to i64, !dbg !911
  br label %do.body201.i, !dbg !911

do.body201.i:                                     ; preds = %if.end226.i, %get_pure_rep_price.exit.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end226.i ], [ %185, %get_pure_rep_price.exit.i ], !dbg !883
    #dbg_value(i64 %indvars.iv, !281, !DIExpression(), !883)
    #dbg_value(ptr %pcoder, !912, !DIExpression(DW_OP_plus_uconst, 47688, DW_OP_stack_value), !922)
    #dbg_value(i64 %indvars.iv, !920, !DIExpression(), !922)
    #dbg_value(i32 %and.i147, !921, !DIExpression(), !922)
  %186 = add nsw i64 %indvars.iv, -2, !dbg !924
  %arrayidx2.i.i = getelementptr inbounds [16 x [272 x i32]], ptr %prices.i.i, i64 0, i64 %idxprom95.i, i64 %186, !dbg !925
  %187 = load i32, ptr %arrayidx2.i.i, align 4, !dbg !925, !noalias !333
  %add203.i = add i32 %add200.i, %187, !dbg !926
    #dbg_value(i32 %add203.i, !285, !DIExpression(), !927)
  %arrayidx206.i = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv, !dbg !928
  %price207.i = getelementptr inbounds i8, ptr %arrayidx206.i, i64 16, !dbg !930
  %188 = load i32, ptr %price207.i, align 4, !dbg !930, !noalias !333
  %cmp208.i = icmp ult i32 %add203.i, %188, !dbg !931
  br i1 %cmp208.i, label %if.then210.i, label %if.end226.i, !dbg !932

if.then210.i:                                     ; preds = %do.body201.i
  store i32 %add203.i, ptr %price207.i, align 4, !dbg !933, !noalias !333
  %pos_prev218.i = getelementptr inbounds i8, ptr %arrayidx206.i, i64 20, !dbg !935
  store i32 0, ptr %pos_prev218.i, align 4, !dbg !936, !noalias !333
  %back_prev222.i = getelementptr inbounds i8, ptr %arrayidx206.i, i64 24, !dbg !937
  store i32 0, ptr %back_prev222.i, align 4, !dbg !938, !noalias !333
  %prev_1_is_literal.i = getelementptr inbounds i8, ptr %arrayidx206.i, i64 4, !dbg !939
  store i8 0, ptr %prev_1_is_literal.i, align 4, !dbg !940, !noalias !333
  br label %if.end226.i, !dbg !941

if.end226.i:                                      ; preds = %if.then210.i, %do.body201.i
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !942
    #dbg_value(i64 %indvars.iv.next, !281, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !883)
  %189 = and i64 %indvars.iv.next, 4294967294, !dbg !943
  %cmp229.i.not = icmp eq i64 %189, 0, !dbg !943
  br i1 %cmp229.i.not, label %cleanup232.i, label %do.body201.i, !dbg !944, !llvm.loop !945

cleanup232.i:                                     ; preds = %if.end226.i, %for.cond186.preheader.i
    #dbg_value(i64 1, !279, !DIExpression(), !882)
    #dbg_value(i32 %111, !281, !DIExpression(), !883)
  %cmp193.1.i = icmp ult i32 %111, 2, !dbg !884
  br i1 %cmp193.1.i, label %cleanup232.1.i, label %get_pure_rep_price.exit.1.i, !dbg !886

get_pure_rep_price.exit.1.i:                      ; preds = %cleanup232.i
    #dbg_value(ptr %pcoder, !888, !DIExpression(), !898)
    #dbg_value(i64 1, !893, !DIExpression(), !898)
    #dbg_value(i32 %139, !894, !DIExpression(), !898)
    #dbg_value(i32 %and.i147, !895, !DIExpression(), !898)
    #dbg_value(ptr %pcoder, !896, !DIExpression(), !898)
    #dbg_value(i16 poison, !802, !DIExpression(), !947)
    #dbg_value(i16 poison, !697, !DIExpression(), !950)
    #dbg_value(!DIArgList(i32 poison, i8 poison), !897, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !898)
  %190 = load i16, ptr %arrayidx13.i.i, align 2, !dbg !954, !noalias !333
    #dbg_value(i16 %190, !697, !DIExpression(), !950)
  %191 = lshr i16 %190, 4, !dbg !954
  %idxprom.i49.i.1.i = zext nneg i16 %191 to i64, !dbg !955
  %arrayidx.i50.i.1.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i49.i.1.i, !dbg !955
  %192 = load i8, ptr %arrayidx.i50.i.1.i, align 1, !dbg !955, !noalias !333
  %conv1.i51.i.1.i = zext i8 %192 to i32, !dbg !955
  %193 = load i16, ptr %arrayidx.i519.i, align 2, !dbg !909, !noalias !333
    #dbg_value(i16 %193, !802, !DIExpression(), !947)
  %194 = lshr i16 %193, 4, !dbg !909
  %195 = xor i16 %194, 127, !dbg !956
  %idxprom.i46.i.1.i = zext nneg i16 %195 to i64, !dbg !957
  %arrayidx.i47.i.1.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i46.i.1.i, !dbg !957
  %196 = load i8, ptr %arrayidx.i47.i.1.i, align 1, !dbg !957, !noalias !333
    #dbg_value(!DIArgList(i32 %conv1.i51.i.1.i, i8 %196), !897, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !898)
  %conv1.i48.i.1.i = zext i8 %196 to i32, !dbg !957
    #dbg_value(i32 poison, !897, !DIExpression(), !898)
    #dbg_value(i32 %add200.1.i, !284, !DIExpression(), !883)
  %add15.i.1.i = add nuw nsw i32 %add122.i, %conv1.i51.i.1.i
  %add200.1.i = add nuw nsw i32 %add15.i.1.i, %conv1.i48.i.1.i
  %197 = zext i32 %111 to i64, !dbg !911
  br label %do.body201.1.i, !dbg !911

do.body201.1.i:                                   ; preds = %if.end226.1.i, %get_pure_rep_price.exit.1.i
  %indvars.iv376 = phi i64 [ %indvars.iv.next377, %if.end226.1.i ], [ %197, %get_pure_rep_price.exit.1.i ], !dbg !883
    #dbg_value(i64 %indvars.iv376, !281, !DIExpression(), !883)
    #dbg_value(ptr %pcoder, !912, !DIExpression(DW_OP_plus_uconst, 47688, DW_OP_stack_value), !922)
    #dbg_value(i64 %indvars.iv376, !920, !DIExpression(), !922)
    #dbg_value(i32 %and.i147, !921, !DIExpression(), !922)
  %198 = add nsw i64 %indvars.iv376, -2, !dbg !924
  %arrayidx2.i.1.i = getelementptr inbounds [16 x [272 x i32]], ptr %prices.i.i, i64 0, i64 %idxprom95.i, i64 %198, !dbg !925
  %199 = load i32, ptr %arrayidx2.i.1.i, align 4, !dbg !925, !noalias !333
  %add203.1.i = add i32 %add200.1.i, %199, !dbg !926
    #dbg_value(i32 %add203.1.i, !285, !DIExpression(), !927)
  %arrayidx206.1.i = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv376, !dbg !928
  %price207.1.i = getelementptr inbounds i8, ptr %arrayidx206.1.i, i64 16, !dbg !930
  %200 = load i32, ptr %price207.1.i, align 4, !dbg !930, !noalias !333
  %cmp208.1.i = icmp ult i32 %add203.1.i, %200, !dbg !931
  br i1 %cmp208.1.i, label %if.then210.1.i, label %if.end226.1.i, !dbg !932

if.then210.1.i:                                   ; preds = %do.body201.1.i
  store i32 %add203.1.i, ptr %price207.1.i, align 4, !dbg !933, !noalias !333
  %pos_prev218.1.i = getelementptr inbounds i8, ptr %arrayidx206.1.i, i64 20, !dbg !935
  store i32 0, ptr %pos_prev218.1.i, align 4, !dbg !936, !noalias !333
  %back_prev222.1.i = getelementptr inbounds i8, ptr %arrayidx206.1.i, i64 24, !dbg !937
  store i32 1, ptr %back_prev222.1.i, align 4, !dbg !938, !noalias !333
  %prev_1_is_literal.1.i = getelementptr inbounds i8, ptr %arrayidx206.1.i, i64 4, !dbg !939
  store i8 0, ptr %prev_1_is_literal.1.i, align 4, !dbg !940, !noalias !333
  br label %if.end226.1.i, !dbg !941

if.end226.1.i:                                    ; preds = %if.then210.1.i, %do.body201.1.i
  %indvars.iv.next377 = add nsw i64 %indvars.iv376, -1, !dbg !942
    #dbg_value(i64 %indvars.iv.next377, !281, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !883)
  %201 = and i64 %indvars.iv.next377, 4294967294, !dbg !943
  %cmp229.1.i.not = icmp eq i64 %201, 0, !dbg !943
  br i1 %cmp229.1.i.not, label %cleanup232.1.i, label %do.body201.1.i, !dbg !944, !llvm.loop !958

cleanup232.1.i:                                   ; preds = %if.end226.1.i, %cleanup232.i
    #dbg_value(i64 2, !279, !DIExpression(), !882)
    #dbg_value(i32 %120, !281, !DIExpression(), !883)
  %cmp193.2.i = icmp ult i32 %120, 2, !dbg !884
  br i1 %cmp193.2.i, label %cleanup232.2.i, label %get_pure_rep_price.exit.2.i, !dbg !886

get_pure_rep_price.exit.2.i:                      ; preds = %cleanup232.1.i
    #dbg_value(ptr %pcoder, !888, !DIExpression(), !898)
    #dbg_value(i64 2, !893, !DIExpression(), !898)
    #dbg_value(i32 %139, !894, !DIExpression(), !898)
    #dbg_value(i32 %and.i147, !895, !DIExpression(), !898)
    #dbg_value(ptr %pcoder, !896, !DIExpression(), !898)
    #dbg_value(i16 poison, !802, !DIExpression(), !947)
    #dbg_value(i16 poison, !802, !DIExpression(), !959)
    #dbg_value(i16 poison, !408, !DIExpression(), !962)
    #dbg_value(i64 2, !413, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !962)
    #dbg_value(!DIArgList(i32 poison, i8 poison), !897, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !898)
  %202 = load i16, ptr %arrayidx13.i.i, align 2, !dbg !954, !noalias !333
    #dbg_value(i16 %202, !802, !DIExpression(), !959)
  %203 = lshr i16 %202, 4, !dbg !954
  %204 = xor i16 %203, 127, !dbg !964
  %idxprom.i52.i.2.i = zext nneg i16 %204 to i64, !dbg !965
  %arrayidx.i53.i.2.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i52.i.2.i, !dbg !965
  %205 = load i8, ptr %arrayidx.i53.i.2.i, align 1, !dbg !965, !noalias !333
  %conv1.i54.i.2.i = zext i8 %205 to i32, !dbg !965
  %206 = load i16, ptr %arrayidx.i519.i, align 2, !dbg !909, !noalias !333
    #dbg_value(i16 %206, !802, !DIExpression(), !947)
  %207 = lshr i16 %206, 4, !dbg !909
  %208 = xor i16 %207, 127, !dbg !956
  %idxprom.i46.i.2.i = zext nneg i16 %208 to i64, !dbg !957
  %arrayidx.i47.i.2.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i46.i.2.i, !dbg !957
  %209 = load i8, ptr %arrayidx.i47.i.2.i, align 1, !dbg !957, !noalias !333
    #dbg_value(!DIArgList(i32 %conv1.i54.i.2.i, i8 %209), !897, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !898)
  %conv1.i48.i.2.i = zext i8 %209 to i32, !dbg !957
    #dbg_value(i32 poison, !897, !DIExpression(), !898)
  %210 = load i16, ptr %arrayidx23.i.i, align 2, !dbg !966, !noalias !333
    #dbg_value(i16 %210, !408, !DIExpression(), !962)
  %211 = lshr i16 %210, 4, !dbg !967
  %idxprom.i55.i.2.i = zext nneg i16 %211 to i64, !dbg !968
  %arrayidx.i56.i.2.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i55.i.2.i, !dbg !968
  %212 = load i8, ptr %arrayidx.i56.i.2.i, align 1, !dbg !968, !noalias !333
    #dbg_value(!DIArgList(i32 poison, i8 poison), !897, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !898)
  %conv1.i57.i.2.i = zext i8 %212 to i32, !dbg !968
    #dbg_value(i32 poison, !897, !DIExpression(), !898)
    #dbg_value(i32 %add200.2.i, !284, !DIExpression(), !883)
  %add21.i.2.i = add nuw nsw i32 %add122.i, %conv1.i54.i.2.i
  %add25.i.2.i = add nuw nsw i32 %add21.i.2.i, %conv1.i48.i.2.i
  %add200.2.i = add nuw nsw i32 %add25.i.2.i, %conv1.i57.i.2.i
  %213 = zext i32 %120 to i64, !dbg !911
  br label %do.body201.2.i, !dbg !911

do.body201.2.i:                                   ; preds = %if.end226.2.i, %get_pure_rep_price.exit.2.i
  %indvars.iv381 = phi i64 [ %indvars.iv.next382, %if.end226.2.i ], [ %213, %get_pure_rep_price.exit.2.i ], !dbg !883
    #dbg_value(i64 %indvars.iv381, !281, !DIExpression(), !883)
    #dbg_value(ptr %pcoder, !912, !DIExpression(DW_OP_plus_uconst, 47688, DW_OP_stack_value), !922)
    #dbg_value(i64 %indvars.iv381, !920, !DIExpression(), !922)
    #dbg_value(i32 %and.i147, !921, !DIExpression(), !922)
  %214 = add nsw i64 %indvars.iv381, -2, !dbg !924
  %arrayidx2.i.2.i = getelementptr inbounds [16 x [272 x i32]], ptr %prices.i.i, i64 0, i64 %idxprom95.i, i64 %214, !dbg !925
  %215 = load i32, ptr %arrayidx2.i.2.i, align 4, !dbg !925, !noalias !333
  %add203.2.i = add i32 %add200.2.i, %215, !dbg !926
    #dbg_value(i32 %add203.2.i, !285, !DIExpression(), !927)
  %arrayidx206.2.i = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv381, !dbg !928
  %price207.2.i = getelementptr inbounds i8, ptr %arrayidx206.2.i, i64 16, !dbg !930
  %216 = load i32, ptr %price207.2.i, align 4, !dbg !930, !noalias !333
  %cmp208.2.i = icmp ult i32 %add203.2.i, %216, !dbg !931
  br i1 %cmp208.2.i, label %if.then210.2.i, label %if.end226.2.i, !dbg !932

if.then210.2.i:                                   ; preds = %do.body201.2.i
  store i32 %add203.2.i, ptr %price207.2.i, align 4, !dbg !933, !noalias !333
  %pos_prev218.2.i = getelementptr inbounds i8, ptr %arrayidx206.2.i, i64 20, !dbg !935
  store i32 0, ptr %pos_prev218.2.i, align 4, !dbg !936, !noalias !333
  %back_prev222.2.i = getelementptr inbounds i8, ptr %arrayidx206.2.i, i64 24, !dbg !937
  store i32 2, ptr %back_prev222.2.i, align 4, !dbg !938, !noalias !333
  %prev_1_is_literal.2.i = getelementptr inbounds i8, ptr %arrayidx206.2.i, i64 4, !dbg !939
  store i8 0, ptr %prev_1_is_literal.2.i, align 4, !dbg !940, !noalias !333
  br label %if.end226.2.i, !dbg !941

if.end226.2.i:                                    ; preds = %if.then210.2.i, %do.body201.2.i
  %indvars.iv.next382 = add nsw i64 %indvars.iv381, -1, !dbg !942
    #dbg_value(i64 %indvars.iv.next382, !281, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !883)
  %217 = and i64 %indvars.iv.next382, 4294967294, !dbg !943
  %cmp229.2.i.not = icmp eq i64 %217, 0, !dbg !943
  br i1 %cmp229.2.i.not, label %cleanup232.2.i, label %do.body201.2.i, !dbg !944, !llvm.loop !969

cleanup232.2.i:                                   ; preds = %if.end226.2.i, %cleanup232.1.i
    #dbg_value(i64 3, !279, !DIExpression(), !882)
    #dbg_value(i32 %129, !281, !DIExpression(), !883)
  %cmp193.3.i = icmp ult i32 %129, 2, !dbg !884
  br i1 %cmp193.3.i, label %cleanup232.3.i, label %get_pure_rep_price.exit.3.i, !dbg !886

get_pure_rep_price.exit.3.i:                      ; preds = %cleanup232.2.i
    #dbg_value(ptr %pcoder, !888, !DIExpression(), !898)
    #dbg_value(i64 3, !893, !DIExpression(), !898)
    #dbg_value(i32 %139, !894, !DIExpression(), !898)
    #dbg_value(i32 %and.i147, !895, !DIExpression(), !898)
    #dbg_value(ptr %pcoder, !896, !DIExpression(), !898)
    #dbg_value(i16 poison, !802, !DIExpression(), !947)
    #dbg_value(i16 poison, !802, !DIExpression(), !959)
    #dbg_value(i16 poison, !408, !DIExpression(), !962)
    #dbg_value(i64 3, !413, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !962)
    #dbg_value(!DIArgList(i32 poison, i8 poison), !897, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !898)
  %218 = load i16, ptr %arrayidx13.i.i, align 2, !dbg !954, !noalias !333
    #dbg_value(i16 %218, !802, !DIExpression(), !959)
  %219 = lshr i16 %218, 4, !dbg !954
  %220 = xor i16 %219, 127, !dbg !964
  %idxprom.i52.i.3.i = zext nneg i16 %220 to i64, !dbg !965
  %arrayidx.i53.i.3.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i52.i.3.i, !dbg !965
  %221 = load i8, ptr %arrayidx.i53.i.3.i, align 1, !dbg !965, !noalias !333
  %conv1.i54.i.3.i = zext i8 %221 to i32, !dbg !965
  %222 = load i16, ptr %arrayidx.i519.i, align 2, !dbg !909, !noalias !333
    #dbg_value(i16 %222, !802, !DIExpression(), !947)
  %223 = lshr i16 %222, 4, !dbg !909
  %224 = xor i16 %223, 127, !dbg !956
  %idxprom.i46.i.3.i = zext nneg i16 %224 to i64, !dbg !957
  %arrayidx.i47.i.3.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i46.i.3.i, !dbg !957
  %225 = load i8, ptr %arrayidx.i47.i.3.i, align 1, !dbg !957, !noalias !333
    #dbg_value(!DIArgList(i32 %conv1.i54.i.3.i, i8 %225), !897, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !898)
  %conv1.i48.i.3.i = zext i8 %225 to i32, !dbg !957
    #dbg_value(i32 poison, !897, !DIExpression(), !898)
  %226 = load i16, ptr %arrayidx23.i.i, align 2, !dbg !966, !noalias !333
    #dbg_value(i16 %226, !408, !DIExpression(), !962)
  %227 = lshr i16 %226, 4, !dbg !967
  %228 = xor i16 %227, 127, !dbg !967
  %idxprom.i55.i.3.i = zext nneg i16 %228 to i64, !dbg !968
  %arrayidx.i56.i.3.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i55.i.3.i, !dbg !968
  %229 = load i8, ptr %arrayidx.i56.i.3.i, align 1, !dbg !968, !noalias !333
    #dbg_value(!DIArgList(i32 poison, i8 poison), !897, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !898)
  %conv1.i57.i.3.i = zext i8 %229 to i32, !dbg !968
    #dbg_value(i32 poison, !897, !DIExpression(), !898)
    #dbg_value(i32 %add200.3.i, !284, !DIExpression(), !883)
  %add21.i.3.i = add nuw nsw i32 %add122.i, %conv1.i54.i.3.i
  %add25.i.3.i = add nuw nsw i32 %add21.i.3.i, %conv1.i48.i.3.i
  %add200.3.i = add nuw nsw i32 %add25.i.3.i, %conv1.i57.i.3.i
  %230 = zext i32 %129 to i64, !dbg !911
  br label %do.body201.3.i, !dbg !911

do.body201.3.i:                                   ; preds = %if.end226.3.i, %get_pure_rep_price.exit.3.i
  %indvars.iv386 = phi i64 [ %indvars.iv.next387, %if.end226.3.i ], [ %230, %get_pure_rep_price.exit.3.i ], !dbg !883
    #dbg_value(i64 %indvars.iv386, !281, !DIExpression(), !883)
    #dbg_value(ptr %pcoder, !912, !DIExpression(DW_OP_plus_uconst, 47688, DW_OP_stack_value), !922)
    #dbg_value(i64 %indvars.iv386, !920, !DIExpression(), !922)
    #dbg_value(i32 %and.i147, !921, !DIExpression(), !922)
  %231 = add nsw i64 %indvars.iv386, -2, !dbg !924
  %arrayidx2.i.3.i = getelementptr inbounds [16 x [272 x i32]], ptr %prices.i.i, i64 0, i64 %idxprom95.i, i64 %231, !dbg !925
  %232 = load i32, ptr %arrayidx2.i.3.i, align 4, !dbg !925, !noalias !333
  %add203.3.i = add i32 %add200.3.i, %232, !dbg !926
    #dbg_value(i32 %add203.3.i, !285, !DIExpression(), !927)
  %arrayidx206.3.i = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv386, !dbg !928
  %price207.3.i = getelementptr inbounds i8, ptr %arrayidx206.3.i, i64 16, !dbg !930
  %233 = load i32, ptr %price207.3.i, align 4, !dbg !930, !noalias !333
  %cmp208.3.i = icmp ult i32 %add203.3.i, %233, !dbg !931
  br i1 %cmp208.3.i, label %if.then210.3.i, label %if.end226.3.i, !dbg !932

if.then210.3.i:                                   ; preds = %do.body201.3.i
  store i32 %add203.3.i, ptr %price207.3.i, align 4, !dbg !933, !noalias !333
  %pos_prev218.3.i = getelementptr inbounds i8, ptr %arrayidx206.3.i, i64 20, !dbg !935
  store i32 0, ptr %pos_prev218.3.i, align 4, !dbg !936, !noalias !333
  %back_prev222.3.i = getelementptr inbounds i8, ptr %arrayidx206.3.i, i64 24, !dbg !937
  store i32 3, ptr %back_prev222.3.i, align 4, !dbg !938, !noalias !333
  %prev_1_is_literal.3.i = getelementptr inbounds i8, ptr %arrayidx206.3.i, i64 4, !dbg !939
  store i8 0, ptr %prev_1_is_literal.3.i, align 4, !dbg !940, !noalias !333
  br label %if.end226.3.i, !dbg !941

if.end226.3.i:                                    ; preds = %if.then210.3.i, %do.body201.3.i
  %indvars.iv.next387 = add nsw i64 %indvars.iv386, -1, !dbg !942
    #dbg_value(i64 %indvars.iv.next387, !281, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !883)
  %234 = and i64 %indvars.iv.next387, 4294967294, !dbg !943
  %cmp229.3.i.not = icmp eq i64 %234, 0, !dbg !943
  br i1 %cmp229.3.i.not, label %cleanup232.3.i, label %do.body201.3.i, !dbg !944, !llvm.loop !970

cleanup232.3.i:                                   ; preds = %if.end226.3.i, %cleanup232.2.i
    #dbg_value(i64 4, !279, !DIExpression(), !882)
  %235 = load i16, ptr %arrayidx120.i, align 2, !dbg !971, !noalias !333
    #dbg_value(i16 %235, !697, !DIExpression(), !972)
  %236 = lshr i16 %235, 4, !dbg !974
  %idxprom.i513.i = zext nneg i16 %236 to i64, !dbg !975
  %arrayidx.i514.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i513.i, !dbg !975
  %237 = load i8, ptr %arrayidx.i514.i, align 1, !dbg !975, !noalias !333
  %conv1.i515.i = zext i8 %237 to i32, !dbg !975
    #dbg_value(i32 poison, !287, !DIExpression(), !296)
  %add250.i = add i32 %storemerge.i, 1, !dbg !976
  %cond253.i = select i1 %cmp193.i, i32 2, i32 %add250.i, !dbg !976
    #dbg_value(i32 %cond253.i, !278, !DIExpression(), !296)
  %cmp254.not.i = icmp ugt i32 %cond253.i, %len_main.0.i, !dbg !977
  br i1 %cmp254.not.i, label %helper1.exit, label %while.cond.preheader.i, !dbg !978

while.cond.i:                                     ; preds = %while.cond.i, %while.cond.preheader.i
  %i257.0.i = phi i32 [ %inc264.i, %while.cond.i ], [ 0, %while.cond.preheader.i ], !dbg !979
    #dbg_value(i32 %i257.0.i, !288, !DIExpression(), !979)
  %idxprom259.i = zext i32 %i257.0.i to i64, !dbg !980
  %arrayidx260.i = getelementptr inbounds [274 x %struct.lzma_match], ptr %matches258.i, i64 0, i64 %idxprom259.i, !dbg !980
  %238 = load i32, ptr %arrayidx260.i, align 4, !dbg !981, !noalias !333
  %cmp262.i = icmp ugt i32 %cond253.i, %238, !dbg !982
  %inc264.i = add i32 %i257.0.i, 1, !dbg !983
    #dbg_value(i32 %inc264.i, !288, !DIExpression(), !979)
  br i1 %cmp262.i, label %while.cond.i, label %for.cond265.preheader.i, !dbg !887, !llvm.loop !984

for.cond265.preheader.i:                          ; preds = %while.cond.i
  %prices.i.i.i = getelementptr inbounds i8, ptr %pcoder, i64 30212
  %add11.i.i = add nuw nsw i32 %conv1.i515.i, %conv1.i501.i
  %239 = load i32, ptr %matches_count.i, align 4, !noalias !333
  %pos_slot_prices.i.i = getelementptr inbounds i8, ptr %pcoder, i64 66192
  %align_prices.i.i = getelementptr inbounds i8, ptr %pcoder, i64 69272
  %distances_prices.i.i = getelementptr inbounds i8, ptr %pcoder, i64 67216
  br label %for.cond265.i, !dbg !986

for.cond265.i:                                    ; preds = %for.inc316.i, %for.cond265.preheader.i
  %len.1.i = phi i32 [ %inc317.i, %for.inc316.i ], [ %cond253.i, %for.cond265.preheader.i ], !dbg !296
  %i257.1.i = phi i32 [ %i257.3.i, %for.inc316.i ], [ %i257.0.i, %for.cond265.preheader.i ], !dbg !979
    #dbg_value(i32 %i257.1.i, !288, !DIExpression(), !979)
    #dbg_value(i32 %len.1.i, !278, !DIExpression(), !296)
  %idxprom268.i = zext i32 %i257.1.i to i64, !dbg !987
  %arrayidx269.i = getelementptr inbounds [274 x %struct.lzma_match], ptr %matches258.i, i64 0, i64 %idxprom268.i, !dbg !987
  %dist270.i = getelementptr inbounds i8, ptr %arrayidx269.i, i64 4, !dbg !988
  %240 = load i32, ptr %dist270.i, align 4, !dbg !988, !noalias !333
    #dbg_value(i32 %240, !291, !DIExpression(), !989)
    #dbg_value(ptr %pcoder, !990, !DIExpression(), !1004)
    #dbg_value(i32 %240, !995, !DIExpression(), !1004)
    #dbg_value(i32 %len.1.i, !996, !DIExpression(), !1004)
    #dbg_value(i32 %and.i147, !997, !DIExpression(), !1004)
    #dbg_value(ptr %pcoder, !998, !DIExpression(), !1004)
  %cmp.i535.i = icmp ult i32 %len.1.i, 6, !dbg !1006
  %sub.i536.i = add i32 %len.1.i, -2, !dbg !1006
  %cond.i.i = select i1 %cmp.i535.i, i32 %sub.i536.i, i32 3, !dbg !1006
    #dbg_value(i32 %cond.i.i, !999, !DIExpression(), !1004)
  %cmp1.i.i = icmp ult i32 %240, 128, !dbg !1007
  br i1 %cmp1.i.i, label %if.then.i542.i, label %if.else.i537.i, !dbg !1008

if.then.i542.i:                                   ; preds = %for.cond265.i
  %idxprom.i543.i = zext i32 %cond.i.i to i64, !dbg !1009
  %idxprom2.i.i = zext nneg i32 %240 to i64, !dbg !1009
  %arrayidx3.i.i = getelementptr inbounds [4 x [128 x i32]], ptr %distances_prices.i.i, i64 0, i64 %idxprom.i543.i, i64 %idxprom2.i.i, !dbg !1009
  %241 = load i32, ptr %arrayidx3.i.i, align 4, !dbg !1009, !noalias !333
    #dbg_value(i32 %241, !1000, !DIExpression(), !1004)
  br label %get_pos_len_price.exit.i, !dbg !1011

if.else.i537.i:                                   ; preds = %for.cond265.i
    #dbg_value(i32 %240, !1012, !DIExpression(), !1015)
  %cmp.i.i.i = icmp ult i32 %240, 524288, !dbg !1017
  %cmp1.i.i.i = icmp sgt i32 %240, -1, !dbg !1019
  %..i.i.i = select i1 %cmp1.i.i.i, i32 18, i32 30, !dbg !1019
  %.21.i.i.i = select i1 %cmp1.i.i.i, i64 36, i64 60, !dbg !1019
  %.sink20.i.i.i = select i1 %cmp.i.i.i, i32 6, i32 %..i.i.i, !dbg !1019
  %.sink.i.i.i = select i1 %cmp.i.i.i, i64 12, i64 %.21.i.i.i, !dbg !1019
  %shr10.i.i.i = lshr i32 %240, %.sink20.i.i.i, !dbg !1015
  %idxprom11.i.i.i = zext nneg i32 %shr10.i.i.i to i64, !dbg !1015
  %arrayidx12.i.i.i = getelementptr inbounds [8192 x i8], ptr @lzma_fastpos, i64 0, i64 %idxprom11.i.i.i, !dbg !1015
  %242 = load i8, ptr %arrayidx12.i.i.i, align 1, !dbg !1015, !noalias !333
  %conv13.i.i.i = zext i8 %242 to i64, !dbg !1015
  %add14.i.i.i = add nuw nsw i64 %.sink.i.i.i, %conv13.i.i.i, !dbg !1015
    #dbg_value(!DIArgList(i32 poison, i8 poison), !1001, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !1020)
  %idxprom4.i.i = zext i32 %cond.i.i to i64, !dbg !1021
  %arrayidx7.i.i = getelementptr inbounds [4 x [64 x i32]], ptr %pos_slot_prices.i.i, i64 0, i64 %idxprom4.i.i, i64 %add14.i.i.i, !dbg !1021
  %243 = load i32, ptr %arrayidx7.i.i, align 4, !dbg !1021, !noalias !333
  %and.i538.i = and i32 %240, 15, !dbg !1022
  %idxprom8.i.i = zext nneg i32 %and.i538.i to i64, !dbg !1023
  %arrayidx9.i.i = getelementptr inbounds [16 x i32], ptr %align_prices.i.i, i64 0, i64 %idxprom8.i.i, !dbg !1023
  %244 = load i32, ptr %arrayidx9.i.i, align 4, !dbg !1023, !noalias !333
  %add.i539.i = add i32 %244, %243, !dbg !1024
    #dbg_value(i32 %add.i539.i, !1000, !DIExpression(), !1004)
  br label %get_pos_len_price.exit.i

get_pos_len_price.exit.i:                         ; preds = %if.else.i537.i, %if.then.i542.i
  %price.0.i540.i = phi i32 [ %241, %if.then.i542.i ], [ %add.i539.i, %if.else.i537.i ], !dbg !1025
    #dbg_value(i32 %price.0.i540.i, !1000, !DIExpression(), !1004)
    #dbg_value(ptr %pcoder, !912, !DIExpression(DW_OP_plus_uconst, 29184, DW_OP_stack_value), !1026)
    #dbg_value(i32 %len.1.i, !920, !DIExpression(), !1026)
    #dbg_value(i32 %and.i147, !921, !DIExpression(), !1026)
  %idxprom1.i.i.i = zext i32 %sub.i536.i to i64, !dbg !1028
  %arrayidx2.i.i.i = getelementptr inbounds [16 x [272 x i32]], ptr %prices.i.i.i, i64 0, i64 %idxprom95.i, i64 %idxprom1.i.i.i, !dbg !1028
  %245 = load i32, ptr %arrayidx2.i.i.i, align 4, !dbg !1028, !noalias !333
    #dbg_value(i32 poison, !1000, !DIExpression(), !1004)
  %add244.i = add i32 %add11.i.i, %price.0.i540.i, !dbg !1029
  %add273.i = add i32 %add244.i, %245, !dbg !1030
    #dbg_value(i32 %add273.i, !295, !DIExpression(), !989)
  %idxprom275.i = zext i32 %len.1.i to i64, !dbg !1031
  %arrayidx276.i = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %idxprom275.i, !dbg !1031
  %price277.i = getelementptr inbounds i8, ptr %arrayidx276.i, i64 16, !dbg !1033
  %246 = load i32, ptr %price277.i, align 4, !dbg !1033, !noalias !333
  %cmp278.i = icmp ult i32 %add273.i, %246, !dbg !1034
  br i1 %cmp278.i, label %if.then280.i, label %if.end298.i, !dbg !1035

if.then280.i:                                     ; preds = %get_pos_len_price.exit.i
  store i32 %add273.i, ptr %price277.i, align 4, !dbg !1036, !noalias !333
  %pos_prev288.i = getelementptr inbounds i8, ptr %arrayidx276.i, i64 20, !dbg !1038
  store i32 0, ptr %pos_prev288.i, align 4, !dbg !1039, !noalias !333
  %add289.i = add i32 %240, 4, !dbg !1040
  %back_prev293.i = getelementptr inbounds i8, ptr %arrayidx276.i, i64 24, !dbg !1041
  store i32 %add289.i, ptr %back_prev293.i, align 4, !dbg !1042, !noalias !333
  %prev_1_is_literal297.i = getelementptr inbounds i8, ptr %arrayidx276.i, i64 4, !dbg !1043
  store i8 0, ptr %prev_1_is_literal297.i, align 4, !dbg !1044, !noalias !333
  br label %if.end298.i, !dbg !1045

if.end298.i:                                      ; preds = %if.then280.i, %get_pos_len_price.exit.i
  %247 = load i32, ptr %arrayidx269.i, align 4, !dbg !1046, !noalias !333
  %cmp303.i = icmp ne i32 %len.1.i, %247, !dbg !1048
  %inc306.i = add i32 %i257.1.i, 1, !dbg !1049
  %cmp307.i = icmp ne i32 %inc306.i, %239, !dbg !1049
  %.not.i = select i1 %cmp303.i, i1 true, i1 %cmp307.i
    #dbg_value(i32 poison, !288, !DIExpression(), !979)
  br i1 %.not.i, label %for.inc316.i, label %helper1.exit

for.inc316.i:                                     ; preds = %if.end298.i
  %i257.3.i = select i1 %cmp303.i, i32 %i257.1.i, i32 %inc306.i, !dbg !1049
    #dbg_value(i32 %i257.3.i, !288, !DIExpression(), !979)
  %inc317.i = add i32 %len.1.i, 1, !dbg !1050
    #dbg_value(i32 %inc317.i, !278, !DIExpression(), !296)
  br label %for.cond265.i, !dbg !1051, !llvm.loop !1052

helper1.exit.thread333:                           ; preds = %if.then88.i, %if.then156.i, %if.then57.i, %if.then.i.i, %if.then63.i, %if.then.i490.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rep_lens.i) #6, !dbg !594, !noalias !333
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %matches_count.i) #6, !dbg !594, !noalias !333
    #dbg_value(i32 -1, !236, !DIExpression(), !300)
  br label %cleanup45, !dbg !595

helper1.exit:                                     ; preds = %if.end298.i, %cleanup232.3.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rep_lens.i) #6, !dbg !594, !noalias !333
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %matches_count.i) #6, !dbg !594, !noalias !333
    #dbg_value(i32 %len_main.0..i, !236, !DIExpression(), !300)
  %cmp22 = icmp eq i32 %len_main.0..i, -1, !dbg !1054
  br i1 %cmp22, label %cleanup45, label %for.body.lr.ph, !dbg !595

for.body.lr.ph:                                   ; preds = %helper1.exit
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %reps) #6, !dbg !1056
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %reps, ptr noundef nonnull align 4 dereferenceable(16) %reps.i, i64 16, i1 false), !dbg !1057, !DIAssignID !1058
    #dbg_assign(i1 undef, !237, !DIExpression(), !1058, ptr %reps, !DIExpression(), !300)
    #dbg_value(i32 1, !238, !DIExpression(), !300)
  %matches_count = getelementptr inbounds i8, ptr %pcoder, i64 2948, !dbg !1059
  %matches = getelementptr inbounds i8, ptr %pcoder, i64 756, !dbg !1063
    #dbg_value(i32 %len_main.0..i, !236, !DIExpression(), !300)
  %longest_match_length = getelementptr inbounds i8, ptr %pcoder, i64 2952
  %arrayidx152.i = getelementptr inbounds i8, ptr %reps, i64 4
  %arrayidx152.2.i = getelementptr inbounds i8, ptr %reps, i64 12
  %is_rep0_long.i.i267 = getelementptr inbounds i8, ptr %pcoder, i64 28028
  %arrayidx576.i = getelementptr inbounds i8, ptr %pcoder, i64 27708
  %arrayidx583.i = getelementptr inbounds i8, ptr %pcoder, i64 27942
  %arrayidx.i.i1459.i = getelementptr inbounds i8, ptr %pcoder, i64 27966
  %prices.i.i1479.i = getelementptr inbounds i8, ptr %pcoder, i64 30212
  %pos_slot_prices.i.i227 = getelementptr inbounds i8, ptr %pcoder, i64 66192
  %align_prices.i.i228 = getelementptr inbounds i8, ptr %pcoder, i64 69272
  %distances_prices.i.i229 = getelementptr inbounds i8, ptr %pcoder, i64 67216
  %arrayidx825.i = getelementptr inbounds i8, ptr %pcoder, i64 27676
  %arrayidx832.i = getelementptr inbounds i8, ptr %pcoder, i64 27940
  %arrayidx.i.i1538.i = getelementptr inbounds i8, ptr %pcoder, i64 27964
  br label %for.body, !dbg !1064

for.body:                                         ; preds = %for.body.lr.ph, %helper2.exit
  %indvars.iv393 = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next394, %helper2.exit ]
  %len_end.0353 = phi i32 [ %len_main.0..i, %for.body.lr.ph ], [ %retval.0.i, %helper2.exit ]
    #dbg_value(i64 %indvars.iv393, !238, !DIExpression(), !300)
    #dbg_value(i32 %len_end.0353, !236, !DIExpression(), !300)
  %call29 = call i32 @lzma_mf_find(ptr noundef nonnull %mf, ptr noundef nonnull %matches_count, ptr noundef nonnull %matches) #6, !dbg !1065
  store i32 %call29, ptr %longest_match_length, align 8, !dbg !1066
  %248 = load i32, ptr %nice_len1.i329, align 8, !dbg !1067
  %cmp31.not = icmp ult i32 %call29, %248, !dbg !1069
  %249 = trunc nuw i64 %indvars.iv393 to i32, !dbg !1070
  br i1 %cmp31.not, label %if.end33, label %for.end, !dbg !1070

if.end33:                                         ; preds = %for.body
  %mf.val90 = load ptr, ptr %mf, align 8, !dbg !1071
  %mf.val91 = load i32, ptr %94, align 8, !dbg !1071
    #dbg_value(ptr undef, !597, !DIExpression(), !1072)
  %idx.ext.i171 = zext i32 %mf.val91 to i64, !dbg !1074
  %add.ptr.i172 = getelementptr inbounds i8, ptr %mf.val90, i64 %idx.ext.i171, !dbg !1074
  %add.ptr = getelementptr inbounds i8, ptr %add.ptr.i172, i64 -1, !dbg !1075
  %add = add i32 %249, %position, !dbg !1076
  %mf.val89 = load i32, ptr %95, align 4, !dbg !1077
    #dbg_value(ptr undef, !574, !DIExpression(), !1078)
  %reass.sub = sub i32 %mf.val89, %mf.val91, !dbg !1077
  %add38 = add i32 %reass.sub, 1, !dbg !1077
  %sub39 = sub i32 4095, %249, !dbg !1077
  %spec.select = call i32 @llvm.umin.i32(i32 %add38, i32 %sub39), !dbg !1077
    #dbg_value(ptr %pcoder, !1080, !DIExpression(), !1175)
    #dbg_value(ptr %reps, !1085, !DIExpression(), !1175)
    #dbg_value(ptr %add.ptr, !1086, !DIExpression(), !1175)
    #dbg_value(i32 %len_end.0353, !1087, !DIExpression(), !1175)
    #dbg_value(i32 %add, !1088, !DIExpression(), !1175)
    #dbg_value(i64 %indvars.iv393, !1089, !DIExpression(), !1175)
    #dbg_value(i32 %248, !1090, !DIExpression(), !1175)
    #dbg_value(i32 %spec.select, !1091, !DIExpression(), !1175)
    #dbg_value(ptr %pcoder, !1092, !DIExpression(), !1175)
  %250 = load i32, ptr %matches_count, align 4, !dbg !1177
    #dbg_value(i32 %250, !1093, !DIExpression(), !1175)
    #dbg_value(i32 %call29, !1094, !DIExpression(), !1175)
  %arrayidx.i177 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv393, !dbg !1178
  %pos_prev2.i = getelementptr inbounds i8, ptr %arrayidx.i177, i64 20, !dbg !1179
  %251 = load i32, ptr %pos_prev2.i, align 4, !dbg !1179
    #dbg_value(i32 %251, !1095, !DIExpression(), !1175)
  %prev_1_is_literal.i178 = getelementptr inbounds i8, ptr %arrayidx.i177, i64 4, !dbg !1180
  %252 = load i8, ptr %prev_1_is_literal.i178, align 4, !dbg !1180, !range !1182, !noundef !1183
  %loadedv.i = trunc nuw i8 %252 to i1, !dbg !1180
  br i1 %loadedv.i, label %if.then.i308, label %if.end44.thread.i, !dbg !1184

if.then.i308:                                     ; preds = %if.end33
    #dbg_value(i32 %251, !1095, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1175)
  %prev_2.i = getelementptr inbounds i8, ptr %arrayidx.i177, i64 5, !dbg !1185
  %253 = load i8, ptr %prev_2.i, align 1, !dbg !1185, !range !1182, !noundef !1183
  %loadedv9.i = trunc nuw i8 %253 to i1, !dbg !1185
  br i1 %loadedv9.i, label %if.then10.i, label %if.end44.thread1698.i, !dbg !1188

if.then10.i:                                      ; preds = %if.then.i308
  %pos_prev_2.i = getelementptr inbounds i8, ptr %arrayidx.i177, i64 8, !dbg !1189
  %254 = load i32, ptr %pos_prev_2.i, align 4, !dbg !1189
  %idxprom15.i = zext i32 %254 to i64, !dbg !1191
  %arrayidx16.i = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %idxprom15.i, !dbg !1191
  %255 = load i32, ptr %arrayidx16.i, align 4, !dbg !1192
    #dbg_value(i32 %255, !1096, !DIExpression(), !1175)
  %back_prev_2.i = getelementptr inbounds i8, ptr %arrayidx.i177, i64 12, !dbg !1193
  %256 = load i32, ptr %back_prev_2.i, align 4, !dbg !1193
  %cmp.i310 = icmp ult i32 %256, 4, !dbg !1195
  %cmp22.i = icmp ult i32 %255, 7, !dbg !1196
  %cond.i = select i1 %cmp22.i, i32 8, i32 11, !dbg !1197
  %cond24.i = select i1 %cmp22.i, i32 7, i32 10, !dbg !1197
  %state.0.i = select i1 %cmp.i310, i32 %cond.i, i32 %cond24.i, !dbg !1197
    #dbg_value(i32 %state.0.i, !1096, !DIExpression(), !1175)
  %cond36.v.i = select i1 %cmp22.i, i32 -3, i32 -6, !dbg !1198
  %cond36.i = add nsw i32 %state.0.i, %cond36.v.i, !dbg !1198
    #dbg_value(i32 %251, !1095, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1175)
    #dbg_value(i32 %cond36.i, !1096, !DIExpression(), !1175)
  %257 = zext i32 %251 to i64, !dbg !1199
  %cmp46.i = icmp eq i64 %indvars.iv393, %257, !dbg !1199
  br i1 %cmp46.i, label %if.then47.i, label %if.end104.i, !dbg !1200

if.end44.thread1698.i:                            ; preds = %if.then.i308
  %dec.i309 = add i32 %251, -1, !dbg !1201
    #dbg_value(i32 %dec.i309, !1095, !DIExpression(), !1175)
  %idxprom27.i = zext i32 %dec.i309 to i64, !dbg !1202
  %arrayidx28.i = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %idxprom27.i, !dbg !1202
  %258 = load i32, ptr %arrayidx28.i, align 4, !dbg !1204
    #dbg_value(i32 %258, !1096, !DIExpression(), !1175)
  %cmp311700.i = icmp ult i32 %258, 4, !dbg !1198
  %cmp321701.i = icmp ult i32 %258, 10, !dbg !1198
  %cond36.v1702.i = select i1 %cmp321701.i, i32 -3, i32 -6, !dbg !1198
  %cond361703.i = add i32 %cond36.v1702.i, %258, !dbg !1198
  %cond381704.i = select i1 %cmp311700.i, i32 0, i32 %cond361703.i, !dbg !1198
    #dbg_value(i32 %cond381704.i, !1096, !DIExpression(), !1175)
  %259 = zext i32 %251 to i64, !dbg !1199
  %cmp461705.i = icmp eq i64 %indvars.iv393, %259, !dbg !1199
  br i1 %cmp461705.i, label %if.then47.i, label %if.else91.i, !dbg !1200

if.end44.thread.i:                                ; preds = %if.end33
  %idxprom41.i = zext i32 %251 to i64, !dbg !1205
  %arrayidx42.i = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %idxprom41.i, !dbg !1205
  %260 = load i32, ptr %arrayidx42.i, align 4, !dbg !1207
    #dbg_value(i32 %251, !1095, !DIExpression(), !1175)
    #dbg_value(i32 %260, !1096, !DIExpression(), !1175)
  %261 = add nsw i64 %indvars.iv393, -1, !dbg !1208
  %cmp461552.i = icmp eq i64 %261, %idxprom41.i, !dbg !1199
  br i1 %cmp461552.i, label %if.then47.i, label %if.else91.i, !dbg !1200

if.then47.i:                                      ; preds = %if.end44.thread.i, %if.end44.thread1698.i, %if.then10.i
  %state.11553.i = phi i32 [ %260, %if.end44.thread.i ], [ %cond36.i, %if.then10.i ], [ %cond381704.i, %if.end44.thread1698.i ]
  %back_prev.i = getelementptr inbounds i8, ptr %arrayidx.i177, i64 24, !dbg !1209
  %262 = load i32, ptr %back_prev.i, align 4, !dbg !1209
  %cmp51.i = icmp eq i32 %262, 0, !dbg !1209
  br i1 %cmp51.i, label %if.then52.i, label %if.else55.i, !dbg !1212

if.then52.i:                                      ; preds = %if.then47.i
  %cmp53.i = icmp ult i32 %state.11553.i, 7, !dbg !1213
  %cond54.i = select i1 %cmp53.i, i32 9, i32 11, !dbg !1213
    #dbg_value(i32 %cond54.i, !1096, !DIExpression(), !1175)
  br label %if.end157.i, !dbg !1213

if.else55.i:                                      ; preds = %if.then47.i
  %cmp56.i = icmp ult i32 %state.11553.i, 4, !dbg !1214
  %cmp59.i = icmp ult i32 %state.11553.i, 10, !dbg !1214
  %cond65.v.i = select i1 %cmp59.i, i32 -3, i32 -6, !dbg !1214
  %cond65.i = add i32 %cond65.v.i, %state.11553.i, !dbg !1214
    #dbg_value(i32 undef, !1096, !DIExpression(), !1175)
  %spec.select414 = select i1 %cmp56.i, i32 0, i32 %cond65.i
  br label %if.end157.i

if.else91.i:                                      ; preds = %if.end44.thread.i, %if.end44.thread1698.i
  %state.115541559.i = phi i32 [ %260, %if.end44.thread.i ], [ %cond381704.i, %if.end44.thread1698.i ]
  %pos_prev.015551558.i = phi i32 [ %251, %if.end44.thread.i ], [ %dec.i309, %if.end44.thread1698.i ]
  %back_prev95.i = getelementptr inbounds i8, ptr %arrayidx.i177, i64 24, !dbg !1215
  %263 = load i32, ptr %back_prev95.i, align 4, !dbg !1215
    #dbg_value(i32 %263, !1097, !DIExpression(), !1218)
  %cmp96.i = icmp ult i32 %263, 4, !dbg !1219
  %cmp98.i = icmp ult i32 %state.115541559.i, 7, !dbg !1221
    #dbg_value(i32 %pos_prev.015551558.i, !1095, !DIExpression(), !1175)
  %.pre398 = zext i32 %pos_prev.015551558.i to i64
  br i1 %cmp96.i, label %if.end104.thread.i, label %if.end104.thread1567.i, !dbg !1222

if.end104.thread.i:                               ; preds = %if.else91.i
  %cond99.i = select i1 %cmp98.i, i32 8, i32 11, !dbg !1223
    #dbg_value(i32 %cond99.i, !1096, !DIExpression(), !1175)
  br label %if.then106.i, !dbg !1224

if.end104.thread1567.i:                           ; preds = %if.else91.i
  %cond102.i = select i1 %cmp98.i, i32 7, i32 10, !dbg !1225
    #dbg_value(i32 %cond102.i, !1096, !DIExpression(), !1175)
  br label %if.else137.i, !dbg !1224

if.end104.i:                                      ; preds = %if.then10.i
    #dbg_value(i32 %254, !1095, !DIExpression(), !1175)
    #dbg_value(i32 %256, !1097, !DIExpression(), !1218)
  %cmp89.i = icmp ult i32 %cond36.i, 7, !dbg !1226
  %cond90.i = select i1 %cmp89.i, i32 8, i32 11, !dbg !1226
    #dbg_value(i32 %cond90.i, !1096, !DIExpression(), !1175)
  br i1 %cmp.i310, label %if.then106.i, label %if.else137.i, !dbg !1224

if.then106.i:                                     ; preds = %if.end104.i, %if.end104.thread.i
  %idxprom108.i.pre-phi = phi i64 [ %idxprom15.i, %if.end104.i ], [ %.pre398, %if.end104.thread.i ], !dbg !1228
  %state.21565.i = phi i32 [ %cond90.i, %if.end104.i ], [ %cond99.i, %if.end104.thread.i ]
  %pos.01564.i = phi i32 [ %256, %if.end104.i ], [ %263, %if.end104.thread.i ]
  %idxprom110.i = zext nneg i32 %pos.01564.i to i64, !dbg !1228
  %arrayidx111.i = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %idxprom108.i.pre-phi, i32 8, i64 %idxprom110.i, !dbg !1228
  %264 = load i32, ptr %arrayidx111.i, align 4, !dbg !1228
  store i32 %264, ptr %reps, align 16, !dbg !1229, !DIAssignID !1230
    #dbg_assign(i32 %264, !237, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !1230, ptr %reps, !DIExpression(), !300)
    #dbg_value(i32 1, !1100, !DIExpression(), !1231)
  %cmp113.not1584.i = icmp eq i32 %pos.01564.i, 0, !dbg !1232
  br i1 %cmp113.not1584.i, label %for.body125.preheader.i, label %for.body.preheader.i, !dbg !1235

for.body.preheader.i:                             ; preds = %if.then106.i
  %265 = add nuw nsw i32 %pos.01564.i, 1, !dbg !1235
  %266 = mul nuw nsw i64 %idxprom108.i.pre-phi, 44, !dbg !1235
  %scevgep392 = getelementptr i8, ptr %backs.i, i64 %266, !dbg !1235
  %267 = shl nuw nsw i32 %265, 2, !dbg !1235
  %268 = zext nneg i32 %267 to i64, !dbg !1235
  %269 = add nsw i64 %268, -4, !dbg !1235
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %arrayidx152.i, ptr align 4 %scevgep392, i64 %269, i1 false), !dbg !1236
    #dbg_value(i32 %265, !1100, !DIExpression(), !1231)
  %cmp1241586.i = icmp ult i32 %pos.01564.i, 3, !dbg !1237
  br i1 %cmp1241586.i, label %for.body125.preheader.i, label %if.end157.i, !dbg !1240

for.body125.preheader.i:                          ; preds = %if.then106.i, %for.body.preheader.i
  %i.0.lcssa1710.i = phi i32 [ %265, %for.body.preheader.i ], [ 1, %if.then106.i ]
  %270 = zext nneg i32 %i.0.lcssa1710.i to i64, !dbg !1240
  %271 = add nuw nsw i32 %pos.01564.i, 2, !dbg !1240
  %272 = zext nneg i32 %271 to i64, !dbg !1240
  %273 = sub nsw i64 5, %272, !dbg !1240
  %min.iters.check499 = icmp ult i64 %273, 16, !dbg !1240
  br i1 %min.iters.check499, label %for.body125.i.preheader, label %vector.scevcheck, !dbg !1240

vector.scevcheck:                                 ; preds = %for.body125.preheader.i
  %274 = add nuw nsw i32 %pos.01564.i, 2, !dbg !1240
  %275 = zext nneg i32 %274 to i64, !dbg !1240
  %276 = sub nsw i64 4, %275, !dbg !1240
  %277 = trunc i64 %276 to i32, !dbg !1240
  %278 = sub nuw nsw i32 -3, %pos.01564.i, !dbg !1240
  %279 = icmp ult i32 %278, %277, !dbg !1240
  %280 = icmp ugt i64 %276, 4294967295, !dbg !1240
  %281 = or i1 %279, %280, !dbg !1240
  br i1 %281, label %for.body125.i.preheader, label %vector.ph500

vector.ph500:                                     ; preds = %vector.scevcheck
  %n.vec502 = and i64 %273, -16, !dbg !1240
  %ind.end503 = add nsw i64 %n.vec502, %270, !dbg !1240
  br label %vector.body505, !dbg !1240

vector.body505:                                   ; preds = %vector.body505, %vector.ph500
  %index506 = phi i64 [ 0, %vector.ph500 ], [ %index.next511, %vector.body505 ]
  %offset.idx507 = add i64 %index506, %270, !dbg !1240
  %282 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %idxprom108.i.pre-phi, i32 8, i64 %offset.idx507, !dbg !1241
  %283 = getelementptr inbounds i8, ptr %282, i64 16, !dbg !1241
  %284 = getelementptr inbounds i8, ptr %282, i64 32, !dbg !1241
  %285 = getelementptr inbounds i8, ptr %282, i64 48, !dbg !1241
  %wide.load = load <4 x i32>, ptr %282, align 4, !dbg !1241
  %wide.load508 = load <4 x i32>, ptr %283, align 4, !dbg !1241
  %wide.load509 = load <4 x i32>, ptr %284, align 4, !dbg !1241
  %wide.load510 = load <4 x i32>, ptr %285, align 4, !dbg !1241
  %286 = getelementptr inbounds i32, ptr %reps, i64 %offset.idx507, !dbg !1242
  %287 = getelementptr inbounds i8, ptr %286, i64 16, !dbg !1243
  %288 = getelementptr inbounds i8, ptr %286, i64 32, !dbg !1243
  %289 = getelementptr inbounds i8, ptr %286, i64 48, !dbg !1243
  store <4 x i32> %wide.load, ptr %286, align 4, !dbg !1243
  store <4 x i32> %wide.load508, ptr %287, align 4, !dbg !1243
  store <4 x i32> %wide.load509, ptr %288, align 4, !dbg !1243
  store <4 x i32> %wide.load510, ptr %289, align 4, !dbg !1243
  %index.next511 = add nuw i64 %index506, 16
  %290 = icmp eq i64 %index.next511, %n.vec502
  br i1 %290, label %middle.block497, label %vector.body505, !llvm.loop !1244

middle.block497:                                  ; preds = %vector.body505
  %cmp.n512 = icmp eq i64 %273, %n.vec502, !dbg !1240
  br i1 %cmp.n512, label %if.end157.i, label %for.body125.i.preheader, !dbg !1240

for.body125.i.preheader:                          ; preds = %middle.block497, %vector.scevcheck, %for.body125.preheader.i
  %indvars.iv1634.i.ph = phi i64 [ %270, %vector.scevcheck ], [ %270, %for.body125.preheader.i ], [ %ind.end503, %middle.block497 ]
  br label %for.body125.i, !dbg !1240

for.body125.i:                                    ; preds = %for.body125.i.preheader, %for.body125.i
  %indvars.iv1634.i = phi i64 [ %indvars.iv.next1635.i, %for.body125.i ], [ %indvars.iv1634.i.ph, %for.body125.i.preheader ]
    #dbg_value(i64 %indvars.iv1634.i, !1100, !DIExpression(), !1231)
  %arrayidx131.i = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %idxprom108.i.pre-phi, i32 8, i64 %indvars.iv1634.i, !dbg !1241
  %291 = load i32, ptr %arrayidx131.i, align 4, !dbg !1241
  %arrayidx133.i = getelementptr inbounds i32, ptr %reps, i64 %indvars.iv1634.i, !dbg !1242
  store i32 %291, ptr %arrayidx133.i, align 4, !dbg !1243
  %indvars.iv.next1635.i = add nuw nsw i64 %indvars.iv1634.i, 1, !dbg !1246
    #dbg_value(i64 %indvars.iv.next1635.i, !1100, !DIExpression(), !1231)
  %292 = and i64 %indvars.iv.next1635.i, 4294967295, !dbg !1237
  %exitcond1637.not.i = icmp eq i64 %292, 4, !dbg !1237
  br i1 %exitcond1637.not.i, label %if.end157.i, label %for.body125.i, !dbg !1240, !llvm.loop !1247

if.else137.i:                                     ; preds = %if.end104.i, %if.end104.thread1567.i
  %idxprom145.i.pre-phi = phi i64 [ %idxprom15.i, %if.end104.i ], [ %.pre398, %if.end104.thread1567.i ]
  %state.21573.i = phi i32 [ %cond90.i, %if.end104.i ], [ %cond102.i, %if.end104.thread1567.i ]
  %pos.01572.i = phi i32 [ %256, %if.end104.i ], [ %263, %if.end104.thread1567.i ]
  %sub138.i = add i32 %pos.01572.i, -4, !dbg !1248
  store i32 %sub138.i, ptr %reps, align 16, !dbg !1249, !DIAssignID !1250
    #dbg_assign(i32 %sub138.i, !237, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !1250, ptr %reps, !DIExpression(), !300)
    #dbg_value(i64 1, !1103, !DIExpression(), !1251)
  %arrayidx150.i = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %idxprom145.i.pre-phi, i32 8, i64 0, !dbg !1252
    #dbg_assign(i32 poison, !237, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !1254, ptr %arrayidx152.i, !DIExpression(), !300)
    #dbg_value(i64 2, !1103, !DIExpression(), !1251)
  %293 = load <2 x i32>, ptr %arrayidx150.i, align 4, !dbg !1252
  store <2 x i32> %293, ptr %arrayidx152.i, align 4, !dbg !1255, !DIAssignID !1254
    #dbg_assign(i32 poison, !237, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !1254, ptr %reps, !DIExpression(DW_OP_plus_uconst, 8), !300)
    #dbg_value(i64 3, !1103, !DIExpression(), !1251)
  %arrayidx150.2.i = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %idxprom145.i.pre-phi, i32 8, i64 2, !dbg !1252
  %294 = load i32, ptr %arrayidx150.2.i, align 4, !dbg !1252
  store i32 %294, ptr %arrayidx152.2.i, align 4, !dbg !1255, !DIAssignID !1256
    #dbg_assign(i32 %294, !237, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !1256, ptr %arrayidx152.2.i, !DIExpression(), !300)
    #dbg_value(i64 4, !1103, !DIExpression(), !1251)
  br label %if.end157.i, !dbg !1257

if.end157.i:                                      ; preds = %for.body125.i, %middle.block497, %if.else55.i, %if.else137.i, %for.body.preheader.i, %if.then52.i
  %state.3.i = phi i32 [ %cond54.i, %if.then52.i ], [ %state.21565.i, %for.body.preheader.i ], [ %state.21573.i, %if.else137.i ], [ %spec.select414, %if.else55.i ], [ %state.21565.i, %middle.block497 ], [ %state.21565.i, %for.body125.i ], !dbg !1258
    #dbg_value(i32 %state.3.i, !1096, !DIExpression(), !1175)
  store i32 %state.3.i, ptr %arrayidx.i177, align 4, !dbg !1257
    #dbg_value(i32 0, !1106, !DIExpression(), !1259)
  %backs172.i = getelementptr inbounds i8, ptr %arrayidx.i177, i64 28
    #dbg_value(i64 0, !1106, !DIExpression(), !1259)
    #dbg_value(i64 1, !1106, !DIExpression(), !1259)
    #dbg_value(i64 2, !1106, !DIExpression(), !1259)
    #dbg_value(i64 3, !1106, !DIExpression(), !1259)
  %295 = load <4 x i32>, ptr %reps, align 16, !dbg !1260
  store <4 x i32> %295, ptr %backs172.i, align 4, !dbg !1262
    #dbg_value(i64 4, !1106, !DIExpression(), !1259)
  %price.i182 = getelementptr inbounds i8, ptr %arrayidx.i177, i64 16, !dbg !1263
  %296 = load i32, ptr %price.i182, align 4, !dbg !1263
    #dbg_value(i32 %296, !1108, !DIExpression(), !1175)
  %297 = load i8, ptr %add.ptr, align 1, !dbg !1264
    #dbg_value(i8 %297, !1109, !DIExpression(), !1175)
  %298 = extractelement <4 x i32> %295, i64 0, !dbg !1265
  %idx.ext.i183 = zext i32 %298 to i64, !dbg !1265
  %idx.neg.i184 = sub nsw i64 0, %idx.ext.i183, !dbg !1265
  %add.ptr.i185 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.neg.i184, !dbg !1265
  %add.ptr182.i = getelementptr inbounds i8, ptr %add.ptr.i185, i64 -1, !dbg !1266
  %299 = load i8, ptr %add.ptr182.i, align 1, !dbg !1267
    #dbg_value(i8 %299, !1110, !DIExpression(), !1175)
  %300 = load i32, ptr %pos_mask.i, align 8, !dbg !1268
  %and.i187 = and i32 %300, %add, !dbg !1269
    #dbg_value(i32 %and.i187, !1111, !DIExpression(), !1175)
  %idxprom183.i = zext i32 %state.3.i to i64, !dbg !1270
  %idxprom185.i = zext i32 %and.i187 to i64, !dbg !1270
  %arrayidx186.i = getelementptr inbounds [12 x [16 x i16]], ptr %is_match.i, i64 0, i64 %idxprom183.i, i64 %idxprom185.i, !dbg !1270
  %301 = load i16, ptr %arrayidx186.i, align 2, !dbg !1270
    #dbg_value(i16 %301, !697, !DIExpression(), !1271)
  %302 = lshr i16 %301, 4, !dbg !1273
  %idxprom.i.i189 = zext nneg i16 %302 to i64, !dbg !1274
  %arrayidx.i.i190 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i.i189, !dbg !1274
  %303 = load i8, ptr %arrayidx.i.i190, align 1, !dbg !1274
  %conv1.i.i191 = zext i8 %303 to i32, !dbg !1274
  %add.i192 = add i32 %296, %conv1.i.i191, !dbg !1275
  %arrayidx187.i = getelementptr i8, ptr %add.ptr.i172, i64 -2, !dbg !1276
  %304 = load i8, ptr %arrayidx187.i, align 1, !dbg !1276
  %conv.i = zext i8 %304 to i32, !dbg !1276
  %cmp188.i = icmp ugt i32 %state.3.i, 6, !dbg !1277
  %conv191.i = zext i8 %297 to i32, !dbg !1278
    #dbg_value(ptr %pcoder, !709, !DIExpression(), !1279)
    #dbg_value(i32 %add, !718, !DIExpression(), !1279)
    #dbg_value(i32 %conv.i, !719, !DIExpression(), !1279)
    #dbg_value(i1 %cmp188.i, !720, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !1279)
    #dbg_value(i8 %299, !721, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1279)
    #dbg_value(i32 %conv191.i, !722, !DIExpression(), !1279)
    #dbg_value(ptr %pcoder, !723, !DIExpression(), !1279)
  %305 = load i32, ptr %literal_pos_mask.i.i, align 8, !dbg !1281
  %and.i.i195 = and i32 %305, %add, !dbg !1281
  %306 = load i32, ptr %literal_context_bits.i.i, align 4, !dbg !1281
  %shl.i.i197 = shl i32 %and.i.i195, %306, !dbg !1281
  %sub.i.i198 = sub i32 8, %306, !dbg !1281
  %shr.i.i199 = lshr i32 %conv.i, %sub.i.i198, !dbg !1281
  %add.i.i200 = add i32 %shr.i.i199, %shl.i.i197, !dbg !1281
  %idxprom.i1355.i = zext i32 %add.i.i200 to i64, !dbg !1281
  %arrayidx.i1356.i = getelementptr inbounds [16 x [768 x i16]], ptr %literal.i.i, i64 0, i64 %idxprom.i1355.i, !dbg !1281
    #dbg_value(ptr %arrayidx.i1356.i, !727, !DIExpression(), !1279)
    #dbg_value(i32 0, !728, !DIExpression(), !1279)
  %add2.i.i201 = or disjoint i32 %conv191.i, 256, !dbg !1282
  br i1 %cmp188.i, label %do.body.i.preheader.i276, label %do.body.i.i.i202, !dbg !1283

do.body.i.preheader.i276:                         ; preds = %if.end157.i
  %conv190.i = zext i8 %299 to i32, !dbg !1284
    #dbg_value(i32 %conv190.i, !721, !DIExpression(), !1279)
  br label %do.body.i.i277, !dbg !1285

do.body.i.i.i202:                                 ; preds = %if.end157.i, %do.body.i.i.i202
  %price.0.i.i.i203 = phi i32 [ %add1.i.i.i215, %do.body.i.i.i202 ], [ 0, %if.end157.i ], !dbg !1286
  %symbol.addr.0.i.i.i204 = phi i32 [ %shr.i.i.i206, %do.body.i.i.i202 ], [ %add2.i.i201, %if.end157.i ], !dbg !1286
    #dbg_value(i32 %symbol.addr.0.i.i.i204, !396, !DIExpression(), !1286)
    #dbg_value(i32 %price.0.i.i.i203, !397, !DIExpression(), !1286)
  %and.i.i.i205 = and i32 %symbol.addr.0.i.i.i204, 1, !dbg !1288
    #dbg_value(i32 %and.i.i.i205, !398, !DIExpression(), !1289)
  %shr.i.i.i206 = lshr i32 %symbol.addr.0.i.i.i204, 1, !dbg !1290
    #dbg_value(i32 %shr.i.i.i206, !396, !DIExpression(), !1286)
  %idxprom.i.i.i207 = zext nneg i32 %shr.i.i.i206 to i64, !dbg !1291
  %arrayidx.i.i.i208 = getelementptr inbounds i16, ptr %arrayidx.i1356.i, i64 %idxprom.i.i.i207, !dbg !1291
  %307 = load i16, ptr %arrayidx.i.i.i208, align 2, !dbg !1291
    #dbg_value(i16 %307, !408, !DIExpression(), !1292)
    #dbg_value(i32 %and.i.i.i205, !413, !DIExpression(), !1292)
  %conv.i.i.i.i209 = zext i16 %307 to i64, !dbg !1294
  %308 = icmp eq i32 %and.i.i.i205, 0, !dbg !1295
  %and.i.i.i.i210 = select i1 %308, i64 0, i64 2032, !dbg !1295
  %xor.i.i.i.i211 = xor i64 %and.i.i.i.i210, %conv.i.i.i.i209, !dbg !1296
  %shr.i.i.i.i212 = lshr i64 %xor.i.i.i.i211, 4, !dbg !1297
  %arrayidx.i.i.i.i213 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i.i.i212, !dbg !1298
  %309 = load i8, ptr %arrayidx.i.i.i.i213, align 1, !dbg !1298
  %conv1.i.i.i.i214 = zext i8 %309 to i32, !dbg !1298
  %add1.i.i.i215 = add i32 %price.0.i.i.i203, %conv1.i.i.i.i214, !dbg !1299
    #dbg_value(i32 %add1.i.i.i215, !397, !DIExpression(), !1286)
  %cmp.not.i.i.i216 = icmp eq i32 %shr.i.i.i206, 1, !dbg !1300
  br i1 %cmp.not.i.i.i216, label %get_literal_price.exit.i217, label %do.body.i.i.i202, !dbg !1301, !llvm.loop !1302

do.body.i.i277:                                   ; preds = %do.body.i.i277, %do.body.i.preheader.i276
  %offset.0.i.i278 = phi i32 [ %and15.i.i300, %do.body.i.i277 ], [ 256, %do.body.i.preheader.i276 ], !dbg !1305
  %price.0.i.i279 = phi i32 [ %add13.i.i297, %do.body.i.i277 ], [ 0, %do.body.i.preheader.i276 ], !dbg !1279
  %symbol.addr.0.i.i280 = phi i32 [ %shl14.i.i298, %do.body.i.i277 ], [ %add2.i.i201, %do.body.i.preheader.i276 ], !dbg !1305
  %match_byte.addr.0.i.i281 = phi i32 [ %shl3.i.i282, %do.body.i.i277 ], [ %conv190.i, %do.body.i.preheader.i276 ]
    #dbg_value(i32 %match_byte.addr.0.i.i281, !721, !DIExpression(), !1279)
    #dbg_value(i32 %symbol.addr.0.i.i280, !722, !DIExpression(), !1279)
    #dbg_value(i32 %price.0.i.i279, !728, !DIExpression(), !1279)
    #dbg_value(i32 %offset.0.i.i278, !729, !DIExpression(), !1305)
  %shl3.i.i282 = shl i32 %match_byte.addr.0.i.i281, 1, !dbg !1306
    #dbg_value(i32 %shl3.i.i282, !721, !DIExpression(), !1279)
  %and4.i.i283 = and i32 %shl3.i.i282, %offset.0.i.i278, !dbg !1307
    #dbg_value(i32 %and4.i.i283, !732, !DIExpression(), !1308)
  %shr6.i.i284 = lshr i32 %symbol.addr.0.i.i280, 8, !dbg !1309
  %add5.i.i285 = add nuw nsw i32 %shr6.i.i284, %offset.0.i.i278, !dbg !1310
  %add7.i.i286 = add nuw nsw i32 %add5.i.i285, %and4.i.i283, !dbg !1311
    #dbg_value(i32 %add7.i.i286, !734, !DIExpression(), !1308)
    #dbg_value(i32 %symbol.addr.0.i.i280, !735, !DIExpression(DW_OP_constu, 7, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value), !1308)
  %idxprom10.i.i287 = zext nneg i32 %add7.i.i286 to i64, !dbg !1312
  %arrayidx11.i.i288 = getelementptr inbounds i16, ptr %arrayidx.i1356.i, i64 %idxprom10.i.i287, !dbg !1312
  %310 = load i16, ptr %arrayidx11.i.i288, align 2, !dbg !1312
    #dbg_value(i16 %310, !408, !DIExpression(), !1313)
    #dbg_value(i32 %symbol.addr.0.i.i280, !413, !DIExpression(DW_OP_constu, 7, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value), !1313)
  %conv.i.i.i289 = zext i16 %310 to i64, !dbg !1315
  %.mask.i.i290 = and i32 %symbol.addr.0.i.i280, 128, !dbg !1316
  %isneg.not.i.i291 = icmp eq i32 %.mask.i.i290, 0, !dbg !1316
  %and.i31.i.i292 = select i1 %isneg.not.i.i291, i64 0, i64 2032, !dbg !1316
  %xor.i.i.i293 = xor i64 %and.i31.i.i292, %conv.i.i.i289, !dbg !1317
  %shr.i32.i.i294 = lshr i64 %xor.i.i.i293, 4, !dbg !1318
  %arrayidx.i34.i.i295 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i32.i.i294, !dbg !1319
  %311 = load i8, ptr %arrayidx.i34.i.i295, align 1, !dbg !1319
  %conv1.i.i.i296 = zext i8 %311 to i32, !dbg !1319
  %add13.i.i297 = add i32 %price.0.i.i279, %conv1.i.i.i296, !dbg !1320
    #dbg_value(i32 %add13.i.i297, !728, !DIExpression(), !1279)
  %shl14.i.i298 = shl nuw nsw i32 %symbol.addr.0.i.i280, 1, !dbg !1321
    #dbg_value(i32 %shl14.i.i298, !722, !DIExpression(), !1279)
  %312 = xor i32 %shl14.i.i298, %shl3.i.i282, !dbg !1322
  %not.i.i299 = xor i32 %312, -1, !dbg !1322
  %and15.i.i300 = and i32 %offset.0.i.i278, %not.i.i299, !dbg !1323
    #dbg_value(i32 %and15.i.i300, !729, !DIExpression(), !1305)
  %cmp.i.i301 = icmp ult i32 %symbol.addr.0.i.i280, 32768, !dbg !1324
  br i1 %cmp.i.i301, label %do.body.i.i277, label %get_literal_price.exit.i217, !dbg !1325, !llvm.loop !1326

get_literal_price.exit.i217:                      ; preds = %do.body.i.i.i202, %do.body.i.i277
  %price.1.i.i218 = phi i32 [ %add13.i.i297, %do.body.i.i277 ], [ %add1.i.i.i215, %do.body.i.i.i202 ], !dbg !1282
    #dbg_value(i32 %price.1.i.i218, !728, !DIExpression(), !1279)
  %add193.i = add i32 %add.i192, %price.1.i.i218, !dbg !1328
    #dbg_value(i32 %add193.i, !1112, !DIExpression(), !1175)
    #dbg_value(i8 0, !1113, !DIExpression(), !1175)
  %indvars.iv.next394 = add nuw nsw i64 %indvars.iv393, 1, !dbg !1329
  %indvars396 = trunc i64 %indvars.iv.next394 to i32, !dbg !1329
  %arrayidx197.i = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv.next394, !dbg !1331
  %price198.i = getelementptr inbounds i8, ptr %arrayidx197.i, i64 16, !dbg !1332
  %313 = load i32, ptr %price198.i, align 4, !dbg !1332
  %cmp199.i = icmp ult i32 %add193.i, %313, !dbg !1333
  br i1 %cmp199.i, label %if.then201.i, label %if.end216.i, !dbg !1334

if.then201.i:                                     ; preds = %get_literal_price.exit.i217
  store i32 %add193.i, ptr %price198.i, align 4, !dbg !1335
  %pos_prev211.i = getelementptr inbounds i8, ptr %arrayidx197.i, i64 20, !dbg !1337
  store i32 %249, ptr %pos_prev211.i, align 4, !dbg !1338
    #dbg_value(ptr %arrayidx197.i, !789, !DIExpression(), !1339)
  %back_prev.i.i273 = getelementptr inbounds i8, ptr %arrayidx197.i, i64 24, !dbg !1341
  store i32 -1, ptr %back_prev.i.i273, align 4, !dbg !1342
  %prev_1_is_literal.i.i274 = getelementptr inbounds i8, ptr %arrayidx197.i, i64 4, !dbg !1343
  store i8 0, ptr %prev_1_is_literal.i.i274, align 4, !dbg !1344
    #dbg_value(i8 1, !1113, !DIExpression(), !1175)
  %.pre.i275 = load i16, ptr %arrayidx186.i, align 2, !dbg !1345
  %.pre1693.i = lshr i16 %.pre.i275, 4, !dbg !1346
  br label %if.end216.i, !dbg !1348

if.end216.i:                                      ; preds = %if.then201.i, %get_literal_price.exit.i217
  %.pre-phi.i = phi i16 [ %.pre1693.i, %if.then201.i ], [ %302, %get_literal_price.exit.i217 ], !dbg !1346
  %314 = phi i32 [ %add193.i, %if.then201.i ], [ %313, %get_literal_price.exit.i217 ]
    #dbg_value(i8 poison, !1113, !DIExpression(), !1175)
    #dbg_value(i16 poison, !802, !DIExpression(), !1349)
  %315 = xor i16 %.pre-phi.i, 127, !dbg !1346
  %idxprom.i1357.i = zext nneg i16 %315 to i64, !dbg !1350
  %arrayidx.i1358.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i1357.i, !dbg !1350
  %316 = load i8, ptr %arrayidx.i1358.i, align 1, !dbg !1350
  %conv1.i1359.i = zext i8 %316 to i32, !dbg !1350
  %add223.i = add i32 %296, %conv1.i1359.i, !dbg !1351
    #dbg_value(i32 %add223.i, !1114, !DIExpression(), !1175)
  %arrayidx225.i = getelementptr inbounds [12 x i16], ptr %is_rep.i, i64 0, i64 %idxprom183.i, !dbg !1352
  %317 = load i16, ptr %arrayidx225.i, align 2, !dbg !1352
    #dbg_value(i16 %317, !802, !DIExpression(), !1353)
  %318 = lshr i16 %317, 4, !dbg !1355
  %319 = xor i16 %318, 127, !dbg !1355
  %idxprom.i1360.i = zext nneg i16 %319 to i64, !dbg !1356
  %arrayidx.i1361.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i1360.i, !dbg !1356
  %320 = load i8, ptr %arrayidx.i1361.i, align 1, !dbg !1356
  %conv1.i1362.i = zext i8 %320 to i32, !dbg !1356
  %add227.i = add i32 %add223.i, %conv1.i1362.i, !dbg !1357
    #dbg_value(i32 %add227.i, !1115, !DIExpression(), !1175)
  %cmp230.i = icmp eq i8 %299, %297, !dbg !1358
  br i1 %cmp230.i, label %land.lhs.true232.i, label %if.end274.i, !dbg !1359

land.lhs.true232.i:                               ; preds = %if.end216.i
  %pos_prev237.i = getelementptr inbounds i8, ptr %arrayidx197.i, i64 20, !dbg !1360
  %321 = load i32, ptr %pos_prev237.i, align 4, !dbg !1360
  %322 = zext i32 %321 to i64, !dbg !1361
  %cmp238.i = icmp ugt i64 %indvars.iv393, %322, !dbg !1361
  br i1 %cmp238.i, label %land.lhs.true240.i, label %if.then248.i, !dbg !1362

land.lhs.true240.i:                               ; preds = %land.lhs.true232.i
  %back_prev245.i = getelementptr inbounds i8, ptr %arrayidx197.i, i64 24, !dbg !1363
  %323 = load i32, ptr %back_prev245.i, align 4, !dbg !1363
  %cmp246.i = icmp eq i32 %323, 0, !dbg !1364
  br i1 %cmp246.i, label %if.end274.i, label %if.then248.i, !dbg !1365

if.then248.i:                                     ; preds = %land.lhs.true240.i, %land.lhs.true232.i
    #dbg_value(ptr %pcoder, !817, !DIExpression(), !1366)
    #dbg_value(i32 %state.3.i, !823, !DIExpression(), !1366)
    #dbg_value(i32 %and.i187, !824, !DIExpression(), !1366)
    #dbg_value(ptr %pcoder, !825, !DIExpression(), !1366)
  %arrayidx.i1364.i = getelementptr inbounds [12 x i16], ptr %is_rep0.i517.i, i64 0, i64 %idxprom183.i, !dbg !1368
  %324 = load i16, ptr %arrayidx.i1364.i, align 2, !dbg !1368
    #dbg_value(i16 %324, !697, !DIExpression(), !1369)
  %325 = lshr i16 %324, 4, !dbg !1371
  %idxprom.i.i1365.i = zext nneg i16 %325 to i64, !dbg !1372
  %arrayidx.i.i1366.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i.i1365.i, !dbg !1372
  %326 = load i8, ptr %arrayidx.i.i1366.i, align 1, !dbg !1372
  %conv1.i.i1367.i = zext i8 %326 to i32, !dbg !1372
  %arrayidx4.i.i268 = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long.i.i267, i64 0, i64 %idxprom183.i, i64 %idxprom185.i, !dbg !1373
  %327 = load i16, ptr %arrayidx4.i.i268, align 2, !dbg !1373
    #dbg_value(i16 %327, !697, !DIExpression(), !1374)
  %328 = lshr i16 %327, 4, !dbg !1376
  %idxprom.i8.i.i269 = zext nneg i16 %328 to i64, !dbg !1377
  %arrayidx.i9.i.i270 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i8.i.i269, !dbg !1377
  %329 = load i8, ptr %arrayidx.i9.i.i270, align 1, !dbg !1377
  %conv1.i10.i.i271 = zext i8 %329 to i32, !dbg !1377
  %add.i1368.i = add i32 %add227.i, %conv1.i.i1367.i, !dbg !1378
  %add250.i272 = add i32 %add.i1368.i, %conv1.i10.i.i271, !dbg !1379
    #dbg_value(i32 %add250.i272, !1116, !DIExpression(), !1380)
  %cmp256.not.i = icmp ugt i32 %add250.i272, %314, !dbg !1381
  br i1 %cmp256.not.i, label %if.end274.i, label %if.then258.i, !dbg !1383

if.then258.i:                                     ; preds = %if.then248.i
  store i32 %add250.i272, ptr %price198.i, align 4, !dbg !1384
  store i32 %249, ptr %pos_prev237.i, align 4, !dbg !1386
    #dbg_value(ptr %arrayidx197.i, !848, !DIExpression(), !1387)
  %back_prev.i1369.i = getelementptr inbounds i8, ptr %arrayidx197.i, i64 24, !dbg !1389
  store i32 0, ptr %back_prev.i1369.i, align 4, !dbg !1390
  %prev_1_is_literal.i1370.i = getelementptr inbounds i8, ptr %arrayidx197.i, i64 4, !dbg !1391
  store i8 0, ptr %prev_1_is_literal.i1370.i, align 4, !dbg !1392
    #dbg_value(i8 1, !1113, !DIExpression(), !1175)
  br label %if.end274.i, !dbg !1393

if.end274.i:                                      ; preds = %if.then258.i, %if.then248.i, %land.lhs.true240.i, %if.end216.i
  %next_is_literal.2.i = phi i1 [ %cmp199.i, %land.lhs.true240.i ], [ %cmp199.i, %if.end216.i ], [ true, %if.then258.i ], [ %cmp199.i, %if.then248.i ], !dbg !1175
    #dbg_value(i8 poison, !1113, !DIExpression(), !1175)
  %cmp275.i = icmp ult i32 %spec.select, 2, !dbg !1394
  br i1 %cmp275.i, label %helper2.exit, label %if.end278.i, !dbg !1396

if.end278.i:                                      ; preds = %if.end274.i
  %cond284.i = call i32 @llvm.umin.i32(i32 %spec.select, i32 %248), !dbg !1397
    #dbg_value(i32 %cond284.i, !1119, !DIExpression(), !1175)
  %or.cond.i = or i1 %cmp230.i, %next_is_literal.2.i, !dbg !1398
  br i1 %or.cond.i, label %if.end393.i, label %if.then291.i, !dbg !1398

if.then291.i:                                     ; preds = %if.end278.i
    #dbg_value(ptr %add.ptr182.i, !1120, !DIExpression(), !1399)
  %add297.i = add i32 %248, 1, !dbg !1400
  %cond304.i = call i32 @llvm.umin.i32(i32 %add297.i, i32 %spec.select), !dbg !1400
    #dbg_value(i32 %cond304.i, !1123, !DIExpression(), !1399)
    #dbg_value(i32 1, !1124, !DIExpression(), !1399)
  %cmp3051589.i = icmp ugt i32 %cond304.i, 1, !dbg !1401
  br i1 %cmp3051589.i, label %land.rhs.preheader.i261, label %if.end393.i, !dbg !1402

land.rhs.preheader.i261:                          ; preds = %if.then291.i
  %wide.trip.count1645.i = zext i32 %cond304.i to i64, !dbg !1401
  br label %land.rhs.i262, !dbg !1403

land.rhs.i262:                                    ; preds = %while.body.i, %land.rhs.preheader.i261
  %indvars.iv1642.i = phi i64 [ 1, %land.rhs.preheader.i261 ], [ %indvars.iv.next1643.i, %while.body.i ]
    #dbg_value(i64 %indvars.iv1642.i, !1124, !DIExpression(), !1399)
  %arrayidx308.i = getelementptr inbounds i8, ptr %add.ptr, i64 %indvars.iv1642.i, !dbg !1404
  %330 = load i8, ptr %arrayidx308.i, align 1, !dbg !1404
  %arrayidx311.i = getelementptr inbounds i8, ptr %add.ptr182.i, i64 %indvars.iv1642.i, !dbg !1405
  %331 = load i8, ptr %arrayidx311.i, align 1, !dbg !1405
  %cmp313.i = icmp eq i8 %330, %331, !dbg !1406
  br i1 %cmp313.i, label %while.body.i, label %while.end.split.loop.exit.i, !dbg !1403

while.body.i:                                     ; preds = %land.rhs.i262
  %indvars.iv.next1643.i = add nuw nsw i64 %indvars.iv1642.i, 1, !dbg !1407
    #dbg_value(i64 %indvars.iv.next1643.i, !1124, !DIExpression(), !1399)
  %exitcond1646.not.i = icmp eq i64 %indvars.iv.next1643.i, %wide.trip.count1645.i, !dbg !1401
  br i1 %exitcond1646.not.i, label %while.end.i, label %land.rhs.i262, !dbg !1402, !llvm.loop !1408

while.end.split.loop.exit.i:                      ; preds = %land.rhs.i262
  %332 = trunc nuw i64 %indvars.iv1642.i to i32
  br label %while.end.i, !dbg !1410

while.end.i:                                      ; preds = %while.body.i, %while.end.split.loop.exit.i
  %len_test.0.lcssa.i = phi i32 [ %332, %while.end.split.loop.exit.i ], [ %cond304.i, %while.body.i ], !dbg !1399
    #dbg_value(i32 %len_test.0.lcssa.i, !1124, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1399)
  %333 = add i32 %len_test.0.lcssa.i, -3, !dbg !1410
  %cmp317.i = icmp ult i32 %333, -2, !dbg !1410
  br i1 %cmp317.i, label %if.then319.i, label %if.end393.i, !dbg !1411

if.then319.i:                                     ; preds = %while.end.i
    #dbg_value(i32 %state.3.i, !1125, !DIExpression(), !1412)
  %cmp320.i = icmp ult i32 %state.3.i, 4, !dbg !1413
  %cmp324.i = icmp ult i32 %state.3.i, 10, !dbg !1413
  %cond331.v.i = select i1 %cmp324.i, i32 -3, i32 -6, !dbg !1413
  %cond331.i = add i32 %cond331.v.i, %state.3.i, !dbg !1413
  %cond333.i = select i1 %cmp320.i, i32 0, i32 %cond331.i, !dbg !1413
    #dbg_value(i32 %cond333.i, !1125, !DIExpression(), !1412)
  %add334.i = add i32 %add, 1, !dbg !1414
  %and336.i = and i32 %300, %add334.i, !dbg !1415
    #dbg_value(i32 %and336.i, !1128, !DIExpression(), !1412)
  %idxprom338.i = zext i32 %cond333.i to i64, !dbg !1416
  %idxprom340.i = zext i32 %and336.i to i64, !dbg !1416
  %arrayidx341.i = getelementptr inbounds [12 x [16 x i16]], ptr %is_match.i, i64 0, i64 %idxprom338.i, i64 %idxprom340.i, !dbg !1416
  %334 = load i16, ptr %arrayidx341.i, align 2, !dbg !1416
    #dbg_value(i16 %334, !802, !DIExpression(), !1417)
  %335 = lshr i16 %334, 4, !dbg !1419
  %336 = xor i16 %335, 127, !dbg !1419
  %idxprom.i1371.i = zext nneg i16 %336 to i64, !dbg !1420
  %arrayidx.i1372.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i1371.i, !dbg !1420
  %337 = load i8, ptr %arrayidx.i1372.i, align 1, !dbg !1420
  %conv1.i1373.i = zext i8 %337 to i32, !dbg !1420
  %arrayidx346.i = getelementptr inbounds [12 x i16], ptr %is_rep.i, i64 0, i64 %idxprom338.i, !dbg !1421
  %338 = load i16, ptr %arrayidx346.i, align 2, !dbg !1421
    #dbg_value(i16 %338, !802, !DIExpression(), !1422)
  %339 = lshr i16 %338, 4, !dbg !1424
  %340 = xor i16 %339, 127, !dbg !1424
  %idxprom.i1374.i = zext nneg i16 %340 to i64, !dbg !1425
  %arrayidx.i1375.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i1374.i, !dbg !1425
  %341 = load i8, ptr %arrayidx.i1375.i, align 1, !dbg !1425
  %conv1.i1376.i = zext i8 %341 to i32, !dbg !1425
    #dbg_value(i32 poison, !1129, !DIExpression(), !1412)
  %add350.i = add i32 %len_test.0.lcssa.i, %249, !dbg !1426
    #dbg_value(i32 %add350.i, !1130, !DIExpression(), !1412)
    #dbg_value(i32 %len_end.0353, !1087, !DIExpression(), !1175)
  %cmp3521593.i = icmp ugt i32 %add350.i, %len_end.0353, !dbg !1427
  br i1 %cmp3521593.i, label %while.body354.preheader.i, label %if.then319.while.end360_crit_edge.i, !dbg !1428

if.then319.while.end360_crit_edge.i:              ; preds = %if.then319.i
  %.pre1697.i = zext i32 %add350.i to i64, !dbg !1429
  br label %while.end360.i, !dbg !1428

while.body354.preheader.i:                        ; preds = %if.then319.i
  %342 = zext i32 %len_end.0353 to i64, !dbg !1428
  %wide.trip.count1650.i = zext i32 %add350.i to i64, !dbg !1427
  %343 = sub nsw i64 %wide.trip.count1650.i, %342, !dbg !1428
  %min.iters.check486 = icmp ult i64 %343, 4, !dbg !1428
  br i1 %min.iters.check486, label %while.body354.i.preheader, label %vector.ph487, !dbg !1428

vector.ph487:                                     ; preds = %while.body354.preheader.i
  %n.vec489 = and i64 %343, -4, !dbg !1428
  %ind.end490 = add nsw i64 %n.vec489, %342, !dbg !1428
  br label %vector.body492, !dbg !1428

vector.body492:                                   ; preds = %vector.body492, %vector.ph487
  %index493 = phi i64 [ 0, %vector.ph487 ], [ %index.next495, %vector.body492 ]
  %offset.idx494 = add i64 %index493, %342, !dbg !1428
  %344 = add nuw nsw i64 %offset.idx494, 1, !dbg !1431
  %345 = add i64 %offset.idx494, 2, !dbg !1431
  %346 = add i64 %offset.idx494, 3, !dbg !1431
  %347 = add i64 %offset.idx494, 4, !dbg !1431
  %348 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %344, i32 5, !dbg !1432
  %349 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %345, i32 5, !dbg !1432
  %350 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %346, i32 5, !dbg !1432
  %351 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %347, i32 5, !dbg !1432
  store i32 1073741824, ptr %348, align 4, !dbg !1433
  store i32 1073741824, ptr %349, align 4, !dbg !1433
  store i32 1073741824, ptr %350, align 4, !dbg !1433
  store i32 1073741824, ptr %351, align 4, !dbg !1433
  %index.next495 = add nuw i64 %index493, 4
  %352 = icmp eq i64 %index.next495, %n.vec489
  br i1 %352, label %middle.block484, label %vector.body492, !llvm.loop !1434

middle.block484:                                  ; preds = %vector.body492
  %cmp.n496 = icmp eq i64 %343, %n.vec489, !dbg !1428
  br i1 %cmp.n496, label %while.end360.i, label %while.body354.i.preheader, !dbg !1428

while.body354.i.preheader:                        ; preds = %middle.block484, %while.body354.preheader.i
  %indvars.iv1647.i.ph = phi i64 [ %342, %while.body354.preheader.i ], [ %ind.end490, %middle.block484 ]
  %353 = sub nsw i64 %wide.trip.count1650.i, %indvars.iv1647.i.ph, !dbg !1428
  %xtraiter531 = and i64 %353, 3, !dbg !1428
  %lcmp.mod532.not = icmp eq i64 %xtraiter531, 0, !dbg !1428
  br i1 %lcmp.mod532.not, label %while.body354.i.prol.loopexit, label %while.body354.i.prol, !dbg !1428

while.body354.i.prol:                             ; preds = %while.body354.i.preheader, %while.body354.i.prol
  %indvars.iv1647.i.prol = phi i64 [ %indvars.iv.next1648.i.prol, %while.body354.i.prol ], [ %indvars.iv1647.i.ph, %while.body354.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %while.body354.i.prol ], [ 0, %while.body354.i.preheader ]
    #dbg_value(i64 %indvars.iv1647.i.prol, !1087, !DIExpression(), !1175)
  %indvars.iv.next1648.i.prol = add nuw nsw i64 %indvars.iv1647.i.prol, 1, !dbg !1431
    #dbg_value(i64 %indvars.iv.next1648.i.prol, !1087, !DIExpression(), !1175)
  %price359.i.prol = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv.next1648.i.prol, i32 5, !dbg !1432
  store i32 1073741824, ptr %price359.i.prol, align 4, !dbg !1433
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !1428
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter531, !dbg !1428
  br i1 %prol.iter.cmp.not, label %while.body354.i.prol.loopexit, label %while.body354.i.prol, !dbg !1428, !llvm.loop !1436

while.body354.i.prol.loopexit:                    ; preds = %while.body354.i.prol, %while.body354.i.preheader
  %indvars.iv1647.i.unr = phi i64 [ %indvars.iv1647.i.ph, %while.body354.i.preheader ], [ %indvars.iv.next1648.i.prol, %while.body354.i.prol ]
  %354 = sub nsw i64 %indvars.iv1647.i.ph, %wide.trip.count1650.i, !dbg !1428
  %355 = icmp ugt i64 %354, -4, !dbg !1428
  br i1 %355, label %while.end360.i, label %while.body354.i, !dbg !1428

while.body354.i:                                  ; preds = %while.body354.i.prol.loopexit, %while.body354.i
  %indvars.iv1647.i = phi i64 [ %indvars.iv.next1648.i.3, %while.body354.i ], [ %indvars.iv1647.i.unr, %while.body354.i.prol.loopexit ]
    #dbg_value(i64 %indvars.iv1647.i, !1087, !DIExpression(), !1175)
  %indvars.iv.next1648.i = add nuw nsw i64 %indvars.iv1647.i, 1, !dbg !1431
    #dbg_value(i64 %indvars.iv.next1648.i, !1087, !DIExpression(), !1175)
  %price359.i = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv.next1648.i, i32 5, !dbg !1432
  store i32 1073741824, ptr %price359.i, align 4, !dbg !1433
  %indvars.iv.next1648.i.1 = add nuw nsw i64 %indvars.iv1647.i, 2, !dbg !1431
    #dbg_value(i64 %indvars.iv.next1648.i.1, !1087, !DIExpression(), !1175)
  %price359.i.1 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv.next1648.i.1, i32 5, !dbg !1432
  store i32 1073741824, ptr %price359.i.1, align 4, !dbg !1433
  %indvars.iv.next1648.i.2 = add nuw nsw i64 %indvars.iv1647.i, 3, !dbg !1431
    #dbg_value(i64 %indvars.iv.next1648.i.2, !1087, !DIExpression(), !1175)
  %price359.i.2 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv.next1648.i.2, i32 5, !dbg !1432
  store i32 1073741824, ptr %price359.i.2, align 4, !dbg !1433
  %indvars.iv.next1648.i.3 = add nuw nsw i64 %indvars.iv1647.i, 4, !dbg !1431
    #dbg_value(i64 %indvars.iv.next1648.i.3, !1087, !DIExpression(), !1175)
  %price359.i.3 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv.next1648.i.3, i32 5, !dbg !1432
  store i32 1073741824, ptr %price359.i.3, align 4, !dbg !1433
  %exitcond1651.not.i.3 = icmp eq i64 %indvars.iv.next1648.i.3, %wide.trip.count1650.i, !dbg !1427
  br i1 %exitcond1651.not.i.3, label %while.end360.i, label %while.body354.i, !dbg !1428, !llvm.loop !1438

while.end360.i:                                   ; preds = %while.body354.i.prol.loopexit, %while.body354.i, %middle.block484, %if.then319.while.end360_crit_edge.i
  %idxprom364.pre-phi.i = phi i64 [ %.pre1697.i, %if.then319.while.end360_crit_edge.i ], [ %wide.trip.count1650.i, %middle.block484 ], [ %wide.trip.count1650.i, %while.body354.i ], [ %wide.trip.count1650.i, %while.body354.i.prol.loopexit ], !dbg !1429
  %len_end.addr.0.lcssa.i = phi i32 [ %len_end.0353, %if.then319.while.end360_crit_edge.i ], [ %add350.i, %middle.block484 ], [ %add350.i, %while.body354.i ], [ %add350.i, %while.body354.i.prol.loopexit ]
    #dbg_value(ptr %pcoder, !1439, !DIExpression(), !1449)
    #dbg_value(i32 0, !1444, !DIExpression(), !1449)
    #dbg_value(i32 poison, !1445, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1449)
    #dbg_value(i32 %cond333.i, !1446, !DIExpression(), !1449)
    #dbg_value(i32 %and336.i, !1447, !DIExpression(), !1449)
    #dbg_value(ptr %pcoder, !1448, !DIExpression(), !1449)
    #dbg_value(ptr %pcoder, !912, !DIExpression(DW_OP_plus_uconst, 47688, DW_OP_stack_value), !1451)
    #dbg_value(i32 poison, !920, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1451)
    #dbg_value(i32 %and336.i, !921, !DIExpression(), !1451)
  %idxprom1.i.i.i264 = zext i32 %333 to i64, !dbg !1453
  %arrayidx2.i.i.i265 = getelementptr inbounds [16 x [272 x i32]], ptr %prices.i.i, i64 0, i64 %idxprom340.i, i64 %idxprom1.i.i.i264, !dbg !1453
  %356 = load i32, ptr %arrayidx2.i.i.i265, align 4, !dbg !1453
    #dbg_value(ptr %pcoder, !888, !DIExpression(), !1454)
    #dbg_value(i32 0, !893, !DIExpression(), !1454)
    #dbg_value(i32 %cond333.i, !894, !DIExpression(), !1454)
    #dbg_value(i32 %and336.i, !895, !DIExpression(), !1454)
    #dbg_value(ptr %pcoder, !896, !DIExpression(), !1454)
  %arrayidx.i.i1378.i = getelementptr inbounds [12 x i16], ptr %is_rep0.i517.i, i64 0, i64 %idxprom338.i, !dbg !1456
  %357 = load i16, ptr %arrayidx.i.i1378.i, align 2, !dbg !1456
  %358 = lshr i16 %357, 4, !dbg !1456
    #dbg_value(i16 %357, !697, !DIExpression(), !1457)
  %idxprom.i.i.i.i = zext nneg i16 %358 to i64, !dbg !1459
  %arrayidx.i.i.i1379.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i.i.i.i, !dbg !1459
  %359 = load i8, ptr %arrayidx.i.i.i1379.i, align 1, !dbg !1459
  %conv1.i.i.i1380.i = zext i8 %359 to i32, !dbg !1459
    #dbg_value(i32 %conv1.i.i.i1380.i, !897, !DIExpression(), !1454)
  %arrayidx4.i.i.i = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long.i.i267, i64 0, i64 %idxprom338.i, i64 %idxprom340.i, !dbg !1460
  %360 = load i16, ptr %arrayidx4.i.i.i, align 2, !dbg !1460
    #dbg_value(i16 %360, !802, !DIExpression(), !1461)
  %361 = lshr i16 %360, 4, !dbg !1463
  %362 = xor i16 %361, 127, !dbg !1463
  %idxprom.i43.i.i.i = zext nneg i16 %362 to i64, !dbg !1464
  %arrayidx.i44.i.i.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i43.i.i.i, !dbg !1464
  %363 = load i8, ptr %arrayidx.i44.i.i.i, align 1, !dbg !1464
  %conv1.i45.i.i.i = zext i8 %363 to i32, !dbg !1464
    #dbg_value(i32 poison, !897, !DIExpression(), !1454)
  %add.i.i.i = add i32 %add193.i, %conv1.i1373.i, !dbg !1465
  %add.i1381.i = add i32 %add.i.i.i, %conv1.i1376.i, !dbg !1466
  %add343.i = add i32 %add.i1381.i, %356, !dbg !1467
  %add348.i = add i32 %add343.i, %conv1.i.i.i1380.i, !dbg !1468
  %add362.i = add i32 %add348.i, %conv1.i45.i.i.i, !dbg !1469
    #dbg_value(i32 %add362.i, !1131, !DIExpression(), !1412)
  %arrayidx365.i = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %idxprom364.pre-phi.i, !dbg !1429
  %price366.i = getelementptr inbounds i8, ptr %arrayidx365.i, i64 16, !dbg !1470
  %364 = load i32, ptr %price366.i, align 4, !dbg !1470
  %cmp367.i = icmp ult i32 %add362.i, %364, !dbg !1471
  br i1 %cmp367.i, label %if.then369.i, label %if.end393.i, !dbg !1472

if.then369.i:                                     ; preds = %while.end360.i
  store i32 %add362.i, ptr %price366.i, align 4, !dbg !1473
  %pos_prev378.i = getelementptr inbounds i8, ptr %arrayidx365.i, i64 20, !dbg !1475
  store i32 %indvars396, ptr %pos_prev378.i, align 4, !dbg !1476
  %back_prev382.i = getelementptr inbounds i8, ptr %arrayidx365.i, i64 24, !dbg !1477
  store i32 0, ptr %back_prev382.i, align 4, !dbg !1478
  %prev_1_is_literal386.i = getelementptr inbounds i8, ptr %arrayidx365.i, i64 4, !dbg !1479
  store i8 1, ptr %prev_1_is_literal386.i, align 4, !dbg !1480
  %prev_2390.i = getelementptr inbounds i8, ptr %arrayidx365.i, i64 5, !dbg !1481
  store i8 0, ptr %prev_2390.i, align 1, !dbg !1482
  br label %if.end393.i, !dbg !1483

if.end393.i:                                      ; preds = %if.then369.i, %while.end360.i, %while.end.i, %if.then291.i, %if.end278.i
  %len_end.addr.2.i = phi i32 [ %len_end.0353, %if.end278.i ], [ %len_end.0353, %while.end.i ], [ %len_end.addr.0.lcssa.i, %if.then369.i ], [ %len_end.addr.0.lcssa.i, %while.end360.i ], [ %len_end.0353, %if.then291.i ]
    #dbg_value(i32 %len_end.addr.2.i, !1087, !DIExpression(), !1175)
    #dbg_value(i32 2, !1132, !DIExpression(), !1175)
    #dbg_value(i32 0, !1133, !DIExpression(), !1484)
  %cmp4221596.i = icmp ugt i32 %cond284.i, 2
  %arrayidx.i1385.i = getelementptr inbounds [12 x i16], ptr %is_rep0.i517.i, i64 0, i64 %idxprom183.i
  %arrayidx13.i.i221 = getelementptr inbounds [12 x i16], ptr %is_rep1.i.i, i64 0, i64 %idxprom183.i
  %arrayidx23.i.i223 = getelementptr inbounds [12 x i16], ptr %is_rep2.i.i, i64 0, i64 %idxprom183.i
  %arrayidx4.i1397.i = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long.i.i267, i64 0, i64 %idxprom183.i, i64 %idxprom185.i
  %cond527.i = select i1 %cmp188.i, i64 11, i64 8
  %wide.trip.count1655.i = zext i32 %cond284.i to i64
  br label %for.body398.i, !dbg !1485

for.cond.cleanup397.i:                            ; preds = %cleanup.i225
  %cmp646.i = icmp ugt i32 %call29, %cond284.i, !dbg !1486
  br i1 %cmp646.i, label %while.cond649.i, label %if.end662.i, !dbg !1488

for.body398.i:                                    ; preds = %cleanup.i225, %if.end393.i
  %indvars.iv1672.i = phi i64 [ 0, %if.end393.i ], [ %indvars.iv.next1673.i, %cleanup.i225 ]
  %len_end.addr.31614.i = phi i32 [ %len_end.addr.2.i, %if.end393.i ], [ %len_end.addr.7.i, %cleanup.i225 ]
  %start_len.01613.i = phi i32 [ 2, %if.end393.i ], [ %start_len.2.i, %cleanup.i225 ]
    #dbg_value(i32 %len_end.addr.31614.i, !1087, !DIExpression(), !1175)
    #dbg_value(i32 %start_len.01613.i, !1132, !DIExpression(), !1175)
    #dbg_value(i64 %indvars.iv1672.i, !1133, !DIExpression(), !1484)
  %arrayidx401.i = getelementptr inbounds i32, ptr %reps, i64 %indvars.iv1672.i, !dbg !1489
  %365 = load i32, ptr %arrayidx401.i, align 4, !dbg !1489
  %idx.ext402.i = zext i32 %365 to i64, !dbg !1490
  %idx.neg403.i = sub nsw i64 0, %idx.ext402.i, !dbg !1490
  %add.ptr404.i = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.neg403.i, !dbg !1490
  %add.ptr405.i = getelementptr inbounds i8, ptr %add.ptr404.i, i64 -1, !dbg !1491
    #dbg_value(ptr %add.ptr405.i, !1135, !DIExpression(), !1492)
  %366 = load i8, ptr %add.ptr, align 1, !dbg !1493
  %367 = load i8, ptr %add.ptr405.i, align 1, !dbg !1493
  %cmp410.not.i = icmp eq i8 %366, %367, !dbg !1493
  br i1 %cmp410.not.i, label %lor.lhs.false.i252, label %cleanup.i225, !dbg !1493

lor.lhs.false.i252:                               ; preds = %for.body398.i
  %368 = load i8, ptr %add.ptr.i172, align 1, !dbg !1493
  %369 = load i8, ptr %add.ptr404.i, align 1, !dbg !1493
  %cmp416.not.i = icmp eq i8 %368, %369, !dbg !1493
  br i1 %cmp416.not.i, label %for.cond421.preheader.i, label %cleanup.i225, !dbg !1495

for.cond421.preheader.i:                          ; preds = %lor.lhs.false.i252
    #dbg_value(i32 2, !1138, !DIExpression(), !1492)
  br i1 %cmp4221596.i, label %land.rhs424.i, label %for.end437.i, !dbg !1496

land.rhs424.i:                                    ; preds = %for.cond421.preheader.i, %for.inc435.i
  %indvars.iv1652.i = phi i64 [ %indvars.iv.next1653.i, %for.inc435.i ], [ 2, %for.cond421.preheader.i ]
    #dbg_value(i64 %indvars.iv1652.i, !1138, !DIExpression(), !1492)
  %arrayidx426.i = getelementptr inbounds i8, ptr %add.ptr, i64 %indvars.iv1652.i, !dbg !1499
  %370 = load i8, ptr %arrayidx426.i, align 1, !dbg !1499
  %arrayidx429.i = getelementptr inbounds i8, ptr %add.ptr405.i, i64 %indvars.iv1652.i, !dbg !1500
  %371 = load i8, ptr %arrayidx429.i, align 1, !dbg !1500
  %cmp431.i = icmp eq i8 %370, %371, !dbg !1501
  br i1 %cmp431.i, label %for.inc435.i, label %for.end437.loopexit.split.loop.exit1716.i, !dbg !1502

for.inc435.i:                                     ; preds = %land.rhs424.i
  %indvars.iv.next1653.i = add nuw nsw i64 %indvars.iv1652.i, 1, !dbg !1503
    #dbg_value(i64 %indvars.iv.next1653.i, !1138, !DIExpression(), !1492)
  %exitcond1656.not.i = icmp eq i64 %indvars.iv.next1653.i, %wide.trip.count1655.i, !dbg !1504
  br i1 %exitcond1656.not.i, label %for.end437.i, label %land.rhs424.i, !dbg !1496, !llvm.loop !1505

for.end437.loopexit.split.loop.exit1716.i:        ; preds = %land.rhs424.i
  %372 = trunc nuw i64 %indvars.iv1652.i to i32
  br label %for.end437.i

for.end437.i:                                     ; preds = %for.inc435.i, %for.end437.loopexit.split.loop.exit1716.i, %for.cond421.preheader.i
  %len_test420.0.lcssa.i = phi i32 [ 2, %for.cond421.preheader.i ], [ %372, %for.end437.loopexit.split.loop.exit1716.i ], [ %cond284.i, %for.inc435.i ], !dbg !1507
  %add439.i = add i32 %len_test420.0.lcssa.i, %249
    #dbg_value(i32 %len_end.addr.31614.i, !1087, !DIExpression(), !1175)
  %cmp4401600.i = icmp ult i32 %len_end.addr.31614.i, %add439.i, !dbg !1508
  br i1 %cmp4401600.i, label %while.body442.preheader.i, label %while.end448.i, !dbg !1509

while.body442.preheader.i:                        ; preds = %for.end437.i
  %373 = zext i32 %len_end.addr.31614.i to i64, !dbg !1509
  %wide.trip.count1660.i = zext i32 %add439.i to i64, !dbg !1508
  %374 = sub nsw i64 %wide.trip.count1660.i, %373, !dbg !1509
  %min.iters.check473 = icmp ult i64 %374, 4, !dbg !1509
  br i1 %min.iters.check473, label %while.body442.i.preheader, label %vector.ph474, !dbg !1509

vector.ph474:                                     ; preds = %while.body442.preheader.i
  %n.vec476 = and i64 %374, -4, !dbg !1509
  %ind.end477 = add nsw i64 %n.vec476, %373, !dbg !1509
  br label %vector.body479, !dbg !1509

vector.body479:                                   ; preds = %vector.body479, %vector.ph474
  %index480 = phi i64 [ 0, %vector.ph474 ], [ %index.next482, %vector.body479 ]
  %offset.idx481 = add i64 %index480, %373, !dbg !1509
  %375 = add nuw nsw i64 %offset.idx481, 1, !dbg !1510
  %376 = add i64 %offset.idx481, 2, !dbg !1510
  %377 = add i64 %offset.idx481, 3, !dbg !1510
  %378 = add i64 %offset.idx481, 4, !dbg !1510
  %379 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %375, i32 5, !dbg !1511
  %380 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %376, i32 5, !dbg !1511
  %381 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %377, i32 5, !dbg !1511
  %382 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %378, i32 5, !dbg !1511
  store i32 1073741824, ptr %379, align 4, !dbg !1512
  store i32 1073741824, ptr %380, align 4, !dbg !1512
  store i32 1073741824, ptr %381, align 4, !dbg !1512
  store i32 1073741824, ptr %382, align 4, !dbg !1512
  %index.next482 = add nuw i64 %index480, 4
  %383 = icmp eq i64 %index.next482, %n.vec476
  br i1 %383, label %middle.block471, label %vector.body479, !llvm.loop !1513

middle.block471:                                  ; preds = %vector.body479
  %cmp.n483 = icmp eq i64 %374, %n.vec476, !dbg !1509
  br i1 %cmp.n483, label %while.end448.i, label %while.body442.i.preheader, !dbg !1509

while.body442.i.preheader:                        ; preds = %middle.block471, %while.body442.preheader.i
  %indvars.iv1657.i.ph = phi i64 [ %373, %while.body442.preheader.i ], [ %ind.end477, %middle.block471 ]
  %384 = sub nsw i64 %wide.trip.count1660.i, %indvars.iv1657.i.ph, !dbg !1509
  %xtraiter533 = and i64 %384, 3, !dbg !1509
  %lcmp.mod534.not = icmp eq i64 %xtraiter533, 0, !dbg !1509
  br i1 %lcmp.mod534.not, label %while.body442.i.prol.loopexit, label %while.body442.i.prol, !dbg !1509

while.body442.i.prol:                             ; preds = %while.body442.i.preheader, %while.body442.i.prol
  %indvars.iv1657.i.prol = phi i64 [ %indvars.iv.next1658.i.prol, %while.body442.i.prol ], [ %indvars.iv1657.i.ph, %while.body442.i.preheader ]
  %prol.iter535 = phi i64 [ %prol.iter535.next, %while.body442.i.prol ], [ 0, %while.body442.i.preheader ]
    #dbg_value(i64 %indvars.iv1657.i.prol, !1087, !DIExpression(), !1175)
  %indvars.iv.next1658.i.prol = add nuw nsw i64 %indvars.iv1657.i.prol, 1, !dbg !1510
    #dbg_value(i64 %indvars.iv.next1658.i.prol, !1087, !DIExpression(), !1175)
  %price447.i.prol = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv.next1658.i.prol, i32 5, !dbg !1511
  store i32 1073741824, ptr %price447.i.prol, align 4, !dbg !1512
  %prol.iter535.next = add i64 %prol.iter535, 1, !dbg !1509
  %prol.iter535.cmp.not = icmp eq i64 %prol.iter535.next, %xtraiter533, !dbg !1509
  br i1 %prol.iter535.cmp.not, label %while.body442.i.prol.loopexit, label %while.body442.i.prol, !dbg !1509, !llvm.loop !1515

while.body442.i.prol.loopexit:                    ; preds = %while.body442.i.prol, %while.body442.i.preheader
  %indvars.iv1657.i.unr = phi i64 [ %indvars.iv1657.i.ph, %while.body442.i.preheader ], [ %indvars.iv.next1658.i.prol, %while.body442.i.prol ]
  %385 = sub nsw i64 %indvars.iv1657.i.ph, %wide.trip.count1660.i, !dbg !1509
  %386 = icmp ugt i64 %385, -4, !dbg !1509
  br i1 %386, label %while.end448.i, label %while.body442.i, !dbg !1509

while.body442.i:                                  ; preds = %while.body442.i.prol.loopexit, %while.body442.i
  %indvars.iv1657.i = phi i64 [ %indvars.iv.next1658.i.3, %while.body442.i ], [ %indvars.iv1657.i.unr, %while.body442.i.prol.loopexit ]
    #dbg_value(i64 %indvars.iv1657.i, !1087, !DIExpression(), !1175)
  %indvars.iv.next1658.i = add nuw nsw i64 %indvars.iv1657.i, 1, !dbg !1510
    #dbg_value(i64 %indvars.iv.next1658.i, !1087, !DIExpression(), !1175)
  %price447.i = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv.next1658.i, i32 5, !dbg !1511
  store i32 1073741824, ptr %price447.i, align 4, !dbg !1512
  %indvars.iv.next1658.i.1 = add nuw nsw i64 %indvars.iv1657.i, 2, !dbg !1510
    #dbg_value(i64 %indvars.iv.next1658.i.1, !1087, !DIExpression(), !1175)
  %price447.i.1 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv.next1658.i.1, i32 5, !dbg !1511
  store i32 1073741824, ptr %price447.i.1, align 4, !dbg !1512
  %indvars.iv.next1658.i.2 = add nuw nsw i64 %indvars.iv1657.i, 3, !dbg !1510
    #dbg_value(i64 %indvars.iv.next1658.i.2, !1087, !DIExpression(), !1175)
  %price447.i.2 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv.next1658.i.2, i32 5, !dbg !1511
  store i32 1073741824, ptr %price447.i.2, align 4, !dbg !1512
  %indvars.iv.next1658.i.3 = add nuw nsw i64 %indvars.iv1657.i, 4, !dbg !1510
    #dbg_value(i64 %indvars.iv.next1658.i.3, !1087, !DIExpression(), !1175)
  %price447.i.3 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv.next1658.i.3, i32 5, !dbg !1511
  store i32 1073741824, ptr %price447.i.3, align 4, !dbg !1512
  %exitcond1661.not.i.3 = icmp eq i64 %indvars.iv.next1658.i.3, %wide.trip.count1660.i, !dbg !1508
  br i1 %exitcond1661.not.i.3, label %while.end448.i, label %while.body442.i, !dbg !1509, !llvm.loop !1516

while.end448.i:                                   ; preds = %while.body442.i.prol.loopexit, %while.body442.i, %middle.block471, %for.end437.i
  %len_end.addr.4.lcssa.i = phi i32 [ %len_end.addr.31614.i, %for.end437.i ], [ %add439.i, %middle.block471 ], [ %add439.i, %while.body442.i ], [ %add439.i, %while.body442.i.prol.loopexit ]
    #dbg_value(i32 %len_test420.0.lcssa.i, !1139, !DIExpression(), !1492)
    #dbg_value(ptr %pcoder, !888, !DIExpression(), !1517)
    #dbg_value(i64 %indvars.iv1672.i, !893, !DIExpression(), !1517)
    #dbg_value(i32 %state.3.i, !894, !DIExpression(), !1517)
    #dbg_value(i32 %and.i187, !895, !DIExpression(), !1517)
    #dbg_value(ptr %pcoder, !896, !DIExpression(), !1517)
  %cmp.i1382.i = icmp eq i64 %indvars.iv1672.i, 0, !dbg !1519
  %387 = load i16, ptr %arrayidx.i1385.i, align 2, !dbg !1520
  %388 = lshr i16 %387, 4, !dbg !1520
  br i1 %cmp.i1382.i, label %if.then.i.i257, label %if.else.i.i, !dbg !1521

if.then.i.i257:                                   ; preds = %while.end448.i
    #dbg_value(i16 %387, !697, !DIExpression(), !1522)
  %idxprom.i.i1392.i = zext nneg i16 %388 to i64, !dbg !1524
  %arrayidx.i.i1393.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i.i1392.i, !dbg !1524
  %389 = load i8, ptr %arrayidx.i.i1393.i, align 1, !dbg !1524
  %conv1.i.i1394.i = zext i8 %389 to i32, !dbg !1524
    #dbg_value(i32 %conv1.i.i1394.i, !897, !DIExpression(), !1517)
  %390 = load i16, ptr %arrayidx4.i1397.i, align 2, !dbg !1525
    #dbg_value(i16 %390, !802, !DIExpression(), !1526)
  %391 = lshr i16 %390, 4, !dbg !1528
  %392 = xor i16 %391, 127, !dbg !1528
  %idxprom.i43.i.i258 = zext nneg i16 %392 to i64, !dbg !1529
  %arrayidx.i44.i.i259 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i43.i.i258, !dbg !1529
  %393 = load i8, ptr %arrayidx.i44.i.i259, align 1, !dbg !1529
  %conv1.i45.i.i260 = zext i8 %393 to i32, !dbg !1529
  %add.i1398.i = add nuw nsw i32 %conv1.i45.i.i260, %conv1.i.i1394.i, !dbg !1530
    #dbg_value(i32 %add.i1398.i, !897, !DIExpression(), !1517)
  br label %get_pure_rep_price.exit.i253, !dbg !1531

if.else.i.i:                                      ; preds = %while.end448.i
    #dbg_value(i16 %387, !802, !DIExpression(), !1532)
  %394 = xor i16 %388, 127, !dbg !1534
  %idxprom.i46.i.i = zext nneg i16 %394 to i64, !dbg !1535
  %arrayidx.i47.i.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i46.i.i, !dbg !1535
  %395 = load i8, ptr %arrayidx.i47.i.i, align 1, !dbg !1535
  %conv1.i48.i.i = zext i8 %395 to i32, !dbg !1535
    #dbg_value(i32 %conv1.i48.i.i, !897, !DIExpression(), !1517)
  %cmp10.i.i = icmp eq i64 %indvars.iv1672.i, 1, !dbg !1536
  %396 = load i16, ptr %arrayidx13.i.i221, align 2, !dbg !1537
  %397 = lshr i16 %396, 4, !dbg !1537
  br i1 %cmp10.i.i, label %if.then11.i.i, label %if.else16.i.i, !dbg !1538

if.then11.i.i:                                    ; preds = %if.else.i.i
    #dbg_value(i16 %396, !697, !DIExpression(), !1539)
  %idxprom.i49.i.i = zext nneg i16 %397 to i64, !dbg !1541
  %arrayidx.i50.i.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i49.i.i, !dbg !1541
  %398 = load i8, ptr %arrayidx.i50.i.i, align 1, !dbg !1541
  %conv1.i51.i.i = zext i8 %398 to i32, !dbg !1541
  %add15.i.i = add nuw nsw i32 %conv1.i51.i.i, %conv1.i48.i.i, !dbg !1542
    #dbg_value(i32 %add15.i.i, !897, !DIExpression(), !1517)
  br label %get_pure_rep_price.exit.i253, !dbg !1543

if.else16.i.i:                                    ; preds = %if.else.i.i
    #dbg_value(i16 %396, !802, !DIExpression(), !1544)
  %399 = xor i16 %397, 127, !dbg !1546
  %idxprom.i52.i.i = zext nneg i16 %399 to i64, !dbg !1547
  %arrayidx.i53.i.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i52.i.i, !dbg !1547
  %400 = load i8, ptr %arrayidx.i53.i.i, align 1, !dbg !1547
  %conv1.i54.i.i = zext i8 %400 to i32, !dbg !1547
  %add21.i.i = add nuw nsw i32 %conv1.i54.i.i, %conv1.i48.i.i, !dbg !1548
    #dbg_value(i32 %add21.i.i, !897, !DIExpression(), !1517)
  %401 = load i16, ptr %arrayidx23.i.i223, align 2, !dbg !1549
    #dbg_value(i16 %401, !408, !DIExpression(), !1550)
    #dbg_value(i64 %indvars.iv1672.i, !413, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !1550)
  %conv.i.i1386.i = zext i16 %401 to i64, !dbg !1552
  %402 = sub nsw i64 2, %indvars.iv1672.i, !dbg !1553
  %and.i.i1388.i = and i64 %402, 2032, !dbg !1553
  %xor.i.i1389.i = xor i64 %and.i.i1388.i, %conv.i.i1386.i, !dbg !1554
  %shr.i.i1390.i = lshr i64 %xor.i.i1389.i, 4, !dbg !1555
  %arrayidx.i56.i.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i1390.i, !dbg !1556
  %403 = load i8, ptr %arrayidx.i56.i.i, align 1, !dbg !1556
  %conv1.i57.i.i = zext i8 %403 to i32, !dbg !1556
  %add25.i.i = add nuw nsw i32 %add21.i.i, %conv1.i57.i.i, !dbg !1557
    #dbg_value(i32 %add25.i.i, !897, !DIExpression(), !1517)
  br label %get_pure_rep_price.exit.i253

get_pure_rep_price.exit.i253:                     ; preds = %if.else16.i.i, %if.then11.i.i, %if.then.i.i257
  %price.0.i1391.i = phi i32 [ %add.i1398.i, %if.then.i.i257 ], [ %add15.i.i, %if.then11.i.i ], [ %add25.i.i, %if.else16.i.i ], !dbg !1520
    #dbg_value(i32 %price.0.i1391.i, !897, !DIExpression(), !1517)
  %add451.i = add i32 %price.0.i1391.i, %add227.i, !dbg !1558
    #dbg_value(i32 %add451.i, !1140, !DIExpression(), !1492)
  %404 = trunc nuw nsw i64 %indvars.iv1672.i to i32
  br label %do.body.i254, !dbg !1559

do.body.i254:                                     ; preds = %if.end483.i, %get_pure_rep_price.exit.i253
  %len_test420.1.i = phi i32 [ %len_test420.0.lcssa.i, %get_pure_rep_price.exit.i253 ], [ %dec484.i, %if.end483.i ], !dbg !1492
    #dbg_value(i32 %len_test420.1.i, !1138, !DIExpression(), !1492)
    #dbg_value(ptr %pcoder, !912, !DIExpression(DW_OP_plus_uconst, 47688, DW_OP_stack_value), !1560)
    #dbg_value(i32 %len_test420.1.i, !920, !DIExpression(), !1560)
    #dbg_value(i32 %and.i187, !921, !DIExpression(), !1560)
  %sub.i1400.i = add i32 %len_test420.1.i, -2, !dbg !1562
  %idxprom1.i.i255 = zext i32 %sub.i1400.i to i64, !dbg !1563
  %arrayidx2.i.i256 = getelementptr inbounds [16 x [272 x i32]], ptr %prices.i.i, i64 0, i64 %idxprom185.i, i64 %idxprom1.i.i255, !dbg !1563
  %405 = load i32, ptr %arrayidx2.i.i256, align 4, !dbg !1563
  %add454.i = add i32 %405, %add451.i, !dbg !1564
    #dbg_value(i32 %add454.i, !1141, !DIExpression(), !1565)
  %add456.i = add i32 %len_test420.1.i, %249, !dbg !1566
  %idxprom457.i = zext i32 %add456.i to i64, !dbg !1568
  %arrayidx458.i = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %idxprom457.i, !dbg !1568
  %price459.i = getelementptr inbounds i8, ptr %arrayidx458.i, i64 16, !dbg !1569
  %406 = load i32, ptr %price459.i, align 4, !dbg !1569
  %cmp460.i = icmp ult i32 %add454.i, %406, !dbg !1570
  br i1 %cmp460.i, label %if.then462.i, label %if.end483.i, !dbg !1571

if.then462.i:                                     ; preds = %do.body.i254
  store i32 %add454.i, ptr %price459.i, align 4, !dbg !1572
  %pos_prev472.i = getelementptr inbounds i8, ptr %arrayidx458.i, i64 20, !dbg !1574
  store i32 %249, ptr %pos_prev472.i, align 4, !dbg !1575
  %back_prev477.i = getelementptr inbounds i8, ptr %arrayidx458.i, i64 24, !dbg !1576
  store i32 %404, ptr %back_prev477.i, align 4, !dbg !1577
  %prev_1_is_literal482.i = getelementptr inbounds i8, ptr %arrayidx458.i, i64 4, !dbg !1578
  store i8 0, ptr %prev_1_is_literal482.i, align 4, !dbg !1579
  br label %if.end483.i, !dbg !1580

if.end483.i:                                      ; preds = %if.then462.i, %do.body.i254
  %dec484.i = add i32 %len_test420.1.i, -1, !dbg !1581
    #dbg_value(i32 %dec484.i, !1138, !DIExpression(), !1492)
  %cmp485.i = icmp ugt i32 %dec484.i, 1, !dbg !1582
  br i1 %cmp485.i, label %do.body.i254, label %do.end.i, !dbg !1583, !llvm.loop !1584

do.end.i:                                         ; preds = %if.end483.i
    #dbg_value(i32 %len_test420.0.lcssa.i, !1138, !DIExpression(), !1492)
  %add490.i = add i32 %len_test420.0.lcssa.i, 1
  %spec.select.i = select i1 %cmp.i1382.i, i32 %add490.i, i32 %start_len.01613.i, !dbg !1586
    #dbg_value(i32 %spec.select.i, !1132, !DIExpression(), !1175)
    #dbg_value(i32 %add490.i, !1143, !DIExpression(), !1492)
  %add494.i = add i32 %add490.i, %248, !dbg !1587
  %cond501.i = call i32 @llvm.umin.i32(i32 %add494.i, i32 %spec.select), !dbg !1587
    #dbg_value(i32 %cond501.i, !1144, !DIExpression(), !1492)
  %cmp5031604.i = icmp ult i32 %add490.i, %cond501.i, !dbg !1588
  br i1 %cmp5031604.i, label %land.rhs505.preheader.i, label %for.end518.i, !dbg !1591

land.rhs505.preheader.i:                          ; preds = %do.end.i
  %407 = zext i32 %add490.i to i64, !dbg !1592
  br label %land.rhs505.i, !dbg !1592

land.rhs505.i:                                    ; preds = %for.inc516.i, %land.rhs505.preheader.i
  %indvars.iv1662.i = phi i64 [ %407, %land.rhs505.preheader.i ], [ %indvars.iv.next1663.i, %for.inc516.i ]
    #dbg_value(i64 %indvars.iv1662.i, !1143, !DIExpression(), !1492)
  %arrayidx507.i = getelementptr inbounds i8, ptr %add.ptr, i64 %indvars.iv1662.i, !dbg !1593
  %408 = load i8, ptr %arrayidx507.i, align 1, !dbg !1593
  %arrayidx510.i = getelementptr inbounds i8, ptr %add.ptr405.i, i64 %indvars.iv1662.i, !dbg !1594
  %409 = load i8, ptr %arrayidx510.i, align 1, !dbg !1594
  %cmp512.i = icmp eq i8 %408, %409, !dbg !1595
  br i1 %cmp512.i, label %for.inc516.i, label %for.end518.loopexit.split.loop.exit1718.i, !dbg !1592

for.inc516.i:                                     ; preds = %land.rhs505.i
  %indvars.iv.next1663.i = add nuw nsw i64 %indvars.iv1662.i, 1, !dbg !1596
    #dbg_value(i64 %indvars.iv.next1663.i, !1143, !DIExpression(), !1492)
  %lftr.wideiv1665.i = trunc i64 %indvars.iv.next1663.i to i32, !dbg !1588
  %exitcond1666.not.i = icmp eq i32 %cond501.i, %lftr.wideiv1665.i, !dbg !1588
  br i1 %exitcond1666.not.i, label %for.end518.i, label %land.rhs505.i, !dbg !1591, !llvm.loop !1597

for.end518.loopexit.split.loop.exit1718.i:        ; preds = %land.rhs505.i
  %410 = trunc nuw i64 %indvars.iv1662.i to i32
  br label %for.end518.i, !dbg !1599

for.end518.i:                                     ; preds = %for.inc516.i, %for.end518.loopexit.split.loop.exit1718.i, %do.end.i
  %len_test_2.0.lcssa.i = phi i32 [ %add490.i, %do.end.i ], [ %410, %for.end518.loopexit.split.loop.exit1718.i ], [ %cond501.i, %for.inc516.i ], !dbg !1492
  %sub520.i = sub i32 %len_test_2.0.lcssa.i, %add490.i, !dbg !1599
    #dbg_value(i32 %sub520.i, !1143, !DIExpression(), !1492)
  %cmp521.i = icmp ugt i32 %sub520.i, 1, !dbg !1600
  br i1 %cmp521.i, label %if.then523.i, label %cleanup.i225, !dbg !1601

if.then523.i:                                     ; preds = %for.end518.i
    #dbg_value(i32 poison, !1145, !DIExpression(), !1602)
  %add529.i = add i32 %len_test420.0.lcssa.i, %add, !dbg !1603
  %and531.i = and i32 %add529.i, %300, !dbg !1604
    #dbg_value(i32 %and531.i, !1148, !DIExpression(), !1602)
    #dbg_value(ptr %pcoder, !912, !DIExpression(DW_OP_plus_uconst, 47688, DW_OP_stack_value), !1605)
    #dbg_value(i32 %len_test420.0.lcssa.i, !920, !DIExpression(), !1605)
    #dbg_value(i32 %and.i187, !921, !DIExpression(), !1605)
  %sub.i1403.i = add i32 %len_test420.0.lcssa.i, -2, !dbg !1607
  %idxprom1.i1404.i = zext i32 %sub.i1403.i to i64, !dbg !1608
  %arrayidx2.i1405.i = getelementptr inbounds [16 x [272 x i32]], ptr %prices.i.i, i64 0, i64 %idxprom185.i, i64 %idxprom1.i1404.i, !dbg !1608
  %411 = load i32, ptr %arrayidx2.i1405.i, align 4, !dbg !1608
  %idxprom538.i = zext i32 %and531.i to i64, !dbg !1609
  %arrayidx539.i = getelementptr inbounds [12 x [16 x i16]], ptr %is_match.i, i64 0, i64 %cond527.i, i64 %idxprom538.i, !dbg !1609
  %412 = load i16, ptr %arrayidx539.i, align 2, !dbg !1609
    #dbg_value(i16 %412, !697, !DIExpression(), !1610)
  %413 = lshr i16 %412, 4, !dbg !1612
  %idxprom.i1406.i = zext nneg i16 %413 to i64, !dbg !1613
  %arrayidx.i1407.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i1406.i, !dbg !1613
  %414 = load i8, ptr %arrayidx.i1407.i, align 1, !dbg !1613
  %sub543.i = add i32 %len_test420.0.lcssa.i, -1, !dbg !1614
  %idxprom544.i = zext i32 %sub543.i to i64, !dbg !1615
  %arrayidx545.i = getelementptr inbounds i8, ptr %add.ptr, i64 %idxprom544.i, !dbg !1615
  %415 = load i8, ptr %arrayidx545.i, align 1, !dbg !1615
  %conv546.i = zext i8 %415 to i32, !dbg !1615
  %idxprom547.i = zext i32 %len_test420.0.lcssa.i to i64, !dbg !1616
  %arrayidx548.i = getelementptr inbounds i8, ptr %add.ptr405.i, i64 %idxprom547.i, !dbg !1616
  %416 = load i8, ptr %arrayidx548.i, align 1, !dbg !1616
  %conv549.i = zext i8 %416 to i32, !dbg !1616
  %arrayidx551.i = getelementptr inbounds i8, ptr %add.ptr, i64 %idxprom547.i, !dbg !1617
  %417 = load i8, ptr %arrayidx551.i, align 1, !dbg !1617
  %conv552.i = zext i8 %417 to i32, !dbg !1617
    #dbg_value(ptr %pcoder, !709, !DIExpression(), !1618)
    #dbg_value(i32 %add529.i, !718, !DIExpression(), !1618)
    #dbg_value(i32 %conv546.i, !719, !DIExpression(), !1618)
    #dbg_value(i1 true, !720, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !1618)
    #dbg_value(i32 %conv549.i, !721, !DIExpression(), !1618)
    #dbg_value(i32 %conv552.i, !722, !DIExpression(), !1618)
    #dbg_value(ptr %pcoder, !723, !DIExpression(), !1618)
  %and.i1411.i = and i32 %add529.i, %305, !dbg !1620
  %shl.i1413.i = shl i32 %and.i1411.i, %306, !dbg !1620
  %shr.i1415.i = lshr i32 %conv546.i, %sub.i.i198, !dbg !1620
  %add.i1416.i = add i32 %shr.i1415.i, %shl.i1413.i, !dbg !1620
  %idxprom.i1417.i = zext i32 %add.i1416.i to i64, !dbg !1620
  %arrayidx.i1418.i = getelementptr inbounds [16 x [768 x i16]], ptr %literal.i.i, i64 0, i64 %idxprom.i1417.i, !dbg !1620
    #dbg_value(ptr %arrayidx.i1418.i, !727, !DIExpression(), !1618)
    #dbg_value(i32 0, !728, !DIExpression(), !1618)
  %add2.i1419.i = or disjoint i32 %conv552.i, 256, !dbg !1621
  br label %do.body.i1420.i

do.body.i1420.i:                                  ; preds = %do.body.i1420.i, %if.then523.i
  %offset.0.i1421.i = phi i32 [ %and15.i1443.i, %do.body.i1420.i ], [ 256, %if.then523.i ], !dbg !1622
  %price.0.i1422.i = phi i32 [ %add13.i1440.i, %do.body.i1420.i ], [ 0, %if.then523.i ], !dbg !1618
  %symbol.addr.0.i1423.i = phi i32 [ %shl14.i1441.i, %do.body.i1420.i ], [ %add2.i1419.i, %if.then523.i ], !dbg !1622
  %match_byte.addr.0.i1424.i = phi i32 [ %shl3.i1425.i, %do.body.i1420.i ], [ %conv549.i, %if.then523.i ]
    #dbg_value(i32 %match_byte.addr.0.i1424.i, !721, !DIExpression(), !1618)
    #dbg_value(i32 %symbol.addr.0.i1423.i, !722, !DIExpression(), !1618)
    #dbg_value(i32 %price.0.i1422.i, !728, !DIExpression(), !1618)
    #dbg_value(i32 %offset.0.i1421.i, !729, !DIExpression(), !1622)
  %shl3.i1425.i = shl i32 %match_byte.addr.0.i1424.i, 1, !dbg !1623
    #dbg_value(i32 %shl3.i1425.i, !721, !DIExpression(), !1618)
  %and4.i1426.i = and i32 %shl3.i1425.i, %offset.0.i1421.i, !dbg !1624
    #dbg_value(i32 %and4.i1426.i, !732, !DIExpression(), !1625)
  %shr6.i1427.i = lshr i32 %symbol.addr.0.i1423.i, 8, !dbg !1626
  %add5.i1428.i = add nuw nsw i32 %shr6.i1427.i, %offset.0.i1421.i, !dbg !1627
  %add7.i1429.i = add nuw nsw i32 %add5.i1428.i, %and4.i1426.i, !dbg !1628
    #dbg_value(i32 %add7.i1429.i, !734, !DIExpression(), !1625)
    #dbg_value(i32 %symbol.addr.0.i1423.i, !735, !DIExpression(DW_OP_constu, 7, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value), !1625)
  %idxprom10.i1430.i = zext nneg i32 %add7.i1429.i to i64, !dbg !1629
  %arrayidx11.i1431.i = getelementptr inbounds i16, ptr %arrayidx.i1418.i, i64 %idxprom10.i1430.i, !dbg !1629
  %418 = load i16, ptr %arrayidx11.i1431.i, align 2, !dbg !1629
    #dbg_value(i16 %418, !408, !DIExpression(), !1630)
    #dbg_value(i32 %symbol.addr.0.i1423.i, !413, !DIExpression(DW_OP_constu, 7, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value), !1630)
  %conv.i.i1432.i = zext i16 %418 to i64, !dbg !1632
  %.mask.i1433.i = and i32 %symbol.addr.0.i1423.i, 128, !dbg !1633
  %isneg.not.i1434.i = icmp eq i32 %.mask.i1433.i, 0, !dbg !1633
  %and.i31.i1435.i = select i1 %isneg.not.i1434.i, i64 0, i64 2032, !dbg !1633
  %xor.i.i1436.i = xor i64 %and.i31.i1435.i, %conv.i.i1432.i, !dbg !1634
  %shr.i32.i1437.i = lshr i64 %xor.i.i1436.i, 4, !dbg !1635
  %arrayidx.i34.i1438.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i32.i1437.i, !dbg !1636
  %419 = load i8, ptr %arrayidx.i34.i1438.i, align 1, !dbg !1636
  %conv1.i.i1439.i = zext i8 %419 to i32, !dbg !1636
  %add13.i1440.i = add i32 %price.0.i1422.i, %conv1.i.i1439.i, !dbg !1637
    #dbg_value(i32 %add13.i1440.i, !728, !DIExpression(), !1618)
  %shl14.i1441.i = shl nuw nsw i32 %symbol.addr.0.i1423.i, 1, !dbg !1638
    #dbg_value(i32 %shl14.i1441.i, !722, !DIExpression(), !1618)
  %420 = xor i32 %shl14.i1441.i, %shl3.i1425.i, !dbg !1639
  %not.i1442.i = xor i32 %420, -1, !dbg !1639
  %and15.i1443.i = and i32 %offset.0.i1421.i, %not.i1442.i, !dbg !1640
    #dbg_value(i32 %and15.i1443.i, !729, !DIExpression(), !1622)
  %cmp.i1444.i = icmp ult i32 %symbol.addr.0.i1423.i, 32768, !dbg !1641
  br i1 %cmp.i1444.i, label %do.body.i1420.i, label %get_literal_price.exit1446.i, !dbg !1642, !llvm.loop !1643

get_literal_price.exit1446.i:                     ; preds = %do.body.i1420.i
  %conv1.i1408.i = zext i8 %414 to i32, !dbg !1613
    #dbg_value(i32 %add13.i1440.i, !728, !DIExpression(), !1618)
    #dbg_value(i32 poison, !1149, !DIExpression(), !1602)
    #dbg_value(i32 5, !1145, !DIExpression(), !1602)
  %add570.i = add i32 %add529.i, 1, !dbg !1646
  %and572.i = and i32 %add570.i, %300, !dbg !1647
    #dbg_value(i32 %and572.i, !1148, !DIExpression(), !1602)
  %idxprom577.i = zext i32 %and572.i to i64, !dbg !1648
  %arrayidx578.i = getelementptr inbounds [16 x i16], ptr %arrayidx576.i, i64 0, i64 %idxprom577.i, !dbg !1648
  %421 = load i16, ptr %arrayidx578.i, align 2, !dbg !1648
    #dbg_value(i16 %421, !802, !DIExpression(), !1649)
  %422 = lshr i16 %421, 4, !dbg !1651
  %423 = xor i16 %422, 127, !dbg !1651
  %idxprom.i1447.i = zext nneg i16 %423 to i64, !dbg !1652
  %arrayidx.i1448.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i1447.i, !dbg !1652
  %424 = load i8, ptr %arrayidx.i1448.i, align 1, !dbg !1652
  %conv1.i1449.i = zext i8 %424 to i32, !dbg !1652
  %425 = load i16, ptr %arrayidx583.i, align 2, !dbg !1653
    #dbg_value(i16 %425, !802, !DIExpression(), !1654)
  %426 = lshr i16 %425, 4, !dbg !1656
  %427 = xor i16 %426, 127, !dbg !1656
  %idxprom.i1450.i = zext nneg i16 %427 to i64, !dbg !1657
  %arrayidx.i1451.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i1450.i, !dbg !1657
  %428 = load i8, ptr %arrayidx.i1451.i, align 1, !dbg !1657
  %conv1.i1452.i = zext i8 %428 to i32, !dbg !1657
    #dbg_value(i32 poison, !1150, !DIExpression(), !1602)
  %add588.i = add i32 %add439.i, 1, !dbg !1658
  %add589.i = add i32 %sub520.i, %add588.i, !dbg !1659
    #dbg_value(i32 %add589.i, !1151, !DIExpression(), !1602)
    #dbg_value(i32 %len_end.addr.4.lcssa.i, !1087, !DIExpression(), !1175)
  %cmp5911608.i = icmp ult i32 %len_end.addr.4.lcssa.i, %add589.i, !dbg !1660
  br i1 %cmp5911608.i, label %while.body593.preheader.i, label %get_literal_price.exit1446.while.end599_crit_edge.i, !dbg !1661

get_literal_price.exit1446.while.end599_crit_edge.i: ; preds = %get_literal_price.exit1446.i
  %.pre1694.i = zext i32 %add589.i to i64, !dbg !1662
  br label %while.end599.i, !dbg !1661

while.body593.preheader.i:                        ; preds = %get_literal_price.exit1446.i
  %429 = zext i32 %len_end.addr.4.lcssa.i to i64, !dbg !1661
  %wide.trip.count1670.i = zext i32 %add589.i to i64, !dbg !1660
  %430 = sub nsw i64 %wide.trip.count1670.i, %429, !dbg !1661
  %min.iters.check460 = icmp ult i64 %430, 4, !dbg !1661
  br i1 %min.iters.check460, label %while.body593.i.preheader, label %vector.ph461, !dbg !1661

vector.ph461:                                     ; preds = %while.body593.preheader.i
  %n.vec463 = and i64 %430, -4, !dbg !1661
  %ind.end464 = add nsw i64 %n.vec463, %429, !dbg !1661
  br label %vector.body466, !dbg !1661

vector.body466:                                   ; preds = %vector.body466, %vector.ph461
  %index467 = phi i64 [ 0, %vector.ph461 ], [ %index.next469, %vector.body466 ]
  %offset.idx468 = add i64 %index467, %429, !dbg !1661
  %431 = add nuw nsw i64 %offset.idx468, 1, !dbg !1664
  %432 = add i64 %offset.idx468, 2, !dbg !1664
  %433 = add i64 %offset.idx468, 3, !dbg !1664
  %434 = add i64 %offset.idx468, 4, !dbg !1664
  %435 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %431, i32 5, !dbg !1665
  %436 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %432, i32 5, !dbg !1665
  %437 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %433, i32 5, !dbg !1665
  %438 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %434, i32 5, !dbg !1665
  store i32 1073741824, ptr %435, align 4, !dbg !1666
  store i32 1073741824, ptr %436, align 4, !dbg !1666
  store i32 1073741824, ptr %437, align 4, !dbg !1666
  store i32 1073741824, ptr %438, align 4, !dbg !1666
  %index.next469 = add nuw i64 %index467, 4
  %439 = icmp eq i64 %index.next469, %n.vec463
  br i1 %439, label %middle.block458, label %vector.body466, !llvm.loop !1667

middle.block458:                                  ; preds = %vector.body466
  %cmp.n470 = icmp eq i64 %430, %n.vec463, !dbg !1661
  br i1 %cmp.n470, label %while.end599.i, label %while.body593.i.preheader, !dbg !1661

while.body593.i.preheader:                        ; preds = %middle.block458, %while.body593.preheader.i
  %indvars.iv1667.i.ph = phi i64 [ %429, %while.body593.preheader.i ], [ %ind.end464, %middle.block458 ]
  %440 = sub nsw i64 %wide.trip.count1670.i, %indvars.iv1667.i.ph, !dbg !1661
  %xtraiter536 = and i64 %440, 3, !dbg !1661
  %lcmp.mod537.not = icmp eq i64 %xtraiter536, 0, !dbg !1661
  br i1 %lcmp.mod537.not, label %while.body593.i.prol.loopexit, label %while.body593.i.prol, !dbg !1661

while.body593.i.prol:                             ; preds = %while.body593.i.preheader, %while.body593.i.prol
  %indvars.iv1667.i.prol = phi i64 [ %indvars.iv.next1668.i.prol, %while.body593.i.prol ], [ %indvars.iv1667.i.ph, %while.body593.i.preheader ]
  %prol.iter538 = phi i64 [ %prol.iter538.next, %while.body593.i.prol ], [ 0, %while.body593.i.preheader ]
    #dbg_value(i64 %indvars.iv1667.i.prol, !1087, !DIExpression(), !1175)
  %indvars.iv.next1668.i.prol = add nuw nsw i64 %indvars.iv1667.i.prol, 1, !dbg !1664
    #dbg_value(i64 %indvars.iv.next1668.i.prol, !1087, !DIExpression(), !1175)
  %price598.i.prol = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv.next1668.i.prol, i32 5, !dbg !1665
  store i32 1073741824, ptr %price598.i.prol, align 4, !dbg !1666
  %prol.iter538.next = add i64 %prol.iter538, 1, !dbg !1661
  %prol.iter538.cmp.not = icmp eq i64 %prol.iter538.next, %xtraiter536, !dbg !1661
  br i1 %prol.iter538.cmp.not, label %while.body593.i.prol.loopexit, label %while.body593.i.prol, !dbg !1661, !llvm.loop !1669

while.body593.i.prol.loopexit:                    ; preds = %while.body593.i.prol, %while.body593.i.preheader
  %indvars.iv1667.i.unr = phi i64 [ %indvars.iv1667.i.ph, %while.body593.i.preheader ], [ %indvars.iv.next1668.i.prol, %while.body593.i.prol ]
  %441 = sub nsw i64 %indvars.iv1667.i.ph, %wide.trip.count1670.i, !dbg !1661
  %442 = icmp ugt i64 %441, -4, !dbg !1661
  br i1 %442, label %while.end599.i, label %while.body593.i, !dbg !1661

while.body593.i:                                  ; preds = %while.body593.i.prol.loopexit, %while.body593.i
  %indvars.iv1667.i = phi i64 [ %indvars.iv.next1668.i.3, %while.body593.i ], [ %indvars.iv1667.i.unr, %while.body593.i.prol.loopexit ]
    #dbg_value(i64 %indvars.iv1667.i, !1087, !DIExpression(), !1175)
  %indvars.iv.next1668.i = add nuw nsw i64 %indvars.iv1667.i, 1, !dbg !1664
    #dbg_value(i64 %indvars.iv.next1668.i, !1087, !DIExpression(), !1175)
  %price598.i = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv.next1668.i, i32 5, !dbg !1665
  store i32 1073741824, ptr %price598.i, align 4, !dbg !1666
  %indvars.iv.next1668.i.1 = add nuw nsw i64 %indvars.iv1667.i, 2, !dbg !1664
    #dbg_value(i64 %indvars.iv.next1668.i.1, !1087, !DIExpression(), !1175)
  %price598.i.1 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv.next1668.i.1, i32 5, !dbg !1665
  store i32 1073741824, ptr %price598.i.1, align 4, !dbg !1666
  %indvars.iv.next1668.i.2 = add nuw nsw i64 %indvars.iv1667.i, 3, !dbg !1664
    #dbg_value(i64 %indvars.iv.next1668.i.2, !1087, !DIExpression(), !1175)
  %price598.i.2 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv.next1668.i.2, i32 5, !dbg !1665
  store i32 1073741824, ptr %price598.i.2, align 4, !dbg !1666
  %indvars.iv.next1668.i.3 = add nuw nsw i64 %indvars.iv1667.i, 4, !dbg !1664
    #dbg_value(i64 %indvars.iv.next1668.i.3, !1087, !DIExpression(), !1175)
  %price598.i.3 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv.next1668.i.3, i32 5, !dbg !1665
  store i32 1073741824, ptr %price598.i.3, align 4, !dbg !1666
  %exitcond1671.not.i.3 = icmp eq i64 %indvars.iv.next1668.i.3, %wide.trip.count1670.i, !dbg !1660
  br i1 %exitcond1671.not.i.3, label %while.end599.i, label %while.body593.i, !dbg !1661, !llvm.loop !1670

while.end599.i:                                   ; preds = %while.body593.i.prol.loopexit, %while.body593.i, %middle.block458, %get_literal_price.exit1446.while.end599_crit_edge.i
  %idxprom604.pre-phi.i = phi i64 [ %.pre1694.i, %get_literal_price.exit1446.while.end599_crit_edge.i ], [ %wide.trip.count1670.i, %middle.block458 ], [ %wide.trip.count1670.i, %while.body593.i ], [ %wide.trip.count1670.i, %while.body593.i.prol.loopexit ], !dbg !1662
  %len_end.addr.5.lcssa.i = phi i32 [ %len_end.addr.4.lcssa.i, %get_literal_price.exit1446.while.end599_crit_edge.i ], [ %add589.i, %middle.block458 ], [ %add589.i, %while.body593.i ], [ %add589.i, %while.body593.i.prol.loopexit ]
    #dbg_value(ptr %pcoder, !1439, !DIExpression(), !1671)
    #dbg_value(i32 0, !1444, !DIExpression(), !1671)
    #dbg_value(i32 %sub520.i, !1445, !DIExpression(), !1671)
    #dbg_value(i32 5, !1446, !DIExpression(), !1671)
    #dbg_value(i32 %and572.i, !1447, !DIExpression(), !1671)
    #dbg_value(ptr %pcoder, !1448, !DIExpression(), !1671)
    #dbg_value(ptr %pcoder, !912, !DIExpression(DW_OP_plus_uconst, 47688, DW_OP_stack_value), !1673)
    #dbg_value(i32 %sub520.i, !920, !DIExpression(), !1673)
    #dbg_value(i32 %and572.i, !921, !DIExpression(), !1673)
  %sub.i.i1455.i = add i32 %sub520.i, -2, !dbg !1675
  %idxprom1.i.i1456.i = zext i32 %sub.i.i1455.i to i64, !dbg !1676
  %arrayidx2.i.i1457.i = getelementptr inbounds [16 x [272 x i32]], ptr %prices.i.i, i64 0, i64 %idxprom577.i, i64 %idxprom1.i.i1456.i, !dbg !1676
  %443 = load i32, ptr %arrayidx2.i.i1457.i, align 4, !dbg !1676
    #dbg_value(ptr %pcoder, !888, !DIExpression(), !1677)
    #dbg_value(i32 0, !893, !DIExpression(), !1677)
    #dbg_value(i32 5, !894, !DIExpression(), !1677)
    #dbg_value(i32 %and572.i, !895, !DIExpression(), !1677)
    #dbg_value(ptr %pcoder, !896, !DIExpression(), !1677)
  %444 = load i16, ptr %arrayidx.i.i1459.i, align 2, !dbg !1679
  %445 = lshr i16 %444, 4, !dbg !1679
    #dbg_value(i16 %444, !697, !DIExpression(), !1680)
  %idxprom.i.i.i1460.i = zext nneg i16 %445 to i64, !dbg !1682
  %arrayidx.i.i.i1461.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i.i.i1460.i, !dbg !1682
  %446 = load i8, ptr %arrayidx.i.i.i1461.i, align 1, !dbg !1682
  %conv1.i.i.i1462.i = zext i8 %446 to i32, !dbg !1682
    #dbg_value(i32 %conv1.i.i.i1462.i, !897, !DIExpression(), !1677)
  %arrayidx4.i.i1464.i = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long.i.i267, i64 0, i64 5, i64 %idxprom577.i, !dbg !1683
  %447 = load i16, ptr %arrayidx4.i.i1464.i, align 2, !dbg !1683
    #dbg_value(i16 %447, !802, !DIExpression(), !1684)
  %448 = lshr i16 %447, 4, !dbg !1686
  %449 = xor i16 %448, 127, !dbg !1686
  %idxprom.i43.i.i1465.i = zext nneg i16 %449 to i64, !dbg !1687
  %arrayidx.i44.i.i1466.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i43.i.i1465.i, !dbg !1687
  %450 = load i8, ptr %arrayidx.i44.i.i1466.i, align 1, !dbg !1687
  %conv1.i45.i.i1467.i = zext i8 %450 to i32, !dbg !1687
    #dbg_value(i32 poison, !897, !DIExpression(), !1677)
  %add.i.i1468.i = add i32 %411, %add451.i, !dbg !1688
  %add.i1469.i = add i32 %add.i.i1468.i, %conv1.i1408.i, !dbg !1689
  %add534.i = add i32 %add.i1469.i, %add13.i1440.i, !dbg !1690
  %add541.i = add i32 %add534.i, %conv1.i1449.i, !dbg !1691
  %add554.i = add i32 %add541.i, %conv1.i1452.i, !dbg !1692
  %add580.i = add i32 %add554.i, %443, !dbg !1693
  %add585.i = add i32 %add580.i, %conv1.i.i.i1462.i, !dbg !1694
  %add602.i = add i32 %add585.i, %conv1.i45.i.i1467.i, !dbg !1695
    #dbg_value(i32 %add602.i, !1152, !DIExpression(), !1602)
  %arrayidx605.i = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %idxprom604.pre-phi.i, !dbg !1662
  %price606.i = getelementptr inbounds i8, ptr %arrayidx605.i, i64 16, !dbg !1696
  %451 = load i32, ptr %price606.i, align 4, !dbg !1696
  %cmp607.i = icmp ult i32 %add602.i, %451, !dbg !1697
  br i1 %cmp607.i, label %if.then609.i, label %cleanup.i225, !dbg !1698

if.then609.i:                                     ; preds = %while.end599.i
  store i32 %add602.i, ptr %price606.i, align 4, !dbg !1699
  %pos_prev619.i = getelementptr inbounds i8, ptr %arrayidx605.i, i64 20, !dbg !1701
  store i32 %add588.i, ptr %pos_prev619.i, align 4, !dbg !1702
  %back_prev623.i = getelementptr inbounds i8, ptr %arrayidx605.i, i64 24, !dbg !1703
  store i32 0, ptr %back_prev623.i, align 4, !dbg !1704
  %prev_1_is_literal627.i = getelementptr inbounds i8, ptr %arrayidx605.i, i64 4, !dbg !1705
  store i8 1, ptr %prev_1_is_literal627.i, align 4, !dbg !1706
  %prev_2631.i = getelementptr inbounds i8, ptr %arrayidx605.i, i64 5, !dbg !1707
  store i8 1, ptr %prev_2631.i, align 1, !dbg !1708
  %pos_prev_2635.i = getelementptr inbounds i8, ptr %arrayidx605.i, i64 8, !dbg !1709
  store i32 %249, ptr %pos_prev_2635.i, align 4, !dbg !1710
  %back_prev_2639.i = getelementptr inbounds i8, ptr %arrayidx605.i, i64 12, !dbg !1711
  store i32 %404, ptr %back_prev_2639.i, align 4, !dbg !1712
  br label %cleanup.i225, !dbg !1713

cleanup.i225:                                     ; preds = %if.then609.i, %while.end599.i, %for.end518.i, %lor.lhs.false.i252, %for.body398.i
  %start_len.2.i = phi i32 [ %start_len.01613.i, %lor.lhs.false.i252 ], [ %start_len.01613.i, %for.body398.i ], [ %spec.select.i, %while.end599.i ], [ %spec.select.i, %if.then609.i ], [ %spec.select.i, %for.end518.i ], !dbg !1175
  %len_end.addr.7.i = phi i32 [ %len_end.addr.31614.i, %lor.lhs.false.i252 ], [ %len_end.addr.31614.i, %for.body398.i ], [ %len_end.addr.5.lcssa.i, %while.end599.i ], [ %len_end.addr.5.lcssa.i, %if.then609.i ], [ %len_end.addr.4.lcssa.i, %for.end518.i ]
    #dbg_value(i32 %len_end.addr.7.i, !1087, !DIExpression(), !1175)
    #dbg_value(i32 %start_len.2.i, !1132, !DIExpression(), !1175)
  %indvars.iv.next1673.i = add nuw nsw i64 %indvars.iv1672.i, 1, !dbg !1714
    #dbg_value(i64 %indvars.iv.next1673.i, !1133, !DIExpression(), !1484)
  %exitcond1676.not.i = icmp eq i64 %indvars.iv.next1673.i, 4, !dbg !1715
  br i1 %exitcond1676.not.i, label %for.cond.cleanup397.i, label %for.body398.i, !dbg !1485, !llvm.loop !1716

while.cond649.i:                                  ; preds = %for.cond.cleanup397.i, %while.cond649.i
  %matches_count.0.i = phi i32 [ %inc655.i, %while.cond649.i ], [ 0, %for.cond.cleanup397.i ], !dbg !1718
    #dbg_value(i32 %matches_count.0.i, !1093, !DIExpression(), !1175)
  %idxprom650.i = zext i32 %matches_count.0.i to i64, !dbg !1720
  %arrayidx651.i = getelementptr inbounds [274 x %struct.lzma_match], ptr %matches, i64 0, i64 %idxprom650.i, !dbg !1720
  %452 = load i32, ptr %arrayidx651.i, align 4, !dbg !1721
  %cmp652.i = icmp ugt i32 %cond284.i, %452, !dbg !1722
  %inc655.i = add i32 %matches_count.0.i, 1, !dbg !1723
    #dbg_value(i32 %inc655.i, !1093, !DIExpression(), !1175)
  br i1 %cmp652.i, label %while.cond649.i, label %while.end656.i, !dbg !1724, !llvm.loop !1725

while.end656.i:                                   ; preds = %while.cond649.i
  %arrayidx651.i.le = getelementptr inbounds [274 x %struct.lzma_match], ptr %matches, i64 0, i64 %idxprom650.i
    #dbg_value(i32 %inc655.i, !1093, !DIExpression(), !1175)
  store i32 %cond284.i, ptr %arrayidx651.i.le, align 4, !dbg !1727
  br label %if.end662.i, !dbg !1728

if.end662.i:                                      ; preds = %while.end656.i, %for.cond.cleanup397.i
  %new_len.0.i = phi i32 [ %cond284.i, %while.end656.i ], [ %call29, %for.cond.cleanup397.i ], !dbg !1175
  %matches_count.1.i = phi i32 [ %inc655.i, %while.end656.i ], [ %250, %for.cond.cleanup397.i ], !dbg !1175
    #dbg_value(i32 %matches_count.1.i, !1093, !DIExpression(), !1175)
    #dbg_value(i32 %new_len.0.i, !1094, !DIExpression(), !1175)
  %cmp663.not.i = icmp ult i32 %new_len.0.i, %start_len.2.i, !dbg !1729
  br i1 %cmp663.not.i, label %helper2.exit, label %if.then665.i, !dbg !1730

if.then665.i:                                     ; preds = %if.end662.i
  %453 = load i16, ptr %arrayidx225.i, align 2, !dbg !1731
    #dbg_value(i16 %453, !697, !DIExpression(), !1732)
  %454 = lshr i16 %453, 4, !dbg !1734
  %idxprom.i1470.i = zext nneg i16 %454 to i64, !dbg !1735
  %arrayidx.i1471.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i1470.i, !dbg !1735
  %455 = load i8, ptr %arrayidx.i1471.i, align 1, !dbg !1735
  %conv1.i1472.i = zext i8 %455 to i32, !dbg !1735
    #dbg_value(i32 poison, !1153, !DIExpression(), !1736)
  %add672.i = add i32 %new_len.0.i, %249
    #dbg_value(i32 %len_end.addr.7.i, !1087, !DIExpression(), !1175)
  %cmp6731615.i = icmp ult i32 %len_end.addr.7.i, %add672.i, !dbg !1737
  br i1 %cmp6731615.i, label %while.body675.preheader.i, label %while.cond683.preheader.i, !dbg !1738

while.body675.preheader.i:                        ; preds = %if.then665.i
  %456 = zext i32 %len_end.addr.7.i to i64, !dbg !1738
  %wide.trip.count1680.i = zext i32 %add672.i to i64, !dbg !1737
  %457 = sub nsw i64 %wide.trip.count1680.i, %456, !dbg !1738
  %min.iters.check447 = icmp ult i64 %457, 4, !dbg !1738
  br i1 %min.iters.check447, label %while.body675.i.preheader, label %vector.ph448, !dbg !1738

while.body675.i.preheader:                        ; preds = %middle.block445, %while.body675.preheader.i
  %indvars.iv1677.i.ph = phi i64 [ %456, %while.body675.preheader.i ], [ %ind.end451, %middle.block445 ]
  %458 = sub nsw i64 %wide.trip.count1680.i, %indvars.iv1677.i.ph, !dbg !1738
  %xtraiter539 = and i64 %458, 3, !dbg !1738
  %lcmp.mod540.not = icmp eq i64 %xtraiter539, 0, !dbg !1738
  br i1 %lcmp.mod540.not, label %while.body675.i.prol.loopexit, label %while.body675.i.prol, !dbg !1738

while.body675.i.prol:                             ; preds = %while.body675.i.preheader, %while.body675.i.prol
  %indvars.iv1677.i.prol = phi i64 [ %indvars.iv.next1678.i.prol, %while.body675.i.prol ], [ %indvars.iv1677.i.ph, %while.body675.i.preheader ]
  %prol.iter541 = phi i64 [ %prol.iter541.next, %while.body675.i.prol ], [ 0, %while.body675.i.preheader ]
    #dbg_value(i64 %indvars.iv1677.i.prol, !1087, !DIExpression(), !1175)
  %indvars.iv.next1678.i.prol = add nuw nsw i64 %indvars.iv1677.i.prol, 1, !dbg !1739
    #dbg_value(i64 %indvars.iv.next1678.i.prol, !1087, !DIExpression(), !1175)
  %price680.i.prol = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv.next1678.i.prol, i32 5, !dbg !1740
  store i32 1073741824, ptr %price680.i.prol, align 4, !dbg !1741
  %prol.iter541.next = add i64 %prol.iter541, 1, !dbg !1738
  %prol.iter541.cmp.not = icmp eq i64 %prol.iter541.next, %xtraiter539, !dbg !1738
  br i1 %prol.iter541.cmp.not, label %while.body675.i.prol.loopexit, label %while.body675.i.prol, !dbg !1738, !llvm.loop !1742

while.body675.i.prol.loopexit:                    ; preds = %while.body675.i.prol, %while.body675.i.preheader
  %indvars.iv1677.i.unr = phi i64 [ %indvars.iv1677.i.ph, %while.body675.i.preheader ], [ %indvars.iv.next1678.i.prol, %while.body675.i.prol ]
  %459 = sub nsw i64 %indvars.iv1677.i.ph, %wide.trip.count1680.i, !dbg !1738
  %460 = icmp ugt i64 %459, -4, !dbg !1738
  br i1 %460, label %while.cond683.preheader.i, label %while.body675.i, !dbg !1738

vector.ph448:                                     ; preds = %while.body675.preheader.i
  %n.vec450 = and i64 %457, -4, !dbg !1738
  %ind.end451 = add nsw i64 %n.vec450, %456, !dbg !1738
  br label %vector.body453, !dbg !1738

vector.body453:                                   ; preds = %vector.body453, %vector.ph448
  %index454 = phi i64 [ 0, %vector.ph448 ], [ %index.next456, %vector.body453 ]
  %offset.idx455 = add i64 %index454, %456, !dbg !1738
  %461 = add nuw nsw i64 %offset.idx455, 1, !dbg !1739
  %462 = add i64 %offset.idx455, 2, !dbg !1739
  %463 = add i64 %offset.idx455, 3, !dbg !1739
  %464 = add i64 %offset.idx455, 4, !dbg !1739
  %465 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %461, i32 5, !dbg !1740
  %466 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %462, i32 5, !dbg !1740
  %467 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %463, i32 5, !dbg !1740
  %468 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %464, i32 5, !dbg !1740
  store i32 1073741824, ptr %465, align 4, !dbg !1741
  store i32 1073741824, ptr %466, align 4, !dbg !1741
  store i32 1073741824, ptr %467, align 4, !dbg !1741
  store i32 1073741824, ptr %468, align 4, !dbg !1741
  %index.next456 = add nuw i64 %index454, 4
  %469 = icmp eq i64 %index.next456, %n.vec450
  br i1 %469, label %middle.block445, label %vector.body453, !llvm.loop !1743

middle.block445:                                  ; preds = %vector.body453
  %cmp.n457 = icmp eq i64 %457, %n.vec450, !dbg !1738
  br i1 %cmp.n457, label %while.cond683.preheader.i, label %while.body675.i.preheader, !dbg !1738

while.cond683.preheader.i:                        ; preds = %while.body675.i.prol.loopexit, %while.body675.i, %middle.block445, %if.then665.i
  %len_end.addr.8.lcssa.i = phi i32 [ %len_end.addr.7.i, %if.then665.i ], [ %add672.i, %middle.block445 ], [ %add672.i, %while.body675.i ], [ %add672.i, %while.body675.i.prol.loopexit ]
  br label %while.cond683.i, !dbg !1745

while.body675.i:                                  ; preds = %while.body675.i.prol.loopexit, %while.body675.i
  %indvars.iv1677.i = phi i64 [ %indvars.iv.next1678.i.3, %while.body675.i ], [ %indvars.iv1677.i.unr, %while.body675.i.prol.loopexit ]
    #dbg_value(i64 %indvars.iv1677.i, !1087, !DIExpression(), !1175)
  %indvars.iv.next1678.i = add nuw nsw i64 %indvars.iv1677.i, 1, !dbg !1739
    #dbg_value(i64 %indvars.iv.next1678.i, !1087, !DIExpression(), !1175)
  %price680.i = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv.next1678.i, i32 5, !dbg !1740
  store i32 1073741824, ptr %price680.i, align 4, !dbg !1741
  %indvars.iv.next1678.i.1 = add nuw nsw i64 %indvars.iv1677.i, 2, !dbg !1739
    #dbg_value(i64 %indvars.iv.next1678.i.1, !1087, !DIExpression(), !1175)
  %price680.i.1 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv.next1678.i.1, i32 5, !dbg !1740
  store i32 1073741824, ptr %price680.i.1, align 4, !dbg !1741
  %indvars.iv.next1678.i.2 = add nuw nsw i64 %indvars.iv1677.i, 3, !dbg !1739
    #dbg_value(i64 %indvars.iv.next1678.i.2, !1087, !DIExpression(), !1175)
  %price680.i.2 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv.next1678.i.2, i32 5, !dbg !1740
  store i32 1073741824, ptr %price680.i.2, align 4, !dbg !1741
  %indvars.iv.next1678.i.3 = add nuw nsw i64 %indvars.iv1677.i, 4, !dbg !1739
    #dbg_value(i64 %indvars.iv.next1678.i.3, !1087, !DIExpression(), !1175)
  %price680.i.3 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv.next1678.i.3, i32 5, !dbg !1740
  store i32 1073741824, ptr %price680.i.3, align 4, !dbg !1741
  %exitcond1681.not.i.3 = icmp eq i64 %indvars.iv.next1678.i.3, %wide.trip.count1680.i, !dbg !1737
  br i1 %exitcond1681.not.i.3, label %while.cond683.preheader.i, label %while.body675.i, !dbg !1738, !llvm.loop !1746

while.cond683.i:                                  ; preds = %while.cond683.i, %while.cond683.preheader.i
  %i682.0.i = phi i32 [ %inc691.i, %while.cond683.i ], [ 0, %while.cond683.preheader.i ], !dbg !1736
    #dbg_value(i32 %i682.0.i, !1156, !DIExpression(), !1736)
  %idxprom685.i = zext i32 %i682.0.i to i64, !dbg !1747
  %arrayidx686.i = getelementptr inbounds [274 x %struct.lzma_match], ptr %matches, i64 0, i64 %idxprom685.i, !dbg !1747
  %470 = load i32, ptr %arrayidx686.i, align 4, !dbg !1748
  %cmp688.i = icmp ugt i32 %start_len.2.i, %470, !dbg !1749
  %inc691.i = add i32 %i682.0.i, 1, !dbg !1750
    #dbg_value(i32 %inc691.i, !1156, !DIExpression(), !1736)
  br i1 %cmp688.i, label %while.cond683.i, label %for.cond694.preheader.i, !dbg !1745, !llvm.loop !1751

for.cond694.preheader.i:                          ; preds = %while.cond683.i
  %add11.i.i226 = add i32 %add223.i, %conv1.i1472.i
  %cond779.i = select i1 %cmp188.i, i64 10, i64 7
  br label %for.cond694.i.outer, !dbg !1753

for.cond694.i.outer:                              ; preds = %if.end890.i, %for.cond694.preheader.i
  %indvars.iv1682.in.i.ph = phi i32 [ %indvars.iv1682.i, %if.end890.i ], [ %start_len.2.i, %for.cond694.preheader.i ]
  %i682.1.i.ph = phi i32 [ %inc891.i, %if.end890.i ], [ %i682.0.i, %for.cond694.preheader.i ]
  %len_test693.0.i.ph = phi i32 [ %add744.i, %if.end890.i ], [ %start_len.2.i, %for.cond694.preheader.i ]
  %len_end.addr.9.i.ph = phi i32 [ %len_end.addr.11.i, %if.end890.i ], [ %len_end.addr.8.lcssa.i, %for.cond694.preheader.i ]
  %idxprom696.i = zext i32 %i682.1.i.ph to i64
  %arrayidx697.i = getelementptr inbounds [274 x %struct.lzma_match], ptr %matches, i64 0, i64 %idxprom696.i
  %dist.i230 = getelementptr inbounds i8, ptr %arrayidx697.i, i64 4
  br label %for.cond694.i, !dbg !1753

for.cond694.i:                                    ; preds = %for.cond694.i.outer, %if.end730.for.inc906_crit_edge.i
  %indvars.iv1682.in.i = phi i32 [ %indvars.iv1682.i, %if.end730.for.inc906_crit_edge.i ], [ %indvars.iv1682.in.i.ph, %for.cond694.i.outer ]
  %len_test693.0.i = phi i32 [ %.pre1696.i, %if.end730.for.inc906_crit_edge.i ], [ %len_test693.0.i.ph, %for.cond694.i.outer ], !dbg !1754
  %indvars.iv1682.i = add i32 %indvars.iv1682.in.i, 1, !dbg !1736
    #dbg_value(i32 %len_end.addr.9.i.ph, !1087, !DIExpression(), !1175)
    #dbg_value(i32 %len_test693.0.i, !1157, !DIExpression(), !1755)
    #dbg_value(i32 %i682.1.i.ph, !1156, !DIExpression(), !1736)
  %471 = load i32, ptr %dist.i230, align 4, !dbg !1756
    #dbg_value(i32 %471, !1159, !DIExpression(), !1757)
    #dbg_value(ptr %pcoder, !990, !DIExpression(), !1758)
    #dbg_value(i32 %471, !995, !DIExpression(), !1758)
    #dbg_value(i32 %len_test693.0.i, !996, !DIExpression(), !1758)
    #dbg_value(i32 %and.i187, !997, !DIExpression(), !1758)
    #dbg_value(ptr %pcoder, !998, !DIExpression(), !1758)
  %cmp.i1473.i = icmp ult i32 %len_test693.0.i, 6, !dbg !1760
  %sub.i1474.i = add i32 %len_test693.0.i, -2, !dbg !1760
  %cond.i.i231 = select i1 %cmp.i1473.i, i32 %sub.i1474.i, i32 3, !dbg !1760
    #dbg_value(i32 %cond.i.i231, !999, !DIExpression(), !1758)
  %cmp1.i.i232 = icmp ult i32 %471, 128, !dbg !1761
  br i1 %cmp1.i.i232, label %if.then.i1483.i, label %if.else.i1475.i, !dbg !1762

if.then.i1483.i:                                  ; preds = %for.cond694.i
  %idxprom.i1484.i = zext i32 %cond.i.i231 to i64, !dbg !1763
  %idxprom2.i.i249 = zext nneg i32 %471 to i64, !dbg !1763
  %arrayidx3.i.i250 = getelementptr inbounds [4 x [128 x i32]], ptr %distances_prices.i.i229, i64 0, i64 %idxprom.i1484.i, i64 %idxprom2.i.i249, !dbg !1763
  %472 = load i32, ptr %arrayidx3.i.i250, align 4, !dbg !1763
    #dbg_value(i32 %472, !1000, !DIExpression(), !1758)
  br label %get_pos_len_price.exit.i248, !dbg !1764

if.else.i1475.i:                                  ; preds = %for.cond694.i
    #dbg_value(i32 %471, !1012, !DIExpression(), !1765)
  %cmp.i.i.i233 = icmp ult i32 %471, 524288, !dbg !1767
  %cmp1.i.i.i234 = icmp sgt i32 %471, -1, !dbg !1768
  %..i.i.i235 = select i1 %cmp1.i.i.i234, i32 18, i32 30, !dbg !1768
  %.21.i.i.i236 = select i1 %cmp1.i.i.i234, i64 36, i64 60, !dbg !1768
  %.sink20.i.i.i237 = select i1 %cmp.i.i.i233, i32 6, i32 %..i.i.i235, !dbg !1768
  %.sink.i.i.i238 = select i1 %cmp.i.i.i233, i64 12, i64 %.21.i.i.i236, !dbg !1768
  %shr10.i.i.i239 = lshr i32 %471, %.sink20.i.i.i237, !dbg !1765
  %idxprom11.i.i.i240 = zext nneg i32 %shr10.i.i.i239 to i64, !dbg !1765
  %arrayidx12.i.i.i241 = getelementptr inbounds [8192 x i8], ptr @lzma_fastpos, i64 0, i64 %idxprom11.i.i.i240, !dbg !1765
  %473 = load i8, ptr %arrayidx12.i.i.i241, align 1, !dbg !1765
  %conv13.i.i.i242 = zext i8 %473 to i64, !dbg !1765
  %add14.i.i.i243 = add nuw nsw i64 %.sink.i.i.i238, %conv13.i.i.i242, !dbg !1765
    #dbg_value(!DIArgList(i32 poison, i8 poison), !1001, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !1769)
  %idxprom4.i.i244 = zext i32 %cond.i.i231 to i64, !dbg !1770
  %arrayidx7.i.i245 = getelementptr inbounds [4 x [64 x i32]], ptr %pos_slot_prices.i.i227, i64 0, i64 %idxprom4.i.i244, i64 %add14.i.i.i243, !dbg !1770
  %474 = load i32, ptr %arrayidx7.i.i245, align 4, !dbg !1770
  %and.i1476.i = and i32 %471, 15, !dbg !1771
  %idxprom8.i.i246 = zext nneg i32 %and.i1476.i to i64, !dbg !1772
  %arrayidx9.i.i247 = getelementptr inbounds [16 x i32], ptr %align_prices.i.i228, i64 0, i64 %idxprom8.i.i246, !dbg !1772
  %475 = load i32, ptr %arrayidx9.i.i247, align 4, !dbg !1772
  %add.i1477.i = add i32 %475, %474, !dbg !1773
    #dbg_value(i32 %add.i1477.i, !1000, !DIExpression(), !1758)
  br label %get_pos_len_price.exit.i248

get_pos_len_price.exit.i248:                      ; preds = %if.else.i1475.i, %if.then.i1483.i
  %price.0.i1478.i = phi i32 [ %472, %if.then.i1483.i ], [ %add.i1477.i, %if.else.i1475.i ], !dbg !1774
    #dbg_value(i32 %price.0.i1478.i, !1000, !DIExpression(), !1758)
    #dbg_value(ptr %pcoder, !912, !DIExpression(DW_OP_plus_uconst, 29184, DW_OP_stack_value), !1775)
    #dbg_value(i32 %len_test693.0.i, !920, !DIExpression(), !1775)
    #dbg_value(i32 %and.i187, !921, !DIExpression(), !1775)
  %idxprom1.i.i1481.i = zext i32 %sub.i1474.i to i64, !dbg !1777
  %arrayidx2.i.i1482.i = getelementptr inbounds [16 x [272 x i32]], ptr %prices.i.i1479.i, i64 0, i64 %idxprom185.i, i64 %idxprom1.i.i1481.i, !dbg !1777
  %476 = load i32, ptr %arrayidx2.i.i1482.i, align 4, !dbg !1777
    #dbg_value(i32 poison, !1000, !DIExpression(), !1758)
  %add670.i = add i32 %add11.i.i226, %price.0.i1478.i, !dbg !1778
  %add700.i = add i32 %add670.i, %476, !dbg !1779
    #dbg_value(i32 %add700.i, !1162, !DIExpression(), !1757)
  %add702.i = add i32 %len_test693.0.i, %249, !dbg !1780
  %idxprom703.i = zext i32 %add702.i to i64, !dbg !1782
  %arrayidx704.i = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %idxprom703.i, !dbg !1782
  %price705.i = getelementptr inbounds i8, ptr %arrayidx704.i, i64 16, !dbg !1783
  %477 = load i32, ptr %price705.i, align 4, !dbg !1783
  %cmp706.i = icmp ult i32 %add700.i, %477, !dbg !1784
  br i1 %cmp706.i, label %if.then708.i, label %if.end730.i, !dbg !1785

if.then708.i:                                     ; preds = %get_pos_len_price.exit.i248
  store i32 %add700.i, ptr %price705.i, align 4, !dbg !1786
  %pos_prev718.i = getelementptr inbounds i8, ptr %arrayidx704.i, i64 20, !dbg !1788
  store i32 %249, ptr %pos_prev718.i, align 4, !dbg !1789
  %add719.i = add i32 %471, 4, !dbg !1790
  %back_prev724.i = getelementptr inbounds i8, ptr %arrayidx704.i, i64 24, !dbg !1791
  store i32 %add719.i, ptr %back_prev724.i, align 4, !dbg !1792
  %prev_1_is_literal729.i = getelementptr inbounds i8, ptr %arrayidx704.i, i64 4, !dbg !1793
  store i8 0, ptr %prev_1_is_literal729.i, align 4, !dbg !1794
  br label %if.end730.i, !dbg !1795

if.end730.i:                                      ; preds = %if.then708.i, %get_pos_len_price.exit.i248
  %478 = load i32, ptr %arrayidx697.i, align 4, !dbg !1796
  %cmp735.i = icmp eq i32 %len_test693.0.i, %478, !dbg !1797
  br i1 %cmp735.i, label %if.then737.i, label %if.end730.for.inc906_crit_edge.i, !dbg !1798

if.end730.for.inc906_crit_edge.i:                 ; preds = %if.end730.i
  %.pre1696.i = add i32 %len_test693.0.i, 1, !dbg !1799
  br label %for.cond694.i, !dbg !1798, !llvm.loop !1800

if.then737.i:                                     ; preds = %if.end730.i
  %479 = zext i32 %indvars.iv1682.i to i64
  %idx.ext739.i = zext i32 %471 to i64, !dbg !1802
  %idx.neg740.i = sub nsw i64 0, %idx.ext739.i, !dbg !1802
  %gep.i = getelementptr i8, ptr %arrayidx187.i, i64 %idx.neg740.i, !dbg !1803
    #dbg_value(ptr %gep.i, !1163, !DIExpression(), !1804)
  %add744.i = add i32 %len_test693.0.i, 1, !dbg !1805
    #dbg_value(i32 %add744.i, !1166, !DIExpression(), !1804)
  %add746.i = add i32 %add744.i, %248, !dbg !1806
  %cond753.i = call i32 @llvm.umin.i32(i32 %add746.i, i32 %spec.select), !dbg !1806
    #dbg_value(i32 %cond753.i, !1167, !DIExpression(), !1804)
  %cmp7551618.i = icmp ult i32 %add744.i, %cond753.i, !dbg !1807
  br i1 %cmp7551618.i, label %land.rhs757.preheader.i, label %for.end770.i, !dbg !1810

land.rhs757.preheader.i:                          ; preds = %if.then737.i
  %480 = zext i32 %cond753.i to i64, !dbg !1811
  br label %land.rhs757.i, !dbg !1811

land.rhs757.i:                                    ; preds = %for.inc768.i, %land.rhs757.preheader.i
  %indvars.iv1684.i = phi i64 [ %479, %land.rhs757.preheader.i ], [ %indvars.iv.next1685.i, %for.inc768.i ]
    #dbg_value(i64 %indvars.iv1684.i, !1166, !DIExpression(), !1804)
  %arrayidx759.i = getelementptr inbounds i8, ptr %add.ptr, i64 %indvars.iv1684.i, !dbg !1812
  %481 = load i8, ptr %arrayidx759.i, align 1, !dbg !1812
  %arrayidx762.i = getelementptr inbounds i8, ptr %gep.i, i64 %indvars.iv1684.i, !dbg !1813
  %482 = load i8, ptr %arrayidx762.i, align 1, !dbg !1813
  %cmp764.i = icmp eq i8 %481, %482, !dbg !1814
  br i1 %cmp764.i, label %for.inc768.i, label %for.end770.loopexit.i, !dbg !1811

for.inc768.i:                                     ; preds = %land.rhs757.i
  %indvars.iv.next1685.i = add nuw nsw i64 %indvars.iv1684.i, 1, !dbg !1815
    #dbg_value(i64 %indvars.iv.next1685.i, !1166, !DIExpression(), !1804)
  %cmp755.i = icmp ult i64 %indvars.iv.next1685.i, %480, !dbg !1807
  br i1 %cmp755.i, label %land.rhs757.i, label %for.end770.loopexit.i, !dbg !1810, !llvm.loop !1816

for.end770.loopexit.i:                            ; preds = %for.inc768.i, %land.rhs757.i
  %len_test_2743.0.lcssa.ph.in.i = phi i64 [ %indvars.iv1684.i, %land.rhs757.i ], [ %indvars.iv.next1685.i, %for.inc768.i ]
  %len_test_2743.0.lcssa.ph.i = trunc i64 %len_test_2743.0.lcssa.ph.in.i to i32, !dbg !1818
  br label %for.end770.i, !dbg !1819

for.end770.i:                                     ; preds = %for.end770.loopexit.i, %if.then737.i
  %len_test_2743.0.lcssa.i = phi i32 [ %add744.i, %if.then737.i ], [ %len_test_2743.0.lcssa.ph.i, %for.end770.loopexit.i ], !dbg !1804
  %sub772.i = sub i32 %len_test_2743.0.lcssa.i, %add744.i, !dbg !1819
    #dbg_value(i32 %sub772.i, !1166, !DIExpression(), !1804)
  %cmp773.i = icmp ugt i32 %sub772.i, 1, !dbg !1820
  br i1 %cmp773.i, label %if.then775.i, label %if.end890.i, !dbg !1821

if.then775.i:                                     ; preds = %for.end770.i
    #dbg_value(i32 poison, !1168, !DIExpression(), !1822)
  %add781.i = add i32 %len_test693.0.i, %add, !dbg !1823
  %and783.i = and i32 %add781.i, %300, !dbg !1824
    #dbg_value(i32 %and783.i, !1171, !DIExpression(), !1822)
  %idxprom788.i = zext i32 %and783.i to i64, !dbg !1825
  %arrayidx789.i = getelementptr inbounds [12 x [16 x i16]], ptr %is_match.i, i64 0, i64 %cond779.i, i64 %idxprom788.i, !dbg !1825
  %483 = load i16, ptr %arrayidx789.i, align 2, !dbg !1825
    #dbg_value(i16 %483, !697, !DIExpression(), !1826)
  %484 = lshr i16 %483, 4, !dbg !1828
  %idxprom.i1485.i = zext nneg i16 %484 to i64, !dbg !1829
  %arrayidx.i1486.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i1485.i, !dbg !1829
  %485 = load i8, ptr %arrayidx.i1486.i, align 1, !dbg !1829
  %sub793.i = add i32 %len_test693.0.i, -1, !dbg !1830
  %idxprom794.i = zext i32 %sub793.i to i64, !dbg !1831
  %arrayidx795.i = getelementptr inbounds i8, ptr %add.ptr, i64 %idxprom794.i, !dbg !1831
  %486 = load i8, ptr %arrayidx795.i, align 1, !dbg !1831
  %conv796.i = zext i8 %486 to i32, !dbg !1831
  %idxprom797.i = zext i32 %len_test693.0.i to i64, !dbg !1832
  %arrayidx798.i = getelementptr inbounds i8, ptr %gep.i, i64 %idxprom797.i, !dbg !1832
  %487 = load i8, ptr %arrayidx798.i, align 1, !dbg !1832
  %conv799.i = zext i8 %487 to i32, !dbg !1832
  %arrayidx801.i = getelementptr inbounds i8, ptr %add.ptr, i64 %idxprom797.i, !dbg !1833
  %488 = load i8, ptr %arrayidx801.i, align 1, !dbg !1833
  %conv802.i = zext i8 %488 to i32, !dbg !1833
    #dbg_value(ptr %pcoder, !709, !DIExpression(), !1834)
    #dbg_value(i32 %add781.i, !718, !DIExpression(), !1834)
    #dbg_value(i32 %conv796.i, !719, !DIExpression(), !1834)
    #dbg_value(i1 true, !720, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !1834)
    #dbg_value(i32 %conv799.i, !721, !DIExpression(), !1834)
    #dbg_value(i32 %conv802.i, !722, !DIExpression(), !1834)
    #dbg_value(ptr %pcoder, !723, !DIExpression(), !1834)
  %and.i1490.i = and i32 %add781.i, %305, !dbg !1836
  %489 = load i32, ptr %literal_context_bits.i.i, align 4, !dbg !1836
  %shl.i1492.i = shl i32 %and.i1490.i, %489, !dbg !1836
  %sub.i1493.i = sub i32 8, %489, !dbg !1836
  %shr.i1494.i = lshr i32 %conv796.i, %sub.i1493.i, !dbg !1836
  %add.i1495.i = add i32 %shr.i1494.i, %shl.i1492.i, !dbg !1836
  %idxprom.i1496.i = zext i32 %add.i1495.i to i64, !dbg !1836
  %arrayidx.i1497.i = getelementptr inbounds [16 x [768 x i16]], ptr %literal.i.i, i64 0, i64 %idxprom.i1496.i, !dbg !1836
    #dbg_value(ptr %arrayidx.i1497.i, !727, !DIExpression(), !1834)
    #dbg_value(i32 0, !728, !DIExpression(), !1834)
  %add2.i1498.i = or disjoint i32 %conv802.i, 256, !dbg !1837
  br label %do.body.i1499.i

do.body.i1499.i:                                  ; preds = %do.body.i1499.i, %if.then775.i
  %offset.0.i1500.i = phi i32 [ %and15.i1522.i, %do.body.i1499.i ], [ 256, %if.then775.i ], !dbg !1838
  %price.0.i1501.i = phi i32 [ %add13.i1519.i, %do.body.i1499.i ], [ 0, %if.then775.i ], !dbg !1834
  %symbol.addr.0.i1502.i = phi i32 [ %shl14.i1520.i, %do.body.i1499.i ], [ %add2.i1498.i, %if.then775.i ], !dbg !1838
  %match_byte.addr.0.i1503.i = phi i32 [ %shl3.i1504.i, %do.body.i1499.i ], [ %conv799.i, %if.then775.i ]
    #dbg_value(i32 %match_byte.addr.0.i1503.i, !721, !DIExpression(), !1834)
    #dbg_value(i32 %symbol.addr.0.i1502.i, !722, !DIExpression(), !1834)
    #dbg_value(i32 %price.0.i1501.i, !728, !DIExpression(), !1834)
    #dbg_value(i32 %offset.0.i1500.i, !729, !DIExpression(), !1838)
  %shl3.i1504.i = shl i32 %match_byte.addr.0.i1503.i, 1, !dbg !1839
    #dbg_value(i32 %shl3.i1504.i, !721, !DIExpression(), !1834)
  %and4.i1505.i = and i32 %shl3.i1504.i, %offset.0.i1500.i, !dbg !1840
    #dbg_value(i32 %and4.i1505.i, !732, !DIExpression(), !1841)
  %shr6.i1506.i = lshr i32 %symbol.addr.0.i1502.i, 8, !dbg !1842
  %add5.i1507.i = add nuw nsw i32 %shr6.i1506.i, %offset.0.i1500.i, !dbg !1843
  %add7.i1508.i = add nuw nsw i32 %add5.i1507.i, %and4.i1505.i, !dbg !1844
    #dbg_value(i32 %add7.i1508.i, !734, !DIExpression(), !1841)
    #dbg_value(i32 %symbol.addr.0.i1502.i, !735, !DIExpression(DW_OP_constu, 7, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value), !1841)
  %idxprom10.i1509.i = zext nneg i32 %add7.i1508.i to i64, !dbg !1845
  %arrayidx11.i1510.i = getelementptr inbounds i16, ptr %arrayidx.i1497.i, i64 %idxprom10.i1509.i, !dbg !1845
  %490 = load i16, ptr %arrayidx11.i1510.i, align 2, !dbg !1845
    #dbg_value(i16 %490, !408, !DIExpression(), !1846)
    #dbg_value(i32 %symbol.addr.0.i1502.i, !413, !DIExpression(DW_OP_constu, 7, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value), !1846)
  %conv.i.i1511.i = zext i16 %490 to i64, !dbg !1848
  %.mask.i1512.i = and i32 %symbol.addr.0.i1502.i, 128, !dbg !1849
  %isneg.not.i1513.i = icmp eq i32 %.mask.i1512.i, 0, !dbg !1849
  %and.i31.i1514.i = select i1 %isneg.not.i1513.i, i64 0, i64 2032, !dbg !1849
  %xor.i.i1515.i = xor i64 %and.i31.i1514.i, %conv.i.i1511.i, !dbg !1850
  %shr.i32.i1516.i = lshr i64 %xor.i.i1515.i, 4, !dbg !1851
  %arrayidx.i34.i1517.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i32.i1516.i, !dbg !1852
  %491 = load i8, ptr %arrayidx.i34.i1517.i, align 1, !dbg !1852
  %conv1.i.i1518.i = zext i8 %491 to i32, !dbg !1852
  %add13.i1519.i = add i32 %price.0.i1501.i, %conv1.i.i1518.i, !dbg !1853
    #dbg_value(i32 %add13.i1519.i, !728, !DIExpression(), !1834)
  %shl14.i1520.i = shl nuw nsw i32 %symbol.addr.0.i1502.i, 1, !dbg !1854
    #dbg_value(i32 %shl14.i1520.i, !722, !DIExpression(), !1834)
  %492 = xor i32 %shl14.i1520.i, %shl3.i1504.i, !dbg !1855
  %not.i1521.i = xor i32 %492, -1, !dbg !1855
  %and15.i1522.i = and i32 %offset.0.i1500.i, %not.i1521.i, !dbg !1856
    #dbg_value(i32 %and15.i1522.i, !729, !DIExpression(), !1838)
  %cmp.i1523.i = icmp ult i32 %symbol.addr.0.i1502.i, 32768, !dbg !1857
  br i1 %cmp.i1523.i, label %do.body.i1499.i, label %get_literal_price.exit1525.i, !dbg !1858, !llvm.loop !1859

get_literal_price.exit1525.i:                     ; preds = %do.body.i1499.i
  %conv1.i1487.i = zext i8 %485 to i32, !dbg !1829
    #dbg_value(i32 %add13.i1519.i, !728, !DIExpression(), !1834)
    #dbg_value(i32 poison, !1172, !DIExpression(), !1822)
    #dbg_value(i32 4, !1168, !DIExpression(), !1822)
  %add819.i = add i32 %and783.i, 1, !dbg !1862
  %and821.i = and i32 %add819.i, %300, !dbg !1863
    #dbg_value(i32 %and821.i, !1171, !DIExpression(), !1822)
  %idxprom826.i = zext i32 %and821.i to i64, !dbg !1864
  %arrayidx827.i = getelementptr inbounds [16 x i16], ptr %arrayidx825.i, i64 0, i64 %idxprom826.i, !dbg !1864
  %493 = load i16, ptr %arrayidx827.i, align 2, !dbg !1864
    #dbg_value(i16 %493, !802, !DIExpression(), !1865)
  %494 = lshr i16 %493, 4, !dbg !1867
  %495 = xor i16 %494, 127, !dbg !1867
  %idxprom.i1526.i = zext nneg i16 %495 to i64, !dbg !1868
  %arrayidx.i1527.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i1526.i, !dbg !1868
  %496 = load i8, ptr %arrayidx.i1527.i, align 1, !dbg !1868
  %conv1.i1528.i = zext i8 %496 to i32, !dbg !1868
  %497 = load i16, ptr %arrayidx832.i, align 2, !dbg !1869
    #dbg_value(i16 %497, !802, !DIExpression(), !1870)
  %498 = lshr i16 %497, 4, !dbg !1872
  %499 = xor i16 %498, 127, !dbg !1872
  %idxprom.i1529.i = zext nneg i16 %499 to i64, !dbg !1873
  %arrayidx.i1530.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i1529.i, !dbg !1873
  %500 = load i8, ptr %arrayidx.i1530.i, align 1, !dbg !1873
  %conv1.i1531.i = zext i8 %500 to i32, !dbg !1873
    #dbg_value(i32 poison, !1173, !DIExpression(), !1822)
  %add837.i = add i32 %add702.i, 1, !dbg !1874
  %add838.i = add i32 %sub772.i, %add837.i, !dbg !1875
    #dbg_value(i32 %add838.i, !1174, !DIExpression(), !1822)
    #dbg_value(i32 %len_end.addr.9.i.ph, !1087, !DIExpression(), !1175)
  %cmp8401622.i = icmp ult i32 %len_end.addr.9.i.ph, %add838.i, !dbg !1876
  br i1 %cmp8401622.i, label %while.body842.preheader.i, label %get_literal_price.exit1525.while.end848_crit_edge.i, !dbg !1877

get_literal_price.exit1525.while.end848_crit_edge.i: ; preds = %get_literal_price.exit1525.i
  %.pre1695.i = zext i32 %add838.i to i64, !dbg !1878
  br label %while.end848.i, !dbg !1877

while.body842.preheader.i:                        ; preds = %get_literal_price.exit1525.i
  %501 = zext i32 %len_end.addr.9.i.ph to i64, !dbg !1877
  %wide.trip.count1691.i = zext i32 %add838.i to i64, !dbg !1876
  %502 = sub nsw i64 %wide.trip.count1691.i, %501, !dbg !1877
  %min.iters.check434 = icmp ult i64 %502, 4, !dbg !1877
  br i1 %min.iters.check434, label %while.body842.i.preheader, label %vector.ph435, !dbg !1877

vector.ph435:                                     ; preds = %while.body842.preheader.i
  %n.vec437 = and i64 %502, -4, !dbg !1877
  %ind.end438 = add nsw i64 %n.vec437, %501, !dbg !1877
  br label %vector.body440, !dbg !1877

vector.body440:                                   ; preds = %vector.body440, %vector.ph435
  %index441 = phi i64 [ 0, %vector.ph435 ], [ %index.next443, %vector.body440 ]
  %offset.idx442 = add i64 %index441, %501, !dbg !1877
  %503 = add nuw nsw i64 %offset.idx442, 1, !dbg !1880
  %504 = add i64 %offset.idx442, 2, !dbg !1880
  %505 = add i64 %offset.idx442, 3, !dbg !1880
  %506 = add i64 %offset.idx442, 4, !dbg !1880
  %507 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %503, i32 5, !dbg !1881
  %508 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %504, i32 5, !dbg !1881
  %509 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %505, i32 5, !dbg !1881
  %510 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %506, i32 5, !dbg !1881
  store i32 1073741824, ptr %507, align 4, !dbg !1882
  store i32 1073741824, ptr %508, align 4, !dbg !1882
  store i32 1073741824, ptr %509, align 4, !dbg !1882
  store i32 1073741824, ptr %510, align 4, !dbg !1882
  %index.next443 = add nuw i64 %index441, 4
  %511 = icmp eq i64 %index.next443, %n.vec437
  br i1 %511, label %middle.block432, label %vector.body440, !llvm.loop !1883

middle.block432:                                  ; preds = %vector.body440
  %cmp.n444 = icmp eq i64 %502, %n.vec437, !dbg !1877
  br i1 %cmp.n444, label %while.end848.i, label %while.body842.i.preheader, !dbg !1877

while.body842.i.preheader:                        ; preds = %middle.block432, %while.body842.preheader.i
  %indvars.iv1687.i.ph = phi i64 [ %501, %while.body842.preheader.i ], [ %ind.end438, %middle.block432 ]
  %512 = sub nsw i64 %wide.trip.count1691.i, %indvars.iv1687.i.ph, !dbg !1877
  %xtraiter542 = and i64 %512, 3, !dbg !1877
  %lcmp.mod543.not = icmp eq i64 %xtraiter542, 0, !dbg !1877
  br i1 %lcmp.mod543.not, label %while.body842.i.prol.loopexit, label %while.body842.i.prol, !dbg !1877

while.body842.i.prol:                             ; preds = %while.body842.i.preheader, %while.body842.i.prol
  %indvars.iv1687.i.prol = phi i64 [ %indvars.iv.next1688.i.prol, %while.body842.i.prol ], [ %indvars.iv1687.i.ph, %while.body842.i.preheader ]
  %prol.iter544 = phi i64 [ %prol.iter544.next, %while.body842.i.prol ], [ 0, %while.body842.i.preheader ]
    #dbg_value(i64 %indvars.iv1687.i.prol, !1087, !DIExpression(), !1175)
  %indvars.iv.next1688.i.prol = add nuw nsw i64 %indvars.iv1687.i.prol, 1, !dbg !1880
    #dbg_value(i64 %indvars.iv.next1688.i.prol, !1087, !DIExpression(), !1175)
  %price847.i.prol = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv.next1688.i.prol, i32 5, !dbg !1881
  store i32 1073741824, ptr %price847.i.prol, align 4, !dbg !1882
  %prol.iter544.next = add i64 %prol.iter544, 1, !dbg !1877
  %prol.iter544.cmp.not = icmp eq i64 %prol.iter544.next, %xtraiter542, !dbg !1877
  br i1 %prol.iter544.cmp.not, label %while.body842.i.prol.loopexit, label %while.body842.i.prol, !dbg !1877, !llvm.loop !1885

while.body842.i.prol.loopexit:                    ; preds = %while.body842.i.prol, %while.body842.i.preheader
  %indvars.iv1687.i.unr = phi i64 [ %indvars.iv1687.i.ph, %while.body842.i.preheader ], [ %indvars.iv.next1688.i.prol, %while.body842.i.prol ]
  %513 = sub nsw i64 %indvars.iv1687.i.ph, %wide.trip.count1691.i, !dbg !1877
  %514 = icmp ugt i64 %513, -4, !dbg !1877
  br i1 %514, label %while.end848.i, label %while.body842.i, !dbg !1877

while.body842.i:                                  ; preds = %while.body842.i.prol.loopexit, %while.body842.i
  %indvars.iv1687.i = phi i64 [ %indvars.iv.next1688.i.3, %while.body842.i ], [ %indvars.iv1687.i.unr, %while.body842.i.prol.loopexit ]
    #dbg_value(i64 %indvars.iv1687.i, !1087, !DIExpression(), !1175)
  %indvars.iv.next1688.i = add nuw nsw i64 %indvars.iv1687.i, 1, !dbg !1880
    #dbg_value(i64 %indvars.iv.next1688.i, !1087, !DIExpression(), !1175)
  %price847.i = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv.next1688.i, i32 5, !dbg !1881
  store i32 1073741824, ptr %price847.i, align 4, !dbg !1882
  %indvars.iv.next1688.i.1 = add nuw nsw i64 %indvars.iv1687.i, 2, !dbg !1880
    #dbg_value(i64 %indvars.iv.next1688.i.1, !1087, !DIExpression(), !1175)
  %price847.i.1 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv.next1688.i.1, i32 5, !dbg !1881
  store i32 1073741824, ptr %price847.i.1, align 4, !dbg !1882
  %indvars.iv.next1688.i.2 = add nuw nsw i64 %indvars.iv1687.i, 3, !dbg !1880
    #dbg_value(i64 %indvars.iv.next1688.i.2, !1087, !DIExpression(), !1175)
  %price847.i.2 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv.next1688.i.2, i32 5, !dbg !1881
  store i32 1073741824, ptr %price847.i.2, align 4, !dbg !1882
  %indvars.iv.next1688.i.3 = add nuw nsw i64 %indvars.iv1687.i, 4, !dbg !1880
    #dbg_value(i64 %indvars.iv.next1688.i.3, !1087, !DIExpression(), !1175)
  %price847.i.3 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv.next1688.i.3, i32 5, !dbg !1881
  store i32 1073741824, ptr %price847.i.3, align 4, !dbg !1882
  %exitcond1692.not.i.3 = icmp eq i64 %indvars.iv.next1688.i.3, %wide.trip.count1691.i, !dbg !1876
  br i1 %exitcond1692.not.i.3, label %while.end848.i, label %while.body842.i, !dbg !1877, !llvm.loop !1886

while.end848.i:                                   ; preds = %while.body842.i.prol.loopexit, %while.body842.i, %middle.block432, %get_literal_price.exit1525.while.end848_crit_edge.i
  %idxprom852.pre-phi.i = phi i64 [ %.pre1695.i, %get_literal_price.exit1525.while.end848_crit_edge.i ], [ %wide.trip.count1691.i, %middle.block432 ], [ %wide.trip.count1691.i, %while.body842.i ], [ %wide.trip.count1691.i, %while.body842.i.prol.loopexit ], !dbg !1878
  %len_end.addr.10.lcssa.i = phi i32 [ %len_end.addr.9.i.ph, %get_literal_price.exit1525.while.end848_crit_edge.i ], [ %add838.i, %middle.block432 ], [ %add838.i, %while.body842.i ], [ %add838.i, %while.body842.i.prol.loopexit ]
    #dbg_value(ptr %pcoder, !1439, !DIExpression(), !1887)
    #dbg_value(i32 0, !1444, !DIExpression(), !1887)
    #dbg_value(i32 %sub772.i, !1445, !DIExpression(), !1887)
    #dbg_value(i32 4, !1446, !DIExpression(), !1887)
    #dbg_value(i32 %and821.i, !1447, !DIExpression(), !1887)
    #dbg_value(ptr %pcoder, !1448, !DIExpression(), !1887)
    #dbg_value(ptr %pcoder, !912, !DIExpression(DW_OP_plus_uconst, 47688, DW_OP_stack_value), !1889)
    #dbg_value(i32 %sub772.i, !920, !DIExpression(), !1889)
    #dbg_value(i32 %and821.i, !921, !DIExpression(), !1889)
  %sub.i.i1534.i = add i32 %sub772.i, -2, !dbg !1891
  %idxprom1.i.i1535.i = zext i32 %sub.i.i1534.i to i64, !dbg !1892
  %arrayidx2.i.i1536.i = getelementptr inbounds [16 x [272 x i32]], ptr %prices.i.i, i64 0, i64 %idxprom826.i, i64 %idxprom1.i.i1535.i, !dbg !1892
  %515 = load i32, ptr %arrayidx2.i.i1536.i, align 4, !dbg !1892
    #dbg_value(ptr %pcoder, !888, !DIExpression(), !1893)
    #dbg_value(i32 0, !893, !DIExpression(), !1893)
    #dbg_value(i32 4, !894, !DIExpression(), !1893)
    #dbg_value(i32 %and821.i, !895, !DIExpression(), !1893)
    #dbg_value(ptr %pcoder, !896, !DIExpression(), !1893)
  %516 = load i16, ptr %arrayidx.i.i1538.i, align 2, !dbg !1895
  %517 = lshr i16 %516, 4, !dbg !1895
    #dbg_value(i16 %516, !697, !DIExpression(), !1896)
  %idxprom.i.i.i1539.i = zext nneg i16 %517 to i64, !dbg !1898
  %arrayidx.i.i.i1540.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i.i.i1539.i, !dbg !1898
  %518 = load i8, ptr %arrayidx.i.i.i1540.i, align 1, !dbg !1898
  %conv1.i.i.i1541.i = zext i8 %518 to i32, !dbg !1898
    #dbg_value(i32 %conv1.i.i.i1541.i, !897, !DIExpression(), !1893)
  %arrayidx4.i.i1543.i = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long.i.i267, i64 0, i64 4, i64 %idxprom826.i, !dbg !1899
  %519 = load i16, ptr %arrayidx4.i.i1543.i, align 2, !dbg !1899
    #dbg_value(i16 %519, !802, !DIExpression(), !1900)
  %520 = lshr i16 %519, 4, !dbg !1902
  %521 = xor i16 %520, 127, !dbg !1902
  %idxprom.i43.i.i1544.i = zext nneg i16 %521 to i64, !dbg !1903
  %arrayidx.i44.i.i1545.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i43.i.i1544.i, !dbg !1903
  %522 = load i8, ptr %arrayidx.i44.i.i1545.i, align 1, !dbg !1903
  %conv1.i45.i.i1546.i = zext i8 %522 to i32, !dbg !1903
    #dbg_value(i32 poison, !897, !DIExpression(), !1893)
  %add.i.i1547.i = add i32 %add700.i, %conv1.i1487.i, !dbg !1904
  %add.i1548.i = add i32 %add.i.i1547.i, %add13.i1519.i, !dbg !1905
  %add791.i = add i32 %add.i1548.i, %conv1.i1528.i, !dbg !1906
  %add804.i = add i32 %add791.i, %conv1.i1531.i, !dbg !1907
  %add829.i = add i32 %add804.i, %515, !dbg !1908
  %add834.i = add i32 %add829.i, %conv1.i.i.i1541.i, !dbg !1909
  %add850.i = add i32 %add834.i, %conv1.i45.i.i1546.i, !dbg !1910
    #dbg_value(i32 %add850.i, !1162, !DIExpression(), !1757)
  %arrayidx853.i = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %idxprom852.pre-phi.i, !dbg !1878
  %price854.i = getelementptr inbounds i8, ptr %arrayidx853.i, i64 16, !dbg !1911
  %523 = load i32, ptr %price854.i, align 4, !dbg !1911
  %cmp855.i = icmp ult i32 %add850.i, %523, !dbg !1912
  br i1 %cmp855.i, label %if.then857.i, label %if.end890.i, !dbg !1913

if.then857.i:                                     ; preds = %while.end848.i
  store i32 %add850.i, ptr %price854.i, align 4, !dbg !1914
  %pos_prev867.i = getelementptr inbounds i8, ptr %arrayidx853.i, i64 20, !dbg !1916
  store i32 %add837.i, ptr %pos_prev867.i, align 4, !dbg !1917
  %back_prev871.i = getelementptr inbounds i8, ptr %arrayidx853.i, i64 24, !dbg !1918
  store i32 0, ptr %back_prev871.i, align 4, !dbg !1919
  %prev_1_is_literal875.i = getelementptr inbounds i8, ptr %arrayidx853.i, i64 4, !dbg !1920
  store i8 1, ptr %prev_1_is_literal875.i, align 4, !dbg !1921
  %prev_2879.i = getelementptr inbounds i8, ptr %arrayidx853.i, i64 5, !dbg !1922
  store i8 1, ptr %prev_2879.i, align 1, !dbg !1923
  %pos_prev_2883.i = getelementptr inbounds i8, ptr %arrayidx853.i, i64 8, !dbg !1924
  store i32 %249, ptr %pos_prev_2883.i, align 4, !dbg !1925
  %add884.i = add i32 %471, 4, !dbg !1926
  %back_prev_2888.i = getelementptr inbounds i8, ptr %arrayidx853.i, i64 12, !dbg !1927
  store i32 %add884.i, ptr %back_prev_2888.i, align 4, !dbg !1928
  br label %if.end890.i, !dbg !1929

if.end890.i:                                      ; preds = %if.then857.i, %while.end848.i, %for.end770.i
  %len_end.addr.11.i = phi i32 [ %len_end.addr.9.i.ph, %for.end770.i ], [ %len_end.addr.10.lcssa.i, %if.then857.i ], [ %len_end.addr.10.lcssa.i, %while.end848.i ]
    #dbg_value(i32 %len_end.addr.11.i, !1087, !DIExpression(), !1175)
  %inc891.i = add i32 %i682.1.i.ph, 1, !dbg !1930
    #dbg_value(i32 %inc891.i, !1156, !DIExpression(), !1736)
  %cmp892.not.i = icmp eq i32 %inc891.i, %matches_count.1.i, !dbg !1932
  br i1 %cmp892.not.i, label %helper2.exit, label %for.cond694.i.outer, !llvm.loop !1800

helper2.exit:                                     ; preds = %if.end890.i, %if.end274.i, %if.end662.i
  %retval.0.i = phi i32 [ %len_end.0353, %if.end274.i ], [ %len_end.addr.7.i, %if.end662.i ], [ %len_end.addr.11.i, %if.end890.i ], !dbg !1175
    #dbg_value(i64 %indvars.iv.next394, !238, !DIExpression(), !300)
    #dbg_value(i32 %retval.0.i, !236, !DIExpression(), !300)
  %524 = zext i32 %retval.0.i to i64, !dbg !1933
  %cmp27 = icmp ult i64 %indvars.iv.next394, %524, !dbg !1933
  br i1 %cmp27, label %for.body, label %for.end, !dbg !1064, !llvm.loop !1934

for.end:                                          ; preds = %helper2.exit, %for.body
  %cur.0.lcssa.ph = phi i32 [ %indvars396, %helper2.exit ], [ %249, %for.body ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1936), !dbg !1939
  call void @llvm.experimental.noalias.scope.decl(metadata !1940), !dbg !1939
    #dbg_value(ptr %pcoder, !1942, !DIExpression(), !1956)
    #dbg_value(ptr %len_res, !1947, !DIExpression(), !1956)
    #dbg_value(ptr %back_res, !1948, !DIExpression(), !1956)
    #dbg_value(i32 %cur.0.lcssa.ph, !1949, !DIExpression(), !1956)
    #dbg_value(ptr %pcoder, !1950, !DIExpression(), !1956)
  store i32 %cur.0.lcssa.ph, ptr %opts_end_index, align 4, !dbg !1958, !noalias !1959
  %idxprom.i312 = zext i32 %cur.0.lcssa.ph to i64, !dbg !1960
  %arrayidx.i313 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %idxprom.i312, !dbg !1960
  %pos_prev.i314 = getelementptr inbounds i8, ptr %arrayidx.i313, i64 20, !dbg !1961
  %525 = load i32, ptr %pos_prev.i314, align 4, !dbg !1961, !noalias !1959
    #dbg_value(i32 %525, !1951, !DIExpression(), !1956)
  %back_prev.i315 = getelementptr inbounds i8, ptr %arrayidx.i313, i64 24, !dbg !1962
  %526 = load i32, ptr %back_prev.i315, align 4, !dbg !1962, !noalias !1959
    #dbg_value(i32 %526, !1952, !DIExpression(), !1956)
  br label %do.body.i316, !dbg !1963

do.body.i316:                                     ; preds = %if.end40.i, %for.end
  %back_mem.0.i = phi i32 [ %526, %for.end ], [ %531, %if.end40.i ], !dbg !1956
  %pos_mem.0.i = phi i32 [ %525, %for.end ], [ %530, %if.end40.i ], !dbg !1956
  %cur.addr.0.i = phi i32 [ %cur.0.lcssa.ph, %for.end ], [ %pos_mem.0.i, %if.end40.i ]
    #dbg_value(i32 %cur.addr.0.i, !1949, !DIExpression(), !1956)
    #dbg_value(i32 %pos_mem.0.i, !1951, !DIExpression(), !1956)
    #dbg_value(i32 %back_mem.0.i, !1952, !DIExpression(), !1956)
  %idxprom5.i = zext i32 %cur.addr.0.i to i64, !dbg !1964
  %arrayidx6.i = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %idxprom5.i, !dbg !1964
  %prev_1_is_literal.i317 = getelementptr inbounds i8, ptr %arrayidx6.i, i64 4, !dbg !1966
  %527 = load i8, ptr %prev_1_is_literal.i317, align 4, !dbg !1966, !range !1182, !noalias !1959, !noundef !1183
  %loadedv.i318 = trunc nuw i8 %527 to i1, !dbg !1966
  %idxprom8.i = zext i32 %pos_mem.0.i to i64
  %arrayidx9.i = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %idxprom8.i
  %back_prev.i.i319 = getelementptr inbounds i8, ptr %arrayidx9.i, i64 24
  br i1 %loadedv.i318, label %if.then.i322, label %do.body.if.end40_crit_edge.i, !dbg !1967

do.body.if.end40_crit_edge.i:                     ; preds = %do.body.i316
  %.pre.i320 = load i32, ptr %back_prev.i.i319, align 4, !dbg !1968, !noalias !1959
  %pos_prev49.phi.trans.insert.i = getelementptr inbounds i8, ptr %arrayidx9.i, i64 20
  %.pre106.i = load i32, ptr %pos_prev49.phi.trans.insert.i, align 4, !dbg !1969, !noalias !1959
  br label %if.end40.i, !dbg !1967

if.then.i322:                                     ; preds = %do.body.i316
    #dbg_value(ptr %arrayidx9.i, !789, !DIExpression(), !1970)
  %prev_1_is_literal.i.i323 = getelementptr inbounds i8, ptr %arrayidx9.i, i64 4, !dbg !1973
  store i8 0, ptr %prev_1_is_literal.i.i323, align 4, !dbg !1974, !noalias !1959
  %sub.i324 = add i32 %pos_mem.0.i, -1, !dbg !1975
  %prev_2.i325 = getelementptr inbounds i8, ptr %arrayidx6.i, i64 5, !dbg !1976
  %528 = load i8, ptr %prev_2.i325, align 1, !dbg !1976, !range !1182, !noalias !1959, !noundef !1183
  %loadedv17.i = trunc nuw i8 %528 to i1, !dbg !1976
  br i1 %loadedv17.i, label %if.then18.i, label %if.end40.i, !dbg !1978

if.then18.i:                                      ; preds = %if.then.i322
  %idxprom21.i = zext i32 %sub.i324 to i64, !dbg !1979
  %arrayidx22.i = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %idxprom21.i, !dbg !1979
  %prev_1_is_literal23.i = getelementptr inbounds i8, ptr %arrayidx22.i, i64 4, !dbg !1981
  store i8 0, ptr %prev_1_is_literal23.i, align 4, !dbg !1982, !noalias !1959
  %pos_prev_2.i326 = getelementptr inbounds i8, ptr %arrayidx6.i, i64 8, !dbg !1983
  %pos_prev31.i = getelementptr inbounds i8, ptr %arrayidx22.i, i64 20, !dbg !1984
  %529 = load <2 x i32>, ptr %pos_prev_2.i326, align 4, !dbg !1983, !noalias !1959
  store <2 x i32> %529, ptr %pos_prev31.i, align 4, !dbg !1985, !noalias !1959
  br label %if.end40.i, !dbg !1986

if.end40.i:                                       ; preds = %if.then18.i, %if.then.i322, %do.body.if.end40_crit_edge.i
  %530 = phi i32 [ %.pre106.i, %do.body.if.end40_crit_edge.i ], [ %sub.i324, %if.then.i322 ], [ %sub.i324, %if.then18.i ], !dbg !1969
  %531 = phi i32 [ %.pre.i320, %do.body.if.end40_crit_edge.i ], [ -1, %if.then.i322 ], [ -1, %if.then18.i ], !dbg !1968
    #dbg_value(i32 %pos_mem.0.i, !1953, !DIExpression(), !1987)
    #dbg_value(i32 %back_mem.0.i, !1955, !DIExpression(), !1987)
    #dbg_value(i32 %531, !1952, !DIExpression(), !1956)
  %pos_prev49.i = getelementptr inbounds i8, ptr %arrayidx9.i, i64 20, !dbg !1969
    #dbg_value(i32 %530, !1951, !DIExpression(), !1956)
  store i32 %back_mem.0.i, ptr %back_prev.i.i319, align 4, !dbg !1988, !noalias !1959
  store i32 %cur.addr.0.i, ptr %pos_prev49.i, align 4, !dbg !1989, !noalias !1959
    #dbg_value(i32 %pos_mem.0.i, !1949, !DIExpression(), !1956)
  %cmp.not.i = icmp eq i32 %pos_mem.0.i, 0, !dbg !1990
  br i1 %cmp.not.i, label %backward.exit, label %do.body.i316, !dbg !1991, !llvm.loop !1992

backward.exit:                                    ; preds = %if.end40.i
  %pos_prev60.i = getelementptr inbounds i8, ptr %pcoder, i64 69368, !dbg !1994
  %532 = load i32, ptr %pos_prev60.i, align 4, !dbg !1994, !noalias !1959
  store i32 %532, ptr %opts_current_index, align 8, !dbg !1995, !noalias !1959
  store i32 %532, ptr %len_res, align 4, !dbg !1996, !alias.scope !1936, !noalias !1940
  %back_prev66.i = getelementptr inbounds i8, ptr %pcoder, i64 69372, !dbg !1997
  %533 = load i32, ptr %back_prev66.i, align 4, !dbg !1997, !noalias !1959
  store i32 %533, ptr %back_res, align 4, !dbg !1998, !alias.scope !1940, !noalias !1936
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %reps) #6, !dbg !1999
  br label %cleanup45

cleanup45:                                        ; preds = %helper1.exit.thread333, %helper1.exit.thread, %backward.exit, %helper1.exit, %if.then
  ret void, !dbg !1999
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare !dbg !2000 i32 @lzma_mf_find(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "liblzma/lzma/lzma_encoder_optimum_normal.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "028fd9e067aa234247a048911b07b4da")
!2 = !{!3, !11, !51}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 250, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "liblzma/api/lzma/base.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "81a3070447cc5b61b56cfbed076853db")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10}
!7 = !DIEnumerator(name: "LZMA_RUN", value: 0)
!8 = !DIEnumerator(name: "LZMA_SYNC_FLUSH", value: 1)
!9 = !DIEnumerator(name: "LZMA_FULL_FLUSH", value: 2)
!10 = !DIEnumerator(name: "LZMA_FINISH", value: 3)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !13, file: !12, line: 40, baseType: !5, size: 32, elements: !45)
!12 = !DIFile(filename: "liblzma/rangecoder/range_encoder.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "e02ad9079871d268a82b8ebf2e7d385d")
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 27, size: 5888, elements: !14)
!14 = !{!15, !21, !22, !25, !29, !32, !33, !37}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !13, file: !12, line: 28, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !17, line: 27, baseType: !18)
!17 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !19, line: 45, baseType: !20)
!19 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!20 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "cache_size", scope: !13, file: !12, line: 29, baseType: !16, size: 64, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !13, file: !12, line: 30, baseType: !23, size: 32, offset: 128)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !17, line: 26, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !19, line: 42, baseType: !5)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !13, file: !12, line: 31, baseType: !26, size: 8, offset: 160)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !17, line: 24, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !19, line: 38, baseType: !28)
!28 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !13, file: !12, line: 34, baseType: !30, size: 64, offset: 192)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !31, line: 18, baseType: !20)
!31 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!32 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !13, file: !12, line: 37, baseType: !30, size: 64, offset: 256)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "symbols", scope: !13, file: !12, line: 46, baseType: !34, size: 1856, offset: 320)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 1856, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 58)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "probs", scope: !13, file: !12, line: 49, baseType: !38, size: 3712, offset: 2176)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 3712, elements: !35)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "probability", file: !41, line: 71, baseType: !42)
!41 = !DIFile(filename: "liblzma/rangecoder/range_common.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "7d3e93a1bf35640522f499de026cfdad")
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !17, line: 25, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !19, line: 40, baseType: !44)
!44 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!45 = !{!46, !47, !48, !49, !50}
!46 = !DIEnumerator(name: "RC_BIT_0", value: 0)
!47 = !DIEnumerator(name: "RC_BIT_1", value: 1)
!48 = !DIEnumerator(name: "RC_DIRECT_0", value: 2)
!49 = !DIEnumerator(name: "RC_DIRECT_1", value: 3)
!50 = !DIEnumerator(name: "RC_FLUSH", value: 4)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !52, line: 56, baseType: !5, size: 32, elements: !53)
!52 = !DIFile(filename: "liblzma/lzma/lzma_common.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "ce364754aa91e57f603599f25328df33")
!53 = !{!54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65}
!54 = !DIEnumerator(name: "STATE_LIT_LIT", value: 0)
!55 = !DIEnumerator(name: "STATE_MATCH_LIT_LIT", value: 1)
!56 = !DIEnumerator(name: "STATE_REP_LIT_LIT", value: 2)
!57 = !DIEnumerator(name: "STATE_SHORTREP_LIT_LIT", value: 3)
!58 = !DIEnumerator(name: "STATE_MATCH_LIT", value: 4)
!59 = !DIEnumerator(name: "STATE_REP_LIT", value: 5)
!60 = !DIEnumerator(name: "STATE_SHORTREP_LIT", value: 6)
!61 = !DIEnumerator(name: "STATE_LIT_MATCH", value: 7)
!62 = !DIEnumerator(name: "STATE_LIT_LONGREP", value: 8)
!63 = !DIEnumerator(name: "STATE_LIT_SHORTREP", value: 9)
!64 = !DIEnumerator(name: "STATE_NONLIT_MATCH", value: 10)
!65 = !DIEnumerator(name: "STATE_NONLIT_REP", value: 11)
!66 = !{i32 7, !"Dwarf Version", i32 5}
!67 = !{i32 2, !"Debug Info Version", i32 3}
!68 = !{i32 1, !"wchar_size", i32 4}
!69 = !{i32 8, !"PIC Level", i32 2}
!70 = !{i32 7, !"PIE Level", i32 2}
!71 = !{i32 7, !"uwtable", i32 2}
!72 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!73 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!74 = distinct !DISubprogram(name: "lzma_lzma_optimum_normal", scope: !1, file: !1, line: 824, type: !75, scopeLine: 827, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !125)
!75 = !DISubroutineType(types: !76)
!76 = !{null, !77, !80, !124, !124, !23}
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_coder", file: !79, line: 78, baseType: null)
!79 = !DIFile(filename: "liblzma/common/common.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!80 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_mf", file: !83, line: 28, baseType: !84)
!83 = !DIFile(filename: "liblzma/lz/lz_encoder.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "780f78e6e21a3ca52f57df68bfdc6f53")
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_mf_s", file: !83, line: 29, size: 960, elements: !85)
!85 = !{!86, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !107, !111, !113, !114, !115, !116, !117, !118, !119, !120, !122, !123}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !84, file: !83, line: 35, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !84, file: !83, line: 39, baseType: !23, size: 32, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "keep_size_before", scope: !84, file: !83, line: 45, baseType: !23, size: 32, offset: 96)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "keep_size_after", scope: !84, file: !83, line: 51, baseType: !23, size: 32, offset: 128)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !84, file: !83, line: 58, baseType: !23, size: 32, offset: 160)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !84, file: !83, line: 63, baseType: !23, size: 32, offset: 192)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "read_ahead", scope: !84, file: !83, line: 67, baseType: !23, size: 32, offset: 224)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "read_limit", scope: !84, file: !83, line: 75, baseType: !23, size: 32, offset: 256)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "write_pos", scope: !84, file: !83, line: 80, baseType: !23, size: 32, offset: 288)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !84, file: !83, line: 84, baseType: !23, size: 32, offset: 320)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "find", scope: !84, file: !83, line: 92, baseType: !98, size: 64, offset: 384)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DISubroutineType(types: !100)
!100 = !{!23, !81, !101}
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_match", file: !83, line: 25, baseType: !103)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !83, line: 22, size: 64, elements: !104)
!104 = !{!105, !106}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !103, file: !83, line: 23, baseType: !23, size: 32)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "dist", scope: !103, file: !83, line: 24, baseType: !23, size: 32, offset: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !84, file: !83, line: 97, baseType: !108, size: 64, offset: 448)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DISubroutineType(types: !110)
!110 = !{null, !81, !23}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !84, file: !83, line: 99, baseType: !112, size: 64, offset: 512)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "son", scope: !84, file: !83, line: 100, baseType: !112, size: 64, offset: 576)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "cyclic_pos", scope: !84, file: !83, line: 101, baseType: !23, size: 32, offset: 640)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "cyclic_size", scope: !84, file: !83, line: 102, baseType: !23, size: 32, offset: 672)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "hash_mask", scope: !84, file: !83, line: 103, baseType: !23, size: 32, offset: 704)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !84, file: !83, line: 106, baseType: !23, size: 32, offset: 736)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "nice_len", scope: !84, file: !83, line: 109, baseType: !23, size: 32, offset: 768)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "match_len_max", scope: !84, file: !83, line: 114, baseType: !23, size: 32, offset: 800)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !84, file: !83, line: 119, baseType: !121, size: 32, offset: 832)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !4, line: 322, baseType: !3)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "hash_size_sum", scope: !84, file: !83, line: 122, baseType: !23, size: 32, offset: 864)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "sons_count", scope: !84, file: !83, line: 125, baseType: !23, size: 32, offset: 896)
!124 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !112)
!125 = !{!126, !127, !128, !129, !130, !131, !236, !237, !238}
!126 = !DILocalVariable(name: "pcoder", arg: 1, scope: !74, file: !1, line: 824, type: !77)
!127 = !DILocalVariable(name: "mf", arg: 2, scope: !74, file: !1, line: 824, type: !80)
!128 = !DILocalVariable(name: "back_res", arg: 3, scope: !74, file: !1, line: 825, type: !124)
!129 = !DILocalVariable(name: "len_res", arg: 4, scope: !74, file: !1, line: 825, type: !124)
!130 = !DILocalVariable(name: "position", arg: 5, scope: !74, file: !1, line: 826, type: !23)
!131 = !DILocalVariable(name: "coder", scope: !74, file: !1, line: 828, type: !132)
!132 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_coder_s", file: !135, line: 72, size: 1996608, elements: !136)
!135 = !DIFile(filename: "liblzma/lzma/lzma_encoder_private.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "0c1b7b41ddfbed104b8c32f19cfcc2b2")
!136 = !{!137, !139, !141, !145, !149, !150, !151, !153, !154, !155, !156, !157, !158, !163, !167, !170, !171, !172, !173, !174, !178, !182, !185, !207, !208, !210, !214, !215, !216, !217, !218, !219, !220}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !134, file: !135, line: 74, baseType: !138, size: 5888)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_range_encoder", file: !12, line: 51, baseType: !13)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !134, file: !135, line: 77, baseType: !140, size: 32, offset: 5888)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_lzma_state", file: !52, line: 69, baseType: !51)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "reps", scope: !134, file: !135, line: 80, baseType: !142, size: 128, offset: 5920)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 128, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 4)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "matches", scope: !134, file: !135, line: 83, baseType: !146, size: 17536, offset: 6048)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 17536, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 274)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "matches_count", scope: !134, file: !135, line: 86, baseType: !23, size: 32, offset: 23584)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "longest_match_length", scope: !134, file: !135, line: 90, baseType: !23, size: 32, offset: 23616)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "fast_mode", scope: !134, file: !135, line: 93, baseType: !152, size: 8, offset: 23648)
!152 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "is_initialized", scope: !134, file: !135, line: 97, baseType: !152, size: 8, offset: 23656)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "is_flushed", scope: !134, file: !135, line: 101, baseType: !152, size: 8, offset: 23664)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "pos_mask", scope: !134, file: !135, line: 103, baseType: !23, size: 32, offset: 23680)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "literal_context_bits", scope: !134, file: !135, line: 104, baseType: !23, size: 32, offset: 23712)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "literal_pos_mask", scope: !134, file: !135, line: 105, baseType: !23, size: 32, offset: 23744)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "literal", scope: !134, file: !135, line: 108, baseType: !159, size: 196608, offset: 23776)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 196608, elements: !160)
!160 = !{!161, !162}
!161 = !DISubrange(count: 16)
!162 = !DISubrange(count: 768)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "is_match", scope: !134, file: !135, line: 109, baseType: !164, size: 3072, offset: 220384)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 3072, elements: !165)
!165 = !{!166, !161}
!166 = !DISubrange(count: 12)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "is_rep", scope: !134, file: !135, line: 110, baseType: !168, size: 192, offset: 223456)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 192, elements: !169)
!169 = !{!166}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "is_rep0", scope: !134, file: !135, line: 111, baseType: !168, size: 192, offset: 223648)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "is_rep1", scope: !134, file: !135, line: 112, baseType: !168, size: 192, offset: 223840)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "is_rep2", scope: !134, file: !135, line: 113, baseType: !168, size: 192, offset: 224032)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "is_rep0_long", scope: !134, file: !135, line: 114, baseType: !164, size: 3072, offset: 224224)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "pos_slot", scope: !134, file: !135, line: 115, baseType: !175, size: 4096, offset: 227296)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 4096, elements: !176)
!176 = !{!144, !177}
!177 = !DISubrange(count: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "pos_special", scope: !134, file: !135, line: 116, baseType: !179, size: 1824, offset: 231392)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 1824, elements: !180)
!180 = !{!181}
!181 = !DISubrange(count: 114)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "pos_align", scope: !134, file: !135, line: 117, baseType: !183, size: 256, offset: 233216)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 256, elements: !184)
!184 = !{!161}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "match_len_encoder", scope: !134, file: !135, line: 121, baseType: !186, size: 148032, offset: 233472)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_length_encoder", file: !135, line: 51, baseType: !187)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !135, line: 40, size: 148032, elements: !188)
!188 = !{!189, !190, !191, !195, !196, !200, !204, !205}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "choice", scope: !187, file: !135, line: 41, baseType: !40, size: 16)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "choice2", scope: !187, file: !135, line: 42, baseType: !40, size: 16, offset: 16)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !187, file: !135, line: 43, baseType: !192, size: 2048, offset: 32)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 2048, elements: !193)
!193 = !{!161, !194}
!194 = !DISubrange(count: 8)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "mid", scope: !187, file: !135, line: 44, baseType: !192, size: 2048, offset: 2080)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !187, file: !135, line: 45, baseType: !197, size: 4096, offset: 4128)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 4096, elements: !198)
!198 = !{!199}
!199 = !DISubrange(count: 256)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "prices", scope: !187, file: !135, line: 47, baseType: !201, size: 139264, offset: 8224)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 139264, elements: !202)
!202 = !{!161, !203}
!203 = !DISubrange(count: 272)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "table_size", scope: !187, file: !135, line: 48, baseType: !23, size: 32, offset: 147488)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !187, file: !135, line: 49, baseType: !206, size: 512, offset: 147520)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 512, elements: !184)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "rep_len_encoder", scope: !134, file: !135, line: 122, baseType: !186, size: 148032, offset: 381504)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "pos_slot_prices", scope: !134, file: !135, line: 125, baseType: !209, size: 8192, offset: 529536)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8192, elements: !176)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "distances_prices", scope: !134, file: !135, line: 126, baseType: !211, size: 16384, offset: 537728)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 16384, elements: !212)
!212 = !{!144, !213}
!213 = !DISubrange(count: 128)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "dist_table_size", scope: !134, file: !135, line: 127, baseType: !23, size: 32, offset: 554112)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "match_price_count", scope: !134, file: !135, line: 128, baseType: !23, size: 32, offset: 554144)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "align_prices", scope: !134, file: !135, line: 130, baseType: !206, size: 512, offset: 554176)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "align_price_count", scope: !134, file: !135, line: 131, baseType: !23, size: 32, offset: 554688)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "opts_end_index", scope: !134, file: !135, line: 134, baseType: !23, size: 32, offset: 554720)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "opts_current_index", scope: !134, file: !135, line: 135, baseType: !23, size: 32, offset: 554752)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !134, file: !135, line: 136, baseType: !221, size: 1441792, offset: 554784)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 1441792, elements: !234)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_optimal", file: !135, line: 69, baseType: !223)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !135, line: 54, size: 352, elements: !224)
!224 = !{!225, !226, !227, !228, !229, !230, !231, !232, !233}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !223, file: !135, line: 55, baseType: !140, size: 32)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "prev_1_is_literal", scope: !223, file: !135, line: 57, baseType: !152, size: 8, offset: 32)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "prev_2", scope: !223, file: !135, line: 58, baseType: !152, size: 8, offset: 40)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "pos_prev_2", scope: !223, file: !135, line: 60, baseType: !23, size: 32, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "back_prev_2", scope: !223, file: !135, line: 61, baseType: !23, size: 32, offset: 96)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "price", scope: !223, file: !135, line: 63, baseType: !23, size: 32, offset: 128)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "pos_prev", scope: !223, file: !135, line: 64, baseType: !23, size: 32, offset: 160)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "back_prev", scope: !223, file: !135, line: 65, baseType: !23, size: 32, offset: 192)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "backs", scope: !223, file: !135, line: 67, baseType: !142, size: 128, offset: 224)
!234 = !{!235}
!235 = !DISubrange(count: 4096)
!236 = !DILocalVariable(name: "len_end", scope: !74, file: !1, line: 855, type: !23)
!237 = !DILocalVariable(name: "reps", scope: !74, file: !1, line: 859, type: !142)
!238 = !DILocalVariable(name: "cur", scope: !74, file: !1, line: 862, type: !23)
!239 = distinct !DIAssignID()
!240 = !DILocalVariable(name: "matches_count", scope: !241, file: !1, line: 289, type: !23)
!241 = distinct !DISubprogram(name: "helper1", scope: !1, file: !1, line: 281, type: !242, scopeLine: 284, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !244)
!242 = !DISubroutineType(types: !243)
!243 = !{!23, !77, !80, !124, !124, !23}
!244 = !{!245, !246, !247, !248, !249, !250, !251, !253, !240, !254, !255, !259, !260, !261, !263, !266, !267, !268, !269, !270, !271, !272, !275, !276, !278, !279, !281, !284, !285, !287, !288, !291, !295}
!245 = !DILocalVariable(name: "pcoder", arg: 1, scope: !241, file: !1, line: 281, type: !77)
!246 = !DILocalVariable(name: "mf", arg: 2, scope: !241, file: !1, line: 281, type: !80)
!247 = !DILocalVariable(name: "back_res", arg: 3, scope: !241, file: !1, line: 282, type: !124)
!248 = !DILocalVariable(name: "len_res", arg: 4, scope: !241, file: !1, line: 282, type: !124)
!249 = !DILocalVariable(name: "position", arg: 5, scope: !241, file: !1, line: 283, type: !23)
!250 = !DILocalVariable(name: "coder", scope: !241, file: !1, line: 285, type: !132)
!251 = !DILocalVariable(name: "nice_len", scope: !241, file: !1, line: 286, type: !252)
!252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!253 = !DILocalVariable(name: "len_main", scope: !241, file: !1, line: 288, type: !23)
!254 = !DILocalVariable(name: "buf_avail", scope: !241, file: !1, line: 299, type: !252)
!255 = !DILocalVariable(name: "buf", scope: !241, file: !1, line: 306, type: !256)
!256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !257)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!259 = !DILocalVariable(name: "rep_lens", scope: !241, file: !1, line: 308, type: !142)
!260 = !DILocalVariable(name: "rep_max_index", scope: !241, file: !1, line: 309, type: !23)
!261 = !DILocalVariable(name: "i", scope: !262, file: !1, line: 311, type: !23)
!262 = distinct !DILexicalBlock(scope: !241, file: !1, line: 311, column: 2)
!263 = !DILocalVariable(name: "buf_back", scope: !264, file: !1, line: 312, type: !256)
!264 = distinct !DILexicalBlock(scope: !265, file: !1, line: 311, column: 47)
!265 = distinct !DILexicalBlock(scope: !262, file: !1, line: 311, column: 2)
!266 = !DILocalVariable(name: "len_test", scope: !264, file: !1, line: 319, type: !23)
!267 = !DILocalVariable(name: "current_byte", scope: !241, file: !1, line: 345, type: !258)
!268 = !DILocalVariable(name: "match_byte", scope: !241, file: !1, line: 346, type: !258)
!269 = !DILocalVariable(name: "pos_state", scope: !241, file: !1, line: 357, type: !252)
!270 = !DILocalVariable(name: "match_price", scope: !241, file: !1, line: 367, type: !252)
!271 = !DILocalVariable(name: "rep_match_price", scope: !241, file: !1, line: 369, type: !252)
!272 = !DILocalVariable(name: "short_rep_price", scope: !273, file: !1, line: 373, type: !252)
!273 = distinct !DILexicalBlock(scope: !274, file: !1, line: 372, column: 34)
!274 = distinct !DILexicalBlock(scope: !241, file: !1, line: 372, column: 6)
!275 = !DILocalVariable(name: "len_end", scope: !241, file: !1, line: 383, type: !252)
!276 = !DILocalVariable(name: "i", scope: !277, file: !1, line: 393, type: !23)
!277 = distinct !DILexicalBlock(scope: !241, file: !1, line: 393, column: 2)
!278 = !DILocalVariable(name: "len", scope: !241, file: !1, line: 396, type: !23)
!279 = !DILocalVariable(name: "i", scope: !280, file: !1, line: 402, type: !23)
!280 = distinct !DILexicalBlock(scope: !241, file: !1, line: 402, column: 2)
!281 = !DILocalVariable(name: "rep_len", scope: !282, file: !1, line: 403, type: !23)
!282 = distinct !DILexicalBlock(scope: !283, file: !1, line: 402, column: 47)
!283 = distinct !DILexicalBlock(scope: !280, file: !1, line: 402, column: 2)
!284 = !DILocalVariable(name: "price", scope: !282, file: !1, line: 407, type: !252)
!285 = !DILocalVariable(name: "cur_and_len_price", scope: !286, file: !1, line: 411, type: !252)
!286 = distinct !DILexicalBlock(scope: !282, file: !1, line: 410, column: 6)
!287 = !DILocalVariable(name: "normal_match_price", scope: !241, file: !1, line: 426, type: !252)
!288 = !DILocalVariable(name: "i", scope: !289, file: !1, line: 431, type: !23)
!289 = distinct !DILexicalBlock(scope: !290, file: !1, line: 430, column: 23)
!290 = distinct !DILexicalBlock(scope: !241, file: !1, line: 430, column: 6)
!291 = !DILocalVariable(name: "dist", scope: !292, file: !1, line: 436, type: !252)
!292 = distinct !DILexicalBlock(scope: !293, file: !1, line: 435, column: 18)
!293 = distinct !DILexicalBlock(scope: !294, file: !1, line: 435, column: 3)
!294 = distinct !DILexicalBlock(scope: !289, file: !1, line: 435, column: 3)
!295 = !DILocalVariable(name: "cur_and_len_price", scope: !292, file: !1, line: 437, type: !252)
!296 = !DILocation(line: 0, scope: !241, inlinedAt: !297)
!297 = distinct !DILocation(line: 855, column: 21, scope: !74)
!298 = distinct !DIAssignID()
!299 = distinct !DIAssignID()
!300 = !DILocation(line: 0, scope: !74)
!301 = !DILocation(line: 830, column: 13, scope: !302)
!302 = distinct !DILexicalBlock(scope: !74, file: !1, line: 830, column: 6)
!303 = !DILocation(line: 830, column: 38, scope: !302)
!304 = !DILocation(line: 830, column: 28, scope: !302)
!305 = !DILocation(line: 830, column: 6, scope: !74)
!306 = !DILocation(line: 832, column: 21, scope: !307)
!307 = distinct !DILexicalBlock(scope: !302, file: !1, line: 830, column: 58)
!308 = !DILocation(line: 832, column: 14, scope: !307)
!309 = !DILocation(line: 832, column: 53, scope: !307)
!310 = !DILocation(line: 833, column: 5, scope: !307)
!311 = !DILocation(line: 832, column: 12, scope: !307)
!312 = !DILocation(line: 834, column: 54, scope: !307)
!313 = !DILocation(line: 834, column: 13, scope: !307)
!314 = !DILocation(line: 835, column: 29, scope: !307)
!315 = !DILocation(line: 837, column: 3, scope: !307)
!316 = !DILocation(line: 843, column: 10, scope: !317)
!317 = distinct !DILexicalBlock(scope: !74, file: !1, line: 843, column: 6)
!318 = !DILocation(line: 843, column: 21, scope: !317)
!319 = !DILocation(line: 843, column: 6, scope: !74)
!320 = !{!321}
!321 = distinct !{!321, !322, !"helper1: %mf:thread"}
!322 = distinct !{!322, !"helper1"}
!323 = !DILocation(line: 855, column: 21, scope: !74)
!324 = !DILocation(line: 286, column: 32, scope: !241, inlinedAt: !297)
!325 = !{!326, !327}
!326 = distinct !{!326, !322, !"helper1: %back_res:thread"}
!327 = distinct !{!327, !322, !"helper1: %len_res:thread"}
!328 = !DILocation(line: 289, column: 2, scope: !241, inlinedAt: !297)
!329 = !{!321, !326, !327}
!330 = !DILocation(line: 295, column: 21, scope: !331, inlinedAt: !297)
!331 = distinct !DILexicalBlock(scope: !332, file: !1, line: 293, column: 9)
!332 = distinct !DILexicalBlock(scope: !241, file: !1, line: 291, column: 6)
!333 = !{!334, !335, !336}
!334 = distinct !{!334, !322, !"helper1: %mf"}
!335 = distinct !{!335, !322, !"helper1: %back_res"}
!336 = distinct !{!336, !322, !"helper1: %len_res"}
!337 = !DILocation(line: 296, column: 26, scope: !331, inlinedAt: !297)
!338 = !DILocation(line: 296, column: 17, scope: !331, inlinedAt: !297)
!339 = distinct !DIAssignID()
!340 = !DILocation(line: 844, column: 14, scope: !341)
!341 = distinct !DILexicalBlock(scope: !342, file: !1, line: 844, column: 7)
!342 = distinct !DILexicalBlock(scope: !317, file: !1, line: 843, column: 27)
!343 = !DILocation(line: 844, column: 32, scope: !341)
!344 = !DILocation(line: 844, column: 7, scope: !342)
!345 = !DILocalVariable(name: "pcoder", arg: 1, scope: !346, file: !1, line: 137, type: !77)
!346 = distinct !DISubprogram(name: "fill_distances_prices", scope: !1, file: !1, line: 137, type: !347, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !349)
!347 = !DISubroutineType(types: !348)
!348 = !{null, !77}
!349 = !{!345, !350, !351, !353, !357, !359, !361, !363, !365, !368, !369, !370, !371}
!350 = !DILocalVariable(name: "coder", scope: !346, file: !1, line: 139, type: !133)
!351 = !DILocalVariable(name: "len_to_pos_state", scope: !352, file: !1, line: 140, type: !23)
!352 = distinct !DILexicalBlock(scope: !346, file: !1, line: 140, column: 2)
!353 = !DILocalVariable(name: "pos_slot_prices", scope: !354, file: !1, line: 144, type: !356)
!354 = distinct !DILexicalBlock(scope: !355, file: !1, line: 142, column: 24)
!355 = distinct !DILexicalBlock(scope: !352, file: !1, line: 140, column: 2)
!356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!357 = !DILocalVariable(name: "pos_slot", scope: !358, file: !1, line: 148, type: !23)
!358 = distinct !DILexicalBlock(scope: !354, file: !1, line: 148, column: 3)
!359 = !DILocalVariable(name: "pos_slot", scope: !360, file: !1, line: 157, type: !23)
!360 = distinct !DILexicalBlock(scope: !354, file: !1, line: 157, column: 3)
!361 = !DILocalVariable(name: "i", scope: !362, file: !1, line: 165, type: !23)
!362 = distinct !DILexicalBlock(scope: !354, file: !1, line: 165, column: 3)
!363 = !DILocalVariable(name: "i", scope: !364, file: !1, line: 173, type: !23)
!364 = distinct !DILexicalBlock(scope: !346, file: !1, line: 173, column: 2)
!365 = !DILocalVariable(name: "pos_slot", scope: !366, file: !1, line: 174, type: !252)
!366 = distinct !DILexicalBlock(scope: !367, file: !1, line: 173, column: 68)
!367 = distinct !DILexicalBlock(scope: !364, file: !1, line: 173, column: 2)
!368 = !DILocalVariable(name: "footer_bits", scope: !366, file: !1, line: 175, type: !252)
!369 = !DILocalVariable(name: "base", scope: !366, file: !1, line: 176, type: !252)
!370 = !DILocalVariable(name: "price", scope: !366, file: !1, line: 177, type: !252)
!371 = !DILocalVariable(name: "len_to_pos_state", scope: !372, file: !1, line: 181, type: !23)
!372 = distinct !DILexicalBlock(scope: !366, file: !1, line: 181, column: 3)
!373 = !DILocation(line: 0, scope: !346, inlinedAt: !374)
!374 = distinct !DILocation(line: 845, column: 4, scope: !341)
!375 = !DILocation(line: 0, scope: !352, inlinedAt: !374)
!376 = !DILocation(line: 0, scope: !354, inlinedAt: !374)
!377 = !DILocation(line: 0, scope: !358, inlinedAt: !374)
!378 = !DILocation(line: 149, column: 23, scope: !379, inlinedAt: !374)
!379 = distinct !DILexicalBlock(scope: !358, file: !1, line: 148, column: 3)
!380 = !DILocation(line: 149, column: 14, scope: !379, inlinedAt: !374)
!381 = !DILocation(line: 148, column: 3, scope: !358, inlinedAt: !374)
!382 = !DILocation(line: 0, scope: !360, inlinedAt: !374)
!383 = !DILocation(line: 158, column: 14, scope: !384, inlinedAt: !374)
!384 = distinct !DILexicalBlock(scope: !360, file: !1, line: 157, column: 3)
!385 = !DILocation(line: 157, column: 3, scope: !360, inlinedAt: !374)
!386 = !DILocalVariable(name: "probs", arg: 1, scope: !387, file: !388, line: 52, type: !391)
!387 = distinct !DISubprogram(name: "rc_bittree_price", scope: !388, file: !388, line: 52, type: !389, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !394)
!388 = !DIFile(filename: "liblzma/rangecoder/price.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "97acd9ecb91079df77ddfdfaeeb4fcaf")
!389 = !DISubroutineType(types: !390)
!390 = !{!23, !391, !252, !23}
!391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !392)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!394 = !{!386, !395, !396, !397, !398}
!395 = !DILocalVariable(name: "bit_levels", arg: 2, scope: !387, file: !388, line: 53, type: !252)
!396 = !DILocalVariable(name: "symbol", arg: 3, scope: !387, file: !388, line: 53, type: !23)
!397 = !DILocalVariable(name: "price", scope: !387, file: !388, line: 55, type: !23)
!398 = !DILocalVariable(name: "bit", scope: !399, file: !388, line: 59, type: !252)
!399 = distinct !DILexicalBlock(scope: !387, file: !388, line: 58, column: 5)
!400 = !DILocation(line: 0, scope: !387, inlinedAt: !401)
!401 = distinct !DILocation(line: 150, column: 32, scope: !379, inlinedAt: !374)
!402 = !DILocation(line: 56, column: 9, scope: !387, inlinedAt: !401)
!403 = !DILocation(line: 58, column: 2, scope: !387, inlinedAt: !401)
!404 = !DILocation(line: 59, column: 31, scope: !399, inlinedAt: !401)
!405 = !DILocation(line: 0, scope: !399, inlinedAt: !401)
!406 = !DILocation(line: 60, column: 10, scope: !399, inlinedAt: !401)
!407 = !DILocation(line: 61, column: 25, scope: !399, inlinedAt: !401)
!408 = !DILocalVariable(name: "prob", arg: 1, scope: !409, file: !388, line: 29, type: !393)
!409 = distinct !DISubprogram(name: "rc_bit_price", scope: !388, file: !388, line: 29, type: !410, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !412)
!410 = !DISubroutineType(types: !411)
!411 = !{!23, !393, !252}
!412 = !{!408, !413}
!413 = !DILocalVariable(name: "bit", arg: 2, scope: !409, file: !388, line: 29, type: !252)
!414 = !DILocation(line: 0, scope: !409, inlinedAt: !415)
!415 = distinct !DILocation(line: 61, column: 12, scope: !399, inlinedAt: !401)
!416 = !DILocation(line: 31, column: 25, scope: !409, inlinedAt: !415)
!417 = !DILocation(line: 32, column: 4, scope: !409, inlinedAt: !415)
!418 = !DILocation(line: 31, column: 30, scope: !409, inlinedAt: !415)
!419 = !DILocation(line: 32, column: 33, scope: !409, inlinedAt: !415)
!420 = !DILocation(line: 31, column: 9, scope: !409, inlinedAt: !415)
!421 = !DILocation(line: 61, column: 9, scope: !399, inlinedAt: !401)
!422 = !DILocation(line: 62, column: 18, scope: !387, inlinedAt: !401)
!423 = !DILocation(line: 62, column: 2, scope: !399, inlinedAt: !401)
!424 = distinct !{!424, !403, !425}
!425 = !DILocation(line: 62, column: 22, scope: !387, inlinedAt: !401)
!426 = !DILocation(line: 150, column: 4, scope: !379, inlinedAt: !374)
!427 = !DILocation(line: 150, column: 30, scope: !379, inlinedAt: !374)
!428 = !DILocation(line: 149, column: 40, scope: !379, inlinedAt: !374)
!429 = distinct !{!429, !381, !430}
!430 = !DILocation(line: 152, column: 29, scope: !358, inlinedAt: !374)
!431 = !DILocation(line: 0, scope: !362, inlinedAt: !374)
!432 = !DILocation(line: 167, column: 8, scope: !433, inlinedAt: !374)
!433 = distinct !DILexicalBlock(scope: !362, file: !1, line: 165, column: 3)
!434 = !DILocation(line: 167, column: 6, scope: !433, inlinedAt: !374)
!435 = !DILocation(line: 145, column: 7, scope: !354, inlinedAt: !374)
!436 = !DILocalVariable(name: "bits", arg: 1, scope: !437, file: !388, line: 87, type: !252)
!437 = distinct !DISubprogram(name: "rc_direct_price", scope: !388, file: !388, line: 87, type: !438, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !440)
!438 = !DISubroutineType(types: !439)
!439 = !{!23, !252}
!440 = !{!436}
!441 = !DILocation(line: 0, scope: !437, inlinedAt: !442)
!442 = distinct !DILocation(line: 159, column: 33, scope: !384, inlinedAt: !374)
!443 = !DILocation(line: 89, column: 15, scope: !437, inlinedAt: !442)
!444 = !DILocation(line: 159, column: 4, scope: !384, inlinedAt: !374)
!445 = !DILocation(line: 159, column: 30, scope: !384, inlinedAt: !374)
!446 = !DILocation(line: 158, column: 40, scope: !384, inlinedAt: !374)
!447 = !DILocation(line: 158, column: 23, scope: !384, inlinedAt: !374)
!448 = distinct !{!448, !385, !449}
!449 = !DILocation(line: 160, column: 40, scope: !360, inlinedAt: !374)
!450 = distinct !{!450, !403, !425}
!451 = distinct !{!451, !381, !430}
!452 = distinct !{!452, !385, !449}
!453 = !DILocation(line: 166, column: 4, scope: !433, inlinedAt: !374)
!454 = distinct !{!454, !403, !425}
!455 = distinct !{!455, !381, !430}
!456 = distinct !{!456, !385, !449}
!457 = distinct !{!457, !403, !425}
!458 = distinct !{!458, !381, !430}
!459 = distinct !{!459, !385, !449}
!460 = !DILocation(line: 0, scope: !364, inlinedAt: !374)
!461 = !DILocation(line: 173, column: 2, scope: !364, inlinedAt: !374)
!462 = !DILocalVariable(name: "pos", arg: 1, scope: !463, file: !464, line: 108, type: !23)
!463 = distinct !DISubprogram(name: "get_pos_slot", scope: !464, file: !464, line: 108, type: !465, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !467)
!464 = !DIFile(filename: "liblzma/lzma/fastpos.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "cbaa9cd9040be4a8dee21ea4da47c8df")
!465 = !DISubroutineType(types: !466)
!466 = !{!23, !23}
!467 = !{!462}
!468 = !DILocation(line: 0, scope: !463, inlinedAt: !469)
!469 = distinct !DILocation(line: 174, column: 29, scope: !366, inlinedAt: !374)
!470 = !DILocation(line: 113, column: 10, scope: !471, inlinedAt: !469)
!471 = distinct !DILexicalBlock(scope: !463, file: !464, line: 112, column: 6)
!472 = !DILocation(line: 0, scope: !366, inlinedAt: !374)
!473 = !DILocation(line: 175, column: 43, scope: !366, inlinedAt: !374)
!474 = !DILocation(line: 175, column: 49, scope: !366, inlinedAt: !374)
!475 = !DILocation(line: 176, column: 40, scope: !366, inlinedAt: !374)
!476 = !DILocation(line: 176, column: 28, scope: !366, inlinedAt: !374)
!477 = !DILocation(line: 176, column: 46, scope: !366, inlinedAt: !374)
!478 = !DILocation(line: 178, column: 24, scope: !366, inlinedAt: !374)
!479 = !DILocation(line: 178, column: 31, scope: !366, inlinedAt: !374)
!480 = !DILocation(line: 178, column: 42, scope: !366, inlinedAt: !374)
!481 = !DILocation(line: 179, column: 20, scope: !366, inlinedAt: !374)
!482 = !DILocalVariable(name: "probs", arg: 1, scope: !483, file: !388, line: 69, type: !391)
!483 = distinct !DISubprogram(name: "rc_bittree_reverse_price", scope: !388, file: !388, line: 69, type: !484, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !486)
!484 = !DISubroutineType(types: !485)
!485 = !{!23, !391, !23, !23}
!486 = !{!482, !487, !488, !489, !490, !491}
!487 = !DILocalVariable(name: "bit_levels", arg: 2, scope: !483, file: !388, line: 70, type: !23)
!488 = !DILocalVariable(name: "symbol", arg: 3, scope: !483, file: !388, line: 70, type: !23)
!489 = !DILocalVariable(name: "price", scope: !483, file: !388, line: 72, type: !23)
!490 = !DILocalVariable(name: "model_index", scope: !483, file: !388, line: 73, type: !23)
!491 = !DILocalVariable(name: "bit", scope: !492, file: !388, line: 76, type: !252)
!492 = distinct !DILexicalBlock(scope: !483, file: !388, line: 75, column: 5)
!493 = !DILocation(line: 0, scope: !483, inlinedAt: !494)
!494 = distinct !DILocation(line: 177, column: 26, scope: !366, inlinedAt: !374)
!495 = !DILocation(line: 75, column: 2, scope: !483, inlinedAt: !494)
!496 = !DILocation(line: 76, column: 31, scope: !492, inlinedAt: !494)
!497 = !DILocation(line: 0, scope: !492, inlinedAt: !494)
!498 = !DILocation(line: 77, column: 10, scope: !492, inlinedAt: !494)
!499 = !DILocation(line: 78, column: 25, scope: !492, inlinedAt: !494)
!500 = !DILocation(line: 0, scope: !409, inlinedAt: !501)
!501 = distinct !DILocation(line: 78, column: 12, scope: !492, inlinedAt: !494)
!502 = !DILocation(line: 31, column: 25, scope: !409, inlinedAt: !501)
!503 = !DILocation(line: 32, column: 4, scope: !409, inlinedAt: !501)
!504 = !DILocation(line: 31, column: 30, scope: !409, inlinedAt: !501)
!505 = !DILocation(line: 32, column: 33, scope: !409, inlinedAt: !501)
!506 = !DILocation(line: 31, column: 9, scope: !409, inlinedAt: !501)
!507 = !DILocation(line: 78, column: 9, scope: !492, inlinedAt: !494)
!508 = !DILocation(line: 79, column: 30, scope: !492, inlinedAt: !494)
!509 = !DILocation(line: 79, column: 36, scope: !492, inlinedAt: !494)
!510 = !DILocation(line: 80, column: 2, scope: !492, inlinedAt: !494)
!511 = distinct !{!511, !495, !512}
!512 = !DILocation(line: 80, column: 28, scope: !483, inlinedAt: !494)
!513 = !DILocation(line: 185, column: 16, scope: !514, inlinedAt: !374)
!514 = distinct !DILexicalBlock(scope: !372, file: !1, line: 181, column: 3)
!515 = !DILocation(line: 0, scope: !372, inlinedAt: !374)
!516 = !DILocation(line: 185, column: 14, scope: !514, inlinedAt: !374)
!517 = !DILocation(line: 184, column: 4, scope: !514, inlinedAt: !374)
!518 = !DILocation(line: 185, column: 6, scope: !514, inlinedAt: !374)
!519 = !DILocation(line: 173, column: 63, scope: !367, inlinedAt: !374)
!520 = !DILocation(line: 173, column: 45, scope: !367, inlinedAt: !374)
!521 = distinct !{!521, !461, !522}
!522 = !DILocation(line: 187, column: 2, scope: !364, inlinedAt: !374)
!523 = !DILocation(line: 189, column: 27, scope: !346, inlinedAt: !374)
!524 = !DILocation(line: 845, column: 4, scope: !341)
!525 = !DILocation(line: 847, column: 14, scope: !526)
!526 = distinct !DILexicalBlock(scope: !342, file: !1, line: 847, column: 7)
!527 = !DILocation(line: 847, column: 32, scope: !526)
!528 = !DILocation(line: 847, column: 7, scope: !342)
!529 = !DILocalVariable(name: "pcoder", arg: 1, scope: !530, file: !1, line: 195, type: !77)
!530 = distinct !DISubprogram(name: "fill_align_prices", scope: !1, file: !1, line: 195, type: !347, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !531)
!531 = !{!529, !532, !533}
!532 = !DILocalVariable(name: "coder", scope: !530, file: !1, line: 197, type: !133)
!533 = !DILocalVariable(name: "i", scope: !534, file: !1, line: 198, type: !23)
!534 = distinct !DILexicalBlock(scope: !530, file: !1, line: 198, column: 2)
!535 = !DILocation(line: 0, scope: !530, inlinedAt: !536)
!536 = distinct !DILocation(line: 848, column: 4, scope: !526)
!537 = !DILocation(line: 0, scope: !534, inlinedAt: !536)
!538 = !DILocation(line: 78, column: 25, scope: !492, inlinedAt: !539)
!539 = distinct !DILocation(line: 199, column: 28, scope: !540, inlinedAt: !536)
!540 = distinct !DILexicalBlock(scope: !534, file: !1, line: 198, column: 2)
!541 = !DILocation(line: 198, column: 2, scope: !534, inlinedAt: !536)
!542 = !DILocation(line: 0, scope: !483, inlinedAt: !539)
!543 = !DILocation(line: 76, column: 31, scope: !492, inlinedAt: !539)
!544 = !DILocation(line: 0, scope: !492, inlinedAt: !539)
!545 = !DILocation(line: 77, column: 10, scope: !492, inlinedAt: !539)
!546 = !DILocation(line: 0, scope: !409, inlinedAt: !547)
!547 = distinct !DILocation(line: 78, column: 12, scope: !492, inlinedAt: !539)
!548 = !DILocation(line: 32, column: 4, scope: !409, inlinedAt: !547)
!549 = !DILocation(line: 31, column: 30, scope: !409, inlinedAt: !547)
!550 = !DILocation(line: 32, column: 33, scope: !409, inlinedAt: !547)
!551 = !DILocation(line: 31, column: 9, scope: !409, inlinedAt: !547)
!552 = !DILocation(line: 79, column: 36, scope: !492, inlinedAt: !539)
!553 = !DILocation(line: 31, column: 25, scope: !409, inlinedAt: !547)
!554 = !DILocation(line: 78, column: 9, scope: !492, inlinedAt: !539)
!555 = !DILocation(line: 79, column: 30, scope: !492, inlinedAt: !539)
!556 = !DILocation(line: 199, column: 3, scope: !540, inlinedAt: !536)
!557 = !DILocation(line: 199, column: 26, scope: !540, inlinedAt: !536)
!558 = !DILocation(line: 198, column: 45, scope: !540, inlinedAt: !536)
!559 = !DILocation(line: 198, column: 25, scope: !540, inlinedAt: !536)
!560 = distinct !{!560, !541, !561}
!561 = !DILocation(line: 200, column: 36, scope: !534, inlinedAt: !536)
!562 = !DILocation(line: 202, column: 27, scope: !530, inlinedAt: !536)
!563 = !DILocation(line: 848, column: 4, scope: !526)
!564 = !{!334}
!565 = !{!335}
!566 = !{!336}
!567 = !{!335, !336}
!568 = !DILocation(line: 292, column: 49, scope: !569, inlinedAt: !297)
!569 = distinct !DILexicalBlock(scope: !332, file: !1, line: 291, column: 27)
!570 = !DILocation(line: 292, column: 14, scope: !569, inlinedAt: !297)
!571 = !DILocation(line: 293, column: 2, scope: !569, inlinedAt: !297)
!572 = !DILocation(line: 0, scope: !332, inlinedAt: !297)
!573 = !DILocation(line: 299, column: 29, scope: !241, inlinedAt: !297)
!574 = !DILocalVariable(name: "mf", arg: 1, scope: !575, file: !83, line: 230, type: !578)
!575 = distinct !DISubprogram(name: "mf_avail", scope: !83, file: !83, line: 230, type: !576, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !580)
!576 = !DISubroutineType(types: !577)
!577 = !{!23, !578}
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!580 = !{!574}
!581 = !DILocation(line: 0, scope: !575, inlinedAt: !582)
!582 = distinct !DILocation(line: 299, column: 29, scope: !241, inlinedAt: !297)
!583 = !DILocation(line: 232, column: 23, scope: !575, inlinedAt: !582)
!584 = !DILocation(line: 0, scope: !575, inlinedAt: !585)
!585 = distinct !DILocation(line: 299, column: 29, scope: !241, inlinedAt: !297)
!586 = !DILocation(line: 300, column: 16, scope: !587, inlinedAt: !297)
!587 = distinct !DILexicalBlock(scope: !241, file: !1, line: 300, column: 6)
!588 = !DILocation(line: 300, column: 6, scope: !241, inlinedAt: !297)
!589 = !DILocation(line: 301, column: 13, scope: !590, inlinedAt: !297)
!590 = distinct !DILexicalBlock(scope: !587, file: !1, line: 300, column: 21)
!591 = !{!334, !336}
!592 = !DILocation(line: 302, column: 12, scope: !590, inlinedAt: !297)
!593 = !{!334, !335}
!594 = !DILocation(line: 456, column: 1, scope: !241, inlinedAt: !297)
!595 = !DILocation(line: 856, column: 6, scope: !74)
!596 = !DILocation(line: 306, column: 29, scope: !241, inlinedAt: !297)
!597 = !DILocalVariable(name: "mf", arg: 1, scope: !598, file: !83, line: 222, type: !578)
!598 = distinct !DISubprogram(name: "mf_ptr", scope: !83, file: !83, line: 222, type: !599, scopeLine: 223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !601)
!599 = !DISubroutineType(types: !600)
!600 = !{!257, !578}
!601 = !{!597}
!602 = !DILocation(line: 0, scope: !598, inlinedAt: !603)
!603 = distinct !DILocation(line: 306, column: 29, scope: !241, inlinedAt: !297)
!604 = !DILocation(line: 224, column: 20, scope: !598, inlinedAt: !603)
!605 = !DILocation(line: 306, column: 40, scope: !241, inlinedAt: !297)
!606 = !DILocation(line: 308, column: 2, scope: !241, inlinedAt: !297)
!607 = !DILocation(line: 0, scope: !262, inlinedAt: !297)
!608 = !DILocation(line: 312, column: 41, scope: !264, inlinedAt: !297)
!609 = !DILocation(line: 312, column: 39, scope: !264, inlinedAt: !297)
!610 = !DILocation(line: 312, column: 56, scope: !264, inlinedAt: !297)
!611 = !DILocation(line: 0, scope: !264, inlinedAt: !297)
!612 = !DILocation(line: 314, column: 7, scope: !613, inlinedAt: !297)
!613 = distinct !DILexicalBlock(scope: !264, file: !1, line: 314, column: 7)
!614 = !DILocation(line: 314, column: 7, scope: !264, inlinedAt: !297)
!615 = !DILocation(line: 320, column: 31, scope: !616, inlinedAt: !297)
!616 = distinct !DILexicalBlock(scope: !617, file: !1, line: 320, column: 3)
!617 = distinct !DILexicalBlock(scope: !264, file: !1, line: 320, column: 3)
!618 = !DILocation(line: 320, column: 3, scope: !617, inlinedAt: !297)
!619 = !DILocation(line: 321, column: 8, scope: !616, inlinedAt: !297)
!620 = !DILocation(line: 321, column: 25, scope: !616, inlinedAt: !297)
!621 = !DILocation(line: 321, column: 22, scope: !616, inlinedAt: !297)
!622 = !DILocation(line: 322, column: 5, scope: !616, inlinedAt: !297)
!623 = !DILocation(line: 321, column: 5, scope: !616, inlinedAt: !297)
!624 = distinct !{!624, !618, !625}
!625 = !DILocation(line: 322, column: 17, scope: !617, inlinedAt: !297)
!626 = !DILocation(line: 315, column: 4, scope: !627, inlinedAt: !297)
!627 = distinct !DILexicalBlock(scope: !613, file: !1, line: 314, column: 36)
!628 = !DILocation(line: 315, column: 16, scope: !627, inlinedAt: !297)
!629 = !DILocation(line: 316, column: 4, scope: !627, inlinedAt: !297)
!630 = distinct !{!630, !618, !625}
!631 = !DILocation(line: 324, column: 3, scope: !264, inlinedAt: !297)
!632 = !DILocation(line: 0, scope: !617, inlinedAt: !297)
!633 = !DILocation(line: 324, column: 15, scope: !264, inlinedAt: !297)
!634 = !DILocation(line: 325, column: 16, scope: !635, inlinedAt: !297)
!635 = distinct !DILexicalBlock(scope: !264, file: !1, line: 325, column: 7)
!636 = !DILocation(line: 325, column: 7, scope: !264, inlinedAt: !297)
!637 = !DILocation(line: 327, column: 2, scope: !265, inlinedAt: !297)
!638 = distinct !{!638, !618, !625}
!639 = !DILocation(line: 325, column: 18, scope: !635, inlinedAt: !297)
!640 = distinct !{!640, !618, !625}
!641 = !DILocation(line: 329, column: 6, scope: !642, inlinedAt: !297)
!642 = distinct !DILexicalBlock(scope: !241, file: !1, line: 329, column: 6)
!643 = !DILocation(line: 329, column: 30, scope: !642, inlinedAt: !297)
!644 = !DILocation(line: 329, column: 6, scope: !241, inlinedAt: !297)
!645 = !DILocation(line: 330, column: 13, scope: !646, inlinedAt: !297)
!646 = distinct !DILexicalBlock(scope: !642, file: !1, line: 329, column: 43)
!647 = !DILocation(line: 331, column: 12, scope: !646, inlinedAt: !297)
!648 = !DILocation(line: 332, column: 24, scope: !646, inlinedAt: !297)
!649 = !DILocalVariable(name: "mf", arg: 1, scope: !650, file: !83, line: 268, type: !81)
!650 = distinct !DISubprogram(name: "mf_skip", scope: !83, file: !83, line: 268, type: !109, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !651)
!651 = !{!649, !652}
!652 = !DILocalVariable(name: "amount", arg: 2, scope: !650, file: !83, line: 268, type: !23)
!653 = !DILocation(line: 0, scope: !650, inlinedAt: !654)
!654 = distinct !DILocation(line: 332, column: 3, scope: !646, inlinedAt: !297)
!655 = !DILocation(line: 270, column: 13, scope: !656, inlinedAt: !654)
!656 = distinct !DILexicalBlock(scope: !650, file: !83, line: 270, column: 6)
!657 = !DILocation(line: 270, column: 6, scope: !650, inlinedAt: !654)
!658 = !DILocation(line: 271, column: 7, scope: !659, inlinedAt: !654)
!659 = distinct !DILexicalBlock(scope: !656, file: !83, line: 270, column: 19)
!660 = !DILocation(line: 271, column: 3, scope: !659, inlinedAt: !654)
!661 = !DILocation(line: 272, column: 18, scope: !659, inlinedAt: !654)
!662 = !DILocation(line: 273, column: 2, scope: !659, inlinedAt: !654)
!663 = !DILocation(line: 337, column: 15, scope: !664, inlinedAt: !297)
!664 = distinct !DILexicalBlock(scope: !241, file: !1, line: 337, column: 6)
!665 = !DILocation(line: 337, column: 6, scope: !241, inlinedAt: !297)
!666 = !DILocation(line: 338, column: 22, scope: !667, inlinedAt: !297)
!667 = distinct !DILexicalBlock(scope: !664, file: !1, line: 337, column: 28)
!668 = !DILocation(line: 338, column: 30, scope: !667, inlinedAt: !297)
!669 = !DILocation(line: 338, column: 44, scope: !667, inlinedAt: !297)
!670 = !DILocation(line: 338, column: 15, scope: !667, inlinedAt: !297)
!671 = !DILocation(line: 338, column: 49, scope: !667, inlinedAt: !297)
!672 = !DILocation(line: 339, column: 5, scope: !667, inlinedAt: !297)
!673 = !DILocation(line: 338, column: 13, scope: !667, inlinedAt: !297)
!674 = !DILocation(line: 340, column: 12, scope: !667, inlinedAt: !297)
!675 = !DILocation(line: 341, column: 24, scope: !667, inlinedAt: !297)
!676 = !DILocation(line: 0, scope: !650, inlinedAt: !677)
!677 = distinct !DILocation(line: 341, column: 3, scope: !667, inlinedAt: !297)
!678 = !DILocation(line: 270, column: 13, scope: !656, inlinedAt: !677)
!679 = !DILocation(line: 270, column: 6, scope: !650, inlinedAt: !677)
!680 = !DILocation(line: 271, column: 7, scope: !659, inlinedAt: !677)
!681 = !DILocation(line: 271, column: 3, scope: !659, inlinedAt: !677)
!682 = !DILocation(line: 272, column: 18, scope: !659, inlinedAt: !677)
!683 = !DILocation(line: 273, column: 2, scope: !659, inlinedAt: !677)
!684 = !DILocation(line: 348, column: 19, scope: !685, inlinedAt: !297)
!685 = distinct !DILexicalBlock(scope: !241, file: !1, line: 348, column: 6)
!686 = !DILocation(line: 350, column: 13, scope: !687, inlinedAt: !297)
!687 = distinct !DILexicalBlock(scope: !685, file: !1, line: 349, column: 36)
!688 = !DILocation(line: 351, column: 12, scope: !687, inlinedAt: !297)
!689 = !DILocation(line: 352, column: 3, scope: !687, inlinedAt: !297)
!690 = !DILocation(line: 355, column: 32, scope: !241, inlinedAt: !297)
!691 = !DILocation(line: 355, column: 9, scope: !241, inlinedAt: !297)
!692 = !DILocation(line: 355, column: 23, scope: !241, inlinedAt: !297)
!693 = !DILocation(line: 357, column: 47, scope: !241, inlinedAt: !297)
!694 = !DILocation(line: 357, column: 38, scope: !241, inlinedAt: !297)
!695 = !DILocation(line: 360, column: 12, scope: !241, inlinedAt: !297)
!696 = !DILocation(line: 360, column: 5, scope: !241, inlinedAt: !297)
!697 = !DILocalVariable(name: "prob", arg: 1, scope: !698, file: !388, line: 37, type: !393)
!698 = distinct !DISubprogram(name: "rc_bit_0_price", scope: !388, file: !388, line: 37, type: !699, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !701)
!699 = !DISubroutineType(types: !700)
!700 = !{!23, !393}
!701 = !{!697}
!702 = !DILocation(line: 0, scope: !698, inlinedAt: !703)
!703 = distinct !DILocation(line: 359, column: 25, scope: !241, inlinedAt: !297)
!704 = !DILocation(line: 39, column: 29, scope: !698, inlinedAt: !703)
!705 = !DILocation(line: 39, column: 9, scope: !698, inlinedAt: !703)
!706 = !DILocation(line: 361, column: 41, scope: !241, inlinedAt: !297)
!707 = !DILocation(line: 362, column: 6, scope: !241, inlinedAt: !297)
!708 = !DILocation(line: 363, column: 17, scope: !241, inlinedAt: !297)
!709 = !DILocalVariable(name: "pcoder", arg: 1, scope: !710, file: !1, line: 21, type: !713)
!710 = distinct !DISubprogram(name: "get_literal_price", scope: !1, file: !1, line: 21, type: !711, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !717)
!711 = !DISubroutineType(types: !712)
!712 = !{!23, !713, !252, !252, !716, !23, !23}
!713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !714)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !152)
!717 = !{!709, !718, !719, !720, !721, !722, !723, !727, !728, !729, !732, !734, !735}
!718 = !DILocalVariable(name: "pos", arg: 2, scope: !710, file: !1, line: 21, type: !252)
!719 = !DILocalVariable(name: "prev_byte", arg: 3, scope: !710, file: !1, line: 22, type: !252)
!720 = !DILocalVariable(name: "match_mode", arg: 4, scope: !710, file: !1, line: 22, type: !716)
!721 = !DILocalVariable(name: "match_byte", arg: 5, scope: !710, file: !1, line: 23, type: !23)
!722 = !DILocalVariable(name: "symbol", arg: 6, scope: !710, file: !1, line: 23, type: !23)
!723 = !DILocalVariable(name: "coder", scope: !710, file: !1, line: 25, type: !724)
!724 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !725)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!727 = !DILocalVariable(name: "subcoder", scope: !710, file: !1, line: 26, type: !391)
!728 = !DILocalVariable(name: "price", scope: !710, file: !1, line: 30, type: !23)
!729 = !DILocalVariable(name: "offset", scope: !730, file: !1, line: 35, type: !23)
!730 = distinct !DILexicalBlock(scope: !731, file: !1, line: 34, column: 9)
!731 = distinct !DILexicalBlock(scope: !710, file: !1, line: 32, column: 6)
!732 = !DILocalVariable(name: "match_bit", scope: !733, file: !1, line: 41, type: !252)
!733 = distinct !DILexicalBlock(scope: !730, file: !1, line: 38, column: 6)
!734 = !DILocalVariable(name: "subcoder_index", scope: !733, file: !1, line: 42, type: !252)
!735 = !DILocalVariable(name: "bit", scope: !733, file: !1, line: 44, type: !252)
!736 = !DILocation(line: 0, scope: !710, inlinedAt: !737)
!737 = distinct !DILocation(line: 361, column: 6, scope: !241, inlinedAt: !297)
!738 = !DILocation(line: 26, column: 38, scope: !710, inlinedAt: !737)
!739 = !DILocation(line: 0, scope: !731, inlinedAt: !737)
!740 = !DILocation(line: 32, column: 6, scope: !710, inlinedAt: !737)
!741 = !DILocation(line: 363, column: 5, scope: !241, inlinedAt: !297)
!742 = !DILocation(line: 38, column: 3, scope: !730, inlinedAt: !737)
!743 = !DILocation(line: 0, scope: !387, inlinedAt: !744)
!744 = distinct !DILocation(line: 33, column: 11, scope: !745, inlinedAt: !737)
!745 = distinct !DILexicalBlock(scope: !731, file: !1, line: 32, column: 19)
!746 = !DILocation(line: 59, column: 31, scope: !399, inlinedAt: !744)
!747 = !DILocation(line: 0, scope: !399, inlinedAt: !744)
!748 = !DILocation(line: 60, column: 10, scope: !399, inlinedAt: !744)
!749 = !DILocation(line: 61, column: 25, scope: !399, inlinedAt: !744)
!750 = !DILocation(line: 0, scope: !409, inlinedAt: !751)
!751 = distinct !DILocation(line: 61, column: 12, scope: !399, inlinedAt: !744)
!752 = !DILocation(line: 31, column: 25, scope: !409, inlinedAt: !751)
!753 = !DILocation(line: 32, column: 4, scope: !409, inlinedAt: !751)
!754 = !DILocation(line: 31, column: 30, scope: !409, inlinedAt: !751)
!755 = !DILocation(line: 32, column: 33, scope: !409, inlinedAt: !751)
!756 = !DILocation(line: 31, column: 9, scope: !409, inlinedAt: !751)
!757 = !DILocation(line: 61, column: 9, scope: !399, inlinedAt: !744)
!758 = !DILocation(line: 62, column: 18, scope: !387, inlinedAt: !744)
!759 = !DILocation(line: 62, column: 2, scope: !399, inlinedAt: !744)
!760 = distinct !{!760, !761, !762}
!761 = !DILocation(line: 58, column: 2, scope: !387, inlinedAt: !744)
!762 = !DILocation(line: 62, column: 22, scope: !387, inlinedAt: !744)
!763 = !DILocation(line: 0, scope: !730, inlinedAt: !737)
!764 = !DILocation(line: 39, column: 15, scope: !733, inlinedAt: !737)
!765 = !DILocation(line: 41, column: 42, scope: !733, inlinedAt: !737)
!766 = !DILocation(line: 0, scope: !733, inlinedAt: !737)
!767 = !DILocation(line: 43, column: 37, scope: !733, inlinedAt: !737)
!768 = !DILocation(line: 43, column: 15, scope: !733, inlinedAt: !737)
!769 = !DILocation(line: 43, column: 27, scope: !733, inlinedAt: !737)
!770 = !DILocation(line: 45, column: 26, scope: !733, inlinedAt: !737)
!771 = !DILocation(line: 0, scope: !409, inlinedAt: !772)
!772 = distinct !DILocation(line: 45, column: 13, scope: !733, inlinedAt: !737)
!773 = !DILocation(line: 31, column: 25, scope: !409, inlinedAt: !772)
!774 = !DILocation(line: 32, column: 4, scope: !409, inlinedAt: !772)
!775 = !DILocation(line: 31, column: 30, scope: !409, inlinedAt: !772)
!776 = !DILocation(line: 32, column: 33, scope: !409, inlinedAt: !772)
!777 = !DILocation(line: 31, column: 9, scope: !409, inlinedAt: !772)
!778 = !DILocation(line: 45, column: 10, scope: !733, inlinedAt: !737)
!779 = !DILocation(line: 47, column: 11, scope: !733, inlinedAt: !737)
!780 = !DILocation(line: 48, column: 14, scope: !733, inlinedAt: !737)
!781 = !DILocation(line: 48, column: 11, scope: !733, inlinedAt: !737)
!782 = !DILocation(line: 50, column: 19, scope: !730, inlinedAt: !737)
!783 = !DILocation(line: 50, column: 3, scope: !733, inlinedAt: !737)
!784 = distinct !{!784, !742, !785}
!785 = !DILocation(line: 50, column: 40, scope: !730, inlinedAt: !737)
!786 = !DILocation(line: 361, column: 4, scope: !241, inlinedAt: !297)
!787 = !DILocation(line: 359, column: 17, scope: !241, inlinedAt: !297)
!788 = !DILocation(line: 359, column: 23, scope: !241, inlinedAt: !297)
!789 = !DILocalVariable(name: "optimal", arg: 1, scope: !790, file: !1, line: 212, type: !793)
!790 = distinct !DISubprogram(name: "make_literal", scope: !1, file: !1, line: 212, type: !791, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !794)
!791 = !DISubroutineType(types: !792)
!792 = !{null, !793}
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!794 = !{!789}
!795 = !DILocation(line: 0, scope: !790, inlinedAt: !796)
!796 = distinct !DILocation(line: 365, column: 2, scope: !241, inlinedAt: !297)
!797 = !DILocation(line: 214, column: 11, scope: !790, inlinedAt: !796)
!798 = !DILocation(line: 214, column: 21, scope: !790, inlinedAt: !796)
!799 = !DILocation(line: 215, column: 11, scope: !790, inlinedAt: !796)
!800 = !DILocation(line: 215, column: 29, scope: !790, inlinedAt: !796)
!801 = !DILocation(line: 368, column: 4, scope: !241, inlinedAt: !297)
!802 = !DILocalVariable(name: "prob", arg: 1, scope: !803, file: !388, line: 44, type: !393)
!803 = distinct !DISubprogram(name: "rc_bit_1_price", scope: !388, file: !388, line: 44, type: !699, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !804)
!804 = !{!802}
!805 = !DILocation(line: 0, scope: !803, inlinedAt: !806)
!806 = distinct !DILocation(line: 367, column: 31, scope: !241, inlinedAt: !297)
!807 = !DILocation(line: 47, column: 4, scope: !803, inlinedAt: !806)
!808 = !DILocation(line: 46, column: 9, scope: !803, inlinedAt: !806)
!809 = !DILocation(line: 370, column: 28, scope: !241, inlinedAt: !297)
!810 = !DILocation(line: 370, column: 21, scope: !241, inlinedAt: !297)
!811 = !DILocation(line: 0, scope: !803, inlinedAt: !812)
!812 = distinct !DILocation(line: 370, column: 6, scope: !241, inlinedAt: !297)
!813 = !DILocation(line: 47, column: 4, scope: !803, inlinedAt: !812)
!814 = !DILocation(line: 46, column: 9, scope: !803, inlinedAt: !812)
!815 = !DILocation(line: 370, column: 4, scope: !241, inlinedAt: !297)
!816 = !DILocation(line: 372, column: 6, scope: !241, inlinedAt: !297)
!817 = !DILocalVariable(name: "pcoder", arg: 1, scope: !818, file: !1, line: 68, type: !713)
!818 = distinct !DISubprogram(name: "get_short_rep_price", scope: !1, file: !1, line: 68, type: !819, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !822)
!819 = !DISubroutineType(types: !820)
!820 = !{!23, !713, !821, !252}
!821 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !140)
!822 = !{!817, !823, !824, !825}
!823 = !DILocalVariable(name: "state", arg: 2, scope: !818, file: !1, line: 69, type: !821)
!824 = !DILocalVariable(name: "pos_state", arg: 3, scope: !818, file: !1, line: 69, type: !252)
!825 = !DILocalVariable(name: "coder", scope: !818, file: !1, line: 71, type: !724)
!826 = !DILocation(line: 0, scope: !818, inlinedAt: !827)
!827 = distinct !DILocation(line: 374, column: 7, scope: !273, inlinedAt: !297)
!828 = !DILocation(line: 72, column: 31, scope: !818, inlinedAt: !827)
!829 = !DILocation(line: 72, column: 24, scope: !818, inlinedAt: !827)
!830 = !DILocation(line: 0, scope: !698, inlinedAt: !831)
!831 = distinct !DILocation(line: 72, column: 9, scope: !818, inlinedAt: !827)
!832 = !DILocation(line: 39, column: 29, scope: !698, inlinedAt: !831)
!833 = !DILocation(line: 39, column: 9, scope: !698, inlinedAt: !831)
!834 = !DILocation(line: 73, column: 27, scope: !818, inlinedAt: !827)
!835 = !DILocation(line: 73, column: 20, scope: !818, inlinedAt: !827)
!836 = !DILocation(line: 0, scope: !698, inlinedAt: !837)
!837 = distinct !DILocation(line: 73, column: 5, scope: !818, inlinedAt: !827)
!838 = !DILocation(line: 39, column: 29, scope: !698, inlinedAt: !837)
!839 = !DILocation(line: 39, column: 9, scope: !698, inlinedAt: !837)
!840 = !DILocation(line: 73, column: 3, scope: !818, inlinedAt: !827)
!841 = !DILocation(line: 374, column: 5, scope: !273, inlinedAt: !297)
!842 = !DILocation(line: 0, scope: !273, inlinedAt: !297)
!843 = !DILocation(line: 377, column: 23, scope: !844, inlinedAt: !297)
!844 = distinct !DILexicalBlock(scope: !273, file: !1, line: 377, column: 7)
!845 = !DILocation(line: 377, column: 7, scope: !273, inlinedAt: !297)
!846 = !DILocation(line: 378, column: 25, scope: !847, inlinedAt: !297)
!847 = distinct !DILexicalBlock(scope: !844, file: !1, line: 377, column: 47)
!848 = !DILocalVariable(name: "optimal", arg: 1, scope: !849, file: !1, line: 220, type: !793)
!849 = distinct !DISubprogram(name: "make_short_rep", scope: !1, file: !1, line: 220, type: !791, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !850)
!850 = !{!848}
!851 = !DILocation(line: 0, scope: !849, inlinedAt: !852)
!852 = distinct !DILocation(line: 379, column: 4, scope: !847, inlinedAt: !297)
!853 = !DILocation(line: 222, column: 21, scope: !849, inlinedAt: !852)
!854 = !DILocation(line: 223, column: 29, scope: !849, inlinedAt: !852)
!855 = !DILocation(line: 380, column: 3, scope: !847, inlinedAt: !297)
!856 = !DILocation(line: 383, column: 27, scope: !241, inlinedAt: !297)
!857 = !DILocation(line: 385, column: 14, scope: !858, inlinedAt: !297)
!858 = distinct !DILexicalBlock(scope: !241, file: !1, line: 385, column: 6)
!859 = !DILocation(line: 385, column: 6, scope: !241, inlinedAt: !297)
!860 = !DILocation(line: 386, column: 13, scope: !861, inlinedAt: !297)
!861 = distinct !DILexicalBlock(scope: !858, file: !1, line: 385, column: 19)
!862 = !DILocation(line: 387, column: 12, scope: !861, inlinedAt: !297)
!863 = !DILocation(line: 388, column: 3, scope: !861, inlinedAt: !297)
!864 = !DILocation(line: 391, column: 17, scope: !241, inlinedAt: !297)
!865 = !DILocation(line: 391, column: 26, scope: !241, inlinedAt: !297)
!866 = !DILocation(line: 0, scope: !277, inlinedAt: !297)
!867 = !DILocation(line: 394, column: 27, scope: !868, inlinedAt: !297)
!868 = distinct !DILexicalBlock(scope: !277, file: !1, line: 393, column: 2)
!869 = !DILocation(line: 394, column: 3, scope: !868, inlinedAt: !297)
!870 = !DILocation(line: 397, column: 2, scope: !241, inlinedAt: !297)
!871 = !DILocation(line: 398, column: 20, scope: !872, inlinedAt: !297)
!872 = distinct !DILexicalBlock(scope: !241, file: !1, line: 397, column: 5)
!873 = !DILocation(line: 398, column: 26, scope: !872, inlinedAt: !297)
!874 = distinct !{!874, !870, !875, !876, !877}
!875 = !DILocation(line: 399, column: 21, scope: !241, inlinedAt: !297)
!876 = !{!"llvm.loop.isvectorized", i32 1}
!877 = !{!"llvm.loop.unroll.runtime.disable"}
!878 = !DILocation(line: 399, column: 2, scope: !872, inlinedAt: !297)
!879 = !DILocation(line: 399, column: 11, scope: !241, inlinedAt: !297)
!880 = !DILocation(line: 399, column: 17, scope: !241, inlinedAt: !297)
!881 = distinct !{!881, !870, !875, !876}
!882 = !DILocation(line: 0, scope: !280, inlinedAt: !297)
!883 = !DILocation(line: 0, scope: !282, inlinedAt: !297)
!884 = !DILocation(line: 404, column: 15, scope: !885, inlinedAt: !297)
!885 = distinct !DILexicalBlock(scope: !282, file: !1, line: 404, column: 7)
!886 = !DILocation(line: 404, column: 7, scope: !282, inlinedAt: !297)
!887 = !DILocation(line: 432, column: 3, scope: !289, inlinedAt: !297)
!888 = !DILocalVariable(name: "pcoder", arg: 1, scope: !889, file: !1, line: 78, type: !713)
!889 = distinct !DISubprogram(name: "get_pure_rep_price", scope: !1, file: !1, line: 78, type: !890, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !892)
!890 = !DISubroutineType(types: !891)
!891 = !{!23, !713, !252, !821, !23}
!892 = !{!888, !893, !894, !895, !896, !897}
!893 = !DILocalVariable(name: "rep_index", arg: 2, scope: !889, file: !1, line: 78, type: !252)
!894 = !DILocalVariable(name: "state", arg: 3, scope: !889, file: !1, line: 79, type: !821)
!895 = !DILocalVariable(name: "pos_state", arg: 4, scope: !889, file: !1, line: 79, type: !23)
!896 = !DILocalVariable(name: "coder", scope: !889, file: !1, line: 81, type: !724)
!897 = !DILocalVariable(name: "price", scope: !889, file: !1, line: 82, type: !23)
!898 = !DILocation(line: 0, scope: !889, inlinedAt: !899)
!899 = distinct !DILocation(line: 407, column: 44, scope: !282, inlinedAt: !297)
!900 = !DILocation(line: 0, scope: !698, inlinedAt: !901)
!901 = distinct !DILocation(line: 85, column: 11, scope: !902, inlinedAt: !899)
!902 = distinct !DILexicalBlock(scope: !903, file: !1, line: 84, column: 22)
!903 = distinct !DILexicalBlock(scope: !889, file: !1, line: 84, column: 6)
!904 = !DILocation(line: 0, scope: !803, inlinedAt: !905)
!905 = distinct !DILocation(line: 86, column: 12, scope: !902, inlinedAt: !899)
!906 = !DILocation(line: 86, column: 27, scope: !902, inlinedAt: !899)
!907 = !DILocation(line: 47, column: 4, scope: !803, inlinedAt: !905)
!908 = !DILocation(line: 46, column: 9, scope: !803, inlinedAt: !905)
!909 = !DILocation(line: 0, scope: !903, inlinedAt: !899)
!910 = !DILocation(line: 39, column: 9, scope: !698, inlinedAt: !901)
!911 = !DILocation(line: 410, column: 3, scope: !282, inlinedAt: !297)
!912 = !DILocalVariable(name: "lencoder", arg: 1, scope: !913, file: !1, line: 58, type: !916)
!913 = distinct !DISubprogram(name: "get_len_price", scope: !1, file: !1, line: 58, type: !914, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !919)
!914 = !DISubroutineType(types: !915)
!915 = !{!23, !916, !252, !252}
!916 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !917)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !186)
!919 = !{!912, !920, !921}
!920 = !DILocalVariable(name: "len", arg: 2, scope: !913, file: !1, line: 59, type: !252)
!921 = !DILocalVariable(name: "pos_state", arg: 3, scope: !913, file: !1, line: 59, type: !252)
!922 = !DILocation(line: 0, scope: !913, inlinedAt: !923)
!923 = distinct !DILocation(line: 412, column: 8, scope: !286, inlinedAt: !297)
!924 = !DILocation(line: 63, column: 41, scope: !913, inlinedAt: !923)
!925 = !DILocation(line: 63, column: 9, scope: !913, inlinedAt: !923)
!926 = !DILocation(line: 412, column: 6, scope: !286, inlinedAt: !297)
!927 = !DILocation(line: 0, scope: !286, inlinedAt: !297)
!928 = !DILocation(line: 416, column: 28, scope: !929, inlinedAt: !297)
!929 = distinct !DILexicalBlock(scope: !286, file: !1, line: 416, column: 8)
!930 = !DILocation(line: 416, column: 49, scope: !929, inlinedAt: !297)
!931 = !DILocation(line: 416, column: 26, scope: !929, inlinedAt: !297)
!932 = !DILocation(line: 416, column: 8, scope: !286, inlinedAt: !297)
!933 = !DILocation(line: 417, column: 32, scope: !934, inlinedAt: !297)
!934 = distinct !DILexicalBlock(scope: !929, file: !1, line: 416, column: 56)
!935 = !DILocation(line: 418, column: 26, scope: !934, inlinedAt: !297)
!936 = !DILocation(line: 418, column: 35, scope: !934, inlinedAt: !297)
!937 = !DILocation(line: 419, column: 26, scope: !934, inlinedAt: !297)
!938 = !DILocation(line: 419, column: 36, scope: !934, inlinedAt: !297)
!939 = !DILocation(line: 420, column: 26, scope: !934, inlinedAt: !297)
!940 = !DILocation(line: 420, column: 44, scope: !934, inlinedAt: !297)
!941 = !DILocation(line: 421, column: 4, scope: !934, inlinedAt: !297)
!942 = !DILocation(line: 422, column: 12, scope: !282, inlinedAt: !297)
!943 = !DILocation(line: 422, column: 22, scope: !282, inlinedAt: !297)
!944 = !DILocation(line: 422, column: 3, scope: !286, inlinedAt: !297)
!945 = distinct !{!945, !911, !946}
!946 = !DILocation(line: 422, column: 26, scope: !282, inlinedAt: !297)
!947 = !DILocation(line: 0, scope: !803, inlinedAt: !948)
!948 = distinct !DILocation(line: 88, column: 11, scope: !949, inlinedAt: !899)
!949 = distinct !DILexicalBlock(scope: !903, file: !1, line: 87, column: 9)
!950 = !DILocation(line: 0, scope: !698, inlinedAt: !951)
!951 = distinct !DILocation(line: 91, column: 13, scope: !952, inlinedAt: !899)
!952 = distinct !DILexicalBlock(scope: !953, file: !1, line: 90, column: 23)
!953 = distinct !DILexicalBlock(scope: !949, file: !1, line: 90, column: 7)
!954 = !DILocation(line: 0, scope: !953, inlinedAt: !899)
!955 = !DILocation(line: 39, column: 9, scope: !698, inlinedAt: !951)
!956 = !DILocation(line: 47, column: 4, scope: !803, inlinedAt: !948)
!957 = !DILocation(line: 46, column: 9, scope: !803, inlinedAt: !948)
!958 = distinct !{!958, !911, !946}
!959 = !DILocation(line: 0, scope: !803, inlinedAt: !960)
!960 = distinct !DILocation(line: 93, column: 13, scope: !961, inlinedAt: !899)
!961 = distinct !DILexicalBlock(scope: !953, file: !1, line: 92, column: 10)
!962 = !DILocation(line: 0, scope: !409, inlinedAt: !963)
!963 = distinct !DILocation(line: 94, column: 13, scope: !961, inlinedAt: !899)
!964 = !DILocation(line: 47, column: 4, scope: !803, inlinedAt: !960)
!965 = !DILocation(line: 46, column: 9, scope: !803, inlinedAt: !960)
!966 = !DILocation(line: 94, column: 26, scope: !961, inlinedAt: !899)
!967 = !DILocation(line: 32, column: 33, scope: !409, inlinedAt: !963)
!968 = !DILocation(line: 31, column: 9, scope: !409, inlinedAt: !963)
!969 = distinct !{!969, !911, !946}
!970 = distinct !{!970, !911, !946}
!971 = !DILocation(line: 427, column: 21, scope: !241, inlinedAt: !297)
!972 = !DILocation(line: 0, scope: !698, inlinedAt: !973)
!973 = distinct !DILocation(line: 427, column: 6, scope: !241, inlinedAt: !297)
!974 = !DILocation(line: 39, column: 29, scope: !698, inlinedAt: !973)
!975 = !DILocation(line: 39, column: 9, scope: !698, inlinedAt: !973)
!976 = !DILocation(line: 429, column: 8, scope: !241, inlinedAt: !297)
!977 = !DILocation(line: 430, column: 10, scope: !290, inlinedAt: !297)
!978 = !DILocation(line: 430, column: 6, scope: !241, inlinedAt: !297)
!979 = !DILocation(line: 0, scope: !289, inlinedAt: !297)
!980 = !DILocation(line: 432, column: 16, scope: !289, inlinedAt: !297)
!981 = !DILocation(line: 432, column: 34, scope: !289, inlinedAt: !297)
!982 = !DILocation(line: 432, column: 14, scope: !289, inlinedAt: !297)
!983 = !DILocation(line: 433, column: 4, scope: !289, inlinedAt: !297)
!984 = distinct !{!984, !887, !985}
!985 = !DILocation(line: 433, column: 6, scope: !289, inlinedAt: !297)
!986 = !DILocation(line: 435, column: 3, scope: !294, inlinedAt: !297)
!987 = !DILocation(line: 436, column: 26, scope: !292, inlinedAt: !297)
!988 = !DILocation(line: 436, column: 44, scope: !292, inlinedAt: !297)
!989 = !DILocation(line: 0, scope: !292, inlinedAt: !297)
!990 = !DILocalVariable(name: "pcoder", arg: 1, scope: !991, file: !1, line: 115, type: !713)
!991 = distinct !DISubprogram(name: "get_pos_len_price", scope: !1, file: !1, line: 115, type: !992, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !994)
!992 = !DISubroutineType(types: !993)
!993 = !{!23, !713, !252, !252, !252}
!994 = !{!990, !995, !996, !997, !998, !999, !1000, !1001}
!995 = !DILocalVariable(name: "pos", arg: 2, scope: !991, file: !1, line: 115, type: !252)
!996 = !DILocalVariable(name: "len", arg: 3, scope: !991, file: !1, line: 116, type: !252)
!997 = !DILocalVariable(name: "pos_state", arg: 4, scope: !991, file: !1, line: 116, type: !252)
!998 = !DILocalVariable(name: "coder", scope: !991, file: !1, line: 118, type: !724)
!999 = !DILocalVariable(name: "len_to_pos_state", scope: !991, file: !1, line: 119, type: !252)
!1000 = !DILocalVariable(name: "price", scope: !991, file: !1, line: 120, type: !23)
!1001 = !DILocalVariable(name: "pos_slot", scope: !1002, file: !1, line: 125, type: !252)
!1002 = distinct !DILexicalBlock(scope: !1003, file: !1, line: 124, column: 9)
!1003 = distinct !DILexicalBlock(scope: !991, file: !1, line: 122, column: 6)
!1004 = !DILocation(line: 0, scope: !991, inlinedAt: !1005)
!1005 = distinct !DILocation(line: 438, column: 8, scope: !292, inlinedAt: !297)
!1006 = !DILocation(line: 119, column: 36, scope: !991, inlinedAt: !1005)
!1007 = !DILocation(line: 122, column: 10, scope: !1003, inlinedAt: !1005)
!1008 = !DILocation(line: 122, column: 6, scope: !991, inlinedAt: !1005)
!1009 = !DILocation(line: 123, column: 11, scope: !1010, inlinedAt: !1005)
!1010 = distinct !DILexicalBlock(scope: !1003, file: !1, line: 122, column: 28)
!1011 = !DILocation(line: 124, column: 2, scope: !1010, inlinedAt: !1005)
!1012 = !DILocalVariable(name: "pos", arg: 1, scope: !1013, file: !464, line: 124, type: !23)
!1013 = distinct !DISubprogram(name: "get_pos_slot_2", scope: !464, file: !464, line: 124, type: !465, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1014)
!1014 = !{!1012}
!1015 = !DILocation(line: 0, scope: !1013, inlinedAt: !1016)
!1016 = distinct !DILocation(line: 125, column: 29, scope: !1002, inlinedAt: !1005)
!1017 = !DILocation(line: 128, column: 10, scope: !1018, inlinedAt: !1016)
!1018 = distinct !DILexicalBlock(scope: !1013, file: !464, line: 128, column: 6)
!1019 = !DILocation(line: 128, column: 6, scope: !1013, inlinedAt: !1016)
!1020 = !DILocation(line: 0, scope: !1002, inlinedAt: !1005)
!1021 = !DILocation(line: 126, column: 11, scope: !1002, inlinedAt: !1005)
!1022 = !DILocation(line: 127, column: 31, scope: !1002, inlinedAt: !1005)
!1023 = !DILocation(line: 127, column: 7, scope: !1002, inlinedAt: !1005)
!1024 = !DILocation(line: 127, column: 5, scope: !1002, inlinedAt: !1005)
!1025 = !DILocation(line: 0, scope: !1003, inlinedAt: !1005)
!1026 = !DILocation(line: 0, scope: !913, inlinedAt: !1027)
!1027 = distinct !DILocation(line: 130, column: 11, scope: !991, inlinedAt: !1005)
!1028 = !DILocation(line: 63, column: 9, scope: !913, inlinedAt: !1027)
!1029 = !DILocation(line: 427, column: 4, scope: !241, inlinedAt: !297)
!1030 = !DILocation(line: 438, column: 6, scope: !292, inlinedAt: !297)
!1031 = !DILocation(line: 441, column: 28, scope: !1032, inlinedAt: !297)
!1032 = distinct !DILexicalBlock(scope: !292, file: !1, line: 441, column: 8)
!1033 = !DILocation(line: 441, column: 45, scope: !1032, inlinedAt: !297)
!1034 = !DILocation(line: 441, column: 26, scope: !1032, inlinedAt: !297)
!1035 = !DILocation(line: 441, column: 8, scope: !292, inlinedAt: !297)
!1036 = !DILocation(line: 442, column: 28, scope: !1037, inlinedAt: !297)
!1037 = distinct !DILexicalBlock(scope: !1032, file: !1, line: 441, column: 52)
!1038 = !DILocation(line: 443, column: 22, scope: !1037, inlinedAt: !297)
!1039 = !DILocation(line: 443, column: 31, scope: !1037, inlinedAt: !297)
!1040 = !DILocation(line: 445, column: 14, scope: !1037, inlinedAt: !297)
!1041 = !DILocation(line: 444, column: 22, scope: !1037, inlinedAt: !297)
!1042 = !DILocation(line: 445, column: 7, scope: !1037, inlinedAt: !297)
!1043 = !DILocation(line: 446, column: 22, scope: !1037, inlinedAt: !297)
!1044 = !DILocation(line: 446, column: 40, scope: !1037, inlinedAt: !297)
!1045 = !DILocation(line: 447, column: 4, scope: !1037, inlinedAt: !297)
!1046 = !DILocation(line: 449, column: 33, scope: !1047, inlinedAt: !297)
!1047 = distinct !DILexicalBlock(scope: !292, file: !1, line: 449, column: 8)
!1048 = !DILocation(line: 449, column: 12, scope: !1047, inlinedAt: !297)
!1049 = !DILocation(line: 449, column: 8, scope: !292, inlinedAt: !297)
!1050 = !DILocation(line: 435, column: 11, scope: !293, inlinedAt: !297)
!1051 = !DILocation(line: 435, column: 3, scope: !293, inlinedAt: !297)
!1052 = distinct !{!1052, !986, !1053}
!1053 = !DILocation(line: 452, column: 3, scope: !294, inlinedAt: !297)
!1054 = !DILocation(line: 856, column: 14, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !74, file: !1, line: 856, column: 6)
!1056 = !DILocation(line: 859, column: 2, scope: !74)
!1057 = !DILocation(line: 860, column: 2, scope: !74)
!1058 = distinct !DIAssignID()
!1059 = !DILocation(line: 867, column: 17, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1061, file: !1, line: 863, column: 38)
!1061 = distinct !DILexicalBlock(scope: !1062, file: !1, line: 863, column: 2)
!1062 = distinct !DILexicalBlock(scope: !74, file: !1, line: 863, column: 2)
!1063 = !DILocation(line: 867, column: 39, scope: !1060)
!1064 = !DILocation(line: 863, column: 2, scope: !1062)
!1065 = !DILocation(line: 866, column: 33, scope: !1060)
!1066 = !DILocation(line: 866, column: 31, scope: !1060)
!1067 = !DILocation(line: 869, column: 42, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1060, file: !1, line: 869, column: 7)
!1069 = !DILocation(line: 869, column: 35, scope: !1068)
!1070 = !DILocation(line: 869, column: 7, scope: !1060)
!1071 = !DILocation(line: 872, column: 34, scope: !1060)
!1072 = !DILocation(line: 0, scope: !598, inlinedAt: !1073)
!1073 = distinct !DILocation(line: 872, column: 34, scope: !1060)
!1074 = !DILocation(line: 224, column: 20, scope: !598, inlinedAt: !1073)
!1075 = !DILocation(line: 872, column: 45, scope: !1060)
!1076 = !DILocation(line: 873, column: 14, scope: !1060)
!1077 = !DILocation(line: 874, column: 5, scope: !1060)
!1078 = !DILocation(line: 0, scope: !575, inlinedAt: !1079)
!1079 = distinct !DILocation(line: 874, column: 5, scope: !1060)
!1080 = !DILocalVariable(name: "pcoder", arg: 1, scope: !1081, file: !1, line: 460, type: !77)
!1081 = distinct !DISubprogram(name: "helper2", scope: !1, file: !1, line: 460, type: !1082, scopeLine: 463, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1084)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{!23, !77, !112, !257, !23, !23, !252, !252, !252}
!1084 = !{!1080, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1100, !1103, !1106, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1119, !1120, !1123, !1124, !1125, !1128, !1129, !1130, !1131, !1132, !1133, !1135, !1138, !1139, !1140, !1141, !1143, !1144, !1145, !1148, !1149, !1150, !1151, !1152, !1153, !1156, !1157, !1159, !1162, !1163, !1166, !1167, !1168, !1171, !1172, !1173, !1174}
!1085 = !DILocalVariable(name: "reps", arg: 2, scope: !1081, file: !1, line: 460, type: !112)
!1086 = !DILocalVariable(name: "buf", arg: 3, scope: !1081, file: !1, line: 460, type: !257)
!1087 = !DILocalVariable(name: "len_end", arg: 4, scope: !1081, file: !1, line: 461, type: !23)
!1088 = !DILocalVariable(name: "position", arg: 5, scope: !1081, file: !1, line: 461, type: !23)
!1089 = !DILocalVariable(name: "cur", arg: 6, scope: !1081, file: !1, line: 461, type: !252)
!1090 = !DILocalVariable(name: "nice_len", arg: 7, scope: !1081, file: !1, line: 462, type: !252)
!1091 = !DILocalVariable(name: "buf_avail_full", arg: 8, scope: !1081, file: !1, line: 462, type: !252)
!1092 = !DILocalVariable(name: "coder", scope: !1081, file: !1, line: 464, type: !133)
!1093 = !DILocalVariable(name: "matches_count", scope: !1081, file: !1, line: 465, type: !23)
!1094 = !DILocalVariable(name: "new_len", scope: !1081, file: !1, line: 466, type: !23)
!1095 = !DILocalVariable(name: "pos_prev", scope: !1081, file: !1, line: 467, type: !23)
!1096 = !DILocalVariable(name: "state", scope: !1081, file: !1, line: 468, type: !140)
!1097 = !DILocalVariable(name: "pos", scope: !1098, file: !1, line: 497, type: !23)
!1098 = distinct !DILexicalBlock(scope: !1099, file: !1, line: 496, column: 9)
!1099 = distinct !DILexicalBlock(scope: !1081, file: !1, line: 491, column: 6)
!1100 = !DILocalVariable(name: "i", scope: !1101, file: !1, line: 514, type: !23)
!1101 = distinct !DILexicalBlock(scope: !1102, file: !1, line: 511, column: 28)
!1102 = distinct !DILexicalBlock(scope: !1098, file: !1, line: 511, column: 7)
!1103 = !DILocalVariable(name: "i", scope: !1104, file: !1, line: 524, type: !23)
!1104 = distinct !DILexicalBlock(scope: !1105, file: !1, line: 524, column: 4)
!1105 = distinct !DILexicalBlock(scope: !1102, file: !1, line: 521, column: 10)
!1106 = !DILocalVariable(name: "i", scope: !1107, file: !1, line: 531, type: !23)
!1107 = distinct !DILexicalBlock(scope: !1081, file: !1, line: 531, column: 2)
!1108 = !DILocalVariable(name: "cur_price", scope: !1081, file: !1, line: 534, type: !252)
!1109 = !DILocalVariable(name: "current_byte", scope: !1081, file: !1, line: 536, type: !258)
!1110 = !DILocalVariable(name: "match_byte", scope: !1081, file: !1, line: 537, type: !258)
!1111 = !DILocalVariable(name: "pos_state", scope: !1081, file: !1, line: 539, type: !252)
!1112 = !DILocalVariable(name: "cur_and_1_price", scope: !1081, file: !1, line: 541, type: !252)
!1113 = !DILocalVariable(name: "next_is_literal", scope: !1081, file: !1, line: 546, type: !152)
!1114 = !DILocalVariable(name: "match_price", scope: !1081, file: !1, line: 555, type: !252)
!1115 = !DILocalVariable(name: "rep_match_price", scope: !1081, file: !1, line: 557, type: !252)
!1116 = !DILocalVariable(name: "short_rep_price", scope: !1117, file: !1, line: 564, type: !252)
!1117 = distinct !DILexicalBlock(scope: !1118, file: !1, line: 562, column: 46)
!1118 = distinct !DILexicalBlock(scope: !1081, file: !1, line: 560, column: 6)
!1119 = !DILocalVariable(name: "buf_avail", scope: !1081, file: !1, line: 578, type: !252)
!1120 = !DILocalVariable(name: "buf_back", scope: !1121, file: !1, line: 582, type: !256)
!1121 = distinct !DILexicalBlock(scope: !1122, file: !1, line: 580, column: 54)
!1122 = distinct !DILexicalBlock(scope: !1081, file: !1, line: 580, column: 6)
!1123 = !DILocalVariable(name: "limit", scope: !1121, file: !1, line: 583, type: !252)
!1124 = !DILocalVariable(name: "len_test", scope: !1121, file: !1, line: 585, type: !23)
!1125 = !DILocalVariable(name: "state_2", scope: !1126, file: !1, line: 592, type: !140)
!1126 = distinct !DILexicalBlock(scope: !1127, file: !1, line: 591, column: 22)
!1127 = distinct !DILexicalBlock(scope: !1121, file: !1, line: 591, column: 7)
!1128 = !DILocalVariable(name: "pos_state_next", scope: !1126, file: !1, line: 595, type: !252)
!1129 = !DILocalVariable(name: "next_rep_match_price", scope: !1126, file: !1, line: 596, type: !252)
!1130 = !DILocalVariable(name: "offset", scope: !1126, file: !1, line: 601, type: !252)
!1131 = !DILocalVariable(name: "cur_and_len_price", scope: !1126, file: !1, line: 606, type: !252)
!1132 = !DILocalVariable(name: "start_len", scope: !1081, file: !1, line: 622, type: !23)
!1133 = !DILocalVariable(name: "rep_index", scope: !1134, file: !1, line: 624, type: !23)
!1134 = distinct !DILexicalBlock(scope: !1081, file: !1, line: 624, column: 2)
!1135 = !DILocalVariable(name: "buf_back", scope: !1136, file: !1, line: 625, type: !256)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !1, line: 624, column: 71)
!1137 = distinct !DILexicalBlock(scope: !1134, file: !1, line: 624, column: 2)
!1138 = !DILocalVariable(name: "len_test", scope: !1136, file: !1, line: 629, type: !23)
!1139 = !DILocalVariable(name: "len_test_temp", scope: !1136, file: !1, line: 637, type: !252)
!1140 = !DILocalVariable(name: "price", scope: !1136, file: !1, line: 638, type: !252)
!1141 = !DILocalVariable(name: "cur_and_len_price", scope: !1142, file: !1, line: 642, type: !252)
!1142 = distinct !DILexicalBlock(scope: !1136, file: !1, line: 641, column: 6)
!1143 = !DILocalVariable(name: "len_test_2", scope: !1136, file: !1, line: 660, type: !23)
!1144 = !DILocalVariable(name: "limit", scope: !1136, file: !1, line: 661, type: !252)
!1145 = !DILocalVariable(name: "state_2", scope: !1146, file: !1, line: 670, type: !140)
!1146 = distinct !DILexicalBlock(scope: !1147, file: !1, line: 669, column: 24)
!1147 = distinct !DILexicalBlock(scope: !1136, file: !1, line: 669, column: 7)
!1148 = !DILocalVariable(name: "pos_state_next", scope: !1146, file: !1, line: 673, type: !23)
!1149 = !DILocalVariable(name: "cur_and_len_literal_price", scope: !1146, file: !1, line: 675, type: !252)
!1150 = !DILocalVariable(name: "next_rep_match_price", scope: !1146, file: !1, line: 687, type: !252)
!1151 = !DILocalVariable(name: "offset", scope: !1146, file: !1, line: 692, type: !252)
!1152 = !DILocalVariable(name: "cur_and_len_price", scope: !1146, file: !1, line: 697, type: !252)
!1153 = !DILocalVariable(name: "normal_match_price", scope: !1154, file: !1, line: 728, type: !252)
!1154 = distinct !DILexicalBlock(scope: !1155, file: !1, line: 727, column: 28)
!1155 = distinct !DILexicalBlock(scope: !1081, file: !1, line: 727, column: 6)
!1156 = !DILocalVariable(name: "i", scope: !1154, file: !1, line: 734, type: !23)
!1157 = !DILocalVariable(name: "len_test", scope: !1158, file: !1, line: 738, type: !23)
!1158 = distinct !DILexicalBlock(scope: !1154, file: !1, line: 738, column: 3)
!1159 = !DILocalVariable(name: "cur_back", scope: !1160, file: !1, line: 739, type: !252)
!1160 = distinct !DILexicalBlock(scope: !1161, file: !1, line: 738, column: 53)
!1161 = distinct !DILexicalBlock(scope: !1158, file: !1, line: 738, column: 3)
!1162 = !DILocalVariable(name: "cur_and_len_price", scope: !1160, file: !1, line: 740, type: !23)
!1163 = !DILocalVariable(name: "buf_back", scope: !1164, file: !1, line: 754, type: !256)
!1164 = distinct !DILexicalBlock(scope: !1165, file: !1, line: 752, column: 43)
!1165 = distinct !DILexicalBlock(scope: !1160, file: !1, line: 752, column: 8)
!1166 = !DILocalVariable(name: "len_test_2", scope: !1164, file: !1, line: 755, type: !23)
!1167 = !DILocalVariable(name: "limit", scope: !1164, file: !1, line: 756, type: !252)
!1168 = !DILocalVariable(name: "state_2", scope: !1169, file: !1, line: 766, type: !140)
!1169 = distinct !DILexicalBlock(scope: !1170, file: !1, line: 765, column: 26)
!1170 = distinct !DILexicalBlock(scope: !1164, file: !1, line: 765, column: 9)
!1171 = !DILocalVariable(name: "pos_state_next", scope: !1169, file: !1, line: 768, type: !23)
!1172 = !DILocalVariable(name: "cur_and_len_literal_price", scope: !1169, file: !1, line: 771, type: !252)
!1173 = !DILocalVariable(name: "next_rep_match_price", scope: !1169, file: !1, line: 784, type: !252)
!1174 = !DILocalVariable(name: "offset", scope: !1169, file: !1, line: 791, type: !252)
!1175 = !DILocation(line: 0, scope: !1081, inlinedAt: !1176)
!1176 = distinct !DILocation(line: 872, column: 13, scope: !1060)
!1177 = !DILocation(line: 465, column: 34, scope: !1081, inlinedAt: !1176)
!1178 = !DILocation(line: 467, column: 22, scope: !1081, inlinedAt: !1176)
!1179 = !DILocation(line: 467, column: 39, scope: !1081, inlinedAt: !1176)
!1180 = !DILocation(line: 470, column: 23, scope: !1181, inlinedAt: !1176)
!1181 = distinct !DILexicalBlock(scope: !1081, file: !1, line: 470, column: 6)
!1182 = !{i8 0, i8 2}
!1183 = !{}
!1184 = !DILocation(line: 470, column: 6, scope: !1081, inlinedAt: !1176)
!1185 = !DILocation(line: 473, column: 24, scope: !1186, inlinedAt: !1176)
!1186 = distinct !DILexicalBlock(scope: !1187, file: !1, line: 473, column: 7)
!1187 = distinct !DILexicalBlock(scope: !1181, file: !1, line: 470, column: 42)
!1188 = !DILocation(line: 473, column: 7, scope: !1187, inlinedAt: !1176)
!1189 = !DILocation(line: 474, column: 41, scope: !1190, inlinedAt: !1176)
!1190 = distinct !DILexicalBlock(scope: !1186, file: !1, line: 473, column: 32)
!1191 = !DILocation(line: 474, column: 12, scope: !1190, inlinedAt: !1176)
!1192 = !DILocation(line: 474, column: 53, scope: !1190, inlinedAt: !1176)
!1193 = !DILocation(line: 476, column: 25, scope: !1194, inlinedAt: !1176)
!1194 = distinct !DILexicalBlock(scope: !1190, file: !1, line: 476, column: 8)
!1195 = !DILocation(line: 476, column: 37, scope: !1194, inlinedAt: !1176)
!1196 = !DILocation(line: 0, scope: !1194, inlinedAt: !1176)
!1197 = !DILocation(line: 476, column: 8, scope: !1190, inlinedAt: !1176)
!1198 = !DILocation(line: 485, column: 3, scope: !1187, inlinedAt: !1176)
!1199 = !DILocation(line: 491, column: 15, scope: !1099, inlinedAt: !1176)
!1200 = !DILocation(line: 491, column: 6, scope: !1081, inlinedAt: !1176)
!1201 = !DILocation(line: 471, column: 3, scope: !1187, inlinedAt: !1176)
!1202 = !DILocation(line: 482, column: 12, scope: !1203, inlinedAt: !1176)
!1203 = distinct !DILexicalBlock(scope: !1186, file: !1, line: 481, column: 10)
!1204 = !DILocation(line: 482, column: 34, scope: !1203, inlinedAt: !1176)
!1205 = !DILocation(line: 488, column: 11, scope: !1206, inlinedAt: !1176)
!1206 = distinct !DILexicalBlock(scope: !1181, file: !1, line: 487, column: 9)
!1207 = !DILocation(line: 488, column: 33, scope: !1206, inlinedAt: !1176)
!1208 = !DILocation(line: 491, column: 22, scope: !1099, inlinedAt: !1176)
!1209 = !DILocation(line: 492, column: 7, scope: !1210, inlinedAt: !1176)
!1210 = distinct !DILexicalBlock(scope: !1211, file: !1, line: 492, column: 7)
!1211 = distinct !DILexicalBlock(scope: !1099, file: !1, line: 491, column: 27)
!1212 = !DILocation(line: 492, column: 7, scope: !1211, inlinedAt: !1176)
!1213 = !DILocation(line: 493, column: 4, scope: !1210, inlinedAt: !1176)
!1214 = !DILocation(line: 495, column: 4, scope: !1210, inlinedAt: !1176)
!1215 = !DILocation(line: 504, column: 27, scope: !1216, inlinedAt: !1176)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !1, line: 503, column: 10)
!1217 = distinct !DILexicalBlock(scope: !1098, file: !1, line: 498, column: 7)
!1218 = !DILocation(line: 0, scope: !1098, inlinedAt: !1176)
!1219 = !DILocation(line: 505, column: 12, scope: !1220, inlinedAt: !1176)
!1220 = distinct !DILexicalBlock(scope: !1216, file: !1, line: 505, column: 8)
!1221 = !DILocation(line: 0, scope: !1220, inlinedAt: !1176)
!1222 = !DILocation(line: 505, column: 8, scope: !1216, inlinedAt: !1176)
!1223 = !DILocation(line: 506, column: 5, scope: !1220, inlinedAt: !1176)
!1224 = !DILocation(line: 511, column: 7, scope: !1098, inlinedAt: !1176)
!1225 = !DILocation(line: 508, column: 5, scope: !1220, inlinedAt: !1176)
!1226 = !DILocation(line: 502, column: 4, scope: !1227, inlinedAt: !1176)
!1227 = distinct !DILexicalBlock(scope: !1217, file: !1, line: 499, column: 33)
!1228 = !DILocation(line: 512, column: 14, scope: !1101, inlinedAt: !1176)
!1229 = !DILocation(line: 512, column: 12, scope: !1101, inlinedAt: !1176)
!1230 = distinct !DIAssignID()
!1231 = !DILocation(line: 0, scope: !1101, inlinedAt: !1176)
!1232 = !DILocation(line: 515, column: 18, scope: !1233, inlinedAt: !1176)
!1233 = distinct !DILexicalBlock(scope: !1234, file: !1, line: 515, column: 4)
!1234 = distinct !DILexicalBlock(scope: !1101, file: !1, line: 515, column: 4)
!1235 = !DILocation(line: 515, column: 4, scope: !1234, inlinedAt: !1176)
!1236 = !DILocation(line: 516, column: 13, scope: !1233, inlinedAt: !1176)
!1237 = !DILocation(line: 518, column: 13, scope: !1238, inlinedAt: !1176)
!1238 = distinct !DILexicalBlock(scope: !1239, file: !1, line: 518, column: 4)
!1239 = distinct !DILexicalBlock(scope: !1101, file: !1, line: 518, column: 4)
!1240 = !DILocation(line: 518, column: 4, scope: !1239, inlinedAt: !1176)
!1241 = !DILocation(line: 519, column: 15, scope: !1238, inlinedAt: !1176)
!1242 = !DILocation(line: 519, column: 5, scope: !1238, inlinedAt: !1176)
!1243 = !DILocation(line: 519, column: 13, scope: !1238, inlinedAt: !1176)
!1244 = distinct !{!1244, !1240, !1245, !876, !877}
!1245 = !DILocation(line: 519, column: 44, scope: !1239, inlinedAt: !1176)
!1246 = !DILocation(line: 518, column: 30, scope: !1238, inlinedAt: !1176)
!1247 = distinct !{!1247, !1240, !1245, !876}
!1248 = !DILocation(line: 522, column: 18, scope: !1105, inlinedAt: !1176)
!1249 = !DILocation(line: 522, column: 12, scope: !1105, inlinedAt: !1176)
!1250 = distinct !DIAssignID()
!1251 = !DILocation(line: 0, scope: !1104, inlinedAt: !1176)
!1252 = !DILocation(line: 525, column: 15, scope: !1253, inlinedAt: !1176)
!1253 = distinct !DILexicalBlock(scope: !1104, file: !1, line: 524, column: 4)
!1254 = distinct !DIAssignID()
!1255 = !DILocation(line: 525, column: 13, scope: !1253, inlinedAt: !1176)
!1256 = distinct !DIAssignID()
!1257 = !DILocation(line: 529, column: 25, scope: !1081, inlinedAt: !1176)
!1258 = !DILocation(line: 0, scope: !1099, inlinedAt: !1176)
!1259 = !DILocation(line: 0, scope: !1107, inlinedAt: !1176)
!1260 = !DILocation(line: 532, column: 31, scope: !1261, inlinedAt: !1176)
!1261 = distinct !DILexicalBlock(scope: !1107, file: !1, line: 531, column: 2)
!1262 = !DILocation(line: 532, column: 29, scope: !1261, inlinedAt: !1176)
!1263 = !DILocation(line: 534, column: 46, scope: !1081, inlinedAt: !1176)
!1264 = !DILocation(line: 536, column: 31, scope: !1081, inlinedAt: !1176)
!1265 = !DILocation(line: 537, column: 35, scope: !1081, inlinedAt: !1176)
!1266 = !DILocation(line: 537, column: 45, scope: !1081, inlinedAt: !1176)
!1267 = !DILocation(line: 537, column: 29, scope: !1081, inlinedAt: !1176)
!1268 = !DILocation(line: 539, column: 47, scope: !1081, inlinedAt: !1176)
!1269 = !DILocation(line: 539, column: 38, scope: !1081, inlinedAt: !1176)
!1270 = !DILocation(line: 542, column: 21, scope: !1081, inlinedAt: !1176)
!1271 = !DILocation(line: 0, scope: !698, inlinedAt: !1272)
!1272 = distinct !DILocation(line: 542, column: 6, scope: !1081, inlinedAt: !1176)
!1273 = !DILocation(line: 39, column: 29, scope: !698, inlinedAt: !1272)
!1274 = !DILocation(line: 39, column: 9, scope: !698, inlinedAt: !1272)
!1275 = !DILocation(line: 542, column: 4, scope: !1081, inlinedAt: !1176)
!1276 = !DILocation(line: 543, column: 41, scope: !1081, inlinedAt: !1176)
!1277 = !DILocation(line: 544, column: 5, scope: !1081, inlinedAt: !1176)
!1278 = !DILocation(line: 544, column: 42, scope: !1081, inlinedAt: !1176)
!1279 = !DILocation(line: 0, scope: !710, inlinedAt: !1280)
!1280 = distinct !DILocation(line: 543, column: 6, scope: !1081, inlinedAt: !1176)
!1281 = !DILocation(line: 26, column: 38, scope: !710, inlinedAt: !1280)
!1282 = !DILocation(line: 0, scope: !731, inlinedAt: !1280)
!1283 = !DILocation(line: 32, column: 6, scope: !710, inlinedAt: !1280)
!1284 = !DILocation(line: 544, column: 30, scope: !1081, inlinedAt: !1176)
!1285 = !DILocation(line: 38, column: 3, scope: !730, inlinedAt: !1280)
!1286 = !DILocation(line: 0, scope: !387, inlinedAt: !1287)
!1287 = distinct !DILocation(line: 33, column: 11, scope: !745, inlinedAt: !1280)
!1288 = !DILocation(line: 59, column: 31, scope: !399, inlinedAt: !1287)
!1289 = !DILocation(line: 0, scope: !399, inlinedAt: !1287)
!1290 = !DILocation(line: 60, column: 10, scope: !399, inlinedAt: !1287)
!1291 = !DILocation(line: 61, column: 25, scope: !399, inlinedAt: !1287)
!1292 = !DILocation(line: 0, scope: !409, inlinedAt: !1293)
!1293 = distinct !DILocation(line: 61, column: 12, scope: !399, inlinedAt: !1287)
!1294 = !DILocation(line: 31, column: 25, scope: !409, inlinedAt: !1293)
!1295 = !DILocation(line: 32, column: 4, scope: !409, inlinedAt: !1293)
!1296 = !DILocation(line: 31, column: 30, scope: !409, inlinedAt: !1293)
!1297 = !DILocation(line: 32, column: 33, scope: !409, inlinedAt: !1293)
!1298 = !DILocation(line: 31, column: 9, scope: !409, inlinedAt: !1293)
!1299 = !DILocation(line: 61, column: 9, scope: !399, inlinedAt: !1287)
!1300 = !DILocation(line: 62, column: 18, scope: !387, inlinedAt: !1287)
!1301 = !DILocation(line: 62, column: 2, scope: !399, inlinedAt: !1287)
!1302 = distinct !{!1302, !1303, !1304}
!1303 = !DILocation(line: 58, column: 2, scope: !387, inlinedAt: !1287)
!1304 = !DILocation(line: 62, column: 22, scope: !387, inlinedAt: !1287)
!1305 = !DILocation(line: 0, scope: !730, inlinedAt: !1280)
!1306 = !DILocation(line: 39, column: 15, scope: !733, inlinedAt: !1280)
!1307 = !DILocation(line: 41, column: 42, scope: !733, inlinedAt: !1280)
!1308 = !DILocation(line: 0, scope: !733, inlinedAt: !1280)
!1309 = !DILocation(line: 43, column: 37, scope: !733, inlinedAt: !1280)
!1310 = !DILocation(line: 43, column: 15, scope: !733, inlinedAt: !1280)
!1311 = !DILocation(line: 43, column: 27, scope: !733, inlinedAt: !1280)
!1312 = !DILocation(line: 45, column: 26, scope: !733, inlinedAt: !1280)
!1313 = !DILocation(line: 0, scope: !409, inlinedAt: !1314)
!1314 = distinct !DILocation(line: 45, column: 13, scope: !733, inlinedAt: !1280)
!1315 = !DILocation(line: 31, column: 25, scope: !409, inlinedAt: !1314)
!1316 = !DILocation(line: 32, column: 4, scope: !409, inlinedAt: !1314)
!1317 = !DILocation(line: 31, column: 30, scope: !409, inlinedAt: !1314)
!1318 = !DILocation(line: 32, column: 33, scope: !409, inlinedAt: !1314)
!1319 = !DILocation(line: 31, column: 9, scope: !409, inlinedAt: !1314)
!1320 = !DILocation(line: 45, column: 10, scope: !733, inlinedAt: !1280)
!1321 = !DILocation(line: 47, column: 11, scope: !733, inlinedAt: !1280)
!1322 = !DILocation(line: 48, column: 14, scope: !733, inlinedAt: !1280)
!1323 = !DILocation(line: 48, column: 11, scope: !733, inlinedAt: !1280)
!1324 = !DILocation(line: 50, column: 19, scope: !730, inlinedAt: !1280)
!1325 = !DILocation(line: 50, column: 3, scope: !733, inlinedAt: !1280)
!1326 = distinct !{!1326, !1285, !1327}
!1327 = !DILocation(line: 50, column: 40, scope: !730, inlinedAt: !1280)
!1328 = !DILocation(line: 543, column: 4, scope: !1081, inlinedAt: !1176)
!1329 = !DILocation(line: 548, column: 40, scope: !1330, inlinedAt: !1176)
!1330 = distinct !DILexicalBlock(scope: !1081, file: !1, line: 548, column: 6)
!1331 = !DILocation(line: 548, column: 24, scope: !1330, inlinedAt: !1176)
!1332 = !DILocation(line: 548, column: 45, scope: !1330, inlinedAt: !1176)
!1333 = !DILocation(line: 548, column: 22, scope: !1330, inlinedAt: !1176)
!1334 = !DILocation(line: 548, column: 6, scope: !1081, inlinedAt: !1176)
!1335 = !DILocation(line: 549, column: 30, scope: !1336, inlinedAt: !1176)
!1336 = distinct !DILexicalBlock(scope: !1330, file: !1, line: 548, column: 52)
!1337 = !DILocation(line: 550, column: 24, scope: !1336, inlinedAt: !1176)
!1338 = !DILocation(line: 550, column: 33, scope: !1336, inlinedAt: !1176)
!1339 = !DILocation(line: 0, scope: !790, inlinedAt: !1340)
!1340 = distinct !DILocation(line: 551, column: 3, scope: !1336, inlinedAt: !1176)
!1341 = !DILocation(line: 214, column: 11, scope: !790, inlinedAt: !1340)
!1342 = !DILocation(line: 214, column: 21, scope: !790, inlinedAt: !1340)
!1343 = !DILocation(line: 215, column: 11, scope: !790, inlinedAt: !1340)
!1344 = !DILocation(line: 215, column: 29, scope: !790, inlinedAt: !1340)
!1345 = !DILocation(line: 556, column: 21, scope: !1081, inlinedAt: !1176)
!1346 = !DILocation(line: 47, column: 4, scope: !803, inlinedAt: !1347)
!1347 = distinct !DILocation(line: 556, column: 6, scope: !1081, inlinedAt: !1176)
!1348 = !DILocation(line: 553, column: 2, scope: !1336, inlinedAt: !1176)
!1349 = !DILocation(line: 0, scope: !803, inlinedAt: !1347)
!1350 = !DILocation(line: 46, column: 9, scope: !803, inlinedAt: !1347)
!1351 = !DILocation(line: 556, column: 4, scope: !1081, inlinedAt: !1176)
!1352 = !DILocation(line: 558, column: 21, scope: !1081, inlinedAt: !1176)
!1353 = !DILocation(line: 0, scope: !803, inlinedAt: !1354)
!1354 = distinct !DILocation(line: 558, column: 6, scope: !1081, inlinedAt: !1176)
!1355 = !DILocation(line: 47, column: 4, scope: !803, inlinedAt: !1354)
!1356 = !DILocation(line: 46, column: 9, scope: !803, inlinedAt: !1354)
!1357 = !DILocation(line: 558, column: 4, scope: !1081, inlinedAt: !1176)
!1358 = !DILocation(line: 560, column: 17, scope: !1118, inlinedAt: !1176)
!1359 = !DILocation(line: 561, column: 4, scope: !1118, inlinedAt: !1176)
!1360 = !DILocation(line: 561, column: 30, scope: !1118, inlinedAt: !1176)
!1361 = !DILocation(line: 561, column: 39, scope: !1118, inlinedAt: !1176)
!1362 = !DILocation(line: 562, column: 5, scope: !1118, inlinedAt: !1176)
!1363 = !DILocation(line: 562, column: 29, scope: !1118, inlinedAt: !1176)
!1364 = !DILocation(line: 562, column: 39, scope: !1118, inlinedAt: !1176)
!1365 = !DILocation(line: 560, column: 6, scope: !1081, inlinedAt: !1176)
!1366 = !DILocation(line: 0, scope: !818, inlinedAt: !1367)
!1367 = distinct !DILocation(line: 565, column: 7, scope: !1117, inlinedAt: !1176)
!1368 = !DILocation(line: 72, column: 24, scope: !818, inlinedAt: !1367)
!1369 = !DILocation(line: 0, scope: !698, inlinedAt: !1370)
!1370 = distinct !DILocation(line: 72, column: 9, scope: !818, inlinedAt: !1367)
!1371 = !DILocation(line: 39, column: 29, scope: !698, inlinedAt: !1370)
!1372 = !DILocation(line: 39, column: 9, scope: !698, inlinedAt: !1370)
!1373 = !DILocation(line: 73, column: 20, scope: !818, inlinedAt: !1367)
!1374 = !DILocation(line: 0, scope: !698, inlinedAt: !1375)
!1375 = distinct !DILocation(line: 73, column: 5, scope: !818, inlinedAt: !1367)
!1376 = !DILocation(line: 39, column: 29, scope: !698, inlinedAt: !1375)
!1377 = !DILocation(line: 39, column: 9, scope: !698, inlinedAt: !1375)
!1378 = !DILocation(line: 73, column: 3, scope: !818, inlinedAt: !1367)
!1379 = !DILocation(line: 565, column: 5, scope: !1117, inlinedAt: !1176)
!1380 = !DILocation(line: 0, scope: !1117, inlinedAt: !1176)
!1381 = !DILocation(line: 567, column: 23, scope: !1382, inlinedAt: !1176)
!1382 = distinct !DILexicalBlock(scope: !1117, file: !1, line: 567, column: 7)
!1383 = !DILocation(line: 567, column: 7, scope: !1117, inlinedAt: !1176)
!1384 = !DILocation(line: 568, column: 31, scope: !1385, inlinedAt: !1176)
!1385 = distinct !DILexicalBlock(scope: !1382, file: !1, line: 567, column: 54)
!1386 = !DILocation(line: 569, column: 34, scope: !1385, inlinedAt: !1176)
!1387 = !DILocation(line: 0, scope: !849, inlinedAt: !1388)
!1388 = distinct !DILocation(line: 570, column: 4, scope: !1385, inlinedAt: !1176)
!1389 = !DILocation(line: 222, column: 11, scope: !849, inlinedAt: !1388)
!1390 = !DILocation(line: 222, column: 21, scope: !849, inlinedAt: !1388)
!1391 = !DILocation(line: 223, column: 11, scope: !849, inlinedAt: !1388)
!1392 = !DILocation(line: 223, column: 29, scope: !849, inlinedAt: !1388)
!1393 = !DILocation(line: 572, column: 3, scope: !1385, inlinedAt: !1176)
!1394 = !DILocation(line: 575, column: 21, scope: !1395, inlinedAt: !1176)
!1395 = distinct !DILexicalBlock(scope: !1081, file: !1, line: 575, column: 6)
!1396 = !DILocation(line: 575, column: 6, scope: !1081, inlinedAt: !1176)
!1397 = !DILocation(line: 578, column: 29, scope: !1081, inlinedAt: !1176)
!1398 = !DILocation(line: 580, column: 23, scope: !1122, inlinedAt: !1176)
!1399 = !DILocation(line: 0, scope: !1121, inlinedAt: !1176)
!1400 = !DILocation(line: 583, column: 26, scope: !1121, inlinedAt: !1176)
!1401 = !DILocation(line: 586, column: 19, scope: !1121, inlinedAt: !1176)
!1402 = !DILocation(line: 586, column: 27, scope: !1121, inlinedAt: !1176)
!1403 = !DILocation(line: 586, column: 3, scope: !1121, inlinedAt: !1176)
!1404 = !DILocation(line: 586, column: 30, scope: !1121, inlinedAt: !1176)
!1405 = !DILocation(line: 586, column: 47, scope: !1121, inlinedAt: !1176)
!1406 = !DILocation(line: 586, column: 44, scope: !1121, inlinedAt: !1176)
!1407 = !DILocation(line: 587, column: 4, scope: !1121, inlinedAt: !1176)
!1408 = distinct !{!1408, !1403, !1409}
!1409 = !DILocation(line: 587, column: 6, scope: !1121, inlinedAt: !1176)
!1410 = !DILocation(line: 591, column: 16, scope: !1127, inlinedAt: !1176)
!1411 = !DILocation(line: 591, column: 7, scope: !1121, inlinedAt: !1176)
!1412 = !DILocation(line: 0, scope: !1126, inlinedAt: !1176)
!1413 = !DILocation(line: 593, column: 4, scope: !1126, inlinedAt: !1176)
!1414 = !DILocation(line: 595, column: 46, scope: !1126, inlinedAt: !1176)
!1415 = !DILocation(line: 595, column: 51, scope: !1126, inlinedAt: !1176)
!1416 = !DILocation(line: 597, column: 23, scope: !1126, inlinedAt: !1176)
!1417 = !DILocation(line: 0, scope: !803, inlinedAt: !1418)
!1418 = distinct !DILocation(line: 597, column: 8, scope: !1126, inlinedAt: !1176)
!1419 = !DILocation(line: 47, column: 4, scope: !803, inlinedAt: !1418)
!1420 = !DILocation(line: 46, column: 9, scope: !803, inlinedAt: !1418)
!1421 = !DILocation(line: 598, column: 23, scope: !1126, inlinedAt: !1176)
!1422 = !DILocation(line: 0, scope: !803, inlinedAt: !1423)
!1423 = distinct !DILocation(line: 598, column: 8, scope: !1126, inlinedAt: !1176)
!1424 = !DILocation(line: 47, column: 4, scope: !803, inlinedAt: !1423)
!1425 = !DILocation(line: 46, column: 9, scope: !803, inlinedAt: !1423)
!1426 = !DILocation(line: 601, column: 36, scope: !1126, inlinedAt: !1176)
!1427 = !DILocation(line: 603, column: 19, scope: !1126, inlinedAt: !1176)
!1428 = !DILocation(line: 603, column: 4, scope: !1126, inlinedAt: !1176)
!1429 = !DILocation(line: 610, column: 28, scope: !1430, inlinedAt: !1176)
!1430 = distinct !DILexicalBlock(scope: !1126, file: !1, line: 610, column: 8)
!1431 = !DILocation(line: 604, column: 17, scope: !1126, inlinedAt: !1176)
!1432 = !DILocation(line: 604, column: 28, scope: !1126, inlinedAt: !1176)
!1433 = !DILocation(line: 604, column: 34, scope: !1126, inlinedAt: !1176)
!1434 = distinct !{!1434, !1428, !1435, !876, !877}
!1435 = !DILocation(line: 604, column: 36, scope: !1126, inlinedAt: !1176)
!1436 = distinct !{!1436, !1437}
!1437 = !{!"llvm.loop.unroll.disable"}
!1438 = distinct !{!1438, !1428, !1435, !876}
!1439 = !DILocalVariable(name: "pcoder", arg: 1, scope: !1440, file: !1, line: 104, type: !713)
!1440 = distinct !DISubprogram(name: "get_rep_price", scope: !1, file: !1, line: 104, type: !1441, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1443)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{!23, !713, !252, !252, !821, !252}
!1443 = !{!1439, !1444, !1445, !1446, !1447, !1448}
!1444 = !DILocalVariable(name: "rep_index", arg: 2, scope: !1440, file: !1, line: 104, type: !252)
!1445 = !DILocalVariable(name: "len", arg: 3, scope: !1440, file: !1, line: 105, type: !252)
!1446 = !DILocalVariable(name: "state", arg: 4, scope: !1440, file: !1, line: 105, type: !821)
!1447 = !DILocalVariable(name: "pos_state", arg: 5, scope: !1440, file: !1, line: 106, type: !252)
!1448 = !DILocalVariable(name: "coder", scope: !1440, file: !1, line: 108, type: !724)
!1449 = !DILocation(line: 0, scope: !1440, inlinedAt: !1450)
!1450 = distinct !DILocation(line: 607, column: 8, scope: !1126, inlinedAt: !1176)
!1451 = !DILocation(line: 0, scope: !913, inlinedAt: !1452)
!1452 = distinct !DILocation(line: 109, column: 9, scope: !1440, inlinedAt: !1450)
!1453 = !DILocation(line: 63, column: 9, scope: !913, inlinedAt: !1452)
!1454 = !DILocation(line: 0, scope: !889, inlinedAt: !1455)
!1455 = distinct !DILocation(line: 110, column: 5, scope: !1440, inlinedAt: !1450)
!1456 = !DILocation(line: 0, scope: !903, inlinedAt: !1455)
!1457 = !DILocation(line: 0, scope: !698, inlinedAt: !1458)
!1458 = distinct !DILocation(line: 85, column: 11, scope: !902, inlinedAt: !1455)
!1459 = !DILocation(line: 39, column: 9, scope: !698, inlinedAt: !1458)
!1460 = !DILocation(line: 86, column: 27, scope: !902, inlinedAt: !1455)
!1461 = !DILocation(line: 0, scope: !803, inlinedAt: !1462)
!1462 = distinct !DILocation(line: 86, column: 12, scope: !902, inlinedAt: !1455)
!1463 = !DILocation(line: 47, column: 4, scope: !803, inlinedAt: !1462)
!1464 = !DILocation(line: 46, column: 9, scope: !803, inlinedAt: !1462)
!1465 = !DILocation(line: 86, column: 9, scope: !902, inlinedAt: !1455)
!1466 = !DILocation(line: 110, column: 3, scope: !1440, inlinedAt: !1450)
!1467 = !DILocation(line: 597, column: 6, scope: !1126, inlinedAt: !1176)
!1468 = !DILocation(line: 598, column: 6, scope: !1126, inlinedAt: !1176)
!1469 = !DILocation(line: 607, column: 6, scope: !1126, inlinedAt: !1176)
!1470 = !DILocation(line: 610, column: 48, scope: !1430, inlinedAt: !1176)
!1471 = !DILocation(line: 610, column: 26, scope: !1430, inlinedAt: !1176)
!1472 = !DILocation(line: 610, column: 8, scope: !1126, inlinedAt: !1176)
!1473 = !DILocation(line: 611, column: 31, scope: !1474, inlinedAt: !1176)
!1474 = distinct !DILexicalBlock(scope: !1430, file: !1, line: 610, column: 55)
!1475 = !DILocation(line: 612, column: 25, scope: !1474, inlinedAt: !1176)
!1476 = !DILocation(line: 612, column: 34, scope: !1474, inlinedAt: !1176)
!1477 = !DILocation(line: 613, column: 25, scope: !1474, inlinedAt: !1176)
!1478 = !DILocation(line: 613, column: 35, scope: !1474, inlinedAt: !1176)
!1479 = !DILocation(line: 614, column: 25, scope: !1474, inlinedAt: !1176)
!1480 = !DILocation(line: 614, column: 43, scope: !1474, inlinedAt: !1176)
!1481 = !DILocation(line: 615, column: 25, scope: !1474, inlinedAt: !1176)
!1482 = !DILocation(line: 615, column: 32, scope: !1474, inlinedAt: !1176)
!1483 = !DILocation(line: 616, column: 4, scope: !1474, inlinedAt: !1176)
!1484 = !DILocation(line: 0, scope: !1134, inlinedAt: !1176)
!1485 = !DILocation(line: 624, column: 2, scope: !1134, inlinedAt: !1176)
!1486 = !DILocation(line: 716, column: 14, scope: !1487, inlinedAt: !1176)
!1487 = distinct !DILexicalBlock(scope: !1081, file: !1, line: 716, column: 6)
!1488 = !DILocation(line: 716, column: 6, scope: !1081, inlinedAt: !1176)
!1489 = !DILocation(line: 625, column: 41, scope: !1136, inlinedAt: !1176)
!1490 = !DILocation(line: 625, column: 39, scope: !1136, inlinedAt: !1176)
!1491 = !DILocation(line: 625, column: 57, scope: !1136, inlinedAt: !1176)
!1492 = !DILocation(line: 0, scope: !1136, inlinedAt: !1176)
!1493 = !DILocation(line: 626, column: 7, scope: !1494, inlinedAt: !1176)
!1494 = distinct !DILexicalBlock(scope: !1136, file: !1, line: 626, column: 7)
!1495 = !DILocation(line: 626, column: 7, scope: !1136, inlinedAt: !1176)
!1496 = !DILocation(line: 631, column: 5, scope: !1497, inlinedAt: !1176)
!1497 = distinct !DILexicalBlock(scope: !1498, file: !1, line: 630, column: 3)
!1498 = distinct !DILexicalBlock(scope: !1136, file: !1, line: 630, column: 3)
!1499 = !DILocation(line: 631, column: 8, scope: !1497, inlinedAt: !1176)
!1500 = !DILocation(line: 631, column: 25, scope: !1497, inlinedAt: !1176)
!1501 = !DILocation(line: 631, column: 22, scope: !1497, inlinedAt: !1176)
!1502 = !DILocation(line: 630, column: 3, scope: !1498, inlinedAt: !1176)
!1503 = !DILocation(line: 632, column: 5, scope: !1497, inlinedAt: !1176)
!1504 = !DILocation(line: 630, column: 31, scope: !1497, inlinedAt: !1176)
!1505 = distinct !{!1505, !1502, !1506}
!1506 = !DILocation(line: 632, column: 17, scope: !1498, inlinedAt: !1176)
!1507 = !DILocation(line: 0, scope: !1498, inlinedAt: !1176)
!1508 = !DILocation(line: 634, column: 18, scope: !1136, inlinedAt: !1176)
!1509 = !DILocation(line: 634, column: 3, scope: !1136, inlinedAt: !1176)
!1510 = !DILocation(line: 635, column: 16, scope: !1136, inlinedAt: !1176)
!1511 = !DILocation(line: 635, column: 27, scope: !1136, inlinedAt: !1176)
!1512 = !DILocation(line: 635, column: 33, scope: !1136, inlinedAt: !1176)
!1513 = distinct !{!1513, !1509, !1514, !876, !877}
!1514 = !DILocation(line: 635, column: 35, scope: !1136, inlinedAt: !1176)
!1515 = distinct !{!1515, !1437}
!1516 = distinct !{!1516, !1509, !1514, !876}
!1517 = !DILocation(line: 0, scope: !889, inlinedAt: !1518)
!1518 = distinct !DILocation(line: 638, column: 44, scope: !1136, inlinedAt: !1176)
!1519 = !DILocation(line: 84, column: 16, scope: !903, inlinedAt: !1518)
!1520 = !DILocation(line: 0, scope: !903, inlinedAt: !1518)
!1521 = !DILocation(line: 84, column: 6, scope: !889, inlinedAt: !1518)
!1522 = !DILocation(line: 0, scope: !698, inlinedAt: !1523)
!1523 = distinct !DILocation(line: 85, column: 11, scope: !902, inlinedAt: !1518)
!1524 = !DILocation(line: 39, column: 9, scope: !698, inlinedAt: !1523)
!1525 = !DILocation(line: 86, column: 27, scope: !902, inlinedAt: !1518)
!1526 = !DILocation(line: 0, scope: !803, inlinedAt: !1527)
!1527 = distinct !DILocation(line: 86, column: 12, scope: !902, inlinedAt: !1518)
!1528 = !DILocation(line: 47, column: 4, scope: !803, inlinedAt: !1527)
!1529 = !DILocation(line: 46, column: 9, scope: !803, inlinedAt: !1527)
!1530 = !DILocation(line: 86, column: 9, scope: !902, inlinedAt: !1518)
!1531 = !DILocation(line: 87, column: 2, scope: !902, inlinedAt: !1518)
!1532 = !DILocation(line: 0, scope: !803, inlinedAt: !1533)
!1533 = distinct !DILocation(line: 88, column: 11, scope: !949, inlinedAt: !1518)
!1534 = !DILocation(line: 47, column: 4, scope: !803, inlinedAt: !1533)
!1535 = !DILocation(line: 46, column: 9, scope: !803, inlinedAt: !1533)
!1536 = !DILocation(line: 90, column: 17, scope: !953, inlinedAt: !1518)
!1537 = !DILocation(line: 0, scope: !953, inlinedAt: !1518)
!1538 = !DILocation(line: 90, column: 7, scope: !949, inlinedAt: !1518)
!1539 = !DILocation(line: 0, scope: !698, inlinedAt: !1540)
!1540 = distinct !DILocation(line: 91, column: 13, scope: !952, inlinedAt: !1518)
!1541 = !DILocation(line: 39, column: 9, scope: !698, inlinedAt: !1540)
!1542 = !DILocation(line: 91, column: 10, scope: !952, inlinedAt: !1518)
!1543 = !DILocation(line: 92, column: 3, scope: !952, inlinedAt: !1518)
!1544 = !DILocation(line: 0, scope: !803, inlinedAt: !1545)
!1545 = distinct !DILocation(line: 93, column: 13, scope: !961, inlinedAt: !1518)
!1546 = !DILocation(line: 47, column: 4, scope: !803, inlinedAt: !1545)
!1547 = !DILocation(line: 46, column: 9, scope: !803, inlinedAt: !1545)
!1548 = !DILocation(line: 93, column: 10, scope: !961, inlinedAt: !1518)
!1549 = !DILocation(line: 94, column: 26, scope: !961, inlinedAt: !1518)
!1550 = !DILocation(line: 0, scope: !409, inlinedAt: !1551)
!1551 = distinct !DILocation(line: 94, column: 13, scope: !961, inlinedAt: !1518)
!1552 = !DILocation(line: 31, column: 25, scope: !409, inlinedAt: !1551)
!1553 = !DILocation(line: 32, column: 4, scope: !409, inlinedAt: !1551)
!1554 = !DILocation(line: 31, column: 30, scope: !409, inlinedAt: !1551)
!1555 = !DILocation(line: 32, column: 33, scope: !409, inlinedAt: !1551)
!1556 = !DILocation(line: 31, column: 9, scope: !409, inlinedAt: !1551)
!1557 = !DILocation(line: 94, column: 10, scope: !961, inlinedAt: !1518)
!1558 = !DILocation(line: 638, column: 42, scope: !1136, inlinedAt: !1176)
!1559 = !DILocation(line: 641, column: 3, scope: !1136, inlinedAt: !1176)
!1560 = !DILocation(line: 0, scope: !913, inlinedAt: !1561)
!1561 = distinct !DILocation(line: 643, column: 8, scope: !1142, inlinedAt: !1176)
!1562 = !DILocation(line: 63, column: 41, scope: !913, inlinedAt: !1561)
!1563 = !DILocation(line: 63, column: 9, scope: !913, inlinedAt: !1561)
!1564 = !DILocation(line: 643, column: 6, scope: !1142, inlinedAt: !1176)
!1565 = !DILocation(line: 0, scope: !1142, inlinedAt: !1176)
!1566 = !DILocation(line: 646, column: 44, scope: !1567, inlinedAt: !1176)
!1567 = distinct !DILexicalBlock(scope: !1142, file: !1, line: 646, column: 8)
!1568 = !DILocation(line: 646, column: 28, scope: !1567, inlinedAt: !1176)
!1569 = !DILocation(line: 646, column: 56, scope: !1567, inlinedAt: !1176)
!1570 = !DILocation(line: 646, column: 26, scope: !1567, inlinedAt: !1176)
!1571 = !DILocation(line: 646, column: 8, scope: !1142, inlinedAt: !1176)
!1572 = !DILocation(line: 647, column: 39, scope: !1573, inlinedAt: !1176)
!1573 = distinct !DILexicalBlock(scope: !1567, file: !1, line: 646, column: 63)
!1574 = !DILocation(line: 648, column: 33, scope: !1573, inlinedAt: !1176)
!1575 = !DILocation(line: 648, column: 42, scope: !1573, inlinedAt: !1176)
!1576 = !DILocation(line: 649, column: 33, scope: !1573, inlinedAt: !1176)
!1577 = !DILocation(line: 649, column: 43, scope: !1573, inlinedAt: !1176)
!1578 = !DILocation(line: 650, column: 33, scope: !1573, inlinedAt: !1176)
!1579 = !DILocation(line: 650, column: 51, scope: !1573, inlinedAt: !1176)
!1580 = !DILocation(line: 651, column: 4, scope: !1573, inlinedAt: !1176)
!1581 = !DILocation(line: 652, column: 12, scope: !1136, inlinedAt: !1176)
!1582 = !DILocation(line: 652, column: 23, scope: !1136, inlinedAt: !1176)
!1583 = !DILocation(line: 652, column: 3, scope: !1142, inlinedAt: !1176)
!1584 = distinct !{!1584, !1559, !1585}
!1585 = !DILocation(line: 652, column: 27, scope: !1136, inlinedAt: !1176)
!1586 = !DILocation(line: 656, column: 7, scope: !1136, inlinedAt: !1176)
!1587 = !DILocation(line: 661, column: 26, scope: !1136, inlinedAt: !1176)
!1588 = !DILocation(line: 663, column: 21, scope: !1589, inlinedAt: !1176)
!1589 = distinct !DILexicalBlock(scope: !1590, file: !1, line: 663, column: 3)
!1590 = distinct !DILexicalBlock(scope: !1136, file: !1, line: 663, column: 3)
!1591 = !DILocation(line: 664, column: 5, scope: !1589, inlinedAt: !1176)
!1592 = !DILocation(line: 663, column: 3, scope: !1590, inlinedAt: !1176)
!1593 = !DILocation(line: 664, column: 8, scope: !1589, inlinedAt: !1176)
!1594 = !DILocation(line: 664, column: 27, scope: !1589, inlinedAt: !1176)
!1595 = !DILocation(line: 664, column: 24, scope: !1589, inlinedAt: !1176)
!1596 = !DILocation(line: 665, column: 5, scope: !1589, inlinedAt: !1176)
!1597 = distinct !{!1597, !1592, !1598}
!1598 = !DILocation(line: 665, column: 19, scope: !1590, inlinedAt: !1176)
!1599 = !DILocation(line: 667, column: 14, scope: !1136, inlinedAt: !1176)
!1600 = !DILocation(line: 669, column: 18, scope: !1147, inlinedAt: !1176)
!1601 = !DILocation(line: 669, column: 7, scope: !1136, inlinedAt: !1176)
!1602 = !DILocation(line: 0, scope: !1146, inlinedAt: !1176)
!1603 = !DILocation(line: 673, column: 40, scope: !1146, inlinedAt: !1176)
!1604 = !DILocation(line: 673, column: 52, scope: !1146, inlinedAt: !1176)
!1605 = !DILocation(line: 0, scope: !913, inlinedAt: !1606)
!1606 = distinct !DILocation(line: 676, column: 8, scope: !1146, inlinedAt: !1176)
!1607 = !DILocation(line: 63, column: 41, scope: !913, inlinedAt: !1606)
!1608 = !DILocation(line: 63, column: 9, scope: !913, inlinedAt: !1606)
!1609 = !DILocation(line: 678, column: 23, scope: !1146, inlinedAt: !1176)
!1610 = !DILocation(line: 0, scope: !698, inlinedAt: !1611)
!1611 = distinct !DILocation(line: 678, column: 8, scope: !1146, inlinedAt: !1176)
!1612 = !DILocation(line: 39, column: 29, scope: !698, inlinedAt: !1611)
!1613 = !DILocation(line: 39, column: 9, scope: !698, inlinedAt: !1611)
!1614 = !DILocation(line: 680, column: 20, scope: !1146, inlinedAt: !1176)
!1615 = !DILocation(line: 680, column: 7, scope: !1146, inlinedAt: !1176)
!1616 = !DILocation(line: 681, column: 7, scope: !1146, inlinedAt: !1176)
!1617 = !DILocation(line: 681, column: 27, scope: !1146, inlinedAt: !1176)
!1618 = !DILocation(line: 0, scope: !710, inlinedAt: !1619)
!1619 = distinct !DILocation(line: 679, column: 8, scope: !1146, inlinedAt: !1176)
!1620 = !DILocation(line: 26, column: 38, scope: !710, inlinedAt: !1619)
!1621 = !DILocation(line: 0, scope: !731, inlinedAt: !1619)
!1622 = !DILocation(line: 0, scope: !730, inlinedAt: !1619)
!1623 = !DILocation(line: 39, column: 15, scope: !733, inlinedAt: !1619)
!1624 = !DILocation(line: 41, column: 42, scope: !733, inlinedAt: !1619)
!1625 = !DILocation(line: 0, scope: !733, inlinedAt: !1619)
!1626 = !DILocation(line: 43, column: 37, scope: !733, inlinedAt: !1619)
!1627 = !DILocation(line: 43, column: 15, scope: !733, inlinedAt: !1619)
!1628 = !DILocation(line: 43, column: 27, scope: !733, inlinedAt: !1619)
!1629 = !DILocation(line: 45, column: 26, scope: !733, inlinedAt: !1619)
!1630 = !DILocation(line: 0, scope: !409, inlinedAt: !1631)
!1631 = distinct !DILocation(line: 45, column: 13, scope: !733, inlinedAt: !1619)
!1632 = !DILocation(line: 31, column: 25, scope: !409, inlinedAt: !1631)
!1633 = !DILocation(line: 32, column: 4, scope: !409, inlinedAt: !1631)
!1634 = !DILocation(line: 31, column: 30, scope: !409, inlinedAt: !1631)
!1635 = !DILocation(line: 32, column: 33, scope: !409, inlinedAt: !1631)
!1636 = !DILocation(line: 31, column: 9, scope: !409, inlinedAt: !1631)
!1637 = !DILocation(line: 45, column: 10, scope: !733, inlinedAt: !1619)
!1638 = !DILocation(line: 47, column: 11, scope: !733, inlinedAt: !1619)
!1639 = !DILocation(line: 48, column: 14, scope: !733, inlinedAt: !1619)
!1640 = !DILocation(line: 48, column: 11, scope: !733, inlinedAt: !1619)
!1641 = !DILocation(line: 50, column: 19, scope: !730, inlinedAt: !1619)
!1642 = !DILocation(line: 50, column: 3, scope: !733, inlinedAt: !1619)
!1643 = distinct !{!1643, !1644, !1645}
!1644 = !DILocation(line: 38, column: 3, scope: !730, inlinedAt: !1619)
!1645 = !DILocation(line: 50, column: 40, scope: !730, inlinedAt: !1619)
!1646 = !DILocation(line: 685, column: 42, scope: !1146, inlinedAt: !1176)
!1647 = !DILocation(line: 685, column: 47, scope: !1146, inlinedAt: !1176)
!1648 = !DILocation(line: 688, column: 23, scope: !1146, inlinedAt: !1176)
!1649 = !DILocation(line: 0, scope: !803, inlinedAt: !1650)
!1650 = distinct !DILocation(line: 688, column: 8, scope: !1146, inlinedAt: !1176)
!1651 = !DILocation(line: 47, column: 4, scope: !803, inlinedAt: !1650)
!1652 = !DILocation(line: 46, column: 9, scope: !803, inlinedAt: !1650)
!1653 = !DILocation(line: 689, column: 23, scope: !1146, inlinedAt: !1176)
!1654 = !DILocation(line: 0, scope: !803, inlinedAt: !1655)
!1655 = distinct !DILocation(line: 689, column: 8, scope: !1146, inlinedAt: !1176)
!1656 = !DILocation(line: 47, column: 4, scope: !803, inlinedAt: !1655)
!1657 = !DILocation(line: 46, column: 9, scope: !803, inlinedAt: !1655)
!1658 = !DILocation(line: 692, column: 43, scope: !1146, inlinedAt: !1176)
!1659 = !DILocation(line: 692, column: 47, scope: !1146, inlinedAt: !1176)
!1660 = !DILocation(line: 694, column: 19, scope: !1146, inlinedAt: !1176)
!1661 = !DILocation(line: 694, column: 4, scope: !1146, inlinedAt: !1176)
!1662 = !DILocation(line: 701, column: 28, scope: !1663, inlinedAt: !1176)
!1663 = distinct !DILexicalBlock(scope: !1146, file: !1, line: 701, column: 8)
!1664 = !DILocation(line: 695, column: 17, scope: !1146, inlinedAt: !1176)
!1665 = !DILocation(line: 695, column: 28, scope: !1146, inlinedAt: !1176)
!1666 = !DILocation(line: 695, column: 34, scope: !1146, inlinedAt: !1176)
!1667 = distinct !{!1667, !1661, !1668, !876, !877}
!1668 = !DILocation(line: 695, column: 36, scope: !1146, inlinedAt: !1176)
!1669 = distinct !{!1669, !1437}
!1670 = distinct !{!1670, !1661, !1668, !876}
!1671 = !DILocation(line: 0, scope: !1440, inlinedAt: !1672)
!1672 = distinct !DILocation(line: 698, column: 8, scope: !1146, inlinedAt: !1176)
!1673 = !DILocation(line: 0, scope: !913, inlinedAt: !1674)
!1674 = distinct !DILocation(line: 109, column: 9, scope: !1440, inlinedAt: !1672)
!1675 = !DILocation(line: 63, column: 41, scope: !913, inlinedAt: !1674)
!1676 = !DILocation(line: 63, column: 9, scope: !913, inlinedAt: !1674)
!1677 = !DILocation(line: 0, scope: !889, inlinedAt: !1678)
!1678 = distinct !DILocation(line: 110, column: 5, scope: !1440, inlinedAt: !1672)
!1679 = !DILocation(line: 0, scope: !903, inlinedAt: !1678)
!1680 = !DILocation(line: 0, scope: !698, inlinedAt: !1681)
!1681 = distinct !DILocation(line: 85, column: 11, scope: !902, inlinedAt: !1678)
!1682 = !DILocation(line: 39, column: 9, scope: !698, inlinedAt: !1681)
!1683 = !DILocation(line: 86, column: 27, scope: !902, inlinedAt: !1678)
!1684 = !DILocation(line: 0, scope: !803, inlinedAt: !1685)
!1685 = distinct !DILocation(line: 86, column: 12, scope: !902, inlinedAt: !1678)
!1686 = !DILocation(line: 47, column: 4, scope: !803, inlinedAt: !1685)
!1687 = !DILocation(line: 46, column: 9, scope: !803, inlinedAt: !1685)
!1688 = !DILocation(line: 86, column: 9, scope: !902, inlinedAt: !1678)
!1689 = !DILocation(line: 110, column: 3, scope: !1440, inlinedAt: !1672)
!1690 = !DILocation(line: 676, column: 6, scope: !1146, inlinedAt: !1176)
!1691 = !DILocation(line: 678, column: 6, scope: !1146, inlinedAt: !1176)
!1692 = !DILocation(line: 679, column: 6, scope: !1146, inlinedAt: !1176)
!1693 = !DILocation(line: 688, column: 6, scope: !1146, inlinedAt: !1176)
!1694 = !DILocation(line: 689, column: 6, scope: !1146, inlinedAt: !1176)
!1695 = !DILocation(line: 698, column: 6, scope: !1146, inlinedAt: !1176)
!1696 = !DILocation(line: 701, column: 48, scope: !1663, inlinedAt: !1176)
!1697 = !DILocation(line: 701, column: 26, scope: !1663, inlinedAt: !1176)
!1698 = !DILocation(line: 701, column: 8, scope: !1146, inlinedAt: !1176)
!1699 = !DILocation(line: 702, column: 31, scope: !1700, inlinedAt: !1176)
!1700 = distinct !DILexicalBlock(scope: !1663, file: !1, line: 701, column: 55)
!1701 = !DILocation(line: 703, column: 25, scope: !1700, inlinedAt: !1176)
!1702 = !DILocation(line: 703, column: 34, scope: !1700, inlinedAt: !1176)
!1703 = !DILocation(line: 704, column: 25, scope: !1700, inlinedAt: !1176)
!1704 = !DILocation(line: 704, column: 35, scope: !1700, inlinedAt: !1176)
!1705 = !DILocation(line: 705, column: 25, scope: !1700, inlinedAt: !1176)
!1706 = !DILocation(line: 705, column: 43, scope: !1700, inlinedAt: !1176)
!1707 = !DILocation(line: 706, column: 25, scope: !1700, inlinedAt: !1176)
!1708 = !DILocation(line: 706, column: 32, scope: !1700, inlinedAt: !1176)
!1709 = !DILocation(line: 707, column: 25, scope: !1700, inlinedAt: !1176)
!1710 = !DILocation(line: 707, column: 36, scope: !1700, inlinedAt: !1176)
!1711 = !DILocation(line: 708, column: 25, scope: !1700, inlinedAt: !1176)
!1712 = !DILocation(line: 708, column: 37, scope: !1700, inlinedAt: !1176)
!1713 = !DILocation(line: 709, column: 4, scope: !1700, inlinedAt: !1176)
!1714 = !DILocation(line: 624, column: 58, scope: !1137, inlinedAt: !1176)
!1715 = !DILocation(line: 624, column: 41, scope: !1137, inlinedAt: !1176)
!1716 = distinct !{!1716, !1485, !1717}
!1717 = !DILocation(line: 712, column: 2, scope: !1134, inlinedAt: !1176)
!1718 = !DILocation(line: 0, scope: !1719, inlinedAt: !1176)
!1719 = distinct !DILexicalBlock(scope: !1487, file: !1, line: 716, column: 27)
!1720 = !DILocation(line: 720, column: 20, scope: !1719, inlinedAt: !1176)
!1721 = !DILocation(line: 720, column: 50, scope: !1719, inlinedAt: !1176)
!1722 = !DILocation(line: 720, column: 18, scope: !1719, inlinedAt: !1176)
!1723 = !DILocation(line: 721, column: 4, scope: !1719, inlinedAt: !1176)
!1724 = !DILocation(line: 720, column: 3, scope: !1719, inlinedAt: !1176)
!1725 = distinct !{!1725, !1724, !1726}
!1726 = !DILocation(line: 721, column: 6, scope: !1719, inlinedAt: !1176)
!1727 = !DILocation(line: 723, column: 39, scope: !1719, inlinedAt: !1176)
!1728 = !DILocation(line: 724, column: 2, scope: !1719, inlinedAt: !1176)
!1729 = !DILocation(line: 727, column: 14, scope: !1155, inlinedAt: !1176)
!1730 = !DILocation(line: 727, column: 6, scope: !1081, inlinedAt: !1176)
!1731 = !DILocation(line: 729, column: 22, scope: !1154, inlinedAt: !1176)
!1732 = !DILocation(line: 0, scope: !698, inlinedAt: !1733)
!1733 = distinct !DILocation(line: 729, column: 7, scope: !1154, inlinedAt: !1176)
!1734 = !DILocation(line: 39, column: 29, scope: !698, inlinedAt: !1733)
!1735 = !DILocation(line: 39, column: 9, scope: !698, inlinedAt: !1733)
!1736 = !DILocation(line: 0, scope: !1154, inlinedAt: !1176)
!1737 = !DILocation(line: 731, column: 18, scope: !1154, inlinedAt: !1176)
!1738 = !DILocation(line: 731, column: 3, scope: !1154, inlinedAt: !1176)
!1739 = !DILocation(line: 732, column: 16, scope: !1154, inlinedAt: !1176)
!1740 = !DILocation(line: 732, column: 27, scope: !1154, inlinedAt: !1176)
!1741 = !DILocation(line: 732, column: 33, scope: !1154, inlinedAt: !1176)
!1742 = distinct !{!1742, !1437}
!1743 = distinct !{!1743, !1738, !1744, !876, !877}
!1744 = !DILocation(line: 732, column: 35, scope: !1154, inlinedAt: !1176)
!1745 = !DILocation(line: 735, column: 3, scope: !1154, inlinedAt: !1176)
!1746 = distinct !{!1746, !1738, !1744, !876}
!1747 = !DILocation(line: 735, column: 22, scope: !1154, inlinedAt: !1176)
!1748 = !DILocation(line: 735, column: 40, scope: !1154, inlinedAt: !1176)
!1749 = !DILocation(line: 735, column: 20, scope: !1154, inlinedAt: !1176)
!1750 = !DILocation(line: 736, column: 4, scope: !1154, inlinedAt: !1176)
!1751 = distinct !{!1751, !1745, !1752}
!1752 = !DILocation(line: 736, column: 6, scope: !1154, inlinedAt: !1176)
!1753 = !DILocation(line: 738, column: 3, scope: !1158, inlinedAt: !1176)
!1754 = !DILocation(line: 738, scope: !1158, inlinedAt: !1176)
!1755 = !DILocation(line: 0, scope: !1158, inlinedAt: !1176)
!1756 = !DILocation(line: 739, column: 48, scope: !1160, inlinedAt: !1176)
!1757 = !DILocation(line: 0, scope: !1160, inlinedAt: !1176)
!1758 = !DILocation(line: 0, scope: !991, inlinedAt: !1759)
!1759 = distinct !DILocation(line: 741, column: 8, scope: !1160, inlinedAt: !1176)
!1760 = !DILocation(line: 119, column: 36, scope: !991, inlinedAt: !1759)
!1761 = !DILocation(line: 122, column: 10, scope: !1003, inlinedAt: !1759)
!1762 = !DILocation(line: 122, column: 6, scope: !991, inlinedAt: !1759)
!1763 = !DILocation(line: 123, column: 11, scope: !1010, inlinedAt: !1759)
!1764 = !DILocation(line: 124, column: 2, scope: !1010, inlinedAt: !1759)
!1765 = !DILocation(line: 0, scope: !1013, inlinedAt: !1766)
!1766 = distinct !DILocation(line: 125, column: 29, scope: !1002, inlinedAt: !1759)
!1767 = !DILocation(line: 128, column: 10, scope: !1018, inlinedAt: !1766)
!1768 = !DILocation(line: 128, column: 6, scope: !1013, inlinedAt: !1766)
!1769 = !DILocation(line: 0, scope: !1002, inlinedAt: !1759)
!1770 = !DILocation(line: 126, column: 11, scope: !1002, inlinedAt: !1759)
!1771 = !DILocation(line: 127, column: 31, scope: !1002, inlinedAt: !1759)
!1772 = !DILocation(line: 127, column: 7, scope: !1002, inlinedAt: !1759)
!1773 = !DILocation(line: 127, column: 5, scope: !1002, inlinedAt: !1759)
!1774 = !DILocation(line: 0, scope: !1003, inlinedAt: !1759)
!1775 = !DILocation(line: 0, scope: !913, inlinedAt: !1776)
!1776 = distinct !DILocation(line: 130, column: 11, scope: !991, inlinedAt: !1759)
!1777 = !DILocation(line: 63, column: 9, scope: !913, inlinedAt: !1776)
!1778 = !DILocation(line: 729, column: 5, scope: !1154, inlinedAt: !1176)
!1779 = !DILocation(line: 741, column: 6, scope: !1160, inlinedAt: !1176)
!1780 = !DILocation(line: 744, column: 44, scope: !1781, inlinedAt: !1176)
!1781 = distinct !DILexicalBlock(scope: !1160, file: !1, line: 744, column: 8)
!1782 = !DILocation(line: 744, column: 28, scope: !1781, inlinedAt: !1176)
!1783 = !DILocation(line: 744, column: 56, scope: !1781, inlinedAt: !1176)
!1784 = !DILocation(line: 744, column: 26, scope: !1781, inlinedAt: !1176)
!1785 = !DILocation(line: 744, column: 8, scope: !1160, inlinedAt: !1176)
!1786 = !DILocation(line: 745, column: 39, scope: !1787, inlinedAt: !1176)
!1787 = distinct !DILexicalBlock(scope: !1781, file: !1, line: 744, column: 63)
!1788 = !DILocation(line: 746, column: 33, scope: !1787, inlinedAt: !1176)
!1789 = !DILocation(line: 746, column: 42, scope: !1787, inlinedAt: !1176)
!1790 = !DILocation(line: 748, column: 18, scope: !1787, inlinedAt: !1176)
!1791 = !DILocation(line: 747, column: 33, scope: !1787, inlinedAt: !1176)
!1792 = !DILocation(line: 748, column: 7, scope: !1787, inlinedAt: !1176)
!1793 = !DILocation(line: 749, column: 33, scope: !1787, inlinedAt: !1176)
!1794 = !DILocation(line: 749, column: 51, scope: !1787, inlinedAt: !1176)
!1795 = !DILocation(line: 750, column: 4, scope: !1787, inlinedAt: !1176)
!1796 = !DILocation(line: 752, column: 38, scope: !1165, inlinedAt: !1176)
!1797 = !DILocation(line: 752, column: 17, scope: !1165, inlinedAt: !1176)
!1798 = !DILocation(line: 752, column: 8, scope: !1160, inlinedAt: !1176)
!1799 = !DILocation(line: 738, column: 41, scope: !1161, inlinedAt: !1176)
!1800 = distinct !{!1800, !1753, !1801}
!1801 = !DILocation(line: 816, column: 3, scope: !1158, inlinedAt: !1176)
!1802 = !DILocation(line: 754, column: 41, scope: !1164, inlinedAt: !1176)
!1803 = !DILocation(line: 754, column: 52, scope: !1164, inlinedAt: !1176)
!1804 = !DILocation(line: 0, scope: !1164, inlinedAt: !1176)
!1805 = !DILocation(line: 755, column: 36, scope: !1164, inlinedAt: !1176)
!1806 = !DILocation(line: 756, column: 28, scope: !1164, inlinedAt: !1176)
!1807 = !DILocation(line: 759, column: 23, scope: !1808, inlinedAt: !1176)
!1808 = distinct !DILexicalBlock(scope: !1809, file: !1, line: 759, column: 5)
!1809 = distinct !DILexicalBlock(scope: !1164, file: !1, line: 759, column: 5)
!1810 = !DILocation(line: 759, column: 31, scope: !1808, inlinedAt: !1176)
!1811 = !DILocation(line: 759, column: 5, scope: !1809, inlinedAt: !1176)
!1812 = !DILocation(line: 760, column: 7, scope: !1808, inlinedAt: !1176)
!1813 = !DILocation(line: 760, column: 26, scope: !1808, inlinedAt: !1176)
!1814 = !DILocation(line: 760, column: 23, scope: !1808, inlinedAt: !1176)
!1815 = !DILocation(line: 761, column: 7, scope: !1808, inlinedAt: !1176)
!1816 = distinct !{!1816, !1811, !1817}
!1817 = !DILocation(line: 761, column: 21, scope: !1809, inlinedAt: !1176)
!1818 = !DILocation(line: 0, scope: !1809, inlinedAt: !1176)
!1819 = !DILocation(line: 763, column: 16, scope: !1164, inlinedAt: !1176)
!1820 = !DILocation(line: 765, column: 20, scope: !1170, inlinedAt: !1176)
!1821 = !DILocation(line: 765, column: 9, scope: !1164, inlinedAt: !1176)
!1822 = !DILocation(line: 0, scope: !1169, inlinedAt: !1176)
!1823 = !DILocation(line: 769, column: 20, scope: !1169, inlinedAt: !1176)
!1824 = !DILocation(line: 769, column: 32, scope: !1169, inlinedAt: !1176)
!1825 = !DILocation(line: 773, column: 9, scope: !1169, inlinedAt: !1176)
!1826 = !DILocation(line: 0, scope: !698, inlinedAt: !1827)
!1827 = distinct !DILocation(line: 772, column: 10, scope: !1169, inlinedAt: !1176)
!1828 = !DILocation(line: 39, column: 29, scope: !698, inlinedAt: !1827)
!1829 = !DILocation(line: 39, column: 9, scope: !698, inlinedAt: !1827)
!1830 = !DILocation(line: 776, column: 22, scope: !1169, inlinedAt: !1176)
!1831 = !DILocation(line: 776, column: 9, scope: !1169, inlinedAt: !1176)
!1832 = !DILocation(line: 778, column: 9, scope: !1169, inlinedAt: !1176)
!1833 = !DILocation(line: 779, column: 9, scope: !1169, inlinedAt: !1176)
!1834 = !DILocation(line: 0, scope: !710, inlinedAt: !1835)
!1835 = distinct !DILocation(line: 774, column: 10, scope: !1169, inlinedAt: !1176)
!1836 = !DILocation(line: 26, column: 38, scope: !710, inlinedAt: !1835)
!1837 = !DILocation(line: 0, scope: !731, inlinedAt: !1835)
!1838 = !DILocation(line: 0, scope: !730, inlinedAt: !1835)
!1839 = !DILocation(line: 39, column: 15, scope: !733, inlinedAt: !1835)
!1840 = !DILocation(line: 41, column: 42, scope: !733, inlinedAt: !1835)
!1841 = !DILocation(line: 0, scope: !733, inlinedAt: !1835)
!1842 = !DILocation(line: 43, column: 37, scope: !733, inlinedAt: !1835)
!1843 = !DILocation(line: 43, column: 15, scope: !733, inlinedAt: !1835)
!1844 = !DILocation(line: 43, column: 27, scope: !733, inlinedAt: !1835)
!1845 = !DILocation(line: 45, column: 26, scope: !733, inlinedAt: !1835)
!1846 = !DILocation(line: 0, scope: !409, inlinedAt: !1847)
!1847 = distinct !DILocation(line: 45, column: 13, scope: !733, inlinedAt: !1835)
!1848 = !DILocation(line: 31, column: 25, scope: !409, inlinedAt: !1847)
!1849 = !DILocation(line: 32, column: 4, scope: !409, inlinedAt: !1847)
!1850 = !DILocation(line: 31, column: 30, scope: !409, inlinedAt: !1847)
!1851 = !DILocation(line: 32, column: 33, scope: !409, inlinedAt: !1847)
!1852 = !DILocation(line: 31, column: 9, scope: !409, inlinedAt: !1847)
!1853 = !DILocation(line: 45, column: 10, scope: !733, inlinedAt: !1835)
!1854 = !DILocation(line: 47, column: 11, scope: !733, inlinedAt: !1835)
!1855 = !DILocation(line: 48, column: 14, scope: !733, inlinedAt: !1835)
!1856 = !DILocation(line: 48, column: 11, scope: !733, inlinedAt: !1835)
!1857 = !DILocation(line: 50, column: 19, scope: !730, inlinedAt: !1835)
!1858 = !DILocation(line: 50, column: 3, scope: !733, inlinedAt: !1835)
!1859 = distinct !{!1859, !1860, !1861}
!1860 = !DILocation(line: 38, column: 3, scope: !730, inlinedAt: !1835)
!1861 = !DILocation(line: 50, column: 40, scope: !730, inlinedAt: !1835)
!1862 = !DILocation(line: 782, column: 39, scope: !1169, inlinedAt: !1176)
!1863 = !DILocation(line: 782, column: 44, scope: !1169, inlinedAt: !1176)
!1864 = !DILocation(line: 787, column: 9, scope: !1169, inlinedAt: !1176)
!1865 = !DILocation(line: 0, scope: !803, inlinedAt: !1866)
!1866 = distinct !DILocation(line: 786, column: 10, scope: !1169, inlinedAt: !1176)
!1867 = !DILocation(line: 47, column: 4, scope: !803, inlinedAt: !1866)
!1868 = !DILocation(line: 46, column: 9, scope: !803, inlinedAt: !1866)
!1869 = !DILocation(line: 788, column: 25, scope: !1169, inlinedAt: !1176)
!1870 = !DILocation(line: 0, scope: !803, inlinedAt: !1871)
!1871 = distinct !DILocation(line: 788, column: 10, scope: !1169, inlinedAt: !1176)
!1872 = !DILocation(line: 47, column: 4, scope: !803, inlinedAt: !1871)
!1873 = !DILocation(line: 46, column: 9, scope: !803, inlinedAt: !1871)
!1874 = !DILocation(line: 791, column: 45, scope: !1169, inlinedAt: !1176)
!1875 = !DILocation(line: 791, column: 49, scope: !1169, inlinedAt: !1176)
!1876 = !DILocation(line: 793, column: 21, scope: !1169, inlinedAt: !1176)
!1877 = !DILocation(line: 793, column: 6, scope: !1169, inlinedAt: !1176)
!1878 = !DILocation(line: 800, column: 30, scope: !1879, inlinedAt: !1176)
!1879 = distinct !DILexicalBlock(scope: !1169, file: !1, line: 800, column: 10)
!1880 = !DILocation(line: 794, column: 19, scope: !1169, inlinedAt: !1176)
!1881 = !DILocation(line: 794, column: 30, scope: !1169, inlinedAt: !1176)
!1882 = !DILocation(line: 794, column: 36, scope: !1169, inlinedAt: !1176)
!1883 = distinct !{!1883, !1877, !1884, !876, !877}
!1884 = !DILocation(line: 794, column: 38, scope: !1169, inlinedAt: !1176)
!1885 = distinct !{!1885, !1437}
!1886 = distinct !{!1886, !1877, !1884, !876}
!1887 = !DILocation(line: 0, scope: !1440, inlinedAt: !1888)
!1888 = distinct !DILocation(line: 797, column: 10, scope: !1169, inlinedAt: !1176)
!1889 = !DILocation(line: 0, scope: !913, inlinedAt: !1890)
!1890 = distinct !DILocation(line: 109, column: 9, scope: !1440, inlinedAt: !1888)
!1891 = !DILocation(line: 63, column: 41, scope: !913, inlinedAt: !1890)
!1892 = !DILocation(line: 63, column: 9, scope: !913, inlinedAt: !1890)
!1893 = !DILocation(line: 0, scope: !889, inlinedAt: !1894)
!1894 = distinct !DILocation(line: 110, column: 5, scope: !1440, inlinedAt: !1888)
!1895 = !DILocation(line: 0, scope: !903, inlinedAt: !1894)
!1896 = !DILocation(line: 0, scope: !698, inlinedAt: !1897)
!1897 = distinct !DILocation(line: 85, column: 11, scope: !902, inlinedAt: !1894)
!1898 = !DILocation(line: 39, column: 9, scope: !698, inlinedAt: !1897)
!1899 = !DILocation(line: 86, column: 27, scope: !902, inlinedAt: !1894)
!1900 = !DILocation(line: 0, scope: !803, inlinedAt: !1901)
!1901 = distinct !DILocation(line: 86, column: 12, scope: !902, inlinedAt: !1894)
!1902 = !DILocation(line: 47, column: 4, scope: !803, inlinedAt: !1901)
!1903 = !DILocation(line: 46, column: 9, scope: !803, inlinedAt: !1901)
!1904 = !DILocation(line: 86, column: 9, scope: !902, inlinedAt: !1894)
!1905 = !DILocation(line: 110, column: 3, scope: !1440, inlinedAt: !1888)
!1906 = !DILocation(line: 772, column: 8, scope: !1169, inlinedAt: !1176)
!1907 = !DILocation(line: 774, column: 8, scope: !1169, inlinedAt: !1176)
!1908 = !DILocation(line: 786, column: 8, scope: !1169, inlinedAt: !1176)
!1909 = !DILocation(line: 788, column: 8, scope: !1169, inlinedAt: !1176)
!1910 = !DILocation(line: 797, column: 8, scope: !1169, inlinedAt: !1176)
!1911 = !DILocation(line: 800, column: 50, scope: !1879, inlinedAt: !1176)
!1912 = !DILocation(line: 800, column: 28, scope: !1879, inlinedAt: !1176)
!1913 = !DILocation(line: 800, column: 10, scope: !1169, inlinedAt: !1176)
!1914 = !DILocation(line: 801, column: 33, scope: !1915, inlinedAt: !1176)
!1915 = distinct !DILexicalBlock(scope: !1879, file: !1, line: 800, column: 57)
!1916 = !DILocation(line: 802, column: 27, scope: !1915, inlinedAt: !1176)
!1917 = !DILocation(line: 802, column: 36, scope: !1915, inlinedAt: !1176)
!1918 = !DILocation(line: 803, column: 27, scope: !1915, inlinedAt: !1176)
!1919 = !DILocation(line: 803, column: 37, scope: !1915, inlinedAt: !1176)
!1920 = !DILocation(line: 804, column: 27, scope: !1915, inlinedAt: !1176)
!1921 = !DILocation(line: 804, column: 45, scope: !1915, inlinedAt: !1176)
!1922 = !DILocation(line: 805, column: 27, scope: !1915, inlinedAt: !1176)
!1923 = !DILocation(line: 805, column: 34, scope: !1915, inlinedAt: !1176)
!1924 = !DILocation(line: 806, column: 27, scope: !1915, inlinedAt: !1176)
!1925 = !DILocation(line: 806, column: 38, scope: !1915, inlinedAt: !1176)
!1926 = !DILocation(line: 808, column: 20, scope: !1915, inlinedAt: !1176)
!1927 = !DILocation(line: 807, column: 27, scope: !1915, inlinedAt: !1176)
!1928 = !DILocation(line: 808, column: 9, scope: !1915, inlinedAt: !1176)
!1929 = !DILocation(line: 809, column: 6, scope: !1915, inlinedAt: !1176)
!1930 = !DILocation(line: 813, column: 9, scope: !1931, inlinedAt: !1176)
!1931 = distinct !DILexicalBlock(scope: !1164, file: !1, line: 813, column: 9)
!1932 = !DILocation(line: 813, column: 13, scope: !1931, inlinedAt: !1176)
!1933 = !DILocation(line: 863, column: 20, scope: !1061)
!1934 = distinct !{!1934, !1064, !1935}
!1935 = !DILocation(line: 875, column: 2, scope: !1062)
!1936 = !{!1937}
!1937 = distinct !{!1937, !1938, !"backward: %len_res"}
!1938 = distinct !{!1938, !"backward"}
!1939 = !DILocation(line: 877, column: 2, scope: !74)
!1940 = !{!1941}
!1941 = distinct !{!1941, !1938, !"backward: %back_res"}
!1942 = !DILocalVariable(name: "pcoder", arg: 1, scope: !1943, file: !1, line: 232, type: !77)
!1943 = distinct !DISubprogram(name: "backward", scope: !1, file: !1, line: 232, type: !1944, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1946)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{null, !77, !124, !124, !23}
!1946 = !{!1942, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1955}
!1947 = !DILocalVariable(name: "len_res", arg: 2, scope: !1943, file: !1, line: 232, type: !124)
!1948 = !DILocalVariable(name: "back_res", arg: 3, scope: !1943, file: !1, line: 233, type: !124)
!1949 = !DILocalVariable(name: "cur", arg: 4, scope: !1943, file: !1, line: 233, type: !23)
!1950 = !DILocalVariable(name: "coder", scope: !1943, file: !1, line: 235, type: !132)
!1951 = !DILocalVariable(name: "pos_mem", scope: !1943, file: !1, line: 238, type: !23)
!1952 = !DILocalVariable(name: "back_mem", scope: !1943, file: !1, line: 239, type: !23)
!1953 = !DILocalVariable(name: "pos_prev", scope: !1954, file: !1, line: 256, type: !252)
!1954 = distinct !DILexicalBlock(scope: !1943, file: !1, line: 241, column: 5)
!1955 = !DILocalVariable(name: "back_cur", scope: !1954, file: !1, line: 257, type: !252)
!1956 = !DILocation(line: 0, scope: !1943, inlinedAt: !1957)
!1957 = distinct !DILocation(line: 877, column: 2, scope: !74)
!1958 = !DILocation(line: 236, column: 24, scope: !1943, inlinedAt: !1957)
!1959 = !{!1937, !1941}
!1960 = !DILocation(line: 238, column: 21, scope: !1943, inlinedAt: !1957)
!1961 = !DILocation(line: 238, column: 38, scope: !1943, inlinedAt: !1957)
!1962 = !DILocation(line: 239, column: 39, scope: !1943, inlinedAt: !1957)
!1963 = !DILocation(line: 241, column: 2, scope: !1943, inlinedAt: !1957)
!1964 = !DILocation(line: 242, column: 7, scope: !1965, inlinedAt: !1957)
!1965 = distinct !DILexicalBlock(scope: !1954, file: !1, line: 242, column: 7)
!1966 = !DILocation(line: 242, column: 24, scope: !1965, inlinedAt: !1957)
!1967 = !DILocation(line: 242, column: 7, scope: !1954, inlinedAt: !1957)
!1968 = !DILocation(line: 259, column: 36, scope: !1954, inlinedAt: !1957)
!1969 = !DILocation(line: 260, column: 35, scope: !1954, inlinedAt: !1957)
!1970 = !DILocation(line: 0, scope: !790, inlinedAt: !1971)
!1971 = distinct !DILocation(line: 243, column: 4, scope: !1972, inlinedAt: !1957)
!1972 = distinct !DILexicalBlock(scope: !1965, file: !1, line: 242, column: 43)
!1973 = !DILocation(line: 215, column: 11, scope: !790, inlinedAt: !1971)
!1974 = !DILocation(line: 215, column: 29, scope: !790, inlinedAt: !1971)
!1975 = !DILocation(line: 244, column: 44, scope: !1972, inlinedAt: !1957)
!1976 = !DILocation(line: 246, column: 25, scope: !1977, inlinedAt: !1957)
!1977 = distinct !DILexicalBlock(scope: !1972, file: !1, line: 246, column: 8)
!1978 = !DILocation(line: 246, column: 8, scope: !1972, inlinedAt: !1957)
!1979 = !DILocation(line: 247, column: 5, scope: !1980, inlinedAt: !1957)
!1980 = distinct !DILexicalBlock(scope: !1977, file: !1, line: 246, column: 33)
!1981 = !DILocation(line: 247, column: 30, scope: !1980, inlinedAt: !1957)
!1982 = !DILocation(line: 248, column: 7, scope: !1980, inlinedAt: !1957)
!1983 = !DILocation(line: 250, column: 26, scope: !1980, inlinedAt: !1957)
!1984 = !DILocation(line: 249, column: 30, scope: !1980, inlinedAt: !1957)
!1985 = !DILocation(line: 250, column: 7, scope: !1980, inlinedAt: !1957)
!1986 = !DILocation(line: 253, column: 4, scope: !1980, inlinedAt: !1957)
!1987 = !DILocation(line: 0, scope: !1954, inlinedAt: !1957)
!1988 = !DILocation(line: 262, column: 35, scope: !1954, inlinedAt: !1957)
!1989 = !DILocation(line: 263, column: 34, scope: !1954, inlinedAt: !1957)
!1990 = !DILocation(line: 266, column: 15, scope: !1943, inlinedAt: !1957)
!1991 = !DILocation(line: 266, column: 2, scope: !1954, inlinedAt: !1957)
!1992 = distinct !{!1992, !1963, !1993}
!1993 = !DILocation(line: 266, column: 19, scope: !1943, inlinedAt: !1957)
!1994 = !DILocation(line: 268, column: 45, scope: !1943, inlinedAt: !1957)
!1995 = !DILocation(line: 268, column: 28, scope: !1943, inlinedAt: !1957)
!1996 = !DILocation(line: 269, column: 11, scope: !1943, inlinedAt: !1957)
!1997 = !DILocation(line: 270, column: 29, scope: !1943, inlinedAt: !1957)
!1998 = !DILocation(line: 270, column: 12, scope: !1943, inlinedAt: !1957)
!1999 = !DILocation(line: 879, column: 1, scope: !74)
!2000 = !DISubprogram(name: "lzma_mf_find", scope: !83, file: !83, line: 310, type: !2001, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!23, !81, !112, !101}
