; ModuleID = 'liblzma/common/stream_decoder.c'
source_filename = "liblzma/common/stream_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_filter = type { i64, ptr }
%struct.lzma_stream_flags = type { i32, i64, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 12) i32 @lzma_stream_decoder_init(ptr noundef %next, ptr noundef %allocator, i64 noundef %memlimit, i32 noundef %flags) #0 {
entry:
  %init = getelementptr inbounds i8, ptr %next, i64 16
  %0 = load i64, ptr %init, align 8
  %cmp.not = icmp eq i64 %0, ptrtoint (ptr @lzma_stream_decoder_init to i64)
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @lzma_next_end(ptr noundef nonnull %next, ptr noundef %allocator) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i64 ptrtoint (ptr @lzma_stream_decoder_init to i64), ptr %init, align 8
  %cmp2 = icmp eq i64 %memlimit, 0
  br i1 %cmp2, label %return, label %if.end4

if.end4:                                          ; preds = %if.end
  %tobool.not = icmp ult i32 %flags, 16
  br i1 %tobool.not, label %if.end6, label %return

if.end6:                                          ; preds = %if.end4
  %1 = load ptr, ptr %next, align 8
  %cmp7 = icmp eq ptr %1, null
  br i1 %cmp7, label %if.then8, label %if.end22

if.then8:                                         ; preds = %if.end6
  %call = tail call ptr @lzma_alloc(i64 noundef 1400, ptr noundef %allocator) #6
  store ptr %call, ptr %next, align 8
  %cmp11 = icmp eq ptr %call, null
  br i1 %cmp11, label %return, label %if.end13

if.end13:                                         ; preds = %if.then8
  %code = getelementptr inbounds i8, ptr %next, i64 24
  store ptr @stream_decode, ptr %code, align 8
  %end = getelementptr inbounds i8, ptr %next, i64 32
  store ptr @stream_decoder_end, ptr %end, align 8
  %get_check = getelementptr inbounds i8, ptr %next, i64 40
  store ptr @stream_decoder_get_check, ptr %get_check, align 8
  %memconfig = getelementptr inbounds i8, ptr %next, i64 48
  store ptr @stream_decoder_memconfig, ptr %memconfig, align 8
  %block_decoder = getelementptr inbounds i8, ptr %call, i64 8
  store ptr null, ptr %block_decoder, align 8
  %.compoundliteral.sroa.2.0.block_decoder.sroa_idx = getelementptr inbounds i8, ptr %call, i64 16
  store i64 -1, ptr %.compoundliteral.sroa.2.0.block_decoder.sroa_idx, align 8
  %.compoundliteral.sroa.3.0.block_decoder.sroa_idx = getelementptr inbounds i8, ptr %call, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.compoundliteral.sroa.3.0.block_decoder.sroa_idx, i8 0, i64 48, i1 false)
  %2 = load ptr, ptr %next, align 8
  %index_hash = getelementptr inbounds i8, ptr %2, i64 336
  store ptr null, ptr %index_hash, align 8
  %.pre = load ptr, ptr %next, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.end13, %if.end6
  %3 = phi ptr [ %.pre, %if.end13 ], [ %1, %if.end6 ]
  %memlimit24 = getelementptr inbounds i8, ptr %3, i64 344
  store i64 %memlimit, ptr %memlimit24, align 8
  %4 = load ptr, ptr %next, align 8
  %memusage = getelementptr inbounds i8, ptr %4, i64 352
  store i64 32768, ptr %memusage, align 8
  %5 = load ptr, ptr %next, align 8
  %tell_no_check = getelementptr inbounds i8, ptr %5, i64 360
  %6 = trunc nuw i32 %flags to i8
  %storedv = and i8 %6, 1
  store i8 %storedv, ptr %tell_no_check, align 8
  %7 = load ptr, ptr %next, align 8
  %tell_unsupported_check = getelementptr inbounds i8, ptr %7, i64 361
  %8 = lshr i8 %6, 1
  %storedv32 = and i8 %8, 1
  store i8 %storedv32, ptr %tell_unsupported_check, align 1
  %9 = load ptr, ptr %next, align 8
  %tell_any_check = getelementptr inbounds i8, ptr %9, i64 362
  %10 = lshr i8 %6, 2
  %storedv36 = and i8 %10, 1
  store i8 %storedv36, ptr %tell_any_check, align 2
  %cmp38 = icmp ugt i32 %flags, 7
  %11 = load ptr, ptr %next, align 8
  %concatenated = getelementptr inbounds i8, ptr %11, i64 363
  %storedv40 = zext i1 %cmp38 to i8
  store i8 %storedv40, ptr %concatenated, align 1
  %12 = load ptr, ptr %next, align 8
  %first_stream = getelementptr inbounds i8, ptr %12, i64 364
  store i8 1, ptr %first_stream, align 4
  %13 = load ptr, ptr %next, align 8
  %index_hash.i = getelementptr inbounds i8, ptr %13, i64 336
  %14 = load ptr, ptr %index_hash.i, align 8
  %call.i = tail call ptr @lzma_index_hash_init(ptr noundef %14, ptr noundef %allocator) #6
  store ptr %call.i, ptr %index_hash.i, align 8
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %return, label %if.end.i

if.end.i:                                         ; preds = %if.end22
  store i32 0, ptr %13, align 8
  %pos.i = getelementptr inbounds i8, ptr %13, i64 368
  store i64 0, ptr %pos.i, align 8
  br label %return

return:                                           ; preds = %if.end.i, %if.end22, %if.then8, %if.end4, %if.end
  %retval.0 = phi i32 [ 11, %if.end ], [ 8, %if.end4 ], [ 5, %if.then8 ], [ 0, %if.end.i ], [ 5, %if.end22 ]
  ret i32 %retval.0
}

declare void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @stream_decode(ptr noundef %pcoder, ptr noundef %allocator, ptr noalias noundef %in, ptr noalias noundef %in_pos, i64 noundef %in_size, ptr noalias noundef %out, ptr noalias noundef %out_pos, i64 noundef %out_size, i32 noundef %action) #0 {
entry:
  %filters = alloca [5 x %struct.lzma_filter], align 16
  %footer_flags = alloca %struct.lzma_stream_flags, align 8
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
  %.pre = load i32, ptr %pcoder, align 8
  %options = getelementptr inbounds i8, ptr %filters, i64 8
  %options.1 = getelementptr inbounds i8, ptr %filters, i64 24
  %options.2 = getelementptr inbounds i8, ptr %filters, i64 40
  %options.3 = getelementptr inbounds i8, ptr %filters, i64 56
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %0 = phi i32 [ %.pre, %entry ], [ %.be, %while.cond.backedge ]
  switch i32 %0, label %cleanup248 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb31
    i32 2, label %sw.bb109
    i32 3, label %sw.bb137
    i32 4, label %sw.bb153
    i32 5, label %sw.bb205
  ]

sw.bb:                                            ; preds = %while.cond
  %call = call i64 @lzma_bufcpy(ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size, ptr noundef nonnull %buffer154, ptr noundef nonnull %pos156, i64 noundef 12) #6
  %1 = load i64, ptr %pos156, align 8
  %cmp = icmp ult i64 %1, 12
  br i1 %cmp, label %cleanup248, label %if.end

if.end:                                           ; preds = %sw.bb
  store i64 0, ptr %pos156, align 8
  %call5 = call i32 @lzma_stream_header_decode(ptr noundef nonnull %stream_flags186, ptr noundef nonnull %buffer154) #6
  switch i32 %call5, label %cleanup248 [
    i32 0, label %if.end9
    i32 7, label %land.lhs.true
  ]

land.lhs.true:                                    ; preds = %if.end
  %2 = load i8, ptr %first_stream10, align 4, !range !5, !noundef !6
  %loadedv = trunc nuw i8 %2 to i1
  %spec.select = select i1 %loadedv, i32 7, i32 9
  br label %cleanup248

if.end9:                                          ; preds = %if.end
  store i8 0, ptr %first_stream10, align 4
  %3 = load i32, ptr %check, align 8
  store i32 %3, ptr %check12, align 8
  store i32 1, ptr %pcoder, align 8
  %4 = load i8, ptr %tell_no_check, align 8, !range !5, !noundef !6
  %loadedv14 = trunc nuw i8 %4 to i1
  %cmp18 = icmp eq i32 %3, 0
  %or.cond = select i1 %loadedv14, i1 %cmp18, i1 false
  br i1 %or.cond, label %cleanup248, label %if.end20

if.end20:                                         ; preds = %if.end9
  %5 = load i8, ptr %tell_unsupported_check, align 1, !range !5, !noundef !6
  %loadedv21 = trunc nuw i8 %5 to i1
  br i1 %loadedv21, label %land.lhs.true22, label %cleanup

land.lhs.true22:                                  ; preds = %if.end20
  %call25 = call zeroext i8 @lzma_check_is_supported(i32 noundef %3) #6
  %tobool.not = icmp eq i8 %call25, 0
  br i1 %tobool.not, label %cleanup248, label %cleanup

cleanup:                                          ; preds = %if.end20, %land.lhs.true22
  %6 = load i8, ptr %tell_any_check, align 2, !range !5, !noundef !6
  %loadedv28 = trunc nuw i8 %6 to i1
  br i1 %loadedv28, label %cleanup248, label %sw.bb31

sw.bb31:                                          ; preds = %cleanup, %while.cond
  %7 = load i64, ptr %in_pos, align 8
  %cmp32.not = icmp ult i64 %7, %in_size
  br i1 %cmp32.not, label %if.end34, label %cleanup248

if.end34:                                         ; preds = %sw.bb31
  %8 = load i64, ptr %pos156, align 8
  %cmp36 = icmp eq i64 %8, 0
  br i1 %cmp36, label %if.then37, label %if.end34.if.end46_crit_edge

if.end34.if.end46_crit_edge:                      ; preds = %if.end34
  %.pre393 = load i32, ptr %header_size, align 4
  br label %if.end46

if.then37:                                        ; preds = %if.end34
  %arrayidx = getelementptr inbounds i8, ptr %in, i64 %7
  %9 = load i8, ptr %arrayidx, align 1
  %cmp38 = icmp eq i8 %9, 0
  br i1 %cmp38, label %if.then40, label %if.end42

if.then40:                                        ; preds = %if.then37
  store i32 3, ptr %pcoder, align 8
  br label %while.cond.backedge

if.end42:                                         ; preds = %if.then37
  %conv = zext i8 %9 to i32
  %add = shl nuw nsw i32 %conv, 2
  %mul = add nuw nsw i32 %add, 4
  store i32 %mul, ptr %header_size, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.end34.if.end46_crit_edge, %if.end42
  %10 = phi i32 [ %.pre393, %if.end34.if.end46_crit_edge ], [ %mul, %if.end42 ]
  %conv52 = zext i32 %10 to i64
  %call53 = call i64 @lzma_bufcpy(ptr noundef %in, ptr noundef nonnull %in_pos, i64 noundef %in_size, ptr noundef nonnull %buffer154, ptr noundef nonnull %pos156, i64 noundef %conv52) #6
  %11 = load i64, ptr %pos156, align 8
  %12 = load i32, ptr %header_size, align 4
  %conv57 = zext i32 %12 to i64
  %cmp58 = icmp ult i64 %11, %conv57
  br i1 %cmp58, label %cleanup248, label %if.end61

if.end61:                                         ; preds = %if.end46
  store i64 0, ptr %pos156, align 8
  store i32 0, ptr %block_options50, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %filters) #6
  store ptr %filters, ptr %filters66, align 8
  %call70 = call i32 @lzma_block_header_decode(ptr noundef nonnull %block_options50, ptr noundef %allocator, ptr noundef nonnull %buffer154) #6
  %cmp71.not = icmp eq i32 %call70, 0
  br i1 %cmp71.not, label %do.end, label %cleanup106.thread

do.end:                                           ; preds = %if.end61
  %call79 = call i64 @lzma_raw_decoder_memusage(ptr noundef nonnull %filters) #6
  %cmp81 = icmp eq i64 %call79, -1
  br i1 %cmp81, label %if.end92, label %if.else

if.else:                                          ; preds = %do.end
  store i64 %call79, ptr %memusage84, align 8
  %13 = load i64, ptr %memlimit, align 8
  %cmp85 = icmp ugt i64 %call79, %13
  br i1 %cmp85, label %if.end92, label %if.else88

if.else88:                                        ; preds = %if.else
  %call90 = call i32 @lzma_block_decoder_init(ptr noundef nonnull %block_decoder, ptr noundef %allocator, ptr noundef nonnull %block_options50) #6
  br label %if.end92

if.end92:                                         ; preds = %if.else, %do.end, %if.else88
  %ret80.0 = phi i32 [ %call90, %if.else88 ], [ 8, %do.end ], [ 6, %if.else ]
  %14 = load ptr, ptr %options, align 8
  call void @lzma_free(ptr noundef %14, ptr noundef %allocator) #6
  %15 = load ptr, ptr %options.1, align 8
  call void @lzma_free(ptr noundef %15, ptr noundef %allocator) #6
  %16 = load ptr, ptr %options.2, align 8
  call void @lzma_free(ptr noundef %16, ptr noundef %allocator) #6
  %17 = load ptr, ptr %options.3, align 8
  call void @lzma_free(ptr noundef %17, ptr noundef %allocator) #6
  store ptr null, ptr %filters66, align 8
  %cmp99.not = icmp eq i32 %ret80.0, 0
  br i1 %cmp99.not, label %cleanup106, label %cleanup106.thread

cleanup106.thread:                                ; preds = %if.end61, %if.end92
  %retval.5.ph = phi i32 [ %ret80.0, %if.end92 ], [ %call70, %if.end61 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %filters) #6
  br label %cleanup248

cleanup106:                                       ; preds = %if.end92
  store i32 2, ptr %pcoder, align 8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %filters) #6
  br label %sw.bb109

sw.bb109:                                         ; preds = %cleanup106, %while.cond
  %18 = load ptr, ptr %code, align 8
  %19 = load ptr, ptr %block_decoder, align 8
  %call114 = call i32 %18(ptr noundef %19, ptr noundef %allocator, ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size, ptr noundef %out, ptr noundef %out_pos, i64 noundef %out_size, i32 noundef %action) #6
  %cmp115.not = icmp eq i32 %call114, 1
  br i1 %cmp115.not, label %do.body119, label %cleanup248

do.body119:                                       ; preds = %sw.bb109
  %20 = load ptr, ptr %index_hash143, align 8
  %call122 = call i64 @lzma_block_unpadded_size(ptr noundef nonnull %block_options50) #6
  %21 = load i64, ptr %uncompressed_size, align 8
  %call124 = call i32 @lzma_index_hash_append(ptr noundef %20, i64 noundef %call122, i64 noundef %21) #6
  %cmp125.not = icmp eq i32 %call124, 0
  br i1 %cmp125.not, label %cleanup135, label %cleanup248

cleanup135:                                       ; preds = %do.body119
  store i32 1, ptr %pcoder, align 8
  br label %while.cond.backedge

sw.bb137:                                         ; preds = %while.cond
  %22 = load i64, ptr %in_pos, align 8
  %cmp138.not = icmp ult i64 %22, %in_size
  br i1 %cmp138.not, label %if.end141, label %cleanup248

if.end141:                                        ; preds = %sw.bb137
  %23 = load ptr, ptr %index_hash143, align 8
  %call144 = call i32 @lzma_index_hash_decode(ptr noundef %23, ptr noundef %in, ptr noundef nonnull %in_pos, i64 noundef %in_size) #6
  %cmp145.not = icmp eq i32 %call144, 1
  br i1 %cmp145.not, label %cleanup150.thread, label %cleanup248

cleanup150.thread:                                ; preds = %if.end141
  store i32 4, ptr %pcoder, align 8
  br label %sw.bb153

sw.bb153:                                         ; preds = %cleanup150.thread, %while.cond
  %call157 = call i64 @lzma_bufcpy(ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size, ptr noundef nonnull %buffer154, ptr noundef nonnull %pos156, i64 noundef 12) #6
  %24 = load i64, ptr %pos156, align 8
  %cmp159 = icmp ult i64 %24, 12
  br i1 %cmp159, label %cleanup248, label %if.end162

if.end162:                                        ; preds = %sw.bb153
  store i64 0, ptr %pos156, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %footer_flags) #6
  %call167 = call i32 @lzma_stream_footer_decode(ptr noundef nonnull %footer_flags, ptr noundef nonnull %buffer154) #6
  %cmp168.not = icmp eq i32 %call167, 0
  br i1 %cmp168.not, label %if.end177, label %if.then170

if.then170:                                       ; preds = %if.end162
  %cmp171 = icmp eq i32 %call167, 7
  %cond176 = select i1 %cmp171, i32 9, i32 %call167
  br label %cleanup201.thread

if.end177:                                        ; preds = %if.end162
  %25 = load ptr, ptr %index_hash143, align 8
  %call179 = call i64 @lzma_index_hash_size(ptr noundef %25) #6
  %26 = load i64, ptr %backward_size, align 8
  %cmp180.not = icmp eq i64 %call179, %26
  br i1 %cmp180.not, label %do.body184, label %cleanup201.thread

do.body184:                                       ; preds = %if.end177
  %call187 = call i32 @lzma_stream_flags_compare(ptr noundef nonnull %stream_flags186, ptr noundef nonnull %footer_flags) #6
  %cmp188.not = icmp eq i32 %call187, 0
  br i1 %cmp188.not, label %do.end196, label %cleanup201.thread

do.end196:                                        ; preds = %do.body184
  %27 = load i8, ptr %concatenated, align 1, !range !5, !noundef !6
  %loadedv197 = trunc nuw i8 %27 to i1
  br i1 %loadedv197, label %cleanup201, label %cleanup201.thread

cleanup201.thread:                                ; preds = %do.body184, %if.end177, %do.end196, %if.then170
  %retval.12.ph = phi i32 [ %cond176, %if.then170 ], [ %call187, %do.body184 ], [ 9, %if.end177 ], [ 1, %do.end196 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %footer_flags) #6
  br label %cleanup248

cleanup201:                                       ; preds = %do.end196
  store i32 5, ptr %pcoder, align 8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %footer_flags) #6
  br label %sw.bb205

sw.bb205:                                         ; preds = %cleanup201, %while.cond
  %in_pos.promoted = load i64, ptr %in_pos, align 8
  %cmp208.not387 = icmp ult i64 %in_pos.promoted, %in_size
  br i1 %cmp208.not387, label %if.end219, label %if.then210

if.then210:                                       ; preds = %sw.bb205, %if.end225
  %cmp211.not = icmp eq i32 %action, 3
  br i1 %cmp211.not, label %if.end214, label %cleanup248

if.end214:                                        ; preds = %if.then210
  %28 = load i64, ptr %pos156, align 8
  %cmp216 = icmp eq i64 %28, 0
  %cond218 = select i1 %cmp216, i32 1, i32 9
  br label %cleanup248

if.end219:                                        ; preds = %sw.bb205, %if.end225
  %29 = phi i64 [ %inc226, %if.end225 ], [ %in_pos.promoted, %sw.bb205 ]
  %arrayidx220 = getelementptr inbounds i8, ptr %in, i64 %29
  %30 = load i8, ptr %arrayidx220, align 1
  %cmp222.not = icmp eq i8 %30, 0
  br i1 %cmp222.not, label %if.end225, label %while.end

if.end225:                                        ; preds = %if.end219
  %inc226 = add i64 %29, 1
  store i64 %inc226, ptr %in_pos, align 8
  %31 = load i64, ptr %pos156, align 8
  %add228 = add i64 %31, 1
  %and = and i64 %add228, 3
  store i64 %and, ptr %pos156, align 8
  %exitcond.not = icmp eq i64 %inc226, %in_size
  br i1 %exitcond.not, label %if.then210, label %if.end219

while.end:                                        ; preds = %if.end219
  %32 = load i64, ptr %pos156, align 8
  %cmp231.not = icmp eq i64 %32, 0
  br i1 %cmp231.not, label %do.body236, label %if.then233

if.then233:                                       ; preds = %while.end
  %inc234 = add nuw i64 %29, 1
  store i64 %inc234, ptr %in_pos, align 8
  br label %cleanup248

do.body236:                                       ; preds = %while.end
  %33 = load ptr, ptr %index_hash143, align 8
  %call.i = call ptr @lzma_index_hash_init(ptr noundef %33, ptr noundef %allocator) #6
  store ptr %call.i, ptr %index_hash143, align 8
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %cleanup248, label %stream_decoder_reset.exit.thread

stream_decoder_reset.exit.thread:                 ; preds = %do.body236
  store i32 0, ptr %pcoder, align 8
  store i64 0, ptr %pos156, align 8
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %stream_decoder_reset.exit.thread, %cleanup135, %if.then40
  %.be = phi i32 [ 1, %cleanup135 ], [ 3, %if.then40 ], [ 0, %stream_decoder_reset.exit.thread ]
  br label %while.cond

cleanup248:                                       ; preds = %do.body236, %if.end9, %sw.bb109, %do.body119, %land.lhs.true22, %if.end141, %while.cond, %sw.bb153, %sw.bb137, %if.end46, %sw.bb31, %sw.bb, %cleanup, %if.end, %land.lhs.true, %cleanup201.thread, %cleanup106.thread, %if.then210, %if.then233, %if.end214
  %retval.16 = phi i32 [ %cond218, %if.end214 ], [ 9, %if.then233 ], [ 0, %if.then210 ], [ %retval.5.ph, %cleanup106.thread ], [ %retval.12.ph, %cleanup201.thread ], [ %spec.select, %land.lhs.true ], [ %call5, %if.end ], [ 5, %do.body236 ], [ 2, %if.end9 ], [ %call124, %do.body119 ], [ %call114, %sw.bb109 ], [ 3, %land.lhs.true22 ], [ %call144, %if.end141 ], [ 11, %while.cond ], [ 0, %sw.bb153 ], [ 0, %sw.bb137 ], [ 0, %if.end46 ], [ 0, %sw.bb31 ], [ 0, %sw.bb ], [ 4, %cleanup ]
  ret i32 %retval.16
}

; Function Attrs: nounwind uwtable
define internal void @stream_decoder_end(ptr noundef %pcoder, ptr noundef %allocator) #0 {
entry:
  %block_decoder = getelementptr inbounds i8, ptr %pcoder, i64 8
  tail call void @lzma_next_end(ptr noundef nonnull %block_decoder, ptr noundef %allocator) #6
  %index_hash = getelementptr inbounds i8, ptr %pcoder, i64 336
  %0 = load ptr, ptr %index_hash, align 8
  tail call void @lzma_index_hash_end(ptr noundef %0, ptr noundef %allocator) #6
  tail call void @lzma_free(ptr noundef %pcoder, ptr noundef %allocator) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @stream_decoder_get_check(ptr nocapture noundef readonly %pcoder) #2 {
entry:
  %check = getelementptr inbounds i8, ptr %pcoder, i64 296
  %0 = load i32, ptr %check, align 8
  ret i32 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 0, 7) i32 @stream_decoder_memconfig(ptr nocapture noundef %pcoder, ptr nocapture noundef writeonly %memusage, ptr nocapture noundef writeonly %old_memlimit, i64 noundef %new_memlimit) #3 {
entry:
  %memusage1 = getelementptr inbounds i8, ptr %pcoder, i64 352
  %0 = load i64, ptr %memusage1, align 8
  store i64 %0, ptr %memusage, align 8
  %memlimit = getelementptr inbounds i8, ptr %pcoder, i64 344
  %1 = load i64, ptr %memlimit, align 8
  store i64 %1, ptr %old_memlimit, align 8
  %cmp.not = icmp eq i64 %new_memlimit, 0
  br i1 %cmp.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %memusage1, align 8
  %cmp3 = icmp ugt i64 %2, %new_memlimit
  br i1 %cmp3, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  store i64 %new_memlimit, ptr %memlimit, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end, %if.then
  %retval.0 = phi i32 [ 6, %if.then ], [ 0, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_stream_decoder(ptr noundef %strm, i64 noundef %memlimit, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @lzma_strm_init(ptr noundef %strm) #6
  %cmp.not.not = icmp eq i32 %call, 0
  br i1 %cmp.not.not, label %do.end, label %return

do.end:                                           ; preds = %entry
  %internal = getelementptr inbounds i8, ptr %strm, i64 56
  %0 = load ptr, ptr %internal, align 8
  %allocator = getelementptr inbounds i8, ptr %strm, i64 48
  %1 = load ptr, ptr %allocator, align 8
  %call3 = tail call i32 @lzma_stream_decoder_init(ptr noundef %0, ptr noundef %1, i64 noundef %memlimit, i32 noundef %flags)
  %cmp4.not.not = icmp eq i32 %call3, 0
  br i1 %cmp4.not.not, label %do.end10, label %cleanup7

cleanup7:                                         ; preds = %do.end
  tail call void @lzma_end(ptr noundef nonnull %strm) #6
  br label %return

do.end10:                                         ; preds = %do.end
  %2 = load ptr, ptr %internal, align 8
  %supported_actions = getelementptr inbounds i8, ptr %2, i64 80
  store i8 1, ptr %supported_actions, align 8
  %3 = load ptr, ptr %internal, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %3, i64 83
  store i8 1, ptr %arrayidx14, align 1
  br label %return

return:                                           ; preds = %cleanup7, %entry, %do.end10
  %retval.2 = phi i32 [ %call, %entry ], [ %call3, %cleanup7 ], [ 0, %do.end10 ]
  ret i32 %retval.2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

declare i32 @lzma_strm_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

declare void @lzma_end(ptr noundef) local_unnamed_addr #1

declare i64 @lzma_bufcpy(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @lzma_stream_header_decode(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @lzma_check_is_supported(i32 noundef) local_unnamed_addr #1

declare i32 @lzma_block_header_decode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @lzma_raw_decoder_memusage(ptr noundef) local_unnamed_addr #1

declare i32 @lzma_block_decoder_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @lzma_index_hash_append(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @lzma_block_unpadded_size(ptr noundef) local_unnamed_addr #1

declare i32 @lzma_index_hash_decode(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @lzma_stream_footer_decode(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @lzma_index_hash_size(ptr noundef) local_unnamed_addr #1

declare i32 @lzma_stream_flags_compare(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @lzma_index_hash_end(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @lzma_index_hash_init(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!5 = !{i8 0, i8 2}
!6 = !{}
