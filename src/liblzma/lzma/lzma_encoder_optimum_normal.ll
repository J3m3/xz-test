; ModuleID = 'liblzma/lzma/lzma_encoder_optimum_normal.c'
source_filename = "liblzma/lzma/lzma_encoder_optimum_normal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_optimal = type { i32, i8, i8, i32, i32, i32, i32, i32, [4 x i32] }
%struct.lzma_match = type { i32, i32 }

@lzma_rc_prices = external local_unnamed_addr constant [128 x i8], align 16
@lzma_fastpos = external local_unnamed_addr constant [8192 x i8], align 16

; Function Attrs: nounwind uwtable
define dso_local void @lzma_lzma_optimum_normal(ptr noundef %pcoder, ptr noalias noundef %mf, ptr noalias nocapture noundef writeonly %back_res, ptr noalias nocapture noundef writeonly %len_res, i32 noundef %position) local_unnamed_addr #0 {
entry:
  %matches_count.i = alloca i32, align 4
  %rep_lens.i = alloca [4 x i32], align 16
  %reps = alloca [4 x i32], align 16
  %opts_end_index = getelementptr inbounds i8, ptr %pcoder, i64 69340
  %0 = load i32, ptr %opts_end_index, align 4
  %opts_current_index = getelementptr inbounds i8, ptr %pcoder, i64 69344
  %1 = load i32, ptr %opts_current_index, align 8
  %cmp.not = icmp eq i32 %0, %1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %opts = getelementptr inbounds i8, ptr %pcoder, i64 69348
  %idxprom = zext i32 %1 to i64
  %pos_prev = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts, i64 0, i64 %idxprom, i32 6
  %2 = load i32, ptr %pos_prev, align 4
  %sub = sub i32 %2, %1
  store i32 %sub, ptr %len_res, align 4
  %back_prev = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts, i64 0, i64 %idxprom, i32 7
  %3 = load i32, ptr %back_prev, align 4
  store i32 %3, ptr %back_res, align 4
  store i32 %2, ptr %opts_current_index, align 8
  br label %cleanup45

if.end:                                           ; preds = %entry
  %read_ahead = getelementptr inbounds i8, ptr %mf, i64 28
  %4 = load i32, ptr %read_ahead, align 4
  %cmp13 = icmp eq i32 %4, 0
  br i1 %cmp13, label %if.then14, label %if.end21.thread

if.end21.thread:                                  ; preds = %if.end
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5)
  %nice_len1.i328 = getelementptr inbounds i8, ptr %mf, i64 96
  %5 = load i32, ptr %nice_len1.i328, align 8, !alias.scope !5, !noalias !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %matches_count.i) #6, !noalias !11
  %longest_match_length.i = getelementptr inbounds i8, ptr %pcoder, i64 2952
  %6 = load i32, ptr %longest_match_length.i, align 8, !noalias !12
  %matches_count2.i = getelementptr inbounds i8, ptr %pcoder, i64 2948
  %7 = load i32, ptr %matches_count2.i, align 4, !noalias !12
  store i32 %7, ptr %matches_count.i, align 4, !noalias !12
  br label %if.end.i

if.then14:                                        ; preds = %if.end
  %match_price_count = getelementptr inbounds i8, ptr %pcoder, i64 69268
  %8 = load i32, ptr %match_price_count, align 4
  %cmp15 = icmp ugt i32 %8, 127
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.then14
  %pos_slot_prices1.i = getelementptr inbounds i8, ptr %pcoder, i64 66192
  %dist_table_size.i = getelementptr inbounds i8, ptr %pcoder, i64 69264
  %distances_prices.i = getelementptr inbounds i8, ptr %pcoder, i64 67216
  %pos_slot6.i = getelementptr inbounds i8, ptr %pcoder, i64 28412
  %9 = load i32, ptr %dist_table_size.i, align 8
  %cmp3132.not.i = icmp eq i32 %9, 0
  br i1 %cmp3132.not.i, label %for.cond25.preheader.i, label %for.body5.i

for.cond13.preheader.i:                           ; preds = %rc_bittree_price.exit.i
  %cmp15134.i = icmp ugt i32 %14, 14
  br i1 %cmp15134.i, label %for.body17.i, label %for.cond25.preheader.i

for.body5.i:                                      ; preds = %if.then16, %rc_bittree_price.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %rc_bittree_price.exit.i ], [ 0, %if.then16 ]
  %10 = trunc nuw i64 %indvars.iv.i to i32
  %add.i.i = add i32 %10, 64
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i, %for.body5.i
  %price.0.i.i = phi i32 [ 0, %for.body5.i ], [ %add1.i.i, %do.body.i.i ]
  %symbol.addr.0.i.i = phi i32 [ %add.i.i, %for.body5.i ], [ %shr.i.i, %do.body.i.i ]
  %and.i.i = and i32 %symbol.addr.0.i.i, 1
  %shr.i.i = lshr i32 %symbol.addr.0.i.i, 1
  %idxprom.i.i = zext nneg i32 %shr.i.i to i64
  %arrayidx.i.i = getelementptr inbounds i16, ptr %pos_slot6.i, i64 %idxprom.i.i
  %11 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i.i = zext i16 %11 to i64
  %12 = icmp eq i32 %and.i.i, 0
  %and.i.i.i = select i1 %12, i64 0, i64 2032
  %xor.i.i.i = xor i64 %and.i.i.i, %conv.i.i.i
  %shr.i.i.i = lshr i64 %xor.i.i.i, 4
  %arrayidx.i.i.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i.i
  %13 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv1.i.i.i = zext i8 %13 to i32
  %add1.i.i = add i32 %price.0.i.i, %conv1.i.i.i
  %cmp.not.i.i = icmp eq i32 %shr.i.i, 1
  br i1 %cmp.not.i.i, label %rc_bittree_price.exit.i, label %do.body.i.i

rc_bittree_price.exit.i:                          ; preds = %do.body.i.i
  %arrayidx11.i = getelementptr inbounds i32, ptr %pos_slot_prices1.i, i64 %indvars.iv.i
  store i32 %add1.i.i, ptr %arrayidx11.i, align 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %14 = load i32, ptr %dist_table_size.i, align 8
  %15 = zext i32 %14 to i64
  %cmp3.i = icmp ult i64 %indvars.iv.next.i, %15
  br i1 %cmp3.i, label %for.body5.i, label %for.cond13.preheader.i

for.cond25.preheader.i:                           ; preds = %for.body17.i, %for.cond13.preheader.i, %if.then16
  %16 = phi i32 [ %14, %for.cond13.preheader.i ], [ 0, %if.then16 ], [ %21, %for.body17.i ]
  %17 = load <4 x i32>, ptr %pos_slot_prices1.i, align 4
  store <4 x i32> %17, ptr %distances_prices.i, align 4
  %arrayidx.1.i = getelementptr inbounds i8, ptr %pcoder, i64 66448
  %cmp3132.not.1.i = icmp eq i32 %16, 0
  br i1 %cmp3132.not.1.i, label %for.cond25.preheader.1.i, label %for.body5.lr.ph.1.i

for.body17.i:                                     ; preds = %for.cond13.preheader.i, %for.body17.i
  %indvars.iv141.i = phi i64 [ %indvars.iv.next142.i, %for.body17.i ], [ 14, %for.cond13.preheader.i ]
  %18 = trunc nuw i64 %indvars.iv141.i to i32
  %19 = shl i32 %18, 3
  %sub18.i = and i32 %19, -16
  %arrayidx21.i = getelementptr inbounds i32, ptr %pos_slot_prices1.i, i64 %indvars.iv141.i
  %20 = load i32, ptr %arrayidx21.i, align 4
  %shl.i.i = add i32 %20, -80
  %add.i = add i32 %shl.i.i, %sub18.i
  store i32 %add.i, ptr %arrayidx21.i, align 4
  %indvars.iv.next142.i = add nuw nsw i64 %indvars.iv141.i, 1
  %21 = load i32, ptr %dist_table_size.i, align 8
  %22 = zext i32 %21 to i64
  %cmp15.i = icmp ult i64 %indvars.iv.next142.i, %22
  br i1 %cmp15.i, label %for.body17.i, label %for.cond25.preheader.i

for.body5.lr.ph.1.i:                              ; preds = %for.cond25.preheader.i
  %arrayidx8.1.i = getelementptr inbounds i8, ptr %pcoder, i64 28540
  br label %for.body5.1.i

for.body5.1.i:                                    ; preds = %rc_bittree_price.exit.1.i, %for.body5.lr.ph.1.i
  %indvars.iv.1.i = phi i64 [ 0, %for.body5.lr.ph.1.i ], [ %indvars.iv.next.1.i, %rc_bittree_price.exit.1.i ]
  %23 = trunc nuw i64 %indvars.iv.1.i to i32
  %add.i.1.i = add i32 %23, 64
  br label %do.body.i.1.i

do.body.i.1.i:                                    ; preds = %do.body.i.1.i, %for.body5.1.i
  %price.0.i.1.i = phi i32 [ 0, %for.body5.1.i ], [ %add1.i.1.i, %do.body.i.1.i ]
  %symbol.addr.0.i.1.i = phi i32 [ %add.i.1.i, %for.body5.1.i ], [ %shr.i.1.i, %do.body.i.1.i ]
  %and.i.1.i = and i32 %symbol.addr.0.i.1.i, 1
  %shr.i.1.i = lshr i32 %symbol.addr.0.i.1.i, 1
  %idxprom.i.1.i = zext nneg i32 %shr.i.1.i to i64
  %arrayidx.i.1.i = getelementptr inbounds i16, ptr %arrayidx8.1.i, i64 %idxprom.i.1.i
  %24 = load i16, ptr %arrayidx.i.1.i, align 2
  %conv.i.i.1.i = zext i16 %24 to i64
  %25 = icmp eq i32 %and.i.1.i, 0
  %and.i.i.1.i = select i1 %25, i64 0, i64 2032
  %xor.i.i.1.i = xor i64 %and.i.i.1.i, %conv.i.i.1.i
  %shr.i.i.1.i = lshr i64 %xor.i.i.1.i, 4
  %arrayidx.i.i.1.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i.1.i
  %26 = load i8, ptr %arrayidx.i.i.1.i, align 1
  %conv1.i.i.1.i = zext i8 %26 to i32
  %add1.i.1.i = add i32 %price.0.i.1.i, %conv1.i.i.1.i
  %cmp.not.i.1.i = icmp eq i32 %shr.i.1.i, 1
  br i1 %cmp.not.i.1.i, label %rc_bittree_price.exit.1.i, label %do.body.i.1.i

rc_bittree_price.exit.1.i:                        ; preds = %do.body.i.1.i
  %arrayidx11.1.i = getelementptr inbounds i32, ptr %arrayidx.1.i, i64 %indvars.iv.1.i
  store i32 %add1.i.1.i, ptr %arrayidx11.1.i, align 4
  %indvars.iv.next.1.i = add nuw nsw i64 %indvars.iv.1.i, 1
  %27 = load i32, ptr %dist_table_size.i, align 8
  %28 = zext i32 %27 to i64
  %cmp3.1.i = icmp ult i64 %indvars.iv.next.1.i, %28
  br i1 %cmp3.1.i, label %for.body5.1.i, label %for.cond13.preheader.1.i

for.cond13.preheader.1.i:                         ; preds = %rc_bittree_price.exit.1.i
  %cmp15134.1.i = icmp ugt i32 %27, 14
  br i1 %cmp15134.1.i, label %for.body17.1.i, label %for.cond25.preheader.1.i

for.body17.1.i:                                   ; preds = %for.cond13.preheader.1.i, %for.body17.1.i
  %indvars.iv141.1.i = phi i64 [ %indvars.iv.next142.1.i, %for.body17.1.i ], [ 14, %for.cond13.preheader.1.i ]
  %29 = trunc nuw i64 %indvars.iv141.1.i to i32
  %30 = shl i32 %29, 3
  %sub18.1.i = and i32 %30, -16
  %arrayidx21.1.i = getelementptr inbounds i32, ptr %arrayidx.1.i, i64 %indvars.iv141.1.i
  %31 = load i32, ptr %arrayidx21.1.i, align 4
  %shl.i.1.i = add i32 %31, -80
  %add.1.i = add i32 %shl.i.1.i, %sub18.1.i
  store i32 %add.1.i, ptr %arrayidx21.1.i, align 4
  %indvars.iv.next142.1.i = add nuw nsw i64 %indvars.iv141.1.i, 1
  %32 = load i32, ptr %dist_table_size.i, align 8
  %33 = zext i32 %32 to i64
  %cmp15.1.i = icmp ult i64 %indvars.iv.next142.1.i, %33
  br i1 %cmp15.1.i, label %for.body17.1.i, label %for.cond25.preheader.1.i

for.cond25.preheader.1.i:                         ; preds = %for.body17.1.i, %for.cond13.preheader.1.i, %for.cond25.preheader.i
  %34 = phi i32 [ %27, %for.cond13.preheader.1.i ], [ 0, %for.cond25.preheader.i ], [ %32, %for.body17.1.i ]
  %arrayidx34.1151.i = getelementptr inbounds i8, ptr %pcoder, i64 67728
  %35 = load <4 x i32>, ptr %arrayidx.1.i, align 4
  store <4 x i32> %35, ptr %arrayidx34.1151.i, align 4
  %arrayidx.2.i = getelementptr inbounds i8, ptr %pcoder, i64 66704
  %cmp3132.not.2.i = icmp eq i32 %34, 0
  br i1 %cmp3132.not.2.i, label %for.cond25.preheader.2.i, label %for.body5.lr.ph.2.i

for.body5.lr.ph.2.i:                              ; preds = %for.cond25.preheader.1.i
  %arrayidx8.2.i = getelementptr inbounds i8, ptr %pcoder, i64 28668
  br label %for.body5.2.i

for.body5.2.i:                                    ; preds = %rc_bittree_price.exit.2.i, %for.body5.lr.ph.2.i
  %indvars.iv.2.i = phi i64 [ 0, %for.body5.lr.ph.2.i ], [ %indvars.iv.next.2.i, %rc_bittree_price.exit.2.i ]
  %36 = trunc nuw i64 %indvars.iv.2.i to i32
  %add.i.2.i = add i32 %36, 64
  br label %do.body.i.2.i

do.body.i.2.i:                                    ; preds = %do.body.i.2.i, %for.body5.2.i
  %price.0.i.2.i = phi i32 [ 0, %for.body5.2.i ], [ %add1.i.2.i, %do.body.i.2.i ]
  %symbol.addr.0.i.2.i = phi i32 [ %add.i.2.i, %for.body5.2.i ], [ %shr.i.2.i, %do.body.i.2.i ]
  %and.i.2.i = and i32 %symbol.addr.0.i.2.i, 1
  %shr.i.2.i = lshr i32 %symbol.addr.0.i.2.i, 1
  %idxprom.i.2.i = zext nneg i32 %shr.i.2.i to i64
  %arrayidx.i.2.i = getelementptr inbounds i16, ptr %arrayidx8.2.i, i64 %idxprom.i.2.i
  %37 = load i16, ptr %arrayidx.i.2.i, align 2
  %conv.i.i.2.i = zext i16 %37 to i64
  %38 = icmp eq i32 %and.i.2.i, 0
  %and.i.i.2.i = select i1 %38, i64 0, i64 2032
  %xor.i.i.2.i = xor i64 %and.i.i.2.i, %conv.i.i.2.i
  %shr.i.i.2.i = lshr i64 %xor.i.i.2.i, 4
  %arrayidx.i.i.2.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i.2.i
  %39 = load i8, ptr %arrayidx.i.i.2.i, align 1
  %conv1.i.i.2.i = zext i8 %39 to i32
  %add1.i.2.i = add i32 %price.0.i.2.i, %conv1.i.i.2.i
  %cmp.not.i.2.i = icmp eq i32 %shr.i.2.i, 1
  br i1 %cmp.not.i.2.i, label %rc_bittree_price.exit.2.i, label %do.body.i.2.i

rc_bittree_price.exit.2.i:                        ; preds = %do.body.i.2.i
  %arrayidx11.2.i = getelementptr inbounds i32, ptr %arrayidx.2.i, i64 %indvars.iv.2.i
  store i32 %add1.i.2.i, ptr %arrayidx11.2.i, align 4
  %indvars.iv.next.2.i = add nuw nsw i64 %indvars.iv.2.i, 1
  %40 = load i32, ptr %dist_table_size.i, align 8
  %41 = zext i32 %40 to i64
  %cmp3.2.i = icmp ult i64 %indvars.iv.next.2.i, %41
  br i1 %cmp3.2.i, label %for.body5.2.i, label %for.cond13.preheader.2.i

for.cond13.preheader.2.i:                         ; preds = %rc_bittree_price.exit.2.i
  %cmp15134.2.i = icmp ugt i32 %40, 14
  br i1 %cmp15134.2.i, label %for.body17.2.i, label %for.cond25.preheader.2.i

for.body17.2.i:                                   ; preds = %for.cond13.preheader.2.i, %for.body17.2.i
  %indvars.iv141.2.i = phi i64 [ %indvars.iv.next142.2.i, %for.body17.2.i ], [ 14, %for.cond13.preheader.2.i ]
  %42 = trunc nuw i64 %indvars.iv141.2.i to i32
  %43 = shl i32 %42, 3
  %sub18.2.i = and i32 %43, -16
  %arrayidx21.2.i = getelementptr inbounds i32, ptr %arrayidx.2.i, i64 %indvars.iv141.2.i
  %44 = load i32, ptr %arrayidx21.2.i, align 4
  %shl.i.2.i = add i32 %44, -80
  %add.2.i = add i32 %shl.i.2.i, %sub18.2.i
  store i32 %add.2.i, ptr %arrayidx21.2.i, align 4
  %indvars.iv.next142.2.i = add nuw nsw i64 %indvars.iv141.2.i, 1
  %45 = load i32, ptr %dist_table_size.i, align 8
  %46 = zext i32 %45 to i64
  %cmp15.2.i = icmp ult i64 %indvars.iv.next142.2.i, %46
  br i1 %cmp15.2.i, label %for.body17.2.i, label %for.cond25.preheader.2.i

for.cond25.preheader.2.i:                         ; preds = %for.body17.2.i, %for.cond13.preheader.2.i, %for.cond25.preheader.1.i
  %47 = phi i32 [ %40, %for.cond13.preheader.2.i ], [ 0, %for.cond25.preheader.1.i ], [ %45, %for.body17.2.i ]
  %arrayidx34.2152.i = getelementptr inbounds i8, ptr %pcoder, i64 68240
  %48 = load <4 x i32>, ptr %arrayidx.2.i, align 4
  store <4 x i32> %48, ptr %arrayidx34.2152.i, align 4
  %arrayidx.3.i = getelementptr inbounds i8, ptr %pcoder, i64 66960
  %cmp3132.not.3.i = icmp eq i32 %47, 0
  br i1 %cmp3132.not.3.i, label %for.cond25.preheader.3.i, label %for.body5.lr.ph.3.i

for.body5.lr.ph.3.i:                              ; preds = %for.cond25.preheader.2.i
  %arrayidx8.3.i = getelementptr inbounds i8, ptr %pcoder, i64 28796
  br label %for.body5.3.i

for.body5.3.i:                                    ; preds = %rc_bittree_price.exit.3.i, %for.body5.lr.ph.3.i
  %indvars.iv.3.i = phi i64 [ 0, %for.body5.lr.ph.3.i ], [ %indvars.iv.next.3.i, %rc_bittree_price.exit.3.i ]
  %49 = trunc nuw i64 %indvars.iv.3.i to i32
  %add.i.3.i = add i32 %49, 64
  br label %do.body.i.3.i

do.body.i.3.i:                                    ; preds = %do.body.i.3.i, %for.body5.3.i
  %price.0.i.3.i = phi i32 [ 0, %for.body5.3.i ], [ %add1.i.3.i, %do.body.i.3.i ]
  %symbol.addr.0.i.3.i = phi i32 [ %add.i.3.i, %for.body5.3.i ], [ %shr.i.3.i, %do.body.i.3.i ]
  %and.i.3.i = and i32 %symbol.addr.0.i.3.i, 1
  %shr.i.3.i = lshr i32 %symbol.addr.0.i.3.i, 1
  %idxprom.i.3.i = zext nneg i32 %shr.i.3.i to i64
  %arrayidx.i.3.i = getelementptr inbounds i16, ptr %arrayidx8.3.i, i64 %idxprom.i.3.i
  %50 = load i16, ptr %arrayidx.i.3.i, align 2
  %conv.i.i.3.i = zext i16 %50 to i64
  %51 = icmp eq i32 %and.i.3.i, 0
  %and.i.i.3.i = select i1 %51, i64 0, i64 2032
  %xor.i.i.3.i = xor i64 %and.i.i.3.i, %conv.i.i.3.i
  %shr.i.i.3.i = lshr i64 %xor.i.i.3.i, 4
  %arrayidx.i.i.3.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i.3.i
  %52 = load i8, ptr %arrayidx.i.i.3.i, align 1
  %conv1.i.i.3.i = zext i8 %52 to i32
  %add1.i.3.i = add i32 %price.0.i.3.i, %conv1.i.i.3.i
  %cmp.not.i.3.i = icmp eq i32 %shr.i.3.i, 1
  br i1 %cmp.not.i.3.i, label %rc_bittree_price.exit.3.i, label %do.body.i.3.i

rc_bittree_price.exit.3.i:                        ; preds = %do.body.i.3.i
  %arrayidx11.3.i = getelementptr inbounds i32, ptr %arrayidx.3.i, i64 %indvars.iv.3.i
  store i32 %add1.i.3.i, ptr %arrayidx11.3.i, align 4
  %indvars.iv.next.3.i = add nuw nsw i64 %indvars.iv.3.i, 1
  %53 = load i32, ptr %dist_table_size.i, align 8
  %54 = zext i32 %53 to i64
  %cmp3.3.i = icmp ult i64 %indvars.iv.next.3.i, %54
  br i1 %cmp3.3.i, label %for.body5.3.i, label %for.cond13.preheader.3.i

for.cond13.preheader.3.i:                         ; preds = %rc_bittree_price.exit.3.i
  %55 = icmp ugt i32 %53, 14
  br i1 %55, label %for.body17.3.i, label %for.cond25.preheader.3.i

for.body17.3.i:                                   ; preds = %for.cond13.preheader.3.i, %for.body17.3.i
  %indvars.iv141.3.i = phi i64 [ %indvars.iv.next142.3.i, %for.body17.3.i ], [ 14, %for.cond13.preheader.3.i ]
  %56 = trunc nuw i64 %indvars.iv141.3.i to i32
  %57 = shl i32 %56, 3
  %sub18.3.i = and i32 %57, -16
  %arrayidx21.3.i = getelementptr inbounds i32, ptr %arrayidx.3.i, i64 %indvars.iv141.3.i
  %58 = load i32, ptr %arrayidx21.3.i, align 4
  %shl.i.3.i = add i32 %58, -80
  %add.3.i = add i32 %shl.i.3.i, %sub18.3.i
  store i32 %add.3.i, ptr %arrayidx21.3.i, align 4
  %indvars.iv.next142.3.i = add nuw nsw i64 %indvars.iv141.3.i, 1
  %59 = load i32, ptr %dist_table_size.i, align 8
  %60 = zext i32 %59 to i64
  %cmp15.3.i = icmp ult i64 %indvars.iv.next142.3.i, %60
  br i1 %cmp15.3.i, label %for.body17.3.i, label %for.cond25.preheader.3.i

for.cond25.preheader.3.i:                         ; preds = %for.body17.3.i, %for.cond13.preheader.3.i, %for.cond25.preheader.2.i
  %arrayidx34.3153.i = getelementptr inbounds i8, ptr %pcoder, i64 68752
  %61 = load <4 x i32>, ptr %arrayidx.3.i, align 4
  store <4 x i32> %61, ptr %arrayidx34.3153.i, align 4
  %pos_special.i = getelementptr inbounds i8, ptr %pcoder, i64 28924
  br label %for.body45.i

for.body45.i:                                     ; preds = %for.cond57.preheader.i, %for.cond25.preheader.3.i
  %indvars.iv157.i = phi i64 [ 4, %for.cond25.preheader.3.i ], [ %indvars.iv.next158.i, %for.cond57.preheader.i ]
  %arrayidx.i114.i = getelementptr inbounds [8192 x i8], ptr @lzma_fastpos, i64 0, i64 %indvars.iv157.i
  %62 = load i8, ptr %arrayidx.i114.i, align 1
  %conv.i.i = zext i8 %62 to i32
  %shr48.i = lshr i32 %conv.i.i, 1
  %sub49.i = add nsw i32 %shr48.i, -1
  %and.i = and i32 %conv.i.i, 1
  %or.i = or disjoint i32 %and.i, 2
  %shl.i = shl i32 %or.i, %sub49.i
  %idx.ext.i = zext i32 %shl.i to i64
  %add.ptr.i = getelementptr inbounds i16, ptr %pos_special.i, i64 %idx.ext.i
  %idx.ext51.i = zext i8 %62 to i64
  %idx.neg.i = sub nsw i64 0, %idx.ext51.i
  %add.ptr52.i = getelementptr inbounds i16, ptr %add.ptr.i, i64 %idx.neg.i
  %add.ptr53.i = getelementptr inbounds i8, ptr %add.ptr52.i, i64 -2
  %63 = trunc nuw nsw i64 %indvars.iv157.i to i32
  %sub54.i = sub i32 %63, %shl.i
  %xtraiter = and i32 %sub49.i, 1
  %64 = icmp eq i32 %shr48.i, 2
  br i1 %64, label %for.cond57.preheader.i.unr-lcssa, label %for.body45.i.new

for.body45.i.new:                                 ; preds = %for.body45.i
  %unroll_iter = and i32 %sub49.i, -2
  br label %do.body.i115.i

do.body.i115.i:                                   ; preds = %do.body.i115.i, %for.body45.i.new
  %symbol.addr.0.i116.i = phi i32 [ %sub54.i, %for.body45.i.new ], [ %shr.i119.i.1, %do.body.i115.i ]
  %price.0.i117.i = phi i32 [ 0, %for.body45.i.new ], [ %add.i128.i.1, %do.body.i115.i ]
  %model_index.0.i.i = phi i32 [ 1, %for.body45.i.new ], [ %add1.i130.i.1, %do.body.i115.i ]
  %niter = phi i32 [ 0, %for.body45.i.new ], [ %niter.next.1, %do.body.i115.i ]
  %and.i118.i = and i32 %symbol.addr.0.i116.i, 1
  %shr.i119.i = lshr i32 %symbol.addr.0.i116.i, 1
  %idxprom.i120.i = zext i32 %model_index.0.i.i to i64
  %arrayidx.i121.i = getelementptr inbounds i16, ptr %add.ptr53.i, i64 %idxprom.i120.i
  %65 = load i16, ptr %arrayidx.i121.i, align 2
  %conv.i.i122.i = zext i16 %65 to i64
  %66 = icmp eq i32 %and.i118.i, 0
  %and.i.i123.i = select i1 %66, i64 0, i64 2032
  %xor.i.i124.i = xor i64 %and.i.i123.i, %conv.i.i122.i
  %shr.i.i125.i = lshr i64 %xor.i.i124.i, 4
  %arrayidx.i.i126.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i125.i
  %67 = load i8, ptr %arrayidx.i.i126.i, align 1
  %conv1.i.i127.i = zext i8 %67 to i32
  %add.i128.i = add i32 %price.0.i117.i, %conv1.i.i127.i
  %shl.i129.i = shl i32 %model_index.0.i.i, 1
  %add1.i130.i = or disjoint i32 %shl.i129.i, %and.i118.i
  %and.i118.i.1 = and i32 %shr.i119.i, 1
  %shr.i119.i.1 = lshr i32 %symbol.addr.0.i116.i, 2
  %idxprom.i120.i.1 = zext i32 %add1.i130.i to i64
  %arrayidx.i121.i.1 = getelementptr inbounds i16, ptr %add.ptr53.i, i64 %idxprom.i120.i.1
  %68 = load i16, ptr %arrayidx.i121.i.1, align 2
  %conv.i.i122.i.1 = zext i16 %68 to i64
  %69 = icmp eq i32 %and.i118.i.1, 0
  %and.i.i123.i.1 = select i1 %69, i64 0, i64 2032
  %xor.i.i124.i.1 = xor i64 %and.i.i123.i.1, %conv.i.i122.i.1
  %shr.i.i125.i.1 = lshr i64 %xor.i.i124.i.1, 4
  %arrayidx.i.i126.i.1 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i125.i.1
  %70 = load i8, ptr %arrayidx.i.i126.i.1, align 1
  %conv1.i.i127.i.1 = zext i8 %70 to i32
  %add.i128.i.1 = add i32 %add.i128.i, %conv1.i.i127.i.1
  %shl.i129.i.1 = shl i32 %add1.i130.i, 1
  %add1.i130.i.1 = or disjoint i32 %shl.i129.i.1, %and.i118.i.1
  %niter.next.1 = add i32 %niter, 2
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %for.cond57.preheader.i.unr-lcssa, label %do.body.i115.i

for.cond57.preheader.i.unr-lcssa:                 ; preds = %do.body.i115.i, %for.body45.i
  %add.i128.i.lcssa.ph = phi i32 [ poison, %for.body45.i ], [ %add.i128.i.1, %do.body.i115.i ]
  %symbol.addr.0.i116.i.unr = phi i32 [ %sub54.i, %for.body45.i ], [ %shr.i119.i.1, %do.body.i115.i ]
  %price.0.i117.i.unr = phi i32 [ 0, %for.body45.i ], [ %add.i128.i.1, %do.body.i115.i ]
  %model_index.0.i.i.unr = phi i32 [ 1, %for.body45.i ], [ %add1.i130.i.1, %do.body.i115.i ]
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.cond57.preheader.i, label %do.body.i115.i.epil

do.body.i115.i.epil:                              ; preds = %for.cond57.preheader.i.unr-lcssa
  %and.i118.i.epil = and i32 %symbol.addr.0.i116.i.unr, 1
  %idxprom.i120.i.epil = zext i32 %model_index.0.i.i.unr to i64
  %arrayidx.i121.i.epil = getelementptr inbounds i16, ptr %add.ptr53.i, i64 %idxprom.i120.i.epil
  %71 = load i16, ptr %arrayidx.i121.i.epil, align 2
  %conv.i.i122.i.epil = zext i16 %71 to i64
  %72 = icmp eq i32 %and.i118.i.epil, 0
  %and.i.i123.i.epil = select i1 %72, i64 0, i64 2032
  %xor.i.i124.i.epil = xor i64 %and.i.i123.i.epil, %conv.i.i122.i.epil
  %shr.i.i125.i.epil = lshr i64 %xor.i.i124.i.epil, 4
  %arrayidx.i.i126.i.epil = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i125.i.epil
  %73 = load i8, ptr %arrayidx.i.i126.i.epil, align 1
  %conv1.i.i127.i.epil = zext i8 %73 to i32
  %add.i128.i.epil = add i32 %price.0.i117.i.unr, %conv1.i.i127.i.epil
  br label %for.cond57.preheader.i

for.cond57.preheader.i:                           ; preds = %for.cond57.preheader.i.unr-lcssa, %do.body.i115.i.epil
  %add.i128.i.lcssa = phi i32 [ %add.i128.i.lcssa.ph, %for.cond57.preheader.i.unr-lcssa ], [ %add.i128.i.epil, %do.body.i115.i.epil ]
  %arrayidx65.i = getelementptr inbounds [4 x [64 x i32]], ptr %pos_slot_prices1.i, i64 0, i64 0, i64 %idx.ext51.i
  %74 = load i32, ptr %arrayidx65.i, align 4
  %add66.i = add i32 %74, %add.i128.i.lcssa
  %arrayidx71.i = getelementptr inbounds [4 x [128 x i32]], ptr %distances_prices.i, i64 0, i64 0, i64 %indvars.iv157.i
  store i32 %add66.i, ptr %arrayidx71.i, align 4
  %arrayidx65.1.i = getelementptr inbounds [4 x [64 x i32]], ptr %pos_slot_prices1.i, i64 0, i64 1, i64 %idx.ext51.i
  %75 = load i32, ptr %arrayidx65.1.i, align 4
  %add66.1.i = add i32 %75, %add.i128.i.lcssa
  %arrayidx71.1.i = getelementptr inbounds [4 x [128 x i32]], ptr %distances_prices.i, i64 0, i64 1, i64 %indvars.iv157.i
  store i32 %add66.1.i, ptr %arrayidx71.1.i, align 4
  %arrayidx65.2.i = getelementptr inbounds [4 x [64 x i32]], ptr %pos_slot_prices1.i, i64 0, i64 2, i64 %idx.ext51.i
  %76 = load i32, ptr %arrayidx65.2.i, align 4
  %add66.2.i = add i32 %76, %add.i128.i.lcssa
  %arrayidx71.2.i = getelementptr inbounds [4 x [128 x i32]], ptr %distances_prices.i, i64 0, i64 2, i64 %indvars.iv157.i
  store i32 %add66.2.i, ptr %arrayidx71.2.i, align 4
  %arrayidx65.3.i = getelementptr inbounds [4 x [64 x i32]], ptr %pos_slot_prices1.i, i64 0, i64 3, i64 %idx.ext51.i
  %77 = load i32, ptr %arrayidx65.3.i, align 4
  %add66.3.i = add i32 %77, %add.i128.i.lcssa
  %arrayidx71.3.i = getelementptr inbounds [4 x [128 x i32]], ptr %distances_prices.i, i64 0, i64 3, i64 %indvars.iv157.i
  store i32 %add66.3.i, ptr %arrayidx71.3.i, align 4
  %indvars.iv.next158.i = add nuw nsw i64 %indvars.iv157.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next158.i, 128
  br i1 %exitcond.not.i, label %fill_distances_prices.exit, label %for.body45.i

fill_distances_prices.exit:                       ; preds = %for.cond57.preheader.i
  store i32 0, ptr %match_price_count, align 4
  br label %if.end17

if.end17:                                         ; preds = %fill_distances_prices.exit, %if.then14
  %align_price_count = getelementptr inbounds i8, ptr %pcoder, i64 69336
  %78 = load i32, ptr %align_price_count, align 8
  %cmp18 = icmp ugt i32 %78, 15
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end17
  %pos_align.i = getelementptr inbounds i8, ptr %pcoder, i64 29152
  %align_prices.i = getelementptr inbounds i8, ptr %pcoder, i64 69272
  %arrayidx.i.phi.trans.insert.i = getelementptr inbounds i8, ptr %pcoder, i64 29154
  %.pre.i = load i16, ptr %arrayidx.i.phi.trans.insert.i, align 2
  %conv.i.i.i92 = zext i16 %.pre.i to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %if.then19
  %indvars.iv.i93 = phi i64 [ 0, %if.then19 ], [ %indvars.iv.next.i136, %for.body.i ]
  %79 = trunc nuw nsw i64 %indvars.iv.i93 to i32
  %and.i.i94 = and i32 %79, 1
  %shr.i.i95 = lshr i32 %79, 1
  %80 = icmp eq i32 %and.i.i94, 0
  %and.i.i.i96 = select i1 %80, i64 0, i64 2032
  %xor.i.i.i97 = xor i64 %and.i.i.i96, %conv.i.i.i92
  %shr.i.i.i98 = lshr i64 %xor.i.i.i97, 4
  %arrayidx.i.i.i99 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i.i98
  %81 = load i8, ptr %arrayidx.i.i.i99, align 1
  %conv1.i.i.i100 = zext i8 %81 to i32
  %add1.i.i101 = or disjoint i32 %and.i.i94, 2
  %and.i.1.i102 = and i32 %shr.i.i95, 1
  %shr.i.1.i103 = lshr i32 %79, 2
  %idxprom.i.1.i104 = zext nneg i32 %add1.i.i101 to i64
  %arrayidx.i.1.i105 = getelementptr inbounds i16, ptr %pos_align.i, i64 %idxprom.i.1.i104
  %82 = load i16, ptr %arrayidx.i.1.i105, align 2
  %conv.i.i.1.i106 = zext i16 %82 to i64
  %83 = icmp eq i32 %and.i.1.i102, 0
  %and.i.i.1.i107 = select i1 %83, i64 0, i64 2032
  %xor.i.i.1.i108 = xor i64 %and.i.i.1.i107, %conv.i.i.1.i106
  %shr.i.i.1.i109 = lshr i64 %xor.i.i.1.i108, 4
  %arrayidx.i.i.1.i110 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i.1.i109
  %84 = load i8, ptr %arrayidx.i.i.1.i110, align 1
  %conv1.i.i.1.i111 = zext i8 %84 to i32
  %add.i.1.i112 = add nuw nsw i32 %conv1.i.i.1.i111, %conv1.i.i.i100
  %shl.i.1.i113 = shl nuw nsw i32 %add1.i.i101, 1
  %add1.i.1.i114 = or disjoint i32 %shl.i.1.i113, %and.i.1.i102
  %and.i.2.i115 = and i32 %shr.i.1.i103, 1
  %idxprom.i.2.i116 = zext nneg i32 %add1.i.1.i114 to i64
  %arrayidx.i.2.i117 = getelementptr inbounds i16, ptr %pos_align.i, i64 %idxprom.i.2.i116
  %85 = load i16, ptr %arrayidx.i.2.i117, align 2
  %conv.i.i.2.i118 = zext i16 %85 to i64
  %86 = icmp eq i32 %and.i.2.i115, 0
  %and.i.i.2.i119 = select i1 %86, i64 0, i64 2032
  %xor.i.i.2.i120 = xor i64 %and.i.i.2.i119, %conv.i.i.2.i118
  %shr.i.i.2.i121 = lshr i64 %xor.i.i.2.i120, 4
  %arrayidx.i.i.2.i122 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i.2.i121
  %87 = load i8, ptr %arrayidx.i.i.2.i122, align 1
  %conv1.i.i.2.i123 = zext i8 %87 to i32
  %add.i.2.i124 = add nuw nsw i32 %add.i.1.i112, %conv1.i.i.2.i123
  %shl.i.2.i125 = shl nuw nsw i32 %add1.i.1.i114, 1
  %add1.i.2.i126 = or disjoint i32 %shl.i.2.i125, %and.i.2.i115
  %idxprom.i.3.i127 = zext nneg i32 %add1.i.2.i126 to i64
  %arrayidx.i.3.i128 = getelementptr inbounds i16, ptr %pos_align.i, i64 %idxprom.i.3.i127
  %88 = load i16, ptr %arrayidx.i.3.i128, align 2
  %conv.i.i.3.i129 = zext i16 %88 to i64
  %89 = and i32 %79, 8
  %90 = icmp eq i32 %89, 0
  %and.i.i.3.i130 = select i1 %90, i64 0, i64 2032
  %xor.i.i.3.i131 = xor i64 %and.i.i.3.i130, %conv.i.i.3.i129
  %shr.i.i.3.i132 = lshr i64 %xor.i.i.3.i131, 4
  %arrayidx.i.i.3.i133 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i.3.i132
  %91 = load i8, ptr %arrayidx.i.i.3.i133, align 1
  %conv1.i.i.3.i134 = zext i8 %91 to i32
  %add.i.3.i135 = add nuw nsw i32 %add.i.2.i124, %conv1.i.i.3.i134
  %arrayidx.i = getelementptr inbounds [16 x i32], ptr %align_prices.i, i64 0, i64 %indvars.iv.i93
  store i32 %add.i.3.i135, ptr %arrayidx.i, align 4
  %indvars.iv.next.i136 = add nuw nsw i64 %indvars.iv.i93, 1
  %exitcond.not.i137 = icmp eq i64 %indvars.iv.next.i136, 16
  br i1 %exitcond.not.i137, label %fill_align_prices.exit, label %for.body.i

fill_align_prices.exit:                           ; preds = %for.body.i
  store i32 0, ptr %align_price_count, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.end17, %fill_align_prices.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18)
  %nice_len1.i = getelementptr inbounds i8, ptr %mf, i64 96
  %92 = load i32, ptr %nice_len1.i, align 8, !alias.scope !16, !noalias !19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %matches_count.i) #6, !noalias !12
  %matches.i = getelementptr inbounds i8, ptr %pcoder, i64 756
  %call.i = call i32 @lzma_mf_find(ptr noundef nonnull %mf, ptr noundef nonnull %matches_count.i, ptr noundef nonnull %matches.i) #6, !noalias !19
  br label %if.end.i

if.end.i:                                         ; preds = %if.end21.thread, %if.end21
  %93 = phi i32 [ %92, %if.end21 ], [ %5, %if.end21.thread ]
  %nice_len1.i329 = phi ptr [ %nice_len1.i, %if.end21 ], [ %nice_len1.i328, %if.end21.thread ]
  %len_main.0.i = phi i32 [ %call.i, %if.end21 ], [ %6, %if.end21.thread ]
  %94 = getelementptr i8, ptr %mf, i64 24
  %mf.val484.i = load i32, ptr %94, align 8, !alias.scope !16, !noalias !19
  %95 = getelementptr i8, ptr %mf, i64 36
  %mf.val485.i = load i32, ptr %95, align 4, !alias.scope !16, !noalias !19
  %sub.i.i = sub i32 %mf.val485.i, %mf.val484.i
  %add.i138 = add i32 %sub.i.i, 1
  %cmp4.i = icmp ult i32 %add.i138, 273
  br i1 %cmp4.i, label %cond.end.i, label %if.end9.i

cond.end.i:                                       ; preds = %if.end.i
  %cmp7.i = icmp ult i32 %add.i138, 2
  br i1 %cmp7.i, label %helper1.exit.thread, label %if.end9.i

helper1.exit.thread:                              ; preds = %cond.end.i
  store i32 -1, ptr %back_res, align 4, !alias.scope !17, !noalias !20
  store i32 1, ptr %len_res, align 4, !alias.scope !18, !noalias !21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %matches_count.i) #6, !noalias !12
  br label %cleanup45

if.end9.i:                                        ; preds = %cond.end.i, %if.end.i
  %cond546.i = phi i32 [ %add.i138, %cond.end.i ], [ 273, %if.end.i ]
  %mf.val486.i = load ptr, ptr %mf, align 8, !alias.scope !16, !noalias !19
  %idx.ext.i.i = zext i32 %mf.val484.i to i64
  %add.ptr.i.i = getelementptr inbounds i8, ptr %mf.val486.i, i64 %idx.ext.i.i
  %add.ptr.i139 = getelementptr inbounds i8, ptr %add.ptr.i.i, i64 -1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rep_lens.i) #6, !noalias !12
  %reps.i = getelementptr inbounds i8, ptr %pcoder, i64 740
  %96 = load i8, ptr %add.ptr.i139, align 1, !noalias !19
  %cmp30549.i = icmp ult i32 %cond546.i, 3
  %97 = load i32, ptr %reps.i, align 4, !noalias !12
  %idx.ext.i140 = zext i32 %97 to i64
  %idx.neg.i141 = sub nsw i64 0, %idx.ext.i140
  %add.ptr12.i = getelementptr inbounds i8, ptr %add.ptr.i139, i64 %idx.neg.i141
  %add.ptr13.i = getelementptr inbounds i8, ptr %add.ptr12.i, i64 -1
  %98 = load i8, ptr %add.ptr13.i, align 1, !noalias !19
  %cmp17.not.i = icmp eq i8 %96, %98
  br i1 %cmp17.not.i, label %lor.lhs.false.i, label %cleanup.i

lor.lhs.false.i:                                  ; preds = %if.end9.i
  %99 = load i8, ptr %add.ptr.i.i, align 1, !noalias !19
  %100 = load i8, ptr %add.ptr12.i, align 1, !noalias !19
  %cmp23.not.i = icmp ne i8 %99, %100
  %brmerge.i = or i1 %cmp30549.i, %cmp23.not.i
  %.mux.i = select i1 %cmp23.not.i, i32 0, i32 2
  br i1 %brmerge.i, label %cleanup.i, label %land.rhs.preheader.i

land.rhs.preheader.i:                             ; preds = %lor.lhs.false.i
  %wide.trip.count.i = zext nneg i32 %cond546.i to i64
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc.i, %land.rhs.preheader.i
  %indvars.iv.i168 = phi i64 [ 2, %land.rhs.preheader.i ], [ %indvars.iv.next.i169, %for.inc.i ]
  %arrayidx33.i = getelementptr inbounds i8, ptr %add.ptr.i139, i64 %indvars.iv.i168
  %101 = load i8, ptr %arrayidx33.i, align 1, !noalias !19
  %arrayidx36.i = getelementptr inbounds i8, ptr %add.ptr13.i, i64 %indvars.iv.i168
  %102 = load i8, ptr %arrayidx36.i, align 1, !noalias !19
  %cmp38.i = icmp eq i8 %101, %102
  br i1 %cmp38.i, label %for.inc.i, label %cleanup.loopexit.split.loop.exit.i

for.inc.i:                                        ; preds = %land.rhs.i
  %indvars.iv.next.i169 = add nuw nsw i64 %indvars.iv.i168, 1
  %exitcond.not.i170 = icmp eq i64 %indvars.iv.next.i169, %wide.trip.count.i
  br i1 %exitcond.not.i170, label %cleanup.i, label %land.rhs.i

cleanup.loopexit.split.loop.exit.i:               ; preds = %land.rhs.i
  %103 = trunc nuw nsw i64 %indvars.iv.i168 to i32
  br label %cleanup.i

cleanup.i:                                        ; preds = %for.inc.i, %cleanup.loopexit.split.loop.exit.i, %lor.lhs.false.i, %if.end9.i
  %storemerge.i = phi i32 [ %.mux.i, %lor.lhs.false.i ], [ 0, %if.end9.i ], [ %103, %cleanup.loopexit.split.loop.exit.i ], [ %cond546.i, %for.inc.i ]
  store i32 %storemerge.i, ptr %rep_lens.i, align 16, !noalias !12
  %arrayidx.1.i142 = getelementptr inbounds i8, ptr %pcoder, i64 744
  %104 = load i32, ptr %arrayidx.1.i142, align 4, !noalias !12
  %idx.ext.1.i = zext i32 %104 to i64
  %idx.neg.1.i = sub nsw i64 0, %idx.ext.1.i
  %add.ptr12.1.i = getelementptr inbounds i8, ptr %add.ptr.i139, i64 %idx.neg.1.i
  %add.ptr13.1.i = getelementptr inbounds i8, ptr %add.ptr12.1.i, i64 -1
  %105 = load i8, ptr %add.ptr13.1.i, align 1, !noalias !19
  %cmp17.not.1.i = icmp eq i8 %96, %105
  br i1 %cmp17.not.1.i, label %lor.lhs.false.1.i, label %if.then25.1.i

lor.lhs.false.1.i:                                ; preds = %cleanup.i
  %106 = load i8, ptr %add.ptr.i.i, align 1, !noalias !19
  %107 = load i8, ptr %add.ptr12.1.i, align 1, !noalias !19
  %cmp23.not.1.i = icmp eq i8 %106, %107
  br i1 %cmp23.not.1.i, label %for.cond29.preheader.1.i, label %if.then25.1.i

if.then25.1.i:                                    ; preds = %lor.lhs.false.1.i, %cleanup.i
  %arrayidx27.1.i = getelementptr inbounds i8, ptr %rep_lens.i, i64 4
  store i32 0, ptr %arrayidx27.1.i, align 4, !noalias !12
  br label %cleanup.1.i

for.cond29.preheader.1.i:                         ; preds = %lor.lhs.false.1.i
  br i1 %cmp30549.i, label %for.end.1.i, label %land.rhs.preheader.1.i

land.rhs.preheader.1.i:                           ; preds = %for.cond29.preheader.1.i
  %wide.trip.count.1.i = zext nneg i32 %cond546.i to i64
  br label %land.rhs.1.i

land.rhs.1.i:                                     ; preds = %for.inc.1.i, %land.rhs.preheader.1.i
  %indvars.iv.1.i166 = phi i64 [ 2, %land.rhs.preheader.1.i ], [ %indvars.iv.next.1.i167, %for.inc.1.i ]
  %arrayidx33.1.i = getelementptr inbounds i8, ptr %add.ptr.i139, i64 %indvars.iv.1.i166
  %108 = load i8, ptr %arrayidx33.1.i, align 1, !noalias !19
  %arrayidx36.1.i = getelementptr inbounds i8, ptr %add.ptr13.1.i, i64 %indvars.iv.1.i166
  %109 = load i8, ptr %arrayidx36.1.i, align 1, !noalias !19
  %cmp38.1.i = icmp eq i8 %108, %109
  br i1 %cmp38.1.i, label %for.inc.1.i, label %for.end.1.loopexit.split.loop.exit578.i

for.inc.1.i:                                      ; preds = %land.rhs.1.i
  %indvars.iv.next.1.i167 = add nuw nsw i64 %indvars.iv.1.i166, 1
  %exitcond.1.not.i = icmp eq i64 %indvars.iv.next.1.i167, %wide.trip.count.1.i
  br i1 %exitcond.1.not.i, label %for.end.1.i, label %land.rhs.1.i

for.end.1.loopexit.split.loop.exit578.i:          ; preds = %land.rhs.1.i
  %110 = trunc nuw nsw i64 %indvars.iv.1.i166 to i32
  br label %for.end.1.i

for.end.1.i:                                      ; preds = %for.inc.1.i, %for.end.1.loopexit.split.loop.exit578.i, %for.cond29.preheader.1.i
  %len_test.0.lcssa.1.i = phi i32 [ 2, %for.cond29.preheader.1.i ], [ %110, %for.end.1.loopexit.split.loop.exit578.i ], [ %cond546.i, %for.inc.1.i ]
  %arrayidx42.1.i = getelementptr inbounds i8, ptr %rep_lens.i, i64 4
  store i32 %len_test.0.lcssa.1.i, ptr %arrayidx42.1.i, align 4, !noalias !12
  %cmp45.1.i = icmp ugt i32 %len_test.0.lcssa.1.i, %storemerge.i
  %spec.select.1.i = zext i1 %cmp45.1.i to i32
  br label %cleanup.1.i

cleanup.1.i:                                      ; preds = %for.end.1.i, %if.then25.1.i
  %111 = phi i32 [ 0, %if.then25.1.i ], [ %len_test.0.lcssa.1.i, %for.end.1.i ]
  %rep_max_index.2.1.i = phi i32 [ 0, %if.then25.1.i ], [ %spec.select.1.i, %for.end.1.i ]
  %arrayidx.2.i143 = getelementptr inbounds i8, ptr %pcoder, i64 748
  %112 = load i32, ptr %arrayidx.2.i143, align 4, !noalias !12
  %idx.ext.2.i = zext i32 %112 to i64
  %idx.neg.2.i = sub nsw i64 0, %idx.ext.2.i
  %add.ptr12.2.i = getelementptr inbounds i8, ptr %add.ptr.i139, i64 %idx.neg.2.i
  %add.ptr13.2.i = getelementptr inbounds i8, ptr %add.ptr12.2.i, i64 -1
  %113 = load i8, ptr %add.ptr13.2.i, align 1, !noalias !19
  %cmp17.not.2.i = icmp eq i8 %96, %113
  br i1 %cmp17.not.2.i, label %lor.lhs.false.2.i, label %if.then25.2.i

lor.lhs.false.2.i:                                ; preds = %cleanup.1.i
  %114 = load i8, ptr %add.ptr.i.i, align 1, !noalias !19
  %115 = load i8, ptr %add.ptr12.2.i, align 1, !noalias !19
  %cmp23.not.2.i = icmp eq i8 %114, %115
  br i1 %cmp23.not.2.i, label %for.cond29.preheader.2.i, label %if.then25.2.i

if.then25.2.i:                                    ; preds = %lor.lhs.false.2.i, %cleanup.1.i
  %arrayidx27.2.i = getelementptr inbounds i8, ptr %rep_lens.i, i64 8
  store i32 0, ptr %arrayidx27.2.i, align 8, !noalias !12
  br label %cleanup.2.i

for.cond29.preheader.2.i:                         ; preds = %lor.lhs.false.2.i
  br i1 %cmp30549.i, label %for.end.2.i, label %land.rhs.preheader.2.i

land.rhs.preheader.2.i:                           ; preds = %for.cond29.preheader.2.i
  %wide.trip.count.2.i = zext nneg i32 %cond546.i to i64
  br label %land.rhs.2.i

land.rhs.2.i:                                     ; preds = %for.inc.2.i, %land.rhs.preheader.2.i
  %indvars.iv.2.i164 = phi i64 [ 2, %land.rhs.preheader.2.i ], [ %indvars.iv.next.2.i165, %for.inc.2.i ]
  %arrayidx33.2.i = getelementptr inbounds i8, ptr %add.ptr.i139, i64 %indvars.iv.2.i164
  %116 = load i8, ptr %arrayidx33.2.i, align 1, !noalias !19
  %arrayidx36.2.i = getelementptr inbounds i8, ptr %add.ptr13.2.i, i64 %indvars.iv.2.i164
  %117 = load i8, ptr %arrayidx36.2.i, align 1, !noalias !19
  %cmp38.2.i = icmp eq i8 %116, %117
  br i1 %cmp38.2.i, label %for.inc.2.i, label %for.end.2.loopexit.split.loop.exit580.i

for.inc.2.i:                                      ; preds = %land.rhs.2.i
  %indvars.iv.next.2.i165 = add nuw nsw i64 %indvars.iv.2.i164, 1
  %exitcond.2.not.i = icmp eq i64 %indvars.iv.next.2.i165, %wide.trip.count.2.i
  br i1 %exitcond.2.not.i, label %for.end.2.i, label %land.rhs.2.i

for.end.2.loopexit.split.loop.exit580.i:          ; preds = %land.rhs.2.i
  %118 = trunc nuw nsw i64 %indvars.iv.2.i164 to i32
  br label %for.end.2.i

for.end.2.i:                                      ; preds = %for.inc.2.i, %for.end.2.loopexit.split.loop.exit580.i, %for.cond29.preheader.2.i
  %len_test.0.lcssa.2.i = phi i32 [ 2, %for.cond29.preheader.2.i ], [ %118, %for.end.2.loopexit.split.loop.exit580.i ], [ %cond546.i, %for.inc.2.i ]
  %arrayidx42.2.i = getelementptr inbounds i8, ptr %rep_lens.i, i64 8
  store i32 %len_test.0.lcssa.2.i, ptr %arrayidx42.2.i, align 8, !noalias !12
  %idxprom43.2.i = zext nneg i32 %rep_max_index.2.1.i to i64
  %arrayidx44.2.i = getelementptr inbounds [4 x i32], ptr %rep_lens.i, i64 0, i64 %idxprom43.2.i
  %119 = load i32, ptr %arrayidx44.2.i, align 4, !noalias !12
  %cmp45.2.i = icmp ugt i32 %len_test.0.lcssa.2.i, %119
  %spec.select.2.i = select i1 %cmp45.2.i, i32 2, i32 %rep_max_index.2.1.i
  br label %cleanup.2.i

cleanup.2.i:                                      ; preds = %for.end.2.i, %if.then25.2.i
  %120 = phi i32 [ 0, %if.then25.2.i ], [ %len_test.0.lcssa.2.i, %for.end.2.i ]
  %rep_max_index.2.2.i = phi i32 [ %rep_max_index.2.1.i, %if.then25.2.i ], [ %spec.select.2.i, %for.end.2.i ]
  %arrayidx.3.i144 = getelementptr inbounds i8, ptr %pcoder, i64 752
  %121 = load i32, ptr %arrayidx.3.i144, align 4, !noalias !12
  %idx.ext.3.i = zext i32 %121 to i64
  %idx.neg.3.i = sub nsw i64 0, %idx.ext.3.i
  %add.ptr12.3.i = getelementptr inbounds i8, ptr %add.ptr.i139, i64 %idx.neg.3.i
  %add.ptr13.3.i = getelementptr inbounds i8, ptr %add.ptr12.3.i, i64 -1
  %122 = load i8, ptr %add.ptr13.3.i, align 1, !noalias !19
  %cmp17.not.3.i = icmp eq i8 %96, %122
  br i1 %cmp17.not.3.i, label %lor.lhs.false.3.i, label %if.then25.3.i

lor.lhs.false.3.i:                                ; preds = %cleanup.2.i
  %123 = load i8, ptr %add.ptr.i.i, align 1, !noalias !19
  %124 = load i8, ptr %add.ptr12.3.i, align 1, !noalias !19
  %cmp23.not.3.i = icmp eq i8 %123, %124
  br i1 %cmp23.not.3.i, label %for.cond29.preheader.3.i, label %if.then25.3.i

if.then25.3.i:                                    ; preds = %lor.lhs.false.3.i, %cleanup.2.i
  %arrayidx27.3.i = getelementptr inbounds i8, ptr %rep_lens.i, i64 12
  store i32 0, ptr %arrayidx27.3.i, align 4, !noalias !12
  br label %cleanup.3.i

for.cond29.preheader.3.i:                         ; preds = %lor.lhs.false.3.i
  br i1 %cmp30549.i, label %for.end.3.i, label %land.rhs.preheader.3.i

land.rhs.preheader.3.i:                           ; preds = %for.cond29.preheader.3.i
  %wide.trip.count.3.i = zext nneg i32 %cond546.i to i64
  br label %land.rhs.3.i

land.rhs.3.i:                                     ; preds = %for.inc.3.i, %land.rhs.preheader.3.i
  %indvars.iv.3.i162 = phi i64 [ 2, %land.rhs.preheader.3.i ], [ %indvars.iv.next.3.i163, %for.inc.3.i ]
  %arrayidx33.3.i = getelementptr inbounds i8, ptr %add.ptr.i139, i64 %indvars.iv.3.i162
  %125 = load i8, ptr %arrayidx33.3.i, align 1, !noalias !19
  %arrayidx36.3.i = getelementptr inbounds i8, ptr %add.ptr13.3.i, i64 %indvars.iv.3.i162
  %126 = load i8, ptr %arrayidx36.3.i, align 1, !noalias !19
  %cmp38.3.i = icmp eq i8 %125, %126
  br i1 %cmp38.3.i, label %for.inc.3.i, label %for.end.3.loopexit.split.loop.exit582.i

for.inc.3.i:                                      ; preds = %land.rhs.3.i
  %indvars.iv.next.3.i163 = add nuw nsw i64 %indvars.iv.3.i162, 1
  %exitcond.3.not.i = icmp eq i64 %indvars.iv.next.3.i163, %wide.trip.count.3.i
  br i1 %exitcond.3.not.i, label %for.end.3.i, label %land.rhs.3.i

for.end.3.loopexit.split.loop.exit582.i:          ; preds = %land.rhs.3.i
  %127 = trunc nuw nsw i64 %indvars.iv.3.i162 to i32
  br label %for.end.3.i

for.end.3.i:                                      ; preds = %for.inc.3.i, %for.end.3.loopexit.split.loop.exit582.i, %for.cond29.preheader.3.i
  %len_test.0.lcssa.3.i = phi i32 [ 2, %for.cond29.preheader.3.i ], [ %127, %for.end.3.loopexit.split.loop.exit582.i ], [ %cond546.i, %for.inc.3.i ]
  %arrayidx42.3.i = getelementptr inbounds i8, ptr %rep_lens.i, i64 12
  store i32 %len_test.0.lcssa.3.i, ptr %arrayidx42.3.i, align 4, !noalias !12
  %idxprom43.3.i = zext nneg i32 %rep_max_index.2.2.i to i64
  %arrayidx44.3.i = getelementptr inbounds [4 x i32], ptr %rep_lens.i, i64 0, i64 %idxprom43.3.i
  %128 = load i32, ptr %arrayidx44.3.i, align 4, !noalias !12
  %cmp45.3.i = icmp ugt i32 %len_test.0.lcssa.3.i, %128
  %spec.select.3.i = select i1 %cmp45.3.i, i32 3, i32 %rep_max_index.2.2.i
  br label %cleanup.3.i

cleanup.3.i:                                      ; preds = %for.end.3.i, %if.then25.3.i
  %129 = phi i32 [ 0, %if.then25.3.i ], [ %len_test.0.lcssa.3.i, %for.end.3.i ]
  %rep_max_index.2.3.i = phi i32 [ %rep_max_index.2.2.i, %if.then25.3.i ], [ %spec.select.3.i, %for.end.3.i ]
  %idxprom53.i = zext nneg i32 %rep_max_index.2.3.i to i64
  %arrayidx54.i = getelementptr inbounds [4 x i32], ptr %rep_lens.i, i64 0, i64 %idxprom53.i
  %130 = load i32, ptr %arrayidx54.i, align 4, !noalias !12
  %cmp55.not.i = icmp ult i32 %130, %93
  br i1 %cmp55.not.i, label %if.end60.i, label %if.then57.i

if.then57.i:                                      ; preds = %cleanup.3.i
  store i32 %rep_max_index.2.3.i, ptr %back_res, align 4, !alias.scope !17, !noalias !20
  store i32 %130, ptr %len_res, align 4, !alias.scope !18, !noalias !21
  %sub.i = add i32 %130, -1
  %cmp.not.i.i145 = icmp eq i32 %sub.i, 0
  br i1 %cmp.not.i.i145, label %helper1.exit.thread333, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then57.i
  %skip.i.i = getelementptr inbounds i8, ptr %mf, i64 56
  %131 = load ptr, ptr %skip.i.i, align 8, !alias.scope !16, !noalias !19
  call void %131(ptr noundef nonnull %mf, i32 noundef %sub.i) #6, !noalias !19
  %132 = load i32, ptr %read_ahead, align 4, !alias.scope !16, !noalias !19
  %add.i.i146 = add i32 %132, %sub.i
  store i32 %add.i.i146, ptr %read_ahead, align 4, !alias.scope !16, !noalias !19
  br label %helper1.exit.thread333

if.end60.i:                                       ; preds = %cleanup.3.i
  %cmp61.not.i = icmp ult i32 %len_main.0.i, %93
  br i1 %cmp61.not.i, label %if.end70.i, label %if.then63.i

if.then63.i:                                      ; preds = %if.end60.i
  %matches64.i = getelementptr inbounds i8, ptr %pcoder, i64 756
  %133 = load i32, ptr %matches_count.i, align 4, !noalias !12
  %sub65.i = add i32 %133, -1
  %idxprom66.i = zext i32 %sub65.i to i64
  %dist.i = getelementptr inbounds [274 x %struct.lzma_match], ptr %matches64.i, i64 0, i64 %idxprom66.i, i32 1
  %134 = load i32, ptr %dist.i, align 4, !noalias !12
  %add68.i = add i32 %134, 4
  store i32 %add68.i, ptr %back_res, align 4, !alias.scope !17, !noalias !20
  store i32 %len_main.0.i, ptr %len_res, align 4, !alias.scope !18, !noalias !21
  %sub69.i = add i32 %len_main.0.i, -1
  %cmp.not.i489.i = icmp eq i32 %sub69.i, 0
  br i1 %cmp.not.i489.i, label %helper1.exit.thread333, label %if.then.i490.i

if.then.i490.i:                                   ; preds = %if.then63.i
  %skip.i491.i = getelementptr inbounds i8, ptr %mf, i64 56
  %135 = load ptr, ptr %skip.i491.i, align 8, !alias.scope !16, !noalias !19
  call void %135(ptr noundef nonnull %mf, i32 noundef %sub69.i) #6, !noalias !19
  %136 = load i32, ptr %read_ahead, align 4, !alias.scope !16, !noalias !19
  %add.i493.i = add i32 %136, %sub69.i
  store i32 %add.i493.i, ptr %read_ahead, align 4, !alias.scope !16, !noalias !19
  br label %helper1.exit.thread333

if.end70.i:                                       ; preds = %if.end60.i
  %cmp81.not.i = icmp ne i8 %96, %98
  %137 = or i32 %130, %len_main.0.i
  %138 = icmp ult i32 %137, 2
  %or.cond481.i = and i1 %cmp81.not.i, %138
  br i1 %or.cond481.i, label %if.then88.i, label %if.end89.i

if.then88.i:                                      ; preds = %if.end70.i
  store i32 -1, ptr %back_res, align 4, !alias.scope !17, !noalias !20
  store i32 1, ptr %len_res, align 4, !alias.scope !18, !noalias !21
  br label %helper1.exit.thread333

if.end89.i:                                       ; preds = %if.end70.i
  %state.i = getelementptr inbounds i8, ptr %pcoder, i64 736
  %139 = load i32, ptr %state.i, align 8, !noalias !12
  %opts.i = getelementptr inbounds i8, ptr %pcoder, i64 69348
  store i32 %139, ptr %opts.i, align 4, !noalias !12
  %pos_mask.i = getelementptr inbounds i8, ptr %pcoder, i64 2960
  %140 = load i32, ptr %pos_mask.i, align 8, !noalias !12
  %and.i147 = and i32 %140, %position
  %is_match.i = getelementptr inbounds i8, ptr %pcoder, i64 27548
  %idxprom93.i = zext i32 %139 to i64
  %idxprom95.i = zext i32 %and.i147 to i64
  %arrayidx96.i = getelementptr inbounds [12 x [16 x i16]], ptr %is_match.i, i64 0, i64 %idxprom93.i, i64 %idxprom95.i
  %141 = load i16, ptr %arrayidx96.i, align 2, !noalias !12
  %142 = lshr i16 %141, 4
  %idxprom.i.i148 = zext nneg i16 %142 to i64
  %arrayidx.i.i149 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i.i148
  %143 = load i8, ptr %arrayidx.i.i149, align 1, !noalias !12
  %conv1.i.i = zext i8 %143 to i32
  %arrayidx98.i = getelementptr inbounds i8, ptr %add.ptr.i.i, i64 -2
  %144 = load i8, ptr %arrayidx98.i, align 1, !noalias !19
  %conv99.i = zext i8 %144 to i32
  %cmp101.i = icmp ugt i32 %139, 6
  %conv104.i = zext i8 %96 to i32
  %literal.i.i = getelementptr inbounds i8, ptr %pcoder, i64 2972
  %literal_pos_mask.i.i = getelementptr inbounds i8, ptr %pcoder, i64 2968
  %145 = load i32, ptr %literal_pos_mask.i.i, align 8, !noalias !12
  %and.i.i150 = and i32 %145, %position
  %literal_context_bits.i.i = getelementptr inbounds i8, ptr %pcoder, i64 2964
  %146 = load i32, ptr %literal_context_bits.i.i, align 4, !noalias !12
  %shl.i.i151 = shl i32 %and.i.i150, %146
  %sub.i495.i = sub i32 8, %146
  %shr.i.i152 = lshr i32 %conv99.i, %sub.i495.i
  %add.i496.i = add i32 %shr.i.i152, %shl.i.i151
  %idxprom.i497.i = zext i32 %add.i496.i to i64
  %arrayidx.i498.i = getelementptr inbounds [16 x [768 x i16]], ptr %literal.i.i, i64 0, i64 %idxprom.i497.i
  %add2.i.i = or disjoint i32 %conv104.i, 256
  br i1 %cmp101.i, label %do.body.i.preheader.i, label %do.body.i.i.i

do.body.i.preheader.i:                            ; preds = %if.end89.i
  %conv103.i = zext i8 %98 to i32
  br label %do.body.i.i156

do.body.i.i.i:                                    ; preds = %if.end89.i, %do.body.i.i.i
  %price.0.i.i.i = phi i32 [ %add1.i.i.i, %do.body.i.i.i ], [ 0, %if.end89.i ]
  %symbol.addr.0.i.i.i = phi i32 [ %shr.i.i.i154, %do.body.i.i.i ], [ %add2.i.i, %if.end89.i ]
  %and.i.i.i153 = and i32 %symbol.addr.0.i.i.i, 1
  %shr.i.i.i154 = lshr i32 %symbol.addr.0.i.i.i, 1
  %idxprom.i.i.i = zext nneg i32 %shr.i.i.i154 to i64
  %arrayidx.i.i.i155 = getelementptr inbounds i16, ptr %arrayidx.i498.i, i64 %idxprom.i.i.i
  %147 = load i16, ptr %arrayidx.i.i.i155, align 2, !noalias !12
  %conv.i.i.i.i = zext i16 %147 to i64
  %148 = icmp eq i32 %and.i.i.i153, 0
  %and.i.i.i.i = select i1 %148, i64 0, i64 2032
  %xor.i.i.i.i = xor i64 %and.i.i.i.i, %conv.i.i.i.i
  %shr.i.i.i.i = lshr i64 %xor.i.i.i.i, 4
  %arrayidx.i.i.i.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i.i.i
  %149 = load i8, ptr %arrayidx.i.i.i.i, align 1, !noalias !12
  %conv1.i.i.i.i = zext i8 %149 to i32
  %add1.i.i.i = add i32 %price.0.i.i.i, %conv1.i.i.i.i
  %cmp.not.i.i.i = icmp eq i32 %shr.i.i.i154, 1
  br i1 %cmp.not.i.i.i, label %get_literal_price.exit.i, label %do.body.i.i.i

do.body.i.i156:                                   ; preds = %do.body.i.i156, %do.body.i.preheader.i
  %offset.0.i.i = phi i32 [ %and15.i.i, %do.body.i.i156 ], [ 256, %do.body.i.preheader.i ]
  %price.0.i.i157 = phi i32 [ %add13.i.i, %do.body.i.i156 ], [ 0, %do.body.i.preheader.i ]
  %symbol.addr.0.i.i158 = phi i32 [ %shl14.i.i, %do.body.i.i156 ], [ %add2.i.i, %do.body.i.preheader.i ]
  %match_byte.addr.0.i.i = phi i32 [ %shl3.i.i, %do.body.i.i156 ], [ %conv103.i, %do.body.i.preheader.i ]
  %shl3.i.i = shl i32 %match_byte.addr.0.i.i, 1
  %and4.i.i = and i32 %shl3.i.i, %offset.0.i.i
  %shr6.i.i = lshr i32 %symbol.addr.0.i.i158, 8
  %add5.i.i = add nuw nsw i32 %shr6.i.i, %offset.0.i.i
  %add7.i.i = add nuw nsw i32 %add5.i.i, %and4.i.i
  %idxprom10.i.i = zext nneg i32 %add7.i.i to i64
  %arrayidx11.i.i = getelementptr inbounds i16, ptr %arrayidx.i498.i, i64 %idxprom10.i.i
  %150 = load i16, ptr %arrayidx11.i.i, align 2, !noalias !12
  %conv.i.i.i159 = zext i16 %150 to i64
  %.mask.i.i = and i32 %symbol.addr.0.i.i158, 128
  %isneg.not.i.i = icmp eq i32 %.mask.i.i, 0
  %and.i31.i.i = select i1 %isneg.not.i.i, i64 0, i64 2032
  %xor.i.i.i160 = xor i64 %and.i31.i.i, %conv.i.i.i159
  %shr.i32.i.i = lshr i64 %xor.i.i.i160, 4
  %arrayidx.i34.i.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i32.i.i
  %151 = load i8, ptr %arrayidx.i34.i.i, align 1, !noalias !12
  %conv1.i.i.i161 = zext i8 %151 to i32
  %add13.i.i = add i32 %price.0.i.i157, %conv1.i.i.i161
  %shl14.i.i = shl nuw nsw i32 %symbol.addr.0.i.i158, 1
  %152 = xor i32 %shl14.i.i, %shl3.i.i
  %not.i.i = xor i32 %152, -1
  %and15.i.i = and i32 %offset.0.i.i, %not.i.i
  %cmp.i.i = icmp ult i32 %symbol.addr.0.i.i158, 32768
  br i1 %cmp.i.i, label %do.body.i.i156, label %get_literal_price.exit.i

get_literal_price.exit.i:                         ; preds = %do.body.i.i.i, %do.body.i.i156
  %price.1.i.i = phi i32 [ %add13.i.i, %do.body.i.i156 ], [ %add1.i.i.i, %do.body.i.i.i ]
  %add106.i = add i32 %price.1.i.i, %conv1.i.i
  %price.i = getelementptr inbounds i8, ptr %pcoder, i64 69408
  store i32 %add106.i, ptr %price.i, align 4, !noalias !12
  %back_prev.i.i = getelementptr inbounds i8, ptr %pcoder, i64 69416
  store i32 -1, ptr %back_prev.i.i, align 4, !noalias !12
  %prev_1_is_literal.i.i = getelementptr inbounds i8, ptr %pcoder, i64 69396
  store i8 0, ptr %prev_1_is_literal.i.i, align 4, !noalias !12
  %153 = load i16, ptr %arrayidx96.i, align 2, !noalias !12
  %154 = lshr i16 %153, 4
  %155 = xor i16 %154, 127
  %idxprom.i499.i = zext nneg i16 %155 to i64
  %arrayidx.i500.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i499.i
  %156 = load i8, ptr %arrayidx.i500.i, align 1, !noalias !12
  %conv1.i501.i = zext i8 %156 to i32
  %is_rep.i = getelementptr inbounds i8, ptr %pcoder, i64 27932
  %arrayidx120.i = getelementptr inbounds [12 x i16], ptr %is_rep.i, i64 0, i64 %idxprom93.i
  %157 = load i16, ptr %arrayidx120.i, align 2, !noalias !12
  %158 = lshr i16 %157, 4
  %159 = xor i16 %158, 127
  %idxprom.i502.i = zext nneg i16 %159 to i64
  %arrayidx.i503.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i502.i
  %160 = load i8, ptr %arrayidx.i503.i, align 1, !noalias !12
  %conv1.i504.i = zext i8 %160 to i32
  %add122.i = add nuw nsw i32 %conv1.i504.i, %conv1.i501.i
  br i1 %cmp81.not.i, label %if.end143.i, label %if.then127.i

if.then127.i:                                     ; preds = %get_literal_price.exit.i
  %is_rep0.i.i = getelementptr inbounds i8, ptr %pcoder, i64 27956
  %arrayidx.i506.i = getelementptr inbounds [12 x i16], ptr %is_rep0.i.i, i64 0, i64 %idxprom93.i
  %161 = load i16, ptr %arrayidx.i506.i, align 2, !noalias !12
  %162 = lshr i16 %161, 4
  %idxprom.i.i507.i = zext nneg i16 %162 to i64
  %arrayidx.i.i508.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i.i507.i
  %163 = load i8, ptr %arrayidx.i.i508.i, align 1, !noalias !12
  %conv1.i.i509.i = zext i8 %163 to i32
  %is_rep0_long.i.i = getelementptr inbounds i8, ptr %pcoder, i64 28028
  %arrayidx4.i.i = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long.i.i, i64 0, i64 %idxprom93.i, i64 %idxprom95.i
  %164 = load i16, ptr %arrayidx4.i.i, align 2, !noalias !12
  %165 = lshr i16 %164, 4
  %idxprom.i8.i.i = zext nneg i16 %165 to i64
  %arrayidx.i9.i.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i8.i.i
  %166 = load i8, ptr %arrayidx.i9.i.i, align 1, !noalias !12
  %conv1.i10.i.i = zext i8 %166 to i32
  %add.i510.i = add nuw nsw i32 %add122.i, %conv1.i.i509.i
  %add130.i = add nuw nsw i32 %add.i510.i, %conv1.i10.i.i
  %cmp134.i = icmp ult i32 %add130.i, %add106.i
  br i1 %cmp134.i, label %if.then136.i, label %if.end143.i

if.then136.i:                                     ; preds = %if.then127.i
  store i32 %add130.i, ptr %price.i, align 4, !noalias !12
  store i32 0, ptr %back_prev.i.i, align 4, !noalias !12
  store i8 0, ptr %prev_1_is_literal.i.i, align 4, !noalias !12
  br label %if.end143.i

if.end143.i:                                      ; preds = %if.then136.i, %if.then127.i, %get_literal_price.exit.i
  %167 = phi i32 [ -1, %if.then127.i ], [ 0, %if.then136.i ], [ -1, %get_literal_price.exit.i ]
  %len_main.0..i = call i32 @llvm.umax.i32(i32 %len_main.0.i, i32 %130)
  %cmp154.i = icmp ult i32 %len_main.0..i, 2
  br i1 %cmp154.i, label %if.then156.i, label %if.end159.i

if.then156.i:                                     ; preds = %if.end143.i
  store i32 %167, ptr %back_res, align 4, !alias.scope !17, !noalias !20
  store i32 1, ptr %len_res, align 4, !alias.scope !18, !noalias !21
  br label %helper1.exit.thread333

if.end159.i:                                      ; preds = %if.end143.i
  %pos_prev.i = getelementptr inbounds i8, ptr %pcoder, i64 69412
  store i32 0, ptr %pos_prev.i, align 4, !noalias !12
  %backs.i = getelementptr i8, ptr %pcoder, i64 69376
  store i32 %97, ptr %backs.i, align 4, !noalias !12
  %arrayidx174.1.i = getelementptr inbounds i8, ptr %pcoder, i64 69380
  store i32 %104, ptr %arrayidx174.1.i, align 4, !noalias !12
  %arrayidx174.2.i = getelementptr inbounds i8, ptr %pcoder, i64 69384
  store i32 %112, ptr %arrayidx174.2.i, align 4, !noalias !12
  %arrayidx174.3.i = getelementptr inbounds i8, ptr %pcoder, i64 69388
  store i32 %121, ptr %arrayidx174.3.i, align 4, !noalias !12
  %umax.i = zext i32 %len_main.0..i to i64
  %168 = add i32 %len_main.0..i, -1
  %169 = zext i32 %168 to i64
  %min.iters.check = icmp ult i32 %len_main.0..i, 5
  br i1 %min.iters.check, label %do.body.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %if.end159.i
  %n.vec = and i64 %169, 4294967292
  %ind.end = sub nsw i64 %umax.i, %n.vec
  %.cast = trunc nuw i64 %n.vec to i32
  %ind.end430 = sub i32 %len_main.0..i, %.cast
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = sub i64 %umax.i, %index
  %170 = add i64 %offset.idx, -1
  %171 = add i64 %offset.idx, -2
  %172 = add i64 %offset.idx, -3
  %173 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %offset.idx, i32 5
  %174 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %170, i32 5
  %175 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %171, i32 5
  %176 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %172, i32 5
  store i32 1073741824, ptr %173, align 4, !noalias !12
  store i32 1073741824, ptr %174, align 4, !noalias !12
  store i32 1073741824, ptr %175, align 4, !noalias !12
  store i32 1073741824, ptr %176, align 4, !noalias !12
  %index.next = add nuw i64 %index, 4
  %177 = icmp eq i64 %index.next, %n.vec
  br i1 %177, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %169
  br i1 %cmp.n, label %for.cond186.preheader.i, label %do.body.i.preheader

do.body.i.preheader:                              ; preds = %middle.block, %if.end159.i
  %indvars.iv568.i.ph = phi i64 [ %umax.i, %if.end159.i ], [ %ind.end, %middle.block ]
  %len.0.i.ph = phi i32 [ %len_main.0..i, %if.end159.i ], [ %ind.end430, %middle.block ]
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.preheader, %do.body.i
  %indvars.iv568.i = phi i64 [ %indvars.iv.next569.i, %do.body.i ], [ %indvars.iv568.i.ph, %do.body.i.preheader ]
  %len.0.i = phi i32 [ %dec.i, %do.body.i ], [ %len.0.i.ph, %do.body.i.preheader ]
  %price182.i = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv568.i, i32 5
  store i32 1073741824, ptr %price182.i, align 4, !noalias !12
  %dec.i = add i32 %len.0.i, -1
  %cmp183.i = icmp ugt i32 %dec.i, 1
  %indvars.iv.next569.i = add nsw i64 %indvars.iv568.i, -1
  br i1 %cmp183.i, label %do.body.i, label %for.cond186.preheader.i, !llvm.loop !25

for.cond186.preheader.i:                          ; preds = %do.body.i, %middle.block
  %is_rep0.i517.i = getelementptr inbounds i8, ptr %pcoder, i64 27956
  %arrayidx.i519.i = getelementptr inbounds [12 x i16], ptr %is_rep0.i517.i, i64 0, i64 %idxprom93.i
  %is_rep1.i.i = getelementptr inbounds i8, ptr %pcoder, i64 27980
  %arrayidx13.i.i = getelementptr inbounds [12 x i16], ptr %is_rep1.i.i, i64 0, i64 %idxprom93.i
  %is_rep2.i.i = getelementptr inbounds i8, ptr %pcoder, i64 28004
  %arrayidx23.i.i = getelementptr inbounds [12 x i16], ptr %is_rep2.i.i, i64 0, i64 %idxprom93.i
  %prices.i.i = getelementptr inbounds i8, ptr %pcoder, i64 48716
  %cmp193.i = icmp ult i32 %storemerge.i, 2
  br i1 %cmp193.i, label %cleanup232.i, label %get_pure_rep_price.exit.i

while.cond.preheader.i:                           ; preds = %cleanup232.3.i
  %matches258.i = getelementptr inbounds i8, ptr %pcoder, i64 756
  br label %while.cond.i

get_pure_rep_price.exit.i:                        ; preds = %for.cond186.preheader.i
  %is_rep0_long.i529.i = getelementptr inbounds i8, ptr %pcoder, i64 28028
  %arrayidx4.i531.i = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long.i529.i, i64 0, i64 %idxprom93.i, i64 %idxprom95.i
  %178 = load i16, ptr %arrayidx4.i531.i, align 2, !noalias !12
  %179 = lshr i16 %178, 4
  %180 = xor i16 %179, 127
  %idxprom.i43.i.i = zext nneg i16 %180 to i64
  %arrayidx.i44.i.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i43.i.i
  %181 = load i8, ptr %arrayidx.i44.i.i, align 1, !noalias !12
  %conv1.i45.i.i = zext i8 %181 to i32
  %182 = load i16, ptr %arrayidx.i519.i, align 2, !noalias !12
  %183 = lshr i16 %182, 4
  %idxprom.i.i526.i = zext nneg i16 %183 to i64
  %arrayidx.i.i527.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i.i526.i
  %184 = load i8, ptr %arrayidx.i.i527.i, align 1, !noalias !12
  %conv1.i.i528.i = zext i8 %184 to i32
  %add.i532.i = add nuw nsw i32 %add122.i, %conv1.i45.i.i
  %add200.i = add nuw nsw i32 %add.i532.i, %conv1.i.i528.i
  %185 = zext i32 %storemerge.i to i64
  br label %do.body201.i

do.body201.i:                                     ; preds = %if.end226.i, %get_pure_rep_price.exit.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end226.i ], [ %185, %get_pure_rep_price.exit.i ]
  %186 = add nsw i64 %indvars.iv, -2
  %arrayidx2.i.i = getelementptr inbounds [16 x [272 x i32]], ptr %prices.i.i, i64 0, i64 %idxprom95.i, i64 %186
  %187 = load i32, ptr %arrayidx2.i.i, align 4, !noalias !12
  %add203.i = add i32 %add200.i, %187
  %arrayidx206.i = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv
  %price207.i = getelementptr inbounds i8, ptr %arrayidx206.i, i64 16
  %188 = load i32, ptr %price207.i, align 4, !noalias !12
  %cmp208.i = icmp ult i32 %add203.i, %188
  br i1 %cmp208.i, label %if.then210.i, label %if.end226.i

if.then210.i:                                     ; preds = %do.body201.i
  store i32 %add203.i, ptr %price207.i, align 4, !noalias !12
  %pos_prev218.i = getelementptr inbounds i8, ptr %arrayidx206.i, i64 20
  store i32 0, ptr %pos_prev218.i, align 4, !noalias !12
  %back_prev222.i = getelementptr inbounds i8, ptr %arrayidx206.i, i64 24
  store i32 0, ptr %back_prev222.i, align 4, !noalias !12
  %prev_1_is_literal.i = getelementptr inbounds i8, ptr %arrayidx206.i, i64 4
  store i8 0, ptr %prev_1_is_literal.i, align 4, !noalias !12
  br label %if.end226.i

if.end226.i:                                      ; preds = %if.then210.i, %do.body201.i
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %189 = and i64 %indvars.iv.next, 4294967294
  %cmp229.i.not = icmp eq i64 %189, 0
  br i1 %cmp229.i.not, label %cleanup232.i, label %do.body201.i

cleanup232.i:                                     ; preds = %if.end226.i, %for.cond186.preheader.i
  %cmp193.1.i = icmp ult i32 %111, 2
  br i1 %cmp193.1.i, label %cleanup232.1.i, label %get_pure_rep_price.exit.1.i

get_pure_rep_price.exit.1.i:                      ; preds = %cleanup232.i
  %190 = load i16, ptr %arrayidx13.i.i, align 2, !noalias !12
  %191 = lshr i16 %190, 4
  %idxprom.i49.i.1.i = zext nneg i16 %191 to i64
  %arrayidx.i50.i.1.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i49.i.1.i
  %192 = load i8, ptr %arrayidx.i50.i.1.i, align 1, !noalias !12
  %conv1.i51.i.1.i = zext i8 %192 to i32
  %193 = load i16, ptr %arrayidx.i519.i, align 2, !noalias !12
  %194 = lshr i16 %193, 4
  %195 = xor i16 %194, 127
  %idxprom.i46.i.1.i = zext nneg i16 %195 to i64
  %arrayidx.i47.i.1.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i46.i.1.i
  %196 = load i8, ptr %arrayidx.i47.i.1.i, align 1, !noalias !12
  %conv1.i48.i.1.i = zext i8 %196 to i32
  %add15.i.1.i = add nuw nsw i32 %add122.i, %conv1.i51.i.1.i
  %add200.1.i = add nuw nsw i32 %add15.i.1.i, %conv1.i48.i.1.i
  %197 = zext i32 %111 to i64
  br label %do.body201.1.i

do.body201.1.i:                                   ; preds = %if.end226.1.i, %get_pure_rep_price.exit.1.i
  %indvars.iv376 = phi i64 [ %indvars.iv.next377, %if.end226.1.i ], [ %197, %get_pure_rep_price.exit.1.i ]
  %198 = add nsw i64 %indvars.iv376, -2
  %arrayidx2.i.1.i = getelementptr inbounds [16 x [272 x i32]], ptr %prices.i.i, i64 0, i64 %idxprom95.i, i64 %198
  %199 = load i32, ptr %arrayidx2.i.1.i, align 4, !noalias !12
  %add203.1.i = add i32 %add200.1.i, %199
  %arrayidx206.1.i = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv376
  %price207.1.i = getelementptr inbounds i8, ptr %arrayidx206.1.i, i64 16
  %200 = load i32, ptr %price207.1.i, align 4, !noalias !12
  %cmp208.1.i = icmp ult i32 %add203.1.i, %200
  br i1 %cmp208.1.i, label %if.then210.1.i, label %if.end226.1.i

if.then210.1.i:                                   ; preds = %do.body201.1.i
  store i32 %add203.1.i, ptr %price207.1.i, align 4, !noalias !12
  %pos_prev218.1.i = getelementptr inbounds i8, ptr %arrayidx206.1.i, i64 20
  store i32 0, ptr %pos_prev218.1.i, align 4, !noalias !12
  %back_prev222.1.i = getelementptr inbounds i8, ptr %arrayidx206.1.i, i64 24
  store i32 1, ptr %back_prev222.1.i, align 4, !noalias !12
  %prev_1_is_literal.1.i = getelementptr inbounds i8, ptr %arrayidx206.1.i, i64 4
  store i8 0, ptr %prev_1_is_literal.1.i, align 4, !noalias !12
  br label %if.end226.1.i

if.end226.1.i:                                    ; preds = %if.then210.1.i, %do.body201.1.i
  %indvars.iv.next377 = add nsw i64 %indvars.iv376, -1
  %201 = and i64 %indvars.iv.next377, 4294967294
  %cmp229.1.i.not = icmp eq i64 %201, 0
  br i1 %cmp229.1.i.not, label %cleanup232.1.i, label %do.body201.1.i

cleanup232.1.i:                                   ; preds = %if.end226.1.i, %cleanup232.i
  %cmp193.2.i = icmp ult i32 %120, 2
  br i1 %cmp193.2.i, label %cleanup232.2.i, label %get_pure_rep_price.exit.2.i

get_pure_rep_price.exit.2.i:                      ; preds = %cleanup232.1.i
  %202 = load i16, ptr %arrayidx13.i.i, align 2, !noalias !12
  %203 = lshr i16 %202, 4
  %204 = xor i16 %203, 127
  %idxprom.i52.i.2.i = zext nneg i16 %204 to i64
  %arrayidx.i53.i.2.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i52.i.2.i
  %205 = load i8, ptr %arrayidx.i53.i.2.i, align 1, !noalias !12
  %conv1.i54.i.2.i = zext i8 %205 to i32
  %206 = load i16, ptr %arrayidx.i519.i, align 2, !noalias !12
  %207 = lshr i16 %206, 4
  %208 = xor i16 %207, 127
  %idxprom.i46.i.2.i = zext nneg i16 %208 to i64
  %arrayidx.i47.i.2.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i46.i.2.i
  %209 = load i8, ptr %arrayidx.i47.i.2.i, align 1, !noalias !12
  %conv1.i48.i.2.i = zext i8 %209 to i32
  %210 = load i16, ptr %arrayidx23.i.i, align 2, !noalias !12
  %211 = lshr i16 %210, 4
  %idxprom.i55.i.2.i = zext nneg i16 %211 to i64
  %arrayidx.i56.i.2.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i55.i.2.i
  %212 = load i8, ptr %arrayidx.i56.i.2.i, align 1, !noalias !12
  %conv1.i57.i.2.i = zext i8 %212 to i32
  %add21.i.2.i = add nuw nsw i32 %add122.i, %conv1.i54.i.2.i
  %add25.i.2.i = add nuw nsw i32 %add21.i.2.i, %conv1.i48.i.2.i
  %add200.2.i = add nuw nsw i32 %add25.i.2.i, %conv1.i57.i.2.i
  %213 = zext i32 %120 to i64
  br label %do.body201.2.i

do.body201.2.i:                                   ; preds = %if.end226.2.i, %get_pure_rep_price.exit.2.i
  %indvars.iv381 = phi i64 [ %indvars.iv.next382, %if.end226.2.i ], [ %213, %get_pure_rep_price.exit.2.i ]
  %214 = add nsw i64 %indvars.iv381, -2
  %arrayidx2.i.2.i = getelementptr inbounds [16 x [272 x i32]], ptr %prices.i.i, i64 0, i64 %idxprom95.i, i64 %214
  %215 = load i32, ptr %arrayidx2.i.2.i, align 4, !noalias !12
  %add203.2.i = add i32 %add200.2.i, %215
  %arrayidx206.2.i = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv381
  %price207.2.i = getelementptr inbounds i8, ptr %arrayidx206.2.i, i64 16
  %216 = load i32, ptr %price207.2.i, align 4, !noalias !12
  %cmp208.2.i = icmp ult i32 %add203.2.i, %216
  br i1 %cmp208.2.i, label %if.then210.2.i, label %if.end226.2.i

if.then210.2.i:                                   ; preds = %do.body201.2.i
  store i32 %add203.2.i, ptr %price207.2.i, align 4, !noalias !12
  %pos_prev218.2.i = getelementptr inbounds i8, ptr %arrayidx206.2.i, i64 20
  store i32 0, ptr %pos_prev218.2.i, align 4, !noalias !12
  %back_prev222.2.i = getelementptr inbounds i8, ptr %arrayidx206.2.i, i64 24
  store i32 2, ptr %back_prev222.2.i, align 4, !noalias !12
  %prev_1_is_literal.2.i = getelementptr inbounds i8, ptr %arrayidx206.2.i, i64 4
  store i8 0, ptr %prev_1_is_literal.2.i, align 4, !noalias !12
  br label %if.end226.2.i

if.end226.2.i:                                    ; preds = %if.then210.2.i, %do.body201.2.i
  %indvars.iv.next382 = add nsw i64 %indvars.iv381, -1
  %217 = and i64 %indvars.iv.next382, 4294967294
  %cmp229.2.i.not = icmp eq i64 %217, 0
  br i1 %cmp229.2.i.not, label %cleanup232.2.i, label %do.body201.2.i

cleanup232.2.i:                                   ; preds = %if.end226.2.i, %cleanup232.1.i
  %cmp193.3.i = icmp ult i32 %129, 2
  br i1 %cmp193.3.i, label %cleanup232.3.i, label %get_pure_rep_price.exit.3.i

get_pure_rep_price.exit.3.i:                      ; preds = %cleanup232.2.i
  %218 = load i16, ptr %arrayidx13.i.i, align 2, !noalias !12
  %219 = lshr i16 %218, 4
  %220 = xor i16 %219, 127
  %idxprom.i52.i.3.i = zext nneg i16 %220 to i64
  %arrayidx.i53.i.3.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i52.i.3.i
  %221 = load i8, ptr %arrayidx.i53.i.3.i, align 1, !noalias !12
  %conv1.i54.i.3.i = zext i8 %221 to i32
  %222 = load i16, ptr %arrayidx.i519.i, align 2, !noalias !12
  %223 = lshr i16 %222, 4
  %224 = xor i16 %223, 127
  %idxprom.i46.i.3.i = zext nneg i16 %224 to i64
  %arrayidx.i47.i.3.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i46.i.3.i
  %225 = load i8, ptr %arrayidx.i47.i.3.i, align 1, !noalias !12
  %conv1.i48.i.3.i = zext i8 %225 to i32
  %226 = load i16, ptr %arrayidx23.i.i, align 2, !noalias !12
  %227 = lshr i16 %226, 4
  %228 = xor i16 %227, 127
  %idxprom.i55.i.3.i = zext nneg i16 %228 to i64
  %arrayidx.i56.i.3.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i55.i.3.i
  %229 = load i8, ptr %arrayidx.i56.i.3.i, align 1, !noalias !12
  %conv1.i57.i.3.i = zext i8 %229 to i32
  %add21.i.3.i = add nuw nsw i32 %add122.i, %conv1.i54.i.3.i
  %add25.i.3.i = add nuw nsw i32 %add21.i.3.i, %conv1.i48.i.3.i
  %add200.3.i = add nuw nsw i32 %add25.i.3.i, %conv1.i57.i.3.i
  %230 = zext i32 %129 to i64
  br label %do.body201.3.i

do.body201.3.i:                                   ; preds = %if.end226.3.i, %get_pure_rep_price.exit.3.i
  %indvars.iv386 = phi i64 [ %indvars.iv.next387, %if.end226.3.i ], [ %230, %get_pure_rep_price.exit.3.i ]
  %231 = add nsw i64 %indvars.iv386, -2
  %arrayidx2.i.3.i = getelementptr inbounds [16 x [272 x i32]], ptr %prices.i.i, i64 0, i64 %idxprom95.i, i64 %231
  %232 = load i32, ptr %arrayidx2.i.3.i, align 4, !noalias !12
  %add203.3.i = add i32 %add200.3.i, %232
  %arrayidx206.3.i = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv386
  %price207.3.i = getelementptr inbounds i8, ptr %arrayidx206.3.i, i64 16
  %233 = load i32, ptr %price207.3.i, align 4, !noalias !12
  %cmp208.3.i = icmp ult i32 %add203.3.i, %233
  br i1 %cmp208.3.i, label %if.then210.3.i, label %if.end226.3.i

if.then210.3.i:                                   ; preds = %do.body201.3.i
  store i32 %add203.3.i, ptr %price207.3.i, align 4, !noalias !12
  %pos_prev218.3.i = getelementptr inbounds i8, ptr %arrayidx206.3.i, i64 20
  store i32 0, ptr %pos_prev218.3.i, align 4, !noalias !12
  %back_prev222.3.i = getelementptr inbounds i8, ptr %arrayidx206.3.i, i64 24
  store i32 3, ptr %back_prev222.3.i, align 4, !noalias !12
  %prev_1_is_literal.3.i = getelementptr inbounds i8, ptr %arrayidx206.3.i, i64 4
  store i8 0, ptr %prev_1_is_literal.3.i, align 4, !noalias !12
  br label %if.end226.3.i

if.end226.3.i:                                    ; preds = %if.then210.3.i, %do.body201.3.i
  %indvars.iv.next387 = add nsw i64 %indvars.iv386, -1
  %234 = and i64 %indvars.iv.next387, 4294967294
  %cmp229.3.i.not = icmp eq i64 %234, 0
  br i1 %cmp229.3.i.not, label %cleanup232.3.i, label %do.body201.3.i

cleanup232.3.i:                                   ; preds = %if.end226.3.i, %cleanup232.2.i
  %235 = load i16, ptr %arrayidx120.i, align 2, !noalias !12
  %236 = lshr i16 %235, 4
  %idxprom.i513.i = zext nneg i16 %236 to i64
  %arrayidx.i514.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i513.i
  %237 = load i8, ptr %arrayidx.i514.i, align 1, !noalias !12
  %conv1.i515.i = zext i8 %237 to i32
  %add250.i = add i32 %storemerge.i, 1
  %cond253.i = select i1 %cmp193.i, i32 2, i32 %add250.i
  %cmp254.not.i = icmp ugt i32 %cond253.i, %len_main.0.i
  br i1 %cmp254.not.i, label %helper1.exit, label %while.cond.preheader.i

while.cond.i:                                     ; preds = %while.cond.i, %while.cond.preheader.i
  %i257.0.i = phi i32 [ %inc264.i, %while.cond.i ], [ 0, %while.cond.preheader.i ]
  %idxprom259.i = zext i32 %i257.0.i to i64
  %arrayidx260.i = getelementptr inbounds [274 x %struct.lzma_match], ptr %matches258.i, i64 0, i64 %idxprom259.i
  %238 = load i32, ptr %arrayidx260.i, align 4, !noalias !12
  %cmp262.i = icmp ugt i32 %cond253.i, %238
  %inc264.i = add i32 %i257.0.i, 1
  br i1 %cmp262.i, label %while.cond.i, label %for.cond265.preheader.i

for.cond265.preheader.i:                          ; preds = %while.cond.i
  %prices.i.i.i = getelementptr inbounds i8, ptr %pcoder, i64 30212
  %add11.i.i = add nuw nsw i32 %conv1.i515.i, %conv1.i501.i
  %239 = load i32, ptr %matches_count.i, align 4, !noalias !12
  %pos_slot_prices.i.i = getelementptr inbounds i8, ptr %pcoder, i64 66192
  %align_prices.i.i = getelementptr inbounds i8, ptr %pcoder, i64 69272
  %distances_prices.i.i = getelementptr inbounds i8, ptr %pcoder, i64 67216
  br label %for.cond265.i

for.cond265.i:                                    ; preds = %for.inc316.i, %for.cond265.preheader.i
  %len.1.i = phi i32 [ %inc317.i, %for.inc316.i ], [ %cond253.i, %for.cond265.preheader.i ]
  %i257.1.i = phi i32 [ %i257.3.i, %for.inc316.i ], [ %i257.0.i, %for.cond265.preheader.i ]
  %idxprom268.i = zext i32 %i257.1.i to i64
  %arrayidx269.i = getelementptr inbounds [274 x %struct.lzma_match], ptr %matches258.i, i64 0, i64 %idxprom268.i
  %dist270.i = getelementptr inbounds i8, ptr %arrayidx269.i, i64 4
  %240 = load i32, ptr %dist270.i, align 4, !noalias !12
  %cmp.i535.i = icmp ult i32 %len.1.i, 6
  %sub.i536.i = add i32 %len.1.i, -2
  %cond.i.i = select i1 %cmp.i535.i, i32 %sub.i536.i, i32 3
  %cmp1.i.i = icmp ult i32 %240, 128
  br i1 %cmp1.i.i, label %if.then.i542.i, label %if.else.i537.i

if.then.i542.i:                                   ; preds = %for.cond265.i
  %idxprom.i543.i = zext i32 %cond.i.i to i64
  %idxprom2.i.i = zext nneg i32 %240 to i64
  %arrayidx3.i.i = getelementptr inbounds [4 x [128 x i32]], ptr %distances_prices.i.i, i64 0, i64 %idxprom.i543.i, i64 %idxprom2.i.i
  %241 = load i32, ptr %arrayidx3.i.i, align 4, !noalias !12
  br label %get_pos_len_price.exit.i

if.else.i537.i:                                   ; preds = %for.cond265.i
  %cmp.i.i.i = icmp ult i32 %240, 524288
  %cmp1.i.i.i = icmp sgt i32 %240, -1
  %..i.i.i = select i1 %cmp1.i.i.i, i32 18, i32 30
  %.21.i.i.i = select i1 %cmp1.i.i.i, i64 36, i64 60
  %.sink20.i.i.i = select i1 %cmp.i.i.i, i32 6, i32 %..i.i.i
  %.sink.i.i.i = select i1 %cmp.i.i.i, i64 12, i64 %.21.i.i.i
  %shr10.i.i.i = lshr i32 %240, %.sink20.i.i.i
  %idxprom11.i.i.i = zext nneg i32 %shr10.i.i.i to i64
  %arrayidx12.i.i.i = getelementptr inbounds [8192 x i8], ptr @lzma_fastpos, i64 0, i64 %idxprom11.i.i.i
  %242 = load i8, ptr %arrayidx12.i.i.i, align 1, !noalias !12
  %conv13.i.i.i = zext i8 %242 to i64
  %add14.i.i.i = add nuw nsw i64 %.sink.i.i.i, %conv13.i.i.i
  %idxprom4.i.i = zext i32 %cond.i.i to i64
  %arrayidx7.i.i = getelementptr inbounds [4 x [64 x i32]], ptr %pos_slot_prices.i.i, i64 0, i64 %idxprom4.i.i, i64 %add14.i.i.i
  %243 = load i32, ptr %arrayidx7.i.i, align 4, !noalias !12
  %and.i538.i = and i32 %240, 15
  %idxprom8.i.i = zext nneg i32 %and.i538.i to i64
  %arrayidx9.i.i = getelementptr inbounds [16 x i32], ptr %align_prices.i.i, i64 0, i64 %idxprom8.i.i
  %244 = load i32, ptr %arrayidx9.i.i, align 4, !noalias !12
  %add.i539.i = add i32 %244, %243
  br label %get_pos_len_price.exit.i

get_pos_len_price.exit.i:                         ; preds = %if.else.i537.i, %if.then.i542.i
  %price.0.i540.i = phi i32 [ %241, %if.then.i542.i ], [ %add.i539.i, %if.else.i537.i ]
  %idxprom1.i.i.i = zext i32 %sub.i536.i to i64
  %arrayidx2.i.i.i = getelementptr inbounds [16 x [272 x i32]], ptr %prices.i.i.i, i64 0, i64 %idxprom95.i, i64 %idxprom1.i.i.i
  %245 = load i32, ptr %arrayidx2.i.i.i, align 4, !noalias !12
  %add244.i = add i32 %add11.i.i, %price.0.i540.i
  %add273.i = add i32 %add244.i, %245
  %idxprom275.i = zext i32 %len.1.i to i64
  %arrayidx276.i = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %idxprom275.i
  %price277.i = getelementptr inbounds i8, ptr %arrayidx276.i, i64 16
  %246 = load i32, ptr %price277.i, align 4, !noalias !12
  %cmp278.i = icmp ult i32 %add273.i, %246
  br i1 %cmp278.i, label %if.then280.i, label %if.end298.i

if.then280.i:                                     ; preds = %get_pos_len_price.exit.i
  store i32 %add273.i, ptr %price277.i, align 4, !noalias !12
  %pos_prev288.i = getelementptr inbounds i8, ptr %arrayidx276.i, i64 20
  store i32 0, ptr %pos_prev288.i, align 4, !noalias !12
  %add289.i = add i32 %240, 4
  %back_prev293.i = getelementptr inbounds i8, ptr %arrayidx276.i, i64 24
  store i32 %add289.i, ptr %back_prev293.i, align 4, !noalias !12
  %prev_1_is_literal297.i = getelementptr inbounds i8, ptr %arrayidx276.i, i64 4
  store i8 0, ptr %prev_1_is_literal297.i, align 4, !noalias !12
  br label %if.end298.i

if.end298.i:                                      ; preds = %if.then280.i, %get_pos_len_price.exit.i
  %247 = load i32, ptr %arrayidx269.i, align 4, !noalias !12
  %cmp303.i = icmp ne i32 %len.1.i, %247
  %inc306.i = add i32 %i257.1.i, 1
  %cmp307.i = icmp ne i32 %inc306.i, %239
  %.not.i = select i1 %cmp303.i, i1 true, i1 %cmp307.i
  br i1 %.not.i, label %for.inc316.i, label %helper1.exit

for.inc316.i:                                     ; preds = %if.end298.i
  %i257.3.i = select i1 %cmp303.i, i32 %i257.1.i, i32 %inc306.i
  %inc317.i = add i32 %len.1.i, 1
  br label %for.cond265.i

helper1.exit.thread333:                           ; preds = %if.then88.i, %if.then156.i, %if.then57.i, %if.then.i.i, %if.then63.i, %if.then.i490.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rep_lens.i) #6, !noalias !12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %matches_count.i) #6, !noalias !12
  br label %cleanup45

helper1.exit:                                     ; preds = %if.end298.i, %cleanup232.3.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rep_lens.i) #6, !noalias !12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %matches_count.i) #6, !noalias !12
  %cmp22 = icmp eq i32 %len_main.0..i, -1
  br i1 %cmp22, label %cleanup45, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %helper1.exit
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %reps) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %reps, ptr noundef nonnull align 4 dereferenceable(16) %reps.i, i64 16, i1 false)
  %matches_count = getelementptr inbounds i8, ptr %pcoder, i64 2948
  %matches = getelementptr inbounds i8, ptr %pcoder, i64 756
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
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %helper2.exit
  %indvars.iv393 = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next394, %helper2.exit ]
  %len_end.0353 = phi i32 [ %len_main.0..i, %for.body.lr.ph ], [ %retval.0.i, %helper2.exit ]
  %call29 = call i32 @lzma_mf_find(ptr noundef nonnull %mf, ptr noundef nonnull %matches_count, ptr noundef nonnull %matches) #6
  store i32 %call29, ptr %longest_match_length, align 8
  %248 = load i32, ptr %nice_len1.i329, align 8
  %cmp31.not = icmp ult i32 %call29, %248
  %249 = trunc nuw i64 %indvars.iv393 to i32
  br i1 %cmp31.not, label %if.end33, label %for.end

if.end33:                                         ; preds = %for.body
  %mf.val90 = load ptr, ptr %mf, align 8
  %mf.val91 = load i32, ptr %94, align 8
  %idx.ext.i171 = zext i32 %mf.val91 to i64
  %add.ptr.i172 = getelementptr inbounds i8, ptr %mf.val90, i64 %idx.ext.i171
  %add.ptr = getelementptr inbounds i8, ptr %add.ptr.i172, i64 -1
  %add = add i32 %249, %position
  %mf.val89 = load i32, ptr %95, align 4
  %reass.sub = sub i32 %mf.val89, %mf.val91
  %add38 = add i32 %reass.sub, 1
  %sub39 = sub i32 4095, %249
  %spec.select = call i32 @llvm.umin.i32(i32 %add38, i32 %sub39)
  %250 = load i32, ptr %matches_count, align 4
  %arrayidx.i177 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv393
  %pos_prev2.i = getelementptr inbounds i8, ptr %arrayidx.i177, i64 20
  %251 = load i32, ptr %pos_prev2.i, align 4
  %prev_1_is_literal.i178 = getelementptr inbounds i8, ptr %arrayidx.i177, i64 4
  %252 = load i8, ptr %prev_1_is_literal.i178, align 4, !range !26, !noundef !27
  %loadedv.i = trunc nuw i8 %252 to i1
  br i1 %loadedv.i, label %if.then.i308, label %if.end44.thread.i

if.then.i308:                                     ; preds = %if.end33
  %prev_2.i = getelementptr inbounds i8, ptr %arrayidx.i177, i64 5
  %253 = load i8, ptr %prev_2.i, align 1, !range !26, !noundef !27
  %loadedv9.i = trunc nuw i8 %253 to i1
  br i1 %loadedv9.i, label %if.then10.i, label %if.end44.thread1698.i

if.then10.i:                                      ; preds = %if.then.i308
  %pos_prev_2.i = getelementptr inbounds i8, ptr %arrayidx.i177, i64 8
  %254 = load i32, ptr %pos_prev_2.i, align 4
  %idxprom15.i = zext i32 %254 to i64
  %arrayidx16.i = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %idxprom15.i
  %255 = load i32, ptr %arrayidx16.i, align 4
  %back_prev_2.i = getelementptr inbounds i8, ptr %arrayidx.i177, i64 12
  %256 = load i32, ptr %back_prev_2.i, align 4
  %cmp.i310 = icmp ult i32 %256, 4
  %cmp22.i = icmp ult i32 %255, 7
  %cond.i = select i1 %cmp22.i, i32 8, i32 11
  %cond24.i = select i1 %cmp22.i, i32 7, i32 10
  %state.0.i = select i1 %cmp.i310, i32 %cond.i, i32 %cond24.i
  %cond36.v.i = select i1 %cmp22.i, i32 -3, i32 -6
  %cond36.i = add nsw i32 %state.0.i, %cond36.v.i
  %257 = zext i32 %251 to i64
  %cmp46.i = icmp eq i64 %indvars.iv393, %257
  br i1 %cmp46.i, label %if.then47.i, label %if.end104.i

if.end44.thread1698.i:                            ; preds = %if.then.i308
  %dec.i309 = add i32 %251, -1
  %idxprom27.i = zext i32 %dec.i309 to i64
  %arrayidx28.i = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %idxprom27.i
  %258 = load i32, ptr %arrayidx28.i, align 4
  %cmp311700.i = icmp ult i32 %258, 4
  %cmp321701.i = icmp ult i32 %258, 10
  %cond36.v1702.i = select i1 %cmp321701.i, i32 -3, i32 -6
  %cond361703.i = add i32 %cond36.v1702.i, %258
  %cond381704.i = select i1 %cmp311700.i, i32 0, i32 %cond361703.i
  %259 = zext i32 %251 to i64
  %cmp461705.i = icmp eq i64 %indvars.iv393, %259
  br i1 %cmp461705.i, label %if.then47.i, label %if.else91.i

if.end44.thread.i:                                ; preds = %if.end33
  %idxprom41.i = zext i32 %251 to i64
  %arrayidx42.i = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %idxprom41.i
  %260 = load i32, ptr %arrayidx42.i, align 4
  %261 = add nsw i64 %indvars.iv393, -1
  %cmp461552.i = icmp eq i64 %261, %idxprom41.i
  br i1 %cmp461552.i, label %if.then47.i, label %if.else91.i

if.then47.i:                                      ; preds = %if.end44.thread.i, %if.end44.thread1698.i, %if.then10.i
  %state.11553.i = phi i32 [ %260, %if.end44.thread.i ], [ %cond36.i, %if.then10.i ], [ %cond381704.i, %if.end44.thread1698.i ]
  %back_prev.i = getelementptr inbounds i8, ptr %arrayidx.i177, i64 24
  %262 = load i32, ptr %back_prev.i, align 4
  %cmp51.i = icmp eq i32 %262, 0
  br i1 %cmp51.i, label %if.then52.i, label %if.else55.i

if.then52.i:                                      ; preds = %if.then47.i
  %cmp53.i = icmp ult i32 %state.11553.i, 7
  %cond54.i = select i1 %cmp53.i, i32 9, i32 11
  br label %if.end157.i

if.else55.i:                                      ; preds = %if.then47.i
  %cmp56.i = icmp ult i32 %state.11553.i, 4
  %cmp59.i = icmp ult i32 %state.11553.i, 10
  %cond65.v.i = select i1 %cmp59.i, i32 -3, i32 -6
  %cond65.i = add i32 %cond65.v.i, %state.11553.i
  %spec.select414 = select i1 %cmp56.i, i32 0, i32 %cond65.i
  br label %if.end157.i

if.else91.i:                                      ; preds = %if.end44.thread.i, %if.end44.thread1698.i
  %state.115541559.i = phi i32 [ %260, %if.end44.thread.i ], [ %cond381704.i, %if.end44.thread1698.i ]
  %pos_prev.015551558.i = phi i32 [ %251, %if.end44.thread.i ], [ %dec.i309, %if.end44.thread1698.i ]
  %back_prev95.i = getelementptr inbounds i8, ptr %arrayidx.i177, i64 24
  %263 = load i32, ptr %back_prev95.i, align 4
  %cmp96.i = icmp ult i32 %263, 4
  %cmp98.i = icmp ult i32 %state.115541559.i, 7
  %.pre398 = zext i32 %pos_prev.015551558.i to i64
  br i1 %cmp96.i, label %if.end104.thread.i, label %if.end104.thread1567.i

if.end104.thread.i:                               ; preds = %if.else91.i
  %cond99.i = select i1 %cmp98.i, i32 8, i32 11
  br label %if.then106.i

if.end104.thread1567.i:                           ; preds = %if.else91.i
  %cond102.i = select i1 %cmp98.i, i32 7, i32 10
  br label %if.else137.i

if.end104.i:                                      ; preds = %if.then10.i
  %cmp89.i = icmp ult i32 %cond36.i, 7
  %cond90.i = select i1 %cmp89.i, i32 8, i32 11
  br i1 %cmp.i310, label %if.then106.i, label %if.else137.i

if.then106.i:                                     ; preds = %if.end104.i, %if.end104.thread.i
  %idxprom108.i.pre-phi = phi i64 [ %idxprom15.i, %if.end104.i ], [ %.pre398, %if.end104.thread.i ]
  %state.21565.i = phi i32 [ %cond90.i, %if.end104.i ], [ %cond99.i, %if.end104.thread.i ]
  %pos.01564.i = phi i32 [ %256, %if.end104.i ], [ %263, %if.end104.thread.i ]
  %idxprom110.i = zext nneg i32 %pos.01564.i to i64
  %arrayidx111.i = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %idxprom108.i.pre-phi, i32 8, i64 %idxprom110.i
  %264 = load i32, ptr %arrayidx111.i, align 4
  store i32 %264, ptr %reps, align 16
  %cmp113.not1584.i = icmp eq i32 %pos.01564.i, 0
  br i1 %cmp113.not1584.i, label %for.body125.preheader.i, label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %if.then106.i
  %265 = add nuw nsw i32 %pos.01564.i, 1
  %266 = mul nuw nsw i64 %idxprom108.i.pre-phi, 44
  %scevgep392 = getelementptr i8, ptr %backs.i, i64 %266
  %267 = shl nuw nsw i32 %265, 2
  %268 = zext nneg i32 %267 to i64
  %269 = add nsw i64 %268, -4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %arrayidx152.i, ptr align 4 %scevgep392, i64 %269, i1 false)
  %cmp1241586.i = icmp ult i32 %pos.01564.i, 3
  br i1 %cmp1241586.i, label %for.body125.preheader.i, label %if.end157.i

for.body125.preheader.i:                          ; preds = %if.then106.i, %for.body.preheader.i
  %i.0.lcssa1710.i = phi i32 [ %265, %for.body.preheader.i ], [ 1, %if.then106.i ]
  %270 = zext nneg i32 %i.0.lcssa1710.i to i64
  %271 = add nuw nsw i32 %pos.01564.i, 2
  %272 = zext nneg i32 %271 to i64
  %273 = sub nsw i64 5, %272
  %min.iters.check499 = icmp ult i64 %273, 16
  br i1 %min.iters.check499, label %for.body125.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %for.body125.preheader.i
  %274 = add nuw nsw i32 %pos.01564.i, 2
  %275 = zext nneg i32 %274 to i64
  %276 = sub nsw i64 4, %275
  %277 = trunc i64 %276 to i32
  %278 = sub nuw nsw i32 -3, %pos.01564.i
  %279 = icmp ult i32 %278, %277
  %280 = icmp ugt i64 %276, 4294967295
  %281 = or i1 %279, %280
  br i1 %281, label %for.body125.i.preheader, label %vector.ph500

vector.ph500:                                     ; preds = %vector.scevcheck
  %n.vec502 = and i64 %273, -16
  %ind.end503 = add nsw i64 %n.vec502, %270
  br label %vector.body505

vector.body505:                                   ; preds = %vector.body505, %vector.ph500
  %index506 = phi i64 [ 0, %vector.ph500 ], [ %index.next511, %vector.body505 ]
  %offset.idx507 = add i64 %index506, %270
  %282 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %idxprom108.i.pre-phi, i32 8, i64 %offset.idx507
  %283 = getelementptr inbounds i8, ptr %282, i64 16
  %284 = getelementptr inbounds i8, ptr %282, i64 32
  %285 = getelementptr inbounds i8, ptr %282, i64 48
  %wide.load = load <4 x i32>, ptr %282, align 4
  %wide.load508 = load <4 x i32>, ptr %283, align 4
  %wide.load509 = load <4 x i32>, ptr %284, align 4
  %wide.load510 = load <4 x i32>, ptr %285, align 4
  %286 = getelementptr inbounds i32, ptr %reps, i64 %offset.idx507
  %287 = getelementptr inbounds i8, ptr %286, i64 16
  %288 = getelementptr inbounds i8, ptr %286, i64 32
  %289 = getelementptr inbounds i8, ptr %286, i64 48
  store <4 x i32> %wide.load, ptr %286, align 4
  store <4 x i32> %wide.load508, ptr %287, align 4
  store <4 x i32> %wide.load509, ptr %288, align 4
  store <4 x i32> %wide.load510, ptr %289, align 4
  %index.next511 = add nuw i64 %index506, 16
  %290 = icmp eq i64 %index.next511, %n.vec502
  br i1 %290, label %middle.block497, label %vector.body505, !llvm.loop !28

middle.block497:                                  ; preds = %vector.body505
  %cmp.n512 = icmp eq i64 %273, %n.vec502
  br i1 %cmp.n512, label %if.end157.i, label %for.body125.i.preheader

for.body125.i.preheader:                          ; preds = %middle.block497, %vector.scevcheck, %for.body125.preheader.i
  %indvars.iv1634.i.ph = phi i64 [ %270, %vector.scevcheck ], [ %270, %for.body125.preheader.i ], [ %ind.end503, %middle.block497 ]
  br label %for.body125.i

for.body125.i:                                    ; preds = %for.body125.i.preheader, %for.body125.i
  %indvars.iv1634.i = phi i64 [ %indvars.iv.next1635.i, %for.body125.i ], [ %indvars.iv1634.i.ph, %for.body125.i.preheader ]
  %arrayidx131.i = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %idxprom108.i.pre-phi, i32 8, i64 %indvars.iv1634.i
  %291 = load i32, ptr %arrayidx131.i, align 4
  %arrayidx133.i = getelementptr inbounds i32, ptr %reps, i64 %indvars.iv1634.i
  store i32 %291, ptr %arrayidx133.i, align 4
  %indvars.iv.next1635.i = add nuw nsw i64 %indvars.iv1634.i, 1
  %292 = and i64 %indvars.iv.next1635.i, 4294967295
  %exitcond1637.not.i = icmp eq i64 %292, 4
  br i1 %exitcond1637.not.i, label %if.end157.i, label %for.body125.i, !llvm.loop !29

if.else137.i:                                     ; preds = %if.end104.i, %if.end104.thread1567.i
  %idxprom145.i.pre-phi = phi i64 [ %idxprom15.i, %if.end104.i ], [ %.pre398, %if.end104.thread1567.i ]
  %state.21573.i = phi i32 [ %cond90.i, %if.end104.i ], [ %cond102.i, %if.end104.thread1567.i ]
  %pos.01572.i = phi i32 [ %256, %if.end104.i ], [ %263, %if.end104.thread1567.i ]
  %sub138.i = add i32 %pos.01572.i, -4
  store i32 %sub138.i, ptr %reps, align 16
  %arrayidx150.i = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %idxprom145.i.pre-phi, i32 8, i64 0
  %293 = load <2 x i32>, ptr %arrayidx150.i, align 4
  store <2 x i32> %293, ptr %arrayidx152.i, align 4
  %arrayidx150.2.i = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %idxprom145.i.pre-phi, i32 8, i64 2
  %294 = load i32, ptr %arrayidx150.2.i, align 4
  store i32 %294, ptr %arrayidx152.2.i, align 4
  br label %if.end157.i

if.end157.i:                                      ; preds = %for.body125.i, %middle.block497, %if.else55.i, %if.else137.i, %for.body.preheader.i, %if.then52.i
  %state.3.i = phi i32 [ %cond54.i, %if.then52.i ], [ %state.21565.i, %for.body.preheader.i ], [ %state.21573.i, %if.else137.i ], [ %spec.select414, %if.else55.i ], [ %state.21565.i, %middle.block497 ], [ %state.21565.i, %for.body125.i ]
  store i32 %state.3.i, ptr %arrayidx.i177, align 4
  %backs172.i = getelementptr inbounds i8, ptr %arrayidx.i177, i64 28
  %295 = load <4 x i32>, ptr %reps, align 16
  store <4 x i32> %295, ptr %backs172.i, align 4
  %price.i182 = getelementptr inbounds i8, ptr %arrayidx.i177, i64 16
  %296 = load i32, ptr %price.i182, align 4
  %297 = load i8, ptr %add.ptr, align 1
  %298 = extractelement <4 x i32> %295, i64 0
  %idx.ext.i183 = zext i32 %298 to i64
  %idx.neg.i184 = sub nsw i64 0, %idx.ext.i183
  %add.ptr.i185 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.neg.i184
  %add.ptr182.i = getelementptr inbounds i8, ptr %add.ptr.i185, i64 -1
  %299 = load i8, ptr %add.ptr182.i, align 1
  %300 = load i32, ptr %pos_mask.i, align 8
  %and.i187 = and i32 %300, %add
  %idxprom183.i = zext i32 %state.3.i to i64
  %idxprom185.i = zext i32 %and.i187 to i64
  %arrayidx186.i = getelementptr inbounds [12 x [16 x i16]], ptr %is_match.i, i64 0, i64 %idxprom183.i, i64 %idxprom185.i
  %301 = load i16, ptr %arrayidx186.i, align 2
  %302 = lshr i16 %301, 4
  %idxprom.i.i189 = zext nneg i16 %302 to i64
  %arrayidx.i.i190 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i.i189
  %303 = load i8, ptr %arrayidx.i.i190, align 1
  %conv1.i.i191 = zext i8 %303 to i32
  %add.i192 = add i32 %296, %conv1.i.i191
  %arrayidx187.i = getelementptr i8, ptr %add.ptr.i172, i64 -2
  %304 = load i8, ptr %arrayidx187.i, align 1
  %conv.i = zext i8 %304 to i32
  %cmp188.i = icmp ugt i32 %state.3.i, 6
  %conv191.i = zext i8 %297 to i32
  %305 = load i32, ptr %literal_pos_mask.i.i, align 8
  %and.i.i195 = and i32 %305, %add
  %306 = load i32, ptr %literal_context_bits.i.i, align 4
  %shl.i.i197 = shl i32 %and.i.i195, %306
  %sub.i.i198 = sub i32 8, %306
  %shr.i.i199 = lshr i32 %conv.i, %sub.i.i198
  %add.i.i200 = add i32 %shr.i.i199, %shl.i.i197
  %idxprom.i1355.i = zext i32 %add.i.i200 to i64
  %arrayidx.i1356.i = getelementptr inbounds [16 x [768 x i16]], ptr %literal.i.i, i64 0, i64 %idxprom.i1355.i
  %add2.i.i201 = or disjoint i32 %conv191.i, 256
  br i1 %cmp188.i, label %do.body.i.preheader.i276, label %do.body.i.i.i202

do.body.i.preheader.i276:                         ; preds = %if.end157.i
  %conv190.i = zext i8 %299 to i32
  br label %do.body.i.i277

do.body.i.i.i202:                                 ; preds = %if.end157.i, %do.body.i.i.i202
  %price.0.i.i.i203 = phi i32 [ %add1.i.i.i215, %do.body.i.i.i202 ], [ 0, %if.end157.i ]
  %symbol.addr.0.i.i.i204 = phi i32 [ %shr.i.i.i206, %do.body.i.i.i202 ], [ %add2.i.i201, %if.end157.i ]
  %and.i.i.i205 = and i32 %symbol.addr.0.i.i.i204, 1
  %shr.i.i.i206 = lshr i32 %symbol.addr.0.i.i.i204, 1
  %idxprom.i.i.i207 = zext nneg i32 %shr.i.i.i206 to i64
  %arrayidx.i.i.i208 = getelementptr inbounds i16, ptr %arrayidx.i1356.i, i64 %idxprom.i.i.i207
  %307 = load i16, ptr %arrayidx.i.i.i208, align 2
  %conv.i.i.i.i209 = zext i16 %307 to i64
  %308 = icmp eq i32 %and.i.i.i205, 0
  %and.i.i.i.i210 = select i1 %308, i64 0, i64 2032
  %xor.i.i.i.i211 = xor i64 %and.i.i.i.i210, %conv.i.i.i.i209
  %shr.i.i.i.i212 = lshr i64 %xor.i.i.i.i211, 4
  %arrayidx.i.i.i.i213 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i.i.i212
  %309 = load i8, ptr %arrayidx.i.i.i.i213, align 1
  %conv1.i.i.i.i214 = zext i8 %309 to i32
  %add1.i.i.i215 = add i32 %price.0.i.i.i203, %conv1.i.i.i.i214
  %cmp.not.i.i.i216 = icmp eq i32 %shr.i.i.i206, 1
  br i1 %cmp.not.i.i.i216, label %get_literal_price.exit.i217, label %do.body.i.i.i202

do.body.i.i277:                                   ; preds = %do.body.i.i277, %do.body.i.preheader.i276
  %offset.0.i.i278 = phi i32 [ %and15.i.i300, %do.body.i.i277 ], [ 256, %do.body.i.preheader.i276 ]
  %price.0.i.i279 = phi i32 [ %add13.i.i297, %do.body.i.i277 ], [ 0, %do.body.i.preheader.i276 ]
  %symbol.addr.0.i.i280 = phi i32 [ %shl14.i.i298, %do.body.i.i277 ], [ %add2.i.i201, %do.body.i.preheader.i276 ]
  %match_byte.addr.0.i.i281 = phi i32 [ %shl3.i.i282, %do.body.i.i277 ], [ %conv190.i, %do.body.i.preheader.i276 ]
  %shl3.i.i282 = shl i32 %match_byte.addr.0.i.i281, 1
  %and4.i.i283 = and i32 %shl3.i.i282, %offset.0.i.i278
  %shr6.i.i284 = lshr i32 %symbol.addr.0.i.i280, 8
  %add5.i.i285 = add nuw nsw i32 %shr6.i.i284, %offset.0.i.i278
  %add7.i.i286 = add nuw nsw i32 %add5.i.i285, %and4.i.i283
  %idxprom10.i.i287 = zext nneg i32 %add7.i.i286 to i64
  %arrayidx11.i.i288 = getelementptr inbounds i16, ptr %arrayidx.i1356.i, i64 %idxprom10.i.i287
  %310 = load i16, ptr %arrayidx11.i.i288, align 2
  %conv.i.i.i289 = zext i16 %310 to i64
  %.mask.i.i290 = and i32 %symbol.addr.0.i.i280, 128
  %isneg.not.i.i291 = icmp eq i32 %.mask.i.i290, 0
  %and.i31.i.i292 = select i1 %isneg.not.i.i291, i64 0, i64 2032
  %xor.i.i.i293 = xor i64 %and.i31.i.i292, %conv.i.i.i289
  %shr.i32.i.i294 = lshr i64 %xor.i.i.i293, 4
  %arrayidx.i34.i.i295 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i32.i.i294
  %311 = load i8, ptr %arrayidx.i34.i.i295, align 1
  %conv1.i.i.i296 = zext i8 %311 to i32
  %add13.i.i297 = add i32 %price.0.i.i279, %conv1.i.i.i296
  %shl14.i.i298 = shl nuw nsw i32 %symbol.addr.0.i.i280, 1
  %312 = xor i32 %shl14.i.i298, %shl3.i.i282
  %not.i.i299 = xor i32 %312, -1
  %and15.i.i300 = and i32 %offset.0.i.i278, %not.i.i299
  %cmp.i.i301 = icmp ult i32 %symbol.addr.0.i.i280, 32768
  br i1 %cmp.i.i301, label %do.body.i.i277, label %get_literal_price.exit.i217

get_literal_price.exit.i217:                      ; preds = %do.body.i.i.i202, %do.body.i.i277
  %price.1.i.i218 = phi i32 [ %add13.i.i297, %do.body.i.i277 ], [ %add1.i.i.i215, %do.body.i.i.i202 ]
  %add193.i = add i32 %add.i192, %price.1.i.i218
  %indvars.iv.next394 = add nuw nsw i64 %indvars.iv393, 1
  %indvars396 = trunc i64 %indvars.iv.next394 to i32
  %arrayidx197.i = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv.next394
  %price198.i = getelementptr inbounds i8, ptr %arrayidx197.i, i64 16
  %313 = load i32, ptr %price198.i, align 4
  %cmp199.i = icmp ult i32 %add193.i, %313
  br i1 %cmp199.i, label %if.then201.i, label %if.end216.i

if.then201.i:                                     ; preds = %get_literal_price.exit.i217
  store i32 %add193.i, ptr %price198.i, align 4
  %pos_prev211.i = getelementptr inbounds i8, ptr %arrayidx197.i, i64 20
  store i32 %249, ptr %pos_prev211.i, align 4
  %back_prev.i.i273 = getelementptr inbounds i8, ptr %arrayidx197.i, i64 24
  store i32 -1, ptr %back_prev.i.i273, align 4
  %prev_1_is_literal.i.i274 = getelementptr inbounds i8, ptr %arrayidx197.i, i64 4
  store i8 0, ptr %prev_1_is_literal.i.i274, align 4
  %.pre.i275 = load i16, ptr %arrayidx186.i, align 2
  %.pre1693.i = lshr i16 %.pre.i275, 4
  br label %if.end216.i

if.end216.i:                                      ; preds = %if.then201.i, %get_literal_price.exit.i217
  %.pre-phi.i = phi i16 [ %.pre1693.i, %if.then201.i ], [ %302, %get_literal_price.exit.i217 ]
  %314 = phi i32 [ %add193.i, %if.then201.i ], [ %313, %get_literal_price.exit.i217 ]
  %315 = xor i16 %.pre-phi.i, 127
  %idxprom.i1357.i = zext nneg i16 %315 to i64
  %arrayidx.i1358.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i1357.i
  %316 = load i8, ptr %arrayidx.i1358.i, align 1
  %conv1.i1359.i = zext i8 %316 to i32
  %add223.i = add i32 %296, %conv1.i1359.i
  %arrayidx225.i = getelementptr inbounds [12 x i16], ptr %is_rep.i, i64 0, i64 %idxprom183.i
  %317 = load i16, ptr %arrayidx225.i, align 2
  %318 = lshr i16 %317, 4
  %319 = xor i16 %318, 127
  %idxprom.i1360.i = zext nneg i16 %319 to i64
  %arrayidx.i1361.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i1360.i
  %320 = load i8, ptr %arrayidx.i1361.i, align 1
  %conv1.i1362.i = zext i8 %320 to i32
  %add227.i = add i32 %add223.i, %conv1.i1362.i
  %cmp230.i = icmp eq i8 %299, %297
  br i1 %cmp230.i, label %land.lhs.true232.i, label %if.end274.i

land.lhs.true232.i:                               ; preds = %if.end216.i
  %pos_prev237.i = getelementptr inbounds i8, ptr %arrayidx197.i, i64 20
  %321 = load i32, ptr %pos_prev237.i, align 4
  %322 = zext i32 %321 to i64
  %cmp238.i = icmp ugt i64 %indvars.iv393, %322
  br i1 %cmp238.i, label %land.lhs.true240.i, label %if.then248.i

land.lhs.true240.i:                               ; preds = %land.lhs.true232.i
  %back_prev245.i = getelementptr inbounds i8, ptr %arrayidx197.i, i64 24
  %323 = load i32, ptr %back_prev245.i, align 4
  %cmp246.i = icmp eq i32 %323, 0
  br i1 %cmp246.i, label %if.end274.i, label %if.then248.i

if.then248.i:                                     ; preds = %land.lhs.true240.i, %land.lhs.true232.i
  %arrayidx.i1364.i = getelementptr inbounds [12 x i16], ptr %is_rep0.i517.i, i64 0, i64 %idxprom183.i
  %324 = load i16, ptr %arrayidx.i1364.i, align 2
  %325 = lshr i16 %324, 4
  %idxprom.i.i1365.i = zext nneg i16 %325 to i64
  %arrayidx.i.i1366.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i.i1365.i
  %326 = load i8, ptr %arrayidx.i.i1366.i, align 1
  %conv1.i.i1367.i = zext i8 %326 to i32
  %arrayidx4.i.i268 = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long.i.i267, i64 0, i64 %idxprom183.i, i64 %idxprom185.i
  %327 = load i16, ptr %arrayidx4.i.i268, align 2
  %328 = lshr i16 %327, 4
  %idxprom.i8.i.i269 = zext nneg i16 %328 to i64
  %arrayidx.i9.i.i270 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i8.i.i269
  %329 = load i8, ptr %arrayidx.i9.i.i270, align 1
  %conv1.i10.i.i271 = zext i8 %329 to i32
  %add.i1368.i = add i32 %add227.i, %conv1.i.i1367.i
  %add250.i272 = add i32 %add.i1368.i, %conv1.i10.i.i271
  %cmp256.not.i = icmp ugt i32 %add250.i272, %314
  br i1 %cmp256.not.i, label %if.end274.i, label %if.then258.i

if.then258.i:                                     ; preds = %if.then248.i
  store i32 %add250.i272, ptr %price198.i, align 4
  store i32 %249, ptr %pos_prev237.i, align 4
  %back_prev.i1369.i = getelementptr inbounds i8, ptr %arrayidx197.i, i64 24
  store i32 0, ptr %back_prev.i1369.i, align 4
  %prev_1_is_literal.i1370.i = getelementptr inbounds i8, ptr %arrayidx197.i, i64 4
  store i8 0, ptr %prev_1_is_literal.i1370.i, align 4
  br label %if.end274.i

if.end274.i:                                      ; preds = %if.then258.i, %if.then248.i, %land.lhs.true240.i, %if.end216.i
  %next_is_literal.2.i = phi i1 [ %cmp199.i, %land.lhs.true240.i ], [ %cmp199.i, %if.end216.i ], [ true, %if.then258.i ], [ %cmp199.i, %if.then248.i ]
  %cmp275.i = icmp ult i32 %spec.select, 2
  br i1 %cmp275.i, label %helper2.exit, label %if.end278.i

if.end278.i:                                      ; preds = %if.end274.i
  %cond284.i = call i32 @llvm.umin.i32(i32 %spec.select, i32 %248)
  %or.cond.i = or i1 %cmp230.i, %next_is_literal.2.i
  br i1 %or.cond.i, label %if.end393.i, label %if.then291.i

if.then291.i:                                     ; preds = %if.end278.i
  %add297.i = add i32 %248, 1
  %cond304.i = call i32 @llvm.umin.i32(i32 %add297.i, i32 %spec.select)
  %cmp3051589.i = icmp ugt i32 %cond304.i, 1
  br i1 %cmp3051589.i, label %land.rhs.preheader.i261, label %if.end393.i

land.rhs.preheader.i261:                          ; preds = %if.then291.i
  %wide.trip.count1645.i = zext i32 %cond304.i to i64
  br label %land.rhs.i262

land.rhs.i262:                                    ; preds = %while.body.i, %land.rhs.preheader.i261
  %indvars.iv1642.i = phi i64 [ 1, %land.rhs.preheader.i261 ], [ %indvars.iv.next1643.i, %while.body.i ]
  %arrayidx308.i = getelementptr inbounds i8, ptr %add.ptr, i64 %indvars.iv1642.i
  %330 = load i8, ptr %arrayidx308.i, align 1
  %arrayidx311.i = getelementptr inbounds i8, ptr %add.ptr182.i, i64 %indvars.iv1642.i
  %331 = load i8, ptr %arrayidx311.i, align 1
  %cmp313.i = icmp eq i8 %330, %331
  br i1 %cmp313.i, label %while.body.i, label %while.end.split.loop.exit.i

while.body.i:                                     ; preds = %land.rhs.i262
  %indvars.iv.next1643.i = add nuw nsw i64 %indvars.iv1642.i, 1
  %exitcond1646.not.i = icmp eq i64 %indvars.iv.next1643.i, %wide.trip.count1645.i
  br i1 %exitcond1646.not.i, label %while.end.i, label %land.rhs.i262

while.end.split.loop.exit.i:                      ; preds = %land.rhs.i262
  %332 = trunc nuw i64 %indvars.iv1642.i to i32
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i, %while.end.split.loop.exit.i
  %len_test.0.lcssa.i = phi i32 [ %332, %while.end.split.loop.exit.i ], [ %cond304.i, %while.body.i ]
  %333 = add i32 %len_test.0.lcssa.i, -3
  %cmp317.i = icmp ult i32 %333, -2
  br i1 %cmp317.i, label %if.then319.i, label %if.end393.i

if.then319.i:                                     ; preds = %while.end.i
  %cmp320.i = icmp ult i32 %state.3.i, 4
  %cmp324.i = icmp ult i32 %state.3.i, 10
  %cond331.v.i = select i1 %cmp324.i, i32 -3, i32 -6
  %cond331.i = add i32 %cond331.v.i, %state.3.i
  %cond333.i = select i1 %cmp320.i, i32 0, i32 %cond331.i
  %add334.i = add i32 %add, 1
  %and336.i = and i32 %300, %add334.i
  %idxprom338.i = zext i32 %cond333.i to i64
  %idxprom340.i = zext i32 %and336.i to i64
  %arrayidx341.i = getelementptr inbounds [12 x [16 x i16]], ptr %is_match.i, i64 0, i64 %idxprom338.i, i64 %idxprom340.i
  %334 = load i16, ptr %arrayidx341.i, align 2
  %335 = lshr i16 %334, 4
  %336 = xor i16 %335, 127
  %idxprom.i1371.i = zext nneg i16 %336 to i64
  %arrayidx.i1372.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i1371.i
  %337 = load i8, ptr %arrayidx.i1372.i, align 1
  %conv1.i1373.i = zext i8 %337 to i32
  %arrayidx346.i = getelementptr inbounds [12 x i16], ptr %is_rep.i, i64 0, i64 %idxprom338.i
  %338 = load i16, ptr %arrayidx346.i, align 2
  %339 = lshr i16 %338, 4
  %340 = xor i16 %339, 127
  %idxprom.i1374.i = zext nneg i16 %340 to i64
  %arrayidx.i1375.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i1374.i
  %341 = load i8, ptr %arrayidx.i1375.i, align 1
  %conv1.i1376.i = zext i8 %341 to i32
  %add350.i = add i32 %len_test.0.lcssa.i, %249
  %cmp3521593.i = icmp ugt i32 %add350.i, %len_end.0353
  br i1 %cmp3521593.i, label %while.body354.preheader.i, label %if.then319.while.end360_crit_edge.i

if.then319.while.end360_crit_edge.i:              ; preds = %if.then319.i
  %.pre1697.i = zext i32 %add350.i to i64
  br label %while.end360.i

while.body354.preheader.i:                        ; preds = %if.then319.i
  %342 = zext i32 %len_end.0353 to i64
  %wide.trip.count1650.i = zext i32 %add350.i to i64
  %343 = sub nsw i64 %wide.trip.count1650.i, %342
  %min.iters.check486 = icmp ult i64 %343, 4
  br i1 %min.iters.check486, label %while.body354.i.preheader, label %vector.ph487

vector.ph487:                                     ; preds = %while.body354.preheader.i
  %n.vec489 = and i64 %343, -4
  %ind.end490 = add nsw i64 %n.vec489, %342
  br label %vector.body492

vector.body492:                                   ; preds = %vector.body492, %vector.ph487
  %index493 = phi i64 [ 0, %vector.ph487 ], [ %index.next495, %vector.body492 ]
  %offset.idx494 = add i64 %index493, %342
  %344 = add nuw nsw i64 %offset.idx494, 1
  %345 = add i64 %offset.idx494, 2
  %346 = add i64 %offset.idx494, 3
  %347 = add i64 %offset.idx494, 4
  %348 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %344, i32 5
  %349 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %345, i32 5
  %350 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %346, i32 5
  %351 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %347, i32 5
  store i32 1073741824, ptr %348, align 4
  store i32 1073741824, ptr %349, align 4
  store i32 1073741824, ptr %350, align 4
  store i32 1073741824, ptr %351, align 4
  %index.next495 = add nuw i64 %index493, 4
  %352 = icmp eq i64 %index.next495, %n.vec489
  br i1 %352, label %middle.block484, label %vector.body492, !llvm.loop !30

middle.block484:                                  ; preds = %vector.body492
  %cmp.n496 = icmp eq i64 %343, %n.vec489
  br i1 %cmp.n496, label %while.end360.i, label %while.body354.i.preheader

while.body354.i.preheader:                        ; preds = %middle.block484, %while.body354.preheader.i
  %indvars.iv1647.i.ph = phi i64 [ %342, %while.body354.preheader.i ], [ %ind.end490, %middle.block484 ]
  %353 = sub nsw i64 %wide.trip.count1650.i, %indvars.iv1647.i.ph
  %xtraiter531 = and i64 %353, 3
  %lcmp.mod532.not = icmp eq i64 %xtraiter531, 0
  br i1 %lcmp.mod532.not, label %while.body354.i.prol.loopexit, label %while.body354.i.prol

while.body354.i.prol:                             ; preds = %while.body354.i.preheader, %while.body354.i.prol
  %indvars.iv1647.i.prol = phi i64 [ %indvars.iv.next1648.i.prol, %while.body354.i.prol ], [ %indvars.iv1647.i.ph, %while.body354.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %while.body354.i.prol ], [ 0, %while.body354.i.preheader ]
  %indvars.iv.next1648.i.prol = add nuw nsw i64 %indvars.iv1647.i.prol, 1
  %price359.i.prol = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv.next1648.i.prol, i32 5
  store i32 1073741824, ptr %price359.i.prol, align 4
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter531
  br i1 %prol.iter.cmp.not, label %while.body354.i.prol.loopexit, label %while.body354.i.prol, !llvm.loop !31

while.body354.i.prol.loopexit:                    ; preds = %while.body354.i.prol, %while.body354.i.preheader
  %indvars.iv1647.i.unr = phi i64 [ %indvars.iv1647.i.ph, %while.body354.i.preheader ], [ %indvars.iv.next1648.i.prol, %while.body354.i.prol ]
  %354 = sub nsw i64 %indvars.iv1647.i.ph, %wide.trip.count1650.i
  %355 = icmp ugt i64 %354, -4
  br i1 %355, label %while.end360.i, label %while.body354.i

while.body354.i:                                  ; preds = %while.body354.i.prol.loopexit, %while.body354.i
  %indvars.iv1647.i = phi i64 [ %indvars.iv.next1648.i.3, %while.body354.i ], [ %indvars.iv1647.i.unr, %while.body354.i.prol.loopexit ]
  %indvars.iv.next1648.i = add nuw nsw i64 %indvars.iv1647.i, 1
  %price359.i = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv.next1648.i, i32 5
  store i32 1073741824, ptr %price359.i, align 4
  %indvars.iv.next1648.i.1 = add nuw nsw i64 %indvars.iv1647.i, 2
  %price359.i.1 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv.next1648.i.1, i32 5
  store i32 1073741824, ptr %price359.i.1, align 4
  %indvars.iv.next1648.i.2 = add nuw nsw i64 %indvars.iv1647.i, 3
  %price359.i.2 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv.next1648.i.2, i32 5
  store i32 1073741824, ptr %price359.i.2, align 4
  %indvars.iv.next1648.i.3 = add nuw nsw i64 %indvars.iv1647.i, 4
  %price359.i.3 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv.next1648.i.3, i32 5
  store i32 1073741824, ptr %price359.i.3, align 4
  %exitcond1651.not.i.3 = icmp eq i64 %indvars.iv.next1648.i.3, %wide.trip.count1650.i
  br i1 %exitcond1651.not.i.3, label %while.end360.i, label %while.body354.i, !llvm.loop !33

while.end360.i:                                   ; preds = %while.body354.i.prol.loopexit, %while.body354.i, %middle.block484, %if.then319.while.end360_crit_edge.i
  %idxprom364.pre-phi.i = phi i64 [ %.pre1697.i, %if.then319.while.end360_crit_edge.i ], [ %wide.trip.count1650.i, %middle.block484 ], [ %wide.trip.count1650.i, %while.body354.i ], [ %wide.trip.count1650.i, %while.body354.i.prol.loopexit ]
  %len_end.addr.0.lcssa.i = phi i32 [ %len_end.0353, %if.then319.while.end360_crit_edge.i ], [ %add350.i, %middle.block484 ], [ %add350.i, %while.body354.i ], [ %add350.i, %while.body354.i.prol.loopexit ]
  %idxprom1.i.i.i264 = zext i32 %333 to i64
  %arrayidx2.i.i.i265 = getelementptr inbounds [16 x [272 x i32]], ptr %prices.i.i, i64 0, i64 %idxprom340.i, i64 %idxprom1.i.i.i264
  %356 = load i32, ptr %arrayidx2.i.i.i265, align 4
  %arrayidx.i.i1378.i = getelementptr inbounds [12 x i16], ptr %is_rep0.i517.i, i64 0, i64 %idxprom338.i
  %357 = load i16, ptr %arrayidx.i.i1378.i, align 2
  %358 = lshr i16 %357, 4
  %idxprom.i.i.i.i = zext nneg i16 %358 to i64
  %arrayidx.i.i.i1379.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i.i.i.i
  %359 = load i8, ptr %arrayidx.i.i.i1379.i, align 1
  %conv1.i.i.i1380.i = zext i8 %359 to i32
  %arrayidx4.i.i.i = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long.i.i267, i64 0, i64 %idxprom338.i, i64 %idxprom340.i
  %360 = load i16, ptr %arrayidx4.i.i.i, align 2
  %361 = lshr i16 %360, 4
  %362 = xor i16 %361, 127
  %idxprom.i43.i.i.i = zext nneg i16 %362 to i64
  %arrayidx.i44.i.i.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i43.i.i.i
  %363 = load i8, ptr %arrayidx.i44.i.i.i, align 1
  %conv1.i45.i.i.i = zext i8 %363 to i32
  %add.i.i.i = add i32 %add193.i, %conv1.i1373.i
  %add.i1381.i = add i32 %add.i.i.i, %conv1.i1376.i
  %add343.i = add i32 %add.i1381.i, %356
  %add348.i = add i32 %add343.i, %conv1.i.i.i1380.i
  %add362.i = add i32 %add348.i, %conv1.i45.i.i.i
  %arrayidx365.i = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %idxprom364.pre-phi.i
  %price366.i = getelementptr inbounds i8, ptr %arrayidx365.i, i64 16
  %364 = load i32, ptr %price366.i, align 4
  %cmp367.i = icmp ult i32 %add362.i, %364
  br i1 %cmp367.i, label %if.then369.i, label %if.end393.i

if.then369.i:                                     ; preds = %while.end360.i
  store i32 %add362.i, ptr %price366.i, align 4
  %pos_prev378.i = getelementptr inbounds i8, ptr %arrayidx365.i, i64 20
  store i32 %indvars396, ptr %pos_prev378.i, align 4
  %back_prev382.i = getelementptr inbounds i8, ptr %arrayidx365.i, i64 24
  store i32 0, ptr %back_prev382.i, align 4
  %prev_1_is_literal386.i = getelementptr inbounds i8, ptr %arrayidx365.i, i64 4
  store i8 1, ptr %prev_1_is_literal386.i, align 4
  %prev_2390.i = getelementptr inbounds i8, ptr %arrayidx365.i, i64 5
  store i8 0, ptr %prev_2390.i, align 1
  br label %if.end393.i

if.end393.i:                                      ; preds = %if.then369.i, %while.end360.i, %while.end.i, %if.then291.i, %if.end278.i
  %len_end.addr.2.i = phi i32 [ %len_end.0353, %if.end278.i ], [ %len_end.0353, %while.end.i ], [ %len_end.addr.0.lcssa.i, %if.then369.i ], [ %len_end.addr.0.lcssa.i, %while.end360.i ], [ %len_end.0353, %if.then291.i ]
  %cmp4221596.i = icmp ugt i32 %cond284.i, 2
  %arrayidx.i1385.i = getelementptr inbounds [12 x i16], ptr %is_rep0.i517.i, i64 0, i64 %idxprom183.i
  %arrayidx13.i.i221 = getelementptr inbounds [12 x i16], ptr %is_rep1.i.i, i64 0, i64 %idxprom183.i
  %arrayidx23.i.i223 = getelementptr inbounds [12 x i16], ptr %is_rep2.i.i, i64 0, i64 %idxprom183.i
  %arrayidx4.i1397.i = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long.i.i267, i64 0, i64 %idxprom183.i, i64 %idxprom185.i
  %cond527.i = select i1 %cmp188.i, i64 11, i64 8
  %wide.trip.count1655.i = zext i32 %cond284.i to i64
  br label %for.body398.i

for.cond.cleanup397.i:                            ; preds = %cleanup.i225
  %cmp646.i = icmp ugt i32 %call29, %cond284.i
  br i1 %cmp646.i, label %while.cond649.i, label %if.end662.i

for.body398.i:                                    ; preds = %cleanup.i225, %if.end393.i
  %indvars.iv1672.i = phi i64 [ 0, %if.end393.i ], [ %indvars.iv.next1673.i, %cleanup.i225 ]
  %len_end.addr.31614.i = phi i32 [ %len_end.addr.2.i, %if.end393.i ], [ %len_end.addr.7.i, %cleanup.i225 ]
  %start_len.01613.i = phi i32 [ 2, %if.end393.i ], [ %start_len.2.i, %cleanup.i225 ]
  %arrayidx401.i = getelementptr inbounds i32, ptr %reps, i64 %indvars.iv1672.i
  %365 = load i32, ptr %arrayidx401.i, align 4
  %idx.ext402.i = zext i32 %365 to i64
  %idx.neg403.i = sub nsw i64 0, %idx.ext402.i
  %add.ptr404.i = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.neg403.i
  %add.ptr405.i = getelementptr inbounds i8, ptr %add.ptr404.i, i64 -1
  %366 = load i8, ptr %add.ptr, align 1
  %367 = load i8, ptr %add.ptr405.i, align 1
  %cmp410.not.i = icmp eq i8 %366, %367
  br i1 %cmp410.not.i, label %lor.lhs.false.i252, label %cleanup.i225

lor.lhs.false.i252:                               ; preds = %for.body398.i
  %368 = load i8, ptr %add.ptr.i172, align 1
  %369 = load i8, ptr %add.ptr404.i, align 1
  %cmp416.not.i = icmp eq i8 %368, %369
  br i1 %cmp416.not.i, label %for.cond421.preheader.i, label %cleanup.i225

for.cond421.preheader.i:                          ; preds = %lor.lhs.false.i252
  br i1 %cmp4221596.i, label %land.rhs424.i, label %for.end437.i

land.rhs424.i:                                    ; preds = %for.cond421.preheader.i, %for.inc435.i
  %indvars.iv1652.i = phi i64 [ %indvars.iv.next1653.i, %for.inc435.i ], [ 2, %for.cond421.preheader.i ]
  %arrayidx426.i = getelementptr inbounds i8, ptr %add.ptr, i64 %indvars.iv1652.i
  %370 = load i8, ptr %arrayidx426.i, align 1
  %arrayidx429.i = getelementptr inbounds i8, ptr %add.ptr405.i, i64 %indvars.iv1652.i
  %371 = load i8, ptr %arrayidx429.i, align 1
  %cmp431.i = icmp eq i8 %370, %371
  br i1 %cmp431.i, label %for.inc435.i, label %for.end437.loopexit.split.loop.exit1716.i

for.inc435.i:                                     ; preds = %land.rhs424.i
  %indvars.iv.next1653.i = add nuw nsw i64 %indvars.iv1652.i, 1
  %exitcond1656.not.i = icmp eq i64 %indvars.iv.next1653.i, %wide.trip.count1655.i
  br i1 %exitcond1656.not.i, label %for.end437.i, label %land.rhs424.i

for.end437.loopexit.split.loop.exit1716.i:        ; preds = %land.rhs424.i
  %372 = trunc nuw i64 %indvars.iv1652.i to i32
  br label %for.end437.i

for.end437.i:                                     ; preds = %for.inc435.i, %for.end437.loopexit.split.loop.exit1716.i, %for.cond421.preheader.i
  %len_test420.0.lcssa.i = phi i32 [ 2, %for.cond421.preheader.i ], [ %372, %for.end437.loopexit.split.loop.exit1716.i ], [ %cond284.i, %for.inc435.i ]
  %add439.i = add i32 %len_test420.0.lcssa.i, %249
  %cmp4401600.i = icmp ult i32 %len_end.addr.31614.i, %add439.i
  br i1 %cmp4401600.i, label %while.body442.preheader.i, label %while.end448.i

while.body442.preheader.i:                        ; preds = %for.end437.i
  %373 = zext i32 %len_end.addr.31614.i to i64
  %wide.trip.count1660.i = zext i32 %add439.i to i64
  %374 = sub nsw i64 %wide.trip.count1660.i, %373
  %min.iters.check473 = icmp ult i64 %374, 4
  br i1 %min.iters.check473, label %while.body442.i.preheader, label %vector.ph474

vector.ph474:                                     ; preds = %while.body442.preheader.i
  %n.vec476 = and i64 %374, -4
  %ind.end477 = add nsw i64 %n.vec476, %373
  br label %vector.body479

vector.body479:                                   ; preds = %vector.body479, %vector.ph474
  %index480 = phi i64 [ 0, %vector.ph474 ], [ %index.next482, %vector.body479 ]
  %offset.idx481 = add i64 %index480, %373
  %375 = add nuw nsw i64 %offset.idx481, 1
  %376 = add i64 %offset.idx481, 2
  %377 = add i64 %offset.idx481, 3
  %378 = add i64 %offset.idx481, 4
  %379 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %375, i32 5
  %380 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %376, i32 5
  %381 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %377, i32 5
  %382 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %378, i32 5
  store i32 1073741824, ptr %379, align 4
  store i32 1073741824, ptr %380, align 4
  store i32 1073741824, ptr %381, align 4
  store i32 1073741824, ptr %382, align 4
  %index.next482 = add nuw i64 %index480, 4
  %383 = icmp eq i64 %index.next482, %n.vec476
  br i1 %383, label %middle.block471, label %vector.body479, !llvm.loop !34

middle.block471:                                  ; preds = %vector.body479
  %cmp.n483 = icmp eq i64 %374, %n.vec476
  br i1 %cmp.n483, label %while.end448.i, label %while.body442.i.preheader

while.body442.i.preheader:                        ; preds = %middle.block471, %while.body442.preheader.i
  %indvars.iv1657.i.ph = phi i64 [ %373, %while.body442.preheader.i ], [ %ind.end477, %middle.block471 ]
  %384 = sub nsw i64 %wide.trip.count1660.i, %indvars.iv1657.i.ph
  %xtraiter533 = and i64 %384, 3
  %lcmp.mod534.not = icmp eq i64 %xtraiter533, 0
  br i1 %lcmp.mod534.not, label %while.body442.i.prol.loopexit, label %while.body442.i.prol

while.body442.i.prol:                             ; preds = %while.body442.i.preheader, %while.body442.i.prol
  %indvars.iv1657.i.prol = phi i64 [ %indvars.iv.next1658.i.prol, %while.body442.i.prol ], [ %indvars.iv1657.i.ph, %while.body442.i.preheader ]
  %prol.iter535 = phi i64 [ %prol.iter535.next, %while.body442.i.prol ], [ 0, %while.body442.i.preheader ]
  %indvars.iv.next1658.i.prol = add nuw nsw i64 %indvars.iv1657.i.prol, 1
  %price447.i.prol = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv.next1658.i.prol, i32 5
  store i32 1073741824, ptr %price447.i.prol, align 4
  %prol.iter535.next = add i64 %prol.iter535, 1
  %prol.iter535.cmp.not = icmp eq i64 %prol.iter535.next, %xtraiter533
  br i1 %prol.iter535.cmp.not, label %while.body442.i.prol.loopexit, label %while.body442.i.prol, !llvm.loop !35

while.body442.i.prol.loopexit:                    ; preds = %while.body442.i.prol, %while.body442.i.preheader
  %indvars.iv1657.i.unr = phi i64 [ %indvars.iv1657.i.ph, %while.body442.i.preheader ], [ %indvars.iv.next1658.i.prol, %while.body442.i.prol ]
  %385 = sub nsw i64 %indvars.iv1657.i.ph, %wide.trip.count1660.i
  %386 = icmp ugt i64 %385, -4
  br i1 %386, label %while.end448.i, label %while.body442.i

while.body442.i:                                  ; preds = %while.body442.i.prol.loopexit, %while.body442.i
  %indvars.iv1657.i = phi i64 [ %indvars.iv.next1658.i.3, %while.body442.i ], [ %indvars.iv1657.i.unr, %while.body442.i.prol.loopexit ]
  %indvars.iv.next1658.i = add nuw nsw i64 %indvars.iv1657.i, 1
  %price447.i = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv.next1658.i, i32 5
  store i32 1073741824, ptr %price447.i, align 4
  %indvars.iv.next1658.i.1 = add nuw nsw i64 %indvars.iv1657.i, 2
  %price447.i.1 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv.next1658.i.1, i32 5
  store i32 1073741824, ptr %price447.i.1, align 4
  %indvars.iv.next1658.i.2 = add nuw nsw i64 %indvars.iv1657.i, 3
  %price447.i.2 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv.next1658.i.2, i32 5
  store i32 1073741824, ptr %price447.i.2, align 4
  %indvars.iv.next1658.i.3 = add nuw nsw i64 %indvars.iv1657.i, 4
  %price447.i.3 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv.next1658.i.3, i32 5
  store i32 1073741824, ptr %price447.i.3, align 4
  %exitcond1661.not.i.3 = icmp eq i64 %indvars.iv.next1658.i.3, %wide.trip.count1660.i
  br i1 %exitcond1661.not.i.3, label %while.end448.i, label %while.body442.i, !llvm.loop !36

while.end448.i:                                   ; preds = %while.body442.i.prol.loopexit, %while.body442.i, %middle.block471, %for.end437.i
  %len_end.addr.4.lcssa.i = phi i32 [ %len_end.addr.31614.i, %for.end437.i ], [ %add439.i, %middle.block471 ], [ %add439.i, %while.body442.i ], [ %add439.i, %while.body442.i.prol.loopexit ]
  %cmp.i1382.i = icmp eq i64 %indvars.iv1672.i, 0
  %387 = load i16, ptr %arrayidx.i1385.i, align 2
  %388 = lshr i16 %387, 4
  br i1 %cmp.i1382.i, label %if.then.i.i257, label %if.else.i.i

if.then.i.i257:                                   ; preds = %while.end448.i
  %idxprom.i.i1392.i = zext nneg i16 %388 to i64
  %arrayidx.i.i1393.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i.i1392.i
  %389 = load i8, ptr %arrayidx.i.i1393.i, align 1
  %conv1.i.i1394.i = zext i8 %389 to i32
  %390 = load i16, ptr %arrayidx4.i1397.i, align 2
  %391 = lshr i16 %390, 4
  %392 = xor i16 %391, 127
  %idxprom.i43.i.i258 = zext nneg i16 %392 to i64
  %arrayidx.i44.i.i259 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i43.i.i258
  %393 = load i8, ptr %arrayidx.i44.i.i259, align 1
  %conv1.i45.i.i260 = zext i8 %393 to i32
  %add.i1398.i = add nuw nsw i32 %conv1.i45.i.i260, %conv1.i.i1394.i
  br label %get_pure_rep_price.exit.i253

if.else.i.i:                                      ; preds = %while.end448.i
  %394 = xor i16 %388, 127
  %idxprom.i46.i.i = zext nneg i16 %394 to i64
  %arrayidx.i47.i.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i46.i.i
  %395 = load i8, ptr %arrayidx.i47.i.i, align 1
  %conv1.i48.i.i = zext i8 %395 to i32
  %cmp10.i.i = icmp eq i64 %indvars.iv1672.i, 1
  %396 = load i16, ptr %arrayidx13.i.i221, align 2
  %397 = lshr i16 %396, 4
  br i1 %cmp10.i.i, label %if.then11.i.i, label %if.else16.i.i

if.then11.i.i:                                    ; preds = %if.else.i.i
  %idxprom.i49.i.i = zext nneg i16 %397 to i64
  %arrayidx.i50.i.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i49.i.i
  %398 = load i8, ptr %arrayidx.i50.i.i, align 1
  %conv1.i51.i.i = zext i8 %398 to i32
  %add15.i.i = add nuw nsw i32 %conv1.i51.i.i, %conv1.i48.i.i
  br label %get_pure_rep_price.exit.i253

if.else16.i.i:                                    ; preds = %if.else.i.i
  %399 = xor i16 %397, 127
  %idxprom.i52.i.i = zext nneg i16 %399 to i64
  %arrayidx.i53.i.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i52.i.i
  %400 = load i8, ptr %arrayidx.i53.i.i, align 1
  %conv1.i54.i.i = zext i8 %400 to i32
  %add21.i.i = add nuw nsw i32 %conv1.i54.i.i, %conv1.i48.i.i
  %401 = load i16, ptr %arrayidx23.i.i223, align 2
  %conv.i.i1386.i = zext i16 %401 to i64
  %402 = sub nsw i64 2, %indvars.iv1672.i
  %and.i.i1388.i = and i64 %402, 2032
  %xor.i.i1389.i = xor i64 %and.i.i1388.i, %conv.i.i1386.i
  %shr.i.i1390.i = lshr i64 %xor.i.i1389.i, 4
  %arrayidx.i56.i.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i1390.i
  %403 = load i8, ptr %arrayidx.i56.i.i, align 1
  %conv1.i57.i.i = zext i8 %403 to i32
  %add25.i.i = add nuw nsw i32 %add21.i.i, %conv1.i57.i.i
  br label %get_pure_rep_price.exit.i253

get_pure_rep_price.exit.i253:                     ; preds = %if.else16.i.i, %if.then11.i.i, %if.then.i.i257
  %price.0.i1391.i = phi i32 [ %add.i1398.i, %if.then.i.i257 ], [ %add15.i.i, %if.then11.i.i ], [ %add25.i.i, %if.else16.i.i ]
  %add451.i = add i32 %price.0.i1391.i, %add227.i
  %404 = trunc nuw nsw i64 %indvars.iv1672.i to i32
  br label %do.body.i254

do.body.i254:                                     ; preds = %if.end483.i, %get_pure_rep_price.exit.i253
  %len_test420.1.i = phi i32 [ %len_test420.0.lcssa.i, %get_pure_rep_price.exit.i253 ], [ %dec484.i, %if.end483.i ]
  %sub.i1400.i = add i32 %len_test420.1.i, -2
  %idxprom1.i.i255 = zext i32 %sub.i1400.i to i64
  %arrayidx2.i.i256 = getelementptr inbounds [16 x [272 x i32]], ptr %prices.i.i, i64 0, i64 %idxprom185.i, i64 %idxprom1.i.i255
  %405 = load i32, ptr %arrayidx2.i.i256, align 4
  %add454.i = add i32 %405, %add451.i
  %add456.i = add i32 %len_test420.1.i, %249
  %idxprom457.i = zext i32 %add456.i to i64
  %arrayidx458.i = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %idxprom457.i
  %price459.i = getelementptr inbounds i8, ptr %arrayidx458.i, i64 16
  %406 = load i32, ptr %price459.i, align 4
  %cmp460.i = icmp ult i32 %add454.i, %406
  br i1 %cmp460.i, label %if.then462.i, label %if.end483.i

if.then462.i:                                     ; preds = %do.body.i254
  store i32 %add454.i, ptr %price459.i, align 4
  %pos_prev472.i = getelementptr inbounds i8, ptr %arrayidx458.i, i64 20
  store i32 %249, ptr %pos_prev472.i, align 4
  %back_prev477.i = getelementptr inbounds i8, ptr %arrayidx458.i, i64 24
  store i32 %404, ptr %back_prev477.i, align 4
  %prev_1_is_literal482.i = getelementptr inbounds i8, ptr %arrayidx458.i, i64 4
  store i8 0, ptr %prev_1_is_literal482.i, align 4
  br label %if.end483.i

if.end483.i:                                      ; preds = %if.then462.i, %do.body.i254
  %dec484.i = add i32 %len_test420.1.i, -1
  %cmp485.i = icmp ugt i32 %dec484.i, 1
  br i1 %cmp485.i, label %do.body.i254, label %do.end.i

do.end.i:                                         ; preds = %if.end483.i
  %add490.i = add i32 %len_test420.0.lcssa.i, 1
  %spec.select.i = select i1 %cmp.i1382.i, i32 %add490.i, i32 %start_len.01613.i
  %add494.i = add i32 %add490.i, %248
  %cond501.i = call i32 @llvm.umin.i32(i32 %add494.i, i32 %spec.select)
  %cmp5031604.i = icmp ult i32 %add490.i, %cond501.i
  br i1 %cmp5031604.i, label %land.rhs505.preheader.i, label %for.end518.i

land.rhs505.preheader.i:                          ; preds = %do.end.i
  %407 = zext i32 %add490.i to i64
  br label %land.rhs505.i

land.rhs505.i:                                    ; preds = %for.inc516.i, %land.rhs505.preheader.i
  %indvars.iv1662.i = phi i64 [ %407, %land.rhs505.preheader.i ], [ %indvars.iv.next1663.i, %for.inc516.i ]
  %arrayidx507.i = getelementptr inbounds i8, ptr %add.ptr, i64 %indvars.iv1662.i
  %408 = load i8, ptr %arrayidx507.i, align 1
  %arrayidx510.i = getelementptr inbounds i8, ptr %add.ptr405.i, i64 %indvars.iv1662.i
  %409 = load i8, ptr %arrayidx510.i, align 1
  %cmp512.i = icmp eq i8 %408, %409
  br i1 %cmp512.i, label %for.inc516.i, label %for.end518.loopexit.split.loop.exit1718.i

for.inc516.i:                                     ; preds = %land.rhs505.i
  %indvars.iv.next1663.i = add nuw nsw i64 %indvars.iv1662.i, 1
  %lftr.wideiv1665.i = trunc i64 %indvars.iv.next1663.i to i32
  %exitcond1666.not.i = icmp eq i32 %cond501.i, %lftr.wideiv1665.i
  br i1 %exitcond1666.not.i, label %for.end518.i, label %land.rhs505.i

for.end518.loopexit.split.loop.exit1718.i:        ; preds = %land.rhs505.i
  %410 = trunc nuw i64 %indvars.iv1662.i to i32
  br label %for.end518.i

for.end518.i:                                     ; preds = %for.inc516.i, %for.end518.loopexit.split.loop.exit1718.i, %do.end.i
  %len_test_2.0.lcssa.i = phi i32 [ %add490.i, %do.end.i ], [ %410, %for.end518.loopexit.split.loop.exit1718.i ], [ %cond501.i, %for.inc516.i ]
  %sub520.i = sub i32 %len_test_2.0.lcssa.i, %add490.i
  %cmp521.i = icmp ugt i32 %sub520.i, 1
  br i1 %cmp521.i, label %if.then523.i, label %cleanup.i225

if.then523.i:                                     ; preds = %for.end518.i
  %add529.i = add i32 %len_test420.0.lcssa.i, %add
  %and531.i = and i32 %add529.i, %300
  %sub.i1403.i = add i32 %len_test420.0.lcssa.i, -2
  %idxprom1.i1404.i = zext i32 %sub.i1403.i to i64
  %arrayidx2.i1405.i = getelementptr inbounds [16 x [272 x i32]], ptr %prices.i.i, i64 0, i64 %idxprom185.i, i64 %idxprom1.i1404.i
  %411 = load i32, ptr %arrayidx2.i1405.i, align 4
  %idxprom538.i = zext i32 %and531.i to i64
  %arrayidx539.i = getelementptr inbounds [12 x [16 x i16]], ptr %is_match.i, i64 0, i64 %cond527.i, i64 %idxprom538.i
  %412 = load i16, ptr %arrayidx539.i, align 2
  %413 = lshr i16 %412, 4
  %idxprom.i1406.i = zext nneg i16 %413 to i64
  %arrayidx.i1407.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i1406.i
  %414 = load i8, ptr %arrayidx.i1407.i, align 1
  %sub543.i = add i32 %len_test420.0.lcssa.i, -1
  %idxprom544.i = zext i32 %sub543.i to i64
  %arrayidx545.i = getelementptr inbounds i8, ptr %add.ptr, i64 %idxprom544.i
  %415 = load i8, ptr %arrayidx545.i, align 1
  %conv546.i = zext i8 %415 to i32
  %idxprom547.i = zext i32 %len_test420.0.lcssa.i to i64
  %arrayidx548.i = getelementptr inbounds i8, ptr %add.ptr405.i, i64 %idxprom547.i
  %416 = load i8, ptr %arrayidx548.i, align 1
  %conv549.i = zext i8 %416 to i32
  %arrayidx551.i = getelementptr inbounds i8, ptr %add.ptr, i64 %idxprom547.i
  %417 = load i8, ptr %arrayidx551.i, align 1
  %conv552.i = zext i8 %417 to i32
  %and.i1411.i = and i32 %add529.i, %305
  %shl.i1413.i = shl i32 %and.i1411.i, %306
  %shr.i1415.i = lshr i32 %conv546.i, %sub.i.i198
  %add.i1416.i = add i32 %shr.i1415.i, %shl.i1413.i
  %idxprom.i1417.i = zext i32 %add.i1416.i to i64
  %arrayidx.i1418.i = getelementptr inbounds [16 x [768 x i16]], ptr %literal.i.i, i64 0, i64 %idxprom.i1417.i
  %add2.i1419.i = or disjoint i32 %conv552.i, 256
  br label %do.body.i1420.i

do.body.i1420.i:                                  ; preds = %do.body.i1420.i, %if.then523.i
  %offset.0.i1421.i = phi i32 [ %and15.i1443.i, %do.body.i1420.i ], [ 256, %if.then523.i ]
  %price.0.i1422.i = phi i32 [ %add13.i1440.i, %do.body.i1420.i ], [ 0, %if.then523.i ]
  %symbol.addr.0.i1423.i = phi i32 [ %shl14.i1441.i, %do.body.i1420.i ], [ %add2.i1419.i, %if.then523.i ]
  %match_byte.addr.0.i1424.i = phi i32 [ %shl3.i1425.i, %do.body.i1420.i ], [ %conv549.i, %if.then523.i ]
  %shl3.i1425.i = shl i32 %match_byte.addr.0.i1424.i, 1
  %and4.i1426.i = and i32 %shl3.i1425.i, %offset.0.i1421.i
  %shr6.i1427.i = lshr i32 %symbol.addr.0.i1423.i, 8
  %add5.i1428.i = add nuw nsw i32 %shr6.i1427.i, %offset.0.i1421.i
  %add7.i1429.i = add nuw nsw i32 %add5.i1428.i, %and4.i1426.i
  %idxprom10.i1430.i = zext nneg i32 %add7.i1429.i to i64
  %arrayidx11.i1431.i = getelementptr inbounds i16, ptr %arrayidx.i1418.i, i64 %idxprom10.i1430.i
  %418 = load i16, ptr %arrayidx11.i1431.i, align 2
  %conv.i.i1432.i = zext i16 %418 to i64
  %.mask.i1433.i = and i32 %symbol.addr.0.i1423.i, 128
  %isneg.not.i1434.i = icmp eq i32 %.mask.i1433.i, 0
  %and.i31.i1435.i = select i1 %isneg.not.i1434.i, i64 0, i64 2032
  %xor.i.i1436.i = xor i64 %and.i31.i1435.i, %conv.i.i1432.i
  %shr.i32.i1437.i = lshr i64 %xor.i.i1436.i, 4
  %arrayidx.i34.i1438.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i32.i1437.i
  %419 = load i8, ptr %arrayidx.i34.i1438.i, align 1
  %conv1.i.i1439.i = zext i8 %419 to i32
  %add13.i1440.i = add i32 %price.0.i1422.i, %conv1.i.i1439.i
  %shl14.i1441.i = shl nuw nsw i32 %symbol.addr.0.i1423.i, 1
  %420 = xor i32 %shl14.i1441.i, %shl3.i1425.i
  %not.i1442.i = xor i32 %420, -1
  %and15.i1443.i = and i32 %offset.0.i1421.i, %not.i1442.i
  %cmp.i1444.i = icmp ult i32 %symbol.addr.0.i1423.i, 32768
  br i1 %cmp.i1444.i, label %do.body.i1420.i, label %get_literal_price.exit1446.i

get_literal_price.exit1446.i:                     ; preds = %do.body.i1420.i
  %conv1.i1408.i = zext i8 %414 to i32
  %add570.i = add i32 %add529.i, 1
  %and572.i = and i32 %add570.i, %300
  %idxprom577.i = zext i32 %and572.i to i64
  %arrayidx578.i = getelementptr inbounds [16 x i16], ptr %arrayidx576.i, i64 0, i64 %idxprom577.i
  %421 = load i16, ptr %arrayidx578.i, align 2
  %422 = lshr i16 %421, 4
  %423 = xor i16 %422, 127
  %idxprom.i1447.i = zext nneg i16 %423 to i64
  %arrayidx.i1448.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i1447.i
  %424 = load i8, ptr %arrayidx.i1448.i, align 1
  %conv1.i1449.i = zext i8 %424 to i32
  %425 = load i16, ptr %arrayidx583.i, align 2
  %426 = lshr i16 %425, 4
  %427 = xor i16 %426, 127
  %idxprom.i1450.i = zext nneg i16 %427 to i64
  %arrayidx.i1451.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i1450.i
  %428 = load i8, ptr %arrayidx.i1451.i, align 1
  %conv1.i1452.i = zext i8 %428 to i32
  %add588.i = add i32 %add439.i, 1
  %add589.i = add i32 %sub520.i, %add588.i
  %cmp5911608.i = icmp ult i32 %len_end.addr.4.lcssa.i, %add589.i
  br i1 %cmp5911608.i, label %while.body593.preheader.i, label %get_literal_price.exit1446.while.end599_crit_edge.i

get_literal_price.exit1446.while.end599_crit_edge.i: ; preds = %get_literal_price.exit1446.i
  %.pre1694.i = zext i32 %add589.i to i64
  br label %while.end599.i

while.body593.preheader.i:                        ; preds = %get_literal_price.exit1446.i
  %429 = zext i32 %len_end.addr.4.lcssa.i to i64
  %wide.trip.count1670.i = zext i32 %add589.i to i64
  %430 = sub nsw i64 %wide.trip.count1670.i, %429
  %min.iters.check460 = icmp ult i64 %430, 4
  br i1 %min.iters.check460, label %while.body593.i.preheader, label %vector.ph461

vector.ph461:                                     ; preds = %while.body593.preheader.i
  %n.vec463 = and i64 %430, -4
  %ind.end464 = add nsw i64 %n.vec463, %429
  br label %vector.body466

vector.body466:                                   ; preds = %vector.body466, %vector.ph461
  %index467 = phi i64 [ 0, %vector.ph461 ], [ %index.next469, %vector.body466 ]
  %offset.idx468 = add i64 %index467, %429
  %431 = add nuw nsw i64 %offset.idx468, 1
  %432 = add i64 %offset.idx468, 2
  %433 = add i64 %offset.idx468, 3
  %434 = add i64 %offset.idx468, 4
  %435 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %431, i32 5
  %436 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %432, i32 5
  %437 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %433, i32 5
  %438 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %434, i32 5
  store i32 1073741824, ptr %435, align 4
  store i32 1073741824, ptr %436, align 4
  store i32 1073741824, ptr %437, align 4
  store i32 1073741824, ptr %438, align 4
  %index.next469 = add nuw i64 %index467, 4
  %439 = icmp eq i64 %index.next469, %n.vec463
  br i1 %439, label %middle.block458, label %vector.body466, !llvm.loop !37

middle.block458:                                  ; preds = %vector.body466
  %cmp.n470 = icmp eq i64 %430, %n.vec463
  br i1 %cmp.n470, label %while.end599.i, label %while.body593.i.preheader

while.body593.i.preheader:                        ; preds = %middle.block458, %while.body593.preheader.i
  %indvars.iv1667.i.ph = phi i64 [ %429, %while.body593.preheader.i ], [ %ind.end464, %middle.block458 ]
  %440 = sub nsw i64 %wide.trip.count1670.i, %indvars.iv1667.i.ph
  %xtraiter536 = and i64 %440, 3
  %lcmp.mod537.not = icmp eq i64 %xtraiter536, 0
  br i1 %lcmp.mod537.not, label %while.body593.i.prol.loopexit, label %while.body593.i.prol

while.body593.i.prol:                             ; preds = %while.body593.i.preheader, %while.body593.i.prol
  %indvars.iv1667.i.prol = phi i64 [ %indvars.iv.next1668.i.prol, %while.body593.i.prol ], [ %indvars.iv1667.i.ph, %while.body593.i.preheader ]
  %prol.iter538 = phi i64 [ %prol.iter538.next, %while.body593.i.prol ], [ 0, %while.body593.i.preheader ]
  %indvars.iv.next1668.i.prol = add nuw nsw i64 %indvars.iv1667.i.prol, 1
  %price598.i.prol = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv.next1668.i.prol, i32 5
  store i32 1073741824, ptr %price598.i.prol, align 4
  %prol.iter538.next = add i64 %prol.iter538, 1
  %prol.iter538.cmp.not = icmp eq i64 %prol.iter538.next, %xtraiter536
  br i1 %prol.iter538.cmp.not, label %while.body593.i.prol.loopexit, label %while.body593.i.prol, !llvm.loop !38

while.body593.i.prol.loopexit:                    ; preds = %while.body593.i.prol, %while.body593.i.preheader
  %indvars.iv1667.i.unr = phi i64 [ %indvars.iv1667.i.ph, %while.body593.i.preheader ], [ %indvars.iv.next1668.i.prol, %while.body593.i.prol ]
  %441 = sub nsw i64 %indvars.iv1667.i.ph, %wide.trip.count1670.i
  %442 = icmp ugt i64 %441, -4
  br i1 %442, label %while.end599.i, label %while.body593.i

while.body593.i:                                  ; preds = %while.body593.i.prol.loopexit, %while.body593.i
  %indvars.iv1667.i = phi i64 [ %indvars.iv.next1668.i.3, %while.body593.i ], [ %indvars.iv1667.i.unr, %while.body593.i.prol.loopexit ]
  %indvars.iv.next1668.i = add nuw nsw i64 %indvars.iv1667.i, 1
  %price598.i = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv.next1668.i, i32 5
  store i32 1073741824, ptr %price598.i, align 4
  %indvars.iv.next1668.i.1 = add nuw nsw i64 %indvars.iv1667.i, 2
  %price598.i.1 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv.next1668.i.1, i32 5
  store i32 1073741824, ptr %price598.i.1, align 4
  %indvars.iv.next1668.i.2 = add nuw nsw i64 %indvars.iv1667.i, 3
  %price598.i.2 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv.next1668.i.2, i32 5
  store i32 1073741824, ptr %price598.i.2, align 4
  %indvars.iv.next1668.i.3 = add nuw nsw i64 %indvars.iv1667.i, 4
  %price598.i.3 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv.next1668.i.3, i32 5
  store i32 1073741824, ptr %price598.i.3, align 4
  %exitcond1671.not.i.3 = icmp eq i64 %indvars.iv.next1668.i.3, %wide.trip.count1670.i
  br i1 %exitcond1671.not.i.3, label %while.end599.i, label %while.body593.i, !llvm.loop !39

while.end599.i:                                   ; preds = %while.body593.i.prol.loopexit, %while.body593.i, %middle.block458, %get_literal_price.exit1446.while.end599_crit_edge.i
  %idxprom604.pre-phi.i = phi i64 [ %.pre1694.i, %get_literal_price.exit1446.while.end599_crit_edge.i ], [ %wide.trip.count1670.i, %middle.block458 ], [ %wide.trip.count1670.i, %while.body593.i ], [ %wide.trip.count1670.i, %while.body593.i.prol.loopexit ]
  %len_end.addr.5.lcssa.i = phi i32 [ %len_end.addr.4.lcssa.i, %get_literal_price.exit1446.while.end599_crit_edge.i ], [ %add589.i, %middle.block458 ], [ %add589.i, %while.body593.i ], [ %add589.i, %while.body593.i.prol.loopexit ]
  %sub.i.i1455.i = add i32 %sub520.i, -2
  %idxprom1.i.i1456.i = zext i32 %sub.i.i1455.i to i64
  %arrayidx2.i.i1457.i = getelementptr inbounds [16 x [272 x i32]], ptr %prices.i.i, i64 0, i64 %idxprom577.i, i64 %idxprom1.i.i1456.i
  %443 = load i32, ptr %arrayidx2.i.i1457.i, align 4
  %444 = load i16, ptr %arrayidx.i.i1459.i, align 2
  %445 = lshr i16 %444, 4
  %idxprom.i.i.i1460.i = zext nneg i16 %445 to i64
  %arrayidx.i.i.i1461.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i.i.i1460.i
  %446 = load i8, ptr %arrayidx.i.i.i1461.i, align 1
  %conv1.i.i.i1462.i = zext i8 %446 to i32
  %arrayidx4.i.i1464.i = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long.i.i267, i64 0, i64 5, i64 %idxprom577.i
  %447 = load i16, ptr %arrayidx4.i.i1464.i, align 2
  %448 = lshr i16 %447, 4
  %449 = xor i16 %448, 127
  %idxprom.i43.i.i1465.i = zext nneg i16 %449 to i64
  %arrayidx.i44.i.i1466.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i43.i.i1465.i
  %450 = load i8, ptr %arrayidx.i44.i.i1466.i, align 1
  %conv1.i45.i.i1467.i = zext i8 %450 to i32
  %add.i.i1468.i = add i32 %411, %add451.i
  %add.i1469.i = add i32 %add.i.i1468.i, %conv1.i1408.i
  %add534.i = add i32 %add.i1469.i, %add13.i1440.i
  %add541.i = add i32 %add534.i, %conv1.i1449.i
  %add554.i = add i32 %add541.i, %conv1.i1452.i
  %add580.i = add i32 %add554.i, %443
  %add585.i = add i32 %add580.i, %conv1.i.i.i1462.i
  %add602.i = add i32 %add585.i, %conv1.i45.i.i1467.i
  %arrayidx605.i = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %idxprom604.pre-phi.i
  %price606.i = getelementptr inbounds i8, ptr %arrayidx605.i, i64 16
  %451 = load i32, ptr %price606.i, align 4
  %cmp607.i = icmp ult i32 %add602.i, %451
  br i1 %cmp607.i, label %if.then609.i, label %cleanup.i225

if.then609.i:                                     ; preds = %while.end599.i
  store i32 %add602.i, ptr %price606.i, align 4
  %pos_prev619.i = getelementptr inbounds i8, ptr %arrayidx605.i, i64 20
  store i32 %add588.i, ptr %pos_prev619.i, align 4
  %back_prev623.i = getelementptr inbounds i8, ptr %arrayidx605.i, i64 24
  store i32 0, ptr %back_prev623.i, align 4
  %prev_1_is_literal627.i = getelementptr inbounds i8, ptr %arrayidx605.i, i64 4
  store i8 1, ptr %prev_1_is_literal627.i, align 4
  %prev_2631.i = getelementptr inbounds i8, ptr %arrayidx605.i, i64 5
  store i8 1, ptr %prev_2631.i, align 1
  %pos_prev_2635.i = getelementptr inbounds i8, ptr %arrayidx605.i, i64 8
  store i32 %249, ptr %pos_prev_2635.i, align 4
  %back_prev_2639.i = getelementptr inbounds i8, ptr %arrayidx605.i, i64 12
  store i32 %404, ptr %back_prev_2639.i, align 4
  br label %cleanup.i225

cleanup.i225:                                     ; preds = %if.then609.i, %while.end599.i, %for.end518.i, %lor.lhs.false.i252, %for.body398.i
  %start_len.2.i = phi i32 [ %start_len.01613.i, %lor.lhs.false.i252 ], [ %start_len.01613.i, %for.body398.i ], [ %spec.select.i, %while.end599.i ], [ %spec.select.i, %if.then609.i ], [ %spec.select.i, %for.end518.i ]
  %len_end.addr.7.i = phi i32 [ %len_end.addr.31614.i, %lor.lhs.false.i252 ], [ %len_end.addr.31614.i, %for.body398.i ], [ %len_end.addr.5.lcssa.i, %while.end599.i ], [ %len_end.addr.5.lcssa.i, %if.then609.i ], [ %len_end.addr.4.lcssa.i, %for.end518.i ]
  %indvars.iv.next1673.i = add nuw nsw i64 %indvars.iv1672.i, 1
  %exitcond1676.not.i = icmp eq i64 %indvars.iv.next1673.i, 4
  br i1 %exitcond1676.not.i, label %for.cond.cleanup397.i, label %for.body398.i

while.cond649.i:                                  ; preds = %for.cond.cleanup397.i, %while.cond649.i
  %matches_count.0.i = phi i32 [ %inc655.i, %while.cond649.i ], [ 0, %for.cond.cleanup397.i ]
  %idxprom650.i = zext i32 %matches_count.0.i to i64
  %arrayidx651.i = getelementptr inbounds [274 x %struct.lzma_match], ptr %matches, i64 0, i64 %idxprom650.i
  %452 = load i32, ptr %arrayidx651.i, align 4
  %cmp652.i = icmp ugt i32 %cond284.i, %452
  %inc655.i = add i32 %matches_count.0.i, 1
  br i1 %cmp652.i, label %while.cond649.i, label %while.end656.i

while.end656.i:                                   ; preds = %while.cond649.i
  %arrayidx651.i.le = getelementptr inbounds [274 x %struct.lzma_match], ptr %matches, i64 0, i64 %idxprom650.i
  store i32 %cond284.i, ptr %arrayidx651.i.le, align 4
  br label %if.end662.i

if.end662.i:                                      ; preds = %while.end656.i, %for.cond.cleanup397.i
  %new_len.0.i = phi i32 [ %cond284.i, %while.end656.i ], [ %call29, %for.cond.cleanup397.i ]
  %matches_count.1.i = phi i32 [ %inc655.i, %while.end656.i ], [ %250, %for.cond.cleanup397.i ]
  %cmp663.not.i = icmp ult i32 %new_len.0.i, %start_len.2.i
  br i1 %cmp663.not.i, label %helper2.exit, label %if.then665.i

if.then665.i:                                     ; preds = %if.end662.i
  %453 = load i16, ptr %arrayidx225.i, align 2
  %454 = lshr i16 %453, 4
  %idxprom.i1470.i = zext nneg i16 %454 to i64
  %arrayidx.i1471.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i1470.i
  %455 = load i8, ptr %arrayidx.i1471.i, align 1
  %conv1.i1472.i = zext i8 %455 to i32
  %add672.i = add i32 %new_len.0.i, %249
  %cmp6731615.i = icmp ult i32 %len_end.addr.7.i, %add672.i
  br i1 %cmp6731615.i, label %while.body675.preheader.i, label %while.cond683.preheader.i

while.body675.preheader.i:                        ; preds = %if.then665.i
  %456 = zext i32 %len_end.addr.7.i to i64
  %wide.trip.count1680.i = zext i32 %add672.i to i64
  %457 = sub nsw i64 %wide.trip.count1680.i, %456
  %min.iters.check447 = icmp ult i64 %457, 4
  br i1 %min.iters.check447, label %while.body675.i.preheader, label %vector.ph448

while.body675.i.preheader:                        ; preds = %middle.block445, %while.body675.preheader.i
  %indvars.iv1677.i.ph = phi i64 [ %456, %while.body675.preheader.i ], [ %ind.end451, %middle.block445 ]
  %458 = sub nsw i64 %wide.trip.count1680.i, %indvars.iv1677.i.ph
  %xtraiter539 = and i64 %458, 3
  %lcmp.mod540.not = icmp eq i64 %xtraiter539, 0
  br i1 %lcmp.mod540.not, label %while.body675.i.prol.loopexit, label %while.body675.i.prol

while.body675.i.prol:                             ; preds = %while.body675.i.preheader, %while.body675.i.prol
  %indvars.iv1677.i.prol = phi i64 [ %indvars.iv.next1678.i.prol, %while.body675.i.prol ], [ %indvars.iv1677.i.ph, %while.body675.i.preheader ]
  %prol.iter541 = phi i64 [ %prol.iter541.next, %while.body675.i.prol ], [ 0, %while.body675.i.preheader ]
  %indvars.iv.next1678.i.prol = add nuw nsw i64 %indvars.iv1677.i.prol, 1
  %price680.i.prol = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv.next1678.i.prol, i32 5
  store i32 1073741824, ptr %price680.i.prol, align 4
  %prol.iter541.next = add i64 %prol.iter541, 1
  %prol.iter541.cmp.not = icmp eq i64 %prol.iter541.next, %xtraiter539
  br i1 %prol.iter541.cmp.not, label %while.body675.i.prol.loopexit, label %while.body675.i.prol, !llvm.loop !40

while.body675.i.prol.loopexit:                    ; preds = %while.body675.i.prol, %while.body675.i.preheader
  %indvars.iv1677.i.unr = phi i64 [ %indvars.iv1677.i.ph, %while.body675.i.preheader ], [ %indvars.iv.next1678.i.prol, %while.body675.i.prol ]
  %459 = sub nsw i64 %indvars.iv1677.i.ph, %wide.trip.count1680.i
  %460 = icmp ugt i64 %459, -4
  br i1 %460, label %while.cond683.preheader.i, label %while.body675.i

vector.ph448:                                     ; preds = %while.body675.preheader.i
  %n.vec450 = and i64 %457, -4
  %ind.end451 = add nsw i64 %n.vec450, %456
  br label %vector.body453

vector.body453:                                   ; preds = %vector.body453, %vector.ph448
  %index454 = phi i64 [ 0, %vector.ph448 ], [ %index.next456, %vector.body453 ]
  %offset.idx455 = add i64 %index454, %456
  %461 = add nuw nsw i64 %offset.idx455, 1
  %462 = add i64 %offset.idx455, 2
  %463 = add i64 %offset.idx455, 3
  %464 = add i64 %offset.idx455, 4
  %465 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %461, i32 5
  %466 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %462, i32 5
  %467 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %463, i32 5
  %468 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %464, i32 5
  store i32 1073741824, ptr %465, align 4
  store i32 1073741824, ptr %466, align 4
  store i32 1073741824, ptr %467, align 4
  store i32 1073741824, ptr %468, align 4
  %index.next456 = add nuw i64 %index454, 4
  %469 = icmp eq i64 %index.next456, %n.vec450
  br i1 %469, label %middle.block445, label %vector.body453, !llvm.loop !41

middle.block445:                                  ; preds = %vector.body453
  %cmp.n457 = icmp eq i64 %457, %n.vec450
  br i1 %cmp.n457, label %while.cond683.preheader.i, label %while.body675.i.preheader

while.cond683.preheader.i:                        ; preds = %while.body675.i.prol.loopexit, %while.body675.i, %middle.block445, %if.then665.i
  %len_end.addr.8.lcssa.i = phi i32 [ %len_end.addr.7.i, %if.then665.i ], [ %add672.i, %middle.block445 ], [ %add672.i, %while.body675.i ], [ %add672.i, %while.body675.i.prol.loopexit ]
  br label %while.cond683.i

while.body675.i:                                  ; preds = %while.body675.i.prol.loopexit, %while.body675.i
  %indvars.iv1677.i = phi i64 [ %indvars.iv.next1678.i.3, %while.body675.i ], [ %indvars.iv1677.i.unr, %while.body675.i.prol.loopexit ]
  %indvars.iv.next1678.i = add nuw nsw i64 %indvars.iv1677.i, 1
  %price680.i = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv.next1678.i, i32 5
  store i32 1073741824, ptr %price680.i, align 4
  %indvars.iv.next1678.i.1 = add nuw nsw i64 %indvars.iv1677.i, 2
  %price680.i.1 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv.next1678.i.1, i32 5
  store i32 1073741824, ptr %price680.i.1, align 4
  %indvars.iv.next1678.i.2 = add nuw nsw i64 %indvars.iv1677.i, 3
  %price680.i.2 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv.next1678.i.2, i32 5
  store i32 1073741824, ptr %price680.i.2, align 4
  %indvars.iv.next1678.i.3 = add nuw nsw i64 %indvars.iv1677.i, 4
  %price680.i.3 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv.next1678.i.3, i32 5
  store i32 1073741824, ptr %price680.i.3, align 4
  %exitcond1681.not.i.3 = icmp eq i64 %indvars.iv.next1678.i.3, %wide.trip.count1680.i
  br i1 %exitcond1681.not.i.3, label %while.cond683.preheader.i, label %while.body675.i, !llvm.loop !42

while.cond683.i:                                  ; preds = %while.cond683.i, %while.cond683.preheader.i
  %i682.0.i = phi i32 [ %inc691.i, %while.cond683.i ], [ 0, %while.cond683.preheader.i ]
  %idxprom685.i = zext i32 %i682.0.i to i64
  %arrayidx686.i = getelementptr inbounds [274 x %struct.lzma_match], ptr %matches, i64 0, i64 %idxprom685.i
  %470 = load i32, ptr %arrayidx686.i, align 4
  %cmp688.i = icmp ugt i32 %start_len.2.i, %470
  %inc691.i = add i32 %i682.0.i, 1
  br i1 %cmp688.i, label %while.cond683.i, label %for.cond694.preheader.i

for.cond694.preheader.i:                          ; preds = %while.cond683.i
  %add11.i.i226 = add i32 %add223.i, %conv1.i1472.i
  %cond779.i = select i1 %cmp188.i, i64 10, i64 7
  br label %for.cond694.i.outer

for.cond694.i.outer:                              ; preds = %if.end890.i, %for.cond694.preheader.i
  %indvars.iv1682.in.i.ph = phi i32 [ %indvars.iv1682.i, %if.end890.i ], [ %start_len.2.i, %for.cond694.preheader.i ]
  %i682.1.i.ph = phi i32 [ %inc891.i, %if.end890.i ], [ %i682.0.i, %for.cond694.preheader.i ]
  %len_test693.0.i.ph = phi i32 [ %add744.i, %if.end890.i ], [ %start_len.2.i, %for.cond694.preheader.i ]
  %len_end.addr.9.i.ph = phi i32 [ %len_end.addr.11.i, %if.end890.i ], [ %len_end.addr.8.lcssa.i, %for.cond694.preheader.i ]
  %idxprom696.i = zext i32 %i682.1.i.ph to i64
  %arrayidx697.i = getelementptr inbounds [274 x %struct.lzma_match], ptr %matches, i64 0, i64 %idxprom696.i
  %dist.i230 = getelementptr inbounds i8, ptr %arrayidx697.i, i64 4
  br label %for.cond694.i

for.cond694.i:                                    ; preds = %for.cond694.i.outer, %if.end730.for.inc906_crit_edge.i
  %indvars.iv1682.in.i = phi i32 [ %indvars.iv1682.i, %if.end730.for.inc906_crit_edge.i ], [ %indvars.iv1682.in.i.ph, %for.cond694.i.outer ]
  %len_test693.0.i = phi i32 [ %.pre1696.i, %if.end730.for.inc906_crit_edge.i ], [ %len_test693.0.i.ph, %for.cond694.i.outer ]
  %indvars.iv1682.i = add i32 %indvars.iv1682.in.i, 1
  %471 = load i32, ptr %dist.i230, align 4
  %cmp.i1473.i = icmp ult i32 %len_test693.0.i, 6
  %sub.i1474.i = add i32 %len_test693.0.i, -2
  %cond.i.i231 = select i1 %cmp.i1473.i, i32 %sub.i1474.i, i32 3
  %cmp1.i.i232 = icmp ult i32 %471, 128
  br i1 %cmp1.i.i232, label %if.then.i1483.i, label %if.else.i1475.i

if.then.i1483.i:                                  ; preds = %for.cond694.i
  %idxprom.i1484.i = zext i32 %cond.i.i231 to i64
  %idxprom2.i.i249 = zext nneg i32 %471 to i64
  %arrayidx3.i.i250 = getelementptr inbounds [4 x [128 x i32]], ptr %distances_prices.i.i229, i64 0, i64 %idxprom.i1484.i, i64 %idxprom2.i.i249
  %472 = load i32, ptr %arrayidx3.i.i250, align 4
  br label %get_pos_len_price.exit.i248

if.else.i1475.i:                                  ; preds = %for.cond694.i
  %cmp.i.i.i233 = icmp ult i32 %471, 524288
  %cmp1.i.i.i234 = icmp sgt i32 %471, -1
  %..i.i.i235 = select i1 %cmp1.i.i.i234, i32 18, i32 30
  %.21.i.i.i236 = select i1 %cmp1.i.i.i234, i64 36, i64 60
  %.sink20.i.i.i237 = select i1 %cmp.i.i.i233, i32 6, i32 %..i.i.i235
  %.sink.i.i.i238 = select i1 %cmp.i.i.i233, i64 12, i64 %.21.i.i.i236
  %shr10.i.i.i239 = lshr i32 %471, %.sink20.i.i.i237
  %idxprom11.i.i.i240 = zext nneg i32 %shr10.i.i.i239 to i64
  %arrayidx12.i.i.i241 = getelementptr inbounds [8192 x i8], ptr @lzma_fastpos, i64 0, i64 %idxprom11.i.i.i240
  %473 = load i8, ptr %arrayidx12.i.i.i241, align 1
  %conv13.i.i.i242 = zext i8 %473 to i64
  %add14.i.i.i243 = add nuw nsw i64 %.sink.i.i.i238, %conv13.i.i.i242
  %idxprom4.i.i244 = zext i32 %cond.i.i231 to i64
  %arrayidx7.i.i245 = getelementptr inbounds [4 x [64 x i32]], ptr %pos_slot_prices.i.i227, i64 0, i64 %idxprom4.i.i244, i64 %add14.i.i.i243
  %474 = load i32, ptr %arrayidx7.i.i245, align 4
  %and.i1476.i = and i32 %471, 15
  %idxprom8.i.i246 = zext nneg i32 %and.i1476.i to i64
  %arrayidx9.i.i247 = getelementptr inbounds [16 x i32], ptr %align_prices.i.i228, i64 0, i64 %idxprom8.i.i246
  %475 = load i32, ptr %arrayidx9.i.i247, align 4
  %add.i1477.i = add i32 %475, %474
  br label %get_pos_len_price.exit.i248

get_pos_len_price.exit.i248:                      ; preds = %if.else.i1475.i, %if.then.i1483.i
  %price.0.i1478.i = phi i32 [ %472, %if.then.i1483.i ], [ %add.i1477.i, %if.else.i1475.i ]
  %idxprom1.i.i1481.i = zext i32 %sub.i1474.i to i64
  %arrayidx2.i.i1482.i = getelementptr inbounds [16 x [272 x i32]], ptr %prices.i.i1479.i, i64 0, i64 %idxprom185.i, i64 %idxprom1.i.i1481.i
  %476 = load i32, ptr %arrayidx2.i.i1482.i, align 4
  %add670.i = add i32 %add11.i.i226, %price.0.i1478.i
  %add700.i = add i32 %add670.i, %476
  %add702.i = add i32 %len_test693.0.i, %249
  %idxprom703.i = zext i32 %add702.i to i64
  %arrayidx704.i = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %idxprom703.i
  %price705.i = getelementptr inbounds i8, ptr %arrayidx704.i, i64 16
  %477 = load i32, ptr %price705.i, align 4
  %cmp706.i = icmp ult i32 %add700.i, %477
  br i1 %cmp706.i, label %if.then708.i, label %if.end730.i

if.then708.i:                                     ; preds = %get_pos_len_price.exit.i248
  store i32 %add700.i, ptr %price705.i, align 4
  %pos_prev718.i = getelementptr inbounds i8, ptr %arrayidx704.i, i64 20
  store i32 %249, ptr %pos_prev718.i, align 4
  %add719.i = add i32 %471, 4
  %back_prev724.i = getelementptr inbounds i8, ptr %arrayidx704.i, i64 24
  store i32 %add719.i, ptr %back_prev724.i, align 4
  %prev_1_is_literal729.i = getelementptr inbounds i8, ptr %arrayidx704.i, i64 4
  store i8 0, ptr %prev_1_is_literal729.i, align 4
  br label %if.end730.i

if.end730.i:                                      ; preds = %if.then708.i, %get_pos_len_price.exit.i248
  %478 = load i32, ptr %arrayidx697.i, align 4
  %cmp735.i = icmp eq i32 %len_test693.0.i, %478
  br i1 %cmp735.i, label %if.then737.i, label %if.end730.for.inc906_crit_edge.i

if.end730.for.inc906_crit_edge.i:                 ; preds = %if.end730.i
  %.pre1696.i = add i32 %len_test693.0.i, 1
  br label %for.cond694.i

if.then737.i:                                     ; preds = %if.end730.i
  %479 = zext i32 %indvars.iv1682.i to i64
  %idx.ext739.i = zext i32 %471 to i64
  %idx.neg740.i = sub nsw i64 0, %idx.ext739.i
  %gep.i = getelementptr i8, ptr %arrayidx187.i, i64 %idx.neg740.i
  %add744.i = add i32 %len_test693.0.i, 1
  %add746.i = add i32 %add744.i, %248
  %cond753.i = call i32 @llvm.umin.i32(i32 %add746.i, i32 %spec.select)
  %cmp7551618.i = icmp ult i32 %add744.i, %cond753.i
  br i1 %cmp7551618.i, label %land.rhs757.preheader.i, label %for.end770.i

land.rhs757.preheader.i:                          ; preds = %if.then737.i
  %480 = zext i32 %cond753.i to i64
  br label %land.rhs757.i

land.rhs757.i:                                    ; preds = %for.inc768.i, %land.rhs757.preheader.i
  %indvars.iv1684.i = phi i64 [ %479, %land.rhs757.preheader.i ], [ %indvars.iv.next1685.i, %for.inc768.i ]
  %arrayidx759.i = getelementptr inbounds i8, ptr %add.ptr, i64 %indvars.iv1684.i
  %481 = load i8, ptr %arrayidx759.i, align 1
  %arrayidx762.i = getelementptr inbounds i8, ptr %gep.i, i64 %indvars.iv1684.i
  %482 = load i8, ptr %arrayidx762.i, align 1
  %cmp764.i = icmp eq i8 %481, %482
  br i1 %cmp764.i, label %for.inc768.i, label %for.end770.loopexit.i

for.inc768.i:                                     ; preds = %land.rhs757.i
  %indvars.iv.next1685.i = add nuw nsw i64 %indvars.iv1684.i, 1
  %cmp755.i = icmp ult i64 %indvars.iv.next1685.i, %480
  br i1 %cmp755.i, label %land.rhs757.i, label %for.end770.loopexit.i

for.end770.loopexit.i:                            ; preds = %for.inc768.i, %land.rhs757.i
  %len_test_2743.0.lcssa.ph.in.i = phi i64 [ %indvars.iv1684.i, %land.rhs757.i ], [ %indvars.iv.next1685.i, %for.inc768.i ]
  %len_test_2743.0.lcssa.ph.i = trunc i64 %len_test_2743.0.lcssa.ph.in.i to i32
  br label %for.end770.i

for.end770.i:                                     ; preds = %for.end770.loopexit.i, %if.then737.i
  %len_test_2743.0.lcssa.i = phi i32 [ %add744.i, %if.then737.i ], [ %len_test_2743.0.lcssa.ph.i, %for.end770.loopexit.i ]
  %sub772.i = sub i32 %len_test_2743.0.lcssa.i, %add744.i
  %cmp773.i = icmp ugt i32 %sub772.i, 1
  br i1 %cmp773.i, label %if.then775.i, label %if.end890.i

if.then775.i:                                     ; preds = %for.end770.i
  %add781.i = add i32 %len_test693.0.i, %add
  %and783.i = and i32 %add781.i, %300
  %idxprom788.i = zext i32 %and783.i to i64
  %arrayidx789.i = getelementptr inbounds [12 x [16 x i16]], ptr %is_match.i, i64 0, i64 %cond779.i, i64 %idxprom788.i
  %483 = load i16, ptr %arrayidx789.i, align 2
  %484 = lshr i16 %483, 4
  %idxprom.i1485.i = zext nneg i16 %484 to i64
  %arrayidx.i1486.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i1485.i
  %485 = load i8, ptr %arrayidx.i1486.i, align 1
  %sub793.i = add i32 %len_test693.0.i, -1
  %idxprom794.i = zext i32 %sub793.i to i64
  %arrayidx795.i = getelementptr inbounds i8, ptr %add.ptr, i64 %idxprom794.i
  %486 = load i8, ptr %arrayidx795.i, align 1
  %conv796.i = zext i8 %486 to i32
  %idxprom797.i = zext i32 %len_test693.0.i to i64
  %arrayidx798.i = getelementptr inbounds i8, ptr %gep.i, i64 %idxprom797.i
  %487 = load i8, ptr %arrayidx798.i, align 1
  %conv799.i = zext i8 %487 to i32
  %arrayidx801.i = getelementptr inbounds i8, ptr %add.ptr, i64 %idxprom797.i
  %488 = load i8, ptr %arrayidx801.i, align 1
  %conv802.i = zext i8 %488 to i32
  %and.i1490.i = and i32 %add781.i, %305
  %489 = load i32, ptr %literal_context_bits.i.i, align 4
  %shl.i1492.i = shl i32 %and.i1490.i, %489
  %sub.i1493.i = sub i32 8, %489
  %shr.i1494.i = lshr i32 %conv796.i, %sub.i1493.i
  %add.i1495.i = add i32 %shr.i1494.i, %shl.i1492.i
  %idxprom.i1496.i = zext i32 %add.i1495.i to i64
  %arrayidx.i1497.i = getelementptr inbounds [16 x [768 x i16]], ptr %literal.i.i, i64 0, i64 %idxprom.i1496.i
  %add2.i1498.i = or disjoint i32 %conv802.i, 256
  br label %do.body.i1499.i

do.body.i1499.i:                                  ; preds = %do.body.i1499.i, %if.then775.i
  %offset.0.i1500.i = phi i32 [ %and15.i1522.i, %do.body.i1499.i ], [ 256, %if.then775.i ]
  %price.0.i1501.i = phi i32 [ %add13.i1519.i, %do.body.i1499.i ], [ 0, %if.then775.i ]
  %symbol.addr.0.i1502.i = phi i32 [ %shl14.i1520.i, %do.body.i1499.i ], [ %add2.i1498.i, %if.then775.i ]
  %match_byte.addr.0.i1503.i = phi i32 [ %shl3.i1504.i, %do.body.i1499.i ], [ %conv799.i, %if.then775.i ]
  %shl3.i1504.i = shl i32 %match_byte.addr.0.i1503.i, 1
  %and4.i1505.i = and i32 %shl3.i1504.i, %offset.0.i1500.i
  %shr6.i1506.i = lshr i32 %symbol.addr.0.i1502.i, 8
  %add5.i1507.i = add nuw nsw i32 %shr6.i1506.i, %offset.0.i1500.i
  %add7.i1508.i = add nuw nsw i32 %add5.i1507.i, %and4.i1505.i
  %idxprom10.i1509.i = zext nneg i32 %add7.i1508.i to i64
  %arrayidx11.i1510.i = getelementptr inbounds i16, ptr %arrayidx.i1497.i, i64 %idxprom10.i1509.i
  %490 = load i16, ptr %arrayidx11.i1510.i, align 2
  %conv.i.i1511.i = zext i16 %490 to i64
  %.mask.i1512.i = and i32 %symbol.addr.0.i1502.i, 128
  %isneg.not.i1513.i = icmp eq i32 %.mask.i1512.i, 0
  %and.i31.i1514.i = select i1 %isneg.not.i1513.i, i64 0, i64 2032
  %xor.i.i1515.i = xor i64 %and.i31.i1514.i, %conv.i.i1511.i
  %shr.i32.i1516.i = lshr i64 %xor.i.i1515.i, 4
  %arrayidx.i34.i1517.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i32.i1516.i
  %491 = load i8, ptr %arrayidx.i34.i1517.i, align 1
  %conv1.i.i1518.i = zext i8 %491 to i32
  %add13.i1519.i = add i32 %price.0.i1501.i, %conv1.i.i1518.i
  %shl14.i1520.i = shl nuw nsw i32 %symbol.addr.0.i1502.i, 1
  %492 = xor i32 %shl14.i1520.i, %shl3.i1504.i
  %not.i1521.i = xor i32 %492, -1
  %and15.i1522.i = and i32 %offset.0.i1500.i, %not.i1521.i
  %cmp.i1523.i = icmp ult i32 %symbol.addr.0.i1502.i, 32768
  br i1 %cmp.i1523.i, label %do.body.i1499.i, label %get_literal_price.exit1525.i

get_literal_price.exit1525.i:                     ; preds = %do.body.i1499.i
  %conv1.i1487.i = zext i8 %485 to i32
  %add819.i = add i32 %and783.i, 1
  %and821.i = and i32 %add819.i, %300
  %idxprom826.i = zext i32 %and821.i to i64
  %arrayidx827.i = getelementptr inbounds [16 x i16], ptr %arrayidx825.i, i64 0, i64 %idxprom826.i
  %493 = load i16, ptr %arrayidx827.i, align 2
  %494 = lshr i16 %493, 4
  %495 = xor i16 %494, 127
  %idxprom.i1526.i = zext nneg i16 %495 to i64
  %arrayidx.i1527.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i1526.i
  %496 = load i8, ptr %arrayidx.i1527.i, align 1
  %conv1.i1528.i = zext i8 %496 to i32
  %497 = load i16, ptr %arrayidx832.i, align 2
  %498 = lshr i16 %497, 4
  %499 = xor i16 %498, 127
  %idxprom.i1529.i = zext nneg i16 %499 to i64
  %arrayidx.i1530.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i1529.i
  %500 = load i8, ptr %arrayidx.i1530.i, align 1
  %conv1.i1531.i = zext i8 %500 to i32
  %add837.i = add i32 %add702.i, 1
  %add838.i = add i32 %sub772.i, %add837.i
  %cmp8401622.i = icmp ult i32 %len_end.addr.9.i.ph, %add838.i
  br i1 %cmp8401622.i, label %while.body842.preheader.i, label %get_literal_price.exit1525.while.end848_crit_edge.i

get_literal_price.exit1525.while.end848_crit_edge.i: ; preds = %get_literal_price.exit1525.i
  %.pre1695.i = zext i32 %add838.i to i64
  br label %while.end848.i

while.body842.preheader.i:                        ; preds = %get_literal_price.exit1525.i
  %501 = zext i32 %len_end.addr.9.i.ph to i64
  %wide.trip.count1691.i = zext i32 %add838.i to i64
  %502 = sub nsw i64 %wide.trip.count1691.i, %501
  %min.iters.check434 = icmp ult i64 %502, 4
  br i1 %min.iters.check434, label %while.body842.i.preheader, label %vector.ph435

vector.ph435:                                     ; preds = %while.body842.preheader.i
  %n.vec437 = and i64 %502, -4
  %ind.end438 = add nsw i64 %n.vec437, %501
  br label %vector.body440

vector.body440:                                   ; preds = %vector.body440, %vector.ph435
  %index441 = phi i64 [ 0, %vector.ph435 ], [ %index.next443, %vector.body440 ]
  %offset.idx442 = add i64 %index441, %501
  %503 = add nuw nsw i64 %offset.idx442, 1
  %504 = add i64 %offset.idx442, 2
  %505 = add i64 %offset.idx442, 3
  %506 = add i64 %offset.idx442, 4
  %507 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %503, i32 5
  %508 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %504, i32 5
  %509 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %505, i32 5
  %510 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %506, i32 5
  store i32 1073741824, ptr %507, align 4
  store i32 1073741824, ptr %508, align 4
  store i32 1073741824, ptr %509, align 4
  store i32 1073741824, ptr %510, align 4
  %index.next443 = add nuw i64 %index441, 4
  %511 = icmp eq i64 %index.next443, %n.vec437
  br i1 %511, label %middle.block432, label %vector.body440, !llvm.loop !43

middle.block432:                                  ; preds = %vector.body440
  %cmp.n444 = icmp eq i64 %502, %n.vec437
  br i1 %cmp.n444, label %while.end848.i, label %while.body842.i.preheader

while.body842.i.preheader:                        ; preds = %middle.block432, %while.body842.preheader.i
  %indvars.iv1687.i.ph = phi i64 [ %501, %while.body842.preheader.i ], [ %ind.end438, %middle.block432 ]
  %512 = sub nsw i64 %wide.trip.count1691.i, %indvars.iv1687.i.ph
  %xtraiter542 = and i64 %512, 3
  %lcmp.mod543.not = icmp eq i64 %xtraiter542, 0
  br i1 %lcmp.mod543.not, label %while.body842.i.prol.loopexit, label %while.body842.i.prol

while.body842.i.prol:                             ; preds = %while.body842.i.preheader, %while.body842.i.prol
  %indvars.iv1687.i.prol = phi i64 [ %indvars.iv.next1688.i.prol, %while.body842.i.prol ], [ %indvars.iv1687.i.ph, %while.body842.i.preheader ]
  %prol.iter544 = phi i64 [ %prol.iter544.next, %while.body842.i.prol ], [ 0, %while.body842.i.preheader ]
  %indvars.iv.next1688.i.prol = add nuw nsw i64 %indvars.iv1687.i.prol, 1
  %price847.i.prol = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv.next1688.i.prol, i32 5
  store i32 1073741824, ptr %price847.i.prol, align 4
  %prol.iter544.next = add i64 %prol.iter544, 1
  %prol.iter544.cmp.not = icmp eq i64 %prol.iter544.next, %xtraiter542
  br i1 %prol.iter544.cmp.not, label %while.body842.i.prol.loopexit, label %while.body842.i.prol, !llvm.loop !44

while.body842.i.prol.loopexit:                    ; preds = %while.body842.i.prol, %while.body842.i.preheader
  %indvars.iv1687.i.unr = phi i64 [ %indvars.iv1687.i.ph, %while.body842.i.preheader ], [ %indvars.iv.next1688.i.prol, %while.body842.i.prol ]
  %513 = sub nsw i64 %indvars.iv1687.i.ph, %wide.trip.count1691.i
  %514 = icmp ugt i64 %513, -4
  br i1 %514, label %while.end848.i, label %while.body842.i

while.body842.i:                                  ; preds = %while.body842.i.prol.loopexit, %while.body842.i
  %indvars.iv1687.i = phi i64 [ %indvars.iv.next1688.i.3, %while.body842.i ], [ %indvars.iv1687.i.unr, %while.body842.i.prol.loopexit ]
  %indvars.iv.next1688.i = add nuw nsw i64 %indvars.iv1687.i, 1
  %price847.i = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv.next1688.i, i32 5
  store i32 1073741824, ptr %price847.i, align 4
  %indvars.iv.next1688.i.1 = add nuw nsw i64 %indvars.iv1687.i, 2
  %price847.i.1 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv.next1688.i.1, i32 5
  store i32 1073741824, ptr %price847.i.1, align 4
  %indvars.iv.next1688.i.2 = add nuw nsw i64 %indvars.iv1687.i, 3
  %price847.i.2 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv.next1688.i.2, i32 5
  store i32 1073741824, ptr %price847.i.2, align 4
  %indvars.iv.next1688.i.3 = add nuw nsw i64 %indvars.iv1687.i, 4
  %price847.i.3 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %indvars.iv.next1688.i.3, i32 5
  store i32 1073741824, ptr %price847.i.3, align 4
  %exitcond1692.not.i.3 = icmp eq i64 %indvars.iv.next1688.i.3, %wide.trip.count1691.i
  br i1 %exitcond1692.not.i.3, label %while.end848.i, label %while.body842.i, !llvm.loop !45

while.end848.i:                                   ; preds = %while.body842.i.prol.loopexit, %while.body842.i, %middle.block432, %get_literal_price.exit1525.while.end848_crit_edge.i
  %idxprom852.pre-phi.i = phi i64 [ %.pre1695.i, %get_literal_price.exit1525.while.end848_crit_edge.i ], [ %wide.trip.count1691.i, %middle.block432 ], [ %wide.trip.count1691.i, %while.body842.i ], [ %wide.trip.count1691.i, %while.body842.i.prol.loopexit ]
  %len_end.addr.10.lcssa.i = phi i32 [ %len_end.addr.9.i.ph, %get_literal_price.exit1525.while.end848_crit_edge.i ], [ %add838.i, %middle.block432 ], [ %add838.i, %while.body842.i ], [ %add838.i, %while.body842.i.prol.loopexit ]
  %sub.i.i1534.i = add i32 %sub772.i, -2
  %idxprom1.i.i1535.i = zext i32 %sub.i.i1534.i to i64
  %arrayidx2.i.i1536.i = getelementptr inbounds [16 x [272 x i32]], ptr %prices.i.i, i64 0, i64 %idxprom826.i, i64 %idxprom1.i.i1535.i
  %515 = load i32, ptr %arrayidx2.i.i1536.i, align 4
  %516 = load i16, ptr %arrayidx.i.i1538.i, align 2
  %517 = lshr i16 %516, 4
  %idxprom.i.i.i1539.i = zext nneg i16 %517 to i64
  %arrayidx.i.i.i1540.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i.i.i1539.i
  %518 = load i8, ptr %arrayidx.i.i.i1540.i, align 1
  %conv1.i.i.i1541.i = zext i8 %518 to i32
  %arrayidx4.i.i1543.i = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long.i.i267, i64 0, i64 4, i64 %idxprom826.i
  %519 = load i16, ptr %arrayidx4.i.i1543.i, align 2
  %520 = lshr i16 %519, 4
  %521 = xor i16 %520, 127
  %idxprom.i43.i.i1544.i = zext nneg i16 %521 to i64
  %arrayidx.i44.i.i1545.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i43.i.i1544.i
  %522 = load i8, ptr %arrayidx.i44.i.i1545.i, align 1
  %conv1.i45.i.i1546.i = zext i8 %522 to i32
  %add.i.i1547.i = add i32 %add700.i, %conv1.i1487.i
  %add.i1548.i = add i32 %add.i.i1547.i, %add13.i1519.i
  %add791.i = add i32 %add.i1548.i, %conv1.i1528.i
  %add804.i = add i32 %add791.i, %conv1.i1531.i
  %add829.i = add i32 %add804.i, %515
  %add834.i = add i32 %add829.i, %conv1.i.i.i1541.i
  %add850.i = add i32 %add834.i, %conv1.i45.i.i1546.i
  %arrayidx853.i = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %idxprom852.pre-phi.i
  %price854.i = getelementptr inbounds i8, ptr %arrayidx853.i, i64 16
  %523 = load i32, ptr %price854.i, align 4
  %cmp855.i = icmp ult i32 %add850.i, %523
  br i1 %cmp855.i, label %if.then857.i, label %if.end890.i

if.then857.i:                                     ; preds = %while.end848.i
  store i32 %add850.i, ptr %price854.i, align 4
  %pos_prev867.i = getelementptr inbounds i8, ptr %arrayidx853.i, i64 20
  store i32 %add837.i, ptr %pos_prev867.i, align 4
  %back_prev871.i = getelementptr inbounds i8, ptr %arrayidx853.i, i64 24
  store i32 0, ptr %back_prev871.i, align 4
  %prev_1_is_literal875.i = getelementptr inbounds i8, ptr %arrayidx853.i, i64 4
  store i8 1, ptr %prev_1_is_literal875.i, align 4
  %prev_2879.i = getelementptr inbounds i8, ptr %arrayidx853.i, i64 5
  store i8 1, ptr %prev_2879.i, align 1
  %pos_prev_2883.i = getelementptr inbounds i8, ptr %arrayidx853.i, i64 8
  store i32 %249, ptr %pos_prev_2883.i, align 4
  %add884.i = add i32 %471, 4
  %back_prev_2888.i = getelementptr inbounds i8, ptr %arrayidx853.i, i64 12
  store i32 %add884.i, ptr %back_prev_2888.i, align 4
  br label %if.end890.i

if.end890.i:                                      ; preds = %if.then857.i, %while.end848.i, %for.end770.i
  %len_end.addr.11.i = phi i32 [ %len_end.addr.9.i.ph, %for.end770.i ], [ %len_end.addr.10.lcssa.i, %if.then857.i ], [ %len_end.addr.10.lcssa.i, %while.end848.i ]
  %inc891.i = add i32 %i682.1.i.ph, 1
  %cmp892.not.i = icmp eq i32 %inc891.i, %matches_count.1.i
  br i1 %cmp892.not.i, label %helper2.exit, label %for.cond694.i.outer

helper2.exit:                                     ; preds = %if.end890.i, %if.end274.i, %if.end662.i
  %retval.0.i = phi i32 [ %len_end.0353, %if.end274.i ], [ %len_end.addr.7.i, %if.end662.i ], [ %len_end.addr.11.i, %if.end890.i ]
  %524 = zext i32 %retval.0.i to i64
  %cmp27 = icmp ult i64 %indvars.iv.next394, %524
  br i1 %cmp27, label %for.body, label %for.end

for.end:                                          ; preds = %helper2.exit, %for.body
  %cur.0.lcssa.ph = phi i32 [ %indvars396, %helper2.exit ], [ %249, %for.body ]
  call void @llvm.experimental.noalias.scope.decl(metadata !46)
  call void @llvm.experimental.noalias.scope.decl(metadata !49)
  store i32 %cur.0.lcssa.ph, ptr %opts_end_index, align 4, !noalias !51
  %idxprom.i312 = zext i32 %cur.0.lcssa.ph to i64
  %arrayidx.i313 = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %idxprom.i312
  %pos_prev.i314 = getelementptr inbounds i8, ptr %arrayidx.i313, i64 20
  %525 = load i32, ptr %pos_prev.i314, align 4, !noalias !51
  %back_prev.i315 = getelementptr inbounds i8, ptr %arrayidx.i313, i64 24
  %526 = load i32, ptr %back_prev.i315, align 4, !noalias !51
  br label %do.body.i316

do.body.i316:                                     ; preds = %if.end40.i, %for.end
  %back_mem.0.i = phi i32 [ %526, %for.end ], [ %531, %if.end40.i ]
  %pos_mem.0.i = phi i32 [ %525, %for.end ], [ %530, %if.end40.i ]
  %cur.addr.0.i = phi i32 [ %cur.0.lcssa.ph, %for.end ], [ %pos_mem.0.i, %if.end40.i ]
  %idxprom5.i = zext i32 %cur.addr.0.i to i64
  %arrayidx6.i = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %idxprom5.i
  %prev_1_is_literal.i317 = getelementptr inbounds i8, ptr %arrayidx6.i, i64 4
  %527 = load i8, ptr %prev_1_is_literal.i317, align 4, !range !26, !noalias !51, !noundef !27
  %loadedv.i318 = trunc nuw i8 %527 to i1
  %idxprom8.i = zext i32 %pos_mem.0.i to i64
  %arrayidx9.i = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %idxprom8.i
  %back_prev.i.i319 = getelementptr inbounds i8, ptr %arrayidx9.i, i64 24
  br i1 %loadedv.i318, label %if.then.i322, label %do.body.if.end40_crit_edge.i

do.body.if.end40_crit_edge.i:                     ; preds = %do.body.i316
  %.pre.i320 = load i32, ptr %back_prev.i.i319, align 4, !noalias !51
  %pos_prev49.phi.trans.insert.i = getelementptr inbounds i8, ptr %arrayidx9.i, i64 20
  %.pre106.i = load i32, ptr %pos_prev49.phi.trans.insert.i, align 4, !noalias !51
  br label %if.end40.i

if.then.i322:                                     ; preds = %do.body.i316
  %prev_1_is_literal.i.i323 = getelementptr inbounds i8, ptr %arrayidx9.i, i64 4
  store i8 0, ptr %prev_1_is_literal.i.i323, align 4, !noalias !51
  %sub.i324 = add i32 %pos_mem.0.i, -1
  %prev_2.i325 = getelementptr inbounds i8, ptr %arrayidx6.i, i64 5
  %528 = load i8, ptr %prev_2.i325, align 1, !range !26, !noalias !51, !noundef !27
  %loadedv17.i = trunc nuw i8 %528 to i1
  br i1 %loadedv17.i, label %if.then18.i, label %if.end40.i

if.then18.i:                                      ; preds = %if.then.i322
  %idxprom21.i = zext i32 %sub.i324 to i64
  %arrayidx22.i = getelementptr inbounds [4096 x %struct.lzma_optimal], ptr %opts.i, i64 0, i64 %idxprom21.i
  %prev_1_is_literal23.i = getelementptr inbounds i8, ptr %arrayidx22.i, i64 4
  store i8 0, ptr %prev_1_is_literal23.i, align 4, !noalias !51
  %pos_prev_2.i326 = getelementptr inbounds i8, ptr %arrayidx6.i, i64 8
  %pos_prev31.i = getelementptr inbounds i8, ptr %arrayidx22.i, i64 20
  %529 = load <2 x i32>, ptr %pos_prev_2.i326, align 4, !noalias !51
  store <2 x i32> %529, ptr %pos_prev31.i, align 4, !noalias !51
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then18.i, %if.then.i322, %do.body.if.end40_crit_edge.i
  %530 = phi i32 [ %.pre106.i, %do.body.if.end40_crit_edge.i ], [ %sub.i324, %if.then.i322 ], [ %sub.i324, %if.then18.i ]
  %531 = phi i32 [ %.pre.i320, %do.body.if.end40_crit_edge.i ], [ -1, %if.then.i322 ], [ -1, %if.then18.i ]
  %pos_prev49.i = getelementptr inbounds i8, ptr %arrayidx9.i, i64 20
  store i32 %back_mem.0.i, ptr %back_prev.i.i319, align 4, !noalias !51
  store i32 %cur.addr.0.i, ptr %pos_prev49.i, align 4, !noalias !51
  %cmp.not.i = icmp eq i32 %pos_mem.0.i, 0
  br i1 %cmp.not.i, label %backward.exit, label %do.body.i316

backward.exit:                                    ; preds = %if.end40.i
  %pos_prev60.i = getelementptr inbounds i8, ptr %pcoder, i64 69368
  %532 = load i32, ptr %pos_prev60.i, align 4, !noalias !51
  store i32 %532, ptr %opts_current_index, align 8, !noalias !51
  store i32 %532, ptr %len_res, align 4, !alias.scope !46, !noalias !49
  %back_prev66.i = getelementptr inbounds i8, ptr %pcoder, i64 69372
  %533 = load i32, ptr %back_prev66.i, align 4, !noalias !51
  store i32 %533, ptr %back_res, align 4, !alias.scope !49, !noalias !46
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %reps) #6
  br label %cleanup45

cleanup45:                                        ; preds = %helper1.exit.thread333, %helper1.exit.thread, %backward.exit, %helper1.exit, %if.then
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare i32 @lzma_mf_find(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"helper1: %mf:thread"}
!7 = distinct !{!7, !"helper1"}
!8 = !{!9, !10}
!9 = distinct !{!9, !7, !"helper1: %back_res:thread"}
!10 = distinct !{!10, !7, !"helper1: %len_res:thread"}
!11 = !{!6, !9, !10}
!12 = !{!13, !14, !15}
!13 = distinct !{!13, !7, !"helper1: %mf"}
!14 = distinct !{!14, !7, !"helper1: %back_res"}
!15 = distinct !{!15, !7, !"helper1: %len_res"}
!16 = !{!13}
!17 = !{!14}
!18 = !{!15}
!19 = !{!14, !15}
!20 = !{!13, !15}
!21 = !{!13, !14}
!22 = distinct !{!22, !23, !24}
!23 = !{!"llvm.loop.isvectorized", i32 1}
!24 = !{!"llvm.loop.unroll.runtime.disable"}
!25 = distinct !{!25, !23}
!26 = !{i8 0, i8 2}
!27 = !{}
!28 = distinct !{!28, !23, !24}
!29 = distinct !{!29, !23}
!30 = distinct !{!30, !23, !24}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.unroll.disable"}
!33 = distinct !{!33, !23}
!34 = distinct !{!34, !23, !24}
!35 = distinct !{!35, !32}
!36 = distinct !{!36, !23}
!37 = distinct !{!37, !23, !24}
!38 = distinct !{!38, !32}
!39 = distinct !{!39, !23}
!40 = distinct !{!40, !32}
!41 = distinct !{!41, !23, !24}
!42 = distinct !{!42, !23}
!43 = distinct !{!43, !23, !24}
!44 = distinct !{!44, !32}
!45 = distinct !{!45, !23}
!46 = !{!47}
!47 = distinct !{!47, !48, !"backward: %len_res"}
!48 = distinct !{!48, !"backward"}
!49 = !{!50}
!50 = distinct !{!50, !48, !"backward: %back_res"}
!51 = !{!47, !50}
