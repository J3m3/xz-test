; ModuleID = 'liblzma/lzma/lzma_encoder.c'
source_filename = "liblzma/lzma/lzma_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_lz_options = type { i64, i64, i64, i64, i64, i32, i32, ptr, i32 }

@lzma_rc_prices = external local_unnamed_addr constant [128 x i8], align 16
@lzma_fastpos = external local_unnamed_addr constant [8192 x i8], align 16

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @lzma_lzma_encode(ptr noundef %pcoder, ptr noalias noundef %mf, ptr noalias nocapture noundef writeonly %out, ptr noalias nocapture noundef %out_pos, i64 noundef %out_size, i32 noundef %limit) local_unnamed_addr #0 {
entry:
  %len = alloca i32, align 4
  %back = alloca i32, align 4
  %is_initialized = getelementptr inbounds i8, ptr %pcoder, i64 2957
  %0 = load i8, ptr %is_initialized, align 1, !range !5, !noundef !6
  %loadedv = trunc nuw i8 %0 to i1
  br i1 %loadedv, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %read_pos.i = getelementptr inbounds i8, ptr %mf, i64 24
  %1 = load i32, ptr %read_pos.i, align 8
  %read_limit.i = getelementptr inbounds i8, ptr %mf, i64 32
  %2 = load i32, ptr %read_limit.i, align 8
  %cmp.i = icmp eq i32 %1, %2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true
  %action.i = getelementptr inbounds i8, ptr %mf, i64 104
  %3 = load i32, ptr %action.i, align 8
  %cmp1.i = icmp eq i32 %3, 0
  br i1 %cmp1.i, label %cleanup40, label %encode_init.exit.thread

if.else.i:                                        ; preds = %land.lhs.true
  %skip.i.i = getelementptr inbounds i8, ptr %mf, i64 56
  %4 = load ptr, ptr %skip.i.i, align 8
  tail call void %4(ptr noundef nonnull %mf, i32 noundef 1) #10
  %read_ahead.i.i = getelementptr inbounds i8, ptr %mf, i64 28
  store i32 0, ptr %read_ahead.i.i, align 4
  %is_match.i = getelementptr inbounds i8, ptr %pcoder, i64 27548
  %symbols.i.i = getelementptr inbounds i8, ptr %pcoder, i64 40
  %count.i.i = getelementptr inbounds i8, ptr %pcoder, i64 24
  %5 = load i64, ptr %count.i.i, align 8
  %arrayidx.i.i = getelementptr inbounds [58 x i32], ptr %symbols.i.i, i64 0, i64 %5
  store i32 0, ptr %arrayidx.i.i, align 4
  %probs.i.i = getelementptr inbounds i8, ptr %pcoder, i64 272
  %6 = load i64, ptr %count.i.i, align 8
  %arrayidx2.i.i = getelementptr inbounds [58 x ptr], ptr %probs.i.i, i64 0, i64 %6
  store ptr %is_match.i, ptr %arrayidx2.i.i, align 8
  %7 = load i64, ptr %count.i.i, align 8
  %inc.i.i = add i64 %7, 1
  store i64 %inc.i.i, ptr %count.i.i, align 8
  %literal.i = getelementptr inbounds i8, ptr %pcoder, i64 2972
  %8 = load ptr, ptr %mf, align 8
  %9 = load i8, ptr %8, align 1
  %conv.i = zext i8 %9 to i32
  %shr.i.i = lshr i32 %conv.i, 7
  %arrayidx.i17.i = getelementptr inbounds i8, ptr %pcoder, i64 2974
  %arrayidx.i.i.i = getelementptr inbounds [58 x i32], ptr %symbols.i.i, i64 0, i64 %inc.i.i
  store i32 %shr.i.i, ptr %arrayidx.i.i.i, align 4
  %10 = load i64, ptr %count.i.i, align 8
  %arrayidx2.i.i.i = getelementptr inbounds [58 x ptr], ptr %probs.i.i, i64 0, i64 %10
  store ptr %arrayidx.i17.i, ptr %arrayidx2.i.i.i, align 8
  %11 = load i64, ptr %count.i.i, align 8
  %inc.i.i.i = add i64 %11, 1
  store i64 %inc.i.i.i, ptr %count.i.i, align 8
  %add.i18.i = or disjoint i32 %shr.i.i, 2
  %shr.i.1.i = lshr i32 %conv.i, 6
  %and.i.1.i = and i32 %shr.i.1.i, 1
  %idxprom.i.1.i = zext nneg i32 %add.i18.i to i64
  %arrayidx.i17.1.i = getelementptr inbounds i16, ptr %literal.i, i64 %idxprom.i.1.i
  %arrayidx.i.i.1.i = getelementptr inbounds [58 x i32], ptr %symbols.i.i, i64 0, i64 %inc.i.i.i
  store i32 %and.i.1.i, ptr %arrayidx.i.i.1.i, align 4
  %12 = load i64, ptr %count.i.i, align 8
  %arrayidx2.i.i.1.i = getelementptr inbounds [58 x ptr], ptr %probs.i.i, i64 0, i64 %12
  store ptr %arrayidx.i17.1.i, ptr %arrayidx2.i.i.1.i, align 8
  %13 = load i64, ptr %count.i.i, align 8
  %inc.i.i.1.i = add i64 %13, 1
  store i64 %inc.i.i.1.i, ptr %count.i.i, align 8
  %shl.i.1.i = shl nuw nsw i32 %add.i18.i, 1
  %add.i18.1.i = or disjoint i32 %shl.i.1.i, %and.i.1.i
  %shr.i.2.i = lshr i32 %conv.i, 5
  %and.i.2.i = and i32 %shr.i.2.i, 1
  %idxprom.i.2.i = zext nneg i32 %add.i18.1.i to i64
  %arrayidx.i17.2.i = getelementptr inbounds i16, ptr %literal.i, i64 %idxprom.i.2.i
  %arrayidx.i.i.2.i = getelementptr inbounds [58 x i32], ptr %symbols.i.i, i64 0, i64 %inc.i.i.1.i
  store i32 %and.i.2.i, ptr %arrayidx.i.i.2.i, align 4
  %14 = load i64, ptr %count.i.i, align 8
  %arrayidx2.i.i.2.i = getelementptr inbounds [58 x ptr], ptr %probs.i.i, i64 0, i64 %14
  store ptr %arrayidx.i17.2.i, ptr %arrayidx2.i.i.2.i, align 8
  %15 = load i64, ptr %count.i.i, align 8
  %inc.i.i.2.i = add i64 %15, 1
  store i64 %inc.i.i.2.i, ptr %count.i.i, align 8
  %shl.i.2.i = shl nuw nsw i32 %add.i18.1.i, 1
  %add.i18.2.i = or disjoint i32 %shl.i.2.i, %and.i.2.i
  %shr.i.3.i = lshr i32 %conv.i, 4
  %and.i.3.i = and i32 %shr.i.3.i, 1
  %idxprom.i.3.i = zext nneg i32 %add.i18.2.i to i64
  %arrayidx.i17.3.i = getelementptr inbounds i16, ptr %literal.i, i64 %idxprom.i.3.i
  %arrayidx.i.i.3.i = getelementptr inbounds [58 x i32], ptr %symbols.i.i, i64 0, i64 %inc.i.i.2.i
  store i32 %and.i.3.i, ptr %arrayidx.i.i.3.i, align 4
  %16 = load i64, ptr %count.i.i, align 8
  %arrayidx2.i.i.3.i = getelementptr inbounds [58 x ptr], ptr %probs.i.i, i64 0, i64 %16
  store ptr %arrayidx.i17.3.i, ptr %arrayidx2.i.i.3.i, align 8
  %17 = load i64, ptr %count.i.i, align 8
  %inc.i.i.3.i = add i64 %17, 1
  store i64 %inc.i.i.3.i, ptr %count.i.i, align 8
  %shl.i.3.i = shl nuw nsw i32 %add.i18.2.i, 1
  %add.i18.3.i = or disjoint i32 %shl.i.3.i, %and.i.3.i
  %shr.i.4.i = lshr i32 %conv.i, 3
  %and.i.4.i = and i32 %shr.i.4.i, 1
  %idxprom.i.4.i = zext nneg i32 %add.i18.3.i to i64
  %arrayidx.i17.4.i = getelementptr inbounds i16, ptr %literal.i, i64 %idxprom.i.4.i
  %arrayidx.i.i.4.i = getelementptr inbounds [58 x i32], ptr %symbols.i.i, i64 0, i64 %inc.i.i.3.i
  store i32 %and.i.4.i, ptr %arrayidx.i.i.4.i, align 4
  %18 = load i64, ptr %count.i.i, align 8
  %arrayidx2.i.i.4.i = getelementptr inbounds [58 x ptr], ptr %probs.i.i, i64 0, i64 %18
  store ptr %arrayidx.i17.4.i, ptr %arrayidx2.i.i.4.i, align 8
  %19 = load i64, ptr %count.i.i, align 8
  %inc.i.i.4.i = add i64 %19, 1
  store i64 %inc.i.i.4.i, ptr %count.i.i, align 8
  %shl.i.4.i = shl nuw nsw i32 %add.i18.3.i, 1
  %add.i18.4.i = or disjoint i32 %shl.i.4.i, %and.i.4.i
  %shr.i.5.i = lshr i32 %conv.i, 2
  %and.i.5.i = and i32 %shr.i.5.i, 1
  %idxprom.i.5.i = zext nneg i32 %add.i18.4.i to i64
  %arrayidx.i17.5.i = getelementptr inbounds i16, ptr %literal.i, i64 %idxprom.i.5.i
  %arrayidx.i.i.5.i = getelementptr inbounds [58 x i32], ptr %symbols.i.i, i64 0, i64 %inc.i.i.4.i
  store i32 %and.i.5.i, ptr %arrayidx.i.i.5.i, align 4
  %20 = load i64, ptr %count.i.i, align 8
  %arrayidx2.i.i.5.i = getelementptr inbounds [58 x ptr], ptr %probs.i.i, i64 0, i64 %20
  store ptr %arrayidx.i17.5.i, ptr %arrayidx2.i.i.5.i, align 8
  %21 = load i64, ptr %count.i.i, align 8
  %inc.i.i.5.i = add i64 %21, 1
  store i64 %inc.i.i.5.i, ptr %count.i.i, align 8
  %shl.i.5.i = shl nuw nsw i32 %add.i18.4.i, 1
  %add.i18.5.i = or disjoint i32 %shl.i.5.i, %and.i.5.i
  %shr.i.6.i = lshr i32 %conv.i, 1
  %and.i.6.i = and i32 %shr.i.6.i, 1
  %idxprom.i.6.i = zext nneg i32 %add.i18.5.i to i64
  %arrayidx.i17.6.i = getelementptr inbounds i16, ptr %literal.i, i64 %idxprom.i.6.i
  %arrayidx.i.i.6.i = getelementptr inbounds [58 x i32], ptr %symbols.i.i, i64 0, i64 %inc.i.i.5.i
  store i32 %and.i.6.i, ptr %arrayidx.i.i.6.i, align 4
  %22 = load i64, ptr %count.i.i, align 8
  %arrayidx2.i.i.6.i = getelementptr inbounds [58 x ptr], ptr %probs.i.i, i64 0, i64 %22
  store ptr %arrayidx.i17.6.i, ptr %arrayidx2.i.i.6.i, align 8
  %23 = load i64, ptr %count.i.i, align 8
  %inc.i.i.6.i = add i64 %23, 1
  store i64 %inc.i.i.6.i, ptr %count.i.i, align 8
  %shl.i.6.i = shl nuw nsw i32 %add.i18.5.i, 1
  %add.i18.6.i = or disjoint i32 %shl.i.6.i, %and.i.6.i
  %and.i.7.i = and i32 %conv.i, 1
  %idxprom.i.7.i = zext nneg i32 %add.i18.6.i to i64
  %arrayidx.i17.7.i = getelementptr inbounds i16, ptr %literal.i, i64 %idxprom.i.7.i
  %arrayidx.i.i.7.i = getelementptr inbounds [58 x i32], ptr %symbols.i.i, i64 0, i64 %inc.i.i.6.i
  store i32 %and.i.7.i, ptr %arrayidx.i.i.7.i, align 4
  %24 = load i64, ptr %count.i.i, align 8
  %arrayidx2.i.i.7.i = getelementptr inbounds [58 x ptr], ptr %probs.i.i, i64 0, i64 %24
  store ptr %arrayidx.i17.7.i, ptr %arrayidx2.i.i.7.i, align 8
  %25 = load i64, ptr %count.i.i, align 8
  %inc.i.i.7.i = add i64 %25, 1
  store i64 %inc.i.i.7.i, ptr %count.i.i, align 8
  br label %encode_init.exit.thread

encode_init.exit.thread:                          ; preds = %if.then.i, %if.else.i
  store i8 1, ptr %is_initialized, align 1
  br label %if.end

if.end:                                           ; preds = %encode_init.exit.thread, %entry
  %26 = getelementptr i8, ptr %mf, i64 24
  %mf.val = load i32, ptr %26, align 8
  %27 = getelementptr i8, ptr %mf, i64 28
  %mf.val73 = load i32, ptr %27, align 4
  %call2108 = tail call fastcc zeroext i1 @rc_encode(ptr noundef nonnull %pcoder, ptr noundef %out, ptr noundef %out_pos, i64 noundef %out_size)
  br i1 %call2108, label %cleanup40, label %if.end4.lr.ph

if.end4.lr.ph:                                    ; preds = %if.end
  %sub.i = sub i32 %mf.val, %mf.val73
  %cmp.not = icmp eq i32 %limit, -1
  %28 = getelementptr i8, ptr %pcoder, i64 8
  %read_limit = getelementptr inbounds i8, ptr %mf, i64 32
  %action = getelementptr inbounds i8, ptr %mf, i64 104
  %fast_mode = getelementptr inbounds i8, ptr %pcoder, i64 2956
  %pos_mask.i = getelementptr inbounds i8, ptr %pcoder, i64 2960
  %is_match.i76 = getelementptr inbounds i8, ptr %pcoder, i64 27548
  %state.i = getelementptr inbounds i8, ptr %pcoder, i64 736
  %symbols.i.i77 = getelementptr inbounds i8, ptr %pcoder, i64 40
  %count.i.i78 = getelementptr inbounds i8, ptr %pcoder, i64 24
  %probs.i.i80 = getelementptr inbounds i8, ptr %pcoder, i64 272
  %is_rep.i = getelementptr inbounds i8, ptr %pcoder, i64 27932
  %reps.i64.i = getelementptr inbounds i8, ptr %pcoder, i64 740
  %is_rep011.i.i = getelementptr inbounds i8, ptr %pcoder, i64 27956
  %is_rep1.i.i = getelementptr inbounds i8, ptr %pcoder, i64 27980
  %is_rep2.i.i = getelementptr inbounds i8, ptr %pcoder, i64 28004
  %arrayidx36.i.i = getelementptr inbounds i8, ptr %pcoder, i64 748
  %arrayidx38.i.i = getelementptr inbounds i8, ptr %pcoder, i64 752
  %arrayidx40.i.i = getelementptr inbounds i8, ptr %pcoder, i64 744
  %is_rep0_long.i.i = getelementptr inbounds i8, ptr %pcoder, i64 28028
  %rep_len_encoder.i.i = getelementptr inbounds i8, ptr %pcoder, i64 47688
  %literal.i.i = getelementptr inbounds i8, ptr %pcoder, i64 2972
  %literal_pos_mask.i.i = getelementptr inbounds i8, ptr %pcoder, i64 2968
  %literal_context_bits.i.i = getelementptr inbounds i8, ptr %pcoder, i64 2964
  br label %if.end4

if.end4:                                          ; preds = %if.end4.lr.ph, %encode_symbol.exit
  %position.0109 = phi i32 [ %sub.i, %if.end4.lr.ph ], [ %add26, %encode_symbol.exit ]
  %.pre = load i32, ptr %26, align 8
  br i1 %cmp.not, label %if.end11, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %if.end4
  %29 = load i32, ptr %27, align 4
  %sub = sub i32 %.pre, %29
  %cmp6.not = icmp ult i32 %sub, %limit
  br i1 %cmp6.not, label %lor.lhs.false, label %while.end

lor.lhs.false:                                    ; preds = %land.lhs.true5
  %30 = load i64, ptr %out_pos, align 8
  %pcoder.val = load i64, ptr %28, align 8
  %sub.i74 = add i64 %30, 4
  %add = add i64 %sub.i74, %pcoder.val
  %cmp9 = icmp ugt i64 %add, 61438
  br i1 %cmp9, label %while.end, label %if.end11

if.end11:                                         ; preds = %lor.lhs.false, %if.end4
  %31 = load i32, ptr %read_limit, align 8
  %cmp13.not = icmp ult i32 %.pre, %31
  br i1 %cmp13.not, label %if.end22, label %if.then14

if.then14:                                        ; preds = %if.end11
  %32 = load i32, ptr %action, align 8
  %cmp15 = icmp eq i32 %32, 0
  br i1 %cmp15, label %cleanup40, label %if.end17

if.end17:                                         ; preds = %if.then14
  %33 = load i32, ptr %27, align 4
  %cmp19 = icmp eq i32 %33, 0
  br i1 %cmp19, label %while.end, label %if.end22

if.end22:                                         ; preds = %if.end17, %if.end11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %back) #10
  %34 = load i8, ptr %fast_mode, align 4, !range !5, !noundef !6
  %loadedv23 = trunc nuw i8 %34 to i1
  br i1 %loadedv23, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.end22
  call void @lzma_lzma_optimum_fast(ptr noundef nonnull %pcoder, ptr noundef nonnull %mf, ptr noundef nonnull %back, ptr noundef nonnull %len) #10
  br label %if.end25

if.else:                                          ; preds = %if.end22
  call void @lzma_lzma_optimum_normal(ptr noundef nonnull %pcoder, ptr noundef nonnull %mf, ptr noundef nonnull %back, ptr noundef nonnull %len, i32 noundef %position.0109) #10
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then24
  %35 = load i32, ptr %back, align 4
  %36 = load i32, ptr %len, align 4
  %37 = load i32, ptr %pos_mask.i, align 8
  %and.i = and i32 %37, %position.0109
  %cmp.i75 = icmp eq i32 %35, -1
  %38 = load i32, ptr %state.i, align 8
  %idxprom.i = zext i32 %38 to i64
  %idxprom1.i = zext i32 %and.i to i64
  %arrayidx2.i = getelementptr inbounds [12 x [16 x i16]], ptr %is_match.i76, i64 0, i64 %idxprom.i, i64 %idxprom1.i
  %39 = load i64, ptr %count.i.i78, align 8
  %arrayidx.i.i79 = getelementptr inbounds [58 x i32], ptr %symbols.i.i77, i64 0, i64 %39
  br i1 %cmp.i75, label %if.then.i85, label %if.else.i81

if.then.i85:                                      ; preds = %if.end25
  store i32 0, ptr %arrayidx.i.i79, align 4
  %40 = load i64, ptr %count.i.i78, align 8
  %arrayidx2.i.i86 = getelementptr inbounds [58 x ptr], ptr %probs.i.i80, i64 0, i64 %40
  store ptr %arrayidx2.i, ptr %arrayidx2.i.i86, align 8
  %41 = load i64, ptr %count.i.i78, align 8
  %inc.i.i87 = add i64 %41, 1
  store i64 %inc.i.i87, ptr %count.i.i78, align 8
  %42 = load ptr, ptr %mf, align 8
  %43 = load i32, ptr %26, align 8
  %44 = load i32, ptr %27, align 4
  %sub.i.i = sub i32 %43, %44
  %idxprom.i.i = zext i32 %sub.i.i to i64
  %arrayidx.i49.i = getelementptr inbounds i8, ptr %42, i64 %idxprom.i.i
  %45 = load i8, ptr %arrayidx.i49.i, align 1
  %46 = load i32, ptr %literal_pos_mask.i.i, align 8
  %and.i.i = and i32 %46, %position.0109
  %47 = load i32, ptr %literal_context_bits.i.i, align 4
  %shl.i.i = shl i32 %and.i.i, %47
  %sub5.i.i = add i32 %sub.i.i, -1
  %idxprom6.i.i = zext i32 %sub5.i.i to i64
  %arrayidx7.i.i = getelementptr inbounds i8, ptr %42, i64 %idxprom6.i.i
  %48 = load i8, ptr %arrayidx7.i.i, align 1
  %conv.i.i = zext i8 %48 to i32
  %sub9.i.i = sub i32 8, %47
  %shr.i.i89 = lshr i32 %conv.i.i, %sub9.i.i
  %add.i.i = add i32 %shr.i.i89, %shl.i.i
  %idxprom10.i.i = zext i32 %add.i.i to i64
  %arrayidx11.i.i = getelementptr inbounds [16 x [768 x i16]], ptr %literal.i.i, i64 0, i64 %idxprom10.i.i
  %49 = load i32, ptr %state.i, align 8
  %cmp.i.i = icmp ult i32 %49, 7
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then.i85
  %conv13.i.i = zext i8 %45 to i32
  %shr.i.i.i = lshr i32 %conv13.i.i, 7
  %arrayidx.i.i.i90 = getelementptr inbounds i8, ptr %arrayidx11.i.i, i64 2
  %arrayidx.i.i.i.i = getelementptr inbounds [58 x i32], ptr %symbols.i.i77, i64 0, i64 %inc.i.i87
  store i32 %shr.i.i.i, ptr %arrayidx.i.i.i.i, align 4
  %50 = load i64, ptr %count.i.i78, align 8
  %arrayidx2.i.i.i.i = getelementptr inbounds [58 x ptr], ptr %probs.i.i80, i64 0, i64 %50
  store ptr %arrayidx.i.i.i90, ptr %arrayidx2.i.i.i.i, align 8
  %51 = load i64, ptr %count.i.i78, align 8
  %inc.i.i.i.i = add i64 %51, 1
  store i64 %inc.i.i.i.i, ptr %count.i.i78, align 8
  %add.i.i.i = or disjoint i32 %shr.i.i.i, 2
  %shr.i.1.i.i = lshr i32 %conv13.i.i, 6
  %and.i.1.i.i = and i32 %shr.i.1.i.i, 1
  %idxprom.i.1.i.i = zext nneg i32 %add.i.i.i to i64
  %arrayidx.i.1.i.i = getelementptr inbounds i16, ptr %arrayidx11.i.i, i64 %idxprom.i.1.i.i
  %arrayidx.i.i.1.i.i = getelementptr inbounds [58 x i32], ptr %symbols.i.i77, i64 0, i64 %inc.i.i.i.i
  store i32 %and.i.1.i.i, ptr %arrayidx.i.i.1.i.i, align 4
  %52 = load i64, ptr %count.i.i78, align 8
  %arrayidx2.i.i.1.i.i = getelementptr inbounds [58 x ptr], ptr %probs.i.i80, i64 0, i64 %52
  store ptr %arrayidx.i.1.i.i, ptr %arrayidx2.i.i.1.i.i, align 8
  %53 = load i64, ptr %count.i.i78, align 8
  %inc.i.i.1.i.i = add i64 %53, 1
  store i64 %inc.i.i.1.i.i, ptr %count.i.i78, align 8
  %shl.i.1.i.i = shl nuw nsw i32 %add.i.i.i, 1
  %add.i.1.i.i = or disjoint i32 %shl.i.1.i.i, %and.i.1.i.i
  %shr.i.2.i.i = lshr i32 %conv13.i.i, 5
  %and.i.2.i.i = and i32 %shr.i.2.i.i, 1
  %idxprom.i.2.i.i = zext nneg i32 %add.i.1.i.i to i64
  %arrayidx.i.2.i.i = getelementptr inbounds i16, ptr %arrayidx11.i.i, i64 %idxprom.i.2.i.i
  %arrayidx.i.i.2.i.i = getelementptr inbounds [58 x i32], ptr %symbols.i.i77, i64 0, i64 %inc.i.i.1.i.i
  store i32 %and.i.2.i.i, ptr %arrayidx.i.i.2.i.i, align 4
  %54 = load i64, ptr %count.i.i78, align 8
  %arrayidx2.i.i.2.i.i = getelementptr inbounds [58 x ptr], ptr %probs.i.i80, i64 0, i64 %54
  store ptr %arrayidx.i.2.i.i, ptr %arrayidx2.i.i.2.i.i, align 8
  %55 = load i64, ptr %count.i.i78, align 8
  %inc.i.i.2.i.i = add i64 %55, 1
  store i64 %inc.i.i.2.i.i, ptr %count.i.i78, align 8
  %shl.i.2.i.i = shl nuw nsw i32 %add.i.1.i.i, 1
  %add.i.2.i.i = or disjoint i32 %shl.i.2.i.i, %and.i.2.i.i
  %shr.i.3.i.i = lshr i32 %conv13.i.i, 4
  %and.i.3.i.i = and i32 %shr.i.3.i.i, 1
  %idxprom.i.3.i.i = zext nneg i32 %add.i.2.i.i to i64
  %arrayidx.i.3.i.i = getelementptr inbounds i16, ptr %arrayidx11.i.i, i64 %idxprom.i.3.i.i
  %arrayidx.i.i.3.i.i = getelementptr inbounds [58 x i32], ptr %symbols.i.i77, i64 0, i64 %inc.i.i.2.i.i
  store i32 %and.i.3.i.i, ptr %arrayidx.i.i.3.i.i, align 4
  %56 = load i64, ptr %count.i.i78, align 8
  %arrayidx2.i.i.3.i.i = getelementptr inbounds [58 x ptr], ptr %probs.i.i80, i64 0, i64 %56
  store ptr %arrayidx.i.3.i.i, ptr %arrayidx2.i.i.3.i.i, align 8
  %57 = load i64, ptr %count.i.i78, align 8
  %inc.i.i.3.i.i = add i64 %57, 1
  store i64 %inc.i.i.3.i.i, ptr %count.i.i78, align 8
  %shl.i.3.i.i = shl nuw nsw i32 %add.i.2.i.i, 1
  %add.i.3.i.i = or disjoint i32 %shl.i.3.i.i, %and.i.3.i.i
  %shr.i.4.i.i = lshr i32 %conv13.i.i, 3
  %and.i.4.i.i = and i32 %shr.i.4.i.i, 1
  %idxprom.i.4.i.i = zext nneg i32 %add.i.3.i.i to i64
  %arrayidx.i.4.i.i = getelementptr inbounds i16, ptr %arrayidx11.i.i, i64 %idxprom.i.4.i.i
  %arrayidx.i.i.4.i.i = getelementptr inbounds [58 x i32], ptr %symbols.i.i77, i64 0, i64 %inc.i.i.3.i.i
  store i32 %and.i.4.i.i, ptr %arrayidx.i.i.4.i.i, align 4
  %58 = load i64, ptr %count.i.i78, align 8
  %arrayidx2.i.i.4.i.i = getelementptr inbounds [58 x ptr], ptr %probs.i.i80, i64 0, i64 %58
  store ptr %arrayidx.i.4.i.i, ptr %arrayidx2.i.i.4.i.i, align 8
  %59 = load i64, ptr %count.i.i78, align 8
  %inc.i.i.4.i.i = add i64 %59, 1
  store i64 %inc.i.i.4.i.i, ptr %count.i.i78, align 8
  %shl.i.4.i.i = shl nuw nsw i32 %add.i.3.i.i, 1
  %add.i.4.i.i = or disjoint i32 %shl.i.4.i.i, %and.i.4.i.i
  %shr.i.5.i.i = lshr i32 %conv13.i.i, 2
  %and.i.5.i.i = and i32 %shr.i.5.i.i, 1
  %idxprom.i.5.i.i = zext nneg i32 %add.i.4.i.i to i64
  %arrayidx.i.5.i.i = getelementptr inbounds i16, ptr %arrayidx11.i.i, i64 %idxprom.i.5.i.i
  %arrayidx.i.i.5.i.i = getelementptr inbounds [58 x i32], ptr %symbols.i.i77, i64 0, i64 %inc.i.i.4.i.i
  store i32 %and.i.5.i.i, ptr %arrayidx.i.i.5.i.i, align 4
  %60 = load i64, ptr %count.i.i78, align 8
  %arrayidx2.i.i.5.i.i = getelementptr inbounds [58 x ptr], ptr %probs.i.i80, i64 0, i64 %60
  store ptr %arrayidx.i.5.i.i, ptr %arrayidx2.i.i.5.i.i, align 8
  %61 = load i64, ptr %count.i.i78, align 8
  %inc.i.i.5.i.i = add i64 %61, 1
  store i64 %inc.i.i.5.i.i, ptr %count.i.i78, align 8
  %shl.i.5.i.i = shl nuw nsw i32 %add.i.4.i.i, 1
  %add.i.5.i.i = or disjoint i32 %shl.i.5.i.i, %and.i.5.i.i
  %shr.i.6.i.i = lshr i32 %conv13.i.i, 1
  %and.i.6.i.i = and i32 %shr.i.6.i.i, 1
  %idxprom.i.6.i.i = zext nneg i32 %add.i.5.i.i to i64
  %arrayidx.i.6.i.i = getelementptr inbounds i16, ptr %arrayidx11.i.i, i64 %idxprom.i.6.i.i
  %arrayidx.i.i.6.i.i = getelementptr inbounds [58 x i32], ptr %symbols.i.i77, i64 0, i64 %inc.i.i.5.i.i
  store i32 %and.i.6.i.i, ptr %arrayidx.i.i.6.i.i, align 4
  %62 = load i64, ptr %count.i.i78, align 8
  %arrayidx2.i.i.6.i.i = getelementptr inbounds [58 x ptr], ptr %probs.i.i80, i64 0, i64 %62
  store ptr %arrayidx.i.6.i.i, ptr %arrayidx2.i.i.6.i.i, align 8
  %63 = load i64, ptr %count.i.i78, align 8
  %inc.i.i.6.i.i = add i64 %63, 1
  store i64 %inc.i.i.6.i.i, ptr %count.i.i78, align 8
  %shl.i.6.i.i = shl nuw nsw i32 %add.i.5.i.i, 1
  %add.i.6.i.i = or disjoint i32 %shl.i.6.i.i, %and.i.6.i.i
  %and.i.7.i.i = and i32 %conv13.i.i, 1
  %idxprom.i.7.i.i = zext nneg i32 %add.i.6.i.i to i64
  %arrayidx.i.7.i.i = getelementptr inbounds i16, ptr %arrayidx11.i.i, i64 %idxprom.i.7.i.i
  %arrayidx.i.i.7.i.i = getelementptr inbounds [58 x i32], ptr %symbols.i.i77, i64 0, i64 %inc.i.i.6.i.i
  store i32 %and.i.7.i.i, ptr %arrayidx.i.i.7.i.i, align 4
  %64 = load i64, ptr %count.i.i78, align 8
  %arrayidx2.i.i.7.i.i = getelementptr inbounds [58 x ptr], ptr %probs.i.i80, i64 0, i64 %64
  store ptr %arrayidx.i.7.i.i, ptr %arrayidx2.i.i.7.i.i, align 8
  %65 = load i64, ptr %count.i.i78, align 8
  %inc.i.i.7.i.i = add i64 %65, 1
  store i64 %inc.i.i.7.i.i, ptr %count.i.i78, align 8
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.then.i85
  %66 = load i32, ptr %reps.i64.i, align 4
  %67 = xor i32 %66, -1
  %sub20.i.i = add i32 %sub.i.i, %67
  %idxprom21.i.i = zext i32 %sub20.i.i to i64
  %arrayidx22.i.i = getelementptr inbounds i8, ptr %42, i64 %idxprom21.i.i
  %68 = load i8, ptr %arrayidx22.i.i, align 1
  %conv24.i.i = zext i8 %68 to i32
  %conv25.i.i = zext i8 %45 to i32
  %add.i63.i.i = or disjoint i32 %conv25.i.i, 256
  br label %do.body.i68.i.i

do.body.i68.i.i:                                  ; preds = %do.body.i68.i.i, %if.else.i.i
  %69 = phi i64 [ %inc.i.i87, %if.else.i.i ], [ %inc.i.i76.i.i, %do.body.i68.i.i ]
  %offset.0.i.i.i = phi i32 [ 256, %if.else.i.i ], [ %and6.i.i.i, %do.body.i68.i.i ]
  %symbol.addr.0.i.i.i = phi i32 [ %add.i63.i.i, %if.else.i.i ], [ %shl5.i.i.i, %do.body.i68.i.i ]
  %match_byte.addr.0.i.i.i = phi i32 [ %conv24.i.i, %if.else.i.i ], [ %shl.i69.i.i, %do.body.i68.i.i ]
  %shl.i69.i.i = shl i32 %match_byte.addr.0.i.i.i, 1
  %and.i70.i.i = and i32 %shl.i69.i.i, %offset.0.i.i.i
  %shr.i71.i.i = lshr i32 %symbol.addr.0.i.i.i, 8
  %add1.i.i.i = add nuw nsw i32 %shr.i71.i.i, %offset.0.i.i.i
  %add2.i.i.i = add nuw nsw i32 %add1.i.i.i, %and.i70.i.i
  %shr3.i.i.i = lshr i32 %symbol.addr.0.i.i.i, 7
  %and4.i.i.i = and i32 %shr3.i.i.i, 1
  %idxprom.i72.i.i = zext nneg i32 %add2.i.i.i to i64
  %arrayidx.i73.i.i = getelementptr inbounds i16, ptr %arrayidx11.i.i, i64 %idxprom.i72.i.i
  %arrayidx.i.i74.i.i = getelementptr inbounds [58 x i32], ptr %symbols.i.i77, i64 0, i64 %69
  store i32 %and4.i.i.i, ptr %arrayidx.i.i74.i.i, align 4
  %70 = load i64, ptr %count.i.i78, align 8
  %arrayidx2.i.i75.i.i = getelementptr inbounds [58 x ptr], ptr %probs.i.i80, i64 0, i64 %70
  store ptr %arrayidx.i73.i.i, ptr %arrayidx2.i.i75.i.i, align 8
  %71 = load i64, ptr %count.i.i78, align 8
  %inc.i.i76.i.i = add i64 %71, 1
  store i64 %inc.i.i76.i.i, ptr %count.i.i78, align 8
  %shl5.i.i.i = shl nuw nsw i32 %symbol.addr.0.i.i.i, 1
  %72 = xor i32 %shl5.i.i.i, %shl.i69.i.i
  %not.i.i.i = xor i32 %72, -1
  %and6.i.i.i = and i32 %offset.0.i.i.i, %not.i.i.i
  %cmp.i.i.i = icmp ult i32 %symbol.addr.0.i.i.i, 32768
  br i1 %cmp.i.i.i, label %do.body.i68.i.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %do.body.i68.i.i, %if.then.i.i
  %73 = load i32, ptr %state.i, align 8
  %cmp27.i.i = icmp ult i32 %73, 4
  br i1 %cmp27.i.i, label %literal.exit.i, label %cond.false.i.i

cond.false.i.i:                                   ; preds = %if.end.i.i
  %cmp30.i.i = icmp ult i32 %73, 10
  br i1 %cmp30.i.i, label %cond.true32.i.i, label %cond.false35.i.i

cond.true32.i.i:                                  ; preds = %cond.false.i.i
  %sub34.i.i = add nsw i32 %73, -3
  br label %literal.exit.i

cond.false35.i.i:                                 ; preds = %cond.false.i.i
  %sub37.i.i = add i32 %73, -6
  br label %literal.exit.i

literal.exit.i:                                   ; preds = %cond.false35.i.i, %cond.true32.i.i, %if.end.i.i
  %cond39.i.i = phi i32 [ 0, %if.end.i.i ], [ %sub34.i.i, %cond.true32.i.i ], [ %sub37.i.i, %cond.false35.i.i ]
  store i32 %cond39.i.i, ptr %state.i, align 8
  %.pre111 = load i32, ptr %len, align 4
  br label %encode_symbol.exit

if.else.i81:                                      ; preds = %if.end25
  store i32 1, ptr %arrayidx.i.i79, align 4
  %74 = load i64, ptr %count.i.i78, align 8
  %arrayidx2.i54.i = getelementptr inbounds [58 x ptr], ptr %probs.i.i80, i64 0, i64 %74
  store ptr %arrayidx2.i, ptr %arrayidx2.i54.i, align 8
  %75 = load i64, ptr %count.i.i78, align 8
  %inc.i55.i = add i64 %75, 1
  store i64 %inc.i55.i, ptr %count.i.i78, align 8
  %cmp10.i = icmp ult i32 %35, 4
  %76 = load i32, ptr %state.i, align 8
  %idxprom14.i = zext i32 %76 to i64
  %arrayidx15.i = getelementptr inbounds [12 x i16], ptr %is_rep.i, i64 0, i64 %idxprom14.i
  %arrayidx.i58.i = getelementptr inbounds [58 x i32], ptr %symbols.i.i77, i64 0, i64 %inc.i55.i
  br i1 %cmp10.i, label %if.then11.i, label %if.else16.i

if.then11.i:                                      ; preds = %if.else.i81
  store i32 1, ptr %arrayidx.i58.i, align 4
  %77 = load i64, ptr %count.i.i78, align 8
  %arrayidx2.i60.i = getelementptr inbounds [58 x ptr], ptr %probs.i.i80, i64 0, i64 %77
  store ptr %arrayidx15.i, ptr %arrayidx2.i60.i, align 8
  %78 = load i64, ptr %count.i.i78, align 8
  %inc.i61.i = add i64 %78, 1
  store i64 %inc.i61.i, ptr %count.i.i78, align 8
  %cmp.i62.i = icmp eq i32 %35, 0
  br i1 %cmp.i62.i, label %if.then.i67.i, label %if.else.i63.i

if.then.i67.i:                                    ; preds = %if.then11.i
  %79 = load i32, ptr %state.i, align 8
  %idxprom.i69.i = zext i32 %79 to i64
  %arrayidx.i70.i = getelementptr inbounds [12 x i16], ptr %is_rep011.i.i, i64 0, i64 %idxprom.i69.i
  %arrayidx.i.i71.i = getelementptr inbounds [58 x i32], ptr %symbols.i.i77, i64 0, i64 %inc.i61.i
  store i32 0, ptr %arrayidx.i.i71.i, align 4
  %80 = load i64, ptr %count.i.i78, align 8
  %arrayidx2.i.i.i83 = getelementptr inbounds [58 x ptr], ptr %probs.i.i80, i64 0, i64 %80
  store ptr %arrayidx.i70.i, ptr %arrayidx2.i.i.i83, align 8
  %81 = load i64, ptr %count.i.i78, align 8
  %inc.i.i.i84 = add i64 %81, 1
  store i64 %inc.i.i.i84, ptr %count.i.i78, align 8
  %82 = load i32, ptr %state.i, align 8
  %idxprom3.i.i = zext i32 %82 to i64
  %arrayidx6.i.i = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long.i.i, i64 0, i64 %idxprom3.i.i, i64 %idxprom1.i
  %cmp7.i.i = icmp ne i32 %36, 1
  %conv.i72.i = zext i1 %cmp7.i.i to i32
  %arrayidx.i107.i.i = getelementptr inbounds [58 x i32], ptr %symbols.i.i77, i64 0, i64 %inc.i.i.i84
  store i32 %conv.i72.i, ptr %arrayidx.i107.i.i, align 4
  %83 = load i64, ptr %count.i.i78, align 8
  %arrayidx2.i109.i.i = getelementptr inbounds [58 x ptr], ptr %probs.i.i80, i64 0, i64 %83
  store ptr %arrayidx6.i.i, ptr %arrayidx2.i109.i.i, align 8
  %84 = load i64, ptr %count.i.i78, align 8
  %inc.i110.i.i = add i64 %84, 1
  store i64 %inc.i110.i.i, ptr %count.i.i78, align 8
  br label %if.end50.i.i

if.else.i63.i:                                    ; preds = %if.then11.i
  %idxprom8.i.i = zext nneg i32 %35 to i64
  %arrayidx9.i.i = getelementptr inbounds [4 x i32], ptr %reps.i64.i, i64 0, i64 %idxprom8.i.i
  %85 = load i32, ptr %arrayidx9.i.i, align 4
  %86 = load i32, ptr %state.i, align 8
  %idxprom13.i.i = zext i32 %86 to i64
  %arrayidx14.i.i = getelementptr inbounds [12 x i16], ptr %is_rep011.i.i, i64 0, i64 %idxprom13.i.i
  %arrayidx.i113.i.i = getelementptr inbounds [58 x i32], ptr %symbols.i.i77, i64 0, i64 %inc.i61.i
  store i32 1, ptr %arrayidx.i113.i.i, align 4
  %87 = load i64, ptr %count.i.i78, align 8
  %arrayidx2.i115.i.i = getelementptr inbounds [58 x ptr], ptr %probs.i.i80, i64 0, i64 %87
  store ptr %arrayidx14.i.i, ptr %arrayidx2.i115.i.i, align 8
  %88 = load i64, ptr %count.i.i78, align 8
  %inc.i116.i.i = add i64 %88, 1
  store i64 %inc.i116.i.i, ptr %count.i.i78, align 8
  %cmp15.i.i = icmp eq i32 %35, 1
  %89 = load i32, ptr %state.i, align 8
  %idxprom20.i.i = zext i32 %89 to i64
  %arrayidx21.i.i = getelementptr inbounds [12 x i16], ptr %is_rep1.i.i, i64 0, i64 %idxprom20.i.i
  %arrayidx.i119.i.i = getelementptr inbounds [58 x i32], ptr %symbols.i.i77, i64 0, i64 %inc.i116.i.i
  br i1 %cmp15.i.i, label %if.then17.i.i, label %if.else22.i.i

if.then17.i.i:                                    ; preds = %if.else.i63.i
  store i32 0, ptr %arrayidx.i119.i.i, align 4
  %90 = load i64, ptr %count.i.i78, align 8
  %arrayidx2.i121.i.i = getelementptr inbounds [58 x ptr], ptr %probs.i.i80, i64 0, i64 %90
  store ptr %arrayidx21.i.i, ptr %arrayidx2.i121.i.i, align 8
  %91 = load i64, ptr %count.i.i78, align 8
  %inc.i122.i.i = add i64 %91, 1
  store i64 %inc.i122.i.i, ptr %count.i.i78, align 8
  br label %if.end43.i.i

if.else22.i.i:                                    ; preds = %if.else.i63.i
  store i32 1, ptr %arrayidx.i119.i.i, align 4
  %92 = load i64, ptr %count.i.i78, align 8
  %arrayidx2.i127.i.i = getelementptr inbounds [58 x ptr], ptr %probs.i.i80, i64 0, i64 %92
  store ptr %arrayidx21.i.i, ptr %arrayidx2.i127.i.i, align 8
  %93 = load i64, ptr %count.i.i78, align 8
  %inc.i128.i.i = add i64 %93, 1
  store i64 %inc.i128.i.i, ptr %count.i.i78, align 8
  %94 = load i32, ptr %state.i, align 8
  %idxprom30.i.i = zext i32 %94 to i64
  %arrayidx31.i.i = getelementptr inbounds [12 x i16], ptr %is_rep2.i.i, i64 0, i64 %idxprom30.i.i
  %sub.i65.i = add nsw i32 %35, -2
  %arrayidx.i131.i.i = getelementptr inbounds [58 x i32], ptr %symbols.i.i77, i64 0, i64 %inc.i128.i.i
  store i32 %sub.i65.i, ptr %arrayidx.i131.i.i, align 4
  %95 = load i64, ptr %count.i.i78, align 8
  %arrayidx2.i133.i.i = getelementptr inbounds [58 x ptr], ptr %probs.i.i80, i64 0, i64 %95
  store ptr %arrayidx31.i.i, ptr %arrayidx2.i133.i.i, align 8
  %96 = load i64, ptr %count.i.i78, align 8
  %inc.i134.i.i = add i64 %96, 1
  store i64 %inc.i134.i.i, ptr %count.i.i78, align 8
  %cmp32.i.i = icmp eq i32 %35, 3
  br i1 %cmp32.i.i, label %if.then34.i.i, label %if.end.i66.i

if.then34.i.i:                                    ; preds = %if.else22.i.i
  %97 = load i32, ptr %arrayidx36.i.i, align 4
  store i32 %97, ptr %arrayidx38.i.i, align 4
  br label %if.end.i66.i

if.end.i66.i:                                     ; preds = %if.then34.i.i, %if.else22.i.i
  %98 = load i32, ptr %arrayidx40.i.i, align 4
  store i32 %98, ptr %arrayidx36.i.i, align 4
  br label %if.end43.i.i

if.end43.i.i:                                     ; preds = %if.end.i66.i, %if.then17.i.i
  %99 = load i32, ptr %reps.i64.i, align 4
  store i32 %99, ptr %arrayidx40.i.i, align 4
  store i32 %85, ptr %reps.i64.i, align 4
  br label %if.end50.i.i

if.end50.i.i:                                     ; preds = %if.end43.i.i, %if.then.i67.i
  %cmp51.i.i = icmp eq i32 %36, 1
  br i1 %cmp51.i.i, label %rep_match.exit.i, label %if.else58.i.i

if.else58.i.i:                                    ; preds = %if.end50.i.i
  %100 = load i8, ptr %fast_mode, align 4, !range !5, !noundef !6
  %loadedv.i.i = trunc nuw i8 %100 to i1
  call fastcc void @length(ptr noundef nonnull %pcoder, ptr noundef nonnull %rep_len_encoder.i.i, i32 noundef %and.i, i32 noundef %36, i1 noundef zeroext %loadedv.i.i)
  br label %rep_match.exit.i

rep_match.exit.i:                                 ; preds = %if.else58.i.i, %if.end50.i.i
  %.sink.i.i = phi i32 [ 8, %if.else58.i.i ], [ 9, %if.end50.i.i ]
  %101 = load i32, ptr %state.i, align 8
  %cmp61.i.i = icmp ult i32 %101, 7
  %cond63.i.i = select i1 %cmp61.i.i, i32 %.sink.i.i, i32 11
  store i32 %cond63.i.i, ptr %state.i, align 8
  br label %encode_symbol.exit

if.else16.i:                                      ; preds = %if.else.i81
  store i32 0, ptr %arrayidx.i58.i, align 4
  %102 = load i64, ptr %count.i.i78, align 8
  %arrayidx2.i77.i = getelementptr inbounds [58 x ptr], ptr %probs.i.i80, i64 0, i64 %102
  store ptr %arrayidx15.i, ptr %arrayidx2.i77.i, align 8
  %103 = load i64, ptr %count.i.i78, align 8
  %inc.i78.i = add i64 %103, 1
  store i64 %inc.i78.i, ptr %count.i.i78, align 8
  %sub.i82 = add i32 %35, -4
  call fastcc void @match(ptr noundef nonnull %pcoder, i32 noundef %and.i, i32 noundef %sub.i82, i32 noundef %36)
  br label %encode_symbol.exit

encode_symbol.exit:                               ; preds = %literal.exit.i, %rep_match.exit.i, %if.else16.i
  %104 = phi i32 [ %.pre111, %literal.exit.i ], [ %36, %rep_match.exit.i ], [ %36, %if.else16.i ]
  %105 = load i32, ptr %27, align 4
  %sub23.i = sub i32 %105, %36
  store i32 %sub23.i, ptr %27, align 4
  %add26 = add i32 %104, %position.0109
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %back) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #10
  %call2 = call fastcc zeroext i1 @rc_encode(ptr noundef nonnull %pcoder, ptr noundef %out, ptr noundef %out_pos, i64 noundef %out_size)
  br i1 %call2, label %cleanup40, label %if.end4

while.end:                                        ; preds = %if.end17, %land.lhs.true5, %lor.lhs.false
  %is_flushed = getelementptr inbounds i8, ptr %pcoder, i64 2958
  %106 = load i8, ptr %is_flushed, align 2, !range !5, !noundef !6
  %loadedv27 = trunc nuw i8 %106 to i1
  br i1 %loadedv27, label %if.end38, label %if.then28

if.then28:                                        ; preds = %while.end
  store i8 1, ptr %is_flushed, align 2
  br i1 %cmp.not, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.then28
  %107 = load i32, ptr %pos_mask.i, align 8
  %and.i92 = and i32 %107, %position.0109
  %108 = load i32, ptr %state.i, align 8
  %idxprom.i95 = zext i32 %108 to i64
  %idxprom1.i96 = zext i32 %and.i92 to i64
  %arrayidx2.i97 = getelementptr inbounds [12 x [16 x i16]], ptr %is_match.i76, i64 0, i64 %idxprom.i95, i64 %idxprom1.i96
  %109 = load i64, ptr %count.i.i78, align 8
  %arrayidx.i.i100 = getelementptr inbounds [58 x i32], ptr %symbols.i.i77, i64 0, i64 %109
  store i32 1, ptr %arrayidx.i.i100, align 4
  %110 = load i64, ptr %count.i.i78, align 8
  %arrayidx2.i.i102 = getelementptr inbounds [58 x ptr], ptr %probs.i.i80, i64 0, i64 %110
  store ptr %arrayidx2.i97, ptr %arrayidx2.i.i102, align 8
  %111 = load i64, ptr %count.i.i78, align 8
  %inc.i.i103 = add i64 %111, 1
  store i64 %inc.i.i103, ptr %count.i.i78, align 8
  %112 = load i32, ptr %state.i, align 8
  %idxprom5.i = zext i32 %112 to i64
  %arrayidx6.i = getelementptr inbounds [12 x i16], ptr %is_rep.i, i64 0, i64 %idxprom5.i
  %arrayidx.i17.i105 = getelementptr inbounds [58 x i32], ptr %symbols.i.i77, i64 0, i64 %inc.i.i103
  store i32 0, ptr %arrayidx.i17.i105, align 4
  %113 = load i64, ptr %count.i.i78, align 8
  %arrayidx2.i19.i = getelementptr inbounds [58 x ptr], ptr %probs.i.i80, i64 0, i64 %113
  store ptr %arrayidx6.i, ptr %arrayidx2.i19.i, align 8
  %114 = load i64, ptr %count.i.i78, align 8
  %inc.i20.i = add i64 %114, 1
  store i64 %inc.i20.i, ptr %count.i.i78, align 8
  call fastcc void @match(ptr noundef nonnull %pcoder, i32 noundef %and.i92, i32 noundef -1, i32 noundef 2)
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.then28
  %115 = load i64, ptr %count.i.i78, align 8
  %inc.i = add i64 %115, 1
  store i64 %inc.i, ptr %count.i.i78, align 8
  %arrayidx.i = getelementptr inbounds [58 x i32], ptr %symbols.i.i77, i64 0, i64 %115
  store i32 4, ptr %arrayidx.i, align 4
  %116 = load i64, ptr %count.i.i78, align 8
  %inc.1.i = add i64 %116, 1
  store i64 %inc.1.i, ptr %count.i.i78, align 8
  %arrayidx.1.i = getelementptr inbounds [58 x i32], ptr %symbols.i.i77, i64 0, i64 %116
  store i32 4, ptr %arrayidx.1.i, align 4
  %117 = load i64, ptr %count.i.i78, align 8
  %inc.2.i = add i64 %117, 1
  store i64 %inc.2.i, ptr %count.i.i78, align 8
  %arrayidx.2.i = getelementptr inbounds [58 x i32], ptr %symbols.i.i77, i64 0, i64 %117
  store i32 4, ptr %arrayidx.2.i, align 4
  %118 = load i64, ptr %count.i.i78, align 8
  %inc.3.i = add i64 %118, 1
  store i64 %inc.3.i, ptr %count.i.i78, align 8
  %arrayidx.3.i = getelementptr inbounds [58 x i32], ptr %symbols.i.i77, i64 0, i64 %118
  store i32 4, ptr %arrayidx.3.i, align 4
  %119 = load i64, ptr %count.i.i78, align 8
  %inc.4.i = add i64 %119, 1
  store i64 %inc.4.i, ptr %count.i.i78, align 8
  %arrayidx.4.i = getelementptr inbounds [58 x i32], ptr %symbols.i.i77, i64 0, i64 %119
  store i32 4, ptr %arrayidx.4.i, align 4
  %call35 = call fastcc zeroext i1 @rc_encode(ptr noundef nonnull %pcoder, ptr noundef %out, ptr noundef %out_pos, i64 noundef %out_size)
  br i1 %call35, label %cleanup40, label %if.end38

if.end38:                                         ; preds = %if.end32, %while.end
  store i8 0, ptr %is_flushed, align 2
  br label %cleanup40

cleanup40:                                        ; preds = %if.then14, %encode_symbol.exit, %if.end, %if.then.i, %if.end38, %if.end32
  %retval.1 = phi i32 [ 1, %if.end38 ], [ 0, %if.end32 ], [ 0, %if.then.i ], [ 0, %if.end ], [ 0, %encode_symbol.exit ], [ 0, %if.then14 ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i1 @rc_encode(ptr nocapture noundef %rc, ptr nocapture noundef writeonly %out, ptr nocapture noundef %out_pos, i64 noundef %out_size) unnamed_addr #2 {
entry:
  %pos = getelementptr inbounds i8, ptr %rc, i64 32
  %count = getelementptr inbounds i8, ptr %rc, i64 24
  %0 = load i64, ptr %pos, align 8
  %1 = load i64, ptr %count, align 8
  %cmp140 = icmp ult i64 %0, %1
  br i1 %cmp140, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %range = getelementptr inbounds i8, ptr %rc, i64 16
  %cache.i = getelementptr inbounds i8, ptr %rc, i64 20
  %cache_size.i = getelementptr inbounds i8, ptr %rc, i64 8
  %symbols = getelementptr inbounds i8, ptr %rc, i64 40
  %probs19 = getelementptr inbounds i8, ptr %rc, i64 272
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %sw.epilog
  %2 = phi i64 [ %0, %while.body.lr.ph ], [ %inc58, %sw.epilog ]
  %3 = load i32, ptr %range, align 8
  %cmp1 = icmp ult i32 %3, 16777216
  br i1 %cmp1, label %if.then, label %if.end4

if.then:                                          ; preds = %while.body
  %4 = load i64, ptr %rc, align 8
  %5 = and i64 %4, -16777216
  %or.cond.i = icmp eq i64 %5, 4278190080
  br i1 %or.cond.i, label %entry.if.end22_crit_edge.i, label %do.body.i

entry.if.end22_crit_edge.i:                       ; preds = %if.then
  %.pre.i = load i64, ptr %cache_size.i, align 8
  %6 = add i64 %.pre.i, 1
  br label %if.end

do.body.i:                                        ; preds = %if.then, %if.end.i
  %7 = load i64, ptr %out_pos, align 8
  %cmp6.i = icmp eq i64 %7, %out_size
  br i1 %cmp6.i, label %return, label %if.end.i

if.end.i:                                         ; preds = %do.body.i
  %8 = load i8, ptr %cache.i, align 4
  %9 = load i64, ptr %rc, align 8
  %shr11.i = lshr i64 %9, 32
  %conv12.i = trunc i64 %shr11.i to i8
  %add.i = add i8 %8, %conv12.i
  %arrayidx.i = getelementptr inbounds i8, ptr %out, i64 %7
  store i8 %add.i, ptr %arrayidx.i, align 1
  %10 = load i64, ptr %out_pos, align 8
  %inc.i = add i64 %10, 1
  store i64 %inc.i, ptr %out_pos, align 8
  store i8 -1, ptr %cache.i, align 4
  %11 = load i64, ptr %cache_size.i, align 8
  %dec.i = add i64 %11, -1
  store i64 %dec.i, ptr %cache_size.i, align 8
  %cmp16.not.i = icmp eq i64 %dec.i, 0
  br i1 %cmp16.not.i, label %do.end.i, label %do.body.i

do.end.i:                                         ; preds = %if.end.i
  %12 = load i64, ptr %rc, align 8
  %shr19.i = lshr i64 %12, 24
  %conv20.i = trunc i64 %shr19.i to i8
  store i8 %conv20.i, ptr %cache.i, align 4
  %.pre = load i32, ptr %range, align 8
  %.pre142.pre = load i64, ptr %pos, align 8
  br label %if.end

if.end:                                           ; preds = %do.end.i, %entry.if.end22_crit_edge.i
  %.pre142 = phi i64 [ %2, %entry.if.end22_crit_edge.i ], [ %.pre142.pre, %do.end.i ]
  %13 = phi i32 [ %3, %entry.if.end22_crit_edge.i ], [ %.pre, %do.end.i ]
  %14 = phi i64 [ %4, %entry.if.end22_crit_edge.i ], [ %12, %do.end.i ]
  %inc24.i = phi i64 [ %6, %entry.if.end22_crit_edge.i ], [ 1, %do.end.i ]
  store i64 %inc24.i, ptr %cache_size.i, align 8
  %and26.i = shl i64 %14, 8
  %shl.i = and i64 %and26.i, 4294967040
  store i64 %shl.i, ptr %rc, align 8
  %shl = shl i32 %13, 8
  store i32 %shl, ptr %range, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.end, %while.body
  %15 = phi i32 [ %shl, %if.end ], [ %3, %while.body ]
  %16 = phi i64 [ %.pre142, %if.end ], [ %2, %while.body ]
  %arrayidx = getelementptr inbounds [58 x i32], ptr %symbols, i64 0, i64 %16
  %17 = load i32, ptr %arrayidx, align 4
  switch i32 %17, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb17
    i32 2, label %sw.bb38
    i32 3, label %sw.bb41
    i32 4, label %sw.bb48
  ]

sw.bb:                                            ; preds = %if.end4
  %arrayidx7 = getelementptr inbounds [58 x ptr], ptr %probs19, i64 0, i64 %16
  %18 = load ptr, ptr %arrayidx7, align 8
  %19 = load i16, ptr %18, align 2
  %shr = lshr i32 %15, 11
  %conv = zext i16 %19 to i32
  %mul = mul i32 %shr, %conv
  store i32 %mul, ptr %range, align 8
  %sub = sub nsw i32 2048, %conv
  %shr11 = lshr i32 %sub, 5
  %20 = trunc i32 %shr11 to i16
  %conv13 = add i16 %19, %20
  %21 = load ptr, ptr %arrayidx7, align 8
  store i16 %conv13, ptr %21, align 2
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end4
  %arrayidx21 = getelementptr inbounds [58 x ptr], ptr %probs19, i64 0, i64 %16
  %22 = load ptr, ptr %arrayidx21, align 8
  %23 = load i16, ptr %22, align 2
  %conv22 = zext i16 %23 to i32
  %shr24 = lshr i32 %15, 11
  %mul25 = mul i32 %shr24, %conv22
  %conv26 = zext i32 %mul25 to i64
  %24 = load i64, ptr %rc, align 8
  %add27 = add i64 %24, %conv26
  store i64 %add27, ptr %rc, align 8
  %sub29 = sub i32 %15, %mul25
  store i32 %sub29, ptr %range, align 8
  %shr31 = lshr i16 %23, 5
  %sub33 = sub i16 %23, %shr31
  %25 = load ptr, ptr %arrayidx21, align 8
  store i16 %sub33, ptr %25, align 2
  br label %sw.epilog

sw.bb38:                                          ; preds = %if.end4
  %shr40 = lshr i32 %15, 1
  store i32 %shr40, ptr %range, align 8
  br label %sw.epilog

sw.bb41:                                          ; preds = %if.end4
  %shr43 = lshr i32 %15, 1
  store i32 %shr43, ptr %range, align 8
  %conv45 = zext nneg i32 %shr43 to i64
  %26 = load i64, ptr %rc, align 8
  %add47 = add i64 %26, %conv45
  store i64 %add47, ptr %rc, align 8
  br label %sw.epilog

sw.bb48:                                          ; preds = %if.end4
  store i32 -1, ptr %range, align 8
  %.pre143 = load i64, ptr %rc, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %sw.bb48
  %27 = phi i64 [ %inc, %do.cond ], [ %16, %sw.bb48 ]
  %28 = phi i64 [ %shl.i123, %do.cond ], [ %.pre143, %sw.bb48 ]
  %29 = and i64 %28, -16777216
  %or.cond.i102 = icmp eq i64 %29, 4278190080
  br i1 %or.cond.i102, label %entry.if.end22_crit_edge.i125, label %do.body.i106

entry.if.end22_crit_edge.i125:                    ; preds = %do.body
  %.pre.i127 = load i64, ptr %cache_size.i, align 8
  %30 = add i64 %.pre.i127, 1
  br label %do.cond

do.body.i106:                                     ; preds = %do.body, %if.end.i108
  %31 = load i64, ptr %out_pos, align 8
  %cmp6.i107 = icmp eq i64 %31, %out_size
  br i1 %cmp6.i107, label %return, label %if.end.i108

if.end.i108:                                      ; preds = %do.body.i106
  %32 = load i8, ptr %cache.i, align 4
  %33 = load i64, ptr %rc, align 8
  %shr11.i109 = lshr i64 %33, 32
  %conv12.i110 = trunc i64 %shr11.i109 to i8
  %add.i111 = add i8 %32, %conv12.i110
  %arrayidx.i112 = getelementptr inbounds i8, ptr %out, i64 %31
  store i8 %add.i111, ptr %arrayidx.i112, align 1
  %34 = load i64, ptr %out_pos, align 8
  %inc.i113 = add i64 %34, 1
  store i64 %inc.i113, ptr %out_pos, align 8
  store i8 -1, ptr %cache.i, align 4
  %35 = load i64, ptr %cache_size.i, align 8
  %dec.i114 = add i64 %35, -1
  store i64 %dec.i114, ptr %cache_size.i, align 8
  %cmp16.not.i115 = icmp eq i64 %dec.i114, 0
  br i1 %cmp16.not.i115, label %do.end.i116, label %do.body.i106

do.end.i116:                                      ; preds = %if.end.i108
  %36 = load i64, ptr %rc, align 8
  %shr19.i117 = lshr i64 %36, 24
  %conv20.i118 = trunc i64 %shr19.i117 to i8
  store i8 %conv20.i118, ptr %cache.i, align 4
  %.pre144 = load i64, ptr %pos, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.end.i116, %entry.if.end22_crit_edge.i125
  %37 = phi i64 [ %27, %entry.if.end22_crit_edge.i125 ], [ %.pre144, %do.end.i116 ]
  %38 = phi i64 [ %28, %entry.if.end22_crit_edge.i125 ], [ %36, %do.end.i116 ]
  %inc24.i120 = phi i64 [ %30, %entry.if.end22_crit_edge.i125 ], [ 1, %do.end.i116 ]
  store i64 %inc24.i120, ptr %cache_size.i, align 8
  %and26.i122 = shl i64 %38, 8
  %shl.i123 = and i64 %and26.i122, 4294967040
  store i64 %shl.i123, ptr %rc, align 8
  %inc = add i64 %37, 1
  store i64 %inc, ptr %pos, align 8
  %39 = load i64, ptr %count, align 8
  %cmp55 = icmp ult i64 %inc, %39
  br i1 %cmp55, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i64 0, ptr %rc, align 8
  store i64 1, ptr %cache_size.i, align 8
  store i32 -1, ptr %range, align 8
  store i8 0, ptr %cache.i, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %count, i8 0, i64 16, i1 false)
  br label %return

sw.epilog:                                        ; preds = %if.end4, %sw.bb41, %sw.bb38, %sw.bb17, %sw.bb
  %40 = load i64, ptr %pos, align 8
  %inc58 = add i64 %40, 1
  store i64 %inc58, ptr %pos, align 8
  %41 = load i64, ptr %count, align 8
  %cmp = icmp ult i64 %inc58, %41
  br i1 %cmp, label %while.body, label %while.end

while.end:                                        ; preds = %sw.epilog, %entry
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %count, i8 0, i64 16, i1 false)
  br label %return

return:                                           ; preds = %do.body.i, %do.body.i106, %while.end, %do.end
  %retval.0 = phi i1 [ false, %do.end ], [ false, %while.end ], [ true, %do.body.i106 ], [ true, %do.body.i ]
  ret i1 %retval.0
}

declare void @lzma_lzma_optimum_fast(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @lzma_lzma_optimum_normal(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 9) i32 @lzma_lzma_encoder_reset(ptr noundef %pcoder, ptr nocapture noundef readonly %options) local_unnamed_addr #4 {
entry:
  %lc.i.i = getelementptr inbounds i8, ptr %options, i64 20
  %0 = load i32, ptr %lc.i.i, align 4
  %cmp.i.i = icmp ult i32 %0, 5
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %cleanup

land.lhs.true.i.i:                                ; preds = %entry
  %lp.i.i = getelementptr inbounds i8, ptr %options, i64 24
  %1 = load i32, ptr %lp.i.i, align 8
  %cmp1.i.i = icmp ult i32 %1, 5
  %add.i.i = add nuw nsw i32 %1, %0
  %cmp5.i.i = icmp ult i32 %add.i.i, 5
  %or.cond.i.i = select i1 %cmp1.i.i, i1 %cmp5.i.i, i1 false
  br i1 %or.cond.i.i, label %is_lclppb_valid.exit.i, label %cleanup

is_lclppb_valid.exit.i:                           ; preds = %land.lhs.true.i.i
  %pb.i.i = getelementptr inbounds i8, ptr %options, i64 28
  %2 = load i32, ptr %pb.i.i, align 4
  %cmp6.i.i = icmp ult i32 %2, 5
  br i1 %cmp6.i.i, label %land.lhs.true.i, label %cleanup

land.lhs.true.i:                                  ; preds = %is_lclppb_valid.exit.i
  %nice_len.i = getelementptr inbounds i8, ptr %options, i64 36
  %3 = load i32, ptr %nice_len.i, align 4
  %4 = add i32 %3, -2
  %or.cond.i = icmp ult i32 %4, 272
  br i1 %or.cond.i, label %is_options_valid.exit, label %cleanup

is_options_valid.exit:                            ; preds = %land.lhs.true.i
  %mode.i = getelementptr inbounds i8, ptr %options, i64 32
  %5 = load i32, ptr %mode.i, align 8
  %6 = add i32 %5, -1
  %spec.select.i = icmp ult i32 %6, 2
  br i1 %spec.select.i, label %if.end, label %cleanup

if.end:                                           ; preds = %is_options_valid.exit
  %notmask = shl nsw i32 -1, %2
  %sub = xor i32 %notmask, -1
  %pos_mask = getelementptr inbounds i8, ptr %pcoder, i64 2960
  store i32 %sub, ptr %pos_mask, align 8
  %7 = load i32, ptr %lc.i.i, align 4
  %literal_context_bits = getelementptr inbounds i8, ptr %pcoder, i64 2964
  store i32 %7, ptr %literal_context_bits, align 4
  %8 = load i32, ptr %lp.i.i, align 8
  %notmask127 = shl nsw i32 -1, %8
  %sub2 = xor i32 %notmask127, -1
  %literal_pos_mask = getelementptr inbounds i8, ptr %pcoder, i64 2968
  store i32 %sub2, ptr %literal_pos_mask, align 8
  store i64 0, ptr %pcoder, align 8
  %cache_size.i = getelementptr inbounds i8, ptr %pcoder, i64 8
  store i64 1, ptr %cache_size.i, align 8
  %range.i = getelementptr inbounds i8, ptr %pcoder, i64 16
  store i32 -1, ptr %range.i, align 8
  %cache.i = getelementptr inbounds i8, ptr %pcoder, i64 20
  store i8 0, ptr %cache.i, align 4
  %count.i = getelementptr inbounds i8, ptr %pcoder, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %count.i, i8 0, i64 16, i1 false)
  %state = getelementptr inbounds i8, ptr %pcoder, i64 736
  %literal = getelementptr inbounds i8, ptr %pcoder, i64 2972
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %state, i8 0, i64 20, i1 false)
  %9 = load i32, ptr %lc.i.i, align 4
  %10 = load i32, ptr %lp.i.i, align 8
  %add.i = add i32 %10, %9
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.cond1.preheader.i, %if.end
  %i.015.i = phi i32 [ 0, %if.end ], [ %inc8.i, %for.cond1.preheader.i ]
  %idxprom.i = zext i32 %i.015.i to i64
  %11 = getelementptr inbounds [768 x i16], ptr %literal, i64 %idxprom.i, i64 0
  %12 = getelementptr inbounds i8, ptr %11, i64 16
  %13 = getelementptr inbounds i8, ptr %11, i64 32
  %14 = getelementptr inbounds i8, ptr %11, i64 48
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %11, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %12, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %13, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %14, align 2
  %15 = getelementptr inbounds [768 x i16], ptr %literal, i64 %idxprom.i, i64 32
  %16 = getelementptr inbounds i8, ptr %15, i64 16
  %17 = getelementptr inbounds i8, ptr %15, i64 32
  %18 = getelementptr inbounds i8, ptr %15, i64 48
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %15, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %16, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %17, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %18, align 2
  %19 = getelementptr inbounds [768 x i16], ptr %literal, i64 %idxprom.i, i64 64
  %20 = getelementptr inbounds i8, ptr %19, i64 16
  %21 = getelementptr inbounds i8, ptr %19, i64 32
  %22 = getelementptr inbounds i8, ptr %19, i64 48
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %19, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %20, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %21, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %22, align 2
  %23 = getelementptr inbounds [768 x i16], ptr %literal, i64 %idxprom.i, i64 96
  %24 = getelementptr inbounds i8, ptr %23, i64 16
  %25 = getelementptr inbounds i8, ptr %23, i64 32
  %26 = getelementptr inbounds i8, ptr %23, i64 48
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %23, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %24, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %25, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %26, align 2
  %27 = getelementptr inbounds [768 x i16], ptr %literal, i64 %idxprom.i, i64 128
  %28 = getelementptr inbounds i8, ptr %27, i64 16
  %29 = getelementptr inbounds i8, ptr %27, i64 32
  %30 = getelementptr inbounds i8, ptr %27, i64 48
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %27, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %28, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %29, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %30, align 2
  %31 = getelementptr inbounds [768 x i16], ptr %literal, i64 %idxprom.i, i64 160
  %32 = getelementptr inbounds i8, ptr %31, i64 16
  %33 = getelementptr inbounds i8, ptr %31, i64 32
  %34 = getelementptr inbounds i8, ptr %31, i64 48
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %31, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %32, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %33, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %34, align 2
  %35 = getelementptr inbounds [768 x i16], ptr %literal, i64 %idxprom.i, i64 192
  %36 = getelementptr inbounds i8, ptr %35, i64 16
  %37 = getelementptr inbounds i8, ptr %35, i64 32
  %38 = getelementptr inbounds i8, ptr %35, i64 48
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %35, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %36, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %37, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %38, align 2
  %39 = getelementptr inbounds [768 x i16], ptr %literal, i64 %idxprom.i, i64 224
  %40 = getelementptr inbounds i8, ptr %39, i64 16
  %41 = getelementptr inbounds i8, ptr %39, i64 32
  %42 = getelementptr inbounds i8, ptr %39, i64 48
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %39, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %40, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %41, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %42, align 2
  %43 = getelementptr inbounds [768 x i16], ptr %literal, i64 %idxprom.i, i64 256
  %44 = getelementptr inbounds i8, ptr %43, i64 16
  %45 = getelementptr inbounds i8, ptr %43, i64 32
  %46 = getelementptr inbounds i8, ptr %43, i64 48
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %43, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %44, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %45, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %46, align 2
  %47 = getelementptr inbounds [768 x i16], ptr %literal, i64 %idxprom.i, i64 288
  %48 = getelementptr inbounds i8, ptr %47, i64 16
  %49 = getelementptr inbounds i8, ptr %47, i64 32
  %50 = getelementptr inbounds i8, ptr %47, i64 48
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %47, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %48, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %49, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %50, align 2
  %51 = getelementptr inbounds [768 x i16], ptr %literal, i64 %idxprom.i, i64 320
  %52 = getelementptr inbounds i8, ptr %51, i64 16
  %53 = getelementptr inbounds i8, ptr %51, i64 32
  %54 = getelementptr inbounds i8, ptr %51, i64 48
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %51, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %52, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %53, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %54, align 2
  %55 = getelementptr inbounds [768 x i16], ptr %literal, i64 %idxprom.i, i64 352
  %56 = getelementptr inbounds i8, ptr %55, i64 16
  %57 = getelementptr inbounds i8, ptr %55, i64 32
  %58 = getelementptr inbounds i8, ptr %55, i64 48
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %55, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %56, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %57, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %58, align 2
  %59 = getelementptr inbounds [768 x i16], ptr %literal, i64 %idxprom.i, i64 384
  %60 = getelementptr inbounds i8, ptr %59, i64 16
  %61 = getelementptr inbounds i8, ptr %59, i64 32
  %62 = getelementptr inbounds i8, ptr %59, i64 48
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %59, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %60, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %61, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %62, align 2
  %63 = getelementptr inbounds [768 x i16], ptr %literal, i64 %idxprom.i, i64 416
  %64 = getelementptr inbounds i8, ptr %63, i64 16
  %65 = getelementptr inbounds i8, ptr %63, i64 32
  %66 = getelementptr inbounds i8, ptr %63, i64 48
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %63, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %64, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %65, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %66, align 2
  %67 = getelementptr inbounds [768 x i16], ptr %literal, i64 %idxprom.i, i64 448
  %68 = getelementptr inbounds i8, ptr %67, i64 16
  %69 = getelementptr inbounds i8, ptr %67, i64 32
  %70 = getelementptr inbounds i8, ptr %67, i64 48
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %67, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %68, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %69, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %70, align 2
  %71 = getelementptr inbounds [768 x i16], ptr %literal, i64 %idxprom.i, i64 480
  %72 = getelementptr inbounds i8, ptr %71, i64 16
  %73 = getelementptr inbounds i8, ptr %71, i64 32
  %74 = getelementptr inbounds i8, ptr %71, i64 48
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %71, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %72, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %73, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %74, align 2
  %75 = getelementptr inbounds [768 x i16], ptr %literal, i64 %idxprom.i, i64 512
  %76 = getelementptr inbounds i8, ptr %75, i64 16
  %77 = getelementptr inbounds i8, ptr %75, i64 32
  %78 = getelementptr inbounds i8, ptr %75, i64 48
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %75, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %76, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %77, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %78, align 2
  %79 = getelementptr inbounds [768 x i16], ptr %literal, i64 %idxprom.i, i64 544
  %80 = getelementptr inbounds i8, ptr %79, i64 16
  %81 = getelementptr inbounds i8, ptr %79, i64 32
  %82 = getelementptr inbounds i8, ptr %79, i64 48
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %79, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %80, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %81, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %82, align 2
  %83 = getelementptr inbounds [768 x i16], ptr %literal, i64 %idxprom.i, i64 576
  %84 = getelementptr inbounds i8, ptr %83, i64 16
  %85 = getelementptr inbounds i8, ptr %83, i64 32
  %86 = getelementptr inbounds i8, ptr %83, i64 48
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %83, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %84, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %85, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %86, align 2
  %87 = getelementptr inbounds [768 x i16], ptr %literal, i64 %idxprom.i, i64 608
  %88 = getelementptr inbounds i8, ptr %87, i64 16
  %89 = getelementptr inbounds i8, ptr %87, i64 32
  %90 = getelementptr inbounds i8, ptr %87, i64 48
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %87, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %88, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %89, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %90, align 2
  %91 = getelementptr inbounds [768 x i16], ptr %literal, i64 %idxprom.i, i64 640
  %92 = getelementptr inbounds i8, ptr %91, i64 16
  %93 = getelementptr inbounds i8, ptr %91, i64 32
  %94 = getelementptr inbounds i8, ptr %91, i64 48
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %91, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %92, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %93, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %94, align 2
  %95 = getelementptr inbounds [768 x i16], ptr %literal, i64 %idxprom.i, i64 672
  %96 = getelementptr inbounds i8, ptr %95, i64 16
  %97 = getelementptr inbounds i8, ptr %95, i64 32
  %98 = getelementptr inbounds i8, ptr %95, i64 48
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %95, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %96, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %97, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %98, align 2
  %99 = getelementptr inbounds [768 x i16], ptr %literal, i64 %idxprom.i, i64 704
  %100 = getelementptr inbounds i8, ptr %99, i64 16
  %101 = getelementptr inbounds i8, ptr %99, i64 32
  %102 = getelementptr inbounds i8, ptr %99, i64 48
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %99, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %100, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %101, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %102, align 2
  %103 = getelementptr inbounds [768 x i16], ptr %literal, i64 %idxprom.i, i64 736
  %104 = getelementptr inbounds i8, ptr %103, i64 16
  %105 = getelementptr inbounds i8, ptr %103, i64 32
  %106 = getelementptr inbounds i8, ptr %103, i64 48
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %103, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %104, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %105, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %106, align 2
  %inc8.i = add i32 %i.015.i, 1
  %i.0.highbits.i = lshr i32 %inc8.i, %add.i
  %cmp.i = icmp eq i32 %i.0.highbits.i, 0
  br i1 %cmp.i, label %for.cond1.preheader.i, label %for.cond6.preheader

for.cond6.preheader:                              ; preds = %for.cond1.preheader.i
  %is_match = getelementptr inbounds i8, ptr %pcoder, i64 27548
  %is_rep0_long = getelementptr inbounds i8, ptr %pcoder, i64 28028
  %is_rep = getelementptr inbounds i8, ptr %pcoder, i64 27932
  %is_rep0 = getelementptr inbounds i8, ptr %pcoder, i64 27956
  %is_rep1 = getelementptr inbounds i8, ptr %pcoder, i64 27980
  %is_rep2 = getelementptr inbounds i8, ptr %pcoder, i64 28004
  %conv = zext nneg i32 %sub to i64
  %107 = add nuw nsw i64 %conv, 1
  %min.iters.check = icmp ugt i32 %notmask, -32
  br i1 %min.iters.check, label %for.body15.preheader, label %vector.ph184

for.body15.preheader:                             ; preds = %middle.block182, %for.cond6.preheader
  %j.0171.ph = phi i64 [ 0, %for.cond6.preheader ], [ %n.vec, %middle.block182 ]
  br label %for.body15

vector.ph184:                                     ; preds = %for.cond6.preheader
  %n.vec = and i64 %107, 224
  br label %vector.body186

vector.body186:                                   ; preds = %vector.body186, %vector.ph184
  %index187 = phi i64 [ 0, %vector.ph184 ], [ %index.next188, %vector.body186 ]
  %108 = getelementptr inbounds [12 x [16 x i16]], ptr %is_match, i64 0, i64 0, i64 %index187
  %109 = getelementptr inbounds i8, ptr %108, i64 16
  %110 = getelementptr inbounds i8, ptr %108, i64 32
  %111 = getelementptr inbounds i8, ptr %108, i64 48
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %108, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %109, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %110, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %111, align 2
  %112 = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long, i64 0, i64 0, i64 %index187
  %113 = getelementptr inbounds i8, ptr %112, i64 16
  %114 = getelementptr inbounds i8, ptr %112, i64 32
  %115 = getelementptr inbounds i8, ptr %112, i64 48
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %112, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %113, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %114, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %115, align 2
  %index.next188 = add nuw i64 %index187, 32
  %116 = icmp eq i64 %index.next188, %n.vec
  br i1 %116, label %middle.block182, label %vector.body186, !llvm.loop !7

middle.block182:                                  ; preds = %vector.body186
  %cmp.n = icmp eq i64 %107, %n.vec
  br i1 %cmp.n, label %for.cond.cleanup14, label %for.body15.preheader

for.cond.cleanup14:                               ; preds = %for.body15, %middle.block182
  store i16 1024, ptr %is_rep, align 2
  store i16 1024, ptr %is_rep0, align 2
  store i16 1024, ptr %is_rep1, align 2
  store i16 1024, ptr %is_rep2, align 2
  %117 = add nuw nsw i64 %conv, 1
  %min.iters.check191 = icmp ugt i32 %notmask, -32
  br i1 %min.iters.check191, label %for.body15.1.preheader, label %vector.ph192

vector.ph192:                                     ; preds = %for.cond.cleanup14
  %n.vec194 = and i64 %117, 224
  br label %vector.body196

vector.body196:                                   ; preds = %vector.body196, %vector.ph192
  %index197 = phi i64 [ 0, %vector.ph192 ], [ %index.next198, %vector.body196 ]
  %118 = getelementptr inbounds [12 x [16 x i16]], ptr %is_match, i64 0, i64 1, i64 %index197
  %119 = getelementptr inbounds i8, ptr %118, i64 16
  %120 = getelementptr inbounds i8, ptr %118, i64 32
  %121 = getelementptr inbounds i8, ptr %118, i64 48
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %118, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %119, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %120, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %121, align 2
  %122 = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long, i64 0, i64 1, i64 %index197
  %123 = getelementptr inbounds i8, ptr %122, i64 16
  %124 = getelementptr inbounds i8, ptr %122, i64 32
  %125 = getelementptr inbounds i8, ptr %122, i64 48
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %122, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %123, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %124, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %125, align 2
  %index.next198 = add nuw i64 %index197, 32
  %126 = icmp eq i64 %index.next198, %n.vec194
  br i1 %126, label %middle.block189, label %vector.body196, !llvm.loop !10

middle.block189:                                  ; preds = %vector.body196
  %cmp.n199 = icmp eq i64 %117, %n.vec194
  br i1 %cmp.n199, label %for.cond.cleanup14.1, label %for.body15.1.preheader

for.body15.1.preheader:                           ; preds = %middle.block189, %for.cond.cleanup14
  %j.0171.1.ph = phi i64 [ 0, %for.cond.cleanup14 ], [ %n.vec194, %middle.block189 ]
  br label %for.body15.1

for.body15.1:                                     ; preds = %for.body15.1.preheader, %for.body15.1
  %j.0171.1 = phi i64 [ %inc21.1, %for.body15.1 ], [ %j.0171.1.ph, %for.body15.1.preheader ]
  %arrayidx17.1 = getelementptr inbounds [12 x [16 x i16]], ptr %is_match, i64 0, i64 1, i64 %j.0171.1
  store i16 1024, ptr %arrayidx17.1, align 2
  %arrayidx19.1 = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long, i64 0, i64 1, i64 %j.0171.1
  store i16 1024, ptr %arrayidx19.1, align 2
  %inc21.1 = add nuw nsw i64 %j.0171.1, 1
  %cmp12.not.not.1 = icmp ult i64 %j.0171.1, %conv
  br i1 %cmp12.not.not.1, label %for.body15.1, label %for.cond.cleanup14.1, !llvm.loop !11

for.cond.cleanup14.1:                             ; preds = %for.body15.1, %middle.block189
  %arrayidx23.1 = getelementptr inbounds i8, ptr %pcoder, i64 27934
  store i16 1024, ptr %arrayidx23.1, align 2
  %arrayidx24.1 = getelementptr inbounds i8, ptr %pcoder, i64 27958
  store i16 1024, ptr %arrayidx24.1, align 2
  %arrayidx25.1 = getelementptr inbounds i8, ptr %pcoder, i64 27982
  store i16 1024, ptr %arrayidx25.1, align 2
  %arrayidx26.1 = getelementptr inbounds i8, ptr %pcoder, i64 28006
  store i16 1024, ptr %arrayidx26.1, align 2
  %127 = add nuw nsw i64 %conv, 1
  %min.iters.check202 = icmp ugt i32 %notmask, -32
  br i1 %min.iters.check202, label %for.body15.2.preheader, label %vector.ph203

vector.ph203:                                     ; preds = %for.cond.cleanup14.1
  %n.vec205 = and i64 %127, 224
  br label %vector.body207

vector.body207:                                   ; preds = %vector.body207, %vector.ph203
  %index208 = phi i64 [ 0, %vector.ph203 ], [ %index.next209, %vector.body207 ]
  %128 = getelementptr inbounds [12 x [16 x i16]], ptr %is_match, i64 0, i64 2, i64 %index208
  %129 = getelementptr inbounds i8, ptr %128, i64 16
  %130 = getelementptr inbounds i8, ptr %128, i64 32
  %131 = getelementptr inbounds i8, ptr %128, i64 48
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %128, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %129, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %130, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %131, align 2
  %132 = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long, i64 0, i64 2, i64 %index208
  %133 = getelementptr inbounds i8, ptr %132, i64 16
  %134 = getelementptr inbounds i8, ptr %132, i64 32
  %135 = getelementptr inbounds i8, ptr %132, i64 48
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %132, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %133, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %134, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %135, align 2
  %index.next209 = add nuw i64 %index208, 32
  %136 = icmp eq i64 %index.next209, %n.vec205
  br i1 %136, label %middle.block200, label %vector.body207, !llvm.loop !12

middle.block200:                                  ; preds = %vector.body207
  %cmp.n210 = icmp eq i64 %127, %n.vec205
  br i1 %cmp.n210, label %for.cond.cleanup14.2, label %for.body15.2.preheader

for.body15.2.preheader:                           ; preds = %middle.block200, %for.cond.cleanup14.1
  %j.0171.2.ph = phi i64 [ 0, %for.cond.cleanup14.1 ], [ %n.vec205, %middle.block200 ]
  br label %for.body15.2

for.body15.2:                                     ; preds = %for.body15.2.preheader, %for.body15.2
  %j.0171.2 = phi i64 [ %inc21.2, %for.body15.2 ], [ %j.0171.2.ph, %for.body15.2.preheader ]
  %arrayidx17.2 = getelementptr inbounds [12 x [16 x i16]], ptr %is_match, i64 0, i64 2, i64 %j.0171.2
  store i16 1024, ptr %arrayidx17.2, align 2
  %arrayidx19.2 = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long, i64 0, i64 2, i64 %j.0171.2
  store i16 1024, ptr %arrayidx19.2, align 2
  %inc21.2 = add nuw nsw i64 %j.0171.2, 1
  %cmp12.not.not.2 = icmp ult i64 %j.0171.2, %conv
  br i1 %cmp12.not.not.2, label %for.body15.2, label %for.cond.cleanup14.2, !llvm.loop !13

for.cond.cleanup14.2:                             ; preds = %for.body15.2, %middle.block200
  %arrayidx23.2 = getelementptr inbounds i8, ptr %pcoder, i64 27936
  store i16 1024, ptr %arrayidx23.2, align 2
  %arrayidx24.2 = getelementptr inbounds i8, ptr %pcoder, i64 27960
  store i16 1024, ptr %arrayidx24.2, align 2
  %arrayidx25.2 = getelementptr inbounds i8, ptr %pcoder, i64 27984
  store i16 1024, ptr %arrayidx25.2, align 2
  %arrayidx26.2 = getelementptr inbounds i8, ptr %pcoder, i64 28008
  store i16 1024, ptr %arrayidx26.2, align 2
  %137 = add nuw nsw i64 %conv, 1
  %min.iters.check213 = icmp ugt i32 %notmask, -32
  br i1 %min.iters.check213, label %for.body15.3.preheader, label %vector.ph214

vector.ph214:                                     ; preds = %for.cond.cleanup14.2
  %n.vec216 = and i64 %137, 224
  br label %vector.body218

vector.body218:                                   ; preds = %vector.body218, %vector.ph214
  %index219 = phi i64 [ 0, %vector.ph214 ], [ %index.next220, %vector.body218 ]
  %138 = getelementptr inbounds [12 x [16 x i16]], ptr %is_match, i64 0, i64 3, i64 %index219
  %139 = getelementptr inbounds i8, ptr %138, i64 16
  %140 = getelementptr inbounds i8, ptr %138, i64 32
  %141 = getelementptr inbounds i8, ptr %138, i64 48
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %138, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %139, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %140, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %141, align 2
  %142 = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long, i64 0, i64 3, i64 %index219
  %143 = getelementptr inbounds i8, ptr %142, i64 16
  %144 = getelementptr inbounds i8, ptr %142, i64 32
  %145 = getelementptr inbounds i8, ptr %142, i64 48
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %142, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %143, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %144, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %145, align 2
  %index.next220 = add nuw i64 %index219, 32
  %146 = icmp eq i64 %index.next220, %n.vec216
  br i1 %146, label %middle.block211, label %vector.body218, !llvm.loop !14

middle.block211:                                  ; preds = %vector.body218
  %cmp.n221 = icmp eq i64 %137, %n.vec216
  br i1 %cmp.n221, label %for.cond.cleanup14.3, label %for.body15.3.preheader

for.body15.3.preheader:                           ; preds = %middle.block211, %for.cond.cleanup14.2
  %j.0171.3.ph = phi i64 [ 0, %for.cond.cleanup14.2 ], [ %n.vec216, %middle.block211 ]
  br label %for.body15.3

for.body15.3:                                     ; preds = %for.body15.3.preheader, %for.body15.3
  %j.0171.3 = phi i64 [ %inc21.3, %for.body15.3 ], [ %j.0171.3.ph, %for.body15.3.preheader ]
  %arrayidx17.3 = getelementptr inbounds [12 x [16 x i16]], ptr %is_match, i64 0, i64 3, i64 %j.0171.3
  store i16 1024, ptr %arrayidx17.3, align 2
  %arrayidx19.3 = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long, i64 0, i64 3, i64 %j.0171.3
  store i16 1024, ptr %arrayidx19.3, align 2
  %inc21.3 = add nuw nsw i64 %j.0171.3, 1
  %cmp12.not.not.3 = icmp ult i64 %j.0171.3, %conv
  br i1 %cmp12.not.not.3, label %for.body15.3, label %for.cond.cleanup14.3, !llvm.loop !15

for.cond.cleanup14.3:                             ; preds = %for.body15.3, %middle.block211
  %arrayidx23.3 = getelementptr inbounds i8, ptr %pcoder, i64 27938
  store i16 1024, ptr %arrayidx23.3, align 2
  %arrayidx24.3 = getelementptr inbounds i8, ptr %pcoder, i64 27962
  store i16 1024, ptr %arrayidx24.3, align 2
  %arrayidx25.3 = getelementptr inbounds i8, ptr %pcoder, i64 27986
  store i16 1024, ptr %arrayidx25.3, align 2
  %arrayidx26.3 = getelementptr inbounds i8, ptr %pcoder, i64 28010
  store i16 1024, ptr %arrayidx26.3, align 2
  %147 = add nuw nsw i64 %conv, 1
  %min.iters.check224 = icmp ugt i32 %notmask, -32
  br i1 %min.iters.check224, label %for.body15.4.preheader, label %vector.ph225

vector.ph225:                                     ; preds = %for.cond.cleanup14.3
  %n.vec227 = and i64 %147, 224
  br label %vector.body229

vector.body229:                                   ; preds = %vector.body229, %vector.ph225
  %index230 = phi i64 [ 0, %vector.ph225 ], [ %index.next231, %vector.body229 ]
  %148 = getelementptr inbounds [12 x [16 x i16]], ptr %is_match, i64 0, i64 4, i64 %index230
  %149 = getelementptr inbounds i8, ptr %148, i64 16
  %150 = getelementptr inbounds i8, ptr %148, i64 32
  %151 = getelementptr inbounds i8, ptr %148, i64 48
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %148, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %149, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %150, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %151, align 2
  %152 = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long, i64 0, i64 4, i64 %index230
  %153 = getelementptr inbounds i8, ptr %152, i64 16
  %154 = getelementptr inbounds i8, ptr %152, i64 32
  %155 = getelementptr inbounds i8, ptr %152, i64 48
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %152, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %153, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %154, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %155, align 2
  %index.next231 = add nuw i64 %index230, 32
  %156 = icmp eq i64 %index.next231, %n.vec227
  br i1 %156, label %middle.block222, label %vector.body229, !llvm.loop !16

middle.block222:                                  ; preds = %vector.body229
  %cmp.n232 = icmp eq i64 %147, %n.vec227
  br i1 %cmp.n232, label %for.cond.cleanup14.4, label %for.body15.4.preheader

for.body15.4.preheader:                           ; preds = %middle.block222, %for.cond.cleanup14.3
  %j.0171.4.ph = phi i64 [ 0, %for.cond.cleanup14.3 ], [ %n.vec227, %middle.block222 ]
  br label %for.body15.4

for.body15.4:                                     ; preds = %for.body15.4.preheader, %for.body15.4
  %j.0171.4 = phi i64 [ %inc21.4, %for.body15.4 ], [ %j.0171.4.ph, %for.body15.4.preheader ]
  %arrayidx17.4 = getelementptr inbounds [12 x [16 x i16]], ptr %is_match, i64 0, i64 4, i64 %j.0171.4
  store i16 1024, ptr %arrayidx17.4, align 2
  %arrayidx19.4 = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long, i64 0, i64 4, i64 %j.0171.4
  store i16 1024, ptr %arrayidx19.4, align 2
  %inc21.4 = add nuw nsw i64 %j.0171.4, 1
  %cmp12.not.not.4 = icmp ult i64 %j.0171.4, %conv
  br i1 %cmp12.not.not.4, label %for.body15.4, label %for.cond.cleanup14.4, !llvm.loop !17

for.cond.cleanup14.4:                             ; preds = %for.body15.4, %middle.block222
  %arrayidx23.4 = getelementptr inbounds i8, ptr %pcoder, i64 27940
  store i16 1024, ptr %arrayidx23.4, align 2
  %arrayidx24.4 = getelementptr inbounds i8, ptr %pcoder, i64 27964
  store i16 1024, ptr %arrayidx24.4, align 2
  %arrayidx25.4 = getelementptr inbounds i8, ptr %pcoder, i64 27988
  store i16 1024, ptr %arrayidx25.4, align 2
  %arrayidx26.4 = getelementptr inbounds i8, ptr %pcoder, i64 28012
  store i16 1024, ptr %arrayidx26.4, align 2
  %157 = add nuw nsw i64 %conv, 1
  %min.iters.check235 = icmp ugt i32 %notmask, -32
  br i1 %min.iters.check235, label %for.body15.5.preheader, label %vector.ph236

vector.ph236:                                     ; preds = %for.cond.cleanup14.4
  %n.vec238 = and i64 %157, 224
  br label %vector.body240

vector.body240:                                   ; preds = %vector.body240, %vector.ph236
  %index241 = phi i64 [ 0, %vector.ph236 ], [ %index.next242, %vector.body240 ]
  %158 = getelementptr inbounds [12 x [16 x i16]], ptr %is_match, i64 0, i64 5, i64 %index241
  %159 = getelementptr inbounds i8, ptr %158, i64 16
  %160 = getelementptr inbounds i8, ptr %158, i64 32
  %161 = getelementptr inbounds i8, ptr %158, i64 48
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %158, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %159, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %160, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %161, align 2
  %162 = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long, i64 0, i64 5, i64 %index241
  %163 = getelementptr inbounds i8, ptr %162, i64 16
  %164 = getelementptr inbounds i8, ptr %162, i64 32
  %165 = getelementptr inbounds i8, ptr %162, i64 48
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %162, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %163, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %164, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %165, align 2
  %index.next242 = add nuw i64 %index241, 32
  %166 = icmp eq i64 %index.next242, %n.vec238
  br i1 %166, label %middle.block233, label %vector.body240, !llvm.loop !18

middle.block233:                                  ; preds = %vector.body240
  %cmp.n243 = icmp eq i64 %157, %n.vec238
  br i1 %cmp.n243, label %for.cond.cleanup14.5, label %for.body15.5.preheader

for.body15.5.preheader:                           ; preds = %middle.block233, %for.cond.cleanup14.4
  %j.0171.5.ph = phi i64 [ 0, %for.cond.cleanup14.4 ], [ %n.vec238, %middle.block233 ]
  br label %for.body15.5

for.body15.5:                                     ; preds = %for.body15.5.preheader, %for.body15.5
  %j.0171.5 = phi i64 [ %inc21.5, %for.body15.5 ], [ %j.0171.5.ph, %for.body15.5.preheader ]
  %arrayidx17.5 = getelementptr inbounds [12 x [16 x i16]], ptr %is_match, i64 0, i64 5, i64 %j.0171.5
  store i16 1024, ptr %arrayidx17.5, align 2
  %arrayidx19.5 = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long, i64 0, i64 5, i64 %j.0171.5
  store i16 1024, ptr %arrayidx19.5, align 2
  %inc21.5 = add nuw nsw i64 %j.0171.5, 1
  %cmp12.not.not.5 = icmp ult i64 %j.0171.5, %conv
  br i1 %cmp12.not.not.5, label %for.body15.5, label %for.cond.cleanup14.5, !llvm.loop !19

for.cond.cleanup14.5:                             ; preds = %for.body15.5, %middle.block233
  %arrayidx23.5 = getelementptr inbounds i8, ptr %pcoder, i64 27942
  store i16 1024, ptr %arrayidx23.5, align 2
  %arrayidx24.5 = getelementptr inbounds i8, ptr %pcoder, i64 27966
  store i16 1024, ptr %arrayidx24.5, align 2
  %arrayidx25.5 = getelementptr inbounds i8, ptr %pcoder, i64 27990
  store i16 1024, ptr %arrayidx25.5, align 2
  %arrayidx26.5 = getelementptr inbounds i8, ptr %pcoder, i64 28014
  store i16 1024, ptr %arrayidx26.5, align 2
  %167 = add nuw nsw i64 %conv, 1
  %min.iters.check246 = icmp ugt i32 %notmask, -32
  br i1 %min.iters.check246, label %for.body15.6.preheader, label %vector.ph247

vector.ph247:                                     ; preds = %for.cond.cleanup14.5
  %n.vec249 = and i64 %167, 224
  br label %vector.body251

vector.body251:                                   ; preds = %vector.body251, %vector.ph247
  %index252 = phi i64 [ 0, %vector.ph247 ], [ %index.next253, %vector.body251 ]
  %168 = getelementptr inbounds [12 x [16 x i16]], ptr %is_match, i64 0, i64 6, i64 %index252
  %169 = getelementptr inbounds i8, ptr %168, i64 16
  %170 = getelementptr inbounds i8, ptr %168, i64 32
  %171 = getelementptr inbounds i8, ptr %168, i64 48
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %168, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %169, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %170, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %171, align 2
  %172 = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long, i64 0, i64 6, i64 %index252
  %173 = getelementptr inbounds i8, ptr %172, i64 16
  %174 = getelementptr inbounds i8, ptr %172, i64 32
  %175 = getelementptr inbounds i8, ptr %172, i64 48
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %172, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %173, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %174, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %175, align 2
  %index.next253 = add nuw i64 %index252, 32
  %176 = icmp eq i64 %index.next253, %n.vec249
  br i1 %176, label %middle.block244, label %vector.body251, !llvm.loop !20

middle.block244:                                  ; preds = %vector.body251
  %cmp.n254 = icmp eq i64 %167, %n.vec249
  br i1 %cmp.n254, label %for.cond.cleanup14.6, label %for.body15.6.preheader

for.body15.6.preheader:                           ; preds = %middle.block244, %for.cond.cleanup14.5
  %j.0171.6.ph = phi i64 [ 0, %for.cond.cleanup14.5 ], [ %n.vec249, %middle.block244 ]
  br label %for.body15.6

for.body15.6:                                     ; preds = %for.body15.6.preheader, %for.body15.6
  %j.0171.6 = phi i64 [ %inc21.6, %for.body15.6 ], [ %j.0171.6.ph, %for.body15.6.preheader ]
  %arrayidx17.6 = getelementptr inbounds [12 x [16 x i16]], ptr %is_match, i64 0, i64 6, i64 %j.0171.6
  store i16 1024, ptr %arrayidx17.6, align 2
  %arrayidx19.6 = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long, i64 0, i64 6, i64 %j.0171.6
  store i16 1024, ptr %arrayidx19.6, align 2
  %inc21.6 = add nuw nsw i64 %j.0171.6, 1
  %cmp12.not.not.6 = icmp ult i64 %j.0171.6, %conv
  br i1 %cmp12.not.not.6, label %for.body15.6, label %for.cond.cleanup14.6, !llvm.loop !21

for.cond.cleanup14.6:                             ; preds = %for.body15.6, %middle.block244
  %arrayidx23.6 = getelementptr inbounds i8, ptr %pcoder, i64 27944
  store i16 1024, ptr %arrayidx23.6, align 2
  %arrayidx24.6 = getelementptr inbounds i8, ptr %pcoder, i64 27968
  store i16 1024, ptr %arrayidx24.6, align 2
  %arrayidx25.6 = getelementptr inbounds i8, ptr %pcoder, i64 27992
  store i16 1024, ptr %arrayidx25.6, align 2
  %arrayidx26.6 = getelementptr inbounds i8, ptr %pcoder, i64 28016
  store i16 1024, ptr %arrayidx26.6, align 2
  %177 = add nuw nsw i64 %conv, 1
  %min.iters.check257 = icmp ugt i32 %notmask, -32
  br i1 %min.iters.check257, label %for.body15.7.preheader, label %vector.ph258

vector.ph258:                                     ; preds = %for.cond.cleanup14.6
  %n.vec260 = and i64 %177, 224
  br label %vector.body262

vector.body262:                                   ; preds = %vector.body262, %vector.ph258
  %index263 = phi i64 [ 0, %vector.ph258 ], [ %index.next264, %vector.body262 ]
  %178 = getelementptr inbounds [12 x [16 x i16]], ptr %is_match, i64 0, i64 7, i64 %index263
  %179 = getelementptr inbounds i8, ptr %178, i64 16
  %180 = getelementptr inbounds i8, ptr %178, i64 32
  %181 = getelementptr inbounds i8, ptr %178, i64 48
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %178, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %179, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %180, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %181, align 2
  %182 = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long, i64 0, i64 7, i64 %index263
  %183 = getelementptr inbounds i8, ptr %182, i64 16
  %184 = getelementptr inbounds i8, ptr %182, i64 32
  %185 = getelementptr inbounds i8, ptr %182, i64 48
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %182, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %183, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %184, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %185, align 2
  %index.next264 = add nuw i64 %index263, 32
  %186 = icmp eq i64 %index.next264, %n.vec260
  br i1 %186, label %middle.block255, label %vector.body262, !llvm.loop !22

middle.block255:                                  ; preds = %vector.body262
  %cmp.n265 = icmp eq i64 %177, %n.vec260
  br i1 %cmp.n265, label %for.cond.cleanup14.7, label %for.body15.7.preheader

for.body15.7.preheader:                           ; preds = %middle.block255, %for.cond.cleanup14.6
  %j.0171.7.ph = phi i64 [ 0, %for.cond.cleanup14.6 ], [ %n.vec260, %middle.block255 ]
  br label %for.body15.7

for.body15.7:                                     ; preds = %for.body15.7.preheader, %for.body15.7
  %j.0171.7 = phi i64 [ %inc21.7, %for.body15.7 ], [ %j.0171.7.ph, %for.body15.7.preheader ]
  %arrayidx17.7 = getelementptr inbounds [12 x [16 x i16]], ptr %is_match, i64 0, i64 7, i64 %j.0171.7
  store i16 1024, ptr %arrayidx17.7, align 2
  %arrayidx19.7 = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long, i64 0, i64 7, i64 %j.0171.7
  store i16 1024, ptr %arrayidx19.7, align 2
  %inc21.7 = add nuw nsw i64 %j.0171.7, 1
  %cmp12.not.not.7 = icmp ult i64 %j.0171.7, %conv
  br i1 %cmp12.not.not.7, label %for.body15.7, label %for.cond.cleanup14.7, !llvm.loop !23

for.cond.cleanup14.7:                             ; preds = %for.body15.7, %middle.block255
  %arrayidx23.7 = getelementptr inbounds i8, ptr %pcoder, i64 27946
  store i16 1024, ptr %arrayidx23.7, align 2
  %arrayidx24.7 = getelementptr inbounds i8, ptr %pcoder, i64 27970
  store i16 1024, ptr %arrayidx24.7, align 2
  %arrayidx25.7 = getelementptr inbounds i8, ptr %pcoder, i64 27994
  store i16 1024, ptr %arrayidx25.7, align 2
  %arrayidx26.7 = getelementptr inbounds i8, ptr %pcoder, i64 28018
  store i16 1024, ptr %arrayidx26.7, align 2
  %187 = add nuw nsw i64 %conv, 1
  %min.iters.check268 = icmp ugt i32 %notmask, -32
  br i1 %min.iters.check268, label %for.body15.8.preheader, label %vector.ph269

vector.ph269:                                     ; preds = %for.cond.cleanup14.7
  %n.vec271 = and i64 %187, 224
  br label %vector.body273

vector.body273:                                   ; preds = %vector.body273, %vector.ph269
  %index274 = phi i64 [ 0, %vector.ph269 ], [ %index.next275, %vector.body273 ]
  %188 = getelementptr inbounds [12 x [16 x i16]], ptr %is_match, i64 0, i64 8, i64 %index274
  %189 = getelementptr inbounds i8, ptr %188, i64 16
  %190 = getelementptr inbounds i8, ptr %188, i64 32
  %191 = getelementptr inbounds i8, ptr %188, i64 48
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %188, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %189, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %190, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %191, align 2
  %192 = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long, i64 0, i64 8, i64 %index274
  %193 = getelementptr inbounds i8, ptr %192, i64 16
  %194 = getelementptr inbounds i8, ptr %192, i64 32
  %195 = getelementptr inbounds i8, ptr %192, i64 48
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %192, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %193, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %194, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %195, align 2
  %index.next275 = add nuw i64 %index274, 32
  %196 = icmp eq i64 %index.next275, %n.vec271
  br i1 %196, label %middle.block266, label %vector.body273, !llvm.loop !24

middle.block266:                                  ; preds = %vector.body273
  %cmp.n276 = icmp eq i64 %187, %n.vec271
  br i1 %cmp.n276, label %for.cond.cleanup14.8, label %for.body15.8.preheader

for.body15.8.preheader:                           ; preds = %middle.block266, %for.cond.cleanup14.7
  %j.0171.8.ph = phi i64 [ 0, %for.cond.cleanup14.7 ], [ %n.vec271, %middle.block266 ]
  br label %for.body15.8

for.body15.8:                                     ; preds = %for.body15.8.preheader, %for.body15.8
  %j.0171.8 = phi i64 [ %inc21.8, %for.body15.8 ], [ %j.0171.8.ph, %for.body15.8.preheader ]
  %arrayidx17.8 = getelementptr inbounds [12 x [16 x i16]], ptr %is_match, i64 0, i64 8, i64 %j.0171.8
  store i16 1024, ptr %arrayidx17.8, align 2
  %arrayidx19.8 = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long, i64 0, i64 8, i64 %j.0171.8
  store i16 1024, ptr %arrayidx19.8, align 2
  %inc21.8 = add nuw nsw i64 %j.0171.8, 1
  %cmp12.not.not.8 = icmp ult i64 %j.0171.8, %conv
  br i1 %cmp12.not.not.8, label %for.body15.8, label %for.cond.cleanup14.8, !llvm.loop !25

for.cond.cleanup14.8:                             ; preds = %for.body15.8, %middle.block266
  %arrayidx23.8 = getelementptr inbounds i8, ptr %pcoder, i64 27948
  store i16 1024, ptr %arrayidx23.8, align 2
  %arrayidx24.8 = getelementptr inbounds i8, ptr %pcoder, i64 27972
  store i16 1024, ptr %arrayidx24.8, align 2
  %arrayidx25.8 = getelementptr inbounds i8, ptr %pcoder, i64 27996
  store i16 1024, ptr %arrayidx25.8, align 2
  %arrayidx26.8 = getelementptr inbounds i8, ptr %pcoder, i64 28020
  store i16 1024, ptr %arrayidx26.8, align 2
  %197 = add nuw nsw i64 %conv, 1
  %min.iters.check279 = icmp ugt i32 %notmask, -32
  br i1 %min.iters.check279, label %for.body15.9.preheader, label %vector.ph280

vector.ph280:                                     ; preds = %for.cond.cleanup14.8
  %n.vec282 = and i64 %197, 224
  br label %vector.body284

vector.body284:                                   ; preds = %vector.body284, %vector.ph280
  %index285 = phi i64 [ 0, %vector.ph280 ], [ %index.next286, %vector.body284 ]
  %198 = getelementptr inbounds [12 x [16 x i16]], ptr %is_match, i64 0, i64 9, i64 %index285
  %199 = getelementptr inbounds i8, ptr %198, i64 16
  %200 = getelementptr inbounds i8, ptr %198, i64 32
  %201 = getelementptr inbounds i8, ptr %198, i64 48
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %198, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %199, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %200, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %201, align 2
  %202 = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long, i64 0, i64 9, i64 %index285
  %203 = getelementptr inbounds i8, ptr %202, i64 16
  %204 = getelementptr inbounds i8, ptr %202, i64 32
  %205 = getelementptr inbounds i8, ptr %202, i64 48
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %202, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %203, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %204, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %205, align 2
  %index.next286 = add nuw i64 %index285, 32
  %206 = icmp eq i64 %index.next286, %n.vec282
  br i1 %206, label %middle.block277, label %vector.body284, !llvm.loop !26

middle.block277:                                  ; preds = %vector.body284
  %cmp.n287 = icmp eq i64 %197, %n.vec282
  br i1 %cmp.n287, label %for.cond.cleanup14.9, label %for.body15.9.preheader

for.body15.9.preheader:                           ; preds = %middle.block277, %for.cond.cleanup14.8
  %j.0171.9.ph = phi i64 [ 0, %for.cond.cleanup14.8 ], [ %n.vec282, %middle.block277 ]
  br label %for.body15.9

for.body15.9:                                     ; preds = %for.body15.9.preheader, %for.body15.9
  %j.0171.9 = phi i64 [ %inc21.9, %for.body15.9 ], [ %j.0171.9.ph, %for.body15.9.preheader ]
  %arrayidx17.9 = getelementptr inbounds [12 x [16 x i16]], ptr %is_match, i64 0, i64 9, i64 %j.0171.9
  store i16 1024, ptr %arrayidx17.9, align 2
  %arrayidx19.9 = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long, i64 0, i64 9, i64 %j.0171.9
  store i16 1024, ptr %arrayidx19.9, align 2
  %inc21.9 = add nuw nsw i64 %j.0171.9, 1
  %cmp12.not.not.9 = icmp ult i64 %j.0171.9, %conv
  br i1 %cmp12.not.not.9, label %for.body15.9, label %for.cond.cleanup14.9, !llvm.loop !27

for.cond.cleanup14.9:                             ; preds = %for.body15.9, %middle.block277
  %arrayidx23.9 = getelementptr inbounds i8, ptr %pcoder, i64 27950
  store i16 1024, ptr %arrayidx23.9, align 2
  %arrayidx24.9 = getelementptr inbounds i8, ptr %pcoder, i64 27974
  store i16 1024, ptr %arrayidx24.9, align 2
  %arrayidx25.9 = getelementptr inbounds i8, ptr %pcoder, i64 27998
  store i16 1024, ptr %arrayidx25.9, align 2
  %arrayidx26.9 = getelementptr inbounds i8, ptr %pcoder, i64 28022
  store i16 1024, ptr %arrayidx26.9, align 2
  %207 = add nuw nsw i64 %conv, 1
  %min.iters.check290 = icmp ugt i32 %notmask, -32
  br i1 %min.iters.check290, label %for.body15.10.preheader, label %vector.ph291

vector.ph291:                                     ; preds = %for.cond.cleanup14.9
  %n.vec293 = and i64 %207, 224
  br label %vector.body295

vector.body295:                                   ; preds = %vector.body295, %vector.ph291
  %index296 = phi i64 [ 0, %vector.ph291 ], [ %index.next297, %vector.body295 ]
  %208 = getelementptr inbounds [12 x [16 x i16]], ptr %is_match, i64 0, i64 10, i64 %index296
  %209 = getelementptr inbounds i8, ptr %208, i64 16
  %210 = getelementptr inbounds i8, ptr %208, i64 32
  %211 = getelementptr inbounds i8, ptr %208, i64 48
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %208, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %209, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %210, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %211, align 2
  %212 = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long, i64 0, i64 10, i64 %index296
  %213 = getelementptr inbounds i8, ptr %212, i64 16
  %214 = getelementptr inbounds i8, ptr %212, i64 32
  %215 = getelementptr inbounds i8, ptr %212, i64 48
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %212, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %213, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %214, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %215, align 2
  %index.next297 = add nuw i64 %index296, 32
  %216 = icmp eq i64 %index.next297, %n.vec293
  br i1 %216, label %middle.block288, label %vector.body295, !llvm.loop !28

middle.block288:                                  ; preds = %vector.body295
  %cmp.n298 = icmp eq i64 %207, %n.vec293
  br i1 %cmp.n298, label %for.cond.cleanup14.10, label %for.body15.10.preheader

for.body15.10.preheader:                          ; preds = %middle.block288, %for.cond.cleanup14.9
  %j.0171.10.ph = phi i64 [ 0, %for.cond.cleanup14.9 ], [ %n.vec293, %middle.block288 ]
  br label %for.body15.10

for.body15.10:                                    ; preds = %for.body15.10.preheader, %for.body15.10
  %j.0171.10 = phi i64 [ %inc21.10, %for.body15.10 ], [ %j.0171.10.ph, %for.body15.10.preheader ]
  %arrayidx17.10 = getelementptr inbounds [12 x [16 x i16]], ptr %is_match, i64 0, i64 10, i64 %j.0171.10
  store i16 1024, ptr %arrayidx17.10, align 2
  %arrayidx19.10 = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long, i64 0, i64 10, i64 %j.0171.10
  store i16 1024, ptr %arrayidx19.10, align 2
  %inc21.10 = add nuw nsw i64 %j.0171.10, 1
  %cmp12.not.not.10 = icmp ult i64 %j.0171.10, %conv
  br i1 %cmp12.not.not.10, label %for.body15.10, label %for.cond.cleanup14.10, !llvm.loop !29

for.cond.cleanup14.10:                            ; preds = %for.body15.10, %middle.block288
  %arrayidx23.10 = getelementptr inbounds i8, ptr %pcoder, i64 27952
  store i16 1024, ptr %arrayidx23.10, align 2
  %arrayidx24.10 = getelementptr inbounds i8, ptr %pcoder, i64 27976
  store i16 1024, ptr %arrayidx24.10, align 2
  %arrayidx25.10 = getelementptr inbounds i8, ptr %pcoder, i64 28000
  store i16 1024, ptr %arrayidx25.10, align 2
  %arrayidx26.10 = getelementptr inbounds i8, ptr %pcoder, i64 28024
  store i16 1024, ptr %arrayidx26.10, align 2
  %217 = add nuw nsw i64 %conv, 1
  %min.iters.check301 = icmp ugt i32 %notmask, -32
  br i1 %min.iters.check301, label %for.body15.11.preheader, label %vector.ph302

vector.ph302:                                     ; preds = %for.cond.cleanup14.10
  %n.vec304 = and i64 %217, 224
  br label %vector.body306

vector.body306:                                   ; preds = %vector.body306, %vector.ph302
  %index307 = phi i64 [ 0, %vector.ph302 ], [ %index.next308, %vector.body306 ]
  %218 = getelementptr inbounds [12 x [16 x i16]], ptr %is_match, i64 0, i64 11, i64 %index307
  %219 = getelementptr inbounds i8, ptr %218, i64 16
  %220 = getelementptr inbounds i8, ptr %218, i64 32
  %221 = getelementptr inbounds i8, ptr %218, i64 48
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %218, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %219, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %220, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %221, align 2
  %222 = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long, i64 0, i64 11, i64 %index307
  %223 = getelementptr inbounds i8, ptr %222, i64 16
  %224 = getelementptr inbounds i8, ptr %222, i64 32
  %225 = getelementptr inbounds i8, ptr %222, i64 48
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %222, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %223, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %224, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %225, align 2
  %index.next308 = add nuw i64 %index307, 32
  %226 = icmp eq i64 %index.next308, %n.vec304
  br i1 %226, label %middle.block299, label %vector.body306, !llvm.loop !30

middle.block299:                                  ; preds = %vector.body306
  %cmp.n309 = icmp eq i64 %217, %n.vec304
  br i1 %cmp.n309, label %for.cond.cleanup14.11, label %for.body15.11.preheader

for.body15.11.preheader:                          ; preds = %middle.block299, %for.cond.cleanup14.10
  %j.0171.11.ph = phi i64 [ 0, %for.cond.cleanup14.10 ], [ %n.vec304, %middle.block299 ]
  br label %for.body15.11

for.body15.11:                                    ; preds = %for.body15.11.preheader, %for.body15.11
  %j.0171.11 = phi i64 [ %inc21.11, %for.body15.11 ], [ %j.0171.11.ph, %for.body15.11.preheader ]
  %arrayidx17.11 = getelementptr inbounds [12 x [16 x i16]], ptr %is_match, i64 0, i64 11, i64 %j.0171.11
  store i16 1024, ptr %arrayidx17.11, align 2
  %arrayidx19.11 = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long, i64 0, i64 11, i64 %j.0171.11
  store i16 1024, ptr %arrayidx19.11, align 2
  %inc21.11 = add nuw nsw i64 %j.0171.11, 1
  %cmp12.not.not.11 = icmp ult i64 %j.0171.11, %conv
  br i1 %cmp12.not.not.11, label %for.body15.11, label %for.cond.cleanup14.11, !llvm.loop !31

for.cond.cleanup14.11:                            ; preds = %for.body15.11, %middle.block299
  %arrayidx23.11 = getelementptr inbounds i8, ptr %pcoder, i64 27954
  store i16 1024, ptr %arrayidx23.11, align 2
  %arrayidx24.11 = getelementptr inbounds i8, ptr %pcoder, i64 27978
  store i16 1024, ptr %arrayidx24.11, align 2
  %arrayidx25.11 = getelementptr inbounds i8, ptr %pcoder, i64 28002
  store i16 1024, ptr %arrayidx25.11, align 2
  %arrayidx26.11 = getelementptr inbounds i8, ptr %pcoder, i64 28026
  store i16 1024, ptr %arrayidx26.11, align 2
  %pos_special = getelementptr inbounds i8, ptr %pcoder, i64 28924
  %227 = getelementptr inbounds i8, ptr %pcoder, i64 28940
  %228 = getelementptr inbounds i8, ptr %pcoder, i64 28956
  %229 = getelementptr inbounds i8, ptr %pcoder, i64 28972
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %pos_special, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %227, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %228, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %229, align 2
  %230 = getelementptr inbounds i8, ptr %pcoder, i64 28988
  %231 = getelementptr inbounds i8, ptr %pcoder, i64 29004
  %232 = getelementptr inbounds i8, ptr %pcoder, i64 29020
  %233 = getelementptr inbounds i8, ptr %pcoder, i64 29036
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %230, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %231, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %232, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %233, align 2
  %234 = getelementptr inbounds i8, ptr %pcoder, i64 29052
  %235 = getelementptr inbounds i8, ptr %pcoder, i64 29068
  %236 = getelementptr inbounds i8, ptr %pcoder, i64 29084
  %237 = getelementptr inbounds i8, ptr %pcoder, i64 29100
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %234, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %235, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %236, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %237, align 2
  %arrayidx36 = getelementptr inbounds i8, ptr %pcoder, i64 29116
  store i16 1024, ptr %arrayidx36, align 2
  %arrayidx36.1 = getelementptr inbounds i8, ptr %pcoder, i64 29118
  store i16 1024, ptr %arrayidx36.1, align 2
  %arrayidx36.2 = getelementptr inbounds i8, ptr %pcoder, i64 29120
  store i16 1024, ptr %arrayidx36.2, align 2
  %arrayidx36.3 = getelementptr inbounds i8, ptr %pcoder, i64 29122
  store i16 1024, ptr %arrayidx36.3, align 2
  %arrayidx36.4 = getelementptr inbounds i8, ptr %pcoder, i64 29124
  store i16 1024, ptr %arrayidx36.4, align 2
  %arrayidx36.5 = getelementptr inbounds i8, ptr %pcoder, i64 29126
  store i16 1024, ptr %arrayidx36.5, align 2
  %arrayidx36.6 = getelementptr inbounds i8, ptr %pcoder, i64 29128
  store i16 1024, ptr %arrayidx36.6, align 2
  %arrayidx36.7 = getelementptr inbounds i8, ptr %pcoder, i64 29130
  store i16 1024, ptr %arrayidx36.7, align 2
  %arrayidx36.8 = getelementptr inbounds i8, ptr %pcoder, i64 29132
  store i16 1024, ptr %arrayidx36.8, align 2
  %arrayidx36.9 = getelementptr inbounds i8, ptr %pcoder, i64 29134
  store i16 1024, ptr %arrayidx36.9, align 2
  %arrayidx36.10 = getelementptr inbounds i8, ptr %pcoder, i64 29136
  store i16 1024, ptr %arrayidx36.10, align 2
  %arrayidx36.11 = getelementptr inbounds i8, ptr %pcoder, i64 29138
  store i16 1024, ptr %arrayidx36.11, align 2
  %arrayidx36.12 = getelementptr inbounds i8, ptr %pcoder, i64 29140
  store i16 1024, ptr %arrayidx36.12, align 2
  %arrayidx36.13 = getelementptr inbounds i8, ptr %pcoder, i64 29142
  store i16 1024, ptr %arrayidx36.13, align 2
  %arrayidx36.14 = getelementptr inbounds i8, ptr %pcoder, i64 29144
  store i16 1024, ptr %arrayidx36.14, align 2
  %arrayidx36.15 = getelementptr inbounds i8, ptr %pcoder, i64 29146
  store i16 1024, ptr %arrayidx36.15, align 2
  %arrayidx36.16 = getelementptr inbounds i8, ptr %pcoder, i64 29148
  store i16 1024, ptr %arrayidx36.16, align 2
  %arrayidx36.17 = getelementptr inbounds i8, ptr %pcoder, i64 29150
  store i16 1024, ptr %arrayidx36.17, align 2
  %pos_slot = getelementptr inbounds i8, ptr %pcoder, i64 28412
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %pos_slot, align 2
  %238 = getelementptr inbounds i8, ptr %pcoder, i64 28428
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %238, align 2
  %239 = getelementptr inbounds i8, ptr %pcoder, i64 28444
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %239, align 2
  %240 = getelementptr inbounds i8, ptr %pcoder, i64 28460
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %240, align 2
  %241 = getelementptr inbounds i8, ptr %pcoder, i64 28476
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %241, align 2
  %242 = getelementptr inbounds i8, ptr %pcoder, i64 28492
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %242, align 2
  %243 = getelementptr inbounds i8, ptr %pcoder, i64 28508
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %243, align 2
  %244 = getelementptr inbounds i8, ptr %pcoder, i64 28524
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %244, align 2
  %245 = getelementptr inbounds i8, ptr %pcoder, i64 28540
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %245, align 2
  %246 = getelementptr inbounds i8, ptr %pcoder, i64 28556
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %246, align 2
  %247 = getelementptr inbounds i8, ptr %pcoder, i64 28572
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %247, align 2
  %248 = getelementptr inbounds i8, ptr %pcoder, i64 28588
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %248, align 2
  %249 = getelementptr inbounds i8, ptr %pcoder, i64 28604
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %249, align 2
  %250 = getelementptr inbounds i8, ptr %pcoder, i64 28620
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %250, align 2
  %251 = getelementptr inbounds i8, ptr %pcoder, i64 28636
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %251, align 2
  %252 = getelementptr inbounds i8, ptr %pcoder, i64 28652
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %252, align 2
  %253 = getelementptr inbounds i8, ptr %pcoder, i64 28668
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %253, align 2
  %254 = getelementptr inbounds i8, ptr %pcoder, i64 28684
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %254, align 2
  %255 = getelementptr inbounds i8, ptr %pcoder, i64 28700
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %255, align 2
  %256 = getelementptr inbounds i8, ptr %pcoder, i64 28716
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %256, align 2
  %257 = getelementptr inbounds i8, ptr %pcoder, i64 28732
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %257, align 2
  %258 = getelementptr inbounds i8, ptr %pcoder, i64 28748
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %258, align 2
  %259 = getelementptr inbounds i8, ptr %pcoder, i64 28764
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %259, align 2
  %260 = getelementptr inbounds i8, ptr %pcoder, i64 28780
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %260, align 2
  %261 = getelementptr inbounds i8, ptr %pcoder, i64 28796
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %261, align 2
  %262 = getelementptr inbounds i8, ptr %pcoder, i64 28812
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %262, align 2
  %263 = getelementptr inbounds i8, ptr %pcoder, i64 28828
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %263, align 2
  %264 = getelementptr inbounds i8, ptr %pcoder, i64 28844
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %264, align 2
  %265 = getelementptr inbounds i8, ptr %pcoder, i64 28860
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %265, align 2
  %266 = getelementptr inbounds i8, ptr %pcoder, i64 28876
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %266, align 2
  %267 = getelementptr inbounds i8, ptr %pcoder, i64 28892
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %267, align 2
  %268 = getelementptr inbounds i8, ptr %pcoder, i64 28908
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %268, align 2
  %pos_align = getelementptr inbounds i8, ptr %pcoder, i64 29152
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %pos_align, align 2
  %arrayidx66.8 = getelementptr inbounds i8, ptr %pcoder, i64 29168
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %arrayidx66.8, align 2
  %match_len_encoder = getelementptr inbounds i8, ptr %pcoder, i64 29184
  %269 = load i32, ptr %pb.i.i, align 4
  %shl71 = shl nuw i32 1, %269
  %fast_mode = getelementptr inbounds i8, ptr %pcoder, i64 2956
  %270 = load i8, ptr %fast_mode, align 4, !range !5, !noundef !6
  store i16 1024, ptr %match_len_encoder, align 4
  %choice2.i = getelementptr inbounds i8, ptr %pcoder, i64 29186
  store i16 1024, ptr %choice2.i, align 2
  %conv.i = zext i32 %shl71 to i64
  %low.i = getelementptr inbounds i8, ptr %pcoder, i64 29188
  %mid.i = getelementptr inbounds i8, ptr %pcoder, i64 29444
  %min.iters.check332 = icmp ult i32 %269, 2
  br i1 %min.iters.check332, label %for.cond2.preheader.i.preheader, label %vector.ph333

for.body15:                                       ; preds = %for.body15.preheader, %for.body15
  %j.0171 = phi i64 [ %inc21, %for.body15 ], [ %j.0171.ph, %for.body15.preheader ]
  %arrayidx17 = getelementptr inbounds [12 x [16 x i16]], ptr %is_match, i64 0, i64 0, i64 %j.0171
  store i16 1024, ptr %arrayidx17, align 2
  %arrayidx19 = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long, i64 0, i64 0, i64 %j.0171
  store i16 1024, ptr %arrayidx19, align 2
  %inc21 = add nuw nsw i64 %j.0171, 1
  %cmp12.not.not = icmp ult i64 %j.0171, %conv
  br i1 %cmp12.not.not, label %for.body15, label %for.cond.cleanup14, !llvm.loop !32

for.cond2.preheader.i.preheader:                  ; preds = %for.cond.cleanup14.11
  %xtraiter = and i64 %conv.i, 1
  %271 = icmp eq i32 %269, 0
  br i1 %271, label %for.cond24.preheader.i.loopexit.unr-lcssa, label %for.cond2.preheader.i

vector.ph333:                                     ; preds = %for.cond.cleanup14.11
  %n.vec335 = and i64 %conv.i, 4294967292
  br label %vector.body337

vector.body337:                                   ; preds = %vector.body337, %vector.ph333
  %index338 = phi i64 [ 0, %vector.ph333 ], [ %index.next339, %vector.body337 ]
  %272 = or disjoint i64 %index338, 1
  %273 = or disjoint i64 %index338, 2
  %274 = or disjoint i64 %index338, 3
  %275 = getelementptr inbounds [16 x [8 x i16]], ptr %low.i, i64 0, i64 %index338, i64 0
  %276 = getelementptr inbounds [16 x [8 x i16]], ptr %low.i, i64 0, i64 %272, i64 0
  %277 = getelementptr inbounds [16 x [8 x i16]], ptr %low.i, i64 0, i64 %273, i64 0
  %278 = getelementptr inbounds [16 x [8 x i16]], ptr %low.i, i64 0, i64 %274, i64 0
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %275, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %276, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %277, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %278, align 2
  %279 = getelementptr inbounds [16 x [8 x i16]], ptr %mid.i, i64 0, i64 %index338, i64 0
  %280 = getelementptr inbounds [16 x [8 x i16]], ptr %mid.i, i64 0, i64 %272, i64 0
  %281 = getelementptr inbounds [16 x [8 x i16]], ptr %mid.i, i64 0, i64 %273, i64 0
  %282 = getelementptr inbounds [16 x [8 x i16]], ptr %mid.i, i64 0, i64 %274, i64 0
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %279, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %280, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %281, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %282, align 2
  %index.next339 = add nuw i64 %index338, 4
  %283 = icmp eq i64 %index.next339, %n.vec335
  br i1 %283, label %vector.body345, label %vector.body337, !llvm.loop !33

for.cond2.preheader.i:                            ; preds = %for.cond2.preheader.i.preheader, %for.cond2.preheader.i
  %pos_state.065.i = phi i64 [ %inc21.i.1, %for.cond2.preheader.i ], [ 0, %for.cond2.preheader.i.preheader ]
  %niter = phi i64 [ %niter.next.1, %for.cond2.preheader.i ], [ 0, %for.cond2.preheader.i.preheader ]
  %arrayidx7.i = getelementptr inbounds [16 x [8 x i16]], ptr %low.i, i64 0, i64 %pos_state.065.i, i64 0
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %arrayidx7.i, align 2
  %arrayidx16.i = getelementptr inbounds [16 x [8 x i16]], ptr %mid.i, i64 0, i64 %pos_state.065.i, i64 0
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %arrayidx16.i, align 2
  %inc21.i = or disjoint i64 %pos_state.065.i, 1
  %arrayidx7.i.1 = getelementptr inbounds [16 x [8 x i16]], ptr %low.i, i64 0, i64 %inc21.i, i64 0
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %arrayidx7.i.1, align 2
  %arrayidx16.i.1 = getelementptr inbounds [16 x [8 x i16]], ptr %mid.i, i64 0, i64 %inc21.i, i64 0
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %arrayidx16.i.1, align 2
  %inc21.i.1 = add nuw nsw i64 %pos_state.065.i, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter, 0
  br i1 %niter.ncmp.1, label %for.cond24.preheader.i.loopexit.unr-lcssa, label %for.cond2.preheader.i, !llvm.loop !34

for.cond24.preheader.i.loopexit.unr-lcssa:        ; preds = %for.cond2.preheader.i, %for.cond2.preheader.i.preheader
  %pos_state.065.i.unr = phi i64 [ 0, %for.cond2.preheader.i.preheader ], [ %inc21.i.1, %for.cond2.preheader.i ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vector.body345, label %for.cond2.preheader.i.epil

for.cond2.preheader.i.epil:                       ; preds = %for.cond24.preheader.i.loopexit.unr-lcssa
  %arrayidx7.i.epil = getelementptr inbounds [16 x [8 x i16]], ptr %low.i, i64 0, i64 %pos_state.065.i.unr, i64 0
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %arrayidx7.i.epil, align 2
  %arrayidx16.i.epil = getelementptr inbounds [16 x [8 x i16]], ptr %mid.i, i64 0, i64 %pos_state.065.i.unr, i64 0
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %arrayidx16.i.epil, align 2
  br label %vector.body345

vector.body345:                                   ; preds = %for.cond24.preheader.i.loopexit.unr-lcssa, %for.cond2.preheader.i.epil, %vector.body337
  %high.i = getelementptr inbounds i8, ptr %pcoder, i64 29700
  %284 = getelementptr inbounds i8, ptr %pcoder, i64 29716
  %285 = getelementptr inbounds i8, ptr %pcoder, i64 29732
  %286 = getelementptr inbounds i8, ptr %pcoder, i64 29748
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %high.i, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %284, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %285, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %286, align 2
  %287 = getelementptr inbounds i8, ptr %pcoder, i64 29764
  %288 = getelementptr inbounds i8, ptr %pcoder, i64 29780
  %289 = getelementptr inbounds i8, ptr %pcoder, i64 29796
  %290 = getelementptr inbounds i8, ptr %pcoder, i64 29812
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %287, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %288, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %289, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %290, align 2
  %291 = getelementptr inbounds i8, ptr %pcoder, i64 29828
  %292 = getelementptr inbounds i8, ptr %pcoder, i64 29844
  %293 = getelementptr inbounds i8, ptr %pcoder, i64 29860
  %294 = getelementptr inbounds i8, ptr %pcoder, i64 29876
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %291, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %292, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %293, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %294, align 2
  %295 = getelementptr inbounds i8, ptr %pcoder, i64 29892
  %296 = getelementptr inbounds i8, ptr %pcoder, i64 29908
  %297 = getelementptr inbounds i8, ptr %pcoder, i64 29924
  %298 = getelementptr inbounds i8, ptr %pcoder, i64 29940
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %295, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %296, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %297, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %298, align 2
  %299 = getelementptr inbounds i8, ptr %pcoder, i64 29956
  %300 = getelementptr inbounds i8, ptr %pcoder, i64 29972
  %301 = getelementptr inbounds i8, ptr %pcoder, i64 29988
  %302 = getelementptr inbounds i8, ptr %pcoder, i64 30004
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %299, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %300, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %301, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %302, align 2
  %303 = getelementptr inbounds i8, ptr %pcoder, i64 30020
  %304 = getelementptr inbounds i8, ptr %pcoder, i64 30036
  %305 = getelementptr inbounds i8, ptr %pcoder, i64 30052
  %306 = getelementptr inbounds i8, ptr %pcoder, i64 30068
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %303, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %304, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %305, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %306, align 2
  %307 = getelementptr inbounds i8, ptr %pcoder, i64 30084
  %308 = getelementptr inbounds i8, ptr %pcoder, i64 30100
  %309 = getelementptr inbounds i8, ptr %pcoder, i64 30116
  %310 = getelementptr inbounds i8, ptr %pcoder, i64 30132
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %307, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %308, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %309, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %310, align 2
  %311 = getelementptr inbounds i8, ptr %pcoder, i64 30148
  %312 = getelementptr inbounds i8, ptr %pcoder, i64 30164
  %313 = getelementptr inbounds i8, ptr %pcoder, i64 30180
  %314 = getelementptr inbounds i8, ptr %pcoder, i64 30196
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %311, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %312, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %313, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %314, align 2
  %loadedv = trunc nuw i8 %270 to i1
  br i1 %loadedv, label %length_encoder_reset.exit, label %for.body40.i

for.body40.i:                                     ; preds = %vector.body345, %for.body40.i
  %pos_state34.068.i = phi i64 [ %inc43.i, %for.body40.i ], [ 0, %vector.body345 ]
  %conv41.i = trunc nuw i64 %pos_state34.068.i to i32
  tail call fastcc void @length_update_prices(ptr noundef nonnull %match_len_encoder, i32 noundef %conv41.i)
  %inc43.i = add nuw nsw i64 %pos_state34.068.i, 1
  %exitcond73.not.i = icmp eq i64 %inc43.i, %conv.i
  br i1 %exitcond73.not.i, label %length_encoder_reset.exit.loopexit, label %for.body40.i

length_encoder_reset.exit.loopexit:               ; preds = %for.body40.i
  %.pre = load i8, ptr %fast_mode, align 4, !range !5
  br label %length_encoder_reset.exit

length_encoder_reset.exit:                        ; preds = %length_encoder_reset.exit.loopexit, %vector.body345
  %315 = phi i8 [ %.pre, %length_encoder_reset.exit.loopexit ], [ %270, %vector.body345 ]
  %rep_len_encoder = getelementptr inbounds i8, ptr %pcoder, i64 47688
  %316 = load i32, ptr %pb.i.i, align 4
  %shl73 = shl nuw i32 1, %316
  store i16 1024, ptr %rep_len_encoder, align 4
  %choice2.i131 = getelementptr inbounds i8, ptr %pcoder, i64 47690
  store i16 1024, ptr %choice2.i131, align 2
  %conv.i132 = zext i32 %shl73 to i64
  %low.i133 = getelementptr inbounds i8, ptr %pcoder, i64 47692
  %mid.i134 = getelementptr inbounds i8, ptr %pcoder, i64 47948
  %min.iters.check350 = icmp ult i32 %316, 2
  br i1 %min.iters.check350, label %for.cond2.preheader.i135.preheader, label %vector.ph351

for.cond2.preheader.i135.preheader:               ; preds = %length_encoder_reset.exit
  %xtraiter368 = and i64 %conv.i132, 1
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %for.cond24.preheader.i155.loopexit.unr-lcssa, label %for.cond2.preheader.i135

vector.ph351:                                     ; preds = %length_encoder_reset.exit
  %n.vec353 = and i64 %conv.i132, 4294967292
  br label %vector.body355

vector.body355:                                   ; preds = %vector.body355, %vector.ph351
  %index356 = phi i64 [ 0, %vector.ph351 ], [ %index.next357, %vector.body355 ]
  %318 = or disjoint i64 %index356, 1
  %319 = or disjoint i64 %index356, 2
  %320 = or disjoint i64 %index356, 3
  %321 = getelementptr inbounds [16 x [8 x i16]], ptr %low.i133, i64 0, i64 %index356, i64 0
  %322 = getelementptr inbounds [16 x [8 x i16]], ptr %low.i133, i64 0, i64 %318, i64 0
  %323 = getelementptr inbounds [16 x [8 x i16]], ptr %low.i133, i64 0, i64 %319, i64 0
  %324 = getelementptr inbounds [16 x [8 x i16]], ptr %low.i133, i64 0, i64 %320, i64 0
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %321, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %322, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %323, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %324, align 2
  %325 = getelementptr inbounds [16 x [8 x i16]], ptr %mid.i134, i64 0, i64 %index356, i64 0
  %326 = getelementptr inbounds [16 x [8 x i16]], ptr %mid.i134, i64 0, i64 %318, i64 0
  %327 = getelementptr inbounds [16 x [8 x i16]], ptr %mid.i134, i64 0, i64 %319, i64 0
  %328 = getelementptr inbounds [16 x [8 x i16]], ptr %mid.i134, i64 0, i64 %320, i64 0
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %325, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %326, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %327, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %328, align 2
  %index.next357 = add nuw i64 %index356, 4
  %329 = icmp eq i64 %index.next357, %n.vec353
  br i1 %329, label %vector.body363, label %vector.body355, !llvm.loop !35

for.cond2.preheader.i135:                         ; preds = %for.cond2.preheader.i135.preheader, %for.cond2.preheader.i135
  %pos_state.065.i136 = phi i64 [ %inc21.i153.1, %for.cond2.preheader.i135 ], [ 0, %for.cond2.preheader.i135.preheader ]
  %niter371 = phi i64 [ %niter371.next.1, %for.cond2.preheader.i135 ], [ 0, %for.cond2.preheader.i135.preheader ]
  %arrayidx7.i137 = getelementptr inbounds [16 x [8 x i16]], ptr %low.i133, i64 0, i64 %pos_state.065.i136, i64 0
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %arrayidx7.i137, align 2
  %arrayidx16.i145 = getelementptr inbounds [16 x [8 x i16]], ptr %mid.i134, i64 0, i64 %pos_state.065.i136, i64 0
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %arrayidx16.i145, align 2
  %inc21.i153 = or disjoint i64 %pos_state.065.i136, 1
  %arrayidx7.i137.1 = getelementptr inbounds [16 x [8 x i16]], ptr %low.i133, i64 0, i64 %inc21.i153, i64 0
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %arrayidx7.i137.1, align 2
  %arrayidx16.i145.1 = getelementptr inbounds [16 x [8 x i16]], ptr %mid.i134, i64 0, i64 %inc21.i153, i64 0
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %arrayidx16.i145.1, align 2
  %inc21.i153.1 = add nuw nsw i64 %pos_state.065.i136, 2
  %niter371.next.1 = add i64 %niter371, 2
  %niter371.ncmp.1 = icmp eq i64 %niter371, 0
  br i1 %niter371.ncmp.1, label %for.cond24.preheader.i155.loopexit.unr-lcssa, label %for.cond2.preheader.i135, !llvm.loop !36

for.cond24.preheader.i155.loopexit.unr-lcssa:     ; preds = %for.cond2.preheader.i135, %for.cond2.preheader.i135.preheader
  %pos_state.065.i136.unr = phi i64 [ 0, %for.cond2.preheader.i135.preheader ], [ %inc21.i153.1, %for.cond2.preheader.i135 ]
  %lcmp.mod369.not = icmp eq i64 %xtraiter368, 0
  br i1 %lcmp.mod369.not, label %vector.body363, label %for.cond2.preheader.i135.epil

for.cond2.preheader.i135.epil:                    ; preds = %for.cond24.preheader.i155.loopexit.unr-lcssa
  %arrayidx7.i137.epil = getelementptr inbounds [16 x [8 x i16]], ptr %low.i133, i64 0, i64 %pos_state.065.i136.unr, i64 0
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %arrayidx7.i137.epil, align 2
  %arrayidx16.i145.epil = getelementptr inbounds [16 x [8 x i16]], ptr %mid.i134, i64 0, i64 %pos_state.065.i136.unr, i64 0
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %arrayidx16.i145.epil, align 2
  br label %vector.body363

vector.body363:                                   ; preds = %for.cond24.preheader.i155.loopexit.unr-lcssa, %for.cond2.preheader.i135.epil, %vector.body355
  %high.i156 = getelementptr inbounds i8, ptr %pcoder, i64 48204
  %330 = getelementptr inbounds i8, ptr %pcoder, i64 48220
  %331 = getelementptr inbounds i8, ptr %pcoder, i64 48236
  %332 = getelementptr inbounds i8, ptr %pcoder, i64 48252
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %high.i156, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %330, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %331, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %332, align 2
  %333 = getelementptr inbounds i8, ptr %pcoder, i64 48268
  %334 = getelementptr inbounds i8, ptr %pcoder, i64 48284
  %335 = getelementptr inbounds i8, ptr %pcoder, i64 48300
  %336 = getelementptr inbounds i8, ptr %pcoder, i64 48316
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %333, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %334, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %335, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %336, align 2
  %337 = getelementptr inbounds i8, ptr %pcoder, i64 48332
  %338 = getelementptr inbounds i8, ptr %pcoder, i64 48348
  %339 = getelementptr inbounds i8, ptr %pcoder, i64 48364
  %340 = getelementptr inbounds i8, ptr %pcoder, i64 48380
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %337, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %338, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %339, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %340, align 2
  %341 = getelementptr inbounds i8, ptr %pcoder, i64 48396
  %342 = getelementptr inbounds i8, ptr %pcoder, i64 48412
  %343 = getelementptr inbounds i8, ptr %pcoder, i64 48428
  %344 = getelementptr inbounds i8, ptr %pcoder, i64 48444
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %341, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %342, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %343, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %344, align 2
  %345 = getelementptr inbounds i8, ptr %pcoder, i64 48460
  %346 = getelementptr inbounds i8, ptr %pcoder, i64 48476
  %347 = getelementptr inbounds i8, ptr %pcoder, i64 48492
  %348 = getelementptr inbounds i8, ptr %pcoder, i64 48508
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %345, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %346, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %347, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %348, align 2
  %349 = getelementptr inbounds i8, ptr %pcoder, i64 48524
  %350 = getelementptr inbounds i8, ptr %pcoder, i64 48540
  %351 = getelementptr inbounds i8, ptr %pcoder, i64 48556
  %352 = getelementptr inbounds i8, ptr %pcoder, i64 48572
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %349, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %350, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %351, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %352, align 2
  %353 = getelementptr inbounds i8, ptr %pcoder, i64 48588
  %354 = getelementptr inbounds i8, ptr %pcoder, i64 48604
  %355 = getelementptr inbounds i8, ptr %pcoder, i64 48620
  %356 = getelementptr inbounds i8, ptr %pcoder, i64 48636
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %353, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %354, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %355, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %356, align 2
  %357 = getelementptr inbounds i8, ptr %pcoder, i64 48652
  %358 = getelementptr inbounds i8, ptr %pcoder, i64 48668
  %359 = getelementptr inbounds i8, ptr %pcoder, i64 48684
  %360 = getelementptr inbounds i8, ptr %pcoder, i64 48700
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %357, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %358, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %359, align 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %360, align 2
  %loadedv75 = trunc nuw i8 %315 to i1
  br i1 %loadedv75, label %length_encoder_reset.exit168, label %for.body40.i163

for.body40.i163:                                  ; preds = %vector.body363, %for.body40.i163
  %pos_state34.068.i164 = phi i64 [ %inc43.i166, %for.body40.i163 ], [ 0, %vector.body363 ]
  %conv41.i165 = trunc nuw i64 %pos_state34.068.i164 to i32
  tail call fastcc void @length_update_prices(ptr noundef nonnull %rep_len_encoder, i32 noundef %conv41.i165)
  %inc43.i166 = add nuw nsw i64 %pos_state34.068.i164, 1
  %exitcond73.not.i167 = icmp eq i64 %inc43.i166, %conv.i132
  br i1 %exitcond73.not.i167, label %length_encoder_reset.exit168, label %for.body40.i163

length_encoder_reset.exit168:                     ; preds = %for.body40.i163, %vector.body363
  %match_price_count = getelementptr inbounds i8, ptr %pcoder, i64 69268
  store i32 2147483647, ptr %match_price_count, align 4
  %align_price_count = getelementptr inbounds i8, ptr %pcoder, i64 69336
  store i32 2147483647, ptr %align_price_count, align 8
  %opts_end_index = getelementptr inbounds i8, ptr %pcoder, i64 69340
  store i32 0, ptr %opts_end_index, align 4
  %opts_current_index = getelementptr inbounds i8, ptr %pcoder, i64 69344
  store i32 0, ptr %opts_current_index, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %land.lhs.true.i.i, %is_lclppb_valid.exit.i, %land.lhs.true.i, %is_options_valid.exit, %length_encoder_reset.exit168
  %retval.0 = phi i32 [ 0, %length_encoder_reset.exit168 ], [ 8, %is_options_valid.exit ], [ 8, %land.lhs.true.i ], [ 8, %is_lclppb_valid.exit.i ], [ 8, %land.lhs.true.i.i ], [ 8, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 9) i32 @lzma_lzma_encoder_create(ptr nocapture noundef %coder_ptr, ptr noundef %allocator, ptr nocapture noundef readonly %options, ptr nocapture noundef writeonly %lz_options) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %coder_ptr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call ptr @lzma_alloc(i64 noundef 249576, ptr noundef %allocator) #10
  store ptr %call, ptr %coder_ptr, align 8
  %cmp1 = icmp eq ptr %call, null
  br i1 %cmp1, label %return, label %if.end3

if.end3:                                          ; preds = %if.then, %entry
  %1 = phi ptr [ %call, %if.then ], [ %0, %entry ]
  %mode = getelementptr inbounds i8, ptr %options, i64 32
  %2 = load i32, ptr %mode, align 8
  switch i32 %2, label %return [
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
  ]

sw.bb:                                            ; preds = %if.end3
  %fast_mode = getelementptr inbounds i8, ptr %1, i64 2956
  store i8 1, ptr %fast_mode, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end3
  %fast_mode5 = getelementptr inbounds i8, ptr %1, i64 2956
  store i8 0, ptr %fast_mode5, align 4
  %3 = load i32, ptr %options, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %sw.bb4
  %log_size.0 = phi i32 [ 0, %sw.bb4 ], [ %inc, %while.cond ]
  %shl = shl nuw i32 1, %log_size.0
  %cmp6 = icmp ult i32 %shl, %3
  %inc = add i32 %log_size.0, 1
  br i1 %cmp6, label %while.cond, label %while.end

while.end:                                        ; preds = %while.cond
  %mul = shl i32 %log_size.0, 1
  %dist_table_size = getelementptr inbounds i8, ptr %1, i64 69264
  store i32 %mul, ptr %dist_table_size, align 8
  %nice_len = getelementptr inbounds i8, ptr %options, i64 36
  %4 = load i32, ptr %nice_len, align 4
  %sub = add i32 %4, -1
  %table_size = getelementptr inbounds i8, ptr %1, i64 47620
  store i32 %sub, ptr %table_size, align 4
  %5 = load i32, ptr %nice_len, align 4
  %sub9 = add i32 %5, -1
  %table_size10 = getelementptr inbounds i8, ptr %1, i64 66124
  store i32 %sub9, ptr %table_size10, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.end, %sw.bb
  %preset_dict = getelementptr inbounds i8, ptr %options, i64 8
  %6 = load ptr, ptr %preset_dict, align 8
  %cmp11.not = icmp eq ptr %6, null
  br i1 %cmp11.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %sw.epilog
  %preset_dict_size = getelementptr inbounds i8, ptr %options, i64 16
  %7 = load i32, ptr %preset_dict_size, align 8
  %cmp12 = icmp ne i32 %7, 0
  %8 = zext i1 %cmp12 to i8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.epilog
  %storedv = phi i8 [ 0, %sw.epilog ], [ %8, %land.rhs ]
  %is_initialized = getelementptr inbounds i8, ptr %1, i64 2957
  store i8 %storedv, ptr %is_initialized, align 1
  %is_flushed = getelementptr inbounds i8, ptr %1, i64 2958
  store i8 0, ptr %is_flushed, align 2
  store i64 4096, ptr %lz_options, align 8
  %9 = load i32, ptr %options, align 8
  %conv.i = zext i32 %9 to i64
  %dict_size1.i = getelementptr inbounds i8, ptr %lz_options, i64 8
  store i64 %conv.i, ptr %dict_size1.i, align 8
  %after_size.i = getelementptr inbounds i8, ptr %lz_options, i64 16
  store i64 4097, ptr %after_size.i, align 8
  %match_len_max.i = getelementptr inbounds i8, ptr %lz_options, i64 24
  store i64 273, ptr %match_len_max.i, align 8
  %nice_len.i = getelementptr inbounds i8, ptr %options, i64 36
  %10 = load i32, ptr %nice_len.i, align 4
  %conv2.i = zext i32 %10 to i64
  %nice_len3.i = getelementptr inbounds i8, ptr %lz_options, i64 32
  store i64 %conv2.i, ptr %nice_len3.i, align 8
  %mf.i = getelementptr inbounds i8, ptr %options, i64 40
  %11 = load i32, ptr %mf.i, align 8
  %match_finder.i = getelementptr inbounds i8, ptr %lz_options, i64 40
  store i32 %11, ptr %match_finder.i, align 8
  %depth.i = getelementptr inbounds i8, ptr %options, i64 44
  %12 = load i32, ptr %depth.i, align 4
  %depth4.i = getelementptr inbounds i8, ptr %lz_options, i64 44
  store i32 %12, ptr %depth4.i, align 4
  %13 = load ptr, ptr %preset_dict, align 8
  %preset_dict5.i = getelementptr inbounds i8, ptr %lz_options, i64 48
  store ptr %13, ptr %preset_dict5.i, align 8
  %preset_dict_size.i = getelementptr inbounds i8, ptr %options, i64 16
  %14 = load i32, ptr %preset_dict_size.i, align 8
  %preset_dict_size6.i = getelementptr inbounds i8, ptr %lz_options, i64 56
  store i32 %14, ptr %preset_dict_size6.i, align 8
  %call13 = tail call i32 @lzma_lzma_encoder_reset(ptr noundef nonnull %1, ptr noundef nonnull %options)
  br label %return

return:                                           ; preds = %land.end, %if.end3, %if.then
  %retval.1 = phi i32 [ 5, %if.then ], [ %call13, %land.end ], [ 8, %if.end3 ]
  ret i32 %retval.1
}

declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_lzma_encoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @lzma_lz_encoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters, ptr noundef nonnull @lzma_encoder_init) #10
  ret i32 %call
}

declare i32 @lzma_lz_encoder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal range(i32 0, 9) i32 @lzma_encoder_init(ptr nocapture noundef %lz, ptr noundef %allocator, ptr nocapture noundef readonly %options, ptr nocapture noundef writeonly %lz_options) #0 {
entry:
  %code = getelementptr inbounds i8, ptr %lz, i64 8
  store ptr @lzma_encode, ptr %code, align 8
  %call = tail call i32 @lzma_lzma_encoder_create(ptr noundef %lz, ptr noundef %allocator, ptr noundef %options, ptr noundef %lz_options)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 249576, 249575) i64 @lzma_lzma_encoder_memusage(ptr nocapture noundef readonly %options) local_unnamed_addr #0 {
entry:
  %lz_options = alloca %struct.lzma_lz_options, align 8
  %lc.i.i = getelementptr inbounds i8, ptr %options, i64 20
  %0 = load i32, ptr %lc.i.i, align 4
  %cmp.i.i = icmp ult i32 %0, 5
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %return

land.lhs.true.i.i:                                ; preds = %entry
  %lp.i.i = getelementptr inbounds i8, ptr %options, i64 24
  %1 = load i32, ptr %lp.i.i, align 8
  %cmp1.i.i = icmp ult i32 %1, 5
  %add.i.i = add nuw nsw i32 %1, %0
  %cmp5.i.i = icmp ult i32 %add.i.i, 5
  %or.cond.i.i = select i1 %cmp1.i.i, i1 %cmp5.i.i, i1 false
  br i1 %or.cond.i.i, label %is_lclppb_valid.exit.i, label %return

is_lclppb_valid.exit.i:                           ; preds = %land.lhs.true.i.i
  %pb.i.i = getelementptr inbounds i8, ptr %options, i64 28
  %2 = load i32, ptr %pb.i.i, align 4
  %cmp6.i.i = icmp ult i32 %2, 5
  br i1 %cmp6.i.i, label %land.lhs.true.i, label %return

land.lhs.true.i:                                  ; preds = %is_lclppb_valid.exit.i
  %nice_len.i = getelementptr inbounds i8, ptr %options, i64 36
  %3 = load i32, ptr %nice_len.i, align 4
  %4 = add i32 %3, -2
  %or.cond.i = icmp ult i32 %4, 272
  br i1 %or.cond.i, label %is_options_valid.exit, label %return

is_options_valid.exit:                            ; preds = %land.lhs.true.i
  %mode.i = getelementptr inbounds i8, ptr %options, i64 32
  %5 = load i32, ptr %mode.i, align 8
  %6 = add i32 %5, -1
  %spec.select.i = icmp ult i32 %6, 2
  br i1 %spec.select.i, label %if.end, label %return

if.end:                                           ; preds = %is_options_valid.exit
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %lz_options) #10
  store i64 4096, ptr %lz_options, align 8
  %7 = load i32, ptr %options, align 8
  %conv.i = zext i32 %7 to i64
  %dict_size1.i = getelementptr inbounds i8, ptr %lz_options, i64 8
  store i64 %conv.i, ptr %dict_size1.i, align 8
  %after_size.i = getelementptr inbounds i8, ptr %lz_options, i64 16
  store i64 4097, ptr %after_size.i, align 8
  %match_len_max.i = getelementptr inbounds i8, ptr %lz_options, i64 24
  store i64 273, ptr %match_len_max.i, align 8
  %conv2.i = zext nneg i32 %3 to i64
  %nice_len3.i = getelementptr inbounds i8, ptr %lz_options, i64 32
  store i64 %conv2.i, ptr %nice_len3.i, align 8
  %mf.i = getelementptr inbounds i8, ptr %options, i64 40
  %match_finder.i = getelementptr inbounds i8, ptr %lz_options, i64 40
  %8 = load <2 x i32>, ptr %mf.i, align 8
  store <2 x i32> %8, ptr %match_finder.i, align 8
  %preset_dict.i = getelementptr inbounds i8, ptr %options, i64 8
  %9 = load ptr, ptr %preset_dict.i, align 8
  %preset_dict5.i = getelementptr inbounds i8, ptr %lz_options, i64 48
  store ptr %9, ptr %preset_dict5.i, align 8
  %preset_dict_size.i = getelementptr inbounds i8, ptr %options, i64 16
  %10 = load i32, ptr %preset_dict_size.i, align 8
  %preset_dict_size6.i = getelementptr inbounds i8, ptr %lz_options, i64 56
  store i32 %10, ptr %preset_dict_size6.i, align 8
  %call1 = call i64 @lzma_lz_encoder_memusage(ptr noundef nonnull %lz_options) #10
  %cmp = icmp eq i64 %call1, -1
  %add = add i64 %call1, 249576
  %retval.0 = select i1 %cmp, i64 -1, i64 %add
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %lz_options) #10
  br label %return

return:                                           ; preds = %entry, %land.lhs.true.i.i, %is_lclppb_valid.exit.i, %land.lhs.true.i, %is_options_valid.exit, %if.end
  %retval.1 = phi i64 [ %retval.0, %if.end ], [ -1, %is_options_valid.exit ], [ -1, %land.lhs.true.i ], [ -1, %is_lclppb_valid.exit.i ], [ -1, %land.lhs.true.i.i ], [ -1, %entry ]
  ret i64 %retval.1
}

declare i64 @lzma_lz_encoder_memusage(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i1 @lzma_lzma_lclppb_encode(ptr nocapture noundef readonly %options, ptr nocapture noundef writeonly %byte) local_unnamed_addr #5 {
entry:
  %lc.i = getelementptr inbounds i8, ptr %options, i64 20
  %0 = load i32, ptr %lc.i, align 4
  %cmp.i = icmp ult i32 %0, 5
  br i1 %cmp.i, label %land.lhs.true.i, label %return

land.lhs.true.i:                                  ; preds = %entry
  %lp.i = getelementptr inbounds i8, ptr %options, i64 24
  %1 = load i32, ptr %lp.i, align 8
  %cmp1.i = icmp ult i32 %1, 5
  %add.i = add nuw nsw i32 %1, %0
  %cmp5.i = icmp ult i32 %add.i, 5
  %or.cond.i = select i1 %cmp1.i, i1 %cmp5.i, i1 false
  br i1 %or.cond.i, label %is_lclppb_valid.exit, label %return

is_lclppb_valid.exit:                             ; preds = %land.lhs.true.i
  %pb.i = getelementptr inbounds i8, ptr %options, i64 28
  %2 = load i32, ptr %pb.i, align 4
  %cmp6.i = icmp ult i32 %2, 5
  br i1 %cmp6.i, label %if.end, label %return

if.end:                                           ; preds = %is_lclppb_valid.exit
  %mul = mul nuw nsw i32 %2, 5
  %add = add nuw nsw i32 %mul, %1
  %mul1 = mul nuw nsw i32 %add, 9
  %add2 = add nuw nsw i32 %mul1, %0
  %conv = trunc i32 %add2 to i8
  store i8 %conv, ptr %byte, align 1
  br label %return

return:                                           ; preds = %entry, %land.lhs.true.i, %is_lclppb_valid.exit, %if.end
  %retval.0 = phi i1 [ true, %is_lclppb_valid.exit ], [ false, %if.end ], [ true, %land.lhs.true.i ], [ true, %entry ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 12) i32 @lzma_lzma_props_encode(ptr nocapture noundef readonly %options, ptr nocapture noundef writeonly %out) local_unnamed_addr #5 {
entry:
  %lc.i.i = getelementptr inbounds i8, ptr %options, i64 20
  %0 = load i32, ptr %lc.i.i, align 4
  %cmp.i.i = icmp ult i32 %0, 5
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %cleanup

land.lhs.true.i.i:                                ; preds = %entry
  %lp.i.i = getelementptr inbounds i8, ptr %options, i64 24
  %1 = load i32, ptr %lp.i.i, align 8
  %cmp1.i.i = icmp ult i32 %1, 5
  %add.i.i = add nuw nsw i32 %1, %0
  %cmp5.i.i = icmp ult i32 %add.i.i, 5
  %or.cond.i.i = select i1 %cmp1.i.i, i1 %cmp5.i.i, i1 false
  br i1 %or.cond.i.i, label %is_lclppb_valid.exit.i, label %cleanup

is_lclppb_valid.exit.i:                           ; preds = %land.lhs.true.i.i
  %pb.i.i = getelementptr inbounds i8, ptr %options, i64 28
  %2 = load i32, ptr %pb.i.i, align 4
  %cmp6.i.i = icmp ult i32 %2, 5
  br i1 %cmp6.i.i, label %if.end, label %cleanup

if.end:                                           ; preds = %is_lclppb_valid.exit.i
  %mul.i = mul nuw nsw i32 %2, 5
  %add.i = add nuw nsw i32 %mul.i, %1
  %mul1.i = mul nuw nsw i32 %add.i, 9
  %add2.i = add nuw nsw i32 %mul1.i, %0
  %conv.i = trunc i32 %add2.i to i8
  store i8 %conv.i, ptr %out, align 1
  %add.ptr = getelementptr inbounds i8, ptr %out, i64 1
  %3 = load i32, ptr %options, align 8
  %conv.i3 = trunc i32 %3 to i8
  store i8 %conv.i3, ptr %add.ptr, align 1
  %shr.i = lshr i32 %3, 8
  %conv1.i = trunc i32 %shr.i to i8
  %arrayidx2.i = getelementptr inbounds i8, ptr %out, i64 2
  store i8 %conv1.i, ptr %arrayidx2.i, align 1
  %shr3.i = lshr i32 %3, 16
  %conv4.i = trunc i32 %shr3.i to i8
  %arrayidx5.i = getelementptr inbounds i8, ptr %out, i64 3
  store i8 %conv4.i, ptr %arrayidx5.i, align 1
  %shr6.i = lshr i32 %3, 24
  %conv7.i = trunc nuw i32 %shr6.i to i8
  %arrayidx8.i = getelementptr inbounds i8, ptr %out, i64 4
  store i8 %conv7.i, ptr %arrayidx8.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %entry, %land.lhs.true.i.i, %is_lclppb_valid.exit.i, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 11, %is_lclppb_valid.exit.i ], [ 11, %land.lhs.true.i.i ], [ 11, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext range(i8 0, 2) i8 @lzma_mode_is_supported(i32 noundef %mode) local_unnamed_addr #6 {
entry:
  %0 = add i32 %mode, -1
  %1 = icmp ult i32 %0, 2
  %conv = zext i1 %1 to i8
  ret i8 %conv
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @match(ptr noundef %pcoder, i32 noundef %pos_state, i32 noundef %distance, i32 noundef %len) unnamed_addr #7 {
entry:
  %state = getelementptr inbounds i8, ptr %pcoder, i64 736
  %0 = load i32, ptr %state, align 8
  %cmp = icmp ult i32 %0, 7
  %cond = select i1 %cmp, i32 7, i32 10
  store i32 %cond, ptr %state, align 8
  %match_len_encoder = getelementptr inbounds i8, ptr %pcoder, i64 29184
  %fast_mode = getelementptr inbounds i8, ptr %pcoder, i64 2956
  %1 = load i8, ptr %fast_mode, align 4, !range !5, !noundef !6
  %loadedv = trunc nuw i8 %1 to i1
  tail call fastcc void @length(ptr noundef %pcoder, ptr noundef nonnull %match_len_encoder, i32 noundef %pos_state, i32 noundef %len, i1 noundef zeroext %loadedv)
  %cmp.i = icmp ult i32 %distance, 8192
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %idxprom.i = zext nneg i32 %distance to i64
  %arrayidx.i = getelementptr inbounds [8192 x i8], ptr @lzma_fastpos, i64 0, i64 %idxprom.i
  %2 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %2 to i32
  br label %get_pos_slot.exit

if.end.i:                                         ; preds = %entry
  %cmp1.i = icmp ult i32 %distance, 33554432
  br i1 %cmp1.i, label %if.then3.i, label %if.end7.i

if.then3.i:                                       ; preds = %if.end.i
  %shr.i = lshr i32 %distance, 12
  %idxprom4.i = zext nneg i32 %shr.i to i64
  %arrayidx5.i = getelementptr inbounds [8192 x i8], ptr @lzma_fastpos, i64 0, i64 %idxprom4.i
  %3 = load i8, ptr %arrayidx5.i, align 1
  %conv6.i = zext i8 %3 to i32
  %add.i = add nuw nsw i32 %conv6.i, 24
  br label %get_pos_slot.exit

if.end7.i:                                        ; preds = %if.end.i
  %shr8.i = lshr i32 %distance, 24
  %idxprom9.i = zext nneg i32 %shr8.i to i64
  %arrayidx10.i = getelementptr inbounds [8192 x i8], ptr @lzma_fastpos, i64 0, i64 %idxprom9.i
  %4 = load i8, ptr %arrayidx10.i, align 1
  %conv11.i = zext i8 %4 to i32
  %add12.i = add nuw nsw i32 %conv11.i, 48
  br label %get_pos_slot.exit

get_pos_slot.exit:                                ; preds = %if.then.i, %if.then3.i, %if.end7.i
  %retval.0.i = phi i32 [ %conv.i, %if.then.i ], [ %add.i, %if.then3.i ], [ %add12.i, %if.end7.i ]
  %cmp2 = icmp ult i32 %len, 6
  %sub = add nsw i32 %len, -2
  %cond3 = select i1 %cmp2, i32 %sub, i32 3
  %pos_slot5 = getelementptr inbounds i8, ptr %pcoder, i64 28412
  %idxprom = zext i32 %cond3 to i64
  %arrayidx = getelementptr inbounds [4 x [64 x i16]], ptr %pos_slot5, i64 0, i64 %idxprom
  %symbols.i.i = getelementptr inbounds i8, ptr %pcoder, i64 40
  %count.i.i = getelementptr inbounds i8, ptr %pcoder, i64 24
  %probs.i.i = getelementptr inbounds i8, ptr %pcoder, i64 272
  %.pre.i = load i64, ptr %count.i.i, align 8
  %shr.i71 = lshr i32 %retval.0.i, 5
  %and.i = and i32 %shr.i71, 1
  %arrayidx.i73 = getelementptr inbounds i8, ptr %arrayidx, i64 2
  %arrayidx.i.i = getelementptr inbounds [58 x i32], ptr %symbols.i.i, i64 0, i64 %.pre.i
  store i32 %and.i, ptr %arrayidx.i.i, align 4
  %5 = load i64, ptr %count.i.i, align 8
  %arrayidx2.i.i = getelementptr inbounds [58 x ptr], ptr %probs.i.i, i64 0, i64 %5
  store ptr %arrayidx.i73, ptr %arrayidx2.i.i, align 8
  %6 = load i64, ptr %count.i.i, align 8
  %inc.i.i = add i64 %6, 1
  store i64 %inc.i.i, ptr %count.i.i, align 8
  %add.i74 = or disjoint i32 %and.i, 2
  %shr.i71.1 = lshr i32 %retval.0.i, 4
  %and.i.1 = and i32 %shr.i71.1, 1
  %idxprom.i72.1 = zext nneg i32 %add.i74 to i64
  %arrayidx.i73.1 = getelementptr inbounds i16, ptr %arrayidx, i64 %idxprom.i72.1
  %arrayidx.i.i.1 = getelementptr inbounds [58 x i32], ptr %symbols.i.i, i64 0, i64 %inc.i.i
  store i32 %and.i.1, ptr %arrayidx.i.i.1, align 4
  %7 = load i64, ptr %count.i.i, align 8
  %arrayidx2.i.i.1 = getelementptr inbounds [58 x ptr], ptr %probs.i.i, i64 0, i64 %7
  store ptr %arrayidx.i73.1, ptr %arrayidx2.i.i.1, align 8
  %8 = load i64, ptr %count.i.i, align 8
  %inc.i.i.1 = add i64 %8, 1
  store i64 %inc.i.i.1, ptr %count.i.i, align 8
  %shl.i.1 = shl nuw nsw i32 %add.i74, 1
  %add.i74.1 = or disjoint i32 %and.i.1, %shl.i.1
  %shr.i71.2 = lshr i32 %retval.0.i, 3
  %and.i.2 = and i32 %shr.i71.2, 1
  %idxprom.i72.2 = zext nneg i32 %add.i74.1 to i64
  %arrayidx.i73.2 = getelementptr inbounds i16, ptr %arrayidx, i64 %idxprom.i72.2
  %arrayidx.i.i.2 = getelementptr inbounds [58 x i32], ptr %symbols.i.i, i64 0, i64 %inc.i.i.1
  store i32 %and.i.2, ptr %arrayidx.i.i.2, align 4
  %9 = load i64, ptr %count.i.i, align 8
  %arrayidx2.i.i.2 = getelementptr inbounds [58 x ptr], ptr %probs.i.i, i64 0, i64 %9
  store ptr %arrayidx.i73.2, ptr %arrayidx2.i.i.2, align 8
  %10 = load i64, ptr %count.i.i, align 8
  %inc.i.i.2 = add i64 %10, 1
  store i64 %inc.i.i.2, ptr %count.i.i, align 8
  %shl.i.2 = shl nuw nsw i32 %add.i74.1, 1
  %add.i74.2 = or disjoint i32 %and.i.2, %shl.i.2
  %shr.i71.3 = lshr i32 %retval.0.i, 2
  %and.i.3 = and i32 %shr.i71.3, 1
  %idxprom.i72.3 = zext nneg i32 %add.i74.2 to i64
  %arrayidx.i73.3 = getelementptr inbounds i16, ptr %arrayidx, i64 %idxprom.i72.3
  %arrayidx.i.i.3 = getelementptr inbounds [58 x i32], ptr %symbols.i.i, i64 0, i64 %inc.i.i.2
  store i32 %and.i.3, ptr %arrayidx.i.i.3, align 4
  %11 = load i64, ptr %count.i.i, align 8
  %arrayidx2.i.i.3 = getelementptr inbounds [58 x ptr], ptr %probs.i.i, i64 0, i64 %11
  store ptr %arrayidx.i73.3, ptr %arrayidx2.i.i.3, align 8
  %12 = load i64, ptr %count.i.i, align 8
  %inc.i.i.3 = add i64 %12, 1
  store i64 %inc.i.i.3, ptr %count.i.i, align 8
  %shl.i.3 = shl nuw nsw i32 %add.i74.2, 1
  %add.i74.3 = or disjoint i32 %and.i.3, %shl.i.3
  %shr.i71.4 = lshr i32 %retval.0.i, 1
  %and.i.4 = and i32 %shr.i71.4, 1
  %idxprom.i72.4 = zext nneg i32 %add.i74.3 to i64
  %arrayidx.i73.4 = getelementptr inbounds i16, ptr %arrayidx, i64 %idxprom.i72.4
  %arrayidx.i.i.4 = getelementptr inbounds [58 x i32], ptr %symbols.i.i, i64 0, i64 %inc.i.i.3
  store i32 %and.i.4, ptr %arrayidx.i.i.4, align 4
  %13 = load i64, ptr %count.i.i, align 8
  %arrayidx2.i.i.4 = getelementptr inbounds [58 x ptr], ptr %probs.i.i, i64 0, i64 %13
  store ptr %arrayidx.i73.4, ptr %arrayidx2.i.i.4, align 8
  %14 = load i64, ptr %count.i.i, align 8
  %inc.i.i.4 = add i64 %14, 1
  store i64 %inc.i.i.4, ptr %count.i.i, align 8
  %shl.i.4 = shl nuw nsw i32 %add.i74.3, 1
  %add.i74.4 = or disjoint i32 %and.i.4, %shl.i.4
  %and.i.5 = and i32 %retval.0.i, 1
  %idxprom.i72.5 = zext nneg i32 %add.i74.4 to i64
  %arrayidx.i73.5 = getelementptr inbounds i16, ptr %arrayidx, i64 %idxprom.i72.5
  %arrayidx.i.i.5 = getelementptr inbounds [58 x i32], ptr %symbols.i.i, i64 0, i64 %inc.i.i.4
  store i32 %and.i.5, ptr %arrayidx.i.i.5, align 4
  %15 = load i64, ptr %count.i.i, align 8
  %arrayidx2.i.i.5 = getelementptr inbounds [58 x ptr], ptr %probs.i.i, i64 0, i64 %15
  store ptr %arrayidx.i73.5, ptr %arrayidx2.i.i.5, align 8
  %16 = load i64, ptr %count.i.i, align 8
  %inc.i.i.5 = add i64 %16, 1
  store i64 %inc.i.i.5, ptr %count.i.i, align 8
  %cmp6 = icmp ugt i32 %retval.0.i, 3
  br i1 %cmp6, label %if.then, label %if.end22

if.then:                                          ; preds = %get_pos_slot.exit
  %sub7 = add nsw i32 %shr.i71.4, -1
  %or = or disjoint i32 %and.i.5, 2
  %shl = shl i32 %or, %sub7
  %sub8 = sub i32 %distance, %shl
  %cmp9 = icmp ult i32 %retval.0.i, 14
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then
  %pos_special = getelementptr inbounds i8, ptr %pcoder, i64 28924
  %idx.ext = zext i32 %shl to i64
  %add.ptr = getelementptr inbounds i16, ptr %pos_special, i64 %idx.ext
  %idx.ext13 = zext nneg i32 %retval.0.i to i64
  %idx.neg = sub nsw i64 0, %idx.ext13
  %add.ptr14 = getelementptr inbounds i16, ptr %add.ptr, i64 %idx.neg
  %add.ptr15 = getelementptr inbounds i8, ptr %add.ptr14, i64 -2
  %and.i82 = and i32 %sub8, 1
  %arrayidx.i.i86 = getelementptr inbounds [58 x i32], ptr %symbols.i.i, i64 0, i64 %inc.i.i.5
  store i32 %and.i82, ptr %arrayidx.i.i86, align 4
  %17 = load i64, ptr %count.i.i, align 8
  %arrayidx2.i.i87 = getelementptr inbounds [58 x ptr], ptr %probs.i.i, i64 0, i64 %17
  store ptr %add.ptr14, ptr %arrayidx2.i.i87, align 8
  %18 = load i64, ptr %count.i.i, align 8
  %inc.i.i88 = add i64 %18, 1
  store i64 %inc.i.i88, ptr %count.i.i, align 8
  %cmp.not.i92 = icmp eq i32 %shr.i71.4, 2
  br i1 %cmp.not.i92, label %if.end22, label %do.body.i79.1

do.body.i79.1:                                    ; preds = %if.then10
  %add.i90 = or disjoint i32 %and.i82, 2
  %shr.i83 = lshr i32 %sub8, 1
  %and.i82.1 = and i32 %shr.i83, 1
  %idxprom.i84.1 = zext nneg i32 %add.i90 to i64
  %arrayidx.i85.1 = getelementptr inbounds i16, ptr %add.ptr15, i64 %idxprom.i84.1
  %arrayidx.i.i86.1 = getelementptr inbounds [58 x i32], ptr %symbols.i.i, i64 0, i64 %inc.i.i88
  store i32 %and.i82.1, ptr %arrayidx.i.i86.1, align 4
  %19 = load i64, ptr %count.i.i, align 8
  %arrayidx2.i.i87.1 = getelementptr inbounds [58 x ptr], ptr %probs.i.i, i64 0, i64 %19
  store ptr %arrayidx.i85.1, ptr %arrayidx2.i.i87.1, align 8
  %20 = load i64, ptr %count.i.i, align 8
  %inc.i.i88.1 = add i64 %20, 1
  store i64 %inc.i.i88.1, ptr %count.i.i, align 8
  %cmp.not.i92.1 = icmp eq i32 %shr.i71.4, 3
  br i1 %cmp.not.i92.1, label %if.end22, label %do.body.i79.2

do.body.i79.2:                                    ; preds = %do.body.i79.1
  %shl.i89.1 = shl nuw nsw i32 %add.i90, 1
  %add.i90.1 = or disjoint i32 %shl.i89.1, %and.i82.1
  %shr.i83.1 = lshr i32 %sub8, 2
  %and.i82.2 = and i32 %shr.i83.1, 1
  %idxprom.i84.2 = zext nneg i32 %add.i90.1 to i64
  %arrayidx.i85.2 = getelementptr inbounds i16, ptr %add.ptr15, i64 %idxprom.i84.2
  %arrayidx.i.i86.2 = getelementptr inbounds [58 x i32], ptr %symbols.i.i, i64 0, i64 %inc.i.i88.1
  store i32 %and.i82.2, ptr %arrayidx.i.i86.2, align 4
  %21 = load i64, ptr %count.i.i, align 8
  %arrayidx2.i.i87.2 = getelementptr inbounds [58 x ptr], ptr %probs.i.i, i64 0, i64 %21
  store ptr %arrayidx.i85.2, ptr %arrayidx2.i.i87.2, align 8
  %22 = load i64, ptr %count.i.i, align 8
  %inc.i.i88.2 = add i64 %22, 1
  store i64 %inc.i.i88.2, ptr %count.i.i, align 8
  %cmp.not.i92.2 = icmp eq i32 %shr.i71.4, 4
  br i1 %cmp.not.i92.2, label %if.end22, label %do.body.i79.3

do.body.i79.3:                                    ; preds = %do.body.i79.2
  %shl.i89.2 = shl nuw nsw i32 %add.i90.1, 1
  %add.i90.2 = or disjoint i32 %shl.i89.2, %and.i82.2
  %shr.i83.2 = lshr i32 %sub8, 3
  %and.i82.3 = and i32 %shr.i83.2, 1
  %idxprom.i84.3 = zext nneg i32 %add.i90.2 to i64
  %arrayidx.i85.3 = getelementptr inbounds i16, ptr %add.ptr15, i64 %idxprom.i84.3
  %arrayidx.i.i86.3 = getelementptr inbounds [58 x i32], ptr %symbols.i.i, i64 0, i64 %inc.i.i88.2
  store i32 %and.i82.3, ptr %arrayidx.i.i86.3, align 4
  %23 = load i64, ptr %count.i.i, align 8
  %arrayidx2.i.i87.3 = getelementptr inbounds [58 x ptr], ptr %probs.i.i, i64 0, i64 %23
  store ptr %arrayidx.i85.3, ptr %arrayidx2.i.i87.3, align 8
  %24 = load i64, ptr %count.i.i, align 8
  %inc.i.i88.3 = add i64 %24, 1
  store i64 %inc.i.i88.3, ptr %count.i.i, align 8
  %cmp.not.i92.3 = icmp eq i32 %shr.i71.4, 5
  br i1 %cmp.not.i92.3, label %if.end22, label %do.body.i79.4

do.body.i79.4:                                    ; preds = %do.body.i79.3
  %shl.i89.3 = shl nuw nsw i32 %add.i90.2, 1
  %add.i90.3 = or disjoint i32 %shl.i89.3, %and.i82.3
  %shr.i83.3 = lshr i32 %sub8, 4
  %and.i82.4 = and i32 %shr.i83.3, 1
  %idxprom.i84.4 = zext nneg i32 %add.i90.3 to i64
  %arrayidx.i85.4 = getelementptr inbounds i16, ptr %add.ptr15, i64 %idxprom.i84.4
  %arrayidx.i.i86.4 = getelementptr inbounds [58 x i32], ptr %symbols.i.i, i64 0, i64 %inc.i.i88.3
  store i32 %and.i82.4, ptr %arrayidx.i.i86.4, align 4
  %25 = load i64, ptr %count.i.i, align 8
  %arrayidx2.i.i87.4 = getelementptr inbounds [58 x ptr], ptr %probs.i.i, i64 0, i64 %25
  store ptr %arrayidx.i85.4, ptr %arrayidx2.i.i87.4, align 8
  %26 = load i64, ptr %count.i.i, align 8
  %inc.i.i88.4 = add i64 %26, 1
  store i64 %inc.i.i88.4, ptr %count.i.i, align 8
  br label %if.end22

if.else:                                          ; preds = %if.then
  %shr17 = lshr i32 %sub8, 4
  %sub18 = add nsw i32 %shr.i71.4, -5
  %xtraiter = and i32 %sub18, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %do.body.i93.prol.loopexit, label %do.body.i93.prol

do.body.i93.prol:                                 ; preds = %if.else
  %dec.i95.prol = add nsw i32 %shr.i71.4, -6
  %shr.i96.prol = lshr i32 %shr17, %dec.i95.prol
  %and.i97.prol = and i32 %shr.i96.prol, 1
  %add.i98.prol = or disjoint i32 %and.i97.prol, 2
  %27 = load i64, ptr %count.i.i, align 8
  %inc.i.prol = add i64 %27, 1
  store i64 %inc.i.prol, ptr %count.i.i, align 8
  %arrayidx.i99.prol = getelementptr inbounds [58 x i32], ptr %symbols.i.i, i64 0, i64 %27
  store i32 %add.i98.prol, ptr %arrayidx.i99.prol, align 4
  br label %do.body.i93.prol.loopexit

do.body.i93.prol.loopexit:                        ; preds = %do.body.i93.prol, %if.else
  %bit_count.addr.0.i94.unr = phi i32 [ %sub18, %if.else ], [ %dec.i95.prol, %do.body.i93.prol ]
  %28 = icmp eq i32 %shr.i71.4, 6
  br i1 %28, label %rc_direct.exit, label %do.body.i93

do.body.i93:                                      ; preds = %do.body.i93.prol.loopexit, %do.body.i93
  %bit_count.addr.0.i94 = phi i32 [ %dec.i95.1, %do.body.i93 ], [ %bit_count.addr.0.i94.unr, %do.body.i93.prol.loopexit ]
  %dec.i95 = add nsw i32 %bit_count.addr.0.i94, -1
  %shr.i96 = lshr i32 %shr17, %dec.i95
  %and.i97 = and i32 %shr.i96, 1
  %add.i98 = or disjoint i32 %and.i97, 2
  %29 = load i64, ptr %count.i.i, align 8
  %inc.i = add i64 %29, 1
  store i64 %inc.i, ptr %count.i.i, align 8
  %arrayidx.i99 = getelementptr inbounds [58 x i32], ptr %symbols.i.i, i64 0, i64 %29
  store i32 %add.i98, ptr %arrayidx.i99, align 4
  %dec.i95.1 = add nsw i32 %bit_count.addr.0.i94, -2
  %shr.i96.1 = lshr i32 %shr17, %dec.i95.1
  %and.i97.1 = and i32 %shr.i96.1, 1
  %add.i98.1 = or disjoint i32 %and.i97.1, 2
  %30 = load i64, ptr %count.i.i, align 8
  %inc.i.1 = add i64 %30, 1
  store i64 %inc.i.1, ptr %count.i.i, align 8
  %arrayidx.i99.1 = getelementptr inbounds [58 x i32], ptr %symbols.i.i, i64 0, i64 %30
  store i32 %add.i98.1, ptr %arrayidx.i99.1, align 4
  %cmp.not.i100.1 = icmp eq i32 %dec.i95.1, 0
  br i1 %cmp.not.i100.1, label %rc_direct.exit, label %do.body.i93

rc_direct.exit:                                   ; preds = %do.body.i93, %do.body.i93.prol.loopexit
  %pos_align = getelementptr inbounds i8, ptr %pcoder, i64 29152
  %.pre.i104 = load i64, ptr %count.i.i, align 8
  %and.i109 = and i32 %sub8, 1
  %shr.i110 = lshr i32 %sub8, 1
  %arrayidx.i112 = getelementptr inbounds i8, ptr %pcoder, i64 29154
  %arrayidx.i.i113 = getelementptr inbounds [58 x i32], ptr %symbols.i.i, i64 0, i64 %.pre.i104
  store i32 %and.i109, ptr %arrayidx.i.i113, align 4
  %31 = load i64, ptr %count.i.i, align 8
  %arrayidx2.i.i114 = getelementptr inbounds [58 x ptr], ptr %probs.i.i, i64 0, i64 %31
  store ptr %arrayidx.i112, ptr %arrayidx2.i.i114, align 8
  %32 = load i64, ptr %count.i.i, align 8
  %inc.i.i115 = add i64 %32, 1
  store i64 %inc.i.i115, ptr %count.i.i, align 8
  %add.i117 = or disjoint i32 %and.i109, 2
  %and.i109.1 = and i32 %shr.i110, 1
  %shr.i110.1 = lshr i32 %sub8, 2
  %idxprom.i111.1 = zext nneg i32 %add.i117 to i64
  %arrayidx.i112.1 = getelementptr inbounds i16, ptr %pos_align, i64 %idxprom.i111.1
  %arrayidx.i.i113.1 = getelementptr inbounds [58 x i32], ptr %symbols.i.i, i64 0, i64 %inc.i.i115
  store i32 %and.i109.1, ptr %arrayidx.i.i113.1, align 4
  %33 = load i64, ptr %count.i.i, align 8
  %arrayidx2.i.i114.1 = getelementptr inbounds [58 x ptr], ptr %probs.i.i, i64 0, i64 %33
  store ptr %arrayidx.i112.1, ptr %arrayidx2.i.i114.1, align 8
  %34 = load i64, ptr %count.i.i, align 8
  %inc.i.i115.1 = add i64 %34, 1
  store i64 %inc.i.i115.1, ptr %count.i.i, align 8
  %shl.i116.1 = shl nuw nsw i32 %add.i117, 1
  %add.i117.1 = or disjoint i32 %shl.i116.1, %and.i109.1
  %and.i109.2 = and i32 %shr.i110.1, 1
  %shr.i110.2 = lshr i32 %sub8, 3
  %idxprom.i111.2 = zext nneg i32 %add.i117.1 to i64
  %arrayidx.i112.2 = getelementptr inbounds i16, ptr %pos_align, i64 %idxprom.i111.2
  %arrayidx.i.i113.2 = getelementptr inbounds [58 x i32], ptr %symbols.i.i, i64 0, i64 %inc.i.i115.1
  store i32 %and.i109.2, ptr %arrayidx.i.i113.2, align 4
  %35 = load i64, ptr %count.i.i, align 8
  %arrayidx2.i.i114.2 = getelementptr inbounds [58 x ptr], ptr %probs.i.i, i64 0, i64 %35
  store ptr %arrayidx.i112.2, ptr %arrayidx2.i.i114.2, align 8
  %36 = load i64, ptr %count.i.i, align 8
  %inc.i.i115.2 = add i64 %36, 1
  store i64 %inc.i.i115.2, ptr %count.i.i, align 8
  %shl.i116.2 = shl nuw nsw i32 %add.i117.1, 1
  %add.i117.2 = or disjoint i32 %shl.i116.2, %and.i109.2
  %and.i109.3 = and i32 %shr.i110.2, 1
  %idxprom.i111.3 = zext nneg i32 %add.i117.2 to i64
  %arrayidx.i112.3 = getelementptr inbounds i16, ptr %pos_align, i64 %idxprom.i111.3
  %arrayidx.i.i113.3 = getelementptr inbounds [58 x i32], ptr %symbols.i.i, i64 0, i64 %inc.i.i115.2
  store i32 %and.i109.3, ptr %arrayidx.i.i113.3, align 4
  %37 = load i64, ptr %count.i.i, align 8
  %arrayidx2.i.i114.3 = getelementptr inbounds [58 x ptr], ptr %probs.i.i, i64 0, i64 %37
  store ptr %arrayidx.i112.3, ptr %arrayidx2.i.i114.3, align 8
  %38 = load i64, ptr %count.i.i, align 8
  %inc.i.i115.3 = add i64 %38, 1
  store i64 %inc.i.i115.3, ptr %count.i.i, align 8
  %align_price_count = getelementptr inbounds i8, ptr %pcoder, i64 69336
  %39 = load i32, ptr %align_price_count, align 8
  %inc = add i32 %39, 1
  store i32 %inc, ptr %align_price_count, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then10, %do.body.i79.1, %do.body.i79.2, %do.body.i79.3, %do.body.i79.4, %rc_direct.exit, %get_pos_slot.exit
  %reps = getelementptr inbounds i8, ptr %pcoder, i64 740
  %arrayidx23 = getelementptr inbounds i8, ptr %pcoder, i64 748
  %40 = load i32, ptr %arrayidx23, align 4
  %arrayidx25 = getelementptr inbounds i8, ptr %pcoder, i64 752
  store i32 %40, ptr %arrayidx25, align 4
  %arrayidx27 = getelementptr inbounds i8, ptr %pcoder, i64 744
  %41 = load <2 x i32>, ptr %reps, align 4
  store <2 x i32> %41, ptr %arrayidx27, align 4
  store i32 %distance, ptr %reps, align 4
  %match_price_count = getelementptr inbounds i8, ptr %pcoder, i64 69268
  %42 = load i32, ptr %match_price_count, align 4
  %inc36 = add i32 %42, 1
  store i32 %inc36, ptr %match_price_count, align 4
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @length(ptr nocapture noundef %rc, ptr noundef %lc, i32 noundef %pos_state, i32 noundef %len, i1 noundef zeroext %fast_mode) unnamed_addr #7 {
entry:
  %sub = add i32 %len, -2
  %cmp = icmp ult i32 %sub, 8
  %symbols.i = getelementptr inbounds i8, ptr %rc, i64 40
  %count.i = getelementptr inbounds i8, ptr %rc, i64 24
  %0 = load i64, ptr %count.i, align 8
  %arrayidx.i = getelementptr inbounds [58 x i32], ptr %symbols.i, i64 0, i64 %0
  %probs.i = getelementptr inbounds i8, ptr %rc, i64 272
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, ptr %arrayidx.i, align 4
  %1 = load i64, ptr %count.i, align 8
  %arrayidx2.i = getelementptr inbounds [58 x ptr], ptr %probs.i, i64 0, i64 %1
  store ptr %lc, ptr %arrayidx2.i, align 8
  %2 = load i64, ptr %count.i, align 8
  %inc.i = add i64 %2, 1
  store i64 %inc.i, ptr %count.i, align 8
  %low = getelementptr inbounds i8, ptr %lc, i64 4
  %idxprom = zext i32 %pos_state to i64
  %arrayidx = getelementptr inbounds [16 x [8 x i16]], ptr %low, i64 0, i64 %idxprom
  %shr.i = lshr i32 %sub, 2
  %arrayidx.i44 = getelementptr inbounds i8, ptr %arrayidx, i64 2
  %arrayidx.i.i = getelementptr inbounds [58 x i32], ptr %symbols.i, i64 0, i64 %inc.i
  store i32 %shr.i, ptr %arrayidx.i.i, align 4
  %3 = load i64, ptr %count.i, align 8
  %arrayidx2.i.i = getelementptr inbounds [58 x ptr], ptr %probs.i, i64 0, i64 %3
  store ptr %arrayidx.i44, ptr %arrayidx2.i.i, align 8
  %4 = load i64, ptr %count.i, align 8
  %inc.i.i = add i64 %4, 1
  store i64 %inc.i.i, ptr %count.i, align 8
  %add.i = or disjoint i32 %shr.i, 2
  br label %if.end12

if.else:                                          ; preds = %entry
  store i32 1, ptr %arrayidx.i, align 4
  %5 = load i64, ptr %count.i, align 8
  %arrayidx2.i49 = getelementptr inbounds [58 x ptr], ptr %probs.i, i64 0, i64 %5
  store ptr %lc, ptr %arrayidx2.i49, align 8
  %6 = load i64, ptr %count.i, align 8
  %inc.i50 = add i64 %6, 1
  store i64 %inc.i50, ptr %count.i, align 8
  %sub2 = add i32 %len, -10
  %cmp3 = icmp ult i32 %sub2, 8
  %choice2 = getelementptr inbounds i8, ptr %lc, i64 2
  %arrayidx.i53 = getelementptr inbounds [58 x i32], ptr %symbols.i, i64 0, i64 %inc.i50
  br i1 %cmp3, label %if.then4, label %if.else8

if.then4:                                         ; preds = %if.else
  store i32 0, ptr %arrayidx.i53, align 4
  %7 = load i64, ptr %count.i, align 8
  %arrayidx2.i55 = getelementptr inbounds [58 x ptr], ptr %probs.i, i64 0, i64 %7
  store ptr %choice2, ptr %arrayidx2.i55, align 8
  %8 = load i64, ptr %count.i, align 8
  %inc.i56 = add i64 %8, 1
  store i64 %inc.i56, ptr %count.i, align 8
  %mid = getelementptr inbounds i8, ptr %lc, i64 260
  %idxprom5 = zext i32 %pos_state to i64
  %arrayidx6 = getelementptr inbounds [16 x [8 x i16]], ptr %mid, i64 0, i64 %idxprom5
  %shr.i65 = lshr i32 %sub2, 2
  %arrayidx.i68 = getelementptr inbounds i8, ptr %arrayidx6, i64 2
  %arrayidx.i.i69 = getelementptr inbounds [58 x i32], ptr %symbols.i, i64 0, i64 %inc.i56
  store i32 %shr.i65, ptr %arrayidx.i.i69, align 4
  %9 = load i64, ptr %count.i, align 8
  %arrayidx2.i.i70 = getelementptr inbounds [58 x ptr], ptr %probs.i, i64 0, i64 %9
  store ptr %arrayidx.i68, ptr %arrayidx2.i.i70, align 8
  %10 = load i64, ptr %count.i, align 8
  %inc.i.i71 = add i64 %10, 1
  store i64 %inc.i.i71, ptr %count.i, align 8
  %add.i73 = or disjoint i32 %shr.i65, 2
  br label %if.end12

if.else8:                                         ; preds = %if.else
  store i32 1, ptr %arrayidx.i53, align 4
  %11 = load i64, ptr %count.i, align 8
  %arrayidx2.i80 = getelementptr inbounds [58 x ptr], ptr %probs.i, i64 0, i64 %11
  store ptr %choice2, ptr %arrayidx2.i80, align 8
  %12 = load i64, ptr %count.i, align 8
  %inc.i81 = add i64 %12, 1
  store i64 %inc.i81, ptr %count.i, align 8
  %sub10 = add i32 %len, -18
  %high = getelementptr inbounds i8, ptr %lc, i64 516
  %shr.i90 = lshr i32 %sub10, 7
  %and.i91 = and i32 %shr.i90, 1
  %arrayidx.i93 = getelementptr inbounds i8, ptr %lc, i64 518
  %arrayidx.i.i94 = getelementptr inbounds [58 x i32], ptr %symbols.i, i64 0, i64 %inc.i81
  store i32 %and.i91, ptr %arrayidx.i.i94, align 4
  %13 = load i64, ptr %count.i, align 8
  %arrayidx2.i.i95 = getelementptr inbounds [58 x ptr], ptr %probs.i, i64 0, i64 %13
  store ptr %arrayidx.i93, ptr %arrayidx2.i.i95, align 8
  %14 = load i64, ptr %count.i, align 8
  %inc.i.i96 = add i64 %14, 1
  store i64 %inc.i.i96, ptr %count.i, align 8
  %add.i98 = or disjoint i32 %and.i91, 2
  %shr.i90.1 = lshr i32 %sub10, 6
  %and.i91.1 = and i32 %shr.i90.1, 1
  %idxprom.i92.1 = zext nneg i32 %add.i98 to i64
  %arrayidx.i93.1 = getelementptr inbounds i16, ptr %high, i64 %idxprom.i92.1
  %arrayidx.i.i94.1 = getelementptr inbounds [58 x i32], ptr %symbols.i, i64 0, i64 %inc.i.i96
  store i32 %and.i91.1, ptr %arrayidx.i.i94.1, align 4
  %15 = load i64, ptr %count.i, align 8
  %arrayidx2.i.i95.1 = getelementptr inbounds [58 x ptr], ptr %probs.i, i64 0, i64 %15
  store ptr %arrayidx.i93.1, ptr %arrayidx2.i.i95.1, align 8
  %16 = load i64, ptr %count.i, align 8
  %inc.i.i96.1 = add i64 %16, 1
  store i64 %inc.i.i96.1, ptr %count.i, align 8
  %shl.i97.1 = shl nuw nsw i32 %add.i98, 1
  %add.i98.1 = or disjoint i32 %and.i91.1, %shl.i97.1
  %shr.i90.2 = lshr i32 %sub10, 5
  %and.i91.2 = and i32 %shr.i90.2, 1
  %idxprom.i92.2 = zext nneg i32 %add.i98.1 to i64
  %arrayidx.i93.2 = getelementptr inbounds i16, ptr %high, i64 %idxprom.i92.2
  %arrayidx.i.i94.2 = getelementptr inbounds [58 x i32], ptr %symbols.i, i64 0, i64 %inc.i.i96.1
  store i32 %and.i91.2, ptr %arrayidx.i.i94.2, align 4
  %17 = load i64, ptr %count.i, align 8
  %arrayidx2.i.i95.2 = getelementptr inbounds [58 x ptr], ptr %probs.i, i64 0, i64 %17
  store ptr %arrayidx.i93.2, ptr %arrayidx2.i.i95.2, align 8
  %18 = load i64, ptr %count.i, align 8
  %inc.i.i96.2 = add i64 %18, 1
  store i64 %inc.i.i96.2, ptr %count.i, align 8
  %shl.i97.2 = shl nuw nsw i32 %add.i98.1, 1
  %add.i98.2 = or disjoint i32 %and.i91.2, %shl.i97.2
  %shr.i90.3 = lshr i32 %sub10, 4
  %and.i91.3 = and i32 %shr.i90.3, 1
  %idxprom.i92.3 = zext nneg i32 %add.i98.2 to i64
  %arrayidx.i93.3 = getelementptr inbounds i16, ptr %high, i64 %idxprom.i92.3
  %arrayidx.i.i94.3 = getelementptr inbounds [58 x i32], ptr %symbols.i, i64 0, i64 %inc.i.i96.2
  store i32 %and.i91.3, ptr %arrayidx.i.i94.3, align 4
  %19 = load i64, ptr %count.i, align 8
  %arrayidx2.i.i95.3 = getelementptr inbounds [58 x ptr], ptr %probs.i, i64 0, i64 %19
  store ptr %arrayidx.i93.3, ptr %arrayidx2.i.i95.3, align 8
  %20 = load i64, ptr %count.i, align 8
  %inc.i.i96.3 = add i64 %20, 1
  store i64 %inc.i.i96.3, ptr %count.i, align 8
  %shl.i97.3 = shl nuw nsw i32 %add.i98.2, 1
  %add.i98.3 = or disjoint i32 %and.i91.3, %shl.i97.3
  %shr.i90.4 = lshr i32 %sub10, 3
  %and.i91.4 = and i32 %shr.i90.4, 1
  %idxprom.i92.4 = zext nneg i32 %add.i98.3 to i64
  %arrayidx.i93.4 = getelementptr inbounds i16, ptr %high, i64 %idxprom.i92.4
  %arrayidx.i.i94.4 = getelementptr inbounds [58 x i32], ptr %symbols.i, i64 0, i64 %inc.i.i96.3
  store i32 %and.i91.4, ptr %arrayidx.i.i94.4, align 4
  %21 = load i64, ptr %count.i, align 8
  %arrayidx2.i.i95.4 = getelementptr inbounds [58 x ptr], ptr %probs.i, i64 0, i64 %21
  store ptr %arrayidx.i93.4, ptr %arrayidx2.i.i95.4, align 8
  %22 = load i64, ptr %count.i, align 8
  %inc.i.i96.4 = add i64 %22, 1
  store i64 %inc.i.i96.4, ptr %count.i, align 8
  %shl.i97.4 = shl nuw nsw i32 %add.i98.3, 1
  %add.i98.4 = or disjoint i32 %and.i91.4, %shl.i97.4
  %shr.i90.5 = lshr i32 %sub10, 2
  %and.i91.5 = and i32 %shr.i90.5, 1
  %idxprom.i92.5 = zext nneg i32 %add.i98.4 to i64
  %arrayidx.i93.5 = getelementptr inbounds i16, ptr %high, i64 %idxprom.i92.5
  %arrayidx.i.i94.5 = getelementptr inbounds [58 x i32], ptr %symbols.i, i64 0, i64 %inc.i.i96.4
  store i32 %and.i91.5, ptr %arrayidx.i.i94.5, align 4
  %23 = load i64, ptr %count.i, align 8
  %arrayidx2.i.i95.5 = getelementptr inbounds [58 x ptr], ptr %probs.i, i64 0, i64 %23
  store ptr %arrayidx.i93.5, ptr %arrayidx2.i.i95.5, align 8
  %24 = load i64, ptr %count.i, align 8
  %inc.i.i96.5 = add i64 %24, 1
  store i64 %inc.i.i96.5, ptr %count.i, align 8
  %shl.i97.5 = shl nuw nsw i32 %add.i98.4, 1
  %add.i98.5 = or disjoint i32 %and.i91.5, %shl.i97.5
  br label %if.end12

if.end12:                                         ; preds = %if.else8, %if.then4, %if.then
  %sub10.sink = phi i32 [ %sub10, %if.else8 ], [ %sub2, %if.then4 ], [ %sub, %if.then ]
  %add.i98.5.sink108 = phi i32 [ %add.i98.5, %if.else8 ], [ %add.i73, %if.then4 ], [ %add.i, %if.then ]
  %high.sink107 = phi ptr [ %high, %if.else8 ], [ %arrayidx6, %if.then4 ], [ %arrayidx, %if.then ]
  %inc.i.i96.5.sink = phi i64 [ %inc.i.i96.5, %if.else8 ], [ %inc.i.i71, %if.then4 ], [ %inc.i.i, %if.then ]
  %shr.i90.6 = lshr i32 %sub10.sink, 1
  %and.i91.6 = and i32 %shr.i90.6, 1
  %idxprom.i92.6 = zext nneg i32 %add.i98.5.sink108 to i64
  %arrayidx.i93.6 = getelementptr inbounds i16, ptr %high.sink107, i64 %idxprom.i92.6
  %arrayidx.i.i94.6 = getelementptr inbounds [58 x i32], ptr %symbols.i, i64 0, i64 %inc.i.i96.5.sink
  store i32 %and.i91.6, ptr %arrayidx.i.i94.6, align 4
  %25 = load i64, ptr %count.i, align 8
  %arrayidx2.i.i95.6 = getelementptr inbounds [58 x ptr], ptr %probs.i, i64 0, i64 %25
  store ptr %arrayidx.i93.6, ptr %arrayidx2.i.i95.6, align 8
  %26 = load i64, ptr %count.i, align 8
  %inc.i.i96.6 = add i64 %26, 1
  store i64 %inc.i.i96.6, ptr %count.i, align 8
  %shl.i97.6 = shl nuw nsw i32 %add.i98.5.sink108, 1
  %add.i98.6 = or disjoint i32 %and.i91.6, %shl.i97.6
  %and.i91.7 = and i32 %len, 1
  %idxprom.i92.7 = zext nneg i32 %add.i98.6 to i64
  %arrayidx.i93.7 = getelementptr inbounds i16, ptr %high.sink107, i64 %idxprom.i92.7
  %arrayidx.i.i94.7 = getelementptr inbounds [58 x i32], ptr %symbols.i, i64 0, i64 %inc.i.i96.6
  store i32 %and.i91.7, ptr %arrayidx.i.i94.7, align 4
  %27 = load i64, ptr %count.i, align 8
  %arrayidx2.i.i95.7 = getelementptr inbounds [58 x ptr], ptr %probs.i, i64 0, i64 %27
  store ptr %arrayidx.i93.7, ptr %arrayidx2.i.i95.7, align 8
  %28 = load i64, ptr %count.i, align 8
  %inc.i.i96.7 = add i64 %28, 1
  store i64 %inc.i.i96.7, ptr %count.i, align 8
  br i1 %fast_mode, label %if.end19, label %if.then13

if.then13:                                        ; preds = %if.end12
  %counters = getelementptr inbounds i8, ptr %lc, i64 18440
  %idxprom14 = zext i32 %pos_state to i64
  %arrayidx15 = getelementptr inbounds [16 x i32], ptr %counters, i64 0, i64 %idxprom14
  %29 = load i32, ptr %arrayidx15, align 4
  %dec = add i32 %29, -1
  store i32 %dec, ptr %arrayidx15, align 4
  %cmp16 = icmp eq i32 %dec, 0
  br i1 %cmp16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.then13
  tail call fastcc void @length_update_prices(ptr noundef nonnull %lc, i32 noundef %pos_state)
  br label %if.end19

if.end19:                                         ; preds = %if.then13, %if.then17, %if.end12
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @length_update_prices(ptr nocapture noundef %lc, i32 noundef %pos_state) unnamed_addr #4 {
entry:
  %table_size1 = getelementptr inbounds i8, ptr %lc, i64 18436
  %0 = load i32, ptr %table_size1, align 4
  %counters = getelementptr inbounds i8, ptr %lc, i64 18440
  %idxprom = zext i32 %pos_state to i64
  %arrayidx = getelementptr inbounds [16 x i32], ptr %counters, i64 0, i64 %idxprom
  store i32 %0, ptr %arrayidx, align 4
  %1 = load i16, ptr %lc, align 4
  %2 = lshr i16 %1, 4
  %idxprom.i = zext nneg i16 %2 to i64
  %arrayidx.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i
  %3 = load i8, ptr %arrayidx.i, align 1
  %conv1.i = zext i8 %3 to i32
  %4 = xor i16 %2, 127
  %idxprom.i80 = zext nneg i16 %4 to i64
  %arrayidx.i81 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i80
  %5 = load i8, ptr %arrayidx.i81, align 1
  %conv1.i82 = zext i8 %5 to i32
  %choice24 = getelementptr inbounds i8, ptr %lc, i64 2
  %6 = load i16, ptr %choice24, align 2
  %7 = lshr i16 %6, 4
  %idxprom.i83 = zext nneg i16 %7 to i64
  %arrayidx.i84 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i83
  %8 = load i8, ptr %arrayidx.i84, align 1
  %conv1.i85 = zext i8 %8 to i32
  %add = add nuw nsw i32 %conv1.i85, %conv1.i82
  %9 = xor i16 %7, 127
  %idxprom.i86 = zext nneg i16 %9 to i64
  %arrayidx.i87 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i86
  %10 = load i8, ptr %arrayidx.i87, align 1
  %conv1.i88 = zext i8 %10 to i32
  %add8 = add nuw nsw i32 %conv1.i88, %conv1.i82
  %prices9 = getelementptr inbounds i8, ptr %lc, i64 1028
  %arrayidx11 = getelementptr inbounds [16 x [272 x i32]], ptr %prices9, i64 0, i64 %idxprom
  %invariant.umin = tail call i32 @llvm.umin.i32(i32 %0, i32 8)
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %for.cond36.preheader, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %low = getelementptr inbounds i8, ptr %lc, i64 4
  %arrayidx14 = getelementptr inbounds [16 x [8 x i16]], ptr %low, i64 0, i64 %idxprom
  br label %do.body.i

for.cond20.preheader:                             ; preds = %rc_bittree_price.exit.7, %rc_bittree_price.exit.6, %rc_bittree_price.exit.5, %rc_bittree_price.exit.4, %rc_bittree_price.exit.3, %rc_bittree_price.exit.2, %rc_bittree_price.exit.1, %rc_bittree_price.exit
  %invariant.umin126 = tail call i32 @llvm.umin.i32(i32 %0, i32 16)
  %11 = icmp ugt i32 %0, 8
  br i1 %11, label %for.body25.lr.ph, label %for.cond36.preheader

for.body25.lr.ph:                                 ; preds = %for.cond20.preheader
  %mid = getelementptr inbounds i8, ptr %lc, i64 260
  %arrayidx27 = getelementptr inbounds [16 x [8 x i16]], ptr %mid, i64 0, i64 %idxprom
  %12 = zext nneg i32 %invariant.umin to i64
  %wide.trip.count136 = zext nneg i32 %invariant.umin126 to i64
  br label %do.body.i92

do.body.i:                                        ; preds = %do.body.i, %for.body.lr.ph
  %price.0.i = phi i32 [ 0, %for.body.lr.ph ], [ %add1.i, %do.body.i ]
  %symbol.addr.0.i = phi i32 [ 8, %for.body.lr.ph ], [ %shr.i, %do.body.i ]
  %and.i = and i32 %symbol.addr.0.i, 1
  %shr.i = lshr i32 %symbol.addr.0.i, 1
  %idxprom.i89 = zext nneg i32 %shr.i to i64
  %arrayidx.i90 = getelementptr inbounds i16, ptr %arrayidx14, i64 %idxprom.i89
  %13 = load i16, ptr %arrayidx.i90, align 2
  %conv.i.i = zext i16 %13 to i64
  %14 = icmp eq i32 %and.i, 0
  %and.i.i = select i1 %14, i64 0, i64 2032
  %xor.i.i = xor i64 %and.i.i, %conv.i.i
  %shr.i.i = lshr i64 %xor.i.i, 4
  %arrayidx.i.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i
  %15 = load i8, ptr %arrayidx.i.i, align 1
  %conv1.i.i = zext i8 %15 to i32
  %add1.i = add i32 %price.0.i, %conv1.i.i
  %cmp.not.i = icmp eq i32 %shr.i, 1
  br i1 %cmp.not.i, label %rc_bittree_price.exit, label %do.body.i

rc_bittree_price.exit:                            ; preds = %do.body.i
  %add17 = add i32 %add1.i, %conv1.i
  store i32 %add17, ptr %arrayidx11, align 4
  %exitcond.not = icmp eq i32 %0, 1
  br i1 %exitcond.not, label %for.cond20.preheader, label %do.body.i.1

do.body.i.1:                                      ; preds = %rc_bittree_price.exit, %do.body.i.1
  %price.0.i.1 = phi i32 [ %add1.i.1, %do.body.i.1 ], [ 0, %rc_bittree_price.exit ]
  %symbol.addr.0.i.1 = phi i32 [ %shr.i.1, %do.body.i.1 ], [ 9, %rc_bittree_price.exit ]
  %and.i.1 = and i32 %symbol.addr.0.i.1, 1
  %shr.i.1 = lshr i32 %symbol.addr.0.i.1, 1
  %idxprom.i89.1 = zext nneg i32 %shr.i.1 to i64
  %arrayidx.i90.1 = getelementptr inbounds i16, ptr %arrayidx14, i64 %idxprom.i89.1
  %16 = load i16, ptr %arrayidx.i90.1, align 2
  %conv.i.i.1 = zext i16 %16 to i64
  %17 = icmp eq i32 %and.i.1, 0
  %and.i.i.1 = select i1 %17, i64 0, i64 2032
  %xor.i.i.1 = xor i64 %and.i.i.1, %conv.i.i.1
  %shr.i.i.1 = lshr i64 %xor.i.i.1, 4
  %arrayidx.i.i.1 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i.1
  %18 = load i8, ptr %arrayidx.i.i.1, align 1
  %conv1.i.i.1 = zext i8 %18 to i32
  %add1.i.1 = add i32 %price.0.i.1, %conv1.i.i.1
  %cmp.not.i.1 = icmp eq i32 %shr.i.1, 1
  br i1 %cmp.not.i.1, label %rc_bittree_price.exit.1, label %do.body.i.1

rc_bittree_price.exit.1:                          ; preds = %do.body.i.1
  %add17.1 = add i32 %add1.i.1, %conv1.i
  %arrayidx19.1 = getelementptr inbounds i8, ptr %arrayidx11, i64 4
  store i32 %add17.1, ptr %arrayidx19.1, align 4
  %exitcond.not.1 = icmp eq i32 %0, 2
  br i1 %exitcond.not.1, label %for.cond20.preheader, label %do.body.i.2

do.body.i.2:                                      ; preds = %rc_bittree_price.exit.1, %do.body.i.2
  %price.0.i.2 = phi i32 [ %add1.i.2, %do.body.i.2 ], [ 0, %rc_bittree_price.exit.1 ]
  %symbol.addr.0.i.2 = phi i32 [ %shr.i.2, %do.body.i.2 ], [ 10, %rc_bittree_price.exit.1 ]
  %and.i.2 = and i32 %symbol.addr.0.i.2, 1
  %shr.i.2 = lshr i32 %symbol.addr.0.i.2, 1
  %idxprom.i89.2 = zext nneg i32 %shr.i.2 to i64
  %arrayidx.i90.2 = getelementptr inbounds i16, ptr %arrayidx14, i64 %idxprom.i89.2
  %19 = load i16, ptr %arrayidx.i90.2, align 2
  %conv.i.i.2 = zext i16 %19 to i64
  %20 = icmp eq i32 %and.i.2, 0
  %and.i.i.2 = select i1 %20, i64 0, i64 2032
  %xor.i.i.2 = xor i64 %and.i.i.2, %conv.i.i.2
  %shr.i.i.2 = lshr i64 %xor.i.i.2, 4
  %arrayidx.i.i.2 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i.2
  %21 = load i8, ptr %arrayidx.i.i.2, align 1
  %conv1.i.i.2 = zext i8 %21 to i32
  %add1.i.2 = add i32 %price.0.i.2, %conv1.i.i.2
  %cmp.not.i.2 = icmp eq i32 %shr.i.2, 1
  br i1 %cmp.not.i.2, label %rc_bittree_price.exit.2, label %do.body.i.2

rc_bittree_price.exit.2:                          ; preds = %do.body.i.2
  %add17.2 = add i32 %add1.i.2, %conv1.i
  %arrayidx19.2 = getelementptr inbounds i8, ptr %arrayidx11, i64 8
  store i32 %add17.2, ptr %arrayidx19.2, align 4
  %exitcond.not.2 = icmp eq i32 %0, 3
  br i1 %exitcond.not.2, label %for.cond20.preheader, label %do.body.i.3

do.body.i.3:                                      ; preds = %rc_bittree_price.exit.2, %do.body.i.3
  %price.0.i.3 = phi i32 [ %add1.i.3, %do.body.i.3 ], [ 0, %rc_bittree_price.exit.2 ]
  %symbol.addr.0.i.3 = phi i32 [ %shr.i.3, %do.body.i.3 ], [ 11, %rc_bittree_price.exit.2 ]
  %and.i.3 = and i32 %symbol.addr.0.i.3, 1
  %shr.i.3 = lshr i32 %symbol.addr.0.i.3, 1
  %idxprom.i89.3 = zext nneg i32 %shr.i.3 to i64
  %arrayidx.i90.3 = getelementptr inbounds i16, ptr %arrayidx14, i64 %idxprom.i89.3
  %22 = load i16, ptr %arrayidx.i90.3, align 2
  %conv.i.i.3 = zext i16 %22 to i64
  %23 = icmp eq i32 %and.i.3, 0
  %and.i.i.3 = select i1 %23, i64 0, i64 2032
  %xor.i.i.3 = xor i64 %and.i.i.3, %conv.i.i.3
  %shr.i.i.3 = lshr i64 %xor.i.i.3, 4
  %arrayidx.i.i.3 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i.3
  %24 = load i8, ptr %arrayidx.i.i.3, align 1
  %conv1.i.i.3 = zext i8 %24 to i32
  %add1.i.3 = add i32 %price.0.i.3, %conv1.i.i.3
  %cmp.not.i.3 = icmp eq i32 %shr.i.3, 1
  br i1 %cmp.not.i.3, label %rc_bittree_price.exit.3, label %do.body.i.3

rc_bittree_price.exit.3:                          ; preds = %do.body.i.3
  %add17.3 = add i32 %add1.i.3, %conv1.i
  %arrayidx19.3 = getelementptr inbounds i8, ptr %arrayidx11, i64 12
  store i32 %add17.3, ptr %arrayidx19.3, align 4
  %exitcond.not.3 = icmp eq i32 %0, 4
  br i1 %exitcond.not.3, label %for.cond20.preheader, label %do.body.i.4

do.body.i.4:                                      ; preds = %rc_bittree_price.exit.3, %do.body.i.4
  %price.0.i.4 = phi i32 [ %add1.i.4, %do.body.i.4 ], [ 0, %rc_bittree_price.exit.3 ]
  %symbol.addr.0.i.4 = phi i32 [ %shr.i.4, %do.body.i.4 ], [ 12, %rc_bittree_price.exit.3 ]
  %and.i.4 = and i32 %symbol.addr.0.i.4, 1
  %shr.i.4 = lshr i32 %symbol.addr.0.i.4, 1
  %idxprom.i89.4 = zext nneg i32 %shr.i.4 to i64
  %arrayidx.i90.4 = getelementptr inbounds i16, ptr %arrayidx14, i64 %idxprom.i89.4
  %25 = load i16, ptr %arrayidx.i90.4, align 2
  %conv.i.i.4 = zext i16 %25 to i64
  %26 = icmp eq i32 %and.i.4, 0
  %and.i.i.4 = select i1 %26, i64 0, i64 2032
  %xor.i.i.4 = xor i64 %and.i.i.4, %conv.i.i.4
  %shr.i.i.4 = lshr i64 %xor.i.i.4, 4
  %arrayidx.i.i.4 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i.4
  %27 = load i8, ptr %arrayidx.i.i.4, align 1
  %conv1.i.i.4 = zext i8 %27 to i32
  %add1.i.4 = add i32 %price.0.i.4, %conv1.i.i.4
  %cmp.not.i.4 = icmp eq i32 %shr.i.4, 1
  br i1 %cmp.not.i.4, label %rc_bittree_price.exit.4, label %do.body.i.4

rc_bittree_price.exit.4:                          ; preds = %do.body.i.4
  %add17.4 = add i32 %add1.i.4, %conv1.i
  %arrayidx19.4 = getelementptr inbounds i8, ptr %arrayidx11, i64 16
  store i32 %add17.4, ptr %arrayidx19.4, align 4
  %exitcond.not.4 = icmp eq i32 %0, 5
  br i1 %exitcond.not.4, label %for.cond20.preheader, label %do.body.i.5

do.body.i.5:                                      ; preds = %rc_bittree_price.exit.4, %do.body.i.5
  %price.0.i.5 = phi i32 [ %add1.i.5, %do.body.i.5 ], [ 0, %rc_bittree_price.exit.4 ]
  %symbol.addr.0.i.5 = phi i32 [ %shr.i.5, %do.body.i.5 ], [ 13, %rc_bittree_price.exit.4 ]
  %and.i.5 = and i32 %symbol.addr.0.i.5, 1
  %shr.i.5 = lshr i32 %symbol.addr.0.i.5, 1
  %idxprom.i89.5 = zext nneg i32 %shr.i.5 to i64
  %arrayidx.i90.5 = getelementptr inbounds i16, ptr %arrayidx14, i64 %idxprom.i89.5
  %28 = load i16, ptr %arrayidx.i90.5, align 2
  %conv.i.i.5 = zext i16 %28 to i64
  %29 = icmp eq i32 %and.i.5, 0
  %and.i.i.5 = select i1 %29, i64 0, i64 2032
  %xor.i.i.5 = xor i64 %and.i.i.5, %conv.i.i.5
  %shr.i.i.5 = lshr i64 %xor.i.i.5, 4
  %arrayidx.i.i.5 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i.5
  %30 = load i8, ptr %arrayidx.i.i.5, align 1
  %conv1.i.i.5 = zext i8 %30 to i32
  %add1.i.5 = add i32 %price.0.i.5, %conv1.i.i.5
  %cmp.not.i.5 = icmp eq i32 %shr.i.5, 1
  br i1 %cmp.not.i.5, label %rc_bittree_price.exit.5, label %do.body.i.5

rc_bittree_price.exit.5:                          ; preds = %do.body.i.5
  %add17.5 = add i32 %add1.i.5, %conv1.i
  %arrayidx19.5 = getelementptr inbounds i8, ptr %arrayidx11, i64 20
  store i32 %add17.5, ptr %arrayidx19.5, align 4
  %exitcond.not.5 = icmp eq i32 %0, 6
  br i1 %exitcond.not.5, label %for.cond20.preheader, label %do.body.i.6

do.body.i.6:                                      ; preds = %rc_bittree_price.exit.5, %do.body.i.6
  %price.0.i.6 = phi i32 [ %add1.i.6, %do.body.i.6 ], [ 0, %rc_bittree_price.exit.5 ]
  %symbol.addr.0.i.6 = phi i32 [ %shr.i.6, %do.body.i.6 ], [ 14, %rc_bittree_price.exit.5 ]
  %and.i.6 = and i32 %symbol.addr.0.i.6, 1
  %shr.i.6 = lshr i32 %symbol.addr.0.i.6, 1
  %idxprom.i89.6 = zext nneg i32 %shr.i.6 to i64
  %arrayidx.i90.6 = getelementptr inbounds i16, ptr %arrayidx14, i64 %idxprom.i89.6
  %31 = load i16, ptr %arrayidx.i90.6, align 2
  %conv.i.i.6 = zext i16 %31 to i64
  %32 = icmp eq i32 %and.i.6, 0
  %and.i.i.6 = select i1 %32, i64 0, i64 2032
  %xor.i.i.6 = xor i64 %and.i.i.6, %conv.i.i.6
  %shr.i.i.6 = lshr i64 %xor.i.i.6, 4
  %arrayidx.i.i.6 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i.6
  %33 = load i8, ptr %arrayidx.i.i.6, align 1
  %conv1.i.i.6 = zext i8 %33 to i32
  %add1.i.6 = add i32 %price.0.i.6, %conv1.i.i.6
  %cmp.not.i.6 = icmp eq i32 %shr.i.6, 1
  br i1 %cmp.not.i.6, label %rc_bittree_price.exit.6, label %do.body.i.6

rc_bittree_price.exit.6:                          ; preds = %do.body.i.6
  %add17.6 = add i32 %add1.i.6, %conv1.i
  %arrayidx19.6 = getelementptr inbounds i8, ptr %arrayidx11, i64 24
  store i32 %add17.6, ptr %arrayidx19.6, align 4
  %exitcond.not.6 = icmp eq i32 %0, 7
  br i1 %exitcond.not.6, label %for.cond20.preheader, label %do.body.i.7

do.body.i.7:                                      ; preds = %rc_bittree_price.exit.6, %do.body.i.7
  %price.0.i.7 = phi i32 [ %add1.i.7, %do.body.i.7 ], [ 0, %rc_bittree_price.exit.6 ]
  %symbol.addr.0.i.7 = phi i32 [ %shr.i.7, %do.body.i.7 ], [ 15, %rc_bittree_price.exit.6 ]
  %and.i.7 = and i32 %symbol.addr.0.i.7, 1
  %shr.i.7 = lshr i32 %symbol.addr.0.i.7, 1
  %idxprom.i89.7 = zext nneg i32 %shr.i.7 to i64
  %arrayidx.i90.7 = getelementptr inbounds i16, ptr %arrayidx14, i64 %idxprom.i89.7
  %34 = load i16, ptr %arrayidx.i90.7, align 2
  %conv.i.i.7 = zext i16 %34 to i64
  %35 = icmp eq i32 %and.i.7, 0
  %and.i.i.7 = select i1 %35, i64 0, i64 2032
  %xor.i.i.7 = xor i64 %and.i.i.7, %conv.i.i.7
  %shr.i.i.7 = lshr i64 %xor.i.i.7, 4
  %arrayidx.i.i.7 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i.7
  %36 = load i8, ptr %arrayidx.i.i.7, align 1
  %conv1.i.i.7 = zext i8 %36 to i32
  %add1.i.7 = add i32 %price.0.i.7, %conv1.i.i.7
  %cmp.not.i.7 = icmp eq i32 %shr.i.7, 1
  br i1 %cmp.not.i.7, label %rc_bittree_price.exit.7, label %do.body.i.7

rc_bittree_price.exit.7:                          ; preds = %do.body.i.7
  %add17.7 = add i32 %add1.i.7, %conv1.i
  %arrayidx19.7 = getelementptr inbounds i8, ptr %arrayidx11, i64 28
  store i32 %add17.7, ptr %arrayidx19.7, align 4
  br label %for.cond20.preheader

for.cond36.preheader:                             ; preds = %rc_bittree_price.exit107, %rc_bittree_price.exit107.1, %rc_bittree_price.exit107.2, %rc_bittree_price.exit107.3, %rc_bittree_price.exit107.4, %rc_bittree_price.exit107.5, %rc_bittree_price.exit107.6, %rc_bittree_price.exit107.7, %entry, %for.cond20.preheader
  %i.1.lcssa = phi i32 [ %invariant.umin, %for.cond20.preheader ], [ 0, %entry ], [ %invariant.umin126, %rc_bittree_price.exit107.7 ], [ %invariant.umin126, %rc_bittree_price.exit107.6 ], [ %invariant.umin126, %rc_bittree_price.exit107.5 ], [ %invariant.umin126, %rc_bittree_price.exit107.4 ], [ %invariant.umin126, %rc_bittree_price.exit107.3 ], [ %invariant.umin126, %rc_bittree_price.exit107.2 ], [ %invariant.umin126, %rc_bittree_price.exit107.1 ], [ %invariant.umin126, %rc_bittree_price.exit107 ]
  %cmp37129 = icmp ult i32 %i.1.lcssa, %0
  br i1 %cmp37129, label %for.body38.lr.ph, label %for.end48

for.body38.lr.ph:                                 ; preds = %for.cond36.preheader
  %high = getelementptr inbounds i8, ptr %lc, i64 516
  %37 = zext nneg i32 %i.1.lcssa to i64
  %wide.trip.count141 = zext i32 %0 to i64
  br label %for.body38

do.body.i92:                                      ; preds = %do.body.i92, %for.body25.lr.ph
  %price.0.i93 = phi i32 [ 0, %for.body25.lr.ph ], [ %add1.i105, %do.body.i92 ]
  %symbol.addr.0.i94 = phi i32 [ %invariant.umin, %for.body25.lr.ph ], [ %shr.i96, %do.body.i92 ]
  %and.i95 = and i32 %symbol.addr.0.i94, 1
  %shr.i96 = lshr i32 %symbol.addr.0.i94, 1
  %idxprom.i97 = zext nneg i32 %shr.i96 to i64
  %arrayidx.i98 = getelementptr inbounds i16, ptr %arrayidx27, i64 %idxprom.i97
  %38 = load i16, ptr %arrayidx.i98, align 2
  %conv.i.i99 = zext i16 %38 to i64
  %39 = icmp eq i32 %and.i95, 0
  %and.i.i100 = select i1 %39, i64 0, i64 2032
  %xor.i.i101 = xor i64 %and.i.i100, %conv.i.i99
  %shr.i.i102 = lshr i64 %xor.i.i101, 4
  %arrayidx.i.i103 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i102
  %40 = load i8, ptr %arrayidx.i.i103, align 1
  %conv1.i.i104 = zext i8 %40 to i32
  %add1.i105 = add i32 %price.0.i93, %conv1.i.i104
  %cmp.not.i106 = icmp eq i32 %shr.i96, 1
  br i1 %cmp.not.i106, label %rc_bittree_price.exit107, label %do.body.i92

rc_bittree_price.exit107:                         ; preds = %do.body.i92
  %add30 = add i32 %add, %add1.i105
  %arrayidx32 = getelementptr inbounds i32, ptr %arrayidx11, i64 %12
  store i32 %add30, ptr %arrayidx32, align 4
  %indvars.iv.next134 = add nuw nsw i64 %12, 1
  %exitcond137.not = icmp eq i64 %indvars.iv.next134, %wide.trip.count136
  br i1 %exitcond137.not, label %for.cond36.preheader, label %for.body25.1

for.body25.1:                                     ; preds = %rc_bittree_price.exit107
  %41 = trunc nuw nsw i64 %indvars.iv.next134 to i32
  br label %do.body.i92.1

do.body.i92.1:                                    ; preds = %do.body.i92.1, %for.body25.1
  %price.0.i93.1 = phi i32 [ 0, %for.body25.1 ], [ %add1.i105.1, %do.body.i92.1 ]
  %symbol.addr.0.i94.1 = phi i32 [ %41, %for.body25.1 ], [ %shr.i96.1, %do.body.i92.1 ]
  %and.i95.1 = and i32 %symbol.addr.0.i94.1, 1
  %shr.i96.1 = lshr i32 %symbol.addr.0.i94.1, 1
  %idxprom.i97.1 = zext nneg i32 %shr.i96.1 to i64
  %arrayidx.i98.1 = getelementptr inbounds i16, ptr %arrayidx27, i64 %idxprom.i97.1
  %42 = load i16, ptr %arrayidx.i98.1, align 2
  %conv.i.i99.1 = zext i16 %42 to i64
  %43 = icmp eq i32 %and.i95.1, 0
  %and.i.i100.1 = select i1 %43, i64 0, i64 2032
  %xor.i.i101.1 = xor i64 %and.i.i100.1, %conv.i.i99.1
  %shr.i.i102.1 = lshr i64 %xor.i.i101.1, 4
  %arrayidx.i.i103.1 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i102.1
  %44 = load i8, ptr %arrayidx.i.i103.1, align 1
  %conv1.i.i104.1 = zext i8 %44 to i32
  %add1.i105.1 = add i32 %price.0.i93.1, %conv1.i.i104.1
  %cmp.not.i106.1 = icmp eq i32 %shr.i96.1, 1
  br i1 %cmp.not.i106.1, label %rc_bittree_price.exit107.1, label %do.body.i92.1

rc_bittree_price.exit107.1:                       ; preds = %do.body.i92.1
  %add30.1 = add i32 %add, %add1.i105.1
  %arrayidx32.1 = getelementptr inbounds i32, ptr %arrayidx11, i64 %indvars.iv.next134
  store i32 %add30.1, ptr %arrayidx32.1, align 4
  %indvars.iv.next134.1 = add nuw nsw i64 %12, 2
  %exitcond137.not.1 = icmp eq i64 %indvars.iv.next134.1, %wide.trip.count136
  br i1 %exitcond137.not.1, label %for.cond36.preheader, label %for.body25.2

for.body25.2:                                     ; preds = %rc_bittree_price.exit107.1
  %45 = trunc nuw nsw i64 %indvars.iv.next134.1 to i32
  br label %do.body.i92.2

do.body.i92.2:                                    ; preds = %do.body.i92.2, %for.body25.2
  %price.0.i93.2 = phi i32 [ 0, %for.body25.2 ], [ %add1.i105.2, %do.body.i92.2 ]
  %symbol.addr.0.i94.2 = phi i32 [ %45, %for.body25.2 ], [ %shr.i96.2, %do.body.i92.2 ]
  %and.i95.2 = and i32 %symbol.addr.0.i94.2, 1
  %shr.i96.2 = lshr i32 %symbol.addr.0.i94.2, 1
  %idxprom.i97.2 = zext nneg i32 %shr.i96.2 to i64
  %arrayidx.i98.2 = getelementptr inbounds i16, ptr %arrayidx27, i64 %idxprom.i97.2
  %46 = load i16, ptr %arrayidx.i98.2, align 2
  %conv.i.i99.2 = zext i16 %46 to i64
  %47 = icmp eq i32 %and.i95.2, 0
  %and.i.i100.2 = select i1 %47, i64 0, i64 2032
  %xor.i.i101.2 = xor i64 %and.i.i100.2, %conv.i.i99.2
  %shr.i.i102.2 = lshr i64 %xor.i.i101.2, 4
  %arrayidx.i.i103.2 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i102.2
  %48 = load i8, ptr %arrayidx.i.i103.2, align 1
  %conv1.i.i104.2 = zext i8 %48 to i32
  %add1.i105.2 = add i32 %price.0.i93.2, %conv1.i.i104.2
  %cmp.not.i106.2 = icmp eq i32 %shr.i96.2, 1
  br i1 %cmp.not.i106.2, label %rc_bittree_price.exit107.2, label %do.body.i92.2

rc_bittree_price.exit107.2:                       ; preds = %do.body.i92.2
  %add30.2 = add i32 %add, %add1.i105.2
  %arrayidx32.2 = getelementptr inbounds i32, ptr %arrayidx11, i64 %indvars.iv.next134.1
  store i32 %add30.2, ptr %arrayidx32.2, align 4
  %indvars.iv.next134.2 = add nuw nsw i64 %12, 3
  %exitcond137.not.2 = icmp eq i64 %indvars.iv.next134.2, %wide.trip.count136
  br i1 %exitcond137.not.2, label %for.cond36.preheader, label %for.body25.3

for.body25.3:                                     ; preds = %rc_bittree_price.exit107.2
  %49 = trunc nuw nsw i64 %indvars.iv.next134.2 to i32
  br label %do.body.i92.3

do.body.i92.3:                                    ; preds = %do.body.i92.3, %for.body25.3
  %price.0.i93.3 = phi i32 [ 0, %for.body25.3 ], [ %add1.i105.3, %do.body.i92.3 ]
  %symbol.addr.0.i94.3 = phi i32 [ %49, %for.body25.3 ], [ %shr.i96.3, %do.body.i92.3 ]
  %and.i95.3 = and i32 %symbol.addr.0.i94.3, 1
  %shr.i96.3 = lshr i32 %symbol.addr.0.i94.3, 1
  %idxprom.i97.3 = zext nneg i32 %shr.i96.3 to i64
  %arrayidx.i98.3 = getelementptr inbounds i16, ptr %arrayidx27, i64 %idxprom.i97.3
  %50 = load i16, ptr %arrayidx.i98.3, align 2
  %conv.i.i99.3 = zext i16 %50 to i64
  %51 = icmp eq i32 %and.i95.3, 0
  %and.i.i100.3 = select i1 %51, i64 0, i64 2032
  %xor.i.i101.3 = xor i64 %and.i.i100.3, %conv.i.i99.3
  %shr.i.i102.3 = lshr i64 %xor.i.i101.3, 4
  %arrayidx.i.i103.3 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i102.3
  %52 = load i8, ptr %arrayidx.i.i103.3, align 1
  %conv1.i.i104.3 = zext i8 %52 to i32
  %add1.i105.3 = add i32 %price.0.i93.3, %conv1.i.i104.3
  %cmp.not.i106.3 = icmp eq i32 %shr.i96.3, 1
  br i1 %cmp.not.i106.3, label %rc_bittree_price.exit107.3, label %do.body.i92.3

rc_bittree_price.exit107.3:                       ; preds = %do.body.i92.3
  %add30.3 = add i32 %add, %add1.i105.3
  %arrayidx32.3 = getelementptr inbounds i32, ptr %arrayidx11, i64 %indvars.iv.next134.2
  store i32 %add30.3, ptr %arrayidx32.3, align 4
  %indvars.iv.next134.3 = add nuw nsw i64 %12, 4
  %exitcond137.not.3 = icmp eq i64 %indvars.iv.next134.3, %wide.trip.count136
  br i1 %exitcond137.not.3, label %for.cond36.preheader, label %for.body25.4

for.body25.4:                                     ; preds = %rc_bittree_price.exit107.3
  %53 = trunc nuw nsw i64 %indvars.iv.next134.3 to i32
  br label %do.body.i92.4

do.body.i92.4:                                    ; preds = %do.body.i92.4, %for.body25.4
  %price.0.i93.4 = phi i32 [ 0, %for.body25.4 ], [ %add1.i105.4, %do.body.i92.4 ]
  %symbol.addr.0.i94.4 = phi i32 [ %53, %for.body25.4 ], [ %shr.i96.4, %do.body.i92.4 ]
  %and.i95.4 = and i32 %symbol.addr.0.i94.4, 1
  %shr.i96.4 = lshr i32 %symbol.addr.0.i94.4, 1
  %idxprom.i97.4 = zext nneg i32 %shr.i96.4 to i64
  %arrayidx.i98.4 = getelementptr inbounds i16, ptr %arrayidx27, i64 %idxprom.i97.4
  %54 = load i16, ptr %arrayidx.i98.4, align 2
  %conv.i.i99.4 = zext i16 %54 to i64
  %55 = icmp eq i32 %and.i95.4, 0
  %and.i.i100.4 = select i1 %55, i64 0, i64 2032
  %xor.i.i101.4 = xor i64 %and.i.i100.4, %conv.i.i99.4
  %shr.i.i102.4 = lshr i64 %xor.i.i101.4, 4
  %arrayidx.i.i103.4 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i102.4
  %56 = load i8, ptr %arrayidx.i.i103.4, align 1
  %conv1.i.i104.4 = zext i8 %56 to i32
  %add1.i105.4 = add i32 %price.0.i93.4, %conv1.i.i104.4
  %cmp.not.i106.4 = icmp eq i32 %shr.i96.4, 1
  br i1 %cmp.not.i106.4, label %rc_bittree_price.exit107.4, label %do.body.i92.4

rc_bittree_price.exit107.4:                       ; preds = %do.body.i92.4
  %add30.4 = add i32 %add, %add1.i105.4
  %arrayidx32.4 = getelementptr inbounds i32, ptr %arrayidx11, i64 %indvars.iv.next134.3
  store i32 %add30.4, ptr %arrayidx32.4, align 4
  %indvars.iv.next134.4 = add nuw nsw i64 %12, 5
  %exitcond137.not.4 = icmp eq i64 %indvars.iv.next134.4, %wide.trip.count136
  br i1 %exitcond137.not.4, label %for.cond36.preheader, label %for.body25.5

for.body25.5:                                     ; preds = %rc_bittree_price.exit107.4
  %57 = trunc nuw nsw i64 %indvars.iv.next134.4 to i32
  br label %do.body.i92.5

do.body.i92.5:                                    ; preds = %do.body.i92.5, %for.body25.5
  %price.0.i93.5 = phi i32 [ 0, %for.body25.5 ], [ %add1.i105.5, %do.body.i92.5 ]
  %symbol.addr.0.i94.5 = phi i32 [ %57, %for.body25.5 ], [ %shr.i96.5, %do.body.i92.5 ]
  %and.i95.5 = and i32 %symbol.addr.0.i94.5, 1
  %shr.i96.5 = lshr i32 %symbol.addr.0.i94.5, 1
  %idxprom.i97.5 = zext nneg i32 %shr.i96.5 to i64
  %arrayidx.i98.5 = getelementptr inbounds i16, ptr %arrayidx27, i64 %idxprom.i97.5
  %58 = load i16, ptr %arrayidx.i98.5, align 2
  %conv.i.i99.5 = zext i16 %58 to i64
  %59 = icmp eq i32 %and.i95.5, 0
  %and.i.i100.5 = select i1 %59, i64 0, i64 2032
  %xor.i.i101.5 = xor i64 %and.i.i100.5, %conv.i.i99.5
  %shr.i.i102.5 = lshr i64 %xor.i.i101.5, 4
  %arrayidx.i.i103.5 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i102.5
  %60 = load i8, ptr %arrayidx.i.i103.5, align 1
  %conv1.i.i104.5 = zext i8 %60 to i32
  %add1.i105.5 = add i32 %price.0.i93.5, %conv1.i.i104.5
  %cmp.not.i106.5 = icmp eq i32 %shr.i96.5, 1
  br i1 %cmp.not.i106.5, label %rc_bittree_price.exit107.5, label %do.body.i92.5

rc_bittree_price.exit107.5:                       ; preds = %do.body.i92.5
  %add30.5 = add i32 %add, %add1.i105.5
  %arrayidx32.5 = getelementptr inbounds i32, ptr %arrayidx11, i64 %indvars.iv.next134.4
  store i32 %add30.5, ptr %arrayidx32.5, align 4
  %indvars.iv.next134.5 = add nuw nsw i64 %12, 6
  %exitcond137.not.5 = icmp eq i64 %indvars.iv.next134.5, %wide.trip.count136
  br i1 %exitcond137.not.5, label %for.cond36.preheader, label %for.body25.6

for.body25.6:                                     ; preds = %rc_bittree_price.exit107.5
  %61 = trunc nuw nsw i64 %indvars.iv.next134.5 to i32
  br label %do.body.i92.6

do.body.i92.6:                                    ; preds = %do.body.i92.6, %for.body25.6
  %price.0.i93.6 = phi i32 [ 0, %for.body25.6 ], [ %add1.i105.6, %do.body.i92.6 ]
  %symbol.addr.0.i94.6 = phi i32 [ %61, %for.body25.6 ], [ %shr.i96.6, %do.body.i92.6 ]
  %and.i95.6 = and i32 %symbol.addr.0.i94.6, 1
  %shr.i96.6 = lshr i32 %symbol.addr.0.i94.6, 1
  %idxprom.i97.6 = zext nneg i32 %shr.i96.6 to i64
  %arrayidx.i98.6 = getelementptr inbounds i16, ptr %arrayidx27, i64 %idxprom.i97.6
  %62 = load i16, ptr %arrayidx.i98.6, align 2
  %conv.i.i99.6 = zext i16 %62 to i64
  %63 = icmp eq i32 %and.i95.6, 0
  %and.i.i100.6 = select i1 %63, i64 0, i64 2032
  %xor.i.i101.6 = xor i64 %and.i.i100.6, %conv.i.i99.6
  %shr.i.i102.6 = lshr i64 %xor.i.i101.6, 4
  %arrayidx.i.i103.6 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i102.6
  %64 = load i8, ptr %arrayidx.i.i103.6, align 1
  %conv1.i.i104.6 = zext i8 %64 to i32
  %add1.i105.6 = add i32 %price.0.i93.6, %conv1.i.i104.6
  %cmp.not.i106.6 = icmp eq i32 %shr.i96.6, 1
  br i1 %cmp.not.i106.6, label %rc_bittree_price.exit107.6, label %do.body.i92.6

rc_bittree_price.exit107.6:                       ; preds = %do.body.i92.6
  %add30.6 = add i32 %add, %add1.i105.6
  %arrayidx32.6 = getelementptr inbounds i32, ptr %arrayidx11, i64 %indvars.iv.next134.5
  store i32 %add30.6, ptr %arrayidx32.6, align 4
  %indvars.iv.next134.6 = add nuw nsw i64 %12, 7
  %exitcond137.not.6 = icmp eq i64 %indvars.iv.next134.6, %wide.trip.count136
  br i1 %exitcond137.not.6, label %for.cond36.preheader, label %for.body25.7

for.body25.7:                                     ; preds = %rc_bittree_price.exit107.6
  %65 = trunc nuw nsw i64 %indvars.iv.next134.6 to i32
  br label %do.body.i92.7

do.body.i92.7:                                    ; preds = %do.body.i92.7, %for.body25.7
  %price.0.i93.7 = phi i32 [ 0, %for.body25.7 ], [ %add1.i105.7, %do.body.i92.7 ]
  %symbol.addr.0.i94.7 = phi i32 [ %65, %for.body25.7 ], [ %shr.i96.7, %do.body.i92.7 ]
  %and.i95.7 = and i32 %symbol.addr.0.i94.7, 1
  %shr.i96.7 = lshr i32 %symbol.addr.0.i94.7, 1
  %idxprom.i97.7 = zext nneg i32 %shr.i96.7 to i64
  %arrayidx.i98.7 = getelementptr inbounds i16, ptr %arrayidx27, i64 %idxprom.i97.7
  %66 = load i16, ptr %arrayidx.i98.7, align 2
  %conv.i.i99.7 = zext i16 %66 to i64
  %67 = icmp eq i32 %and.i95.7, 0
  %and.i.i100.7 = select i1 %67, i64 0, i64 2032
  %xor.i.i101.7 = xor i64 %and.i.i100.7, %conv.i.i99.7
  %shr.i.i102.7 = lshr i64 %xor.i.i101.7, 4
  %arrayidx.i.i103.7 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i102.7
  %68 = load i8, ptr %arrayidx.i.i103.7, align 1
  %conv1.i.i104.7 = zext i8 %68 to i32
  %add1.i105.7 = add i32 %price.0.i93.7, %conv1.i.i104.7
  %cmp.not.i106.7 = icmp eq i32 %shr.i96.7, 1
  br i1 %cmp.not.i106.7, label %rc_bittree_price.exit107.7, label %do.body.i92.7

rc_bittree_price.exit107.7:                       ; preds = %do.body.i92.7
  %add30.7 = add i32 %add, %add1.i105.7
  %arrayidx32.7 = getelementptr inbounds i32, ptr %arrayidx11, i64 %indvars.iv.next134.6
  store i32 %add30.7, ptr %arrayidx32.7, align 4
  br label %for.cond36.preheader

for.body38:                                       ; preds = %for.body38.lr.ph, %rc_bittree_price.exit124
  %indvars.iv138 = phi i64 [ %37, %for.body38.lr.ph ], [ %indvars.iv.next139, %rc_bittree_price.exit124 ]
  %69 = trunc nuw i64 %indvars.iv138 to i32
  %add.i108 = add i32 %69, 240
  br label %do.body.i109

do.body.i109:                                     ; preds = %do.body.i109, %for.body38
  %price.0.i110 = phi i32 [ 0, %for.body38 ], [ %add1.i122, %do.body.i109 ]
  %symbol.addr.0.i111 = phi i32 [ %add.i108, %for.body38 ], [ %shr.i113, %do.body.i109 ]
  %and.i112 = and i32 %symbol.addr.0.i111, 1
  %shr.i113 = lshr i32 %symbol.addr.0.i111, 1
  %idxprom.i114 = zext nneg i32 %shr.i113 to i64
  %arrayidx.i115 = getelementptr inbounds i16, ptr %high, i64 %idxprom.i114
  %70 = load i16, ptr %arrayidx.i115, align 2
  %conv.i.i116 = zext i16 %70 to i64
  %71 = icmp eq i32 %and.i112, 0
  %and.i.i117 = select i1 %71, i64 0, i64 2032
  %xor.i.i118 = xor i64 %and.i.i117, %conv.i.i116
  %shr.i.i119 = lshr i64 %xor.i.i118, 4
  %arrayidx.i.i120 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i119
  %72 = load i8, ptr %arrayidx.i.i120, align 1
  %conv1.i.i121 = zext i8 %72 to i32
  %add1.i122 = add i32 %price.0.i110, %conv1.i.i121
  %cmp.not.i123 = icmp eq i32 %shr.i113, 1
  br i1 %cmp.not.i123, label %rc_bittree_price.exit124, label %do.body.i109

rc_bittree_price.exit124:                         ; preds = %do.body.i109
  %add43 = add i32 %add8, %add1.i122
  %arrayidx45 = getelementptr inbounds i32, ptr %arrayidx11, i64 %indvars.iv138
  store i32 %add43, ptr %arrayidx45, align 4
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1
  %exitcond142.not = icmp eq i64 %indvars.iv.next139, %wide.trip.count141
  br i1 %exitcond142.not, label %for.end48, label %for.body38

for.end48:                                        ; preds = %rc_bittree_price.exit124, %for.cond36.preheader
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 9) i32 @lzma_encode(ptr noundef %pcoder, ptr noalias noundef %mf, ptr noalias nocapture noundef writeonly %out, ptr noalias nocapture noundef %out_pos, i64 noundef %out_size) #0 {
entry:
  %action = getelementptr inbounds i8, ptr %mf, i64 104
  %0 = load i32, ptr %action, align 8
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @lzma_lzma_encode(ptr noundef %pcoder, ptr noundef nonnull %mf, ptr noundef %out, ptr noundef %out_pos, i64 noundef %out_size, i32 noundef -1)
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 8, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!5 = !{i8 0, i8 2}
!6 = !{}
!7 = distinct !{!7, !8, !9}
!8 = !{!"llvm.loop.isvectorized", i32 1}
!9 = !{!"llvm.loop.unroll.runtime.disable"}
!10 = distinct !{!10, !8, !9}
!11 = distinct !{!11, !9, !8}
!12 = distinct !{!12, !8, !9}
!13 = distinct !{!13, !9, !8}
!14 = distinct !{!14, !8, !9}
!15 = distinct !{!15, !9, !8}
!16 = distinct !{!16, !8, !9}
!17 = distinct !{!17, !9, !8}
!18 = distinct !{!18, !8, !9}
!19 = distinct !{!19, !9, !8}
!20 = distinct !{!20, !8, !9}
!21 = distinct !{!21, !9, !8}
!22 = distinct !{!22, !8, !9}
!23 = distinct !{!23, !9, !8}
!24 = distinct !{!24, !8, !9}
!25 = distinct !{!25, !9, !8}
!26 = distinct !{!26, !8, !9}
!27 = distinct !{!27, !9, !8}
!28 = distinct !{!28, !8, !9}
!29 = distinct !{!29, !9, !8}
!30 = distinct !{!30, !8, !9}
!31 = distinct !{!31, !9, !8}
!32 = distinct !{!32, !9, !8}
!33 = distinct !{!33, !8, !9}
!34 = distinct !{!34, !8}
!35 = distinct !{!35, !8, !9}
!36 = distinct !{!36, !8}
