; ModuleID = 'liblzma/common/block_encoder.c'
source_filename = "liblzma/common/block_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_block_encoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %block) #0 !dbg !228 {
entry:
    #dbg_value(ptr %next, !233, !DIExpression(), !236)
    #dbg_value(ptr %allocator, !234, !DIExpression(), !236)
    #dbg_value(ptr %block, !235, !DIExpression(), !236)
  %init = getelementptr inbounds i8, ptr %next, i64 16, !dbg !237
  %0 = load i64, ptr %init, align 8, !dbg !237
  %cmp.not = icmp eq i64 %0, ptrtoint (ptr @lzma_block_encoder_init to i64), !dbg !237
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !240

if.then:                                          ; preds = %entry
  tail call void @lzma_next_end(ptr noundef nonnull %next, ptr noundef %allocator) #4, !dbg !237
  br label %if.end, !dbg !237

if.end:                                           ; preds = %if.then, %entry
  store i64 ptrtoint (ptr @lzma_block_encoder_init to i64), ptr %init, align 8, !dbg !240
  %cmp2 = icmp eq ptr %block, null, !dbg !241
  br i1 %cmp2, label %return, label %if.end4, !dbg !243

if.end4:                                          ; preds = %if.end
  %1 = load i32, ptr %block, align 8, !dbg !244
  %cmp5.not = icmp eq i32 %1, 0, !dbg !246
  br i1 %cmp5.not, label %if.end7, label %return, !dbg !247

if.end7:                                          ; preds = %if.end4
  %check = getelementptr inbounds i8, ptr %block, i64 8, !dbg !248
  %2 = load i32, ptr %check, align 8, !dbg !248
  %cmp8 = icmp ugt i32 %2, 15, !dbg !250
  br i1 %cmp8, label %return, label %if.end10, !dbg !251

if.end10:                                         ; preds = %if.end7
  %call = tail call zeroext i8 @lzma_check_is_supported(i32 noundef %2) #4, !dbg !252
  %tobool.not = icmp eq i8 %call, 0, !dbg !252
  br i1 %tobool.not, label %return, label %if.end13, !dbg !254

if.end13:                                         ; preds = %if.end10
  %3 = load ptr, ptr %next, align 8, !dbg !255
  %cmp14 = icmp eq ptr %3, null, !dbg !257
  br i1 %cmp14, label %if.then15, label %if.end29, !dbg !258

if.then15:                                        ; preds = %if.end13
  %call16 = tail call ptr @lzma_alloc(i64 noundef 208, ptr noundef %allocator) #4, !dbg !259
  store ptr %call16, ptr %next, align 8, !dbg !261
  %cmp19 = icmp eq ptr %call16, null, !dbg !262
  br i1 %cmp19, label %return, label %if.end21, !dbg !264

if.end21:                                         ; preds = %if.then15
  %code = getelementptr inbounds i8, ptr %next, i64 24, !dbg !265
  store ptr @block_encode, ptr %code, align 8, !dbg !266
  %end = getelementptr inbounds i8, ptr %next, i64 32, !dbg !267
  store ptr @block_encoder_end, ptr %end, align 8, !dbg !268
  %update = getelementptr inbounds i8, ptr %next, i64 56, !dbg !269
  store ptr @block_encoder_update, ptr %update, align 8, !dbg !270
  store ptr null, ptr %call16, align 8, !dbg !271
  %.compoundliteral.sroa.2.0.next23.sroa_idx = getelementptr inbounds i8, ptr %call16, i64 8, !dbg !271
  store i64 -1, ptr %.compoundliteral.sroa.2.0.next23.sroa_idx, align 8, !dbg !271
  %.compoundliteral.sroa.3.0.next23.sroa_idx = getelementptr inbounds i8, ptr %call16, i64 16, !dbg !271
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.compoundliteral.sroa.3.0.next23.sroa_idx, i8 0, i64 48, i1 false), !dbg !271
  %.pre = load ptr, ptr %next, align 8, !dbg !272
  br label %if.end29, !dbg !273

if.end29:                                         ; preds = %if.end21, %if.end13
  %4 = phi ptr [ %.pre, %if.end21 ], [ %3, %if.end13 ], !dbg !272
  %sequence = getelementptr inbounds i8, ptr %4, i64 72, !dbg !274
  store i32 0, ptr %sequence, align 8, !dbg !275
  %5 = load ptr, ptr %next, align 8, !dbg !276
  %block32 = getelementptr inbounds i8, ptr %5, i64 64, !dbg !277
  store ptr %block, ptr %block32, align 8, !dbg !278
  %6 = load ptr, ptr %next, align 8, !dbg !279
  %compressed_size = getelementptr inbounds i8, ptr %6, i64 80, !dbg !280
  store i64 0, ptr %compressed_size, align 8, !dbg !281
  %7 = load ptr, ptr %next, align 8, !dbg !282
  %uncompressed_size = getelementptr inbounds i8, ptr %7, i64 88, !dbg !283
  store i64 0, ptr %uncompressed_size, align 8, !dbg !284
  %8 = load ptr, ptr %next, align 8, !dbg !285
  %pos = getelementptr inbounds i8, ptr %8, i64 96, !dbg !286
  store i64 0, ptr %pos, align 8, !dbg !287
  %9 = load ptr, ptr %next, align 8, !dbg !288
  %check37 = getelementptr inbounds i8, ptr %9, i64 104, !dbg !289
  %10 = load i32, ptr %check, align 8, !dbg !290
  tail call void @lzma_check_init(ptr noundef nonnull %check37, i32 noundef %10) #4, !dbg !291
  %11 = load ptr, ptr %next, align 8, !dbg !292
  %filters = getelementptr inbounds i8, ptr %block, i64 32, !dbg !293
  %12 = load ptr, ptr %filters, align 8, !dbg !293
  %call41 = tail call i32 @lzma_raw_encoder_init(ptr noundef %11, ptr noundef %allocator, ptr noundef %12) #4, !dbg !294
  br label %return, !dbg !295

return:                                           ; preds = %if.then15, %if.end10, %if.end7, %if.end4, %if.end, %if.end29
  %retval.0 = phi i32 [ %call41, %if.end29 ], [ 11, %if.end ], [ 8, %if.end4 ], [ 11, %if.end7 ], [ 3, %if.end10 ], [ 5, %if.then15 ], !dbg !236
  ret i32 %retval.0, !dbg !296
}

declare !dbg !297 void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !300 zeroext i8 @lzma_check_is_supported(i32 noundef) local_unnamed_addr #1

declare !dbg !303 ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @block_encode(ptr noundef %pcoder, ptr noundef %allocator, ptr noalias noundef %in, ptr noalias noundef %in_pos, i64 noundef %in_size, ptr noalias noundef %out, ptr noalias noundef %out_pos, i64 noundef %out_size, i32 noundef %action) #0 !dbg !306 {
entry:
    #dbg_value(ptr %pcoder, !308, !DIExpression(), !329)
    #dbg_value(ptr %allocator, !309, !DIExpression(), !329)
    #dbg_value(ptr %in, !310, !DIExpression(), !329)
    #dbg_value(ptr %in_pos, !311, !DIExpression(), !329)
    #dbg_value(i64 %in_size, !312, !DIExpression(), !329)
    #dbg_value(ptr %out, !313, !DIExpression(), !329)
    #dbg_value(ptr %out_pos, !314, !DIExpression(), !329)
    #dbg_value(i64 %out_size, !315, !DIExpression(), !329)
    #dbg_value(i32 %action, !316, !DIExpression(), !329)
    #dbg_value(ptr %pcoder, !317, !DIExpression(), !329)
  %uncompressed_size = getelementptr inbounds i8, ptr %pcoder, i64 88, !dbg !330
  %0 = load i64, ptr %uncompressed_size, align 8, !dbg !330
  %sub = sub i64 9223372036854775807, %0, !dbg !332
  %1 = load i64, ptr %in_pos, align 8, !dbg !333
  %sub1 = sub i64 %in_size, %1, !dbg !334
  %cmp = icmp ult i64 %sub, %sub1, !dbg !335
  br i1 %cmp, label %cleanup62, label %if.end, !dbg !336

if.end:                                           ; preds = %entry
  %sequence = getelementptr inbounds i8, ptr %pcoder, i64 72, !dbg !337
  %2 = load i32, ptr %sequence, align 8, !dbg !337
  switch i32 %2, label %cleanup62 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb29
    i32 2, label %sw.bb45
  ], !dbg !338

sw.bb:                                            ; preds = %if.end
    #dbg_value(i64 %1, !318, !DIExpression(), !339)
  %3 = load i64, ptr %out_pos, align 8, !dbg !340
    #dbg_value(i64 %3, !322, !DIExpression(), !339)
  %code = getelementptr inbounds i8, ptr %pcoder, i64 24, !dbg !341
  %4 = load ptr, ptr %code, align 8, !dbg !341
  %5 = load ptr, ptr %pcoder, align 8, !dbg !342
  %call = tail call i32 %4(ptr noundef %5, ptr noundef %allocator, ptr noundef %in, ptr noundef nonnull %in_pos, i64 noundef %in_size, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %out_size, i32 noundef %action) #4, !dbg !343
    #dbg_value(i32 %call, !323, !DIExpression(), !339)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !325, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !339)
  %6 = load i64, ptr %out_pos, align 8, !dbg !344
  %sub5 = sub i64 %6, %3, !dbg !345
    #dbg_value(i64 %sub5, !326, !DIExpression(), !339)
  %compressed_size = getelementptr inbounds i8, ptr %pcoder, i64 80, !dbg !346
  %7 = load i64, ptr %compressed_size, align 8, !dbg !346
  %sub6 = sub i64 9223372036854774716, %7, !dbg !348
  %cmp7 = icmp ult i64 %sub6, %sub5, !dbg !349
  br i1 %cmp7, label %cleanup62, label %if.end9, !dbg !350

if.end9:                                          ; preds = %sw.bb
  %8 = load i64, ptr %in_pos, align 8, !dbg !351
    #dbg_value(!DIArgList(i64 %8, i64 %1), !325, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !339)
  %sub4 = sub i64 %8, %1, !dbg !352
    #dbg_value(i64 %sub4, !325, !DIExpression(), !339)
  %add = add i64 %7, %sub5, !dbg !353
  store i64 %add, ptr %compressed_size, align 8, !dbg !353
  %9 = load i64, ptr %uncompressed_size, align 8, !dbg !354
  %add12 = add i64 %9, %sub4, !dbg !354
  store i64 %add12, ptr %uncompressed_size, align 8, !dbg !354
  %check = getelementptr inbounds i8, ptr %pcoder, i64 104, !dbg !355
  %block = getelementptr inbounds i8, ptr %pcoder, i64 64, !dbg !356
  %10 = load ptr, ptr %block, align 8, !dbg !356
  %check13 = getelementptr inbounds i8, ptr %10, i64 8, !dbg !357
  %11 = load i32, ptr %check13, align 8, !dbg !357
  %add.ptr = getelementptr inbounds i8, ptr %in, i64 %1, !dbg !358
  tail call void @lzma_check_update(ptr noundef nonnull %check, i32 noundef %11, ptr noundef %add.ptr, i64 noundef %sub4) #4, !dbg !359
  %cmp14 = icmp ne i32 %call, 1, !dbg !360
  %cmp15 = icmp eq i32 %action, 1
  %or.cond = or i1 %cmp15, %cmp14, !dbg !362
  br i1 %or.cond, label %cleanup62, label %cleanup, !dbg !362

cleanup:                                          ; preds = %if.end9
  %12 = load i64, ptr %compressed_size, align 8, !dbg !363
  %13 = load ptr, ptr %block, align 8, !dbg !364
  %compressed_size20 = getelementptr inbounds i8, ptr %13, i64 16, !dbg !365
  store i64 %12, ptr %compressed_size20, align 8, !dbg !366
  %14 = load i64, ptr %uncompressed_size, align 8, !dbg !367
  %15 = load ptr, ptr %block, align 8, !dbg !368
  %uncompressed_size23 = getelementptr inbounds i8, ptr %15, i64 24, !dbg !369
  store i64 %14, ptr %uncompressed_size23, align 8, !dbg !370
  store i32 1, ptr %sequence, align 8, !dbg !371
  br label %sw.bb29

sw.bb29:                                          ; preds = %cleanup, %if.end
  %compressed_size30 = getelementptr inbounds i8, ptr %pcoder, i64 80
  %compressed_size30.promoted = load i64, ptr %compressed_size30, align 8
  %and113 = and i64 %compressed_size30.promoted, 3, !dbg !372
  %tobool.not114 = icmp eq i64 %and113, 0, !dbg !373
  br i1 %tobool.not114, label %while.end, label %while.body.lr.ph, !dbg !373

while.body.lr.ph:                                 ; preds = %sw.bb29
  %out_pos.promoted = load i64, ptr %out_pos, align 8
  %cmp31.not = icmp ult i64 %out_pos.promoted, %out_size, !dbg !374
  br i1 %cmp31.not, label %if.end33, label %cleanup62, !dbg !377

if.end33:                                         ; preds = %while.body.lr.ph
  %arrayidx = getelementptr inbounds i8, ptr %out, i64 %out_pos.promoted, !dbg !378
  store i8 0, ptr %arrayidx, align 1, !dbg !379
  %inc = add nuw i64 %out_pos.promoted, 1, !dbg !380
  store i64 %inc, ptr %out_pos, align 8, !dbg !380
  %inc35 = add i64 %compressed_size30.promoted, 1, !dbg !381
  store i64 %inc35, ptr %compressed_size30, align 8, !dbg !381
  %and = and i64 %inc35, 3, !dbg !372
  %tobool.not = icmp eq i64 %and, 0, !dbg !373
  br i1 %tobool.not, label %while.end, label %while.body.1, !dbg !373, !llvm.loop !382

while.body.1:                                     ; preds = %if.end33
  %cmp31.not.1 = icmp ult i64 %inc, %out_size, !dbg !374
  br i1 %cmp31.not.1, label %if.end33.1, label %cleanup62, !dbg !377

if.end33.1:                                       ; preds = %while.body.1
  %arrayidx.1 = getelementptr inbounds i8, ptr %out, i64 %inc, !dbg !378
  store i8 0, ptr %arrayidx.1, align 1, !dbg !379
  %inc.1 = add nuw i64 %out_pos.promoted, 2, !dbg !380
  store i64 %inc.1, ptr %out_pos, align 8, !dbg !380
  %inc35.1 = add i64 %compressed_size30.promoted, 2, !dbg !381
  store i64 %inc35.1, ptr %compressed_size30, align 8, !dbg !381
  %and.1 = and i64 %inc35.1, 3, !dbg !372
  %tobool.not.1 = icmp eq i64 %and.1, 0, !dbg !373
  br i1 %tobool.not.1, label %while.end, label %while.body.2, !dbg !373, !llvm.loop !382

while.body.2:                                     ; preds = %if.end33.1
  %cmp31.not.2 = icmp ult i64 %inc.1, %out_size, !dbg !374
  br i1 %cmp31.not.2, label %if.end33.2, label %cleanup62, !dbg !377

if.end33.2:                                       ; preds = %while.body.2
  %arrayidx.2 = getelementptr inbounds i8, ptr %out, i64 %inc.1, !dbg !378
  store i8 0, ptr %arrayidx.2, align 1, !dbg !379
  %inc.2 = add nuw i64 %out_pos.promoted, 3, !dbg !380
  store i64 %inc.2, ptr %out_pos, align 8, !dbg !380
  %inc35.2 = add i64 %compressed_size30.promoted, 3, !dbg !381
  store i64 %inc35.2, ptr %compressed_size30, align 8, !dbg !381
  %and.2 = and i64 %inc35.2, 3, !dbg !372
  %tobool.not.2 = icmp eq i64 %and.2, 0, !dbg !373
  br i1 %tobool.not.2, label %while.end, label %while.body.3, !dbg !373, !llvm.loop !382

while.body.3:                                     ; preds = %if.end33.2
  %cmp31.not.3 = icmp ult i64 %inc.2, %out_size, !dbg !374
  br i1 %cmp31.not.3, label %if.end33.3, label %cleanup62, !dbg !377

if.end33.3:                                       ; preds = %while.body.3
  %arrayidx.3 = getelementptr inbounds i8, ptr %out, i64 %inc.2, !dbg !378
  store i8 0, ptr %arrayidx.3, align 1, !dbg !379
  %inc.3 = add nuw i64 %out_pos.promoted, 4, !dbg !380
  store i64 %inc.3, ptr %out_pos, align 8, !dbg !380
  %inc35.3 = add i64 %compressed_size30.promoted, 4, !dbg !381
  store i64 %inc35.3, ptr %compressed_size30, align 8, !dbg !381
  br label %while.end

while.end:                                        ; preds = %if.end33, %if.end33.1, %if.end33.2, %if.end33.3, %sw.bb29
  %block36 = getelementptr inbounds i8, ptr %pcoder, i64 64, !dbg !384
  %16 = load ptr, ptr %block36, align 8, !dbg !384
  %check37 = getelementptr inbounds i8, ptr %16, i64 8, !dbg !386
  %17 = load i32, ptr %check37, align 8, !dbg !386
  %cmp38 = icmp eq i32 %17, 0, !dbg !387
  br i1 %cmp38, label %cleanup62, label %if.end40, !dbg !388

if.end40:                                         ; preds = %while.end
  %check41 = getelementptr inbounds i8, ptr %pcoder, i64 104, !dbg !389
  tail call void @lzma_check_finish(ptr noundef nonnull %check41, i32 noundef %17) #4, !dbg !390
  store i32 2, ptr %sequence, align 8, !dbg !391
  br label %sw.bb45, !dbg !392

sw.bb45:                                          ; preds = %if.end, %if.end40
  %block46 = getelementptr inbounds i8, ptr %pcoder, i64 64, !dbg !393
  %18 = load ptr, ptr %block46, align 8, !dbg !393
  %check47 = getelementptr inbounds i8, ptr %18, i64 8, !dbg !394
  %19 = load i32, ptr %check47, align 8, !dbg !394
  %call48 = tail call i32 @lzma_check_size(i32 noundef %19) #4, !dbg !395
  %conv = zext i32 %call48 to i64, !dbg !395
    #dbg_value(i64 %conv, !327, !DIExpression(), !396)
  %check49 = getelementptr inbounds i8, ptr %pcoder, i64 104, !dbg !397
  %pos = getelementptr inbounds i8, ptr %pcoder, i64 96, !dbg !398
  %call50 = tail call i64 @lzma_bufcpy(ptr noundef nonnull %check49, ptr noundef nonnull %pos, i64 noundef %conv, ptr noundef %out, ptr noundef %out_pos, i64 noundef %out_size) #4, !dbg !399
  %20 = load i64, ptr %pos, align 8, !dbg !400
  %cmp52 = icmp ult i64 %20, %conv, !dbg !402
  br i1 %cmp52, label %cleanup62, label %if.end55, !dbg !403

if.end55:                                         ; preds = %sw.bb45
  %21 = load ptr, ptr %block46, align 8, !dbg !404
  %raw_check = getelementptr inbounds i8, ptr %21, i64 40, !dbg !405
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %raw_check, ptr nonnull align 8 %check49, i64 %conv, i1 false), !dbg !406
  br label %cleanup62, !dbg !407

cleanup62:                                        ; preds = %while.body.lr.ph, %while.body.1, %while.body.2, %while.body.3, %if.end9, %sw.bb, %if.end, %if.end55, %sw.bb45, %while.end, %entry
  %retval.2 = phi i32 [ 9, %entry ], [ 1, %while.end ], [ 1, %if.end55 ], [ 0, %sw.bb45 ], [ 11, %if.end ], [ %call, %if.end9 ], [ 9, %sw.bb ], [ 0, %while.body.3 ], [ 0, %while.body.2 ], [ 0, %while.body.1 ], [ 0, %while.body.lr.ph ], !dbg !329
  ret i32 %retval.2, !dbg !408
}

; Function Attrs: nounwind uwtable
define internal void @block_encoder_end(ptr noundef %pcoder, ptr noundef %allocator) #0 !dbg !409 {
entry:
    #dbg_value(ptr %pcoder, !411, !DIExpression(), !414)
    #dbg_value(ptr %allocator, !412, !DIExpression(), !414)
    #dbg_value(ptr %pcoder, !413, !DIExpression(), !414)
  tail call void @lzma_next_end(ptr noundef %pcoder, ptr noundef %allocator) #4, !dbg !415
  tail call void @lzma_free(ptr noundef %pcoder, ptr noundef %allocator) #4, !dbg !416
  ret void, !dbg !417
}

; Function Attrs: nounwind uwtable
define internal i32 @block_encoder_update(ptr noundef %pcoder, ptr noundef %allocator, ptr nocapture readnone %filters, ptr noundef %reversed_filters) #0 !dbg !418 {
entry:
    #dbg_value(ptr %pcoder, !420, !DIExpression(), !425)
    #dbg_value(ptr %allocator, !421, !DIExpression(), !425)
    #dbg_value(ptr poison, !422, !DIExpression(), !425)
    #dbg_value(ptr %reversed_filters, !423, !DIExpression(), !425)
    #dbg_value(ptr %pcoder, !424, !DIExpression(), !425)
  %sequence = getelementptr inbounds i8, ptr %pcoder, i64 72, !dbg !426
  %0 = load i32, ptr %sequence, align 8, !dbg !426
  %cmp.not = icmp eq i32 %0, 0, !dbg !428
  br i1 %cmp.not, label %if.end, label %cleanup, !dbg !429

if.end:                                           ; preds = %entry
  %call = tail call i32 @lzma_next_filter_update(ptr noundef nonnull %pcoder, ptr noundef %allocator, ptr noundef %reversed_filters) #4, !dbg !430
  br label %cleanup, !dbg !431

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 11, %entry ], !dbg !425
  ret i32 %retval.0, !dbg !432
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare !dbg !433 void @lzma_check_init(ptr noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !437 i32 @lzma_raw_encoder_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_block_encoder(ptr noundef %strm, ptr noundef %block) local_unnamed_addr #0 !dbg !441 {
entry:
    #dbg_value(ptr %strm, !469, !DIExpression(), !475)
    #dbg_value(ptr %block, !470, !DIExpression(), !475)
  %call = tail call i32 @lzma_strm_init(ptr noundef %strm) #4, !dbg !476
    #dbg_value(i32 %call, !471, !DIExpression(), !477)
  %cmp.not.not = icmp eq i32 %call, 0, !dbg !478
  br i1 %cmp.not.not, label %do.end, label %return

do.end:                                           ; preds = %entry
  %internal = getelementptr inbounds i8, ptr %strm, i64 56, !dbg !480
  %0 = load ptr, ptr %internal, align 8, !dbg !480
  %allocator = getelementptr inbounds i8, ptr %strm, i64 48, !dbg !480
  %1 = load ptr, ptr %allocator, align 8, !dbg !480
  %call3 = tail call i32 @lzma_block_encoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %block), !dbg !480
    #dbg_value(i32 %call3, !474, !DIExpression(), !481)
  %cmp4.not.not = icmp eq i32 %call3, 0, !dbg !482
  br i1 %cmp4.not.not, label %do.end10, label %cleanup7, !dbg !480

cleanup7:                                         ; preds = %do.end
  tail call void @lzma_end(ptr noundef nonnull %strm) #4, !dbg !484
  br label %return

do.end10:                                         ; preds = %do.end
  %2 = load ptr, ptr %internal, align 8, !dbg !486
  %supported_actions = getelementptr inbounds i8, ptr %2, i64 80, !dbg !487
  store i8 1, ptr %supported_actions, align 8, !dbg !488
  %3 = load ptr, ptr %internal, align 8, !dbg !489
  %arrayidx14 = getelementptr inbounds i8, ptr %3, i64 83, !dbg !490
  store i8 1, ptr %arrayidx14, align 1, !dbg !491
  br label %return, !dbg !492

return:                                           ; preds = %cleanup7, %entry, %do.end10
  %retval.2 = phi i32 [ %call, %entry ], [ %call3, %cleanup7 ], [ 0, %do.end10 ], !dbg !475
  ret i32 %retval.2, !dbg !493
}

declare !dbg !494 i32 @lzma_strm_init(ptr noundef) local_unnamed_addr #1

declare !dbg !497 void @lzma_end(ptr noundef) local_unnamed_addr #1

declare !dbg !500 void @lzma_check_update(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !503 void @lzma_check_finish(ptr noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !504 i32 @lzma_check_size(i32 noundef) local_unnamed_addr #1

declare !dbg !507 i64 @lzma_bufcpy(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !510 void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !513 i32 @lzma_next_filter_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!220, !221, !222, !223, !224, !225, !226}
!llvm.ident = !{!227}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !218, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "liblzma/common/block_encoder.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "6fefd92350726e39daee7a2ff1aa92a6")
!2 = !{!3, !19, !25, !32, !35, !199}
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
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !26, line: 27, baseType: !5, size: 32, elements: !27)
!26 = !DIFile(filename: "liblzma/api/lzma/check.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "b07c3297e2bcc14bb477793d08325ee3")
!27 = !{!28, !29, !30, !31}
!28 = !DIEnumerator(name: "LZMA_CHECK_NONE", value: 0)
!29 = !DIEnumerator(name: "LZMA_CHECK_CRC32", value: 1)
!30 = !DIEnumerator(name: "LZMA_CHECK_CRC64", value: 4)
!31 = !DIEnumerator(name: "LZMA_CHECK_SHA256", value: 10)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 44, baseType: !5, size: 32, elements: !33)
!33 = !{!34}
!34 = !DIEnumerator(name: "LZMA_RESERVED_ENUM", value: 0)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !36, file: !1, line: 27, baseType: !5, size: 32, elements: !195)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_coder_s", file: !1, line: 18, size: 1664, elements: !37)
!37 = !{!38, !119, !163, !164, !165, !166, !167}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !36, file: !1, line: 20, baseType: !39, size: 512)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_next_coder", file: !40, line: 80, baseType: !41)
!40 = !DIFile(filename: "liblzma/common/common.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_next_coder_s", file: !40, line: 124, size: 512, elements: !42)
!42 = !{!43, !46, !54, !57, !90, !95, !102, !107}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !41, file: !40, line: 126, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_coder", file: !40, line: 78, baseType: null)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !41, file: !40, line: 130, baseType: !47, size: 64, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !48, line: 63, baseType: !49)
!48 = !DIFile(filename: "liblzma/api/lzma/vli.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !50, line: 27, baseType: !51)
!50 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !52, line: 45, baseType: !53)
!52 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!53 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !41, file: !40, line: 136, baseType: !55, size: 64, offset: 128)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !56, line: 90, baseType: !53)
!56 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!57 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !41, file: !40, line: 139, baseType: !58, size: 64, offset: 192)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_code_function", file: !40, line: 94, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DISubroutineType(types: !61)
!61 = !{!62, !44, !63, !79, !85, !72, !87, !85, !72, !89}
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !4, line: 403, baseType: !65)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 341, size: 192, elements: !66)
!66 = !{!67, !74, !78}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !65, file: !4, line: 376, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{!71, !71, !72, !72}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !73, line: 18, baseType: !53)
!73 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!74 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !65, file: !4, line: 390, baseType: !75, size: 64, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DISubroutineType(types: !77)
!77 = !{null, !71, !71}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !65, file: !4, line: 401, baseType: !71, size: 64, offset: 128)
!79 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !50, line: 24, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !52, line: 38, baseType: !84)
!84 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!85 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !4, line: 322, baseType: !19)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !41, file: !40, line: 144, baseType: !91, size: 64, offset: 256)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_end_function", file: !40, line: 102, baseType: !92)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DISubroutineType(types: !94)
!94 = !{null, !44, !63}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "get_check", scope: !41, file: !40, line: 148, baseType: !96, size: 64, offset: 320)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DISubroutineType(types: !98)
!98 = !{!99, !100}
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !26, line: 55, baseType: !25)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "memconfig", scope: !41, file: !40, line: 152, baseType: !103, size: 64, offset: 384)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DISubroutineType(types: !105)
!105 = !{!62, !44, !106, !106, !49}
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !41, file: !40, line: 157, baseType: !108, size: 64, offset: 448)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DISubroutineType(types: !110)
!110 = !{!62, !44, !63, !111, !111}
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !114, line: 65, baseType: !115)
!114 = !DIFile(filename: "liblzma/api/lzma/filter.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !114, line: 43, size: 128, elements: !116)
!116 = !{!117, !118}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !115, file: !114, line: 54, baseType: !47, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !115, file: !114, line: 63, baseType: !71, size: 64, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !36, file: !1, line: 25, baseType: !120, size: 64, offset: 512)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_block", file: !122, line: 245, baseType: !123)
!122 = !DIFile(filename: "liblzma/api/lzma/block.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "bf8cbafce550217b909c63081e414910")
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !122, line: 30, size: 1664, elements: !124)
!124 = !{!125, !128, !129, !130, !131, !132, !134, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !151, !152, !153, !154, !156, !157, !158, !159, !160, !161, !162}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !123, file: !122, line: 47, baseType: !126, size: 32)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !50, line: 26, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !52, line: 42, baseType: !5)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !123, file: !122, line: 67, baseType: !126, size: 32, offset: 32)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !123, file: !122, line: 88, baseType: !99, size: 32, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_size", scope: !123, file: !122, line: 143, baseType: !47, size: 64, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_size", scope: !123, file: !122, line: 167, baseType: !47, size: 64, offset: 192)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "filters", scope: !123, file: !122, line: 195, baseType: !133, size: 64, offset: 256)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "raw_check", scope: !123, file: !122, line: 212, baseType: !135, size: 512, offset: 320)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 512, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !123, file: !122, line: 221, baseType: !71, size: 64, offset: 832)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !123, file: !122, line: 222, baseType: !71, size: 64, offset: 896)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !123, file: !122, line: 223, baseType: !71, size: 64, offset: 960)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !123, file: !122, line: 224, baseType: !126, size: 32, offset: 1024)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !123, file: !122, line: 225, baseType: !126, size: 32, offset: 1056)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !123, file: !122, line: 226, baseType: !47, size: 64, offset: 1088)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !123, file: !122, line: 227, baseType: !47, size: 64, offset: 1152)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int5", scope: !123, file: !122, line: 228, baseType: !47, size: 64, offset: 1216)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int6", scope: !123, file: !122, line: 229, baseType: !47, size: 64, offset: 1280)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int7", scope: !123, file: !122, line: 230, baseType: !47, size: 64, offset: 1344)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int8", scope: !123, file: !122, line: 231, baseType: !47, size: 64, offset: 1408)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !123, file: !122, line: 232, baseType: !150, size: 32, offset: 1472)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !4, line: 46, baseType: !32)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !123, file: !122, line: 233, baseType: !150, size: 32, offset: 1504)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !123, file: !122, line: 234, baseType: !150, size: 32, offset: 1536)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !123, file: !122, line: 235, baseType: !150, size: 32, offset: 1568)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool1", scope: !123, file: !122, line: 236, baseType: !155, size: 8, offset: 1600)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_bool", file: !4, line: 29, baseType: !84)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool2", scope: !123, file: !122, line: 237, baseType: !155, size: 8, offset: 1608)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool3", scope: !123, file: !122, line: 238, baseType: !155, size: 8, offset: 1616)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool4", scope: !123, file: !122, line: 239, baseType: !155, size: 8, offset: 1624)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool5", scope: !123, file: !122, line: 240, baseType: !155, size: 8, offset: 1632)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool6", scope: !123, file: !122, line: 241, baseType: !155, size: 8, offset: 1640)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool7", scope: !123, file: !122, line: 242, baseType: !155, size: 8, offset: 1648)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool8", scope: !123, file: !122, line: 243, baseType: !155, size: 8, offset: 1656)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !36, file: !1, line: 31, baseType: !35, size: 32, offset: 576)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_size", scope: !36, file: !1, line: 34, baseType: !47, size: 64, offset: 640)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_size", scope: !36, file: !1, line: 37, baseType: !47, size: 64, offset: 704)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !36, file: !1, line: 40, baseType: !72, size: 64, offset: 768)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !36, file: !1, line: 43, baseType: !168, size: 832, offset: 832)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check_state", file: !169, line: 56, baseType: !170)
!169 = !DIFile(filename: "liblzma/check/check.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "938220df6e0ab33115ef85b0d8c70c5b")
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !169, line: 34, size: 832, elements: !171)
!171 = !{!172, !184}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !170, file: !169, line: 40, baseType: !173, size: 512)
!173 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !170, file: !169, line: 36, size: 512, elements: !174)
!174 = !{!175, !176, !180}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "u8", scope: !173, file: !169, line: 37, baseType: !135, size: 512)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "u32", scope: !173, file: !169, line: 38, baseType: !177, size: 512)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 512, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 16)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !173, file: !169, line: 39, baseType: !181, size: 512)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 512, elements: !182)
!182 = !{!183}
!183 = !DISubrange(count: 8)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !170, file: !169, line: 54, baseType: !185, size: 320, offset: 512)
!185 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !170, file: !169, line: 43, size: 320, elements: !186)
!186 = !{!187, !188, !189}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "crc32", scope: !185, file: !169, line: 44, baseType: !126, size: 32)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "crc64", scope: !185, file: !169, line: 45, baseType: !49, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "sha256", scope: !185, file: !169, line: 53, baseType: !190, size: 320)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !185, file: !169, line: 47, size: 320, elements: !191)
!191 = !{!192, !194}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !190, file: !169, line: 49, baseType: !193, size: 256)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 256, elements: !182)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !190, file: !169, line: 52, baseType: !49, size: 64, offset: 256)
!195 = !{!196, !197, !198}
!196 = !DIEnumerator(name: "SEQ_CODE", value: 0)
!197 = !DIEnumerator(name: "SEQ_PADDING", value: 1)
!198 = !DIEnumerator(name: "SEQ_CHECK", value: 2)
!199 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !200, file: !40, line: 187, baseType: !5, size: 32, elements: !211)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_internal_s", file: !40, line: 179, size: 704, elements: !201)
!201 = !{!202, !203, !204, !205, !210}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !200, file: !40, line: 181, baseType: !39, size: 512)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !200, file: !40, line: 194, baseType: !199, size: 32, offset: 512)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !200, file: !40, line: 199, baseType: !72, size: 64, offset: 576)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "supported_actions", scope: !200, file: !40, line: 202, baseType: !206, size: 32, offset: 640)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 32, elements: !208)
!207 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!208 = !{!209}
!209 = !DISubrange(count: 4)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "allow_buf_error", scope: !200, file: !40, line: 206, baseType: !207, size: 8, offset: 672)
!211 = !{!212, !213, !214, !215, !216, !217}
!212 = !DIEnumerator(name: "ISEQ_RUN", value: 0)
!213 = !DIEnumerator(name: "ISEQ_SYNC_FLUSH", value: 1)
!214 = !DIEnumerator(name: "ISEQ_FULL_FLUSH", value: 2)
!215 = !DIEnumerator(name: "ISEQ_FINISH", value: 3)
!216 = !DIEnumerator(name: "ISEQ_END", value: 4)
!217 = !DIEnumerator(name: "ISEQ_ERROR", value: 5)
!218 = !{!55, !71, !5, !219}
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!220 = !{i32 7, !"Dwarf Version", i32 5}
!221 = !{i32 2, !"Debug Info Version", i32 3}
!222 = !{i32 1, !"wchar_size", i32 4}
!223 = !{i32 8, !"PIC Level", i32 2}
!224 = !{i32 7, !"PIE Level", i32 2}
!225 = !{i32 7, !"uwtable", i32 2}
!226 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!227 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!228 = distinct !DISubprogram(name: "lzma_block_encoder_init", scope: !1, file: !1, line: 162, type: !229, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !232)
!229 = !DISubroutineType(types: !230)
!230 = !{!62, !231, !63, !120}
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!232 = !{!233, !234, !235}
!233 = !DILocalVariable(name: "next", arg: 1, scope: !228, file: !1, line: 162, type: !231)
!234 = !DILocalVariable(name: "allocator", arg: 2, scope: !228, file: !1, line: 162, type: !63)
!235 = !DILocalVariable(name: "block", arg: 3, scope: !228, file: !1, line: 163, type: !120)
!236 = !DILocation(line: 0, scope: !228)
!237 = !DILocation(line: 165, column: 2, scope: !238)
!238 = distinct !DILexicalBlock(scope: !239, file: !1, line: 165, column: 2)
!239 = distinct !DILexicalBlock(scope: !228, file: !1, line: 165, column: 2)
!240 = !DILocation(line: 165, column: 2, scope: !239)
!241 = !DILocation(line: 167, column: 12, scope: !242)
!242 = distinct !DILexicalBlock(scope: !228, file: !1, line: 167, column: 6)
!243 = !DILocation(line: 167, column: 6, scope: !228)
!244 = !DILocation(line: 172, column: 13, scope: !245)
!245 = distinct !DILexicalBlock(scope: !228, file: !1, line: 172, column: 6)
!246 = !DILocation(line: 172, column: 21, scope: !245)
!247 = !DILocation(line: 172, column: 6, scope: !228)
!248 = !DILocation(line: 177, column: 28, scope: !249)
!249 = distinct !DILexicalBlock(scope: !228, file: !1, line: 177, column: 6)
!250 = !DILocation(line: 177, column: 35, scope: !249)
!251 = !DILocation(line: 177, column: 6, scope: !228)
!252 = !DILocation(line: 180, column: 7, scope: !253)
!253 = distinct !DILexicalBlock(scope: !228, file: !1, line: 180, column: 6)
!254 = !DILocation(line: 180, column: 6, scope: !228)
!255 = !DILocation(line: 184, column: 12, scope: !256)
!256 = distinct !DILexicalBlock(scope: !228, file: !1, line: 184, column: 6)
!257 = !DILocation(line: 184, column: 18, scope: !256)
!258 = !DILocation(line: 184, column: 6, scope: !228)
!259 = !DILocation(line: 185, column: 17, scope: !260)
!260 = distinct !DILexicalBlock(scope: !256, file: !1, line: 184, column: 27)
!261 = !DILocation(line: 185, column: 15, scope: !260)
!262 = !DILocation(line: 186, column: 19, scope: !263)
!263 = distinct !DILexicalBlock(scope: !260, file: !1, line: 186, column: 7)
!264 = !DILocation(line: 186, column: 7, scope: !260)
!265 = !DILocation(line: 189, column: 9, scope: !260)
!266 = !DILocation(line: 189, column: 14, scope: !260)
!267 = !DILocation(line: 190, column: 9, scope: !260)
!268 = !DILocation(line: 190, column: 13, scope: !260)
!269 = !DILocation(line: 191, column: 9, scope: !260)
!270 = !DILocation(line: 191, column: 16, scope: !260)
!271 = !DILocation(line: 192, column: 47, scope: !260)
!272 = !DILocation(line: 196, column: 31, scope: !228)
!273 = !DILocation(line: 193, column: 2, scope: !260)
!274 = !DILocation(line: 196, column: 39, scope: !228)
!275 = !DILocation(line: 196, column: 48, scope: !228)
!276 = !DILocation(line: 197, column: 31, scope: !228)
!277 = !DILocation(line: 197, column: 39, scope: !228)
!278 = !DILocation(line: 197, column: 45, scope: !228)
!279 = !DILocation(line: 198, column: 31, scope: !228)
!280 = !DILocation(line: 198, column: 39, scope: !228)
!281 = !DILocation(line: 198, column: 55, scope: !228)
!282 = !DILocation(line: 199, column: 31, scope: !228)
!283 = !DILocation(line: 199, column: 39, scope: !228)
!284 = !DILocation(line: 199, column: 57, scope: !228)
!285 = !DILocation(line: 200, column: 31, scope: !228)
!286 = !DILocation(line: 200, column: 39, scope: !228)
!287 = !DILocation(line: 200, column: 43, scope: !228)
!288 = !DILocation(line: 203, column: 48, scope: !228)
!289 = !DILocation(line: 203, column: 56, scope: !228)
!290 = !DILocation(line: 203, column: 70, scope: !228)
!291 = !DILocation(line: 203, column: 2, scope: !228)
!292 = !DILocation(line: 206, column: 61, scope: !228)
!293 = !DILocation(line: 207, column: 11, scope: !228)
!294 = !DILocation(line: 206, column: 9, scope: !228)
!295 = !DILocation(line: 206, column: 2, scope: !228)
!296 = !DILocation(line: 208, column: 1, scope: !228)
!297 = !DISubprogram(name: "lzma_next_end", scope: !40, file: !40, line: 237, type: !298, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!298 = !DISubroutineType(types: !299)
!299 = !{null, !231, !63}
!300 = !DISubprogram(name: "lzma_check_is_supported", scope: !26, file: !26, line: 81, type: !301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!301 = !DISubroutineType(types: !302)
!302 = !{!155, !99}
!303 = !DISubprogram(name: "lzma_alloc", scope: !40, file: !40, line: 211, type: !304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!304 = !DISubroutineType(types: !305)
!305 = !{!71, !72, !63}
!306 = distinct !DISubprogram(name: "block_encode", scope: !1, file: !1, line: 48, type: !60, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !307)
!307 = !{!308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !322, !323, !325, !326, !327}
!308 = !DILocalVariable(name: "pcoder", arg: 1, scope: !306, file: !1, line: 48, type: !44)
!309 = !DILocalVariable(name: "allocator", arg: 2, scope: !306, file: !1, line: 48, type: !63)
!310 = !DILocalVariable(name: "in", arg: 3, scope: !306, file: !1, line: 49, type: !79)
!311 = !DILocalVariable(name: "in_pos", arg: 4, scope: !306, file: !1, line: 49, type: !85)
!312 = !DILocalVariable(name: "in_size", arg: 5, scope: !306, file: !1, line: 50, type: !72)
!313 = !DILocalVariable(name: "out", arg: 6, scope: !306, file: !1, line: 50, type: !87)
!314 = !DILocalVariable(name: "out_pos", arg: 7, scope: !306, file: !1, line: 51, type: !85)
!315 = !DILocalVariable(name: "out_size", arg: 8, scope: !306, file: !1, line: 51, type: !72)
!316 = !DILocalVariable(name: "action", arg: 9, scope: !306, file: !1, line: 51, type: !89)
!317 = !DILocalVariable(name: "coder", scope: !306, file: !1, line: 53, type: !219)
!318 = !DILocalVariable(name: "in_start", scope: !319, file: !1, line: 60, type: !321)
!319 = distinct !DILexicalBlock(scope: !320, file: !1, line: 59, column: 17)
!320 = distinct !DILexicalBlock(scope: !306, file: !1, line: 58, column: 27)
!321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!322 = !DILocalVariable(name: "out_start", scope: !319, file: !1, line: 61, type: !321)
!323 = !DILocalVariable(name: "ret", scope: !319, file: !1, line: 63, type: !324)
!324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!325 = !DILocalVariable(name: "in_used", scope: !319, file: !1, line: 67, type: !321)
!326 = !DILocalVariable(name: "out_used", scope: !319, file: !1, line: 68, type: !321)
!327 = !DILocalVariable(name: "check_size", scope: !328, file: !1, line: 121, type: !321)
!328 = distinct !DILexicalBlock(scope: !320, file: !1, line: 120, column: 18)
!329 = !DILocation(line: 0, scope: !306)
!330 = !DILocation(line: 55, column: 28, scope: !331)
!331 = distinct !DILexicalBlock(scope: !306, file: !1, line: 55, column: 6)
!332 = !DILocation(line: 55, column: 19, scope: !331)
!333 = !DILocation(line: 55, column: 58, scope: !331)
!334 = !DILocation(line: 55, column: 56, scope: !331)
!335 = !DILocation(line: 55, column: 46, scope: !331)
!336 = !DILocation(line: 55, column: 6, scope: !306)
!337 = !DILocation(line: 58, column: 17, scope: !306)
!338 = !DILocation(line: 58, column: 2, scope: !306)
!339 = !DILocation(line: 0, scope: !319)
!340 = !DILocation(line: 61, column: 28, scope: !319)
!341 = !DILocation(line: 63, column: 36, scope: !319)
!342 = !DILocation(line: 63, column: 53, scope: !319)
!343 = !DILocation(line: 63, column: 24, scope: !319)
!344 = !DILocation(line: 68, column: 27, scope: !319)
!345 = !DILocation(line: 68, column: 36, scope: !319)
!346 = !DILocation(line: 70, column: 36, scope: !347)
!347 = distinct !DILexicalBlock(scope: !319, file: !1, line: 70, column: 7)
!348 = !DILocation(line: 70, column: 27, scope: !347)
!349 = !DILocation(line: 70, column: 52, scope: !347)
!350 = !DILocation(line: 70, column: 7, scope: !319)
!351 = !DILocation(line: 67, column: 26, scope: !319)
!352 = !DILocation(line: 67, column: 34, scope: !319)
!353 = !DILocation(line: 73, column: 26, scope: !319)
!354 = !DILocation(line: 77, column: 28, scope: !319)
!355 = !DILocation(line: 79, column: 29, scope: !319)
!356 = !DILocation(line: 79, column: 43, scope: !319)
!357 = !DILocation(line: 79, column: 50, scope: !319)
!358 = !DILocation(line: 80, column: 8, scope: !319)
!359 = !DILocation(line: 79, column: 3, scope: !319)
!360 = !DILocation(line: 82, column: 11, scope: !361)
!361 = distinct !DILexicalBlock(scope: !319, file: !1, line: 82, column: 7)
!362 = !DILocation(line: 82, column: 30, scope: !361)
!363 = !DILocation(line: 90, column: 42, scope: !319)
!364 = !DILocation(line: 90, column: 10, scope: !319)
!365 = !DILocation(line: 90, column: 17, scope: !319)
!366 = !DILocation(line: 90, column: 33, scope: !319)
!367 = !DILocation(line: 91, column: 44, scope: !319)
!368 = !DILocation(line: 91, column: 10, scope: !319)
!369 = !DILocation(line: 91, column: 17, scope: !319)
!370 = !DILocation(line: 91, column: 35, scope: !319)
!371 = !DILocation(line: 93, column: 19, scope: !319)
!372 = !DILocation(line: 102, column: 33, scope: !320)
!373 = !DILocation(line: 102, column: 3, scope: !320)
!374 = !DILocation(line: 103, column: 17, scope: !375)
!375 = distinct !DILexicalBlock(scope: !376, file: !1, line: 103, column: 8)
!376 = distinct !DILexicalBlock(scope: !320, file: !1, line: 102, column: 38)
!377 = !DILocation(line: 103, column: 8, scope: !376)
!378 = !DILocation(line: 106, column: 4, scope: !376)
!379 = !DILocation(line: 106, column: 18, scope: !376)
!380 = !DILocation(line: 107, column: 4, scope: !376)
!381 = !DILocation(line: 108, column: 4, scope: !376)
!382 = distinct !{!382, !373, !383}
!383 = !DILocation(line: 109, column: 3, scope: !320)
!384 = !DILocation(line: 111, column: 14, scope: !385)
!385 = distinct !DILexicalBlock(scope: !320, file: !1, line: 111, column: 7)
!386 = !DILocation(line: 111, column: 21, scope: !385)
!387 = !DILocation(line: 111, column: 27, scope: !385)
!388 = !DILocation(line: 111, column: 7, scope: !320)
!389 = !DILocation(line: 114, column: 29, scope: !320)
!390 = !DILocation(line: 114, column: 3, scope: !320)
!391 = !DILocation(line: 116, column: 19, scope: !320)
!392 = !DILocation(line: 116, column: 3, scope: !320)
!393 = !DILocation(line: 121, column: 52, scope: !328)
!394 = !DILocation(line: 121, column: 59, scope: !328)
!395 = !DILocation(line: 121, column: 29, scope: !328)
!396 = !DILocation(line: 0, scope: !328)
!397 = !DILocation(line: 122, column: 22, scope: !328)
!398 = !DILocation(line: 122, column: 47, scope: !328)
!399 = !DILocation(line: 122, column: 3, scope: !328)
!400 = !DILocation(line: 124, column: 14, scope: !401)
!401 = distinct !DILexicalBlock(scope: !328, file: !1, line: 124, column: 7)
!402 = !DILocation(line: 124, column: 18, scope: !401)
!403 = !DILocation(line: 124, column: 7, scope: !328)
!404 = !DILocation(line: 127, column: 17, scope: !328)
!405 = !DILocation(line: 127, column: 24, scope: !328)
!406 = !DILocation(line: 127, column: 3, scope: !328)
!407 = !DILocation(line: 129, column: 3, scope: !328)
!408 = !DILocation(line: 134, column: 1, scope: !306)
!409 = distinct !DISubprogram(name: "block_encoder_end", scope: !1, file: !1, line: 138, type: !93, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !410)
!410 = !{!411, !412, !413}
!411 = !DILocalVariable(name: "pcoder", arg: 1, scope: !409, file: !1, line: 138, type: !44)
!412 = !DILocalVariable(name: "allocator", arg: 2, scope: !409, file: !1, line: 138, type: !63)
!413 = !DILocalVariable(name: "coder", scope: !409, file: !1, line: 140, type: !219)
!414 = !DILocation(line: 0, scope: !409)
!415 = !DILocation(line: 141, column: 2, scope: !409)
!416 = !DILocation(line: 142, column: 2, scope: !409)
!417 = !DILocation(line: 144, column: 1, scope: !409)
!418 = distinct !DISubprogram(name: "block_encoder_update", scope: !1, file: !1, line: 148, type: !109, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !419)
!419 = !{!420, !421, !422, !423, !424}
!420 = !DILocalVariable(name: "pcoder", arg: 1, scope: !418, file: !1, line: 148, type: !44)
!421 = !DILocalVariable(name: "allocator", arg: 2, scope: !418, file: !1, line: 148, type: !63)
!422 = !DILocalVariable(name: "filters", arg: 3, scope: !418, file: !1, line: 149, type: !111)
!423 = !DILocalVariable(name: "reversed_filters", arg: 4, scope: !418, file: !1, line: 150, type: !111)
!424 = !DILocalVariable(name: "coder", scope: !418, file: !1, line: 152, type: !219)
!425 = !DILocation(line: 0, scope: !418)
!426 = !DILocation(line: 153, column: 13, scope: !427)
!427 = distinct !DILexicalBlock(scope: !418, file: !1, line: 153, column: 6)
!428 = !DILocation(line: 153, column: 22, scope: !427)
!429 = !DILocation(line: 153, column: 6, scope: !418)
!430 = !DILocation(line: 156, column: 9, scope: !418)
!431 = !DILocation(line: 156, column: 2, scope: !418)
!432 = !DILocation(line: 158, column: 1, scope: !418)
!433 = !DISubprogram(name: "lzma_check_init", scope: !169, file: !169, line: 75, type: !434, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!434 = !DISubroutineType(types: !435)
!435 = !{null, !436, !99}
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!437 = !DISubprogram(name: "lzma_raw_encoder_init", scope: !438, file: !438, line: 23, type: !439, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!438 = !DIFile(filename: "liblzma/common/filter_encoder.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "ddc4c6a58369644501ee0eefd7b6bf8f")
!439 = !DISubroutineType(types: !440)
!440 = !{!62, !231, !63, !111}
!441 = distinct !DISubprogram(name: "lzma_block_encoder", scope: !1, file: !1, line: 212, type: !442, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !468)
!442 = !DISubroutineType(types: !443)
!443 = !{!62, !444, !120}
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_stream", file: !4, line: 490, baseType: !446)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 453, size: 1088, elements: !447)
!447 = !{!448, !449, !450, !451, !452, !453, !454, !455, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !446, file: !4, line: 454, baseType: !80, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !446, file: !4, line: 455, baseType: !72, size: 64, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "total_in", scope: !446, file: !4, line: 456, baseType: !49, size: 64, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !446, file: !4, line: 458, baseType: !88, size: 64, offset: 192)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !446, file: !4, line: 459, baseType: !72, size: 64, offset: 256)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "total_out", scope: !446, file: !4, line: 460, baseType: !49, size: 64, offset: 320)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !446, file: !4, line: 468, baseType: !63, size: 64, offset: 384)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !446, file: !4, line: 471, baseType: !456, size: 64, offset: 448)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_internal", file: !4, line: 411, baseType: !200)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !446, file: !4, line: 479, baseType: !71, size: 64, offset: 512)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !446, file: !4, line: 480, baseType: !71, size: 64, offset: 576)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !446, file: !4, line: 481, baseType: !71, size: 64, offset: 640)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr4", scope: !446, file: !4, line: 482, baseType: !71, size: 64, offset: 704)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !446, file: !4, line: 483, baseType: !49, size: 64, offset: 768)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !446, file: !4, line: 484, baseType: !49, size: 64, offset: 832)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !446, file: !4, line: 485, baseType: !72, size: 64, offset: 896)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !446, file: !4, line: 486, baseType: !72, size: 64, offset: 960)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !446, file: !4, line: 487, baseType: !150, size: 32, offset: 1024)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !446, file: !4, line: 488, baseType: !150, size: 32, offset: 1056)
!468 = !{!469, !470, !471, !474}
!469 = !DILocalVariable(name: "strm", arg: 1, scope: !441, file: !1, line: 212, type: !444)
!470 = !DILocalVariable(name: "block", arg: 2, scope: !441, file: !1, line: 212, type: !120)
!471 = !DILocalVariable(name: "ret_", scope: !472, file: !1, line: 214, type: !324)
!472 = distinct !DILexicalBlock(scope: !473, file: !1, line: 214, column: 2)
!473 = distinct !DILexicalBlock(scope: !441, file: !1, line: 214, column: 2)
!474 = !DILocalVariable(name: "ret_", scope: !473, file: !1, line: 214, type: !324)
!475 = !DILocation(line: 0, scope: !441)
!476 = !DILocation(line: 214, column: 2, scope: !472)
!477 = !DILocation(line: 0, scope: !472)
!478 = !DILocation(line: 214, column: 2, scope: !479)
!479 = distinct !DILexicalBlock(scope: !472, file: !1, line: 214, column: 2)
!480 = !DILocation(line: 214, column: 2, scope: !473)
!481 = !DILocation(line: 0, scope: !473)
!482 = !DILocation(line: 214, column: 2, scope: !483)
!483 = distinct !DILexicalBlock(scope: !473, file: !1, line: 214, column: 2)
!484 = !DILocation(line: 214, column: 2, scope: !485)
!485 = distinct !DILexicalBlock(scope: !483, file: !1, line: 214, column: 2)
!486 = !DILocation(line: 216, column: 8, scope: !441)
!487 = !DILocation(line: 216, column: 18, scope: !441)
!488 = !DILocation(line: 216, column: 46, scope: !441)
!489 = !DILocation(line: 217, column: 8, scope: !441)
!490 = !DILocation(line: 217, column: 2, scope: !441)
!491 = !DILocation(line: 217, column: 49, scope: !441)
!492 = !DILocation(line: 219, column: 2, scope: !441)
!493 = !DILocation(line: 220, column: 1, scope: !441)
!494 = !DISubprogram(name: "lzma_strm_init", scope: !40, file: !40, line: 220, type: !495, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!495 = !DISubroutineType(types: !496)
!496 = !{!62, !444}
!497 = !DISubprogram(name: "lzma_end", scope: !4, file: !4, line: 546, type: !498, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!498 = !DISubroutineType(types: !499)
!499 = !{null, !444}
!500 = !DISubprogram(name: "lzma_check_update", scope: !169, file: !169, line: 78, type: !501, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!501 = !DISubroutineType(types: !502)
!502 = !{null, !436, !99, !80, !72}
!503 = !DISubprogram(name: "lzma_check_finish", scope: !169, file: !169, line: 82, type: !434, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!504 = !DISubprogram(name: "lzma_check_size", scope: !26, file: !26, line: 95, type: !505, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!505 = !DISubroutineType(types: !506)
!506 = !{!126, !99}
!507 = !DISubprogram(name: "lzma_bufcpy", scope: !40, file: !40, line: 242, type: !508, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!508 = !DISubroutineType(types: !509)
!509 = !{!72, !79, !85, !72, !87, !85, !72}
!510 = !DISubprogram(name: "lzma_free", scope: !40, file: !40, line: 215, type: !511, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!511 = !DISubroutineType(types: !512)
!512 = !{null, !71, !63}
!513 = !DISubprogram(name: "lzma_next_filter_update", scope: !40, file: !40, line: 231, type: !439, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
