; ModuleID = 'liblzma/common/block_encoder.c'
source_filename = "liblzma/common/block_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_block_encoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %block) #0 {
entry:
  %init = getelementptr inbounds i8, ptr %next, i64 16
  %0 = load i64, ptr %init, align 8
  %cmp.not = icmp eq i64 %0, ptrtoint (ptr @lzma_block_encoder_init to i64)
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @lzma_next_end(ptr noundef nonnull %next, ptr noundef %allocator) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i64 ptrtoint (ptr @lzma_block_encoder_init to i64), ptr %init, align 8
  %cmp2 = icmp eq ptr %block, null
  br i1 %cmp2, label %return, label %if.end4

if.end4:                                          ; preds = %if.end
  %1 = load i32, ptr %block, align 8
  %cmp5.not = icmp eq i32 %1, 0
  br i1 %cmp5.not, label %if.end7, label %return

if.end7:                                          ; preds = %if.end4
  %check = getelementptr inbounds i8, ptr %block, i64 8
  %2 = load i32, ptr %check, align 8
  %cmp8 = icmp ugt i32 %2, 15
  br i1 %cmp8, label %return, label %if.end10

if.end10:                                         ; preds = %if.end7
  %call = tail call zeroext i8 @lzma_check_is_supported(i32 noundef %2) #4
  %tobool.not = icmp eq i8 %call, 0
  br i1 %tobool.not, label %return, label %if.end13

if.end13:                                         ; preds = %if.end10
  %3 = load ptr, ptr %next, align 8
  %cmp14 = icmp eq ptr %3, null
  br i1 %cmp14, label %if.then15, label %if.end29

if.then15:                                        ; preds = %if.end13
  %call16 = tail call ptr @lzma_alloc(i64 noundef 208, ptr noundef %allocator) #4
  store ptr %call16, ptr %next, align 8
  %cmp19 = icmp eq ptr %call16, null
  br i1 %cmp19, label %return, label %if.end21

if.end21:                                         ; preds = %if.then15
  %code = getelementptr inbounds i8, ptr %next, i64 24
  store ptr @block_encode, ptr %code, align 8
  %end = getelementptr inbounds i8, ptr %next, i64 32
  store ptr @block_encoder_end, ptr %end, align 8
  %update = getelementptr inbounds i8, ptr %next, i64 56
  store ptr @block_encoder_update, ptr %update, align 8
  store ptr null, ptr %call16, align 8
  %.compoundliteral.sroa.2.0.next23.sroa_idx = getelementptr inbounds i8, ptr %call16, i64 8
  store i64 -1, ptr %.compoundliteral.sroa.2.0.next23.sroa_idx, align 8
  %.compoundliteral.sroa.3.0.next23.sroa_idx = getelementptr inbounds i8, ptr %call16, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.compoundliteral.sroa.3.0.next23.sroa_idx, i8 0, i64 48, i1 false)
  %.pre = load ptr, ptr %next, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.end21, %if.end13
  %4 = phi ptr [ %.pre, %if.end21 ], [ %3, %if.end13 ]
  %sequence = getelementptr inbounds i8, ptr %4, i64 72
  store i32 0, ptr %sequence, align 8
  %5 = load ptr, ptr %next, align 8
  %block32 = getelementptr inbounds i8, ptr %5, i64 64
  store ptr %block, ptr %block32, align 8
  %6 = load ptr, ptr %next, align 8
  %compressed_size = getelementptr inbounds i8, ptr %6, i64 80
  store i64 0, ptr %compressed_size, align 8
  %7 = load ptr, ptr %next, align 8
  %uncompressed_size = getelementptr inbounds i8, ptr %7, i64 88
  store i64 0, ptr %uncompressed_size, align 8
  %8 = load ptr, ptr %next, align 8
  %pos = getelementptr inbounds i8, ptr %8, i64 96
  store i64 0, ptr %pos, align 8
  %9 = load ptr, ptr %next, align 8
  %check37 = getelementptr inbounds i8, ptr %9, i64 104
  %10 = load i32, ptr %check, align 8
  tail call void @lzma_check_init(ptr noundef nonnull %check37, i32 noundef %10) #4
  %11 = load ptr, ptr %next, align 8
  %filters = getelementptr inbounds i8, ptr %block, i64 32
  %12 = load ptr, ptr %filters, align 8
  %call41 = tail call i32 @lzma_raw_encoder_init(ptr noundef %11, ptr noundef %allocator, ptr noundef %12) #4
  br label %return

return:                                           ; preds = %if.then15, %if.end10, %if.end7, %if.end4, %if.end, %if.end29
  %retval.0 = phi i32 [ %call41, %if.end29 ], [ 11, %if.end ], [ 8, %if.end4 ], [ 11, %if.end7 ], [ 3, %if.end10 ], [ 5, %if.then15 ]
  ret i32 %retval.0
}

declare void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @lzma_check_is_supported(i32 noundef) local_unnamed_addr #1

declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @block_encode(ptr noundef %pcoder, ptr noundef %allocator, ptr noalias noundef %in, ptr noalias noundef %in_pos, i64 noundef %in_size, ptr noalias noundef %out, ptr noalias noundef %out_pos, i64 noundef %out_size, i32 noundef %action) #0 {
entry:
  %uncompressed_size = getelementptr inbounds i8, ptr %pcoder, i64 88
  %0 = load i64, ptr %uncompressed_size, align 8
  %sub = sub i64 9223372036854775807, %0
  %1 = load i64, ptr %in_pos, align 8
  %sub1 = sub i64 %in_size, %1
  %cmp = icmp ult i64 %sub, %sub1
  br i1 %cmp, label %cleanup62, label %if.end

if.end:                                           ; preds = %entry
  %sequence = getelementptr inbounds i8, ptr %pcoder, i64 72
  %2 = load i32, ptr %sequence, align 8
  switch i32 %2, label %cleanup62 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb29
    i32 2, label %sw.bb45
  ]

sw.bb:                                            ; preds = %if.end
  %3 = load i64, ptr %out_pos, align 8
  %code = getelementptr inbounds i8, ptr %pcoder, i64 24
  %4 = load ptr, ptr %code, align 8
  %5 = load ptr, ptr %pcoder, align 8
  %call = tail call i32 %4(ptr noundef %5, ptr noundef %allocator, ptr noundef %in, ptr noundef nonnull %in_pos, i64 noundef %in_size, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %out_size, i32 noundef %action) #4
  %6 = load i64, ptr %out_pos, align 8
  %sub5 = sub i64 %6, %3
  %compressed_size = getelementptr inbounds i8, ptr %pcoder, i64 80
  %7 = load i64, ptr %compressed_size, align 8
  %sub6 = sub i64 9223372036854774716, %7
  %cmp7 = icmp ult i64 %sub6, %sub5
  br i1 %cmp7, label %cleanup62, label %if.end9

if.end9:                                          ; preds = %sw.bb
  %8 = load i64, ptr %in_pos, align 8
  %sub4 = sub i64 %8, %1
  %add = add i64 %7, %sub5
  store i64 %add, ptr %compressed_size, align 8
  %9 = load i64, ptr %uncompressed_size, align 8
  %add12 = add i64 %9, %sub4
  store i64 %add12, ptr %uncompressed_size, align 8
  %check = getelementptr inbounds i8, ptr %pcoder, i64 104
  %block = getelementptr inbounds i8, ptr %pcoder, i64 64
  %10 = load ptr, ptr %block, align 8
  %check13 = getelementptr inbounds i8, ptr %10, i64 8
  %11 = load i32, ptr %check13, align 8
  %add.ptr = getelementptr inbounds i8, ptr %in, i64 %1
  tail call void @lzma_check_update(ptr noundef nonnull %check, i32 noundef %11, ptr noundef %add.ptr, i64 noundef %sub4) #4
  %cmp14 = icmp ne i32 %call, 1
  %cmp15 = icmp eq i32 %action, 1
  %or.cond = or i1 %cmp15, %cmp14
  br i1 %or.cond, label %cleanup62, label %cleanup

cleanup:                                          ; preds = %if.end9
  %12 = load i64, ptr %compressed_size, align 8
  %13 = load ptr, ptr %block, align 8
  %compressed_size20 = getelementptr inbounds i8, ptr %13, i64 16
  store i64 %12, ptr %compressed_size20, align 8
  %14 = load i64, ptr %uncompressed_size, align 8
  %15 = load ptr, ptr %block, align 8
  %uncompressed_size23 = getelementptr inbounds i8, ptr %15, i64 24
  store i64 %14, ptr %uncompressed_size23, align 8
  store i32 1, ptr %sequence, align 8
  br label %sw.bb29

sw.bb29:                                          ; preds = %cleanup, %if.end
  %compressed_size30 = getelementptr inbounds i8, ptr %pcoder, i64 80
  %compressed_size30.promoted = load i64, ptr %compressed_size30, align 8
  %and113 = and i64 %compressed_size30.promoted, 3
  %tobool.not114 = icmp eq i64 %and113, 0
  br i1 %tobool.not114, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %sw.bb29
  %out_pos.promoted = load i64, ptr %out_pos, align 8
  %cmp31.not = icmp ult i64 %out_pos.promoted, %out_size
  br i1 %cmp31.not, label %if.end33, label %cleanup62

if.end33:                                         ; preds = %while.body.lr.ph
  %arrayidx = getelementptr inbounds i8, ptr %out, i64 %out_pos.promoted
  store i8 0, ptr %arrayidx, align 1
  %inc = add nuw i64 %out_pos.promoted, 1
  store i64 %inc, ptr %out_pos, align 8
  %inc35 = add i64 %compressed_size30.promoted, 1
  store i64 %inc35, ptr %compressed_size30, align 8
  %and = and i64 %inc35, 3
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %while.end, label %while.body.1

while.body.1:                                     ; preds = %if.end33
  %cmp31.not.1 = icmp ult i64 %inc, %out_size
  br i1 %cmp31.not.1, label %if.end33.1, label %cleanup62

if.end33.1:                                       ; preds = %while.body.1
  %arrayidx.1 = getelementptr inbounds i8, ptr %out, i64 %inc
  store i8 0, ptr %arrayidx.1, align 1
  %inc.1 = add nuw i64 %out_pos.promoted, 2
  store i64 %inc.1, ptr %out_pos, align 8
  %inc35.1 = add i64 %compressed_size30.promoted, 2
  store i64 %inc35.1, ptr %compressed_size30, align 8
  %and.1 = and i64 %inc35.1, 3
  %tobool.not.1 = icmp eq i64 %and.1, 0
  br i1 %tobool.not.1, label %while.end, label %while.body.2

while.body.2:                                     ; preds = %if.end33.1
  %cmp31.not.2 = icmp ult i64 %inc.1, %out_size
  br i1 %cmp31.not.2, label %if.end33.2, label %cleanup62

if.end33.2:                                       ; preds = %while.body.2
  %arrayidx.2 = getelementptr inbounds i8, ptr %out, i64 %inc.1
  store i8 0, ptr %arrayidx.2, align 1
  %inc.2 = add nuw i64 %out_pos.promoted, 3
  store i64 %inc.2, ptr %out_pos, align 8
  %inc35.2 = add i64 %compressed_size30.promoted, 3
  store i64 %inc35.2, ptr %compressed_size30, align 8
  %and.2 = and i64 %inc35.2, 3
  %tobool.not.2 = icmp eq i64 %and.2, 0
  br i1 %tobool.not.2, label %while.end, label %while.body.3

while.body.3:                                     ; preds = %if.end33.2
  %cmp31.not.3 = icmp ult i64 %inc.2, %out_size
  br i1 %cmp31.not.3, label %if.end33.3, label %cleanup62

if.end33.3:                                       ; preds = %while.body.3
  %arrayidx.3 = getelementptr inbounds i8, ptr %out, i64 %inc.2
  store i8 0, ptr %arrayidx.3, align 1
  %inc.3 = add nuw i64 %out_pos.promoted, 4
  store i64 %inc.3, ptr %out_pos, align 8
  %inc35.3 = add i64 %compressed_size30.promoted, 4
  store i64 %inc35.3, ptr %compressed_size30, align 8
  br label %while.end

while.end:                                        ; preds = %if.end33, %if.end33.1, %if.end33.2, %if.end33.3, %sw.bb29
  %block36 = getelementptr inbounds i8, ptr %pcoder, i64 64
  %16 = load ptr, ptr %block36, align 8
  %check37 = getelementptr inbounds i8, ptr %16, i64 8
  %17 = load i32, ptr %check37, align 8
  %cmp38 = icmp eq i32 %17, 0
  br i1 %cmp38, label %cleanup62, label %if.end40

if.end40:                                         ; preds = %while.end
  %check41 = getelementptr inbounds i8, ptr %pcoder, i64 104
  tail call void @lzma_check_finish(ptr noundef nonnull %check41, i32 noundef %17) #4
  store i32 2, ptr %sequence, align 8
  br label %sw.bb45

sw.bb45:                                          ; preds = %if.end, %if.end40
  %block46 = getelementptr inbounds i8, ptr %pcoder, i64 64
  %18 = load ptr, ptr %block46, align 8
  %check47 = getelementptr inbounds i8, ptr %18, i64 8
  %19 = load i32, ptr %check47, align 8
  %call48 = tail call i32 @lzma_check_size(i32 noundef %19) #4
  %conv = zext i32 %call48 to i64
  %check49 = getelementptr inbounds i8, ptr %pcoder, i64 104
  %pos = getelementptr inbounds i8, ptr %pcoder, i64 96
  %call50 = tail call i64 @lzma_bufcpy(ptr noundef nonnull %check49, ptr noundef nonnull %pos, i64 noundef %conv, ptr noundef %out, ptr noundef %out_pos, i64 noundef %out_size) #4
  %20 = load i64, ptr %pos, align 8
  %cmp52 = icmp ult i64 %20, %conv
  br i1 %cmp52, label %cleanup62, label %if.end55

if.end55:                                         ; preds = %sw.bb45
  %21 = load ptr, ptr %block46, align 8
  %raw_check = getelementptr inbounds i8, ptr %21, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %raw_check, ptr nonnull align 8 %check49, i64 %conv, i1 false)
  br label %cleanup62

cleanup62:                                        ; preds = %while.body.lr.ph, %while.body.1, %while.body.2, %while.body.3, %if.end9, %sw.bb, %if.end, %if.end55, %sw.bb45, %while.end, %entry
  %retval.2 = phi i32 [ 9, %entry ], [ 1, %while.end ], [ 1, %if.end55 ], [ 0, %sw.bb45 ], [ 11, %if.end ], [ %call, %if.end9 ], [ 9, %sw.bb ], [ 0, %while.body.3 ], [ 0, %while.body.2 ], [ 0, %while.body.1 ], [ 0, %while.body.lr.ph ]
  ret i32 %retval.2
}

; Function Attrs: nounwind uwtable
define internal void @block_encoder_end(ptr noundef %pcoder, ptr noundef %allocator) #0 {
entry:
  tail call void @lzma_next_end(ptr noundef %pcoder, ptr noundef %allocator) #4
  tail call void @lzma_free(ptr noundef %pcoder, ptr noundef %allocator) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @block_encoder_update(ptr noundef %pcoder, ptr noundef %allocator, ptr nocapture readnone %filters, ptr noundef %reversed_filters) #0 {
entry:
  %sequence = getelementptr inbounds i8, ptr %pcoder, i64 72
  %0 = load i32, ptr %sequence, align 8
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @lzma_next_filter_update(ptr noundef nonnull %pcoder, ptr noundef %allocator, ptr noundef %reversed_filters) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 11, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare void @lzma_check_init(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @lzma_raw_encoder_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_block_encoder(ptr noundef %strm, ptr noundef %block) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @lzma_strm_init(ptr noundef %strm) #4
  %cmp.not.not = icmp eq i32 %call, 0
  br i1 %cmp.not.not, label %do.end, label %return

do.end:                                           ; preds = %entry
  %internal = getelementptr inbounds i8, ptr %strm, i64 56
  %0 = load ptr, ptr %internal, align 8
  %allocator = getelementptr inbounds i8, ptr %strm, i64 48
  %1 = load ptr, ptr %allocator, align 8
  %call3 = tail call i32 @lzma_block_encoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %block)
  %cmp4.not.not = icmp eq i32 %call3, 0
  br i1 %cmp4.not.not, label %do.end10, label %cleanup7

cleanup7:                                         ; preds = %do.end
  tail call void @lzma_end(ptr noundef nonnull %strm) #4
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

declare i32 @lzma_check_size(i32 noundef) local_unnamed_addr #1

declare i64 @lzma_bufcpy(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @lzma_next_filter_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
