; ModuleID = 'liblzma/common/block_decoder.c'
source_filename = "liblzma/common/block_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_block_decoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %block) #0 !dbg !229 {
entry:
    #dbg_value(ptr %next, !234, !DIExpression(), !237)
    #dbg_value(ptr %allocator, !235, !DIExpression(), !237)
    #dbg_value(ptr %block, !236, !DIExpression(), !237)
  %init = getelementptr inbounds i8, ptr %next, i64 16, !dbg !238
  %0 = load i64, ptr %init, align 8, !dbg !238
  %cmp.not = icmp eq i64 %0, ptrtoint (ptr @lzma_block_decoder_init to i64), !dbg !238
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !241

if.then:                                          ; preds = %entry
  tail call void @lzma_next_end(ptr noundef nonnull %next, ptr noundef %allocator) #5, !dbg !238
  br label %if.end, !dbg !238

if.end:                                           ; preds = %if.then, %entry
  store i64 ptrtoint (ptr @lzma_block_decoder_init to i64), ptr %init, align 8, !dbg !241
  %call = tail call i64 @lzma_block_unpadded_size(ptr noundef %block) #5, !dbg !242
  %cmp2 = icmp eq i64 %call, 0, !dbg !244
  br i1 %cmp2, label %return, label %lor.lhs.false, !dbg !245

lor.lhs.false:                                    ; preds = %if.end
  %uncompressed_size = getelementptr inbounds i8, ptr %block, i64 24, !dbg !246
  %1 = load i64, ptr %uncompressed_size, align 8, !dbg !246
  %or.cond = icmp sgt i64 %1, -2, !dbg !246
  br i1 %or.cond, label %if.end8, label %return, !dbg !246

if.end8:                                          ; preds = %lor.lhs.false
  %2 = load ptr, ptr %next, align 8, !dbg !247
  %cmp9 = icmp eq ptr %2, null, !dbg !249
  br i1 %cmp9, label %if.then10, label %if.end23, !dbg !250

if.then10:                                        ; preds = %if.end8
  %call11 = tail call ptr @lzma_alloc(i64 noundef 216, ptr noundef %allocator) #5, !dbg !251
  store ptr %call11, ptr %next, align 8, !dbg !253
  %cmp14 = icmp eq ptr %call11, null, !dbg !254
  br i1 %cmp14, label %return, label %if.end16, !dbg !256

if.end16:                                         ; preds = %if.then10
  %code = getelementptr inbounds i8, ptr %next, i64 24, !dbg !257
  store ptr @block_decode, ptr %code, align 8, !dbg !258
  %end = getelementptr inbounds i8, ptr %next, i64 32, !dbg !259
  store ptr @block_decoder_end, ptr %end, align 8, !dbg !260
  %next18 = getelementptr inbounds i8, ptr %call11, i64 8, !dbg !261
  store ptr null, ptr %next18, align 8, !dbg !262
  %.compoundliteral.sroa.2.0.next18.sroa_idx = getelementptr inbounds i8, ptr %call11, i64 16, !dbg !262
  store i64 -1, ptr %.compoundliteral.sroa.2.0.next18.sroa_idx, align 8, !dbg !262
  %.compoundliteral.sroa.3.0.next18.sroa_idx = getelementptr inbounds i8, ptr %call11, i64 24, !dbg !262
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.compoundliteral.sroa.3.0.next18.sroa_idx, i8 0, i64 48, i1 false), !dbg !262
  %.pre = load ptr, ptr %next, align 8, !dbg !263
  br label %if.end23, !dbg !264

if.end23:                                         ; preds = %if.end16, %if.end8
  %3 = phi ptr [ %.pre, %if.end16 ], [ %2, %if.end8 ], !dbg !263
  store i32 0, ptr %3, align 8, !dbg !265
  %4 = load ptr, ptr %next, align 8, !dbg !266
  %block26 = getelementptr inbounds i8, ptr %4, i64 72, !dbg !267
  store ptr %block, ptr %block26, align 8, !dbg !268
  %5 = load ptr, ptr %next, align 8, !dbg !269
  %compressed_size = getelementptr inbounds i8, ptr %5, i64 80, !dbg !270
  store i64 0, ptr %compressed_size, align 8, !dbg !271
  %6 = load ptr, ptr %next, align 8, !dbg !272
  %uncompressed_size29 = getelementptr inbounds i8, ptr %6, i64 88, !dbg !273
  store i64 0, ptr %uncompressed_size29, align 8, !dbg !274
  %compressed_size30 = getelementptr inbounds i8, ptr %block, i64 16, !dbg !275
  %7 = load i64, ptr %compressed_size30, align 8, !dbg !275
  %cmp31 = icmp eq i64 %7, -1, !dbg !276
  br i1 %cmp31, label %cond.true, label %cond.end, !dbg !277

cond.true:                                        ; preds = %if.end23
  %header_size = getelementptr inbounds i8, ptr %block, i64 4, !dbg !278
  %8 = load i32, ptr %header_size, align 4, !dbg !278
  %conv = zext i32 %8 to i64, !dbg !279
  %check = getelementptr inbounds i8, ptr %block, i64 8, !dbg !280
  %9 = load i32, ptr %check, align 8, !dbg !280
  %call32 = tail call i32 @lzma_check_size(i32 noundef %9) #5, !dbg !281
  %conv33 = zext i32 %call32 to i64, !dbg !281
  %10 = add nuw nsw i64 %conv, %conv33, !dbg !282
  %sub34 = sub nuw nsw i64 9223372036854775804, %10, !dbg !282
  br label %cond.end, !dbg !277

cond.end:                                         ; preds = %if.end23, %cond.true
  %cond = phi i64 [ %sub34, %cond.true ], [ %7, %if.end23 ], !dbg !277
  %11 = load ptr, ptr %next, align 8, !dbg !283
  %compressed_limit = getelementptr inbounds i8, ptr %11, i64 96, !dbg !284
  store i64 %cond, ptr %compressed_limit, align 8, !dbg !285
  %12 = load ptr, ptr %next, align 8, !dbg !286
  %check_pos = getelementptr inbounds i8, ptr %12, i64 104, !dbg !287
  store i64 0, ptr %check_pos, align 8, !dbg !288
  %13 = load ptr, ptr %next, align 8, !dbg !289
  %check39 = getelementptr inbounds i8, ptr %13, i64 112, !dbg !290
  %check40 = getelementptr inbounds i8, ptr %block, i64 8, !dbg !291
  %14 = load i32, ptr %check40, align 8, !dbg !291
  tail call void @lzma_check_init(ptr noundef nonnull %check39, i32 noundef %14) #5, !dbg !292
  %15 = load ptr, ptr %next, align 8, !dbg !293
  %next42 = getelementptr inbounds i8, ptr %15, i64 8, !dbg !294
  %filters = getelementptr inbounds i8, ptr %block, i64 32, !dbg !295
  %16 = load ptr, ptr %filters, align 8, !dbg !295
  %call43 = tail call i32 @lzma_raw_decoder_init(ptr noundef nonnull %next42, ptr noundef %allocator, ptr noundef %16) #5, !dbg !296
  br label %return, !dbg !297

return:                                           ; preds = %if.then10, %if.end, %lor.lhs.false, %cond.end
  %retval.0 = phi i32 [ %call43, %cond.end ], [ 11, %lor.lhs.false ], [ 11, %if.end ], [ 5, %if.then10 ], !dbg !237
  ret i32 %retval.0, !dbg !298
}

declare !dbg !299 void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !302 i64 @lzma_block_unpadded_size(ptr noundef) local_unnamed_addr #1

declare !dbg !307 ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @block_decode(ptr noundef %pcoder, ptr noundef %allocator, ptr noalias noundef %in, ptr noalias noundef %in_pos, i64 noundef %in_size, ptr noalias noundef %out, ptr noalias noundef %out_pos, i64 noundef %out_size, i32 noundef %action) #0 !dbg !310 {
entry:
    #dbg_value(ptr %pcoder, !312, !DIExpression(), !333)
    #dbg_value(ptr %allocator, !313, !DIExpression(), !333)
    #dbg_value(ptr %in, !314, !DIExpression(), !333)
    #dbg_value(ptr %in_pos, !315, !DIExpression(), !333)
    #dbg_value(i64 %in_size, !316, !DIExpression(), !333)
    #dbg_value(ptr %out, !317, !DIExpression(), !333)
    #dbg_value(ptr %out_pos, !318, !DIExpression(), !333)
    #dbg_value(i64 %out_size, !319, !DIExpression(), !333)
    #dbg_value(i32 %action, !320, !DIExpression(), !333)
    #dbg_value(ptr %pcoder, !321, !DIExpression(), !333)
  %0 = load i32, ptr %pcoder, align 8, !dbg !334
  switch i32 %0, label %cleanup82 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb33
    i32 2, label %sw.bb54
  ], !dbg !335

sw.bb:                                            ; preds = %entry
  %1 = load i64, ptr %in_pos, align 8, !dbg !336
    #dbg_value(i64 %1, !322, !DIExpression(), !337)
  %2 = load i64, ptr %out_pos, align 8, !dbg !338
    #dbg_value(i64 %2, !326, !DIExpression(), !337)
  %next = getelementptr inbounds i8, ptr %pcoder, i64 8, !dbg !339
  %code = getelementptr inbounds i8, ptr %pcoder, i64 32, !dbg !340
  %3 = load ptr, ptr %code, align 8, !dbg !340
  %4 = load ptr, ptr %next, align 8, !dbg !341
  %call = tail call i32 %3(ptr noundef %4, ptr noundef %allocator, ptr noundef %in, ptr noundef nonnull %in_pos, i64 noundef %in_size, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %out_size, i32 noundef %action) #5, !dbg !342
    #dbg_value(i32 %call, !327, !DIExpression(), !337)
  %5 = load i64, ptr %in_pos, align 8, !dbg !343
  %sub = sub i64 %5, %1, !dbg !344
    #dbg_value(i64 %sub, !329, !DIExpression(), !337)
  %6 = load i64, ptr %out_pos, align 8, !dbg !345
  %sub3 = sub i64 %6, %2, !dbg !346
    #dbg_value(i64 %sub3, !330, !DIExpression(), !337)
  %compressed_size = getelementptr inbounds i8, ptr %pcoder, i64 80, !dbg !347
  %compressed_limit = getelementptr inbounds i8, ptr %pcoder, i64 96, !dbg !349
  %7 = load i64, ptr %compressed_limit, align 8, !dbg !349
    #dbg_value(ptr %compressed_size, !350, !DIExpression(), !358)
    #dbg_value(i64 %sub, !356, !DIExpression(), !358)
    #dbg_value(i64 %7, !357, !DIExpression(), !358)
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %7, i64 9223372036854775807), !dbg !360
    #dbg_value(i64 %spec.store.select.i, !357, !DIExpression(), !358)
  %8 = load i64, ptr %compressed_size, align 8, !dbg !361
  %cmp1.i = icmp ult i64 %spec.store.select.i, %8, !dbg !363
  %sub.i = sub i64 %spec.store.select.i, %8
  %cmp2.i = icmp ult i64 %sub.i, %sub
  %or.cond.i = or i1 %cmp1.i, %cmp2.i, !dbg !364
  br i1 %or.cond.i, label %cleanup82, label %lor.lhs.false, !dbg !364

lor.lhs.false:                                    ; preds = %sw.bb
  %add5.i = add i64 %8, %sub, !dbg !365
  store i64 %add5.i, ptr %compressed_size, align 8, !dbg !365
  %uncompressed_size = getelementptr inbounds i8, ptr %pcoder, i64 88, !dbg !366
  %block = getelementptr inbounds i8, ptr %pcoder, i64 72, !dbg !367
  %9 = load ptr, ptr %block, align 8, !dbg !367
  %uncompressed_size5 = getelementptr inbounds i8, ptr %9, i64 24, !dbg !368
  %10 = load i64, ptr %uncompressed_size5, align 8, !dbg !368
    #dbg_value(ptr %uncompressed_size, !350, !DIExpression(), !369)
    #dbg_value(i64 %sub3, !356, !DIExpression(), !369)
    #dbg_value(i64 %10, !357, !DIExpression(), !369)
  %spec.store.select.i130 = tail call i64 @llvm.umin.i64(i64 %10, i64 9223372036854775807), !dbg !371
    #dbg_value(i64 %spec.store.select.i130, !357, !DIExpression(), !369)
  %11 = load i64, ptr %uncompressed_size, align 8, !dbg !372
  %cmp1.i131 = icmp ult i64 %spec.store.select.i130, %11, !dbg !373
  %sub.i132 = sub i64 %spec.store.select.i130, %11
  %cmp2.i133 = icmp ult i64 %sub.i132, %sub3
  %or.cond.i134 = or i1 %cmp1.i131, %cmp2.i133, !dbg !374
  br i1 %or.cond.i134, label %cleanup82, label %if.end, !dbg !374

if.end:                                           ; preds = %lor.lhs.false
  %add5.i136 = add i64 %11, %sub3, !dbg !375
  store i64 %add5.i136, ptr %uncompressed_size, align 8, !dbg !375
  %check = getelementptr inbounds i8, ptr %pcoder, i64 112, !dbg !376
  %check8 = getelementptr inbounds i8, ptr %9, i64 8, !dbg !377
  %12 = load i32, ptr %check8, align 8, !dbg !377
  %add.ptr = getelementptr inbounds i8, ptr %out, i64 %2, !dbg !378
  tail call void @lzma_check_update(ptr noundef nonnull %check, i32 noundef %12, ptr noundef %add.ptr, i64 noundef %sub3) #5, !dbg !379
  %cmp.not = icmp eq i32 %call, 1, !dbg !380
  br i1 %cmp.not, label %if.end10, label %cleanup82, !dbg !382

if.end10:                                         ; preds = %if.end
  %13 = load i64, ptr %compressed_size, align 8, !dbg !383
  %14 = load ptr, ptr %block, align 8, !dbg !385
  %compressed_size13 = getelementptr inbounds i8, ptr %14, i64 16, !dbg !386
  %15 = load i64, ptr %compressed_size13, align 8, !dbg !386
    #dbg_value(i64 %13, !387, !DIExpression(), !393)
    #dbg_value(i64 %15, !392, !DIExpression(), !393)
  %cmp.i = icmp eq i64 %15, -1, !dbg !395
  %cmp1.i138 = icmp eq i64 %15, %13, !dbg !396
  %16 = or i1 %cmp.i, %cmp1.i138, !dbg !396
  br i1 %16, label %lor.lhs.false15, label %cleanup82, !dbg !397

lor.lhs.false15:                                  ; preds = %if.end10
  %17 = load i64, ptr %uncompressed_size, align 8, !dbg !398
  %uncompressed_size18 = getelementptr inbounds i8, ptr %14, i64 24, !dbg !399
  %18 = load i64, ptr %uncompressed_size18, align 8, !dbg !399
    #dbg_value(i64 %17, !387, !DIExpression(), !400)
    #dbg_value(i64 %18, !392, !DIExpression(), !400)
  %cmp.i139 = icmp eq i64 %18, -1, !dbg !402
  %cmp1.i140 = icmp eq i64 %18, %17, !dbg !403
  %19 = or i1 %cmp.i139, %cmp1.i140, !dbg !403
  br i1 %19, label %cleanup, label %cleanup82, !dbg !404

cleanup:                                          ; preds = %lor.lhs.false15
  store i64 %13, ptr %compressed_size13, align 8, !dbg !405
  %20 = load i64, ptr %uncompressed_size, align 8, !dbg !406
  %21 = load ptr, ptr %block, align 8, !dbg !407
  %uncompressed_size27 = getelementptr inbounds i8, ptr %21, i64 24, !dbg !408
  store i64 %20, ptr %uncompressed_size27, align 8, !dbg !409
  store i32 1, ptr %pcoder, align 8, !dbg !410
  br label %sw.bb33

sw.bb33:                                          ; preds = %cleanup, %entry
  %compressed_size34 = getelementptr inbounds i8, ptr %pcoder, i64 80
  %compressed_size34.promoted = load i64, ptr %compressed_size34, align 8
  %and = and i64 %compressed_size34.promoted, 3, !dbg !411
  %tobool.not = icmp eq i64 %and, 0, !dbg !412
  br i1 %tobool.not, label %while.end, label %while.body, !dbg !412

while.body:                                       ; preds = %sw.bb33
  %22 = load i64, ptr %in_pos, align 8, !dbg !413
  %cmp35.not = icmp ult i64 %22, %in_size, !dbg !416
  br i1 %cmp35.not, label %if.end37, label %cleanup82, !dbg !417

if.end37:                                         ; preds = %while.body
  %inc = add i64 %compressed_size34.promoted, 1, !dbg !418
  store i64 %inc, ptr %compressed_size34, align 8, !dbg !418
  %inc39 = add nuw i64 %22, 1, !dbg !419
  store i64 %inc39, ptr %in_pos, align 8, !dbg !419
  %arrayidx = getelementptr inbounds i8, ptr %in, i64 %22, !dbg !421
  %23 = load i8, ptr %arrayidx, align 1, !dbg !421
  %cmp40.not = icmp eq i8 %23, 0, !dbg !422
  br i1 %cmp40.not, label %while.cond.1, label %cleanup82, !dbg !423, !llvm.loop !424

while.cond.1:                                     ; preds = %if.end37
  %and.1 = and i64 %inc, 3, !dbg !411
  %tobool.not.1 = icmp eq i64 %and.1, 0, !dbg !412
  br i1 %tobool.not.1, label %while.end, label %while.body.1, !dbg !412

while.body.1:                                     ; preds = %while.cond.1
  %24 = load i64, ptr %in_pos, align 8, !dbg !413
  %cmp35.not.1 = icmp ult i64 %24, %in_size, !dbg !416
  br i1 %cmp35.not.1, label %if.end37.1, label %cleanup82, !dbg !417

if.end37.1:                                       ; preds = %while.body.1
  %inc.1 = add i64 %compressed_size34.promoted, 2, !dbg !418
  store i64 %inc.1, ptr %compressed_size34, align 8, !dbg !418
  %inc39.1 = add nuw i64 %24, 1, !dbg !419
  store i64 %inc39.1, ptr %in_pos, align 8, !dbg !419
  %arrayidx.1 = getelementptr inbounds i8, ptr %in, i64 %24, !dbg !421
  %25 = load i8, ptr %arrayidx.1, align 1, !dbg !421
  %cmp40.not.1 = icmp eq i8 %25, 0, !dbg !422
  br i1 %cmp40.not.1, label %while.cond.2, label %cleanup82, !dbg !423, !llvm.loop !424

while.cond.2:                                     ; preds = %if.end37.1
  %and.2 = and i64 %inc.1, 3, !dbg !411
  %tobool.not.2 = icmp eq i64 %and.2, 0, !dbg !412
  br i1 %tobool.not.2, label %while.end, label %while.body.2, !dbg !412

while.body.2:                                     ; preds = %while.cond.2
  %26 = load i64, ptr %in_pos, align 8, !dbg !413
  %cmp35.not.2 = icmp ult i64 %26, %in_size, !dbg !416
  br i1 %cmp35.not.2, label %if.end37.2, label %cleanup82, !dbg !417

if.end37.2:                                       ; preds = %while.body.2
  %inc.2 = add i64 %compressed_size34.promoted, 3, !dbg !418
  store i64 %inc.2, ptr %compressed_size34, align 8, !dbg !418
  %inc39.2 = add nuw i64 %26, 1, !dbg !419
  store i64 %inc39.2, ptr %in_pos, align 8, !dbg !419
  %arrayidx.2 = getelementptr inbounds i8, ptr %in, i64 %26, !dbg !421
  %27 = load i8, ptr %arrayidx.2, align 1, !dbg !421
  %cmp40.not.2 = icmp eq i8 %27, 0, !dbg !422
  br i1 %cmp40.not.2, label %while.cond.3, label %cleanup82, !dbg !423, !llvm.loop !424

while.cond.3:                                     ; preds = %if.end37.2
  %and.3 = and i64 %inc.2, 3, !dbg !411
  %tobool.not.3 = icmp eq i64 %and.3, 0, !dbg !412
  br i1 %tobool.not.3, label %while.end, label %while.body.3, !dbg !412

while.body.3:                                     ; preds = %while.cond.3
  %28 = load i64, ptr %in_pos, align 8, !dbg !413
  %cmp35.not.3 = icmp ult i64 %28, %in_size, !dbg !416
  br i1 %cmp35.not.3, label %if.end37.3, label %cleanup82, !dbg !417

if.end37.3:                                       ; preds = %while.body.3
  %inc.3 = add i64 %compressed_size34.promoted, 4, !dbg !418
  store i64 %inc.3, ptr %compressed_size34, align 8, !dbg !418
  %inc39.3 = add nuw i64 %28, 1, !dbg !419
  store i64 %inc39.3, ptr %in_pos, align 8, !dbg !419
  br label %cleanup82

while.end:                                        ; preds = %while.cond.3, %while.cond.2, %while.cond.1, %sw.bb33
  %block44 = getelementptr inbounds i8, ptr %pcoder, i64 72, !dbg !426
  %29 = load ptr, ptr %block44, align 8, !dbg !426
  %check45 = getelementptr inbounds i8, ptr %29, i64 8, !dbg !428
  %30 = load i32, ptr %check45, align 8, !dbg !428
  %cmp46 = icmp eq i32 %30, 0, !dbg !429
  br i1 %cmp46, label %cleanup82, label %if.end49, !dbg !430

if.end49:                                         ; preds = %while.end
  %check50 = getelementptr inbounds i8, ptr %pcoder, i64 112, !dbg !431
  tail call void @lzma_check_finish(ptr noundef nonnull %check50, i32 noundef %30) #5, !dbg !432
  store i32 2, ptr %pcoder, align 8, !dbg !433
  br label %sw.bb54, !dbg !434

sw.bb54:                                          ; preds = %entry, %if.end49
  %block55 = getelementptr inbounds i8, ptr %pcoder, i64 72, !dbg !435
  %31 = load ptr, ptr %block55, align 8, !dbg !435
  %check56 = getelementptr inbounds i8, ptr %31, i64 8, !dbg !436
  %32 = load i32, ptr %check56, align 8, !dbg !436
  %call57 = tail call i32 @lzma_check_size(i32 noundef %32) #5, !dbg !437
  %conv58 = zext i32 %call57 to i64, !dbg !437
    #dbg_value(i64 %conv58, !331, !DIExpression(), !438)
  %33 = load ptr, ptr %block55, align 8, !dbg !439
  %raw_check = getelementptr inbounds i8, ptr %33, i64 40, !dbg !440
  %check_pos = getelementptr inbounds i8, ptr %pcoder, i64 104, !dbg !441
  %call60 = tail call i64 @lzma_bufcpy(ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size, ptr noundef nonnull %raw_check, ptr noundef nonnull %check_pos, i64 noundef %conv58) #5, !dbg !442
  %34 = load i64, ptr %check_pos, align 8, !dbg !443
  %cmp62 = icmp ult i64 %34, %conv58, !dbg !445
  br i1 %cmp62, label %cleanup82, label %if.end65, !dbg !446

if.end65:                                         ; preds = %sw.bb54
  %35 = load ptr, ptr %block55, align 8, !dbg !447
  %check67 = getelementptr inbounds i8, ptr %35, i64 8, !dbg !449
  %36 = load i32, ptr %check67, align 8, !dbg !449
  %call68 = tail call zeroext i8 @lzma_check_is_supported(i32 noundef %36) #5, !dbg !450
  %tobool70.not = icmp eq i8 %call68, 0, !dbg !450
  br i1 %tobool70.not, label %if.end80, label %land.lhs.true, !dbg !451

land.lhs.true:                                    ; preds = %if.end65
  %37 = load ptr, ptr %block55, align 8, !dbg !452
  %raw_check72 = getelementptr inbounds i8, ptr %37, i64 40, !dbg !453
  %check74 = getelementptr inbounds i8, ptr %pcoder, i64 112, !dbg !454
  %bcmp = tail call i32 @bcmp(ptr nonnull %raw_check72, ptr nonnull %check74, i64 %conv58), !dbg !455
  %cmp77.not = icmp eq i32 %bcmp, 0, !dbg !456
  br i1 %cmp77.not, label %if.end80, label %cleanup82, !dbg !457

if.end80:                                         ; preds = %land.lhs.true, %if.end65
  br label %cleanup82, !dbg !458

cleanup82:                                        ; preds = %if.end37, %while.body, %while.body.1, %if.end37.1, %while.body.2, %if.end37.2, %while.body.3, %if.end37.3, %lor.lhs.false, %sw.bb, %if.end10, %lor.lhs.false15, %if.end, %entry, %if.end80, %sw.bb54, %land.lhs.true, %while.end
  %retval.2 = phi i32 [ 1, %while.end ], [ 1, %if.end80 ], [ 0, %sw.bb54 ], [ 9, %land.lhs.true ], [ 11, %entry ], [ 9, %if.end10 ], [ 9, %lor.lhs.false15 ], [ %call, %if.end ], [ 9, %sw.bb ], [ 9, %lor.lhs.false ], [ 9, %if.end37 ], [ 0, %while.body ], [ 0, %while.body.1 ], [ 9, %if.end37.1 ], [ 0, %while.body.2 ], [ 9, %if.end37.2 ], [ 0, %while.body.3 ], [ 9, %if.end37.3 ], !dbg !333
  ret i32 %retval.2, !dbg !459
}

; Function Attrs: nounwind uwtable
define internal void @block_decoder_end(ptr noundef %pcoder, ptr noundef %allocator) #0 !dbg !460 {
entry:
    #dbg_value(ptr %pcoder, !462, !DIExpression(), !465)
    #dbg_value(ptr %allocator, !463, !DIExpression(), !465)
    #dbg_value(ptr %pcoder, !464, !DIExpression(), !465)
  %next = getelementptr inbounds i8, ptr %pcoder, i64 8, !dbg !466
  tail call void @lzma_next_end(ptr noundef nonnull %next, ptr noundef %allocator) #5, !dbg !467
  tail call void @lzma_free(ptr noundef %pcoder, ptr noundef %allocator) #5, !dbg !468
  ret void, !dbg !469
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare !dbg !470 i32 @lzma_check_size(i32 noundef) local_unnamed_addr #1

declare !dbg !473 void @lzma_check_init(ptr noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !477 i32 @lzma_raw_decoder_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_block_decoder(ptr noundef %strm, ptr noundef %block) local_unnamed_addr #0 !dbg !481 {
entry:
    #dbg_value(ptr %strm, !509, !DIExpression(), !515)
    #dbg_value(ptr %block, !510, !DIExpression(), !515)
  %call = tail call i32 @lzma_strm_init(ptr noundef %strm) #5, !dbg !516
    #dbg_value(i32 %call, !511, !DIExpression(), !517)
  %cmp.not.not = icmp eq i32 %call, 0, !dbg !518
  br i1 %cmp.not.not, label %do.end, label %return

do.end:                                           ; preds = %entry
  %internal = getelementptr inbounds i8, ptr %strm, i64 56, !dbg !520
  %0 = load ptr, ptr %internal, align 8, !dbg !520
  %allocator = getelementptr inbounds i8, ptr %strm, i64 48, !dbg !520
  %1 = load ptr, ptr %allocator, align 8, !dbg !520
  %call3 = tail call i32 @lzma_block_decoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %block), !dbg !520
    #dbg_value(i32 %call3, !514, !DIExpression(), !521)
  %cmp4.not.not = icmp eq i32 %call3, 0, !dbg !522
  br i1 %cmp4.not.not, label %do.end10, label %cleanup7, !dbg !520

cleanup7:                                         ; preds = %do.end
  tail call void @lzma_end(ptr noundef nonnull %strm) #5, !dbg !524
  br label %return

do.end10:                                         ; preds = %do.end
  %2 = load ptr, ptr %internal, align 8, !dbg !526
  %supported_actions = getelementptr inbounds i8, ptr %2, i64 80, !dbg !527
  store i8 1, ptr %supported_actions, align 8, !dbg !528
  %3 = load ptr, ptr %internal, align 8, !dbg !529
  %arrayidx14 = getelementptr inbounds i8, ptr %3, i64 83, !dbg !530
  store i8 1, ptr %arrayidx14, align 1, !dbg !531
  br label %return, !dbg !532

return:                                           ; preds = %cleanup7, %entry, %do.end10
  %retval.2 = phi i32 [ %call, %entry ], [ %call3, %cleanup7 ], [ 0, %do.end10 ], !dbg !515
  ret i32 %retval.2, !dbg !533
}

declare !dbg !534 i32 @lzma_strm_init(ptr noundef) local_unnamed_addr #1

declare !dbg !537 void @lzma_end(ptr noundef) local_unnamed_addr #1

declare !dbg !540 void @lzma_check_update(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !543 void @lzma_check_finish(ptr noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !544 i64 @lzma_bufcpy(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !547 zeroext i8 @lzma_check_is_supported(i32 noundef) local_unnamed_addr #1

declare !dbg !550 void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nofree nounwind willreturn memory(argmem: read) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!221, !222, !223, !224, !225, !226, !227}
!llvm.ident = !{!228}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !219, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "liblzma/common/block_decoder.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "a9c2ade3280bfe5426dd8f7a5b8e1a9e")
!2 = !{!3, !19, !25, !32, !35, !200}
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
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !36, file: !1, line: 19, baseType: !5, size: 32, elements: !196)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_coder_s", file: !1, line: 18, size: 1728, elements: !37)
!37 = !{!38, !39, !120, !164, !165, !166, !167, !168}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !36, file: !1, line: 23, baseType: !35, size: 32)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !36, file: !1, line: 26, baseType: !40, size: 512, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_next_coder", file: !41, line: 80, baseType: !42)
!41 = !DIFile(filename: "liblzma/common/common.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_next_coder_s", file: !41, line: 124, size: 512, elements: !43)
!43 = !{!44, !47, !55, !58, !91, !96, !103, !108}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !42, file: !41, line: 126, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_coder", file: !41, line: 78, baseType: null)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !42, file: !41, line: 130, baseType: !48, size: 64, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !49, line: 63, baseType: !50)
!49 = !DIFile(filename: "liblzma/api/lzma/vli.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !51, line: 27, baseType: !52)
!51 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !53, line: 45, baseType: !54)
!53 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!54 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !42, file: !41, line: 136, baseType: !56, size: 64, offset: 128)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !57, line: 90, baseType: !54)
!57 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!58 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !42, file: !41, line: 139, baseType: !59, size: 64, offset: 192)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_code_function", file: !41, line: 94, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{!63, !45, !64, !80, !86, !73, !88, !86, !73, !90}
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !4, line: 403, baseType: !66)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 341, size: 192, elements: !67)
!67 = !{!68, !75, !79}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !66, file: !4, line: 376, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DISubroutineType(types: !71)
!71 = !{!72, !72, !73, !73}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !74, line: 18, baseType: !54)
!74 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!75 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !66, file: !4, line: 390, baseType: !76, size: 64, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DISubroutineType(types: !78)
!78 = !{null, !72, !72}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !66, file: !4, line: 401, baseType: !72, size: 64, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !51, line: 24, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !53, line: 38, baseType: !85)
!85 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!86 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !4, line: 322, baseType: !19)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !42, file: !41, line: 144, baseType: !92, size: 64, offset: 256)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_end_function", file: !41, line: 102, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DISubroutineType(types: !95)
!95 = !{null, !45, !64}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "get_check", scope: !42, file: !41, line: 148, baseType: !97, size: 64, offset: 320)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DISubroutineType(types: !99)
!99 = !{!100, !101}
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !26, line: 55, baseType: !25)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "memconfig", scope: !42, file: !41, line: 152, baseType: !104, size: 64, offset: 384)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DISubroutineType(types: !106)
!106 = !{!63, !45, !107, !107, !50}
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !42, file: !41, line: 157, baseType: !109, size: 64, offset: 448)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{!63, !45, !64, !112, !112}
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !115, line: 65, baseType: !116)
!115 = !DIFile(filename: "liblzma/api/lzma/filter.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !115, line: 43, size: 128, elements: !117)
!117 = !{!118, !119}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !116, file: !115, line: 54, baseType: !48, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !116, file: !115, line: 63, baseType: !72, size: 64, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !36, file: !1, line: 30, baseType: !121, size: 64, offset: 576)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_block", file: !123, line: 245, baseType: !124)
!123 = !DIFile(filename: "liblzma/api/lzma/block.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "bf8cbafce550217b909c63081e414910")
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !123, line: 30, size: 1664, elements: !125)
!125 = !{!126, !129, !130, !131, !132, !133, !135, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !152, !153, !154, !155, !157, !158, !159, !160, !161, !162, !163}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !124, file: !123, line: 47, baseType: !127, size: 32)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !51, line: 26, baseType: !128)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !53, line: 42, baseType: !5)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !124, file: !123, line: 67, baseType: !127, size: 32, offset: 32)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !124, file: !123, line: 88, baseType: !100, size: 32, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_size", scope: !124, file: !123, line: 143, baseType: !48, size: 64, offset: 128)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_size", scope: !124, file: !123, line: 167, baseType: !48, size: 64, offset: 192)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "filters", scope: !124, file: !123, line: 195, baseType: !134, size: 64, offset: 256)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "raw_check", scope: !124, file: !123, line: 212, baseType: !136, size: 512, offset: 320)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 512, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !124, file: !123, line: 221, baseType: !72, size: 64, offset: 832)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !124, file: !123, line: 222, baseType: !72, size: 64, offset: 896)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !124, file: !123, line: 223, baseType: !72, size: 64, offset: 960)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !124, file: !123, line: 224, baseType: !127, size: 32, offset: 1024)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !124, file: !123, line: 225, baseType: !127, size: 32, offset: 1056)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !124, file: !123, line: 226, baseType: !48, size: 64, offset: 1088)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !124, file: !123, line: 227, baseType: !48, size: 64, offset: 1152)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int5", scope: !124, file: !123, line: 228, baseType: !48, size: 64, offset: 1216)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int6", scope: !124, file: !123, line: 229, baseType: !48, size: 64, offset: 1280)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int7", scope: !124, file: !123, line: 230, baseType: !48, size: 64, offset: 1344)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int8", scope: !124, file: !123, line: 231, baseType: !48, size: 64, offset: 1408)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !124, file: !123, line: 232, baseType: !151, size: 32, offset: 1472)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !4, line: 46, baseType: !32)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !124, file: !123, line: 233, baseType: !151, size: 32, offset: 1504)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !124, file: !123, line: 234, baseType: !151, size: 32, offset: 1536)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !124, file: !123, line: 235, baseType: !151, size: 32, offset: 1568)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool1", scope: !124, file: !123, line: 236, baseType: !156, size: 8, offset: 1600)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_bool", file: !4, line: 29, baseType: !85)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool2", scope: !124, file: !123, line: 237, baseType: !156, size: 8, offset: 1608)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool3", scope: !124, file: !123, line: 238, baseType: !156, size: 8, offset: 1616)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool4", scope: !124, file: !123, line: 239, baseType: !156, size: 8, offset: 1624)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool5", scope: !124, file: !123, line: 240, baseType: !156, size: 8, offset: 1632)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool6", scope: !124, file: !123, line: 241, baseType: !156, size: 8, offset: 1640)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool7", scope: !124, file: !123, line: 242, baseType: !156, size: 8, offset: 1648)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool8", scope: !124, file: !123, line: 243, baseType: !156, size: 8, offset: 1656)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_size", scope: !36, file: !1, line: 33, baseType: !48, size: 64, offset: 640)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_size", scope: !36, file: !1, line: 36, baseType: !48, size: 64, offset: 704)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_limit", scope: !36, file: !1, line: 41, baseType: !48, size: 64, offset: 768)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "check_pos", scope: !36, file: !1, line: 44, baseType: !73, size: 64, offset: 832)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !36, file: !1, line: 47, baseType: !169, size: 832, offset: 896)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check_state", file: !170, line: 56, baseType: !171)
!170 = !DIFile(filename: "liblzma/check/check.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "938220df6e0ab33115ef85b0d8c70c5b")
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !170, line: 34, size: 832, elements: !172)
!172 = !{!173, !185}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !171, file: !170, line: 40, baseType: !174, size: 512)
!174 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !171, file: !170, line: 36, size: 512, elements: !175)
!175 = !{!176, !177, !181}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "u8", scope: !174, file: !170, line: 37, baseType: !136, size: 512)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "u32", scope: !174, file: !170, line: 38, baseType: !178, size: 512)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 512, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 16)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !174, file: !170, line: 39, baseType: !182, size: 512)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 512, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 8)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !171, file: !170, line: 54, baseType: !186, size: 320, offset: 512)
!186 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !171, file: !170, line: 43, size: 320, elements: !187)
!187 = !{!188, !189, !190}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "crc32", scope: !186, file: !170, line: 44, baseType: !127, size: 32)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "crc64", scope: !186, file: !170, line: 45, baseType: !50, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "sha256", scope: !186, file: !170, line: 53, baseType: !191, size: 320)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !186, file: !170, line: 47, size: 320, elements: !192)
!192 = !{!193, !195}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !191, file: !170, line: 49, baseType: !194, size: 256)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 256, elements: !183)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !191, file: !170, line: 52, baseType: !50, size: 64, offset: 256)
!196 = !{!197, !198, !199}
!197 = !DIEnumerator(name: "SEQ_CODE", value: 0)
!198 = !DIEnumerator(name: "SEQ_PADDING", value: 1)
!199 = !DIEnumerator(name: "SEQ_CHECK", value: 2)
!200 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !201, file: !41, line: 187, baseType: !5, size: 32, elements: !212)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_internal_s", file: !41, line: 179, size: 704, elements: !202)
!202 = !{!203, !204, !205, !206, !211}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !201, file: !41, line: 181, baseType: !40, size: 512)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !201, file: !41, line: 194, baseType: !200, size: 32, offset: 512)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !201, file: !41, line: 199, baseType: !73, size: 64, offset: 576)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "supported_actions", scope: !201, file: !41, line: 202, baseType: !207, size: 32, offset: 640)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 32, elements: !209)
!208 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!209 = !{!210}
!210 = !DISubrange(count: 4)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "allow_buf_error", scope: !201, file: !41, line: 206, baseType: !208, size: 8, offset: 672)
!212 = !{!213, !214, !215, !216, !217, !218}
!213 = !DIEnumerator(name: "ISEQ_RUN", value: 0)
!214 = !DIEnumerator(name: "ISEQ_SYNC_FLUSH", value: 1)
!215 = !DIEnumerator(name: "ISEQ_FULL_FLUSH", value: 2)
!216 = !DIEnumerator(name: "ISEQ_FINISH", value: 3)
!217 = !DIEnumerator(name: "ISEQ_END", value: 4)
!218 = !DIEnumerator(name: "ISEQ_ERROR", value: 5)
!219 = !{!56, !72, !220}
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!221 = !{i32 7, !"Dwarf Version", i32 5}
!222 = !{i32 2, !"Debug Info Version", i32 3}
!223 = !{i32 1, !"wchar_size", i32 4}
!224 = !{i32 8, !"PIC Level", i32 2}
!225 = !{i32 7, !"PIE Level", i32 2}
!226 = !{i32 7, !"uwtable", i32 2}
!227 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!228 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!229 = distinct !DISubprogram(name: "lzma_block_decoder_init", scope: !1, file: !1, line: 184, type: !230, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !233)
!230 = !DISubroutineType(types: !231)
!231 = !{!63, !232, !64, !121}
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!233 = !{!234, !235, !236}
!234 = !DILocalVariable(name: "next", arg: 1, scope: !229, file: !1, line: 184, type: !232)
!235 = !DILocalVariable(name: "allocator", arg: 2, scope: !229, file: !1, line: 184, type: !64)
!236 = !DILocalVariable(name: "block", arg: 3, scope: !229, file: !1, line: 185, type: !121)
!237 = !DILocation(line: 0, scope: !229)
!238 = !DILocation(line: 187, column: 2, scope: !239)
!239 = distinct !DILexicalBlock(scope: !240, file: !1, line: 187, column: 2)
!240 = distinct !DILexicalBlock(scope: !229, file: !1, line: 187, column: 2)
!241 = !DILocation(line: 187, column: 2, scope: !240)
!242 = !DILocation(line: 192, column: 6, scope: !243)
!243 = distinct !DILexicalBlock(scope: !229, file: !1, line: 192, column: 6)
!244 = !DILocation(line: 192, column: 38, scope: !243)
!245 = !DILocation(line: 193, column: 4, scope: !243)
!246 = !DILocation(line: 193, column: 8, scope: !243)
!247 = !DILocation(line: 197, column: 12, scope: !248)
!248 = distinct !DILexicalBlock(scope: !229, file: !1, line: 197, column: 6)
!249 = !DILocation(line: 197, column: 18, scope: !248)
!250 = !DILocation(line: 197, column: 6, scope: !229)
!251 = !DILocation(line: 198, column: 17, scope: !252)
!252 = distinct !DILexicalBlock(scope: !248, file: !1, line: 197, column: 27)
!253 = !DILocation(line: 198, column: 15, scope: !252)
!254 = !DILocation(line: 199, column: 19, scope: !255)
!255 = distinct !DILexicalBlock(scope: !252, file: !1, line: 199, column: 7)
!256 = !DILocation(line: 199, column: 7, scope: !252)
!257 = !DILocation(line: 202, column: 9, scope: !252)
!258 = !DILocation(line: 202, column: 14, scope: !252)
!259 = !DILocation(line: 203, column: 9, scope: !252)
!260 = !DILocation(line: 203, column: 13, scope: !252)
!261 = !DILocation(line: 204, column: 40, scope: !252)
!262 = !DILocation(line: 204, column: 47, scope: !252)
!263 = !DILocation(line: 208, column: 31, scope: !229)
!264 = !DILocation(line: 205, column: 2, scope: !252)
!265 = !DILocation(line: 208, column: 48, scope: !229)
!266 = !DILocation(line: 209, column: 31, scope: !229)
!267 = !DILocation(line: 209, column: 39, scope: !229)
!268 = !DILocation(line: 209, column: 45, scope: !229)
!269 = !DILocation(line: 210, column: 31, scope: !229)
!270 = !DILocation(line: 210, column: 39, scope: !229)
!271 = !DILocation(line: 210, column: 55, scope: !229)
!272 = !DILocation(line: 211, column: 31, scope: !229)
!273 = !DILocation(line: 211, column: 39, scope: !229)
!274 = !DILocation(line: 211, column: 57, scope: !229)
!275 = !DILocation(line: 217, column: 13, scope: !229)
!276 = !DILocation(line: 217, column: 29, scope: !229)
!277 = !DILocation(line: 217, column: 6, scope: !229)
!278 = !DILocation(line: 219, column: 15, scope: !229)
!279 = !DILocation(line: 219, column: 8, scope: !229)
!280 = !DILocation(line: 220, column: 31, scope: !229)
!281 = !DILocation(line: 220, column: 8, scope: !229)
!282 = !DILocation(line: 220, column: 6, scope: !229)
!283 = !DILocation(line: 216, column: 31, scope: !229)
!284 = !DILocation(line: 216, column: 39, scope: !229)
!285 = !DILocation(line: 217, column: 4, scope: !229)
!286 = !DILocation(line: 226, column: 31, scope: !229)
!287 = !DILocation(line: 226, column: 39, scope: !229)
!288 = !DILocation(line: 226, column: 49, scope: !229)
!289 = !DILocation(line: 227, column: 48, scope: !229)
!290 = !DILocation(line: 227, column: 56, scope: !229)
!291 = !DILocation(line: 227, column: 70, scope: !229)
!292 = !DILocation(line: 227, column: 2, scope: !229)
!293 = !DILocation(line: 230, column: 61, scope: !229)
!294 = !DILocation(line: 230, column: 69, scope: !229)
!295 = !DILocation(line: 231, column: 11, scope: !229)
!296 = !DILocation(line: 230, column: 9, scope: !229)
!297 = !DILocation(line: 230, column: 2, scope: !229)
!298 = !DILocation(line: 232, column: 1, scope: !229)
!299 = !DISubprogram(name: "lzma_next_end", scope: !41, file: !41, line: 237, type: !300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!300 = !DISubroutineType(types: !301)
!301 = !{null, !232, !64}
!302 = !DISubprogram(name: "lzma_block_unpadded_size", scope: !123, file: !123, line: 391, type: !303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!303 = !DISubroutineType(types: !304)
!304 = !{!48, !305}
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!307 = !DISubprogram(name: "lzma_alloc", scope: !41, file: !41, line: 211, type: !308, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!308 = !DISubroutineType(types: !309)
!309 = !{!72, !73, !64}
!310 = distinct !DISubprogram(name: "block_decode", scope: !1, file: !1, line: 74, type: !61, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !311)
!311 = !{!312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !326, !327, !329, !330, !331}
!312 = !DILocalVariable(name: "pcoder", arg: 1, scope: !310, file: !1, line: 74, type: !45)
!313 = !DILocalVariable(name: "allocator", arg: 2, scope: !310, file: !1, line: 74, type: !64)
!314 = !DILocalVariable(name: "in", arg: 3, scope: !310, file: !1, line: 75, type: !80)
!315 = !DILocalVariable(name: "in_pos", arg: 4, scope: !310, file: !1, line: 75, type: !86)
!316 = !DILocalVariable(name: "in_size", arg: 5, scope: !310, file: !1, line: 76, type: !73)
!317 = !DILocalVariable(name: "out", arg: 6, scope: !310, file: !1, line: 76, type: !88)
!318 = !DILocalVariable(name: "out_pos", arg: 7, scope: !310, file: !1, line: 77, type: !86)
!319 = !DILocalVariable(name: "out_size", arg: 8, scope: !310, file: !1, line: 77, type: !73)
!320 = !DILocalVariable(name: "action", arg: 9, scope: !310, file: !1, line: 77, type: !90)
!321 = !DILocalVariable(name: "coder", scope: !310, file: !1, line: 79, type: !220)
!322 = !DILocalVariable(name: "in_start", scope: !323, file: !1, line: 82, type: !325)
!323 = distinct !DILexicalBlock(scope: !324, file: !1, line: 81, column: 17)
!324 = distinct !DILexicalBlock(scope: !310, file: !1, line: 80, column: 27)
!325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!326 = !DILocalVariable(name: "out_start", scope: !323, file: !1, line: 83, type: !325)
!327 = !DILocalVariable(name: "ret", scope: !323, file: !1, line: 85, type: !328)
!328 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!329 = !DILocalVariable(name: "in_used", scope: !323, file: !1, line: 89, type: !325)
!330 = !DILocalVariable(name: "out_used", scope: !323, file: !1, line: 90, type: !325)
!331 = !DILocalVariable(name: "check_size", scope: !332, file: !1, line: 150, type: !325)
!332 = distinct !DILexicalBlock(scope: !324, file: !1, line: 149, column: 18)
!333 = !DILocation(line: 0, scope: !310)
!334 = !DILocation(line: 80, column: 17, scope: !310)
!335 = !DILocation(line: 80, column: 2, scope: !310)
!336 = !DILocation(line: 82, column: 27, scope: !323)
!337 = !DILocation(line: 0, scope: !323)
!338 = !DILocation(line: 83, column: 28, scope: !323)
!339 = !DILocation(line: 85, column: 31, scope: !323)
!340 = !DILocation(line: 85, column: 36, scope: !323)
!341 = !DILocation(line: 85, column: 53, scope: !323)
!342 = !DILocation(line: 85, column: 24, scope: !323)
!343 = !DILocation(line: 89, column: 26, scope: !323)
!344 = !DILocation(line: 89, column: 34, scope: !323)
!345 = !DILocation(line: 90, column: 27, scope: !323)
!346 = !DILocation(line: 90, column: 36, scope: !323)
!347 = !DILocation(line: 94, column: 27, scope: !348)
!348 = distinct !DILexicalBlock(scope: !323, file: !1, line: 94, column: 7)
!349 = !DILocation(line: 95, column: 13, scope: !348)
!350 = !DILocalVariable(name: "size", arg: 1, scope: !351, file: !1, line: 52, type: !354)
!351 = distinct !DISubprogram(name: "update_size", scope: !1, file: !1, line: 52, type: !352, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !355)
!352 = !DISubroutineType(types: !353)
!353 = !{!208, !354, !48, !48}
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!355 = !{!350, !356, !357}
!356 = !DILocalVariable(name: "add", arg: 2, scope: !351, file: !1, line: 52, type: !48)
!357 = !DILocalVariable(name: "limit", arg: 3, scope: !351, file: !1, line: 52, type: !48)
!358 = !DILocation(line: 0, scope: !351, inlinedAt: !359)
!359 = distinct !DILocation(line: 94, column: 7, scope: !348)
!360 = !DILocation(line: 54, column: 6, scope: !351, inlinedAt: !359)
!361 = !DILocation(line: 57, column: 14, scope: !362, inlinedAt: !359)
!362 = distinct !DILexicalBlock(scope: !351, file: !1, line: 57, column: 6)
!363 = !DILocation(line: 57, column: 12, scope: !362, inlinedAt: !359)
!364 = !DILocation(line: 57, column: 20, scope: !362, inlinedAt: !359)
!365 = !DILocation(line: 60, column: 8, scope: !351, inlinedAt: !359)
!366 = !DILocation(line: 96, column: 28, scope: !348)
!367 = !DILocation(line: 98, column: 13, scope: !348)
!368 = !DILocation(line: 98, column: 20, scope: !348)
!369 = !DILocation(line: 0, scope: !351, inlinedAt: !370)
!370 = distinct !DILocation(line: 96, column: 8, scope: !348)
!371 = !DILocation(line: 54, column: 6, scope: !351, inlinedAt: !370)
!372 = !DILocation(line: 57, column: 14, scope: !362, inlinedAt: !370)
!373 = !DILocation(line: 57, column: 12, scope: !362, inlinedAt: !370)
!374 = !DILocation(line: 57, column: 20, scope: !362, inlinedAt: !370)
!375 = !DILocation(line: 60, column: 8, scope: !351, inlinedAt: !370)
!376 = !DILocation(line: 101, column: 29, scope: !323)
!377 = !DILocation(line: 101, column: 50, scope: !323)
!378 = !DILocation(line: 102, column: 9, scope: !323)
!379 = !DILocation(line: 101, column: 3, scope: !323)
!380 = !DILocation(line: 104, column: 11, scope: !381)
!381 = distinct !DILexicalBlock(scope: !323, file: !1, line: 104, column: 7)
!382 = !DILocation(line: 104, column: 7, scope: !323)
!383 = !DILocation(line: 109, column: 29, scope: !384)
!384 = distinct !DILexicalBlock(scope: !323, file: !1, line: 109, column: 7)
!385 = !DILocation(line: 110, column: 13, scope: !384)
!386 = !DILocation(line: 110, column: 20, scope: !384)
!387 = !DILocalVariable(name: "size", arg: 1, scope: !388, file: !1, line: 67, type: !48)
!388 = distinct !DISubprogram(name: "is_size_valid", scope: !1, file: !1, line: 67, type: !389, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !391)
!389 = !DISubroutineType(types: !390)
!390 = !{!208, !48, !48}
!391 = !{!387, !392}
!392 = !DILocalVariable(name: "reference", arg: 2, scope: !388, file: !1, line: 67, type: !48)
!393 = !DILocation(line: 0, scope: !388, inlinedAt: !394)
!394 = distinct !DILocation(line: 109, column: 8, scope: !384)
!395 = !DILocation(line: 69, column: 19, scope: !388, inlinedAt: !394)
!396 = !DILocation(line: 69, column: 39, scope: !388, inlinedAt: !394)
!397 = !DILocation(line: 111, column: 5, scope: !384)
!398 = !DILocation(line: 111, column: 30, scope: !384)
!399 = !DILocation(line: 112, column: 20, scope: !384)
!400 = !DILocation(line: 0, scope: !388, inlinedAt: !401)
!401 = distinct !DILocation(line: 111, column: 9, scope: !384)
!402 = !DILocation(line: 69, column: 19, scope: !388, inlinedAt: !401)
!403 = !DILocation(line: 69, column: 39, scope: !388, inlinedAt: !401)
!404 = !DILocation(line: 109, column: 7, scope: !323)
!405 = !DILocation(line: 117, column: 33, scope: !323)
!406 = !DILocation(line: 118, column: 44, scope: !323)
!407 = !DILocation(line: 118, column: 10, scope: !323)
!408 = !DILocation(line: 118, column: 17, scope: !323)
!409 = !DILocation(line: 118, column: 35, scope: !323)
!410 = !DILocation(line: 120, column: 19, scope: !323)
!411 = !DILocation(line: 127, column: 33, scope: !324)
!412 = !DILocation(line: 127, column: 3, scope: !324)
!413 = !DILocation(line: 128, column: 8, scope: !414)
!414 = distinct !DILexicalBlock(scope: !415, file: !1, line: 128, column: 8)
!415 = distinct !DILexicalBlock(scope: !324, file: !1, line: 127, column: 38)
!416 = !DILocation(line: 128, column: 16, scope: !414)
!417 = !DILocation(line: 128, column: 8, scope: !415)
!418 = !DILocation(line: 135, column: 4, scope: !415)
!419 = !DILocation(line: 137, column: 20, scope: !420)
!420 = distinct !DILexicalBlock(scope: !415, file: !1, line: 137, column: 8)
!421 = !DILocation(line: 137, column: 8, scope: !420)
!422 = !DILocation(line: 137, column: 24, scope: !420)
!423 = !DILocation(line: 137, column: 8, scope: !415)
!424 = distinct !{!424, !412, !425}
!425 = !DILocation(line: 139, column: 3, scope: !324)
!426 = !DILocation(line: 141, column: 14, scope: !427)
!427 = distinct !DILexicalBlock(scope: !324, file: !1, line: 141, column: 7)
!428 = !DILocation(line: 141, column: 21, scope: !427)
!429 = !DILocation(line: 141, column: 27, scope: !427)
!430 = !DILocation(line: 141, column: 7, scope: !324)
!431 = !DILocation(line: 144, column: 29, scope: !324)
!432 = !DILocation(line: 144, column: 3, scope: !324)
!433 = !DILocation(line: 145, column: 19, scope: !324)
!434 = !DILocation(line: 145, column: 3, scope: !324)
!435 = !DILocation(line: 150, column: 52, scope: !332)
!436 = !DILocation(line: 150, column: 59, scope: !332)
!437 = !DILocation(line: 150, column: 29, scope: !332)
!438 = !DILocation(line: 0, scope: !332)
!439 = !DILocation(line: 151, column: 43, scope: !332)
!440 = !DILocation(line: 151, column: 50, scope: !332)
!441 = !DILocation(line: 152, column: 13, scope: !332)
!442 = !DILocation(line: 151, column: 3, scope: !332)
!443 = !DILocation(line: 153, column: 14, scope: !444)
!444 = distinct !DILexicalBlock(scope: !332, file: !1, line: 153, column: 7)
!445 = !DILocation(line: 153, column: 24, scope: !444)
!446 = !DILocation(line: 153, column: 7, scope: !332)
!447 = !DILocation(line: 159, column: 38, scope: !448)
!448 = distinct !DILexicalBlock(scope: !332, file: !1, line: 159, column: 7)
!449 = !DILocation(line: 159, column: 45, scope: !448)
!450 = !DILocation(line: 159, column: 7, scope: !448)
!451 = !DILocation(line: 160, column: 5, scope: !448)
!452 = !DILocation(line: 160, column: 22, scope: !448)
!453 = !DILocation(line: 160, column: 29, scope: !448)
!454 = !DILocation(line: 161, column: 13, scope: !448)
!455 = !DILocation(line: 160, column: 8, scope: !448)
!456 = !DILocation(line: 162, column: 18, scope: !448)
!457 = !DILocation(line: 159, column: 7, scope: !332)
!458 = !DILocation(line: 165, column: 3, scope: !332)
!459 = !DILocation(line: 170, column: 1, scope: !310)
!460 = distinct !DISubprogram(name: "block_decoder_end", scope: !1, file: !1, line: 174, type: !94, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !461)
!461 = !{!462, !463, !464}
!462 = !DILocalVariable(name: "pcoder", arg: 1, scope: !460, file: !1, line: 174, type: !45)
!463 = !DILocalVariable(name: "allocator", arg: 2, scope: !460, file: !1, line: 174, type: !64)
!464 = !DILocalVariable(name: "coder", scope: !460, file: !1, line: 176, type: !220)
!465 = !DILocation(line: 0, scope: !460)
!466 = !DILocation(line: 177, column: 24, scope: !460)
!467 = !DILocation(line: 177, column: 2, scope: !460)
!468 = !DILocation(line: 178, column: 2, scope: !460)
!469 = !DILocation(line: 180, column: 1, scope: !460)
!470 = !DISubprogram(name: "lzma_check_size", scope: !26, file: !26, line: 95, type: !471, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!471 = !DISubroutineType(types: !472)
!472 = !{!127, !100}
!473 = !DISubprogram(name: "lzma_check_init", scope: !170, file: !170, line: 75, type: !474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!474 = !DISubroutineType(types: !475)
!475 = !{null, !476, !100}
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!477 = !DISubprogram(name: "lzma_raw_decoder_init", scope: !478, file: !478, line: 19, type: !479, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!478 = !DIFile(filename: "liblzma/common/filter_decoder.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "eb6564ac887b86e116dfd99078c48b83")
!479 = !DISubroutineType(types: !480)
!480 = !{!63, !232, !64, !112}
!481 = distinct !DISubprogram(name: "lzma_block_decoder", scope: !1, file: !1, line: 236, type: !482, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !508)
!482 = !DISubroutineType(types: !483)
!483 = !{!63, !484, !121}
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_stream", file: !4, line: 490, baseType: !486)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 453, size: 1088, elements: !487)
!487 = !{!488, !489, !490, !491, !492, !493, !494, !495, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !486, file: !4, line: 454, baseType: !81, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !486, file: !4, line: 455, baseType: !73, size: 64, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "total_in", scope: !486, file: !4, line: 456, baseType: !50, size: 64, offset: 128)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !486, file: !4, line: 458, baseType: !89, size: 64, offset: 192)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !486, file: !4, line: 459, baseType: !73, size: 64, offset: 256)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "total_out", scope: !486, file: !4, line: 460, baseType: !50, size: 64, offset: 320)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !486, file: !4, line: 468, baseType: !64, size: 64, offset: 384)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !486, file: !4, line: 471, baseType: !496, size: 64, offset: 448)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_internal", file: !4, line: 411, baseType: !201)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !486, file: !4, line: 479, baseType: !72, size: 64, offset: 512)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !486, file: !4, line: 480, baseType: !72, size: 64, offset: 576)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !486, file: !4, line: 481, baseType: !72, size: 64, offset: 640)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr4", scope: !486, file: !4, line: 482, baseType: !72, size: 64, offset: 704)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !486, file: !4, line: 483, baseType: !50, size: 64, offset: 768)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !486, file: !4, line: 484, baseType: !50, size: 64, offset: 832)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !486, file: !4, line: 485, baseType: !73, size: 64, offset: 896)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !486, file: !4, line: 486, baseType: !73, size: 64, offset: 960)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !486, file: !4, line: 487, baseType: !151, size: 32, offset: 1024)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !486, file: !4, line: 488, baseType: !151, size: 32, offset: 1056)
!508 = !{!509, !510, !511, !514}
!509 = !DILocalVariable(name: "strm", arg: 1, scope: !481, file: !1, line: 236, type: !484)
!510 = !DILocalVariable(name: "block", arg: 2, scope: !481, file: !1, line: 236, type: !121)
!511 = !DILocalVariable(name: "ret_", scope: !512, file: !1, line: 238, type: !328)
!512 = distinct !DILexicalBlock(scope: !513, file: !1, line: 238, column: 2)
!513 = distinct !DILexicalBlock(scope: !481, file: !1, line: 238, column: 2)
!514 = !DILocalVariable(name: "ret_", scope: !513, file: !1, line: 238, type: !328)
!515 = !DILocation(line: 0, scope: !481)
!516 = !DILocation(line: 238, column: 2, scope: !512)
!517 = !DILocation(line: 0, scope: !512)
!518 = !DILocation(line: 238, column: 2, scope: !519)
!519 = distinct !DILexicalBlock(scope: !512, file: !1, line: 238, column: 2)
!520 = !DILocation(line: 238, column: 2, scope: !513)
!521 = !DILocation(line: 0, scope: !513)
!522 = !DILocation(line: 238, column: 2, scope: !523)
!523 = distinct !DILexicalBlock(scope: !513, file: !1, line: 238, column: 2)
!524 = !DILocation(line: 238, column: 2, scope: !525)
!525 = distinct !DILexicalBlock(scope: !523, file: !1, line: 238, column: 2)
!526 = !DILocation(line: 240, column: 8, scope: !481)
!527 = !DILocation(line: 240, column: 18, scope: !481)
!528 = !DILocation(line: 240, column: 46, scope: !481)
!529 = !DILocation(line: 241, column: 8, scope: !481)
!530 = !DILocation(line: 241, column: 2, scope: !481)
!531 = !DILocation(line: 241, column: 49, scope: !481)
!532 = !DILocation(line: 243, column: 2, scope: !481)
!533 = !DILocation(line: 244, column: 1, scope: !481)
!534 = !DISubprogram(name: "lzma_strm_init", scope: !41, file: !41, line: 220, type: !535, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!535 = !DISubroutineType(types: !536)
!536 = !{!63, !484}
!537 = !DISubprogram(name: "lzma_end", scope: !4, file: !4, line: 546, type: !538, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!538 = !DISubroutineType(types: !539)
!539 = !{null, !484}
!540 = !DISubprogram(name: "lzma_check_update", scope: !170, file: !170, line: 78, type: !541, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!541 = !DISubroutineType(types: !542)
!542 = !{null, !476, !100, !81, !73}
!543 = !DISubprogram(name: "lzma_check_finish", scope: !170, file: !170, line: 82, type: !474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!544 = !DISubprogram(name: "lzma_bufcpy", scope: !41, file: !41, line: 242, type: !545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!545 = !DISubroutineType(types: !546)
!546 = !{!73, !80, !86, !73, !88, !86, !73}
!547 = !DISubprogram(name: "lzma_check_is_supported", scope: !26, file: !26, line: 81, type: !548, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!548 = !DISubroutineType(types: !549)
!549 = !{!156, !100}
!550 = !DISubprogram(name: "lzma_free", scope: !41, file: !41, line: 215, type: !551, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!551 = !DISubroutineType(types: !552)
!552 = !{null, !72, !64}
