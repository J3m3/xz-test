; ModuleID = 'liblzma/common/alone_decoder.c'
source_filename = "liblzma/common/alone_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_filter_info_s = type { i64, ptr, ptr }

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 12) i32 @lzma_alone_decoder_init(ptr noundef %next, ptr noundef %allocator, i64 noundef %memlimit, i1 noundef zeroext %picky) #0 {
entry:
  %storedv = zext i1 %picky to i8
  %init = getelementptr inbounds i8, ptr %next, i64 16
  %0 = load i64, ptr %init, align 8
  %cmp.not = icmp eq i64 %0, ptrtoint (ptr @lzma_alone_decoder_init to i64)
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @lzma_next_end(ptr noundef nonnull %next, ptr noundef %allocator) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i64 ptrtoint (ptr @lzma_alone_decoder_init to i64), ptr %init, align 8
  %cmp2 = icmp eq i64 %memlimit, 0
  br i1 %cmp2, label %return, label %if.end4

if.end4:                                          ; preds = %if.end
  %1 = load ptr, ptr %next, align 8
  %cmp5 = icmp eq ptr %1, null
  br i1 %cmp5, label %if.then6, label %if.end19

if.then6:                                         ; preds = %if.end4
  %call = tail call ptr @lzma_alloc(i64 noundef 216, ptr noundef %allocator) #5
  store ptr %call, ptr %next, align 8
  %cmp9 = icmp eq ptr %call, null
  br i1 %cmp9, label %return, label %if.end11

if.end11:                                         ; preds = %if.then6
  %code = getelementptr inbounds i8, ptr %next, i64 24
  store ptr @alone_decode, ptr %code, align 8
  %end = getelementptr inbounds i8, ptr %next, i64 32
  store ptr @alone_decoder_end, ptr %end, align 8
  %memconfig = getelementptr inbounds i8, ptr %next, i64 48
  store ptr @alone_decoder_memconfig, ptr %memconfig, align 8
  store ptr null, ptr %call, align 8
  %.compoundliteral.sroa.2.0.next13.sroa_idx = getelementptr inbounds i8, ptr %call, i64 8
  store i64 -1, ptr %.compoundliteral.sroa.2.0.next13.sroa_idx, align 8
  %.compoundliteral.sroa.3.0.next13.sroa_idx = getelementptr inbounds i8, ptr %call, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.compoundliteral.sroa.3.0.next13.sroa_idx, i8 0, i64 48, i1 false)
  %.pre = load ptr, ptr %next, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.end11, %if.end4
  %2 = phi ptr [ %.pre, %if.end11 ], [ %1, %if.end4 ]
  %sequence = getelementptr inbounds i8, ptr %2, i64 64
  store i32 0, ptr %sequence, align 8
  %3 = load ptr, ptr %next, align 8
  %picky22 = getelementptr inbounds i8, ptr %3, i64 68
  store i8 %storedv, ptr %picky22, align 4
  %4 = load ptr, ptr %next, align 8
  %pos = getelementptr inbounds i8, ptr %4, i64 72
  store i64 0, ptr %pos, align 8
  %5 = load ptr, ptr %next, align 8
  %options = getelementptr inbounds i8, ptr %5, i64 104
  store i32 0, ptr %options, align 8
  %6 = load ptr, ptr %next, align 8
  %preset_dict = getelementptr inbounds i8, ptr %6, i64 112
  store ptr null, ptr %preset_dict, align 8
  %7 = load ptr, ptr %next, align 8
  %preset_dict_size = getelementptr inbounds i8, ptr %7, i64 120
  store i32 0, ptr %preset_dict_size, align 8
  %8 = load ptr, ptr %next, align 8
  %uncompressed_size = getelementptr inbounds i8, ptr %8, i64 80
  store i64 0, ptr %uncompressed_size, align 8
  %9 = load ptr, ptr %next, align 8
  %memlimit32 = getelementptr inbounds i8, ptr %9, i64 88
  store i64 %memlimit, ptr %memlimit32, align 8
  %10 = load ptr, ptr %next, align 8
  %memusage = getelementptr inbounds i8, ptr %10, i64 96
  store i64 32768, ptr %memusage, align 8
  br label %return

return:                                           ; preds = %if.then6, %if.end, %if.end19
  %retval.0 = phi i32 [ 0, %if.end19 ], [ 11, %if.end ], [ 5, %if.then6 ]
  ret i32 %retval.0
}

declare void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @alone_decode(ptr noundef %pcoder, ptr noundef %allocator, ptr noalias noundef %in, ptr noalias noundef %in_pos, i64 noundef %in_size, ptr noalias noundef %out, ptr noalias noundef %out_pos, i64 noundef %out_size, i32 noundef %action) #0 {
entry:
  %filters = alloca [2 x %struct.lzma_filter_info_s], align 16
  %0 = load i64, ptr %out_pos, align 8
  %cmp167 = icmp ult i64 %0, %out_size
  br i1 %cmp167, label %land.rhs.lr.ph, label %cleanup103

land.rhs.lr.ph:                                   ; preds = %entry
  %sequence = getelementptr inbounds i8, ptr %pcoder, i64 64
  %pos47 = getelementptr inbounds i8, ptr %pcoder, i64 72
  %uncompressed_size = getelementptr inbounds i8, ptr %pcoder, i64 80
  %picky58 = getelementptr inbounds i8, ptr %pcoder, i64 68
  %options71 = getelementptr inbounds i8, ptr %pcoder, i64 104
  %memusage = getelementptr inbounds i8, ptr %pcoder, i64 96
  %memlimit = getelementptr inbounds i8, ptr %pcoder, i64 88
  %init = getelementptr inbounds i8, ptr %filters, i64 8
  %options81 = getelementptr inbounds i8, ptr %filters, i64 16
  %arrayinit.element = getelementptr inbounds i8, ptr %filters, i64 24
  %.pre = load i32, ptr %sequence, align 8
  %cmp1175 = icmp eq i32 %.pre, 4
  br i1 %cmp1175, label %sw.bb98, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs.lr.ph, %sw.epilog
  %1 = phi i32 [ %21, %sw.epilog ], [ %.pre, %land.rhs.lr.ph ]
  %2 = load i64, ptr %in_pos, align 8
  %cmp2 = icmp ult i64 %2, %in_size
  br i1 %cmp2, label %while.body, label %cleanup103

while.body:                                       ; preds = %lor.rhs
  switch i32 %1, label %cleanup103 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
    i32 2, label %sw.bb44
    i32 3, label %while.body.sw.bb75_crit_edge
  ]

while.body.sw.bb75_crit_edge:                     ; preds = %while.body
  %.pre174 = load i64, ptr %memusage, align 8
  br label %sw.bb75

sw.bb:                                            ; preds = %while.body
  %arrayidx = getelementptr inbounds i8, ptr %in, i64 %2
  %3 = load i8, ptr %arrayidx, align 1
  %call = call zeroext i1 @lzma_lzma_lclppb_decode(ptr noundef nonnull %options71, i8 noundef zeroext %3) #5
  br i1 %call, label %cleanup103, label %if.end

if.end:                                           ; preds = %sw.bb
  store i32 1, ptr %sequence, align 8
  %inc = add nuw i64 %2, 1
  store i64 %inc, ptr %in_pos, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %while.body
  %arrayidx6 = getelementptr inbounds i8, ptr %in, i64 %2
  %4 = load i8, ptr %arrayidx6, align 1
  %conv = zext i8 %4 to i64
  %5 = load i64, ptr %pos47, align 8
  %mul = shl i64 %5, 3
  %shl = shl i64 %conv, %mul
  %6 = load i32, ptr %options71, align 8
  %7 = trunc i64 %shl to i32
  %conv9 = or i32 %6, %7
  store i32 %conv9, ptr %options71, align 8
  %inc11 = add i64 %5, 1
  store i64 %inc11, ptr %pos47, align 8
  %cmp12 = icmp eq i64 %inc11, 4
  br i1 %cmp12, label %if.then14, label %if.end42

if.then14:                                        ; preds = %sw.bb5
  %8 = load i8, ptr %picky58, align 4, !range !5, !noundef !6
  %loadedv = trunc nuw i8 %8 to i1
  %cmp18.not = icmp ne i32 %conv9, -1
  %or.cond165.not = select i1 %loadedv, i1 %cmp18.not, i1 false
  br i1 %or.cond165.not, label %if.then20, label %if.end39

if.then20:                                        ; preds = %if.then14
  %sub = add i32 %conv9, -1
  %shr = lshr i32 %sub, 2
  %or23 = or i32 %shr, %sub
  %shr24 = lshr i32 %or23, 3
  %or25 = or i32 %shr24, %or23
  %shr26 = lshr i32 %or25, 4
  %or27 = or i32 %shr26, %or25
  %shr28 = lshr i32 %or27, 8
  %or29 = or i32 %shr28, %or27
  %shr30 = lshr i32 %or29, 16
  %or31 = or i32 %shr30, %or29
  %inc32 = add i32 %or31, 1
  %cmp35.not = icmp eq i32 %inc32, %conv9
  br i1 %cmp35.not, label %if.end39, label %cleanup103

if.end39:                                         ; preds = %if.then20, %if.then14
  store i64 0, ptr %pos47, align 8
  store i32 2, ptr %sequence, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.end39, %sw.bb5
  %9 = phi i32 [ 2, %if.end39 ], [ 1, %sw.bb5 ]
  %inc43 = add nuw i64 %2, 1
  store i64 %inc43, ptr %in_pos, align 8
  br label %sw.epilog

sw.bb44:                                          ; preds = %while.body
  %arrayidx45 = getelementptr inbounds i8, ptr %in, i64 %2
  %10 = load i8, ptr %arrayidx45, align 1
  %conv46 = zext i8 %10 to i64
  %11 = load i64, ptr %pos47, align 8
  %mul48 = shl i64 %11, 3
  %shl49 = shl i64 %conv46, %mul48
  %12 = load i64, ptr %uncompressed_size, align 8
  %or50 = or i64 %shl49, %12
  store i64 %or50, ptr %uncompressed_size, align 8
  %inc51 = add nuw i64 %2, 1
  store i64 %inc51, ptr %in_pos, align 8
  %inc53 = add i64 %11, 1
  store i64 %inc53, ptr %pos47, align 8
  %cmp54 = icmp ult i64 %inc53, 8
  br i1 %cmp54, label %sw.epilog, label %if.end57

if.end57:                                         ; preds = %sw.bb44
  %13 = load i8, ptr %picky58, align 4, !range !5, !noundef !6
  %loadedv59 = trunc nuw i8 %13 to i1
  %14 = add i64 %or50, -274877906944
  %or.cond = icmp ult i64 %14, -274877906945
  %or.cond166 = select i1 %loadedv59, i1 %or.cond, i1 false
  br i1 %or.cond166, label %cleanup103, label %if.end70

if.end70:                                         ; preds = %if.end57
  %call72 = call i64 @lzma_lzma_decoder_memusage(ptr noundef nonnull %options71) #5
  %add = add i64 %call72, 32768
  store i64 %add, ptr %memusage, align 8
  store i64 0, ptr %pos47, align 8
  store i32 3, ptr %sequence, align 8
  br label %sw.bb75

sw.bb75:                                          ; preds = %while.body.sw.bb75_crit_edge, %if.end70
  %15 = phi i64 [ %.pre174, %while.body.sw.bb75_crit_edge ], [ %add, %if.end70 ]
  %16 = load i64, ptr %memlimit, align 8
  %cmp77 = icmp ugt i64 %15, %16
  br i1 %cmp77, label %cleanup103, label %if.end80

if.end80:                                         ; preds = %sw.bb75
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %filters) #5
  store i64 0, ptr %filters, align 16
  store ptr @lzma_lzma_decoder_init, ptr %init, align 8
  store ptr %options71, ptr %options81, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %arrayinit.element, i8 0, i64 24, i1 false)
  %call86 = call i32 @lzma_next_filter_init(ptr noundef nonnull %pcoder, ptr noundef %allocator, ptr noundef nonnull %filters) #5
  %cmp87.not = icmp eq i32 %call86, 0
  br i1 %cmp87.not, label %cleanup95.thread, label %cleanup95

cleanup95.thread:                                 ; preds = %if.end80
  %17 = load ptr, ptr %pcoder, align 8
  %18 = load i64, ptr %uncompressed_size, align 8
  call void @lzma_lz_decoder_uncompressed(ptr noundef %17, i64 noundef %18) #5
  store i32 4, ptr %sequence, align 8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %filters) #5
  br label %sw.epilog

cleanup95:                                        ; preds = %if.end80
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %filters) #5
  br label %cleanup103

sw.bb98:                                          ; preds = %sw.epilog, %land.rhs.lr.ph
  %code = getelementptr inbounds i8, ptr %pcoder, i64 24
  %19 = load ptr, ptr %code, align 8
  %20 = load ptr, ptr %pcoder, align 8
  %call102 = call i32 %19(ptr noundef %20, ptr noundef %allocator, ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %out_size, i32 noundef %action) #5
  br label %cleanup103

sw.epilog:                                        ; preds = %cleanup95.thread, %sw.bb44, %if.end42, %if.end
  %21 = phi i32 [ 4, %cleanup95.thread ], [ 2, %sw.bb44 ], [ %9, %if.end42 ], [ 1, %if.end ]
  %cmp1 = icmp eq i32 %21, 4
  br i1 %cmp1, label %sw.bb98, label %lor.rhs

cleanup103:                                       ; preds = %if.then20, %sw.bb, %sw.bb75, %while.body, %lor.rhs, %if.end57, %entry, %cleanup95, %sw.bb98
  %retval.6 = phi i32 [ %call102, %sw.bb98 ], [ %call86, %cleanup95 ], [ 0, %entry ], [ 7, %if.end57 ], [ 0, %lor.rhs ], [ 11, %while.body ], [ 6, %sw.bb75 ], [ 7, %sw.bb ], [ 7, %if.then20 ]
  ret i32 %retval.6
}

; Function Attrs: nounwind uwtable
define internal void @alone_decoder_end(ptr noundef %pcoder, ptr noundef %allocator) #0 {
entry:
  tail call void @lzma_next_end(ptr noundef %pcoder, ptr noundef %allocator) #5
  tail call void @lzma_free(ptr noundef %pcoder, ptr noundef %allocator) #5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 0, 7) i32 @alone_decoder_memconfig(ptr nocapture noundef %pcoder, ptr nocapture noundef writeonly %memusage, ptr nocapture noundef writeonly %old_memlimit, i64 noundef %new_memlimit) #2 {
entry:
  %memusage1 = getelementptr inbounds i8, ptr %pcoder, i64 96
  %0 = load i64, ptr %memusage1, align 8
  store i64 %0, ptr %memusage, align 8
  %memlimit = getelementptr inbounds i8, ptr %pcoder, i64 88
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
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_alone_decoder(ptr noundef %strm, i64 noundef %memlimit) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @lzma_strm_init(ptr noundef %strm) #5
  %cmp.not.not = icmp eq i32 %call, 0
  br i1 %cmp.not.not, label %do.end, label %return

do.end:                                           ; preds = %entry
  %internal = getelementptr inbounds i8, ptr %strm, i64 56
  %0 = load ptr, ptr %internal, align 8
  %allocator = getelementptr inbounds i8, ptr %strm, i64 48
  %1 = load ptr, ptr %allocator, align 8
  %init.i = getelementptr inbounds i8, ptr %0, i64 16
  %2 = load i64, ptr %init.i, align 8
  %cmp.not.i = icmp eq i64 %2, ptrtoint (ptr @lzma_alone_decoder_init to i64)
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %do.end
  tail call void @lzma_next_end(ptr noundef nonnull %0, ptr noundef %1) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %do.end
  store i64 ptrtoint (ptr @lzma_alone_decoder_init to i64), ptr %init.i, align 8
  %cmp2.i = icmp eq i64 %memlimit, 0
  br i1 %cmp2.i, label %cleanup7, label %if.end4.i

if.end4.i:                                        ; preds = %if.end.i
  %3 = load ptr, ptr %0, align 8
  %cmp5.i = icmp eq ptr %3, null
  br i1 %cmp5.i, label %if.then6.i, label %do.end10

if.then6.i:                                       ; preds = %if.end4.i
  %call.i = tail call ptr @lzma_alloc(i64 noundef 216, ptr noundef %1) #5
  store ptr %call.i, ptr %0, align 8
  %cmp9.i = icmp eq ptr %call.i, null
  br i1 %cmp9.i, label %cleanup7, label %if.end11.i

if.end11.i:                                       ; preds = %if.then6.i
  %code.i = getelementptr inbounds i8, ptr %0, i64 24
  store ptr @alone_decode, ptr %code.i, align 8
  %end.i = getelementptr inbounds i8, ptr %0, i64 32
  store ptr @alone_decoder_end, ptr %end.i, align 8
  %memconfig.i = getelementptr inbounds i8, ptr %0, i64 48
  store ptr @alone_decoder_memconfig, ptr %memconfig.i, align 8
  store ptr null, ptr %call.i, align 8
  %.compoundliteral.sroa.2.0.next13.sroa_idx.i = getelementptr inbounds i8, ptr %call.i, i64 8
  store i64 -1, ptr %.compoundliteral.sroa.2.0.next13.sroa_idx.i, align 8
  %.compoundliteral.sroa.3.0.next13.sroa_idx.i = getelementptr inbounds i8, ptr %call.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.compoundliteral.sroa.3.0.next13.sroa_idx.i, i8 0, i64 48, i1 false)
  %.pre.i = load ptr, ptr %0, align 8
  br label %do.end10

cleanup7:                                         ; preds = %if.then6.i, %if.end.i
  %retval.0.i.ph = phi i32 [ 5, %if.then6.i ], [ 11, %if.end.i ]
  tail call void @lzma_end(ptr noundef nonnull %strm) #5
  br label %return

do.end10:                                         ; preds = %if.end11.i, %if.end4.i
  %4 = phi ptr [ %.pre.i, %if.end11.i ], [ %3, %if.end4.i ]
  %sequence.i = getelementptr inbounds i8, ptr %4, i64 64
  store i32 0, ptr %sequence.i, align 8
  %5 = load ptr, ptr %0, align 8
  %picky22.i = getelementptr inbounds i8, ptr %5, i64 68
  store i8 0, ptr %picky22.i, align 4
  %6 = load ptr, ptr %0, align 8
  %pos.i = getelementptr inbounds i8, ptr %6, i64 72
  store i64 0, ptr %pos.i, align 8
  %7 = load ptr, ptr %0, align 8
  %options.i = getelementptr inbounds i8, ptr %7, i64 104
  store i32 0, ptr %options.i, align 8
  %8 = load ptr, ptr %0, align 8
  %preset_dict.i = getelementptr inbounds i8, ptr %8, i64 112
  store ptr null, ptr %preset_dict.i, align 8
  %9 = load ptr, ptr %0, align 8
  %preset_dict_size.i = getelementptr inbounds i8, ptr %9, i64 120
  store i32 0, ptr %preset_dict_size.i, align 8
  %10 = load ptr, ptr %0, align 8
  %uncompressed_size.i = getelementptr inbounds i8, ptr %10, i64 80
  store i64 0, ptr %uncompressed_size.i, align 8
  %11 = load ptr, ptr %0, align 8
  %memlimit32.i = getelementptr inbounds i8, ptr %11, i64 88
  store i64 %memlimit, ptr %memlimit32.i, align 8
  %12 = load ptr, ptr %0, align 8
  %memusage.i = getelementptr inbounds i8, ptr %12, i64 96
  store i64 32768, ptr %memusage.i, align 8
  %13 = load ptr, ptr %internal, align 8
  %supported_actions = getelementptr inbounds i8, ptr %13, i64 80
  store i8 1, ptr %supported_actions, align 8
  %14 = load ptr, ptr %internal, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %14, i64 83
  store i8 1, ptr %arrayidx14, align 1
  br label %return

return:                                           ; preds = %cleanup7, %entry, %do.end10
  %retval.2 = phi i32 [ %call, %entry ], [ %retval.0.i.ph, %cleanup7 ], [ 0, %do.end10 ]
  ret i32 %retval.2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare i32 @lzma_strm_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

declare void @lzma_end(ptr noundef) local_unnamed_addr #1

declare zeroext i1 @lzma_lzma_lclppb_decode(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare i64 @lzma_lzma_decoder_memusage(ptr noundef) local_unnamed_addr #1

declare i32 @lzma_lzma_decoder_init(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @lzma_next_filter_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @lzma_lz_decoder_uncompressed(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!5 = !{i8 0, i8 2}
!6 = !{}
