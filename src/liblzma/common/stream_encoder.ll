; ModuleID = 'liblzma/common/stream_encoder.c'
source_filename = "liblzma/common/stream_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_stream_flags = type { i32, i64, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.lzma_filter = type { i64, ptr }

@stream_encode.convert = internal unnamed_addr constant [4 x i32] [i32 0, i32 1, i32 3, i32 3], align 16, !dbg !0

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_stream_encoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters, i32 noundef %check) #0 !dbg !274 {
entry:
  %stream_flags = alloca %struct.lzma_stream_flags, align 8, !DIAssignID !286
    #dbg_assign(i1 undef, !283, !DIExpression(), !286, ptr %stream_flags, !DIExpression(), !287)
    #dbg_value(ptr %next, !279, !DIExpression(), !287)
    #dbg_value(ptr %allocator, !280, !DIExpression(), !287)
    #dbg_value(ptr %filters, !281, !DIExpression(), !287)
    #dbg_value(i32 %check, !282, !DIExpression(), !287)
  %init = getelementptr inbounds i8, ptr %next, i64 16, !dbg !288
  %0 = load i64, ptr %init, align 8, !dbg !288
  %cmp.not = icmp eq i64 %0, ptrtoint (ptr @lzma_stream_encoder_init to i64), !dbg !288
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !291

if.then:                                          ; preds = %entry
  tail call void @lzma_next_end(ptr noundef nonnull %next, ptr noundef %allocator) #4, !dbg !288
  br label %if.end, !dbg !288

if.end:                                           ; preds = %if.then, %entry
  store i64 ptrtoint (ptr @lzma_stream_encoder_init to i64), ptr %init, align 8, !dbg !291
  %cmp2 = icmp eq ptr %filters, null, !dbg !292
  br i1 %cmp2, label %return, label %if.end4, !dbg !294

if.end4:                                          ; preds = %if.end
  %1 = load ptr, ptr %next, align 8, !dbg !295
  %cmp5 = icmp eq ptr %1, null, !dbg !297
  br i1 %cmp5, label %if.then6, label %if.end32, !dbg !298

if.then6:                                         ; preds = %if.end4
  %call = tail call ptr @lzma_alloc(i64 noundef 1472, ptr noundef %allocator) #4, !dbg !299
  store ptr %call, ptr %next, align 8, !dbg !301
  %cmp9 = icmp eq ptr %call, null, !dbg !302
  br i1 %cmp9, label %return, label %if.end11, !dbg !304

if.end11:                                         ; preds = %if.then6
  %code = getelementptr inbounds i8, ptr %next, i64 24, !dbg !305
  store ptr @stream_encode, ptr %code, align 8, !dbg !306
  %end = getelementptr inbounds i8, ptr %next, i64 32, !dbg !307
  store ptr @stream_encoder_end, ptr %end, align 8, !dbg !308
  %update = getelementptr inbounds i8, ptr %next, i64 56, !dbg !309
  store ptr @stream_encoder_update, ptr %update, align 8, !dbg !310
  %filters13 = getelementptr inbounds i8, ptr %call, i64 280, !dbg !311
  store i64 -1, ptr %filters13, align 8, !dbg !312
  %2 = load ptr, ptr %next, align 8, !dbg !313
  %block_encoder = getelementptr inbounds i8, ptr %2, i64 8, !dbg !314
  store ptr null, ptr %block_encoder, align 8, !dbg !315
  %.compoundliteral.sroa.2.0.block_encoder.sroa_idx = getelementptr inbounds i8, ptr %2, i64 16, !dbg !315
  store i64 -1, ptr %.compoundliteral.sroa.2.0.block_encoder.sroa_idx, align 8, !dbg !315
  %.compoundliteral.sroa.3.0.block_encoder.sroa_idx = getelementptr inbounds i8, ptr %2, i64 24, !dbg !315
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.compoundliteral.sroa.3.0.block_encoder.sroa_idx, i8 0, i64 48, i1 false), !dbg !315
  %3 = load ptr, ptr %next, align 8, !dbg !316
  %index_encoder = getelementptr inbounds i8, ptr %3, i64 360, !dbg !317
  store ptr null, ptr %index_encoder, align 8, !dbg !318
  %.compoundliteral22.sroa.2.0.index_encoder.sroa_idx = getelementptr inbounds i8, ptr %3, i64 368, !dbg !318
  store i64 -1, ptr %.compoundliteral22.sroa.2.0.index_encoder.sroa_idx, align 8, !dbg !318
  %.compoundliteral22.sroa.3.0.index_encoder.sroa_idx = getelementptr inbounds i8, ptr %3, i64 376, !dbg !318
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.compoundliteral22.sroa.3.0.index_encoder.sroa_idx, i8 0, i64 48, i1 false), !dbg !318
  %4 = load ptr, ptr %next, align 8, !dbg !319
  %index = getelementptr inbounds i8, ptr %4, i64 424, !dbg !320
  store ptr null, ptr %index, align 8, !dbg !321
  %.pre = load ptr, ptr %next, align 8, !dbg !322
  br label %if.end32, !dbg !323

if.end32:                                         ; preds = %if.end11, %if.end4
  %5 = phi ptr [ %.pre, %if.end11 ], [ %1, %if.end4 ], !dbg !322
  store i32 0, ptr %5, align 8, !dbg !324
  %6 = load ptr, ptr %next, align 8, !dbg !325
  %block_options = getelementptr inbounds i8, ptr %6, i64 72, !dbg !326
  store i32 0, ptr %block_options, align 8, !dbg !327
  %7 = load ptr, ptr %next, align 8, !dbg !328
  %check37 = getelementptr inbounds i8, ptr %7, i64 80, !dbg !329
  store i32 %check, ptr %check37, align 8, !dbg !330
  %8 = load ptr, ptr %next, align 8, !dbg !331
  %index39 = getelementptr inbounds i8, ptr %8, i64 424, !dbg !332
  %9 = load ptr, ptr %index39, align 8, !dbg !332
  tail call void @lzma_index_end(ptr noundef %9, ptr noundef %allocator) #4, !dbg !333
  %call40 = tail call ptr @lzma_index_init(ptr noundef %allocator) #4, !dbg !334
  %10 = load ptr, ptr %next, align 8, !dbg !335
  %index42 = getelementptr inbounds i8, ptr %10, i64 424, !dbg !336
  store ptr %call40, ptr %index42, align 8, !dbg !337
  %11 = load ptr, ptr %next, align 8, !dbg !338
  %index44 = getelementptr inbounds i8, ptr %11, i64 424, !dbg !340
  %12 = load ptr, ptr %index44, align 8, !dbg !340
  %cmp45 = icmp eq ptr %12, null, !dbg !341
  br i1 %cmp45, label %return, label %if.end47, !dbg !342

if.end47:                                         ; preds = %if.end32
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %stream_flags) #4, !dbg !343
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %stream_flags, i8 0, i64 56, i1 false), !dbg !344, !DIAssignID !345
    #dbg_assign(i8 0, !283, !DIExpression(), !345, ptr %stream_flags, !DIExpression(), !287)
  %check49 = getelementptr inbounds i8, ptr %stream_flags, i64 16, !dbg !346
  store i32 %check, ptr %check49, align 8, !dbg !346, !DIAssignID !347
    #dbg_assign(i32 %check, !283, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !347, ptr %check49, !DIExpression(), !287)
  %buffer = getelementptr inbounds i8, ptr %11, i64 448, !dbg !348
  %call52 = call i32 @lzma_stream_header_encode(ptr noundef nonnull %stream_flags, ptr noundef nonnull %buffer) #4, !dbg !348
    #dbg_value(i32 %call52, !284, !DIExpression(), !349)
  %cmp53.not = icmp eq i32 %call52, 0, !dbg !350
  br i1 %cmp53.not, label %do.end56, label %cleanup61

do.end56:                                         ; preds = %if.end47
  %13 = load ptr, ptr %next, align 8, !dbg !352
  %buffer_pos = getelementptr inbounds i8, ptr %13, i64 432, !dbg !353
  store i64 0, ptr %buffer_pos, align 8, !dbg !354
  %14 = load ptr, ptr %next, align 8, !dbg !355
  %buffer_size = getelementptr inbounds i8, ptr %14, i64 440, !dbg !356
  store i64 12, ptr %buffer_size, align 8, !dbg !357
  %15 = load ptr, ptr %next, align 8, !dbg !358
  %call60 = call i32 @stream_encoder_update(ptr noundef %15, ptr noundef %allocator, ptr noundef nonnull %filters, ptr noundef null), !dbg !359
  br label %cleanup61, !dbg !360

cleanup61:                                        ; preds = %if.end47, %do.end56
  %retval.1 = phi i32 [ %call60, %do.end56 ], [ %call52, %if.end47 ], !dbg !287
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %stream_flags) #4, !dbg !361
  br label %return

return:                                           ; preds = %if.end32, %if.then6, %if.end, %cleanup61
  %retval.2 = phi i32 [ %retval.1, %cleanup61 ], [ 11, %if.end ], [ 5, %if.then6 ], [ 5, %if.end32 ], !dbg !287
  ret i32 %retval.2, !dbg !361
}

declare !dbg !362 void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !365 ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @stream_encode(ptr noundef %pcoder, ptr noundef %allocator, ptr noalias noundef %in, ptr noalias noundef %in_pos, i64 noundef %in_size, ptr noalias noundef %out, ptr noalias noundef %out_pos, i64 noundef %out_size, i32 noundef %action) #0 !dbg !2 {
entry:
  %stream_flags = alloca %struct.lzma_stream_flags, align 8, !DIAssignID !368
    #dbg_assign(i1 undef, !241, !DIExpression(), !368, ptr %stream_flags, !DIExpression(), !369)
    #dbg_value(ptr %pcoder, !213, !DIExpression(), !370)
    #dbg_value(ptr %allocator, !214, !DIExpression(), !370)
    #dbg_value(ptr %in, !215, !DIExpression(), !370)
    #dbg_value(ptr %in_pos, !216, !DIExpression(), !370)
    #dbg_value(i64 %in_size, !217, !DIExpression(), !370)
    #dbg_value(ptr %out, !218, !DIExpression(), !370)
    #dbg_value(ptr %out_pos, !219, !DIExpression(), !370)
    #dbg_value(i64 %out_size, !220, !DIExpression(), !370)
    #dbg_value(i32 %action, !221, !DIExpression(), !370)
    #dbg_value(ptr %pcoder, !222, !DIExpression(), !370)
  %0 = load i64, ptr %out_pos, align 8, !dbg !371
  %cmp180 = icmp ult i64 %0, %out_size, !dbg !372
  br i1 %cmp180, label %while.body.lr.ph, label %cleanup103, !dbg !373

while.body.lr.ph:                                 ; preds = %entry
  %index_encoder78 = getelementptr inbounds i8, ptr %pcoder, i64 360
  %code79 = getelementptr inbounds i8, ptr %pcoder, i64 384
  %backward_size = getelementptr inbounds i8, ptr %stream_flags, i64 8
  %index87 = getelementptr inbounds i8, ptr %pcoder, i64 424
  %check = getelementptr inbounds i8, ptr %stream_flags, i64 16
  %check90 = getelementptr inbounds i8, ptr %pcoder, i64 80
  %buffer91 = getelementptr inbounds i8, ptr %pcoder, i64 448
  %buffer_size98 = getelementptr inbounds i8, ptr %pcoder, i64 440
  %block_encoder = getelementptr inbounds i8, ptr %pcoder, i64 8
  %code = getelementptr inbounds i8, ptr %pcoder, i64 32
  %idxprom = zext i32 %action to i64
  %arrayidx = getelementptr inbounds [4 x i32], ptr @stream_encode.convert, i64 0, i64 %idxprom
  %cmp52 = icmp eq i32 %action, 1
  %block_options56 = getelementptr inbounds i8, ptr %pcoder, i64 72
  %uncompressed_size = getelementptr inbounds i8, ptr %pcoder, i64 96
  %block_encoder_is_initialized = getelementptr inbounds i8, ptr %pcoder, i64 4
  %compressed_size.i = getelementptr inbounds i8, ptr %pcoder, i64 88
  %header_size = getelementptr inbounds i8, ptr %pcoder, i64 76
  %cmp13.not = icmp eq i32 %action, 3
  %buffer_pos = getelementptr inbounds i8, ptr %pcoder, i64 432
  %.pre = load i32, ptr %pcoder, align 8, !dbg !374
  br label %while.body, !dbg !373

while.body:                                       ; preds = %while.body.lr.ph, %sw.epilog
  %1 = phi i32 [ %.pre, %while.body.lr.ph ], [ %19, %sw.epilog ], !dbg !374
  switch i32 %1, label %cleanup103 [
    i32 0, label %sw.bb
    i32 2, label %sw.bb
    i32 5, label %sw.bb
    i32 1, label %sw.bb10
    i32 3, label %sw.bb46
    i32 4, label %sw.bb76
  ], !dbg !375

sw.bb:                                            ; preds = %while.body, %while.body, %while.body
  %2 = load i64, ptr %buffer_size98, align 8, !dbg !376
  %call = call i64 @lzma_bufcpy(ptr noundef nonnull %buffer91, ptr noundef nonnull %buffer_pos, i64 noundef %2, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %out_size) #4, !dbg !377
  %3 = load i64, ptr %buffer_pos, align 8, !dbg !378
  %4 = load i64, ptr %buffer_size98, align 8, !dbg !380
  %cmp3 = icmp ult i64 %3, %4, !dbg !381
  br i1 %cmp3, label %cleanup103, label %if.end, !dbg !382

if.end:                                           ; preds = %sw.bb
  %5 = load i32, ptr %pcoder, align 8, !dbg !383
  %cmp5 = icmp eq i32 %5, 5, !dbg !385
  br i1 %cmp5, label %cleanup103, label %if.end7, !dbg !386

if.end7:                                          ; preds = %if.end
  store i64 0, ptr %buffer_pos, align 8, !dbg !387
  %inc = add i32 %5, 1, !dbg !388
  store i32 %inc, ptr %pcoder, align 8, !dbg !388
  br label %sw.epilog, !dbg !389

sw.bb10:                                          ; preds = %while.body
  %6 = load i64, ptr %in_pos, align 8, !dbg !390
  %cmp11 = icmp eq i64 %6, %in_size, !dbg !391
  br i1 %cmp11, label %if.then12, label %if.end22, !dbg !392

if.then12:                                        ; preds = %sw.bb10
  br i1 %cmp13.not, label %do.body, label %if.then14, !dbg !393

if.then14:                                        ; preds = %if.then12
  %cmp15 = icmp ne i32 %action, 0, !dbg !394
  %cond = zext i1 %cmp15 to i32, !dbg !396
  br label %cleanup103, !dbg !397

do.body:                                          ; preds = %if.then12
  %7 = load ptr, ptr %index87, align 8, !dbg !398
  %call17 = call i32 @lzma_index_encoder_init(ptr noundef nonnull %index_encoder78, ptr noundef %allocator, ptr noundef %7) #4, !dbg !398
    #dbg_value(i32 %call17, !223, !DIExpression(), !399)
  %cmp18.not = icmp eq i32 %call17, 0, !dbg !400
  br i1 %cmp18.not, label %do.end, label %cleanup103

do.end:                                           ; preds = %do.body
  store i32 4, ptr %pcoder, align 8, !dbg !402
  br label %sw.epilog, !dbg !403

if.end22:                                         ; preds = %sw.bb10
  %8 = load i8, ptr %block_encoder_is_initialized, align 4, !dbg !404, !range !405, !noundef !406
  %loadedv = trunc nuw i8 %8 to i1, !dbg !404
  br i1 %loadedv, label %if.end35, label %do.body24, !dbg !407

do.body24:                                        ; preds = %if.end22
    #dbg_value(ptr %pcoder, !408, !DIExpression(), !417)
    #dbg_value(ptr %allocator, !413, !DIExpression(), !417)
    #dbg_value(ptr %pcoder, !414, !DIExpression(), !417)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %compressed_size.i, i8 -1, i64 16, i1 false), !dbg !419
  %call.i = call i32 @lzma_block_header_size(ptr noundef nonnull %block_options56) #4, !dbg !420
    #dbg_value(i32 %call.i, !415, !DIExpression(), !421)
  %cmp.not.i = icmp eq i32 %call.i, 0, !dbg !422
  br i1 %cmp.not.i, label %block_encoder_init.exit, label %cleanup103

block_encoder_init.exit:                          ; preds = %do.body24
  %call4.i = call i32 @lzma_block_encoder_init(ptr noundef nonnull %block_encoder, ptr noundef %allocator, ptr noundef nonnull %block_options56) #4, !dbg !424
    #dbg_value(i32 %call4.i, !230, !DIExpression(), !425)
  %cmp27.not = icmp eq i32 %call4.i, 0, !dbg !426
  br i1 %cmp27.not, label %if.end35, label %cleanup103

if.end35:                                         ; preds = %block_encoder_init.exit, %if.end22
  store i8 0, ptr %block_encoder_is_initialized, align 4, !dbg !428
  %call39 = call i32 @lzma_block_header_encode(ptr noundef nonnull %block_options56, ptr noundef nonnull %buffer91) #4, !dbg !429
  %cmp40.not = icmp eq i32 %call39, 0, !dbg !431
  br i1 %cmp40.not, label %if.end42, label %cleanup103, !dbg !432

if.end42:                                         ; preds = %if.end35
  %9 = load i32, ptr %header_size, align 4, !dbg !433
  %conv = zext i32 %9 to i64, !dbg !434
  store i64 %conv, ptr %buffer_size98, align 8, !dbg !435
  store i32 2, ptr %pcoder, align 8, !dbg !436
  br label %sw.epilog, !dbg !437

sw.bb46:                                          ; preds = %while.body
  %10 = load ptr, ptr %code, align 8, !dbg !438
  %11 = load ptr, ptr %block_encoder, align 8, !dbg !439
  %12 = load i32, ptr %arrayidx, align 4, !dbg !440
  %call49 = call i32 %10(ptr noundef %11, ptr noundef %allocator, ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %out_size, i32 noundef %12) #4, !dbg !441
    #dbg_value(i32 %call49, !233, !DIExpression(), !442)
  %cmp50 = icmp ne i32 %call49, 1, !dbg !443
  %or.cond = or i1 %cmp52, %cmp50, !dbg !445
  br i1 %or.cond, label %cleanup103, label %if.end55, !dbg !445

if.end55:                                         ; preds = %sw.bb46
  %call57 = call i64 @lzma_block_unpadded_size(ptr noundef nonnull %block_options56) #4, !dbg !446
    #dbg_value(i64 %call57, !235, !DIExpression(), !442)
  %13 = load ptr, ptr %index87, align 8, !dbg !447
  %14 = load i64, ptr %uncompressed_size, align 8, !dbg !447
  %call62 = call i32 @lzma_index_append(ptr noundef %13, ptr noundef %allocator, i64 noundef %call57, i64 noundef %14) #4, !dbg !447
    #dbg_value(i32 %call62, !237, !DIExpression(), !448)
  %cmp63.not = icmp eq i32 %call62, 0, !dbg !449
  br i1 %cmp63.not, label %cleanup74, label %cleanup103

cleanup74:                                        ; preds = %if.end55
  store i32 1, ptr %pcoder, align 8, !dbg !451
  br label %sw.epilog

sw.bb76:                                          ; preds = %while.body
  %15 = load ptr, ptr %code79, align 8, !dbg !452
  %16 = load ptr, ptr %index_encoder78, align 8, !dbg !453
  %call82 = call i32 %15(ptr noundef %16, ptr noundef %allocator, ptr noundef null, ptr noundef null, i64 noundef 0, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %out_size, i32 noundef 0) #4, !dbg !454
    #dbg_value(i32 %call82, !239, !DIExpression(), !369)
  %cmp83.not = icmp eq i32 %call82, 1, !dbg !455
  br i1 %cmp83.not, label %if.end86, label %cleanup103, !dbg !457

if.end86:                                         ; preds = %sw.bb76
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %stream_flags) #4, !dbg !458
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %stream_flags, i8 0, i64 56, i1 false), !dbg !459, !DIAssignID !460
    #dbg_assign(i8 0, !241, !DIExpression(), !460, ptr %stream_flags, !DIExpression(), !369)
  %17 = load ptr, ptr %index87, align 8, !dbg !461
  %call88 = call i64 @lzma_index_size(ptr noundef %17) #4, !dbg !462
  store i64 %call88, ptr %backward_size, align 8, !dbg !463, !DIAssignID !464
    #dbg_assign(i64 %call88, !241, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !464, ptr %backward_size, !DIExpression(), !369)
  %18 = load i32, ptr %check90, align 8, !dbg !465
  store i32 %18, ptr %check, align 8, !dbg !463, !DIAssignID !466
    #dbg_assign(i32 %18, !241, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !466, ptr %check, !DIExpression(), !369)
  %call93 = call i32 @lzma_stream_footer_encode(ptr noundef nonnull %stream_flags, ptr noundef nonnull %buffer91) #4, !dbg !467
  %cmp94.not = icmp eq i32 %call93, 0, !dbg !469
  br i1 %cmp94.not, label %cleanup101.thread176, label %cleanup101, !dbg !470

cleanup101.thread176:                             ; preds = %if.end86
  store i64 12, ptr %buffer_size98, align 8, !dbg !471
  store i32 5, ptr %pcoder, align 8, !dbg !472
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %stream_flags) #4, !dbg !473
  br label %sw.epilog

cleanup101:                                       ; preds = %if.end86
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %stream_flags) #4, !dbg !473
  br label %cleanup103

sw.epilog:                                        ; preds = %cleanup101.thread176, %cleanup74, %if.end42, %do.end, %if.end7
  %19 = phi i32 [ 5, %cleanup101.thread176 ], [ 1, %cleanup74 ], [ 2, %if.end42 ], [ 4, %do.end ], [ %inc, %if.end7 ]
  %20 = load i64, ptr %out_pos, align 8, !dbg !371
  %cmp = icmp ult i64 %20, %out_size, !dbg !372
  br i1 %cmp, label %while.body, label %cleanup103, !dbg !373, !llvm.loop !474

cleanup103:                                       ; preds = %block_encoder_init.exit, %do.body, %sw.bb, %if.end, %if.end35, %while.body, %sw.epilog, %do.body24, %sw.bb46, %if.end55, %sw.bb76, %entry, %cleanup101, %if.then14
  %retval.9 = phi i32 [ 11, %cleanup101 ], [ %cond, %if.then14 ], [ 0, %entry ], [ %call4.i, %block_encoder_init.exit ], [ %call17, %do.body ], [ 0, %sw.bb ], [ 1, %if.end ], [ 11, %if.end35 ], [ 11, %while.body ], [ 0, %sw.epilog ], [ %call.i, %do.body24 ], [ %call49, %sw.bb46 ], [ %call62, %if.end55 ], [ %call82, %sw.bb76 ], !dbg !370
  ret i32 %retval.9, !dbg !476
}

; Function Attrs: nounwind uwtable
define internal void @stream_encoder_end(ptr noundef %pcoder, ptr noundef %allocator) #0 !dbg !477 {
entry:
    #dbg_value(ptr %pcoder, !479, !DIExpression(), !484)
    #dbg_value(ptr %allocator, !480, !DIExpression(), !484)
    #dbg_value(ptr %pcoder, !481, !DIExpression(), !484)
  %block_encoder = getelementptr inbounds i8, ptr %pcoder, i64 8, !dbg !485
  tail call void @lzma_next_end(ptr noundef nonnull %block_encoder, ptr noundef %allocator) #4, !dbg !486
  %index_encoder = getelementptr inbounds i8, ptr %pcoder, i64 360, !dbg !487
  tail call void @lzma_next_end(ptr noundef nonnull %index_encoder, ptr noundef %allocator) #4, !dbg !488
  %index = getelementptr inbounds i8, ptr %pcoder, i64 424, !dbg !489
  %0 = load ptr, ptr %index, align 8, !dbg !489
  tail call void @lzma_index_end(ptr noundef %0, ptr noundef %allocator) #4, !dbg !490
    #dbg_value(i64 0, !482, !DIExpression(), !491)
  %filters = getelementptr inbounds i8, ptr %pcoder, i64 280
    #dbg_value(i64 0, !482, !DIExpression(), !491)
  %1 = load i64, ptr %filters, align 8, !dbg !492
  %cmp.not14 = icmp eq i64 %1, -1, !dbg !494
  br i1 %cmp.not14, label %for.cond.cleanup, label %for.body, !dbg !495

for.cond.cleanup:                                 ; preds = %for.body, %entry
  tail call void @lzma_free(ptr noundef nonnull %pcoder, ptr noundef %allocator) #4, !dbg !496
  ret void, !dbg !497

for.body:                                         ; preds = %entry, %for.body
  %arrayidx16 = phi ptr [ %arrayidx, %for.body ], [ %filters, %entry ]
  %i.015 = phi i64 [ %inc, %for.body ], [ 0, %entry ]
    #dbg_value(i64 %i.015, !482, !DIExpression(), !491)
  %options = getelementptr inbounds i8, ptr %arrayidx16, i64 8, !dbg !498
  %2 = load ptr, ptr %options, align 8, !dbg !498
  tail call void @lzma_free(ptr noundef %2, ptr noundef %allocator) #4, !dbg !499
  %inc = add i64 %i.015, 1, !dbg !500
    #dbg_value(i64 %inc, !482, !DIExpression(), !491)
  %arrayidx = getelementptr inbounds [5 x %struct.lzma_filter], ptr %filters, i64 0, i64 %inc, !dbg !501
  %3 = load i64, ptr %arrayidx, align 8, !dbg !492
  %cmp.not = icmp eq i64 %3, -1, !dbg !494
  br i1 %cmp.not, label %for.cond.cleanup, label %for.body, !dbg !495, !llvm.loop !502
}

; Function Attrs: nounwind uwtable
define internal i32 @stream_encoder_update(ptr noundef %pcoder, ptr noundef %allocator, ptr noundef %filters, ptr noundef %reversed_filters) #0 !dbg !504 {
entry:
    #dbg_value(ptr %pcoder, !506, !DIExpression(), !520)
    #dbg_value(ptr %allocator, !507, !DIExpression(), !520)
    #dbg_value(ptr %filters, !508, !DIExpression(), !520)
    #dbg_value(ptr %reversed_filters, !509, !DIExpression(), !520)
    #dbg_value(ptr %pcoder, !510, !DIExpression(), !520)
  %0 = load i32, ptr %pcoder, align 8, !dbg !521
  %cmp = icmp ult i32 %0, 2, !dbg !522
  br i1 %cmp, label %if.then, label %if.else, !dbg !523

if.then:                                          ; preds = %entry
  %block_encoder_is_initialized = getelementptr inbounds i8, ptr %pcoder, i64 4, !dbg !524
  store i8 0, ptr %block_encoder_is_initialized, align 4, !dbg !525
  %filters1 = getelementptr inbounds i8, ptr %pcoder, i64 104, !dbg !526
  store ptr %filters, ptr %filters1, align 8, !dbg !527
    #dbg_value(ptr %pcoder, !408, !DIExpression(), !528)
    #dbg_value(ptr %allocator, !413, !DIExpression(), !528)
    #dbg_value(ptr %pcoder, !414, !DIExpression(), !528)
  %block_options.i = getelementptr inbounds i8, ptr %pcoder, i64 72, !dbg !530
  %compressed_size.i = getelementptr inbounds i8, ptr %pcoder, i64 88, !dbg !531
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %compressed_size.i, i8 -1, i64 16, i1 false), !dbg !532
  %call.i = tail call i32 @lzma_block_header_size(ptr noundef nonnull %block_options.i) #4, !dbg !533
    #dbg_value(i32 %call.i, !415, !DIExpression(), !534)
  %cmp.not.i = icmp eq i32 %call.i, 0, !dbg !535
  br i1 %cmp.not.i, label %block_encoder_init.exit, label %block_encoder_init.exit.thread

block_encoder_init.exit.thread:                   ; preds = %if.then
    #dbg_value(i32 %call.i, !511, !DIExpression(), !536)
  %filters256 = getelementptr inbounds i8, ptr %pcoder, i64 280, !dbg !537
  store ptr %filters256, ptr %filters1, align 8, !dbg !538
  br label %cleanup31, !dbg !539

block_encoder_init.exit:                          ; preds = %if.then
  %block_encoder.i = getelementptr inbounds i8, ptr %pcoder, i64 8, !dbg !540
  %call4.i = tail call i32 @lzma_block_encoder_init(ptr noundef nonnull %block_encoder.i, ptr noundef %allocator, ptr noundef nonnull %block_options.i) #4, !dbg !541
    #dbg_value(i32 %call4.i, !511, !DIExpression(), !536)
  %filters2 = getelementptr inbounds i8, ptr %pcoder, i64 280, !dbg !537
  store ptr %filters2, ptr %filters1, align 8, !dbg !538
  %cmp5.not = icmp eq i32 %call4.i, 0, !dbg !542
  br i1 %cmp5.not, label %if.end, label %cleanup31, !dbg !539

if.end:                                           ; preds = %block_encoder_init.exit
  store i8 1, ptr %block_encoder_is_initialized, align 4, !dbg !544
  br label %if.end22

if.else:                                          ; preds = %entry
  %cmp9 = icmp ult i32 %0, 4, !dbg !545
  br i1 %cmp9, label %do.body, label %cleanup31, !dbg !546

do.body:                                          ; preds = %if.else
  %block_encoder = getelementptr inbounds i8, ptr %pcoder, i64 8, !dbg !547
  %update = getelementptr inbounds i8, ptr %pcoder, i64 64, !dbg !547
  %1 = load ptr, ptr %update, align 8, !dbg !547
  %2 = load ptr, ptr %block_encoder, align 8, !dbg !547
  %call13 = tail call i32 %1(ptr noundef %2, ptr noundef %allocator, ptr noundef %filters, ptr noundef %reversed_filters) #4, !dbg !547
    #dbg_value(i32 %call13, !514, !DIExpression(), !548)
  %cmp14.not = icmp eq i32 %call13, 0, !dbg !549
  br i1 %cmp14.not, label %if.end22, label %cleanup31

if.end22:                                         ; preds = %if.end, %do.body
    #dbg_value(i64 0, !518, !DIExpression(), !551)
  %filters23 = getelementptr inbounds i8, ptr %pcoder, i64 280
    #dbg_value(i64 0, !518, !DIExpression(), !551)
  %3 = load i64, ptr %filters23, align 8, !dbg !552
  %cmp24.not58 = icmp eq i64 %3, -1, !dbg !554
  br i1 %cmp24.not58, label %for.cond.cleanup, label %for.body, !dbg !555

for.cond.cleanup:                                 ; preds = %for.body, %if.end22
  %call30 = tail call i32 @lzma_filters_copy(ptr noundef %filters, ptr noundef nonnull %filters23, ptr noundef %allocator) #4, !dbg !556
  br label %cleanup31, !dbg !557

for.body:                                         ; preds = %if.end22, %for.body
  %arrayidx60 = phi ptr [ %arrayidx, %for.body ], [ %filters23, %if.end22 ]
  %i.059 = phi i64 [ %inc, %for.body ], [ 0, %if.end22 ]
    #dbg_value(i64 %i.059, !518, !DIExpression(), !551)
  %options = getelementptr inbounds i8, ptr %arrayidx60, i64 8, !dbg !558
  %4 = load ptr, ptr %options, align 8, !dbg !558
  tail call void @lzma_free(ptr noundef %4, ptr noundef %allocator) #4, !dbg !559
  %inc = add i64 %i.059, 1, !dbg !560
    #dbg_value(i64 %inc, !518, !DIExpression(), !551)
  %arrayidx = getelementptr inbounds [5 x %struct.lzma_filter], ptr %filters23, i64 0, i64 %inc, !dbg !561
  %5 = load i64, ptr %arrayidx, align 8, !dbg !552
  %cmp24.not = icmp eq i64 %5, -1, !dbg !554
  br i1 %cmp24.not, label %for.cond.cleanup, label %for.body, !dbg !555, !llvm.loop !562

cleanup31:                                        ; preds = %block_encoder_init.exit.thread, %block_encoder_init.exit, %if.else, %do.body, %for.cond.cleanup
  %retval.2 = phi i32 [ %call30, %for.cond.cleanup ], [ %call13, %do.body ], [ 11, %if.else ], [ %call4.i, %block_encoder_init.exit ], [ %call.i, %block_encoder_init.exit.thread ], !dbg !520
  ret i32 %retval.2, !dbg !564
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare !dbg !565 void @lzma_index_end(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !568 ptr @lzma_index_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare !dbg !571 i32 @lzma_stream_header_encode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_stream_encoder(ptr noundef %strm, ptr noundef %filters, i32 noundef %check) local_unnamed_addr #0 !dbg !575 {
entry:
    #dbg_value(ptr %strm, !603, !DIExpression(), !610)
    #dbg_value(ptr %filters, !604, !DIExpression(), !610)
    #dbg_value(i32 %check, !605, !DIExpression(), !610)
  %call = tail call i32 @lzma_strm_init(ptr noundef %strm) #4, !dbg !611
    #dbg_value(i32 %call, !606, !DIExpression(), !612)
  %cmp.not.not = icmp eq i32 %call, 0, !dbg !613
  br i1 %cmp.not.not, label %do.end, label %return

do.end:                                           ; preds = %entry
  %internal = getelementptr inbounds i8, ptr %strm, i64 56, !dbg !615
  %0 = load ptr, ptr %internal, align 8, !dbg !615
  %allocator = getelementptr inbounds i8, ptr %strm, i64 48, !dbg !615
  %1 = load ptr, ptr %allocator, align 8, !dbg !615
  %call3 = tail call i32 @lzma_stream_encoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %filters, i32 noundef %check), !dbg !615
    #dbg_value(i32 %call3, !609, !DIExpression(), !616)
  %cmp4.not.not = icmp eq i32 %call3, 0, !dbg !617
  br i1 %cmp4.not.not, label %do.end10, label %cleanup7, !dbg !615

cleanup7:                                         ; preds = %do.end
  tail call void @lzma_end(ptr noundef nonnull %strm) #4, !dbg !619
  br label %return

do.end10:                                         ; preds = %do.end
  %2 = load ptr, ptr %internal, align 8, !dbg !621
  %supported_actions = getelementptr inbounds i8, ptr %2, i64 80, !dbg !622
  store i8 1, ptr %supported_actions, align 8, !dbg !623
  %3 = load ptr, ptr %internal, align 8, !dbg !624
  %arrayidx14 = getelementptr inbounds i8, ptr %3, i64 81, !dbg !625
  store i8 1, ptr %arrayidx14, align 1, !dbg !626
  %4 = load ptr, ptr %internal, align 8, !dbg !627
  %arrayidx17 = getelementptr inbounds i8, ptr %4, i64 82, !dbg !628
  store i8 1, ptr %arrayidx17, align 2, !dbg !629
  %5 = load ptr, ptr %internal, align 8, !dbg !630
  %arrayidx20 = getelementptr inbounds i8, ptr %5, i64 83, !dbg !631
  store i8 1, ptr %arrayidx20, align 1, !dbg !632
  br label %return, !dbg !633

return:                                           ; preds = %cleanup7, %entry, %do.end10
  %retval.2 = phi i32 [ %call, %entry ], [ %call3, %cleanup7 ], [ 0, %do.end10 ], !dbg !610
  ret i32 %retval.2, !dbg !634
}

declare !dbg !635 i32 @lzma_strm_init(ptr noundef) local_unnamed_addr #1

declare !dbg !638 void @lzma_end(ptr noundef) local_unnamed_addr #1

declare !dbg !641 i64 @lzma_bufcpy(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !644 i32 @lzma_index_encoder_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !650 i32 @lzma_block_header_encode(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !655 i64 @lzma_block_unpadded_size(ptr noundef) local_unnamed_addr #1

declare !dbg !658 i32 @lzma_index_append(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !661 i64 @lzma_index_size(ptr noundef) local_unnamed_addr #1

declare !dbg !664 i32 @lzma_stream_footer_encode(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !665 i32 @lzma_block_header_size(ptr noundef) local_unnamed_addr #1

declare !dbg !669 i32 @lzma_block_encoder_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !673 void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !676 i32 @lzma_filters_copy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!62}
!llvm.module.flags = !{!266, !267, !268, !269, !270, !271, !272}
!llvm.ident = !{!273}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "convert", scope: !2, file: !3, line: 152, type: !264, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "stream_encode", scope: !3, file: !3, line: 83, type: !4, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !212)
!3 = !DIFile(filename: "liblzma/common/stream_encoder.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "287ced045cc767023270c37a9a55e979")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !23, !26, !43, !51, !35, !53, !51, !35, !55}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !7, line: 237, baseType: !8)
!7 = !DIFile(filename: "liblzma/api/lzma/base.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "81a3070447cc5b61b56cfbed076853db")
!8 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !7, line: 57, baseType: !9, size: 32, elements: !10)
!9 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!10 = !{!11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22}
!11 = !DIEnumerator(name: "LZMA_OK", value: 0)
!12 = !DIEnumerator(name: "LZMA_STREAM_END", value: 1)
!13 = !DIEnumerator(name: "LZMA_NO_CHECK", value: 2)
!14 = !DIEnumerator(name: "LZMA_UNSUPPORTED_CHECK", value: 3)
!15 = !DIEnumerator(name: "LZMA_GET_CHECK", value: 4)
!16 = !DIEnumerator(name: "LZMA_MEM_ERROR", value: 5)
!17 = !DIEnumerator(name: "LZMA_MEMLIMIT_ERROR", value: 6)
!18 = !DIEnumerator(name: "LZMA_FORMAT_ERROR", value: 7)
!19 = !DIEnumerator(name: "LZMA_OPTIONS_ERROR", value: 8)
!20 = !DIEnumerator(name: "LZMA_DATA_ERROR", value: 9)
!21 = !DIEnumerator(name: "LZMA_BUF_ERROR", value: 10)
!22 = !DIEnumerator(name: "LZMA_PROG_ERROR", value: 11)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_coder", file: !25, line: 78, baseType: null)
!25 = !DIFile(filename: "liblzma/common/common.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !7, line: 403, baseType: !28)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 341, size: 192, elements: !29)
!29 = !{!30, !38, !42}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !28, file: !7, line: 376, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DISubroutineType(types: !33)
!33 = !{!34, !34, !35, !35}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !36, line: 18, baseType: !37)
!36 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!37 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !28, file: !7, line: 390, baseType: !39, size: 64, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !34, !34}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !28, file: !7, line: 401, baseType: !34, size: 64, offset: 128)
!43 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !47, line: 24, baseType: !48)
!47 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !49, line: 38, baseType: !50)
!49 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!50 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!51 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !7, line: 322, baseType: !56)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !7, line: 250, baseType: !9, size: 32, elements: !57)
!57 = !{!58, !59, !60, !61}
!58 = !DIEnumerator(name: "LZMA_RUN", value: 0)
!59 = !DIEnumerator(name: "LZMA_SYNC_FLUSH", value: 1)
!60 = !DIEnumerator(name: "LZMA_FULL_FLUSH", value: 2)
!61 = !DIEnumerator(name: "LZMA_FINISH", value: 3)
!62 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !63, retainedTypes: !209, globals: !211, splitDebugInlining: false, nameTableKind: None)
!63 = !{!8, !56, !64, !71, !153, !191}
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !65, line: 27, baseType: !9, size: 32, elements: !66)
!65 = !DIFile(filename: "liblzma/api/lzma/check.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "b07c3297e2bcc14bb477793d08325ee3")
!66 = !{!67, !68, !69, !70}
!67 = !DIEnumerator(name: "LZMA_CHECK_NONE", value: 0)
!68 = !DIEnumerator(name: "LZMA_CHECK_CRC32", value: 1)
!69 = !DIEnumerator(name: "LZMA_CHECK_CRC64", value: 4)
!70 = !DIEnumerator(name: "LZMA_CHECK_SHA256", value: 10)
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !72, file: !3, line: 19, baseType: !9, size: 32, elements: !184)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_coder_s", file: !3, line: 18, size: 11776, elements: !73)
!73 = !{!74, !75, !77, !122, !168, !172, !173, !178, !179, !180}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !72, file: !3, line: 26, baseType: !71, size: 32)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "block_encoder_is_initialized", scope: !72, file: !3, line: 31, baseType: !76, size: 8, offset: 32)
!76 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "block_encoder", scope: !72, file: !3, line: 34, baseType: !78, size: 512, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_next_coder", file: !25, line: 80, baseType: !79)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_next_coder_s", file: !25, line: 124, size: 512, elements: !80)
!80 = !{!81, !82, !87, !90, !93, !98, !105, !110}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !79, file: !25, line: 126, baseType: !23, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !79, file: !25, line: 130, baseType: !83, size: 64, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !84, line: 63, baseType: !85)
!84 = !DIFile(filename: "liblzma/api/lzma/vli.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !47, line: 27, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !49, line: 45, baseType: !37)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !79, file: !25, line: 136, baseType: !88, size: 64, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !89, line: 90, baseType: !37)
!89 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!90 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !79, file: !25, line: 139, baseType: !91, size: 64, offset: 192)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_code_function", file: !25, line: 94, baseType: !92)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !79, file: !25, line: 144, baseType: !94, size: 64, offset: 256)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_end_function", file: !25, line: 102, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DISubroutineType(types: !97)
!97 = !{null, !23, !26}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "get_check", scope: !79, file: !25, line: 148, baseType: !99, size: 64, offset: 320)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DISubroutineType(types: !101)
!101 = !{!102, !103}
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !65, line: 55, baseType: !64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "memconfig", scope: !79, file: !25, line: 152, baseType: !106, size: 64, offset: 384)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DISubroutineType(types: !108)
!108 = !{!6, !23, !109, !109, !85}
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !79, file: !25, line: 157, baseType: !111, size: 64, offset: 448)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{!6, !23, !26, !114, !114}
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !117, line: 65, baseType: !118)
!117 = !DIFile(filename: "liblzma/api/lzma/filter.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !117, line: 43, size: 128, elements: !119)
!119 = !{!120, !121}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !118, file: !117, line: 54, baseType: !83, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !118, file: !117, line: 63, baseType: !34, size: 64, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "block_options", scope: !72, file: !3, line: 37, baseType: !123, size: 1664, offset: 576)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_block", file: !124, line: 245, baseType: !125)
!124 = !DIFile(filename: "liblzma/api/lzma/block.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "bf8cbafce550217b909c63081e414910")
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !124, line: 30, size: 1664, elements: !126)
!126 = !{!127, !130, !131, !132, !133, !134, !136, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !156, !157, !158, !159, !161, !162, !163, !164, !165, !166, !167}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !125, file: !124, line: 47, baseType: !128, size: 32)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !47, line: 26, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !49, line: 42, baseType: !9)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !125, file: !124, line: 67, baseType: !128, size: 32, offset: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !125, file: !124, line: 88, baseType: !102, size: 32, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_size", scope: !125, file: !124, line: 143, baseType: !83, size: 64, offset: 128)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_size", scope: !125, file: !124, line: 167, baseType: !83, size: 64, offset: 192)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "filters", scope: !125, file: !124, line: 195, baseType: !135, size: 64, offset: 256)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "raw_check", scope: !125, file: !124, line: 212, baseType: !137, size: 512, offset: 320)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 512, elements: !138)
!138 = !{!139}
!139 = !DISubrange(count: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !125, file: !124, line: 221, baseType: !34, size: 64, offset: 832)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !125, file: !124, line: 222, baseType: !34, size: 64, offset: 896)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !125, file: !124, line: 223, baseType: !34, size: 64, offset: 960)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !125, file: !124, line: 224, baseType: !128, size: 32, offset: 1024)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !125, file: !124, line: 225, baseType: !128, size: 32, offset: 1056)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !125, file: !124, line: 226, baseType: !83, size: 64, offset: 1088)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !125, file: !124, line: 227, baseType: !83, size: 64, offset: 1152)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int5", scope: !125, file: !124, line: 228, baseType: !83, size: 64, offset: 1216)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int6", scope: !125, file: !124, line: 229, baseType: !83, size: 64, offset: 1280)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int7", scope: !125, file: !124, line: 230, baseType: !83, size: 64, offset: 1344)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int8", scope: !125, file: !124, line: 231, baseType: !83, size: 64, offset: 1408)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !125, file: !124, line: 232, baseType: !152, size: 32, offset: 1472)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !7, line: 46, baseType: !153)
!153 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !7, line: 44, baseType: !9, size: 32, elements: !154)
!154 = !{!155}
!155 = !DIEnumerator(name: "LZMA_RESERVED_ENUM", value: 0)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !125, file: !124, line: 233, baseType: !152, size: 32, offset: 1504)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !125, file: !124, line: 234, baseType: !152, size: 32, offset: 1536)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !125, file: !124, line: 235, baseType: !152, size: 32, offset: 1568)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool1", scope: !125, file: !124, line: 236, baseType: !160, size: 8, offset: 1600)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_bool", file: !7, line: 29, baseType: !50)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool2", scope: !125, file: !124, line: 237, baseType: !160, size: 8, offset: 1608)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool3", scope: !125, file: !124, line: 238, baseType: !160, size: 8, offset: 1616)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool4", scope: !125, file: !124, line: 239, baseType: !160, size: 8, offset: 1624)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool5", scope: !125, file: !124, line: 240, baseType: !160, size: 8, offset: 1632)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool6", scope: !125, file: !124, line: 241, baseType: !160, size: 8, offset: 1640)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool7", scope: !125, file: !124, line: 242, baseType: !160, size: 8, offset: 1648)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool8", scope: !125, file: !124, line: 243, baseType: !160, size: 8, offset: 1656)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "filters", scope: !72, file: !3, line: 40, baseType: !169, size: 640, offset: 2240)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 640, elements: !170)
!170 = !{!171}
!171 = !DISubrange(count: 5)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "index_encoder", scope: !72, file: !3, line: 45, baseType: !78, size: 512, offset: 2880)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !72, file: !3, line: 48, baseType: !174, size: 64, offset: 3392)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_index", file: !176, line: 37, baseType: !177)
!176 = !DIFile(filename: "liblzma/api/lzma/index.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "923fbd07d3b348bf7a676d089b5c066f")
!177 = !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_index_s", file: !176, line: 37, flags: DIFlagFwdDecl)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_pos", scope: !72, file: !3, line: 51, baseType: !35, size: 64, offset: 3456)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_size", scope: !72, file: !3, line: 54, baseType: !35, size: 64, offset: 3520)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !72, file: !3, line: 58, baseType: !181, size: 8192, offset: 3584)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 8192, elements: !182)
!182 = !{!183}
!183 = !DISubrange(count: 1024)
!184 = !{!185, !186, !187, !188, !189, !190}
!185 = !DIEnumerator(name: "SEQ_STREAM_HEADER", value: 0)
!186 = !DIEnumerator(name: "SEQ_BLOCK_INIT", value: 1)
!187 = !DIEnumerator(name: "SEQ_BLOCK_HEADER", value: 2)
!188 = !DIEnumerator(name: "SEQ_BLOCK_ENCODE", value: 3)
!189 = !DIEnumerator(name: "SEQ_INDEX_ENCODE", value: 4)
!190 = !DIEnumerator(name: "SEQ_STREAM_FOOTER", value: 5)
!191 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !192, file: !25, line: 187, baseType: !9, size: 32, elements: !202)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_internal_s", file: !25, line: 179, size: 704, elements: !193)
!193 = !{!194, !195, !196, !197, !201}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !192, file: !25, line: 181, baseType: !78, size: 512)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !192, file: !25, line: 194, baseType: !191, size: 32, offset: 512)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !192, file: !25, line: 199, baseType: !35, size: 64, offset: 576)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "supported_actions", scope: !192, file: !25, line: 202, baseType: !198, size: 32, offset: 640)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 32, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 4)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "allow_buf_error", scope: !192, file: !25, line: 206, baseType: !76, size: 8, offset: 672)
!202 = !{!203, !204, !205, !206, !207, !208}
!203 = !DIEnumerator(name: "ISEQ_RUN", value: 0)
!204 = !DIEnumerator(name: "ISEQ_SYNC_FLUSH", value: 1)
!205 = !DIEnumerator(name: "ISEQ_FULL_FLUSH", value: 2)
!206 = !DIEnumerator(name: "ISEQ_FINISH", value: 3)
!207 = !DIEnumerator(name: "ISEQ_END", value: 4)
!208 = !DIEnumerator(name: "ISEQ_ERROR", value: 5)
!209 = !{!88, !34, !210, !135}
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!211 = !{!0}
!212 = !{!213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !230, !233, !235, !237, !239, !241}
!213 = !DILocalVariable(name: "pcoder", arg: 1, scope: !2, file: !3, line: 83, type: !23)
!214 = !DILocalVariable(name: "allocator", arg: 2, scope: !2, file: !3, line: 83, type: !26)
!215 = !DILocalVariable(name: "in", arg: 3, scope: !2, file: !3, line: 84, type: !43)
!216 = !DILocalVariable(name: "in_pos", arg: 4, scope: !2, file: !3, line: 84, type: !51)
!217 = !DILocalVariable(name: "in_size", arg: 5, scope: !2, file: !3, line: 85, type: !35)
!218 = !DILocalVariable(name: "out", arg: 6, scope: !2, file: !3, line: 85, type: !53)
!219 = !DILocalVariable(name: "out_pos", arg: 7, scope: !2, file: !3, line: 86, type: !51)
!220 = !DILocalVariable(name: "out_size", arg: 8, scope: !2, file: !3, line: 86, type: !35)
!221 = !DILocalVariable(name: "action", arg: 9, scope: !2, file: !3, line: 86, type: !55)
!222 = !DILocalVariable(name: "coder", scope: !2, file: !3, line: 88, type: !210)
!223 = !DILocalVariable(name: "ret_", scope: !224, file: !3, line: 123, type: !229)
!224 = distinct !DILexicalBlock(scope: !225, file: !3, line: 123, column: 4)
!225 = distinct !DILexicalBlock(scope: !226, file: !3, line: 108, column: 27)
!226 = distinct !DILexicalBlock(scope: !227, file: !3, line: 108, column: 7)
!227 = distinct !DILexicalBlock(scope: !228, file: !3, line: 107, column: 23)
!228 = distinct !DILexicalBlock(scope: !2, file: !3, line: 91, column: 27)
!229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!230 = !DILocalVariable(name: "ret_", scope: !231, file: !3, line: 134, type: !229)
!231 = distinct !DILexicalBlock(scope: !232, file: !3, line: 134, column: 4)
!232 = distinct !DILexicalBlock(scope: !227, file: !3, line: 133, column: 7)
!233 = !DILocalVariable(name: "ret", scope: !234, file: !3, line: 159, type: !229)
!234 = distinct !DILexicalBlock(scope: !228, file: !3, line: 151, column: 25)
!235 = !DILocalVariable(name: "unpadded_size", scope: !234, file: !3, line: 167, type: !236)
!236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!237 = !DILocalVariable(name: "ret_", scope: !238, file: !3, line: 170, type: !229)
!238 = distinct !DILexicalBlock(scope: !234, file: !3, line: 170, column: 3)
!239 = !DILocalVariable(name: "ret", scope: !240, file: !3, line: 181, type: !229)
!240 = distinct !DILexicalBlock(scope: !228, file: !3, line: 178, column: 25)
!241 = !DILocalVariable(name: "stream_flags", scope: !240, file: !3, line: 189, type: !242)
!242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !243)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_stream_flags", file: !244, line: 105, baseType: !245)
!244 = !DIFile(filename: "liblzma/api/lzma/stream_flags.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "d3814c86a389337e759db33a259f1072")
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !244, line: 33, size: 448, elements: !246)
!246 = !{!247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !245, file: !244, line: 51, baseType: !128, size: 32)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "backward_size", scope: !245, file: !244, line: 69, baseType: !83, size: 64, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !245, file: !244, line: 79, baseType: !102, size: 32, offset: 128)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !245, file: !244, line: 90, baseType: !152, size: 32, offset: 160)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !245, file: !244, line: 91, baseType: !152, size: 32, offset: 192)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !245, file: !244, line: 92, baseType: !152, size: 32, offset: 224)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !245, file: !244, line: 93, baseType: !152, size: 32, offset: 256)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool1", scope: !245, file: !244, line: 94, baseType: !160, size: 8, offset: 288)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool2", scope: !245, file: !244, line: 95, baseType: !160, size: 8, offset: 296)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool3", scope: !245, file: !244, line: 96, baseType: !160, size: 8, offset: 304)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool4", scope: !245, file: !244, line: 97, baseType: !160, size: 8, offset: 312)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool5", scope: !245, file: !244, line: 98, baseType: !160, size: 8, offset: 320)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool6", scope: !245, file: !244, line: 99, baseType: !160, size: 8, offset: 328)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool7", scope: !245, file: !244, line: 100, baseType: !160, size: 8, offset: 336)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool8", scope: !245, file: !244, line: 101, baseType: !160, size: 8, offset: 344)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !245, file: !244, line: 102, baseType: !128, size: 32, offset: 352)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !245, file: !244, line: 103, baseType: !128, size: 32, offset: 384)
!264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 128, elements: !199)
!265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!266 = !{i32 7, !"Dwarf Version", i32 5}
!267 = !{i32 2, !"Debug Info Version", i32 3}
!268 = !{i32 1, !"wchar_size", i32 4}
!269 = !{i32 8, !"PIC Level", i32 2}
!270 = !{i32 7, !"PIE Level", i32 2}
!271 = !{i32 7, !"uwtable", i32 2}
!272 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!273 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!274 = distinct !DISubprogram(name: "lzma_stream_encoder_init", scope: !3, file: !3, line: 272, type: !275, scopeLine: 274, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !278)
!275 = !DISubroutineType(types: !276)
!276 = !{!6, !277, !26, !114, !102}
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!278 = !{!279, !280, !281, !282, !283, !284}
!279 = !DILocalVariable(name: "next", arg: 1, scope: !274, file: !3, line: 272, type: !277)
!280 = !DILocalVariable(name: "allocator", arg: 2, scope: !274, file: !3, line: 272, type: !26)
!281 = !DILocalVariable(name: "filters", arg: 3, scope: !274, file: !3, line: 273, type: !114)
!282 = !DILocalVariable(name: "check", arg: 4, scope: !274, file: !3, line: 273, type: !102)
!283 = !DILocalVariable(name: "stream_flags", scope: !274, file: !3, line: 307, type: !243)
!284 = !DILocalVariable(name: "ret_", scope: !285, file: !3, line: 311, type: !229)
!285 = distinct !DILexicalBlock(scope: !274, file: !3, line: 311, column: 2)
!286 = distinct !DIAssignID()
!287 = !DILocation(line: 0, scope: !274)
!288 = !DILocation(line: 275, column: 2, scope: !289)
!289 = distinct !DILexicalBlock(scope: !290, file: !3, line: 275, column: 2)
!290 = distinct !DILexicalBlock(scope: !274, file: !3, line: 275, column: 2)
!291 = !DILocation(line: 275, column: 2, scope: !290)
!292 = !DILocation(line: 277, column: 14, scope: !293)
!293 = distinct !DILexicalBlock(scope: !274, file: !3, line: 277, column: 6)
!294 = !DILocation(line: 277, column: 6, scope: !274)
!295 = !DILocation(line: 280, column: 12, scope: !296)
!296 = distinct !DILexicalBlock(scope: !274, file: !3, line: 280, column: 6)
!297 = !DILocation(line: 280, column: 18, scope: !296)
!298 = !DILocation(line: 280, column: 6, scope: !274)
!299 = !DILocation(line: 281, column: 17, scope: !300)
!300 = distinct !DILexicalBlock(scope: !296, file: !3, line: 280, column: 27)
!301 = !DILocation(line: 281, column: 15, scope: !300)
!302 = !DILocation(line: 282, column: 19, scope: !303)
!303 = distinct !DILexicalBlock(scope: !300, file: !3, line: 282, column: 7)
!304 = !DILocation(line: 282, column: 7, scope: !300)
!305 = !DILocation(line: 285, column: 9, scope: !300)
!306 = !DILocation(line: 285, column: 14, scope: !300)
!307 = !DILocation(line: 286, column: 9, scope: !300)
!308 = !DILocation(line: 286, column: 13, scope: !300)
!309 = !DILocation(line: 287, column: 9, scope: !300)
!310 = !DILocation(line: 287, column: 16, scope: !300)
!311 = !DILocation(line: 289, column: 40, scope: !300)
!312 = !DILocation(line: 289, column: 54, scope: !300)
!313 = !DILocation(line: 290, column: 32, scope: !300)
!314 = !DILocation(line: 290, column: 40, scope: !300)
!315 = !DILocation(line: 290, column: 56, scope: !300)
!316 = !DILocation(line: 291, column: 32, scope: !300)
!317 = !DILocation(line: 291, column: 40, scope: !300)
!318 = !DILocation(line: 291, column: 56, scope: !300)
!319 = !DILocation(line: 292, column: 32, scope: !300)
!320 = !DILocation(line: 292, column: 40, scope: !300)
!321 = !DILocation(line: 292, column: 46, scope: !300)
!322 = !DILocation(line: 296, column: 31, scope: !274)
!323 = !DILocation(line: 293, column: 2, scope: !300)
!324 = !DILocation(line: 296, column: 48, scope: !274)
!325 = !DILocation(line: 297, column: 31, scope: !274)
!326 = !DILocation(line: 297, column: 39, scope: !274)
!327 = !DILocation(line: 297, column: 61, scope: !274)
!328 = !DILocation(line: 298, column: 31, scope: !274)
!329 = !DILocation(line: 298, column: 53, scope: !274)
!330 = !DILocation(line: 298, column: 59, scope: !274)
!331 = !DILocation(line: 301, column: 46, scope: !274)
!332 = !DILocation(line: 301, column: 54, scope: !274)
!333 = !DILocation(line: 301, column: 2, scope: !274)
!334 = !DILocation(line: 302, column: 47, scope: !274)
!335 = !DILocation(line: 302, column: 31, scope: !274)
!336 = !DILocation(line: 302, column: 39, scope: !274)
!337 = !DILocation(line: 302, column: 45, scope: !274)
!338 = !DILocation(line: 303, column: 35, scope: !339)
!339 = distinct !DILexicalBlock(scope: !274, file: !3, line: 303, column: 6)
!340 = !DILocation(line: 303, column: 43, scope: !339)
!341 = !DILocation(line: 303, column: 49, scope: !339)
!342 = !DILocation(line: 303, column: 6, scope: !274)
!343 = !DILocation(line: 307, column: 2, scope: !274)
!344 = !DILocation(line: 307, column: 20, scope: !274)
!345 = distinct !DIAssignID()
!346 = !DILocation(line: 307, column: 35, scope: !274)
!347 = distinct !DIAssignID()
!348 = !DILocation(line: 311, column: 2, scope: !285)
!349 = !DILocation(line: 0, scope: !285)
!350 = !DILocation(line: 311, column: 2, scope: !351)
!351 = distinct !DILexicalBlock(scope: !285, file: !3, line: 311, column: 2)
!352 = !DILocation(line: 314, column: 31, scope: !274)
!353 = !DILocation(line: 314, column: 39, scope: !274)
!354 = !DILocation(line: 314, column: 50, scope: !274)
!355 = !DILocation(line: 315, column: 31, scope: !274)
!356 = !DILocation(line: 315, column: 39, scope: !274)
!357 = !DILocation(line: 315, column: 51, scope: !274)
!358 = !DILocation(line: 321, column: 10, scope: !274)
!359 = !DILocation(line: 320, column: 9, scope: !274)
!360 = !DILocation(line: 320, column: 2, scope: !274)
!361 = !DILocation(line: 322, column: 1, scope: !274)
!362 = !DISubprogram(name: "lzma_next_end", scope: !25, file: !25, line: 237, type: !363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!363 = !DISubroutineType(types: !364)
!364 = !{null, !277, !26}
!365 = !DISubprogram(name: "lzma_alloc", scope: !25, file: !25, line: 211, type: !366, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!366 = !DISubroutineType(types: !367)
!367 = !{!34, !35, !26}
!368 = distinct !DIAssignID()
!369 = !DILocation(line: 0, scope: !240)
!370 = !DILocation(line: 0, scope: !2)
!371 = !DILocation(line: 90, column: 9, scope: !2)
!372 = !DILocation(line: 90, column: 18, scope: !2)
!373 = !DILocation(line: 90, column: 2, scope: !2)
!374 = !DILocation(line: 91, column: 17, scope: !2)
!375 = !DILocation(line: 91, column: 2, scope: !2)
!376 = !DILocation(line: 96, column: 12, scope: !228)
!377 = !DILocation(line: 95, column: 3, scope: !228)
!378 = !DILocation(line: 97, column: 14, scope: !379)
!379 = distinct !DILexicalBlock(scope: !228, file: !3, line: 97, column: 7)
!380 = !DILocation(line: 97, column: 34, scope: !379)
!381 = !DILocation(line: 97, column: 25, scope: !379)
!382 = !DILocation(line: 97, column: 7, scope: !228)
!383 = !DILocation(line: 100, column: 14, scope: !384)
!384 = distinct !DILexicalBlock(scope: !228, file: !3, line: 100, column: 7)
!385 = !DILocation(line: 100, column: 23, scope: !384)
!386 = !DILocation(line: 100, column: 7, scope: !228)
!387 = !DILocation(line: 103, column: 21, scope: !228)
!388 = !DILocation(line: 104, column: 3, scope: !228)
!389 = !DILocation(line: 105, column: 3, scope: !228)
!390 = !DILocation(line: 108, column: 7, scope: !226)
!391 = !DILocation(line: 108, column: 15, scope: !226)
!392 = !DILocation(line: 108, column: 7, scope: !227)
!393 = !DILocation(line: 112, column: 8, scope: !225)
!394 = !DILocation(line: 113, column: 19, scope: !395)
!395 = distinct !DILexicalBlock(scope: !225, file: !3, line: 112, column: 8)
!396 = !DILocation(line: 113, column: 12, scope: !395)
!397 = !DILocation(line: 113, column: 5, scope: !395)
!398 = !DILocation(line: 123, column: 4, scope: !224)
!399 = !DILocation(line: 0, scope: !224)
!400 = !DILocation(line: 123, column: 4, scope: !401)
!401 = distinct !DILexicalBlock(scope: !224, file: !3, line: 123, column: 4)
!402 = !DILocation(line: 126, column: 20, scope: !225)
!403 = !DILocation(line: 127, column: 4, scope: !225)
!404 = !DILocation(line: 133, column: 15, scope: !232)
!405 = !{i8 0, i8 2}
!406 = !{}
!407 = !DILocation(line: 133, column: 7, scope: !227)
!408 = !DILocalVariable(name: "pcoder", arg: 1, scope: !409, file: !3, line: 63, type: !23)
!409 = distinct !DISubprogram(name: "block_encoder_init", scope: !3, file: !3, line: 63, type: !410, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !412)
!410 = !DISubroutineType(types: !411)
!411 = !{!6, !23, !26}
!412 = !{!408, !413, !414, !415}
!413 = !DILocalVariable(name: "allocator", arg: 2, scope: !409, file: !3, line: 63, type: !26)
!414 = !DILocalVariable(name: "coder", scope: !409, file: !3, line: 65, type: !210)
!415 = !DILocalVariable(name: "ret_", scope: !416, file: !3, line: 74, type: !229)
!416 = distinct !DILexicalBlock(scope: !409, file: !3, line: 74, column: 2)
!417 = !DILocation(line: 0, scope: !409, inlinedAt: !418)
!418 = distinct !DILocation(line: 134, column: 4, scope: !231)
!419 = !DILocation(line: 72, column: 41, scope: !409, inlinedAt: !418)
!420 = !DILocation(line: 74, column: 2, scope: !416, inlinedAt: !418)
!421 = !DILocation(line: 0, scope: !416, inlinedAt: !418)
!422 = !DILocation(line: 74, column: 2, scope: !423, inlinedAt: !418)
!423 = distinct !DILexicalBlock(scope: !416, file: !3, line: 74, column: 2)
!424 = !DILocation(line: 77, column: 9, scope: !409, inlinedAt: !418)
!425 = !DILocation(line: 0, scope: !231)
!426 = !DILocation(line: 134, column: 4, scope: !427)
!427 = distinct !DILexicalBlock(scope: !231, file: !3, line: 134, column: 4)
!428 = !DILocation(line: 138, column: 39, scope: !227)
!429 = !DILocation(line: 142, column: 7, scope: !430)
!430 = distinct !DILexicalBlock(scope: !227, file: !3, line: 142, column: 7)
!431 = !DILocation(line: 143, column: 20, scope: !430)
!432 = !DILocation(line: 142, column: 7, scope: !227)
!433 = !DILocation(line: 146, column: 45, scope: !227)
!434 = !DILocation(line: 146, column: 24, scope: !227)
!435 = !DILocation(line: 146, column: 22, scope: !227)
!436 = !DILocation(line: 147, column: 19, scope: !227)
!437 = !DILocation(line: 148, column: 3, scope: !227)
!438 = !DILocation(line: 159, column: 45, scope: !234)
!439 = !DILocation(line: 160, column: 26, scope: !234)
!440 = !DILocation(line: 162, column: 29, scope: !234)
!441 = !DILocation(line: 159, column: 24, scope: !234)
!442 = !DILocation(line: 0, scope: !234)
!443 = !DILocation(line: 163, column: 11, scope: !444)
!444 = distinct !DILexicalBlock(scope: !234, file: !3, line: 163, column: 7)
!445 = !DILocation(line: 163, column: 30, scope: !444)
!446 = !DILocation(line: 167, column: 34, scope: !234)
!447 = !DILocation(line: 170, column: 3, scope: !238)
!448 = !DILocation(line: 0, scope: !238)
!449 = !DILocation(line: 170, column: 3, scope: !450)
!450 = distinct !DILexicalBlock(scope: !238, file: !3, line: 170, column: 3)
!451 = !DILocation(line: 174, column: 19, scope: !234)
!452 = !DILocation(line: 181, column: 45, scope: !240)
!453 = !DILocation(line: 182, column: 26, scope: !240)
!454 = !DILocation(line: 181, column: 24, scope: !240)
!455 = !DILocation(line: 185, column: 11, scope: !456)
!456 = distinct !DILexicalBlock(scope: !240, file: !3, line: 185, column: 7)
!457 = !DILocation(line: 185, column: 7, scope: !240)
!458 = !DILocation(line: 189, column: 3, scope: !240)
!459 = !DILocation(line: 189, column: 27, scope: !240)
!460 = distinct !DIAssignID()
!461 = !DILocation(line: 191, column: 44, scope: !240)
!462 = !DILocation(line: 191, column: 21, scope: !240)
!463 = !DILocation(line: 189, column: 42, scope: !240)
!464 = distinct !DIAssignID()
!465 = !DILocation(line: 192, column: 34, scope: !240)
!466 = distinct !DIAssignID()
!467 = !DILocation(line: 195, column: 7, scope: !468)
!468 = distinct !DILexicalBlock(scope: !240, file: !3, line: 195, column: 7)
!469 = !DILocation(line: 196, column: 5, scope: !468)
!470 = !DILocation(line: 195, column: 7, scope: !240)
!471 = !DILocation(line: 199, column: 22, scope: !240)
!472 = !DILocation(line: 200, column: 19, scope: !240)
!473 = !DILocation(line: 202, column: 2, scope: !228)
!474 = distinct !{!474, !373, !475}
!475 = !DILocation(line: 207, column: 2, scope: !2)
!476 = !DILocation(line: 210, column: 1, scope: !2)
!477 = distinct !DISubprogram(name: "stream_encoder_end", scope: !3, file: !3, line: 214, type: !96, scopeLine: 215, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !478)
!478 = !{!479, !480, !481, !482}
!479 = !DILocalVariable(name: "pcoder", arg: 1, scope: !477, file: !3, line: 214, type: !23)
!480 = !DILocalVariable(name: "allocator", arg: 2, scope: !477, file: !3, line: 214, type: !26)
!481 = !DILocalVariable(name: "coder", scope: !477, file: !3, line: 216, type: !210)
!482 = !DILocalVariable(name: "i", scope: !483, file: !3, line: 222, type: !35)
!483 = distinct !DILexicalBlock(scope: !477, file: !3, line: 222, column: 2)
!484 = !DILocation(line: 0, scope: !477)
!485 = !DILocation(line: 218, column: 24, scope: !477)
!486 = !DILocation(line: 218, column: 2, scope: !477)
!487 = !DILocation(line: 219, column: 24, scope: !477)
!488 = !DILocation(line: 219, column: 2, scope: !477)
!489 = !DILocation(line: 220, column: 24, scope: !477)
!490 = !DILocation(line: 220, column: 2, scope: !477)
!491 = !DILocation(line: 0, scope: !483)
!492 = !DILocation(line: 222, column: 39, scope: !493)
!493 = distinct !DILexicalBlock(scope: !483, file: !3, line: 222, column: 2)
!494 = !DILocation(line: 222, column: 42, scope: !493)
!495 = !DILocation(line: 222, column: 2, scope: !483)
!496 = !DILocation(line: 225, column: 2, scope: !477)
!497 = !DILocation(line: 227, column: 1, scope: !477)
!498 = !DILocation(line: 223, column: 31, scope: !493)
!499 = !DILocation(line: 223, column: 3, scope: !493)
!500 = !DILocation(line: 222, column: 63, scope: !493)
!501 = !DILocation(line: 222, column: 21, scope: !493)
!502 = distinct !{!502, !495, !503}
!503 = !DILocation(line: 223, column: 49, scope: !483)
!504 = distinct !DISubprogram(name: "stream_encoder_update", scope: !3, file: !3, line: 231, type: !112, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !505)
!505 = !{!506, !507, !508, !509, !510, !511, !514, !518}
!506 = !DILocalVariable(name: "pcoder", arg: 1, scope: !504, file: !3, line: 231, type: !23)
!507 = !DILocalVariable(name: "allocator", arg: 2, scope: !504, file: !3, line: 231, type: !26)
!508 = !DILocalVariable(name: "filters", arg: 3, scope: !504, file: !3, line: 232, type: !114)
!509 = !DILocalVariable(name: "reversed_filters", arg: 4, scope: !504, file: !3, line: 233, type: !114)
!510 = !DILocalVariable(name: "coder", scope: !504, file: !3, line: 235, type: !210)
!511 = !DILocalVariable(name: "ret", scope: !512, file: !3, line: 244, type: !229)
!512 = distinct !DILexicalBlock(scope: !513, file: !3, line: 237, column: 41)
!513 = distinct !DILexicalBlock(scope: !504, file: !3, line: 237, column: 6)
!514 = !DILocalVariable(name: "ret_", scope: !515, file: !3, line: 254, type: !229)
!515 = distinct !DILexicalBlock(scope: !516, file: !3, line: 254, column: 3)
!516 = distinct !DILexicalBlock(scope: !517, file: !3, line: 251, column: 50)
!517 = distinct !DILexicalBlock(scope: !513, file: !3, line: 251, column: 13)
!518 = !DILocalVariable(name: "i", scope: !519, file: !3, line: 264, type: !35)
!519 = distinct !DILexicalBlock(scope: !504, file: !3, line: 264, column: 2)
!520 = !DILocation(line: 0, scope: !504)
!521 = !DILocation(line: 237, column: 13, scope: !513)
!522 = !DILocation(line: 237, column: 22, scope: !513)
!523 = !DILocation(line: 237, column: 6, scope: !504)
!524 = !DILocation(line: 242, column: 10, scope: !512)
!525 = !DILocation(line: 242, column: 39, scope: !512)
!526 = !DILocation(line: 243, column: 24, scope: !512)
!527 = !DILocation(line: 243, column: 32, scope: !512)
!528 = !DILocation(line: 0, scope: !409, inlinedAt: !529)
!529 = distinct !DILocation(line: 244, column: 24, scope: !512)
!530 = !DILocation(line: 71, column: 9, scope: !409, inlinedAt: !529)
!531 = !DILocation(line: 71, column: 23, scope: !409, inlinedAt: !529)
!532 = !DILocation(line: 72, column: 41, scope: !409, inlinedAt: !529)
!533 = !DILocation(line: 74, column: 2, scope: !416, inlinedAt: !529)
!534 = !DILocation(line: 0, scope: !416, inlinedAt: !529)
!535 = !DILocation(line: 74, column: 2, scope: !423, inlinedAt: !529)
!536 = !DILocation(line: 0, scope: !512)
!537 = !DILocation(line: 245, column: 41, scope: !512)
!538 = !DILocation(line: 245, column: 32, scope: !512)
!539 = !DILocation(line: 246, column: 7, scope: !512)
!540 = !DILocation(line: 77, column: 41, scope: !409, inlinedAt: !529)
!541 = !DILocation(line: 77, column: 9, scope: !409, inlinedAt: !529)
!542 = !DILocation(line: 246, column: 11, scope: !543)
!543 = distinct !DILexicalBlock(scope: !512, file: !3, line: 246, column: 7)
!544 = !DILocation(line: 249, column: 39, scope: !512)
!545 = !DILocation(line: 251, column: 29, scope: !517)
!546 = !DILocation(line: 251, column: 13, scope: !513)
!547 = !DILocation(line: 254, column: 3, scope: !515)
!548 = !DILocation(line: 0, scope: !515)
!549 = !DILocation(line: 254, column: 3, scope: !550)
!550 = distinct !DILexicalBlock(scope: !515, file: !3, line: 254, column: 3)
!551 = !DILocation(line: 0, scope: !519)
!552 = !DILocation(line: 264, column: 39, scope: !553)
!553 = distinct !DILexicalBlock(scope: !519, file: !3, line: 264, column: 2)
!554 = !DILocation(line: 264, column: 42, scope: !553)
!555 = !DILocation(line: 264, column: 2, scope: !519)
!556 = !DILocation(line: 267, column: 9, scope: !504)
!557 = !DILocation(line: 267, column: 2, scope: !504)
!558 = !DILocation(line: 265, column: 31, scope: !553)
!559 = !DILocation(line: 265, column: 3, scope: !553)
!560 = !DILocation(line: 264, column: 63, scope: !553)
!561 = !DILocation(line: 264, column: 21, scope: !553)
!562 = distinct !{!562, !555, !563}
!563 = !DILocation(line: 265, column: 49, scope: !519)
!564 = !DILocation(line: 268, column: 1, scope: !504)
!565 = !DISubprogram(name: "lzma_index_end", scope: !176, file: !176, line: 315, type: !566, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!566 = !DISubroutineType(types: !567)
!567 = !{null, !174, !26}
!568 = !DISubprogram(name: "lzma_index_init", scope: !176, file: !176, line: 306, type: !569, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!569 = !DISubroutineType(types: !570)
!570 = !{!174, !26}
!571 = !DISubprogram(name: "lzma_stream_header_encode", scope: !244, file: !244, line: 122, type: !572, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!572 = !DISubroutineType(types: !573)
!573 = !{!6, !574, !54}
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!575 = distinct !DISubprogram(name: "lzma_stream_encoder", scope: !3, file: !3, line: 326, type: !576, scopeLine: 328, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !602)
!576 = !DISubroutineType(types: !577)
!577 = !{!6, !578, !114, !102}
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_stream", file: !7, line: 490, baseType: !580)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 453, size: 1088, elements: !581)
!581 = !{!582, !583, !584, !585, !586, !587, !588, !589, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !580, file: !7, line: 454, baseType: !44, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !580, file: !7, line: 455, baseType: !35, size: 64, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "total_in", scope: !580, file: !7, line: 456, baseType: !85, size: 64, offset: 128)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !580, file: !7, line: 458, baseType: !54, size: 64, offset: 192)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !580, file: !7, line: 459, baseType: !35, size: 64, offset: 256)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "total_out", scope: !580, file: !7, line: 460, baseType: !85, size: 64, offset: 320)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !580, file: !7, line: 468, baseType: !26, size: 64, offset: 384)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !580, file: !7, line: 471, baseType: !590, size: 64, offset: 448)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_internal", file: !7, line: 411, baseType: !192)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !580, file: !7, line: 479, baseType: !34, size: 64, offset: 512)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !580, file: !7, line: 480, baseType: !34, size: 64, offset: 576)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !580, file: !7, line: 481, baseType: !34, size: 64, offset: 640)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr4", scope: !580, file: !7, line: 482, baseType: !34, size: 64, offset: 704)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !580, file: !7, line: 483, baseType: !85, size: 64, offset: 768)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !580, file: !7, line: 484, baseType: !85, size: 64, offset: 832)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !580, file: !7, line: 485, baseType: !35, size: 64, offset: 896)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !580, file: !7, line: 486, baseType: !35, size: 64, offset: 960)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !580, file: !7, line: 487, baseType: !152, size: 32, offset: 1024)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !580, file: !7, line: 488, baseType: !152, size: 32, offset: 1056)
!602 = !{!603, !604, !605, !606, !609}
!603 = !DILocalVariable(name: "strm", arg: 1, scope: !575, file: !3, line: 326, type: !578)
!604 = !DILocalVariable(name: "filters", arg: 2, scope: !575, file: !3, line: 327, type: !114)
!605 = !DILocalVariable(name: "check", arg: 3, scope: !575, file: !3, line: 327, type: !102)
!606 = !DILocalVariable(name: "ret_", scope: !607, file: !3, line: 329, type: !229)
!607 = distinct !DILexicalBlock(scope: !608, file: !3, line: 329, column: 2)
!608 = distinct !DILexicalBlock(scope: !575, file: !3, line: 329, column: 2)
!609 = !DILocalVariable(name: "ret_", scope: !608, file: !3, line: 329, type: !229)
!610 = !DILocation(line: 0, scope: !575)
!611 = !DILocation(line: 329, column: 2, scope: !607)
!612 = !DILocation(line: 0, scope: !607)
!613 = !DILocation(line: 329, column: 2, scope: !614)
!614 = distinct !DILexicalBlock(scope: !607, file: !3, line: 329, column: 2)
!615 = !DILocation(line: 329, column: 2, scope: !608)
!616 = !DILocation(line: 0, scope: !608)
!617 = !DILocation(line: 329, column: 2, scope: !618)
!618 = distinct !DILexicalBlock(scope: !608, file: !3, line: 329, column: 2)
!619 = !DILocation(line: 329, column: 2, scope: !620)
!620 = distinct !DILexicalBlock(scope: !618, file: !3, line: 329, column: 2)
!621 = !DILocation(line: 331, column: 8, scope: !575)
!622 = !DILocation(line: 331, column: 18, scope: !575)
!623 = !DILocation(line: 331, column: 46, scope: !575)
!624 = !DILocation(line: 332, column: 8, scope: !575)
!625 = !DILocation(line: 332, column: 2, scope: !575)
!626 = !DILocation(line: 332, column: 53, scope: !575)
!627 = !DILocation(line: 333, column: 8, scope: !575)
!628 = !DILocation(line: 333, column: 2, scope: !575)
!629 = !DILocation(line: 333, column: 53, scope: !575)
!630 = !DILocation(line: 334, column: 8, scope: !575)
!631 = !DILocation(line: 334, column: 2, scope: !575)
!632 = !DILocation(line: 334, column: 49, scope: !575)
!633 = !DILocation(line: 336, column: 2, scope: !575)
!634 = !DILocation(line: 337, column: 1, scope: !575)
!635 = !DISubprogram(name: "lzma_strm_init", scope: !25, file: !25, line: 220, type: !636, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!636 = !DISubroutineType(types: !637)
!637 = !{!6, !578}
!638 = !DISubprogram(name: "lzma_end", scope: !7, file: !7, line: 546, type: !639, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!639 = !DISubroutineType(types: !640)
!640 = !{null, !578}
!641 = !DISubprogram(name: "lzma_bufcpy", scope: !25, file: !25, line: 242, type: !642, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!642 = !DISubroutineType(types: !643)
!643 = !{!35, !43, !51, !35, !53, !51, !35}
!644 = !DISubprogram(name: "lzma_index_encoder_init", scope: !645, file: !645, line: 19, type: !646, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!645 = !DIFile(filename: "liblzma/common/index_encoder.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "1f7a42f9f8fa2ab3e3b4b125f8be1d4d")
!646 = !DISubroutineType(types: !647)
!647 = !{!6, !277, !26, !648}
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !175)
!650 = !DISubprogram(name: "lzma_block_header_encode", scope: !124, file: !124, line: 305, type: !651, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!651 = !DISubroutineType(types: !652)
!652 = !{!6, !653, !54}
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!655 = !DISubprogram(name: "lzma_block_unpadded_size", scope: !124, file: !124, line: 391, type: !656, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!656 = !DISubroutineType(types: !657)
!657 = !{!83, !653}
!658 = !DISubprogram(name: "lzma_index_append", scope: !176, file: !176, line: 343, type: !659, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!659 = !DISubroutineType(types: !660)
!660 = !{!6, !174, !26, !83, !83}
!661 = !DISubprogram(name: "lzma_index_size", scope: !176, file: !176, line: 424, type: !662, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!662 = !DISubroutineType(types: !663)
!663 = !{!83, !648}
!664 = !DISubprogram(name: "lzma_stream_footer_encode", scope: !244, file: !244, line: 139, type: !572, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!665 = !DISubprogram(name: "lzma_block_header_size", scope: !124, file: !124, line: 283, type: !666, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!666 = !DISubroutineType(types: !667)
!667 = !{!6, !668}
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!669 = !DISubprogram(name: "lzma_block_encoder_init", scope: !670, file: !670, line: 44, type: !671, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!670 = !DIFile(filename: "liblzma/common/block_encoder.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "8a5855f99931e218b4ed02132bba4fb7")
!671 = !DISubroutineType(types: !672)
!672 = !{!6, !277, !26, !668}
!673 = !DISubprogram(name: "lzma_free", scope: !25, file: !25, line: 215, type: !674, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!674 = !DISubroutineType(types: !675)
!675 = !{null, !34, !26}
!676 = !DISubprogram(name: "lzma_filters_copy", scope: !117, file: !117, line: 119, type: !677, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!677 = !DISubroutineType(types: !678)
!678 = !{!6, !114, !135, !26}
