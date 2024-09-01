; ModuleID = 'liblzma/lzma/lzma_encoder.c'
source_filename = "liblzma/lzma/lzma_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_lz_options = type { i64, i64, i64, i64, i64, i32, i32, ptr, i32 }

@lzma_rc_prices = external local_unnamed_addr constant [128 x i8], align 16
@lzma_fastpos = external local_unnamed_addr constant [8192 x i8], align 16

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @lzma_lzma_encode(ptr noundef %pcoder, ptr noalias noundef %mf, ptr noalias nocapture noundef writeonly %out, ptr noalias nocapture noundef %out_pos, i64 noundef %out_size, i32 noundef %limit) local_unnamed_addr #0 !dbg !112 {
entry:
  %len = alloca i32, align 4, !DIAssignID !282
    #dbg_assign(i1 undef, !279, !DIExpression(), !282, ptr %len, !DIExpression(), !283)
  %back = alloca i32, align 4, !DIAssignID !284
    #dbg_assign(i1 undef, !281, !DIExpression(), !284, ptr %back, !DIExpression(), !283)
    #dbg_value(ptr %pcoder, !167, !DIExpression(), !285)
    #dbg_value(ptr %mf, !168, !DIExpression(), !285)
    #dbg_value(ptr %out, !169, !DIExpression(), !285)
    #dbg_value(ptr %out_pos, !170, !DIExpression(), !285)
    #dbg_value(i64 %out_size, !171, !DIExpression(), !285)
    #dbg_value(i32 %limit, !172, !DIExpression(), !285)
    #dbg_value(ptr %pcoder, !173, !DIExpression(), !285)
  %is_initialized = getelementptr inbounds i8, ptr %pcoder, i64 2957, !dbg !286
  %0 = load i8, ptr %is_initialized, align 1, !dbg !286, !range !288, !noundef !289
  %loadedv = trunc nuw i8 %0 to i1, !dbg !286
  br i1 %loadedv, label %if.end, label %land.lhs.true, !dbg !290

land.lhs.true:                                    ; preds = %entry
    #dbg_value(ptr %pcoder, !291, !DIExpression(), !298)
    #dbg_value(ptr %mf, !296, !DIExpression(), !298)
    #dbg_value(ptr %pcoder, !297, !DIExpression(), !298)
  %read_pos.i = getelementptr inbounds i8, ptr %mf, i64 24, !dbg !300
  %1 = load i32, ptr %read_pos.i, align 8, !dbg !300
  %read_limit.i = getelementptr inbounds i8, ptr %mf, i64 32, !dbg !302
  %2 = load i32, ptr %read_limit.i, align 8, !dbg !302
  %cmp.i = icmp eq i32 %1, %2, !dbg !303
  br i1 %cmp.i, label %if.then.i, label %if.else.i, !dbg !304

if.then.i:                                        ; preds = %land.lhs.true
  %action.i = getelementptr inbounds i8, ptr %mf, i64 104, !dbg !305
  %3 = load i32, ptr %action.i, align 8, !dbg !305
  %cmp1.i = icmp eq i32 %3, 0, !dbg !308
  br i1 %cmp1.i, label %cleanup40, label %encode_init.exit.thread, !dbg !309

if.else.i:                                        ; preds = %land.lhs.true
    #dbg_value(ptr %mf, !310, !DIExpression(), !314)
    #dbg_value(i32 1, !313, !DIExpression(), !314)
  %skip.i.i = getelementptr inbounds i8, ptr %mf, i64 56, !dbg !317
  %4 = load ptr, ptr %skip.i.i, align 8, !dbg !317
  tail call void %4(ptr noundef nonnull %mf, i32 noundef 1) #10, !dbg !320
  %read_ahead.i.i = getelementptr inbounds i8, ptr %mf, i64 28, !dbg !321
  store i32 0, ptr %read_ahead.i.i, align 4, !dbg !322
  %is_match.i = getelementptr inbounds i8, ptr %pcoder, i64 27548, !dbg !323
    #dbg_value(ptr %pcoder, !324, !DIExpression(), !332)
    #dbg_value(ptr %is_match.i, !330, !DIExpression(), !332)
    #dbg_value(i32 0, !331, !DIExpression(), !332)
  %symbols.i.i = getelementptr inbounds i8, ptr %pcoder, i64 40, !dbg !334
  %count.i.i = getelementptr inbounds i8, ptr %pcoder, i64 24, !dbg !335
  %5 = load i64, ptr %count.i.i, align 8, !dbg !335
  %arrayidx.i.i = getelementptr inbounds [58 x i32], ptr %symbols.i.i, i64 0, i64 %5, !dbg !336
  store i32 0, ptr %arrayidx.i.i, align 4, !dbg !337
  %probs.i.i = getelementptr inbounds i8, ptr %pcoder, i64 272, !dbg !338
  %6 = load i64, ptr %count.i.i, align 8, !dbg !339
  %arrayidx2.i.i = getelementptr inbounds [58 x ptr], ptr %probs.i.i, i64 0, i64 %6, !dbg !340
  store ptr %is_match.i, ptr %arrayidx2.i.i, align 8, !dbg !341
  %7 = load i64, ptr %count.i.i, align 8, !dbg !342
  %inc.i.i = add i64 %7, 1, !dbg !342
  store i64 %inc.i.i, ptr %count.i.i, align 8, !dbg !342
  %literal.i = getelementptr inbounds i8, ptr %pcoder, i64 2972, !dbg !343
  %8 = load ptr, ptr %mf, align 8, !dbg !344
  %9 = load i8, ptr %8, align 1, !dbg !345
  %conv.i = zext i8 %9 to i32, !dbg !345
    #dbg_value(ptr %pcoder, !346, !DIExpression(), !358)
    #dbg_value(ptr %literal.i, !351, !DIExpression(), !358)
    #dbg_value(i32 8, !352, !DIExpression(), !358)
    #dbg_value(i32 %conv.i, !353, !DIExpression(), !358)
    #dbg_value(i32 1, !354, !DIExpression(), !358)
    #dbg_value(i32 8, !352, !DIExpression(), !358)
    #dbg_value(i32 1, !354, !DIExpression(), !358)
    #dbg_value(i32 7, !352, !DIExpression(), !358)
  %shr.i.i = lshr i32 %conv.i, 7, !dbg !360
    #dbg_value(i32 %shr.i.i, !355, !DIExpression(), !361)
  %arrayidx.i17.i = getelementptr inbounds i8, ptr %pcoder, i64 2974, !dbg !362
    #dbg_value(ptr %pcoder, !324, !DIExpression(), !363)
    #dbg_value(ptr %arrayidx.i17.i, !330, !DIExpression(), !363)
    #dbg_value(i32 %shr.i.i, !331, !DIExpression(), !363)
  %arrayidx.i.i.i = getelementptr inbounds [58 x i32], ptr %symbols.i.i, i64 0, i64 %inc.i.i, !dbg !365
  store i32 %shr.i.i, ptr %arrayidx.i.i.i, align 4, !dbg !366
  %10 = load i64, ptr %count.i.i, align 8, !dbg !367
  %arrayidx2.i.i.i = getelementptr inbounds [58 x ptr], ptr %probs.i.i, i64 0, i64 %10, !dbg !368
  store ptr %arrayidx.i17.i, ptr %arrayidx2.i.i.i, align 8, !dbg !369
  %11 = load i64, ptr %count.i.i, align 8, !dbg !370
  %inc.i.i.i = add i64 %11, 1, !dbg !370
  store i64 %inc.i.i.i, ptr %count.i.i, align 8, !dbg !370
  %add.i18.i = or disjoint i32 %shr.i.i, 2, !dbg !371
    #dbg_value(i32 %add.i18.i, !354, !DIExpression(), !358)
    #dbg_value(i32 6, !352, !DIExpression(), !358)
  %shr.i.1.i = lshr i32 %conv.i, 6, !dbg !360
  %and.i.1.i = and i32 %shr.i.1.i, 1, !dbg !372
    #dbg_value(i32 %and.i.1.i, !355, !DIExpression(), !361)
  %idxprom.i.1.i = zext nneg i32 %add.i18.i to i64, !dbg !362
  %arrayidx.i17.1.i = getelementptr inbounds i16, ptr %literal.i, i64 %idxprom.i.1.i, !dbg !362
    #dbg_value(ptr %arrayidx.i17.1.i, !330, !DIExpression(), !363)
    #dbg_value(i32 %and.i.1.i, !331, !DIExpression(), !363)
  %arrayidx.i.i.1.i = getelementptr inbounds [58 x i32], ptr %symbols.i.i, i64 0, i64 %inc.i.i.i, !dbg !365
  store i32 %and.i.1.i, ptr %arrayidx.i.i.1.i, align 4, !dbg !366
  %12 = load i64, ptr %count.i.i, align 8, !dbg !367
  %arrayidx2.i.i.1.i = getelementptr inbounds [58 x ptr], ptr %probs.i.i, i64 0, i64 %12, !dbg !368
  store ptr %arrayidx.i17.1.i, ptr %arrayidx2.i.i.1.i, align 8, !dbg !369
  %13 = load i64, ptr %count.i.i, align 8, !dbg !370
  %inc.i.i.1.i = add i64 %13, 1, !dbg !370
  store i64 %inc.i.i.1.i, ptr %count.i.i, align 8, !dbg !370
  %shl.i.1.i = shl nuw nsw i32 %add.i18.i, 1, !dbg !373
  %add.i18.1.i = or disjoint i32 %shl.i.1.i, %and.i.1.i, !dbg !371
    #dbg_value(i32 %add.i18.1.i, !354, !DIExpression(), !358)
    #dbg_value(i32 5, !352, !DIExpression(), !358)
  %shr.i.2.i = lshr i32 %conv.i, 5, !dbg !360
  %and.i.2.i = and i32 %shr.i.2.i, 1, !dbg !372
    #dbg_value(i32 %and.i.2.i, !355, !DIExpression(), !361)
  %idxprom.i.2.i = zext nneg i32 %add.i18.1.i to i64, !dbg !362
  %arrayidx.i17.2.i = getelementptr inbounds i16, ptr %literal.i, i64 %idxprom.i.2.i, !dbg !362
    #dbg_value(ptr %arrayidx.i17.2.i, !330, !DIExpression(), !363)
    #dbg_value(i32 %and.i.2.i, !331, !DIExpression(), !363)
  %arrayidx.i.i.2.i = getelementptr inbounds [58 x i32], ptr %symbols.i.i, i64 0, i64 %inc.i.i.1.i, !dbg !365
  store i32 %and.i.2.i, ptr %arrayidx.i.i.2.i, align 4, !dbg !366
  %14 = load i64, ptr %count.i.i, align 8, !dbg !367
  %arrayidx2.i.i.2.i = getelementptr inbounds [58 x ptr], ptr %probs.i.i, i64 0, i64 %14, !dbg !368
  store ptr %arrayidx.i17.2.i, ptr %arrayidx2.i.i.2.i, align 8, !dbg !369
  %15 = load i64, ptr %count.i.i, align 8, !dbg !370
  %inc.i.i.2.i = add i64 %15, 1, !dbg !370
  store i64 %inc.i.i.2.i, ptr %count.i.i, align 8, !dbg !370
  %shl.i.2.i = shl nuw nsw i32 %add.i18.1.i, 1, !dbg !373
  %add.i18.2.i = or disjoint i32 %shl.i.2.i, %and.i.2.i, !dbg !371
    #dbg_value(i32 %add.i18.2.i, !354, !DIExpression(), !358)
    #dbg_value(i32 4, !352, !DIExpression(), !358)
  %shr.i.3.i = lshr i32 %conv.i, 4, !dbg !360
  %and.i.3.i = and i32 %shr.i.3.i, 1, !dbg !372
    #dbg_value(i32 %and.i.3.i, !355, !DIExpression(), !361)
  %idxprom.i.3.i = zext nneg i32 %add.i18.2.i to i64, !dbg !362
  %arrayidx.i17.3.i = getelementptr inbounds i16, ptr %literal.i, i64 %idxprom.i.3.i, !dbg !362
    #dbg_value(ptr %arrayidx.i17.3.i, !330, !DIExpression(), !363)
    #dbg_value(i32 %and.i.3.i, !331, !DIExpression(), !363)
  %arrayidx.i.i.3.i = getelementptr inbounds [58 x i32], ptr %symbols.i.i, i64 0, i64 %inc.i.i.2.i, !dbg !365
  store i32 %and.i.3.i, ptr %arrayidx.i.i.3.i, align 4, !dbg !366
  %16 = load i64, ptr %count.i.i, align 8, !dbg !367
  %arrayidx2.i.i.3.i = getelementptr inbounds [58 x ptr], ptr %probs.i.i, i64 0, i64 %16, !dbg !368
  store ptr %arrayidx.i17.3.i, ptr %arrayidx2.i.i.3.i, align 8, !dbg !369
  %17 = load i64, ptr %count.i.i, align 8, !dbg !370
  %inc.i.i.3.i = add i64 %17, 1, !dbg !370
  store i64 %inc.i.i.3.i, ptr %count.i.i, align 8, !dbg !370
  %shl.i.3.i = shl nuw nsw i32 %add.i18.2.i, 1, !dbg !373
  %add.i18.3.i = or disjoint i32 %shl.i.3.i, %and.i.3.i, !dbg !371
    #dbg_value(i32 %add.i18.3.i, !354, !DIExpression(), !358)
    #dbg_value(i32 3, !352, !DIExpression(), !358)
  %shr.i.4.i = lshr i32 %conv.i, 3, !dbg !360
  %and.i.4.i = and i32 %shr.i.4.i, 1, !dbg !372
    #dbg_value(i32 %and.i.4.i, !355, !DIExpression(), !361)
  %idxprom.i.4.i = zext nneg i32 %add.i18.3.i to i64, !dbg !362
  %arrayidx.i17.4.i = getelementptr inbounds i16, ptr %literal.i, i64 %idxprom.i.4.i, !dbg !362
    #dbg_value(ptr %arrayidx.i17.4.i, !330, !DIExpression(), !363)
    #dbg_value(i32 %and.i.4.i, !331, !DIExpression(), !363)
  %arrayidx.i.i.4.i = getelementptr inbounds [58 x i32], ptr %symbols.i.i, i64 0, i64 %inc.i.i.3.i, !dbg !365
  store i32 %and.i.4.i, ptr %arrayidx.i.i.4.i, align 4, !dbg !366
  %18 = load i64, ptr %count.i.i, align 8, !dbg !367
  %arrayidx2.i.i.4.i = getelementptr inbounds [58 x ptr], ptr %probs.i.i, i64 0, i64 %18, !dbg !368
  store ptr %arrayidx.i17.4.i, ptr %arrayidx2.i.i.4.i, align 8, !dbg !369
  %19 = load i64, ptr %count.i.i, align 8, !dbg !370
  %inc.i.i.4.i = add i64 %19, 1, !dbg !370
  store i64 %inc.i.i.4.i, ptr %count.i.i, align 8, !dbg !370
  %shl.i.4.i = shl nuw nsw i32 %add.i18.3.i, 1, !dbg !373
  %add.i18.4.i = or disjoint i32 %shl.i.4.i, %and.i.4.i, !dbg !371
    #dbg_value(i32 %add.i18.4.i, !354, !DIExpression(), !358)
    #dbg_value(i32 2, !352, !DIExpression(), !358)
  %shr.i.5.i = lshr i32 %conv.i, 2, !dbg !360
  %and.i.5.i = and i32 %shr.i.5.i, 1, !dbg !372
    #dbg_value(i32 %and.i.5.i, !355, !DIExpression(), !361)
  %idxprom.i.5.i = zext nneg i32 %add.i18.4.i to i64, !dbg !362
  %arrayidx.i17.5.i = getelementptr inbounds i16, ptr %literal.i, i64 %idxprom.i.5.i, !dbg !362
    #dbg_value(ptr %arrayidx.i17.5.i, !330, !DIExpression(), !363)
    #dbg_value(i32 %and.i.5.i, !331, !DIExpression(), !363)
  %arrayidx.i.i.5.i = getelementptr inbounds [58 x i32], ptr %symbols.i.i, i64 0, i64 %inc.i.i.4.i, !dbg !365
  store i32 %and.i.5.i, ptr %arrayidx.i.i.5.i, align 4, !dbg !366
  %20 = load i64, ptr %count.i.i, align 8, !dbg !367
  %arrayidx2.i.i.5.i = getelementptr inbounds [58 x ptr], ptr %probs.i.i, i64 0, i64 %20, !dbg !368
  store ptr %arrayidx.i17.5.i, ptr %arrayidx2.i.i.5.i, align 8, !dbg !369
  %21 = load i64, ptr %count.i.i, align 8, !dbg !370
  %inc.i.i.5.i = add i64 %21, 1, !dbg !370
  store i64 %inc.i.i.5.i, ptr %count.i.i, align 8, !dbg !370
  %shl.i.5.i = shl nuw nsw i32 %add.i18.4.i, 1, !dbg !373
  %add.i18.5.i = or disjoint i32 %shl.i.5.i, %and.i.5.i, !dbg !371
    #dbg_value(i32 %add.i18.5.i, !354, !DIExpression(), !358)
    #dbg_value(i32 1, !352, !DIExpression(), !358)
  %shr.i.6.i = lshr i32 %conv.i, 1, !dbg !360
  %and.i.6.i = and i32 %shr.i.6.i, 1, !dbg !372
    #dbg_value(i32 %and.i.6.i, !355, !DIExpression(), !361)
  %idxprom.i.6.i = zext nneg i32 %add.i18.5.i to i64, !dbg !362
  %arrayidx.i17.6.i = getelementptr inbounds i16, ptr %literal.i, i64 %idxprom.i.6.i, !dbg !362
    #dbg_value(ptr %arrayidx.i17.6.i, !330, !DIExpression(), !363)
    #dbg_value(i32 %and.i.6.i, !331, !DIExpression(), !363)
  %arrayidx.i.i.6.i = getelementptr inbounds [58 x i32], ptr %symbols.i.i, i64 0, i64 %inc.i.i.5.i, !dbg !365
  store i32 %and.i.6.i, ptr %arrayidx.i.i.6.i, align 4, !dbg !366
  %22 = load i64, ptr %count.i.i, align 8, !dbg !367
  %arrayidx2.i.i.6.i = getelementptr inbounds [58 x ptr], ptr %probs.i.i, i64 0, i64 %22, !dbg !368
  store ptr %arrayidx.i17.6.i, ptr %arrayidx2.i.i.6.i, align 8, !dbg !369
  %23 = load i64, ptr %count.i.i, align 8, !dbg !370
  %inc.i.i.6.i = add i64 %23, 1, !dbg !370
  store i64 %inc.i.i.6.i, ptr %count.i.i, align 8, !dbg !370
  %shl.i.6.i = shl nuw nsw i32 %add.i18.5.i, 1, !dbg !373
  %add.i18.6.i = or disjoint i32 %shl.i.6.i, %and.i.6.i, !dbg !371
    #dbg_value(i32 %add.i18.6.i, !354, !DIExpression(), !358)
    #dbg_value(i32 0, !352, !DIExpression(), !358)
  %and.i.7.i = and i32 %conv.i, 1, !dbg !372
    #dbg_value(i32 %and.i.7.i, !355, !DIExpression(), !361)
  %idxprom.i.7.i = zext nneg i32 %add.i18.6.i to i64, !dbg !362
  %arrayidx.i17.7.i = getelementptr inbounds i16, ptr %literal.i, i64 %idxprom.i.7.i, !dbg !362
    #dbg_value(ptr %arrayidx.i17.7.i, !330, !DIExpression(), !363)
    #dbg_value(i32 %and.i.7.i, !331, !DIExpression(), !363)
  %arrayidx.i.i.7.i = getelementptr inbounds [58 x i32], ptr %symbols.i.i, i64 0, i64 %inc.i.i.6.i, !dbg !365
  store i32 %and.i.7.i, ptr %arrayidx.i.i.7.i, align 4, !dbg !366
  %24 = load i64, ptr %count.i.i, align 8, !dbg !367
  %arrayidx2.i.i.7.i = getelementptr inbounds [58 x ptr], ptr %probs.i.i, i64 0, i64 %24, !dbg !368
  store ptr %arrayidx.i17.7.i, ptr %arrayidx2.i.i.7.i, align 8, !dbg !369
  %25 = load i64, ptr %count.i.i, align 8, !dbg !370
  %inc.i.i.7.i = add i64 %25, 1, !dbg !370
  store i64 %inc.i.i.7.i, ptr %count.i.i, align 8, !dbg !370
    #dbg_value(!DIArgList(i32 %and.i.7.i, i32 %add.i18.6.i), !354, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !358)
  br label %encode_init.exit.thread, !dbg !374

encode_init.exit.thread:                          ; preds = %if.then.i, %if.else.i
  store i8 1, ptr %is_initialized, align 1, !dbg !375
  br label %if.end, !dbg !376

if.end:                                           ; preds = %encode_init.exit.thread, %entry
  %26 = getelementptr i8, ptr %mf, i64 24, !dbg !377
  %mf.val = load i32, ptr %26, align 8, !dbg !377
  %27 = getelementptr i8, ptr %mf, i64 28, !dbg !377
  %mf.val73 = load i32, ptr %27, align 4, !dbg !377
    #dbg_value(ptr undef, !378, !DIExpression(), !385)
    #dbg_value(!DIArgList(i32 %mf.val, i32 %mf.val73), !278, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !285)
  %call2108 = tail call fastcc zeroext i1 @rc_encode(ptr noundef nonnull %pcoder, ptr noundef %out, ptr noundef %out_pos, i64 noundef %out_size), !dbg !387
  br i1 %call2108, label %cleanup40, label %if.end4.lr.ph, !dbg !389

if.end4.lr.ph:                                    ; preds = %if.end
  %sub.i = sub i32 %mf.val, %mf.val73, !dbg !390
    #dbg_value(i32 %sub.i, !278, !DIExpression(), !285)
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
  br label %if.end4, !dbg !389

if.end4:                                          ; preds = %if.end4.lr.ph, %encode_symbol.exit
  %position.0109 = phi i32 [ %sub.i, %if.end4.lr.ph ], [ %add26, %encode_symbol.exit ]
    #dbg_value(i32 %position.0109, !278, !DIExpression(), !285)
  %.pre = load i32, ptr %26, align 8, !dbg !391
  br i1 %cmp.not, label %if.end11, label %land.lhs.true5, !dbg !393

land.lhs.true5:                                   ; preds = %if.end4
  %29 = load i32, ptr %27, align 4, !dbg !395
  %sub = sub i32 %.pre, %29, !dbg !396
  %cmp6.not = icmp ult i32 %sub, %limit, !dbg !397
  br i1 %cmp6.not, label %lor.lhs.false, label %while.end, !dbg !398

lor.lhs.false:                                    ; preds = %land.lhs.true5
  %30 = load i64, ptr %out_pos, align 8, !dbg !399
  %pcoder.val = load i64, ptr %28, align 8, !dbg !400
    #dbg_value(ptr undef, !401, !DIExpression(), !408)
  %sub.i74 = add i64 %30, 4, !dbg !410
  %add = add i64 %sub.i74, %pcoder.val, !dbg !411
  %cmp9 = icmp ugt i64 %add, 61438, !dbg !412
  br i1 %cmp9, label %while.end, label %if.end11, !dbg !413

if.end11:                                         ; preds = %lor.lhs.false, %if.end4
  %31 = load i32, ptr %read_limit, align 8, !dbg !414
  %cmp13.not = icmp ult i32 %.pre, %31, !dbg !415
  br i1 %cmp13.not, label %if.end22, label %if.then14, !dbg !416

if.then14:                                        ; preds = %if.end11
  %32 = load i32, ptr %action, align 8, !dbg !417
  %cmp15 = icmp eq i32 %32, 0, !dbg !420
  br i1 %cmp15, label %cleanup40, label %if.end17, !dbg !421

if.end17:                                         ; preds = %if.then14
  %33 = load i32, ptr %27, align 4, !dbg !422
  %cmp19 = icmp eq i32 %33, 0, !dbg !424
  br i1 %cmp19, label %while.end, label %if.end22, !dbg !425

if.end22:                                         ; preds = %if.end17, %if.end11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #10, !dbg !426
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %back) #10, !dbg !427
  %34 = load i8, ptr %fast_mode, align 4, !dbg !428, !range !288, !noundef !289
  %loadedv23 = trunc nuw i8 %34 to i1, !dbg !428
  br i1 %loadedv23, label %if.then24, label %if.else, !dbg !430

if.then24:                                        ; preds = %if.end22
  call void @lzma_lzma_optimum_fast(ptr noundef nonnull %pcoder, ptr noundef nonnull %mf, ptr noundef nonnull %back, ptr noundef nonnull %len) #10, !dbg !431
  br label %if.end25, !dbg !431

if.else:                                          ; preds = %if.end22
  call void @lzma_lzma_optimum_normal(ptr noundef nonnull %pcoder, ptr noundef nonnull %mf, ptr noundef nonnull %back, ptr noundef nonnull %len, i32 noundef %position.0109) #10, !dbg !432
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then24
  %35 = load i32, ptr %back, align 4, !dbg !433
  %36 = load i32, ptr %len, align 4, !dbg !434
    #dbg_value(ptr %pcoder, !435, !DIExpression(), !446)
    #dbg_value(ptr %mf, !440, !DIExpression(), !446)
    #dbg_value(i32 %35, !441, !DIExpression(), !446)
    #dbg_value(i32 %36, !442, !DIExpression(), !446)
    #dbg_value(i32 %position.0109, !443, !DIExpression(), !446)
    #dbg_value(ptr %pcoder, !444, !DIExpression(), !446)
  %37 = load i32, ptr %pos_mask.i, align 8, !dbg !448
  %and.i = and i32 %37, %position.0109, !dbg !449
    #dbg_value(i32 %and.i, !445, !DIExpression(), !446)
  %cmp.i75 = icmp eq i32 %35, -1, !dbg !450
  %38 = load i32, ptr %state.i, align 8, !dbg !452
  %idxprom.i = zext i32 %38 to i64, !dbg !452
  %idxprom1.i = zext i32 %and.i to i64, !dbg !452
  %arrayidx2.i = getelementptr inbounds [12 x [16 x i16]], ptr %is_match.i76, i64 0, i64 %idxprom.i, i64 %idxprom1.i, !dbg !452
    #dbg_value(ptr %pcoder, !324, !DIExpression(), !453)
    #dbg_value(ptr %pcoder, !324, !DIExpression(), !456)
    #dbg_value(ptr %arrayidx2.i, !330, !DIExpression(), !453)
    #dbg_value(ptr %arrayidx2.i, !330, !DIExpression(), !456)
  %39 = load i64, ptr %count.i.i78, align 8, !dbg !459
  %arrayidx.i.i79 = getelementptr inbounds [58 x i32], ptr %symbols.i.i77, i64 0, i64 %39, !dbg !461
  br i1 %cmp.i75, label %if.then.i85, label %if.else.i81, !dbg !462

if.then.i85:                                      ; preds = %if.end25
    #dbg_value(i32 0, !331, !DIExpression(), !453)
  store i32 0, ptr %arrayidx.i.i79, align 4, !dbg !463
  %40 = load i64, ptr %count.i.i78, align 8, !dbg !464
  %arrayidx2.i.i86 = getelementptr inbounds [58 x ptr], ptr %probs.i.i80, i64 0, i64 %40, !dbg !465
  store ptr %arrayidx2.i, ptr %arrayidx2.i.i86, align 8, !dbg !466
  %41 = load i64, ptr %count.i.i78, align 8, !dbg !467
  %inc.i.i87 = add i64 %41, 1, !dbg !467
  store i64 %inc.i.i87, ptr %count.i.i78, align 8, !dbg !467
    #dbg_value(ptr %pcoder, !468, !DIExpression(), !482)
    #dbg_value(ptr %mf, !473, !DIExpression(), !482)
    #dbg_value(i32 %position.0109, !474, !DIExpression(), !482)
    #dbg_value(ptr %pcoder, !475, !DIExpression(), !482)
  %42 = load ptr, ptr %mf, align 8, !dbg !484
  %43 = load i32, ptr %26, align 8, !dbg !485
  %44 = load i32, ptr %27, align 4, !dbg !486
  %sub.i.i = sub i32 %43, %44, !dbg !487
  %idxprom.i.i = zext i32 %sub.i.i to i64, !dbg !488
  %arrayidx.i49.i = getelementptr inbounds i8, ptr %42, i64 %idxprom.i.i, !dbg !488
  %45 = load i8, ptr %arrayidx.i49.i, align 1, !dbg !488
    #dbg_value(i8 %45, !476, !DIExpression(), !482)
  %46 = load i32, ptr %literal_pos_mask.i.i, align 8, !dbg !489
  %and.i.i = and i32 %46, %position.0109, !dbg !489
  %47 = load i32, ptr %literal_context_bits.i.i, align 4, !dbg !489
  %shl.i.i = shl i32 %and.i.i, %47, !dbg !489
  %sub5.i.i = add i32 %sub.i.i, -1, !dbg !489
  %idxprom6.i.i = zext i32 %sub5.i.i to i64, !dbg !489
  %arrayidx7.i.i = getelementptr inbounds i8, ptr %42, i64 %idxprom6.i.i, !dbg !489
  %48 = load i8, ptr %arrayidx7.i.i, align 1, !dbg !489
  %conv.i.i = zext i8 %48 to i32, !dbg !489
  %sub9.i.i = sub i32 8, %47, !dbg !489
  %shr.i.i89 = lshr i32 %conv.i.i, %sub9.i.i, !dbg !489
  %add.i.i = add i32 %shr.i.i89, %shl.i.i, !dbg !489
  %idxprom10.i.i = zext i32 %add.i.i to i64, !dbg !489
  %arrayidx11.i.i = getelementptr inbounds [16 x [768 x i16]], ptr %literal.i.i, i64 0, i64 %idxprom10.i.i, !dbg !489
    #dbg_value(ptr %arrayidx11.i.i, !478, !DIExpression(), !482)
  %49 = load i32, ptr %state.i, align 8, !dbg !490
  %cmp.i.i = icmp ult i32 %49, 7, !dbg !490
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i, !dbg !491

if.then.i.i:                                      ; preds = %if.then.i85
  %conv13.i.i = zext i8 %45 to i32, !dbg !492
    #dbg_value(ptr %pcoder, !346, !DIExpression(), !494)
    #dbg_value(ptr %arrayidx11.i.i, !351, !DIExpression(), !494)
    #dbg_value(i32 %conv13.i.i, !353, !DIExpression(), !494)
    #dbg_value(i32 1, !354, !DIExpression(), !494)
    #dbg_value(i32 7, !352, !DIExpression(), !494)
  %shr.i.i.i = lshr i32 %conv13.i.i, 7, !dbg !496
    #dbg_value(i32 %shr.i.i.i, !355, !DIExpression(), !497)
  %arrayidx.i.i.i90 = getelementptr inbounds i8, ptr %arrayidx11.i.i, i64 2, !dbg !498
    #dbg_value(ptr %pcoder, !324, !DIExpression(), !499)
    #dbg_value(ptr %arrayidx.i.i.i90, !330, !DIExpression(), !499)
    #dbg_value(i32 %shr.i.i.i, !331, !DIExpression(), !499)
  %arrayidx.i.i.i.i = getelementptr inbounds [58 x i32], ptr %symbols.i.i77, i64 0, i64 %inc.i.i87, !dbg !501
  store i32 %shr.i.i.i, ptr %arrayidx.i.i.i.i, align 4, !dbg !502
  %50 = load i64, ptr %count.i.i78, align 8, !dbg !503
  %arrayidx2.i.i.i.i = getelementptr inbounds [58 x ptr], ptr %probs.i.i80, i64 0, i64 %50, !dbg !504
  store ptr %arrayidx.i.i.i90, ptr %arrayidx2.i.i.i.i, align 8, !dbg !505
  %51 = load i64, ptr %count.i.i78, align 8, !dbg !506
  %inc.i.i.i.i = add i64 %51, 1, !dbg !506
  store i64 %inc.i.i.i.i, ptr %count.i.i78, align 8, !dbg !506
  %add.i.i.i = or disjoint i32 %shr.i.i.i, 2, !dbg !507
    #dbg_value(i32 %add.i.i.i, !354, !DIExpression(), !494)
    #dbg_value(i32 6, !352, !DIExpression(), !494)
  %shr.i.1.i.i = lshr i32 %conv13.i.i, 6, !dbg !496
  %and.i.1.i.i = and i32 %shr.i.1.i.i, 1, !dbg !508
    #dbg_value(i32 %and.i.1.i.i, !355, !DIExpression(), !497)
  %idxprom.i.1.i.i = zext nneg i32 %add.i.i.i to i64, !dbg !498
  %arrayidx.i.1.i.i = getelementptr inbounds i16, ptr %arrayidx11.i.i, i64 %idxprom.i.1.i.i, !dbg !498
    #dbg_value(ptr %arrayidx.i.1.i.i, !330, !DIExpression(), !499)
    #dbg_value(i32 %and.i.1.i.i, !331, !DIExpression(), !499)
  %arrayidx.i.i.1.i.i = getelementptr inbounds [58 x i32], ptr %symbols.i.i77, i64 0, i64 %inc.i.i.i.i, !dbg !501
  store i32 %and.i.1.i.i, ptr %arrayidx.i.i.1.i.i, align 4, !dbg !502
  %52 = load i64, ptr %count.i.i78, align 8, !dbg !503
  %arrayidx2.i.i.1.i.i = getelementptr inbounds [58 x ptr], ptr %probs.i.i80, i64 0, i64 %52, !dbg !504
  store ptr %arrayidx.i.1.i.i, ptr %arrayidx2.i.i.1.i.i, align 8, !dbg !505
  %53 = load i64, ptr %count.i.i78, align 8, !dbg !506
  %inc.i.i.1.i.i = add i64 %53, 1, !dbg !506
  store i64 %inc.i.i.1.i.i, ptr %count.i.i78, align 8, !dbg !506
  %shl.i.1.i.i = shl nuw nsw i32 %add.i.i.i, 1, !dbg !509
  %add.i.1.i.i = or disjoint i32 %shl.i.1.i.i, %and.i.1.i.i, !dbg !507
    #dbg_value(i32 %add.i.1.i.i, !354, !DIExpression(), !494)
    #dbg_value(i32 5, !352, !DIExpression(), !494)
  %shr.i.2.i.i = lshr i32 %conv13.i.i, 5, !dbg !496
  %and.i.2.i.i = and i32 %shr.i.2.i.i, 1, !dbg !508
    #dbg_value(i32 %and.i.2.i.i, !355, !DIExpression(), !497)
  %idxprom.i.2.i.i = zext nneg i32 %add.i.1.i.i to i64, !dbg !498
  %arrayidx.i.2.i.i = getelementptr inbounds i16, ptr %arrayidx11.i.i, i64 %idxprom.i.2.i.i, !dbg !498
    #dbg_value(ptr %arrayidx.i.2.i.i, !330, !DIExpression(), !499)
    #dbg_value(i32 %and.i.2.i.i, !331, !DIExpression(), !499)
  %arrayidx.i.i.2.i.i = getelementptr inbounds [58 x i32], ptr %symbols.i.i77, i64 0, i64 %inc.i.i.1.i.i, !dbg !501
  store i32 %and.i.2.i.i, ptr %arrayidx.i.i.2.i.i, align 4, !dbg !502
  %54 = load i64, ptr %count.i.i78, align 8, !dbg !503
  %arrayidx2.i.i.2.i.i = getelementptr inbounds [58 x ptr], ptr %probs.i.i80, i64 0, i64 %54, !dbg !504
  store ptr %arrayidx.i.2.i.i, ptr %arrayidx2.i.i.2.i.i, align 8, !dbg !505
  %55 = load i64, ptr %count.i.i78, align 8, !dbg !506
  %inc.i.i.2.i.i = add i64 %55, 1, !dbg !506
  store i64 %inc.i.i.2.i.i, ptr %count.i.i78, align 8, !dbg !506
  %shl.i.2.i.i = shl nuw nsw i32 %add.i.1.i.i, 1, !dbg !509
  %add.i.2.i.i = or disjoint i32 %shl.i.2.i.i, %and.i.2.i.i, !dbg !507
    #dbg_value(i32 %add.i.2.i.i, !354, !DIExpression(), !494)
    #dbg_value(i32 4, !352, !DIExpression(), !494)
  %shr.i.3.i.i = lshr i32 %conv13.i.i, 4, !dbg !496
  %and.i.3.i.i = and i32 %shr.i.3.i.i, 1, !dbg !508
    #dbg_value(i32 %and.i.3.i.i, !355, !DIExpression(), !497)
  %idxprom.i.3.i.i = zext nneg i32 %add.i.2.i.i to i64, !dbg !498
  %arrayidx.i.3.i.i = getelementptr inbounds i16, ptr %arrayidx11.i.i, i64 %idxprom.i.3.i.i, !dbg !498
    #dbg_value(ptr %arrayidx.i.3.i.i, !330, !DIExpression(), !499)
    #dbg_value(i32 %and.i.3.i.i, !331, !DIExpression(), !499)
  %arrayidx.i.i.3.i.i = getelementptr inbounds [58 x i32], ptr %symbols.i.i77, i64 0, i64 %inc.i.i.2.i.i, !dbg !501
  store i32 %and.i.3.i.i, ptr %arrayidx.i.i.3.i.i, align 4, !dbg !502
  %56 = load i64, ptr %count.i.i78, align 8, !dbg !503
  %arrayidx2.i.i.3.i.i = getelementptr inbounds [58 x ptr], ptr %probs.i.i80, i64 0, i64 %56, !dbg !504
  store ptr %arrayidx.i.3.i.i, ptr %arrayidx2.i.i.3.i.i, align 8, !dbg !505
  %57 = load i64, ptr %count.i.i78, align 8, !dbg !506
  %inc.i.i.3.i.i = add i64 %57, 1, !dbg !506
  store i64 %inc.i.i.3.i.i, ptr %count.i.i78, align 8, !dbg !506
  %shl.i.3.i.i = shl nuw nsw i32 %add.i.2.i.i, 1, !dbg !509
  %add.i.3.i.i = or disjoint i32 %shl.i.3.i.i, %and.i.3.i.i, !dbg !507
    #dbg_value(i32 %add.i.3.i.i, !354, !DIExpression(), !494)
    #dbg_value(i32 3, !352, !DIExpression(), !494)
  %shr.i.4.i.i = lshr i32 %conv13.i.i, 3, !dbg !496
  %and.i.4.i.i = and i32 %shr.i.4.i.i, 1, !dbg !508
    #dbg_value(i32 %and.i.4.i.i, !355, !DIExpression(), !497)
  %idxprom.i.4.i.i = zext nneg i32 %add.i.3.i.i to i64, !dbg !498
  %arrayidx.i.4.i.i = getelementptr inbounds i16, ptr %arrayidx11.i.i, i64 %idxprom.i.4.i.i, !dbg !498
    #dbg_value(ptr %arrayidx.i.4.i.i, !330, !DIExpression(), !499)
    #dbg_value(i32 %and.i.4.i.i, !331, !DIExpression(), !499)
  %arrayidx.i.i.4.i.i = getelementptr inbounds [58 x i32], ptr %symbols.i.i77, i64 0, i64 %inc.i.i.3.i.i, !dbg !501
  store i32 %and.i.4.i.i, ptr %arrayidx.i.i.4.i.i, align 4, !dbg !502
  %58 = load i64, ptr %count.i.i78, align 8, !dbg !503
  %arrayidx2.i.i.4.i.i = getelementptr inbounds [58 x ptr], ptr %probs.i.i80, i64 0, i64 %58, !dbg !504
  store ptr %arrayidx.i.4.i.i, ptr %arrayidx2.i.i.4.i.i, align 8, !dbg !505
  %59 = load i64, ptr %count.i.i78, align 8, !dbg !506
  %inc.i.i.4.i.i = add i64 %59, 1, !dbg !506
  store i64 %inc.i.i.4.i.i, ptr %count.i.i78, align 8, !dbg !506
  %shl.i.4.i.i = shl nuw nsw i32 %add.i.3.i.i, 1, !dbg !509
  %add.i.4.i.i = or disjoint i32 %shl.i.4.i.i, %and.i.4.i.i, !dbg !507
    #dbg_value(i32 %add.i.4.i.i, !354, !DIExpression(), !494)
    #dbg_value(i32 2, !352, !DIExpression(), !494)
  %shr.i.5.i.i = lshr i32 %conv13.i.i, 2, !dbg !496
  %and.i.5.i.i = and i32 %shr.i.5.i.i, 1, !dbg !508
    #dbg_value(i32 %and.i.5.i.i, !355, !DIExpression(), !497)
  %idxprom.i.5.i.i = zext nneg i32 %add.i.4.i.i to i64, !dbg !498
  %arrayidx.i.5.i.i = getelementptr inbounds i16, ptr %arrayidx11.i.i, i64 %idxprom.i.5.i.i, !dbg !498
    #dbg_value(ptr %arrayidx.i.5.i.i, !330, !DIExpression(), !499)
    #dbg_value(i32 %and.i.5.i.i, !331, !DIExpression(), !499)
  %arrayidx.i.i.5.i.i = getelementptr inbounds [58 x i32], ptr %symbols.i.i77, i64 0, i64 %inc.i.i.4.i.i, !dbg !501
  store i32 %and.i.5.i.i, ptr %arrayidx.i.i.5.i.i, align 4, !dbg !502
  %60 = load i64, ptr %count.i.i78, align 8, !dbg !503
  %arrayidx2.i.i.5.i.i = getelementptr inbounds [58 x ptr], ptr %probs.i.i80, i64 0, i64 %60, !dbg !504
  store ptr %arrayidx.i.5.i.i, ptr %arrayidx2.i.i.5.i.i, align 8, !dbg !505
  %61 = load i64, ptr %count.i.i78, align 8, !dbg !506
  %inc.i.i.5.i.i = add i64 %61, 1, !dbg !506
  store i64 %inc.i.i.5.i.i, ptr %count.i.i78, align 8, !dbg !506
  %shl.i.5.i.i = shl nuw nsw i32 %add.i.4.i.i, 1, !dbg !509
  %add.i.5.i.i = or disjoint i32 %shl.i.5.i.i, %and.i.5.i.i, !dbg !507
    #dbg_value(i32 %add.i.5.i.i, !354, !DIExpression(), !494)
    #dbg_value(i32 1, !352, !DIExpression(), !494)
  %shr.i.6.i.i = lshr i32 %conv13.i.i, 1, !dbg !496
  %and.i.6.i.i = and i32 %shr.i.6.i.i, 1, !dbg !508
    #dbg_value(i32 %and.i.6.i.i, !355, !DIExpression(), !497)
  %idxprom.i.6.i.i = zext nneg i32 %add.i.5.i.i to i64, !dbg !498
  %arrayidx.i.6.i.i = getelementptr inbounds i16, ptr %arrayidx11.i.i, i64 %idxprom.i.6.i.i, !dbg !498
    #dbg_value(ptr %arrayidx.i.6.i.i, !330, !DIExpression(), !499)
    #dbg_value(i32 %and.i.6.i.i, !331, !DIExpression(), !499)
  %arrayidx.i.i.6.i.i = getelementptr inbounds [58 x i32], ptr %symbols.i.i77, i64 0, i64 %inc.i.i.5.i.i, !dbg !501
  store i32 %and.i.6.i.i, ptr %arrayidx.i.i.6.i.i, align 4, !dbg !502
  %62 = load i64, ptr %count.i.i78, align 8, !dbg !503
  %arrayidx2.i.i.6.i.i = getelementptr inbounds [58 x ptr], ptr %probs.i.i80, i64 0, i64 %62, !dbg !504
  store ptr %arrayidx.i.6.i.i, ptr %arrayidx2.i.i.6.i.i, align 8, !dbg !505
  %63 = load i64, ptr %count.i.i78, align 8, !dbg !506
  %inc.i.i.6.i.i = add i64 %63, 1, !dbg !506
  store i64 %inc.i.i.6.i.i, ptr %count.i.i78, align 8, !dbg !506
  %shl.i.6.i.i = shl nuw nsw i32 %add.i.5.i.i, 1, !dbg !509
  %add.i.6.i.i = or disjoint i32 %shl.i.6.i.i, %and.i.6.i.i, !dbg !507
    #dbg_value(i32 %add.i.6.i.i, !354, !DIExpression(), !494)
    #dbg_value(i32 0, !352, !DIExpression(), !494)
  %and.i.7.i.i = and i32 %conv13.i.i, 1, !dbg !508
    #dbg_value(i32 %and.i.7.i.i, !355, !DIExpression(), !497)
  %idxprom.i.7.i.i = zext nneg i32 %add.i.6.i.i to i64, !dbg !498
  %arrayidx.i.7.i.i = getelementptr inbounds i16, ptr %arrayidx11.i.i, i64 %idxprom.i.7.i.i, !dbg !498
    #dbg_value(ptr %arrayidx.i.7.i.i, !330, !DIExpression(), !499)
    #dbg_value(i32 %and.i.7.i.i, !331, !DIExpression(), !499)
  %arrayidx.i.i.7.i.i = getelementptr inbounds [58 x i32], ptr %symbols.i.i77, i64 0, i64 %inc.i.i.6.i.i, !dbg !501
  store i32 %and.i.7.i.i, ptr %arrayidx.i.i.7.i.i, align 4, !dbg !502
  %64 = load i64, ptr %count.i.i78, align 8, !dbg !503
  %arrayidx2.i.i.7.i.i = getelementptr inbounds [58 x ptr], ptr %probs.i.i80, i64 0, i64 %64, !dbg !504
  store ptr %arrayidx.i.7.i.i, ptr %arrayidx2.i.i.7.i.i, align 8, !dbg !505
  %65 = load i64, ptr %count.i.i78, align 8, !dbg !506
  %inc.i.i.7.i.i = add i64 %65, 1, !dbg !506
  store i64 %inc.i.i.7.i.i, ptr %count.i.i78, align 8, !dbg !506
    #dbg_value(!DIArgList(i32 %and.i.7.i.i, i32 %add.i.6.i.i), !354, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !494)
  br label %if.end.i.i, !dbg !510

if.else.i.i:                                      ; preds = %if.then.i85
  %66 = load i32, ptr %reps.i64.i, align 4, !dbg !511
  %67 = xor i32 %66, -1, !dbg !512
  %sub20.i.i = add i32 %sub.i.i, %67, !dbg !513
  %idxprom21.i.i = zext i32 %sub20.i.i to i64, !dbg !514
  %arrayidx22.i.i = getelementptr inbounds i8, ptr %42, i64 %idxprom21.i.i, !dbg !514
  %68 = load i8, ptr %arrayidx22.i.i, align 1, !dbg !514
    #dbg_value(i8 %68, !479, !DIExpression(), !515)
  %conv24.i.i = zext i8 %68 to i32, !dbg !516
  %conv25.i.i = zext i8 %45 to i32, !dbg !517
    #dbg_value(ptr %pcoder, !518, !DIExpression(), !529)
    #dbg_value(ptr %arrayidx11.i.i, !521, !DIExpression(), !529)
    #dbg_value(i32 %conv24.i.i, !522, !DIExpression(), !529)
    #dbg_value(i32 %conv25.i.i, !523, !DIExpression(), !529)
    #dbg_value(i32 256, !524, !DIExpression(), !529)
  %add.i63.i.i = or disjoint i32 %conv25.i.i, 256, !dbg !531
    #dbg_value(i32 %add.i63.i.i, !523, !DIExpression(), !529)
  br label %do.body.i68.i.i, !dbg !532

do.body.i68.i.i:                                  ; preds = %do.body.i68.i.i, %if.else.i.i
  %69 = phi i64 [ %inc.i.i87, %if.else.i.i ], [ %inc.i.i76.i.i, %do.body.i68.i.i ], !dbg !533
  %offset.0.i.i.i = phi i32 [ 256, %if.else.i.i ], [ %and6.i.i.i, %do.body.i68.i.i ], !dbg !529
  %symbol.addr.0.i.i.i = phi i32 [ %add.i63.i.i, %if.else.i.i ], [ %shl5.i.i.i, %do.body.i68.i.i ], !dbg !529
  %match_byte.addr.0.i.i.i = phi i32 [ %conv24.i.i, %if.else.i.i ], [ %shl.i69.i.i, %do.body.i68.i.i ]
    #dbg_value(i32 %match_byte.addr.0.i.i.i, !522, !DIExpression(), !529)
    #dbg_value(i32 %symbol.addr.0.i.i.i, !523, !DIExpression(), !529)
    #dbg_value(i32 %offset.0.i.i.i, !524, !DIExpression(), !529)
  %shl.i69.i.i = shl i32 %match_byte.addr.0.i.i.i, 1, !dbg !535
    #dbg_value(i32 %shl.i69.i.i, !522, !DIExpression(), !529)
  %and.i70.i.i = and i32 %shl.i69.i.i, %offset.0.i.i.i, !dbg !536
    #dbg_value(i32 %and.i70.i.i, !525, !DIExpression(), !537)
  %shr.i71.i.i = lshr i32 %symbol.addr.0.i.i.i, 8, !dbg !538
  %add1.i.i.i = add nuw nsw i32 %shr.i71.i.i, %offset.0.i.i.i, !dbg !539
  %add2.i.i.i = add nuw nsw i32 %add1.i.i.i, %and.i70.i.i, !dbg !540
    #dbg_value(i32 %add2.i.i.i, !527, !DIExpression(), !537)
  %shr3.i.i.i = lshr i32 %symbol.addr.0.i.i.i, 7, !dbg !541
  %and4.i.i.i = and i32 %shr3.i.i.i, 1, !dbg !542
    #dbg_value(i32 %and4.i.i.i, !528, !DIExpression(), !537)
  %idxprom.i72.i.i = zext nneg i32 %add2.i.i.i to i64, !dbg !543
  %arrayidx.i73.i.i = getelementptr inbounds i16, ptr %arrayidx11.i.i, i64 %idxprom.i72.i.i, !dbg !543
    #dbg_value(ptr %pcoder, !324, !DIExpression(), !544)
    #dbg_value(ptr %arrayidx.i73.i.i, !330, !DIExpression(), !544)
    #dbg_value(i32 %and4.i.i.i, !331, !DIExpression(), !544)
  %arrayidx.i.i74.i.i = getelementptr inbounds [58 x i32], ptr %symbols.i.i77, i64 0, i64 %69, !dbg !545
  store i32 %and4.i.i.i, ptr %arrayidx.i.i74.i.i, align 4, !dbg !546
  %70 = load i64, ptr %count.i.i78, align 8, !dbg !547
  %arrayidx2.i.i75.i.i = getelementptr inbounds [58 x ptr], ptr %probs.i.i80, i64 0, i64 %70, !dbg !548
  store ptr %arrayidx.i73.i.i, ptr %arrayidx2.i.i75.i.i, align 8, !dbg !549
  %71 = load i64, ptr %count.i.i78, align 8, !dbg !550
  %inc.i.i76.i.i = add i64 %71, 1, !dbg !550
  store i64 %inc.i.i76.i.i, ptr %count.i.i78, align 8, !dbg !550
  %shl5.i.i.i = shl nuw nsw i32 %symbol.addr.0.i.i.i, 1, !dbg !551
    #dbg_value(i32 %shl5.i.i.i, !523, !DIExpression(), !529)
  %72 = xor i32 %shl5.i.i.i, %shl.i69.i.i, !dbg !552
  %not.i.i.i = xor i32 %72, -1, !dbg !552
  %and6.i.i.i = and i32 %offset.0.i.i.i, %not.i.i.i, !dbg !553
    #dbg_value(i32 %and6.i.i.i, !524, !DIExpression(), !529)
  %cmp.i.i.i = icmp ult i32 %symbol.addr.0.i.i.i, 32768, !dbg !554
  br i1 %cmp.i.i.i, label %do.body.i68.i.i, label %if.end.i.i, !dbg !555, !llvm.loop !556

if.end.i.i:                                       ; preds = %do.body.i68.i.i, %if.then.i.i
  %73 = load i32, ptr %state.i, align 8, !dbg !510
  %cmp27.i.i = icmp ult i32 %73, 4, !dbg !510
  br i1 %cmp27.i.i, label %literal.exit.i, label %cond.false.i.i, !dbg !510

cond.false.i.i:                                   ; preds = %if.end.i.i
  %cmp30.i.i = icmp ult i32 %73, 10, !dbg !510
  br i1 %cmp30.i.i, label %cond.true32.i.i, label %cond.false35.i.i, !dbg !510

cond.true32.i.i:                                  ; preds = %cond.false.i.i
  %sub34.i.i = add nsw i32 %73, -3, !dbg !510
  br label %literal.exit.i, !dbg !510

cond.false35.i.i:                                 ; preds = %cond.false.i.i
  %sub37.i.i = add i32 %73, -6, !dbg !510
  br label %literal.exit.i, !dbg !510

literal.exit.i:                                   ; preds = %cond.false35.i.i, %cond.true32.i.i, %if.end.i.i
  %cond39.i.i = phi i32 [ 0, %if.end.i.i ], [ %sub34.i.i, %cond.true32.i.i ], [ %sub37.i.i, %cond.false35.i.i ], !dbg !510
  store i32 %cond39.i.i, ptr %state.i, align 8, !dbg !510
  %.pre111 = load i32, ptr %len, align 4, !dbg !558
  br label %encode_symbol.exit, !dbg !559

if.else.i81:                                      ; preds = %if.end25
    #dbg_value(i32 1, !331, !DIExpression(), !456)
  store i32 1, ptr %arrayidx.i.i79, align 4, !dbg !560
  %74 = load i64, ptr %count.i.i78, align 8, !dbg !561
  %arrayidx2.i54.i = getelementptr inbounds [58 x ptr], ptr %probs.i.i80, i64 0, i64 %74, !dbg !562
  store ptr %arrayidx2.i, ptr %arrayidx2.i54.i, align 8, !dbg !563
  %75 = load i64, ptr %count.i.i78, align 8, !dbg !564
  %inc.i55.i = add i64 %75, 1, !dbg !564
  store i64 %inc.i55.i, ptr %count.i.i78, align 8, !dbg !564
  %cmp10.i = icmp ult i32 %35, 4, !dbg !565
  %76 = load i32, ptr %state.i, align 8, !dbg !567
  %idxprom14.i = zext i32 %76 to i64, !dbg !567
  %arrayidx15.i = getelementptr inbounds [12 x i16], ptr %is_rep.i, i64 0, i64 %idxprom14.i, !dbg !567
    #dbg_value(ptr %pcoder, !324, !DIExpression(), !568)
    #dbg_value(ptr %pcoder, !324, !DIExpression(), !571)
    #dbg_value(ptr %arrayidx15.i, !330, !DIExpression(), !568)
    #dbg_value(ptr %arrayidx15.i, !330, !DIExpression(), !571)
  %arrayidx.i58.i = getelementptr inbounds [58 x i32], ptr %symbols.i.i77, i64 0, i64 %inc.i55.i, !dbg !574
  br i1 %cmp10.i, label %if.then11.i, label %if.else16.i, !dbg !576

if.then11.i:                                      ; preds = %if.else.i81
    #dbg_value(i32 1, !331, !DIExpression(), !568)
  store i32 1, ptr %arrayidx.i58.i, align 4, !dbg !577
  %77 = load i64, ptr %count.i.i78, align 8, !dbg !578
  %arrayidx2.i60.i = getelementptr inbounds [58 x ptr], ptr %probs.i.i80, i64 0, i64 %77, !dbg !579
  store ptr %arrayidx15.i, ptr %arrayidx2.i60.i, align 8, !dbg !580
  %78 = load i64, ptr %count.i.i78, align 8, !dbg !581
  %inc.i61.i = add i64 %78, 1, !dbg !581
  store i64 %inc.i61.i, ptr %count.i.i78, align 8, !dbg !581
    #dbg_value(ptr %pcoder, !582, !DIExpression(), !594)
    #dbg_value(i32 %and.i, !587, !DIExpression(), !594)
    #dbg_value(i32 %35, !588, !DIExpression(), !594)
    #dbg_value(i32 %36, !589, !DIExpression(), !594)
    #dbg_value(ptr %pcoder, !590, !DIExpression(), !594)
  %cmp.i62.i = icmp eq i32 %35, 0, !dbg !596
  br i1 %cmp.i62.i, label %if.then.i67.i, label %if.else.i63.i, !dbg !597

if.then.i67.i:                                    ; preds = %if.then11.i
  %79 = load i32, ptr %state.i, align 8, !dbg !598
  %idxprom.i69.i = zext i32 %79 to i64, !dbg !600
  %arrayidx.i70.i = getelementptr inbounds [12 x i16], ptr %is_rep011.i.i, i64 0, i64 %idxprom.i69.i, !dbg !600
    #dbg_value(ptr %pcoder, !324, !DIExpression(), !601)
    #dbg_value(ptr %arrayidx.i70.i, !330, !DIExpression(), !601)
    #dbg_value(i32 0, !331, !DIExpression(), !601)
  %arrayidx.i.i71.i = getelementptr inbounds [58 x i32], ptr %symbols.i.i77, i64 0, i64 %inc.i61.i, !dbg !603
  store i32 0, ptr %arrayidx.i.i71.i, align 4, !dbg !604
  %80 = load i64, ptr %count.i.i78, align 8, !dbg !605
  %arrayidx2.i.i.i83 = getelementptr inbounds [58 x ptr], ptr %probs.i.i80, i64 0, i64 %80, !dbg !606
  store ptr %arrayidx.i70.i, ptr %arrayidx2.i.i.i83, align 8, !dbg !607
  %81 = load i64, ptr %count.i.i78, align 8, !dbg !608
  %inc.i.i.i84 = add i64 %81, 1, !dbg !608
  store i64 %inc.i.i.i84, ptr %count.i.i78, align 8, !dbg !608
  %82 = load i32, ptr %state.i, align 8, !dbg !609
  %idxprom3.i.i = zext i32 %82 to i64, !dbg !610
  %arrayidx6.i.i = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long.i.i, i64 0, i64 %idxprom3.i.i, i64 %idxprom1.i, !dbg !610
  %cmp7.i.i = icmp ne i32 %36, 1, !dbg !611
  %conv.i72.i = zext i1 %cmp7.i.i to i32, !dbg !611
    #dbg_value(ptr %pcoder, !324, !DIExpression(), !612)
    #dbg_value(ptr %arrayidx6.i.i, !330, !DIExpression(), !612)
    #dbg_value(i32 %conv.i72.i, !331, !DIExpression(), !612)
  %arrayidx.i107.i.i = getelementptr inbounds [58 x i32], ptr %symbols.i.i77, i64 0, i64 %inc.i.i.i84, !dbg !614
  store i32 %conv.i72.i, ptr %arrayidx.i107.i.i, align 4, !dbg !615
  %83 = load i64, ptr %count.i.i78, align 8, !dbg !616
  %arrayidx2.i109.i.i = getelementptr inbounds [58 x ptr], ptr %probs.i.i80, i64 0, i64 %83, !dbg !617
  store ptr %arrayidx6.i.i, ptr %arrayidx2.i109.i.i, align 8, !dbg !618
  %84 = load i64, ptr %count.i.i78, align 8, !dbg !619
  %inc.i110.i.i = add i64 %84, 1, !dbg !619
  store i64 %inc.i110.i.i, ptr %count.i.i78, align 8, !dbg !619
  br label %if.end50.i.i, !dbg !620

if.else.i63.i:                                    ; preds = %if.then11.i
  %idxprom8.i.i = zext nneg i32 %35 to i64, !dbg !621
  %arrayidx9.i.i = getelementptr inbounds [4 x i32], ptr %reps.i64.i, i64 0, i64 %idxprom8.i.i, !dbg !621
  %85 = load i32, ptr %arrayidx9.i.i, align 4, !dbg !621
    #dbg_value(i32 %85, !591, !DIExpression(), !622)
  %86 = load i32, ptr %state.i, align 8, !dbg !623
  %idxprom13.i.i = zext i32 %86 to i64, !dbg !624
  %arrayidx14.i.i = getelementptr inbounds [12 x i16], ptr %is_rep011.i.i, i64 0, i64 %idxprom13.i.i, !dbg !624
    #dbg_value(ptr %pcoder, !324, !DIExpression(), !625)
    #dbg_value(ptr %arrayidx14.i.i, !330, !DIExpression(), !625)
    #dbg_value(i32 1, !331, !DIExpression(), !625)
  %arrayidx.i113.i.i = getelementptr inbounds [58 x i32], ptr %symbols.i.i77, i64 0, i64 %inc.i61.i, !dbg !627
  store i32 1, ptr %arrayidx.i113.i.i, align 4, !dbg !628
  %87 = load i64, ptr %count.i.i78, align 8, !dbg !629
  %arrayidx2.i115.i.i = getelementptr inbounds [58 x ptr], ptr %probs.i.i80, i64 0, i64 %87, !dbg !630
  store ptr %arrayidx14.i.i, ptr %arrayidx2.i115.i.i, align 8, !dbg !631
  %88 = load i64, ptr %count.i.i78, align 8, !dbg !632
  %inc.i116.i.i = add i64 %88, 1, !dbg !632
  store i64 %inc.i116.i.i, ptr %count.i.i78, align 8, !dbg !632
  %cmp15.i.i = icmp eq i32 %35, 1, !dbg !633
  %89 = load i32, ptr %state.i, align 8, !dbg !635
  %idxprom20.i.i = zext i32 %89 to i64, !dbg !635
  %arrayidx21.i.i = getelementptr inbounds [12 x i16], ptr %is_rep1.i.i, i64 0, i64 %idxprom20.i.i, !dbg !635
    #dbg_value(ptr %pcoder, !324, !DIExpression(), !636)
    #dbg_value(ptr %pcoder, !324, !DIExpression(), !639)
    #dbg_value(ptr %arrayidx21.i.i, !330, !DIExpression(), !636)
    #dbg_value(ptr %arrayidx21.i.i, !330, !DIExpression(), !639)
  %arrayidx.i119.i.i = getelementptr inbounds [58 x i32], ptr %symbols.i.i77, i64 0, i64 %inc.i116.i.i, !dbg !642
  br i1 %cmp15.i.i, label %if.then17.i.i, label %if.else22.i.i, !dbg !644

if.then17.i.i:                                    ; preds = %if.else.i63.i
    #dbg_value(i32 0, !331, !DIExpression(), !636)
  store i32 0, ptr %arrayidx.i119.i.i, align 4, !dbg !645
  %90 = load i64, ptr %count.i.i78, align 8, !dbg !646
  %arrayidx2.i121.i.i = getelementptr inbounds [58 x ptr], ptr %probs.i.i80, i64 0, i64 %90, !dbg !647
  store ptr %arrayidx21.i.i, ptr %arrayidx2.i121.i.i, align 8, !dbg !648
  %91 = load i64, ptr %count.i.i78, align 8, !dbg !649
  %inc.i122.i.i = add i64 %91, 1, !dbg !649
  store i64 %inc.i122.i.i, ptr %count.i.i78, align 8, !dbg !649
  br label %if.end43.i.i, !dbg !650

if.else22.i.i:                                    ; preds = %if.else.i63.i
    #dbg_value(i32 1, !331, !DIExpression(), !639)
  store i32 1, ptr %arrayidx.i119.i.i, align 4, !dbg !651
  %92 = load i64, ptr %count.i.i78, align 8, !dbg !652
  %arrayidx2.i127.i.i = getelementptr inbounds [58 x ptr], ptr %probs.i.i80, i64 0, i64 %92, !dbg !653
  store ptr %arrayidx21.i.i, ptr %arrayidx2.i127.i.i, align 8, !dbg !654
  %93 = load i64, ptr %count.i.i78, align 8, !dbg !655
  %inc.i128.i.i = add i64 %93, 1, !dbg !655
  store i64 %inc.i128.i.i, ptr %count.i.i78, align 8, !dbg !655
  %94 = load i32, ptr %state.i, align 8, !dbg !656
  %idxprom30.i.i = zext i32 %94 to i64, !dbg !657
  %arrayidx31.i.i = getelementptr inbounds [12 x i16], ptr %is_rep2.i.i, i64 0, i64 %idxprom30.i.i, !dbg !657
  %sub.i65.i = add nsw i32 %35, -2, !dbg !658
    #dbg_value(ptr %pcoder, !324, !DIExpression(), !659)
    #dbg_value(ptr %arrayidx31.i.i, !330, !DIExpression(), !659)
    #dbg_value(i32 %sub.i65.i, !331, !DIExpression(), !659)
  %arrayidx.i131.i.i = getelementptr inbounds [58 x i32], ptr %symbols.i.i77, i64 0, i64 %inc.i128.i.i, !dbg !661
  store i32 %sub.i65.i, ptr %arrayidx.i131.i.i, align 4, !dbg !662
  %95 = load i64, ptr %count.i.i78, align 8, !dbg !663
  %arrayidx2.i133.i.i = getelementptr inbounds [58 x ptr], ptr %probs.i.i80, i64 0, i64 %95, !dbg !664
  store ptr %arrayidx31.i.i, ptr %arrayidx2.i133.i.i, align 8, !dbg !665
  %96 = load i64, ptr %count.i.i78, align 8, !dbg !666
  %inc.i134.i.i = add i64 %96, 1, !dbg !666
  store i64 %inc.i134.i.i, ptr %count.i.i78, align 8, !dbg !666
  %cmp32.i.i = icmp eq i32 %35, 3, !dbg !667
  br i1 %cmp32.i.i, label %if.then34.i.i, label %if.end.i66.i, !dbg !669

if.then34.i.i:                                    ; preds = %if.else22.i.i
  %97 = load i32, ptr %arrayidx36.i.i, align 4, !dbg !670
  store i32 %97, ptr %arrayidx38.i.i, align 4, !dbg !671
  br label %if.end.i66.i, !dbg !672

if.end.i66.i:                                     ; preds = %if.then34.i.i, %if.else22.i.i
  %98 = load i32, ptr %arrayidx40.i.i, align 4, !dbg !673
  store i32 %98, ptr %arrayidx36.i.i, align 4, !dbg !674
  br label %if.end43.i.i

if.end43.i.i:                                     ; preds = %if.end.i66.i, %if.then17.i.i
  %99 = load i32, ptr %reps.i64.i, align 4, !dbg !675
  store i32 %99, ptr %arrayidx40.i.i, align 4, !dbg !676
  store i32 %85, ptr %reps.i64.i, align 4, !dbg !677
  br label %if.end50.i.i

if.end50.i.i:                                     ; preds = %if.end43.i.i, %if.then.i67.i
  %cmp51.i.i = icmp eq i32 %36, 1, !dbg !678
  br i1 %cmp51.i.i, label %rep_match.exit.i, label %if.else58.i.i, !dbg !680

if.else58.i.i:                                    ; preds = %if.end50.i.i
  %100 = load i8, ptr %fast_mode, align 4, !dbg !681, !range !288, !noundef !289
  %loadedv.i.i = trunc nuw i8 %100 to i1, !dbg !681
  call fastcc void @length(ptr noundef nonnull %pcoder, ptr noundef nonnull %rep_len_encoder.i.i, i32 noundef %and.i, i32 noundef %36, i1 noundef zeroext %loadedv.i.i), !dbg !683
  br label %rep_match.exit.i

rep_match.exit.i:                                 ; preds = %if.else58.i.i, %if.end50.i.i
  %.sink.i.i = phi i32 [ 8, %if.else58.i.i ], [ 9, %if.end50.i.i ]
  %101 = load i32, ptr %state.i, align 8, !dbg !684
  %cmp61.i.i = icmp ult i32 %101, 7, !dbg !684
  %cond63.i.i = select i1 %cmp61.i.i, i32 %.sink.i.i, i32 11, !dbg !684
  store i32 %cond63.i.i, ptr %state.i, align 8, !dbg !684
  br label %encode_symbol.exit, !dbg !685

if.else16.i:                                      ; preds = %if.else.i81
    #dbg_value(i32 0, !331, !DIExpression(), !571)
  store i32 0, ptr %arrayidx.i58.i, align 4, !dbg !686
  %102 = load i64, ptr %count.i.i78, align 8, !dbg !687
  %arrayidx2.i77.i = getelementptr inbounds [58 x ptr], ptr %probs.i.i80, i64 0, i64 %102, !dbg !688
  store ptr %arrayidx15.i, ptr %arrayidx2.i77.i, align 8, !dbg !689
  %103 = load i64, ptr %count.i.i78, align 8, !dbg !690
  %inc.i78.i = add i64 %103, 1, !dbg !690
  store i64 %inc.i78.i, ptr %count.i.i78, align 8, !dbg !690
  %sub.i82 = add i32 %35, -4, !dbg !691
  call fastcc void @match(ptr noundef nonnull %pcoder, i32 noundef %and.i, i32 noundef %sub.i82, i32 noundef %36), !dbg !692
  br label %encode_symbol.exit

encode_symbol.exit:                               ; preds = %literal.exit.i, %rep_match.exit.i, %if.else16.i
  %104 = phi i32 [ %.pre111, %literal.exit.i ], [ %36, %rep_match.exit.i ], [ %36, %if.else16.i ], !dbg !558
  %105 = load i32, ptr %27, align 4, !dbg !693
  %sub23.i = sub i32 %105, %36, !dbg !693
  store i32 %sub23.i, ptr %27, align 4, !dbg !693
  %add26 = add i32 %104, %position.0109, !dbg !694
    #dbg_value(i32 %add26, !278, !DIExpression(), !285)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %back) #10, !dbg !695
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #10, !dbg !695
  %call2 = call fastcc zeroext i1 @rc_encode(ptr noundef nonnull %pcoder, ptr noundef %out, ptr noundef %out_pos, i64 noundef %out_size), !dbg !387
  br i1 %call2, label %cleanup40, label %if.end4, !dbg !389, !llvm.loop !696

while.end:                                        ; preds = %if.end17, %land.lhs.true5, %lor.lhs.false
  %is_flushed = getelementptr inbounds i8, ptr %pcoder, i64 2958, !dbg !698
  %106 = load i8, ptr %is_flushed, align 2, !dbg !698, !range !288, !noundef !289
  %loadedv27 = trunc nuw i8 %106 to i1, !dbg !698
  br i1 %loadedv27, label %if.end38, label %if.then28, !dbg !700

if.then28:                                        ; preds = %while.end
  store i8 1, ptr %is_flushed, align 2, !dbg !701
  br i1 %cmp.not, label %if.then31, label %if.end32, !dbg !703

if.then31:                                        ; preds = %if.then28
    #dbg_value(ptr %pcoder, !704, !DIExpression(), !712)
    #dbg_value(i32 %position.0109, !709, !DIExpression(), !712)
    #dbg_value(ptr %pcoder, !710, !DIExpression(), !712)
  %107 = load i32, ptr %pos_mask.i, align 8, !dbg !715
  %and.i92 = and i32 %107, %position.0109, !dbg !716
    #dbg_value(i32 %and.i92, !711, !DIExpression(), !712)
  %108 = load i32, ptr %state.i, align 8, !dbg !717
  %idxprom.i95 = zext i32 %108 to i64, !dbg !718
  %idxprom1.i96 = zext i32 %and.i92 to i64, !dbg !718
  %arrayidx2.i97 = getelementptr inbounds [12 x [16 x i16]], ptr %is_match.i76, i64 0, i64 %idxprom.i95, i64 %idxprom1.i96, !dbg !718
    #dbg_value(ptr %pcoder, !324, !DIExpression(), !719)
    #dbg_value(ptr %arrayidx2.i97, !330, !DIExpression(), !719)
    #dbg_value(i32 1, !331, !DIExpression(), !719)
  %109 = load i64, ptr %count.i.i78, align 8, !dbg !721
  %arrayidx.i.i100 = getelementptr inbounds [58 x i32], ptr %symbols.i.i77, i64 0, i64 %109, !dbg !722
  store i32 1, ptr %arrayidx.i.i100, align 4, !dbg !723
  %110 = load i64, ptr %count.i.i78, align 8, !dbg !724
  %arrayidx2.i.i102 = getelementptr inbounds [58 x ptr], ptr %probs.i.i80, i64 0, i64 %110, !dbg !725
  store ptr %arrayidx2.i97, ptr %arrayidx2.i.i102, align 8, !dbg !726
  %111 = load i64, ptr %count.i.i78, align 8, !dbg !727
  %inc.i.i103 = add i64 %111, 1, !dbg !727
  store i64 %inc.i.i103, ptr %count.i.i78, align 8, !dbg !727
  %112 = load i32, ptr %state.i, align 8, !dbg !728
  %idxprom5.i = zext i32 %112 to i64, !dbg !729
  %arrayidx6.i = getelementptr inbounds [12 x i16], ptr %is_rep.i, i64 0, i64 %idxprom5.i, !dbg !729
    #dbg_value(ptr %pcoder, !324, !DIExpression(), !730)
    #dbg_value(ptr %arrayidx6.i, !330, !DIExpression(), !730)
    #dbg_value(i32 0, !331, !DIExpression(), !730)
  %arrayidx.i17.i105 = getelementptr inbounds [58 x i32], ptr %symbols.i.i77, i64 0, i64 %inc.i.i103, !dbg !732
  store i32 0, ptr %arrayidx.i17.i105, align 4, !dbg !733
  %113 = load i64, ptr %count.i.i78, align 8, !dbg !734
  %arrayidx2.i19.i = getelementptr inbounds [58 x ptr], ptr %probs.i.i80, i64 0, i64 %113, !dbg !735
  store ptr %arrayidx6.i, ptr %arrayidx2.i19.i, align 8, !dbg !736
  %114 = load i64, ptr %count.i.i78, align 8, !dbg !737
  %inc.i20.i = add i64 %114, 1, !dbg !737
  store i64 %inc.i20.i, ptr %count.i.i78, align 8, !dbg !737
  call fastcc void @match(ptr noundef nonnull %pcoder, i32 noundef %and.i92, i32 noundef -1, i32 noundef 2), !dbg !738
  br label %if.end32, !dbg !739

if.end32:                                         ; preds = %if.then31, %if.then28
    #dbg_value(ptr %pcoder, !740, !DIExpression(), !747)
    #dbg_value(i64 0, !745, !DIExpression(), !749)
  %115 = load i64, ptr %count.i.i78, align 8, !dbg !750
  %inc.i = add i64 %115, 1, !dbg !750
  store i64 %inc.i, ptr %count.i.i78, align 8, !dbg !750
  %arrayidx.i = getelementptr inbounds [58 x i32], ptr %symbols.i.i77, i64 0, i64 %115, !dbg !752
  store i32 4, ptr %arrayidx.i, align 4, !dbg !753
    #dbg_value(i64 1, !745, !DIExpression(), !749)
  %116 = load i64, ptr %count.i.i78, align 8, !dbg !750
  %inc.1.i = add i64 %116, 1, !dbg !750
  store i64 %inc.1.i, ptr %count.i.i78, align 8, !dbg !750
  %arrayidx.1.i = getelementptr inbounds [58 x i32], ptr %symbols.i.i77, i64 0, i64 %116, !dbg !752
  store i32 4, ptr %arrayidx.1.i, align 4, !dbg !753
    #dbg_value(i64 2, !745, !DIExpression(), !749)
  %117 = load i64, ptr %count.i.i78, align 8, !dbg !750
  %inc.2.i = add i64 %117, 1, !dbg !750
  store i64 %inc.2.i, ptr %count.i.i78, align 8, !dbg !750
  %arrayidx.2.i = getelementptr inbounds [58 x i32], ptr %symbols.i.i77, i64 0, i64 %117, !dbg !752
  store i32 4, ptr %arrayidx.2.i, align 4, !dbg !753
    #dbg_value(i64 3, !745, !DIExpression(), !749)
  %118 = load i64, ptr %count.i.i78, align 8, !dbg !750
  %inc.3.i = add i64 %118, 1, !dbg !750
  store i64 %inc.3.i, ptr %count.i.i78, align 8, !dbg !750
  %arrayidx.3.i = getelementptr inbounds [58 x i32], ptr %symbols.i.i77, i64 0, i64 %118, !dbg !752
  store i32 4, ptr %arrayidx.3.i, align 4, !dbg !753
    #dbg_value(i64 4, !745, !DIExpression(), !749)
  %119 = load i64, ptr %count.i.i78, align 8, !dbg !750
  %inc.4.i = add i64 %119, 1, !dbg !750
  store i64 %inc.4.i, ptr %count.i.i78, align 8, !dbg !750
  %arrayidx.4.i = getelementptr inbounds [58 x i32], ptr %symbols.i.i77, i64 0, i64 %119, !dbg !752
  store i32 4, ptr %arrayidx.4.i, align 4, !dbg !753
    #dbg_value(i64 5, !745, !DIExpression(), !749)
  %call35 = call fastcc zeroext i1 @rc_encode(ptr noundef nonnull %pcoder, ptr noundef %out, ptr noundef %out_pos, i64 noundef %out_size), !dbg !754
  br i1 %call35, label %cleanup40, label %if.end38, !dbg !756

if.end38:                                         ; preds = %if.end32, %while.end
  store i8 0, ptr %is_flushed, align 2, !dbg !757
  br label %cleanup40, !dbg !758

cleanup40:                                        ; preds = %if.then14, %encode_symbol.exit, %if.end, %if.then.i, %if.end38, %if.end32
  %retval.1 = phi i32 [ 1, %if.end38 ], [ 0, %if.end32 ], [ 0, %if.then.i ], [ 0, %if.end ], [ 0, %encode_symbol.exit ], [ 0, %if.then14 ], !dbg !285
  ret i32 %retval.1, !dbg !759
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i1 @rc_encode(ptr nocapture noundef %rc, ptr nocapture noundef writeonly %out, ptr nocapture noundef %out_pos, i64 noundef %out_size) unnamed_addr #2 !dbg !760 {
entry:
    #dbg_value(ptr %rc, !764, !DIExpression(), !775)
    #dbg_value(ptr %out, !765, !DIExpression(), !775)
    #dbg_value(ptr %out_pos, !766, !DIExpression(), !775)
    #dbg_value(i64 %out_size, !767, !DIExpression(), !775)
  %pos = getelementptr inbounds i8, ptr %rc, i64 32
  %count = getelementptr inbounds i8, ptr %rc, i64 24
  %0 = load i64, ptr %pos, align 8, !dbg !776
  %1 = load i64, ptr %count, align 8, !dbg !777
  %cmp140 = icmp ult i64 %0, %1, !dbg !778
  br i1 %cmp140, label %while.body.lr.ph, label %while.end, !dbg !779

while.body.lr.ph:                                 ; preds = %entry
  %range = getelementptr inbounds i8, ptr %rc, i64 16
  %cache.i = getelementptr inbounds i8, ptr %rc, i64 20
  %cache_size.i = getelementptr inbounds i8, ptr %rc, i64 8
  %symbols = getelementptr inbounds i8, ptr %rc, i64 40
  %probs19 = getelementptr inbounds i8, ptr %rc, i64 272
  br label %while.body, !dbg !779

while.body:                                       ; preds = %while.body.lr.ph, %sw.epilog
  %2 = phi i64 [ %0, %while.body.lr.ph ], [ %inc58, %sw.epilog ]
  %3 = load i32, ptr %range, align 8, !dbg !780
  %cmp1 = icmp ult i32 %3, 16777216, !dbg !782
  br i1 %cmp1, label %if.then, label %if.end4, !dbg !783

if.then:                                          ; preds = %while.body
    #dbg_value(ptr %rc, !784, !DIExpression(), !790)
    #dbg_value(ptr %out, !787, !DIExpression(), !790)
    #dbg_value(ptr %out_pos, !788, !DIExpression(), !790)
    #dbg_value(i64 %out_size, !789, !DIExpression(), !790)
  %4 = load i64, ptr %rc, align 8, !dbg !794
  %5 = and i64 %4, -16777216, !dbg !796
  %or.cond.i = icmp eq i64 %5, 4278190080, !dbg !796
  br i1 %or.cond.i, label %entry.if.end22_crit_edge.i, label %do.body.i, !dbg !796

entry.if.end22_crit_edge.i:                       ; preds = %if.then
  %.pre.i = load i64, ptr %cache_size.i, align 8, !dbg !797
  %6 = add i64 %.pre.i, 1, !dbg !797
  br label %if.end, !dbg !796

do.body.i:                                        ; preds = %if.then, %if.end.i
  %7 = load i64, ptr %out_pos, align 8, !dbg !798
  %cmp6.i = icmp eq i64 %7, %out_size, !dbg !802
  br i1 %cmp6.i, label %return, label %if.end.i, !dbg !803

if.end.i:                                         ; preds = %do.body.i
  %8 = load i8, ptr %cache.i, align 4, !dbg !804
  %9 = load i64, ptr %rc, align 8, !dbg !805
  %shr11.i = lshr i64 %9, 32, !dbg !806
  %conv12.i = trunc i64 %shr11.i to i8, !dbg !807
  %add.i = add i8 %8, %conv12.i, !dbg !808
  %arrayidx.i = getelementptr inbounds i8, ptr %out, i64 %7, !dbg !809
  store i8 %add.i, ptr %arrayidx.i, align 1, !dbg !810
  %10 = load i64, ptr %out_pos, align 8, !dbg !811
  %inc.i = add i64 %10, 1, !dbg !811
  store i64 %inc.i, ptr %out_pos, align 8, !dbg !811
  store i8 -1, ptr %cache.i, align 4, !dbg !812
  %11 = load i64, ptr %cache_size.i, align 8, !dbg !813
  %dec.i = add i64 %11, -1, !dbg !813
  store i64 %dec.i, ptr %cache_size.i, align 8, !dbg !813
  %cmp16.not.i = icmp eq i64 %dec.i, 0, !dbg !814
  br i1 %cmp16.not.i, label %do.end.i, label %do.body.i, !dbg !815, !llvm.loop !816

do.end.i:                                         ; preds = %if.end.i
  %12 = load i64, ptr %rc, align 8, !dbg !819
  %shr19.i = lshr i64 %12, 24, !dbg !820
  %conv20.i = trunc i64 %shr19.i to i8, !dbg !821
  store i8 %conv20.i, ptr %cache.i, align 4, !dbg !822
  %.pre = load i32, ptr %range, align 8, !dbg !823
  %.pre142.pre = load i64, ptr %pos, align 8, !dbg !824
  br label %if.end, !dbg !825

if.end:                                           ; preds = %do.end.i, %entry.if.end22_crit_edge.i
  %.pre142 = phi i64 [ %2, %entry.if.end22_crit_edge.i ], [ %.pre142.pre, %do.end.i ], !dbg !824
  %13 = phi i32 [ %3, %entry.if.end22_crit_edge.i ], [ %.pre, %do.end.i ], !dbg !823
  %14 = phi i64 [ %4, %entry.if.end22_crit_edge.i ], [ %12, %do.end.i ], !dbg !826
  %inc24.i = phi i64 [ %6, %entry.if.end22_crit_edge.i ], [ 1, %do.end.i ], !dbg !797
  store i64 %inc24.i, ptr %cache_size.i, align 8, !dbg !797
  %and26.i = shl i64 %14, 8, !dbg !827
  %shl.i = and i64 %and26.i, 4294967040, !dbg !827
  store i64 %shl.i, ptr %rc, align 8, !dbg !828
  %shl = shl i32 %13, 8, !dbg !823
  store i32 %shl, ptr %range, align 8, !dbg !823
  br label %if.end4, !dbg !829

if.end4:                                          ; preds = %if.end, %while.body
  %15 = phi i32 [ %shl, %if.end ], [ %3, %while.body ]
  %16 = phi i64 [ %.pre142, %if.end ], [ %2, %while.body ], !dbg !824
  %arrayidx = getelementptr inbounds [58 x i32], ptr %symbols, i64 0, i64 %16, !dbg !830
  %17 = load i32, ptr %arrayidx, align 4, !dbg !830
  switch i32 %17, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb17
    i32 2, label %sw.bb38
    i32 3, label %sw.bb41
    i32 4, label %sw.bb48
  ], !dbg !831

sw.bb:                                            ; preds = %if.end4
  %arrayidx7 = getelementptr inbounds [58 x ptr], ptr %probs19, i64 0, i64 %16, !dbg !832
  %18 = load ptr, ptr %arrayidx7, align 8, !dbg !832
  %19 = load i16, ptr %18, align 2, !dbg !833
    #dbg_value(i16 %19, !768, !DIExpression(), !834)
  %shr = lshr i32 %15, 11, !dbg !835
  %conv = zext i16 %19 to i32, !dbg !836
  %mul = mul i32 %shr, %conv, !dbg !837
  store i32 %mul, ptr %range, align 8, !dbg !838
  %sub = sub nsw i32 2048, %conv, !dbg !839
  %shr11 = lshr i32 %sub, 5, !dbg !840
  %20 = trunc i32 %shr11 to i16, !dbg !841
  %conv13 = add i16 %19, %20, !dbg !841
    #dbg_value(i16 %conv13, !768, !DIExpression(), !834)
  %21 = load ptr, ptr %arrayidx7, align 8, !dbg !842
  store i16 %conv13, ptr %21, align 2, !dbg !843
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end4
  %arrayidx21 = getelementptr inbounds [58 x ptr], ptr %probs19, i64 0, i64 %16, !dbg !844
  %22 = load ptr, ptr %arrayidx21, align 8, !dbg !844
  %23 = load i16, ptr %22, align 2, !dbg !845
    #dbg_value(i16 %23, !772, !DIExpression(), !846)
  %conv22 = zext i16 %23 to i32, !dbg !847
  %shr24 = lshr i32 %15, 11, !dbg !848
  %mul25 = mul i32 %shr24, %conv22, !dbg !849
    #dbg_value(i32 %mul25, !774, !DIExpression(), !846)
  %conv26 = zext i32 %mul25 to i64, !dbg !850
  %24 = load i64, ptr %rc, align 8, !dbg !851
  %add27 = add i64 %24, %conv26, !dbg !851
  store i64 %add27, ptr %rc, align 8, !dbg !851
  %sub29 = sub i32 %15, %mul25, !dbg !852
  store i32 %sub29, ptr %range, align 8, !dbg !852
  %shr31 = lshr i16 %23, 5, !dbg !853
  %sub33 = sub i16 %23, %shr31, !dbg !854
    #dbg_value(i16 %sub33, !772, !DIExpression(), !846)
  %25 = load ptr, ptr %arrayidx21, align 8, !dbg !855
  store i16 %sub33, ptr %25, align 2, !dbg !856
  br label %sw.epilog

sw.bb38:                                          ; preds = %if.end4
  %shr40 = lshr i32 %15, 1, !dbg !857
  store i32 %shr40, ptr %range, align 8, !dbg !857
  br label %sw.epilog, !dbg !858

sw.bb41:                                          ; preds = %if.end4
  %shr43 = lshr i32 %15, 1, !dbg !859
  store i32 %shr43, ptr %range, align 8, !dbg !859
  %conv45 = zext nneg i32 %shr43 to i64, !dbg !860
  %26 = load i64, ptr %rc, align 8, !dbg !861
  %add47 = add i64 %26, %conv45, !dbg !861
  store i64 %add47, ptr %rc, align 8, !dbg !861
  br label %sw.epilog, !dbg !862

sw.bb48:                                          ; preds = %if.end4
  store i32 -1, ptr %range, align 8, !dbg !863
  %.pre143 = load i64, ptr %rc, align 8, !dbg !864
  br label %do.body, !dbg !868

do.body:                                          ; preds = %do.cond, %sw.bb48
  %27 = phi i64 [ %inc, %do.cond ], [ %16, %sw.bb48 ]
  %28 = phi i64 [ %shl.i123, %do.cond ], [ %.pre143, %sw.bb48 ], !dbg !864
    #dbg_value(ptr %rc, !784, !DIExpression(), !869)
    #dbg_value(ptr %out, !787, !DIExpression(), !869)
    #dbg_value(ptr %out_pos, !788, !DIExpression(), !869)
    #dbg_value(i64 %out_size, !789, !DIExpression(), !869)
  %29 = and i64 %28, -16777216, !dbg !870
  %or.cond.i102 = icmp eq i64 %29, 4278190080, !dbg !870
  br i1 %or.cond.i102, label %entry.if.end22_crit_edge.i125, label %do.body.i106, !dbg !870

entry.if.end22_crit_edge.i125:                    ; preds = %do.body
  %.pre.i127 = load i64, ptr %cache_size.i, align 8, !dbg !871
  %30 = add i64 %.pre.i127, 1, !dbg !871
  br label %do.cond, !dbg !870

do.body.i106:                                     ; preds = %do.body, %if.end.i108
  %31 = load i64, ptr %out_pos, align 8, !dbg !872
  %cmp6.i107 = icmp eq i64 %31, %out_size, !dbg !873
  br i1 %cmp6.i107, label %return, label %if.end.i108, !dbg !874

if.end.i108:                                      ; preds = %do.body.i106
  %32 = load i8, ptr %cache.i, align 4, !dbg !875
  %33 = load i64, ptr %rc, align 8, !dbg !876
  %shr11.i109 = lshr i64 %33, 32, !dbg !877
  %conv12.i110 = trunc i64 %shr11.i109 to i8, !dbg !878
  %add.i111 = add i8 %32, %conv12.i110, !dbg !879
  %arrayidx.i112 = getelementptr inbounds i8, ptr %out, i64 %31, !dbg !880
  store i8 %add.i111, ptr %arrayidx.i112, align 1, !dbg !881
  %34 = load i64, ptr %out_pos, align 8, !dbg !882
  %inc.i113 = add i64 %34, 1, !dbg !882
  store i64 %inc.i113, ptr %out_pos, align 8, !dbg !882
  store i8 -1, ptr %cache.i, align 4, !dbg !883
  %35 = load i64, ptr %cache_size.i, align 8, !dbg !884
  %dec.i114 = add i64 %35, -1, !dbg !884
  store i64 %dec.i114, ptr %cache_size.i, align 8, !dbg !884
  %cmp16.not.i115 = icmp eq i64 %dec.i114, 0, !dbg !885
  br i1 %cmp16.not.i115, label %do.end.i116, label %do.body.i106, !dbg !886, !llvm.loop !887

do.end.i116:                                      ; preds = %if.end.i108
  %36 = load i64, ptr %rc, align 8, !dbg !890
  %shr19.i117 = lshr i64 %36, 24, !dbg !891
  %conv20.i118 = trunc i64 %shr19.i117 to i8, !dbg !892
  store i8 %conv20.i118, ptr %cache.i, align 4, !dbg !893
  %.pre144 = load i64, ptr %pos, align 8, !dbg !894
  br label %do.cond, !dbg !895

do.cond:                                          ; preds = %do.end.i116, %entry.if.end22_crit_edge.i125
  %37 = phi i64 [ %27, %entry.if.end22_crit_edge.i125 ], [ %.pre144, %do.end.i116 ], !dbg !894
  %38 = phi i64 [ %28, %entry.if.end22_crit_edge.i125 ], [ %36, %do.end.i116 ], !dbg !896
  %inc24.i120 = phi i64 [ %30, %entry.if.end22_crit_edge.i125 ], [ 1, %do.end.i116 ], !dbg !871
  store i64 %inc24.i120, ptr %cache_size.i, align 8, !dbg !871
  %and26.i122 = shl i64 %38, 8, !dbg !897
  %shl.i123 = and i64 %and26.i122, 4294967040, !dbg !897
  store i64 %shl.i123, ptr %rc, align 8, !dbg !898
  %inc = add i64 %37, 1, !dbg !894
  store i64 %inc, ptr %pos, align 8, !dbg !894
  %39 = load i64, ptr %count, align 8, !dbg !899
  %cmp55 = icmp ult i64 %inc, %39, !dbg !900
  br i1 %cmp55, label %do.body, label %do.end, !dbg !901, !llvm.loop !902

do.end:                                           ; preds = %do.cond
    #dbg_value(ptr %rc, !904, !DIExpression(), !907)
  store i64 0, ptr %rc, align 8, !dbg !909
  store i64 1, ptr %cache_size.i, align 8, !dbg !910
  store i32 -1, ptr %range, align 8, !dbg !911
  store i8 0, ptr %cache.i, align 4, !dbg !912
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %count, i8 0, i64 16, i1 false), !dbg !913
  br label %return, !dbg !914

sw.epilog:                                        ; preds = %if.end4, %sw.bb41, %sw.bb38, %sw.bb17, %sw.bb
  %40 = load i64, ptr %pos, align 8, !dbg !915
  %inc58 = add i64 %40, 1, !dbg !915
  store i64 %inc58, ptr %pos, align 8, !dbg !915
  %41 = load i64, ptr %count, align 8, !dbg !777
  %cmp = icmp ult i64 %inc58, %41, !dbg !778
  br i1 %cmp, label %while.body, label %while.end, !dbg !779, !llvm.loop !916

while.end:                                        ; preds = %sw.epilog, %entry
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %count, i8 0, i64 16, i1 false), !dbg !918
  br label %return, !dbg !919

return:                                           ; preds = %do.body.i, %do.body.i106, %while.end, %do.end
  %retval.0 = phi i1 [ false, %do.end ], [ false, %while.end ], [ true, %do.body.i106 ], [ true, %do.body.i ], !dbg !775
  ret i1 %retval.0, !dbg !920
}

declare !dbg !921 void @lzma_lzma_optimum_fast(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !926 void @lzma_lzma_optimum_normal(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 9) i32 @lzma_lzma_encoder_reset(ptr noundef %pcoder, ptr nocapture noundef readonly %options) local_unnamed_addr #4 !dbg !929 {
entry:
    #dbg_value(ptr %pcoder, !966, !DIExpression(), !986)
    #dbg_value(ptr %options, !967, !DIExpression(), !986)
    #dbg_value(ptr %pcoder, !968, !DIExpression(), !986)
    #dbg_value(ptr %options, !987, !DIExpression(), !992)
    #dbg_value(ptr %options, !995, !DIExpression(), !998)
  %lc.i.i = getelementptr inbounds i8, ptr %options, i64 20, !dbg !1000
  %0 = load i32, ptr %lc.i.i, align 4, !dbg !1000
  %cmp.i.i = icmp ult i32 %0, 5, !dbg !1001
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %cleanup, !dbg !1002

land.lhs.true.i.i:                                ; preds = %entry
  %lp.i.i = getelementptr inbounds i8, ptr %options, i64 24, !dbg !1003
  %1 = load i32, ptr %lp.i.i, align 8, !dbg !1003
  %cmp1.i.i = icmp ult i32 %1, 5, !dbg !1004
  %add.i.i = add nuw nsw i32 %1, %0
  %cmp5.i.i = icmp ult i32 %add.i.i, 5
  %or.cond.i.i = select i1 %cmp1.i.i, i1 %cmp5.i.i, i1 false, !dbg !1005
  br i1 %or.cond.i.i, label %is_lclppb_valid.exit.i, label %cleanup, !dbg !1005

is_lclppb_valid.exit.i:                           ; preds = %land.lhs.true.i.i
  %pb.i.i = getelementptr inbounds i8, ptr %options, i64 28, !dbg !1006
  %2 = load i32, ptr %pb.i.i, align 4, !dbg !1006
  %cmp6.i.i = icmp ult i32 %2, 5, !dbg !1007
  br i1 %cmp6.i.i, label %land.lhs.true.i, label %cleanup, !dbg !1008

land.lhs.true.i:                                  ; preds = %is_lclppb_valid.exit.i
  %nice_len.i = getelementptr inbounds i8, ptr %options, i64 36, !dbg !1009
  %3 = load i32, ptr %nice_len.i, align 4, !dbg !1009
  %4 = add i32 %3, -2, !dbg !1010
  %or.cond.i = icmp ult i32 %4, 272, !dbg !1010
  br i1 %or.cond.i, label %is_options_valid.exit, label %cleanup, !dbg !1010

is_options_valid.exit:                            ; preds = %land.lhs.true.i
  %mode.i = getelementptr inbounds i8, ptr %options, i64 32, !dbg !1011
  %5 = load i32, ptr %mode.i, align 8, !dbg !1011
  %6 = add i32 %5, -1, !dbg !1012
  %spec.select.i = icmp ult i32 %6, 2, !dbg !1012
  br i1 %spec.select.i, label %if.end, label %cleanup, !dbg !1013

if.end:                                           ; preds = %is_options_valid.exit
  %notmask = shl nsw i32 -1, %2, !dbg !1014
  %sub = xor i32 %notmask, -1, !dbg !1014
  %pos_mask = getelementptr inbounds i8, ptr %pcoder, i64 2960, !dbg !1015
  store i32 %sub, ptr %pos_mask, align 8, !dbg !1016
  %7 = load i32, ptr %lc.i.i, align 4, !dbg !1017
  %literal_context_bits = getelementptr inbounds i8, ptr %pcoder, i64 2964, !dbg !1018
  store i32 %7, ptr %literal_context_bits, align 4, !dbg !1019
  %8 = load i32, ptr %lp.i.i, align 8, !dbg !1020
  %notmask127 = shl nsw i32 -1, %8, !dbg !1021
  %sub2 = xor i32 %notmask127, -1, !dbg !1021
  %literal_pos_mask = getelementptr inbounds i8, ptr %pcoder, i64 2968, !dbg !1022
  store i32 %sub2, ptr %literal_pos_mask, align 8, !dbg !1023
    #dbg_value(ptr %pcoder, !904, !DIExpression(), !1024)
  store i64 0, ptr %pcoder, align 8, !dbg !1026
  %cache_size.i = getelementptr inbounds i8, ptr %pcoder, i64 8, !dbg !1027
  store i64 1, ptr %cache_size.i, align 8, !dbg !1028
  %range.i = getelementptr inbounds i8, ptr %pcoder, i64 16, !dbg !1029
  store i32 -1, ptr %range.i, align 8, !dbg !1030
  %cache.i = getelementptr inbounds i8, ptr %pcoder, i64 20, !dbg !1031
  store i8 0, ptr %cache.i, align 4, !dbg !1032
  %count.i = getelementptr inbounds i8, ptr %pcoder, i64 24, !dbg !1033
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %count.i, i8 0, i64 16, i1 false), !dbg !1034
  %state = getelementptr inbounds i8, ptr %pcoder, i64 736, !dbg !1035
    #dbg_value(i64 poison, !969, !DIExpression(), !1036)
  %literal = getelementptr inbounds i8, ptr %pcoder, i64 2972, !dbg !1037
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %state, i8 0, i64 20, i1 false), !dbg !1038
  %9 = load i32, ptr %lc.i.i, align 4, !dbg !1039
  %10 = load i32, ptr %lp.i.i, align 8, !dbg !1040
    #dbg_value(ptr %literal, !1041, !DIExpression(), !1057)
    #dbg_value(i32 %9, !1049, !DIExpression(), !1057)
    #dbg_value(i32 %10, !1050, !DIExpression(), !1057)
  %add.i = add i32 %10, %9, !dbg !1059
    #dbg_value(!DIArgList(i32 1, i32 %add.i), !1051, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_stack_value), !1057)
    #dbg_value(i32 0, !1052, !DIExpression(), !1060)
  br label %for.cond1.preheader.i, !dbg !1061

for.cond1.preheader.i:                            ; preds = %for.cond1.preheader.i, %if.end
  %i.015.i = phi i32 [ 0, %if.end ], [ %inc8.i, %for.cond1.preheader.i ]
    #dbg_value(i32 %i.015.i, !1052, !DIExpression(), !1060)
    #dbg_value(i32 0, !1054, !DIExpression(), !1062)
  %idxprom.i = zext i32 %i.015.i to i64
  %11 = getelementptr inbounds [768 x i16], ptr %literal, i64 %idxprom.i, i64 0, !dbg !1063
  %12 = getelementptr inbounds i8, ptr %11, i64 16, !dbg !1063
  %13 = getelementptr inbounds i8, ptr %11, i64 32, !dbg !1063
  %14 = getelementptr inbounds i8, ptr %11, i64 48, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %11, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %12, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %13, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %14, align 2, !dbg !1063
  %15 = getelementptr inbounds [768 x i16], ptr %literal, i64 %idxprom.i, i64 32, !dbg !1063
  %16 = getelementptr inbounds i8, ptr %15, i64 16, !dbg !1063
  %17 = getelementptr inbounds i8, ptr %15, i64 32, !dbg !1063
  %18 = getelementptr inbounds i8, ptr %15, i64 48, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %15, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %16, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %17, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %18, align 2, !dbg !1063
  %19 = getelementptr inbounds [768 x i16], ptr %literal, i64 %idxprom.i, i64 64, !dbg !1063
  %20 = getelementptr inbounds i8, ptr %19, i64 16, !dbg !1063
  %21 = getelementptr inbounds i8, ptr %19, i64 32, !dbg !1063
  %22 = getelementptr inbounds i8, ptr %19, i64 48, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %19, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %20, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %21, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %22, align 2, !dbg !1063
  %23 = getelementptr inbounds [768 x i16], ptr %literal, i64 %idxprom.i, i64 96, !dbg !1063
  %24 = getelementptr inbounds i8, ptr %23, i64 16, !dbg !1063
  %25 = getelementptr inbounds i8, ptr %23, i64 32, !dbg !1063
  %26 = getelementptr inbounds i8, ptr %23, i64 48, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %23, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %24, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %25, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %26, align 2, !dbg !1063
  %27 = getelementptr inbounds [768 x i16], ptr %literal, i64 %idxprom.i, i64 128, !dbg !1063
  %28 = getelementptr inbounds i8, ptr %27, i64 16, !dbg !1063
  %29 = getelementptr inbounds i8, ptr %27, i64 32, !dbg !1063
  %30 = getelementptr inbounds i8, ptr %27, i64 48, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %27, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %28, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %29, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %30, align 2, !dbg !1063
  %31 = getelementptr inbounds [768 x i16], ptr %literal, i64 %idxprom.i, i64 160, !dbg !1063
  %32 = getelementptr inbounds i8, ptr %31, i64 16, !dbg !1063
  %33 = getelementptr inbounds i8, ptr %31, i64 32, !dbg !1063
  %34 = getelementptr inbounds i8, ptr %31, i64 48, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %31, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %32, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %33, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %34, align 2, !dbg !1063
  %35 = getelementptr inbounds [768 x i16], ptr %literal, i64 %idxprom.i, i64 192, !dbg !1063
  %36 = getelementptr inbounds i8, ptr %35, i64 16, !dbg !1063
  %37 = getelementptr inbounds i8, ptr %35, i64 32, !dbg !1063
  %38 = getelementptr inbounds i8, ptr %35, i64 48, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %35, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %36, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %37, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %38, align 2, !dbg !1063
  %39 = getelementptr inbounds [768 x i16], ptr %literal, i64 %idxprom.i, i64 224, !dbg !1063
  %40 = getelementptr inbounds i8, ptr %39, i64 16, !dbg !1063
  %41 = getelementptr inbounds i8, ptr %39, i64 32, !dbg !1063
  %42 = getelementptr inbounds i8, ptr %39, i64 48, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %39, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %40, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %41, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %42, align 2, !dbg !1063
  %43 = getelementptr inbounds [768 x i16], ptr %literal, i64 %idxprom.i, i64 256, !dbg !1063
  %44 = getelementptr inbounds i8, ptr %43, i64 16, !dbg !1063
  %45 = getelementptr inbounds i8, ptr %43, i64 32, !dbg !1063
  %46 = getelementptr inbounds i8, ptr %43, i64 48, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %43, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %44, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %45, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %46, align 2, !dbg !1063
  %47 = getelementptr inbounds [768 x i16], ptr %literal, i64 %idxprom.i, i64 288, !dbg !1063
  %48 = getelementptr inbounds i8, ptr %47, i64 16, !dbg !1063
  %49 = getelementptr inbounds i8, ptr %47, i64 32, !dbg !1063
  %50 = getelementptr inbounds i8, ptr %47, i64 48, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %47, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %48, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %49, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %50, align 2, !dbg !1063
  %51 = getelementptr inbounds [768 x i16], ptr %literal, i64 %idxprom.i, i64 320, !dbg !1063
  %52 = getelementptr inbounds i8, ptr %51, i64 16, !dbg !1063
  %53 = getelementptr inbounds i8, ptr %51, i64 32, !dbg !1063
  %54 = getelementptr inbounds i8, ptr %51, i64 48, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %51, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %52, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %53, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %54, align 2, !dbg !1063
  %55 = getelementptr inbounds [768 x i16], ptr %literal, i64 %idxprom.i, i64 352, !dbg !1063
  %56 = getelementptr inbounds i8, ptr %55, i64 16, !dbg !1063
  %57 = getelementptr inbounds i8, ptr %55, i64 32, !dbg !1063
  %58 = getelementptr inbounds i8, ptr %55, i64 48, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %55, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %56, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %57, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %58, align 2, !dbg !1063
  %59 = getelementptr inbounds [768 x i16], ptr %literal, i64 %idxprom.i, i64 384, !dbg !1063
  %60 = getelementptr inbounds i8, ptr %59, i64 16, !dbg !1063
  %61 = getelementptr inbounds i8, ptr %59, i64 32, !dbg !1063
  %62 = getelementptr inbounds i8, ptr %59, i64 48, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %59, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %60, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %61, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %62, align 2, !dbg !1063
  %63 = getelementptr inbounds [768 x i16], ptr %literal, i64 %idxprom.i, i64 416, !dbg !1063
  %64 = getelementptr inbounds i8, ptr %63, i64 16, !dbg !1063
  %65 = getelementptr inbounds i8, ptr %63, i64 32, !dbg !1063
  %66 = getelementptr inbounds i8, ptr %63, i64 48, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %63, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %64, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %65, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %66, align 2, !dbg !1063
  %67 = getelementptr inbounds [768 x i16], ptr %literal, i64 %idxprom.i, i64 448, !dbg !1063
  %68 = getelementptr inbounds i8, ptr %67, i64 16, !dbg !1063
  %69 = getelementptr inbounds i8, ptr %67, i64 32, !dbg !1063
  %70 = getelementptr inbounds i8, ptr %67, i64 48, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %67, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %68, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %69, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %70, align 2, !dbg !1063
  %71 = getelementptr inbounds [768 x i16], ptr %literal, i64 %idxprom.i, i64 480, !dbg !1063
  %72 = getelementptr inbounds i8, ptr %71, i64 16, !dbg !1063
  %73 = getelementptr inbounds i8, ptr %71, i64 32, !dbg !1063
  %74 = getelementptr inbounds i8, ptr %71, i64 48, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %71, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %72, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %73, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %74, align 2, !dbg !1063
  %75 = getelementptr inbounds [768 x i16], ptr %literal, i64 %idxprom.i, i64 512, !dbg !1063
  %76 = getelementptr inbounds i8, ptr %75, i64 16, !dbg !1063
  %77 = getelementptr inbounds i8, ptr %75, i64 32, !dbg !1063
  %78 = getelementptr inbounds i8, ptr %75, i64 48, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %75, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %76, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %77, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %78, align 2, !dbg !1063
  %79 = getelementptr inbounds [768 x i16], ptr %literal, i64 %idxprom.i, i64 544, !dbg !1063
  %80 = getelementptr inbounds i8, ptr %79, i64 16, !dbg !1063
  %81 = getelementptr inbounds i8, ptr %79, i64 32, !dbg !1063
  %82 = getelementptr inbounds i8, ptr %79, i64 48, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %79, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %80, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %81, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %82, align 2, !dbg !1063
  %83 = getelementptr inbounds [768 x i16], ptr %literal, i64 %idxprom.i, i64 576, !dbg !1063
  %84 = getelementptr inbounds i8, ptr %83, i64 16, !dbg !1063
  %85 = getelementptr inbounds i8, ptr %83, i64 32, !dbg !1063
  %86 = getelementptr inbounds i8, ptr %83, i64 48, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %83, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %84, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %85, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %86, align 2, !dbg !1063
  %87 = getelementptr inbounds [768 x i16], ptr %literal, i64 %idxprom.i, i64 608, !dbg !1063
  %88 = getelementptr inbounds i8, ptr %87, i64 16, !dbg !1063
  %89 = getelementptr inbounds i8, ptr %87, i64 32, !dbg !1063
  %90 = getelementptr inbounds i8, ptr %87, i64 48, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %87, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %88, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %89, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %90, align 2, !dbg !1063
  %91 = getelementptr inbounds [768 x i16], ptr %literal, i64 %idxprom.i, i64 640, !dbg !1063
  %92 = getelementptr inbounds i8, ptr %91, i64 16, !dbg !1063
  %93 = getelementptr inbounds i8, ptr %91, i64 32, !dbg !1063
  %94 = getelementptr inbounds i8, ptr %91, i64 48, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %91, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %92, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %93, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %94, align 2, !dbg !1063
  %95 = getelementptr inbounds [768 x i16], ptr %literal, i64 %idxprom.i, i64 672, !dbg !1063
  %96 = getelementptr inbounds i8, ptr %95, i64 16, !dbg !1063
  %97 = getelementptr inbounds i8, ptr %95, i64 32, !dbg !1063
  %98 = getelementptr inbounds i8, ptr %95, i64 48, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %95, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %96, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %97, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %98, align 2, !dbg !1063
  %99 = getelementptr inbounds [768 x i16], ptr %literal, i64 %idxprom.i, i64 704, !dbg !1063
  %100 = getelementptr inbounds i8, ptr %99, i64 16, !dbg !1063
  %101 = getelementptr inbounds i8, ptr %99, i64 32, !dbg !1063
  %102 = getelementptr inbounds i8, ptr %99, i64 48, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %99, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %100, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %101, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %102, align 2, !dbg !1063
  %103 = getelementptr inbounds [768 x i16], ptr %literal, i64 %idxprom.i, i64 736, !dbg !1063
  %104 = getelementptr inbounds i8, ptr %103, i64 16, !dbg !1063
  %105 = getelementptr inbounds i8, ptr %103, i64 32, !dbg !1063
  %106 = getelementptr inbounds i8, ptr %103, i64 48, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %103, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %104, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %105, align 2, !dbg !1063
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %106, align 2, !dbg !1063
  %inc8.i = add i32 %i.015.i, 1, !dbg !1065
    #dbg_value(i32 %inc8.i, !1052, !DIExpression(), !1060)
  %i.0.highbits.i = lshr i32 %inc8.i, %add.i, !dbg !1066
  %cmp.i = icmp eq i32 %i.0.highbits.i, 0, !dbg !1066
  br i1 %cmp.i, label %for.cond1.preheader.i, label %for.cond6.preheader, !dbg !1061, !llvm.loop !1067

for.cond6.preheader:                              ; preds = %for.cond1.preheader.i
  %is_match = getelementptr inbounds i8, ptr %pcoder, i64 27548
  %is_rep0_long = getelementptr inbounds i8, ptr %pcoder, i64 28028
  %is_rep = getelementptr inbounds i8, ptr %pcoder, i64 27932
  %is_rep0 = getelementptr inbounds i8, ptr %pcoder, i64 27956
  %is_rep1 = getelementptr inbounds i8, ptr %pcoder, i64 27980
  %is_rep2 = getelementptr inbounds i8, ptr %pcoder, i64 28004
    #dbg_value(i64 0, !971, !DIExpression(), !1069)
    #dbg_value(i64 0, !973, !DIExpression(), !1070)
  %conv = zext nneg i32 %sub to i64
  %107 = add nuw nsw i64 %conv, 1, !dbg !1071
  %min.iters.check = icmp ugt i32 %notmask, -32, !dbg !1071
  br i1 %min.iters.check, label %for.body15.preheader, label %vector.ph184, !dbg !1071

for.body15.preheader:                             ; preds = %middle.block182, %for.cond6.preheader
  %j.0171.ph = phi i64 [ 0, %for.cond6.preheader ], [ %n.vec, %middle.block182 ]
  br label %for.body15, !dbg !1071

vector.ph184:                                     ; preds = %for.cond6.preheader
  %n.vec = and i64 %107, 224, !dbg !1071
  br label %vector.body186, !dbg !1071

vector.body186:                                   ; preds = %vector.body186, %vector.ph184
  %index187 = phi i64 [ 0, %vector.ph184 ], [ %index.next188, %vector.body186 ], !dbg !1072
  %108 = getelementptr inbounds [12 x [16 x i16]], ptr %is_match, i64 0, i64 0, i64 %index187, !dbg !1074
  %109 = getelementptr inbounds i8, ptr %108, i64 16, !dbg !1074
  %110 = getelementptr inbounds i8, ptr %108, i64 32, !dbg !1074
  %111 = getelementptr inbounds i8, ptr %108, i64 48, !dbg !1074
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %108, align 2, !dbg !1074
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %109, align 2, !dbg !1074
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %110, align 2, !dbg !1074
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %111, align 2, !dbg !1074
  %112 = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long, i64 0, i64 0, i64 %index187, !dbg !1076
  %113 = getelementptr inbounds i8, ptr %112, i64 16, !dbg !1076
  %114 = getelementptr inbounds i8, ptr %112, i64 32, !dbg !1076
  %115 = getelementptr inbounds i8, ptr %112, i64 48, !dbg !1076
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %112, align 2, !dbg !1076
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %113, align 2, !dbg !1076
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %114, align 2, !dbg !1076
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %115, align 2, !dbg !1076
  %index.next188 = add nuw i64 %index187, 32, !dbg !1072
  %116 = icmp eq i64 %index.next188, %n.vec, !dbg !1072
  br i1 %116, label %middle.block182, label %vector.body186, !dbg !1072, !llvm.loop !1077

middle.block182:                                  ; preds = %vector.body186
  %cmp.n = icmp eq i64 %107, %n.vec, !dbg !1071
  br i1 %cmp.n, label %for.cond.cleanup14, label %for.body15.preheader, !dbg !1071

for.cond.cleanup14:                               ; preds = %for.body15, %middle.block182
  store i16 1024, ptr %is_rep, align 2, !dbg !1081
  store i16 1024, ptr %is_rep0, align 2, !dbg !1082
  store i16 1024, ptr %is_rep1, align 2, !dbg !1083
  store i16 1024, ptr %is_rep2, align 2, !dbg !1084
    #dbg_value(i64 1, !971, !DIExpression(), !1069)
    #dbg_value(i64 0, !973, !DIExpression(), !1070)
  %117 = add nuw nsw i64 %conv, 1, !dbg !1071
  %min.iters.check191 = icmp ugt i32 %notmask, -32, !dbg !1071
  br i1 %min.iters.check191, label %for.body15.1.preheader, label %vector.ph192, !dbg !1071

vector.ph192:                                     ; preds = %for.cond.cleanup14
  %n.vec194 = and i64 %117, 224, !dbg !1071
  br label %vector.body196, !dbg !1071

vector.body196:                                   ; preds = %vector.body196, %vector.ph192
  %index197 = phi i64 [ 0, %vector.ph192 ], [ %index.next198, %vector.body196 ], !dbg !1072
  %118 = getelementptr inbounds [12 x [16 x i16]], ptr %is_match, i64 0, i64 1, i64 %index197, !dbg !1074
  %119 = getelementptr inbounds i8, ptr %118, i64 16, !dbg !1074
  %120 = getelementptr inbounds i8, ptr %118, i64 32, !dbg !1074
  %121 = getelementptr inbounds i8, ptr %118, i64 48, !dbg !1074
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %118, align 2, !dbg !1074
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %119, align 2, !dbg !1074
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %120, align 2, !dbg !1074
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %121, align 2, !dbg !1074
  %122 = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long, i64 0, i64 1, i64 %index197, !dbg !1076
  %123 = getelementptr inbounds i8, ptr %122, i64 16, !dbg !1076
  %124 = getelementptr inbounds i8, ptr %122, i64 32, !dbg !1076
  %125 = getelementptr inbounds i8, ptr %122, i64 48, !dbg !1076
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %122, align 2, !dbg !1076
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %123, align 2, !dbg !1076
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %124, align 2, !dbg !1076
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %125, align 2, !dbg !1076
  %index.next198 = add nuw i64 %index197, 32, !dbg !1072
  %126 = icmp eq i64 %index.next198, %n.vec194, !dbg !1072
  br i1 %126, label %middle.block189, label %vector.body196, !dbg !1072, !llvm.loop !1085

middle.block189:                                  ; preds = %vector.body196
  %cmp.n199 = icmp eq i64 %117, %n.vec194, !dbg !1071
  br i1 %cmp.n199, label %for.cond.cleanup14.1, label %for.body15.1.preheader, !dbg !1071

for.body15.1.preheader:                           ; preds = %middle.block189, %for.cond.cleanup14
  %j.0171.1.ph = phi i64 [ 0, %for.cond.cleanup14 ], [ %n.vec194, %middle.block189 ]
  br label %for.body15.1, !dbg !1071

for.body15.1:                                     ; preds = %for.body15.1.preheader, %for.body15.1
  %j.0171.1 = phi i64 [ %inc21.1, %for.body15.1 ], [ %j.0171.1.ph, %for.body15.1.preheader ]
    #dbg_value(i64 %j.0171.1, !973, !DIExpression(), !1070)
  %arrayidx17.1 = getelementptr inbounds [12 x [16 x i16]], ptr %is_match, i64 0, i64 1, i64 %j.0171.1, !dbg !1074
  store i16 1024, ptr %arrayidx17.1, align 2, !dbg !1074
  %arrayidx19.1 = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long, i64 0, i64 1, i64 %j.0171.1, !dbg !1076
  store i16 1024, ptr %arrayidx19.1, align 2, !dbg !1076
  %inc21.1 = add nuw nsw i64 %j.0171.1, 1, !dbg !1072
    #dbg_value(i64 %inc21.1, !973, !DIExpression(), !1070)
  %cmp12.not.not.1 = icmp ult i64 %j.0171.1, %conv, !dbg !1086
  br i1 %cmp12.not.not.1, label %for.body15.1, label %for.cond.cleanup14.1, !dbg !1071, !llvm.loop !1087

for.cond.cleanup14.1:                             ; preds = %for.body15.1, %middle.block189
  %arrayidx23.1 = getelementptr inbounds i8, ptr %pcoder, i64 27934, !dbg !1081
  store i16 1024, ptr %arrayidx23.1, align 2, !dbg !1081
  %arrayidx24.1 = getelementptr inbounds i8, ptr %pcoder, i64 27958, !dbg !1082
  store i16 1024, ptr %arrayidx24.1, align 2, !dbg !1082
  %arrayidx25.1 = getelementptr inbounds i8, ptr %pcoder, i64 27982, !dbg !1083
  store i16 1024, ptr %arrayidx25.1, align 2, !dbg !1083
  %arrayidx26.1 = getelementptr inbounds i8, ptr %pcoder, i64 28006, !dbg !1084
  store i16 1024, ptr %arrayidx26.1, align 2, !dbg !1084
    #dbg_value(i64 2, !971, !DIExpression(), !1069)
    #dbg_value(i64 0, !973, !DIExpression(), !1070)
  %127 = add nuw nsw i64 %conv, 1, !dbg !1071
  %min.iters.check202 = icmp ugt i32 %notmask, -32, !dbg !1071
  br i1 %min.iters.check202, label %for.body15.2.preheader, label %vector.ph203, !dbg !1071

vector.ph203:                                     ; preds = %for.cond.cleanup14.1
  %n.vec205 = and i64 %127, 224, !dbg !1071
  br label %vector.body207, !dbg !1071

vector.body207:                                   ; preds = %vector.body207, %vector.ph203
  %index208 = phi i64 [ 0, %vector.ph203 ], [ %index.next209, %vector.body207 ], !dbg !1072
  %128 = getelementptr inbounds [12 x [16 x i16]], ptr %is_match, i64 0, i64 2, i64 %index208, !dbg !1074
  %129 = getelementptr inbounds i8, ptr %128, i64 16, !dbg !1074
  %130 = getelementptr inbounds i8, ptr %128, i64 32, !dbg !1074
  %131 = getelementptr inbounds i8, ptr %128, i64 48, !dbg !1074
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %128, align 2, !dbg !1074
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %129, align 2, !dbg !1074
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %130, align 2, !dbg !1074
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %131, align 2, !dbg !1074
  %132 = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long, i64 0, i64 2, i64 %index208, !dbg !1076
  %133 = getelementptr inbounds i8, ptr %132, i64 16, !dbg !1076
  %134 = getelementptr inbounds i8, ptr %132, i64 32, !dbg !1076
  %135 = getelementptr inbounds i8, ptr %132, i64 48, !dbg !1076
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %132, align 2, !dbg !1076
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %133, align 2, !dbg !1076
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %134, align 2, !dbg !1076
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %135, align 2, !dbg !1076
  %index.next209 = add nuw i64 %index208, 32, !dbg !1072
  %136 = icmp eq i64 %index.next209, %n.vec205, !dbg !1072
  br i1 %136, label %middle.block200, label %vector.body207, !dbg !1072, !llvm.loop !1088

middle.block200:                                  ; preds = %vector.body207
  %cmp.n210 = icmp eq i64 %127, %n.vec205, !dbg !1071
  br i1 %cmp.n210, label %for.cond.cleanup14.2, label %for.body15.2.preheader, !dbg !1071

for.body15.2.preheader:                           ; preds = %middle.block200, %for.cond.cleanup14.1
  %j.0171.2.ph = phi i64 [ 0, %for.cond.cleanup14.1 ], [ %n.vec205, %middle.block200 ]
  br label %for.body15.2, !dbg !1071

for.body15.2:                                     ; preds = %for.body15.2.preheader, %for.body15.2
  %j.0171.2 = phi i64 [ %inc21.2, %for.body15.2 ], [ %j.0171.2.ph, %for.body15.2.preheader ]
    #dbg_value(i64 %j.0171.2, !973, !DIExpression(), !1070)
  %arrayidx17.2 = getelementptr inbounds [12 x [16 x i16]], ptr %is_match, i64 0, i64 2, i64 %j.0171.2, !dbg !1074
  store i16 1024, ptr %arrayidx17.2, align 2, !dbg !1074
  %arrayidx19.2 = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long, i64 0, i64 2, i64 %j.0171.2, !dbg !1076
  store i16 1024, ptr %arrayidx19.2, align 2, !dbg !1076
  %inc21.2 = add nuw nsw i64 %j.0171.2, 1, !dbg !1072
    #dbg_value(i64 %inc21.2, !973, !DIExpression(), !1070)
  %cmp12.not.not.2 = icmp ult i64 %j.0171.2, %conv, !dbg !1086
  br i1 %cmp12.not.not.2, label %for.body15.2, label %for.cond.cleanup14.2, !dbg !1071, !llvm.loop !1089

for.cond.cleanup14.2:                             ; preds = %for.body15.2, %middle.block200
  %arrayidx23.2 = getelementptr inbounds i8, ptr %pcoder, i64 27936, !dbg !1081
  store i16 1024, ptr %arrayidx23.2, align 2, !dbg !1081
  %arrayidx24.2 = getelementptr inbounds i8, ptr %pcoder, i64 27960, !dbg !1082
  store i16 1024, ptr %arrayidx24.2, align 2, !dbg !1082
  %arrayidx25.2 = getelementptr inbounds i8, ptr %pcoder, i64 27984, !dbg !1083
  store i16 1024, ptr %arrayidx25.2, align 2, !dbg !1083
  %arrayidx26.2 = getelementptr inbounds i8, ptr %pcoder, i64 28008, !dbg !1084
  store i16 1024, ptr %arrayidx26.2, align 2, !dbg !1084
    #dbg_value(i64 3, !971, !DIExpression(), !1069)
    #dbg_value(i64 0, !973, !DIExpression(), !1070)
  %137 = add nuw nsw i64 %conv, 1, !dbg !1071
  %min.iters.check213 = icmp ugt i32 %notmask, -32, !dbg !1071
  br i1 %min.iters.check213, label %for.body15.3.preheader, label %vector.ph214, !dbg !1071

vector.ph214:                                     ; preds = %for.cond.cleanup14.2
  %n.vec216 = and i64 %137, 224, !dbg !1071
  br label %vector.body218, !dbg !1071

vector.body218:                                   ; preds = %vector.body218, %vector.ph214
  %index219 = phi i64 [ 0, %vector.ph214 ], [ %index.next220, %vector.body218 ], !dbg !1072
  %138 = getelementptr inbounds [12 x [16 x i16]], ptr %is_match, i64 0, i64 3, i64 %index219, !dbg !1074
  %139 = getelementptr inbounds i8, ptr %138, i64 16, !dbg !1074
  %140 = getelementptr inbounds i8, ptr %138, i64 32, !dbg !1074
  %141 = getelementptr inbounds i8, ptr %138, i64 48, !dbg !1074
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %138, align 2, !dbg !1074
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %139, align 2, !dbg !1074
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %140, align 2, !dbg !1074
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %141, align 2, !dbg !1074
  %142 = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long, i64 0, i64 3, i64 %index219, !dbg !1076
  %143 = getelementptr inbounds i8, ptr %142, i64 16, !dbg !1076
  %144 = getelementptr inbounds i8, ptr %142, i64 32, !dbg !1076
  %145 = getelementptr inbounds i8, ptr %142, i64 48, !dbg !1076
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %142, align 2, !dbg !1076
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %143, align 2, !dbg !1076
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %144, align 2, !dbg !1076
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %145, align 2, !dbg !1076
  %index.next220 = add nuw i64 %index219, 32, !dbg !1072
  %146 = icmp eq i64 %index.next220, %n.vec216, !dbg !1072
  br i1 %146, label %middle.block211, label %vector.body218, !dbg !1072, !llvm.loop !1090

middle.block211:                                  ; preds = %vector.body218
  %cmp.n221 = icmp eq i64 %137, %n.vec216, !dbg !1071
  br i1 %cmp.n221, label %for.cond.cleanup14.3, label %for.body15.3.preheader, !dbg !1071

for.body15.3.preheader:                           ; preds = %middle.block211, %for.cond.cleanup14.2
  %j.0171.3.ph = phi i64 [ 0, %for.cond.cleanup14.2 ], [ %n.vec216, %middle.block211 ]
  br label %for.body15.3, !dbg !1071

for.body15.3:                                     ; preds = %for.body15.3.preheader, %for.body15.3
  %j.0171.3 = phi i64 [ %inc21.3, %for.body15.3 ], [ %j.0171.3.ph, %for.body15.3.preheader ]
    #dbg_value(i64 %j.0171.3, !973, !DIExpression(), !1070)
  %arrayidx17.3 = getelementptr inbounds [12 x [16 x i16]], ptr %is_match, i64 0, i64 3, i64 %j.0171.3, !dbg !1074
  store i16 1024, ptr %arrayidx17.3, align 2, !dbg !1074
  %arrayidx19.3 = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long, i64 0, i64 3, i64 %j.0171.3, !dbg !1076
  store i16 1024, ptr %arrayidx19.3, align 2, !dbg !1076
  %inc21.3 = add nuw nsw i64 %j.0171.3, 1, !dbg !1072
    #dbg_value(i64 %inc21.3, !973, !DIExpression(), !1070)
  %cmp12.not.not.3 = icmp ult i64 %j.0171.3, %conv, !dbg !1086
  br i1 %cmp12.not.not.3, label %for.body15.3, label %for.cond.cleanup14.3, !dbg !1071, !llvm.loop !1091

for.cond.cleanup14.3:                             ; preds = %for.body15.3, %middle.block211
  %arrayidx23.3 = getelementptr inbounds i8, ptr %pcoder, i64 27938, !dbg !1081
  store i16 1024, ptr %arrayidx23.3, align 2, !dbg !1081
  %arrayidx24.3 = getelementptr inbounds i8, ptr %pcoder, i64 27962, !dbg !1082
  store i16 1024, ptr %arrayidx24.3, align 2, !dbg !1082
  %arrayidx25.3 = getelementptr inbounds i8, ptr %pcoder, i64 27986, !dbg !1083
  store i16 1024, ptr %arrayidx25.3, align 2, !dbg !1083
  %arrayidx26.3 = getelementptr inbounds i8, ptr %pcoder, i64 28010, !dbg !1084
  store i16 1024, ptr %arrayidx26.3, align 2, !dbg !1084
    #dbg_value(i64 4, !971, !DIExpression(), !1069)
    #dbg_value(i64 0, !973, !DIExpression(), !1070)
  %147 = add nuw nsw i64 %conv, 1, !dbg !1071
  %min.iters.check224 = icmp ugt i32 %notmask, -32, !dbg !1071
  br i1 %min.iters.check224, label %for.body15.4.preheader, label %vector.ph225, !dbg !1071

vector.ph225:                                     ; preds = %for.cond.cleanup14.3
  %n.vec227 = and i64 %147, 224, !dbg !1071
  br label %vector.body229, !dbg !1071

vector.body229:                                   ; preds = %vector.body229, %vector.ph225
  %index230 = phi i64 [ 0, %vector.ph225 ], [ %index.next231, %vector.body229 ], !dbg !1072
  %148 = getelementptr inbounds [12 x [16 x i16]], ptr %is_match, i64 0, i64 4, i64 %index230, !dbg !1074
  %149 = getelementptr inbounds i8, ptr %148, i64 16, !dbg !1074
  %150 = getelementptr inbounds i8, ptr %148, i64 32, !dbg !1074
  %151 = getelementptr inbounds i8, ptr %148, i64 48, !dbg !1074
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %148, align 2, !dbg !1074
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %149, align 2, !dbg !1074
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %150, align 2, !dbg !1074
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %151, align 2, !dbg !1074
  %152 = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long, i64 0, i64 4, i64 %index230, !dbg !1076
  %153 = getelementptr inbounds i8, ptr %152, i64 16, !dbg !1076
  %154 = getelementptr inbounds i8, ptr %152, i64 32, !dbg !1076
  %155 = getelementptr inbounds i8, ptr %152, i64 48, !dbg !1076
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %152, align 2, !dbg !1076
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %153, align 2, !dbg !1076
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %154, align 2, !dbg !1076
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %155, align 2, !dbg !1076
  %index.next231 = add nuw i64 %index230, 32, !dbg !1072
  %156 = icmp eq i64 %index.next231, %n.vec227, !dbg !1072
  br i1 %156, label %middle.block222, label %vector.body229, !dbg !1072, !llvm.loop !1092

middle.block222:                                  ; preds = %vector.body229
  %cmp.n232 = icmp eq i64 %147, %n.vec227, !dbg !1071
  br i1 %cmp.n232, label %for.cond.cleanup14.4, label %for.body15.4.preheader, !dbg !1071

for.body15.4.preheader:                           ; preds = %middle.block222, %for.cond.cleanup14.3
  %j.0171.4.ph = phi i64 [ 0, %for.cond.cleanup14.3 ], [ %n.vec227, %middle.block222 ]
  br label %for.body15.4, !dbg !1071

for.body15.4:                                     ; preds = %for.body15.4.preheader, %for.body15.4
  %j.0171.4 = phi i64 [ %inc21.4, %for.body15.4 ], [ %j.0171.4.ph, %for.body15.4.preheader ]
    #dbg_value(i64 %j.0171.4, !973, !DIExpression(), !1070)
  %arrayidx17.4 = getelementptr inbounds [12 x [16 x i16]], ptr %is_match, i64 0, i64 4, i64 %j.0171.4, !dbg !1074
  store i16 1024, ptr %arrayidx17.4, align 2, !dbg !1074
  %arrayidx19.4 = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long, i64 0, i64 4, i64 %j.0171.4, !dbg !1076
  store i16 1024, ptr %arrayidx19.4, align 2, !dbg !1076
  %inc21.4 = add nuw nsw i64 %j.0171.4, 1, !dbg !1072
    #dbg_value(i64 %inc21.4, !973, !DIExpression(), !1070)
  %cmp12.not.not.4 = icmp ult i64 %j.0171.4, %conv, !dbg !1086
  br i1 %cmp12.not.not.4, label %for.body15.4, label %for.cond.cleanup14.4, !dbg !1071, !llvm.loop !1093

for.cond.cleanup14.4:                             ; preds = %for.body15.4, %middle.block222
  %arrayidx23.4 = getelementptr inbounds i8, ptr %pcoder, i64 27940, !dbg !1081
  store i16 1024, ptr %arrayidx23.4, align 2, !dbg !1081
  %arrayidx24.4 = getelementptr inbounds i8, ptr %pcoder, i64 27964, !dbg !1082
  store i16 1024, ptr %arrayidx24.4, align 2, !dbg !1082
  %arrayidx25.4 = getelementptr inbounds i8, ptr %pcoder, i64 27988, !dbg !1083
  store i16 1024, ptr %arrayidx25.4, align 2, !dbg !1083
  %arrayidx26.4 = getelementptr inbounds i8, ptr %pcoder, i64 28012, !dbg !1084
  store i16 1024, ptr %arrayidx26.4, align 2, !dbg !1084
    #dbg_value(i64 5, !971, !DIExpression(), !1069)
    #dbg_value(i64 0, !973, !DIExpression(), !1070)
  %157 = add nuw nsw i64 %conv, 1, !dbg !1071
  %min.iters.check235 = icmp ugt i32 %notmask, -32, !dbg !1071
  br i1 %min.iters.check235, label %for.body15.5.preheader, label %vector.ph236, !dbg !1071

vector.ph236:                                     ; preds = %for.cond.cleanup14.4
  %n.vec238 = and i64 %157, 224, !dbg !1071
  br label %vector.body240, !dbg !1071

vector.body240:                                   ; preds = %vector.body240, %vector.ph236
  %index241 = phi i64 [ 0, %vector.ph236 ], [ %index.next242, %vector.body240 ], !dbg !1072
  %158 = getelementptr inbounds [12 x [16 x i16]], ptr %is_match, i64 0, i64 5, i64 %index241, !dbg !1074
  %159 = getelementptr inbounds i8, ptr %158, i64 16, !dbg !1074
  %160 = getelementptr inbounds i8, ptr %158, i64 32, !dbg !1074
  %161 = getelementptr inbounds i8, ptr %158, i64 48, !dbg !1074
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %158, align 2, !dbg !1074
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %159, align 2, !dbg !1074
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %160, align 2, !dbg !1074
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %161, align 2, !dbg !1074
  %162 = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long, i64 0, i64 5, i64 %index241, !dbg !1076
  %163 = getelementptr inbounds i8, ptr %162, i64 16, !dbg !1076
  %164 = getelementptr inbounds i8, ptr %162, i64 32, !dbg !1076
  %165 = getelementptr inbounds i8, ptr %162, i64 48, !dbg !1076
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %162, align 2, !dbg !1076
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %163, align 2, !dbg !1076
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %164, align 2, !dbg !1076
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %165, align 2, !dbg !1076
  %index.next242 = add nuw i64 %index241, 32, !dbg !1072
  %166 = icmp eq i64 %index.next242, %n.vec238, !dbg !1072
  br i1 %166, label %middle.block233, label %vector.body240, !dbg !1072, !llvm.loop !1094

middle.block233:                                  ; preds = %vector.body240
  %cmp.n243 = icmp eq i64 %157, %n.vec238, !dbg !1071
  br i1 %cmp.n243, label %for.cond.cleanup14.5, label %for.body15.5.preheader, !dbg !1071

for.body15.5.preheader:                           ; preds = %middle.block233, %for.cond.cleanup14.4
  %j.0171.5.ph = phi i64 [ 0, %for.cond.cleanup14.4 ], [ %n.vec238, %middle.block233 ]
  br label %for.body15.5, !dbg !1071

for.body15.5:                                     ; preds = %for.body15.5.preheader, %for.body15.5
  %j.0171.5 = phi i64 [ %inc21.5, %for.body15.5 ], [ %j.0171.5.ph, %for.body15.5.preheader ]
    #dbg_value(i64 %j.0171.5, !973, !DIExpression(), !1070)
  %arrayidx17.5 = getelementptr inbounds [12 x [16 x i16]], ptr %is_match, i64 0, i64 5, i64 %j.0171.5, !dbg !1074
  store i16 1024, ptr %arrayidx17.5, align 2, !dbg !1074
  %arrayidx19.5 = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long, i64 0, i64 5, i64 %j.0171.5, !dbg !1076
  store i16 1024, ptr %arrayidx19.5, align 2, !dbg !1076
  %inc21.5 = add nuw nsw i64 %j.0171.5, 1, !dbg !1072
    #dbg_value(i64 %inc21.5, !973, !DIExpression(), !1070)
  %cmp12.not.not.5 = icmp ult i64 %j.0171.5, %conv, !dbg !1086
  br i1 %cmp12.not.not.5, label %for.body15.5, label %for.cond.cleanup14.5, !dbg !1071, !llvm.loop !1095

for.cond.cleanup14.5:                             ; preds = %for.body15.5, %middle.block233
  %arrayidx23.5 = getelementptr inbounds i8, ptr %pcoder, i64 27942, !dbg !1081
  store i16 1024, ptr %arrayidx23.5, align 2, !dbg !1081
  %arrayidx24.5 = getelementptr inbounds i8, ptr %pcoder, i64 27966, !dbg !1082
  store i16 1024, ptr %arrayidx24.5, align 2, !dbg !1082
  %arrayidx25.5 = getelementptr inbounds i8, ptr %pcoder, i64 27990, !dbg !1083
  store i16 1024, ptr %arrayidx25.5, align 2, !dbg !1083
  %arrayidx26.5 = getelementptr inbounds i8, ptr %pcoder, i64 28014, !dbg !1084
  store i16 1024, ptr %arrayidx26.5, align 2, !dbg !1084
    #dbg_value(i64 6, !971, !DIExpression(), !1069)
    #dbg_value(i64 0, !973, !DIExpression(), !1070)
  %167 = add nuw nsw i64 %conv, 1, !dbg !1071
  %min.iters.check246 = icmp ugt i32 %notmask, -32, !dbg !1071
  br i1 %min.iters.check246, label %for.body15.6.preheader, label %vector.ph247, !dbg !1071

vector.ph247:                                     ; preds = %for.cond.cleanup14.5
  %n.vec249 = and i64 %167, 224, !dbg !1071
  br label %vector.body251, !dbg !1071

vector.body251:                                   ; preds = %vector.body251, %vector.ph247
  %index252 = phi i64 [ 0, %vector.ph247 ], [ %index.next253, %vector.body251 ], !dbg !1072
  %168 = getelementptr inbounds [12 x [16 x i16]], ptr %is_match, i64 0, i64 6, i64 %index252, !dbg !1074
  %169 = getelementptr inbounds i8, ptr %168, i64 16, !dbg !1074
  %170 = getelementptr inbounds i8, ptr %168, i64 32, !dbg !1074
  %171 = getelementptr inbounds i8, ptr %168, i64 48, !dbg !1074
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %168, align 2, !dbg !1074
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %169, align 2, !dbg !1074
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %170, align 2, !dbg !1074
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %171, align 2, !dbg !1074
  %172 = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long, i64 0, i64 6, i64 %index252, !dbg !1076
  %173 = getelementptr inbounds i8, ptr %172, i64 16, !dbg !1076
  %174 = getelementptr inbounds i8, ptr %172, i64 32, !dbg !1076
  %175 = getelementptr inbounds i8, ptr %172, i64 48, !dbg !1076
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %172, align 2, !dbg !1076
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %173, align 2, !dbg !1076
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %174, align 2, !dbg !1076
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %175, align 2, !dbg !1076
  %index.next253 = add nuw i64 %index252, 32, !dbg !1072
  %176 = icmp eq i64 %index.next253, %n.vec249, !dbg !1072
  br i1 %176, label %middle.block244, label %vector.body251, !dbg !1072, !llvm.loop !1096

middle.block244:                                  ; preds = %vector.body251
  %cmp.n254 = icmp eq i64 %167, %n.vec249, !dbg !1071
  br i1 %cmp.n254, label %for.cond.cleanup14.6, label %for.body15.6.preheader, !dbg !1071

for.body15.6.preheader:                           ; preds = %middle.block244, %for.cond.cleanup14.5
  %j.0171.6.ph = phi i64 [ 0, %for.cond.cleanup14.5 ], [ %n.vec249, %middle.block244 ]
  br label %for.body15.6, !dbg !1071

for.body15.6:                                     ; preds = %for.body15.6.preheader, %for.body15.6
  %j.0171.6 = phi i64 [ %inc21.6, %for.body15.6 ], [ %j.0171.6.ph, %for.body15.6.preheader ]
    #dbg_value(i64 %j.0171.6, !973, !DIExpression(), !1070)
  %arrayidx17.6 = getelementptr inbounds [12 x [16 x i16]], ptr %is_match, i64 0, i64 6, i64 %j.0171.6, !dbg !1074
  store i16 1024, ptr %arrayidx17.6, align 2, !dbg !1074
  %arrayidx19.6 = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long, i64 0, i64 6, i64 %j.0171.6, !dbg !1076
  store i16 1024, ptr %arrayidx19.6, align 2, !dbg !1076
  %inc21.6 = add nuw nsw i64 %j.0171.6, 1, !dbg !1072
    #dbg_value(i64 %inc21.6, !973, !DIExpression(), !1070)
  %cmp12.not.not.6 = icmp ult i64 %j.0171.6, %conv, !dbg !1086
  br i1 %cmp12.not.not.6, label %for.body15.6, label %for.cond.cleanup14.6, !dbg !1071, !llvm.loop !1097

for.cond.cleanup14.6:                             ; preds = %for.body15.6, %middle.block244
  %arrayidx23.6 = getelementptr inbounds i8, ptr %pcoder, i64 27944, !dbg !1081
  store i16 1024, ptr %arrayidx23.6, align 2, !dbg !1081
  %arrayidx24.6 = getelementptr inbounds i8, ptr %pcoder, i64 27968, !dbg !1082
  store i16 1024, ptr %arrayidx24.6, align 2, !dbg !1082
  %arrayidx25.6 = getelementptr inbounds i8, ptr %pcoder, i64 27992, !dbg !1083
  store i16 1024, ptr %arrayidx25.6, align 2, !dbg !1083
  %arrayidx26.6 = getelementptr inbounds i8, ptr %pcoder, i64 28016, !dbg !1084
  store i16 1024, ptr %arrayidx26.6, align 2, !dbg !1084
    #dbg_value(i64 7, !971, !DIExpression(), !1069)
    #dbg_value(i64 0, !973, !DIExpression(), !1070)
  %177 = add nuw nsw i64 %conv, 1, !dbg !1071
  %min.iters.check257 = icmp ugt i32 %notmask, -32, !dbg !1071
  br i1 %min.iters.check257, label %for.body15.7.preheader, label %vector.ph258, !dbg !1071

vector.ph258:                                     ; preds = %for.cond.cleanup14.6
  %n.vec260 = and i64 %177, 224, !dbg !1071
  br label %vector.body262, !dbg !1071

vector.body262:                                   ; preds = %vector.body262, %vector.ph258
  %index263 = phi i64 [ 0, %vector.ph258 ], [ %index.next264, %vector.body262 ], !dbg !1072
  %178 = getelementptr inbounds [12 x [16 x i16]], ptr %is_match, i64 0, i64 7, i64 %index263, !dbg !1074
  %179 = getelementptr inbounds i8, ptr %178, i64 16, !dbg !1074
  %180 = getelementptr inbounds i8, ptr %178, i64 32, !dbg !1074
  %181 = getelementptr inbounds i8, ptr %178, i64 48, !dbg !1074
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %178, align 2, !dbg !1074
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %179, align 2, !dbg !1074
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %180, align 2, !dbg !1074
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %181, align 2, !dbg !1074
  %182 = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long, i64 0, i64 7, i64 %index263, !dbg !1076
  %183 = getelementptr inbounds i8, ptr %182, i64 16, !dbg !1076
  %184 = getelementptr inbounds i8, ptr %182, i64 32, !dbg !1076
  %185 = getelementptr inbounds i8, ptr %182, i64 48, !dbg !1076
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %182, align 2, !dbg !1076
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %183, align 2, !dbg !1076
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %184, align 2, !dbg !1076
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %185, align 2, !dbg !1076
  %index.next264 = add nuw i64 %index263, 32, !dbg !1072
  %186 = icmp eq i64 %index.next264, %n.vec260, !dbg !1072
  br i1 %186, label %middle.block255, label %vector.body262, !dbg !1072, !llvm.loop !1098

middle.block255:                                  ; preds = %vector.body262
  %cmp.n265 = icmp eq i64 %177, %n.vec260, !dbg !1071
  br i1 %cmp.n265, label %for.cond.cleanup14.7, label %for.body15.7.preheader, !dbg !1071

for.body15.7.preheader:                           ; preds = %middle.block255, %for.cond.cleanup14.6
  %j.0171.7.ph = phi i64 [ 0, %for.cond.cleanup14.6 ], [ %n.vec260, %middle.block255 ]
  br label %for.body15.7, !dbg !1071

for.body15.7:                                     ; preds = %for.body15.7.preheader, %for.body15.7
  %j.0171.7 = phi i64 [ %inc21.7, %for.body15.7 ], [ %j.0171.7.ph, %for.body15.7.preheader ]
    #dbg_value(i64 %j.0171.7, !973, !DIExpression(), !1070)
  %arrayidx17.7 = getelementptr inbounds [12 x [16 x i16]], ptr %is_match, i64 0, i64 7, i64 %j.0171.7, !dbg !1074
  store i16 1024, ptr %arrayidx17.7, align 2, !dbg !1074
  %arrayidx19.7 = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long, i64 0, i64 7, i64 %j.0171.7, !dbg !1076
  store i16 1024, ptr %arrayidx19.7, align 2, !dbg !1076
  %inc21.7 = add nuw nsw i64 %j.0171.7, 1, !dbg !1072
    #dbg_value(i64 %inc21.7, !973, !DIExpression(), !1070)
  %cmp12.not.not.7 = icmp ult i64 %j.0171.7, %conv, !dbg !1086
  br i1 %cmp12.not.not.7, label %for.body15.7, label %for.cond.cleanup14.7, !dbg !1071, !llvm.loop !1099

for.cond.cleanup14.7:                             ; preds = %for.body15.7, %middle.block255
  %arrayidx23.7 = getelementptr inbounds i8, ptr %pcoder, i64 27946, !dbg !1081
  store i16 1024, ptr %arrayidx23.7, align 2, !dbg !1081
  %arrayidx24.7 = getelementptr inbounds i8, ptr %pcoder, i64 27970, !dbg !1082
  store i16 1024, ptr %arrayidx24.7, align 2, !dbg !1082
  %arrayidx25.7 = getelementptr inbounds i8, ptr %pcoder, i64 27994, !dbg !1083
  store i16 1024, ptr %arrayidx25.7, align 2, !dbg !1083
  %arrayidx26.7 = getelementptr inbounds i8, ptr %pcoder, i64 28018, !dbg !1084
  store i16 1024, ptr %arrayidx26.7, align 2, !dbg !1084
    #dbg_value(i64 8, !971, !DIExpression(), !1069)
    #dbg_value(i64 0, !973, !DIExpression(), !1070)
  %187 = add nuw nsw i64 %conv, 1, !dbg !1071
  %min.iters.check268 = icmp ugt i32 %notmask, -32, !dbg !1071
  br i1 %min.iters.check268, label %for.body15.8.preheader, label %vector.ph269, !dbg !1071

vector.ph269:                                     ; preds = %for.cond.cleanup14.7
  %n.vec271 = and i64 %187, 224, !dbg !1071
  br label %vector.body273, !dbg !1071

vector.body273:                                   ; preds = %vector.body273, %vector.ph269
  %index274 = phi i64 [ 0, %vector.ph269 ], [ %index.next275, %vector.body273 ], !dbg !1072
  %188 = getelementptr inbounds [12 x [16 x i16]], ptr %is_match, i64 0, i64 8, i64 %index274, !dbg !1074
  %189 = getelementptr inbounds i8, ptr %188, i64 16, !dbg !1074
  %190 = getelementptr inbounds i8, ptr %188, i64 32, !dbg !1074
  %191 = getelementptr inbounds i8, ptr %188, i64 48, !dbg !1074
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %188, align 2, !dbg !1074
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %189, align 2, !dbg !1074
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %190, align 2, !dbg !1074
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %191, align 2, !dbg !1074
  %192 = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long, i64 0, i64 8, i64 %index274, !dbg !1076
  %193 = getelementptr inbounds i8, ptr %192, i64 16, !dbg !1076
  %194 = getelementptr inbounds i8, ptr %192, i64 32, !dbg !1076
  %195 = getelementptr inbounds i8, ptr %192, i64 48, !dbg !1076
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %192, align 2, !dbg !1076
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %193, align 2, !dbg !1076
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %194, align 2, !dbg !1076
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %195, align 2, !dbg !1076
  %index.next275 = add nuw i64 %index274, 32, !dbg !1072
  %196 = icmp eq i64 %index.next275, %n.vec271, !dbg !1072
  br i1 %196, label %middle.block266, label %vector.body273, !dbg !1072, !llvm.loop !1100

middle.block266:                                  ; preds = %vector.body273
  %cmp.n276 = icmp eq i64 %187, %n.vec271, !dbg !1071
  br i1 %cmp.n276, label %for.cond.cleanup14.8, label %for.body15.8.preheader, !dbg !1071

for.body15.8.preheader:                           ; preds = %middle.block266, %for.cond.cleanup14.7
  %j.0171.8.ph = phi i64 [ 0, %for.cond.cleanup14.7 ], [ %n.vec271, %middle.block266 ]
  br label %for.body15.8, !dbg !1071

for.body15.8:                                     ; preds = %for.body15.8.preheader, %for.body15.8
  %j.0171.8 = phi i64 [ %inc21.8, %for.body15.8 ], [ %j.0171.8.ph, %for.body15.8.preheader ]
    #dbg_value(i64 %j.0171.8, !973, !DIExpression(), !1070)
  %arrayidx17.8 = getelementptr inbounds [12 x [16 x i16]], ptr %is_match, i64 0, i64 8, i64 %j.0171.8, !dbg !1074
  store i16 1024, ptr %arrayidx17.8, align 2, !dbg !1074
  %arrayidx19.8 = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long, i64 0, i64 8, i64 %j.0171.8, !dbg !1076
  store i16 1024, ptr %arrayidx19.8, align 2, !dbg !1076
  %inc21.8 = add nuw nsw i64 %j.0171.8, 1, !dbg !1072
    #dbg_value(i64 %inc21.8, !973, !DIExpression(), !1070)
  %cmp12.not.not.8 = icmp ult i64 %j.0171.8, %conv, !dbg !1086
  br i1 %cmp12.not.not.8, label %for.body15.8, label %for.cond.cleanup14.8, !dbg !1071, !llvm.loop !1101

for.cond.cleanup14.8:                             ; preds = %for.body15.8, %middle.block266
  %arrayidx23.8 = getelementptr inbounds i8, ptr %pcoder, i64 27948, !dbg !1081
  store i16 1024, ptr %arrayidx23.8, align 2, !dbg !1081
  %arrayidx24.8 = getelementptr inbounds i8, ptr %pcoder, i64 27972, !dbg !1082
  store i16 1024, ptr %arrayidx24.8, align 2, !dbg !1082
  %arrayidx25.8 = getelementptr inbounds i8, ptr %pcoder, i64 27996, !dbg !1083
  store i16 1024, ptr %arrayidx25.8, align 2, !dbg !1083
  %arrayidx26.8 = getelementptr inbounds i8, ptr %pcoder, i64 28020, !dbg !1084
  store i16 1024, ptr %arrayidx26.8, align 2, !dbg !1084
    #dbg_value(i64 9, !971, !DIExpression(), !1069)
    #dbg_value(i64 0, !973, !DIExpression(), !1070)
  %197 = add nuw nsw i64 %conv, 1, !dbg !1071
  %min.iters.check279 = icmp ugt i32 %notmask, -32, !dbg !1071
  br i1 %min.iters.check279, label %for.body15.9.preheader, label %vector.ph280, !dbg !1071

vector.ph280:                                     ; preds = %for.cond.cleanup14.8
  %n.vec282 = and i64 %197, 224, !dbg !1071
  br label %vector.body284, !dbg !1071

vector.body284:                                   ; preds = %vector.body284, %vector.ph280
  %index285 = phi i64 [ 0, %vector.ph280 ], [ %index.next286, %vector.body284 ], !dbg !1072
  %198 = getelementptr inbounds [12 x [16 x i16]], ptr %is_match, i64 0, i64 9, i64 %index285, !dbg !1074
  %199 = getelementptr inbounds i8, ptr %198, i64 16, !dbg !1074
  %200 = getelementptr inbounds i8, ptr %198, i64 32, !dbg !1074
  %201 = getelementptr inbounds i8, ptr %198, i64 48, !dbg !1074
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %198, align 2, !dbg !1074
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %199, align 2, !dbg !1074
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %200, align 2, !dbg !1074
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %201, align 2, !dbg !1074
  %202 = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long, i64 0, i64 9, i64 %index285, !dbg !1076
  %203 = getelementptr inbounds i8, ptr %202, i64 16, !dbg !1076
  %204 = getelementptr inbounds i8, ptr %202, i64 32, !dbg !1076
  %205 = getelementptr inbounds i8, ptr %202, i64 48, !dbg !1076
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %202, align 2, !dbg !1076
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %203, align 2, !dbg !1076
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %204, align 2, !dbg !1076
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %205, align 2, !dbg !1076
  %index.next286 = add nuw i64 %index285, 32, !dbg !1072
  %206 = icmp eq i64 %index.next286, %n.vec282, !dbg !1072
  br i1 %206, label %middle.block277, label %vector.body284, !dbg !1072, !llvm.loop !1102

middle.block277:                                  ; preds = %vector.body284
  %cmp.n287 = icmp eq i64 %197, %n.vec282, !dbg !1071
  br i1 %cmp.n287, label %for.cond.cleanup14.9, label %for.body15.9.preheader, !dbg !1071

for.body15.9.preheader:                           ; preds = %middle.block277, %for.cond.cleanup14.8
  %j.0171.9.ph = phi i64 [ 0, %for.cond.cleanup14.8 ], [ %n.vec282, %middle.block277 ]
  br label %for.body15.9, !dbg !1071

for.body15.9:                                     ; preds = %for.body15.9.preheader, %for.body15.9
  %j.0171.9 = phi i64 [ %inc21.9, %for.body15.9 ], [ %j.0171.9.ph, %for.body15.9.preheader ]
    #dbg_value(i64 %j.0171.9, !973, !DIExpression(), !1070)
  %arrayidx17.9 = getelementptr inbounds [12 x [16 x i16]], ptr %is_match, i64 0, i64 9, i64 %j.0171.9, !dbg !1074
  store i16 1024, ptr %arrayidx17.9, align 2, !dbg !1074
  %arrayidx19.9 = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long, i64 0, i64 9, i64 %j.0171.9, !dbg !1076
  store i16 1024, ptr %arrayidx19.9, align 2, !dbg !1076
  %inc21.9 = add nuw nsw i64 %j.0171.9, 1, !dbg !1072
    #dbg_value(i64 %inc21.9, !973, !DIExpression(), !1070)
  %cmp12.not.not.9 = icmp ult i64 %j.0171.9, %conv, !dbg !1086
  br i1 %cmp12.not.not.9, label %for.body15.9, label %for.cond.cleanup14.9, !dbg !1071, !llvm.loop !1103

for.cond.cleanup14.9:                             ; preds = %for.body15.9, %middle.block277
  %arrayidx23.9 = getelementptr inbounds i8, ptr %pcoder, i64 27950, !dbg !1081
  store i16 1024, ptr %arrayidx23.9, align 2, !dbg !1081
  %arrayidx24.9 = getelementptr inbounds i8, ptr %pcoder, i64 27974, !dbg !1082
  store i16 1024, ptr %arrayidx24.9, align 2, !dbg !1082
  %arrayidx25.9 = getelementptr inbounds i8, ptr %pcoder, i64 27998, !dbg !1083
  store i16 1024, ptr %arrayidx25.9, align 2, !dbg !1083
  %arrayidx26.9 = getelementptr inbounds i8, ptr %pcoder, i64 28022, !dbg !1084
  store i16 1024, ptr %arrayidx26.9, align 2, !dbg !1084
    #dbg_value(i64 10, !971, !DIExpression(), !1069)
    #dbg_value(i64 0, !973, !DIExpression(), !1070)
  %207 = add nuw nsw i64 %conv, 1, !dbg !1071
  %min.iters.check290 = icmp ugt i32 %notmask, -32, !dbg !1071
  br i1 %min.iters.check290, label %for.body15.10.preheader, label %vector.ph291, !dbg !1071

vector.ph291:                                     ; preds = %for.cond.cleanup14.9
  %n.vec293 = and i64 %207, 224, !dbg !1071
  br label %vector.body295, !dbg !1071

vector.body295:                                   ; preds = %vector.body295, %vector.ph291
  %index296 = phi i64 [ 0, %vector.ph291 ], [ %index.next297, %vector.body295 ], !dbg !1072
  %208 = getelementptr inbounds [12 x [16 x i16]], ptr %is_match, i64 0, i64 10, i64 %index296, !dbg !1074
  %209 = getelementptr inbounds i8, ptr %208, i64 16, !dbg !1074
  %210 = getelementptr inbounds i8, ptr %208, i64 32, !dbg !1074
  %211 = getelementptr inbounds i8, ptr %208, i64 48, !dbg !1074
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %208, align 2, !dbg !1074
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %209, align 2, !dbg !1074
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %210, align 2, !dbg !1074
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %211, align 2, !dbg !1074
  %212 = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long, i64 0, i64 10, i64 %index296, !dbg !1076
  %213 = getelementptr inbounds i8, ptr %212, i64 16, !dbg !1076
  %214 = getelementptr inbounds i8, ptr %212, i64 32, !dbg !1076
  %215 = getelementptr inbounds i8, ptr %212, i64 48, !dbg !1076
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %212, align 2, !dbg !1076
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %213, align 2, !dbg !1076
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %214, align 2, !dbg !1076
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %215, align 2, !dbg !1076
  %index.next297 = add nuw i64 %index296, 32, !dbg !1072
  %216 = icmp eq i64 %index.next297, %n.vec293, !dbg !1072
  br i1 %216, label %middle.block288, label %vector.body295, !dbg !1072, !llvm.loop !1104

middle.block288:                                  ; preds = %vector.body295
  %cmp.n298 = icmp eq i64 %207, %n.vec293, !dbg !1071
  br i1 %cmp.n298, label %for.cond.cleanup14.10, label %for.body15.10.preheader, !dbg !1071

for.body15.10.preheader:                          ; preds = %middle.block288, %for.cond.cleanup14.9
  %j.0171.10.ph = phi i64 [ 0, %for.cond.cleanup14.9 ], [ %n.vec293, %middle.block288 ]
  br label %for.body15.10, !dbg !1071

for.body15.10:                                    ; preds = %for.body15.10.preheader, %for.body15.10
  %j.0171.10 = phi i64 [ %inc21.10, %for.body15.10 ], [ %j.0171.10.ph, %for.body15.10.preheader ]
    #dbg_value(i64 %j.0171.10, !973, !DIExpression(), !1070)
  %arrayidx17.10 = getelementptr inbounds [12 x [16 x i16]], ptr %is_match, i64 0, i64 10, i64 %j.0171.10, !dbg !1074
  store i16 1024, ptr %arrayidx17.10, align 2, !dbg !1074
  %arrayidx19.10 = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long, i64 0, i64 10, i64 %j.0171.10, !dbg !1076
  store i16 1024, ptr %arrayidx19.10, align 2, !dbg !1076
  %inc21.10 = add nuw nsw i64 %j.0171.10, 1, !dbg !1072
    #dbg_value(i64 %inc21.10, !973, !DIExpression(), !1070)
  %cmp12.not.not.10 = icmp ult i64 %j.0171.10, %conv, !dbg !1086
  br i1 %cmp12.not.not.10, label %for.body15.10, label %for.cond.cleanup14.10, !dbg !1071, !llvm.loop !1105

for.cond.cleanup14.10:                            ; preds = %for.body15.10, %middle.block288
  %arrayidx23.10 = getelementptr inbounds i8, ptr %pcoder, i64 27952, !dbg !1081
  store i16 1024, ptr %arrayidx23.10, align 2, !dbg !1081
  %arrayidx24.10 = getelementptr inbounds i8, ptr %pcoder, i64 27976, !dbg !1082
  store i16 1024, ptr %arrayidx24.10, align 2, !dbg !1082
  %arrayidx25.10 = getelementptr inbounds i8, ptr %pcoder, i64 28000, !dbg !1083
  store i16 1024, ptr %arrayidx25.10, align 2, !dbg !1083
  %arrayidx26.10 = getelementptr inbounds i8, ptr %pcoder, i64 28024, !dbg !1084
  store i16 1024, ptr %arrayidx26.10, align 2, !dbg !1084
    #dbg_value(i64 11, !971, !DIExpression(), !1069)
    #dbg_value(i64 0, !973, !DIExpression(), !1070)
  %217 = add nuw nsw i64 %conv, 1, !dbg !1071
  %min.iters.check301 = icmp ugt i32 %notmask, -32, !dbg !1071
  br i1 %min.iters.check301, label %for.body15.11.preheader, label %vector.ph302, !dbg !1071

vector.ph302:                                     ; preds = %for.cond.cleanup14.10
  %n.vec304 = and i64 %217, 224, !dbg !1071
  br label %vector.body306, !dbg !1071

vector.body306:                                   ; preds = %vector.body306, %vector.ph302
  %index307 = phi i64 [ 0, %vector.ph302 ], [ %index.next308, %vector.body306 ], !dbg !1072
  %218 = getelementptr inbounds [12 x [16 x i16]], ptr %is_match, i64 0, i64 11, i64 %index307, !dbg !1074
  %219 = getelementptr inbounds i8, ptr %218, i64 16, !dbg !1074
  %220 = getelementptr inbounds i8, ptr %218, i64 32, !dbg !1074
  %221 = getelementptr inbounds i8, ptr %218, i64 48, !dbg !1074
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %218, align 2, !dbg !1074
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %219, align 2, !dbg !1074
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %220, align 2, !dbg !1074
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %221, align 2, !dbg !1074
  %222 = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long, i64 0, i64 11, i64 %index307, !dbg !1076
  %223 = getelementptr inbounds i8, ptr %222, i64 16, !dbg !1076
  %224 = getelementptr inbounds i8, ptr %222, i64 32, !dbg !1076
  %225 = getelementptr inbounds i8, ptr %222, i64 48, !dbg !1076
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %222, align 2, !dbg !1076
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %223, align 2, !dbg !1076
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %224, align 2, !dbg !1076
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %225, align 2, !dbg !1076
  %index.next308 = add nuw i64 %index307, 32, !dbg !1072
  %226 = icmp eq i64 %index.next308, %n.vec304, !dbg !1072
  br i1 %226, label %middle.block299, label %vector.body306, !dbg !1072, !llvm.loop !1106

middle.block299:                                  ; preds = %vector.body306
  %cmp.n309 = icmp eq i64 %217, %n.vec304, !dbg !1071
  br i1 %cmp.n309, label %for.cond.cleanup14.11, label %for.body15.11.preheader, !dbg !1071

for.body15.11.preheader:                          ; preds = %middle.block299, %for.cond.cleanup14.10
  %j.0171.11.ph = phi i64 [ 0, %for.cond.cleanup14.10 ], [ %n.vec304, %middle.block299 ]
  br label %for.body15.11, !dbg !1071

for.body15.11:                                    ; preds = %for.body15.11.preheader, %for.body15.11
  %j.0171.11 = phi i64 [ %inc21.11, %for.body15.11 ], [ %j.0171.11.ph, %for.body15.11.preheader ]
    #dbg_value(i64 %j.0171.11, !973, !DIExpression(), !1070)
  %arrayidx17.11 = getelementptr inbounds [12 x [16 x i16]], ptr %is_match, i64 0, i64 11, i64 %j.0171.11, !dbg !1074
  store i16 1024, ptr %arrayidx17.11, align 2, !dbg !1074
  %arrayidx19.11 = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long, i64 0, i64 11, i64 %j.0171.11, !dbg !1076
  store i16 1024, ptr %arrayidx19.11, align 2, !dbg !1076
  %inc21.11 = add nuw nsw i64 %j.0171.11, 1, !dbg !1072
    #dbg_value(i64 %inc21.11, !973, !DIExpression(), !1070)
  %cmp12.not.not.11 = icmp ult i64 %j.0171.11, %conv, !dbg !1086
  br i1 %cmp12.not.not.11, label %for.body15.11, label %for.cond.cleanup14.11, !dbg !1071, !llvm.loop !1107

for.cond.cleanup14.11:                            ; preds = %for.body15.11, %middle.block299
  %arrayidx23.11 = getelementptr inbounds i8, ptr %pcoder, i64 27954, !dbg !1081
  store i16 1024, ptr %arrayidx23.11, align 2, !dbg !1081
  %arrayidx24.11 = getelementptr inbounds i8, ptr %pcoder, i64 27978, !dbg !1082
  store i16 1024, ptr %arrayidx24.11, align 2, !dbg !1082
  %arrayidx25.11 = getelementptr inbounds i8, ptr %pcoder, i64 28002, !dbg !1083
  store i16 1024, ptr %arrayidx25.11, align 2, !dbg !1083
  %arrayidx26.11 = getelementptr inbounds i8, ptr %pcoder, i64 28026, !dbg !1084
  store i16 1024, ptr %arrayidx26.11, align 2, !dbg !1084
    #dbg_value(i64 12, !971, !DIExpression(), !1069)
    #dbg_value(i64 0, !977, !DIExpression(), !1108)
  %pos_special = getelementptr inbounds i8, ptr %pcoder, i64 28924
  %227 = getelementptr inbounds i8, ptr %pcoder, i64 28940, !dbg !1109
  %228 = getelementptr inbounds i8, ptr %pcoder, i64 28956, !dbg !1109
  %229 = getelementptr inbounds i8, ptr %pcoder, i64 28972, !dbg !1109
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %pos_special, align 2, !dbg !1109
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %227, align 2, !dbg !1109
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %228, align 2, !dbg !1109
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %229, align 2, !dbg !1109
  %230 = getelementptr inbounds i8, ptr %pcoder, i64 28988, !dbg !1109
  %231 = getelementptr inbounds i8, ptr %pcoder, i64 29004, !dbg !1109
  %232 = getelementptr inbounds i8, ptr %pcoder, i64 29020, !dbg !1109
  %233 = getelementptr inbounds i8, ptr %pcoder, i64 29036, !dbg !1109
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %230, align 2, !dbg !1109
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %231, align 2, !dbg !1109
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %232, align 2, !dbg !1109
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %233, align 2, !dbg !1109
  %234 = getelementptr inbounds i8, ptr %pcoder, i64 29052, !dbg !1109
  %235 = getelementptr inbounds i8, ptr %pcoder, i64 29068, !dbg !1109
  %236 = getelementptr inbounds i8, ptr %pcoder, i64 29084, !dbg !1109
  %237 = getelementptr inbounds i8, ptr %pcoder, i64 29100, !dbg !1109
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %234, align 2, !dbg !1109
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %235, align 2, !dbg !1109
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %236, align 2, !dbg !1109
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %237, align 2, !dbg !1109
    #dbg_value(i64 96, !977, !DIExpression(), !1108)
  %arrayidx36 = getelementptr inbounds i8, ptr %pcoder, i64 29116, !dbg !1109
  store i16 1024, ptr %arrayidx36, align 2, !dbg !1109
    #dbg_value(i64 97, !977, !DIExpression(), !1108)
  %arrayidx36.1 = getelementptr inbounds i8, ptr %pcoder, i64 29118, !dbg !1109
  store i16 1024, ptr %arrayidx36.1, align 2, !dbg !1109
    #dbg_value(i64 98, !977, !DIExpression(), !1108)
  %arrayidx36.2 = getelementptr inbounds i8, ptr %pcoder, i64 29120, !dbg !1109
  store i16 1024, ptr %arrayidx36.2, align 2, !dbg !1109
    #dbg_value(i64 99, !977, !DIExpression(), !1108)
  %arrayidx36.3 = getelementptr inbounds i8, ptr %pcoder, i64 29122, !dbg !1109
  store i16 1024, ptr %arrayidx36.3, align 2, !dbg !1109
    #dbg_value(i64 100, !977, !DIExpression(), !1108)
  %arrayidx36.4 = getelementptr inbounds i8, ptr %pcoder, i64 29124, !dbg !1109
  store i16 1024, ptr %arrayidx36.4, align 2, !dbg !1109
    #dbg_value(i64 101, !977, !DIExpression(), !1108)
  %arrayidx36.5 = getelementptr inbounds i8, ptr %pcoder, i64 29126, !dbg !1109
  store i16 1024, ptr %arrayidx36.5, align 2, !dbg !1109
    #dbg_value(i64 102, !977, !DIExpression(), !1108)
  %arrayidx36.6 = getelementptr inbounds i8, ptr %pcoder, i64 29128, !dbg !1109
  store i16 1024, ptr %arrayidx36.6, align 2, !dbg !1109
    #dbg_value(i64 103, !977, !DIExpression(), !1108)
  %arrayidx36.7 = getelementptr inbounds i8, ptr %pcoder, i64 29130, !dbg !1109
  store i16 1024, ptr %arrayidx36.7, align 2, !dbg !1109
    #dbg_value(i64 104, !977, !DIExpression(), !1108)
  %arrayidx36.8 = getelementptr inbounds i8, ptr %pcoder, i64 29132, !dbg !1109
  store i16 1024, ptr %arrayidx36.8, align 2, !dbg !1109
    #dbg_value(i64 105, !977, !DIExpression(), !1108)
  %arrayidx36.9 = getelementptr inbounds i8, ptr %pcoder, i64 29134, !dbg !1109
  store i16 1024, ptr %arrayidx36.9, align 2, !dbg !1109
    #dbg_value(i64 106, !977, !DIExpression(), !1108)
  %arrayidx36.10 = getelementptr inbounds i8, ptr %pcoder, i64 29136, !dbg !1109
  store i16 1024, ptr %arrayidx36.10, align 2, !dbg !1109
    #dbg_value(i64 107, !977, !DIExpression(), !1108)
  %arrayidx36.11 = getelementptr inbounds i8, ptr %pcoder, i64 29138, !dbg !1109
  store i16 1024, ptr %arrayidx36.11, align 2, !dbg !1109
    #dbg_value(i64 108, !977, !DIExpression(), !1108)
  %arrayidx36.12 = getelementptr inbounds i8, ptr %pcoder, i64 29140, !dbg !1109
  store i16 1024, ptr %arrayidx36.12, align 2, !dbg !1109
    #dbg_value(i64 109, !977, !DIExpression(), !1108)
  %arrayidx36.13 = getelementptr inbounds i8, ptr %pcoder, i64 29142, !dbg !1109
  store i16 1024, ptr %arrayidx36.13, align 2, !dbg !1109
    #dbg_value(i64 110, !977, !DIExpression(), !1108)
  %arrayidx36.14 = getelementptr inbounds i8, ptr %pcoder, i64 29144, !dbg !1109
  store i16 1024, ptr %arrayidx36.14, align 2, !dbg !1109
    #dbg_value(i64 111, !977, !DIExpression(), !1108)
  %arrayidx36.15 = getelementptr inbounds i8, ptr %pcoder, i64 29146, !dbg !1109
  store i16 1024, ptr %arrayidx36.15, align 2, !dbg !1109
    #dbg_value(i64 112, !977, !DIExpression(), !1108)
  %arrayidx36.16 = getelementptr inbounds i8, ptr %pcoder, i64 29148, !dbg !1109
  store i16 1024, ptr %arrayidx36.16, align 2, !dbg !1109
    #dbg_value(i64 113, !977, !DIExpression(), !1108)
  %arrayidx36.17 = getelementptr inbounds i8, ptr %pcoder, i64 29150, !dbg !1109
  store i16 1024, ptr %arrayidx36.17, align 2, !dbg !1109
    #dbg_value(i64 114, !977, !DIExpression(), !1108)
  %pos_slot = getelementptr inbounds i8, ptr %pcoder, i64 28412
    #dbg_value(i64 0, !979, !DIExpression(), !1111)
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %pos_slot, align 2, !dbg !1112
  %238 = getelementptr inbounds i8, ptr %pcoder, i64 28428, !dbg !1112
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %238, align 2, !dbg !1112
  %239 = getelementptr inbounds i8, ptr %pcoder, i64 28444, !dbg !1112
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %239, align 2, !dbg !1112
  %240 = getelementptr inbounds i8, ptr %pcoder, i64 28460, !dbg !1112
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %240, align 2, !dbg !1112
  %241 = getelementptr inbounds i8, ptr %pcoder, i64 28476, !dbg !1112
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %241, align 2, !dbg !1112
  %242 = getelementptr inbounds i8, ptr %pcoder, i64 28492, !dbg !1112
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %242, align 2, !dbg !1112
  %243 = getelementptr inbounds i8, ptr %pcoder, i64 28508, !dbg !1112
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %243, align 2, !dbg !1112
  %244 = getelementptr inbounds i8, ptr %pcoder, i64 28524, !dbg !1112
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %244, align 2, !dbg !1112
  %245 = getelementptr inbounds i8, ptr %pcoder, i64 28540, !dbg !1112
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %245, align 2, !dbg !1112
  %246 = getelementptr inbounds i8, ptr %pcoder, i64 28556, !dbg !1112
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %246, align 2, !dbg !1112
  %247 = getelementptr inbounds i8, ptr %pcoder, i64 28572, !dbg !1112
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %247, align 2, !dbg !1112
  %248 = getelementptr inbounds i8, ptr %pcoder, i64 28588, !dbg !1112
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %248, align 2, !dbg !1112
  %249 = getelementptr inbounds i8, ptr %pcoder, i64 28604, !dbg !1112
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %249, align 2, !dbg !1112
  %250 = getelementptr inbounds i8, ptr %pcoder, i64 28620, !dbg !1112
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %250, align 2, !dbg !1112
  %251 = getelementptr inbounds i8, ptr %pcoder, i64 28636, !dbg !1112
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %251, align 2, !dbg !1112
  %252 = getelementptr inbounds i8, ptr %pcoder, i64 28652, !dbg !1112
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %252, align 2, !dbg !1112
  %253 = getelementptr inbounds i8, ptr %pcoder, i64 28668, !dbg !1112
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %253, align 2, !dbg !1112
  %254 = getelementptr inbounds i8, ptr %pcoder, i64 28684, !dbg !1112
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %254, align 2, !dbg !1112
  %255 = getelementptr inbounds i8, ptr %pcoder, i64 28700, !dbg !1112
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %255, align 2, !dbg !1112
  %256 = getelementptr inbounds i8, ptr %pcoder, i64 28716, !dbg !1112
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %256, align 2, !dbg !1112
  %257 = getelementptr inbounds i8, ptr %pcoder, i64 28732, !dbg !1112
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %257, align 2, !dbg !1112
  %258 = getelementptr inbounds i8, ptr %pcoder, i64 28748, !dbg !1112
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %258, align 2, !dbg !1112
  %259 = getelementptr inbounds i8, ptr %pcoder, i64 28764, !dbg !1112
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %259, align 2, !dbg !1112
  %260 = getelementptr inbounds i8, ptr %pcoder, i64 28780, !dbg !1112
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %260, align 2, !dbg !1112
  %261 = getelementptr inbounds i8, ptr %pcoder, i64 28796, !dbg !1112
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %261, align 2, !dbg !1112
  %262 = getelementptr inbounds i8, ptr %pcoder, i64 28812, !dbg !1112
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %262, align 2, !dbg !1112
  %263 = getelementptr inbounds i8, ptr %pcoder, i64 28828, !dbg !1112
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %263, align 2, !dbg !1112
  %264 = getelementptr inbounds i8, ptr %pcoder, i64 28844, !dbg !1112
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %264, align 2, !dbg !1112
  %265 = getelementptr inbounds i8, ptr %pcoder, i64 28860, !dbg !1112
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %265, align 2, !dbg !1112
  %266 = getelementptr inbounds i8, ptr %pcoder, i64 28876, !dbg !1112
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %266, align 2, !dbg !1112
  %267 = getelementptr inbounds i8, ptr %pcoder, i64 28892, !dbg !1112
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %267, align 2, !dbg !1112
  %268 = getelementptr inbounds i8, ptr %pcoder, i64 28908, !dbg !1112
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %268, align 2, !dbg !1112
  %pos_align = getelementptr inbounds i8, ptr %pcoder, i64 29152
    #dbg_value(i64 7, !984, !DIExpression(), !1114)
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %pos_align, align 2, !dbg !1115
    #dbg_value(i64 8, !984, !DIExpression(), !1114)
  %arrayidx66.8 = getelementptr inbounds i8, ptr %pcoder, i64 29168, !dbg !1115
    #dbg_value(i64 15, !984, !DIExpression(), !1114)
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %arrayidx66.8, align 2, !dbg !1115
    #dbg_value(i64 16, !984, !DIExpression(), !1114)
  %match_len_encoder = getelementptr inbounds i8, ptr %pcoder, i64 29184, !dbg !1117
  %269 = load i32, ptr %pb.i.i, align 4, !dbg !1118
  %shl71 = shl nuw i32 1, %269, !dbg !1119
  %fast_mode = getelementptr inbounds i8, ptr %pcoder, i64 2956, !dbg !1120
  %270 = load i8, ptr %fast_mode, align 4, !dbg !1120, !range !288, !noundef !289
    #dbg_value(ptr %match_len_encoder, !1121, !DIExpression(), !1143)
    #dbg_value(i32 %shl71, !1128, !DIExpression(), !1143)
    #dbg_value(i1 %loadedv, !1129, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !1143)
  store i16 1024, ptr %match_len_encoder, align 4, !dbg !1145
  %choice2.i = getelementptr inbounds i8, ptr %pcoder, i64 29186, !dbg !1146
  store i16 1024, ptr %choice2.i, align 2, !dbg !1146
    #dbg_value(i64 0, !1130, !DIExpression(), !1147)
  %conv.i = zext i32 %shl71 to i64
  %low.i = getelementptr inbounds i8, ptr %pcoder, i64 29188
  %mid.i = getelementptr inbounds i8, ptr %pcoder, i64 29444
  %min.iters.check332 = icmp ult i32 %269, 2, !dbg !1148
  br i1 %min.iters.check332, label %for.cond2.preheader.i.preheader, label %vector.ph333, !dbg !1148

for.body15:                                       ; preds = %for.body15.preheader, %for.body15
  %j.0171 = phi i64 [ %inc21, %for.body15 ], [ %j.0171.ph, %for.body15.preheader ]
    #dbg_value(i64 %j.0171, !973, !DIExpression(), !1070)
  %arrayidx17 = getelementptr inbounds [12 x [16 x i16]], ptr %is_match, i64 0, i64 0, i64 %j.0171, !dbg !1074
  store i16 1024, ptr %arrayidx17, align 2, !dbg !1074
  %arrayidx19 = getelementptr inbounds [12 x [16 x i16]], ptr %is_rep0_long, i64 0, i64 0, i64 %j.0171, !dbg !1076
  store i16 1024, ptr %arrayidx19, align 2, !dbg !1076
  %inc21 = add nuw nsw i64 %j.0171, 1, !dbg !1072
    #dbg_value(i64 %inc21, !973, !DIExpression(), !1070)
  %cmp12.not.not = icmp ult i64 %j.0171, %conv, !dbg !1086
  br i1 %cmp12.not.not, label %for.body15, label %for.cond.cleanup14, !dbg !1071, !llvm.loop !1149

for.cond2.preheader.i.preheader:                  ; preds = %for.cond.cleanup14.11
  %xtraiter = and i64 %conv.i, 1, !dbg !1148
  %271 = icmp eq i32 %269, 0, !dbg !1148
  br i1 %271, label %for.cond24.preheader.i.loopexit.unr-lcssa, label %for.cond2.preheader.i, !dbg !1148

vector.ph333:                                     ; preds = %for.cond.cleanup14.11
  %n.vec335 = and i64 %conv.i, 4294967292, !dbg !1148
  br label %vector.body337, !dbg !1148

vector.body337:                                   ; preds = %vector.body337, %vector.ph333
  %index338 = phi i64 [ 0, %vector.ph333 ], [ %index.next339, %vector.body337 ], !dbg !1150
  %272 = or disjoint i64 %index338, 1, !dbg !1148
  %273 = or disjoint i64 %index338, 2, !dbg !1148
  %274 = or disjoint i64 %index338, 3, !dbg !1148
  %275 = getelementptr inbounds [16 x [8 x i16]], ptr %low.i, i64 0, i64 %index338, i64 0, !dbg !1151
  %276 = getelementptr inbounds [16 x [8 x i16]], ptr %low.i, i64 0, i64 %272, i64 0, !dbg !1151
  %277 = getelementptr inbounds [16 x [8 x i16]], ptr %low.i, i64 0, i64 %273, i64 0, !dbg !1151
  %278 = getelementptr inbounds [16 x [8 x i16]], ptr %low.i, i64 0, i64 %274, i64 0, !dbg !1151
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %275, align 2, !dbg !1151
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %276, align 2, !dbg !1151
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %277, align 2, !dbg !1151
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %278, align 2, !dbg !1151
  %279 = getelementptr inbounds [16 x [8 x i16]], ptr %mid.i, i64 0, i64 %index338, i64 0, !dbg !1153
  %280 = getelementptr inbounds [16 x [8 x i16]], ptr %mid.i, i64 0, i64 %272, i64 0, !dbg !1153
  %281 = getelementptr inbounds [16 x [8 x i16]], ptr %mid.i, i64 0, i64 %273, i64 0, !dbg !1153
  %282 = getelementptr inbounds [16 x [8 x i16]], ptr %mid.i, i64 0, i64 %274, i64 0, !dbg !1153
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %279, align 2, !dbg !1153
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %280, align 2, !dbg !1153
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %281, align 2, !dbg !1153
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %282, align 2, !dbg !1153
  %index.next339 = add nuw i64 %index338, 4, !dbg !1150
  %283 = icmp eq i64 %index.next339, %n.vec335, !dbg !1150
  br i1 %283, label %vector.body345, label %vector.body337, !dbg !1150, !llvm.loop !1155

for.cond2.preheader.i:                            ; preds = %for.cond2.preheader.i.preheader, %for.cond2.preheader.i
  %pos_state.065.i = phi i64 [ %inc21.i.1, %for.cond2.preheader.i ], [ 0, %for.cond2.preheader.i.preheader ]
  %niter = phi i64 [ %niter.next.1, %for.cond2.preheader.i ], [ 0, %for.cond2.preheader.i.preheader ]
    #dbg_value(i64 %pos_state.065.i, !1130, !DIExpression(), !1147)
    #dbg_value(i64 0, !1132, !DIExpression(), !1157)
  %arrayidx7.i = getelementptr inbounds [16 x [8 x i16]], ptr %low.i, i64 0, i64 %pos_state.065.i, i64 0, !dbg !1151
    #dbg_value(i64 7, !1132, !DIExpression(), !1157)
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %arrayidx7.i, align 2, !dbg !1151
    #dbg_value(i64 8, !1132, !DIExpression(), !1157)
    #dbg_value(i64 0, !1136, !DIExpression(), !1158)
  %arrayidx16.i = getelementptr inbounds [16 x [8 x i16]], ptr %mid.i, i64 0, i64 %pos_state.065.i, i64 0, !dbg !1153
    #dbg_value(i64 7, !1136, !DIExpression(), !1158)
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %arrayidx16.i, align 2, !dbg !1153
    #dbg_value(i64 8, !1136, !DIExpression(), !1158)
  %inc21.i = or disjoint i64 %pos_state.065.i, 1, !dbg !1150
    #dbg_value(i64 %inc21.i, !1130, !DIExpression(), !1147)
    #dbg_value(i64 0, !1132, !DIExpression(), !1157)
  %arrayidx7.i.1 = getelementptr inbounds [16 x [8 x i16]], ptr %low.i, i64 0, i64 %inc21.i, i64 0, !dbg !1151
    #dbg_value(i64 7, !1132, !DIExpression(), !1157)
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %arrayidx7.i.1, align 2, !dbg !1151
    #dbg_value(i64 8, !1132, !DIExpression(), !1157)
    #dbg_value(i64 0, !1136, !DIExpression(), !1158)
  %arrayidx16.i.1 = getelementptr inbounds [16 x [8 x i16]], ptr %mid.i, i64 0, i64 %inc21.i, i64 0, !dbg !1153
    #dbg_value(i64 7, !1136, !DIExpression(), !1158)
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %arrayidx16.i.1, align 2, !dbg !1153
    #dbg_value(i64 8, !1136, !DIExpression(), !1158)
  %inc21.i.1 = add nuw nsw i64 %pos_state.065.i, 2, !dbg !1150
    #dbg_value(i64 %inc21.i.1, !1130, !DIExpression(), !1147)
  %niter.next.1 = add i64 %niter, 2, !dbg !1148
  %niter.ncmp.1 = icmp eq i64 %niter, 0, !dbg !1148
  br i1 %niter.ncmp.1, label %for.cond24.preheader.i.loopexit.unr-lcssa, label %for.cond2.preheader.i, !dbg !1148, !llvm.loop !1159

for.cond24.preheader.i.loopexit.unr-lcssa:        ; preds = %for.cond2.preheader.i, %for.cond2.preheader.i.preheader
  %pos_state.065.i.unr = phi i64 [ 0, %for.cond2.preheader.i.preheader ], [ %inc21.i.1, %for.cond2.preheader.i ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !1148
  br i1 %lcmp.mod.not, label %vector.body345, label %for.cond2.preheader.i.epil, !dbg !1148

for.cond2.preheader.i.epil:                       ; preds = %for.cond24.preheader.i.loopexit.unr-lcssa
    #dbg_value(i64 %pos_state.065.i.unr, !1130, !DIExpression(), !1147)
    #dbg_value(i64 0, !1132, !DIExpression(), !1157)
  %arrayidx7.i.epil = getelementptr inbounds [16 x [8 x i16]], ptr %low.i, i64 0, i64 %pos_state.065.i.unr, i64 0, !dbg !1151
    #dbg_value(i64 1, !1132, !DIExpression(), !1157)
    #dbg_value(i64 2, !1132, !DIExpression(), !1157)
    #dbg_value(i64 3, !1132, !DIExpression(), !1157)
    #dbg_value(i64 4, !1132, !DIExpression(), !1157)
    #dbg_value(i64 5, !1132, !DIExpression(), !1157)
    #dbg_value(i64 6, !1132, !DIExpression(), !1157)
    #dbg_value(i64 7, !1132, !DIExpression(), !1157)
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %arrayidx7.i.epil, align 2, !dbg !1151
    #dbg_value(i64 8, !1132, !DIExpression(), !1157)
    #dbg_value(i64 0, !1136, !DIExpression(), !1158)
  %arrayidx16.i.epil = getelementptr inbounds [16 x [8 x i16]], ptr %mid.i, i64 0, i64 %pos_state.065.i.unr, i64 0, !dbg !1153
    #dbg_value(i64 1, !1136, !DIExpression(), !1158)
    #dbg_value(i64 2, !1136, !DIExpression(), !1158)
    #dbg_value(i64 3, !1136, !DIExpression(), !1158)
    #dbg_value(i64 4, !1136, !DIExpression(), !1158)
    #dbg_value(i64 5, !1136, !DIExpression(), !1158)
    #dbg_value(i64 6, !1136, !DIExpression(), !1158)
    #dbg_value(i64 7, !1136, !DIExpression(), !1158)
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %arrayidx16.i.epil, align 2, !dbg !1153
    #dbg_value(i64 8, !1136, !DIExpression(), !1158)
    #dbg_value(i64 %pos_state.065.i.unr, !1130, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1147)
  br label %vector.body345

vector.body345:                                   ; preds = %for.cond24.preheader.i.loopexit.unr-lcssa, %for.cond2.preheader.i.epil, %vector.body337
    #dbg_value(i32 0, !1138, !DIExpression(), !1160)
  %high.i = getelementptr inbounds i8, ptr %pcoder, i64 29700
  %284 = getelementptr inbounds i8, ptr %pcoder, i64 29716, !dbg !1161
  %285 = getelementptr inbounds i8, ptr %pcoder, i64 29732, !dbg !1161
  %286 = getelementptr inbounds i8, ptr %pcoder, i64 29748, !dbg !1161
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %high.i, align 2, !dbg !1161
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %284, align 2, !dbg !1161
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %285, align 2, !dbg !1161
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %286, align 2, !dbg !1161
  %287 = getelementptr inbounds i8, ptr %pcoder, i64 29764, !dbg !1161
  %288 = getelementptr inbounds i8, ptr %pcoder, i64 29780, !dbg !1161
  %289 = getelementptr inbounds i8, ptr %pcoder, i64 29796, !dbg !1161
  %290 = getelementptr inbounds i8, ptr %pcoder, i64 29812, !dbg !1161
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %287, align 2, !dbg !1161
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %288, align 2, !dbg !1161
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %289, align 2, !dbg !1161
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %290, align 2, !dbg !1161
  %291 = getelementptr inbounds i8, ptr %pcoder, i64 29828, !dbg !1161
  %292 = getelementptr inbounds i8, ptr %pcoder, i64 29844, !dbg !1161
  %293 = getelementptr inbounds i8, ptr %pcoder, i64 29860, !dbg !1161
  %294 = getelementptr inbounds i8, ptr %pcoder, i64 29876, !dbg !1161
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %291, align 2, !dbg !1161
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %292, align 2, !dbg !1161
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %293, align 2, !dbg !1161
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %294, align 2, !dbg !1161
  %295 = getelementptr inbounds i8, ptr %pcoder, i64 29892, !dbg !1161
  %296 = getelementptr inbounds i8, ptr %pcoder, i64 29908, !dbg !1161
  %297 = getelementptr inbounds i8, ptr %pcoder, i64 29924, !dbg !1161
  %298 = getelementptr inbounds i8, ptr %pcoder, i64 29940, !dbg !1161
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %295, align 2, !dbg !1161
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %296, align 2, !dbg !1161
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %297, align 2, !dbg !1161
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %298, align 2, !dbg !1161
  %299 = getelementptr inbounds i8, ptr %pcoder, i64 29956, !dbg !1161
  %300 = getelementptr inbounds i8, ptr %pcoder, i64 29972, !dbg !1161
  %301 = getelementptr inbounds i8, ptr %pcoder, i64 29988, !dbg !1161
  %302 = getelementptr inbounds i8, ptr %pcoder, i64 30004, !dbg !1161
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %299, align 2, !dbg !1161
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %300, align 2, !dbg !1161
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %301, align 2, !dbg !1161
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %302, align 2, !dbg !1161
  %303 = getelementptr inbounds i8, ptr %pcoder, i64 30020, !dbg !1161
  %304 = getelementptr inbounds i8, ptr %pcoder, i64 30036, !dbg !1161
  %305 = getelementptr inbounds i8, ptr %pcoder, i64 30052, !dbg !1161
  %306 = getelementptr inbounds i8, ptr %pcoder, i64 30068, !dbg !1161
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %303, align 2, !dbg !1161
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %304, align 2, !dbg !1161
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %305, align 2, !dbg !1161
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %306, align 2, !dbg !1161
  %307 = getelementptr inbounds i8, ptr %pcoder, i64 30084, !dbg !1161
  %308 = getelementptr inbounds i8, ptr %pcoder, i64 30100, !dbg !1161
  %309 = getelementptr inbounds i8, ptr %pcoder, i64 30116, !dbg !1161
  %310 = getelementptr inbounds i8, ptr %pcoder, i64 30132, !dbg !1161
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %307, align 2, !dbg !1161
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %308, align 2, !dbg !1161
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %309, align 2, !dbg !1161
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %310, align 2, !dbg !1161
  %311 = getelementptr inbounds i8, ptr %pcoder, i64 30148, !dbg !1161
  %312 = getelementptr inbounds i8, ptr %pcoder, i64 30164, !dbg !1161
  %313 = getelementptr inbounds i8, ptr %pcoder, i64 30180, !dbg !1161
  %314 = getelementptr inbounds i8, ptr %pcoder, i64 30196, !dbg !1161
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %311, align 2, !dbg !1161
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %312, align 2, !dbg !1161
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %313, align 2, !dbg !1161
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %314, align 2, !dbg !1161
  %loadedv = trunc nuw i8 %270 to i1, !dbg !1120
    #dbg_value(i64 0, !1140, !DIExpression(), !1163)
  br i1 %loadedv, label %length_encoder_reset.exit, label %for.body40.i, !dbg !1164

for.body40.i:                                     ; preds = %vector.body345, %for.body40.i
  %pos_state34.068.i = phi i64 [ %inc43.i, %for.body40.i ], [ 0, %vector.body345 ]
    #dbg_value(i64 %pos_state34.068.i, !1140, !DIExpression(), !1163)
  %conv41.i = trunc nuw i64 %pos_state34.068.i to i32, !dbg !1165
  tail call fastcc void @length_update_prices(ptr noundef nonnull %match_len_encoder, i32 noundef %conv41.i), !dbg !1167
  %inc43.i = add nuw nsw i64 %pos_state34.068.i, 1, !dbg !1168
    #dbg_value(i64 %inc43.i, !1140, !DIExpression(), !1163)
  %exitcond73.not.i = icmp eq i64 %inc43.i, %conv.i, !dbg !1169
  br i1 %exitcond73.not.i, label %length_encoder_reset.exit.loopexit, label %for.body40.i, !dbg !1170, !llvm.loop !1171

length_encoder_reset.exit.loopexit:               ; preds = %for.body40.i
  %.pre = load i8, ptr %fast_mode, align 4, !dbg !1173, !range !288
  br label %length_encoder_reset.exit, !dbg !1174

length_encoder_reset.exit:                        ; preds = %length_encoder_reset.exit.loopexit, %vector.body345
  %315 = phi i8 [ %.pre, %length_encoder_reset.exit.loopexit ], [ %270, %vector.body345 ], !dbg !1173
  %rep_len_encoder = getelementptr inbounds i8, ptr %pcoder, i64 47688, !dbg !1174
  %316 = load i32, ptr %pb.i.i, align 4, !dbg !1175
  %shl73 = shl nuw i32 1, %316, !dbg !1176
    #dbg_value(ptr %rep_len_encoder, !1121, !DIExpression(), !1177)
    #dbg_value(i32 %shl73, !1128, !DIExpression(), !1177)
    #dbg_value(i1 %loadedv75, !1129, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !1177)
  store i16 1024, ptr %rep_len_encoder, align 4, !dbg !1179
  %choice2.i131 = getelementptr inbounds i8, ptr %pcoder, i64 47690, !dbg !1180
  store i16 1024, ptr %choice2.i131, align 2, !dbg !1180
    #dbg_value(i64 0, !1130, !DIExpression(), !1181)
  %conv.i132 = zext i32 %shl73 to i64
  %low.i133 = getelementptr inbounds i8, ptr %pcoder, i64 47692
  %mid.i134 = getelementptr inbounds i8, ptr %pcoder, i64 47948
  %min.iters.check350 = icmp ult i32 %316, 2, !dbg !1182
  br i1 %min.iters.check350, label %for.cond2.preheader.i135.preheader, label %vector.ph351, !dbg !1182

for.cond2.preheader.i135.preheader:               ; preds = %length_encoder_reset.exit
  %xtraiter368 = and i64 %conv.i132, 1, !dbg !1182
  %317 = icmp eq i32 %316, 0, !dbg !1182
  br i1 %317, label %for.cond24.preheader.i155.loopexit.unr-lcssa, label %for.cond2.preheader.i135, !dbg !1182

vector.ph351:                                     ; preds = %length_encoder_reset.exit
  %n.vec353 = and i64 %conv.i132, 4294967292, !dbg !1182
  br label %vector.body355, !dbg !1182

vector.body355:                                   ; preds = %vector.body355, %vector.ph351
  %index356 = phi i64 [ 0, %vector.ph351 ], [ %index.next357, %vector.body355 ], !dbg !1183
  %318 = or disjoint i64 %index356, 1, !dbg !1182
  %319 = or disjoint i64 %index356, 2, !dbg !1182
  %320 = or disjoint i64 %index356, 3, !dbg !1182
  %321 = getelementptr inbounds [16 x [8 x i16]], ptr %low.i133, i64 0, i64 %index356, i64 0, !dbg !1184
  %322 = getelementptr inbounds [16 x [8 x i16]], ptr %low.i133, i64 0, i64 %318, i64 0, !dbg !1184
  %323 = getelementptr inbounds [16 x [8 x i16]], ptr %low.i133, i64 0, i64 %319, i64 0, !dbg !1184
  %324 = getelementptr inbounds [16 x [8 x i16]], ptr %low.i133, i64 0, i64 %320, i64 0, !dbg !1184
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %321, align 2, !dbg !1184
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %322, align 2, !dbg !1184
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %323, align 2, !dbg !1184
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %324, align 2, !dbg !1184
  %325 = getelementptr inbounds [16 x [8 x i16]], ptr %mid.i134, i64 0, i64 %index356, i64 0, !dbg !1185
  %326 = getelementptr inbounds [16 x [8 x i16]], ptr %mid.i134, i64 0, i64 %318, i64 0, !dbg !1185
  %327 = getelementptr inbounds [16 x [8 x i16]], ptr %mid.i134, i64 0, i64 %319, i64 0, !dbg !1185
  %328 = getelementptr inbounds [16 x [8 x i16]], ptr %mid.i134, i64 0, i64 %320, i64 0, !dbg !1185
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %325, align 2, !dbg !1185
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %326, align 2, !dbg !1185
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %327, align 2, !dbg !1185
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %328, align 2, !dbg !1185
  %index.next357 = add nuw i64 %index356, 4, !dbg !1183
  %329 = icmp eq i64 %index.next357, %n.vec353, !dbg !1183
  br i1 %329, label %vector.body363, label %vector.body355, !dbg !1183, !llvm.loop !1186

for.cond2.preheader.i135:                         ; preds = %for.cond2.preheader.i135.preheader, %for.cond2.preheader.i135
  %pos_state.065.i136 = phi i64 [ %inc21.i153.1, %for.cond2.preheader.i135 ], [ 0, %for.cond2.preheader.i135.preheader ]
  %niter371 = phi i64 [ %niter371.next.1, %for.cond2.preheader.i135 ], [ 0, %for.cond2.preheader.i135.preheader ]
    #dbg_value(i64 %pos_state.065.i136, !1130, !DIExpression(), !1181)
    #dbg_value(i64 0, !1132, !DIExpression(), !1188)
  %arrayidx7.i137 = getelementptr inbounds [16 x [8 x i16]], ptr %low.i133, i64 0, i64 %pos_state.065.i136, i64 0, !dbg !1184
    #dbg_value(i64 7, !1132, !DIExpression(), !1188)
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %arrayidx7.i137, align 2, !dbg !1184
    #dbg_value(i64 8, !1132, !DIExpression(), !1188)
    #dbg_value(i64 0, !1136, !DIExpression(), !1189)
  %arrayidx16.i145 = getelementptr inbounds [16 x [8 x i16]], ptr %mid.i134, i64 0, i64 %pos_state.065.i136, i64 0, !dbg !1185
    #dbg_value(i64 7, !1136, !DIExpression(), !1189)
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %arrayidx16.i145, align 2, !dbg !1185
    #dbg_value(i64 8, !1136, !DIExpression(), !1189)
  %inc21.i153 = or disjoint i64 %pos_state.065.i136, 1, !dbg !1183
    #dbg_value(i64 %inc21.i153, !1130, !DIExpression(), !1181)
    #dbg_value(i64 0, !1132, !DIExpression(), !1188)
  %arrayidx7.i137.1 = getelementptr inbounds [16 x [8 x i16]], ptr %low.i133, i64 0, i64 %inc21.i153, i64 0, !dbg !1184
    #dbg_value(i64 7, !1132, !DIExpression(), !1188)
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %arrayidx7.i137.1, align 2, !dbg !1184
    #dbg_value(i64 8, !1132, !DIExpression(), !1188)
    #dbg_value(i64 0, !1136, !DIExpression(), !1189)
  %arrayidx16.i145.1 = getelementptr inbounds [16 x [8 x i16]], ptr %mid.i134, i64 0, i64 %inc21.i153, i64 0, !dbg !1185
    #dbg_value(i64 7, !1136, !DIExpression(), !1189)
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %arrayidx16.i145.1, align 2, !dbg !1185
    #dbg_value(i64 8, !1136, !DIExpression(), !1189)
  %inc21.i153.1 = add nuw nsw i64 %pos_state.065.i136, 2, !dbg !1183
    #dbg_value(i64 %inc21.i153.1, !1130, !DIExpression(), !1181)
  %niter371.next.1 = add i64 %niter371, 2, !dbg !1182
  %niter371.ncmp.1 = icmp eq i64 %niter371, 0, !dbg !1182
  br i1 %niter371.ncmp.1, label %for.cond24.preheader.i155.loopexit.unr-lcssa, label %for.cond2.preheader.i135, !dbg !1182, !llvm.loop !1190

for.cond24.preheader.i155.loopexit.unr-lcssa:     ; preds = %for.cond2.preheader.i135, %for.cond2.preheader.i135.preheader
  %pos_state.065.i136.unr = phi i64 [ 0, %for.cond2.preheader.i135.preheader ], [ %inc21.i153.1, %for.cond2.preheader.i135 ]
  %lcmp.mod369.not = icmp eq i64 %xtraiter368, 0, !dbg !1182
  br i1 %lcmp.mod369.not, label %vector.body363, label %for.cond2.preheader.i135.epil, !dbg !1182

for.cond2.preheader.i135.epil:                    ; preds = %for.cond24.preheader.i155.loopexit.unr-lcssa
    #dbg_value(i64 %pos_state.065.i136.unr, !1130, !DIExpression(), !1181)
    #dbg_value(i64 0, !1132, !DIExpression(), !1188)
  %arrayidx7.i137.epil = getelementptr inbounds [16 x [8 x i16]], ptr %low.i133, i64 0, i64 %pos_state.065.i136.unr, i64 0, !dbg !1184
    #dbg_value(i64 1, !1132, !DIExpression(), !1188)
    #dbg_value(i64 2, !1132, !DIExpression(), !1188)
    #dbg_value(i64 3, !1132, !DIExpression(), !1188)
    #dbg_value(i64 4, !1132, !DIExpression(), !1188)
    #dbg_value(i64 5, !1132, !DIExpression(), !1188)
    #dbg_value(i64 6, !1132, !DIExpression(), !1188)
    #dbg_value(i64 7, !1132, !DIExpression(), !1188)
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %arrayidx7.i137.epil, align 2, !dbg !1184
    #dbg_value(i64 8, !1132, !DIExpression(), !1188)
    #dbg_value(i64 0, !1136, !DIExpression(), !1189)
  %arrayidx16.i145.epil = getelementptr inbounds [16 x [8 x i16]], ptr %mid.i134, i64 0, i64 %pos_state.065.i136.unr, i64 0, !dbg !1185
    #dbg_value(i64 1, !1136, !DIExpression(), !1189)
    #dbg_value(i64 2, !1136, !DIExpression(), !1189)
    #dbg_value(i64 3, !1136, !DIExpression(), !1189)
    #dbg_value(i64 4, !1136, !DIExpression(), !1189)
    #dbg_value(i64 5, !1136, !DIExpression(), !1189)
    #dbg_value(i64 6, !1136, !DIExpression(), !1189)
    #dbg_value(i64 7, !1136, !DIExpression(), !1189)
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %arrayidx16.i145.epil, align 2, !dbg !1185
    #dbg_value(i64 8, !1136, !DIExpression(), !1189)
    #dbg_value(i64 %pos_state.065.i136.unr, !1130, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1181)
  br label %vector.body363

vector.body363:                                   ; preds = %for.cond24.preheader.i155.loopexit.unr-lcssa, %for.cond2.preheader.i135.epil, %vector.body355
    #dbg_value(i32 0, !1138, !DIExpression(), !1191)
  %high.i156 = getelementptr inbounds i8, ptr %pcoder, i64 48204
  %330 = getelementptr inbounds i8, ptr %pcoder, i64 48220, !dbg !1192
  %331 = getelementptr inbounds i8, ptr %pcoder, i64 48236, !dbg !1192
  %332 = getelementptr inbounds i8, ptr %pcoder, i64 48252, !dbg !1192
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %high.i156, align 2, !dbg !1192
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %330, align 2, !dbg !1192
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %331, align 2, !dbg !1192
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %332, align 2, !dbg !1192
  %333 = getelementptr inbounds i8, ptr %pcoder, i64 48268, !dbg !1192
  %334 = getelementptr inbounds i8, ptr %pcoder, i64 48284, !dbg !1192
  %335 = getelementptr inbounds i8, ptr %pcoder, i64 48300, !dbg !1192
  %336 = getelementptr inbounds i8, ptr %pcoder, i64 48316, !dbg !1192
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %333, align 2, !dbg !1192
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %334, align 2, !dbg !1192
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %335, align 2, !dbg !1192
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %336, align 2, !dbg !1192
  %337 = getelementptr inbounds i8, ptr %pcoder, i64 48332, !dbg !1192
  %338 = getelementptr inbounds i8, ptr %pcoder, i64 48348, !dbg !1192
  %339 = getelementptr inbounds i8, ptr %pcoder, i64 48364, !dbg !1192
  %340 = getelementptr inbounds i8, ptr %pcoder, i64 48380, !dbg !1192
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %337, align 2, !dbg !1192
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %338, align 2, !dbg !1192
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %339, align 2, !dbg !1192
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %340, align 2, !dbg !1192
  %341 = getelementptr inbounds i8, ptr %pcoder, i64 48396, !dbg !1192
  %342 = getelementptr inbounds i8, ptr %pcoder, i64 48412, !dbg !1192
  %343 = getelementptr inbounds i8, ptr %pcoder, i64 48428, !dbg !1192
  %344 = getelementptr inbounds i8, ptr %pcoder, i64 48444, !dbg !1192
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %341, align 2, !dbg !1192
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %342, align 2, !dbg !1192
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %343, align 2, !dbg !1192
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %344, align 2, !dbg !1192
  %345 = getelementptr inbounds i8, ptr %pcoder, i64 48460, !dbg !1192
  %346 = getelementptr inbounds i8, ptr %pcoder, i64 48476, !dbg !1192
  %347 = getelementptr inbounds i8, ptr %pcoder, i64 48492, !dbg !1192
  %348 = getelementptr inbounds i8, ptr %pcoder, i64 48508, !dbg !1192
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %345, align 2, !dbg !1192
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %346, align 2, !dbg !1192
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %347, align 2, !dbg !1192
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %348, align 2, !dbg !1192
  %349 = getelementptr inbounds i8, ptr %pcoder, i64 48524, !dbg !1192
  %350 = getelementptr inbounds i8, ptr %pcoder, i64 48540, !dbg !1192
  %351 = getelementptr inbounds i8, ptr %pcoder, i64 48556, !dbg !1192
  %352 = getelementptr inbounds i8, ptr %pcoder, i64 48572, !dbg !1192
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %349, align 2, !dbg !1192
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %350, align 2, !dbg !1192
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %351, align 2, !dbg !1192
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %352, align 2, !dbg !1192
  %353 = getelementptr inbounds i8, ptr %pcoder, i64 48588, !dbg !1192
  %354 = getelementptr inbounds i8, ptr %pcoder, i64 48604, !dbg !1192
  %355 = getelementptr inbounds i8, ptr %pcoder, i64 48620, !dbg !1192
  %356 = getelementptr inbounds i8, ptr %pcoder, i64 48636, !dbg !1192
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %353, align 2, !dbg !1192
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %354, align 2, !dbg !1192
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %355, align 2, !dbg !1192
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %356, align 2, !dbg !1192
  %357 = getelementptr inbounds i8, ptr %pcoder, i64 48652, !dbg !1192
  %358 = getelementptr inbounds i8, ptr %pcoder, i64 48668, !dbg !1192
  %359 = getelementptr inbounds i8, ptr %pcoder, i64 48684, !dbg !1192
  %360 = getelementptr inbounds i8, ptr %pcoder, i64 48700, !dbg !1192
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %357, align 2, !dbg !1192
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %358, align 2, !dbg !1192
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %359, align 2, !dbg !1192
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %360, align 2, !dbg !1192
  %loadedv75 = trunc nuw i8 %315 to i1, !dbg !1173
    #dbg_value(i64 0, !1140, !DIExpression(), !1193)
  br i1 %loadedv75, label %length_encoder_reset.exit168, label %for.body40.i163, !dbg !1194

for.body40.i163:                                  ; preds = %vector.body363, %for.body40.i163
  %pos_state34.068.i164 = phi i64 [ %inc43.i166, %for.body40.i163 ], [ 0, %vector.body363 ]
    #dbg_value(i64 %pos_state34.068.i164, !1140, !DIExpression(), !1193)
  %conv41.i165 = trunc nuw i64 %pos_state34.068.i164 to i32, !dbg !1195
  tail call fastcc void @length_update_prices(ptr noundef nonnull %rep_len_encoder, i32 noundef %conv41.i165), !dbg !1196
  %inc43.i166 = add nuw nsw i64 %pos_state34.068.i164, 1, !dbg !1197
    #dbg_value(i64 %inc43.i166, !1140, !DIExpression(), !1193)
  %exitcond73.not.i167 = icmp eq i64 %inc43.i166, %conv.i132, !dbg !1198
  br i1 %exitcond73.not.i167, label %length_encoder_reset.exit168, label %for.body40.i163, !dbg !1199, !llvm.loop !1200

length_encoder_reset.exit168:                     ; preds = %for.body40.i163, %vector.body363
  %match_price_count = getelementptr inbounds i8, ptr %pcoder, i64 69268, !dbg !1202
  store i32 2147483647, ptr %match_price_count, align 4, !dbg !1203
  %align_price_count = getelementptr inbounds i8, ptr %pcoder, i64 69336, !dbg !1204
  store i32 2147483647, ptr %align_price_count, align 8, !dbg !1205
  %opts_end_index = getelementptr inbounds i8, ptr %pcoder, i64 69340, !dbg !1206
  store i32 0, ptr %opts_end_index, align 4, !dbg !1207
  %opts_current_index = getelementptr inbounds i8, ptr %pcoder, i64 69344, !dbg !1208
  store i32 0, ptr %opts_current_index, align 8, !dbg !1209
  br label %cleanup, !dbg !1210

cleanup:                                          ; preds = %entry, %land.lhs.true.i.i, %is_lclppb_valid.exit.i, %land.lhs.true.i, %is_options_valid.exit, %length_encoder_reset.exit168
  %retval.0 = phi i32 [ 0, %length_encoder_reset.exit168 ], [ 8, %is_options_valid.exit ], [ 8, %land.lhs.true.i ], [ 8, %is_lclppb_valid.exit.i ], [ 8, %land.lhs.true.i.i ], [ 8, %entry ], !dbg !986
  ret i32 %retval.0, !dbg !1211
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 9) i32 @lzma_lzma_encoder_create(ptr nocapture noundef %coder_ptr, ptr noundef %allocator, ptr nocapture noundef readonly %options, ptr nocapture noundef writeonly %lz_options) local_unnamed_addr #0 !dbg !1212 {
entry:
    #dbg_value(ptr %coder_ptr, !1243, !DIExpression(), !1251)
    #dbg_value(ptr %allocator, !1244, !DIExpression(), !1251)
    #dbg_value(ptr %options, !1245, !DIExpression(), !1251)
    #dbg_value(ptr %lz_options, !1246, !DIExpression(), !1251)
  %0 = load ptr, ptr %coder_ptr, align 8, !dbg !1252
  %cmp = icmp eq ptr %0, null, !dbg !1254
  br i1 %cmp, label %if.then, label %if.end3, !dbg !1255

if.then:                                          ; preds = %entry
  %call = tail call ptr @lzma_alloc(i64 noundef 249576, ptr noundef %allocator) #10, !dbg !1256
  store ptr %call, ptr %coder_ptr, align 8, !dbg !1258
  %cmp1 = icmp eq ptr %call, null, !dbg !1259
  br i1 %cmp1, label %return, label %if.end3, !dbg !1261

if.end3:                                          ; preds = %if.then, %entry
  %1 = phi ptr [ %call, %if.then ], [ %0, %entry ], !dbg !1262
    #dbg_value(ptr %1, !1247, !DIExpression(), !1251)
  %mode = getelementptr inbounds i8, ptr %options, i64 32, !dbg !1263
  %2 = load i32, ptr %mode, align 8, !dbg !1263
  switch i32 %2, label %return [
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
  ], !dbg !1264

sw.bb:                                            ; preds = %if.end3
  %fast_mode = getelementptr inbounds i8, ptr %1, i64 2956, !dbg !1265
  store i8 1, ptr %fast_mode, align 4, !dbg !1266
  br label %sw.epilog, !dbg !1267

sw.bb4:                                           ; preds = %if.end3
  %fast_mode5 = getelementptr inbounds i8, ptr %1, i64 2956, !dbg !1268
  store i8 0, ptr %fast_mode5, align 4, !dbg !1269
    #dbg_value(i32 0, !1248, !DIExpression(), !1270)
  %3 = load i32, ptr %options, align 8
  br label %while.cond, !dbg !1271

while.cond:                                       ; preds = %while.cond, %sw.bb4
  %log_size.0 = phi i32 [ 0, %sw.bb4 ], [ %inc, %while.cond ], !dbg !1270
    #dbg_value(i32 %log_size.0, !1248, !DIExpression(), !1270)
  %shl = shl nuw i32 1, %log_size.0, !dbg !1272
  %cmp6 = icmp ult i32 %shl, %3, !dbg !1273
  %inc = add i32 %log_size.0, 1, !dbg !1274
    #dbg_value(i32 %inc, !1248, !DIExpression(), !1270)
  br i1 %cmp6, label %while.cond, label %while.end, !dbg !1271, !llvm.loop !1275

while.end:                                        ; preds = %while.cond
  %mul = shl i32 %log_size.0, 1, !dbg !1277
  %dist_table_size = getelementptr inbounds i8, ptr %1, i64 69264, !dbg !1278
  store i32 %mul, ptr %dist_table_size, align 8, !dbg !1279
  %nice_len = getelementptr inbounds i8, ptr %options, i64 36, !dbg !1280
  %4 = load i32, ptr %nice_len, align 4, !dbg !1280
  %sub = add i32 %4, -1, !dbg !1281
  %table_size = getelementptr inbounds i8, ptr %1, i64 47620, !dbg !1282
  store i32 %sub, ptr %table_size, align 4, !dbg !1283
  %5 = load i32, ptr %nice_len, align 4, !dbg !1284
  %sub9 = add i32 %5, -1, !dbg !1285
  %table_size10 = getelementptr inbounds i8, ptr %1, i64 66124, !dbg !1286
  store i32 %sub9, ptr %table_size10, align 4, !dbg !1287
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.end, %sw.bb
  %preset_dict = getelementptr inbounds i8, ptr %options, i64 8, !dbg !1288
  %6 = load ptr, ptr %preset_dict, align 8, !dbg !1288
  %cmp11.not = icmp eq ptr %6, null, !dbg !1289
  br i1 %cmp11.not, label %land.end, label %land.rhs, !dbg !1290

land.rhs:                                         ; preds = %sw.epilog
  %preset_dict_size = getelementptr inbounds i8, ptr %options, i64 16, !dbg !1291
  %7 = load i32, ptr %preset_dict_size, align 8, !dbg !1291
  %cmp12 = icmp ne i32 %7, 0, !dbg !1292
  %8 = zext i1 %cmp12 to i8, !dbg !1293
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.epilog
  %storedv = phi i8 [ 0, %sw.epilog ], [ %8, %land.rhs ], !dbg !1251
  %is_initialized = getelementptr inbounds i8, ptr %1, i64 2957, !dbg !1294
  store i8 %storedv, ptr %is_initialized, align 1, !dbg !1293
  %is_flushed = getelementptr inbounds i8, ptr %1, i64 2958, !dbg !1295
  store i8 0, ptr %is_flushed, align 2, !dbg !1296
    #dbg_value(ptr %lz_options, !1297, !DIExpression(), !1303)
    #dbg_value(ptr %options, !1302, !DIExpression(), !1303)
  store i64 4096, ptr %lz_options, align 8, !dbg !1305
  %9 = load i32, ptr %options, align 8, !dbg !1306
  %conv.i = zext i32 %9 to i64, !dbg !1307
  %dict_size1.i = getelementptr inbounds i8, ptr %lz_options, i64 8, !dbg !1308
  store i64 %conv.i, ptr %dict_size1.i, align 8, !dbg !1309
  %after_size.i = getelementptr inbounds i8, ptr %lz_options, i64 16, !dbg !1310
  store i64 4097, ptr %after_size.i, align 8, !dbg !1311
  %match_len_max.i = getelementptr inbounds i8, ptr %lz_options, i64 24, !dbg !1312
  store i64 273, ptr %match_len_max.i, align 8, !dbg !1313
  %nice_len.i = getelementptr inbounds i8, ptr %options, i64 36, !dbg !1314
  %10 = load i32, ptr %nice_len.i, align 4, !dbg !1314
  %conv2.i = zext i32 %10 to i64, !dbg !1315
  %nice_len3.i = getelementptr inbounds i8, ptr %lz_options, i64 32, !dbg !1316
  store i64 %conv2.i, ptr %nice_len3.i, align 8, !dbg !1317
  %mf.i = getelementptr inbounds i8, ptr %options, i64 40, !dbg !1318
  %11 = load i32, ptr %mf.i, align 8, !dbg !1318
  %match_finder.i = getelementptr inbounds i8, ptr %lz_options, i64 40, !dbg !1319
  store i32 %11, ptr %match_finder.i, align 8, !dbg !1320
  %depth.i = getelementptr inbounds i8, ptr %options, i64 44, !dbg !1321
  %12 = load i32, ptr %depth.i, align 4, !dbg !1321
  %depth4.i = getelementptr inbounds i8, ptr %lz_options, i64 44, !dbg !1322
  store i32 %12, ptr %depth4.i, align 4, !dbg !1323
  %13 = load ptr, ptr %preset_dict, align 8, !dbg !1324
  %preset_dict5.i = getelementptr inbounds i8, ptr %lz_options, i64 48, !dbg !1325
  store ptr %13, ptr %preset_dict5.i, align 8, !dbg !1326
  %preset_dict_size.i = getelementptr inbounds i8, ptr %options, i64 16, !dbg !1327
  %14 = load i32, ptr %preset_dict_size.i, align 8, !dbg !1327
  %preset_dict_size6.i = getelementptr inbounds i8, ptr %lz_options, i64 56, !dbg !1328
  store i32 %14, ptr %preset_dict_size6.i, align 8, !dbg !1329
  %call13 = tail call i32 @lzma_lzma_encoder_reset(ptr noundef nonnull %1, ptr noundef nonnull %options), !dbg !1330
  br label %return, !dbg !1331

return:                                           ; preds = %land.end, %if.end3, %if.then
  %retval.1 = phi i32 [ 5, %if.then ], [ %call13, %land.end ], [ 8, %if.end3 ], !dbg !1251
  ret i32 %retval.1, !dbg !1332
}

declare !dbg !1333 ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_lzma_encoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters) local_unnamed_addr #0 !dbg !1336 {
entry:
    #dbg_value(ptr %next, !1396, !DIExpression(), !1399)
    #dbg_value(ptr %allocator, !1397, !DIExpression(), !1399)
    #dbg_value(ptr %filters, !1398, !DIExpression(), !1399)
  %call = tail call i32 @lzma_lz_encoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters, ptr noundef nonnull @lzma_encoder_init) #10, !dbg !1400
  ret i32 %call, !dbg !1401
}

declare !dbg !1402 i32 @lzma_lz_encoder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal range(i32 0, 9) i32 @lzma_encoder_init(ptr nocapture noundef %lz, ptr noundef %allocator, ptr nocapture noundef readonly %options, ptr nocapture noundef writeonly %lz_options) #0 !dbg !1424 {
entry:
    #dbg_value(ptr %lz, !1426, !DIExpression(), !1430)
    #dbg_value(ptr %allocator, !1427, !DIExpression(), !1430)
    #dbg_value(ptr %options, !1428, !DIExpression(), !1430)
    #dbg_value(ptr %lz_options, !1429, !DIExpression(), !1430)
  %code = getelementptr inbounds i8, ptr %lz, i64 8, !dbg !1431
  store ptr @lzma_encode, ptr %code, align 8, !dbg !1432
  %call = tail call i32 @lzma_lzma_encoder_create(ptr noundef %lz, ptr noundef %allocator, ptr noundef %options, ptr noundef %lz_options), !dbg !1433
  ret i32 %call, !dbg !1434
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 249576, 249575) i64 @lzma_lzma_encoder_memusage(ptr nocapture noundef readonly %options) local_unnamed_addr #0 !dbg !1435 {
entry:
  %lz_options = alloca %struct.lzma_lz_options, align 8, !DIAssignID !1443
    #dbg_assign(i1 undef, !1440, !DIExpression(), !1443, ptr %lz_options, !DIExpression(), !1444)
    #dbg_value(ptr %options, !1439, !DIExpression(), !1444)
    #dbg_value(ptr %options, !987, !DIExpression(), !1445)
    #dbg_value(ptr %options, !995, !DIExpression(), !1448)
  %lc.i.i = getelementptr inbounds i8, ptr %options, i64 20, !dbg !1450
  %0 = load i32, ptr %lc.i.i, align 4, !dbg !1450
  %cmp.i.i = icmp ult i32 %0, 5, !dbg !1451
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %return, !dbg !1452

land.lhs.true.i.i:                                ; preds = %entry
  %lp.i.i = getelementptr inbounds i8, ptr %options, i64 24, !dbg !1453
  %1 = load i32, ptr %lp.i.i, align 8, !dbg !1453
  %cmp1.i.i = icmp ult i32 %1, 5, !dbg !1454
  %add.i.i = add nuw nsw i32 %1, %0
  %cmp5.i.i = icmp ult i32 %add.i.i, 5
  %or.cond.i.i = select i1 %cmp1.i.i, i1 %cmp5.i.i, i1 false, !dbg !1455
  br i1 %or.cond.i.i, label %is_lclppb_valid.exit.i, label %return, !dbg !1455

is_lclppb_valid.exit.i:                           ; preds = %land.lhs.true.i.i
  %pb.i.i = getelementptr inbounds i8, ptr %options, i64 28, !dbg !1456
  %2 = load i32, ptr %pb.i.i, align 4, !dbg !1456
  %cmp6.i.i = icmp ult i32 %2, 5, !dbg !1457
  br i1 %cmp6.i.i, label %land.lhs.true.i, label %return, !dbg !1458

land.lhs.true.i:                                  ; preds = %is_lclppb_valid.exit.i
  %nice_len.i = getelementptr inbounds i8, ptr %options, i64 36, !dbg !1459
  %3 = load i32, ptr %nice_len.i, align 4, !dbg !1459
  %4 = add i32 %3, -2, !dbg !1460
  %or.cond.i = icmp ult i32 %4, 272, !dbg !1460
  br i1 %or.cond.i, label %is_options_valid.exit, label %return, !dbg !1460

is_options_valid.exit:                            ; preds = %land.lhs.true.i
  %mode.i = getelementptr inbounds i8, ptr %options, i64 32, !dbg !1461
  %5 = load i32, ptr %mode.i, align 8, !dbg !1461
  %6 = add i32 %5, -1, !dbg !1462
  %spec.select.i = icmp ult i32 %6, 2, !dbg !1462
  br i1 %spec.select.i, label %if.end, label %return, !dbg !1463

if.end:                                           ; preds = %is_options_valid.exit
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %lz_options) #10, !dbg !1464
    #dbg_value(ptr %lz_options, !1297, !DIExpression(), !1465)
    #dbg_value(ptr %options, !1302, !DIExpression(), !1465)
  store i64 4096, ptr %lz_options, align 8, !dbg !1467, !DIAssignID !1468
    #dbg_assign(i64 4096, !1440, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1468, ptr %lz_options, !DIExpression(), !1444)
  %7 = load i32, ptr %options, align 8, !dbg !1469
  %conv.i = zext i32 %7 to i64, !dbg !1470
  %dict_size1.i = getelementptr inbounds i8, ptr %lz_options, i64 8, !dbg !1471
  store i64 %conv.i, ptr %dict_size1.i, align 8, !dbg !1472, !DIAssignID !1473
    #dbg_assign(i64 %conv.i, !1440, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1473, ptr %dict_size1.i, !DIExpression(), !1444)
  %after_size.i = getelementptr inbounds i8, ptr %lz_options, i64 16, !dbg !1474
  store i64 4097, ptr %after_size.i, align 8, !dbg !1475, !DIAssignID !1476
    #dbg_assign(i64 4097, !1440, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !1476, ptr %after_size.i, !DIExpression(), !1444)
  %match_len_max.i = getelementptr inbounds i8, ptr %lz_options, i64 24, !dbg !1477
  store i64 273, ptr %match_len_max.i, align 8, !dbg !1478, !DIAssignID !1479
    #dbg_assign(i64 273, !1440, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !1479, ptr %match_len_max.i, !DIExpression(), !1444)
  %conv2.i = zext nneg i32 %3 to i64, !dbg !1480
  %nice_len3.i = getelementptr inbounds i8, ptr %lz_options, i64 32, !dbg !1481
  store i64 %conv2.i, ptr %nice_len3.i, align 8, !dbg !1482, !DIAssignID !1483
    #dbg_assign(i64 %conv2.i, !1440, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !1483, ptr %nice_len3.i, !DIExpression(), !1444)
  %mf.i = getelementptr inbounds i8, ptr %options, i64 40, !dbg !1484
  %match_finder.i = getelementptr inbounds i8, ptr %lz_options, i64 40, !dbg !1485
    #dbg_assign(i32 poison, !1440, !DIExpression(DW_OP_LLVM_fragment, 320, 32), !1486, ptr %match_finder.i, !DIExpression(), !1444)
  %8 = load <2 x i32>, ptr %mf.i, align 8, !dbg !1484
  store <2 x i32> %8, ptr %match_finder.i, align 8, !dbg !1487, !DIAssignID !1486
    #dbg_assign(i32 poison, !1440, !DIExpression(DW_OP_LLVM_fragment, 352, 32), !1486, ptr %lz_options, !DIExpression(DW_OP_plus_uconst, 44), !1444)
  %preset_dict.i = getelementptr inbounds i8, ptr %options, i64 8, !dbg !1488
  %9 = load ptr, ptr %preset_dict.i, align 8, !dbg !1488
  %preset_dict5.i = getelementptr inbounds i8, ptr %lz_options, i64 48, !dbg !1489
  store ptr %9, ptr %preset_dict5.i, align 8, !dbg !1490, !DIAssignID !1491
    #dbg_assign(ptr %9, !1440, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !1491, ptr %preset_dict5.i, !DIExpression(), !1444)
  %preset_dict_size.i = getelementptr inbounds i8, ptr %options, i64 16, !dbg !1492
  %10 = load i32, ptr %preset_dict_size.i, align 8, !dbg !1492
  %preset_dict_size6.i = getelementptr inbounds i8, ptr %lz_options, i64 56, !dbg !1493
  store i32 %10, ptr %preset_dict_size6.i, align 8, !dbg !1494, !DIAssignID !1495
    #dbg_assign(i32 %10, !1440, !DIExpression(DW_OP_LLVM_fragment, 448, 32), !1495, ptr %preset_dict_size6.i, !DIExpression(), !1444)
  %call1 = call i64 @lzma_lz_encoder_memusage(ptr noundef nonnull %lz_options) #10, !dbg !1496
    #dbg_value(i64 %call1, !1441, !DIExpression(), !1444)
  %cmp = icmp eq i64 %call1, -1, !dbg !1497
  %add = add i64 %call1, 249576, !dbg !1499
  %retval.0 = select i1 %cmp, i64 -1, i64 %add, !dbg !1499
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %lz_options) #10, !dbg !1500
  br label %return

return:                                           ; preds = %entry, %land.lhs.true.i.i, %is_lclppb_valid.exit.i, %land.lhs.true.i, %is_options_valid.exit, %if.end
  %retval.1 = phi i64 [ %retval.0, %if.end ], [ -1, %is_options_valid.exit ], [ -1, %land.lhs.true.i ], [ -1, %is_lclppb_valid.exit.i ], [ -1, %land.lhs.true.i.i ], [ -1, %entry ], !dbg !1444
  ret i64 %retval.1, !dbg !1500
}

declare !dbg !1501 i64 @lzma_lz_encoder_memusage(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i1 @lzma_lzma_lclppb_encode(ptr nocapture noundef readonly %options, ptr nocapture noundef writeonly %byte) local_unnamed_addr #5 !dbg !1506 {
entry:
    #dbg_value(ptr %options, !1510, !DIExpression(), !1512)
    #dbg_value(ptr %byte, !1511, !DIExpression(), !1512)
    #dbg_value(ptr %options, !995, !DIExpression(), !1513)
  %lc.i = getelementptr inbounds i8, ptr %options, i64 20, !dbg !1516
  %0 = load i32, ptr %lc.i, align 4, !dbg !1516
  %cmp.i = icmp ult i32 %0, 5, !dbg !1517
  br i1 %cmp.i, label %land.lhs.true.i, label %return, !dbg !1518

land.lhs.true.i:                                  ; preds = %entry
  %lp.i = getelementptr inbounds i8, ptr %options, i64 24, !dbg !1519
  %1 = load i32, ptr %lp.i, align 8, !dbg !1519
  %cmp1.i = icmp ult i32 %1, 5, !dbg !1520
  %add.i = add nuw nsw i32 %1, %0
  %cmp5.i = icmp ult i32 %add.i, 5
  %or.cond.i = select i1 %cmp1.i, i1 %cmp5.i, i1 false, !dbg !1521
  br i1 %or.cond.i, label %is_lclppb_valid.exit, label %return, !dbg !1521

is_lclppb_valid.exit:                             ; preds = %land.lhs.true.i
  %pb.i = getelementptr inbounds i8, ptr %options, i64 28, !dbg !1522
  %2 = load i32, ptr %pb.i, align 4, !dbg !1522
  %cmp6.i = icmp ult i32 %2, 5, !dbg !1523
  br i1 %cmp6.i, label %if.end, label %return, !dbg !1524

if.end:                                           ; preds = %is_lclppb_valid.exit
  %mul = mul nuw nsw i32 %2, 5, !dbg !1525
  %add = add nuw nsw i32 %mul, %1, !dbg !1526
  %mul1 = mul nuw nsw i32 %add, 9, !dbg !1527
  %add2 = add nuw nsw i32 %mul1, %0, !dbg !1528
  %conv = trunc i32 %add2 to i8, !dbg !1529
  store i8 %conv, ptr %byte, align 1, !dbg !1530
  br label %return, !dbg !1531

return:                                           ; preds = %entry, %land.lhs.true.i, %is_lclppb_valid.exit, %if.end
  %retval.0 = phi i1 [ true, %is_lclppb_valid.exit ], [ false, %if.end ], [ true, %land.lhs.true.i ], [ true, %entry ]
  ret i1 %retval.0, !dbg !1532
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 12) i32 @lzma_lzma_props_encode(ptr nocapture noundef readonly %options, ptr nocapture noundef writeonly %out) local_unnamed_addr #5 !dbg !1533 {
entry:
    #dbg_value(ptr %options, !1537, !DIExpression(), !1541)
    #dbg_value(ptr %out, !1538, !DIExpression(), !1541)
    #dbg_value(ptr %options, !1539, !DIExpression(), !1541)
    #dbg_value(ptr %options, !1510, !DIExpression(), !1542)
    #dbg_value(ptr %out, !1511, !DIExpression(), !1542)
    #dbg_value(ptr %options, !995, !DIExpression(), !1545)
  %lc.i.i = getelementptr inbounds i8, ptr %options, i64 20, !dbg !1547
  %0 = load i32, ptr %lc.i.i, align 4, !dbg !1547
  %cmp.i.i = icmp ult i32 %0, 5, !dbg !1548
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %cleanup, !dbg !1549

land.lhs.true.i.i:                                ; preds = %entry
  %lp.i.i = getelementptr inbounds i8, ptr %options, i64 24, !dbg !1550
  %1 = load i32, ptr %lp.i.i, align 8, !dbg !1550
  %cmp1.i.i = icmp ult i32 %1, 5, !dbg !1551
  %add.i.i = add nuw nsw i32 %1, %0
  %cmp5.i.i = icmp ult i32 %add.i.i, 5
  %or.cond.i.i = select i1 %cmp1.i.i, i1 %cmp5.i.i, i1 false, !dbg !1552
  br i1 %or.cond.i.i, label %is_lclppb_valid.exit.i, label %cleanup, !dbg !1552

is_lclppb_valid.exit.i:                           ; preds = %land.lhs.true.i.i
  %pb.i.i = getelementptr inbounds i8, ptr %options, i64 28, !dbg !1553
  %2 = load i32, ptr %pb.i.i, align 4, !dbg !1553
  %cmp6.i.i = icmp ult i32 %2, 5, !dbg !1554
  br i1 %cmp6.i.i, label %if.end, label %cleanup, !dbg !1555

if.end:                                           ; preds = %is_lclppb_valid.exit.i
  %mul.i = mul nuw nsw i32 %2, 5, !dbg !1556
  %add.i = add nuw nsw i32 %mul.i, %1, !dbg !1557
  %mul1.i = mul nuw nsw i32 %add.i, 9, !dbg !1558
  %add2.i = add nuw nsw i32 %mul1.i, %0, !dbg !1559
  %conv.i = trunc i32 %add2.i to i8, !dbg !1560
  store i8 %conv.i, ptr %out, align 1, !dbg !1561
  %add.ptr = getelementptr inbounds i8, ptr %out, i64 1, !dbg !1562
  %3 = load i32, ptr %options, align 8, !dbg !1563
    #dbg_value(ptr %add.ptr, !1564, !DIExpression(), !1571)
    #dbg_value(i32 %3, !1570, !DIExpression(), !1571)
  %conv.i3 = trunc i32 %3 to i8, !dbg !1573
  store i8 %conv.i3, ptr %add.ptr, align 1, !dbg !1574
  %shr.i = lshr i32 %3, 8, !dbg !1575
  %conv1.i = trunc i32 %shr.i to i8, !dbg !1576
  %arrayidx2.i = getelementptr inbounds i8, ptr %out, i64 2, !dbg !1577
  store i8 %conv1.i, ptr %arrayidx2.i, align 1, !dbg !1578
  %shr3.i = lshr i32 %3, 16, !dbg !1579
  %conv4.i = trunc i32 %shr3.i to i8, !dbg !1580
  %arrayidx5.i = getelementptr inbounds i8, ptr %out, i64 3, !dbg !1581
  store i8 %conv4.i, ptr %arrayidx5.i, align 1, !dbg !1582
  %shr6.i = lshr i32 %3, 24, !dbg !1583
  %conv7.i = trunc nuw i32 %shr6.i to i8, !dbg !1584
  %arrayidx8.i = getelementptr inbounds i8, ptr %out, i64 4, !dbg !1585
  store i8 %conv7.i, ptr %arrayidx8.i, align 1, !dbg !1586
  br label %cleanup, !dbg !1587

cleanup:                                          ; preds = %entry, %land.lhs.true.i.i, %is_lclppb_valid.exit.i, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 11, %is_lclppb_valid.exit.i ], [ 11, %land.lhs.true.i.i ], [ 11, %entry ], !dbg !1541
  ret i32 %retval.0, !dbg !1588
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext range(i8 0, 2) i8 @lzma_mode_is_supported(i32 noundef %mode) local_unnamed_addr #6 !dbg !1589 {
entry:
    #dbg_value(i32 %mode, !1594, !DIExpression(), !1595)
  %0 = add i32 %mode, -1, !dbg !1596
  %1 = icmp ult i32 %0, 2, !dbg !1596
  %conv = zext i1 %1 to i8, !dbg !1597
  ret i8 %conv, !dbg !1598
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @match(ptr noundef %pcoder, i32 noundef %pos_state, i32 noundef %distance, i32 noundef %len) unnamed_addr #7 !dbg !1599 {
entry:
    #dbg_value(ptr %pcoder, !1601, !DIExpression(), !1613)
    #dbg_value(i32 %pos_state, !1602, !DIExpression(), !1613)
    #dbg_value(i32 %distance, !1603, !DIExpression(), !1613)
    #dbg_value(i32 %len, !1604, !DIExpression(), !1613)
    #dbg_value(ptr %pcoder, !1605, !DIExpression(), !1613)
  %state = getelementptr inbounds i8, ptr %pcoder, i64 736, !dbg !1614
  %0 = load i32, ptr %state, align 8, !dbg !1614
  %cmp = icmp ult i32 %0, 7, !dbg !1614
  %cond = select i1 %cmp, i32 7, i32 10, !dbg !1614
  store i32 %cond, ptr %state, align 8, !dbg !1614
  %match_len_encoder = getelementptr inbounds i8, ptr %pcoder, i64 29184, !dbg !1615
  %fast_mode = getelementptr inbounds i8, ptr %pcoder, i64 2956, !dbg !1616
  %1 = load i8, ptr %fast_mode, align 4, !dbg !1616, !range !288, !noundef !289
  %loadedv = trunc nuw i8 %1 to i1, !dbg !1616
  tail call fastcc void @length(ptr noundef %pcoder, ptr noundef nonnull %match_len_encoder, i32 noundef %pos_state, i32 noundef %len, i1 noundef zeroext %loadedv), !dbg !1617
    #dbg_value(i32 %distance, !1618, !DIExpression(), !1624)
  %cmp.i = icmp ult i32 %distance, 8192, !dbg !1626
  br i1 %cmp.i, label %if.then.i, label %if.end.i, !dbg !1628

if.then.i:                                        ; preds = %entry
  %idxprom.i = zext nneg i32 %distance to i64, !dbg !1629
  %arrayidx.i = getelementptr inbounds [8192 x i8], ptr @lzma_fastpos, i64 0, i64 %idxprom.i, !dbg !1629
  %2 = load i8, ptr %arrayidx.i, align 1, !dbg !1629
  %conv.i = zext i8 %2 to i32, !dbg !1629
  br label %get_pos_slot.exit, !dbg !1630

if.end.i:                                         ; preds = %entry
  %cmp1.i = icmp ult i32 %distance, 33554432, !dbg !1631
  br i1 %cmp1.i, label %if.then3.i, label %if.end7.i, !dbg !1633

if.then3.i:                                       ; preds = %if.end.i
  %shr.i = lshr i32 %distance, 12, !dbg !1634
  %idxprom4.i = zext nneg i32 %shr.i to i64, !dbg !1634
  %arrayidx5.i = getelementptr inbounds [8192 x i8], ptr @lzma_fastpos, i64 0, i64 %idxprom4.i, !dbg !1634
  %3 = load i8, ptr %arrayidx5.i, align 1, !dbg !1634
  %conv6.i = zext i8 %3 to i32, !dbg !1634
  %add.i = add nuw nsw i32 %conv6.i, 24, !dbg !1634
  br label %get_pos_slot.exit, !dbg !1635

if.end7.i:                                        ; preds = %if.end.i
  %shr8.i = lshr i32 %distance, 24, !dbg !1636
  %idxprom9.i = zext nneg i32 %shr8.i to i64, !dbg !1636
  %arrayidx10.i = getelementptr inbounds [8192 x i8], ptr @lzma_fastpos, i64 0, i64 %idxprom9.i, !dbg !1636
  %4 = load i8, ptr %arrayidx10.i, align 1, !dbg !1636
  %conv11.i = zext i8 %4 to i32, !dbg !1636
  %add12.i = add nuw nsw i32 %conv11.i, 48, !dbg !1636
  br label %get_pos_slot.exit, !dbg !1637

get_pos_slot.exit:                                ; preds = %if.then.i, %if.then3.i, %if.end7.i
  %retval.0.i = phi i32 [ %conv.i, %if.then.i ], [ %add.i, %if.then3.i ], [ %add12.i, %if.end7.i ], !dbg !1624
    #dbg_value(i32 %retval.0.i, !1606, !DIExpression(), !1613)
  %cmp2 = icmp ult i32 %len, 6, !dbg !1638
  %sub = add nsw i32 %len, -2, !dbg !1638
  %cond3 = select i1 %cmp2, i32 %sub, i32 3, !dbg !1638
    #dbg_value(i32 %cond3, !1607, !DIExpression(), !1613)
  %pos_slot5 = getelementptr inbounds i8, ptr %pcoder, i64 28412, !dbg !1639
  %idxprom = zext i32 %cond3 to i64, !dbg !1640
  %arrayidx = getelementptr inbounds [4 x [64 x i16]], ptr %pos_slot5, i64 0, i64 %idxprom, !dbg !1640
    #dbg_value(ptr %pcoder, !346, !DIExpression(), !1641)
    #dbg_value(ptr %arrayidx, !351, !DIExpression(), !1641)
    #dbg_value(i32 6, !352, !DIExpression(), !1641)
    #dbg_value(i32 %retval.0.i, !353, !DIExpression(), !1641)
    #dbg_value(i32 1, !354, !DIExpression(), !1641)
  %symbols.i.i = getelementptr inbounds i8, ptr %pcoder, i64 40
  %count.i.i = getelementptr inbounds i8, ptr %pcoder, i64 24
  %probs.i.i = getelementptr inbounds i8, ptr %pcoder, i64 272
  %.pre.i = load i64, ptr %count.i.i, align 8, !dbg !1643
    #dbg_value(i32 6, !352, !DIExpression(), !1641)
    #dbg_value(i32 1, !354, !DIExpression(), !1641)
    #dbg_value(i32 5, !352, !DIExpression(), !1641)
  %shr.i71 = lshr i32 %retval.0.i, 5, !dbg !1645
  %and.i = and i32 %shr.i71, 1, !dbg !1646
    #dbg_value(i32 %and.i, !355, !DIExpression(), !1647)
  %arrayidx.i73 = getelementptr inbounds i8, ptr %arrayidx, i64 2, !dbg !1648
    #dbg_value(ptr %pcoder, !324, !DIExpression(), !1649)
    #dbg_value(ptr %arrayidx.i73, !330, !DIExpression(), !1649)
    #dbg_value(i32 %and.i, !331, !DIExpression(), !1649)
  %arrayidx.i.i = getelementptr inbounds [58 x i32], ptr %symbols.i.i, i64 0, i64 %.pre.i, !dbg !1650
  store i32 %and.i, ptr %arrayidx.i.i, align 4, !dbg !1651
  %5 = load i64, ptr %count.i.i, align 8, !dbg !1652
  %arrayidx2.i.i = getelementptr inbounds [58 x ptr], ptr %probs.i.i, i64 0, i64 %5, !dbg !1653
  store ptr %arrayidx.i73, ptr %arrayidx2.i.i, align 8, !dbg !1654
  %6 = load i64, ptr %count.i.i, align 8, !dbg !1655
  %inc.i.i = add i64 %6, 1, !dbg !1655
  store i64 %inc.i.i, ptr %count.i.i, align 8, !dbg !1655
  %add.i74 = or disjoint i32 %and.i, 2, !dbg !1656
    #dbg_value(i32 %add.i74, !354, !DIExpression(), !1641)
    #dbg_value(i32 4, !352, !DIExpression(), !1641)
  %shr.i71.1 = lshr i32 %retval.0.i, 4, !dbg !1645
  %and.i.1 = and i32 %shr.i71.1, 1, !dbg !1646
    #dbg_value(i32 %and.i.1, !355, !DIExpression(), !1647)
  %idxprom.i72.1 = zext nneg i32 %add.i74 to i64, !dbg !1648
  %arrayidx.i73.1 = getelementptr inbounds i16, ptr %arrayidx, i64 %idxprom.i72.1, !dbg !1648
    #dbg_value(ptr %arrayidx.i73.1, !330, !DIExpression(), !1649)
    #dbg_value(i32 %and.i.1, !331, !DIExpression(), !1649)
  %arrayidx.i.i.1 = getelementptr inbounds [58 x i32], ptr %symbols.i.i, i64 0, i64 %inc.i.i, !dbg !1650
  store i32 %and.i.1, ptr %arrayidx.i.i.1, align 4, !dbg !1651
  %7 = load i64, ptr %count.i.i, align 8, !dbg !1652
  %arrayidx2.i.i.1 = getelementptr inbounds [58 x ptr], ptr %probs.i.i, i64 0, i64 %7, !dbg !1653
  store ptr %arrayidx.i73.1, ptr %arrayidx2.i.i.1, align 8, !dbg !1654
  %8 = load i64, ptr %count.i.i, align 8, !dbg !1655
  %inc.i.i.1 = add i64 %8, 1, !dbg !1655
  store i64 %inc.i.i.1, ptr %count.i.i, align 8, !dbg !1655
  %shl.i.1 = shl nuw nsw i32 %add.i74, 1, !dbg !1657
  %add.i74.1 = or disjoint i32 %and.i.1, %shl.i.1, !dbg !1656
    #dbg_value(i32 %add.i74.1, !354, !DIExpression(), !1641)
    #dbg_value(i32 3, !352, !DIExpression(), !1641)
  %shr.i71.2 = lshr i32 %retval.0.i, 3, !dbg !1645
  %and.i.2 = and i32 %shr.i71.2, 1, !dbg !1646
    #dbg_value(i32 %and.i.2, !355, !DIExpression(), !1647)
  %idxprom.i72.2 = zext nneg i32 %add.i74.1 to i64, !dbg !1648
  %arrayidx.i73.2 = getelementptr inbounds i16, ptr %arrayidx, i64 %idxprom.i72.2, !dbg !1648
    #dbg_value(ptr %arrayidx.i73.2, !330, !DIExpression(), !1649)
    #dbg_value(i32 %and.i.2, !331, !DIExpression(), !1649)
  %arrayidx.i.i.2 = getelementptr inbounds [58 x i32], ptr %symbols.i.i, i64 0, i64 %inc.i.i.1, !dbg !1650
  store i32 %and.i.2, ptr %arrayidx.i.i.2, align 4, !dbg !1651
  %9 = load i64, ptr %count.i.i, align 8, !dbg !1652
  %arrayidx2.i.i.2 = getelementptr inbounds [58 x ptr], ptr %probs.i.i, i64 0, i64 %9, !dbg !1653
  store ptr %arrayidx.i73.2, ptr %arrayidx2.i.i.2, align 8, !dbg !1654
  %10 = load i64, ptr %count.i.i, align 8, !dbg !1655
  %inc.i.i.2 = add i64 %10, 1, !dbg !1655
  store i64 %inc.i.i.2, ptr %count.i.i, align 8, !dbg !1655
  %shl.i.2 = shl nuw nsw i32 %add.i74.1, 1, !dbg !1657
  %add.i74.2 = or disjoint i32 %and.i.2, %shl.i.2, !dbg !1656
    #dbg_value(i32 %add.i74.2, !354, !DIExpression(), !1641)
    #dbg_value(i32 2, !352, !DIExpression(), !1641)
  %shr.i71.3 = lshr i32 %retval.0.i, 2, !dbg !1645
  %and.i.3 = and i32 %shr.i71.3, 1, !dbg !1646
    #dbg_value(i32 %and.i.3, !355, !DIExpression(), !1647)
  %idxprom.i72.3 = zext nneg i32 %add.i74.2 to i64, !dbg !1648
  %arrayidx.i73.3 = getelementptr inbounds i16, ptr %arrayidx, i64 %idxprom.i72.3, !dbg !1648
    #dbg_value(ptr %arrayidx.i73.3, !330, !DIExpression(), !1649)
    #dbg_value(i32 %and.i.3, !331, !DIExpression(), !1649)
  %arrayidx.i.i.3 = getelementptr inbounds [58 x i32], ptr %symbols.i.i, i64 0, i64 %inc.i.i.2, !dbg !1650
  store i32 %and.i.3, ptr %arrayidx.i.i.3, align 4, !dbg !1651
  %11 = load i64, ptr %count.i.i, align 8, !dbg !1652
  %arrayidx2.i.i.3 = getelementptr inbounds [58 x ptr], ptr %probs.i.i, i64 0, i64 %11, !dbg !1653
  store ptr %arrayidx.i73.3, ptr %arrayidx2.i.i.3, align 8, !dbg !1654
  %12 = load i64, ptr %count.i.i, align 8, !dbg !1655
  %inc.i.i.3 = add i64 %12, 1, !dbg !1655
  store i64 %inc.i.i.3, ptr %count.i.i, align 8, !dbg !1655
  %shl.i.3 = shl nuw nsw i32 %add.i74.2, 1, !dbg !1657
  %add.i74.3 = or disjoint i32 %and.i.3, %shl.i.3, !dbg !1656
    #dbg_value(i32 %add.i74.3, !354, !DIExpression(), !1641)
    #dbg_value(i32 1, !352, !DIExpression(), !1641)
  %shr.i71.4 = lshr i32 %retval.0.i, 1, !dbg !1645
  %and.i.4 = and i32 %shr.i71.4, 1, !dbg !1646
    #dbg_value(i32 %and.i.4, !355, !DIExpression(), !1647)
  %idxprom.i72.4 = zext nneg i32 %add.i74.3 to i64, !dbg !1648
  %arrayidx.i73.4 = getelementptr inbounds i16, ptr %arrayidx, i64 %idxprom.i72.4, !dbg !1648
    #dbg_value(ptr %arrayidx.i73.4, !330, !DIExpression(), !1649)
    #dbg_value(i32 %and.i.4, !331, !DIExpression(), !1649)
  %arrayidx.i.i.4 = getelementptr inbounds [58 x i32], ptr %symbols.i.i, i64 0, i64 %inc.i.i.3, !dbg !1650
  store i32 %and.i.4, ptr %arrayidx.i.i.4, align 4, !dbg !1651
  %13 = load i64, ptr %count.i.i, align 8, !dbg !1652
  %arrayidx2.i.i.4 = getelementptr inbounds [58 x ptr], ptr %probs.i.i, i64 0, i64 %13, !dbg !1653
  store ptr %arrayidx.i73.4, ptr %arrayidx2.i.i.4, align 8, !dbg !1654
  %14 = load i64, ptr %count.i.i, align 8, !dbg !1655
  %inc.i.i.4 = add i64 %14, 1, !dbg !1655
  store i64 %inc.i.i.4, ptr %count.i.i, align 8, !dbg !1655
  %shl.i.4 = shl nuw nsw i32 %add.i74.3, 1, !dbg !1657
  %add.i74.4 = or disjoint i32 %and.i.4, %shl.i.4, !dbg !1656
    #dbg_value(i32 %add.i74.4, !354, !DIExpression(), !1641)
    #dbg_value(i32 0, !352, !DIExpression(), !1641)
  %and.i.5 = and i32 %retval.0.i, 1, !dbg !1646
    #dbg_value(i32 %and.i.5, !355, !DIExpression(), !1647)
  %idxprom.i72.5 = zext nneg i32 %add.i74.4 to i64, !dbg !1648
  %arrayidx.i73.5 = getelementptr inbounds i16, ptr %arrayidx, i64 %idxprom.i72.5, !dbg !1648
    #dbg_value(ptr %arrayidx.i73.5, !330, !DIExpression(), !1649)
    #dbg_value(i32 %and.i.5, !331, !DIExpression(), !1649)
  %arrayidx.i.i.5 = getelementptr inbounds [58 x i32], ptr %symbols.i.i, i64 0, i64 %inc.i.i.4, !dbg !1650
  store i32 %and.i.5, ptr %arrayidx.i.i.5, align 4, !dbg !1651
  %15 = load i64, ptr %count.i.i, align 8, !dbg !1652
  %arrayidx2.i.i.5 = getelementptr inbounds [58 x ptr], ptr %probs.i.i, i64 0, i64 %15, !dbg !1653
  store ptr %arrayidx.i73.5, ptr %arrayidx2.i.i.5, align 8, !dbg !1654
  %16 = load i64, ptr %count.i.i, align 8, !dbg !1655
  %inc.i.i.5 = add i64 %16, 1, !dbg !1655
  store i64 %inc.i.i.5, ptr %count.i.i, align 8, !dbg !1655
    #dbg_value(!DIArgList(i32 %and.i.5, i32 %add.i74.4), !354, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !1641)
  %cmp6 = icmp ugt i32 %retval.0.i, 3, !dbg !1658
  br i1 %cmp6, label %if.then, label %if.end22, !dbg !1659

if.then:                                          ; preds = %get_pos_slot.exit
  %sub7 = add nsw i32 %shr.i71.4, -1, !dbg !1660
    #dbg_value(i32 %sub7, !1608, !DIExpression(), !1661)
  %or = or disjoint i32 %and.i.5, 2, !dbg !1662
  %shl = shl i32 %or, %sub7, !dbg !1663
    #dbg_value(i32 %shl, !1611, !DIExpression(), !1661)
  %sub8 = sub i32 %distance, %shl, !dbg !1664
    #dbg_value(i32 %sub8, !1612, !DIExpression(), !1661)
  %cmp9 = icmp ult i32 %retval.0.i, 14, !dbg !1665
  br i1 %cmp9, label %if.then10, label %if.else, !dbg !1667

if.then10:                                        ; preds = %if.then
  %pos_special = getelementptr inbounds i8, ptr %pcoder, i64 28924, !dbg !1668
  %idx.ext = zext i32 %shl to i64, !dbg !1670
  %add.ptr = getelementptr inbounds i16, ptr %pos_special, i64 %idx.ext, !dbg !1670
  %idx.ext13 = zext nneg i32 %retval.0.i to i64, !dbg !1671
  %idx.neg = sub nsw i64 0, %idx.ext13, !dbg !1671
  %add.ptr14 = getelementptr inbounds i16, ptr %add.ptr, i64 %idx.neg, !dbg !1671
  %add.ptr15 = getelementptr inbounds i8, ptr %add.ptr14, i64 -2, !dbg !1672
    #dbg_value(ptr %pcoder, !1673, !DIExpression(), !1682)
    #dbg_value(ptr %add.ptr15, !1676, !DIExpression(), !1682)
    #dbg_value(i32 %sub7, !1677, !DIExpression(), !1682)
    #dbg_value(i32 %sub8, !1678, !DIExpression(), !1682)
    #dbg_value(i32 1, !1679, !DIExpression(), !1682)
    #dbg_value(i32 %sub7, !1677, !DIExpression(), !1682)
    #dbg_value(i32 1, !1679, !DIExpression(), !1682)
    #dbg_value(i32 %sub8, !1678, !DIExpression(), !1682)
  %and.i82 = and i32 %sub8, 1, !dbg !1684
    #dbg_value(i32 %and.i82, !1680, !DIExpression(), !1685)
    #dbg_value(i32 %sub8, !1678, !DIExpression(DW_OP_constu, 1, DW_OP_shr, DW_OP_stack_value), !1682)
    #dbg_value(ptr %pcoder, !324, !DIExpression(), !1686)
    #dbg_value(ptr %add.ptr14, !330, !DIExpression(), !1686)
    #dbg_value(i32 %and.i82, !331, !DIExpression(), !1686)
  %arrayidx.i.i86 = getelementptr inbounds [58 x i32], ptr %symbols.i.i, i64 0, i64 %inc.i.i.5, !dbg !1688
  store i32 %and.i82, ptr %arrayidx.i.i86, align 4, !dbg !1689
  %17 = load i64, ptr %count.i.i, align 8, !dbg !1690
  %arrayidx2.i.i87 = getelementptr inbounds [58 x ptr], ptr %probs.i.i, i64 0, i64 %17, !dbg !1691
  store ptr %add.ptr14, ptr %arrayidx2.i.i87, align 8, !dbg !1692
  %18 = load i64, ptr %count.i.i, align 8, !dbg !1693
  %inc.i.i88 = add i64 %18, 1, !dbg !1693
  store i64 %inc.i.i88, ptr %count.i.i, align 8, !dbg !1693
    #dbg_value(!DIArgList(i32 2, i32 %and.i82), !1679, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !1682)
    #dbg_value(i32 %shr.i71.4, !1677, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !1682)
  %cmp.not.i92 = icmp eq i32 %shr.i71.4, 2, !dbg !1694
  br i1 %cmp.not.i92, label %if.end22, label %do.body.i79.1, !dbg !1695, !llvm.loop !1696

do.body.i79.1:                                    ; preds = %if.then10
  %add.i90 = or disjoint i32 %and.i82, 2, !dbg !1699
    #dbg_value(i32 %add.i90, !1679, !DIExpression(), !1682)
  %shr.i83 = lshr i32 %sub8, 1, !dbg !1700
    #dbg_value(i32 %shr.i83, !1678, !DIExpression(), !1682)
    #dbg_value(i32 %shr.i71.4, !1677, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !1682)
    #dbg_value(i32 %add.i90, !1679, !DIExpression(), !1682)
    #dbg_value(i32 %shr.i83, !1678, !DIExpression(), !1682)
  %and.i82.1 = and i32 %shr.i83, 1, !dbg !1684
    #dbg_value(i32 %and.i82.1, !1680, !DIExpression(), !1685)
    #dbg_value(i32 %shr.i83, !1678, !DIExpression(DW_OP_constu, 1, DW_OP_shr, DW_OP_stack_value), !1682)
  %idxprom.i84.1 = zext nneg i32 %add.i90 to i64, !dbg !1701
  %arrayidx.i85.1 = getelementptr inbounds i16, ptr %add.ptr15, i64 %idxprom.i84.1, !dbg !1701
    #dbg_value(ptr %pcoder, !324, !DIExpression(), !1686)
    #dbg_value(ptr %arrayidx.i85.1, !330, !DIExpression(), !1686)
    #dbg_value(i32 %and.i82.1, !331, !DIExpression(), !1686)
  %arrayidx.i.i86.1 = getelementptr inbounds [58 x i32], ptr %symbols.i.i, i64 0, i64 %inc.i.i88, !dbg !1688
  store i32 %and.i82.1, ptr %arrayidx.i.i86.1, align 4, !dbg !1689
  %19 = load i64, ptr %count.i.i, align 8, !dbg !1690
  %arrayidx2.i.i87.1 = getelementptr inbounds [58 x ptr], ptr %probs.i.i, i64 0, i64 %19, !dbg !1691
  store ptr %arrayidx.i85.1, ptr %arrayidx2.i.i87.1, align 8, !dbg !1692
  %20 = load i64, ptr %count.i.i, align 8, !dbg !1693
  %inc.i.i88.1 = add i64 %20, 1, !dbg !1693
  store i64 %inc.i.i88.1, ptr %count.i.i, align 8, !dbg !1693
    #dbg_value(!DIArgList(i32 %add.i90, i32 %and.i82.1), !1679, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !1682)
    #dbg_value(i32 %shr.i71.4, !1677, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value), !1682)
  %cmp.not.i92.1 = icmp eq i32 %shr.i71.4, 3, !dbg !1694
  br i1 %cmp.not.i92.1, label %if.end22, label %do.body.i79.2, !dbg !1695, !llvm.loop !1696

do.body.i79.2:                                    ; preds = %do.body.i79.1
  %shl.i89.1 = shl nuw nsw i32 %add.i90, 1, !dbg !1702
    #dbg_value(!DIArgList(i32 %shl.i89.1, i32 %and.i82.1), !1679, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !1682)
  %add.i90.1 = or disjoint i32 %shl.i89.1, %and.i82.1, !dbg !1699
    #dbg_value(i32 %add.i90.1, !1679, !DIExpression(), !1682)
  %shr.i83.1 = lshr i32 %sub8, 2, !dbg !1700
    #dbg_value(i32 %shr.i83.1, !1678, !DIExpression(), !1682)
    #dbg_value(i32 %shr.i71.4, !1677, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value), !1682)
    #dbg_value(i32 %add.i90.1, !1679, !DIExpression(), !1682)
    #dbg_value(i32 %shr.i83.1, !1678, !DIExpression(), !1682)
  %and.i82.2 = and i32 %shr.i83.1, 1, !dbg !1684
    #dbg_value(i32 %and.i82.2, !1680, !DIExpression(), !1685)
    #dbg_value(i32 %shr.i83.1, !1678, !DIExpression(DW_OP_constu, 1, DW_OP_shr, DW_OP_stack_value), !1682)
  %idxprom.i84.2 = zext nneg i32 %add.i90.1 to i64, !dbg !1701
  %arrayidx.i85.2 = getelementptr inbounds i16, ptr %add.ptr15, i64 %idxprom.i84.2, !dbg !1701
    #dbg_value(ptr %pcoder, !324, !DIExpression(), !1686)
    #dbg_value(ptr %arrayidx.i85.2, !330, !DIExpression(), !1686)
    #dbg_value(i32 %and.i82.2, !331, !DIExpression(), !1686)
  %arrayidx.i.i86.2 = getelementptr inbounds [58 x i32], ptr %symbols.i.i, i64 0, i64 %inc.i.i88.1, !dbg !1688
  store i32 %and.i82.2, ptr %arrayidx.i.i86.2, align 4, !dbg !1689
  %21 = load i64, ptr %count.i.i, align 8, !dbg !1690
  %arrayidx2.i.i87.2 = getelementptr inbounds [58 x ptr], ptr %probs.i.i, i64 0, i64 %21, !dbg !1691
  store ptr %arrayidx.i85.2, ptr %arrayidx2.i.i87.2, align 8, !dbg !1692
  %22 = load i64, ptr %count.i.i, align 8, !dbg !1693
  %inc.i.i88.2 = add i64 %22, 1, !dbg !1693
  store i64 %inc.i.i88.2, ptr %count.i.i, align 8, !dbg !1693
    #dbg_value(!DIArgList(i32 %add.i90.1, i32 %and.i82.2), !1679, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !1682)
    #dbg_value(i32 %shr.i71.4, !1677, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value), !1682)
  %cmp.not.i92.2 = icmp eq i32 %shr.i71.4, 4, !dbg !1694
  br i1 %cmp.not.i92.2, label %if.end22, label %do.body.i79.3, !dbg !1695, !llvm.loop !1696

do.body.i79.3:                                    ; preds = %do.body.i79.2
  %shl.i89.2 = shl nuw nsw i32 %add.i90.1, 1, !dbg !1702
    #dbg_value(!DIArgList(i32 %shl.i89.2, i32 %and.i82.2), !1679, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !1682)
  %add.i90.2 = or disjoint i32 %shl.i89.2, %and.i82.2, !dbg !1699
    #dbg_value(i32 %add.i90.2, !1679, !DIExpression(), !1682)
  %shr.i83.2 = lshr i32 %sub8, 3, !dbg !1700
    #dbg_value(i32 %shr.i83.2, !1678, !DIExpression(), !1682)
    #dbg_value(i32 %shr.i71.4, !1677, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value), !1682)
    #dbg_value(i32 %add.i90.2, !1679, !DIExpression(), !1682)
    #dbg_value(i32 %shr.i83.2, !1678, !DIExpression(), !1682)
  %and.i82.3 = and i32 %shr.i83.2, 1, !dbg !1684
    #dbg_value(i32 %and.i82.3, !1680, !DIExpression(), !1685)
    #dbg_value(i32 %shr.i83.2, !1678, !DIExpression(DW_OP_constu, 1, DW_OP_shr, DW_OP_stack_value), !1682)
  %idxprom.i84.3 = zext nneg i32 %add.i90.2 to i64, !dbg !1701
  %arrayidx.i85.3 = getelementptr inbounds i16, ptr %add.ptr15, i64 %idxprom.i84.3, !dbg !1701
    #dbg_value(ptr %pcoder, !324, !DIExpression(), !1686)
    #dbg_value(ptr %arrayidx.i85.3, !330, !DIExpression(), !1686)
    #dbg_value(i32 %and.i82.3, !331, !DIExpression(), !1686)
  %arrayidx.i.i86.3 = getelementptr inbounds [58 x i32], ptr %symbols.i.i, i64 0, i64 %inc.i.i88.2, !dbg !1688
  store i32 %and.i82.3, ptr %arrayidx.i.i86.3, align 4, !dbg !1689
  %23 = load i64, ptr %count.i.i, align 8, !dbg !1690
  %arrayidx2.i.i87.3 = getelementptr inbounds [58 x ptr], ptr %probs.i.i, i64 0, i64 %23, !dbg !1691
  store ptr %arrayidx.i85.3, ptr %arrayidx2.i.i87.3, align 8, !dbg !1692
  %24 = load i64, ptr %count.i.i, align 8, !dbg !1693
  %inc.i.i88.3 = add i64 %24, 1, !dbg !1693
  store i64 %inc.i.i88.3, ptr %count.i.i, align 8, !dbg !1693
    #dbg_value(!DIArgList(i32 %add.i90.2, i32 %and.i82.3), !1679, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !1682)
    #dbg_value(i32 %shr.i71.4, !1677, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value), !1682)
  %cmp.not.i92.3 = icmp eq i32 %shr.i71.4, 5, !dbg !1694
  br i1 %cmp.not.i92.3, label %if.end22, label %do.body.i79.4, !dbg !1695, !llvm.loop !1696

do.body.i79.4:                                    ; preds = %do.body.i79.3
  %shl.i89.3 = shl nuw nsw i32 %add.i90.2, 1, !dbg !1702
    #dbg_value(!DIArgList(i32 %shl.i89.3, i32 %and.i82.3), !1679, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !1682)
  %add.i90.3 = or disjoint i32 %shl.i89.3, %and.i82.3, !dbg !1699
    #dbg_value(i32 %add.i90.3, !1679, !DIExpression(), !1682)
  %shr.i83.3 = lshr i32 %sub8, 4, !dbg !1700
    #dbg_value(i32 %shr.i83.3, !1678, !DIExpression(), !1682)
    #dbg_value(i32 %shr.i71.4, !1677, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value), !1682)
    #dbg_value(i32 %add.i90.3, !1679, !DIExpression(), !1682)
    #dbg_value(i32 %shr.i83.3, !1678, !DIExpression(), !1682)
  %and.i82.4 = and i32 %shr.i83.3, 1, !dbg !1684
    #dbg_value(i32 %and.i82.4, !1680, !DIExpression(), !1685)
    #dbg_value(i32 %shr.i83.3, !1678, !DIExpression(DW_OP_constu, 1, DW_OP_shr, DW_OP_stack_value), !1682)
  %idxprom.i84.4 = zext nneg i32 %add.i90.3 to i64, !dbg !1701
  %arrayidx.i85.4 = getelementptr inbounds i16, ptr %add.ptr15, i64 %idxprom.i84.4, !dbg !1701
    #dbg_value(ptr %pcoder, !324, !DIExpression(), !1686)
    #dbg_value(ptr %arrayidx.i85.4, !330, !DIExpression(), !1686)
    #dbg_value(i32 %and.i82.4, !331, !DIExpression(), !1686)
  %arrayidx.i.i86.4 = getelementptr inbounds [58 x i32], ptr %symbols.i.i, i64 0, i64 %inc.i.i88.3, !dbg !1688
  store i32 %and.i82.4, ptr %arrayidx.i.i86.4, align 4, !dbg !1689
  %25 = load i64, ptr %count.i.i, align 8, !dbg !1690
  %arrayidx2.i.i87.4 = getelementptr inbounds [58 x ptr], ptr %probs.i.i, i64 0, i64 %25, !dbg !1691
  store ptr %arrayidx.i85.4, ptr %arrayidx2.i.i87.4, align 8, !dbg !1692
  %26 = load i64, ptr %count.i.i, align 8, !dbg !1693
  %inc.i.i88.4 = add i64 %26, 1, !dbg !1693
  store i64 %inc.i.i88.4, ptr %count.i.i, align 8, !dbg !1693
    #dbg_value(!DIArgList(i32 %add.i90.3, i32 %and.i82.4), !1679, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !1682)
    #dbg_value(i32 %shr.i71.4, !1677, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value), !1682)
  br label %if.end22

if.else:                                          ; preds = %if.then
  %shr17 = lshr i32 %sub8, 4, !dbg !1703
  %sub18 = add nsw i32 %shr.i71.4, -5, !dbg !1705
    #dbg_value(ptr %pcoder, !1706, !DIExpression(), !1713)
    #dbg_value(i32 %shr17, !1711, !DIExpression(), !1713)
    #dbg_value(i32 %sub18, !1712, !DIExpression(), !1713)
  %xtraiter = and i32 %sub18, 1, !dbg !1715
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !1715
  br i1 %lcmp.mod.not, label %do.body.i93.prol.loopexit, label %do.body.i93.prol, !dbg !1715

do.body.i93.prol:                                 ; preds = %if.else
    #dbg_value(i32 %sub18, !1712, !DIExpression(), !1713)
  %dec.i95.prol = add nsw i32 %shr.i71.4, -6, !dbg !1716
    #dbg_value(i32 %dec.i95.prol, !1712, !DIExpression(), !1713)
  %shr.i96.prol = lshr i32 %shr17, %dec.i95.prol, !dbg !1718
  %and.i97.prol = and i32 %shr.i96.prol, 1, !dbg !1719
  %add.i98.prol = or disjoint i32 %and.i97.prol, 2, !dbg !1720
  %27 = load i64, ptr %count.i.i, align 8, !dbg !1721
  %inc.i.prol = add i64 %27, 1, !dbg !1721
  store i64 %inc.i.prol, ptr %count.i.i, align 8, !dbg !1721
  %arrayidx.i99.prol = getelementptr inbounds [58 x i32], ptr %symbols.i.i, i64 0, i64 %27, !dbg !1722
  store i32 %add.i98.prol, ptr %arrayidx.i99.prol, align 4, !dbg !1723
  br label %do.body.i93.prol.loopexit, !dbg !1715

do.body.i93.prol.loopexit:                        ; preds = %do.body.i93.prol, %if.else
  %bit_count.addr.0.i94.unr = phi i32 [ %sub18, %if.else ], [ %dec.i95.prol, %do.body.i93.prol ]
  %28 = icmp eq i32 %shr.i71.4, 6, !dbg !1715
  br i1 %28, label %rc_direct.exit, label %do.body.i93, !dbg !1715

do.body.i93:                                      ; preds = %do.body.i93.prol.loopexit, %do.body.i93
  %bit_count.addr.0.i94 = phi i32 [ %dec.i95.1, %do.body.i93 ], [ %bit_count.addr.0.i94.unr, %do.body.i93.prol.loopexit ]
    #dbg_value(i32 %bit_count.addr.0.i94, !1712, !DIExpression(), !1713)
  %dec.i95 = add nsw i32 %bit_count.addr.0.i94, -1, !dbg !1716
    #dbg_value(i32 %dec.i95, !1712, !DIExpression(), !1713)
  %shr.i96 = lshr i32 %shr17, %dec.i95, !dbg !1718
  %and.i97 = and i32 %shr.i96, 1, !dbg !1719
  %add.i98 = or disjoint i32 %and.i97, 2, !dbg !1720
  %29 = load i64, ptr %count.i.i, align 8, !dbg !1721
  %inc.i = add i64 %29, 1, !dbg !1721
  store i64 %inc.i, ptr %count.i.i, align 8, !dbg !1721
  %arrayidx.i99 = getelementptr inbounds [58 x i32], ptr %symbols.i.i, i64 0, i64 %29, !dbg !1722
  store i32 %add.i98, ptr %arrayidx.i99, align 4, !dbg !1723
  %dec.i95.1 = add nsw i32 %bit_count.addr.0.i94, -2, !dbg !1716
    #dbg_value(i32 %dec.i95.1, !1712, !DIExpression(), !1713)
  %shr.i96.1 = lshr i32 %shr17, %dec.i95.1, !dbg !1718
  %and.i97.1 = and i32 %shr.i96.1, 1, !dbg !1719
  %add.i98.1 = or disjoint i32 %and.i97.1, 2, !dbg !1720
  %30 = load i64, ptr %count.i.i, align 8, !dbg !1721
  %inc.i.1 = add i64 %30, 1, !dbg !1721
  store i64 %inc.i.1, ptr %count.i.i, align 8, !dbg !1721
  %arrayidx.i99.1 = getelementptr inbounds [58 x i32], ptr %symbols.i.i, i64 0, i64 %30, !dbg !1722
  store i32 %add.i98.1, ptr %arrayidx.i99.1, align 4, !dbg !1723
  %cmp.not.i100.1 = icmp eq i32 %dec.i95.1, 0, !dbg !1724
  br i1 %cmp.not.i100.1, label %rc_direct.exit, label %do.body.i93, !dbg !1725, !llvm.loop !1726

rc_direct.exit:                                   ; preds = %do.body.i93, %do.body.i93.prol.loopexit
  %pos_align = getelementptr inbounds i8, ptr %pcoder, i64 29152, !dbg !1728
    #dbg_value(ptr %pcoder, !1673, !DIExpression(), !1729)
    #dbg_value(ptr %pos_align, !1676, !DIExpression(), !1729)
    #dbg_value(i32 4, !1677, !DIExpression(), !1729)
    #dbg_value(i32 %sub8, !1678, !DIExpression(), !1729)
    #dbg_value(i32 1, !1679, !DIExpression(), !1729)
  %.pre.i104 = load i64, ptr %count.i.i, align 8, !dbg !1731
    #dbg_value(i32 4, !1677, !DIExpression(), !1729)
    #dbg_value(i32 1, !1679, !DIExpression(), !1729)
    #dbg_value(i32 %sub8, !1678, !DIExpression(), !1729)
  %and.i109 = and i32 %sub8, 1, !dbg !1733
    #dbg_value(i32 %and.i109, !1680, !DIExpression(), !1734)
  %shr.i110 = lshr i32 %sub8, 1, !dbg !1735
    #dbg_value(i32 %shr.i110, !1678, !DIExpression(), !1729)
  %arrayidx.i112 = getelementptr inbounds i8, ptr %pcoder, i64 29154, !dbg !1736
    #dbg_value(ptr %pcoder, !324, !DIExpression(), !1737)
    #dbg_value(ptr %arrayidx.i112, !330, !DIExpression(), !1737)
    #dbg_value(i32 %and.i109, !331, !DIExpression(), !1737)
  %arrayidx.i.i113 = getelementptr inbounds [58 x i32], ptr %symbols.i.i, i64 0, i64 %.pre.i104, !dbg !1738
  store i32 %and.i109, ptr %arrayidx.i.i113, align 4, !dbg !1739
  %31 = load i64, ptr %count.i.i, align 8, !dbg !1740
  %arrayidx2.i.i114 = getelementptr inbounds [58 x ptr], ptr %probs.i.i, i64 0, i64 %31, !dbg !1741
  store ptr %arrayidx.i112, ptr %arrayidx2.i.i114, align 8, !dbg !1742
  %32 = load i64, ptr %count.i.i, align 8, !dbg !1743
  %inc.i.i115 = add i64 %32, 1, !dbg !1743
  store i64 %inc.i.i115, ptr %count.i.i, align 8, !dbg !1743
  %add.i117 = or disjoint i32 %and.i109, 2, !dbg !1744
    #dbg_value(i32 %add.i117, !1679, !DIExpression(), !1729)
    #dbg_value(i32 3, !1677, !DIExpression(), !1729)
  %and.i109.1 = and i32 %shr.i110, 1, !dbg !1733
    #dbg_value(i32 %and.i109.1, !1680, !DIExpression(), !1734)
  %shr.i110.1 = lshr i32 %sub8, 2, !dbg !1735
    #dbg_value(i32 %shr.i110.1, !1678, !DIExpression(), !1729)
  %idxprom.i111.1 = zext nneg i32 %add.i117 to i64, !dbg !1736
  %arrayidx.i112.1 = getelementptr inbounds i16, ptr %pos_align, i64 %idxprom.i111.1, !dbg !1736
    #dbg_value(ptr %arrayidx.i112.1, !330, !DIExpression(), !1737)
    #dbg_value(i32 %and.i109.1, !331, !DIExpression(), !1737)
  %arrayidx.i.i113.1 = getelementptr inbounds [58 x i32], ptr %symbols.i.i, i64 0, i64 %inc.i.i115, !dbg !1738
  store i32 %and.i109.1, ptr %arrayidx.i.i113.1, align 4, !dbg !1739
  %33 = load i64, ptr %count.i.i, align 8, !dbg !1740
  %arrayidx2.i.i114.1 = getelementptr inbounds [58 x ptr], ptr %probs.i.i, i64 0, i64 %33, !dbg !1741
  store ptr %arrayidx.i112.1, ptr %arrayidx2.i.i114.1, align 8, !dbg !1742
  %34 = load i64, ptr %count.i.i, align 8, !dbg !1743
  %inc.i.i115.1 = add i64 %34, 1, !dbg !1743
  store i64 %inc.i.i115.1, ptr %count.i.i, align 8, !dbg !1743
  %shl.i116.1 = shl nuw nsw i32 %add.i117, 1, !dbg !1745
  %add.i117.1 = or disjoint i32 %shl.i116.1, %and.i109.1, !dbg !1744
    #dbg_value(i32 %add.i117.1, !1679, !DIExpression(), !1729)
    #dbg_value(i32 2, !1677, !DIExpression(), !1729)
  %and.i109.2 = and i32 %shr.i110.1, 1, !dbg !1733
    #dbg_value(i32 %and.i109.2, !1680, !DIExpression(), !1734)
  %shr.i110.2 = lshr i32 %sub8, 3, !dbg !1735
    #dbg_value(i32 %shr.i110.2, !1678, !DIExpression(), !1729)
  %idxprom.i111.2 = zext nneg i32 %add.i117.1 to i64, !dbg !1736
  %arrayidx.i112.2 = getelementptr inbounds i16, ptr %pos_align, i64 %idxprom.i111.2, !dbg !1736
    #dbg_value(ptr %arrayidx.i112.2, !330, !DIExpression(), !1737)
    #dbg_value(i32 %and.i109.2, !331, !DIExpression(), !1737)
  %arrayidx.i.i113.2 = getelementptr inbounds [58 x i32], ptr %symbols.i.i, i64 0, i64 %inc.i.i115.1, !dbg !1738
  store i32 %and.i109.2, ptr %arrayidx.i.i113.2, align 4, !dbg !1739
  %35 = load i64, ptr %count.i.i, align 8, !dbg !1740
  %arrayidx2.i.i114.2 = getelementptr inbounds [58 x ptr], ptr %probs.i.i, i64 0, i64 %35, !dbg !1741
  store ptr %arrayidx.i112.2, ptr %arrayidx2.i.i114.2, align 8, !dbg !1742
  %36 = load i64, ptr %count.i.i, align 8, !dbg !1743
  %inc.i.i115.2 = add i64 %36, 1, !dbg !1743
  store i64 %inc.i.i115.2, ptr %count.i.i, align 8, !dbg !1743
  %shl.i116.2 = shl nuw nsw i32 %add.i117.1, 1, !dbg !1745
  %add.i117.2 = or disjoint i32 %shl.i116.2, %and.i109.2, !dbg !1744
    #dbg_value(i32 %add.i117.2, !1679, !DIExpression(), !1729)
    #dbg_value(i32 1, !1677, !DIExpression(), !1729)
  %and.i109.3 = and i32 %shr.i110.2, 1, !dbg !1733
    #dbg_value(i32 %and.i109.3, !1680, !DIExpression(), !1734)
    #dbg_value(i32 %shr.i110.2, !1678, !DIExpression(DW_OP_constu, 1, DW_OP_shr, DW_OP_stack_value), !1729)
  %idxprom.i111.3 = zext nneg i32 %add.i117.2 to i64, !dbg !1736
  %arrayidx.i112.3 = getelementptr inbounds i16, ptr %pos_align, i64 %idxprom.i111.3, !dbg !1736
    #dbg_value(ptr %arrayidx.i112.3, !330, !DIExpression(), !1737)
    #dbg_value(i32 %and.i109.3, !331, !DIExpression(), !1737)
  %arrayidx.i.i113.3 = getelementptr inbounds [58 x i32], ptr %symbols.i.i, i64 0, i64 %inc.i.i115.2, !dbg !1738
  store i32 %and.i109.3, ptr %arrayidx.i.i113.3, align 4, !dbg !1739
  %37 = load i64, ptr %count.i.i, align 8, !dbg !1740
  %arrayidx2.i.i114.3 = getelementptr inbounds [58 x ptr], ptr %probs.i.i, i64 0, i64 %37, !dbg !1741
  store ptr %arrayidx.i112.3, ptr %arrayidx2.i.i114.3, align 8, !dbg !1742
  %38 = load i64, ptr %count.i.i, align 8, !dbg !1743
  %inc.i.i115.3 = add i64 %38, 1, !dbg !1743
  store i64 %inc.i.i115.3, ptr %count.i.i, align 8, !dbg !1743
    #dbg_value(!DIArgList(i32 %add.i117.2, i32 %and.i109.3), !1679, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !1729)
    #dbg_value(i32 0, !1677, !DIExpression(), !1729)
  %align_price_count = getelementptr inbounds i8, ptr %pcoder, i64 69336, !dbg !1746
  %39 = load i32, ptr %align_price_count, align 8, !dbg !1747
  %inc = add i32 %39, 1, !dbg !1747
  store i32 %inc, ptr %align_price_count, align 8, !dbg !1747
  br label %if.end22

if.end22:                                         ; preds = %if.then10, %do.body.i79.1, %do.body.i79.2, %do.body.i79.3, %do.body.i79.4, %rc_direct.exit, %get_pos_slot.exit
  %reps = getelementptr inbounds i8, ptr %pcoder, i64 740, !dbg !1748
  %arrayidx23 = getelementptr inbounds i8, ptr %pcoder, i64 748, !dbg !1749
  %40 = load i32, ptr %arrayidx23, align 4, !dbg !1749
  %arrayidx25 = getelementptr inbounds i8, ptr %pcoder, i64 752, !dbg !1750
  store i32 %40, ptr %arrayidx25, align 4, !dbg !1751
  %arrayidx27 = getelementptr inbounds i8, ptr %pcoder, i64 744, !dbg !1752
  %41 = load <2 x i32>, ptr %reps, align 4, !dbg !1753
  store <2 x i32> %41, ptr %arrayidx27, align 4, !dbg !1754
  store i32 %distance, ptr %reps, align 4, !dbg !1755
  %match_price_count = getelementptr inbounds i8, ptr %pcoder, i64 69268, !dbg !1756
  %42 = load i32, ptr %match_price_count, align 4, !dbg !1757
  %inc36 = add i32 %42, 1, !dbg !1757
  store i32 %inc36, ptr %match_price_count, align 4, !dbg !1757
  ret void, !dbg !1758
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @length(ptr nocapture noundef %rc, ptr noundef %lc, i32 noundef %pos_state, i32 noundef %len, i1 noundef zeroext %fast_mode) unnamed_addr #7 !dbg !1759 {
entry:
    #dbg_value(ptr %rc, !1763, !DIExpression(), !1768)
    #dbg_value(ptr %lc, !1764, !DIExpression(), !1768)
    #dbg_value(i32 %pos_state, !1765, !DIExpression(), !1768)
    #dbg_value(i32 %len, !1766, !DIExpression(), !1768)
    #dbg_value(i1 %fast_mode, !1767, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !1768)
  %sub = add i32 %len, -2, !dbg !1769
    #dbg_value(i32 %len, !1766, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !1768)
  %cmp = icmp ult i32 %sub, 8, !dbg !1770
    #dbg_value(ptr %rc, !324, !DIExpression(), !1772)
    #dbg_value(ptr %rc, !324, !DIExpression(), !1775)
    #dbg_value(ptr %lc, !330, !DIExpression(), !1772)
    #dbg_value(ptr %lc, !330, !DIExpression(), !1775)
  %symbols.i = getelementptr inbounds i8, ptr %rc, i64 40, !dbg !1778
  %count.i = getelementptr inbounds i8, ptr %rc, i64 24, !dbg !1780
  %0 = load i64, ptr %count.i, align 8, !dbg !1780
  %arrayidx.i = getelementptr inbounds [58 x i32], ptr %symbols.i, i64 0, i64 %0, !dbg !1781
  %probs.i = getelementptr inbounds i8, ptr %rc, i64 272, !dbg !1782
  br i1 %cmp, label %if.then, label %if.else, !dbg !1783

if.then:                                          ; preds = %entry
    #dbg_value(i32 0, !331, !DIExpression(), !1772)
  store i32 0, ptr %arrayidx.i, align 4, !dbg !1784
  %1 = load i64, ptr %count.i, align 8, !dbg !1785
  %arrayidx2.i = getelementptr inbounds [58 x ptr], ptr %probs.i, i64 0, i64 %1, !dbg !1786
  store ptr %lc, ptr %arrayidx2.i, align 8, !dbg !1787
  %2 = load i64, ptr %count.i, align 8, !dbg !1788
  %inc.i = add i64 %2, 1, !dbg !1788
  store i64 %inc.i, ptr %count.i, align 8, !dbg !1788
  %low = getelementptr inbounds i8, ptr %lc, i64 4, !dbg !1789
  %idxprom = zext i32 %pos_state to i64, !dbg !1790
  %arrayidx = getelementptr inbounds [16 x [8 x i16]], ptr %low, i64 0, i64 %idxprom, !dbg !1790
    #dbg_value(ptr %rc, !346, !DIExpression(), !1791)
    #dbg_value(ptr %arrayidx, !351, !DIExpression(), !1791)
    #dbg_value(i32 3, !352, !DIExpression(), !1791)
    #dbg_value(i32 %len, !353, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !1791)
    #dbg_value(i32 1, !354, !DIExpression(), !1791)
    #dbg_value(i32 3, !352, !DIExpression(), !1791)
    #dbg_value(i32 1, !354, !DIExpression(), !1791)
    #dbg_value(i32 2, !352, !DIExpression(), !1791)
  %shr.i = lshr i32 %sub, 2, !dbg !1793
    #dbg_value(i32 %shr.i, !355, !DIExpression(), !1794)
  %arrayidx.i44 = getelementptr inbounds i8, ptr %arrayidx, i64 2, !dbg !1795
    #dbg_value(ptr %rc, !324, !DIExpression(), !1796)
    #dbg_value(ptr %arrayidx.i44, !330, !DIExpression(), !1796)
    #dbg_value(i32 %shr.i, !331, !DIExpression(), !1796)
  %arrayidx.i.i = getelementptr inbounds [58 x i32], ptr %symbols.i, i64 0, i64 %inc.i, !dbg !1798
  store i32 %shr.i, ptr %arrayidx.i.i, align 4, !dbg !1799
  %3 = load i64, ptr %count.i, align 8, !dbg !1800
  %arrayidx2.i.i = getelementptr inbounds [58 x ptr], ptr %probs.i, i64 0, i64 %3, !dbg !1801
  store ptr %arrayidx.i44, ptr %arrayidx2.i.i, align 8, !dbg !1802
  %4 = load i64, ptr %count.i, align 8, !dbg !1803
  %inc.i.i = add i64 %4, 1, !dbg !1803
  store i64 %inc.i.i, ptr %count.i, align 8, !dbg !1803
  %add.i = or disjoint i32 %shr.i, 2, !dbg !1804
    #dbg_value(i32 %add.i, !354, !DIExpression(), !1791)
    #dbg_value(i32 1, !352, !DIExpression(), !1791)
    #dbg_value(i32 %and.i91.6, !355, !DIExpression(), !1794)
    #dbg_value(ptr %arrayidx.i93.6, !330, !DIExpression(), !1796)
    #dbg_value(i32 %and.i91.6, !331, !DIExpression(), !1796)
    #dbg_value(i32 %add.i98.6, !354, !DIExpression(), !1791)
    #dbg_value(i32 0, !352, !DIExpression(), !1791)
    #dbg_value(i32 %and.i91.7, !355, !DIExpression(), !1794)
    #dbg_value(ptr %arrayidx.i93.7, !330, !DIExpression(), !1796)
    #dbg_value(i32 %and.i91.7, !331, !DIExpression(), !1796)
    #dbg_value(!DIArgList(i32 %and.i91.7, i32 %add.i98.6), !354, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !1791)
  br label %if.end12, !dbg !1805

if.else:                                          ; preds = %entry
    #dbg_value(i32 1, !331, !DIExpression(), !1775)
  store i32 1, ptr %arrayidx.i, align 4, !dbg !1806
  %5 = load i64, ptr %count.i, align 8, !dbg !1807
  %arrayidx2.i49 = getelementptr inbounds [58 x ptr], ptr %probs.i, i64 0, i64 %5, !dbg !1808
  store ptr %lc, ptr %arrayidx2.i49, align 8, !dbg !1809
  %6 = load i64, ptr %count.i, align 8, !dbg !1810
  %inc.i50 = add i64 %6, 1, !dbg !1810
  store i64 %inc.i50, ptr %count.i, align 8, !dbg !1810
  %sub2 = add i32 %len, -10, !dbg !1811
    #dbg_value(i32 %len, !1766, !DIExpression(DW_OP_constu, 10, DW_OP_minus, DW_OP_stack_value), !1768)
  %cmp3 = icmp ult i32 %sub2, 8, !dbg !1812
  %choice2 = getelementptr inbounds i8, ptr %lc, i64 2, !dbg !1814
    #dbg_value(ptr %rc, !324, !DIExpression(), !1815)
    #dbg_value(ptr %rc, !324, !DIExpression(), !1818)
    #dbg_value(ptr %choice2, !330, !DIExpression(), !1815)
    #dbg_value(ptr %choice2, !330, !DIExpression(), !1818)
  %arrayidx.i53 = getelementptr inbounds [58 x i32], ptr %symbols.i, i64 0, i64 %inc.i50, !dbg !1821
  br i1 %cmp3, label %if.then4, label %if.else8, !dbg !1822

if.then4:                                         ; preds = %if.else
    #dbg_value(i32 0, !331, !DIExpression(), !1815)
  store i32 0, ptr %arrayidx.i53, align 4, !dbg !1823
  %7 = load i64, ptr %count.i, align 8, !dbg !1824
  %arrayidx2.i55 = getelementptr inbounds [58 x ptr], ptr %probs.i, i64 0, i64 %7, !dbg !1825
  store ptr %choice2, ptr %arrayidx2.i55, align 8, !dbg !1826
  %8 = load i64, ptr %count.i, align 8, !dbg !1827
  %inc.i56 = add i64 %8, 1, !dbg !1827
  store i64 %inc.i56, ptr %count.i, align 8, !dbg !1827
  %mid = getelementptr inbounds i8, ptr %lc, i64 260, !dbg !1828
  %idxprom5 = zext i32 %pos_state to i64, !dbg !1829
  %arrayidx6 = getelementptr inbounds [16 x [8 x i16]], ptr %mid, i64 0, i64 %idxprom5, !dbg !1829
    #dbg_value(ptr %rc, !346, !DIExpression(), !1830)
    #dbg_value(ptr %arrayidx6, !351, !DIExpression(), !1830)
    #dbg_value(i32 3, !352, !DIExpression(), !1830)
    #dbg_value(i32 %len, !353, !DIExpression(DW_OP_constu, 10, DW_OP_minus, DW_OP_stack_value), !1830)
    #dbg_value(i32 1, !354, !DIExpression(), !1830)
    #dbg_value(i32 3, !352, !DIExpression(), !1830)
    #dbg_value(i32 1, !354, !DIExpression(), !1830)
    #dbg_value(i32 2, !352, !DIExpression(), !1830)
  %shr.i65 = lshr i32 %sub2, 2, !dbg !1832
    #dbg_value(i32 %shr.i65, !355, !DIExpression(), !1833)
  %arrayidx.i68 = getelementptr inbounds i8, ptr %arrayidx6, i64 2, !dbg !1834
    #dbg_value(ptr %rc, !324, !DIExpression(), !1835)
    #dbg_value(ptr %arrayidx.i68, !330, !DIExpression(), !1835)
    #dbg_value(i32 %shr.i65, !331, !DIExpression(), !1835)
  %arrayidx.i.i69 = getelementptr inbounds [58 x i32], ptr %symbols.i, i64 0, i64 %inc.i56, !dbg !1837
  store i32 %shr.i65, ptr %arrayidx.i.i69, align 4, !dbg !1838
  %9 = load i64, ptr %count.i, align 8, !dbg !1839
  %arrayidx2.i.i70 = getelementptr inbounds [58 x ptr], ptr %probs.i, i64 0, i64 %9, !dbg !1840
  store ptr %arrayidx.i68, ptr %arrayidx2.i.i70, align 8, !dbg !1841
  %10 = load i64, ptr %count.i, align 8, !dbg !1842
  %inc.i.i71 = add i64 %10, 1, !dbg !1842
  store i64 %inc.i.i71, ptr %count.i, align 8, !dbg !1842
  %add.i73 = or disjoint i32 %shr.i65, 2, !dbg !1843
    #dbg_value(i32 %add.i73, !354, !DIExpression(), !1830)
    #dbg_value(i32 1, !352, !DIExpression(), !1830)
    #dbg_value(i32 %and.i91.6, !355, !DIExpression(), !1833)
    #dbg_value(ptr %arrayidx.i93.6, !330, !DIExpression(), !1835)
    #dbg_value(i32 %and.i91.6, !331, !DIExpression(), !1835)
    #dbg_value(i32 %add.i98.6, !354, !DIExpression(), !1830)
    #dbg_value(i32 0, !352, !DIExpression(), !1830)
    #dbg_value(i32 %and.i91.7, !355, !DIExpression(), !1833)
    #dbg_value(ptr %arrayidx.i93.7, !330, !DIExpression(), !1835)
    #dbg_value(i32 %and.i91.7, !331, !DIExpression(), !1835)
    #dbg_value(!DIArgList(i32 %and.i91.7, i32 %add.i98.6), !354, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !1830)
  br label %if.end12, !dbg !1805

if.else8:                                         ; preds = %if.else
    #dbg_value(i32 1, !331, !DIExpression(), !1818)
  store i32 1, ptr %arrayidx.i53, align 4, !dbg !1844
  %11 = load i64, ptr %count.i, align 8, !dbg !1845
  %arrayidx2.i80 = getelementptr inbounds [58 x ptr], ptr %probs.i, i64 0, i64 %11, !dbg !1846
  store ptr %choice2, ptr %arrayidx2.i80, align 8, !dbg !1847
  %12 = load i64, ptr %count.i, align 8, !dbg !1848
  %inc.i81 = add i64 %12, 1, !dbg !1848
  store i64 %inc.i81, ptr %count.i, align 8, !dbg !1848
  %sub10 = add i32 %len, -18, !dbg !1849
    #dbg_value(i32 %len, !1766, !DIExpression(DW_OP_constu, 18, DW_OP_minus, DW_OP_stack_value), !1768)
  %high = getelementptr inbounds i8, ptr %lc, i64 516, !dbg !1850
    #dbg_value(ptr %rc, !346, !DIExpression(), !1851)
    #dbg_value(ptr %high, !351, !DIExpression(), !1851)
    #dbg_value(i32 8, !352, !DIExpression(), !1851)
    #dbg_value(i32 %len, !353, !DIExpression(DW_OP_constu, 18, DW_OP_minus, DW_OP_stack_value), !1851)
    #dbg_value(i32 1, !354, !DIExpression(), !1851)
    #dbg_value(i32 8, !352, !DIExpression(), !1851)
    #dbg_value(i32 1, !354, !DIExpression(), !1851)
    #dbg_value(i32 7, !352, !DIExpression(), !1851)
  %shr.i90 = lshr i32 %sub10, 7, !dbg !1853
  %and.i91 = and i32 %shr.i90, 1, !dbg !1854
    #dbg_value(i32 %and.i91, !355, !DIExpression(), !1855)
  %arrayidx.i93 = getelementptr inbounds i8, ptr %lc, i64 518, !dbg !1856
    #dbg_value(ptr %rc, !324, !DIExpression(), !1857)
    #dbg_value(ptr %arrayidx.i93, !330, !DIExpression(), !1857)
    #dbg_value(i32 %and.i91, !331, !DIExpression(), !1857)
  %arrayidx.i.i94 = getelementptr inbounds [58 x i32], ptr %symbols.i, i64 0, i64 %inc.i81, !dbg !1859
  store i32 %and.i91, ptr %arrayidx.i.i94, align 4, !dbg !1860
  %13 = load i64, ptr %count.i, align 8, !dbg !1861
  %arrayidx2.i.i95 = getelementptr inbounds [58 x ptr], ptr %probs.i, i64 0, i64 %13, !dbg !1862
  store ptr %arrayidx.i93, ptr %arrayidx2.i.i95, align 8, !dbg !1863
  %14 = load i64, ptr %count.i, align 8, !dbg !1864
  %inc.i.i96 = add i64 %14, 1, !dbg !1864
  store i64 %inc.i.i96, ptr %count.i, align 8, !dbg !1864
  %add.i98 = or disjoint i32 %and.i91, 2, !dbg !1865
    #dbg_value(i32 %add.i98, !354, !DIExpression(), !1851)
    #dbg_value(i32 6, !352, !DIExpression(), !1851)
  %shr.i90.1 = lshr i32 %sub10, 6, !dbg !1853
  %and.i91.1 = and i32 %shr.i90.1, 1, !dbg !1854
    #dbg_value(i32 %and.i91.1, !355, !DIExpression(), !1855)
  %idxprom.i92.1 = zext nneg i32 %add.i98 to i64, !dbg !1856
  %arrayidx.i93.1 = getelementptr inbounds i16, ptr %high, i64 %idxprom.i92.1, !dbg !1856
    #dbg_value(ptr %arrayidx.i93.1, !330, !DIExpression(), !1857)
    #dbg_value(i32 %and.i91.1, !331, !DIExpression(), !1857)
  %arrayidx.i.i94.1 = getelementptr inbounds [58 x i32], ptr %symbols.i, i64 0, i64 %inc.i.i96, !dbg !1859
  store i32 %and.i91.1, ptr %arrayidx.i.i94.1, align 4, !dbg !1860
  %15 = load i64, ptr %count.i, align 8, !dbg !1861
  %arrayidx2.i.i95.1 = getelementptr inbounds [58 x ptr], ptr %probs.i, i64 0, i64 %15, !dbg !1862
  store ptr %arrayidx.i93.1, ptr %arrayidx2.i.i95.1, align 8, !dbg !1863
  %16 = load i64, ptr %count.i, align 8, !dbg !1864
  %inc.i.i96.1 = add i64 %16, 1, !dbg !1864
  store i64 %inc.i.i96.1, ptr %count.i, align 8, !dbg !1864
  %shl.i97.1 = shl nuw nsw i32 %add.i98, 1, !dbg !1866
  %add.i98.1 = or disjoint i32 %and.i91.1, %shl.i97.1, !dbg !1865
    #dbg_value(i32 %add.i98.1, !354, !DIExpression(), !1851)
    #dbg_value(i32 5, !352, !DIExpression(), !1851)
  %shr.i90.2 = lshr i32 %sub10, 5, !dbg !1853
  %and.i91.2 = and i32 %shr.i90.2, 1, !dbg !1854
    #dbg_value(i32 %and.i91.2, !355, !DIExpression(), !1855)
  %idxprom.i92.2 = zext nneg i32 %add.i98.1 to i64, !dbg !1856
  %arrayidx.i93.2 = getelementptr inbounds i16, ptr %high, i64 %idxprom.i92.2, !dbg !1856
    #dbg_value(ptr %arrayidx.i93.2, !330, !DIExpression(), !1857)
    #dbg_value(i32 %and.i91.2, !331, !DIExpression(), !1857)
  %arrayidx.i.i94.2 = getelementptr inbounds [58 x i32], ptr %symbols.i, i64 0, i64 %inc.i.i96.1, !dbg !1859
  store i32 %and.i91.2, ptr %arrayidx.i.i94.2, align 4, !dbg !1860
  %17 = load i64, ptr %count.i, align 8, !dbg !1861
  %arrayidx2.i.i95.2 = getelementptr inbounds [58 x ptr], ptr %probs.i, i64 0, i64 %17, !dbg !1862
  store ptr %arrayidx.i93.2, ptr %arrayidx2.i.i95.2, align 8, !dbg !1863
  %18 = load i64, ptr %count.i, align 8, !dbg !1864
  %inc.i.i96.2 = add i64 %18, 1, !dbg !1864
  store i64 %inc.i.i96.2, ptr %count.i, align 8, !dbg !1864
  %shl.i97.2 = shl nuw nsw i32 %add.i98.1, 1, !dbg !1866
  %add.i98.2 = or disjoint i32 %and.i91.2, %shl.i97.2, !dbg !1865
    #dbg_value(i32 %add.i98.2, !354, !DIExpression(), !1851)
    #dbg_value(i32 4, !352, !DIExpression(), !1851)
  %shr.i90.3 = lshr i32 %sub10, 4, !dbg !1853
  %and.i91.3 = and i32 %shr.i90.3, 1, !dbg !1854
    #dbg_value(i32 %and.i91.3, !355, !DIExpression(), !1855)
  %idxprom.i92.3 = zext nneg i32 %add.i98.2 to i64, !dbg !1856
  %arrayidx.i93.3 = getelementptr inbounds i16, ptr %high, i64 %idxprom.i92.3, !dbg !1856
    #dbg_value(ptr %arrayidx.i93.3, !330, !DIExpression(), !1857)
    #dbg_value(i32 %and.i91.3, !331, !DIExpression(), !1857)
  %arrayidx.i.i94.3 = getelementptr inbounds [58 x i32], ptr %symbols.i, i64 0, i64 %inc.i.i96.2, !dbg !1859
  store i32 %and.i91.3, ptr %arrayidx.i.i94.3, align 4, !dbg !1860
  %19 = load i64, ptr %count.i, align 8, !dbg !1861
  %arrayidx2.i.i95.3 = getelementptr inbounds [58 x ptr], ptr %probs.i, i64 0, i64 %19, !dbg !1862
  store ptr %arrayidx.i93.3, ptr %arrayidx2.i.i95.3, align 8, !dbg !1863
  %20 = load i64, ptr %count.i, align 8, !dbg !1864
  %inc.i.i96.3 = add i64 %20, 1, !dbg !1864
  store i64 %inc.i.i96.3, ptr %count.i, align 8, !dbg !1864
  %shl.i97.3 = shl nuw nsw i32 %add.i98.2, 1, !dbg !1866
  %add.i98.3 = or disjoint i32 %and.i91.3, %shl.i97.3, !dbg !1865
    #dbg_value(i32 %add.i98.3, !354, !DIExpression(), !1851)
    #dbg_value(i32 3, !352, !DIExpression(), !1851)
  %shr.i90.4 = lshr i32 %sub10, 3, !dbg !1853
  %and.i91.4 = and i32 %shr.i90.4, 1, !dbg !1854
    #dbg_value(i32 %and.i91.4, !355, !DIExpression(), !1855)
  %idxprom.i92.4 = zext nneg i32 %add.i98.3 to i64, !dbg !1856
  %arrayidx.i93.4 = getelementptr inbounds i16, ptr %high, i64 %idxprom.i92.4, !dbg !1856
    #dbg_value(ptr %arrayidx.i93.4, !330, !DIExpression(), !1857)
    #dbg_value(i32 %and.i91.4, !331, !DIExpression(), !1857)
  %arrayidx.i.i94.4 = getelementptr inbounds [58 x i32], ptr %symbols.i, i64 0, i64 %inc.i.i96.3, !dbg !1859
  store i32 %and.i91.4, ptr %arrayidx.i.i94.4, align 4, !dbg !1860
  %21 = load i64, ptr %count.i, align 8, !dbg !1861
  %arrayidx2.i.i95.4 = getelementptr inbounds [58 x ptr], ptr %probs.i, i64 0, i64 %21, !dbg !1862
  store ptr %arrayidx.i93.4, ptr %arrayidx2.i.i95.4, align 8, !dbg !1863
  %22 = load i64, ptr %count.i, align 8, !dbg !1864
  %inc.i.i96.4 = add i64 %22, 1, !dbg !1864
  store i64 %inc.i.i96.4, ptr %count.i, align 8, !dbg !1864
  %shl.i97.4 = shl nuw nsw i32 %add.i98.3, 1, !dbg !1866
  %add.i98.4 = or disjoint i32 %and.i91.4, %shl.i97.4, !dbg !1865
    #dbg_value(i32 %add.i98.4, !354, !DIExpression(), !1851)
    #dbg_value(i32 2, !352, !DIExpression(), !1851)
  %shr.i90.5 = lshr i32 %sub10, 2, !dbg !1853
  %and.i91.5 = and i32 %shr.i90.5, 1, !dbg !1854
    #dbg_value(i32 %and.i91.5, !355, !DIExpression(), !1855)
  %idxprom.i92.5 = zext nneg i32 %add.i98.4 to i64, !dbg !1856
  %arrayidx.i93.5 = getelementptr inbounds i16, ptr %high, i64 %idxprom.i92.5, !dbg !1856
    #dbg_value(ptr %arrayidx.i93.5, !330, !DIExpression(), !1857)
    #dbg_value(i32 %and.i91.5, !331, !DIExpression(), !1857)
  %arrayidx.i.i94.5 = getelementptr inbounds [58 x i32], ptr %symbols.i, i64 0, i64 %inc.i.i96.4, !dbg !1859
  store i32 %and.i91.5, ptr %arrayidx.i.i94.5, align 4, !dbg !1860
  %23 = load i64, ptr %count.i, align 8, !dbg !1861
  %arrayidx2.i.i95.5 = getelementptr inbounds [58 x ptr], ptr %probs.i, i64 0, i64 %23, !dbg !1862
  store ptr %arrayidx.i93.5, ptr %arrayidx2.i.i95.5, align 8, !dbg !1863
  %24 = load i64, ptr %count.i, align 8, !dbg !1864
  %inc.i.i96.5 = add i64 %24, 1, !dbg !1864
  store i64 %inc.i.i96.5, ptr %count.i, align 8, !dbg !1864
  %shl.i97.5 = shl nuw nsw i32 %add.i98.4, 1, !dbg !1866
  %add.i98.5 = or disjoint i32 %and.i91.5, %shl.i97.5, !dbg !1865
    #dbg_value(i32 %add.i98.5, !354, !DIExpression(), !1851)
    #dbg_value(i32 1, !352, !DIExpression(), !1851)
    #dbg_value(i32 %and.i91.6, !355, !DIExpression(), !1855)
    #dbg_value(ptr %arrayidx.i93.6, !330, !DIExpression(), !1857)
    #dbg_value(i32 %and.i91.6, !331, !DIExpression(), !1857)
    #dbg_value(i32 %add.i98.6, !354, !DIExpression(), !1851)
    #dbg_value(i32 0, !352, !DIExpression(), !1851)
    #dbg_value(i32 %and.i91.7, !355, !DIExpression(), !1855)
    #dbg_value(ptr %arrayidx.i93.7, !330, !DIExpression(), !1857)
    #dbg_value(i32 %and.i91.7, !331, !DIExpression(), !1857)
    #dbg_value(!DIArgList(i32 %and.i91.7, i32 %add.i98.6), !354, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !1851)
  br label %if.end12, !dbg !1805

if.end12:                                         ; preds = %if.else8, %if.then4, %if.then
  %sub10.sink = phi i32 [ %sub10, %if.else8 ], [ %sub2, %if.then4 ], [ %sub, %if.then ]
  %add.i98.5.sink108 = phi i32 [ %add.i98.5, %if.else8 ], [ %add.i73, %if.then4 ], [ %add.i, %if.then ]
  %high.sink107 = phi ptr [ %high, %if.else8 ], [ %arrayidx6, %if.then4 ], [ %arrayidx, %if.then ]
  %inc.i.i96.5.sink = phi i64 [ %inc.i.i96.5, %if.else8 ], [ %inc.i.i71, %if.then4 ], [ %inc.i.i, %if.then ]
  %shr.i90.6 = lshr i32 %sub10.sink, 1, !dbg !1867
  %and.i91.6 = and i32 %shr.i90.6, 1, !dbg !1868
  %idxprom.i92.6 = zext nneg i32 %add.i98.5.sink108 to i64, !dbg !1869
  %arrayidx.i93.6 = getelementptr inbounds i16, ptr %high.sink107, i64 %idxprom.i92.6, !dbg !1869
  %arrayidx.i.i94.6 = getelementptr inbounds [58 x i32], ptr %symbols.i, i64 0, i64 %inc.i.i96.5.sink, !dbg !1870
  store i32 %and.i91.6, ptr %arrayidx.i.i94.6, align 4, !dbg !1872
  %25 = load i64, ptr %count.i, align 8, !dbg !1873
  %arrayidx2.i.i95.6 = getelementptr inbounds [58 x ptr], ptr %probs.i, i64 0, i64 %25, !dbg !1874
  store ptr %arrayidx.i93.6, ptr %arrayidx2.i.i95.6, align 8, !dbg !1875
  %26 = load i64, ptr %count.i, align 8, !dbg !1876
  %inc.i.i96.6 = add i64 %26, 1, !dbg !1876
  store i64 %inc.i.i96.6, ptr %count.i, align 8, !dbg !1876
  %shl.i97.6 = shl nuw nsw i32 %add.i98.5.sink108, 1, !dbg !1877
  %add.i98.6 = or disjoint i32 %and.i91.6, %shl.i97.6, !dbg !1878
  %and.i91.7 = and i32 %len, 1, !dbg !1868
  %idxprom.i92.7 = zext nneg i32 %add.i98.6 to i64, !dbg !1869
  %arrayidx.i93.7 = getelementptr inbounds i16, ptr %high.sink107, i64 %idxprom.i92.7, !dbg !1869
  %arrayidx.i.i94.7 = getelementptr inbounds [58 x i32], ptr %symbols.i, i64 0, i64 %inc.i.i96.6, !dbg !1870
  store i32 %and.i91.7, ptr %arrayidx.i.i94.7, align 4, !dbg !1872
  %27 = load i64, ptr %count.i, align 8, !dbg !1873
  %arrayidx2.i.i95.7 = getelementptr inbounds [58 x ptr], ptr %probs.i, i64 0, i64 %27, !dbg !1874
  store ptr %arrayidx.i93.7, ptr %arrayidx2.i.i95.7, align 8, !dbg !1875
  %28 = load i64, ptr %count.i, align 8, !dbg !1876
  %inc.i.i96.7 = add i64 %28, 1, !dbg !1876
  store i64 %inc.i.i96.7, ptr %count.i, align 8, !dbg !1876
  br i1 %fast_mode, label %if.end19, label %if.then13, !dbg !1805

if.then13:                                        ; preds = %if.end12
  %counters = getelementptr inbounds i8, ptr %lc, i64 18440, !dbg !1879
  %idxprom14 = zext i32 %pos_state to i64, !dbg !1882
  %arrayidx15 = getelementptr inbounds [16 x i32], ptr %counters, i64 0, i64 %idxprom14, !dbg !1882
  %29 = load i32, ptr %arrayidx15, align 4, !dbg !1883
  %dec = add i32 %29, -1, !dbg !1883
  store i32 %dec, ptr %arrayidx15, align 4, !dbg !1883
  %cmp16 = icmp eq i32 %dec, 0, !dbg !1884
  br i1 %cmp16, label %if.then17, label %if.end19, !dbg !1885

if.then17:                                        ; preds = %if.then13
  tail call fastcc void @length_update_prices(ptr noundef nonnull %lc, i32 noundef %pos_state), !dbg !1886
  br label %if.end19, !dbg !1886

if.end19:                                         ; preds = %if.then13, %if.then17, %if.end12
  ret void, !dbg !1887
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @length_update_prices(ptr nocapture noundef %lc, i32 noundef %pos_state) unnamed_addr #4 !dbg !1888 {
entry:
    #dbg_value(ptr %lc, !1892, !DIExpression(), !1902)
    #dbg_value(i32 %pos_state, !1893, !DIExpression(), !1902)
  %table_size1 = getelementptr inbounds i8, ptr %lc, i64 18436, !dbg !1903
  %0 = load i32, ptr %table_size1, align 4, !dbg !1903
    #dbg_value(i32 %0, !1894, !DIExpression(), !1902)
  %counters = getelementptr inbounds i8, ptr %lc, i64 18440, !dbg !1904
  %idxprom = zext i32 %pos_state to i64, !dbg !1905
  %arrayidx = getelementptr inbounds [16 x i32], ptr %counters, i64 0, i64 %idxprom, !dbg !1905
  store i32 %0, ptr %arrayidx, align 4, !dbg !1906
  %1 = load i16, ptr %lc, align 4, !dbg !1907
    #dbg_value(i16 %1, !1908, !DIExpression(), !1915)
  %2 = lshr i16 %1, 4, !dbg !1917
  %idxprom.i = zext nneg i16 %2 to i64, !dbg !1918
  %arrayidx.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i, !dbg !1918
  %3 = load i8, ptr %arrayidx.i, align 1, !dbg !1918
  %conv1.i = zext i8 %3 to i32, !dbg !1918
    #dbg_value(i32 %conv1.i, !1895, !DIExpression(), !1902)
    #dbg_value(i16 %1, !1919, !DIExpression(), !1922)
  %4 = xor i16 %2, 127, !dbg !1924
  %idxprom.i80 = zext nneg i16 %4 to i64, !dbg !1925
  %arrayidx.i81 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i80, !dbg !1925
  %5 = load i8, ptr %arrayidx.i81, align 1, !dbg !1925
  %conv1.i82 = zext i8 %5 to i32, !dbg !1925
    #dbg_value(i32 %conv1.i82, !1896, !DIExpression(), !1902)
  %choice24 = getelementptr inbounds i8, ptr %lc, i64 2, !dbg !1926
  %6 = load i16, ptr %choice24, align 2, !dbg !1926
    #dbg_value(i16 %6, !1908, !DIExpression(), !1927)
  %7 = lshr i16 %6, 4, !dbg !1929
  %idxprom.i83 = zext nneg i16 %7 to i64, !dbg !1930
  %arrayidx.i84 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i83, !dbg !1930
  %8 = load i8, ptr %arrayidx.i84, align 1, !dbg !1930
  %conv1.i85 = zext i8 %8 to i32, !dbg !1930
  %add = add nuw nsw i32 %conv1.i85, %conv1.i82, !dbg !1931
    #dbg_value(i32 %add, !1897, !DIExpression(), !1902)
    #dbg_value(i16 %6, !1919, !DIExpression(), !1932)
  %9 = xor i16 %7, 127, !dbg !1934
  %idxprom.i86 = zext nneg i16 %9 to i64, !dbg !1935
  %arrayidx.i87 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i86, !dbg !1935
  %10 = load i8, ptr %arrayidx.i87, align 1, !dbg !1935
  %conv1.i88 = zext i8 %10 to i32, !dbg !1935
  %add8 = add nuw nsw i32 %conv1.i88, %conv1.i82, !dbg !1936
    #dbg_value(i32 %add8, !1898, !DIExpression(), !1902)
  %prices9 = getelementptr inbounds i8, ptr %lc, i64 1028, !dbg !1937
  %arrayidx11 = getelementptr inbounds [16 x [272 x i32]], ptr %prices9, i64 0, i64 %idxprom, !dbg !1938
    #dbg_value(ptr %arrayidx11, !1899, !DIExpression(), !1902)
    #dbg_value(i32 0, !1901, !DIExpression(), !1902)
  %invariant.umin = tail call i32 @llvm.umin.i32(i32 %0, i32 8), !dbg !1939
    #dbg_value(i32 0, !1901, !DIExpression(), !1902)
  %.not = icmp eq i32 %0, 0, !dbg !1941
  br i1 %.not, label %for.cond36.preheader, label %for.body.lr.ph, !dbg !1943

for.body.lr.ph:                                   ; preds = %entry
  %low = getelementptr inbounds i8, ptr %lc, i64 4
  %arrayidx14 = getelementptr inbounds [16 x [8 x i16]], ptr %low, i64 0, i64 %idxprom
    #dbg_value(i64 0, !1901, !DIExpression(), !1902)
    #dbg_value(ptr %arrayidx14, !1944, !DIExpression(), !1956)
    #dbg_value(i32 3, !1951, !DIExpression(), !1956)
    #dbg_value(i32 0, !1953, !DIExpression(), !1956)
    #dbg_value(i64 0, !1952, !DIExpression(DW_OP_constu, 8, DW_OP_or, DW_OP_stack_value), !1956)
  br label %do.body.i, !dbg !1958

for.cond20.preheader:                             ; preds = %rc_bittree_price.exit.7, %rc_bittree_price.exit.6, %rc_bittree_price.exit.5, %rc_bittree_price.exit.4, %rc_bittree_price.exit.3, %rc_bittree_price.exit.2, %rc_bittree_price.exit.1, %rc_bittree_price.exit
  %invariant.umin126 = tail call i32 @llvm.umin.i32(i32 %0, i32 16), !dbg !1959
    #dbg_value(i32 %invariant.umin, !1901, !DIExpression(), !1902)
  %11 = icmp ugt i32 %0, 8, !dbg !1961
  br i1 %11, label %for.body25.lr.ph, label %for.cond36.preheader, !dbg !1959

for.body25.lr.ph:                                 ; preds = %for.cond20.preheader
  %mid = getelementptr inbounds i8, ptr %lc, i64 260
  %arrayidx27 = getelementptr inbounds [16 x [8 x i16]], ptr %mid, i64 0, i64 %idxprom
  %12 = zext nneg i32 %invariant.umin to i64, !dbg !1959
  %wide.trip.count136 = zext nneg i32 %invariant.umin126 to i64, !dbg !1961
    #dbg_value(i64 %12, !1901, !DIExpression(), !1902)
    #dbg_value(ptr %arrayidx27, !1944, !DIExpression(), !1963)
    #dbg_value(i32 3, !1951, !DIExpression(), !1963)
    #dbg_value(i32 0, !1953, !DIExpression(), !1963)
    #dbg_value(i64 %12, !1952, !DIExpression(), !1963)
  br label %do.body.i92, !dbg !1965

do.body.i:                                        ; preds = %do.body.i, %for.body.lr.ph
  %price.0.i = phi i32 [ 0, %for.body.lr.ph ], [ %add1.i, %do.body.i ], !dbg !1956
  %symbol.addr.0.i = phi i32 [ 8, %for.body.lr.ph ], [ %shr.i, %do.body.i ], !dbg !1956
    #dbg_value(i32 %symbol.addr.0.i, !1952, !DIExpression(), !1956)
    #dbg_value(i32 %price.0.i, !1953, !DIExpression(), !1956)
  %and.i = and i32 %symbol.addr.0.i, 1, !dbg !1966
    #dbg_value(i32 %and.i, !1954, !DIExpression(), !1967)
  %shr.i = lshr i32 %symbol.addr.0.i, 1, !dbg !1968
    #dbg_value(i32 %shr.i, !1952, !DIExpression(), !1956)
  %idxprom.i89 = zext nneg i32 %shr.i to i64, !dbg !1969
  %arrayidx.i90 = getelementptr inbounds i16, ptr %arrayidx14, i64 %idxprom.i89, !dbg !1969
  %13 = load i16, ptr %arrayidx.i90, align 2, !dbg !1969
    #dbg_value(i16 %13, !1970, !DIExpression(), !1976)
    #dbg_value(i32 %and.i, !1975, !DIExpression(), !1976)
  %conv.i.i = zext i16 %13 to i64, !dbg !1978
  %14 = icmp eq i32 %and.i, 0, !dbg !1979
  %and.i.i = select i1 %14, i64 0, i64 2032, !dbg !1979
  %xor.i.i = xor i64 %and.i.i, %conv.i.i, !dbg !1980
  %shr.i.i = lshr i64 %xor.i.i, 4, !dbg !1981
  %arrayidx.i.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i, !dbg !1982
  %15 = load i8, ptr %arrayidx.i.i, align 1, !dbg !1982
  %conv1.i.i = zext i8 %15 to i32, !dbg !1982
  %add1.i = add i32 %price.0.i, %conv1.i.i, !dbg !1983
    #dbg_value(i32 %add1.i, !1953, !DIExpression(), !1956)
  %cmp.not.i = icmp eq i32 %shr.i, 1, !dbg !1984
  br i1 %cmp.not.i, label %rc_bittree_price.exit, label %do.body.i, !dbg !1985, !llvm.loop !1986

rc_bittree_price.exit:                            ; preds = %do.body.i
  %add17 = add i32 %add1.i, %conv1.i, !dbg !1988
  store i32 %add17, ptr %arrayidx11, align 4, !dbg !1989
    #dbg_value(i64 1, !1901, !DIExpression(), !1902)
  %exitcond.not = icmp eq i32 %0, 1, !dbg !1941
  br i1 %exitcond.not, label %for.cond20.preheader, label %do.body.i.1, !dbg !1943, !llvm.loop !1990

do.body.i.1:                                      ; preds = %rc_bittree_price.exit, %do.body.i.1
  %price.0.i.1 = phi i32 [ %add1.i.1, %do.body.i.1 ], [ 0, %rc_bittree_price.exit ], !dbg !1956
  %symbol.addr.0.i.1 = phi i32 [ %shr.i.1, %do.body.i.1 ], [ 9, %rc_bittree_price.exit ], !dbg !1956
    #dbg_value(i32 %symbol.addr.0.i.1, !1952, !DIExpression(), !1956)
    #dbg_value(i32 %price.0.i.1, !1953, !DIExpression(), !1956)
  %and.i.1 = and i32 %symbol.addr.0.i.1, 1, !dbg !1966
    #dbg_value(i32 %and.i.1, !1954, !DIExpression(), !1967)
  %shr.i.1 = lshr i32 %symbol.addr.0.i.1, 1, !dbg !1968
    #dbg_value(i32 %shr.i.1, !1952, !DIExpression(), !1956)
  %idxprom.i89.1 = zext nneg i32 %shr.i.1 to i64, !dbg !1969
  %arrayidx.i90.1 = getelementptr inbounds i16, ptr %arrayidx14, i64 %idxprom.i89.1, !dbg !1969
  %16 = load i16, ptr %arrayidx.i90.1, align 2, !dbg !1969
    #dbg_value(i16 %16, !1970, !DIExpression(), !1976)
    #dbg_value(i32 %and.i.1, !1975, !DIExpression(), !1976)
  %conv.i.i.1 = zext i16 %16 to i64, !dbg !1978
  %17 = icmp eq i32 %and.i.1, 0, !dbg !1979
  %and.i.i.1 = select i1 %17, i64 0, i64 2032, !dbg !1979
  %xor.i.i.1 = xor i64 %and.i.i.1, %conv.i.i.1, !dbg !1980
  %shr.i.i.1 = lshr i64 %xor.i.i.1, 4, !dbg !1981
  %arrayidx.i.i.1 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i.1, !dbg !1982
  %18 = load i8, ptr %arrayidx.i.i.1, align 1, !dbg !1982
  %conv1.i.i.1 = zext i8 %18 to i32, !dbg !1982
  %add1.i.1 = add i32 %price.0.i.1, %conv1.i.i.1, !dbg !1983
    #dbg_value(i32 %add1.i.1, !1953, !DIExpression(), !1956)
  %cmp.not.i.1 = icmp eq i32 %shr.i.1, 1, !dbg !1984
  br i1 %cmp.not.i.1, label %rc_bittree_price.exit.1, label %do.body.i.1, !dbg !1985, !llvm.loop !1986

rc_bittree_price.exit.1:                          ; preds = %do.body.i.1
  %add17.1 = add i32 %add1.i.1, %conv1.i, !dbg !1988
  %arrayidx19.1 = getelementptr inbounds i8, ptr %arrayidx11, i64 4, !dbg !1992
  store i32 %add17.1, ptr %arrayidx19.1, align 4, !dbg !1989
    #dbg_value(i64 2, !1901, !DIExpression(), !1902)
  %exitcond.not.1 = icmp eq i32 %0, 2, !dbg !1941
  br i1 %exitcond.not.1, label %for.cond20.preheader, label %do.body.i.2, !dbg !1943, !llvm.loop !1990

do.body.i.2:                                      ; preds = %rc_bittree_price.exit.1, %do.body.i.2
  %price.0.i.2 = phi i32 [ %add1.i.2, %do.body.i.2 ], [ 0, %rc_bittree_price.exit.1 ], !dbg !1956
  %symbol.addr.0.i.2 = phi i32 [ %shr.i.2, %do.body.i.2 ], [ 10, %rc_bittree_price.exit.1 ], !dbg !1956
    #dbg_value(i32 %symbol.addr.0.i.2, !1952, !DIExpression(), !1956)
    #dbg_value(i32 %price.0.i.2, !1953, !DIExpression(), !1956)
  %and.i.2 = and i32 %symbol.addr.0.i.2, 1, !dbg !1966
    #dbg_value(i32 %and.i.2, !1954, !DIExpression(), !1967)
  %shr.i.2 = lshr i32 %symbol.addr.0.i.2, 1, !dbg !1968
    #dbg_value(i32 %shr.i.2, !1952, !DIExpression(), !1956)
  %idxprom.i89.2 = zext nneg i32 %shr.i.2 to i64, !dbg !1969
  %arrayidx.i90.2 = getelementptr inbounds i16, ptr %arrayidx14, i64 %idxprom.i89.2, !dbg !1969
  %19 = load i16, ptr %arrayidx.i90.2, align 2, !dbg !1969
    #dbg_value(i16 %19, !1970, !DIExpression(), !1976)
    #dbg_value(i32 %and.i.2, !1975, !DIExpression(), !1976)
  %conv.i.i.2 = zext i16 %19 to i64, !dbg !1978
  %20 = icmp eq i32 %and.i.2, 0, !dbg !1979
  %and.i.i.2 = select i1 %20, i64 0, i64 2032, !dbg !1979
  %xor.i.i.2 = xor i64 %and.i.i.2, %conv.i.i.2, !dbg !1980
  %shr.i.i.2 = lshr i64 %xor.i.i.2, 4, !dbg !1981
  %arrayidx.i.i.2 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i.2, !dbg !1982
  %21 = load i8, ptr %arrayidx.i.i.2, align 1, !dbg !1982
  %conv1.i.i.2 = zext i8 %21 to i32, !dbg !1982
  %add1.i.2 = add i32 %price.0.i.2, %conv1.i.i.2, !dbg !1983
    #dbg_value(i32 %add1.i.2, !1953, !DIExpression(), !1956)
  %cmp.not.i.2 = icmp eq i32 %shr.i.2, 1, !dbg !1984
  br i1 %cmp.not.i.2, label %rc_bittree_price.exit.2, label %do.body.i.2, !dbg !1985, !llvm.loop !1986

rc_bittree_price.exit.2:                          ; preds = %do.body.i.2
  %add17.2 = add i32 %add1.i.2, %conv1.i, !dbg !1988
  %arrayidx19.2 = getelementptr inbounds i8, ptr %arrayidx11, i64 8, !dbg !1992
  store i32 %add17.2, ptr %arrayidx19.2, align 4, !dbg !1989
    #dbg_value(i64 3, !1901, !DIExpression(), !1902)
  %exitcond.not.2 = icmp eq i32 %0, 3, !dbg !1941
  br i1 %exitcond.not.2, label %for.cond20.preheader, label %do.body.i.3, !dbg !1943, !llvm.loop !1990

do.body.i.3:                                      ; preds = %rc_bittree_price.exit.2, %do.body.i.3
  %price.0.i.3 = phi i32 [ %add1.i.3, %do.body.i.3 ], [ 0, %rc_bittree_price.exit.2 ], !dbg !1956
  %symbol.addr.0.i.3 = phi i32 [ %shr.i.3, %do.body.i.3 ], [ 11, %rc_bittree_price.exit.2 ], !dbg !1956
    #dbg_value(i32 %symbol.addr.0.i.3, !1952, !DIExpression(), !1956)
    #dbg_value(i32 %price.0.i.3, !1953, !DIExpression(), !1956)
  %and.i.3 = and i32 %symbol.addr.0.i.3, 1, !dbg !1966
    #dbg_value(i32 %and.i.3, !1954, !DIExpression(), !1967)
  %shr.i.3 = lshr i32 %symbol.addr.0.i.3, 1, !dbg !1968
    #dbg_value(i32 %shr.i.3, !1952, !DIExpression(), !1956)
  %idxprom.i89.3 = zext nneg i32 %shr.i.3 to i64, !dbg !1969
  %arrayidx.i90.3 = getelementptr inbounds i16, ptr %arrayidx14, i64 %idxprom.i89.3, !dbg !1969
  %22 = load i16, ptr %arrayidx.i90.3, align 2, !dbg !1969
    #dbg_value(i16 %22, !1970, !DIExpression(), !1976)
    #dbg_value(i32 %and.i.3, !1975, !DIExpression(), !1976)
  %conv.i.i.3 = zext i16 %22 to i64, !dbg !1978
  %23 = icmp eq i32 %and.i.3, 0, !dbg !1979
  %and.i.i.3 = select i1 %23, i64 0, i64 2032, !dbg !1979
  %xor.i.i.3 = xor i64 %and.i.i.3, %conv.i.i.3, !dbg !1980
  %shr.i.i.3 = lshr i64 %xor.i.i.3, 4, !dbg !1981
  %arrayidx.i.i.3 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i.3, !dbg !1982
  %24 = load i8, ptr %arrayidx.i.i.3, align 1, !dbg !1982
  %conv1.i.i.3 = zext i8 %24 to i32, !dbg !1982
  %add1.i.3 = add i32 %price.0.i.3, %conv1.i.i.3, !dbg !1983
    #dbg_value(i32 %add1.i.3, !1953, !DIExpression(), !1956)
  %cmp.not.i.3 = icmp eq i32 %shr.i.3, 1, !dbg !1984
  br i1 %cmp.not.i.3, label %rc_bittree_price.exit.3, label %do.body.i.3, !dbg !1985, !llvm.loop !1986

rc_bittree_price.exit.3:                          ; preds = %do.body.i.3
  %add17.3 = add i32 %add1.i.3, %conv1.i, !dbg !1988
  %arrayidx19.3 = getelementptr inbounds i8, ptr %arrayidx11, i64 12, !dbg !1992
  store i32 %add17.3, ptr %arrayidx19.3, align 4, !dbg !1989
    #dbg_value(i64 4, !1901, !DIExpression(), !1902)
  %exitcond.not.3 = icmp eq i32 %0, 4, !dbg !1941
  br i1 %exitcond.not.3, label %for.cond20.preheader, label %do.body.i.4, !dbg !1943, !llvm.loop !1990

do.body.i.4:                                      ; preds = %rc_bittree_price.exit.3, %do.body.i.4
  %price.0.i.4 = phi i32 [ %add1.i.4, %do.body.i.4 ], [ 0, %rc_bittree_price.exit.3 ], !dbg !1956
  %symbol.addr.0.i.4 = phi i32 [ %shr.i.4, %do.body.i.4 ], [ 12, %rc_bittree_price.exit.3 ], !dbg !1956
    #dbg_value(i32 %symbol.addr.0.i.4, !1952, !DIExpression(), !1956)
    #dbg_value(i32 %price.0.i.4, !1953, !DIExpression(), !1956)
  %and.i.4 = and i32 %symbol.addr.0.i.4, 1, !dbg !1966
    #dbg_value(i32 %and.i.4, !1954, !DIExpression(), !1967)
  %shr.i.4 = lshr i32 %symbol.addr.0.i.4, 1, !dbg !1968
    #dbg_value(i32 %shr.i.4, !1952, !DIExpression(), !1956)
  %idxprom.i89.4 = zext nneg i32 %shr.i.4 to i64, !dbg !1969
  %arrayidx.i90.4 = getelementptr inbounds i16, ptr %arrayidx14, i64 %idxprom.i89.4, !dbg !1969
  %25 = load i16, ptr %arrayidx.i90.4, align 2, !dbg !1969
    #dbg_value(i16 %25, !1970, !DIExpression(), !1976)
    #dbg_value(i32 %and.i.4, !1975, !DIExpression(), !1976)
  %conv.i.i.4 = zext i16 %25 to i64, !dbg !1978
  %26 = icmp eq i32 %and.i.4, 0, !dbg !1979
  %and.i.i.4 = select i1 %26, i64 0, i64 2032, !dbg !1979
  %xor.i.i.4 = xor i64 %and.i.i.4, %conv.i.i.4, !dbg !1980
  %shr.i.i.4 = lshr i64 %xor.i.i.4, 4, !dbg !1981
  %arrayidx.i.i.4 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i.4, !dbg !1982
  %27 = load i8, ptr %arrayidx.i.i.4, align 1, !dbg !1982
  %conv1.i.i.4 = zext i8 %27 to i32, !dbg !1982
  %add1.i.4 = add i32 %price.0.i.4, %conv1.i.i.4, !dbg !1983
    #dbg_value(i32 %add1.i.4, !1953, !DIExpression(), !1956)
  %cmp.not.i.4 = icmp eq i32 %shr.i.4, 1, !dbg !1984
  br i1 %cmp.not.i.4, label %rc_bittree_price.exit.4, label %do.body.i.4, !dbg !1985, !llvm.loop !1986

rc_bittree_price.exit.4:                          ; preds = %do.body.i.4
  %add17.4 = add i32 %add1.i.4, %conv1.i, !dbg !1988
  %arrayidx19.4 = getelementptr inbounds i8, ptr %arrayidx11, i64 16, !dbg !1992
  store i32 %add17.4, ptr %arrayidx19.4, align 4, !dbg !1989
    #dbg_value(i64 5, !1901, !DIExpression(), !1902)
  %exitcond.not.4 = icmp eq i32 %0, 5, !dbg !1941
  br i1 %exitcond.not.4, label %for.cond20.preheader, label %do.body.i.5, !dbg !1943, !llvm.loop !1990

do.body.i.5:                                      ; preds = %rc_bittree_price.exit.4, %do.body.i.5
  %price.0.i.5 = phi i32 [ %add1.i.5, %do.body.i.5 ], [ 0, %rc_bittree_price.exit.4 ], !dbg !1956
  %symbol.addr.0.i.5 = phi i32 [ %shr.i.5, %do.body.i.5 ], [ 13, %rc_bittree_price.exit.4 ], !dbg !1956
    #dbg_value(i32 %symbol.addr.0.i.5, !1952, !DIExpression(), !1956)
    #dbg_value(i32 %price.0.i.5, !1953, !DIExpression(), !1956)
  %and.i.5 = and i32 %symbol.addr.0.i.5, 1, !dbg !1966
    #dbg_value(i32 %and.i.5, !1954, !DIExpression(), !1967)
  %shr.i.5 = lshr i32 %symbol.addr.0.i.5, 1, !dbg !1968
    #dbg_value(i32 %shr.i.5, !1952, !DIExpression(), !1956)
  %idxprom.i89.5 = zext nneg i32 %shr.i.5 to i64, !dbg !1969
  %arrayidx.i90.5 = getelementptr inbounds i16, ptr %arrayidx14, i64 %idxprom.i89.5, !dbg !1969
  %28 = load i16, ptr %arrayidx.i90.5, align 2, !dbg !1969
    #dbg_value(i16 %28, !1970, !DIExpression(), !1976)
    #dbg_value(i32 %and.i.5, !1975, !DIExpression(), !1976)
  %conv.i.i.5 = zext i16 %28 to i64, !dbg !1978
  %29 = icmp eq i32 %and.i.5, 0, !dbg !1979
  %and.i.i.5 = select i1 %29, i64 0, i64 2032, !dbg !1979
  %xor.i.i.5 = xor i64 %and.i.i.5, %conv.i.i.5, !dbg !1980
  %shr.i.i.5 = lshr i64 %xor.i.i.5, 4, !dbg !1981
  %arrayidx.i.i.5 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i.5, !dbg !1982
  %30 = load i8, ptr %arrayidx.i.i.5, align 1, !dbg !1982
  %conv1.i.i.5 = zext i8 %30 to i32, !dbg !1982
  %add1.i.5 = add i32 %price.0.i.5, %conv1.i.i.5, !dbg !1983
    #dbg_value(i32 %add1.i.5, !1953, !DIExpression(), !1956)
  %cmp.not.i.5 = icmp eq i32 %shr.i.5, 1, !dbg !1984
  br i1 %cmp.not.i.5, label %rc_bittree_price.exit.5, label %do.body.i.5, !dbg !1985, !llvm.loop !1986

rc_bittree_price.exit.5:                          ; preds = %do.body.i.5
  %add17.5 = add i32 %add1.i.5, %conv1.i, !dbg !1988
  %arrayidx19.5 = getelementptr inbounds i8, ptr %arrayidx11, i64 20, !dbg !1992
  store i32 %add17.5, ptr %arrayidx19.5, align 4, !dbg !1989
    #dbg_value(i64 6, !1901, !DIExpression(), !1902)
  %exitcond.not.5 = icmp eq i32 %0, 6, !dbg !1941
  br i1 %exitcond.not.5, label %for.cond20.preheader, label %do.body.i.6, !dbg !1943, !llvm.loop !1990

do.body.i.6:                                      ; preds = %rc_bittree_price.exit.5, %do.body.i.6
  %price.0.i.6 = phi i32 [ %add1.i.6, %do.body.i.6 ], [ 0, %rc_bittree_price.exit.5 ], !dbg !1956
  %symbol.addr.0.i.6 = phi i32 [ %shr.i.6, %do.body.i.6 ], [ 14, %rc_bittree_price.exit.5 ], !dbg !1956
    #dbg_value(i32 %symbol.addr.0.i.6, !1952, !DIExpression(), !1956)
    #dbg_value(i32 %price.0.i.6, !1953, !DIExpression(), !1956)
  %and.i.6 = and i32 %symbol.addr.0.i.6, 1, !dbg !1966
    #dbg_value(i32 %and.i.6, !1954, !DIExpression(), !1967)
  %shr.i.6 = lshr i32 %symbol.addr.0.i.6, 1, !dbg !1968
    #dbg_value(i32 %shr.i.6, !1952, !DIExpression(), !1956)
  %idxprom.i89.6 = zext nneg i32 %shr.i.6 to i64, !dbg !1969
  %arrayidx.i90.6 = getelementptr inbounds i16, ptr %arrayidx14, i64 %idxprom.i89.6, !dbg !1969
  %31 = load i16, ptr %arrayidx.i90.6, align 2, !dbg !1969
    #dbg_value(i16 %31, !1970, !DIExpression(), !1976)
    #dbg_value(i32 %and.i.6, !1975, !DIExpression(), !1976)
  %conv.i.i.6 = zext i16 %31 to i64, !dbg !1978
  %32 = icmp eq i32 %and.i.6, 0, !dbg !1979
  %and.i.i.6 = select i1 %32, i64 0, i64 2032, !dbg !1979
  %xor.i.i.6 = xor i64 %and.i.i.6, %conv.i.i.6, !dbg !1980
  %shr.i.i.6 = lshr i64 %xor.i.i.6, 4, !dbg !1981
  %arrayidx.i.i.6 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i.6, !dbg !1982
  %33 = load i8, ptr %arrayidx.i.i.6, align 1, !dbg !1982
  %conv1.i.i.6 = zext i8 %33 to i32, !dbg !1982
  %add1.i.6 = add i32 %price.0.i.6, %conv1.i.i.6, !dbg !1983
    #dbg_value(i32 %add1.i.6, !1953, !DIExpression(), !1956)
  %cmp.not.i.6 = icmp eq i32 %shr.i.6, 1, !dbg !1984
  br i1 %cmp.not.i.6, label %rc_bittree_price.exit.6, label %do.body.i.6, !dbg !1985, !llvm.loop !1986

rc_bittree_price.exit.6:                          ; preds = %do.body.i.6
  %add17.6 = add i32 %add1.i.6, %conv1.i, !dbg !1988
  %arrayidx19.6 = getelementptr inbounds i8, ptr %arrayidx11, i64 24, !dbg !1992
  store i32 %add17.6, ptr %arrayidx19.6, align 4, !dbg !1989
    #dbg_value(i64 7, !1901, !DIExpression(), !1902)
  %exitcond.not.6 = icmp eq i32 %0, 7, !dbg !1941
  br i1 %exitcond.not.6, label %for.cond20.preheader, label %do.body.i.7, !dbg !1943, !llvm.loop !1990

do.body.i.7:                                      ; preds = %rc_bittree_price.exit.6, %do.body.i.7
  %price.0.i.7 = phi i32 [ %add1.i.7, %do.body.i.7 ], [ 0, %rc_bittree_price.exit.6 ], !dbg !1956
  %symbol.addr.0.i.7 = phi i32 [ %shr.i.7, %do.body.i.7 ], [ 15, %rc_bittree_price.exit.6 ], !dbg !1956
    #dbg_value(i32 %symbol.addr.0.i.7, !1952, !DIExpression(), !1956)
    #dbg_value(i32 %price.0.i.7, !1953, !DIExpression(), !1956)
  %and.i.7 = and i32 %symbol.addr.0.i.7, 1, !dbg !1966
    #dbg_value(i32 %and.i.7, !1954, !DIExpression(), !1967)
  %shr.i.7 = lshr i32 %symbol.addr.0.i.7, 1, !dbg !1968
    #dbg_value(i32 %shr.i.7, !1952, !DIExpression(), !1956)
  %idxprom.i89.7 = zext nneg i32 %shr.i.7 to i64, !dbg !1969
  %arrayidx.i90.7 = getelementptr inbounds i16, ptr %arrayidx14, i64 %idxprom.i89.7, !dbg !1969
  %34 = load i16, ptr %arrayidx.i90.7, align 2, !dbg !1969
    #dbg_value(i16 %34, !1970, !DIExpression(), !1976)
    #dbg_value(i32 %and.i.7, !1975, !DIExpression(), !1976)
  %conv.i.i.7 = zext i16 %34 to i64, !dbg !1978
  %35 = icmp eq i32 %and.i.7, 0, !dbg !1979
  %and.i.i.7 = select i1 %35, i64 0, i64 2032, !dbg !1979
  %xor.i.i.7 = xor i64 %and.i.i.7, %conv.i.i.7, !dbg !1980
  %shr.i.i.7 = lshr i64 %xor.i.i.7, 4, !dbg !1981
  %arrayidx.i.i.7 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i.7, !dbg !1982
  %36 = load i8, ptr %arrayidx.i.i.7, align 1, !dbg !1982
  %conv1.i.i.7 = zext i8 %36 to i32, !dbg !1982
  %add1.i.7 = add i32 %price.0.i.7, %conv1.i.i.7, !dbg !1983
    #dbg_value(i32 %add1.i.7, !1953, !DIExpression(), !1956)
  %cmp.not.i.7 = icmp eq i32 %shr.i.7, 1, !dbg !1984
  br i1 %cmp.not.i.7, label %rc_bittree_price.exit.7, label %do.body.i.7, !dbg !1985, !llvm.loop !1986

rc_bittree_price.exit.7:                          ; preds = %do.body.i.7
  %add17.7 = add i32 %add1.i.7, %conv1.i, !dbg !1988
  %arrayidx19.7 = getelementptr inbounds i8, ptr %arrayidx11, i64 28, !dbg !1992
  store i32 %add17.7, ptr %arrayidx19.7, align 4, !dbg !1989
    #dbg_value(i64 8, !1901, !DIExpression(), !1902)
  br label %for.cond20.preheader

for.cond36.preheader:                             ; preds = %rc_bittree_price.exit107, %rc_bittree_price.exit107.1, %rc_bittree_price.exit107.2, %rc_bittree_price.exit107.3, %rc_bittree_price.exit107.4, %rc_bittree_price.exit107.5, %rc_bittree_price.exit107.6, %rc_bittree_price.exit107.7, %entry, %for.cond20.preheader
  %i.1.lcssa = phi i32 [ %invariant.umin, %for.cond20.preheader ], [ 0, %entry ], [ %invariant.umin126, %rc_bittree_price.exit107.7 ], [ %invariant.umin126, %rc_bittree_price.exit107.6 ], [ %invariant.umin126, %rc_bittree_price.exit107.5 ], [ %invariant.umin126, %rc_bittree_price.exit107.4 ], [ %invariant.umin126, %rc_bittree_price.exit107.3 ], [ %invariant.umin126, %rc_bittree_price.exit107.2 ], [ %invariant.umin126, %rc_bittree_price.exit107.1 ], [ %invariant.umin126, %rc_bittree_price.exit107 ], !dbg !1902
    #dbg_value(i32 %i.1.lcssa, !1901, !DIExpression(), !1902)
  %cmp37129 = icmp ult i32 %i.1.lcssa, %0, !dbg !1993
  br i1 %cmp37129, label %for.body38.lr.ph, label %for.end48, !dbg !1996

for.body38.lr.ph:                                 ; preds = %for.cond36.preheader
  %high = getelementptr inbounds i8, ptr %lc, i64 516
  %37 = zext nneg i32 %i.1.lcssa to i64, !dbg !1996
  %wide.trip.count141 = zext i32 %0 to i64, !dbg !1993
  br label %for.body38, !dbg !1996

do.body.i92:                                      ; preds = %do.body.i92, %for.body25.lr.ph
  %price.0.i93 = phi i32 [ 0, %for.body25.lr.ph ], [ %add1.i105, %do.body.i92 ], !dbg !1963
  %symbol.addr.0.i94 = phi i32 [ %invariant.umin, %for.body25.lr.ph ], [ %shr.i96, %do.body.i92 ], !dbg !1963
    #dbg_value(i32 %symbol.addr.0.i94, !1952, !DIExpression(), !1963)
    #dbg_value(i32 %price.0.i93, !1953, !DIExpression(), !1963)
  %and.i95 = and i32 %symbol.addr.0.i94, 1, !dbg !1997
    #dbg_value(i32 %and.i95, !1954, !DIExpression(), !1998)
  %shr.i96 = lshr i32 %symbol.addr.0.i94, 1, !dbg !1999
    #dbg_value(i32 %shr.i96, !1952, !DIExpression(), !1963)
  %idxprom.i97 = zext nneg i32 %shr.i96 to i64, !dbg !2000
  %arrayidx.i98 = getelementptr inbounds i16, ptr %arrayidx27, i64 %idxprom.i97, !dbg !2000
  %38 = load i16, ptr %arrayidx.i98, align 2, !dbg !2000
    #dbg_value(i16 %38, !1970, !DIExpression(), !2001)
    #dbg_value(i32 %and.i95, !1975, !DIExpression(), !2001)
  %conv.i.i99 = zext i16 %38 to i64, !dbg !2003
  %39 = icmp eq i32 %and.i95, 0, !dbg !2004
  %and.i.i100 = select i1 %39, i64 0, i64 2032, !dbg !2004
  %xor.i.i101 = xor i64 %and.i.i100, %conv.i.i99, !dbg !2005
  %shr.i.i102 = lshr i64 %xor.i.i101, 4, !dbg !2006
  %arrayidx.i.i103 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i102, !dbg !2007
  %40 = load i8, ptr %arrayidx.i.i103, align 1, !dbg !2007
  %conv1.i.i104 = zext i8 %40 to i32, !dbg !2007
  %add1.i105 = add i32 %price.0.i93, %conv1.i.i104, !dbg !2008
    #dbg_value(i32 %add1.i105, !1953, !DIExpression(), !1963)
  %cmp.not.i106 = icmp eq i32 %shr.i96, 1, !dbg !2009
  br i1 %cmp.not.i106, label %rc_bittree_price.exit107, label %do.body.i92, !dbg !2010, !llvm.loop !2011

rc_bittree_price.exit107:                         ; preds = %do.body.i92
  %add30 = add i32 %add, %add1.i105, !dbg !2013
  %arrayidx32 = getelementptr inbounds i32, ptr %arrayidx11, i64 %12, !dbg !2014
  store i32 %add30, ptr %arrayidx32, align 4, !dbg !2015
  %indvars.iv.next134 = add nuw nsw i64 %12, 1, !dbg !2016
    #dbg_value(i64 %indvars.iv.next134, !1901, !DIExpression(), !1902)
  %exitcond137.not = icmp eq i64 %indvars.iv.next134, %wide.trip.count136, !dbg !1961
  br i1 %exitcond137.not, label %for.cond36.preheader, label %for.body25.1, !dbg !1959, !llvm.loop !2017

for.body25.1:                                     ; preds = %rc_bittree_price.exit107
    #dbg_value(i64 %indvars.iv.next134, !1901, !DIExpression(), !1902)
    #dbg_value(ptr %arrayidx27, !1944, !DIExpression(), !1963)
    #dbg_value(i32 3, !1951, !DIExpression(), !1963)
    #dbg_value(i32 0, !1953, !DIExpression(), !1963)
    #dbg_value(i64 %indvars.iv.next134, !1952, !DIExpression(), !1963)
  %41 = trunc nuw nsw i64 %indvars.iv.next134 to i32, !dbg !1965
  br label %do.body.i92.1, !dbg !1965

do.body.i92.1:                                    ; preds = %do.body.i92.1, %for.body25.1
  %price.0.i93.1 = phi i32 [ 0, %for.body25.1 ], [ %add1.i105.1, %do.body.i92.1 ], !dbg !1963
  %symbol.addr.0.i94.1 = phi i32 [ %41, %for.body25.1 ], [ %shr.i96.1, %do.body.i92.1 ], !dbg !1963
    #dbg_value(i32 %symbol.addr.0.i94.1, !1952, !DIExpression(), !1963)
    #dbg_value(i32 %price.0.i93.1, !1953, !DIExpression(), !1963)
  %and.i95.1 = and i32 %symbol.addr.0.i94.1, 1, !dbg !1997
    #dbg_value(i32 %and.i95.1, !1954, !DIExpression(), !1998)
  %shr.i96.1 = lshr i32 %symbol.addr.0.i94.1, 1, !dbg !1999
    #dbg_value(i32 %shr.i96.1, !1952, !DIExpression(), !1963)
  %idxprom.i97.1 = zext nneg i32 %shr.i96.1 to i64, !dbg !2000
  %arrayidx.i98.1 = getelementptr inbounds i16, ptr %arrayidx27, i64 %idxprom.i97.1, !dbg !2000
  %42 = load i16, ptr %arrayidx.i98.1, align 2, !dbg !2000
    #dbg_value(i16 %42, !1970, !DIExpression(), !2001)
    #dbg_value(i32 %and.i95.1, !1975, !DIExpression(), !2001)
  %conv.i.i99.1 = zext i16 %42 to i64, !dbg !2003
  %43 = icmp eq i32 %and.i95.1, 0, !dbg !2004
  %and.i.i100.1 = select i1 %43, i64 0, i64 2032, !dbg !2004
  %xor.i.i101.1 = xor i64 %and.i.i100.1, %conv.i.i99.1, !dbg !2005
  %shr.i.i102.1 = lshr i64 %xor.i.i101.1, 4, !dbg !2006
  %arrayidx.i.i103.1 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i102.1, !dbg !2007
  %44 = load i8, ptr %arrayidx.i.i103.1, align 1, !dbg !2007
  %conv1.i.i104.1 = zext i8 %44 to i32, !dbg !2007
  %add1.i105.1 = add i32 %price.0.i93.1, %conv1.i.i104.1, !dbg !2008
    #dbg_value(i32 %add1.i105.1, !1953, !DIExpression(), !1963)
  %cmp.not.i106.1 = icmp eq i32 %shr.i96.1, 1, !dbg !2009
  br i1 %cmp.not.i106.1, label %rc_bittree_price.exit107.1, label %do.body.i92.1, !dbg !2010, !llvm.loop !2011

rc_bittree_price.exit107.1:                       ; preds = %do.body.i92.1
  %add30.1 = add i32 %add, %add1.i105.1, !dbg !2013
  %arrayidx32.1 = getelementptr inbounds i32, ptr %arrayidx11, i64 %indvars.iv.next134, !dbg !2014
  store i32 %add30.1, ptr %arrayidx32.1, align 4, !dbg !2015
  %indvars.iv.next134.1 = add nuw nsw i64 %12, 2, !dbg !2016
    #dbg_value(i64 %indvars.iv.next134.1, !1901, !DIExpression(), !1902)
  %exitcond137.not.1 = icmp eq i64 %indvars.iv.next134.1, %wide.trip.count136, !dbg !1961
  br i1 %exitcond137.not.1, label %for.cond36.preheader, label %for.body25.2, !dbg !1959, !llvm.loop !2017

for.body25.2:                                     ; preds = %rc_bittree_price.exit107.1
    #dbg_value(i64 %indvars.iv.next134.1, !1901, !DIExpression(), !1902)
    #dbg_value(ptr %arrayidx27, !1944, !DIExpression(), !1963)
    #dbg_value(i32 3, !1951, !DIExpression(), !1963)
    #dbg_value(i32 0, !1953, !DIExpression(), !1963)
    #dbg_value(i64 %indvars.iv.next134.1, !1952, !DIExpression(), !1963)
  %45 = trunc nuw nsw i64 %indvars.iv.next134.1 to i32, !dbg !1965
  br label %do.body.i92.2, !dbg !1965

do.body.i92.2:                                    ; preds = %do.body.i92.2, %for.body25.2
  %price.0.i93.2 = phi i32 [ 0, %for.body25.2 ], [ %add1.i105.2, %do.body.i92.2 ], !dbg !1963
  %symbol.addr.0.i94.2 = phi i32 [ %45, %for.body25.2 ], [ %shr.i96.2, %do.body.i92.2 ], !dbg !1963
    #dbg_value(i32 %symbol.addr.0.i94.2, !1952, !DIExpression(), !1963)
    #dbg_value(i32 %price.0.i93.2, !1953, !DIExpression(), !1963)
  %and.i95.2 = and i32 %symbol.addr.0.i94.2, 1, !dbg !1997
    #dbg_value(i32 %and.i95.2, !1954, !DIExpression(), !1998)
  %shr.i96.2 = lshr i32 %symbol.addr.0.i94.2, 1, !dbg !1999
    #dbg_value(i32 %shr.i96.2, !1952, !DIExpression(), !1963)
  %idxprom.i97.2 = zext nneg i32 %shr.i96.2 to i64, !dbg !2000
  %arrayidx.i98.2 = getelementptr inbounds i16, ptr %arrayidx27, i64 %idxprom.i97.2, !dbg !2000
  %46 = load i16, ptr %arrayidx.i98.2, align 2, !dbg !2000
    #dbg_value(i16 %46, !1970, !DIExpression(), !2001)
    #dbg_value(i32 %and.i95.2, !1975, !DIExpression(), !2001)
  %conv.i.i99.2 = zext i16 %46 to i64, !dbg !2003
  %47 = icmp eq i32 %and.i95.2, 0, !dbg !2004
  %and.i.i100.2 = select i1 %47, i64 0, i64 2032, !dbg !2004
  %xor.i.i101.2 = xor i64 %and.i.i100.2, %conv.i.i99.2, !dbg !2005
  %shr.i.i102.2 = lshr i64 %xor.i.i101.2, 4, !dbg !2006
  %arrayidx.i.i103.2 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i102.2, !dbg !2007
  %48 = load i8, ptr %arrayidx.i.i103.2, align 1, !dbg !2007
  %conv1.i.i104.2 = zext i8 %48 to i32, !dbg !2007
  %add1.i105.2 = add i32 %price.0.i93.2, %conv1.i.i104.2, !dbg !2008
    #dbg_value(i32 %add1.i105.2, !1953, !DIExpression(), !1963)
  %cmp.not.i106.2 = icmp eq i32 %shr.i96.2, 1, !dbg !2009
  br i1 %cmp.not.i106.2, label %rc_bittree_price.exit107.2, label %do.body.i92.2, !dbg !2010, !llvm.loop !2011

rc_bittree_price.exit107.2:                       ; preds = %do.body.i92.2
  %add30.2 = add i32 %add, %add1.i105.2, !dbg !2013
  %arrayidx32.2 = getelementptr inbounds i32, ptr %arrayidx11, i64 %indvars.iv.next134.1, !dbg !2014
  store i32 %add30.2, ptr %arrayidx32.2, align 4, !dbg !2015
  %indvars.iv.next134.2 = add nuw nsw i64 %12, 3, !dbg !2016
    #dbg_value(i64 %indvars.iv.next134.2, !1901, !DIExpression(), !1902)
  %exitcond137.not.2 = icmp eq i64 %indvars.iv.next134.2, %wide.trip.count136, !dbg !1961
  br i1 %exitcond137.not.2, label %for.cond36.preheader, label %for.body25.3, !dbg !1959, !llvm.loop !2017

for.body25.3:                                     ; preds = %rc_bittree_price.exit107.2
    #dbg_value(i64 %indvars.iv.next134.2, !1901, !DIExpression(), !1902)
    #dbg_value(ptr %arrayidx27, !1944, !DIExpression(), !1963)
    #dbg_value(i32 3, !1951, !DIExpression(), !1963)
    #dbg_value(i32 0, !1953, !DIExpression(), !1963)
    #dbg_value(i64 %indvars.iv.next134.2, !1952, !DIExpression(), !1963)
  %49 = trunc nuw nsw i64 %indvars.iv.next134.2 to i32, !dbg !1965
  br label %do.body.i92.3, !dbg !1965

do.body.i92.3:                                    ; preds = %do.body.i92.3, %for.body25.3
  %price.0.i93.3 = phi i32 [ 0, %for.body25.3 ], [ %add1.i105.3, %do.body.i92.3 ], !dbg !1963
  %symbol.addr.0.i94.3 = phi i32 [ %49, %for.body25.3 ], [ %shr.i96.3, %do.body.i92.3 ], !dbg !1963
    #dbg_value(i32 %symbol.addr.0.i94.3, !1952, !DIExpression(), !1963)
    #dbg_value(i32 %price.0.i93.3, !1953, !DIExpression(), !1963)
  %and.i95.3 = and i32 %symbol.addr.0.i94.3, 1, !dbg !1997
    #dbg_value(i32 %and.i95.3, !1954, !DIExpression(), !1998)
  %shr.i96.3 = lshr i32 %symbol.addr.0.i94.3, 1, !dbg !1999
    #dbg_value(i32 %shr.i96.3, !1952, !DIExpression(), !1963)
  %idxprom.i97.3 = zext nneg i32 %shr.i96.3 to i64, !dbg !2000
  %arrayidx.i98.3 = getelementptr inbounds i16, ptr %arrayidx27, i64 %idxprom.i97.3, !dbg !2000
  %50 = load i16, ptr %arrayidx.i98.3, align 2, !dbg !2000
    #dbg_value(i16 %50, !1970, !DIExpression(), !2001)
    #dbg_value(i32 %and.i95.3, !1975, !DIExpression(), !2001)
  %conv.i.i99.3 = zext i16 %50 to i64, !dbg !2003
  %51 = icmp eq i32 %and.i95.3, 0, !dbg !2004
  %and.i.i100.3 = select i1 %51, i64 0, i64 2032, !dbg !2004
  %xor.i.i101.3 = xor i64 %and.i.i100.3, %conv.i.i99.3, !dbg !2005
  %shr.i.i102.3 = lshr i64 %xor.i.i101.3, 4, !dbg !2006
  %arrayidx.i.i103.3 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i102.3, !dbg !2007
  %52 = load i8, ptr %arrayidx.i.i103.3, align 1, !dbg !2007
  %conv1.i.i104.3 = zext i8 %52 to i32, !dbg !2007
  %add1.i105.3 = add i32 %price.0.i93.3, %conv1.i.i104.3, !dbg !2008
    #dbg_value(i32 %add1.i105.3, !1953, !DIExpression(), !1963)
  %cmp.not.i106.3 = icmp eq i32 %shr.i96.3, 1, !dbg !2009
  br i1 %cmp.not.i106.3, label %rc_bittree_price.exit107.3, label %do.body.i92.3, !dbg !2010, !llvm.loop !2011

rc_bittree_price.exit107.3:                       ; preds = %do.body.i92.3
  %add30.3 = add i32 %add, %add1.i105.3, !dbg !2013
  %arrayidx32.3 = getelementptr inbounds i32, ptr %arrayidx11, i64 %indvars.iv.next134.2, !dbg !2014
  store i32 %add30.3, ptr %arrayidx32.3, align 4, !dbg !2015
  %indvars.iv.next134.3 = add nuw nsw i64 %12, 4, !dbg !2016
    #dbg_value(i64 %indvars.iv.next134.3, !1901, !DIExpression(), !1902)
  %exitcond137.not.3 = icmp eq i64 %indvars.iv.next134.3, %wide.trip.count136, !dbg !1961
  br i1 %exitcond137.not.3, label %for.cond36.preheader, label %for.body25.4, !dbg !1959, !llvm.loop !2017

for.body25.4:                                     ; preds = %rc_bittree_price.exit107.3
    #dbg_value(i64 %indvars.iv.next134.3, !1901, !DIExpression(), !1902)
    #dbg_value(ptr %arrayidx27, !1944, !DIExpression(), !1963)
    #dbg_value(i32 3, !1951, !DIExpression(), !1963)
    #dbg_value(i32 0, !1953, !DIExpression(), !1963)
    #dbg_value(i64 %indvars.iv.next134.3, !1952, !DIExpression(), !1963)
  %53 = trunc nuw nsw i64 %indvars.iv.next134.3 to i32, !dbg !1965
  br label %do.body.i92.4, !dbg !1965

do.body.i92.4:                                    ; preds = %do.body.i92.4, %for.body25.4
  %price.0.i93.4 = phi i32 [ 0, %for.body25.4 ], [ %add1.i105.4, %do.body.i92.4 ], !dbg !1963
  %symbol.addr.0.i94.4 = phi i32 [ %53, %for.body25.4 ], [ %shr.i96.4, %do.body.i92.4 ], !dbg !1963
    #dbg_value(i32 %symbol.addr.0.i94.4, !1952, !DIExpression(), !1963)
    #dbg_value(i32 %price.0.i93.4, !1953, !DIExpression(), !1963)
  %and.i95.4 = and i32 %symbol.addr.0.i94.4, 1, !dbg !1997
    #dbg_value(i32 %and.i95.4, !1954, !DIExpression(), !1998)
  %shr.i96.4 = lshr i32 %symbol.addr.0.i94.4, 1, !dbg !1999
    #dbg_value(i32 %shr.i96.4, !1952, !DIExpression(), !1963)
  %idxprom.i97.4 = zext nneg i32 %shr.i96.4 to i64, !dbg !2000
  %arrayidx.i98.4 = getelementptr inbounds i16, ptr %arrayidx27, i64 %idxprom.i97.4, !dbg !2000
  %54 = load i16, ptr %arrayidx.i98.4, align 2, !dbg !2000
    #dbg_value(i16 %54, !1970, !DIExpression(), !2001)
    #dbg_value(i32 %and.i95.4, !1975, !DIExpression(), !2001)
  %conv.i.i99.4 = zext i16 %54 to i64, !dbg !2003
  %55 = icmp eq i32 %and.i95.4, 0, !dbg !2004
  %and.i.i100.4 = select i1 %55, i64 0, i64 2032, !dbg !2004
  %xor.i.i101.4 = xor i64 %and.i.i100.4, %conv.i.i99.4, !dbg !2005
  %shr.i.i102.4 = lshr i64 %xor.i.i101.4, 4, !dbg !2006
  %arrayidx.i.i103.4 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i102.4, !dbg !2007
  %56 = load i8, ptr %arrayidx.i.i103.4, align 1, !dbg !2007
  %conv1.i.i104.4 = zext i8 %56 to i32, !dbg !2007
  %add1.i105.4 = add i32 %price.0.i93.4, %conv1.i.i104.4, !dbg !2008
    #dbg_value(i32 %add1.i105.4, !1953, !DIExpression(), !1963)
  %cmp.not.i106.4 = icmp eq i32 %shr.i96.4, 1, !dbg !2009
  br i1 %cmp.not.i106.4, label %rc_bittree_price.exit107.4, label %do.body.i92.4, !dbg !2010, !llvm.loop !2011

rc_bittree_price.exit107.4:                       ; preds = %do.body.i92.4
  %add30.4 = add i32 %add, %add1.i105.4, !dbg !2013
  %arrayidx32.4 = getelementptr inbounds i32, ptr %arrayidx11, i64 %indvars.iv.next134.3, !dbg !2014
  store i32 %add30.4, ptr %arrayidx32.4, align 4, !dbg !2015
  %indvars.iv.next134.4 = add nuw nsw i64 %12, 5, !dbg !2016
    #dbg_value(i64 %indvars.iv.next134.4, !1901, !DIExpression(), !1902)
  %exitcond137.not.4 = icmp eq i64 %indvars.iv.next134.4, %wide.trip.count136, !dbg !1961
  br i1 %exitcond137.not.4, label %for.cond36.preheader, label %for.body25.5, !dbg !1959, !llvm.loop !2017

for.body25.5:                                     ; preds = %rc_bittree_price.exit107.4
    #dbg_value(i64 %indvars.iv.next134.4, !1901, !DIExpression(), !1902)
    #dbg_value(ptr %arrayidx27, !1944, !DIExpression(), !1963)
    #dbg_value(i32 3, !1951, !DIExpression(), !1963)
    #dbg_value(i32 0, !1953, !DIExpression(), !1963)
    #dbg_value(i64 %indvars.iv.next134.4, !1952, !DIExpression(), !1963)
  %57 = trunc nuw nsw i64 %indvars.iv.next134.4 to i32, !dbg !1965
  br label %do.body.i92.5, !dbg !1965

do.body.i92.5:                                    ; preds = %do.body.i92.5, %for.body25.5
  %price.0.i93.5 = phi i32 [ 0, %for.body25.5 ], [ %add1.i105.5, %do.body.i92.5 ], !dbg !1963
  %symbol.addr.0.i94.5 = phi i32 [ %57, %for.body25.5 ], [ %shr.i96.5, %do.body.i92.5 ], !dbg !1963
    #dbg_value(i32 %symbol.addr.0.i94.5, !1952, !DIExpression(), !1963)
    #dbg_value(i32 %price.0.i93.5, !1953, !DIExpression(), !1963)
  %and.i95.5 = and i32 %symbol.addr.0.i94.5, 1, !dbg !1997
    #dbg_value(i32 %and.i95.5, !1954, !DIExpression(), !1998)
  %shr.i96.5 = lshr i32 %symbol.addr.0.i94.5, 1, !dbg !1999
    #dbg_value(i32 %shr.i96.5, !1952, !DIExpression(), !1963)
  %idxprom.i97.5 = zext nneg i32 %shr.i96.5 to i64, !dbg !2000
  %arrayidx.i98.5 = getelementptr inbounds i16, ptr %arrayidx27, i64 %idxprom.i97.5, !dbg !2000
  %58 = load i16, ptr %arrayidx.i98.5, align 2, !dbg !2000
    #dbg_value(i16 %58, !1970, !DIExpression(), !2001)
    #dbg_value(i32 %and.i95.5, !1975, !DIExpression(), !2001)
  %conv.i.i99.5 = zext i16 %58 to i64, !dbg !2003
  %59 = icmp eq i32 %and.i95.5, 0, !dbg !2004
  %and.i.i100.5 = select i1 %59, i64 0, i64 2032, !dbg !2004
  %xor.i.i101.5 = xor i64 %and.i.i100.5, %conv.i.i99.5, !dbg !2005
  %shr.i.i102.5 = lshr i64 %xor.i.i101.5, 4, !dbg !2006
  %arrayidx.i.i103.5 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i102.5, !dbg !2007
  %60 = load i8, ptr %arrayidx.i.i103.5, align 1, !dbg !2007
  %conv1.i.i104.5 = zext i8 %60 to i32, !dbg !2007
  %add1.i105.5 = add i32 %price.0.i93.5, %conv1.i.i104.5, !dbg !2008
    #dbg_value(i32 %add1.i105.5, !1953, !DIExpression(), !1963)
  %cmp.not.i106.5 = icmp eq i32 %shr.i96.5, 1, !dbg !2009
  br i1 %cmp.not.i106.5, label %rc_bittree_price.exit107.5, label %do.body.i92.5, !dbg !2010, !llvm.loop !2011

rc_bittree_price.exit107.5:                       ; preds = %do.body.i92.5
  %add30.5 = add i32 %add, %add1.i105.5, !dbg !2013
  %arrayidx32.5 = getelementptr inbounds i32, ptr %arrayidx11, i64 %indvars.iv.next134.4, !dbg !2014
  store i32 %add30.5, ptr %arrayidx32.5, align 4, !dbg !2015
  %indvars.iv.next134.5 = add nuw nsw i64 %12, 6, !dbg !2016
    #dbg_value(i64 %indvars.iv.next134.5, !1901, !DIExpression(), !1902)
  %exitcond137.not.5 = icmp eq i64 %indvars.iv.next134.5, %wide.trip.count136, !dbg !1961
  br i1 %exitcond137.not.5, label %for.cond36.preheader, label %for.body25.6, !dbg !1959, !llvm.loop !2017

for.body25.6:                                     ; preds = %rc_bittree_price.exit107.5
    #dbg_value(i64 %indvars.iv.next134.5, !1901, !DIExpression(), !1902)
    #dbg_value(ptr %arrayidx27, !1944, !DIExpression(), !1963)
    #dbg_value(i32 3, !1951, !DIExpression(), !1963)
    #dbg_value(i32 0, !1953, !DIExpression(), !1963)
    #dbg_value(i64 %indvars.iv.next134.5, !1952, !DIExpression(), !1963)
  %61 = trunc nuw nsw i64 %indvars.iv.next134.5 to i32, !dbg !1965
  br label %do.body.i92.6, !dbg !1965

do.body.i92.6:                                    ; preds = %do.body.i92.6, %for.body25.6
  %price.0.i93.6 = phi i32 [ 0, %for.body25.6 ], [ %add1.i105.6, %do.body.i92.6 ], !dbg !1963
  %symbol.addr.0.i94.6 = phi i32 [ %61, %for.body25.6 ], [ %shr.i96.6, %do.body.i92.6 ], !dbg !1963
    #dbg_value(i32 %symbol.addr.0.i94.6, !1952, !DIExpression(), !1963)
    #dbg_value(i32 %price.0.i93.6, !1953, !DIExpression(), !1963)
  %and.i95.6 = and i32 %symbol.addr.0.i94.6, 1, !dbg !1997
    #dbg_value(i32 %and.i95.6, !1954, !DIExpression(), !1998)
  %shr.i96.6 = lshr i32 %symbol.addr.0.i94.6, 1, !dbg !1999
    #dbg_value(i32 %shr.i96.6, !1952, !DIExpression(), !1963)
  %idxprom.i97.6 = zext nneg i32 %shr.i96.6 to i64, !dbg !2000
  %arrayidx.i98.6 = getelementptr inbounds i16, ptr %arrayidx27, i64 %idxprom.i97.6, !dbg !2000
  %62 = load i16, ptr %arrayidx.i98.6, align 2, !dbg !2000
    #dbg_value(i16 %62, !1970, !DIExpression(), !2001)
    #dbg_value(i32 %and.i95.6, !1975, !DIExpression(), !2001)
  %conv.i.i99.6 = zext i16 %62 to i64, !dbg !2003
  %63 = icmp eq i32 %and.i95.6, 0, !dbg !2004
  %and.i.i100.6 = select i1 %63, i64 0, i64 2032, !dbg !2004
  %xor.i.i101.6 = xor i64 %and.i.i100.6, %conv.i.i99.6, !dbg !2005
  %shr.i.i102.6 = lshr i64 %xor.i.i101.6, 4, !dbg !2006
  %arrayidx.i.i103.6 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i102.6, !dbg !2007
  %64 = load i8, ptr %arrayidx.i.i103.6, align 1, !dbg !2007
  %conv1.i.i104.6 = zext i8 %64 to i32, !dbg !2007
  %add1.i105.6 = add i32 %price.0.i93.6, %conv1.i.i104.6, !dbg !2008
    #dbg_value(i32 %add1.i105.6, !1953, !DIExpression(), !1963)
  %cmp.not.i106.6 = icmp eq i32 %shr.i96.6, 1, !dbg !2009
  br i1 %cmp.not.i106.6, label %rc_bittree_price.exit107.6, label %do.body.i92.6, !dbg !2010, !llvm.loop !2011

rc_bittree_price.exit107.6:                       ; preds = %do.body.i92.6
  %add30.6 = add i32 %add, %add1.i105.6, !dbg !2013
  %arrayidx32.6 = getelementptr inbounds i32, ptr %arrayidx11, i64 %indvars.iv.next134.5, !dbg !2014
  store i32 %add30.6, ptr %arrayidx32.6, align 4, !dbg !2015
  %indvars.iv.next134.6 = add nuw nsw i64 %12, 7, !dbg !2016
    #dbg_value(i64 %indvars.iv.next134.6, !1901, !DIExpression(), !1902)
  %exitcond137.not.6 = icmp eq i64 %indvars.iv.next134.6, %wide.trip.count136, !dbg !1961
  br i1 %exitcond137.not.6, label %for.cond36.preheader, label %for.body25.7, !dbg !1959, !llvm.loop !2017

for.body25.7:                                     ; preds = %rc_bittree_price.exit107.6
    #dbg_value(i64 %indvars.iv.next134.6, !1901, !DIExpression(), !1902)
    #dbg_value(ptr %arrayidx27, !1944, !DIExpression(), !1963)
    #dbg_value(i32 3, !1951, !DIExpression(), !1963)
    #dbg_value(i32 0, !1953, !DIExpression(), !1963)
    #dbg_value(i64 %indvars.iv.next134.6, !1952, !DIExpression(), !1963)
  %65 = trunc nuw nsw i64 %indvars.iv.next134.6 to i32, !dbg !1965
  br label %do.body.i92.7, !dbg !1965

do.body.i92.7:                                    ; preds = %do.body.i92.7, %for.body25.7
  %price.0.i93.7 = phi i32 [ 0, %for.body25.7 ], [ %add1.i105.7, %do.body.i92.7 ], !dbg !1963
  %symbol.addr.0.i94.7 = phi i32 [ %65, %for.body25.7 ], [ %shr.i96.7, %do.body.i92.7 ], !dbg !1963
    #dbg_value(i32 %symbol.addr.0.i94.7, !1952, !DIExpression(), !1963)
    #dbg_value(i32 %price.0.i93.7, !1953, !DIExpression(), !1963)
  %and.i95.7 = and i32 %symbol.addr.0.i94.7, 1, !dbg !1997
    #dbg_value(i32 %and.i95.7, !1954, !DIExpression(), !1998)
  %shr.i96.7 = lshr i32 %symbol.addr.0.i94.7, 1, !dbg !1999
    #dbg_value(i32 %shr.i96.7, !1952, !DIExpression(), !1963)
  %idxprom.i97.7 = zext nneg i32 %shr.i96.7 to i64, !dbg !2000
  %arrayidx.i98.7 = getelementptr inbounds i16, ptr %arrayidx27, i64 %idxprom.i97.7, !dbg !2000
  %66 = load i16, ptr %arrayidx.i98.7, align 2, !dbg !2000
    #dbg_value(i16 %66, !1970, !DIExpression(), !2001)
    #dbg_value(i32 %and.i95.7, !1975, !DIExpression(), !2001)
  %conv.i.i99.7 = zext i16 %66 to i64, !dbg !2003
  %67 = icmp eq i32 %and.i95.7, 0, !dbg !2004
  %and.i.i100.7 = select i1 %67, i64 0, i64 2032, !dbg !2004
  %xor.i.i101.7 = xor i64 %and.i.i100.7, %conv.i.i99.7, !dbg !2005
  %shr.i.i102.7 = lshr i64 %xor.i.i101.7, 4, !dbg !2006
  %arrayidx.i.i103.7 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i102.7, !dbg !2007
  %68 = load i8, ptr %arrayidx.i.i103.7, align 1, !dbg !2007
  %conv1.i.i104.7 = zext i8 %68 to i32, !dbg !2007
  %add1.i105.7 = add i32 %price.0.i93.7, %conv1.i.i104.7, !dbg !2008
    #dbg_value(i32 %add1.i105.7, !1953, !DIExpression(), !1963)
  %cmp.not.i106.7 = icmp eq i32 %shr.i96.7, 1, !dbg !2009
  br i1 %cmp.not.i106.7, label %rc_bittree_price.exit107.7, label %do.body.i92.7, !dbg !2010, !llvm.loop !2011

rc_bittree_price.exit107.7:                       ; preds = %do.body.i92.7
  %add30.7 = add i32 %add, %add1.i105.7, !dbg !2013
  %arrayidx32.7 = getelementptr inbounds i32, ptr %arrayidx11, i64 %indvars.iv.next134.6, !dbg !2014
  store i32 %add30.7, ptr %arrayidx32.7, align 4, !dbg !2015
    #dbg_value(i64 %12, !1901, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !1902)
  br label %for.cond36.preheader

for.body38:                                       ; preds = %for.body38.lr.ph, %rc_bittree_price.exit124
  %indvars.iv138 = phi i64 [ %37, %for.body38.lr.ph ], [ %indvars.iv.next139, %rc_bittree_price.exit124 ]
    #dbg_value(i64 %indvars.iv138, !1901, !DIExpression(), !1902)
    #dbg_value(ptr %high, !1944, !DIExpression(), !2019)
    #dbg_value(i32 8, !1951, !DIExpression(), !2019)
    #dbg_value(i64 %indvars.iv138, !1952, !DIExpression(DW_OP_constu, 16, DW_OP_minus, DW_OP_stack_value), !2019)
    #dbg_value(i32 0, !1953, !DIExpression(), !2019)
  %69 = trunc nuw i64 %indvars.iv138 to i32, !dbg !2021
  %add.i108 = add i32 %69, 240, !dbg !2021
    #dbg_value(i32 %add.i108, !1952, !DIExpression(), !2019)
  br label %do.body.i109, !dbg !2022

do.body.i109:                                     ; preds = %do.body.i109, %for.body38
  %price.0.i110 = phi i32 [ 0, %for.body38 ], [ %add1.i122, %do.body.i109 ], !dbg !2019
  %symbol.addr.0.i111 = phi i32 [ %add.i108, %for.body38 ], [ %shr.i113, %do.body.i109 ], !dbg !2019
    #dbg_value(i32 %symbol.addr.0.i111, !1952, !DIExpression(), !2019)
    #dbg_value(i32 %price.0.i110, !1953, !DIExpression(), !2019)
  %and.i112 = and i32 %symbol.addr.0.i111, 1, !dbg !2023
    #dbg_value(i32 %and.i112, !1954, !DIExpression(), !2024)
  %shr.i113 = lshr i32 %symbol.addr.0.i111, 1, !dbg !2025
    #dbg_value(i32 %shr.i113, !1952, !DIExpression(), !2019)
  %idxprom.i114 = zext nneg i32 %shr.i113 to i64, !dbg !2026
  %arrayidx.i115 = getelementptr inbounds i16, ptr %high, i64 %idxprom.i114, !dbg !2026
  %70 = load i16, ptr %arrayidx.i115, align 2, !dbg !2026
    #dbg_value(i16 %70, !1970, !DIExpression(), !2027)
    #dbg_value(i32 %and.i112, !1975, !DIExpression(), !2027)
  %conv.i.i116 = zext i16 %70 to i64, !dbg !2029
  %71 = icmp eq i32 %and.i112, 0, !dbg !2030
  %and.i.i117 = select i1 %71, i64 0, i64 2032, !dbg !2030
  %xor.i.i118 = xor i64 %and.i.i117, %conv.i.i116, !dbg !2031
  %shr.i.i119 = lshr i64 %xor.i.i118, 4, !dbg !2032
  %arrayidx.i.i120 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i119, !dbg !2033
  %72 = load i8, ptr %arrayidx.i.i120, align 1, !dbg !2033
  %conv1.i.i121 = zext i8 %72 to i32, !dbg !2033
  %add1.i122 = add i32 %price.0.i110, %conv1.i.i121, !dbg !2034
    #dbg_value(i32 %add1.i122, !1953, !DIExpression(), !2019)
  %cmp.not.i123 = icmp eq i32 %shr.i113, 1, !dbg !2035
  br i1 %cmp.not.i123, label %rc_bittree_price.exit124, label %do.body.i109, !dbg !2036, !llvm.loop !2037

rc_bittree_price.exit124:                         ; preds = %do.body.i109
  %add43 = add i32 %add8, %add1.i122, !dbg !2039
  %arrayidx45 = getelementptr inbounds i32, ptr %arrayidx11, i64 %indvars.iv138, !dbg !2040
  store i32 %add43, ptr %arrayidx45, align 4, !dbg !2041
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1, !dbg !2042
    #dbg_value(i64 %indvars.iv.next139, !1901, !DIExpression(), !1902)
  %exitcond142.not = icmp eq i64 %indvars.iv.next139, %wide.trip.count141, !dbg !1993
  br i1 %exitcond142.not, label %for.end48, label %for.body38, !dbg !1996, !llvm.loop !2043

for.end48:                                        ; preds = %rc_bittree_price.exit124, %for.cond36.preheader
  ret void, !dbg !2045
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 9) i32 @lzma_encode(ptr noundef %pcoder, ptr noalias noundef %mf, ptr noalias nocapture noundef writeonly %out, ptr noalias nocapture noundef %out_pos, i64 noundef %out_size) #0 !dbg !2046 {
entry:
    #dbg_value(ptr %pcoder, !2050, !DIExpression(), !2056)
    #dbg_value(ptr %mf, !2051, !DIExpression(), !2056)
    #dbg_value(ptr %out, !2052, !DIExpression(), !2056)
    #dbg_value(ptr %out_pos, !2053, !DIExpression(), !2056)
    #dbg_value(i64 %out_size, !2054, !DIExpression(), !2056)
    #dbg_value(ptr %pcoder, !2055, !DIExpression(), !2056)
  %action = getelementptr inbounds i8, ptr %mf, i64 104, !dbg !2057
  %0 = load i32, ptr %action, align 8, !dbg !2057
  %cmp = icmp eq i32 %0, 1, !dbg !2057
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2059

if.end:                                           ; preds = %entry
  %call = tail call i32 @lzma_lzma_encode(ptr noundef %pcoder, ptr noundef nonnull %mf, ptr noundef %out, ptr noundef %out_pos, i64 noundef %out_size, i32 noundef -1), !dbg !2060
  br label %cleanup, !dbg !2061

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 8, %entry ], !dbg !2056
  ret i32 %retval.0, !dbg !2062
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

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!104, !105, !106, !107, !108, !109, !110}
!llvm.ident = !{!111}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !102, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "liblzma/lzma/lzma_encoder.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "05efdea695ffcfbe246da60087a9dd58")
!2 = !{!3, !19, !25, !65, !80, !85, !92, !95}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 57, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "liblzma/api/lzma/base.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "81a3070447cc5b61b56cfbed076853db")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18}
!7 = !DIEnumerator(name: "LZMA_OK", value: 0)
!8 = !DIEnumerator(name: "LZMA_STREAM_END", value: 1)
!9 = !DIEnumerator(name: "LZMA_NO_CHECK", value: 2)
!10 = !DIEnumerator(name: "LZMA_UNSUPPORTED_CHECK", value: 3)
!11 = !DIEnumerator(name: "LZMA_GET_CHECK", value: 4)
!12 = !DIEnumerator(name: "LZMA_MEM_ERROR", value: 5)
!13 = !DIEnumerator(name: "LZMA_MEMLIMIT_ERROR", value: 6)
!14 = !DIEnumerator(name: "LZMA_FORMAT_ERROR", value: 7)
!15 = !DIEnumerator(name: "LZMA_OPTIONS_ERROR", value: 8)
!16 = !DIEnumerator(name: "LZMA_DATA_ERROR", value: 9)
!17 = !DIEnumerator(name: "LZMA_BUF_ERROR", value: 10)
!18 = !DIEnumerator(name: "LZMA_PROG_ERROR", value: 11)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 250, baseType: !5, size: 32, elements: !20)
!20 = !{!21, !22, !23, !24}
!21 = !DIEnumerator(name: "LZMA_RUN", value: 0)
!22 = !DIEnumerator(name: "LZMA_SYNC_FLUSH", value: 1)
!23 = !DIEnumerator(name: "LZMA_FULL_FLUSH", value: 2)
!24 = !DIEnumerator(name: "LZMA_FINISH", value: 3)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !27, file: !26, line: 40, baseType: !5, size: 32, elements: !59)
!26 = !DIFile(filename: "liblzma/rangecoder/range_encoder.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "e02ad9079871d268a82b8ebf2e7d385d")
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !26, line: 27, size: 5888, elements: !28)
!28 = !{!29, !35, !36, !39, !43, !46, !47, !51}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !27, file: !26, line: 28, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !31, line: 27, baseType: !32)
!31 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !33, line: 45, baseType: !34)
!33 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!34 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "cache_size", scope: !27, file: !26, line: 29, baseType: !30, size: 64, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !27, file: !26, line: 30, baseType: !37, size: 32, offset: 128)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !31, line: 26, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !33, line: 42, baseType: !5)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !27, file: !26, line: 31, baseType: !40, size: 8, offset: 160)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !31, line: 24, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !33, line: 38, baseType: !42)
!42 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !27, file: !26, line: 34, baseType: !44, size: 64, offset: 192)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !45, line: 18, baseType: !34)
!45 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!46 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !27, file: !26, line: 37, baseType: !44, size: 64, offset: 256)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "symbols", scope: !27, file: !26, line: 46, baseType: !48, size: 1856, offset: 320)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 1856, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 58)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "probs", scope: !27, file: !26, line: 49, baseType: !52, size: 3712, offset: 2176)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 3712, elements: !49)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "probability", file: !55, line: 71, baseType: !56)
!55 = !DIFile(filename: "liblzma/rangecoder/range_common.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "7d3e93a1bf35640522f499de026cfdad")
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !31, line: 25, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !33, line: 40, baseType: !58)
!58 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!59 = !{!60, !61, !62, !63, !64}
!60 = !DIEnumerator(name: "RC_BIT_0", value: 0)
!61 = !DIEnumerator(name: "RC_BIT_1", value: 1)
!62 = !DIEnumerator(name: "RC_DIRECT_0", value: 2)
!63 = !DIEnumerator(name: "RC_DIRECT_1", value: 3)
!64 = !DIEnumerator(name: "RC_FLUSH", value: 4)
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !66, line: 56, baseType: !5, size: 32, elements: !67)
!66 = !DIFile(filename: "liblzma/lzma/lzma_common.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "ce364754aa91e57f603599f25328df33")
!67 = !{!68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79}
!68 = !DIEnumerator(name: "STATE_LIT_LIT", value: 0)
!69 = !DIEnumerator(name: "STATE_MATCH_LIT_LIT", value: 1)
!70 = !DIEnumerator(name: "STATE_REP_LIT_LIT", value: 2)
!71 = !DIEnumerator(name: "STATE_SHORTREP_LIT_LIT", value: 3)
!72 = !DIEnumerator(name: "STATE_MATCH_LIT", value: 4)
!73 = !DIEnumerator(name: "STATE_REP_LIT", value: 5)
!74 = !DIEnumerator(name: "STATE_SHORTREP_LIT", value: 6)
!75 = !DIEnumerator(name: "STATE_LIT_MATCH", value: 7)
!76 = !DIEnumerator(name: "STATE_LIT_LONGREP", value: 8)
!77 = !DIEnumerator(name: "STATE_LIT_SHORTREP", value: 9)
!78 = !DIEnumerator(name: "STATE_NONLIT_MATCH", value: 10)
!79 = !DIEnumerator(name: "STATE_NONLIT_REP", value: 11)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !81, line: 138, baseType: !5, size: 32, elements: !82)
!81 = !DIFile(filename: "liblzma/api/lzma/lzma.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "c59c540efa0aff44f03d71331089fff8")
!82 = !{!83, !84}
!83 = !DIEnumerator(name: "LZMA_MODE_FAST", value: 1)
!84 = !DIEnumerator(name: "LZMA_MODE_NORMAL", value: 2)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !81, line: 58, baseType: !5, size: 32, elements: !86)
!86 = !{!87, !88, !89, !90, !91}
!87 = !DIEnumerator(name: "LZMA_MF_HC3", value: 3)
!88 = !DIEnumerator(name: "LZMA_MF_HC4", value: 4)
!89 = !DIEnumerator(name: "LZMA_MF_BT2", value: 18)
!90 = !DIEnumerator(name: "LZMA_MF_BT3", value: 19)
!91 = !DIEnumerator(name: "LZMA_MF_BT4", value: 20)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 44, baseType: !5, size: 32, elements: !93)
!93 = !{!94}
!94 = !DIEnumerator(name: "LZMA_RESERVED_ENUM", value: 0)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !96, line: 27, baseType: !5, size: 32, elements: !97)
!96 = !DIFile(filename: "liblzma/api/lzma/check.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "b07c3297e2bcc14bb477793d08325ee3")
!97 = !{!98, !99, !100, !101}
!98 = !DIEnumerator(name: "LZMA_CHECK_NONE", value: 0)
!99 = !DIEnumerator(name: "LZMA_CHECK_CRC32", value: 1)
!100 = !DIEnumerator(name: "LZMA_CHECK_CRC64", value: 4)
!101 = !DIEnumerator(name: "LZMA_CHECK_SHA256", value: 10)
!102 = !{!103, !30, !37, !40}
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!104 = !{i32 7, !"Dwarf Version", i32 5}
!105 = !{i32 2, !"Debug Info Version", i32 3}
!106 = !{i32 1, !"wchar_size", i32 4}
!107 = !{i32 8, !"PIC Level", i32 2}
!108 = !{i32 7, !"PIE Level", i32 2}
!109 = !{i32 7, !"uwtable", i32 2}
!110 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!111 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!112 = distinct !DISubprogram(name: "lzma_lzma_encode", scope: !1, file: !1, line: 318, type: !113, scopeLine: 321, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !166)
!113 = !DISubroutineType(types: !114)
!114 = !{!115, !116, !119, !163, !164, !44, !37}
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_coder", file: !118, line: 78, baseType: null)
!118 = !DIFile(filename: "liblzma/common/common.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!119 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_mf", file: !122, line: 28, baseType: !123)
!122 = !DIFile(filename: "liblzma/lz/lz_encoder.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "780f78e6e21a3ca52f57df68bfdc6f53")
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_mf_s", file: !122, line: 29, size: 960, elements: !124)
!124 = !{!125, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !146, !150, !152, !153, !154, !155, !156, !157, !158, !159, !161, !162}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !123, file: !122, line: 35, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !123, file: !122, line: 39, baseType: !37, size: 32, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "keep_size_before", scope: !123, file: !122, line: 45, baseType: !37, size: 32, offset: 96)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "keep_size_after", scope: !123, file: !122, line: 51, baseType: !37, size: 32, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !123, file: !122, line: 58, baseType: !37, size: 32, offset: 160)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !123, file: !122, line: 63, baseType: !37, size: 32, offset: 192)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "read_ahead", scope: !123, file: !122, line: 67, baseType: !37, size: 32, offset: 224)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "read_limit", scope: !123, file: !122, line: 75, baseType: !37, size: 32, offset: 256)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "write_pos", scope: !123, file: !122, line: 80, baseType: !37, size: 32, offset: 288)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !123, file: !122, line: 84, baseType: !37, size: 32, offset: 320)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "find", scope: !123, file: !122, line: 92, baseType: !137, size: 64, offset: 384)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DISubroutineType(types: !139)
!139 = !{!37, !120, !140}
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_match", file: !122, line: 25, baseType: !142)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !122, line: 22, size: 64, elements: !143)
!143 = !{!144, !145}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !142, file: !122, line: 23, baseType: !37, size: 32)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "dist", scope: !142, file: !122, line: 24, baseType: !37, size: 32, offset: 32)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !123, file: !122, line: 97, baseType: !147, size: 64, offset: 448)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DISubroutineType(types: !149)
!149 = !{null, !120, !37}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !123, file: !122, line: 99, baseType: !151, size: 64, offset: 512)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "son", scope: !123, file: !122, line: 100, baseType: !151, size: 64, offset: 576)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "cyclic_pos", scope: !123, file: !122, line: 101, baseType: !37, size: 32, offset: 640)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "cyclic_size", scope: !123, file: !122, line: 102, baseType: !37, size: 32, offset: 672)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "hash_mask", scope: !123, file: !122, line: 103, baseType: !37, size: 32, offset: 704)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !123, file: !122, line: 106, baseType: !37, size: 32, offset: 736)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nice_len", scope: !123, file: !122, line: 109, baseType: !37, size: 32, offset: 768)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "match_len_max", scope: !123, file: !122, line: 114, baseType: !37, size: 32, offset: 800)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !123, file: !122, line: 119, baseType: !160, size: 32, offset: 832)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !4, line: 322, baseType: !19)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "hash_size_sum", scope: !123, file: !122, line: 122, baseType: !37, size: 32, offset: 864)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "sons_count", scope: !123, file: !122, line: 125, baseType: !37, size: 32, offset: 896)
!163 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !126)
!164 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !165)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!166 = !{!167, !168, !169, !170, !171, !172, !173, !278, !279, !281}
!167 = !DILocalVariable(name: "pcoder", arg: 1, scope: !112, file: !1, line: 318, type: !116)
!168 = !DILocalVariable(name: "mf", arg: 2, scope: !112, file: !1, line: 318, type: !119)
!169 = !DILocalVariable(name: "out", arg: 3, scope: !112, file: !1, line: 319, type: !163)
!170 = !DILocalVariable(name: "out_pos", arg: 4, scope: !112, file: !1, line: 319, type: !164)
!171 = !DILocalVariable(name: "out_size", arg: 5, scope: !112, file: !1, line: 320, type: !44)
!172 = !DILocalVariable(name: "limit", arg: 6, scope: !112, file: !1, line: 320, type: !37)
!173 = !DILocalVariable(name: "coder", scope: !112, file: !1, line: 322, type: !174)
!174 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !175)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_coder_s", file: !177, line: 72, size: 1996608, elements: !178)
!177 = !DIFile(filename: "liblzma/lzma/lzma_encoder_private.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "0c1b7b41ddfbed104b8c32f19cfcc2b2")
!178 = !{!179, !181, !183, !187, !191, !192, !193, !195, !196, !197, !198, !199, !200, !205, !209, !212, !213, !214, !215, !216, !220, !224, !227, !249, !250, !252, !256, !257, !258, !259, !260, !261, !262}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !176, file: !177, line: 74, baseType: !180, size: 5888)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_range_encoder", file: !26, line: 51, baseType: !27)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !176, file: !177, line: 77, baseType: !182, size: 32, offset: 5888)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_lzma_state", file: !66, line: 69, baseType: !65)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "reps", scope: !176, file: !177, line: 80, baseType: !184, size: 128, offset: 5920)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 128, elements: !185)
!185 = !{!186}
!186 = !DISubrange(count: 4)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "matches", scope: !176, file: !177, line: 83, baseType: !188, size: 17536, offset: 6048)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 17536, elements: !189)
!189 = !{!190}
!190 = !DISubrange(count: 274)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "matches_count", scope: !176, file: !177, line: 86, baseType: !37, size: 32, offset: 23584)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "longest_match_length", scope: !176, file: !177, line: 90, baseType: !37, size: 32, offset: 23616)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "fast_mode", scope: !176, file: !177, line: 93, baseType: !194, size: 8, offset: 23648)
!194 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "is_initialized", scope: !176, file: !177, line: 97, baseType: !194, size: 8, offset: 23656)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "is_flushed", scope: !176, file: !177, line: 101, baseType: !194, size: 8, offset: 23664)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "pos_mask", scope: !176, file: !177, line: 103, baseType: !37, size: 32, offset: 23680)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "literal_context_bits", scope: !176, file: !177, line: 104, baseType: !37, size: 32, offset: 23712)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "literal_pos_mask", scope: !176, file: !177, line: 105, baseType: !37, size: 32, offset: 23744)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "literal", scope: !176, file: !177, line: 108, baseType: !201, size: 196608, offset: 23776)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 196608, elements: !202)
!202 = !{!203, !204}
!203 = !DISubrange(count: 16)
!204 = !DISubrange(count: 768)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "is_match", scope: !176, file: !177, line: 109, baseType: !206, size: 3072, offset: 220384)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 3072, elements: !207)
!207 = !{!208, !203}
!208 = !DISubrange(count: 12)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "is_rep", scope: !176, file: !177, line: 110, baseType: !210, size: 192, offset: 223456)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 192, elements: !211)
!211 = !{!208}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "is_rep0", scope: !176, file: !177, line: 111, baseType: !210, size: 192, offset: 223648)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "is_rep1", scope: !176, file: !177, line: 112, baseType: !210, size: 192, offset: 223840)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "is_rep2", scope: !176, file: !177, line: 113, baseType: !210, size: 192, offset: 224032)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "is_rep0_long", scope: !176, file: !177, line: 114, baseType: !206, size: 3072, offset: 224224)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "pos_slot", scope: !176, file: !177, line: 115, baseType: !217, size: 4096, offset: 227296)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 4096, elements: !218)
!218 = !{!186, !219}
!219 = !DISubrange(count: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "pos_special", scope: !176, file: !177, line: 116, baseType: !221, size: 1824, offset: 231392)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 1824, elements: !222)
!222 = !{!223}
!223 = !DISubrange(count: 114)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "pos_align", scope: !176, file: !177, line: 117, baseType: !225, size: 256, offset: 233216)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 256, elements: !226)
!226 = !{!203}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "match_len_encoder", scope: !176, file: !177, line: 121, baseType: !228, size: 148032, offset: 233472)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_length_encoder", file: !177, line: 51, baseType: !229)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !177, line: 40, size: 148032, elements: !230)
!230 = !{!231, !232, !233, !237, !238, !242, !246, !247}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "choice", scope: !229, file: !177, line: 41, baseType: !54, size: 16)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "choice2", scope: !229, file: !177, line: 42, baseType: !54, size: 16, offset: 16)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !229, file: !177, line: 43, baseType: !234, size: 2048, offset: 32)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 2048, elements: !235)
!235 = !{!203, !236}
!236 = !DISubrange(count: 8)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "mid", scope: !229, file: !177, line: 44, baseType: !234, size: 2048, offset: 2080)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !229, file: !177, line: 45, baseType: !239, size: 4096, offset: 4128)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 4096, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 256)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "prices", scope: !229, file: !177, line: 47, baseType: !243, size: 139264, offset: 8224)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 139264, elements: !244)
!244 = !{!203, !245}
!245 = !DISubrange(count: 272)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "table_size", scope: !229, file: !177, line: 48, baseType: !37, size: 32, offset: 147488)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !229, file: !177, line: 49, baseType: !248, size: 512, offset: 147520)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 512, elements: !226)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "rep_len_encoder", scope: !176, file: !177, line: 122, baseType: !228, size: 148032, offset: 381504)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "pos_slot_prices", scope: !176, file: !177, line: 125, baseType: !251, size: 8192, offset: 529536)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 8192, elements: !218)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "distances_prices", scope: !176, file: !177, line: 126, baseType: !253, size: 16384, offset: 537728)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 16384, elements: !254)
!254 = !{!186, !255}
!255 = !DISubrange(count: 128)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "dist_table_size", scope: !176, file: !177, line: 127, baseType: !37, size: 32, offset: 554112)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "match_price_count", scope: !176, file: !177, line: 128, baseType: !37, size: 32, offset: 554144)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "align_prices", scope: !176, file: !177, line: 130, baseType: !248, size: 512, offset: 554176)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "align_price_count", scope: !176, file: !177, line: 131, baseType: !37, size: 32, offset: 554688)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "opts_end_index", scope: !176, file: !177, line: 134, baseType: !37, size: 32, offset: 554720)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "opts_current_index", scope: !176, file: !177, line: 135, baseType: !37, size: 32, offset: 554752)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !176, file: !177, line: 136, baseType: !263, size: 1441792, offset: 554784)
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, size: 1441792, elements: !276)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_optimal", file: !177, line: 69, baseType: !265)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !177, line: 54, size: 352, elements: !266)
!266 = !{!267, !268, !269, !270, !271, !272, !273, !274, !275}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !265, file: !177, line: 55, baseType: !182, size: 32)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "prev_1_is_literal", scope: !265, file: !177, line: 57, baseType: !194, size: 8, offset: 32)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "prev_2", scope: !265, file: !177, line: 58, baseType: !194, size: 8, offset: 40)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "pos_prev_2", scope: !265, file: !177, line: 60, baseType: !37, size: 32, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "back_prev_2", scope: !265, file: !177, line: 61, baseType: !37, size: 32, offset: 96)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "price", scope: !265, file: !177, line: 63, baseType: !37, size: 32, offset: 128)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "pos_prev", scope: !265, file: !177, line: 64, baseType: !37, size: 32, offset: 160)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "back_prev", scope: !265, file: !177, line: 65, baseType: !37, size: 32, offset: 192)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "backs", scope: !265, file: !177, line: 67, baseType: !184, size: 128, offset: 224)
!276 = !{!277}
!277 = !DISubrange(count: 4096)
!278 = !DILocalVariable(name: "position", scope: !112, file: !1, line: 328, type: !37)
!279 = !DILocalVariable(name: "len", scope: !280, file: !1, line: 369, type: !37)
!280 = distinct !DILexicalBlock(scope: !112, file: !1, line: 330, column: 15)
!281 = !DILocalVariable(name: "back", scope: !280, file: !1, line: 370, type: !37)
!282 = distinct !DIAssignID()
!283 = !DILocation(line: 0, scope: !280)
!284 = distinct !DIAssignID()
!285 = !DILocation(line: 0, scope: !112)
!286 = !DILocation(line: 324, column: 14, scope: !287)
!287 = distinct !DILexicalBlock(scope: !112, file: !1, line: 324, column: 6)
!288 = !{i8 0, i8 2}
!289 = !{}
!290 = !DILocation(line: 324, column: 29, scope: !287)
!291 = !DILocalVariable(name: "pcoder", arg: 1, scope: !292, file: !1, line: 272, type: !116)
!292 = distinct !DISubprogram(name: "encode_init", scope: !1, file: !1, line: 272, type: !293, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !295)
!293 = !DISubroutineType(types: !294)
!294 = !{!194, !116, !120}
!295 = !{!291, !296, !297}
!296 = !DILocalVariable(name: "mf", arg: 2, scope: !292, file: !1, line: 272, type: !120)
!297 = !DILocalVariable(name: "coder", scope: !292, file: !1, line: 274, type: !175)
!298 = !DILocation(line: 0, scope: !292, inlinedAt: !299)
!299 = distinct !DILocation(line: 324, column: 33, scope: !287)
!300 = !DILocation(line: 277, column: 10, scope: !301, inlinedAt: !299)
!301 = distinct !DILexicalBlock(scope: !292, file: !1, line: 277, column: 6)
!302 = !DILocation(line: 277, column: 26, scope: !301, inlinedAt: !299)
!303 = !DILocation(line: 277, column: 19, scope: !301, inlinedAt: !299)
!304 = !DILocation(line: 277, column: 6, scope: !292, inlinedAt: !299)
!305 = !DILocation(line: 278, column: 11, scope: !306, inlinedAt: !299)
!306 = distinct !DILexicalBlock(scope: !307, file: !1, line: 278, column: 7)
!307 = distinct !DILexicalBlock(scope: !301, file: !1, line: 277, column: 38)
!308 = !DILocation(line: 278, column: 18, scope: !306, inlinedAt: !299)
!309 = !DILocation(line: 278, column: 7, scope: !307, inlinedAt: !299)
!310 = !DILocalVariable(name: "mf", arg: 1, scope: !311, file: !122, line: 268, type: !120)
!311 = distinct !DISubprogram(name: "mf_skip", scope: !122, file: !122, line: 268, type: !148, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !312)
!312 = !{!310, !313}
!313 = !DILocalVariable(name: "amount", arg: 2, scope: !311, file: !122, line: 268, type: !37)
!314 = !DILocation(line: 0, scope: !311, inlinedAt: !315)
!315 = distinct !DILocation(line: 287, column: 3, scope: !316, inlinedAt: !299)
!316 = distinct !DILexicalBlock(scope: !301, file: !1, line: 284, column: 9)
!317 = !DILocation(line: 271, column: 7, scope: !318, inlinedAt: !315)
!318 = distinct !DILexicalBlock(scope: !319, file: !122, line: 270, column: 19)
!319 = distinct !DILexicalBlock(scope: !311, file: !122, line: 270, column: 6)
!320 = !DILocation(line: 271, column: 3, scope: !318, inlinedAt: !315)
!321 = !DILocation(line: 272, column: 7, scope: !318, inlinedAt: !315)
!322 = !DILocation(line: 288, column: 18, scope: !316, inlinedAt: !299)
!323 = !DILocation(line: 289, column: 30, scope: !316, inlinedAt: !299)
!324 = !DILocalVariable(name: "rc", arg: 1, scope: !325, file: !26, line: 67, type: !328)
!325 = distinct !DISubprogram(name: "rc_bit", scope: !26, file: !26, line: 67, type: !326, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !329)
!326 = !DISubroutineType(types: !327)
!327 = !{null, !328, !53, !37}
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!329 = !{!324, !330, !331}
!330 = !DILocalVariable(name: "prob", arg: 2, scope: !325, file: !26, line: 67, type: !53)
!331 = !DILocalVariable(name: "bit", arg: 3, scope: !325, file: !26, line: 67, type: !37)
!332 = !DILocation(line: 0, scope: !325, inlinedAt: !333)
!333 = distinct !DILocation(line: 289, column: 3, scope: !316, inlinedAt: !299)
!334 = !DILocation(line: 69, column: 6, scope: !325, inlinedAt: !333)
!335 = !DILocation(line: 69, column: 18, scope: !325, inlinedAt: !333)
!336 = !DILocation(line: 69, column: 2, scope: !325, inlinedAt: !333)
!337 = !DILocation(line: 69, column: 25, scope: !325, inlinedAt: !333)
!338 = !DILocation(line: 70, column: 6, scope: !325, inlinedAt: !333)
!339 = !DILocation(line: 70, column: 16, scope: !325, inlinedAt: !333)
!340 = !DILocation(line: 70, column: 2, scope: !325, inlinedAt: !333)
!341 = !DILocation(line: 70, column: 23, scope: !325, inlinedAt: !333)
!342 = !DILocation(line: 71, column: 2, scope: !325, inlinedAt: !333)
!343 = !DILocation(line: 290, column: 33, scope: !316, inlinedAt: !299)
!344 = !DILocation(line: 290, column: 52, scope: !316, inlinedAt: !299)
!345 = !DILocation(line: 290, column: 48, scope: !316, inlinedAt: !299)
!346 = !DILocalVariable(name: "rc", arg: 1, scope: !347, file: !26, line: 76, type: !328)
!347 = distinct !DISubprogram(name: "rc_bittree", scope: !26, file: !26, line: 76, type: !348, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !350)
!348 = !DISubroutineType(types: !349)
!349 = !{null, !328, !53, !37, !37}
!350 = !{!346, !351, !352, !353, !354, !355}
!351 = !DILocalVariable(name: "probs", arg: 2, scope: !347, file: !26, line: 76, type: !53)
!352 = !DILocalVariable(name: "bit_count", arg: 3, scope: !347, file: !26, line: 77, type: !37)
!353 = !DILocalVariable(name: "symbol", arg: 4, scope: !347, file: !26, line: 77, type: !37)
!354 = !DILocalVariable(name: "model_index", scope: !347, file: !26, line: 79, type: !37)
!355 = !DILocalVariable(name: "bit", scope: !356, file: !26, line: 82, type: !357)
!356 = distinct !DILexicalBlock(scope: !347, file: !26, line: 81, column: 5)
!357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!358 = !DILocation(line: 0, scope: !347, inlinedAt: !359)
!359 = distinct !DILocation(line: 290, column: 3, scope: !316, inlinedAt: !299)
!360 = !DILocation(line: 82, column: 32, scope: !356, inlinedAt: !359)
!361 = !DILocation(line: 0, scope: !356, inlinedAt: !359)
!362 = !DILocation(line: 83, column: 15, scope: !356, inlinedAt: !359)
!363 = !DILocation(line: 0, scope: !325, inlinedAt: !364)
!364 = distinct !DILocation(line: 83, column: 3, scope: !356, inlinedAt: !359)
!365 = !DILocation(line: 69, column: 2, scope: !325, inlinedAt: !364)
!366 = !DILocation(line: 69, column: 25, scope: !325, inlinedAt: !364)
!367 = !DILocation(line: 70, column: 16, scope: !325, inlinedAt: !364)
!368 = !DILocation(line: 70, column: 2, scope: !325, inlinedAt: !364)
!369 = !DILocation(line: 70, column: 23, scope: !325, inlinedAt: !364)
!370 = !DILocation(line: 71, column: 2, scope: !325, inlinedAt: !364)
!371 = !DILocation(line: 84, column: 36, scope: !356, inlinedAt: !359)
!372 = !DILocation(line: 82, column: 48, scope: !356, inlinedAt: !359)
!373 = !DILocation(line: 84, column: 30, scope: !356, inlinedAt: !359)
!374 = !DILocation(line: 294, column: 9, scope: !292, inlinedAt: !299)
!375 = !DILocation(line: 294, column: 24, scope: !292, inlinedAt: !299)
!376 = !DILocation(line: 324, column: 6, scope: !112)
!377 = !DILocation(line: 328, column: 22, scope: !112)
!378 = !DILocalVariable(name: "mf", arg: 1, scope: !379, file: !122, line: 253, type: !382)
!379 = distinct !DISubprogram(name: "mf_position", scope: !122, file: !122, line: 253, type: !380, scopeLine: 254, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !384)
!380 = !DISubroutineType(types: !381)
!381 = !{!37, !382}
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!384 = !{!378}
!385 = !DILocation(line: 0, scope: !379, inlinedAt: !386)
!386 = distinct !DILocation(line: 328, column: 22, scope: !112)
!387 = !DILocation(line: 337, column: 7, scope: !388)
!388 = distinct !DILexicalBlock(scope: !280, file: !1, line: 337, column: 7)
!389 = !DILocation(line: 337, column: 7, scope: !280)
!390 = !DILocation(line: 255, column: 22, scope: !379, inlinedAt: !386)
!391 = !DILocation(line: 353, column: 11, scope: !392)
!392 = distinct !DILexicalBlock(scope: !280, file: !1, line: 353, column: 7)
!393 = !DILocation(line: 346, column: 5, scope: !394)
!394 = distinct !DILexicalBlock(scope: !280, file: !1, line: 345, column: 7)
!395 = !DILocation(line: 346, column: 28, scope: !394)
!396 = !DILocation(line: 346, column: 22, scope: !394)
!397 = !DILocation(line: 346, column: 39, scope: !394)
!398 = !DILocation(line: 347, column: 6, scope: !394)
!399 = !DILocation(line: 347, column: 9, scope: !394)
!400 = !DILocation(line: 347, column: 20, scope: !394)
!401 = !DILocalVariable(name: "rc", arg: 1, scope: !402, file: !26, line: 226, type: !405)
!402 = distinct !DISubprogram(name: "rc_pending", scope: !26, file: !26, line: 226, type: !403, scopeLine: 227, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !407)
!403 = !DISubroutineType(types: !404)
!404 = !{!30, !405}
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !180)
!407 = !{!401}
!408 = !DILocation(line: 0, scope: !402, inlinedAt: !409)
!409 = distinct !DILocation(line: 347, column: 20, scope: !394)
!410 = !DILocation(line: 228, column: 28, scope: !402, inlinedAt: !409)
!411 = !DILocation(line: 347, column: 18, scope: !394)
!412 = !DILocation(line: 348, column: 7, scope: !394)
!413 = !DILocation(line: 345, column: 7, scope: !280)
!414 = !DILocation(line: 353, column: 27, scope: !392)
!415 = !DILocation(line: 353, column: 20, scope: !392)
!416 = !DILocation(line: 353, column: 7, scope: !280)
!417 = !DILocation(line: 354, column: 12, scope: !418)
!418 = distinct !DILexicalBlock(scope: !419, file: !1, line: 354, column: 8)
!419 = distinct !DILexicalBlock(scope: !392, file: !1, line: 353, column: 39)
!420 = !DILocation(line: 354, column: 19, scope: !418)
!421 = !DILocation(line: 354, column: 8, scope: !419)
!422 = !DILocation(line: 357, column: 12, scope: !423)
!423 = distinct !DILexicalBlock(scope: !419, file: !1, line: 357, column: 8)
!424 = !DILocation(line: 357, column: 23, scope: !423)
!425 = !DILocation(line: 357, column: 8, scope: !419)
!426 = !DILocation(line: 369, column: 3, scope: !280)
!427 = !DILocation(line: 370, column: 3, scope: !280)
!428 = !DILocation(line: 372, column: 14, scope: !429)
!429 = distinct !DILexicalBlock(scope: !280, file: !1, line: 372, column: 7)
!430 = !DILocation(line: 372, column: 7, scope: !280)
!431 = !DILocation(line: 373, column: 4, scope: !429)
!432 = !DILocation(line: 375, column: 4, scope: !429)
!433 = !DILocation(line: 378, column: 28, scope: !280)
!434 = !DILocation(line: 378, column: 34, scope: !280)
!435 = !DILocalVariable(name: "pcoder", arg: 1, scope: !436, file: !1, line: 237, type: !116)
!436 = distinct !DISubprogram(name: "encode_symbol", scope: !1, file: !1, line: 237, type: !437, scopeLine: 239, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !439)
!437 = !DISubroutineType(types: !438)
!438 = !{null, !116, !120, !37, !37, !37}
!439 = !{!435, !440, !441, !442, !443, !444, !445}
!440 = !DILocalVariable(name: "mf", arg: 2, scope: !436, file: !1, line: 237, type: !120)
!441 = !DILocalVariable(name: "back", arg: 3, scope: !436, file: !1, line: 238, type: !37)
!442 = !DILocalVariable(name: "len", arg: 4, scope: !436, file: !1, line: 238, type: !37)
!443 = !DILocalVariable(name: "position", arg: 5, scope: !436, file: !1, line: 238, type: !37)
!444 = !DILocalVariable(name: "coder", scope: !436, file: !1, line: 240, type: !175)
!445 = !DILocalVariable(name: "pos_state", scope: !436, file: !1, line: 241, type: !357)
!446 = !DILocation(line: 0, scope: !436, inlinedAt: !447)
!447 = distinct !DILocation(line: 378, column: 3, scope: !280)
!448 = !DILocation(line: 241, column: 47, scope: !436, inlinedAt: !447)
!449 = !DILocation(line: 241, column: 38, scope: !436, inlinedAt: !447)
!450 = !DILocation(line: 243, column: 11, scope: !451, inlinedAt: !447)
!451 = distinct !DILexicalBlock(scope: !436, file: !1, line: 243, column: 6)
!452 = !DILocation(line: 0, scope: !451, inlinedAt: !447)
!453 = !DILocation(line: 0, scope: !325, inlinedAt: !454)
!454 = distinct !DILocation(line: 246, column: 3, scope: !455, inlinedAt: !447)
!455 = distinct !DILexicalBlock(scope: !451, file: !1, line: 243, column: 26)
!456 = !DILocation(line: 0, scope: !325, inlinedAt: !457)
!457 = distinct !DILocation(line: 251, column: 3, scope: !458, inlinedAt: !447)
!458 = distinct !DILexicalBlock(scope: !451, file: !1, line: 249, column: 9)
!459 = !DILocation(line: 69, column: 18, scope: !325, inlinedAt: !460)
!460 = distinct !DILocation(line: 0, scope: !451, inlinedAt: !447)
!461 = !DILocation(line: 69, column: 2, scope: !325, inlinedAt: !460)
!462 = !DILocation(line: 243, column: 6, scope: !436, inlinedAt: !447)
!463 = !DILocation(line: 69, column: 25, scope: !325, inlinedAt: !454)
!464 = !DILocation(line: 70, column: 16, scope: !325, inlinedAt: !454)
!465 = !DILocation(line: 70, column: 2, scope: !325, inlinedAt: !454)
!466 = !DILocation(line: 70, column: 23, scope: !325, inlinedAt: !454)
!467 = !DILocation(line: 71, column: 2, scope: !325, inlinedAt: !454)
!468 = !DILocalVariable(name: "pcoder", arg: 1, scope: !469, file: !1, line: 46, type: !116)
!469 = distinct !DISubprogram(name: "literal", scope: !1, file: !1, line: 46, type: !470, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !472)
!470 = !DISubroutineType(types: !471)
!471 = !{null, !116, !120, !37}
!472 = !{!468, !473, !474, !475, !476, !478, !479}
!473 = !DILocalVariable(name: "mf", arg: 2, scope: !469, file: !1, line: 46, type: !120)
!474 = !DILocalVariable(name: "position", arg: 3, scope: !469, file: !1, line: 46, type: !37)
!475 = !DILocalVariable(name: "coder", scope: !469, file: !1, line: 48, type: !175)
!476 = !DILocalVariable(name: "cur_byte", scope: !469, file: !1, line: 50, type: !477)
!477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!478 = !DILocalVariable(name: "subcoder", scope: !469, file: !1, line: 52, type: !53)
!479 = !DILocalVariable(name: "match_byte", scope: !480, file: !1, line: 64, type: !477)
!480 = distinct !DILexicalBlock(scope: !481, file: !1, line: 60, column: 9)
!481 = distinct !DILexicalBlock(scope: !469, file: !1, line: 56, column: 6)
!482 = !DILocation(line: 0, scope: !469, inlinedAt: !483)
!483 = distinct !DILocation(line: 248, column: 3, scope: !455, inlinedAt: !447)
!484 = !DILocation(line: 50, column: 31, scope: !469, inlinedAt: !483)
!485 = !DILocation(line: 51, column: 8, scope: !469, inlinedAt: !483)
!486 = !DILocation(line: 51, column: 23, scope: !469, inlinedAt: !483)
!487 = !DILocation(line: 51, column: 17, scope: !469, inlinedAt: !483)
!488 = !DILocation(line: 50, column: 27, scope: !469, inlinedAt: !483)
!489 = !DILocation(line: 52, column: 26, scope: !469, inlinedAt: !483)
!490 = !DILocation(line: 56, column: 6, scope: !481, inlinedAt: !483)
!491 = !DILocation(line: 56, column: 6, scope: !469, inlinedAt: !483)
!492 = !DILocation(line: 59, column: 39, scope: !493, inlinedAt: !483)
!493 = distinct !DILexicalBlock(scope: !481, file: !1, line: 56, column: 38)
!494 = !DILocation(line: 0, scope: !347, inlinedAt: !495)
!495 = distinct !DILocation(line: 59, column: 3, scope: !493, inlinedAt: !483)
!496 = !DILocation(line: 82, column: 32, scope: !356, inlinedAt: !495)
!497 = !DILocation(line: 0, scope: !356, inlinedAt: !495)
!498 = !DILocation(line: 83, column: 15, scope: !356, inlinedAt: !495)
!499 = !DILocation(line: 0, scope: !325, inlinedAt: !500)
!500 = distinct !DILocation(line: 83, column: 3, scope: !356, inlinedAt: !495)
!501 = !DILocation(line: 69, column: 2, scope: !325, inlinedAt: !500)
!502 = !DILocation(line: 69, column: 25, scope: !325, inlinedAt: !500)
!503 = !DILocation(line: 70, column: 16, scope: !325, inlinedAt: !500)
!504 = !DILocation(line: 70, column: 2, scope: !325, inlinedAt: !500)
!505 = !DILocation(line: 70, column: 23, scope: !325, inlinedAt: !500)
!506 = !DILocation(line: 71, column: 2, scope: !325, inlinedAt: !500)
!507 = !DILocation(line: 84, column: 36, scope: !356, inlinedAt: !495)
!508 = !DILocation(line: 82, column: 48, scope: !356, inlinedAt: !495)
!509 = !DILocation(line: 84, column: 30, scope: !356, inlinedAt: !495)
!510 = !DILocation(line: 70, column: 2, scope: !469, inlinedAt: !483)
!511 = !DILocation(line: 65, column: 20, scope: !480, inlinedAt: !483)
!512 = !DILocation(line: 65, column: 35, scope: !480, inlinedAt: !483)
!513 = !DILocation(line: 66, column: 5, scope: !480, inlinedAt: !483)
!514 = !DILocation(line: 64, column: 30, scope: !480, inlinedAt: !483)
!515 = !DILocation(line: 0, scope: !480, inlinedAt: !483)
!516 = !DILocation(line: 67, column: 41, scope: !480, inlinedAt: !483)
!517 = !DILocation(line: 67, column: 53, scope: !480, inlinedAt: !483)
!518 = !DILocalVariable(name: "rc", arg: 1, scope: !519, file: !1, line: 24, type: !328)
!519 = distinct !DISubprogram(name: "literal_matched", scope: !1, file: !1, line: 24, type: !348, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !520)
!520 = !{!518, !521, !522, !523, !524, !525, !527, !528}
!521 = !DILocalVariable(name: "subcoder", arg: 2, scope: !519, file: !1, line: 24, type: !53)
!522 = !DILocalVariable(name: "match_byte", arg: 3, scope: !519, file: !1, line: 25, type: !37)
!523 = !DILocalVariable(name: "symbol", arg: 4, scope: !519, file: !1, line: 25, type: !37)
!524 = !DILocalVariable(name: "offset", scope: !519, file: !1, line: 27, type: !37)
!525 = !DILocalVariable(name: "match_bit", scope: !526, file: !1, line: 32, type: !357)
!526 = distinct !DILexicalBlock(scope: !519, file: !1, line: 30, column: 5)
!527 = !DILocalVariable(name: "subcoder_index", scope: !526, file: !1, line: 33, type: !357)
!528 = !DILocalVariable(name: "bit", scope: !526, file: !1, line: 35, type: !357)
!529 = !DILocation(line: 0, scope: !519, inlinedAt: !530)
!530 = distinct !DILocation(line: 67, column: 3, scope: !480, inlinedAt: !483)
!531 = !DILocation(line: 28, column: 9, scope: !519, inlinedAt: !530)
!532 = !DILocation(line: 30, column: 2, scope: !519, inlinedAt: !530)
!533 = !DILocation(line: 69, column: 18, scope: !325, inlinedAt: !534)
!534 = distinct !DILocation(line: 36, column: 3, scope: !526, inlinedAt: !530)
!535 = !DILocation(line: 31, column: 14, scope: !526, inlinedAt: !530)
!536 = !DILocation(line: 32, column: 41, scope: !526, inlinedAt: !530)
!537 = !DILocation(line: 0, scope: !526, inlinedAt: !530)
!538 = !DILocation(line: 34, column: 36, scope: !526, inlinedAt: !530)
!539 = !DILocation(line: 34, column: 14, scope: !526, inlinedAt: !530)
!540 = !DILocation(line: 34, column: 26, scope: !526, inlinedAt: !530)
!541 = !DILocation(line: 35, column: 32, scope: !526, inlinedAt: !530)
!542 = !DILocation(line: 35, column: 38, scope: !526, inlinedAt: !530)
!543 = !DILocation(line: 36, column: 15, scope: !526, inlinedAt: !530)
!544 = !DILocation(line: 0, scope: !325, inlinedAt: !534)
!545 = !DILocation(line: 69, column: 2, scope: !325, inlinedAt: !534)
!546 = !DILocation(line: 69, column: 25, scope: !325, inlinedAt: !534)
!547 = !DILocation(line: 70, column: 16, scope: !325, inlinedAt: !534)
!548 = !DILocation(line: 70, column: 2, scope: !325, inlinedAt: !534)
!549 = !DILocation(line: 70, column: 23, scope: !325, inlinedAt: !534)
!550 = !DILocation(line: 71, column: 2, scope: !325, inlinedAt: !534)
!551 = !DILocation(line: 38, column: 10, scope: !526, inlinedAt: !530)
!552 = !DILocation(line: 39, column: 13, scope: !526, inlinedAt: !530)
!553 = !DILocation(line: 39, column: 10, scope: !526, inlinedAt: !530)
!554 = !DILocation(line: 41, column: 18, scope: !519, inlinedAt: !530)
!555 = !DILocation(line: 41, column: 2, scope: !526, inlinedAt: !530)
!556 = distinct !{!556, !532, !557}
!557 = !DILocation(line: 41, column: 39, scope: !519, inlinedAt: !530)
!558 = !DILocation(line: 380, column: 15, scope: !280)
!559 = !DILocation(line: 249, column: 2, scope: !455, inlinedAt: !447)
!560 = !DILocation(line: 69, column: 25, scope: !325, inlinedAt: !457)
!561 = !DILocation(line: 70, column: 16, scope: !325, inlinedAt: !457)
!562 = !DILocation(line: 70, column: 2, scope: !325, inlinedAt: !457)
!563 = !DILocation(line: 70, column: 23, scope: !325, inlinedAt: !457)
!564 = !DILocation(line: 71, column: 2, scope: !325, inlinedAt: !457)
!565 = !DILocation(line: 254, column: 12, scope: !566, inlinedAt: !447)
!566 = distinct !DILexicalBlock(scope: !458, file: !1, line: 254, column: 7)
!567 = !DILocation(line: 0, scope: !566, inlinedAt: !447)
!568 = !DILocation(line: 0, scope: !325, inlinedAt: !569)
!569 = distinct !DILocation(line: 257, column: 4, scope: !570, inlinedAt: !447)
!570 = distinct !DILexicalBlock(scope: !566, file: !1, line: 254, column: 29)
!571 = !DILocation(line: 0, scope: !325, inlinedAt: !572)
!572 = distinct !DILocation(line: 261, column: 4, scope: !573, inlinedAt: !447)
!573 = distinct !DILexicalBlock(scope: !566, file: !1, line: 259, column: 10)
!574 = !DILocation(line: 69, column: 2, scope: !325, inlinedAt: !575)
!575 = distinct !DILocation(line: 0, scope: !566, inlinedAt: !447)
!576 = !DILocation(line: 254, column: 7, scope: !458, inlinedAt: !447)
!577 = !DILocation(line: 69, column: 25, scope: !325, inlinedAt: !569)
!578 = !DILocation(line: 70, column: 16, scope: !325, inlinedAt: !569)
!579 = !DILocation(line: 70, column: 2, scope: !325, inlinedAt: !569)
!580 = !DILocation(line: 70, column: 23, scope: !325, inlinedAt: !569)
!581 = !DILocation(line: 71, column: 2, scope: !325, inlinedAt: !569)
!582 = !DILocalVariable(name: "pcoder", arg: 1, scope: !583, file: !1, line: 192, type: !116)
!583 = distinct !DISubprogram(name: "rep_match", scope: !1, file: !1, line: 192, type: !584, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !586)
!584 = !DISubroutineType(types: !585)
!585 = !{null, !116, !357, !357, !357}
!586 = !{!582, !587, !588, !589, !590, !591}
!587 = !DILocalVariable(name: "pos_state", arg: 2, scope: !583, file: !1, line: 192, type: !357)
!588 = !DILocalVariable(name: "rep", arg: 3, scope: !583, file: !1, line: 193, type: !357)
!589 = !DILocalVariable(name: "len", arg: 4, scope: !583, file: !1, line: 193, type: !357)
!590 = !DILocalVariable(name: "coder", scope: !583, file: !1, line: 195, type: !175)
!591 = !DILocalVariable(name: "distance", scope: !592, file: !1, line: 202, type: !357)
!592 = distinct !DILexicalBlock(scope: !593, file: !1, line: 201, column: 9)
!593 = distinct !DILexicalBlock(scope: !583, file: !1, line: 196, column: 6)
!594 = !DILocation(line: 0, scope: !583, inlinedAt: !595)
!595 = distinct !DILocation(line: 258, column: 4, scope: !570, inlinedAt: !447)
!596 = !DILocation(line: 196, column: 10, scope: !593, inlinedAt: !595)
!597 = !DILocation(line: 196, column: 6, scope: !583, inlinedAt: !595)
!598 = !DILocation(line: 197, column: 45, scope: !599, inlinedAt: !595)
!599 = distinct !DILexicalBlock(scope: !593, file: !1, line: 196, column: 16)
!600 = !DILocation(line: 197, column: 23, scope: !599, inlinedAt: !595)
!601 = !DILocation(line: 0, scope: !325, inlinedAt: !602)
!602 = distinct !DILocation(line: 197, column: 3, scope: !599, inlinedAt: !595)
!603 = !DILocation(line: 69, column: 2, scope: !325, inlinedAt: !602)
!604 = !DILocation(line: 69, column: 25, scope: !325, inlinedAt: !602)
!605 = !DILocation(line: 70, column: 16, scope: !325, inlinedAt: !602)
!606 = !DILocation(line: 70, column: 2, scope: !325, inlinedAt: !602)
!607 = !DILocation(line: 70, column: 23, scope: !325, inlinedAt: !602)
!608 = !DILocation(line: 71, column: 2, scope: !325, inlinedAt: !602)
!609 = !DILocation(line: 199, column: 33, scope: !599, inlinedAt: !595)
!610 = !DILocation(line: 199, column: 6, scope: !599, inlinedAt: !595)
!611 = !DILocation(line: 200, column: 9, scope: !599, inlinedAt: !595)
!612 = !DILocation(line: 0, scope: !325, inlinedAt: !613)
!613 = distinct !DILocation(line: 198, column: 3, scope: !599, inlinedAt: !595)
!614 = !DILocation(line: 69, column: 2, scope: !325, inlinedAt: !613)
!615 = !DILocation(line: 69, column: 25, scope: !325, inlinedAt: !613)
!616 = !DILocation(line: 70, column: 16, scope: !325, inlinedAt: !613)
!617 = !DILocation(line: 70, column: 2, scope: !325, inlinedAt: !613)
!618 = !DILocation(line: 70, column: 23, scope: !325, inlinedAt: !613)
!619 = !DILocation(line: 71, column: 2, scope: !325, inlinedAt: !613)
!620 = !DILocation(line: 201, column: 2, scope: !599, inlinedAt: !595)
!621 = !DILocation(line: 202, column: 29, scope: !592, inlinedAt: !595)
!622 = !DILocation(line: 0, scope: !592, inlinedAt: !595)
!623 = !DILocation(line: 203, column: 45, scope: !592, inlinedAt: !595)
!624 = !DILocation(line: 203, column: 23, scope: !592, inlinedAt: !595)
!625 = !DILocation(line: 0, scope: !325, inlinedAt: !626)
!626 = distinct !DILocation(line: 203, column: 3, scope: !592, inlinedAt: !595)
!627 = !DILocation(line: 69, column: 2, scope: !325, inlinedAt: !626)
!628 = !DILocation(line: 69, column: 25, scope: !325, inlinedAt: !626)
!629 = !DILocation(line: 70, column: 16, scope: !325, inlinedAt: !626)
!630 = !DILocation(line: 70, column: 2, scope: !325, inlinedAt: !626)
!631 = !DILocation(line: 70, column: 23, scope: !325, inlinedAt: !626)
!632 = !DILocation(line: 71, column: 2, scope: !325, inlinedAt: !626)
!633 = !DILocation(line: 205, column: 11, scope: !634, inlinedAt: !595)
!634 = distinct !DILexicalBlock(scope: !592, file: !1, line: 205, column: 7)
!635 = !DILocation(line: 0, scope: !634, inlinedAt: !595)
!636 = !DILocation(line: 0, scope: !325, inlinedAt: !637)
!637 = distinct !DILocation(line: 206, column: 4, scope: !638, inlinedAt: !595)
!638 = distinct !DILexicalBlock(scope: !634, file: !1, line: 205, column: 17)
!639 = !DILocation(line: 0, scope: !325, inlinedAt: !640)
!640 = distinct !DILocation(line: 208, column: 4, scope: !641, inlinedAt: !595)
!641 = distinct !DILexicalBlock(scope: !634, file: !1, line: 207, column: 10)
!642 = !DILocation(line: 69, column: 2, scope: !325, inlinedAt: !643)
!643 = distinct !DILocation(line: 0, scope: !634, inlinedAt: !595)
!644 = !DILocation(line: 205, column: 7, scope: !592, inlinedAt: !595)
!645 = !DILocation(line: 69, column: 25, scope: !325, inlinedAt: !637)
!646 = !DILocation(line: 70, column: 16, scope: !325, inlinedAt: !637)
!647 = !DILocation(line: 70, column: 2, scope: !325, inlinedAt: !637)
!648 = !DILocation(line: 70, column: 23, scope: !325, inlinedAt: !637)
!649 = !DILocation(line: 71, column: 2, scope: !325, inlinedAt: !637)
!650 = !DILocation(line: 207, column: 3, scope: !638, inlinedAt: !595)
!651 = !DILocation(line: 69, column: 25, scope: !325, inlinedAt: !640)
!652 = !DILocation(line: 70, column: 16, scope: !325, inlinedAt: !640)
!653 = !DILocation(line: 70, column: 2, scope: !325, inlinedAt: !640)
!654 = !DILocation(line: 70, column: 23, scope: !325, inlinedAt: !640)
!655 = !DILocation(line: 71, column: 2, scope: !325, inlinedAt: !640)
!656 = !DILocation(line: 209, column: 46, scope: !641, inlinedAt: !595)
!657 = !DILocation(line: 209, column: 24, scope: !641, inlinedAt: !595)
!658 = !DILocation(line: 210, column: 10, scope: !641, inlinedAt: !595)
!659 = !DILocation(line: 0, scope: !325, inlinedAt: !660)
!660 = distinct !DILocation(line: 209, column: 4, scope: !641, inlinedAt: !595)
!661 = !DILocation(line: 69, column: 2, scope: !325, inlinedAt: !660)
!662 = !DILocation(line: 69, column: 25, scope: !325, inlinedAt: !660)
!663 = !DILocation(line: 70, column: 16, scope: !325, inlinedAt: !660)
!664 = !DILocation(line: 70, column: 2, scope: !325, inlinedAt: !660)
!665 = !DILocation(line: 70, column: 23, scope: !325, inlinedAt: !660)
!666 = !DILocation(line: 71, column: 2, scope: !325, inlinedAt: !660)
!667 = !DILocation(line: 212, column: 12, scope: !668, inlinedAt: !595)
!668 = distinct !DILexicalBlock(scope: !641, file: !1, line: 212, column: 8)
!669 = !DILocation(line: 212, column: 8, scope: !641, inlinedAt: !595)
!670 = !DILocation(line: 213, column: 22, scope: !668, inlinedAt: !595)
!671 = !DILocation(line: 213, column: 20, scope: !668, inlinedAt: !595)
!672 = !DILocation(line: 213, column: 5, scope: !668, inlinedAt: !595)
!673 = !DILocation(line: 215, column: 21, scope: !641, inlinedAt: !595)
!674 = !DILocation(line: 215, column: 19, scope: !641, inlinedAt: !595)
!675 = !DILocation(line: 218, column: 20, scope: !592, inlinedAt: !595)
!676 = !DILocation(line: 218, column: 18, scope: !592, inlinedAt: !595)
!677 = !DILocation(line: 219, column: 18, scope: !592, inlinedAt: !595)
!678 = !DILocation(line: 222, column: 10, scope: !679, inlinedAt: !595)
!679 = distinct !DILexicalBlock(scope: !583, file: !1, line: 222, column: 6)
!680 = !DILocation(line: 222, column: 6, scope: !583, inlinedAt: !595)
!681 = !DILocation(line: 226, column: 12, scope: !682, inlinedAt: !595)
!682 = distinct !DILexicalBlock(scope: !679, file: !1, line: 224, column: 9)
!683 = !DILocation(line: 225, column: 3, scope: !682, inlinedAt: !595)
!684 = !DILocation(line: 0, scope: !679, inlinedAt: !595)
!685 = !DILocation(line: 259, column: 3, scope: !570, inlinedAt: !447)
!686 = !DILocation(line: 69, column: 25, scope: !325, inlinedAt: !572)
!687 = !DILocation(line: 70, column: 16, scope: !325, inlinedAt: !572)
!688 = !DILocation(line: 70, column: 2, scope: !325, inlinedAt: !572)
!689 = !DILocation(line: 70, column: 23, scope: !325, inlinedAt: !572)
!690 = !DILocation(line: 71, column: 2, scope: !325, inlinedAt: !572)
!691 = !DILocation(line: 262, column: 33, scope: !573, inlinedAt: !447)
!692 = !DILocation(line: 262, column: 4, scope: !573, inlinedAt: !447)
!693 = !DILocation(line: 267, column: 17, scope: !436, inlinedAt: !447)
!694 = !DILocation(line: 380, column: 12, scope: !280)
!695 = !DILocation(line: 381, column: 2, scope: !112)
!696 = distinct !{!696, !697, !695}
!697 = !DILocation(line: 330, column: 2, scope: !112)
!698 = !DILocation(line: 383, column: 14, scope: !699)
!699 = distinct !DILexicalBlock(scope: !112, file: !1, line: 383, column: 6)
!700 = !DILocation(line: 383, column: 6, scope: !112)
!701 = !DILocation(line: 384, column: 21, scope: !702)
!702 = distinct !DILexicalBlock(scope: !699, file: !1, line: 383, column: 26)
!703 = !DILocation(line: 388, column: 7, scope: !702)
!704 = !DILocalVariable(name: "pcoder", arg: 1, scope: !705, file: !1, line: 301, type: !116)
!705 = distinct !DISubprogram(name: "encode_eopm", scope: !1, file: !1, line: 301, type: !706, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !708)
!706 = !DISubroutineType(types: !707)
!707 = !{null, !116, !37}
!708 = !{!704, !709, !710, !711}
!709 = !DILocalVariable(name: "position", arg: 2, scope: !705, file: !1, line: 301, type: !37)
!710 = !DILocalVariable(name: "coder", scope: !705, file: !1, line: 303, type: !175)
!711 = !DILocalVariable(name: "pos_state", scope: !705, file: !1, line: 304, type: !357)
!712 = !DILocation(line: 0, scope: !705, inlinedAt: !713)
!713 = distinct !DILocation(line: 389, column: 4, scope: !714)
!714 = distinct !DILexicalBlock(scope: !702, file: !1, line: 388, column: 7)
!715 = !DILocation(line: 304, column: 47, scope: !705, inlinedAt: !713)
!716 = !DILocation(line: 304, column: 38, scope: !705, inlinedAt: !713)
!717 = !DILocation(line: 305, column: 45, scope: !705, inlinedAt: !713)
!718 = !DILocation(line: 305, column: 22, scope: !705, inlinedAt: !713)
!719 = !DILocation(line: 0, scope: !325, inlinedAt: !720)
!720 = distinct !DILocation(line: 305, column: 2, scope: !705, inlinedAt: !713)
!721 = !DILocation(line: 69, column: 18, scope: !325, inlinedAt: !720)
!722 = !DILocation(line: 69, column: 2, scope: !325, inlinedAt: !720)
!723 = !DILocation(line: 69, column: 25, scope: !325, inlinedAt: !720)
!724 = !DILocation(line: 70, column: 16, scope: !325, inlinedAt: !720)
!725 = !DILocation(line: 70, column: 2, scope: !325, inlinedAt: !720)
!726 = !DILocation(line: 70, column: 23, scope: !325, inlinedAt: !720)
!727 = !DILocation(line: 71, column: 2, scope: !325, inlinedAt: !720)
!728 = !DILocation(line: 306, column: 43, scope: !705, inlinedAt: !713)
!729 = !DILocation(line: 306, column: 22, scope: !705, inlinedAt: !713)
!730 = !DILocation(line: 0, scope: !325, inlinedAt: !731)
!731 = distinct !DILocation(line: 306, column: 2, scope: !705, inlinedAt: !713)
!732 = !DILocation(line: 69, column: 2, scope: !325, inlinedAt: !731)
!733 = !DILocation(line: 69, column: 25, scope: !325, inlinedAt: !731)
!734 = !DILocation(line: 70, column: 16, scope: !325, inlinedAt: !731)
!735 = !DILocation(line: 70, column: 2, scope: !325, inlinedAt: !731)
!736 = !DILocation(line: 70, column: 23, scope: !325, inlinedAt: !731)
!737 = !DILocation(line: 71, column: 2, scope: !325, inlinedAt: !731)
!738 = !DILocation(line: 307, column: 2, scope: !705, inlinedAt: !713)
!739 = !DILocation(line: 389, column: 4, scope: !714)
!740 = !DILocalVariable(name: "rc", arg: 1, scope: !741, file: !26, line: 116, type: !328)
!741 = distinct !DISubprogram(name: "rc_flush", scope: !26, file: !26, line: 116, type: !742, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !744)
!742 = !DISubroutineType(types: !743)
!743 = !{null, !328}
!744 = !{!740, !745}
!745 = !DILocalVariable(name: "i", scope: !746, file: !26, line: 118, type: !44)
!746 = distinct !DILexicalBlock(scope: !741, file: !26, line: 118, column: 2)
!747 = !DILocation(line: 0, scope: !741, inlinedAt: !748)
!748 = distinct !DILocation(line: 392, column: 3, scope: !702)
!749 = !DILocation(line: 0, scope: !746, inlinedAt: !748)
!750 = !DILocation(line: 119, column: 24, scope: !751, inlinedAt: !748)
!751 = distinct !DILexicalBlock(scope: !746, file: !26, line: 118, column: 2)
!752 = !DILocation(line: 119, column: 3, scope: !751, inlinedAt: !748)
!753 = !DILocation(line: 119, column: 28, scope: !751, inlinedAt: !748)
!754 = !DILocation(line: 398, column: 7, scope: !755)
!755 = distinct !DILexicalBlock(scope: !702, file: !1, line: 398, column: 7)
!756 = !DILocation(line: 398, column: 7, scope: !702)
!757 = !DILocation(line: 405, column: 20, scope: !112)
!758 = !DILocation(line: 407, column: 2, scope: !112)
!759 = !DILocation(line: 408, column: 1, scope: !112)
!760 = distinct !DISubprogram(name: "rc_encode", scope: !26, file: !26, line: 150, type: !761, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !763)
!761 = !DISubroutineType(types: !762)
!762 = !{!194, !328, !126, !165, !44}
!763 = !{!764, !765, !766, !767, !768, !772, !774}
!764 = !DILocalVariable(name: "rc", arg: 1, scope: !760, file: !26, line: 150, type: !328)
!765 = !DILocalVariable(name: "out", arg: 2, scope: !760, file: !26, line: 151, type: !126)
!766 = !DILocalVariable(name: "out_pos", arg: 3, scope: !760, file: !26, line: 151, type: !165)
!767 = !DILocalVariable(name: "out_size", arg: 4, scope: !760, file: !26, line: 151, type: !44)
!768 = !DILocalVariable(name: "prob", scope: !769, file: !26, line: 167, type: !54)
!769 = distinct !DILexicalBlock(scope: !770, file: !26, line: 166, column: 18)
!770 = distinct !DILexicalBlock(scope: !771, file: !26, line: 165, column: 33)
!771 = distinct !DILexicalBlock(scope: !760, file: !26, line: 155, column: 30)
!772 = !DILocalVariable(name: "prob", scope: !773, file: !26, line: 176, type: !54)
!773 = distinct !DILexicalBlock(scope: !770, file: !26, line: 175, column: 18)
!774 = !DILocalVariable(name: "bound", scope: !773, file: !26, line: 177, type: !357)
!775 = !DILocation(line: 0, scope: !760)
!776 = !DILocation(line: 155, column: 13, scope: !760)
!777 = !DILocation(line: 155, column: 23, scope: !760)
!778 = !DILocation(line: 155, column: 17, scope: !760)
!779 = !DILocation(line: 155, column: 2, scope: !760)
!780 = !DILocation(line: 157, column: 11, scope: !781)
!781 = distinct !DILexicalBlock(scope: !771, file: !26, line: 157, column: 7)
!782 = !DILocation(line: 157, column: 17, scope: !781)
!783 = !DILocation(line: 157, column: 7, scope: !771)
!784 = !DILocalVariable(name: "rc", arg: 1, scope: !785, file: !26, line: 124, type: !328)
!785 = distinct !DISubprogram(name: "rc_shift_low", scope: !26, file: !26, line: 124, type: !761, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !786)
!786 = !{!784, !787, !788, !789}
!787 = !DILocalVariable(name: "out", arg: 2, scope: !785, file: !26, line: 125, type: !126)
!788 = !DILocalVariable(name: "out_pos", arg: 3, scope: !785, file: !26, line: 125, type: !165)
!789 = !DILocalVariable(name: "out_size", arg: 4, scope: !785, file: !26, line: 125, type: !44)
!790 = !DILocation(line: 0, scope: !785, inlinedAt: !791)
!791 = distinct !DILocation(line: 158, column: 8, scope: !792)
!792 = distinct !DILexicalBlock(scope: !793, file: !26, line: 158, column: 8)
!793 = distinct !DILexicalBlock(scope: !781, file: !26, line: 157, column: 33)
!794 = !DILocation(line: 127, column: 21, scope: !795, inlinedAt: !791)
!795 = distinct !DILexicalBlock(scope: !785, file: !26, line: 127, column: 6)
!796 = !DILocation(line: 128, column: 4, scope: !795, inlinedAt: !791)
!797 = !DILocation(line: 142, column: 2, scope: !785, inlinedAt: !791)
!798 = !DILocation(line: 130, column: 8, scope: !799, inlinedAt: !791)
!799 = distinct !DILexicalBlock(scope: !800, file: !26, line: 130, column: 8)
!800 = distinct !DILexicalBlock(scope: !801, file: !26, line: 129, column: 6)
!801 = distinct !DILexicalBlock(scope: !795, file: !26, line: 128, column: 39)
!802 = !DILocation(line: 130, column: 17, scope: !799, inlinedAt: !791)
!803 = !DILocation(line: 130, column: 8, scope: !800, inlinedAt: !791)
!804 = !DILocation(line: 133, column: 24, scope: !800, inlinedAt: !791)
!805 = !DILocation(line: 133, column: 46, scope: !800, inlinedAt: !791)
!806 = !DILocation(line: 133, column: 50, scope: !800, inlinedAt: !791)
!807 = !DILocation(line: 133, column: 32, scope: !800, inlinedAt: !791)
!808 = !DILocation(line: 133, column: 30, scope: !800, inlinedAt: !791)
!809 = !DILocation(line: 133, column: 4, scope: !800, inlinedAt: !791)
!810 = !DILocation(line: 133, column: 18, scope: !800, inlinedAt: !791)
!811 = !DILocation(line: 134, column: 4, scope: !800, inlinedAt: !791)
!812 = !DILocation(line: 135, column: 14, scope: !800, inlinedAt: !791)
!813 = !DILocation(line: 137, column: 12, scope: !801, inlinedAt: !791)
!814 = !DILocation(line: 137, column: 29, scope: !801, inlinedAt: !791)
!815 = !DILocation(line: 137, column: 3, scope: !800, inlinedAt: !791)
!816 = distinct !{!816, !817, !818}
!817 = !DILocation(line: 129, column: 3, scope: !801, inlinedAt: !791)
!818 = !DILocation(line: 137, column: 33, scope: !801, inlinedAt: !791)
!819 = !DILocation(line: 139, column: 20, scope: !801, inlinedAt: !791)
!820 = !DILocation(line: 139, column: 24, scope: !801, inlinedAt: !791)
!821 = !DILocation(line: 139, column: 15, scope: !801, inlinedAt: !791)
!822 = !DILocation(line: 139, column: 13, scope: !801, inlinedAt: !791)
!823 = !DILocation(line: 161, column: 14, scope: !793)
!824 = !DILocation(line: 165, column: 27, scope: !771)
!825 = !DILocation(line: 140, column: 2, scope: !801, inlinedAt: !791)
!826 = !DILocation(line: 143, column: 17, scope: !785, inlinedAt: !791)
!827 = !DILocation(line: 143, column: 35, scope: !785, inlinedAt: !791)
!828 = !DILocation(line: 143, column: 10, scope: !785, inlinedAt: !791)
!829 = !DILocation(line: 162, column: 3, scope: !793)
!830 = !DILocation(line: 165, column: 11, scope: !771)
!831 = !DILocation(line: 165, column: 3, scope: !771)
!832 = !DILocation(line: 167, column: 24, scope: !769)
!833 = !DILocation(line: 167, column: 23, scope: !769)
!834 = !DILocation(line: 0, scope: !769)
!835 = !DILocation(line: 168, column: 27, scope: !769)
!836 = !DILocation(line: 169, column: 8, scope: !769)
!837 = !DILocation(line: 169, column: 6, scope: !769)
!838 = !DILocation(line: 168, column: 14, scope: !769)
!839 = !DILocation(line: 170, column: 32, scope: !769)
!840 = !DILocation(line: 170, column: 40, scope: !769)
!841 = !DILocation(line: 170, column: 9, scope: !769)
!842 = !DILocation(line: 171, column: 5, scope: !769)
!843 = !DILocation(line: 171, column: 24, scope: !769)
!844 = !DILocation(line: 176, column: 24, scope: !773)
!845 = !DILocation(line: 176, column: 23, scope: !773)
!846 = !DILocation(line: 0, scope: !773)
!847 = !DILocation(line: 177, column: 27, scope: !773)
!848 = !DILocation(line: 178, column: 6, scope: !773)
!849 = !DILocation(line: 177, column: 32, scope: !773)
!850 = !DILocation(line: 179, column: 15, scope: !773)
!851 = !DILocation(line: 179, column: 12, scope: !773)
!852 = !DILocation(line: 180, column: 14, scope: !773)
!853 = !DILocation(line: 181, column: 17, scope: !773)
!854 = !DILocation(line: 181, column: 9, scope: !773)
!855 = !DILocation(line: 182, column: 5, scope: !773)
!856 = !DILocation(line: 182, column: 24, scope: !773)
!857 = !DILocation(line: 187, column: 14, scope: !770)
!858 = !DILocation(line: 188, column: 4, scope: !770)
!859 = !DILocation(line: 191, column: 14, scope: !770)
!860 = !DILocation(line: 192, column: 15, scope: !770)
!861 = !DILocation(line: 192, column: 12, scope: !770)
!862 = !DILocation(line: 193, column: 4, scope: !770)
!863 = !DILocation(line: 197, column: 14, scope: !770)
!864 = !DILocation(line: 127, column: 21, scope: !795, inlinedAt: !865)
!865 = distinct !DILocation(line: 201, column: 9, scope: !866)
!866 = distinct !DILexicalBlock(scope: !867, file: !26, line: 201, column: 9)
!867 = distinct !DILexicalBlock(scope: !770, file: !26, line: 200, column: 7)
!868 = !DILocation(line: 200, column: 4, scope: !770)
!869 = !DILocation(line: 0, scope: !785, inlinedAt: !865)
!870 = !DILocation(line: 128, column: 4, scope: !795, inlinedAt: !865)
!871 = !DILocation(line: 142, column: 2, scope: !785, inlinedAt: !865)
!872 = !DILocation(line: 130, column: 8, scope: !799, inlinedAt: !865)
!873 = !DILocation(line: 130, column: 17, scope: !799, inlinedAt: !865)
!874 = !DILocation(line: 130, column: 8, scope: !800, inlinedAt: !865)
!875 = !DILocation(line: 133, column: 24, scope: !800, inlinedAt: !865)
!876 = !DILocation(line: 133, column: 46, scope: !800, inlinedAt: !865)
!877 = !DILocation(line: 133, column: 50, scope: !800, inlinedAt: !865)
!878 = !DILocation(line: 133, column: 32, scope: !800, inlinedAt: !865)
!879 = !DILocation(line: 133, column: 30, scope: !800, inlinedAt: !865)
!880 = !DILocation(line: 133, column: 4, scope: !800, inlinedAt: !865)
!881 = !DILocation(line: 133, column: 18, scope: !800, inlinedAt: !865)
!882 = !DILocation(line: 134, column: 4, scope: !800, inlinedAt: !865)
!883 = !DILocation(line: 135, column: 14, scope: !800, inlinedAt: !865)
!884 = !DILocation(line: 137, column: 12, scope: !801, inlinedAt: !865)
!885 = !DILocation(line: 137, column: 29, scope: !801, inlinedAt: !865)
!886 = !DILocation(line: 137, column: 3, scope: !800, inlinedAt: !865)
!887 = distinct !{!887, !888, !889}
!888 = !DILocation(line: 129, column: 3, scope: !801, inlinedAt: !865)
!889 = !DILocation(line: 137, column: 33, scope: !801, inlinedAt: !865)
!890 = !DILocation(line: 139, column: 20, scope: !801, inlinedAt: !865)
!891 = !DILocation(line: 139, column: 24, scope: !801, inlinedAt: !865)
!892 = !DILocation(line: 139, column: 15, scope: !801, inlinedAt: !865)
!893 = !DILocation(line: 139, column: 13, scope: !801, inlinedAt: !865)
!894 = !DILocation(line: 203, column: 13, scope: !770)
!895 = !DILocation(line: 140, column: 2, scope: !801, inlinedAt: !865)
!896 = !DILocation(line: 143, column: 17, scope: !785, inlinedAt: !865)
!897 = !DILocation(line: 143, column: 35, scope: !785, inlinedAt: !865)
!898 = !DILocation(line: 143, column: 10, scope: !785, inlinedAt: !865)
!899 = !DILocation(line: 203, column: 29, scope: !770)
!900 = !DILocation(line: 203, column: 23, scope: !770)
!901 = !DILocation(line: 203, column: 4, scope: !867)
!902 = distinct !{!902, !868, !903}
!903 = !DILocation(line: 203, column: 34, scope: !770)
!904 = !DILocalVariable(name: "rc", arg: 1, scope: !905, file: !26, line: 55, type: !328)
!905 = distinct !DISubprogram(name: "rc_reset", scope: !26, file: !26, line: 55, type: !742, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !906)
!906 = !{!904}
!907 = !DILocation(line: 0, scope: !905, inlinedAt: !908)
!908 = distinct !DILocation(line: 207, column: 4, scope: !770)
!909 = !DILocation(line: 57, column: 10, scope: !905, inlinedAt: !908)
!910 = !DILocation(line: 58, column: 17, scope: !905, inlinedAt: !908)
!911 = !DILocation(line: 59, column: 12, scope: !905, inlinedAt: !908)
!912 = !DILocation(line: 60, column: 12, scope: !905, inlinedAt: !908)
!913 = !DILocation(line: 61, column: 12, scope: !905, inlinedAt: !908)
!914 = !DILocation(line: 208, column: 4, scope: !770)
!915 = !DILocation(line: 215, column: 3, scope: !771)
!916 = distinct !{!916, !779, !917}
!917 = !DILocation(line: 216, column: 2, scope: !760)
!918 = !DILocation(line: 219, column: 10, scope: !760)
!919 = !DILocation(line: 221, column: 2, scope: !760)
!920 = !DILocation(line: 222, column: 1, scope: !760)
!921 = !DISubprogram(name: "lzma_lzma_optimum_fast", scope: !177, file: !177, line: 140, type: !922, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!922 = !DISubroutineType(types: !923)
!923 = !{null, !924, !119, !925, !925}
!924 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !116)
!925 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !151)
!926 = !DISubprogram(name: "lzma_lzma_optimum_normal", scope: !177, file: !177, line: 144, type: !927, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!927 = !DISubroutineType(types: !928)
!928 = !{null, !924, !119, !925, !925, !37}
!929 = distinct !DISubprogram(name: "lzma_lzma_encoder_reset", scope: !1, file: !1, line: 484, type: !930, scopeLine: 485, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !965)
!930 = !DISubroutineType(types: !931)
!931 = !{!115, !116, !932}
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !934)
!934 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_options_lzma", file: !81, line: 399, baseType: !935)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !81, line: 185, size: 896, elements: !936)
!936 = !{!937, !938, !940, !941, !942, !943, !944, !946, !947, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !960, !961, !962, !963, !964}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "dict_size", scope: !935, file: !81, line: 217, baseType: !37, size: 32)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict", scope: !935, file: !81, line: 240, baseType: !939, size: 64, offset: 64)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict_size", scope: !935, file: !81, line: 254, baseType: !37, size: 32, offset: 128)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "lc", scope: !935, file: !81, line: 281, baseType: !37, size: 32, offset: 160)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "lp", scope: !935, file: !81, line: 293, baseType: !37, size: 32, offset: 192)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "pb", scope: !935, file: !81, line: 316, baseType: !37, size: 32, offset: 224)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !935, file: !81, line: 322, baseType: !945, size: 32, offset: 256)
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_mode", file: !81, line: 155, baseType: !80)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "nice_len", scope: !935, file: !81, line: 342, baseType: !37, size: 32, offset: 288)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "mf", scope: !935, file: !81, line: 345, baseType: !948, size: 32, offset: 320)
!948 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_match_finder", file: !81, line: 111, baseType: !85)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !935, file: !81, line: 375, baseType: !37, size: 32, offset: 352)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !935, file: !81, line: 384, baseType: !37, size: 32, offset: 384)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !935, file: !81, line: 385, baseType: !37, size: 32, offset: 416)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !935, file: !81, line: 386, baseType: !37, size: 32, offset: 448)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !935, file: !81, line: 387, baseType: !37, size: 32, offset: 480)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int5", scope: !935, file: !81, line: 388, baseType: !37, size: 32, offset: 512)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int6", scope: !935, file: !81, line: 389, baseType: !37, size: 32, offset: 544)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int7", scope: !935, file: !81, line: 390, baseType: !37, size: 32, offset: 576)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int8", scope: !935, file: !81, line: 391, baseType: !37, size: 32, offset: 608)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !935, file: !81, line: 392, baseType: !959, size: 32, offset: 640)
!959 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !4, line: 46, baseType: !92)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !935, file: !81, line: 393, baseType: !959, size: 32, offset: 672)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !935, file: !81, line: 394, baseType: !959, size: 32, offset: 704)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !935, file: !81, line: 395, baseType: !959, size: 32, offset: 736)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !935, file: !81, line: 396, baseType: !103, size: 64, offset: 768)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !935, file: !81, line: 397, baseType: !103, size: 64, offset: 832)
!965 = !{!966, !967, !968, !969, !971, !973, !977, !979, !981, !984}
!966 = !DILocalVariable(name: "pcoder", arg: 1, scope: !929, file: !1, line: 484, type: !116)
!967 = !DILocalVariable(name: "options", arg: 2, scope: !929, file: !1, line: 484, type: !932)
!968 = !DILocalVariable(name: "coder", scope: !929, file: !1, line: 486, type: !175)
!969 = !DILocalVariable(name: "i", scope: !970, file: !1, line: 499, type: !44)
!970 = distinct !DILexicalBlock(scope: !929, file: !1, line: 499, column: 2)
!971 = !DILocalVariable(name: "i", scope: !972, file: !1, line: 505, type: !44)
!972 = distinct !DILexicalBlock(scope: !929, file: !1, line: 505, column: 2)
!973 = !DILocalVariable(name: "j", scope: !974, file: !1, line: 506, type: !44)
!974 = distinct !DILexicalBlock(scope: !975, file: !1, line: 506, column: 3)
!975 = distinct !DILexicalBlock(scope: !976, file: !1, line: 505, column: 38)
!976 = distinct !DILexicalBlock(scope: !972, file: !1, line: 505, column: 2)
!977 = !DILocalVariable(name: "i", scope: !978, file: !1, line: 517, type: !44)
!978 = distinct !DILexicalBlock(scope: !929, file: !1, line: 517, column: 2)
!979 = !DILocalVariable(name: "i", scope: !980, file: !1, line: 521, type: !44)
!980 = distinct !DILexicalBlock(scope: !929, file: !1, line: 521, column: 2)
!981 = !DILocalVariable(name: "bt_i", scope: !982, file: !1, line: 522, type: !37)
!982 = distinct !DILexicalBlock(scope: !983, file: !1, line: 522, column: 3)
!983 = distinct !DILexicalBlock(scope: !980, file: !1, line: 521, column: 2)
!984 = !DILocalVariable(name: "bt_i", scope: !985, file: !1, line: 524, type: !37)
!985 = distinct !DILexicalBlock(scope: !929, file: !1, line: 524, column: 2)
!986 = !DILocation(line: 0, scope: !929)
!987 = !DILocalVariable(name: "options", arg: 1, scope: !988, file: !1, line: 430, type: !932)
!988 = distinct !DISubprogram(name: "is_options_valid", scope: !1, file: !1, line: 430, type: !989, scopeLine: 431, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !991)
!989 = !DISubroutineType(types: !990)
!990 = !{!194, !932}
!991 = !{!987}
!992 = !DILocation(line: 0, scope: !988, inlinedAt: !993)
!993 = distinct !DILocation(line: 487, column: 7, scope: !994)
!994 = distinct !DILexicalBlock(scope: !929, file: !1, line: 487, column: 6)
!995 = !DILocalVariable(name: "options", arg: 1, scope: !996, file: !66, line: 33, type: !932)
!996 = distinct !DISubprogram(name: "is_lclppb_valid", scope: !66, file: !66, line: 33, type: !989, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !997)
!997 = !{!995}
!998 = !DILocation(line: 0, scope: !996, inlinedAt: !999)
!999 = distinct !DILocation(line: 434, column: 9, scope: !988, inlinedAt: !993)
!1000 = !DILocation(line: 35, column: 18, scope: !996, inlinedAt: !999)
!1001 = !DILocation(line: 35, column: 21, scope: !996, inlinedAt: !999)
!1002 = !DILocation(line: 35, column: 38, scope: !996, inlinedAt: !999)
!1003 = !DILocation(line: 35, column: 50, scope: !996, inlinedAt: !999)
!1004 = !DILocation(line: 35, column: 53, scope: !996, inlinedAt: !999)
!1005 = !DILocation(line: 36, column: 4, scope: !996, inlinedAt: !999)
!1006 = !DILocation(line: 37, column: 16, scope: !996, inlinedAt: !999)
!1007 = !DILocation(line: 37, column: 19, scope: !996, inlinedAt: !999)
!1008 = !DILocation(line: 435, column: 4, scope: !988, inlinedAt: !993)
!1009 = !DILocation(line: 435, column: 16, scope: !988, inlinedAt: !993)
!1010 = !DILocation(line: 436, column: 4, scope: !988, inlinedAt: !993)
!1011 = !DILocation(line: 437, column: 17, scope: !988, inlinedAt: !993)
!1012 = !DILocation(line: 438, column: 5, scope: !988, inlinedAt: !993)
!1013 = !DILocation(line: 487, column: 6, scope: !929)
!1014 = !DILocation(line: 490, column: 40, scope: !929)
!1015 = !DILocation(line: 490, column: 9, scope: !929)
!1016 = !DILocation(line: 490, column: 18, scope: !929)
!1017 = !DILocation(line: 491, column: 41, scope: !929)
!1018 = !DILocation(line: 491, column: 9, scope: !929)
!1019 = !DILocation(line: 491, column: 30, scope: !929)
!1020 = !DILocation(line: 492, column: 44, scope: !929)
!1021 = !DILocation(line: 492, column: 48, scope: !929)
!1022 = !DILocation(line: 492, column: 9, scope: !929)
!1023 = !DILocation(line: 492, column: 26, scope: !929)
!1024 = !DILocation(line: 0, scope: !905, inlinedAt: !1025)
!1025 = distinct !DILocation(line: 495, column: 2, scope: !929)
!1026 = !DILocation(line: 57, column: 10, scope: !905, inlinedAt: !1025)
!1027 = !DILocation(line: 58, column: 6, scope: !905, inlinedAt: !1025)
!1028 = !DILocation(line: 58, column: 17, scope: !905, inlinedAt: !1025)
!1029 = !DILocation(line: 59, column: 6, scope: !905, inlinedAt: !1025)
!1030 = !DILocation(line: 59, column: 12, scope: !905, inlinedAt: !1025)
!1031 = !DILocation(line: 60, column: 6, scope: !905, inlinedAt: !1025)
!1032 = !DILocation(line: 60, column: 12, scope: !905, inlinedAt: !1025)
!1033 = !DILocation(line: 61, column: 6, scope: !905, inlinedAt: !1025)
!1034 = !DILocation(line: 61, column: 12, scope: !905, inlinedAt: !1025)
!1035 = !DILocation(line: 498, column: 9, scope: !929)
!1036 = !DILocation(line: 0, scope: !970)
!1037 = !DILocation(line: 502, column: 22, scope: !929)
!1038 = !DILocation(line: 498, column: 15, scope: !929)
!1039 = !DILocation(line: 502, column: 40, scope: !929)
!1040 = !DILocation(line: 502, column: 53, scope: !929)
!1041 = !DILocalVariable(name: "probs", arg: 1, scope: !1042, file: !66, line: 129, type: !1045)
!1042 = distinct !DISubprogram(name: "literal_init", scope: !66, file: !66, line: 129, type: !1043, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1048)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{null, !1045, !37, !37}
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 12288, elements: !1047)
!1047 = !{!204}
!1048 = !{!1041, !1049, !1050, !1051, !1052, !1054}
!1049 = !DILocalVariable(name: "lc", arg: 2, scope: !1042, file: !66, line: 130, type: !37)
!1050 = !DILocalVariable(name: "lp", arg: 3, scope: !1042, file: !66, line: 130, type: !37)
!1051 = !DILocalVariable(name: "coders", scope: !1042, file: !66, line: 134, type: !357)
!1052 = !DILocalVariable(name: "i", scope: !1053, file: !66, line: 136, type: !37)
!1053 = distinct !DILexicalBlock(scope: !1042, file: !66, line: 136, column: 2)
!1054 = !DILocalVariable(name: "j", scope: !1055, file: !66, line: 137, type: !37)
!1055 = distinct !DILexicalBlock(scope: !1056, file: !66, line: 137, column: 3)
!1056 = distinct !DILexicalBlock(scope: !1053, file: !66, line: 136, column: 2)
!1057 = !DILocation(line: 0, scope: !1042, inlinedAt: !1058)
!1058 = distinct !DILocation(line: 502, column: 2, scope: !929)
!1059 = !DILocation(line: 134, column: 36, scope: !1042, inlinedAt: !1058)
!1060 = !DILocation(line: 0, scope: !1053, inlinedAt: !1058)
!1061 = !DILocation(line: 136, column: 2, scope: !1053, inlinedAt: !1058)
!1062 = !DILocation(line: 0, scope: !1055, inlinedAt: !1058)
!1063 = !DILocation(line: 138, column: 4, scope: !1064, inlinedAt: !1058)
!1064 = distinct !DILexicalBlock(scope: !1055, file: !66, line: 137, column: 3)
!1065 = !DILocation(line: 136, column: 35, scope: !1056, inlinedAt: !1058)
!1066 = !DILocation(line: 136, column: 25, scope: !1056, inlinedAt: !1058)
!1067 = distinct !{!1067, !1061, !1068}
!1068 = !DILocation(line: 138, column: 4, scope: !1053, inlinedAt: !1058)
!1069 = !DILocation(line: 0, scope: !972)
!1070 = !DILocation(line: 0, scope: !974)
!1071 = !DILocation(line: 506, column: 3, scope: !974)
!1072 = !DILocation(line: 506, column: 44, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !974, file: !1, line: 506, column: 3)
!1074 = !DILocation(line: 507, column: 4, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1073, file: !1, line: 506, column: 49)
!1076 = !DILocation(line: 508, column: 4, scope: !1075)
!1077 = distinct !{!1077, !1071, !1078, !1079, !1080}
!1078 = !DILocation(line: 509, column: 3, scope: !974)
!1079 = !{!"llvm.loop.isvectorized", i32 1}
!1080 = !{!"llvm.loop.unroll.runtime.disable"}
!1081 = !DILocation(line: 511, column: 3, scope: !975)
!1082 = !DILocation(line: 512, column: 3, scope: !975)
!1083 = !DILocation(line: 513, column: 3, scope: !975)
!1084 = !DILocation(line: 514, column: 3, scope: !975)
!1085 = distinct !{!1085, !1071, !1078, !1079, !1080}
!1086 = !DILocation(line: 506, column: 24, scope: !1073)
!1087 = distinct !{!1087, !1071, !1078, !1080, !1079}
!1088 = distinct !{!1088, !1071, !1078, !1079, !1080}
!1089 = distinct !{!1089, !1071, !1078, !1080, !1079}
!1090 = distinct !{!1090, !1071, !1078, !1079, !1080}
!1091 = distinct !{!1091, !1071, !1078, !1080, !1079}
!1092 = distinct !{!1092, !1071, !1078, !1079, !1080}
!1093 = distinct !{!1093, !1071, !1078, !1080, !1079}
!1094 = distinct !{!1094, !1071, !1078, !1079, !1080}
!1095 = distinct !{!1095, !1071, !1078, !1080, !1079}
!1096 = distinct !{!1096, !1071, !1078, !1079, !1080}
!1097 = distinct !{!1097, !1071, !1078, !1080, !1079}
!1098 = distinct !{!1098, !1071, !1078, !1079, !1080}
!1099 = distinct !{!1099, !1071, !1078, !1080, !1079}
!1100 = distinct !{!1100, !1071, !1078, !1079, !1080}
!1101 = distinct !{!1101, !1071, !1078, !1080, !1079}
!1102 = distinct !{!1102, !1071, !1078, !1079, !1080}
!1103 = distinct !{!1103, !1071, !1078, !1080, !1079}
!1104 = distinct !{!1104, !1071, !1078, !1079, !1080}
!1105 = distinct !{!1105, !1071, !1078, !1080, !1079}
!1106 = distinct !{!1106, !1071, !1078, !1079, !1080}
!1107 = distinct !{!1107, !1071, !1078, !1080, !1079}
!1108 = !DILocation(line: 0, scope: !978)
!1109 = !DILocation(line: 518, column: 3, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !978, file: !1, line: 517, column: 2)
!1111 = !DILocation(line: 0, scope: !980)
!1112 = !DILocation(line: 522, column: 3, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !982, file: !1, line: 522, column: 3)
!1114 = !DILocation(line: 0, scope: !985)
!1115 = !DILocation(line: 524, column: 2, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !985, file: !1, line: 524, column: 2)
!1117 = !DILocation(line: 527, column: 31, scope: !929)
!1118 = !DILocation(line: 528, column: 19, scope: !929)
!1119 = !DILocation(line: 528, column: 7, scope: !929)
!1120 = !DILocation(line: 528, column: 30, scope: !929)
!1121 = !DILocalVariable(name: "lencoder", arg: 1, scope: !1122, file: !1, line: 461, type: !1125)
!1122 = distinct !DISubprogram(name: "length_encoder_reset", scope: !1, file: !1, line: 461, type: !1123, scopeLine: 463, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1127)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{null, !1125, !357, !1126}
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !194)
!1127 = !{!1121, !1128, !1129, !1130, !1132, !1136, !1138, !1140}
!1128 = !DILocalVariable(name: "num_pos_states", arg: 2, scope: !1122, file: !1, line: 462, type: !357)
!1129 = !DILocalVariable(name: "fast_mode", arg: 3, scope: !1122, file: !1, line: 462, type: !1126)
!1130 = !DILocalVariable(name: "pos_state", scope: !1131, file: !1, line: 467, type: !44)
!1131 = distinct !DILexicalBlock(scope: !1122, file: !1, line: 467, column: 2)
!1132 = !DILocalVariable(name: "bt_i", scope: !1133, file: !1, line: 468, type: !37)
!1133 = distinct !DILexicalBlock(scope: !1134, file: !1, line: 468, column: 3)
!1134 = distinct !DILexicalBlock(scope: !1135, file: !1, line: 467, column: 70)
!1135 = distinct !DILexicalBlock(scope: !1131, file: !1, line: 467, column: 2)
!1136 = !DILocalVariable(name: "bt_i", scope: !1137, file: !1, line: 469, type: !37)
!1137 = distinct !DILexicalBlock(scope: !1134, file: !1, line: 469, column: 3)
!1138 = !DILocalVariable(name: "bt_i", scope: !1139, file: !1, line: 472, type: !37)
!1139 = distinct !DILexicalBlock(scope: !1122, file: !1, line: 472, column: 2)
!1140 = !DILocalVariable(name: "pos_state", scope: !1141, file: !1, line: 475, type: !44)
!1141 = distinct !DILexicalBlock(scope: !1142, file: !1, line: 475, column: 3)
!1142 = distinct !DILexicalBlock(scope: !1122, file: !1, line: 474, column: 6)
!1143 = !DILocation(line: 0, scope: !1122, inlinedAt: !1144)
!1144 = distinct !DILocation(line: 527, column: 2, scope: !929)
!1145 = !DILocation(line: 464, column: 2, scope: !1122, inlinedAt: !1144)
!1146 = !DILocation(line: 465, column: 2, scope: !1122, inlinedAt: !1144)
!1147 = !DILocation(line: 0, scope: !1131, inlinedAt: !1144)
!1148 = !DILocation(line: 467, column: 2, scope: !1131, inlinedAt: !1144)
!1149 = distinct !{!1149, !1071, !1078, !1080, !1079}
!1150 = !DILocation(line: 467, column: 57, scope: !1135, inlinedAt: !1144)
!1151 = !DILocation(line: 468, column: 3, scope: !1152, inlinedAt: !1144)
!1152 = distinct !DILexicalBlock(scope: !1133, file: !1, line: 468, column: 3)
!1153 = !DILocation(line: 469, column: 3, scope: !1154, inlinedAt: !1144)
!1154 = distinct !DILexicalBlock(scope: !1137, file: !1, line: 469, column: 3)
!1155 = distinct !{!1155, !1148, !1156, !1079, !1080}
!1156 = !DILocation(line: 470, column: 2, scope: !1131, inlinedAt: !1144)
!1157 = !DILocation(line: 0, scope: !1133, inlinedAt: !1144)
!1158 = !DILocation(line: 0, scope: !1137, inlinedAt: !1144)
!1159 = distinct !{!1159, !1148, !1156, !1079}
!1160 = !DILocation(line: 0, scope: !1139, inlinedAt: !1144)
!1161 = !DILocation(line: 472, column: 2, scope: !1162, inlinedAt: !1144)
!1162 = distinct !DILexicalBlock(scope: !1139, file: !1, line: 472, column: 2)
!1163 = !DILocation(line: 0, scope: !1141, inlinedAt: !1144)
!1164 = !DILocation(line: 474, column: 6, scope: !1122, inlinedAt: !1144)
!1165 = !DILocation(line: 477, column: 35, scope: !1166, inlinedAt: !1144)
!1166 = distinct !DILexicalBlock(scope: !1141, file: !1, line: 475, column: 3)
!1167 = !DILocation(line: 477, column: 4, scope: !1166, inlinedAt: !1144)
!1168 = !DILocation(line: 476, column: 5, scope: !1166, inlinedAt: !1144)
!1169 = !DILocation(line: 475, column: 40, scope: !1166, inlinedAt: !1144)
!1170 = !DILocation(line: 475, column: 3, scope: !1141, inlinedAt: !1144)
!1171 = distinct !{!1171, !1170, !1172}
!1172 = !DILocation(line: 477, column: 44, scope: !1141, inlinedAt: !1144)
!1173 = !DILocation(line: 531, column: 30, scope: !929)
!1174 = !DILocation(line: 530, column: 31, scope: !929)
!1175 = !DILocation(line: 531, column: 19, scope: !929)
!1176 = !DILocation(line: 531, column: 7, scope: !929)
!1177 = !DILocation(line: 0, scope: !1122, inlinedAt: !1178)
!1178 = distinct !DILocation(line: 530, column: 2, scope: !929)
!1179 = !DILocation(line: 464, column: 2, scope: !1122, inlinedAt: !1178)
!1180 = !DILocation(line: 465, column: 2, scope: !1122, inlinedAt: !1178)
!1181 = !DILocation(line: 0, scope: !1131, inlinedAt: !1178)
!1182 = !DILocation(line: 467, column: 2, scope: !1131, inlinedAt: !1178)
!1183 = !DILocation(line: 467, column: 57, scope: !1135, inlinedAt: !1178)
!1184 = !DILocation(line: 468, column: 3, scope: !1152, inlinedAt: !1178)
!1185 = !DILocation(line: 469, column: 3, scope: !1154, inlinedAt: !1178)
!1186 = distinct !{!1186, !1182, !1187, !1079, !1080}
!1187 = !DILocation(line: 470, column: 2, scope: !1131, inlinedAt: !1178)
!1188 = !DILocation(line: 0, scope: !1133, inlinedAt: !1178)
!1189 = !DILocation(line: 0, scope: !1137, inlinedAt: !1178)
!1190 = distinct !{!1190, !1182, !1187, !1079}
!1191 = !DILocation(line: 0, scope: !1139, inlinedAt: !1178)
!1192 = !DILocation(line: 472, column: 2, scope: !1162, inlinedAt: !1178)
!1193 = !DILocation(line: 0, scope: !1141, inlinedAt: !1178)
!1194 = !DILocation(line: 474, column: 6, scope: !1122, inlinedAt: !1178)
!1195 = !DILocation(line: 477, column: 35, scope: !1166, inlinedAt: !1178)
!1196 = !DILocation(line: 477, column: 4, scope: !1166, inlinedAt: !1178)
!1197 = !DILocation(line: 476, column: 5, scope: !1166, inlinedAt: !1178)
!1198 = !DILocation(line: 475, column: 40, scope: !1166, inlinedAt: !1178)
!1199 = !DILocation(line: 475, column: 3, scope: !1141, inlinedAt: !1178)
!1200 = distinct !{!1200, !1199, !1201}
!1201 = !DILocation(line: 477, column: 44, scope: !1141, inlinedAt: !1178)
!1202 = !DILocation(line: 546, column: 9, scope: !929)
!1203 = !DILocation(line: 546, column: 27, scope: !929)
!1204 = !DILocation(line: 547, column: 9, scope: !929)
!1205 = !DILocation(line: 547, column: 27, scope: !929)
!1206 = !DILocation(line: 549, column: 9, scope: !929)
!1207 = !DILocation(line: 549, column: 24, scope: !929)
!1208 = !DILocation(line: 550, column: 9, scope: !929)
!1209 = !DILocation(line: 550, column: 28, scope: !929)
!1210 = !DILocation(line: 552, column: 2, scope: !929)
!1211 = !DILocation(line: 553, column: 1, scope: !929)
!1212 = distinct !DISubprogram(name: "lzma_lzma_encoder_create", scope: !1, file: !1, line: 557, type: !1213, scopeLine: 559, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1242)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{!115, !1215, !1216, !932, !1229}
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !4, line: 403, baseType: !1218)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 341, size: 192, elements: !1219)
!1219 = !{!1220, !1224, !1228}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1218, file: !4, line: 376, baseType: !1221, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{!103, !103, !44, !44}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1218, file: !4, line: 390, baseType: !1225, size: 64, offset: 64)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{null, !103, !103}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !1218, file: !4, line: 401, baseType: !103, size: 64, offset: 128)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_lz_options", file: !122, line: 161, baseType: !1231)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !122, line: 129, size: 512, elements: !1232)
!1232 = !{!1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "before_size", scope: !1231, file: !122, line: 132, baseType: !44, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "dict_size", scope: !1231, file: !122, line: 135, baseType: !44, size: 64, offset: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "after_size", scope: !1231, file: !122, line: 139, baseType: !44, size: 64, offset: 128)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "match_len_max", scope: !1231, file: !122, line: 144, baseType: !44, size: 64, offset: 192)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "nice_len", scope: !1231, file: !122, line: 148, baseType: !44, size: 64, offset: 256)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "match_finder", scope: !1231, file: !122, line: 151, baseType: !948, size: 32, offset: 320)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1231, file: !122, line: 154, baseType: !37, size: 32, offset: 352)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict", scope: !1231, file: !122, line: 157, baseType: !939, size: 64, offset: 384)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict_size", scope: !1231, file: !122, line: 159, baseType: !37, size: 32, offset: 448)
!1242 = !{!1243, !1244, !1245, !1246, !1247, !1248}
!1243 = !DILocalVariable(name: "coder_ptr", arg: 1, scope: !1212, file: !1, line: 557, type: !1215)
!1244 = !DILocalVariable(name: "allocator", arg: 2, scope: !1212, file: !1, line: 557, type: !1216)
!1245 = !DILocalVariable(name: "options", arg: 3, scope: !1212, file: !1, line: 558, type: !932)
!1246 = !DILocalVariable(name: "lz_options", arg: 4, scope: !1212, file: !1, line: 558, type: !1229)
!1247 = !DILocalVariable(name: "coder", scope: !1212, file: !1, line: 567, type: !175)
!1248 = !DILocalVariable(name: "log_size", scope: !1249, file: !1, line: 583, type: !37)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !1, line: 578, column: 26)
!1250 = distinct !DILexicalBlock(scope: !1212, file: !1, line: 573, column: 25)
!1251 = !DILocation(line: 0, scope: !1212)
!1252 = !DILocation(line: 561, column: 6, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1212, file: !1, line: 561, column: 6)
!1254 = !DILocation(line: 561, column: 17, scope: !1253)
!1255 = !DILocation(line: 561, column: 6, scope: !1212)
!1256 = !DILocation(line: 562, column: 16, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1253, file: !1, line: 561, column: 26)
!1258 = !DILocation(line: 562, column: 14, scope: !1257)
!1259 = !DILocation(line: 563, column: 18, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1257, file: !1, line: 563, column: 7)
!1261 = !DILocation(line: 563, column: 7, scope: !1257)
!1262 = !DILocation(line: 567, column: 31, scope: !1212)
!1263 = !DILocation(line: 573, column: 19, scope: !1212)
!1264 = !DILocation(line: 573, column: 2, scope: !1212)
!1265 = !DILocation(line: 575, column: 11, scope: !1250)
!1266 = !DILocation(line: 575, column: 21, scope: !1250)
!1267 = !DILocation(line: 576, column: 4, scope: !1250)
!1268 = !DILocation(line: 579, column: 11, scope: !1249)
!1269 = !DILocation(line: 579, column: 21, scope: !1249)
!1270 = !DILocation(line: 0, scope: !1249)
!1271 = !DILocation(line: 584, column: 4, scope: !1249)
!1272 = !DILocation(line: 584, column: 24, scope: !1249)
!1273 = !DILocation(line: 584, column: 37, scope: !1249)
!1274 = !DILocation(line: 585, column: 5, scope: !1249)
!1275 = distinct !{!1275, !1271, !1276}
!1276 = !DILocation(line: 585, column: 7, scope: !1249)
!1277 = !DILocation(line: 587, column: 38, scope: !1249)
!1278 = !DILocation(line: 587, column: 11, scope: !1249)
!1279 = !DILocation(line: 587, column: 27, scope: !1249)
!1280 = !DILocation(line: 591, column: 16, scope: !1249)
!1281 = !DILocation(line: 591, column: 29, scope: !1249)
!1282 = !DILocation(line: 590, column: 29, scope: !1249)
!1283 = !DILocation(line: 591, column: 5, scope: !1249)
!1284 = !DILocation(line: 593, column: 16, scope: !1249)
!1285 = !DILocation(line: 593, column: 29, scope: !1249)
!1286 = !DILocation(line: 592, column: 27, scope: !1249)
!1287 = !DILocation(line: 593, column: 5, scope: !1249)
!1288 = !DILocation(line: 605, column: 35, scope: !1212)
!1289 = !DILocation(line: 605, column: 47, scope: !1212)
!1290 = !DILocation(line: 606, column: 4, scope: !1212)
!1291 = !DILocation(line: 606, column: 16, scope: !1212)
!1292 = !DILocation(line: 606, column: 33, scope: !1212)
!1293 = !DILocation(line: 605, column: 24, scope: !1212)
!1294 = !DILocation(line: 605, column: 9, scope: !1212)
!1295 = !DILocation(line: 607, column: 9, scope: !1212)
!1296 = !DILocation(line: 607, column: 20, scope: !1212)
!1297 = !DILocalVariable(name: "lz_options", arg: 1, scope: !1298, file: !1, line: 443, type: !1229)
!1298 = distinct !DISubprogram(name: "set_lz_options", scope: !1, file: !1, line: 443, type: !1299, scopeLine: 444, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1301)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{null, !1229, !932}
!1301 = !{!1297, !1302}
!1302 = !DILocalVariable(name: "options", arg: 2, scope: !1298, file: !1, line: 443, type: !932)
!1303 = !DILocation(line: 0, scope: !1298, inlinedAt: !1304)
!1304 = distinct !DILocation(line: 609, column: 2, scope: !1212)
!1305 = !DILocation(line: 447, column: 26, scope: !1298, inlinedAt: !1304)
!1306 = !DILocation(line: 448, column: 35, scope: !1298, inlinedAt: !1304)
!1307 = !DILocation(line: 448, column: 26, scope: !1298, inlinedAt: !1304)
!1308 = !DILocation(line: 448, column: 14, scope: !1298, inlinedAt: !1304)
!1309 = !DILocation(line: 448, column: 24, scope: !1298, inlinedAt: !1304)
!1310 = !DILocation(line: 449, column: 14, scope: !1298, inlinedAt: !1304)
!1311 = !DILocation(line: 449, column: 25, scope: !1298, inlinedAt: !1304)
!1312 = !DILocation(line: 450, column: 14, scope: !1298, inlinedAt: !1304)
!1313 = !DILocation(line: 450, column: 28, scope: !1298, inlinedAt: !1304)
!1314 = !DILocation(line: 451, column: 34, scope: !1298, inlinedAt: !1304)
!1315 = !DILocation(line: 451, column: 25, scope: !1298, inlinedAt: !1304)
!1316 = !DILocation(line: 451, column: 14, scope: !1298, inlinedAt: !1304)
!1317 = !DILocation(line: 451, column: 23, scope: !1298, inlinedAt: !1304)
!1318 = !DILocation(line: 452, column: 38, scope: !1298, inlinedAt: !1304)
!1319 = !DILocation(line: 452, column: 14, scope: !1298, inlinedAt: !1304)
!1320 = !DILocation(line: 452, column: 27, scope: !1298, inlinedAt: !1304)
!1321 = !DILocation(line: 453, column: 31, scope: !1298, inlinedAt: !1304)
!1322 = !DILocation(line: 453, column: 14, scope: !1298, inlinedAt: !1304)
!1323 = !DILocation(line: 453, column: 20, scope: !1298, inlinedAt: !1304)
!1324 = !DILocation(line: 454, column: 37, scope: !1298, inlinedAt: !1304)
!1325 = !DILocation(line: 454, column: 14, scope: !1298, inlinedAt: !1304)
!1326 = !DILocation(line: 454, column: 26, scope: !1298, inlinedAt: !1304)
!1327 = !DILocation(line: 455, column: 42, scope: !1298, inlinedAt: !1304)
!1328 = !DILocation(line: 455, column: 14, scope: !1298, inlinedAt: !1304)
!1329 = !DILocation(line: 455, column: 31, scope: !1298, inlinedAt: !1304)
!1330 = !DILocation(line: 611, column: 9, scope: !1212)
!1331 = !DILocation(line: 611, column: 2, scope: !1212)
!1332 = !DILocation(line: 612, column: 1, scope: !1212)
!1333 = !DISubprogram(name: "lzma_alloc", scope: !118, file: !118, line: 211, type: !1334, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!103, !44, !1216}
!1336 = distinct !DISubprogram(name: "lzma_lzma_encoder_init", scope: !1, file: !1, line: 626, type: !1337, scopeLine: 628, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1395)
!1337 = !DISubroutineType(types: !1338)
!1338 = !{!115, !1339, !1216, !1385}
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_next_coder", file: !118, line: 80, baseType: !1341)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_next_coder_s", file: !118, line: 124, size: 512, elements: !1342)
!1342 = !{!1343, !1344, !1347, !1350, !1356, !1361, !1368, !1373}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !1341, file: !118, line: 126, baseType: !116, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1341, file: !118, line: 130, baseType: !1345, size: 64, offset: 64)
!1345 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !1346, line: 63, baseType: !30)
!1346 = !DIFile(filename: "liblzma/api/lzma/vli.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1341, file: !118, line: 136, baseType: !1348, size: 64, offset: 128)
!1348 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !1349, line: 90, baseType: !34)
!1349 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1341, file: !118, line: 139, baseType: !1351, size: 64, offset: 192)
!1351 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_code_function", file: !118, line: 94, baseType: !1352)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{!115, !116, !1216, !1355, !164, !44, !163, !164, !44, !160}
!1355 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !939)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1341, file: !118, line: 144, baseType: !1357, size: 64, offset: 256)
!1357 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_end_function", file: !118, line: 102, baseType: !1358)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{null, !116, !1216}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "get_check", scope: !1341, file: !118, line: 148, baseType: !1362, size: 64, offset: 320)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!1365, !1366}
!1365 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !96, line: 55, baseType: !95)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "memconfig", scope: !1341, file: !118, line: 152, baseType: !1369, size: 64, offset: 384)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{!115, !116, !1372, !1372, !30}
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !1341, file: !118, line: 157, baseType: !1374, size: 64, offset: 448)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!115, !116, !1216, !1377, !1377}
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1379)
!1379 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !1380, line: 65, baseType: !1381)
!1380 = !DIFile(filename: "liblzma/api/lzma/filter.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1380, line: 43, size: 128, elements: !1382)
!1382 = !{!1383, !1384}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1381, file: !1380, line: 54, baseType: !1345, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !1381, file: !1380, line: 63, baseType: !103, size: 64, offset: 64)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1387)
!1387 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter_info", file: !118, line: 82, baseType: !1388)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_filter_info_s", file: !118, line: 109, size: 192, elements: !1389)
!1389 = !{!1390, !1391, !1394}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1388, file: !118, line: 112, baseType: !1345, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1388, file: !118, line: 116, baseType: !1392, size: 64, offset: 64)
!1392 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_init_function", file: !118, line: 86, baseType: !1393)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !1388, file: !118, line: 119, baseType: !103, size: 64, offset: 128)
!1395 = !{!1396, !1397, !1398}
!1396 = !DILocalVariable(name: "next", arg: 1, scope: !1336, file: !1, line: 626, type: !1339)
!1397 = !DILocalVariable(name: "allocator", arg: 2, scope: !1336, file: !1, line: 626, type: !1216)
!1398 = !DILocalVariable(name: "filters", arg: 3, scope: !1336, file: !1, line: 627, type: !1385)
!1399 = !DILocation(line: 0, scope: !1336)
!1400 = !DILocation(line: 629, column: 9, scope: !1336)
!1401 = !DILocation(line: 629, column: 2, scope: !1336)
!1402 = !DISubprogram(name: "lzma_lz_encoder_init", scope: !122, file: !122, line: 298, type: !1403, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!115, !1339, !1216, !1385, !1405}
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!115, !1408, !1216, !1422, !1229}
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_lz_encoder", file: !122, line: 208, baseType: !1410)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !122, line: 192, size: 256, elements: !1411)
!1411 = !{!1412, !1413, !1417, !1418}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !1410, file: !122, line: 194, baseType: !116, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1410, file: !122, line: 197, baseType: !1414, size: 64, offset: 64)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{!115, !924, !119, !163, !164, !44}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1410, file: !122, line: 202, baseType: !1358, size: 64, offset: 128)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "options_update", scope: !1410, file: !122, line: 205, baseType: !1419, size: 64, offset: 192)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!115, !116, !1377}
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1424 = distinct !DISubprogram(name: "lzma_encoder_init", scope: !1, file: !1, line: 616, type: !1406, scopeLine: 618, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1425)
!1425 = !{!1426, !1427, !1428, !1429}
!1426 = !DILocalVariable(name: "lz", arg: 1, scope: !1424, file: !1, line: 616, type: !1408)
!1427 = !DILocalVariable(name: "allocator", arg: 2, scope: !1424, file: !1, line: 616, type: !1216)
!1428 = !DILocalVariable(name: "options", arg: 3, scope: !1424, file: !1, line: 617, type: !1422)
!1429 = !DILocalVariable(name: "lz_options", arg: 4, scope: !1424, file: !1, line: 617, type: !1229)
!1430 = !DILocation(line: 0, scope: !1424)
!1431 = !DILocation(line: 619, column: 6, scope: !1424)
!1432 = !DILocation(line: 619, column: 11, scope: !1424)
!1433 = !DILocation(line: 620, column: 9, scope: !1424)
!1434 = !DILocation(line: 620, column: 2, scope: !1424)
!1435 = distinct !DISubprogram(name: "lzma_lzma_encoder_memusage", scope: !1, file: !1, line: 635, type: !1436, scopeLine: 636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1438)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{!30, !1422}
!1438 = !{!1439, !1440, !1441}
!1439 = !DILocalVariable(name: "options", arg: 1, scope: !1435, file: !1, line: 635, type: !1422)
!1440 = !DILocalVariable(name: "lz_options", scope: !1435, file: !1, line: 640, type: !1230)
!1441 = !DILocalVariable(name: "lz_memusage", scope: !1435, file: !1, line: 643, type: !1442)
!1442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!1443 = distinct !DIAssignID()
!1444 = !DILocation(line: 0, scope: !1435)
!1445 = !DILocation(line: 0, scope: !988, inlinedAt: !1446)
!1446 = distinct !DILocation(line: 637, column: 7, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1435, file: !1, line: 637, column: 6)
!1448 = !DILocation(line: 0, scope: !996, inlinedAt: !1449)
!1449 = distinct !DILocation(line: 434, column: 9, scope: !988, inlinedAt: !1446)
!1450 = !DILocation(line: 35, column: 18, scope: !996, inlinedAt: !1449)
!1451 = !DILocation(line: 35, column: 21, scope: !996, inlinedAt: !1449)
!1452 = !DILocation(line: 35, column: 38, scope: !996, inlinedAt: !1449)
!1453 = !DILocation(line: 35, column: 50, scope: !996, inlinedAt: !1449)
!1454 = !DILocation(line: 35, column: 53, scope: !996, inlinedAt: !1449)
!1455 = !DILocation(line: 36, column: 4, scope: !996, inlinedAt: !1449)
!1456 = !DILocation(line: 37, column: 16, scope: !996, inlinedAt: !1449)
!1457 = !DILocation(line: 37, column: 19, scope: !996, inlinedAt: !1449)
!1458 = !DILocation(line: 435, column: 4, scope: !988, inlinedAt: !1446)
!1459 = !DILocation(line: 435, column: 16, scope: !988, inlinedAt: !1446)
!1460 = !DILocation(line: 436, column: 4, scope: !988, inlinedAt: !1446)
!1461 = !DILocation(line: 437, column: 17, scope: !988, inlinedAt: !1446)
!1462 = !DILocation(line: 438, column: 5, scope: !988, inlinedAt: !1446)
!1463 = !DILocation(line: 637, column: 6, scope: !1435)
!1464 = !DILocation(line: 640, column: 2, scope: !1435)
!1465 = !DILocation(line: 0, scope: !1298, inlinedAt: !1466)
!1466 = distinct !DILocation(line: 641, column: 2, scope: !1435)
!1467 = !DILocation(line: 447, column: 26, scope: !1298, inlinedAt: !1466)
!1468 = distinct !DIAssignID()
!1469 = !DILocation(line: 448, column: 35, scope: !1298, inlinedAt: !1466)
!1470 = !DILocation(line: 448, column: 26, scope: !1298, inlinedAt: !1466)
!1471 = !DILocation(line: 448, column: 14, scope: !1298, inlinedAt: !1466)
!1472 = !DILocation(line: 448, column: 24, scope: !1298, inlinedAt: !1466)
!1473 = distinct !DIAssignID()
!1474 = !DILocation(line: 449, column: 14, scope: !1298, inlinedAt: !1466)
!1475 = !DILocation(line: 449, column: 25, scope: !1298, inlinedAt: !1466)
!1476 = distinct !DIAssignID()
!1477 = !DILocation(line: 450, column: 14, scope: !1298, inlinedAt: !1466)
!1478 = !DILocation(line: 450, column: 28, scope: !1298, inlinedAt: !1466)
!1479 = distinct !DIAssignID()
!1480 = !DILocation(line: 451, column: 25, scope: !1298, inlinedAt: !1466)
!1481 = !DILocation(line: 451, column: 14, scope: !1298, inlinedAt: !1466)
!1482 = !DILocation(line: 451, column: 23, scope: !1298, inlinedAt: !1466)
!1483 = distinct !DIAssignID()
!1484 = !DILocation(line: 452, column: 38, scope: !1298, inlinedAt: !1466)
!1485 = !DILocation(line: 452, column: 14, scope: !1298, inlinedAt: !1466)
!1486 = distinct !DIAssignID()
!1487 = !DILocation(line: 452, column: 27, scope: !1298, inlinedAt: !1466)
!1488 = !DILocation(line: 454, column: 37, scope: !1298, inlinedAt: !1466)
!1489 = !DILocation(line: 454, column: 14, scope: !1298, inlinedAt: !1466)
!1490 = !DILocation(line: 454, column: 26, scope: !1298, inlinedAt: !1466)
!1491 = distinct !DIAssignID()
!1492 = !DILocation(line: 455, column: 42, scope: !1298, inlinedAt: !1466)
!1493 = !DILocation(line: 455, column: 14, scope: !1298, inlinedAt: !1466)
!1494 = !DILocation(line: 455, column: 31, scope: !1298, inlinedAt: !1466)
!1495 = distinct !DIAssignID()
!1496 = !DILocation(line: 643, column: 31, scope: !1435)
!1497 = !DILocation(line: 644, column: 18, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1435, file: !1, line: 644, column: 6)
!1499 = !DILocation(line: 644, column: 6, scope: !1435)
!1500 = !DILocation(line: 648, column: 1, scope: !1435)
!1501 = !DISubprogram(name: "lzma_lz_encoder_memusage", scope: !122, file: !122, line: 306, type: !1502, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!30, !1504}
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1230)
!1506 = distinct !DISubprogram(name: "lzma_lzma_lclppb_encode", scope: !1, file: !1, line: 652, type: !1507, scopeLine: 653, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1509)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{!194, !932, !126}
!1509 = !{!1510, !1511}
!1510 = !DILocalVariable(name: "options", arg: 1, scope: !1506, file: !1, line: 652, type: !932)
!1511 = !DILocalVariable(name: "byte", arg: 2, scope: !1506, file: !1, line: 652, type: !126)
!1512 = !DILocation(line: 0, scope: !1506)
!1513 = !DILocation(line: 0, scope: !996, inlinedAt: !1514)
!1514 = distinct !DILocation(line: 654, column: 7, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1506, file: !1, line: 654, column: 6)
!1516 = !DILocation(line: 35, column: 18, scope: !996, inlinedAt: !1514)
!1517 = !DILocation(line: 35, column: 21, scope: !996, inlinedAt: !1514)
!1518 = !DILocation(line: 35, column: 38, scope: !996, inlinedAt: !1514)
!1519 = !DILocation(line: 35, column: 50, scope: !996, inlinedAt: !1514)
!1520 = !DILocation(line: 35, column: 53, scope: !996, inlinedAt: !1514)
!1521 = !DILocation(line: 36, column: 4, scope: !996, inlinedAt: !1514)
!1522 = !DILocation(line: 37, column: 16, scope: !996, inlinedAt: !1514)
!1523 = !DILocation(line: 37, column: 19, scope: !996, inlinedAt: !1514)
!1524 = !DILocation(line: 654, column: 6, scope: !1506)
!1525 = !DILocation(line: 657, column: 23, scope: !1506)
!1526 = !DILocation(line: 657, column: 27, scope: !1506)
!1527 = !DILocation(line: 657, column: 42, scope: !1506)
!1528 = !DILocation(line: 657, column: 46, scope: !1506)
!1529 = !DILocation(line: 657, column: 10, scope: !1506)
!1530 = !DILocation(line: 657, column: 8, scope: !1506)
!1531 = !DILocation(line: 660, column: 2, scope: !1506)
!1532 = !DILocation(line: 661, column: 1, scope: !1506)
!1533 = distinct !DISubprogram(name: "lzma_lzma_props_encode", scope: !1, file: !1, line: 666, type: !1534, scopeLine: 667, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1536)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!115, !1422, !126}
!1536 = !{!1537, !1538, !1539}
!1537 = !DILocalVariable(name: "options", arg: 1, scope: !1533, file: !1, line: 666, type: !1422)
!1538 = !DILocalVariable(name: "out", arg: 2, scope: !1533, file: !1, line: 666, type: !126)
!1539 = !DILocalVariable(name: "opt", scope: !1533, file: !1, line: 668, type: !1540)
!1540 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !932)
!1541 = !DILocation(line: 0, scope: !1533)
!1542 = !DILocation(line: 0, scope: !1506, inlinedAt: !1543)
!1543 = distinct !DILocation(line: 670, column: 6, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1533, file: !1, line: 670, column: 6)
!1545 = !DILocation(line: 0, scope: !996, inlinedAt: !1546)
!1546 = distinct !DILocation(line: 654, column: 7, scope: !1515, inlinedAt: !1543)
!1547 = !DILocation(line: 35, column: 18, scope: !996, inlinedAt: !1546)
!1548 = !DILocation(line: 35, column: 21, scope: !996, inlinedAt: !1546)
!1549 = !DILocation(line: 35, column: 38, scope: !996, inlinedAt: !1546)
!1550 = !DILocation(line: 35, column: 50, scope: !996, inlinedAt: !1546)
!1551 = !DILocation(line: 35, column: 53, scope: !996, inlinedAt: !1546)
!1552 = !DILocation(line: 36, column: 4, scope: !996, inlinedAt: !1546)
!1553 = !DILocation(line: 37, column: 16, scope: !996, inlinedAt: !1546)
!1554 = !DILocation(line: 37, column: 19, scope: !996, inlinedAt: !1546)
!1555 = !DILocation(line: 654, column: 6, scope: !1506, inlinedAt: !1543)
!1556 = !DILocation(line: 657, column: 23, scope: !1506, inlinedAt: !1543)
!1557 = !DILocation(line: 657, column: 27, scope: !1506, inlinedAt: !1543)
!1558 = !DILocation(line: 657, column: 42, scope: !1506, inlinedAt: !1543)
!1559 = !DILocation(line: 657, column: 46, scope: !1506, inlinedAt: !1543)
!1560 = !DILocation(line: 657, column: 10, scope: !1506, inlinedAt: !1543)
!1561 = !DILocation(line: 657, column: 8, scope: !1506, inlinedAt: !1543)
!1562 = !DILocation(line: 673, column: 26, scope: !1533)
!1563 = !DILocation(line: 673, column: 36, scope: !1533)
!1564 = !DILocalVariable(name: "buf", arg: 1, scope: !1565, file: !1566, line: 351, type: !126)
!1565 = distinct !DISubprogram(name: "unaligned_write32le", scope: !1566, file: !1566, line: 351, type: !1567, scopeLine: 352, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1569)
!1566 = !DIFile(filename: "common/tuklib_integer.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "877bd6a1d04ec1170bc985c87ef412ed")
!1567 = !DISubroutineType(types: !1568)
!1568 = !{null, !126, !37}
!1569 = !{!1564, !1570}
!1570 = !DILocalVariable(name: "num", arg: 2, scope: !1565, file: !1566, line: 351, type: !37)
!1571 = !DILocation(line: 0, scope: !1565, inlinedAt: !1572)
!1572 = distinct !DILocation(line: 673, column: 2, scope: !1533)
!1573 = !DILocation(line: 353, column: 11, scope: !1565, inlinedAt: !1572)
!1574 = !DILocation(line: 353, column: 9, scope: !1565, inlinedAt: !1572)
!1575 = !DILocation(line: 354, column: 15, scope: !1565, inlinedAt: !1572)
!1576 = !DILocation(line: 354, column: 11, scope: !1565, inlinedAt: !1572)
!1577 = !DILocation(line: 354, column: 2, scope: !1565, inlinedAt: !1572)
!1578 = !DILocation(line: 354, column: 9, scope: !1565, inlinedAt: !1572)
!1579 = !DILocation(line: 355, column: 15, scope: !1565, inlinedAt: !1572)
!1580 = !DILocation(line: 355, column: 11, scope: !1565, inlinedAt: !1572)
!1581 = !DILocation(line: 355, column: 2, scope: !1565, inlinedAt: !1572)
!1582 = !DILocation(line: 355, column: 9, scope: !1565, inlinedAt: !1572)
!1583 = !DILocation(line: 356, column: 15, scope: !1565, inlinedAt: !1572)
!1584 = !DILocation(line: 356, column: 11, scope: !1565, inlinedAt: !1572)
!1585 = !DILocation(line: 356, column: 2, scope: !1565, inlinedAt: !1572)
!1586 = !DILocation(line: 356, column: 9, scope: !1565, inlinedAt: !1572)
!1587 = !DILocation(line: 675, column: 2, scope: !1533)
!1588 = !DILocation(line: 676, column: 1, scope: !1533)
!1589 = distinct !DISubprogram(name: "lzma_mode_is_supported", scope: !1, file: !1, line: 681, type: !1590, scopeLine: 682, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1593)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!1592, !945}
!1592 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_bool", file: !4, line: 29, baseType: !42)
!1593 = !{!1594}
!1594 = !DILocalVariable(name: "mode", arg: 1, scope: !1589, file: !1, line: 681, type: !945)
!1595 = !DILocation(line: 0, scope: !1589)
!1596 = !DILocation(line: 683, column: 32, scope: !1589)
!1597 = !DILocation(line: 683, column: 9, scope: !1589)
!1598 = !DILocation(line: 683, column: 2, scope: !1589)
!1599 = distinct !DISubprogram(name: "match", scope: !1, file: !1, line: 144, type: !584, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1600)
!1600 = !{!1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1611, !1612}
!1601 = !DILocalVariable(name: "pcoder", arg: 1, scope: !1599, file: !1, line: 144, type: !116)
!1602 = !DILocalVariable(name: "pos_state", arg: 2, scope: !1599, file: !1, line: 144, type: !357)
!1603 = !DILocalVariable(name: "distance", arg: 3, scope: !1599, file: !1, line: 145, type: !357)
!1604 = !DILocalVariable(name: "len", arg: 4, scope: !1599, file: !1, line: 145, type: !357)
!1605 = !DILocalVariable(name: "coder", scope: !1599, file: !1, line: 147, type: !175)
!1606 = !DILocalVariable(name: "pos_slot", scope: !1599, file: !1, line: 153, type: !357)
!1607 = !DILocalVariable(name: "len_to_pos_state", scope: !1599, file: !1, line: 154, type: !357)
!1608 = !DILocalVariable(name: "footer_bits", scope: !1609, file: !1, line: 159, type: !357)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !1, line: 158, column: 41)
!1610 = distinct !DILexicalBlock(scope: !1599, file: !1, line: 158, column: 6)
!1611 = !DILocalVariable(name: "base", scope: !1609, file: !1, line: 160, type: !357)
!1612 = !DILocalVariable(name: "pos_reduced", scope: !1609, file: !1, line: 161, type: !357)
!1613 = !DILocation(line: 0, scope: !1599)
!1614 = !DILocation(line: 148, column: 2, scope: !1599)
!1615 = !DILocation(line: 150, column: 29, scope: !1599)
!1616 = !DILocation(line: 151, column: 11, scope: !1599)
!1617 = !DILocation(line: 150, column: 2, scope: !1599)
!1618 = !DILocalVariable(name: "pos", arg: 1, scope: !1619, file: !1620, line: 108, type: !37)
!1619 = distinct !DISubprogram(name: "get_pos_slot", scope: !1620, file: !1620, line: 108, type: !1621, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1623)
!1620 = !DIFile(filename: "liblzma/lzma/fastpos.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "cbaa9cd9040be4a8dee21ea4da47c8df")
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!37, !37}
!1623 = !{!1618}
!1624 = !DILocation(line: 0, scope: !1619, inlinedAt: !1625)
!1625 = distinct !DILocation(line: 153, column: 28, scope: !1599)
!1626 = !DILocation(line: 112, column: 10, scope: !1627, inlinedAt: !1625)
!1627 = distinct !DILexicalBlock(scope: !1619, file: !1620, line: 112, column: 6)
!1628 = !DILocation(line: 112, column: 6, scope: !1619, inlinedAt: !1625)
!1629 = !DILocation(line: 113, column: 10, scope: !1627, inlinedAt: !1625)
!1630 = !DILocation(line: 113, column: 3, scope: !1627, inlinedAt: !1625)
!1631 = !DILocation(line: 115, column: 10, scope: !1632, inlinedAt: !1625)
!1632 = distinct !DILexicalBlock(scope: !1619, file: !1620, line: 115, column: 6)
!1633 = !DILocation(line: 115, column: 6, scope: !1619, inlinedAt: !1625)
!1634 = !DILocation(line: 116, column: 10, scope: !1632, inlinedAt: !1625)
!1635 = !DILocation(line: 116, column: 3, scope: !1632, inlinedAt: !1625)
!1636 = !DILocation(line: 118, column: 9, scope: !1619, inlinedAt: !1625)
!1637 = !DILocation(line: 118, column: 2, scope: !1619, inlinedAt: !1625)
!1638 = !DILocation(line: 154, column: 36, scope: !1599)
!1639 = !DILocation(line: 155, column: 32, scope: !1599)
!1640 = !DILocation(line: 155, column: 25, scope: !1599)
!1641 = !DILocation(line: 0, scope: !347, inlinedAt: !1642)
!1642 = distinct !DILocation(line: 155, column: 2, scope: !1599)
!1643 = !DILocation(line: 69, column: 18, scope: !325, inlinedAt: !1644)
!1644 = distinct !DILocation(line: 83, column: 3, scope: !356, inlinedAt: !1642)
!1645 = !DILocation(line: 82, column: 32, scope: !356, inlinedAt: !1642)
!1646 = !DILocation(line: 82, column: 48, scope: !356, inlinedAt: !1642)
!1647 = !DILocation(line: 0, scope: !356, inlinedAt: !1642)
!1648 = !DILocation(line: 83, column: 15, scope: !356, inlinedAt: !1642)
!1649 = !DILocation(line: 0, scope: !325, inlinedAt: !1644)
!1650 = !DILocation(line: 69, column: 2, scope: !325, inlinedAt: !1644)
!1651 = !DILocation(line: 69, column: 25, scope: !325, inlinedAt: !1644)
!1652 = !DILocation(line: 70, column: 16, scope: !325, inlinedAt: !1644)
!1653 = !DILocation(line: 70, column: 2, scope: !325, inlinedAt: !1644)
!1654 = !DILocation(line: 70, column: 23, scope: !325, inlinedAt: !1644)
!1655 = !DILocation(line: 71, column: 2, scope: !325, inlinedAt: !1644)
!1656 = !DILocation(line: 84, column: 36, scope: !356, inlinedAt: !1642)
!1657 = !DILocation(line: 84, column: 30, scope: !356, inlinedAt: !1642)
!1658 = !DILocation(line: 158, column: 15, scope: !1610)
!1659 = !DILocation(line: 158, column: 6, scope: !1599)
!1660 = !DILocation(line: 159, column: 48, scope: !1609)
!1661 = !DILocation(line: 0, scope: !1609)
!1662 = !DILocation(line: 160, column: 28, scope: !1609)
!1663 = !DILocation(line: 160, column: 46, scope: !1609)
!1664 = !DILocation(line: 161, column: 41, scope: !1609)
!1665 = !DILocation(line: 163, column: 16, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1609, file: !1, line: 163, column: 7)
!1667 = !DILocation(line: 163, column: 7, scope: !1609)
!1668 = !DILocation(line: 167, column: 12, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1666, file: !1, line: 163, column: 39)
!1670 = !DILocation(line: 167, column: 24, scope: !1669)
!1671 = !DILocation(line: 167, column: 31, scope: !1669)
!1672 = !DILocation(line: 167, column: 42, scope: !1669)
!1673 = !DILocalVariable(name: "rc", arg: 1, scope: !1674, file: !26, line: 90, type: !328)
!1674 = distinct !DISubprogram(name: "rc_bittree_reverse", scope: !26, file: !26, line: 90, type: !348, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1675)
!1675 = !{!1673, !1676, !1677, !1678, !1679, !1680}
!1676 = !DILocalVariable(name: "probs", arg: 2, scope: !1674, file: !26, line: 90, type: !53)
!1677 = !DILocalVariable(name: "bit_count", arg: 3, scope: !1674, file: !26, line: 91, type: !37)
!1678 = !DILocalVariable(name: "symbol", arg: 4, scope: !1674, file: !26, line: 91, type: !37)
!1679 = !DILocalVariable(name: "model_index", scope: !1674, file: !26, line: 93, type: !37)
!1680 = !DILocalVariable(name: "bit", scope: !1681, file: !26, line: 96, type: !357)
!1681 = distinct !DILexicalBlock(scope: !1674, file: !26, line: 95, column: 5)
!1682 = !DILocation(line: 0, scope: !1674, inlinedAt: !1683)
!1683 = distinct !DILocation(line: 166, column: 4, scope: !1669)
!1684 = !DILocation(line: 96, column: 31, scope: !1681, inlinedAt: !1683)
!1685 = !DILocation(line: 0, scope: !1681, inlinedAt: !1683)
!1686 = !DILocation(line: 0, scope: !325, inlinedAt: !1687)
!1687 = distinct !DILocation(line: 98, column: 3, scope: !1681, inlinedAt: !1683)
!1688 = !DILocation(line: 69, column: 2, scope: !325, inlinedAt: !1687)
!1689 = !DILocation(line: 69, column: 25, scope: !325, inlinedAt: !1687)
!1690 = !DILocation(line: 70, column: 16, scope: !325, inlinedAt: !1687)
!1691 = !DILocation(line: 70, column: 2, scope: !325, inlinedAt: !1687)
!1692 = !DILocation(line: 70, column: 23, scope: !325, inlinedAt: !1687)
!1693 = !DILocation(line: 71, column: 2, scope: !325, inlinedAt: !1687)
!1694 = !DILocation(line: 100, column: 23, scope: !1674, inlinedAt: !1683)
!1695 = !DILocation(line: 100, column: 2, scope: !1681, inlinedAt: !1683)
!1696 = distinct !{!1696, !1697, !1698}
!1697 = !DILocation(line: 95, column: 2, scope: !1674, inlinedAt: !1683)
!1698 = !DILocation(line: 100, column: 27, scope: !1674, inlinedAt: !1683)
!1699 = !DILocation(line: 99, column: 36, scope: !1681, inlinedAt: !1683)
!1700 = !DILocation(line: 97, column: 10, scope: !1681, inlinedAt: !1683)
!1701 = !DILocation(line: 98, column: 15, scope: !1681, inlinedAt: !1683)
!1702 = !DILocation(line: 99, column: 30, scope: !1681, inlinedAt: !1683)
!1703 = !DILocation(line: 170, column: 38, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1666, file: !1, line: 169, column: 10)
!1705 = !DILocation(line: 171, column: 18, scope: !1704)
!1706 = !DILocalVariable(name: "rc", arg: 1, scope: !1707, file: !26, line: 105, type: !328)
!1707 = distinct !DISubprogram(name: "rc_direct", scope: !26, file: !26, line: 105, type: !1708, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1710)
!1708 = !DISubroutineType(types: !1709)
!1709 = !{null, !328, !37, !37}
!1710 = !{!1706, !1711, !1712}
!1711 = !DILocalVariable(name: "value", arg: 2, scope: !1707, file: !26, line: 106, type: !37)
!1712 = !DILocalVariable(name: "bit_count", arg: 3, scope: !1707, file: !26, line: 106, type: !37)
!1713 = !DILocation(line: 0, scope: !1707, inlinedAt: !1714)
!1714 = distinct !DILocation(line: 170, column: 4, scope: !1704)
!1715 = !DILocation(line: 108, column: 2, scope: !1707, inlinedAt: !1714)
!1716 = !DILocation(line: 110, column: 32, scope: !1717, inlinedAt: !1714)
!1717 = distinct !DILexicalBlock(scope: !1707, file: !26, line: 108, column: 5)
!1718 = !DILocation(line: 110, column: 29, scope: !1717, inlinedAt: !1714)
!1719 = !DILocation(line: 110, column: 45, scope: !1717, inlinedAt: !1714)
!1720 = !DILocation(line: 110, column: 19, scope: !1717, inlinedAt: !1714)
!1721 = !DILocation(line: 109, column: 24, scope: !1717, inlinedAt: !1714)
!1722 = !DILocation(line: 109, column: 3, scope: !1717, inlinedAt: !1714)
!1723 = !DILocation(line: 110, column: 5, scope: !1717, inlinedAt: !1714)
!1724 = !DILocation(line: 111, column: 21, scope: !1707, inlinedAt: !1714)
!1725 = !DILocation(line: 111, column: 2, scope: !1717, inlinedAt: !1714)
!1726 = distinct !{!1726, !1715, !1727}
!1727 = !DILocation(line: 111, column: 25, scope: !1707, inlinedAt: !1714)
!1728 = !DILocation(line: 173, column: 25, scope: !1704)
!1729 = !DILocation(line: 0, scope: !1674, inlinedAt: !1730)
!1730 = distinct !DILocation(line: 172, column: 4, scope: !1704)
!1731 = !DILocation(line: 69, column: 18, scope: !325, inlinedAt: !1732)
!1732 = distinct !DILocation(line: 98, column: 3, scope: !1681, inlinedAt: !1730)
!1733 = !DILocation(line: 96, column: 31, scope: !1681, inlinedAt: !1730)
!1734 = !DILocation(line: 0, scope: !1681, inlinedAt: !1730)
!1735 = !DILocation(line: 97, column: 10, scope: !1681, inlinedAt: !1730)
!1736 = !DILocation(line: 98, column: 15, scope: !1681, inlinedAt: !1730)
!1737 = !DILocation(line: 0, scope: !325, inlinedAt: !1732)
!1738 = !DILocation(line: 69, column: 2, scope: !325, inlinedAt: !1732)
!1739 = !DILocation(line: 69, column: 25, scope: !325, inlinedAt: !1732)
!1740 = !DILocation(line: 70, column: 16, scope: !325, inlinedAt: !1732)
!1741 = !DILocation(line: 70, column: 2, scope: !325, inlinedAt: !1732)
!1742 = !DILocation(line: 70, column: 23, scope: !325, inlinedAt: !1732)
!1743 = !DILocation(line: 71, column: 2, scope: !325, inlinedAt: !1732)
!1744 = !DILocation(line: 99, column: 36, scope: !1681, inlinedAt: !1730)
!1745 = !DILocation(line: 99, column: 30, scope: !1681, inlinedAt: !1730)
!1746 = !DILocation(line: 175, column: 13, scope: !1704)
!1747 = !DILocation(line: 175, column: 4, scope: !1704)
!1748 = !DILocation(line: 179, column: 26, scope: !1599)
!1749 = !DILocation(line: 179, column: 19, scope: !1599)
!1750 = !DILocation(line: 179, column: 2, scope: !1599)
!1751 = !DILocation(line: 179, column: 17, scope: !1599)
!1752 = !DILocation(line: 180, column: 19, scope: !1599)
!1753 = !DILocation(line: 181, column: 19, scope: !1599)
!1754 = !DILocation(line: 181, column: 17, scope: !1599)
!1755 = !DILocation(line: 182, column: 17, scope: !1599)
!1756 = !DILocation(line: 183, column: 11, scope: !1599)
!1757 = !DILocation(line: 183, column: 2, scope: !1599)
!1758 = !DILocation(line: 184, column: 1, scope: !1599)
!1759 = distinct !DISubprogram(name: "length", scope: !1, file: !1, line: 108, type: !1760, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1762)
!1760 = !DISubroutineType(types: !1761)
!1761 = !{null, !328, !1125, !357, !37, !1126}
!1762 = !{!1763, !1764, !1765, !1766, !1767}
!1763 = !DILocalVariable(name: "rc", arg: 1, scope: !1759, file: !1, line: 108, type: !328)
!1764 = !DILocalVariable(name: "lc", arg: 2, scope: !1759, file: !1, line: 108, type: !1125)
!1765 = !DILocalVariable(name: "pos_state", arg: 3, scope: !1759, file: !1, line: 109, type: !357)
!1766 = !DILocalVariable(name: "len", arg: 4, scope: !1759, file: !1, line: 109, type: !37)
!1767 = !DILocalVariable(name: "fast_mode", arg: 5, scope: !1759, file: !1, line: 109, type: !1126)
!1768 = !DILocation(line: 0, scope: !1759)
!1769 = !DILocation(line: 112, column: 6, scope: !1759)
!1770 = !DILocation(line: 114, column: 10, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1759, file: !1, line: 114, column: 6)
!1772 = !DILocation(line: 0, scope: !325, inlinedAt: !1773)
!1773 = distinct !DILocation(line: 115, column: 3, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1771, file: !1, line: 114, column: 29)
!1775 = !DILocation(line: 0, scope: !325, inlinedAt: !1776)
!1776 = distinct !DILocation(line: 118, column: 3, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1771, file: !1, line: 117, column: 9)
!1778 = !DILocation(line: 69, column: 6, scope: !325, inlinedAt: !1779)
!1779 = !DILocation(line: 0, scope: !1771)
!1780 = !DILocation(line: 69, column: 18, scope: !325, inlinedAt: !1779)
!1781 = !DILocation(line: 69, column: 2, scope: !325, inlinedAt: !1779)
!1782 = !DILocation(line: 70, column: 6, scope: !325, inlinedAt: !1779)
!1783 = !DILocation(line: 114, column: 6, scope: !1759)
!1784 = !DILocation(line: 69, column: 25, scope: !325, inlinedAt: !1773)
!1785 = !DILocation(line: 70, column: 16, scope: !325, inlinedAt: !1773)
!1786 = !DILocation(line: 70, column: 2, scope: !325, inlinedAt: !1773)
!1787 = !DILocation(line: 70, column: 23, scope: !325, inlinedAt: !1773)
!1788 = !DILocation(line: 71, column: 2, scope: !325, inlinedAt: !1773)
!1789 = !DILocation(line: 116, column: 22, scope: !1774)
!1790 = !DILocation(line: 116, column: 18, scope: !1774)
!1791 = !DILocation(line: 0, scope: !347, inlinedAt: !1792)
!1792 = distinct !DILocation(line: 116, column: 3, scope: !1774)
!1793 = !DILocation(line: 82, column: 32, scope: !356, inlinedAt: !1792)
!1794 = !DILocation(line: 0, scope: !356, inlinedAt: !1792)
!1795 = !DILocation(line: 83, column: 15, scope: !356, inlinedAt: !1792)
!1796 = !DILocation(line: 0, scope: !325, inlinedAt: !1797)
!1797 = distinct !DILocation(line: 83, column: 3, scope: !356, inlinedAt: !1792)
!1798 = !DILocation(line: 69, column: 2, scope: !325, inlinedAt: !1797)
!1799 = !DILocation(line: 69, column: 25, scope: !325, inlinedAt: !1797)
!1800 = !DILocation(line: 70, column: 16, scope: !325, inlinedAt: !1797)
!1801 = !DILocation(line: 70, column: 2, scope: !325, inlinedAt: !1797)
!1802 = !DILocation(line: 70, column: 23, scope: !325, inlinedAt: !1797)
!1803 = !DILocation(line: 71, column: 2, scope: !325, inlinedAt: !1797)
!1804 = !DILocation(line: 84, column: 36, scope: !356, inlinedAt: !1792)
!1805 = !DILocation(line: 133, column: 6, scope: !1759)
!1806 = !DILocation(line: 69, column: 25, scope: !325, inlinedAt: !1776)
!1807 = !DILocation(line: 70, column: 16, scope: !325, inlinedAt: !1776)
!1808 = !DILocation(line: 70, column: 2, scope: !325, inlinedAt: !1776)
!1809 = !DILocation(line: 70, column: 23, scope: !325, inlinedAt: !1776)
!1810 = !DILocation(line: 71, column: 2, scope: !325, inlinedAt: !1776)
!1811 = !DILocation(line: 119, column: 7, scope: !1777)
!1812 = !DILocation(line: 121, column: 11, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1777, file: !1, line: 121, column: 7)
!1814 = !DILocation(line: 0, scope: !1813)
!1815 = !DILocation(line: 0, scope: !325, inlinedAt: !1816)
!1816 = distinct !DILocation(line: 122, column: 4, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1813, file: !1, line: 121, column: 30)
!1818 = !DILocation(line: 0, scope: !325, inlinedAt: !1819)
!1819 = distinct !DILocation(line: 125, column: 4, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1813, file: !1, line: 124, column: 10)
!1821 = !DILocation(line: 69, column: 2, scope: !325, inlinedAt: !1814)
!1822 = !DILocation(line: 121, column: 7, scope: !1777)
!1823 = !DILocation(line: 69, column: 25, scope: !325, inlinedAt: !1816)
!1824 = !DILocation(line: 70, column: 16, scope: !325, inlinedAt: !1816)
!1825 = !DILocation(line: 70, column: 2, scope: !325, inlinedAt: !1816)
!1826 = !DILocation(line: 70, column: 23, scope: !325, inlinedAt: !1816)
!1827 = !DILocation(line: 71, column: 2, scope: !325, inlinedAt: !1816)
!1828 = !DILocation(line: 123, column: 23, scope: !1817)
!1829 = !DILocation(line: 123, column: 19, scope: !1817)
!1830 = !DILocation(line: 0, scope: !347, inlinedAt: !1831)
!1831 = distinct !DILocation(line: 123, column: 4, scope: !1817)
!1832 = !DILocation(line: 82, column: 32, scope: !356, inlinedAt: !1831)
!1833 = !DILocation(line: 0, scope: !356, inlinedAt: !1831)
!1834 = !DILocation(line: 83, column: 15, scope: !356, inlinedAt: !1831)
!1835 = !DILocation(line: 0, scope: !325, inlinedAt: !1836)
!1836 = distinct !DILocation(line: 83, column: 3, scope: !356, inlinedAt: !1831)
!1837 = !DILocation(line: 69, column: 2, scope: !325, inlinedAt: !1836)
!1838 = !DILocation(line: 69, column: 25, scope: !325, inlinedAt: !1836)
!1839 = !DILocation(line: 70, column: 16, scope: !325, inlinedAt: !1836)
!1840 = !DILocation(line: 70, column: 2, scope: !325, inlinedAt: !1836)
!1841 = !DILocation(line: 70, column: 23, scope: !325, inlinedAt: !1836)
!1842 = !DILocation(line: 71, column: 2, scope: !325, inlinedAt: !1836)
!1843 = !DILocation(line: 84, column: 36, scope: !356, inlinedAt: !1831)
!1844 = !DILocation(line: 69, column: 25, scope: !325, inlinedAt: !1819)
!1845 = !DILocation(line: 70, column: 16, scope: !325, inlinedAt: !1819)
!1846 = !DILocation(line: 70, column: 2, scope: !325, inlinedAt: !1819)
!1847 = !DILocation(line: 70, column: 23, scope: !325, inlinedAt: !1819)
!1848 = !DILocation(line: 71, column: 2, scope: !325, inlinedAt: !1819)
!1849 = !DILocation(line: 126, column: 8, scope: !1820)
!1850 = !DILocation(line: 127, column: 23, scope: !1820)
!1851 = !DILocation(line: 0, scope: !347, inlinedAt: !1852)
!1852 = distinct !DILocation(line: 127, column: 4, scope: !1820)
!1853 = !DILocation(line: 82, column: 32, scope: !356, inlinedAt: !1852)
!1854 = !DILocation(line: 82, column: 48, scope: !356, inlinedAt: !1852)
!1855 = !DILocation(line: 0, scope: !356, inlinedAt: !1852)
!1856 = !DILocation(line: 83, column: 15, scope: !356, inlinedAt: !1852)
!1857 = !DILocation(line: 0, scope: !325, inlinedAt: !1858)
!1858 = distinct !DILocation(line: 83, column: 3, scope: !356, inlinedAt: !1852)
!1859 = !DILocation(line: 69, column: 2, scope: !325, inlinedAt: !1858)
!1860 = !DILocation(line: 69, column: 25, scope: !325, inlinedAt: !1858)
!1861 = !DILocation(line: 70, column: 16, scope: !325, inlinedAt: !1858)
!1862 = !DILocation(line: 70, column: 2, scope: !325, inlinedAt: !1858)
!1863 = !DILocation(line: 70, column: 23, scope: !325, inlinedAt: !1858)
!1864 = !DILocation(line: 71, column: 2, scope: !325, inlinedAt: !1858)
!1865 = !DILocation(line: 84, column: 36, scope: !356, inlinedAt: !1852)
!1866 = !DILocation(line: 84, column: 30, scope: !356, inlinedAt: !1852)
!1867 = !DILocation(line: 82, column: 32, scope: !356, inlinedAt: !1779)
!1868 = !DILocation(line: 82, column: 48, scope: !356, inlinedAt: !1779)
!1869 = !DILocation(line: 83, column: 15, scope: !356, inlinedAt: !1779)
!1870 = !DILocation(line: 69, column: 2, scope: !325, inlinedAt: !1871)
!1871 = !DILocation(line: 83, column: 3, scope: !356, inlinedAt: !1779)
!1872 = !DILocation(line: 69, column: 25, scope: !325, inlinedAt: !1871)
!1873 = !DILocation(line: 70, column: 16, scope: !325, inlinedAt: !1871)
!1874 = !DILocation(line: 70, column: 2, scope: !325, inlinedAt: !1871)
!1875 = !DILocation(line: 70, column: 23, scope: !325, inlinedAt: !1871)
!1876 = !DILocation(line: 71, column: 2, scope: !325, inlinedAt: !1871)
!1877 = !DILocation(line: 84, column: 30, scope: !356, inlinedAt: !1779)
!1878 = !DILocation(line: 84, column: 36, scope: !356, inlinedAt: !1779)
!1879 = !DILocation(line: 134, column: 13, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1881, file: !1, line: 134, column: 7)
!1881 = distinct !DILexicalBlock(scope: !1759, file: !1, line: 133, column: 6)
!1882 = !DILocation(line: 134, column: 9, scope: !1880)
!1883 = !DILocation(line: 134, column: 7, scope: !1880)
!1884 = !DILocation(line: 134, column: 33, scope: !1880)
!1885 = !DILocation(line: 134, column: 7, scope: !1881)
!1886 = !DILocation(line: 135, column: 4, scope: !1880)
!1887 = !DILocation(line: 136, column: 1, scope: !1759)
!1888 = distinct !DISubprogram(name: "length_update_prices", scope: !1, file: !1, line: 79, type: !1889, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1891)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{null, !1125, !357}
!1891 = !{!1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1901}
!1892 = !DILocalVariable(name: "lc", arg: 1, scope: !1888, file: !1, line: 79, type: !1125)
!1893 = !DILocalVariable(name: "pos_state", arg: 2, scope: !1888, file: !1, line: 79, type: !357)
!1894 = !DILocalVariable(name: "table_size", scope: !1888, file: !1, line: 81, type: !357)
!1895 = !DILocalVariable(name: "a0", scope: !1888, file: !1, line: 84, type: !357)
!1896 = !DILocalVariable(name: "a1", scope: !1888, file: !1, line: 85, type: !357)
!1897 = !DILocalVariable(name: "b0", scope: !1888, file: !1, line: 86, type: !357)
!1898 = !DILocalVariable(name: "b1", scope: !1888, file: !1, line: 87, type: !357)
!1899 = !DILocalVariable(name: "prices", scope: !1888, file: !1, line: 88, type: !1900)
!1900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!1901 = !DILocalVariable(name: "i", scope: !1888, file: !1, line: 90, type: !37)
!1902 = !DILocation(line: 0, scope: !1888)
!1903 = !DILocation(line: 81, column: 34, scope: !1888)
!1904 = !DILocation(line: 82, column: 6, scope: !1888)
!1905 = !DILocation(line: 82, column: 2, scope: !1888)
!1906 = !DILocation(line: 82, column: 26, scope: !1888)
!1907 = !DILocation(line: 84, column: 41, scope: !1888)
!1908 = !DILocalVariable(name: "prob", arg: 1, scope: !1909, file: !1910, line: 37, type: !1913)
!1909 = distinct !DISubprogram(name: "rc_bit_0_price", scope: !1910, file: !1910, line: 37, type: !1911, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1914)
!1910 = !DIFile(filename: "liblzma/rangecoder/price.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "97acd9ecb91079df77ddfdfaeeb4fcaf")
!1911 = !DISubroutineType(types: !1912)
!1912 = !{!37, !1913}
!1913 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!1914 = !{!1908}
!1915 = !DILocation(line: 0, scope: !1909, inlinedAt: !1916)
!1916 = distinct !DILocation(line: 84, column: 22, scope: !1888)
!1917 = !DILocation(line: 39, column: 29, scope: !1909, inlinedAt: !1916)
!1918 = !DILocation(line: 39, column: 9, scope: !1909, inlinedAt: !1916)
!1919 = !DILocalVariable(name: "prob", arg: 1, scope: !1920, file: !1910, line: 44, type: !1913)
!1920 = distinct !DISubprogram(name: "rc_bit_1_price", scope: !1910, file: !1910, line: 44, type: !1911, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1921)
!1921 = !{!1919}
!1922 = !DILocation(line: 0, scope: !1920, inlinedAt: !1923)
!1923 = distinct !DILocation(line: 85, column: 22, scope: !1888)
!1924 = !DILocation(line: 47, column: 4, scope: !1920, inlinedAt: !1923)
!1925 = !DILocation(line: 46, column: 9, scope: !1920, inlinedAt: !1923)
!1926 = !DILocation(line: 86, column: 46, scope: !1888)
!1927 = !DILocation(line: 0, scope: !1909, inlinedAt: !1928)
!1928 = distinct !DILocation(line: 86, column: 27, scope: !1888)
!1929 = !DILocation(line: 39, column: 29, scope: !1909, inlinedAt: !1928)
!1930 = !DILocation(line: 39, column: 9, scope: !1909, inlinedAt: !1928)
!1931 = !DILocation(line: 86, column: 25, scope: !1888)
!1932 = !DILocation(line: 0, scope: !1920, inlinedAt: !1933)
!1933 = distinct !DILocation(line: 87, column: 27, scope: !1888)
!1934 = !DILocation(line: 47, column: 4, scope: !1920, inlinedAt: !1933)
!1935 = !DILocation(line: 46, column: 9, scope: !1920, inlinedAt: !1933)
!1936 = !DILocation(line: 87, column: 25, scope: !1888)
!1937 = !DILocation(line: 88, column: 31, scope: !1888)
!1938 = !DILocation(line: 88, column: 27, scope: !1888)
!1939 = !DILocation(line: 91, column: 7, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1888, file: !1, line: 91, column: 2)
!1941 = !DILocation(line: 91, column: 29, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1940, file: !1, line: 91, column: 2)
!1943 = !DILocation(line: 91, column: 2, scope: !1940)
!1944 = !DILocalVariable(name: "probs", arg: 1, scope: !1945, file: !1910, line: 52, type: !1948)
!1945 = distinct !DISubprogram(name: "rc_bittree_price", scope: !1910, file: !1910, line: 52, type: !1946, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1950)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!37, !1948, !357, !37}
!1948 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1949)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1950 = !{!1944, !1951, !1952, !1953, !1954}
!1951 = !DILocalVariable(name: "bit_levels", arg: 2, scope: !1945, file: !1910, line: 53, type: !357)
!1952 = !DILocalVariable(name: "symbol", arg: 3, scope: !1945, file: !1910, line: 53, type: !37)
!1953 = !DILocalVariable(name: "price", scope: !1945, file: !1910, line: 55, type: !37)
!1954 = !DILocalVariable(name: "bit", scope: !1955, file: !1910, line: 59, type: !357)
!1955 = distinct !DILexicalBlock(scope: !1945, file: !1910, line: 58, column: 5)
!1956 = !DILocation(line: 0, scope: !1945, inlinedAt: !1957)
!1957 = distinct !DILocation(line: 92, column: 20, scope: !1942)
!1958 = !DILocation(line: 58, column: 2, scope: !1945, inlinedAt: !1957)
!1959 = !DILocation(line: 95, column: 2, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1888, file: !1, line: 95, column: 2)
!1961 = !DILocation(line: 95, column: 24, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1960, file: !1, line: 95, column: 2)
!1963 = !DILocation(line: 0, scope: !1945, inlinedAt: !1964)
!1964 = distinct !DILocation(line: 96, column: 20, scope: !1962)
!1965 = !DILocation(line: 58, column: 2, scope: !1945, inlinedAt: !1964)
!1966 = !DILocation(line: 59, column: 31, scope: !1955, inlinedAt: !1957)
!1967 = !DILocation(line: 0, scope: !1955, inlinedAt: !1957)
!1968 = !DILocation(line: 60, column: 10, scope: !1955, inlinedAt: !1957)
!1969 = !DILocation(line: 61, column: 25, scope: !1955, inlinedAt: !1957)
!1970 = !DILocalVariable(name: "prob", arg: 1, scope: !1971, file: !1910, line: 29, type: !1913)
!1971 = distinct !DISubprogram(name: "rc_bit_price", scope: !1910, file: !1910, line: 29, type: !1972, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1974)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!37, !1913, !357}
!1974 = !{!1970, !1975}
!1975 = !DILocalVariable(name: "bit", arg: 2, scope: !1971, file: !1910, line: 29, type: !357)
!1976 = !DILocation(line: 0, scope: !1971, inlinedAt: !1977)
!1977 = distinct !DILocation(line: 61, column: 12, scope: !1955, inlinedAt: !1957)
!1978 = !DILocation(line: 31, column: 25, scope: !1971, inlinedAt: !1977)
!1979 = !DILocation(line: 32, column: 4, scope: !1971, inlinedAt: !1977)
!1980 = !DILocation(line: 31, column: 30, scope: !1971, inlinedAt: !1977)
!1981 = !DILocation(line: 32, column: 33, scope: !1971, inlinedAt: !1977)
!1982 = !DILocation(line: 31, column: 9, scope: !1971, inlinedAt: !1977)
!1983 = !DILocation(line: 61, column: 9, scope: !1955, inlinedAt: !1957)
!1984 = !DILocation(line: 62, column: 18, scope: !1945, inlinedAt: !1957)
!1985 = !DILocation(line: 62, column: 2, scope: !1955, inlinedAt: !1957)
!1986 = distinct !{!1986, !1958, !1987}
!1987 = !DILocation(line: 62, column: 22, scope: !1945, inlinedAt: !1957)
!1988 = !DILocation(line: 92, column: 18, scope: !1942)
!1989 = !DILocation(line: 92, column: 13, scope: !1942)
!1990 = distinct !{!1990, !1943, !1991}
!1991 = !DILocation(line: 93, column: 20, scope: !1940)
!1992 = !DILocation(line: 92, column: 3, scope: !1942)
!1993 = !DILocation(line: 99, column: 11, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !1, line: 99, column: 2)
!1995 = distinct !DILexicalBlock(scope: !1888, file: !1, line: 99, column: 2)
!1996 = !DILocation(line: 99, column: 2, scope: !1995)
!1997 = !DILocation(line: 59, column: 31, scope: !1955, inlinedAt: !1964)
!1998 = !DILocation(line: 0, scope: !1955, inlinedAt: !1964)
!1999 = !DILocation(line: 60, column: 10, scope: !1955, inlinedAt: !1964)
!2000 = !DILocation(line: 61, column: 25, scope: !1955, inlinedAt: !1964)
!2001 = !DILocation(line: 0, scope: !1971, inlinedAt: !2002)
!2002 = distinct !DILocation(line: 61, column: 12, scope: !1955, inlinedAt: !1964)
!2003 = !DILocation(line: 31, column: 25, scope: !1971, inlinedAt: !2002)
!2004 = !DILocation(line: 32, column: 4, scope: !1971, inlinedAt: !2002)
!2005 = !DILocation(line: 31, column: 30, scope: !1971, inlinedAt: !2002)
!2006 = !DILocation(line: 32, column: 33, scope: !1971, inlinedAt: !2002)
!2007 = !DILocation(line: 31, column: 9, scope: !1971, inlinedAt: !2002)
!2008 = !DILocation(line: 61, column: 9, scope: !1955, inlinedAt: !1964)
!2009 = !DILocation(line: 62, column: 18, scope: !1945, inlinedAt: !1964)
!2010 = !DILocation(line: 62, column: 2, scope: !1955, inlinedAt: !1964)
!2011 = distinct !{!2011, !1965, !2012}
!2012 = !DILocation(line: 62, column: 22, scope: !1945, inlinedAt: !1964)
!2013 = !DILocation(line: 96, column: 18, scope: !1962)
!2014 = !DILocation(line: 96, column: 3, scope: !1962)
!2015 = !DILocation(line: 96, column: 13, scope: !1962)
!2016 = !DILocation(line: 95, column: 66, scope: !1962)
!2017 = distinct !{!2017, !1959, !2018}
!2018 = !DILocation(line: 97, column: 38, scope: !1960)
!2019 = !DILocation(line: 0, scope: !1945, inlinedAt: !2020)
!2020 = distinct !DILocation(line: 100, column: 20, scope: !1994)
!2021 = !DILocation(line: 56, column: 9, scope: !1945, inlinedAt: !2020)
!2022 = !DILocation(line: 58, column: 2, scope: !1945, inlinedAt: !2020)
!2023 = !DILocation(line: 59, column: 31, scope: !1955, inlinedAt: !2020)
!2024 = !DILocation(line: 0, scope: !1955, inlinedAt: !2020)
!2025 = !DILocation(line: 60, column: 10, scope: !1955, inlinedAt: !2020)
!2026 = !DILocation(line: 61, column: 25, scope: !1955, inlinedAt: !2020)
!2027 = !DILocation(line: 0, scope: !1971, inlinedAt: !2028)
!2028 = distinct !DILocation(line: 61, column: 12, scope: !1955, inlinedAt: !2020)
!2029 = !DILocation(line: 31, column: 25, scope: !1971, inlinedAt: !2028)
!2030 = !DILocation(line: 32, column: 4, scope: !1971, inlinedAt: !2028)
!2031 = !DILocation(line: 31, column: 30, scope: !1971, inlinedAt: !2028)
!2032 = !DILocation(line: 32, column: 33, scope: !1971, inlinedAt: !2028)
!2033 = !DILocation(line: 31, column: 9, scope: !1971, inlinedAt: !2028)
!2034 = !DILocation(line: 61, column: 9, scope: !1955, inlinedAt: !2020)
!2035 = !DILocation(line: 62, column: 18, scope: !1945, inlinedAt: !2020)
!2036 = !DILocation(line: 62, column: 2, scope: !1955, inlinedAt: !2020)
!2037 = distinct !{!2037, !2022, !2038}
!2038 = !DILocation(line: 62, column: 22, scope: !1945, inlinedAt: !2020)
!2039 = !DILocation(line: 100, column: 18, scope: !1994)
!2040 = !DILocation(line: 100, column: 3, scope: !1994)
!2041 = !DILocation(line: 100, column: 13, scope: !1994)
!2042 = !DILocation(line: 99, column: 25, scope: !1994)
!2043 = distinct !{!2043, !1996, !2044}
!2044 = !DILocation(line: 101, column: 42, scope: !1995)
!2045 = !DILocation(line: 104, column: 1, scope: !1888)
!2046 = distinct !DISubprogram(name: "lzma_encode", scope: !1, file: !1, line: 412, type: !2047, scopeLine: 415, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2049)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{!115, !116, !119, !163, !164, !44}
!2049 = !{!2050, !2051, !2052, !2053, !2054, !2055}
!2050 = !DILocalVariable(name: "pcoder", arg: 1, scope: !2046, file: !1, line: 412, type: !116)
!2051 = !DILocalVariable(name: "mf", arg: 2, scope: !2046, file: !1, line: 412, type: !119)
!2052 = !DILocalVariable(name: "out", arg: 3, scope: !2046, file: !1, line: 413, type: !163)
!2053 = !DILocalVariable(name: "out_pos", arg: 4, scope: !2046, file: !1, line: 413, type: !164)
!2054 = !DILocalVariable(name: "out_size", arg: 5, scope: !2046, file: !1, line: 414, type: !44)
!2055 = !DILocalVariable(name: "coder", scope: !2046, file: !1, line: 416, type: !174)
!2056 = !DILocation(line: 0, scope: !2046)
!2057 = !DILocation(line: 418, column: 6, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2046, file: !1, line: 418, column: 6)
!2059 = !DILocation(line: 418, column: 6, scope: !2046)
!2060 = !DILocation(line: 421, column: 9, scope: !2046)
!2061 = !DILocation(line: 421, column: 2, scope: !2046)
!2062 = !DILocation(line: 422, column: 1, scope: !2046)
