; ModuleID = 'liblzma/common/block_decoder.c'
source_filename = "liblzma/common/block_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_block_decoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %block) #0 {
entry:
  %init = getelementptr inbounds i8, ptr %next, i64 16
  %0 = load i64, ptr %init, align 8
  %cmp.not = icmp eq i64 %0, ptrtoint (ptr @lzma_block_decoder_init to i64)
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @lzma_next_end(ptr noundef nonnull %next, ptr noundef %allocator) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i64 ptrtoint (ptr @lzma_block_decoder_init to i64), ptr %init, align 8
  %call = tail call i64 @lzma_block_unpadded_size(ptr noundef %block) #5
  %cmp2 = icmp eq i64 %call, 0
  br i1 %cmp2, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %uncompressed_size = getelementptr inbounds i8, ptr %block, i64 24
  %1 = load i64, ptr %uncompressed_size, align 8
  %or.cond = icmp sgt i64 %1, -2
  br i1 %or.cond, label %if.end8, label %return

if.end8:                                          ; preds = %lor.lhs.false
  %2 = load ptr, ptr %next, align 8
  %cmp9 = icmp eq ptr %2, null
  br i1 %cmp9, label %if.then10, label %if.end23

if.then10:                                        ; preds = %if.end8
  %call11 = tail call ptr @lzma_alloc(i64 noundef 216, ptr noundef %allocator) #5
  store ptr %call11, ptr %next, align 8
  %cmp14 = icmp eq ptr %call11, null
  br i1 %cmp14, label %return, label %if.end16

if.end16:                                         ; preds = %if.then10
  %code = getelementptr inbounds i8, ptr %next, i64 24
  store ptr @block_decode, ptr %code, align 8
  %end = getelementptr inbounds i8, ptr %next, i64 32
  store ptr @block_decoder_end, ptr %end, align 8
  %next18 = getelementptr inbounds i8, ptr %call11, i64 8
  store ptr null, ptr %next18, align 8
  %.compoundliteral.sroa.2.0.next18.sroa_idx = getelementptr inbounds i8, ptr %call11, i64 16
  store i64 -1, ptr %.compoundliteral.sroa.2.0.next18.sroa_idx, align 8
  %.compoundliteral.sroa.3.0.next18.sroa_idx = getelementptr inbounds i8, ptr %call11, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.compoundliteral.sroa.3.0.next18.sroa_idx, i8 0, i64 48, i1 false)
  %.pre = load ptr, ptr %next, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.end16, %if.end8
  %3 = phi ptr [ %.pre, %if.end16 ], [ %2, %if.end8 ]
  store i32 0, ptr %3, align 8
  %4 = load ptr, ptr %next, align 8
  %block26 = getelementptr inbounds i8, ptr %4, i64 72
  store ptr %block, ptr %block26, align 8
  %5 = load ptr, ptr %next, align 8
  %compressed_size = getelementptr inbounds i8, ptr %5, i64 80
  store i64 0, ptr %compressed_size, align 8
  %6 = load ptr, ptr %next, align 8
  %uncompressed_size29 = getelementptr inbounds i8, ptr %6, i64 88
  store i64 0, ptr %uncompressed_size29, align 8
  %compressed_size30 = getelementptr inbounds i8, ptr %block, i64 16
  %7 = load i64, ptr %compressed_size30, align 8
  %cmp31 = icmp eq i64 %7, -1
  br i1 %cmp31, label %cond.true, label %cond.end

cond.true:                                        ; preds = %if.end23
  %header_size = getelementptr inbounds i8, ptr %block, i64 4
  %8 = load i32, ptr %header_size, align 4
  %conv = zext i32 %8 to i64
  %check = getelementptr inbounds i8, ptr %block, i64 8
  %9 = load i32, ptr %check, align 8
  %call32 = tail call i32 @lzma_check_size(i32 noundef %9) #5
  %conv33 = zext i32 %call32 to i64
  %10 = add nuw nsw i64 %conv, %conv33
  %sub34 = sub nuw nsw i64 9223372036854775804, %10
  br label %cond.end

cond.end:                                         ; preds = %if.end23, %cond.true
  %cond = phi i64 [ %sub34, %cond.true ], [ %7, %if.end23 ]
  %11 = load ptr, ptr %next, align 8
  %compressed_limit = getelementptr inbounds i8, ptr %11, i64 96
  store i64 %cond, ptr %compressed_limit, align 8
  %12 = load ptr, ptr %next, align 8
  %check_pos = getelementptr inbounds i8, ptr %12, i64 104
  store i64 0, ptr %check_pos, align 8
  %13 = load ptr, ptr %next, align 8
  %check39 = getelementptr inbounds i8, ptr %13, i64 112
  %check40 = getelementptr inbounds i8, ptr %block, i64 8
  %14 = load i32, ptr %check40, align 8
  tail call void @lzma_check_init(ptr noundef nonnull %check39, i32 noundef %14) #5
  %15 = load ptr, ptr %next, align 8
  %next42 = getelementptr inbounds i8, ptr %15, i64 8
  %filters = getelementptr inbounds i8, ptr %block, i64 32
  %16 = load ptr, ptr %filters, align 8
  %call43 = tail call i32 @lzma_raw_decoder_init(ptr noundef nonnull %next42, ptr noundef %allocator, ptr noundef %16) #5
  br label %return

return:                                           ; preds = %if.then10, %if.end, %lor.lhs.false, %cond.end
  %retval.0 = phi i32 [ %call43, %cond.end ], [ 11, %lor.lhs.false ], [ 11, %if.end ], [ 5, %if.then10 ]
  ret i32 %retval.0
}

declare void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @lzma_block_unpadded_size(ptr noundef) local_unnamed_addr #1

declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @block_decode(ptr noundef %pcoder, ptr noundef %allocator, ptr noalias noundef %in, ptr noalias noundef %in_pos, i64 noundef %in_size, ptr noalias noundef %out, ptr noalias noundef %out_pos, i64 noundef %out_size, i32 noundef %action) #0 {
entry:
  %0 = load i32, ptr %pcoder, align 8
  switch i32 %0, label %cleanup82 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb33
    i32 2, label %sw.bb54
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i64, ptr %in_pos, align 8
  %2 = load i64, ptr %out_pos, align 8
  %next = getelementptr inbounds i8, ptr %pcoder, i64 8
  %code = getelementptr inbounds i8, ptr %pcoder, i64 32
  %3 = load ptr, ptr %code, align 8
  %4 = load ptr, ptr %next, align 8
  %call = tail call i32 %3(ptr noundef %4, ptr noundef %allocator, ptr noundef %in, ptr noundef nonnull %in_pos, i64 noundef %in_size, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %out_size, i32 noundef %action) #5
  %5 = load i64, ptr %in_pos, align 8
  %sub = sub i64 %5, %1
  %6 = load i64, ptr %out_pos, align 8
  %sub3 = sub i64 %6, %2
  %compressed_size = getelementptr inbounds i8, ptr %pcoder, i64 80
  %compressed_limit = getelementptr inbounds i8, ptr %pcoder, i64 96
  %7 = load i64, ptr %compressed_limit, align 8
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %7, i64 9223372036854775807)
  %8 = load i64, ptr %compressed_size, align 8
  %cmp1.i = icmp ult i64 %spec.store.select.i, %8
  %sub.i = sub i64 %spec.store.select.i, %8
  %cmp2.i = icmp ult i64 %sub.i, %sub
  %or.cond.i = or i1 %cmp1.i, %cmp2.i
  br i1 %or.cond.i, label %cleanup82, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %add5.i = add i64 %8, %sub
  store i64 %add5.i, ptr %compressed_size, align 8
  %uncompressed_size = getelementptr inbounds i8, ptr %pcoder, i64 88
  %block = getelementptr inbounds i8, ptr %pcoder, i64 72
  %9 = load ptr, ptr %block, align 8
  %uncompressed_size5 = getelementptr inbounds i8, ptr %9, i64 24
  %10 = load i64, ptr %uncompressed_size5, align 8
  %spec.store.select.i130 = tail call i64 @llvm.umin.i64(i64 %10, i64 9223372036854775807)
  %11 = load i64, ptr %uncompressed_size, align 8
  %cmp1.i131 = icmp ult i64 %spec.store.select.i130, %11
  %sub.i132 = sub i64 %spec.store.select.i130, %11
  %cmp2.i133 = icmp ult i64 %sub.i132, %sub3
  %or.cond.i134 = or i1 %cmp1.i131, %cmp2.i133
  br i1 %or.cond.i134, label %cleanup82, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %add5.i136 = add i64 %11, %sub3
  store i64 %add5.i136, ptr %uncompressed_size, align 8
  %check = getelementptr inbounds i8, ptr %pcoder, i64 112
  %check8 = getelementptr inbounds i8, ptr %9, i64 8
  %12 = load i32, ptr %check8, align 8
  %add.ptr = getelementptr inbounds i8, ptr %out, i64 %2
  tail call void @lzma_check_update(ptr noundef nonnull %check, i32 noundef %12, ptr noundef %add.ptr, i64 noundef %sub3) #5
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end10, label %cleanup82

if.end10:                                         ; preds = %if.end
  %13 = load i64, ptr %compressed_size, align 8
  %14 = load ptr, ptr %block, align 8
  %compressed_size13 = getelementptr inbounds i8, ptr %14, i64 16
  %15 = load i64, ptr %compressed_size13, align 8
  %cmp.i = icmp eq i64 %15, -1
  %cmp1.i138 = icmp eq i64 %15, %13
  %16 = or i1 %cmp.i, %cmp1.i138
  br i1 %16, label %lor.lhs.false15, label %cleanup82

lor.lhs.false15:                                  ; preds = %if.end10
  %17 = load i64, ptr %uncompressed_size, align 8
  %uncompressed_size18 = getelementptr inbounds i8, ptr %14, i64 24
  %18 = load i64, ptr %uncompressed_size18, align 8
  %cmp.i139 = icmp eq i64 %18, -1
  %cmp1.i140 = icmp eq i64 %18, %17
  %19 = or i1 %cmp.i139, %cmp1.i140
  br i1 %19, label %cleanup, label %cleanup82

cleanup:                                          ; preds = %lor.lhs.false15
  store i64 %13, ptr %compressed_size13, align 8
  %20 = load i64, ptr %uncompressed_size, align 8
  %21 = load ptr, ptr %block, align 8
  %uncompressed_size27 = getelementptr inbounds i8, ptr %21, i64 24
  store i64 %20, ptr %uncompressed_size27, align 8
  store i32 1, ptr %pcoder, align 8
  br label %sw.bb33

sw.bb33:                                          ; preds = %cleanup, %entry
  %compressed_size34 = getelementptr inbounds i8, ptr %pcoder, i64 80
  %compressed_size34.promoted = load i64, ptr %compressed_size34, align 8
  %and = and i64 %compressed_size34.promoted, 3
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %sw.bb33
  %22 = load i64, ptr %in_pos, align 8
  %cmp35.not = icmp ult i64 %22, %in_size
  br i1 %cmp35.not, label %if.end37, label %cleanup82

if.end37:                                         ; preds = %while.body
  %inc = add i64 %compressed_size34.promoted, 1
  store i64 %inc, ptr %compressed_size34, align 8
  %inc39 = add nuw i64 %22, 1
  store i64 %inc39, ptr %in_pos, align 8
  %arrayidx = getelementptr inbounds i8, ptr %in, i64 %22
  %23 = load i8, ptr %arrayidx, align 1
  %cmp40.not = icmp eq i8 %23, 0
  br i1 %cmp40.not, label %while.cond.1, label %cleanup82

while.cond.1:                                     ; preds = %if.end37
  %and.1 = and i64 %inc, 3
  %tobool.not.1 = icmp eq i64 %and.1, 0
  br i1 %tobool.not.1, label %while.end, label %while.body.1

while.body.1:                                     ; preds = %while.cond.1
  %24 = load i64, ptr %in_pos, align 8
  %cmp35.not.1 = icmp ult i64 %24, %in_size
  br i1 %cmp35.not.1, label %if.end37.1, label %cleanup82

if.end37.1:                                       ; preds = %while.body.1
  %inc.1 = add i64 %compressed_size34.promoted, 2
  store i64 %inc.1, ptr %compressed_size34, align 8
  %inc39.1 = add nuw i64 %24, 1
  store i64 %inc39.1, ptr %in_pos, align 8
  %arrayidx.1 = getelementptr inbounds i8, ptr %in, i64 %24
  %25 = load i8, ptr %arrayidx.1, align 1
  %cmp40.not.1 = icmp eq i8 %25, 0
  br i1 %cmp40.not.1, label %while.cond.2, label %cleanup82

while.cond.2:                                     ; preds = %if.end37.1
  %and.2 = and i64 %inc.1, 3
  %tobool.not.2 = icmp eq i64 %and.2, 0
  br i1 %tobool.not.2, label %while.end, label %while.body.2

while.body.2:                                     ; preds = %while.cond.2
  %26 = load i64, ptr %in_pos, align 8
  %cmp35.not.2 = icmp ult i64 %26, %in_size
  br i1 %cmp35.not.2, label %if.end37.2, label %cleanup82

if.end37.2:                                       ; preds = %while.body.2
  %inc.2 = add i64 %compressed_size34.promoted, 3
  store i64 %inc.2, ptr %compressed_size34, align 8
  %inc39.2 = add nuw i64 %26, 1
  store i64 %inc39.2, ptr %in_pos, align 8
  %arrayidx.2 = getelementptr inbounds i8, ptr %in, i64 %26
  %27 = load i8, ptr %arrayidx.2, align 1
  %cmp40.not.2 = icmp eq i8 %27, 0
  br i1 %cmp40.not.2, label %while.cond.3, label %cleanup82

while.cond.3:                                     ; preds = %if.end37.2
  %and.3 = and i64 %inc.2, 3
  %tobool.not.3 = icmp eq i64 %and.3, 0
  br i1 %tobool.not.3, label %while.end, label %while.body.3

while.body.3:                                     ; preds = %while.cond.3
  %28 = load i64, ptr %in_pos, align 8
  %cmp35.not.3 = icmp ult i64 %28, %in_size
  br i1 %cmp35.not.3, label %if.end37.3, label %cleanup82

if.end37.3:                                       ; preds = %while.body.3
  %inc.3 = add i64 %compressed_size34.promoted, 4
  store i64 %inc.3, ptr %compressed_size34, align 8
  %inc39.3 = add nuw i64 %28, 1
  store i64 %inc39.3, ptr %in_pos, align 8
  br label %cleanup82

while.end:                                        ; preds = %while.cond.3, %while.cond.2, %while.cond.1, %sw.bb33
  %block44 = getelementptr inbounds i8, ptr %pcoder, i64 72
  %29 = load ptr, ptr %block44, align 8
  %check45 = getelementptr inbounds i8, ptr %29, i64 8
  %30 = load i32, ptr %check45, align 8
  %cmp46 = icmp eq i32 %30, 0
  br i1 %cmp46, label %cleanup82, label %if.end49

if.end49:                                         ; preds = %while.end
  %check50 = getelementptr inbounds i8, ptr %pcoder, i64 112
  tail call void @lzma_check_finish(ptr noundef nonnull %check50, i32 noundef %30) #5
  store i32 2, ptr %pcoder, align 8
  br label %sw.bb54

sw.bb54:                                          ; preds = %entry, %if.end49
  %block55 = getelementptr inbounds i8, ptr %pcoder, i64 72
  %31 = load ptr, ptr %block55, align 8
  %check56 = getelementptr inbounds i8, ptr %31, i64 8
  %32 = load i32, ptr %check56, align 8
  %call57 = tail call i32 @lzma_check_size(i32 noundef %32) #5
  %conv58 = zext i32 %call57 to i64
  %33 = load ptr, ptr %block55, align 8
  %raw_check = getelementptr inbounds i8, ptr %33, i64 40
  %check_pos = getelementptr inbounds i8, ptr %pcoder, i64 104
  %call60 = tail call i64 @lzma_bufcpy(ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size, ptr noundef nonnull %raw_check, ptr noundef nonnull %check_pos, i64 noundef %conv58) #5
  %34 = load i64, ptr %check_pos, align 8
  %cmp62 = icmp ult i64 %34, %conv58
  br i1 %cmp62, label %cleanup82, label %if.end65

if.end65:                                         ; preds = %sw.bb54
  %35 = load ptr, ptr %block55, align 8
  %check67 = getelementptr inbounds i8, ptr %35, i64 8
  %36 = load i32, ptr %check67, align 8
  %call68 = tail call zeroext i8 @lzma_check_is_supported(i32 noundef %36) #5
  %tobool70.not = icmp eq i8 %call68, 0
  br i1 %tobool70.not, label %if.end80, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end65
  %37 = load ptr, ptr %block55, align 8
  %raw_check72 = getelementptr inbounds i8, ptr %37, i64 40
  %check74 = getelementptr inbounds i8, ptr %pcoder, i64 112
  %bcmp = tail call i32 @bcmp(ptr nonnull %raw_check72, ptr nonnull %check74, i64 %conv58)
  %cmp77.not = icmp eq i32 %bcmp, 0
  br i1 %cmp77.not, label %if.end80, label %cleanup82

if.end80:                                         ; preds = %land.lhs.true, %if.end65
  br label %cleanup82

cleanup82:                                        ; preds = %if.end37, %while.body, %while.body.1, %if.end37.1, %while.body.2, %if.end37.2, %while.body.3, %if.end37.3, %lor.lhs.false, %sw.bb, %if.end10, %lor.lhs.false15, %if.end, %entry, %if.end80, %sw.bb54, %land.lhs.true, %while.end
  %retval.2 = phi i32 [ 1, %while.end ], [ 1, %if.end80 ], [ 0, %sw.bb54 ], [ 9, %land.lhs.true ], [ 11, %entry ], [ 9, %if.end10 ], [ 9, %lor.lhs.false15 ], [ %call, %if.end ], [ 9, %sw.bb ], [ 9, %lor.lhs.false ], [ 9, %if.end37 ], [ 0, %while.body ], [ 0, %while.body.1 ], [ 9, %if.end37.1 ], [ 0, %while.body.2 ], [ 9, %if.end37.2 ], [ 0, %while.body.3 ], [ 9, %if.end37.3 ]
  ret i32 %retval.2
}

; Function Attrs: nounwind uwtable
define internal void @block_decoder_end(ptr noundef %pcoder, ptr noundef %allocator) #0 {
entry:
  %next = getelementptr inbounds i8, ptr %pcoder, i64 8
  tail call void @lzma_next_end(ptr noundef nonnull %next, ptr noundef %allocator) #5
  tail call void @lzma_free(ptr noundef %pcoder, ptr noundef %allocator) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare i32 @lzma_check_size(i32 noundef) local_unnamed_addr #1

declare void @lzma_check_init(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @lzma_raw_decoder_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_block_decoder(ptr noundef %strm, ptr noundef %block) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @lzma_strm_init(ptr noundef %strm) #5
  %cmp.not.not = icmp eq i32 %call, 0
  br i1 %cmp.not.not, label %do.end, label %return

do.end:                                           ; preds = %entry
  %internal = getelementptr inbounds i8, ptr %strm, i64 56
  %0 = load ptr, ptr %internal, align 8
  %allocator = getelementptr inbounds i8, ptr %strm, i64 48
  %1 = load ptr, ptr %allocator, align 8
  %call3 = tail call i32 @lzma_block_decoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %block)
  %cmp4.not.not = icmp eq i32 %call3, 0
  br i1 %cmp4.not.not, label %do.end10, label %cleanup7

cleanup7:                                         ; preds = %do.end
  tail call void @lzma_end(ptr noundef nonnull %strm) #5
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

declare i32 @lzma_strm_init(ptr noundef) local_unnamed_addr #1

declare void @lzma_end(ptr noundef) local_unnamed_addr #1

declare void @lzma_check_update(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @lzma_check_finish(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @lzma_bufcpy(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare zeroext i8 @lzma_check_is_supported(i32 noundef) local_unnamed_addr #1

declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
