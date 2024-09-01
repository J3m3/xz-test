; ModuleID = 'liblzma/common/alone_encoder.c'
source_filename = "liblzma/common/alone_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_filter_info_s = type { i64, ptr, ptr }

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_alone_encoder(ptr noundef %strm, ptr noundef %options) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @lzma_strm_init(ptr noundef %strm) #4
  %cmp.not.not = icmp eq i32 %call, 0
  br i1 %cmp.not.not, label %do.end, label %return

do.end:                                           ; preds = %entry
  %internal = getelementptr inbounds i8, ptr %strm, i64 56
  %0 = load ptr, ptr %internal, align 8
  %allocator = getelementptr inbounds i8, ptr %strm, i64 48
  %1 = load ptr, ptr %allocator, align 8
  %call3 = tail call i32 @alone_encoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %options)
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @lzma_strm_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @alone_encoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %options) #0 {
entry:
  %filters = alloca [2 x %struct.lzma_filter_info_s], align 16
  %init = getelementptr inbounds i8, ptr %next, i64 16
  %0 = load i64, ptr %init, align 8
  %cmp.not = icmp eq i64 %0, ptrtoint (ptr @alone_encoder_init to i64)
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @lzma_next_end(ptr noundef nonnull %next, ptr noundef %allocator) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i64 ptrtoint (ptr @alone_encoder_init to i64), ptr %init, align 8
  %1 = load ptr, ptr %next, align 8
  %cmp2 = icmp eq ptr %1, null
  br i1 %cmp2, label %if.then3, label %if.end15

if.then3:                                         ; preds = %if.end
  %call = tail call ptr @lzma_alloc(i64 noundef 96, ptr noundef %allocator) #4
  store ptr %call, ptr %next, align 8
  %cmp6 = icmp eq ptr %call, null
  br i1 %cmp6, label %return, label %if.end8

if.end8:                                          ; preds = %if.then3
  %code = getelementptr inbounds i8, ptr %next, i64 24
  store ptr @alone_encode, ptr %code, align 8
  %end = getelementptr inbounds i8, ptr %next, i64 32
  store ptr @alone_encoder_end, ptr %end, align 8
  store ptr null, ptr %call, align 8
  %.compoundliteral.sroa.2.0.next10.sroa_idx = getelementptr inbounds i8, ptr %call, i64 8
  store i64 -1, ptr %.compoundliteral.sroa.2.0.next10.sroa_idx, align 8
  %.compoundliteral.sroa.3.0.next10.sroa_idx = getelementptr inbounds i8, ptr %call, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.compoundliteral.sroa.3.0.next10.sroa_idx, i8 0, i64 48, i1 false)
  %.pre = load ptr, ptr %next, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.end8, %if.end
  %2 = phi ptr [ %.pre, %if.end8 ], [ %1, %if.end ]
  %sequence = getelementptr inbounds i8, ptr %2, i64 64
  store i32 0, ptr %sequence, align 8
  %3 = load ptr, ptr %next, align 8
  %header_pos = getelementptr inbounds i8, ptr %3, i64 72
  store i64 0, ptr %header_pos, align 8
  %4 = load ptr, ptr %next, align 8
  %header = getelementptr inbounds i8, ptr %4, i64 80
  %call19 = tail call zeroext i1 @lzma_lzma_lclppb_encode(ptr noundef %options, ptr noundef nonnull %header) #4
  br i1 %call19, label %return, label %if.end21

if.end21:                                         ; preds = %if.end15
  %5 = load i32, ptr %options, align 8
  %cmp22 = icmp ult i32 %5, 4096
  br i1 %cmp22, label %return, label %if.end24

if.end24:                                         ; preds = %if.end21
  %sub = add i32 %5, -1
  %shr = lshr i32 %sub, 2
  %or = or i32 %shr, %sub
  %shr26 = lshr i32 %or, 3
  %or27 = or i32 %shr26, %or
  %shr28 = lshr i32 %or27, 4
  %or29 = or i32 %shr28, %or27
  %shr30 = lshr i32 %or29, 8
  %or31 = or i32 %shr30, %or29
  %shr32 = lshr i32 %or31, 16
  %or33 = or i32 %shr32, %or31
  %cmp34.not = icmp eq i32 %or33, -1
  %inc = add nuw i32 %or33, 1
  %spec.select = select i1 %cmp34.not, i32 -1, i32 %inc
  %6 = load ptr, ptr %next, align 8
  %add.ptr = getelementptr inbounds i8, ptr %6, i64 81
  %conv.i = trunc i32 %spec.select to i8
  store i8 %conv.i, ptr %add.ptr, align 1
  %shr.i = lshr i32 %spec.select, 8
  %conv1.i = trunc i32 %shr.i to i8
  %arrayidx2.i = getelementptr inbounds i8, ptr %6, i64 82
  store i8 %conv1.i, ptr %arrayidx2.i, align 1
  %shr3.i = lshr i32 %spec.select, 16
  %conv4.i = trunc i32 %shr3.i to i8
  %arrayidx5.i = getelementptr inbounds i8, ptr %6, i64 83
  store i8 %conv4.i, ptr %arrayidx5.i, align 1
  %shr6.i = lshr i32 %spec.select, 24
  %conv7.i = trunc nuw i32 %shr6.i to i8
  %arrayidx8.i = getelementptr inbounds i8, ptr %6, i64 84
  store i8 %conv7.i, ptr %arrayidx8.i, align 1
  %7 = load ptr, ptr %next, align 8
  %add.ptr44 = getelementptr inbounds i8, ptr %7, i64 85
  store i64 -1, ptr %add.ptr44, align 1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %filters) #4
  store i64 0, ptr %filters, align 16
  %init46 = getelementptr inbounds i8, ptr %filters, i64 8
  store ptr @lzma_lzma_encoder_init, ptr %init46, align 8
  %options47 = getelementptr inbounds i8, ptr %filters, i64 16
  store ptr %options, ptr %options47, align 16
  %arrayinit.element = getelementptr inbounds i8, ptr %filters, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %arrayinit.element, i8 0, i64 24, i1 false)
  %8 = load ptr, ptr %next, align 8
  %call54 = call i32 @lzma_next_filter_init(ptr noundef %8, ptr noundef %allocator, ptr noundef nonnull %filters) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %filters) #4
  br label %return

return:                                           ; preds = %if.end21, %if.end15, %if.then3, %if.end24
  %retval.0 = phi i32 [ %call54, %if.end24 ], [ 5, %if.then3 ], [ 8, %if.end15 ], [ 8, %if.end21 ]
  ret i32 %retval.0
}

declare void @lzma_end(ptr noundef) local_unnamed_addr #2

declare void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @alone_encode(ptr noundef %pcoder, ptr noundef %allocator, ptr noalias noundef %in, ptr noalias noundef %in_pos, i64 noundef %in_size, ptr noalias noundef %out, ptr noalias noundef %out_pos, i64 noundef %out_size, i32 noundef %action) #0 {
entry:
  %0 = load i64, ptr %out_pos, align 8
  %cmp19 = icmp ult i64 %0, %out_size
  br i1 %cmp19, label %while.body.lr.ph, label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %sequence = getelementptr inbounds i8, ptr %pcoder, i64 64
  %header = getelementptr inbounds i8, ptr %pcoder, i64 80
  %header_pos = getelementptr inbounds i8, ptr %pcoder, i64 72
  %.pre = load i32, ptr %sequence, align 8
  switch i32 %.pre, label %cleanup [
    i32 0, label %sw.bb.peel
    i32 1, label %sw.bb4
  ]

sw.bb.peel:                                       ; preds = %while.body.lr.ph
  %call.peel = tail call i64 @lzma_bufcpy(ptr noundef nonnull %header, ptr noundef nonnull %header_pos, i64 noundef 13, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %out_size) #4
  %1 = load i64, ptr %header_pos, align 8
  %cmp2.peel = icmp ult i64 %1, 13
  br i1 %cmp2.peel, label %cleanup, label %if.end.peel

if.end.peel:                                      ; preds = %sw.bb.peel
  store i32 1, ptr %sequence, align 8
  %2 = load i64, ptr %out_pos, align 8
  %cmp.peel = icmp ult i64 %2, %out_size
  br i1 %cmp.peel, label %sw.bb4, label %cleanup

sw.bb4:                                           ; preds = %if.end.peel, %while.body.lr.ph
  %code = getelementptr inbounds i8, ptr %pcoder, i64 24
  %3 = load ptr, ptr %code, align 8
  %4 = load ptr, ptr %pcoder, align 8
  %call7 = tail call i32 %3(ptr noundef %4, ptr noundef %allocator, ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %out_size, i32 noundef %action) #4
  br label %cleanup

cleanup:                                          ; preds = %while.body.lr.ph, %sw.bb.peel, %if.end.peel, %entry, %sw.bb4
  %retval.0 = phi i32 [ %call7, %sw.bb4 ], [ 0, %entry ], [ 11, %while.body.lr.ph ], [ 0, %sw.bb.peel ], [ 0, %if.end.peel ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define internal void @alone_encoder_end(ptr noundef %pcoder, ptr noundef %allocator) #0 {
entry:
  tail call void @lzma_next_end(ptr noundef %pcoder, ptr noundef %allocator) #4
  tail call void @lzma_free(ptr noundef %pcoder, ptr noundef %allocator) #4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare zeroext i1 @lzma_lzma_lclppb_encode(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lzma_lzma_encoder_init(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @lzma_next_filter_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @lzma_bufcpy(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
