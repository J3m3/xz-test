; ModuleID = 'liblzma/common/index_decoder.c'
source_filename = "liblzma/common/index_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_coder_s = type { i32, i64, ptr, ptr, i64, i64, i64, i64, i32 }

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_index_decoder(ptr noundef %strm, ptr noundef %i, i64 noundef %memlimit) local_unnamed_addr #0 !dbg !172 {
entry:
    #dbg_value(ptr %strm, !201, !DIExpression(), !209)
    #dbg_value(ptr %i, !202, !DIExpression(), !209)
    #dbg_value(i64 %memlimit, !203, !DIExpression(), !209)
  %call = tail call i32 @lzma_strm_init(ptr noundef %strm) #3, !dbg !210
    #dbg_value(i32 %call, !204, !DIExpression(), !211)
  %cmp.not.not = icmp eq i32 %call, 0, !dbg !212
  br i1 %cmp.not.not, label %do.end, label %return

do.end:                                           ; preds = %entry
  %internal = getelementptr inbounds i8, ptr %strm, i64 56, !dbg !214
  %0 = load ptr, ptr %internal, align 8, !dbg !214
  %allocator = getelementptr inbounds i8, ptr %strm, i64 48, !dbg !214
  %1 = load ptr, ptr %allocator, align 8, !dbg !214
  %call3 = tail call i32 @index_decoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %i, i64 noundef %memlimit), !dbg !214
    #dbg_value(i32 %call3, !208, !DIExpression(), !215)
  %cmp4.not.not = icmp eq i32 %call3, 0, !dbg !216
  br i1 %cmp4.not.not, label %do.end10, label %cleanup7, !dbg !214

cleanup7:                                         ; preds = %do.end
  tail call void @lzma_end(ptr noundef nonnull %strm) #3, !dbg !218
  br label %return

do.end10:                                         ; preds = %do.end
  %2 = load ptr, ptr %internal, align 8, !dbg !220
  %supported_actions = getelementptr inbounds i8, ptr %2, i64 80, !dbg !221
  store i8 1, ptr %supported_actions, align 8, !dbg !222
  %3 = load ptr, ptr %internal, align 8, !dbg !223
  %arrayidx14 = getelementptr inbounds i8, ptr %3, i64 83, !dbg !224
  store i8 1, ptr %arrayidx14, align 1, !dbg !225
  br label %return, !dbg !226

return:                                           ; preds = %cleanup7, %entry, %do.end10
  %retval.2 = phi i32 [ %call, %entry ], [ %call3, %cleanup7 ], [ 0, %do.end10 ], !dbg !209
  ret i32 %retval.2, !dbg !227
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !228 i32 @lzma_strm_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 12) i32 @index_decoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %i, i64 noundef %memlimit) #0 !dbg !231 {
entry:
    #dbg_value(ptr %next, !236, !DIExpression(), !240)
    #dbg_value(ptr %allocator, !237, !DIExpression(), !240)
    #dbg_value(ptr %i, !238, !DIExpression(), !240)
    #dbg_value(i64 %memlimit, !239, !DIExpression(), !240)
  %init = getelementptr inbounds i8, ptr %next, i64 16, !dbg !241
  %0 = load i64, ptr %init, align 8, !dbg !241
  %cmp.not = icmp eq i64 %0, ptrtoint (ptr @index_decoder_init to i64), !dbg !241
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !244

if.then:                                          ; preds = %entry
  tail call void @lzma_next_end(ptr noundef nonnull %next, ptr noundef %allocator) #3, !dbg !241
  br label %if.end, !dbg !241

if.end:                                           ; preds = %if.then, %entry
  store i64 ptrtoint (ptr @index_decoder_init to i64), ptr %init, align 8, !dbg !244
  %cmp2 = icmp eq ptr %i, null, !dbg !245
  %cmp3 = icmp eq i64 %memlimit, 0
  %or.cond = or i1 %cmp2, %cmp3, !dbg !247
  br i1 %or.cond, label %return, label %if.end5, !dbg !247

if.end5:                                          ; preds = %if.end
  %1 = load ptr, ptr %next, align 8, !dbg !248
  %cmp6 = icmp eq ptr %1, null, !dbg !250
  br i1 %cmp6, label %if.then7, label %if.else, !dbg !251

if.then7:                                         ; preds = %if.end5
  %call = tail call ptr @lzma_alloc(i64 noundef 72, ptr noundef %allocator) #3, !dbg !252
  store ptr %call, ptr %next, align 8, !dbg !254
  %cmp10 = icmp eq ptr %call, null, !dbg !255
  br i1 %cmp10, label %return, label %if.end12, !dbg !257

if.end12:                                         ; preds = %if.then7
  %code = getelementptr inbounds i8, ptr %next, i64 24, !dbg !258
  store ptr @index_decode, ptr %code, align 8, !dbg !259
  %end = getelementptr inbounds i8, ptr %next, i64 32, !dbg !260
  store ptr @index_decoder_end, ptr %end, align 8, !dbg !261
  %memconfig = getelementptr inbounds i8, ptr %next, i64 48, !dbg !262
  store ptr @index_decoder_memconfig, ptr %memconfig, align 8, !dbg !263
  %index = getelementptr inbounds i8, ptr %call, i64 16, !dbg !264
  store ptr null, ptr %index, align 8, !dbg !265
  br label %if.end16, !dbg !266

if.else:                                          ; preds = %if.end5
  %index15 = getelementptr inbounds i8, ptr %1, i64 16, !dbg !267
  %2 = load ptr, ptr %index15, align 8, !dbg !267
  tail call void @lzma_index_end(ptr noundef %2, ptr noundef %allocator) #3, !dbg !269
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.end12
  %3 = load ptr, ptr %next, align 8, !dbg !270
    #dbg_value(ptr %3, !271, !DIExpression(), !280)
    #dbg_value(ptr %allocator, !276, !DIExpression(), !280)
    #dbg_value(ptr %i, !277, !DIExpression(), !280)
    #dbg_value(i64 %memlimit, !278, !DIExpression(), !280)
    #dbg_value(ptr %3, !279, !DIExpression(), !280)
  %index_ptr.i = getelementptr inbounds i8, ptr %3, i64 24, !dbg !282
  store ptr %i, ptr %index_ptr.i, align 8, !dbg !283
  store ptr null, ptr %i, align 8, !dbg !284
  %call.i = tail call ptr @lzma_index_init(ptr noundef %allocator) #3, !dbg !285
  %index.i = getelementptr inbounds i8, ptr %3, i64 16, !dbg !286
  store ptr %call.i, ptr %index.i, align 8, !dbg !287
  %cmp.i = icmp eq ptr %call.i, null, !dbg !288
  br i1 %cmp.i, label %return, label %if.end.i, !dbg !290

if.end.i:                                         ; preds = %if.end16
  store i32 0, ptr %3, align 8, !dbg !291
  %memlimit2.i = getelementptr inbounds i8, ptr %3, i64 8, !dbg !292
  store i64 %memlimit, ptr %memlimit2.i, align 8, !dbg !293
  %count.i = getelementptr inbounds i8, ptr %3, i64 32, !dbg !294
  store i64 0, ptr %count.i, align 8, !dbg !295
  %pos.i = getelementptr inbounds i8, ptr %3, i64 56, !dbg !296
  store i64 0, ptr %pos.i, align 8, !dbg !297
  %crc32.i = getelementptr inbounds i8, ptr %3, i64 64, !dbg !298
  store i32 0, ptr %crc32.i, align 8, !dbg !299
  br label %return, !dbg !300

return:                                           ; preds = %if.end.i, %if.end16, %if.then7, %if.end
  %retval.0 = phi i32 [ 11, %if.end ], [ 5, %if.then7 ], [ 0, %if.end.i ], [ 5, %if.end16 ], !dbg !240
  ret i32 %retval.0, !dbg !301
}

declare !dbg !302 void @lzma_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_index_buffer_decode(ptr noundef %i, ptr noundef %memlimit, ptr noundef %allocator, ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size) local_unnamed_addr #0 !dbg !305 {
entry:
  %coder = alloca %struct.lzma_coder_s, align 8, !DIAssignID !321
    #dbg_assign(i1 undef, !315, !DIExpression(), !321, ptr %coder, !DIExpression(), !322)
    #dbg_value(ptr %i, !309, !DIExpression(), !322)
    #dbg_value(ptr %memlimit, !310, !DIExpression(), !322)
    #dbg_value(ptr %allocator, !311, !DIExpression(), !322)
    #dbg_value(ptr %in, !312, !DIExpression(), !322)
    #dbg_value(ptr %in_pos, !313, !DIExpression(), !322)
    #dbg_value(i64 %in_size, !314, !DIExpression(), !322)
  %0 = insertelement <4 x ptr> poison, ptr %i, i64 0, !dbg !323
  %1 = insertelement <4 x ptr> %0, ptr %memlimit, i64 1, !dbg !323
  %2 = insertelement <4 x ptr> %1, ptr %in, i64 2, !dbg !323
  %3 = insertelement <4 x ptr> %2, ptr %in_pos, i64 3, !dbg !323
  %4 = icmp eq <4 x ptr> %3, zeroinitializer, !dbg !323
  %5 = bitcast <4 x i1> %4 to i4, !dbg !325
  %.not = icmp eq i4 %5, 0, !dbg !325
  br i1 %.not, label %lor.lhs.false6, label %return, !dbg !325

lor.lhs.false6:                                   ; preds = %entry
  %6 = load i64, ptr %in_pos, align 8, !dbg !326
  %cmp7 = icmp ugt i64 %6, %in_size, !dbg !327
  br i1 %cmp7, label %return, label %if.end, !dbg !328

if.end:                                           ; preds = %lor.lhs.false6
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %coder) #3, !dbg !329
  %7 = load i64, ptr %memlimit, align 8, !dbg !330
    #dbg_value(ptr %coder, !271, !DIExpression(), !331)
    #dbg_value(ptr %allocator, !276, !DIExpression(), !331)
    #dbg_value(ptr %i, !277, !DIExpression(), !331)
    #dbg_value(i64 %7, !278, !DIExpression(), !331)
    #dbg_value(ptr %coder, !279, !DIExpression(), !331)
  %index_ptr.i = getelementptr inbounds i8, ptr %coder, i64 24, !dbg !333
  store ptr %i, ptr %index_ptr.i, align 8, !dbg !334, !DIAssignID !335
    #dbg_assign(ptr %i, !315, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !335, ptr %index_ptr.i, !DIExpression(), !322)
  store ptr null, ptr %i, align 8, !dbg !336
  %call.i = tail call ptr @lzma_index_init(ptr noundef %allocator) #3, !dbg !337
  %index.i = getelementptr inbounds i8, ptr %coder, i64 16, !dbg !338
  store ptr %call.i, ptr %index.i, align 8, !dbg !339, !DIAssignID !340
    #dbg_assign(ptr %call.i, !315, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !340, ptr %index.i, !DIExpression(), !322)
  %cmp.i = icmp eq ptr %call.i, null, !dbg !341
  br i1 %cmp.i, label %cleanup25, label %do.end, !dbg !342

do.end:                                           ; preds = %if.end
  store i32 0, ptr %coder, align 8, !dbg !343, !DIAssignID !344
    #dbg_assign(i32 0, !315, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !344, ptr %coder, !DIExpression(), !322)
  %memlimit2.i = getelementptr inbounds i8, ptr %coder, i64 8, !dbg !345
  store i64 %7, ptr %memlimit2.i, align 8, !dbg !346, !DIAssignID !347
    #dbg_assign(i64 %7, !315, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !347, ptr %memlimit2.i, !DIExpression(), !322)
  %count.i = getelementptr inbounds i8, ptr %coder, i64 32, !dbg !348
  store i64 0, ptr %count.i, align 8, !dbg !349, !DIAssignID !350
    #dbg_assign(i64 0, !315, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !350, ptr %count.i, !DIExpression(), !322)
  %pos.i = getelementptr inbounds i8, ptr %coder, i64 56, !dbg !351
  store i64 0, ptr %pos.i, align 8, !dbg !352, !DIAssignID !353
    #dbg_assign(i64 0, !315, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !353, ptr %pos.i, !DIExpression(), !322)
  %crc32.i = getelementptr inbounds i8, ptr %coder, i64 64, !dbg !354
  store i32 0, ptr %crc32.i, align 8, !dbg !355, !DIAssignID !356
    #dbg_assign(i32 0, !315, !DIExpression(DW_OP_LLVM_fragment, 512, 32), !356, ptr %crc32.i, !DIExpression(), !322)
    #dbg_value(i32 0, !316, !DIExpression(), !357)
  %8 = load i64, ptr %in_pos, align 8, !dbg !358
    #dbg_value(i64 %8, !318, !DIExpression(), !322)
  %call11 = call i32 @index_decode(ptr noundef nonnull %coder, ptr noundef %allocator, ptr noundef nonnull %in, ptr noundef nonnull %in_pos, i64 noundef %in_size, ptr poison, ptr poison, i64 poison, i32 poison), !dbg !359
    #dbg_value(i32 %call11, !320, !DIExpression(), !322)
  %cmp12 = icmp eq i32 %call11, 1, !dbg !360
  br i1 %cmp12, label %cleanup25, label %if.else, !dbg !362

if.else:                                          ; preds = %do.end
  %9 = load ptr, ptr %index.i, align 8, !dbg !363
  call void @lzma_index_end(ptr noundef %9, ptr noundef %allocator) #3, !dbg !365
  store i64 %8, ptr %in_pos, align 8, !dbg !366
  switch i32 %call11, label %if.end22.fold.split [
    i32 0, label %cleanup25
    i32 6, label %if.then18
  ], !dbg !367

if.then18:                                        ; preds = %if.else
  %10 = load i64, ptr %count.i, align 8, !dbg !368
  %call19 = call i64 @lzma_index_memusage(i64 noundef 1, i64 noundef %10) #3, !dbg !372
  store i64 %call19, ptr %memlimit, align 8, !dbg !373
  br label %cleanup25, !dbg !374

if.end22.fold.split:                              ; preds = %if.else
  br label %cleanup25

cleanup25:                                        ; preds = %if.end, %if.then18, %do.end, %if.end22.fold.split, %if.else
  %retval.1 = phi i32 [ 6, %if.then18 ], [ 0, %do.end ], [ 9, %if.else ], [ %call11, %if.end22.fold.split ], [ 5, %if.end ], !dbg !322
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %coder) #3, !dbg !375
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false6, %cleanup25
  %retval.2 = phi i32 [ %retval.1, %cleanup25 ], [ 11, %lor.lhs.false6 ], [ 11, %entry ], !dbg !322
  ret i32 %retval.2, !dbg !375
}

; Function Attrs: nounwind uwtable
define internal i32 @index_decode(ptr noundef %pcoder, ptr noundef %allocator, ptr noalias noundef %in, ptr noalias noundef %in_pos, i64 noundef %in_size, ptr noalias nocapture readnone %out, ptr noalias nocapture readnone %out_pos, i64 %out_size, i32 %action) #0 !dbg !376 {
entry:
    #dbg_value(ptr %pcoder, !378, !DIExpression(), !399)
    #dbg_value(ptr %allocator, !379, !DIExpression(), !399)
    #dbg_value(ptr %in, !380, !DIExpression(), !399)
    #dbg_value(ptr %in_pos, !381, !DIExpression(), !399)
    #dbg_value(i64 %in_size, !382, !DIExpression(), !399)
    #dbg_value(ptr poison, !383, !DIExpression(), !399)
    #dbg_value(ptr poison, !384, !DIExpression(), !399)
    #dbg_value(i64 poison, !385, !DIExpression(), !399)
    #dbg_value(i32 poison, !386, !DIExpression(), !399)
    #dbg_value(ptr %pcoder, !387, !DIExpression(), !399)
  %0 = load i64, ptr %in_pos, align 8, !dbg !400
    #dbg_value(i64 %0, !388, !DIExpression(), !399)
    #dbg_value(i32 0, !389, !DIExpression(), !399)
  %cmp199 = icmp ult i64 %0, %in_size, !dbg !401
  br i1 %cmp199, label %while.body.lr.ph, label %out111, !dbg !402

while.body.lr.ph:                                 ; preds = %entry
  %index65 = getelementptr inbounds i8, ptr %pcoder, i64 16
  %pos68 = getelementptr inbounds i8, ptr %pcoder, i64 56
  %unpadded_size = getelementptr inbounds i8, ptr %pcoder, i64 40
  %uncompressed_size = getelementptr inbounds i8, ptr %pcoder, i64 48
  %count56 = getelementptr inbounds i8, ptr %pcoder, i64 32
  %memlimit = getelementptr inbounds i8, ptr %pcoder, i64 8
  %.pre = load i32, ptr %pcoder, align 8, !dbg !403
  br label %while.body, !dbg !402

while.body:                                       ; preds = %while.body.lr.ph, %sw.epilog
  %1 = phi i32 [ %.pre, %while.body.lr.ph ], [ %29, %sw.epilog ], !dbg !403
  %2 = phi i64 [ %0, %while.body.lr.ph ], [ %30, %sw.epilog ]
  switch i32 %1, label %cleanup117 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb11
    i32 3, label %sw.bb23
    i32 4, label %sw.bb23
    i32 5, label %sw.bb64
    i32 6, label %while.body.sw.bb70_crit_edge
    i32 7, label %sw.bb88
  ], !dbg !404

while.body.sw.bb70_crit_edge:                     ; preds = %while.body
  %.pre205 = load i64, ptr %pos68, align 8, !dbg !405
  br label %sw.bb70, !dbg !404

sw.bb:                                            ; preds = %while.body
  %inc = add nuw i64 %2, 1, !dbg !407
  store i64 %inc, ptr %in_pos, align 8, !dbg !407
  %arrayidx = getelementptr inbounds i8, ptr %in, i64 %2, !dbg !409
  %3 = load i8, ptr %arrayidx, align 1, !dbg !409
  %cmp1.not = icmp eq i8 %3, 0, !dbg !410
  br i1 %cmp1.not, label %sw.epilog.sink.split, label %cleanup117, !dbg !411

sw.bb4:                                           ; preds = %while.body
  %call = tail call i32 @lzma_vli_decode(ptr noundef nonnull %count56, ptr noundef nonnull %pos68, ptr noundef %in, ptr noundef nonnull %in_pos, i64 noundef %in_size) #3, !dbg !412
    #dbg_value(i32 %call, !389, !DIExpression(), !399)
  %cmp5.not = icmp eq i32 %call, 1, !dbg !413
  br i1 %cmp5.not, label %if.end8, label %out111.loopexit, !dbg !415

if.end8:                                          ; preds = %sw.bb4
  store i64 0, ptr %pos68, align 8, !dbg !416
  store i32 2, ptr %pcoder, align 8, !dbg !417
  br label %sw.bb11, !dbg !418

sw.bb11:                                          ; preds = %while.body, %if.end8
  %4 = load i64, ptr %count56, align 8, !dbg !419
  %call13 = tail call i64 @lzma_index_memusage(i64 noundef 1, i64 noundef %4) #3, !dbg !421
  %5 = load i64, ptr %memlimit, align 8, !dbg !422
  %cmp14 = icmp ugt i64 %call13, %5, !dbg !423
  br i1 %cmp14, label %out111.loopexit, label %if.end17, !dbg !424

if.end17:                                         ; preds = %sw.bb11
  %6 = load ptr, ptr %index65, align 8, !dbg !425
  %7 = load i64, ptr %count56, align 8, !dbg !426
  tail call void @lzma_index_prealloc(ptr noundef %6, i64 noundef %7) #3, !dbg !427
    #dbg_value(i32 0, !389, !DIExpression(), !399)
  %8 = load i64, ptr %count56, align 8, !dbg !428
  %cmp20 = icmp eq i64 %8, 0, !dbg !429
  %cond = select i1 %cmp20, i32 5, i32 3, !dbg !430
  br label %sw.epilog.sink.split, !dbg !431

sw.bb23:                                          ; preds = %while.body, %while.body
  %cmp25 = icmp eq i32 %1, 3, !dbg !432
  %cond27 = select i1 %cmp25, ptr %unpadded_size, ptr %uncompressed_size, !dbg !433
    #dbg_value(ptr %cond27, !390, !DIExpression(), !434)
  %call29 = tail call i32 @lzma_vli_decode(ptr noundef nonnull %cond27, ptr noundef nonnull %pos68, ptr noundef %in, ptr noundef nonnull %in_pos, i64 noundef %in_size) #3, !dbg !435
    #dbg_value(i32 %call29, !389, !DIExpression(), !399)
  %cmp30.not = icmp eq i32 %call29, 1, !dbg !436
  br i1 %cmp30.not, label %if.end33, label %out111.loopexit, !dbg !438

if.end33:                                         ; preds = %sw.bb23
    #dbg_value(i32 0, !389, !DIExpression(), !399)
  store i64 0, ptr %pos68, align 8, !dbg !439
  %9 = load i32, ptr %pcoder, align 8, !dbg !440
  %cmp36 = icmp eq i32 %9, 3, !dbg !441
  br i1 %cmp36, label %if.then38, label %do.body, !dbg !442

if.then38:                                        ; preds = %if.end33
  %10 = load i64, ptr %unpadded_size, align 8, !dbg !443
  %11 = add i64 %10, -9223372036854775805, !dbg !446
  %or.cond = icmp ult i64 %11, -9223372036854775800, !dbg !446
  br i1 %or.cond, label %cleanup117, label %sw.epilog.sink.split, !dbg !446

do.body:                                          ; preds = %if.end33
  %12 = load ptr, ptr %index65, align 8, !dbg !447
  %13 = load i64, ptr %unpadded_size, align 8, !dbg !447
  %14 = load i64, ptr %uncompressed_size, align 8, !dbg !447
  %call51 = tail call i32 @lzma_index_append(ptr noundef %12, ptr noundef %allocator, i64 noundef %13, i64 noundef %14) #3, !dbg !447
    #dbg_value(i32 %call51, !394, !DIExpression(), !448)
  %cmp52.not = icmp eq i32 %call51, 0, !dbg !449
  br i1 %cmp52.not, label %do.end, label %cleanup117

do.end:                                           ; preds = %do.body
  %15 = load i64, ptr %count56, align 8, !dbg !451
  %dec = add i64 %15, -1, !dbg !451
  store i64 %dec, ptr %count56, align 8, !dbg !451
  %cmp57 = icmp eq i64 %dec, 0, !dbg !452
  %cond59 = select i1 %cmp57, i32 5, i32 3, !dbg !451
  br label %sw.epilog.sink.split

sw.bb64:                                          ; preds = %while.body
  %16 = load ptr, ptr %index65, align 8, !dbg !453
  %call66 = tail call i32 @lzma_index_padding_size(ptr noundef %16) #3, !dbg !454
  %conv67 = zext i32 %call66 to i64, !dbg !454
  store i64 %conv67, ptr %pos68, align 8, !dbg !455
  store i32 6, ptr %pcoder, align 8, !dbg !456
  br label %sw.bb70, !dbg !457

sw.bb70:                                          ; preds = %while.body.sw.bb70_crit_edge, %sw.bb64
  %17 = phi i64 [ %.pre205, %while.body.sw.bb70_crit_edge ], [ %conv67, %sw.bb64 ], !dbg !405
  %cmp72.not = icmp eq i64 %17, 0, !dbg !458
  br i1 %cmp72.not, label %if.end84, label %if.then74, !dbg !459

if.then74:                                        ; preds = %sw.bb70
  %dec76 = add i64 %17, -1, !dbg !460
  store i64 %dec76, ptr %pos68, align 8, !dbg !460
  %18 = load i64, ptr %in_pos, align 8, !dbg !462
  %inc77 = add i64 %18, 1, !dbg !462
  store i64 %inc77, ptr %in_pos, align 8, !dbg !462
  %arrayidx78 = getelementptr inbounds i8, ptr %in, i64 %18, !dbg !464
  %19 = load i8, ptr %arrayidx78, align 1, !dbg !464
  %cmp80.not = icmp eq i8 %19, 0, !dbg !465
  br i1 %cmp80.not, label %sw.epilog, label %cleanup117, !dbg !466

if.end84:                                         ; preds = %sw.bb70
  %add.ptr = getelementptr inbounds i8, ptr %in, i64 %0, !dbg !467
  %20 = load i64, ptr %in_pos, align 8, !dbg !468
  %sub = sub i64 %20, %0, !dbg !469
  %crc32 = getelementptr inbounds i8, ptr %pcoder, i64 64, !dbg !470
  %21 = load i32, ptr %crc32, align 8, !dbg !470
  %call85 = tail call i32 @lzma_crc32(ptr noundef %add.ptr, i64 noundef %sub, i32 noundef %21) #3, !dbg !471
  store i32 %call85, ptr %crc32, align 8, !dbg !472
  store i32 7, ptr %pcoder, align 8, !dbg !473
  %in_pos.promoted.pre = load i64, ptr %in_pos, align 8
  br label %sw.bb88, !dbg !474

sw.bb88:                                          ; preds = %while.body, %if.end84
  %in_pos.promoted = phi i64 [ %in_pos.promoted.pre, %if.end84 ], [ %2, %while.body ]
  %crc3294 = getelementptr inbounds i8, ptr %pcoder, i64 64
  br label %do.body89, !dbg !475

do.body89:                                        ; preds = %do.cond103, %sw.bb88
  %22 = phi i64 [ %inc96, %do.cond103 ], [ %in_pos.promoted, %sw.bb88 ]
  %cmp90 = icmp eq i64 %22, %in_size, !dbg !476
  br i1 %cmp90, label %cleanup117, label %if.end93, !dbg !479

if.end93:                                         ; preds = %do.body89
  %23 = load i32, ptr %crc3294, align 8, !dbg !480
  %24 = load i64, ptr %pos68, align 8, !dbg !482
  %.tr = trunc i64 %24 to i32, !dbg !483
  %sh_prom = shl i32 %.tr, 3, !dbg !483
  %shr = lshr i32 %23, %sh_prom, !dbg !483
  %inc96 = add i64 %22, 1, !dbg !484
  store i64 %inc96, ptr %in_pos, align 8, !dbg !484
  %arrayidx97 = getelementptr inbounds i8, ptr %in, i64 %22, !dbg !485
  %25 = load i8, ptr %arrayidx97, align 1, !dbg !485
  %26 = trunc i32 %shr to i8, !dbg !486
  %cmp99.not = icmp eq i8 %25, %26, !dbg !486
  br i1 %cmp99.not, label %do.cond103, label %cleanup117, !dbg !487

do.cond103:                                       ; preds = %if.end93
  %inc105 = add i64 %24, 1, !dbg !488
  store i64 %inc105, ptr %pos68, align 8, !dbg !488
  %cmp106 = icmp ult i64 %inc105, 4, !dbg !489
  br i1 %cmp106, label %do.body89, label %do.end108, !dbg !490, !llvm.loop !491

do.end108:                                        ; preds = %do.cond103
  %27 = load ptr, ptr %index65, align 8, !dbg !493
  %index_ptr = getelementptr inbounds i8, ptr %pcoder, i64 24, !dbg !494
  %28 = load ptr, ptr %index_ptr, align 8, !dbg !494
  store ptr %27, ptr %28, align 8, !dbg !495
  store ptr null, ptr %index65, align 8, !dbg !496
  br label %cleanup117, !dbg !497

sw.epilog.sink.split:                             ; preds = %if.then38, %do.end, %sw.bb, %if.end17
  %storemerge.sink = phi i32 [ %cond, %if.end17 ], [ 1, %sw.bb ], [ %cond59, %do.end ], [ 4, %if.then38 ]
  store i32 %storemerge.sink, ptr %pcoder, align 8, !dbg !498
  br label %sw.epilog, !dbg !499

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.then74
  %29 = phi i32 [ 6, %if.then74 ], [ %storemerge.sink, %sw.epilog.sink.split ]
    #dbg_value(i32 0, !389, !DIExpression(), !399)
  %30 = load i64, ptr %in_pos, align 8, !dbg !499
  %cmp = icmp ult i64 %30, %in_size, !dbg !401
  br i1 %cmp, label %while.body, label %out111.loopexit, !dbg !402, !llvm.loop !500

out111.loopexit:                                  ; preds = %sw.bb23, %sw.bb11, %sw.epilog, %sw.bb4
  %ret.3.ph = phi i32 [ %call, %sw.bb4 ], [ 0, %sw.epilog ], [ 6, %sw.bb11 ], [ %call29, %sw.bb23 ]
  %.pre207 = load i64, ptr %in_pos, align 8, !dbg !502
  br label %out111, !dbg !503

out111:                                           ; preds = %out111.loopexit, %entry
  %31 = phi i64 [ %0, %entry ], [ %.pre207, %out111.loopexit ], !dbg !502
  %ret.3 = phi i32 [ 0, %entry ], [ %ret.3.ph, %out111.loopexit ], !dbg !399
    #dbg_value(i32 %ret.3, !389, !DIExpression(), !399)
    #dbg_label(!398, !504)
  %add.ptr112 = getelementptr inbounds i8, ptr %in, i64 %0, !dbg !503
  %sub113 = sub i64 %31, %0, !dbg !505
  %crc32114 = getelementptr inbounds i8, ptr %pcoder, i64 64, !dbg !506
  %32 = load i32, ptr %crc32114, align 8, !dbg !506
  %call115 = tail call i32 @lzma_crc32(ptr noundef %add.ptr112, i64 noundef %sub113, i32 noundef %32) #3, !dbg !507
  store i32 %call115, ptr %crc32114, align 8, !dbg !508
  br label %cleanup117, !dbg !509

cleanup117:                                       ; preds = %if.then38, %do.body, %while.body, %if.then74, %sw.bb, %if.end93, %do.body89, %out111, %do.end108
  %retval.5 = phi i32 [ 1, %do.end108 ], [ %ret.3, %out111 ], [ 9, %if.end93 ], [ 0, %do.body89 ], [ %call51, %do.body ], [ 9, %if.then38 ], [ 11, %while.body ], [ 9, %if.then74 ], [ 9, %sw.bb ]
  ret i32 %retval.5, !dbg !510
}

declare !dbg !511 void @lzma_index_end(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !514 i64 @lzma_index_memusage(i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !517 void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !520 ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @index_decoder_end(ptr noundef %pcoder, ptr noundef %allocator) #0 !dbg !523 {
entry:
    #dbg_value(ptr %pcoder, !525, !DIExpression(), !528)
    #dbg_value(ptr %allocator, !526, !DIExpression(), !528)
    #dbg_value(ptr %pcoder, !527, !DIExpression(), !528)
  %index = getelementptr inbounds i8, ptr %pcoder, i64 16, !dbg !529
  %0 = load ptr, ptr %index, align 8, !dbg !529
  tail call void @lzma_index_end(ptr noundef %0, ptr noundef %allocator) #3, !dbg !530
  tail call void @lzma_free(ptr noundef %pcoder, ptr noundef %allocator) #3, !dbg !531
  ret void, !dbg !532
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 7) i32 @index_decoder_memconfig(ptr nocapture noundef %pcoder, ptr nocapture noundef %memusage, ptr nocapture noundef writeonly %old_memlimit, i64 noundef %new_memlimit) #0 !dbg !533 {
entry:
    #dbg_value(ptr %pcoder, !535, !DIExpression(), !540)
    #dbg_value(ptr %memusage, !536, !DIExpression(), !540)
    #dbg_value(ptr %old_memlimit, !537, !DIExpression(), !540)
    #dbg_value(i64 %new_memlimit, !538, !DIExpression(), !540)
    #dbg_value(ptr %pcoder, !539, !DIExpression(), !540)
  %count = getelementptr inbounds i8, ptr %pcoder, i64 32, !dbg !541
  %0 = load i64, ptr %count, align 8, !dbg !541
  %call = tail call i64 @lzma_index_memusage(i64 noundef 1, i64 noundef %0) #3, !dbg !542
  store i64 %call, ptr %memusage, align 8, !dbg !543
  %memlimit = getelementptr inbounds i8, ptr %pcoder, i64 8, !dbg !544
  %1 = load i64, ptr %memlimit, align 8, !dbg !544
  store i64 %1, ptr %old_memlimit, align 8, !dbg !545
  %cmp.not = icmp eq i64 %new_memlimit, 0, !dbg !546
  br i1 %cmp.not, label %cleanup, label %if.then, !dbg !548

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %memusage, align 8, !dbg !549
  %cmp1 = icmp ugt i64 %2, %new_memlimit, !dbg !552
  br i1 %cmp1, label %cleanup, label %if.end, !dbg !553

if.end:                                           ; preds = %if.then
  store i64 %new_memlimit, ptr %memlimit, align 8, !dbg !554
  br label %cleanup, !dbg !555

cleanup:                                          ; preds = %entry, %if.end, %if.then
  %retval.0 = phi i32 [ 6, %if.then ], [ 0, %if.end ], [ 0, %entry ], !dbg !540
  ret i32 %retval.0, !dbg !556
}

declare !dbg !557 void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !560 ptr @lzma_index_init(ptr noundef) local_unnamed_addr #2

declare !dbg !563 i32 @lzma_vli_decode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !566 void @lzma_index_prealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !570 i32 @lzma_index_append(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !573 i32 @lzma_index_padding_size(ptr noundef) local_unnamed_addr #2

declare !dbg !578 i32 @lzma_crc32(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!164, !165, !166, !167, !168, !169, !170}
!llvm.ident = !{!171}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !162, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "liblzma/common/index_decoder.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "76d3749acf8859145be85842b26a6ac3")
!2 = !{!3, !19, !25, !32, !131, !134}
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
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !34, file: !33, line: 187, baseType: !5, size: 32, elements: !124)
!33 = !DIFile(filename: "liblzma/common/common.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_internal_s", file: !33, line: 179, size: 704, elements: !35)
!35 = !{!36, !116, !117, !118, !123}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !34, file: !33, line: 181, baseType: !37, size: 512)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_next_coder", file: !33, line: 80, baseType: !38)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_next_coder_s", file: !33, line: 124, size: 512, elements: !39)
!39 = !{!40, !43, !51, !54, !87, !92, !99, !104}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !38, file: !33, line: 126, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_coder", file: !33, line: 78, baseType: null)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !38, file: !33, line: 130, baseType: !44, size: 64, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !45, line: 63, baseType: !46)
!45 = !DIFile(filename: "liblzma/api/lzma/vli.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !47, line: 27, baseType: !48)
!47 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !49, line: 45, baseType: !50)
!49 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!50 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !38, file: !33, line: 136, baseType: !52, size: 64, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !53, line: 90, baseType: !50)
!53 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!54 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !38, file: !33, line: 139, baseType: !55, size: 64, offset: 192)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_code_function", file: !33, line: 94, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DISubroutineType(types: !58)
!58 = !{!59, !41, !60, !76, !82, !69, !84, !82, !69, !86}
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !4, line: 403, baseType: !62)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 341, size: 192, elements: !63)
!63 = !{!64, !71, !75}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !62, file: !4, line: 376, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{!68, !68, !69, !69}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !70, line: 18, baseType: !50)
!70 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!71 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !62, file: !4, line: 390, baseType: !72, size: 64, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DISubroutineType(types: !74)
!74 = !{null, !68, !68}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !62, file: !4, line: 401, baseType: !68, size: 64, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !77)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !47, line: 24, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !49, line: 38, baseType: !81)
!81 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!82 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !4, line: 322, baseType: !19)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !38, file: !33, line: 144, baseType: !88, size: 64, offset: 256)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_end_function", file: !33, line: 102, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DISubroutineType(types: !91)
!91 = !{null, !41, !60}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "get_check", scope: !38, file: !33, line: 148, baseType: !93, size: 64, offset: 320)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DISubroutineType(types: !95)
!95 = !{!96, !97}
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !26, line: 55, baseType: !25)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "memconfig", scope: !38, file: !33, line: 152, baseType: !100, size: 64, offset: 384)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DISubroutineType(types: !102)
!102 = !{!59, !41, !103, !103, !46}
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !38, file: !33, line: 157, baseType: !105, size: 64, offset: 448)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DISubroutineType(types: !107)
!107 = !{!59, !41, !60, !108, !108}
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !111, line: 65, baseType: !112)
!111 = !DIFile(filename: "liblzma/api/lzma/filter.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !111, line: 43, size: 128, elements: !113)
!113 = !{!114, !115}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !112, file: !111, line: 54, baseType: !44, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !112, file: !111, line: 63, baseType: !68, size: 64, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !34, file: !33, line: 194, baseType: !32, size: 32, offset: 512)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !34, file: !33, line: 199, baseType: !69, size: 64, offset: 576)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "supported_actions", scope: !34, file: !33, line: 202, baseType: !119, size: 32, offset: 640)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 32, elements: !121)
!120 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!121 = !{!122}
!122 = !DISubrange(count: 4)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "allow_buf_error", scope: !34, file: !33, line: 206, baseType: !120, size: 8, offset: 672)
!124 = !{!125, !126, !127, !128, !129, !130}
!125 = !DIEnumerator(name: "ISEQ_RUN", value: 0)
!126 = !DIEnumerator(name: "ISEQ_SYNC_FLUSH", value: 1)
!127 = !DIEnumerator(name: "ISEQ_FULL_FLUSH", value: 2)
!128 = !DIEnumerator(name: "ISEQ_FINISH", value: 3)
!129 = !DIEnumerator(name: "ISEQ_END", value: 4)
!130 = !DIEnumerator(name: "ISEQ_ERROR", value: 5)
!131 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 44, baseType: !5, size: 32, elements: !132)
!132 = !{!133}
!133 = !DIEnumerator(name: "LZMA_RESERVED_ENUM", value: 0)
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !135, file: !1, line: 18, baseType: !5, size: 32, elements: !153)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_coder_s", file: !1, line: 17, size: 576, elements: !136)
!136 = !{!137, !138, !139, !144, !146, !147, !148, !149, !150}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !135, file: !1, line: 27, baseType: !134, size: 32)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "memlimit", scope: !135, file: !1, line: 30, baseType: !46, size: 64, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !135, file: !1, line: 33, baseType: !140, size: 64, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_index", file: !142, line: 37, baseType: !143)
!142 = !DIFile(filename: "liblzma/api/lzma/index.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "923fbd07d3b348bf7a676d089b5c066f")
!143 = !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_index_s", file: !142, line: 37, flags: DIFlagFwdDecl)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "index_ptr", scope: !135, file: !1, line: 37, baseType: !145, size: 64, offset: 192)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !135, file: !1, line: 40, baseType: !44, size: 64, offset: 256)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "unpadded_size", scope: !135, file: !1, line: 43, baseType: !44, size: 64, offset: 320)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_size", scope: !135, file: !1, line: 46, baseType: !44, size: 64, offset: 384)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !135, file: !1, line: 49, baseType: !69, size: 64, offset: 448)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "crc32", scope: !135, file: !1, line: 52, baseType: !151, size: 32, offset: 512)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !47, line: 26, baseType: !152)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !49, line: 42, baseType: !5)
!153 = !{!154, !155, !156, !157, !158, !159, !160, !161}
!154 = !DIEnumerator(name: "SEQ_INDICATOR", value: 0)
!155 = !DIEnumerator(name: "SEQ_COUNT", value: 1)
!156 = !DIEnumerator(name: "SEQ_MEMUSAGE", value: 2)
!157 = !DIEnumerator(name: "SEQ_UNPADDED", value: 3)
!158 = !DIEnumerator(name: "SEQ_UNCOMPRESSED", value: 4)
!159 = !DIEnumerator(name: "SEQ_PADDING_INIT", value: 5)
!160 = !DIEnumerator(name: "SEQ_PADDING", value: 6)
!161 = !DIEnumerator(name: "SEQ_CRC32", value: 7)
!162 = !{!68, !52, !163}
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!164 = !{i32 7, !"Dwarf Version", i32 5}
!165 = !{i32 2, !"Debug Info Version", i32 3}
!166 = !{i32 1, !"wchar_size", i32 4}
!167 = !{i32 8, !"PIC Level", i32 2}
!168 = !{i32 7, !"PIE Level", i32 2}
!169 = !{i32 7, !"uwtable", i32 2}
!170 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!171 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!172 = distinct !DISubprogram(name: "lzma_index_decoder", scope: !1, file: !1, line: 294, type: !173, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !200)
!173 = !DISubroutineType(types: !174)
!174 = !{!59, !175, !145, !46}
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_stream", file: !4, line: 490, baseType: !177)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 453, size: 1088, elements: !178)
!178 = !{!179, !180, !181, !182, !183, !184, !185, !186, !189, !190, !191, !192, !193, !194, !195, !196, !197, !199}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !177, file: !4, line: 454, baseType: !77, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !177, file: !4, line: 455, baseType: !69, size: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "total_in", scope: !177, file: !4, line: 456, baseType: !46, size: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !177, file: !4, line: 458, baseType: !85, size: 64, offset: 192)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !177, file: !4, line: 459, baseType: !69, size: 64, offset: 256)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "total_out", scope: !177, file: !4, line: 460, baseType: !46, size: 64, offset: 320)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !177, file: !4, line: 468, baseType: !60, size: 64, offset: 384)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !177, file: !4, line: 471, baseType: !187, size: 64, offset: 448)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_internal", file: !4, line: 411, baseType: !34)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !177, file: !4, line: 479, baseType: !68, size: 64, offset: 512)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !177, file: !4, line: 480, baseType: !68, size: 64, offset: 576)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !177, file: !4, line: 481, baseType: !68, size: 64, offset: 640)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr4", scope: !177, file: !4, line: 482, baseType: !68, size: 64, offset: 704)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !177, file: !4, line: 483, baseType: !46, size: 64, offset: 768)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !177, file: !4, line: 484, baseType: !46, size: 64, offset: 832)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !177, file: !4, line: 485, baseType: !69, size: 64, offset: 896)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !177, file: !4, line: 486, baseType: !69, size: 64, offset: 960)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !177, file: !4, line: 487, baseType: !198, size: 32, offset: 1024)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !4, line: 46, baseType: !131)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !177, file: !4, line: 488, baseType: !198, size: 32, offset: 1056)
!200 = !{!201, !202, !203, !204, !208}
!201 = !DILocalVariable(name: "strm", arg: 1, scope: !172, file: !1, line: 294, type: !175)
!202 = !DILocalVariable(name: "i", arg: 2, scope: !172, file: !1, line: 294, type: !145)
!203 = !DILocalVariable(name: "memlimit", arg: 3, scope: !172, file: !1, line: 294, type: !46)
!204 = !DILocalVariable(name: "ret_", scope: !205, file: !1, line: 296, type: !207)
!205 = distinct !DILexicalBlock(scope: !206, file: !1, line: 296, column: 2)
!206 = distinct !DILexicalBlock(scope: !172, file: !1, line: 296, column: 2)
!207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!208 = !DILocalVariable(name: "ret_", scope: !206, file: !1, line: 296, type: !207)
!209 = !DILocation(line: 0, scope: !172)
!210 = !DILocation(line: 296, column: 2, scope: !205)
!211 = !DILocation(line: 0, scope: !205)
!212 = !DILocation(line: 296, column: 2, scope: !213)
!213 = distinct !DILexicalBlock(scope: !205, file: !1, line: 296, column: 2)
!214 = !DILocation(line: 296, column: 2, scope: !206)
!215 = !DILocation(line: 0, scope: !206)
!216 = !DILocation(line: 296, column: 2, scope: !217)
!217 = distinct !DILexicalBlock(scope: !206, file: !1, line: 296, column: 2)
!218 = !DILocation(line: 296, column: 2, scope: !219)
!219 = distinct !DILexicalBlock(scope: !217, file: !1, line: 296, column: 2)
!220 = !DILocation(line: 298, column: 8, scope: !172)
!221 = !DILocation(line: 298, column: 18, scope: !172)
!222 = !DILocation(line: 298, column: 46, scope: !172)
!223 = !DILocation(line: 299, column: 8, scope: !172)
!224 = !DILocation(line: 299, column: 2, scope: !172)
!225 = !DILocation(line: 299, column: 49, scope: !172)
!226 = !DILocation(line: 301, column: 2, scope: !172)
!227 = !DILocation(line: 302, column: 1, scope: !172)
!228 = !DISubprogram(name: "lzma_strm_init", scope: !33, file: !33, line: 220, type: !229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!229 = !DISubroutineType(types: !230)
!230 = !{!59, !175}
!231 = distinct !DISubprogram(name: "index_decoder_init", scope: !1, file: !1, line: 268, type: !232, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !235)
!232 = !DISubroutineType(types: !233)
!233 = !{!59, !234, !60, !145, !46}
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!235 = !{!236, !237, !238, !239}
!236 = !DILocalVariable(name: "next", arg: 1, scope: !231, file: !1, line: 268, type: !234)
!237 = !DILocalVariable(name: "allocator", arg: 2, scope: !231, file: !1, line: 268, type: !60)
!238 = !DILocalVariable(name: "i", arg: 3, scope: !231, file: !1, line: 269, type: !145)
!239 = !DILocalVariable(name: "memlimit", arg: 4, scope: !231, file: !1, line: 269, type: !46)
!240 = !DILocation(line: 0, scope: !231)
!241 = !DILocation(line: 271, column: 2, scope: !242)
!242 = distinct !DILexicalBlock(scope: !243, file: !1, line: 271, column: 2)
!243 = distinct !DILexicalBlock(scope: !231, file: !1, line: 271, column: 2)
!244 = !DILocation(line: 271, column: 2, scope: !243)
!245 = !DILocation(line: 273, column: 8, scope: !246)
!246 = distinct !DILexicalBlock(scope: !231, file: !1, line: 273, column: 6)
!247 = !DILocation(line: 273, column: 16, scope: !246)
!248 = !DILocation(line: 276, column: 12, scope: !249)
!249 = distinct !DILexicalBlock(scope: !231, file: !1, line: 276, column: 6)
!250 = !DILocation(line: 276, column: 18, scope: !249)
!251 = !DILocation(line: 276, column: 6, scope: !231)
!252 = !DILocation(line: 277, column: 17, scope: !253)
!253 = distinct !DILexicalBlock(scope: !249, file: !1, line: 276, column: 27)
!254 = !DILocation(line: 277, column: 15, scope: !253)
!255 = !DILocation(line: 278, column: 19, scope: !256)
!256 = distinct !DILexicalBlock(scope: !253, file: !1, line: 278, column: 7)
!257 = !DILocation(line: 278, column: 7, scope: !253)
!258 = !DILocation(line: 281, column: 9, scope: !253)
!259 = !DILocation(line: 281, column: 14, scope: !253)
!260 = !DILocation(line: 282, column: 9, scope: !253)
!261 = !DILocation(line: 282, column: 13, scope: !253)
!262 = !DILocation(line: 283, column: 9, scope: !253)
!263 = !DILocation(line: 283, column: 19, scope: !253)
!264 = !DILocation(line: 284, column: 40, scope: !253)
!265 = !DILocation(line: 284, column: 46, scope: !253)
!266 = !DILocation(line: 285, column: 2, scope: !253)
!267 = !DILocation(line: 286, column: 55, scope: !268)
!268 = distinct !DILexicalBlock(scope: !249, file: !1, line: 285, column: 9)
!269 = !DILocation(line: 286, column: 3, scope: !268)
!270 = !DILocation(line: 289, column: 35, scope: !231)
!271 = !DILocalVariable(name: "pcoder", arg: 1, scope: !272, file: !1, line: 240, type: !41)
!272 = distinct !DISubprogram(name: "index_decoder_reset", scope: !1, file: !1, line: 240, type: !273, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !275)
!273 = !DISubroutineType(types: !274)
!274 = !{!59, !41, !60, !145, !46}
!275 = !{!271, !276, !277, !278, !279}
!276 = !DILocalVariable(name: "allocator", arg: 2, scope: !272, file: !1, line: 240, type: !60)
!277 = !DILocalVariable(name: "i", arg: 3, scope: !272, file: !1, line: 241, type: !145)
!278 = !DILocalVariable(name: "memlimit", arg: 4, scope: !272, file: !1, line: 241, type: !46)
!279 = !DILocalVariable(name: "coder", scope: !272, file: !1, line: 243, type: !163)
!280 = !DILocation(line: 0, scope: !272, inlinedAt: !281)
!281 = distinct !DILocation(line: 289, column: 9, scope: !231)
!282 = !DILocation(line: 248, column: 9, scope: !272, inlinedAt: !281)
!283 = !DILocation(line: 248, column: 19, scope: !272, inlinedAt: !281)
!284 = !DILocation(line: 249, column: 5, scope: !272, inlinedAt: !281)
!285 = !DILocation(line: 252, column: 17, scope: !272, inlinedAt: !281)
!286 = !DILocation(line: 252, column: 9, scope: !272, inlinedAt: !281)
!287 = !DILocation(line: 252, column: 15, scope: !272, inlinedAt: !281)
!288 = !DILocation(line: 253, column: 19, scope: !289, inlinedAt: !281)
!289 = distinct !DILexicalBlock(scope: !272, file: !1, line: 253, column: 6)
!290 = !DILocation(line: 253, column: 6, scope: !272, inlinedAt: !281)
!291 = !DILocation(line: 257, column: 18, scope: !272, inlinedAt: !281)
!292 = !DILocation(line: 258, column: 9, scope: !272, inlinedAt: !281)
!293 = !DILocation(line: 258, column: 18, scope: !272, inlinedAt: !281)
!294 = !DILocation(line: 259, column: 9, scope: !272, inlinedAt: !281)
!295 = !DILocation(line: 259, column: 15, scope: !272, inlinedAt: !281)
!296 = !DILocation(line: 260, column: 9, scope: !272, inlinedAt: !281)
!297 = !DILocation(line: 260, column: 13, scope: !272, inlinedAt: !281)
!298 = !DILocation(line: 261, column: 9, scope: !272, inlinedAt: !281)
!299 = !DILocation(line: 261, column: 15, scope: !272, inlinedAt: !281)
!300 = !DILocation(line: 263, column: 2, scope: !272, inlinedAt: !281)
!301 = !DILocation(line: 290, column: 1, scope: !231)
!302 = !DISubprogram(name: "lzma_end", scope: !4, file: !4, line: 546, type: !303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!303 = !DISubroutineType(types: !304)
!304 = !{null, !175}
!305 = distinct !DISubprogram(name: "lzma_index_buffer_decode", scope: !1, file: !1, line: 306, type: !306, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !308)
!306 = !DISubroutineType(types: !307)
!307 = !{!59, !145, !103, !60, !77, !83, !69}
!308 = !{!309, !310, !311, !312, !313, !314, !315, !316, !318, !320}
!309 = !DILocalVariable(name: "i", arg: 1, scope: !305, file: !1, line: 307, type: !145)
!310 = !DILocalVariable(name: "memlimit", arg: 2, scope: !305, file: !1, line: 307, type: !103)
!311 = !DILocalVariable(name: "allocator", arg: 3, scope: !305, file: !1, line: 307, type: !60)
!312 = !DILocalVariable(name: "in", arg: 4, scope: !305, file: !1, line: 308, type: !77)
!313 = !DILocalVariable(name: "in_pos", arg: 5, scope: !305, file: !1, line: 308, type: !83)
!314 = !DILocalVariable(name: "in_size", arg: 6, scope: !305, file: !1, line: 308, type: !69)
!315 = !DILocalVariable(name: "coder", scope: !305, file: !1, line: 316, type: !135)
!316 = !DILocalVariable(name: "ret_", scope: !317, file: !1, line: 317, type: !207)
!317 = distinct !DILexicalBlock(scope: !305, file: !1, line: 317, column: 2)
!318 = !DILocalVariable(name: "in_start", scope: !305, file: !1, line: 321, type: !319)
!319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!320 = !DILocalVariable(name: "ret", scope: !305, file: !1, line: 324, type: !59)
!321 = distinct !DIAssignID()
!322 = !DILocation(line: 0, scope: !305)
!323 = !DILocation(line: 311, column: 8, scope: !324)
!324 = distinct !DILexicalBlock(scope: !305, file: !1, line: 311, column: 6)
!325 = !DILocation(line: 311, column: 16, scope: !324)
!326 = !DILocation(line: 312, column: 39, scope: !324)
!327 = !DILocation(line: 312, column: 47, scope: !324)
!328 = !DILocation(line: 311, column: 6, scope: !305)
!329 = !DILocation(line: 316, column: 2, scope: !305)
!330 = !DILocation(line: 317, column: 2, scope: !317)
!331 = !DILocation(line: 0, scope: !272, inlinedAt: !332)
!332 = distinct !DILocation(line: 317, column: 2, scope: !317)
!333 = !DILocation(line: 248, column: 9, scope: !272, inlinedAt: !332)
!334 = !DILocation(line: 248, column: 19, scope: !272, inlinedAt: !332)
!335 = distinct !DIAssignID()
!336 = !DILocation(line: 249, column: 5, scope: !272, inlinedAt: !332)
!337 = !DILocation(line: 252, column: 17, scope: !272, inlinedAt: !332)
!338 = !DILocation(line: 252, column: 9, scope: !272, inlinedAt: !332)
!339 = !DILocation(line: 252, column: 15, scope: !272, inlinedAt: !332)
!340 = distinct !DIAssignID()
!341 = !DILocation(line: 253, column: 19, scope: !289, inlinedAt: !332)
!342 = !DILocation(line: 253, column: 6, scope: !272, inlinedAt: !332)
!343 = !DILocation(line: 257, column: 18, scope: !272, inlinedAt: !332)
!344 = distinct !DIAssignID()
!345 = !DILocation(line: 258, column: 9, scope: !272, inlinedAt: !332)
!346 = !DILocation(line: 258, column: 18, scope: !272, inlinedAt: !332)
!347 = distinct !DIAssignID()
!348 = !DILocation(line: 259, column: 9, scope: !272, inlinedAt: !332)
!349 = !DILocation(line: 259, column: 15, scope: !272, inlinedAt: !332)
!350 = distinct !DIAssignID()
!351 = !DILocation(line: 260, column: 9, scope: !272, inlinedAt: !332)
!352 = !DILocation(line: 260, column: 13, scope: !272, inlinedAt: !332)
!353 = distinct !DIAssignID()
!354 = !DILocation(line: 261, column: 9, scope: !272, inlinedAt: !332)
!355 = !DILocation(line: 261, column: 15, scope: !272, inlinedAt: !332)
!356 = distinct !DIAssignID()
!357 = !DILocation(line: 0, scope: !317)
!358 = !DILocation(line: 321, column: 26, scope: !305)
!359 = !DILocation(line: 324, column: 17, scope: !305)
!360 = !DILocation(line: 327, column: 10, scope: !361)
!361 = distinct !DILexicalBlock(scope: !305, file: !1, line: 327, column: 6)
!362 = !DILocation(line: 327, column: 6, scope: !305)
!363 = !DILocation(line: 332, column: 24, scope: !364)
!364 = distinct !DILexicalBlock(scope: !361, file: !1, line: 329, column: 9)
!365 = !DILocation(line: 332, column: 3, scope: !364)
!366 = !DILocation(line: 333, column: 11, scope: !364)
!367 = !DILocation(line: 335, column: 7, scope: !364)
!368 = !DILocation(line: 344, column: 45, scope: !369)
!369 = distinct !DILexicalBlock(scope: !370, file: !1, line: 341, column: 42)
!370 = distinct !DILexicalBlock(scope: !371, file: !1, line: 341, column: 14)
!371 = distinct !DILexicalBlock(scope: !364, file: !1, line: 335, column: 7)
!372 = !DILocation(line: 344, column: 16, scope: !369)
!373 = !DILocation(line: 344, column: 14, scope: !369)
!374 = !DILocation(line: 345, column: 3, scope: !369)
!375 = !DILocation(line: 349, column: 1, scope: !305)
!376 = distinct !DISubprogram(name: "index_decode", scope: !1, file: !1, line: 57, type: !57, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !377)
!377 = !{!378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !394, !398}
!378 = !DILocalVariable(name: "pcoder", arg: 1, scope: !376, file: !1, line: 57, type: !41)
!379 = !DILocalVariable(name: "allocator", arg: 2, scope: !376, file: !1, line: 57, type: !60)
!380 = !DILocalVariable(name: "in", arg: 3, scope: !376, file: !1, line: 58, type: !76)
!381 = !DILocalVariable(name: "in_pos", arg: 4, scope: !376, file: !1, line: 58, type: !82)
!382 = !DILocalVariable(name: "in_size", arg: 5, scope: !376, file: !1, line: 59, type: !69)
!383 = !DILocalVariable(name: "out", arg: 6, scope: !376, file: !1, line: 60, type: !84)
!384 = !DILocalVariable(name: "out_pos", arg: 7, scope: !376, file: !1, line: 61, type: !82)
!385 = !DILocalVariable(name: "out_size", arg: 8, scope: !376, file: !1, line: 62, type: !69)
!386 = !DILocalVariable(name: "action", arg: 9, scope: !376, file: !1, line: 63, type: !86)
!387 = !DILocalVariable(name: "coder", scope: !376, file: !1, line: 66, type: !163)
!388 = !DILocalVariable(name: "in_start", scope: !376, file: !1, line: 67, type: !319)
!389 = !DILocalVariable(name: "ret", scope: !376, file: !1, line: 68, type: !59)
!390 = !DILocalVariable(name: "size", scope: !391, file: !1, line: 116, type: !393)
!391 = distinct !DILexicalBlock(scope: !392, file: !1, line: 115, column: 25)
!392 = distinct !DILexicalBlock(scope: !376, file: !1, line: 71, column: 27)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!394 = !DILocalVariable(name: "ret_", scope: !395, file: !1, line: 139, type: !207)
!395 = distinct !DILexicalBlock(scope: !396, file: !1, line: 139, column: 4)
!396 = distinct !DILexicalBlock(scope: !397, file: !1, line: 137, column: 10)
!397 = distinct !DILexicalBlock(scope: !391, file: !1, line: 128, column: 7)
!398 = !DILabel(scope: !376, name: "out", file: !1, line: 201)
!399 = !DILocation(line: 0, scope: !376)
!400 = !DILocation(line: 67, column: 26, scope: !376)
!401 = !DILocation(line: 70, column: 17, scope: !376)
!402 = !DILocation(line: 70, column: 2, scope: !376)
!403 = !DILocation(line: 71, column: 17, scope: !376)
!404 = !DILocation(line: 71, column: 2, scope: !376)
!405 = !DILocation(line: 160, column: 14, scope: !406)
!406 = distinct !DILexicalBlock(scope: !392, file: !1, line: 160, column: 7)
!407 = !DILocation(line: 82, column: 19, scope: !408)
!408 = distinct !DILexicalBlock(scope: !392, file: !1, line: 82, column: 7)
!409 = !DILocation(line: 82, column: 7, scope: !408)
!410 = !DILocation(line: 82, column: 23, scope: !408)
!411 = !DILocation(line: 82, column: 7, scope: !392)
!412 = !DILocation(line: 89, column: 9, scope: !392)
!413 = !DILocation(line: 91, column: 11, scope: !414)
!414 = distinct !DILexicalBlock(scope: !392, file: !1, line: 91, column: 7)
!415 = !DILocation(line: 91, column: 7, scope: !392)
!416 = !DILocation(line: 94, column: 14, scope: !392)
!417 = !DILocation(line: 95, column: 19, scope: !392)
!418 = !DILocation(line: 95, column: 3, scope: !392)
!419 = !DILocation(line: 100, column: 37, scope: !420)
!420 = distinct !DILexicalBlock(scope: !392, file: !1, line: 100, column: 7)
!421 = !DILocation(line: 100, column: 7, scope: !420)
!422 = !DILocation(line: 100, column: 53, scope: !420)
!423 = !DILocation(line: 100, column: 44, scope: !420)
!424 = !DILocation(line: 100, column: 7, scope: !392)
!425 = !DILocation(line: 107, column: 30, scope: !392)
!426 = !DILocation(line: 107, column: 44, scope: !392)
!427 = !DILocation(line: 107, column: 3, scope: !392)
!428 = !DILocation(line: 110, column: 28, scope: !392)
!429 = !DILocation(line: 110, column: 34, scope: !392)
!430 = !DILocation(line: 110, column: 21, scope: !392)
!431 = !DILocation(line: 112, column: 3, scope: !392)
!432 = !DILocation(line: 116, column: 36, scope: !391)
!433 = !DILocation(line: 116, column: 20, scope: !391)
!434 = !DILocation(line: 0, scope: !391)
!435 = !DILocation(line: 120, column: 9, scope: !391)
!436 = !DILocation(line: 122, column: 11, scope: !437)
!437 = distinct !DILexicalBlock(scope: !391, file: !1, line: 122, column: 7)
!438 = !DILocation(line: 122, column: 7, scope: !391)
!439 = !DILocation(line: 126, column: 14, scope: !391)
!440 = !DILocation(line: 128, column: 14, scope: !397)
!441 = !DILocation(line: 128, column: 23, scope: !397)
!442 = !DILocation(line: 128, column: 7, scope: !391)
!443 = !DILocation(line: 131, column: 15, scope: !444)
!444 = distinct !DILexicalBlock(scope: !445, file: !1, line: 131, column: 8)
!445 = distinct !DILexicalBlock(scope: !397, file: !1, line: 128, column: 40)
!446 = !DILocation(line: 132, column: 6, scope: !444)
!447 = !DILocation(line: 139, column: 4, scope: !395)
!448 = !DILocation(line: 0, scope: !395)
!449 = !DILocation(line: 139, column: 4, scope: !450)
!450 = distinct !DILexicalBlock(scope: !395, file: !1, line: 139, column: 4)
!451 = !DILocation(line: 145, column: 22, scope: !396)
!452 = !DILocation(line: 145, column: 37, scope: !396)
!453 = !DILocation(line: 154, column: 47, scope: !392)
!454 = !DILocation(line: 154, column: 16, scope: !392)
!455 = !DILocation(line: 154, column: 14, scope: !392)
!456 = !DILocation(line: 155, column: 19, scope: !392)
!457 = !DILocation(line: 155, column: 3, scope: !392)
!458 = !DILocation(line: 160, column: 18, scope: !406)
!459 = !DILocation(line: 160, column: 7, scope: !392)
!460 = !DILocation(line: 161, column: 4, scope: !461)
!461 = distinct !DILexicalBlock(scope: !406, file: !1, line: 160, column: 23)
!462 = !DILocation(line: 162, column: 20, scope: !463)
!463 = distinct !DILexicalBlock(scope: !461, file: !1, line: 162, column: 8)
!464 = !DILocation(line: 162, column: 8, scope: !463)
!465 = !DILocation(line: 162, column: 24, scope: !463)
!466 = !DILocation(line: 162, column: 8, scope: !461)
!467 = !DILocation(line: 169, column: 32, scope: !392)
!468 = !DILocation(line: 170, column: 5, scope: !392)
!469 = !DILocation(line: 170, column: 13, scope: !392)
!470 = !DILocation(line: 170, column: 32, scope: !392)
!471 = !DILocation(line: 169, column: 18, scope: !392)
!472 = !DILocation(line: 169, column: 16, scope: !392)
!473 = !DILocation(line: 172, column: 19, scope: !392)
!474 = !DILocation(line: 172, column: 3, scope: !392)
!475 = !DILocation(line: 177, column: 3, scope: !392)
!476 = !DILocation(line: 178, column: 16, scope: !477)
!477 = distinct !DILexicalBlock(scope: !478, file: !1, line: 178, column: 8)
!478 = distinct !DILexicalBlock(scope: !392, file: !1, line: 177, column: 6)
!479 = !DILocation(line: 178, column: 8, scope: !478)
!480 = !DILocation(line: 181, column: 17, scope: !481)
!481 = distinct !DILexicalBlock(scope: !478, file: !1, line: 181, column: 8)
!482 = !DILocation(line: 181, column: 34, scope: !481)
!483 = !DILocation(line: 181, column: 23, scope: !481)
!484 = !DILocation(line: 182, column: 21, scope: !481)
!485 = !DILocation(line: 182, column: 9, scope: !481)
!486 = !DILocation(line: 182, column: 6, scope: !481)
!487 = !DILocation(line: 181, column: 8, scope: !478)
!488 = !DILocation(line: 185, column: 12, scope: !392)
!489 = !DILocation(line: 185, column: 25, scope: !392)
!490 = !DILocation(line: 185, column: 3, scope: !478)
!491 = distinct !{!491, !475, !492}
!492 = !DILocation(line: 185, column: 28, scope: !392)
!493 = !DILocation(line: 189, column: 30, scope: !392)
!494 = !DILocation(line: 189, column: 11, scope: !392)
!495 = !DILocation(line: 189, column: 21, scope: !392)
!496 = !DILocation(line: 192, column: 16, scope: !392)
!497 = !DILocation(line: 194, column: 3, scope: !392)
!498 = !DILocation(line: 0, scope: !392)
!499 = !DILocation(line: 70, column: 9, scope: !376)
!500 = distinct !{!500, !402, !501}
!501 = !DILocation(line: 199, column: 2, scope: !376)
!502 = !DILocation(line: 204, column: 4, scope: !376)
!503 = !DILocation(line: 203, column: 31, scope: !376)
!504 = !DILocation(line: 201, column: 1, scope: !376)
!505 = !DILocation(line: 204, column: 12, scope: !376)
!506 = !DILocation(line: 204, column: 31, scope: !376)
!507 = !DILocation(line: 203, column: 17, scope: !376)
!508 = !DILocation(line: 203, column: 15, scope: !376)
!509 = !DILocation(line: 206, column: 2, scope: !376)
!510 = !DILocation(line: 207, column: 1, scope: !376)
!511 = !DISubprogram(name: "lzma_index_end", scope: !142, file: !142, line: 315, type: !512, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!512 = !DISubroutineType(types: !513)
!513 = !{null, !140, !60}
!514 = !DISubprogram(name: "lzma_index_memusage", scope: !142, file: !142, line: 286, type: !515, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!515 = !DISubroutineType(types: !516)
!516 = !{!46, !44, !44}
!517 = !DISubprogram(name: "lzma_next_end", scope: !33, file: !33, line: 237, type: !518, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!518 = !DISubroutineType(types: !519)
!519 = !{null, !234, !60}
!520 = !DISubprogram(name: "lzma_alloc", scope: !33, file: !33, line: 211, type: !521, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!521 = !DISubroutineType(types: !522)
!522 = !{!68, !69, !60}
!523 = distinct !DISubprogram(name: "index_decoder_end", scope: !1, file: !1, line: 211, type: !90, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !524)
!524 = !{!525, !526, !527}
!525 = !DILocalVariable(name: "pcoder", arg: 1, scope: !523, file: !1, line: 211, type: !41)
!526 = !DILocalVariable(name: "allocator", arg: 2, scope: !523, file: !1, line: 211, type: !60)
!527 = !DILocalVariable(name: "coder", scope: !523, file: !1, line: 213, type: !163)
!528 = !DILocation(line: 0, scope: !523)
!529 = !DILocation(line: 214, column: 24, scope: !523)
!530 = !DILocation(line: 214, column: 2, scope: !523)
!531 = !DILocation(line: 215, column: 2, scope: !523)
!532 = !DILocation(line: 217, column: 1, scope: !523)
!533 = distinct !DISubprogram(name: "index_decoder_memconfig", scope: !1, file: !1, line: 221, type: !101, scopeLine: 223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !534)
!534 = !{!535, !536, !537, !538, !539}
!535 = !DILocalVariable(name: "pcoder", arg: 1, scope: !533, file: !1, line: 221, type: !41)
!536 = !DILocalVariable(name: "memusage", arg: 2, scope: !533, file: !1, line: 221, type: !103)
!537 = !DILocalVariable(name: "old_memlimit", arg: 3, scope: !533, file: !1, line: 222, type: !103)
!538 = !DILocalVariable(name: "new_memlimit", arg: 4, scope: !533, file: !1, line: 222, type: !46)
!539 = !DILocalVariable(name: "coder", scope: !533, file: !1, line: 224, type: !163)
!540 = !DILocation(line: 0, scope: !533)
!541 = !DILocation(line: 225, column: 44, scope: !533)
!542 = !DILocation(line: 225, column: 14, scope: !533)
!543 = !DILocation(line: 225, column: 12, scope: !533)
!544 = !DILocation(line: 226, column: 25, scope: !533)
!545 = !DILocation(line: 226, column: 16, scope: !533)
!546 = !DILocation(line: 228, column: 19, scope: !547)
!547 = distinct !DILexicalBlock(scope: !533, file: !1, line: 228, column: 6)
!548 = !DILocation(line: 228, column: 6, scope: !533)
!549 = !DILocation(line: 229, column: 22, scope: !550)
!550 = distinct !DILexicalBlock(scope: !551, file: !1, line: 229, column: 7)
!551 = distinct !DILexicalBlock(scope: !547, file: !1, line: 228, column: 25)
!552 = !DILocation(line: 229, column: 20, scope: !550)
!553 = !DILocation(line: 229, column: 7, scope: !551)
!554 = !DILocation(line: 232, column: 19, scope: !551)
!555 = !DILocation(line: 233, column: 2, scope: !551)
!556 = !DILocation(line: 236, column: 1, scope: !533)
!557 = !DISubprogram(name: "lzma_free", scope: !33, file: !33, line: 215, type: !558, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!558 = !DISubroutineType(types: !559)
!559 = !{null, !68, !60}
!560 = !DISubprogram(name: "lzma_index_init", scope: !142, file: !142, line: 306, type: !561, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!561 = !DISubroutineType(types: !562)
!562 = !{!140, !60}
!563 = !DISubprogram(name: "lzma_vli_decode", scope: !45, file: !45, line: 154, type: !564, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!564 = !DISubroutineType(types: !565)
!565 = !{!59, !393, !83, !77, !83, !69}
!566 = !DISubprogram(name: "lzma_index_prealloc", scope: !567, file: !567, line: 34, type: !568, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!567 = !DIFile(filename: "liblzma/common/index.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "8c1da33cfb6445c1ed40367774c91b69")
!568 = !DISubroutineType(types: !569)
!569 = !{null, !140, !44}
!570 = !DISubprogram(name: "lzma_index_append", scope: !142, file: !142, line: 343, type: !571, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!571 = !DISubroutineType(types: !572)
!572 = !{!59, !140, !60, !44, !44}
!573 = !DISubprogram(name: "lzma_index_padding_size", scope: !567, file: !567, line: 28, type: !574, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!574 = !DISubroutineType(types: !575)
!575 = !{!151, !576}
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !141)
!578 = !DISubprogram(name: "lzma_crc32", scope: !26, file: !26, line: 119, type: !579, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!579 = !DISubroutineType(types: !580)
!580 = !{!151, !77, !69, !151}
