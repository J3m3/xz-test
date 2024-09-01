; ModuleID = 'liblzma/common/stream_decoder.c'
source_filename = "liblzma/common/stream_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_filter = type { i64, ptr }
%struct.lzma_stream_flags = type { i32, i64, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 12) i32 @lzma_stream_decoder_init(ptr noundef %next, ptr noundef %allocator, i64 noundef %memlimit, i32 noundef %flags) #0 !dbg !238 {
entry:
    #dbg_value(ptr %next, !243, !DIExpression(), !247)
    #dbg_value(ptr %allocator, !244, !DIExpression(), !247)
    #dbg_value(i64 %memlimit, !245, !DIExpression(), !247)
    #dbg_value(i32 %flags, !246, !DIExpression(), !247)
  %init = getelementptr inbounds i8, ptr %next, i64 16, !dbg !248
  %0 = load i64, ptr %init, align 8, !dbg !248
  %cmp.not = icmp eq i64 %0, ptrtoint (ptr @lzma_stream_decoder_init to i64), !dbg !248
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !251

if.then:                                          ; preds = %entry
  tail call void @lzma_next_end(ptr noundef nonnull %next, ptr noundef %allocator) #6, !dbg !248
  br label %if.end, !dbg !248

if.end:                                           ; preds = %if.then, %entry
  store i64 ptrtoint (ptr @lzma_stream_decoder_init to i64), ptr %init, align 8, !dbg !251
  %cmp2 = icmp eq i64 %memlimit, 0, !dbg !252
  br i1 %cmp2, label %return, label %if.end4, !dbg !254

if.end4:                                          ; preds = %if.end
  %tobool.not = icmp ult i32 %flags, 16, !dbg !255
  br i1 %tobool.not, label %if.end6, label %return, !dbg !257

if.end6:                                          ; preds = %if.end4
  %1 = load ptr, ptr %next, align 8, !dbg !258
  %cmp7 = icmp eq ptr %1, null, !dbg !260
  br i1 %cmp7, label %if.then8, label %if.end22, !dbg !261

if.then8:                                         ; preds = %if.end6
  %call = tail call ptr @lzma_alloc(i64 noundef 1400, ptr noundef %allocator) #6, !dbg !262
  store ptr %call, ptr %next, align 8, !dbg !264
  %cmp11 = icmp eq ptr %call, null, !dbg !265
  br i1 %cmp11, label %return, label %if.end13, !dbg !267

if.end13:                                         ; preds = %if.then8
  %code = getelementptr inbounds i8, ptr %next, i64 24, !dbg !268
  store ptr @stream_decode, ptr %code, align 8, !dbg !269
  %end = getelementptr inbounds i8, ptr %next, i64 32, !dbg !270
  store ptr @stream_decoder_end, ptr %end, align 8, !dbg !271
  %get_check = getelementptr inbounds i8, ptr %next, i64 40, !dbg !272
  store ptr @stream_decoder_get_check, ptr %get_check, align 8, !dbg !273
  %memconfig = getelementptr inbounds i8, ptr %next, i64 48, !dbg !274
  store ptr @stream_decoder_memconfig, ptr %memconfig, align 8, !dbg !275
  %block_decoder = getelementptr inbounds i8, ptr %call, i64 8, !dbg !276
  store ptr null, ptr %block_decoder, align 8, !dbg !277
  %.compoundliteral.sroa.2.0.block_decoder.sroa_idx = getelementptr inbounds i8, ptr %call, i64 16, !dbg !277
  store i64 -1, ptr %.compoundliteral.sroa.2.0.block_decoder.sroa_idx, align 8, !dbg !277
  %.compoundliteral.sroa.3.0.block_decoder.sroa_idx = getelementptr inbounds i8, ptr %call, i64 24, !dbg !277
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.compoundliteral.sroa.3.0.block_decoder.sroa_idx, i8 0, i64 48, i1 false), !dbg !277
  %2 = load ptr, ptr %next, align 8, !dbg !278
  %index_hash = getelementptr inbounds i8, ptr %2, i64 336, !dbg !279
  store ptr null, ptr %index_hash, align 8, !dbg !280
  %.pre = load ptr, ptr %next, align 8, !dbg !281
  br label %if.end22, !dbg !282

if.end22:                                         ; preds = %if.end13, %if.end6
  %3 = phi ptr [ %.pre, %if.end13 ], [ %1, %if.end6 ], !dbg !281
  %memlimit24 = getelementptr inbounds i8, ptr %3, i64 344, !dbg !283
  store i64 %memlimit, ptr %memlimit24, align 8, !dbg !284
  %4 = load ptr, ptr %next, align 8, !dbg !285
  %memusage = getelementptr inbounds i8, ptr %4, i64 352, !dbg !286
  store i64 32768, ptr %memusage, align 8, !dbg !287
  %5 = load ptr, ptr %next, align 8, !dbg !288
  %tell_no_check = getelementptr inbounds i8, ptr %5, i64 360, !dbg !289
  %6 = trunc nuw i32 %flags to i8, !dbg !290
  %storedv = and i8 %6, 1, !dbg !290
  store i8 %storedv, ptr %tell_no_check, align 8, !dbg !290
  %7 = load ptr, ptr %next, align 8, !dbg !291
  %tell_unsupported_check = getelementptr inbounds i8, ptr %7, i64 361, !dbg !292
  %8 = lshr i8 %6, 1, !dbg !293
  %storedv32 = and i8 %8, 1, !dbg !293
  store i8 %storedv32, ptr %tell_unsupported_check, align 1, !dbg !293
  %9 = load ptr, ptr %next, align 8, !dbg !294
  %tell_any_check = getelementptr inbounds i8, ptr %9, i64 362, !dbg !295
  %10 = lshr i8 %6, 2, !dbg !296
  %storedv36 = and i8 %10, 1, !dbg !296
  store i8 %storedv36, ptr %tell_any_check, align 2, !dbg !296
  %cmp38 = icmp ugt i32 %flags, 7, !dbg !297
  %11 = load ptr, ptr %next, align 8, !dbg !298
  %concatenated = getelementptr inbounds i8, ptr %11, i64 363, !dbg !299
  %storedv40 = zext i1 %cmp38 to i8, !dbg !300
  store i8 %storedv40, ptr %concatenated, align 1, !dbg !300
  %12 = load ptr, ptr %next, align 8, !dbg !301
  %first_stream = getelementptr inbounds i8, ptr %12, i64 364, !dbg !302
  store i8 1, ptr %first_stream, align 4, !dbg !303
  %13 = load ptr, ptr %next, align 8, !dbg !304
    #dbg_value(ptr %13, !305, !DIExpression(), !312)
    #dbg_value(ptr %allocator, !310, !DIExpression(), !312)
    #dbg_value(ptr %13, !311, !DIExpression(), !312)
  %index_hash.i = getelementptr inbounds i8, ptr %13, i64 336, !dbg !314
  %14 = load ptr, ptr %index_hash.i, align 8, !dbg !314
  %call.i = tail call ptr @lzma_index_hash_init(ptr noundef %14, ptr noundef %allocator) #6, !dbg !315
  store ptr %call.i, ptr %index_hash.i, align 8, !dbg !316
  %cmp.i = icmp eq ptr %call.i, null, !dbg !317
  br i1 %cmp.i, label %return, label %if.end.i, !dbg !319

if.end.i:                                         ; preds = %if.end22
  store i32 0, ptr %13, align 8, !dbg !320
  %pos.i = getelementptr inbounds i8, ptr %13, i64 368, !dbg !321
  store i64 0, ptr %pos.i, align 8, !dbg !322
  br label %return, !dbg !323

return:                                           ; preds = %if.end.i, %if.end22, %if.then8, %if.end4, %if.end
  %retval.0 = phi i32 [ 11, %if.end ], [ 8, %if.end4 ], [ 5, %if.then8 ], [ 0, %if.end.i ], [ 5, %if.end22 ], !dbg !247
  ret i32 %retval.0, !dbg !324
}

declare !dbg !325 void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !328 ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @stream_decode(ptr noundef %pcoder, ptr noundef %allocator, ptr noalias noundef %in, ptr noalias noundef %in_pos, i64 noundef %in_size, ptr noalias noundef %out, ptr noalias noundef %out_pos, i64 noundef %out_size, i32 noundef %action) #0 !dbg !331 {
entry:
  %filters = alloca [5 x %struct.lzma_filter], align 16, !DIAssignID !372
    #dbg_assign(i1 undef, !347, !DIExpression(), !372, ptr %filters, !DIExpression(), !373)
  %footer_flags = alloca %struct.lzma_stream_flags, align 8, !DIAssignID !374
    #dbg_assign(i1 undef, !365, !DIExpression(), !374, ptr %footer_flags, !DIExpression(), !375)
    #dbg_value(ptr %pcoder, !333, !DIExpression(), !376)
    #dbg_value(ptr %allocator, !334, !DIExpression(), !376)
    #dbg_value(ptr %in, !335, !DIExpression(), !376)
    #dbg_value(ptr %in_pos, !336, !DIExpression(), !376)
    #dbg_value(i64 %in_size, !337, !DIExpression(), !376)
    #dbg_value(ptr %out, !338, !DIExpression(), !376)
    #dbg_value(ptr %out_pos, !339, !DIExpression(), !376)
    #dbg_value(i64 %out_size, !340, !DIExpression(), !376)
    #dbg_value(i32 %action, !341, !DIExpression(), !376)
    #dbg_value(ptr %pcoder, !342, !DIExpression(), !376)
  %index_hash143 = getelementptr inbounds i8, ptr %pcoder, i64 336
  %buffer154 = getelementptr inbounds i8, ptr %pcoder, i64 376
  %pos156 = getelementptr inbounds i8, ptr %pcoder, i64 368
  %backward_size = getelementptr inbounds i8, ptr %footer_flags, i64 8
  %stream_flags186 = getelementptr inbounds i8, ptr %pcoder, i64 280
  %concatenated = getelementptr inbounds i8, ptr %pcoder, i64 363
  %first_stream10 = getelementptr inbounds i8, ptr %pcoder, i64 364
  %check = getelementptr inbounds i8, ptr %pcoder, i64 296
  %check12 = getelementptr inbounds i8, ptr %pcoder, i64 80
  %tell_no_check = getelementptr inbounds i8, ptr %pcoder, i64 360
  %tell_unsupported_check = getelementptr inbounds i8, ptr %pcoder, i64 361
  %tell_any_check = getelementptr inbounds i8, ptr %pcoder, i64 362
  %header_size = getelementptr inbounds i8, ptr %pcoder, i64 76
  %block_options50 = getelementptr inbounds i8, ptr %pcoder, i64 72
  %filters66 = getelementptr inbounds i8, ptr %pcoder, i64 104
  %memusage84 = getelementptr inbounds i8, ptr %pcoder, i64 352
  %memlimit = getelementptr inbounds i8, ptr %pcoder, i64 344
  %block_decoder = getelementptr inbounds i8, ptr %pcoder, i64 8
  %code = getelementptr inbounds i8, ptr %pcoder, i64 32
  %uncompressed_size = getelementptr inbounds i8, ptr %pcoder, i64 96
  %.pre = load i32, ptr %pcoder, align 8, !dbg !377
  %options = getelementptr inbounds i8, ptr %filters, i64 8
  %options.1 = getelementptr inbounds i8, ptr %filters, i64 24
  %options.2 = getelementptr inbounds i8, ptr %filters, i64 40
  %options.3 = getelementptr inbounds i8, ptr %filters, i64 56
  br label %while.cond, !dbg !378

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %0 = phi i32 [ %.pre, %entry ], [ %.be, %while.cond.backedge ], !dbg !377
  switch i32 %0, label %cleanup248 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb31
    i32 2, label %sw.bb109
    i32 3, label %sw.bb137
    i32 4, label %sw.bb153
    i32 5, label %sw.bb205
  ], !dbg !379

sw.bb:                                            ; preds = %while.cond
  %call = call i64 @lzma_bufcpy(ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size, ptr noundef nonnull %buffer154, ptr noundef nonnull %pos156, i64 noundef 12) #6, !dbg !380
  %1 = load i64, ptr %pos156, align 8, !dbg !381
  %cmp = icmp ult i64 %1, 12, !dbg !383
  br i1 %cmp, label %cleanup248, label %if.end, !dbg !384

if.end:                                           ; preds = %sw.bb
  store i64 0, ptr %pos156, align 8, !dbg !385
  %call5 = call i32 @lzma_stream_header_decode(ptr noundef nonnull %stream_flags186, ptr noundef nonnull %buffer154) #6, !dbg !386
    #dbg_value(i32 %call5, !343, !DIExpression(), !387)
  switch i32 %call5, label %cleanup248 [
    i32 0, label %if.end9
    i32 7, label %land.lhs.true
  ], !dbg !388

land.lhs.true:                                    ; preds = %if.end
  %2 = load i8, ptr %first_stream10, align 4, !dbg !389, !range !391, !noundef !392
  %loadedv = trunc nuw i8 %2 to i1, !dbg !389
  %spec.select = select i1 %loadedv, i32 7, i32 9, !dbg !393
  br label %cleanup248, !dbg !393

if.end9:                                          ; preds = %if.end
  store i8 0, ptr %first_stream10, align 4, !dbg !394
  %3 = load i32, ptr %check, align 8, !dbg !395
  store i32 %3, ptr %check12, align 8, !dbg !396
  store i32 1, ptr %pcoder, align 8, !dbg !397
  %4 = load i8, ptr %tell_no_check, align 8, !dbg !398, !range !391, !noundef !392
  %loadedv14 = trunc nuw i8 %4 to i1, !dbg !398
  %cmp18 = icmp eq i32 %3, 0
  %or.cond = select i1 %loadedv14, i1 %cmp18, i1 false, !dbg !400
  br i1 %or.cond, label %cleanup248, label %if.end20, !dbg !400

if.end20:                                         ; preds = %if.end9
  %5 = load i8, ptr %tell_unsupported_check, align 1, !dbg !401, !range !391, !noundef !392
  %loadedv21 = trunc nuw i8 %5 to i1, !dbg !401
  br i1 %loadedv21, label %land.lhs.true22, label %cleanup, !dbg !403

land.lhs.true22:                                  ; preds = %if.end20
  %call25 = call zeroext i8 @lzma_check_is_supported(i32 noundef %3) #6, !dbg !404
  %tobool.not = icmp eq i8 %call25, 0, !dbg !404
  br i1 %tobool.not, label %cleanup248, label %cleanup, !dbg !405

cleanup:                                          ; preds = %if.end20, %land.lhs.true22
  %6 = load i8, ptr %tell_any_check, align 2, !dbg !406, !range !391, !noundef !392
  %loadedv28 = trunc nuw i8 %6 to i1, !dbg !406
  br i1 %loadedv28, label %cleanup248, label %sw.bb31

sw.bb31:                                          ; preds = %cleanup, %while.cond
  %7 = load i64, ptr %in_pos, align 8, !dbg !408
  %cmp32.not = icmp ult i64 %7, %in_size, !dbg !410
  br i1 %cmp32.not, label %if.end34, label %cleanup248, !dbg !411

if.end34:                                         ; preds = %sw.bb31
  %8 = load i64, ptr %pos156, align 8, !dbg !412
  %cmp36 = icmp eq i64 %8, 0, !dbg !414
  br i1 %cmp36, label %if.then37, label %if.end34.if.end46_crit_edge, !dbg !415

if.end34.if.end46_crit_edge:                      ; preds = %if.end34
  %.pre393 = load i32, ptr %header_size, align 4, !dbg !416
  br label %if.end46, !dbg !415

if.then37:                                        ; preds = %if.end34
  %arrayidx = getelementptr inbounds i8, ptr %in, i64 %7, !dbg !417
  %9 = load i8, ptr %arrayidx, align 1, !dbg !417
  %cmp38 = icmp eq i8 %9, 0, !dbg !420
  br i1 %cmp38, label %if.then40, label %if.end42, !dbg !421

if.then40:                                        ; preds = %if.then37
  store i32 3, ptr %pcoder, align 8, !dbg !422
  br label %while.cond.backedge, !dbg !424

if.end42:                                         ; preds = %if.then37
  %conv = zext i8 %9 to i32, !dbg !417
  %add = shl nuw nsw i32 %conv, 2, !dbg !425
  %mul = add nuw nsw i32 %add, 4, !dbg !425
  store i32 %mul, ptr %header_size, align 4, !dbg !426
  br label %if.end46, !dbg !427

if.end46:                                         ; preds = %if.end34.if.end46_crit_edge, %if.end42
  %10 = phi i32 [ %.pre393, %if.end34.if.end46_crit_edge ], [ %mul, %if.end42 ], !dbg !416
  %conv52 = zext i32 %10 to i64, !dbg !428
  %call53 = call i64 @lzma_bufcpy(ptr noundef %in, ptr noundef nonnull %in_pos, i64 noundef %in_size, ptr noundef nonnull %buffer154, ptr noundef nonnull %pos156, i64 noundef %conv52) #6, !dbg !429
  %11 = load i64, ptr %pos156, align 8, !dbg !430
  %12 = load i32, ptr %header_size, align 4, !dbg !432
  %conv57 = zext i32 %12 to i64, !dbg !433
  %cmp58 = icmp ult i64 %11, %conv57, !dbg !434
  br i1 %cmp58, label %cleanup248, label %if.end61, !dbg !435

if.end61:                                         ; preds = %if.end46
  store i64 0, ptr %pos156, align 8, !dbg !436
  store i32 0, ptr %block_options50, align 8, !dbg !437
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %filters) #6, !dbg !438
  store ptr %filters, ptr %filters66, align 8, !dbg !439
  %call70 = call i32 @lzma_block_header_decode(ptr noundef nonnull %block_options50, ptr noundef %allocator, ptr noundef nonnull %buffer154) #6, !dbg !440
    #dbg_value(i32 %call70, !352, !DIExpression(), !441)
  %cmp71.not = icmp eq i32 %call70, 0, !dbg !442
  br i1 %cmp71.not, label %do.end, label %cleanup106.thread

do.end:                                           ; preds = %if.end61
  %call79 = call i64 @lzma_raw_decoder_memusage(ptr noundef nonnull %filters) #6, !dbg !444
    #dbg_value(i64 %call79, !354, !DIExpression(), !373)
  %cmp81 = icmp eq i64 %call79, -1, !dbg !445
  br i1 %cmp81, label %if.end92, label %if.else, !dbg !447

if.else:                                          ; preds = %do.end
  store i64 %call79, ptr %memusage84, align 8, !dbg !448
  %13 = load i64, ptr %memlimit, align 8, !dbg !450
  %cmp85 = icmp ugt i64 %call79, %13, !dbg !452
  br i1 %cmp85, label %if.end92, label %if.else88, !dbg !453

if.else88:                                        ; preds = %if.else
  %call90 = call i32 @lzma_block_decoder_init(ptr noundef nonnull %block_decoder, ptr noundef %allocator, ptr noundef nonnull %block_options50) #6, !dbg !454
    #dbg_value(i32 %call90, !356, !DIExpression(), !373)
  br label %if.end92

if.end92:                                         ; preds = %if.else, %do.end, %if.else88
  %ret80.0 = phi i32 [ %call90, %if.else88 ], [ 8, %do.end ], [ 6, %if.else ], !dbg !456
    #dbg_value(i32 %ret80.0, !356, !DIExpression(), !373)
    #dbg_value(i64 0, !357, !DIExpression(), !457)
    #dbg_value(i64 0, !357, !DIExpression(), !457)
  %14 = load ptr, ptr %options, align 8, !dbg !458
  call void @lzma_free(ptr noundef %14, ptr noundef %allocator) #6, !dbg !460
    #dbg_value(i64 1, !357, !DIExpression(), !457)
  %15 = load ptr, ptr %options.1, align 8, !dbg !458
  call void @lzma_free(ptr noundef %15, ptr noundef %allocator) #6, !dbg !460
    #dbg_value(i64 2, !357, !DIExpression(), !457)
  %16 = load ptr, ptr %options.2, align 8, !dbg !458
  call void @lzma_free(ptr noundef %16, ptr noundef %allocator) #6, !dbg !460
    #dbg_value(i64 3, !357, !DIExpression(), !457)
  %17 = load ptr, ptr %options.3, align 8, !dbg !458
  call void @lzma_free(ptr noundef %17, ptr noundef %allocator) #6, !dbg !460
    #dbg_value(i64 4, !357, !DIExpression(), !457)
  store ptr null, ptr %filters66, align 8, !dbg !461
  %cmp99.not = icmp eq i32 %ret80.0, 0, !dbg !462
  br i1 %cmp99.not, label %cleanup106, label %cleanup106.thread, !dbg !464

cleanup106.thread:                                ; preds = %if.end61, %if.end92
  %retval.5.ph = phi i32 [ %ret80.0, %if.end92 ], [ %call70, %if.end61 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %filters) #6, !dbg !465
  br label %cleanup248

cleanup106:                                       ; preds = %if.end92
  store i32 2, ptr %pcoder, align 8, !dbg !466
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %filters) #6, !dbg !465
  br label %sw.bb109

sw.bb109:                                         ; preds = %cleanup106, %while.cond
  %18 = load ptr, ptr %code, align 8, !dbg !467
  %19 = load ptr, ptr %block_decoder, align 8, !dbg !468
  %call114 = call i32 %18(ptr noundef %19, ptr noundef %allocator, ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size, ptr noundef %out, ptr noundef %out_pos, i64 noundef %out_size, i32 noundef %action) #6, !dbg !469
    #dbg_value(i32 %call114, !359, !DIExpression(), !470)
  %cmp115.not = icmp eq i32 %call114, 1, !dbg !471
  br i1 %cmp115.not, label %do.body119, label %cleanup248, !dbg !473

do.body119:                                       ; preds = %sw.bb109
  %20 = load ptr, ptr %index_hash143, align 8, !dbg !474
  %call122 = call i64 @lzma_block_unpadded_size(ptr noundef nonnull %block_options50) #6, !dbg !474
  %21 = load i64, ptr %uncompressed_size, align 8, !dbg !474
  %call124 = call i32 @lzma_index_hash_append(ptr noundef %20, i64 noundef %call122, i64 noundef %21) #6, !dbg !474
    #dbg_value(i32 %call124, !361, !DIExpression(), !475)
  %cmp125.not = icmp eq i32 %call124, 0, !dbg !476
  br i1 %cmp125.not, label %cleanup135, label %cleanup248

cleanup135:                                       ; preds = %do.body119
  store i32 1, ptr %pcoder, align 8, !dbg !478
  br label %while.cond.backedge

sw.bb137:                                         ; preds = %while.cond
  %22 = load i64, ptr %in_pos, align 8, !dbg !479
  %cmp138.not = icmp ult i64 %22, %in_size, !dbg !481
  br i1 %cmp138.not, label %if.end141, label %cleanup248, !dbg !482

if.end141:                                        ; preds = %sw.bb137
  %23 = load ptr, ptr %index_hash143, align 8, !dbg !483
  %call144 = call i32 @lzma_index_hash_decode(ptr noundef %23, ptr noundef %in, ptr noundef nonnull %in_pos, i64 noundef %in_size) #6, !dbg !484
    #dbg_value(i32 %call144, !363, !DIExpression(), !485)
  %cmp145.not = icmp eq i32 %call144, 1, !dbg !486
  br i1 %cmp145.not, label %cleanup150.thread, label %cleanup248, !dbg !488

cleanup150.thread:                                ; preds = %if.end141
  store i32 4, ptr %pcoder, align 8, !dbg !489
  br label %sw.bb153

sw.bb153:                                         ; preds = %cleanup150.thread, %while.cond
  %call157 = call i64 @lzma_bufcpy(ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size, ptr noundef nonnull %buffer154, ptr noundef nonnull %pos156, i64 noundef 12) #6, !dbg !490
  %24 = load i64, ptr %pos156, align 8, !dbg !491
  %cmp159 = icmp ult i64 %24, 12, !dbg !493
  br i1 %cmp159, label %cleanup248, label %if.end162, !dbg !494

if.end162:                                        ; preds = %sw.bb153
  store i64 0, ptr %pos156, align 8, !dbg !495
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %footer_flags) #6, !dbg !496
  %call167 = call i32 @lzma_stream_footer_decode(ptr noundef nonnull %footer_flags, ptr noundef nonnull %buffer154) #6, !dbg !497
    #dbg_value(i32 %call167, !367, !DIExpression(), !375)
  %cmp168.not = icmp eq i32 %call167, 0, !dbg !498
  br i1 %cmp168.not, label %if.end177, label %if.then170, !dbg !500

if.then170:                                       ; preds = %if.end162
  %cmp171 = icmp eq i32 %call167, 7, !dbg !501
  %cond176 = select i1 %cmp171, i32 9, i32 %call167, !dbg !502
  br label %cleanup201.thread, !dbg !503

if.end177:                                        ; preds = %if.end162
  %25 = load ptr, ptr %index_hash143, align 8, !dbg !504
  %call179 = call i64 @lzma_index_hash_size(ptr noundef %25) #6, !dbg !506
  %26 = load i64, ptr %backward_size, align 8, !dbg !507
  %cmp180.not = icmp eq i64 %call179, %26, !dbg !508
  br i1 %cmp180.not, label %do.body184, label %cleanup201.thread, !dbg !509

do.body184:                                       ; preds = %if.end177
  %call187 = call i32 @lzma_stream_flags_compare(ptr noundef nonnull %stream_flags186, ptr noundef nonnull %footer_flags) #6, !dbg !510
    #dbg_value(i32 %call187, !368, !DIExpression(), !511)
  %cmp188.not = icmp eq i32 %call187, 0, !dbg !512
  br i1 %cmp188.not, label %do.end196, label %cleanup201.thread

do.end196:                                        ; preds = %do.body184
  %27 = load i8, ptr %concatenated, align 1, !dbg !514, !range !391, !noundef !392
  %loadedv197 = trunc nuw i8 %27 to i1, !dbg !514
  br i1 %loadedv197, label %cleanup201, label %cleanup201.thread, !dbg !516

cleanup201.thread:                                ; preds = %do.body184, %if.end177, %do.end196, %if.then170
  %retval.12.ph = phi i32 [ %cond176, %if.then170 ], [ %call187, %do.body184 ], [ 9, %if.end177 ], [ 1, %do.end196 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %footer_flags) #6, !dbg !517
  br label %cleanup248

cleanup201:                                       ; preds = %do.end196
  store i32 5, ptr %pcoder, align 8, !dbg !518
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %footer_flags) #6, !dbg !517
  br label %sw.bb205

sw.bb205:                                         ; preds = %cleanup201, %while.cond
  %in_pos.promoted = load i64, ptr %in_pos, align 8
  %cmp208.not387 = icmp ult i64 %in_pos.promoted, %in_size, !dbg !519
  br i1 %cmp208.not387, label %if.end219, label %if.then210, !dbg !522

if.then210:                                       ; preds = %sw.bb205, %if.end225
  %cmp211.not = icmp eq i32 %action, 3, !dbg !523
  br i1 %cmp211.not, label %if.end214, label %cleanup248, !dbg !526

if.end214:                                        ; preds = %if.then210
  %28 = load i64, ptr %pos156, align 8, !dbg !527
  %cmp216 = icmp eq i64 %28, 0, !dbg !528
  %cond218 = select i1 %cmp216, i32 1, i32 9, !dbg !529
  br label %cleanup248, !dbg !530

if.end219:                                        ; preds = %sw.bb205, %if.end225
  %29 = phi i64 [ %inc226, %if.end225 ], [ %in_pos.promoted, %sw.bb205 ]
  %arrayidx220 = getelementptr inbounds i8, ptr %in, i64 %29, !dbg !531
  %30 = load i8, ptr %arrayidx220, align 1, !dbg !531
  %cmp222.not = icmp eq i8 %30, 0, !dbg !533
  br i1 %cmp222.not, label %if.end225, label %while.end, !dbg !534

if.end225:                                        ; preds = %if.end219
  %inc226 = add i64 %29, 1, !dbg !535
  store i64 %inc226, ptr %in_pos, align 8, !dbg !535
  %31 = load i64, ptr %pos156, align 8, !dbg !536
  %add228 = add i64 %31, 1, !dbg !537
  %and = and i64 %add228, 3, !dbg !538
  store i64 %and, ptr %pos156, align 8, !dbg !539
  %exitcond.not = icmp eq i64 %inc226, %in_size, !dbg !519
  br i1 %exitcond.not, label %if.then210, label %if.end219, !dbg !522, !llvm.loop !540

while.end:                                        ; preds = %if.end219
  %32 = load i64, ptr %pos156, align 8, !dbg !543
  %cmp231.not = icmp eq i64 %32, 0, !dbg !545
  br i1 %cmp231.not, label %do.body236, label %if.then233, !dbg !546

if.then233:                                       ; preds = %while.end
  %inc234 = add nuw i64 %29, 1, !dbg !547
  store i64 %inc234, ptr %in_pos, align 8, !dbg !547
  br label %cleanup248, !dbg !549

do.body236:                                       ; preds = %while.end
    #dbg_value(ptr %pcoder, !305, !DIExpression(), !550)
    #dbg_value(ptr %allocator, !310, !DIExpression(), !550)
    #dbg_value(ptr %pcoder, !311, !DIExpression(), !550)
  %33 = load ptr, ptr %index_hash143, align 8, !dbg !552
  %call.i = call ptr @lzma_index_hash_init(ptr noundef %33, ptr noundef %allocator) #6, !dbg !553
  store ptr %call.i, ptr %index_hash143, align 8, !dbg !554
  %cmp.i = icmp eq ptr %call.i, null, !dbg !555
  br i1 %cmp.i, label %cleanup248, label %stream_decoder_reset.exit.thread, !dbg !556

stream_decoder_reset.exit.thread:                 ; preds = %do.body236
  store i32 0, ptr %pcoder, align 8, !dbg !557
  store i64 0, ptr %pos156, align 8, !dbg !558
    #dbg_value(i32 0, !370, !DIExpression(), !559)
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %stream_decoder_reset.exit.thread, %cleanup135, %if.then40
  %.be = phi i32 [ 1, %cleanup135 ], [ 3, %if.then40 ], [ 0, %stream_decoder_reset.exit.thread ]
  br label %while.cond, !dbg !379, !llvm.loop !560

cleanup248:                                       ; preds = %do.body236, %if.end9, %sw.bb109, %do.body119, %land.lhs.true22, %if.end141, %while.cond, %sw.bb153, %sw.bb137, %if.end46, %sw.bb31, %sw.bb, %cleanup, %if.end, %land.lhs.true, %cleanup201.thread, %cleanup106.thread, %if.then210, %if.then233, %if.end214
  %retval.16 = phi i32 [ %cond218, %if.end214 ], [ 9, %if.then233 ], [ 0, %if.then210 ], [ %retval.5.ph, %cleanup106.thread ], [ %retval.12.ph, %cleanup201.thread ], [ %spec.select, %land.lhs.true ], [ %call5, %if.end ], [ 5, %do.body236 ], [ 2, %if.end9 ], [ %call124, %do.body119 ], [ %call114, %sw.bb109 ], [ 3, %land.lhs.true22 ], [ %call144, %if.end141 ], [ 11, %while.cond ], [ 0, %sw.bb153 ], [ 0, %sw.bb137 ], [ 0, %if.end46 ], [ 0, %sw.bb31 ], [ 0, %sw.bb ], [ 4, %cleanup ], !dbg !562
  ret i32 %retval.16, !dbg !563
}

; Function Attrs: nounwind uwtable
define internal void @stream_decoder_end(ptr noundef %pcoder, ptr noundef %allocator) #0 !dbg !564 {
entry:
    #dbg_value(ptr %pcoder, !566, !DIExpression(), !569)
    #dbg_value(ptr %allocator, !567, !DIExpression(), !569)
    #dbg_value(ptr %pcoder, !568, !DIExpression(), !569)
  %block_decoder = getelementptr inbounds i8, ptr %pcoder, i64 8, !dbg !570
  tail call void @lzma_next_end(ptr noundef nonnull %block_decoder, ptr noundef %allocator) #6, !dbg !571
  %index_hash = getelementptr inbounds i8, ptr %pcoder, i64 336, !dbg !572
  %0 = load ptr, ptr %index_hash, align 8, !dbg !572
  tail call void @lzma_index_hash_end(ptr noundef %0, ptr noundef %allocator) #6, !dbg !573
  tail call void @lzma_free(ptr noundef %pcoder, ptr noundef %allocator) #6, !dbg !574
  ret void, !dbg !575
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @stream_decoder_get_check(ptr nocapture noundef readonly %pcoder) #2 !dbg !576 {
entry:
    #dbg_value(ptr %pcoder, !578, !DIExpression(), !582)
    #dbg_value(ptr %pcoder, !579, !DIExpression(), !582)
  %check = getelementptr inbounds i8, ptr %pcoder, i64 296, !dbg !583
  %0 = load i32, ptr %check, align 8, !dbg !583
  ret i32 %0, !dbg !584
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 0, 7) i32 @stream_decoder_memconfig(ptr nocapture noundef %pcoder, ptr nocapture noundef writeonly %memusage, ptr nocapture noundef writeonly %old_memlimit, i64 noundef %new_memlimit) #3 !dbg !585 {
entry:
    #dbg_value(ptr %pcoder, !587, !DIExpression(), !592)
    #dbg_value(ptr %memusage, !588, !DIExpression(), !592)
    #dbg_value(ptr %old_memlimit, !589, !DIExpression(), !592)
    #dbg_value(i64 %new_memlimit, !590, !DIExpression(), !592)
    #dbg_value(ptr %pcoder, !591, !DIExpression(), !592)
  %memusage1 = getelementptr inbounds i8, ptr %pcoder, i64 352, !dbg !593
  %0 = load i64, ptr %memusage1, align 8, !dbg !593
  store i64 %0, ptr %memusage, align 8, !dbg !594
  %memlimit = getelementptr inbounds i8, ptr %pcoder, i64 344, !dbg !595
  %1 = load i64, ptr %memlimit, align 8, !dbg !595
  store i64 %1, ptr %old_memlimit, align 8, !dbg !596
  %cmp.not = icmp eq i64 %new_memlimit, 0, !dbg !597
  br i1 %cmp.not, label %cleanup, label %if.then, !dbg !599

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %memusage1, align 8, !dbg !600
  %cmp3 = icmp ugt i64 %2, %new_memlimit, !dbg !603
  br i1 %cmp3, label %cleanup, label %if.end, !dbg !604

if.end:                                           ; preds = %if.then
  store i64 %new_memlimit, ptr %memlimit, align 8, !dbg !605
  br label %cleanup, !dbg !606

cleanup:                                          ; preds = %entry, %if.end, %if.then
  %retval.0 = phi i32 [ 6, %if.then ], [ 0, %if.end ], [ 0, %entry ], !dbg !592
  ret i32 %retval.0, !dbg !607
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_stream_decoder(ptr noundef %strm, i64 noundef %memlimit, i32 noundef %flags) local_unnamed_addr #0 !dbg !608 {
entry:
    #dbg_value(ptr %strm, !636, !DIExpression(), !643)
    #dbg_value(i64 %memlimit, !637, !DIExpression(), !643)
    #dbg_value(i32 %flags, !638, !DIExpression(), !643)
  %call = tail call i32 @lzma_strm_init(ptr noundef %strm) #6, !dbg !644
    #dbg_value(i32 %call, !639, !DIExpression(), !645)
  %cmp.not.not = icmp eq i32 %call, 0, !dbg !646
  br i1 %cmp.not.not, label %do.end, label %return

do.end:                                           ; preds = %entry
  %internal = getelementptr inbounds i8, ptr %strm, i64 56, !dbg !648
  %0 = load ptr, ptr %internal, align 8, !dbg !648
  %allocator = getelementptr inbounds i8, ptr %strm, i64 48, !dbg !648
  %1 = load ptr, ptr %allocator, align 8, !dbg !648
  %call3 = tail call i32 @lzma_stream_decoder_init(ptr noundef %0, ptr noundef %1, i64 noundef %memlimit, i32 noundef %flags), !dbg !648
    #dbg_value(i32 %call3, !642, !DIExpression(), !649)
  %cmp4.not.not = icmp eq i32 %call3, 0, !dbg !650
  br i1 %cmp4.not.not, label %do.end10, label %cleanup7, !dbg !648

cleanup7:                                         ; preds = %do.end
  tail call void @lzma_end(ptr noundef nonnull %strm) #6, !dbg !652
  br label %return

do.end10:                                         ; preds = %do.end
  %2 = load ptr, ptr %internal, align 8, !dbg !654
  %supported_actions = getelementptr inbounds i8, ptr %2, i64 80, !dbg !655
  store i8 1, ptr %supported_actions, align 8, !dbg !656
  %3 = load ptr, ptr %internal, align 8, !dbg !657
  %arrayidx14 = getelementptr inbounds i8, ptr %3, i64 83, !dbg !658
  store i8 1, ptr %arrayidx14, align 1, !dbg !659
  br label %return, !dbg !660

return:                                           ; preds = %cleanup7, %entry, %do.end10
  %retval.2 = phi i32 [ %call, %entry ], [ %call3, %cleanup7 ], [ 0, %do.end10 ], !dbg !643
  ret i32 %retval.2, !dbg !661
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

declare !dbg !662 i32 @lzma_strm_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

declare !dbg !665 void @lzma_end(ptr noundef) local_unnamed_addr #1

declare !dbg !668 i64 @lzma_bufcpy(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !671 i32 @lzma_stream_header_decode(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !675 zeroext i8 @lzma_check_is_supported(i32 noundef) local_unnamed_addr #1

declare !dbg !678 i32 @lzma_block_header_decode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !682 i64 @lzma_raw_decoder_memusage(ptr noundef) local_unnamed_addr #1

declare !dbg !685 i32 @lzma_block_decoder_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !689 void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !692 i32 @lzma_index_hash_append(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !695 i64 @lzma_block_unpadded_size(ptr noundef) local_unnamed_addr #1

declare !dbg !700 i32 @lzma_index_hash_decode(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !703 i32 @lzma_stream_footer_decode(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !704 i64 @lzma_index_hash_size(ptr noundef) local_unnamed_addr #1

declare !dbg !709 i32 @lzma_stream_flags_compare(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !714 void @lzma_index_hash_end(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !717 ptr @lzma_index_hash_init(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!230, !231, !232, !233, !234, !235, !236}
!llvm.ident = !{!237}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !228, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "liblzma/common/stream_decoder.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "31c1350369f43f430bea3ddc3de42944")
!2 = !{!3, !19, !25, !32, !148, !210}
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
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !33, file: !1, line: 18, baseType: !5, size: 32, elements: !203)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_coder_s", file: !1, line: 17, size: 11200, elements: !34)
!34 = !{!35, !36, !117, !163, !185, !190, !191, !192, !194, !195, !196, !197, !198, !199}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !33, file: !1, line: 25, baseType: !32, size: 32)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "block_decoder", scope: !33, file: !1, line: 30, baseType: !37, size: 512, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_next_coder", file: !38, line: 80, baseType: !39)
!38 = !DIFile(filename: "liblzma/common/common.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_next_coder_s", file: !38, line: 124, size: 512, elements: !40)
!40 = !{!41, !44, !52, !55, !88, !93, !100, !105}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !39, file: !38, line: 126, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_coder", file: !38, line: 78, baseType: null)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !39, file: !38, line: 130, baseType: !45, size: 64, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !46, line: 63, baseType: !47)
!46 = !DIFile(filename: "liblzma/api/lzma/vli.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !48, line: 27, baseType: !49)
!48 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !50, line: 45, baseType: !51)
!50 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!51 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !39, file: !38, line: 136, baseType: !53, size: 64, offset: 128)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !54, line: 90, baseType: !51)
!54 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!55 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !39, file: !38, line: 139, baseType: !56, size: 64, offset: 192)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_code_function", file: !38, line: 94, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DISubroutineType(types: !59)
!59 = !{!60, !42, !61, !77, !83, !70, !85, !83, !70, !87}
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !4, line: 403, baseType: !63)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 341, size: 192, elements: !64)
!64 = !{!65, !72, !76}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !63, file: !4, line: 376, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DISubroutineType(types: !68)
!68 = !{!69, !69, !70, !70}
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !71, line: 18, baseType: !51)
!71 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!72 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !63, file: !4, line: 390, baseType: !73, size: 64, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DISubroutineType(types: !75)
!75 = !{null, !69, !69}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !63, file: !4, line: 401, baseType: !69, size: 64, offset: 128)
!77 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !48, line: 24, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !50, line: 38, baseType: !82)
!82 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!83 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !4, line: 322, baseType: !19)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !39, file: !38, line: 144, baseType: !89, size: 64, offset: 256)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_end_function", file: !38, line: 102, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DISubroutineType(types: !92)
!92 = !{null, !42, !61}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "get_check", scope: !39, file: !38, line: 148, baseType: !94, size: 64, offset: 320)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DISubroutineType(types: !96)
!96 = !{!97, !98}
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !26, line: 55, baseType: !25)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "memconfig", scope: !39, file: !38, line: 152, baseType: !101, size: 64, offset: 384)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DISubroutineType(types: !103)
!103 = !{!60, !42, !104, !104, !47}
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !39, file: !38, line: 157, baseType: !106, size: 64, offset: 448)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DISubroutineType(types: !108)
!108 = !{!60, !42, !61, !109, !109}
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !112, line: 65, baseType: !113)
!112 = !DIFile(filename: "liblzma/api/lzma/filter.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !112, line: 43, size: 128, elements: !114)
!114 = !{!115, !116}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !113, file: !112, line: 54, baseType: !45, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !113, file: !112, line: 63, baseType: !69, size: 64, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "block_options", scope: !33, file: !1, line: 34, baseType: !118, size: 1664, offset: 576)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_block", file: !119, line: 245, baseType: !120)
!119 = !DIFile(filename: "liblzma/api/lzma/block.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "bf8cbafce550217b909c63081e414910")
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !119, line: 30, size: 1664, elements: !121)
!121 = !{!122, !125, !126, !127, !128, !129, !131, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !151, !152, !153, !154, !156, !157, !158, !159, !160, !161, !162}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !120, file: !119, line: 47, baseType: !123, size: 32)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !48, line: 26, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !50, line: 42, baseType: !5)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !120, file: !119, line: 67, baseType: !123, size: 32, offset: 32)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !120, file: !119, line: 88, baseType: !97, size: 32, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_size", scope: !120, file: !119, line: 143, baseType: !45, size: 64, offset: 128)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_size", scope: !120, file: !119, line: 167, baseType: !45, size: 64, offset: 192)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "filters", scope: !120, file: !119, line: 195, baseType: !130, size: 64, offset: 256)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "raw_check", scope: !120, file: !119, line: 212, baseType: !132, size: 512, offset: 320)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 512, elements: !133)
!133 = !{!134}
!134 = !DISubrange(count: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !120, file: !119, line: 221, baseType: !69, size: 64, offset: 832)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !120, file: !119, line: 222, baseType: !69, size: 64, offset: 896)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !120, file: !119, line: 223, baseType: !69, size: 64, offset: 960)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !120, file: !119, line: 224, baseType: !123, size: 32, offset: 1024)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !120, file: !119, line: 225, baseType: !123, size: 32, offset: 1056)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !120, file: !119, line: 226, baseType: !45, size: 64, offset: 1088)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !120, file: !119, line: 227, baseType: !45, size: 64, offset: 1152)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int5", scope: !120, file: !119, line: 228, baseType: !45, size: 64, offset: 1216)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int6", scope: !120, file: !119, line: 229, baseType: !45, size: 64, offset: 1280)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int7", scope: !120, file: !119, line: 230, baseType: !45, size: 64, offset: 1344)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int8", scope: !120, file: !119, line: 231, baseType: !45, size: 64, offset: 1408)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !120, file: !119, line: 232, baseType: !147, size: 32, offset: 1472)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !4, line: 46, baseType: !148)
!148 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 44, baseType: !5, size: 32, elements: !149)
!149 = !{!150}
!150 = !DIEnumerator(name: "LZMA_RESERVED_ENUM", value: 0)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !120, file: !119, line: 233, baseType: !147, size: 32, offset: 1504)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !120, file: !119, line: 234, baseType: !147, size: 32, offset: 1536)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !120, file: !119, line: 235, baseType: !147, size: 32, offset: 1568)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool1", scope: !120, file: !119, line: 236, baseType: !155, size: 8, offset: 1600)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_bool", file: !4, line: 29, baseType: !82)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool2", scope: !120, file: !119, line: 237, baseType: !155, size: 8, offset: 1608)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool3", scope: !120, file: !119, line: 238, baseType: !155, size: 8, offset: 1616)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool4", scope: !120, file: !119, line: 239, baseType: !155, size: 8, offset: 1624)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool5", scope: !120, file: !119, line: 240, baseType: !155, size: 8, offset: 1632)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool6", scope: !120, file: !119, line: 241, baseType: !155, size: 8, offset: 1640)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool7", scope: !120, file: !119, line: 242, baseType: !155, size: 8, offset: 1648)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool8", scope: !120, file: !119, line: 243, baseType: !155, size: 8, offset: 1656)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "stream_flags", scope: !33, file: !1, line: 37, baseType: !164, size: 448, offset: 2240)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_stream_flags", file: !165, line: 105, baseType: !166)
!165 = !DIFile(filename: "liblzma/api/lzma/stream_flags.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "d3814c86a389337e759db33a259f1072")
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !165, line: 33, size: 448, elements: !167)
!167 = !{!168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !166, file: !165, line: 51, baseType: !123, size: 32)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "backward_size", scope: !166, file: !165, line: 69, baseType: !45, size: 64, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !166, file: !165, line: 79, baseType: !97, size: 32, offset: 128)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !166, file: !165, line: 90, baseType: !147, size: 32, offset: 160)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !166, file: !165, line: 91, baseType: !147, size: 32, offset: 192)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !166, file: !165, line: 92, baseType: !147, size: 32, offset: 224)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !166, file: !165, line: 93, baseType: !147, size: 32, offset: 256)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool1", scope: !166, file: !165, line: 94, baseType: !155, size: 8, offset: 288)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool2", scope: !166, file: !165, line: 95, baseType: !155, size: 8, offset: 296)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool3", scope: !166, file: !165, line: 96, baseType: !155, size: 8, offset: 304)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool4", scope: !166, file: !165, line: 97, baseType: !155, size: 8, offset: 312)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool5", scope: !166, file: !165, line: 98, baseType: !155, size: 8, offset: 320)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool6", scope: !166, file: !165, line: 99, baseType: !155, size: 8, offset: 328)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool7", scope: !166, file: !165, line: 100, baseType: !155, size: 8, offset: 336)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool8", scope: !166, file: !165, line: 101, baseType: !155, size: 8, offset: 344)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !166, file: !165, line: 102, baseType: !123, size: 32, offset: 352)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !166, file: !165, line: 103, baseType: !123, size: 32, offset: 384)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "index_hash", scope: !33, file: !1, line: 41, baseType: !186, size: 64, offset: 2688)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_index_hash", file: !188, line: 25, baseType: !189)
!188 = !DIFile(filename: "liblzma/api/lzma/index_hash.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "93f41ec399d5b72fa726dbb2f572cbec")
!189 = !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_index_hash_s", file: !188, line: 25, flags: DIFlagFwdDecl)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "memlimit", scope: !33, file: !1, line: 44, baseType: !47, size: 64, offset: 2752)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "memusage", scope: !33, file: !1, line: 47, baseType: !47, size: 64, offset: 2816)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "tell_no_check", scope: !33, file: !1, line: 51, baseType: !193, size: 8, offset: 2880)
!193 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "tell_unsupported_check", scope: !33, file: !1, line: 55, baseType: !193, size: 8, offset: 2888)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "tell_any_check", scope: !33, file: !1, line: 58, baseType: !193, size: 8, offset: 2896)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "concatenated", scope: !33, file: !1, line: 65, baseType: !193, size: 8, offset: 2904)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "first_stream", scope: !33, file: !1, line: 71, baseType: !193, size: 8, offset: 2912)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !33, file: !1, line: 74, baseType: !70, size: 64, offset: 2944)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !33, file: !1, line: 78, baseType: !200, size: 8192, offset: 3008)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 8192, elements: !201)
!201 = !{!202}
!202 = !DISubrange(count: 1024)
!203 = !{!204, !205, !206, !207, !208, !209}
!204 = !DIEnumerator(name: "SEQ_STREAM_HEADER", value: 0)
!205 = !DIEnumerator(name: "SEQ_BLOCK_HEADER", value: 1)
!206 = !DIEnumerator(name: "SEQ_BLOCK", value: 2)
!207 = !DIEnumerator(name: "SEQ_INDEX", value: 3)
!208 = !DIEnumerator(name: "SEQ_STREAM_FOOTER", value: 4)
!209 = !DIEnumerator(name: "SEQ_STREAM_PADDING", value: 5)
!210 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !211, file: !38, line: 187, baseType: !5, size: 32, elements: !221)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_internal_s", file: !38, line: 179, size: 704, elements: !212)
!212 = !{!213, !214, !215, !216, !220}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !211, file: !38, line: 181, baseType: !37, size: 512)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !211, file: !38, line: 194, baseType: !210, size: 32, offset: 512)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !211, file: !38, line: 199, baseType: !70, size: 64, offset: 576)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "supported_actions", scope: !211, file: !38, line: 202, baseType: !217, size: 32, offset: 640)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 32, elements: !218)
!218 = !{!219}
!219 = !DISubrange(count: 4)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "allow_buf_error", scope: !211, file: !38, line: 206, baseType: !193, size: 8, offset: 672)
!221 = !{!222, !223, !224, !225, !226, !227}
!222 = !DIEnumerator(name: "ISEQ_RUN", value: 0)
!223 = !DIEnumerator(name: "ISEQ_SYNC_FLUSH", value: 1)
!224 = !DIEnumerator(name: "ISEQ_FULL_FLUSH", value: 2)
!225 = !DIEnumerator(name: "ISEQ_FINISH", value: 3)
!226 = !DIEnumerator(name: "ISEQ_END", value: 4)
!227 = !DIEnumerator(name: "ISEQ_ERROR", value: 5)
!228 = !{!53, !69, !229, !123}
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!230 = !{i32 7, !"Dwarf Version", i32 5}
!231 = !{i32 2, !"Debug Info Version", i32 3}
!232 = !{i32 1, !"wchar_size", i32 4}
!233 = !{i32 8, !"PIC Level", i32 2}
!234 = !{i32 7, !"PIE Level", i32 2}
!235 = !{i32 7, !"uwtable", i32 2}
!236 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!237 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!238 = distinct !DISubprogram(name: "lzma_stream_decoder_init", scope: !1, file: !1, line: 409, type: !239, scopeLine: 411, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !242)
!239 = !DISubroutineType(types: !240)
!240 = !{!60, !241, !61, !47, !123}
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!242 = !{!243, !244, !245, !246}
!243 = !DILocalVariable(name: "next", arg: 1, scope: !238, file: !1, line: 409, type: !241)
!244 = !DILocalVariable(name: "allocator", arg: 2, scope: !238, file: !1, line: 409, type: !61)
!245 = !DILocalVariable(name: "memlimit", arg: 3, scope: !238, file: !1, line: 410, type: !47)
!246 = !DILocalVariable(name: "flags", arg: 4, scope: !238, file: !1, line: 410, type: !123)
!247 = !DILocation(line: 0, scope: !238)
!248 = !DILocation(line: 412, column: 2, scope: !249)
!249 = distinct !DILexicalBlock(scope: !250, file: !1, line: 412, column: 2)
!250 = distinct !DILexicalBlock(scope: !238, file: !1, line: 412, column: 2)
!251 = !DILocation(line: 412, column: 2, scope: !250)
!252 = !DILocation(line: 414, column: 15, scope: !253)
!253 = distinct !DILexicalBlock(scope: !238, file: !1, line: 414, column: 6)
!254 = !DILocation(line: 414, column: 6, scope: !238)
!255 = !DILocation(line: 417, column: 12, scope: !256)
!256 = distinct !DILexicalBlock(scope: !238, file: !1, line: 417, column: 6)
!257 = !DILocation(line: 417, column: 6, scope: !238)
!258 = !DILocation(line: 420, column: 12, scope: !259)
!259 = distinct !DILexicalBlock(scope: !238, file: !1, line: 420, column: 6)
!260 = !DILocation(line: 420, column: 18, scope: !259)
!261 = !DILocation(line: 420, column: 6, scope: !238)
!262 = !DILocation(line: 421, column: 17, scope: !263)
!263 = distinct !DILexicalBlock(scope: !259, file: !1, line: 420, column: 27)
!264 = !DILocation(line: 421, column: 15, scope: !263)
!265 = !DILocation(line: 422, column: 19, scope: !266)
!266 = distinct !DILexicalBlock(scope: !263, file: !1, line: 422, column: 7)
!267 = !DILocation(line: 422, column: 7, scope: !263)
!268 = !DILocation(line: 425, column: 9, scope: !263)
!269 = !DILocation(line: 425, column: 14, scope: !263)
!270 = !DILocation(line: 426, column: 9, scope: !263)
!271 = !DILocation(line: 426, column: 13, scope: !263)
!272 = !DILocation(line: 427, column: 9, scope: !263)
!273 = !DILocation(line: 427, column: 19, scope: !263)
!274 = !DILocation(line: 428, column: 9, scope: !263)
!275 = !DILocation(line: 428, column: 19, scope: !263)
!276 = !DILocation(line: 430, column: 40, scope: !263)
!277 = !DILocation(line: 430, column: 56, scope: !263)
!278 = !DILocation(line: 431, column: 32, scope: !263)
!279 = !DILocation(line: 431, column: 40, scope: !263)
!280 = !DILocation(line: 431, column: 51, scope: !263)
!281 = !DILocation(line: 434, column: 31, scope: !238)
!282 = !DILocation(line: 432, column: 2, scope: !263)
!283 = !DILocation(line: 434, column: 39, scope: !238)
!284 = !DILocation(line: 434, column: 48, scope: !238)
!285 = !DILocation(line: 435, column: 31, scope: !238)
!286 = !DILocation(line: 435, column: 39, scope: !238)
!287 = !DILocation(line: 435, column: 48, scope: !238)
!288 = !DILocation(line: 436, column: 31, scope: !238)
!289 = !DILocation(line: 436, column: 39, scope: !238)
!290 = !DILocation(line: 436, column: 53, scope: !238)
!291 = !DILocation(line: 437, column: 31, scope: !238)
!292 = !DILocation(line: 437, column: 39, scope: !238)
!293 = !DILocation(line: 438, column: 4, scope: !238)
!294 = !DILocation(line: 439, column: 31, scope: !238)
!295 = !DILocation(line: 439, column: 39, scope: !238)
!296 = !DILocation(line: 439, column: 54, scope: !238)
!297 = !DILocation(line: 440, column: 82, scope: !238)
!298 = !DILocation(line: 440, column: 31, scope: !238)
!299 = !DILocation(line: 440, column: 39, scope: !238)
!300 = !DILocation(line: 440, column: 52, scope: !238)
!301 = !DILocation(line: 441, column: 31, scope: !238)
!302 = !DILocation(line: 441, column: 39, scope: !238)
!303 = !DILocation(line: 441, column: 52, scope: !238)
!304 = !DILocation(line: 443, column: 36, scope: !238)
!305 = !DILocalVariable(name: "pcoder", arg: 1, scope: !306, file: !1, line: 83, type: !42)
!306 = distinct !DISubprogram(name: "stream_decoder_reset", scope: !1, file: !1, line: 83, type: !307, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !309)
!307 = !DISubroutineType(types: !308)
!308 = !{!60, !42, !61}
!309 = !{!305, !310, !311}
!310 = !DILocalVariable(name: "allocator", arg: 2, scope: !306, file: !1, line: 83, type: !61)
!311 = !DILocalVariable(name: "coder", scope: !306, file: !1, line: 85, type: !229)
!312 = !DILocation(line: 0, scope: !306, inlinedAt: !313)
!313 = distinct !DILocation(line: 443, column: 9, scope: !238)
!314 = !DILocation(line: 87, column: 50, scope: !306, inlinedAt: !313)
!315 = !DILocation(line: 87, column: 22, scope: !306, inlinedAt: !313)
!316 = !DILocation(line: 87, column: 20, scope: !306, inlinedAt: !313)
!317 = !DILocation(line: 88, column: 24, scope: !318, inlinedAt: !313)
!318 = distinct !DILexicalBlock(scope: !306, file: !1, line: 88, column: 6)
!319 = !DILocation(line: 88, column: 6, scope: !306, inlinedAt: !313)
!320 = !DILocation(line: 92, column: 18, scope: !306, inlinedAt: !313)
!321 = !DILocation(line: 93, column: 9, scope: !306, inlinedAt: !313)
!322 = !DILocation(line: 93, column: 13, scope: !306, inlinedAt: !313)
!323 = !DILocation(line: 95, column: 2, scope: !306, inlinedAt: !313)
!324 = !DILocation(line: 444, column: 1, scope: !238)
!325 = !DISubprogram(name: "lzma_next_end", scope: !38, file: !38, line: 237, type: !326, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!326 = !DISubroutineType(types: !327)
!327 = !{null, !241, !61}
!328 = !DISubprogram(name: "lzma_alloc", scope: !38, file: !38, line: 211, type: !329, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!329 = !DISubroutineType(types: !330)
!330 = !{!69, !70, !61}
!331 = distinct !DISubprogram(name: "stream_decode", scope: !1, file: !1, line: 100, type: !58, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !332)
!332 = !{!333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !347, !352, !354, !356, !357, !359, !361, !363, !365, !367, !368, !370}
!333 = !DILocalVariable(name: "pcoder", arg: 1, scope: !331, file: !1, line: 100, type: !42)
!334 = !DILocalVariable(name: "allocator", arg: 2, scope: !331, file: !1, line: 100, type: !61)
!335 = !DILocalVariable(name: "in", arg: 3, scope: !331, file: !1, line: 101, type: !77)
!336 = !DILocalVariable(name: "in_pos", arg: 4, scope: !331, file: !1, line: 101, type: !83)
!337 = !DILocalVariable(name: "in_size", arg: 5, scope: !331, file: !1, line: 102, type: !70)
!338 = !DILocalVariable(name: "out", arg: 6, scope: !331, file: !1, line: 102, type: !85)
!339 = !DILocalVariable(name: "out_pos", arg: 7, scope: !331, file: !1, line: 103, type: !83)
!340 = !DILocalVariable(name: "out_size", arg: 8, scope: !331, file: !1, line: 103, type: !70)
!341 = !DILocalVariable(name: "action", arg: 9, scope: !331, file: !1, line: 103, type: !87)
!342 = !DILocalVariable(name: "coder", scope: !331, file: !1, line: 105, type: !229)
!343 = !DILocalVariable(name: "ret", scope: !344, file: !1, line: 122, type: !346)
!344 = distinct !DILexicalBlock(scope: !345, file: !1, line: 110, column: 26)
!345 = distinct !DILexicalBlock(scope: !331, file: !1, line: 109, column: 27)
!346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!347 = !DILocalVariable(name: "filters", scope: !348, file: !1, line: 193, type: !349)
!348 = distinct !DILexicalBlock(scope: !345, file: !1, line: 158, column: 25)
!349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 640, elements: !350)
!350 = !{!351}
!351 = !DISubrange(count: 5)
!352 = !DILocalVariable(name: "ret_", scope: !353, file: !1, line: 197, type: !346)
!353 = distinct !DILexicalBlock(scope: !348, file: !1, line: 197, column: 3)
!354 = !DILocalVariable(name: "memusage", scope: !348, file: !1, line: 201, type: !355)
!355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!356 = !DILocalVariable(name: "ret", scope: !348, file: !1, line: 202, type: !60)
!357 = !DILocalVariable(name: "i", scope: !358, file: !1, line: 229, type: !70)
!358 = distinct !DILexicalBlock(scope: !348, file: !1, line: 229, column: 3)
!359 = !DILocalVariable(name: "ret", scope: !360, file: !1, line: 245, type: !346)
!360 = distinct !DILexicalBlock(scope: !345, file: !1, line: 244, column: 18)
!361 = !DILocalVariable(name: "ret_", scope: !362, file: !1, line: 255, type: !346)
!362 = distinct !DILexicalBlock(scope: !360, file: !1, line: 255, column: 3)
!363 = !DILocalVariable(name: "ret", scope: !364, file: !1, line: 273, type: !346)
!364 = distinct !DILexicalBlock(scope: !345, file: !1, line: 264, column: 18)
!365 = !DILocalVariable(name: "footer_flags", scope: !366, file: !1, line: 297, type: !164)
!366 = distinct !DILexicalBlock(scope: !345, file: !1, line: 283, column: 26)
!367 = !DILocalVariable(name: "ret", scope: !366, file: !1, line: 298, type: !346)
!368 = !DILocalVariable(name: "ret_", scope: !369, file: !1, line: 312, type: !346)
!369 = distinct !DILexicalBlock(scope: !366, file: !1, line: 312, column: 3)
!370 = !DILocalVariable(name: "ret_", scope: !371, file: !1, line: 358, type: !346)
!371 = distinct !DILexicalBlock(scope: !345, file: !1, line: 358, column: 3)
!372 = distinct !DIAssignID()
!373 = !DILocation(line: 0, scope: !348)
!374 = distinct !DIAssignID()
!375 = !DILocation(line: 0, scope: !366)
!376 = !DILocation(line: 0, scope: !331)
!377 = !DILocation(line: 109, column: 17, scope: !331)
!378 = !DILocation(line: 108, column: 2, scope: !331)
!379 = !DILocation(line: 109, column: 2, scope: !331)
!380 = !DILocation(line: 112, column: 3, scope: !344)
!381 = !DILocation(line: 116, column: 14, scope: !382)
!382 = distinct !DILexicalBlock(scope: !344, file: !1, line: 116, column: 7)
!383 = !DILocation(line: 116, column: 18, scope: !382)
!384 = !DILocation(line: 116, column: 7, scope: !344)
!385 = !DILocation(line: 119, column: 14, scope: !344)
!386 = !DILocation(line: 122, column: 24, scope: !344)
!387 = !DILocation(line: 0, scope: !344)
!388 = !DILocation(line: 124, column: 7, scope: !344)
!389 = !DILocation(line: 125, column: 47, scope: !390)
!390 = distinct !DILexicalBlock(scope: !344, file: !1, line: 124, column: 7)
!391 = !{i8 0, i8 2}
!392 = !{}
!393 = !DILocation(line: 125, column: 11, scope: !390)
!394 = !DILocation(line: 131, column: 23, scope: !344)
!395 = !DILocation(line: 135, column: 52, scope: !344)
!396 = !DILocation(line: 135, column: 30, scope: !344)
!397 = !DILocation(line: 139, column: 19, scope: !344)
!398 = !DILocation(line: 143, column: 14, scope: !399)
!399 = distinct !DILexicalBlock(scope: !344, file: !1, line: 143, column: 7)
!400 = !DILocation(line: 143, column: 28, scope: !399)
!401 = !DILocation(line: 147, column: 14, scope: !402)
!402 = distinct !DILexicalBlock(scope: !344, file: !1, line: 147, column: 7)
!403 = !DILocation(line: 148, column: 5, scope: !402)
!404 = !DILocation(line: 148, column: 9, scope: !402)
!405 = !DILocation(line: 147, column: 7, scope: !344)
!406 = !DILocation(line: 152, column: 14, scope: !407)
!407 = distinct !DILexicalBlock(scope: !344, file: !1, line: 152, column: 7)
!408 = !DILocation(line: 159, column: 7, scope: !409)
!409 = distinct !DILexicalBlock(scope: !348, file: !1, line: 159, column: 7)
!410 = !DILocation(line: 159, column: 15, scope: !409)
!411 = !DILocation(line: 159, column: 7, scope: !348)
!412 = !DILocation(line: 162, column: 14, scope: !413)
!413 = distinct !DILexicalBlock(scope: !348, file: !1, line: 162, column: 7)
!414 = !DILocation(line: 162, column: 18, scope: !413)
!415 = !DILocation(line: 162, column: 7, scope: !348)
!416 = !DILocation(line: 179, column: 26, scope: !348)
!417 = !DILocation(line: 164, column: 8, scope: !418)
!418 = distinct !DILexicalBlock(scope: !419, file: !1, line: 164, column: 8)
!419 = distinct !DILexicalBlock(scope: !413, file: !1, line: 162, column: 24)
!420 = !DILocation(line: 164, column: 20, scope: !418)
!421 = !DILocation(line: 164, column: 8, scope: !419)
!422 = !DILocation(line: 165, column: 21, scope: !423)
!423 = distinct !DILexicalBlock(scope: !418, file: !1, line: 164, column: 29)
!424 = !DILocation(line: 166, column: 5, scope: !423)
!425 = !DILocation(line: 173, column: 8, scope: !419)
!426 = !DILocation(line: 173, column: 6, scope: !419)
!427 = !DILocation(line: 175, column: 3, scope: !419)
!428 = !DILocation(line: 179, column: 5, scope: !348)
!429 = !DILocation(line: 178, column: 3, scope: !348)
!430 = !DILocation(line: 182, column: 14, scope: !431)
!431 = distinct !DILexicalBlock(scope: !348, file: !1, line: 182, column: 7)
!432 = !DILocation(line: 182, column: 41, scope: !431)
!433 = !DILocation(line: 182, column: 20, scope: !431)
!434 = !DILocation(line: 182, column: 18, scope: !431)
!435 = !DILocation(line: 182, column: 7, scope: !348)
!436 = !DILocation(line: 185, column: 14, scope: !348)
!437 = !DILocation(line: 188, column: 32, scope: !348)
!438 = !DILocation(line: 193, column: 3, scope: !348)
!439 = !DILocation(line: 194, column: 32, scope: !348)
!440 = !DILocation(line: 197, column: 3, scope: !353)
!441 = !DILocation(line: 0, scope: !353)
!442 = !DILocation(line: 197, column: 3, scope: !443)
!443 = distinct !DILexicalBlock(scope: !353, file: !1, line: 197, column: 3)
!444 = !DILocation(line: 201, column: 29, scope: !348)
!445 = !DILocation(line: 204, column: 16, scope: !446)
!446 = distinct !DILexicalBlock(scope: !348, file: !1, line: 204, column: 7)
!447 = !DILocation(line: 204, column: 7, scope: !348)
!448 = !DILocation(line: 212, column: 20, scope: !449)
!449 = distinct !DILexicalBlock(scope: !446, file: !1, line: 207, column: 10)
!450 = !DILocation(line: 214, column: 26, scope: !451)
!451 = distinct !DILexicalBlock(scope: !449, file: !1, line: 214, column: 8)
!452 = !DILocation(line: 214, column: 17, scope: !451)
!453 = !DILocation(line: 214, column: 8, scope: !449)
!454 = !DILocation(line: 220, column: 11, scope: !455)
!455 = distinct !DILexicalBlock(scope: !451, file: !1, line: 217, column: 11)
!456 = !DILocation(line: 0, scope: !446)
!457 = !DILocation(line: 0, scope: !358)
!458 = !DILocation(line: 230, column: 25, scope: !459)
!459 = distinct !DILexicalBlock(scope: !358, file: !1, line: 229, column: 3)
!460 = !DILocation(line: 230, column: 4, scope: !459)
!461 = !DILocation(line: 232, column: 32, scope: !348)
!462 = !DILocation(line: 236, column: 11, scope: !463)
!463 = distinct !DILexicalBlock(scope: !348, file: !1, line: 236, column: 7)
!464 = !DILocation(line: 236, column: 7, scope: !348)
!465 = !DILocation(line: 240, column: 2, scope: !345)
!466 = !DILocation(line: 239, column: 19, scope: !348)
!467 = !DILocation(line: 245, column: 45, scope: !360)
!468 = !DILocation(line: 246, column: 26, scope: !360)
!469 = !DILocation(line: 245, column: 24, scope: !360)
!470 = !DILocation(line: 0, scope: !360)
!471 = !DILocation(line: 250, column: 11, scope: !472)
!472 = distinct !DILexicalBlock(scope: !360, file: !1, line: 250, column: 7)
!473 = !DILocation(line: 250, column: 7, scope: !360)
!474 = !DILocation(line: 255, column: 3, scope: !362)
!475 = !DILocation(line: 0, scope: !362)
!476 = !DILocation(line: 255, column: 3, scope: !477)
!477 = distinct !DILexicalBlock(scope: !362, file: !1, line: 255, column: 3)
!478 = !DILocation(line: 260, column: 19, scope: !360)
!479 = !DILocation(line: 268, column: 7, scope: !480)
!480 = distinct !DILexicalBlock(scope: !364, file: !1, line: 268, column: 7)
!481 = !DILocation(line: 268, column: 15, scope: !480)
!482 = !DILocation(line: 268, column: 7, scope: !364)
!483 = !DILocation(line: 273, column: 54, scope: !364)
!484 = !DILocation(line: 273, column: 24, scope: !364)
!485 = !DILocation(line: 0, scope: !364)
!486 = !DILocation(line: 275, column: 11, scope: !487)
!487 = distinct !DILexicalBlock(scope: !364, file: !1, line: 275, column: 7)
!488 = !DILocation(line: 275, column: 7, scope: !364)
!489 = !DILocation(line: 278, column: 19, scope: !364)
!490 = !DILocation(line: 285, column: 3, scope: !366)
!491 = !DILocation(line: 289, column: 14, scope: !492)
!492 = distinct !DILexicalBlock(scope: !366, file: !1, line: 289, column: 7)
!493 = !DILocation(line: 289, column: 18, scope: !492)
!494 = !DILocation(line: 289, column: 7, scope: !366)
!495 = !DILocation(line: 292, column: 14, scope: !366)
!496 = !DILocation(line: 297, column: 3, scope: !366)
!497 = !DILocation(line: 298, column: 24, scope: !366)
!498 = !DILocation(line: 300, column: 11, scope: !499)
!499 = distinct !DILexicalBlock(scope: !366, file: !1, line: 300, column: 7)
!500 = !DILocation(line: 300, column: 7, scope: !366)
!501 = !DILocation(line: 301, column: 15, scope: !499)
!502 = !DILocation(line: 301, column: 11, scope: !499)
!503 = !DILocation(line: 301, column: 4, scope: !499)
!504 = !DILocation(line: 306, column: 35, scope: !505)
!505 = distinct !DILexicalBlock(scope: !366, file: !1, line: 306, column: 7)
!506 = !DILocation(line: 306, column: 7, scope: !505)
!507 = !DILocation(line: 307, column: 21, scope: !505)
!508 = !DILocation(line: 307, column: 5, scope: !505)
!509 = !DILocation(line: 306, column: 7, scope: !366)
!510 = !DILocation(line: 312, column: 3, scope: !369)
!511 = !DILocation(line: 0, scope: !369)
!512 = !DILocation(line: 312, column: 3, scope: !513)
!513 = distinct !DILexicalBlock(scope: !369, file: !1, line: 312, column: 3)
!514 = !DILocation(line: 315, column: 15, scope: !515)
!515 = distinct !DILexicalBlock(scope: !366, file: !1, line: 315, column: 7)
!516 = !DILocation(line: 315, column: 7, scope: !366)
!517 = !DILocation(line: 319, column: 2, scope: !345)
!518 = !DILocation(line: 318, column: 19, scope: !366)
!519 = !DILocation(line: 328, column: 16, scope: !520)
!520 = distinct !DILexicalBlock(scope: !521, file: !1, line: 328, column: 8)
!521 = distinct !DILexicalBlock(scope: !345, file: !1, line: 327, column: 16)
!522 = !DILocation(line: 328, column: 8, scope: !521)
!523 = !DILocation(line: 331, column: 16, scope: !524)
!524 = distinct !DILexicalBlock(scope: !525, file: !1, line: 331, column: 9)
!525 = distinct !DILexicalBlock(scope: !520, file: !1, line: 328, column: 28)
!526 = !DILocation(line: 331, column: 9, scope: !525)
!527 = !DILocation(line: 336, column: 19, scope: !525)
!528 = !DILocation(line: 336, column: 23, scope: !525)
!529 = !DILocation(line: 336, column: 12, scope: !525)
!530 = !DILocation(line: 336, column: 5, scope: !525)
!531 = !DILocation(line: 343, column: 8, scope: !532)
!532 = distinct !DILexicalBlock(scope: !521, file: !1, line: 343, column: 8)
!533 = !DILocation(line: 343, column: 20, scope: !532)
!534 = !DILocation(line: 343, column: 8, scope: !521)
!535 = !DILocation(line: 346, column: 4, scope: !521)
!536 = !DILocation(line: 347, column: 25, scope: !521)
!537 = !DILocation(line: 347, column: 29, scope: !521)
!538 = !DILocation(line: 347, column: 34, scope: !521)
!539 = !DILocation(line: 347, column: 15, scope: !521)
!540 = distinct !{!540, !541, !542}
!541 = !DILocation(line: 327, column: 3, scope: !345)
!542 = !DILocation(line: 348, column: 3, scope: !345)
!543 = !DILocation(line: 352, column: 14, scope: !544)
!544 = distinct !DILexicalBlock(scope: !345, file: !1, line: 352, column: 7)
!545 = !DILocation(line: 352, column: 18, scope: !544)
!546 = !DILocation(line: 352, column: 7, scope: !345)
!547 = !DILocation(line: 353, column: 4, scope: !548)
!548 = distinct !DILexicalBlock(scope: !544, file: !1, line: 352, column: 24)
!549 = !DILocation(line: 354, column: 4, scope: !548)
!550 = !DILocation(line: 0, scope: !306, inlinedAt: !551)
!551 = distinct !DILocation(line: 358, column: 3, scope: !371)
!552 = !DILocation(line: 87, column: 50, scope: !306, inlinedAt: !551)
!553 = !DILocation(line: 87, column: 22, scope: !306, inlinedAt: !551)
!554 = !DILocation(line: 87, column: 20, scope: !306, inlinedAt: !551)
!555 = !DILocation(line: 88, column: 24, scope: !318, inlinedAt: !551)
!556 = !DILocation(line: 88, column: 6, scope: !306, inlinedAt: !551)
!557 = !DILocation(line: 92, column: 18, scope: !306, inlinedAt: !551)
!558 = !DILocation(line: 93, column: 13, scope: !306, inlinedAt: !551)
!559 = !DILocation(line: 0, scope: !371)
!560 = distinct !{!560, !378, !561}
!561 = !DILocation(line: 364, column: 2, scope: !331)
!562 = !DILocation(line: 0, scope: !345)
!563 = !DILocation(line: 367, column: 1, scope: !331)
!564 = distinct !DISubprogram(name: "stream_decoder_end", scope: !1, file: !1, line: 371, type: !91, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !565)
!565 = !{!566, !567, !568}
!566 = !DILocalVariable(name: "pcoder", arg: 1, scope: !564, file: !1, line: 371, type: !42)
!567 = !DILocalVariable(name: "allocator", arg: 2, scope: !564, file: !1, line: 371, type: !61)
!568 = !DILocalVariable(name: "coder", scope: !564, file: !1, line: 373, type: !229)
!569 = !DILocation(line: 0, scope: !564)
!570 = !DILocation(line: 374, column: 24, scope: !564)
!571 = !DILocation(line: 374, column: 2, scope: !564)
!572 = !DILocation(line: 375, column: 29, scope: !564)
!573 = !DILocation(line: 375, column: 2, scope: !564)
!574 = !DILocation(line: 376, column: 2, scope: !564)
!575 = !DILocation(line: 378, column: 1, scope: !564)
!576 = distinct !DISubprogram(name: "stream_decoder_get_check", scope: !1, file: !1, line: 382, type: !95, scopeLine: 383, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !577)
!577 = !{!578, !579}
!578 = !DILocalVariable(name: "pcoder", arg: 1, scope: !576, file: !1, line: 382, type: !98)
!579 = !DILocalVariable(name: "coder", scope: !576, file: !1, line: 384, type: !580)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!582 = !DILocation(line: 0, scope: !576)
!583 = !DILocation(line: 385, column: 29, scope: !576)
!584 = !DILocation(line: 385, column: 2, scope: !576)
!585 = distinct !DISubprogram(name: "stream_decoder_memconfig", scope: !1, file: !1, line: 390, type: !102, scopeLine: 392, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !586)
!586 = !{!587, !588, !589, !590, !591}
!587 = !DILocalVariable(name: "pcoder", arg: 1, scope: !585, file: !1, line: 390, type: !42)
!588 = !DILocalVariable(name: "memusage", arg: 2, scope: !585, file: !1, line: 390, type: !104)
!589 = !DILocalVariable(name: "old_memlimit", arg: 3, scope: !585, file: !1, line: 391, type: !104)
!590 = !DILocalVariable(name: "new_memlimit", arg: 4, scope: !585, file: !1, line: 391, type: !47)
!591 = !DILocalVariable(name: "coder", scope: !585, file: !1, line: 393, type: !229)
!592 = !DILocation(line: 0, scope: !585)
!593 = !DILocation(line: 394, column: 21, scope: !585)
!594 = !DILocation(line: 394, column: 12, scope: !585)
!595 = !DILocation(line: 395, column: 25, scope: !585)
!596 = !DILocation(line: 395, column: 16, scope: !585)
!597 = !DILocation(line: 397, column: 19, scope: !598)
!598 = distinct !DILexicalBlock(scope: !585, file: !1, line: 397, column: 6)
!599 = !DILocation(line: 397, column: 6, scope: !585)
!600 = !DILocation(line: 398, column: 29, scope: !601)
!601 = distinct !DILexicalBlock(scope: !602, file: !1, line: 398, column: 7)
!602 = distinct !DILexicalBlock(scope: !598, file: !1, line: 397, column: 25)
!603 = !DILocation(line: 398, column: 20, scope: !601)
!604 = !DILocation(line: 398, column: 7, scope: !602)
!605 = !DILocation(line: 401, column: 19, scope: !602)
!606 = !DILocation(line: 402, column: 2, scope: !602)
!607 = !DILocation(line: 405, column: 1, scope: !585)
!608 = distinct !DISubprogram(name: "lzma_stream_decoder", scope: !1, file: !1, line: 448, type: !609, scopeLine: 449, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !635)
!609 = !DISubroutineType(types: !610)
!610 = !{!60, !611, !47, !123}
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_stream", file: !4, line: 490, baseType: !613)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 453, size: 1088, elements: !614)
!614 = !{!615, !616, !617, !618, !619, !620, !621, !622, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !613, file: !4, line: 454, baseType: !78, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !613, file: !4, line: 455, baseType: !70, size: 64, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "total_in", scope: !613, file: !4, line: 456, baseType: !47, size: 64, offset: 128)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !613, file: !4, line: 458, baseType: !86, size: 64, offset: 192)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !613, file: !4, line: 459, baseType: !70, size: 64, offset: 256)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "total_out", scope: !613, file: !4, line: 460, baseType: !47, size: 64, offset: 320)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !613, file: !4, line: 468, baseType: !61, size: 64, offset: 384)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !613, file: !4, line: 471, baseType: !623, size: 64, offset: 448)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_internal", file: !4, line: 411, baseType: !211)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !613, file: !4, line: 479, baseType: !69, size: 64, offset: 512)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !613, file: !4, line: 480, baseType: !69, size: 64, offset: 576)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !613, file: !4, line: 481, baseType: !69, size: 64, offset: 640)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr4", scope: !613, file: !4, line: 482, baseType: !69, size: 64, offset: 704)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !613, file: !4, line: 483, baseType: !47, size: 64, offset: 768)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !613, file: !4, line: 484, baseType: !47, size: 64, offset: 832)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !613, file: !4, line: 485, baseType: !70, size: 64, offset: 896)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !613, file: !4, line: 486, baseType: !70, size: 64, offset: 960)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !613, file: !4, line: 487, baseType: !147, size: 32, offset: 1024)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !613, file: !4, line: 488, baseType: !147, size: 32, offset: 1056)
!635 = !{!636, !637, !638, !639, !642}
!636 = !DILocalVariable(name: "strm", arg: 1, scope: !608, file: !1, line: 448, type: !611)
!637 = !DILocalVariable(name: "memlimit", arg: 2, scope: !608, file: !1, line: 448, type: !47)
!638 = !DILocalVariable(name: "flags", arg: 3, scope: !608, file: !1, line: 448, type: !123)
!639 = !DILocalVariable(name: "ret_", scope: !640, file: !1, line: 450, type: !346)
!640 = distinct !DILexicalBlock(scope: !641, file: !1, line: 450, column: 2)
!641 = distinct !DILexicalBlock(scope: !608, file: !1, line: 450, column: 2)
!642 = !DILocalVariable(name: "ret_", scope: !641, file: !1, line: 450, type: !346)
!643 = !DILocation(line: 0, scope: !608)
!644 = !DILocation(line: 450, column: 2, scope: !640)
!645 = !DILocation(line: 0, scope: !640)
!646 = !DILocation(line: 450, column: 2, scope: !647)
!647 = distinct !DILexicalBlock(scope: !640, file: !1, line: 450, column: 2)
!648 = !DILocation(line: 450, column: 2, scope: !641)
!649 = !DILocation(line: 0, scope: !641)
!650 = !DILocation(line: 450, column: 2, scope: !651)
!651 = distinct !DILexicalBlock(scope: !641, file: !1, line: 450, column: 2)
!652 = !DILocation(line: 450, column: 2, scope: !653)
!653 = distinct !DILexicalBlock(scope: !651, file: !1, line: 450, column: 2)
!654 = !DILocation(line: 452, column: 8, scope: !608)
!655 = !DILocation(line: 452, column: 18, scope: !608)
!656 = !DILocation(line: 452, column: 46, scope: !608)
!657 = !DILocation(line: 453, column: 8, scope: !608)
!658 = !DILocation(line: 453, column: 2, scope: !608)
!659 = !DILocation(line: 453, column: 49, scope: !608)
!660 = !DILocation(line: 455, column: 2, scope: !608)
!661 = !DILocation(line: 456, column: 1, scope: !608)
!662 = !DISubprogram(name: "lzma_strm_init", scope: !38, file: !38, line: 220, type: !663, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!663 = !DISubroutineType(types: !664)
!664 = !{!60, !611}
!665 = !DISubprogram(name: "lzma_end", scope: !4, file: !4, line: 546, type: !666, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!666 = !DISubroutineType(types: !667)
!667 = !{null, !611}
!668 = !DISubprogram(name: "lzma_bufcpy", scope: !38, file: !38, line: 242, type: !669, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!669 = !DISubroutineType(types: !670)
!670 = !{!70, !77, !83, !70, !85, !83, !70}
!671 = !DISubprogram(name: "lzma_stream_header_decode", scope: !165, file: !165, line: 174, type: !672, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!672 = !DISubroutineType(types: !673)
!673 = !{!60, !674, !78}
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!675 = !DISubprogram(name: "lzma_check_is_supported", scope: !26, file: !26, line: 81, type: !676, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!676 = !DISubroutineType(types: !677)
!677 = !{!155, !97}
!678 = !DISubprogram(name: "lzma_block_header_decode", scope: !119, file: !119, line: 343, type: !679, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!679 = !DISubroutineType(types: !680)
!680 = !{!60, !681, !61, !78}
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!682 = !DISubprogram(name: "lzma_raw_decoder_memusage", scope: !112, file: !112, line: 157, type: !683, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!683 = !DISubroutineType(types: !684)
!684 = !{!47, !109}
!685 = !DISubprogram(name: "lzma_block_decoder_init", scope: !686, file: !686, line: 19, type: !687, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!686 = !DIFile(filename: "liblzma/common/block_decoder.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "d741972e9232abef21e8d748627f2569")
!687 = !DISubroutineType(types: !688)
!688 = !{!60, !241, !61, !681}
!689 = !DISubprogram(name: "lzma_free", scope: !38, file: !38, line: 215, type: !690, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!690 = !DISubroutineType(types: !691)
!691 = !{null, !69, !61}
!692 = !DISubprogram(name: "lzma_index_hash_append", scope: !188, file: !188, line: 65, type: !693, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!693 = !DISubroutineType(types: !694)
!694 = !{!60, !186, !45, !45}
!695 = !DISubprogram(name: "lzma_block_unpadded_size", scope: !119, file: !119, line: 391, type: !696, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!696 = !DISubroutineType(types: !697)
!697 = !{!45, !698}
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!700 = !DISubprogram(name: "lzma_index_hash_decode", scope: !188, file: !188, line: 95, type: !701, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!701 = !DISubroutineType(types: !702)
!702 = !{!60, !186, !78, !84, !70}
!703 = !DISubprogram(name: "lzma_stream_footer_decode", scope: !165, file: !165, line: 201, type: !672, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!704 = !DISubprogram(name: "lzma_index_hash_size", scope: !188, file: !188, line: 105, type: !705, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!705 = !DISubroutineType(types: !706)
!706 = !{!45, !707}
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !187)
!709 = !DISubprogram(name: "lzma_stream_flags_compare", scope: !165, file: !165, line: 221, type: !710, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!710 = !DISubroutineType(types: !711)
!711 = !{!60, !712, !712}
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !164)
!714 = !DISubprogram(name: "lzma_index_hash_end", scope: !188, file: !188, line: 47, type: !715, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!715 = !DISubroutineType(types: !716)
!716 = !{null, !186, !61}
!717 = !DISubprogram(name: "lzma_index_hash_init", scope: !188, file: !188, line: 39, type: !718, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!718 = !DISubroutineType(types: !719)
!719 = !{!186, !186, !61}
