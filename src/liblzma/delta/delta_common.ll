; ModuleID = 'liblzma/delta/delta_common.c'
source_filename = "liblzma/delta/delta_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_delta_coder_init(ptr nocapture noundef %next, ptr noundef %allocator, ptr noundef %filters) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %next, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %call = tail call ptr @lzma_alloc(i64 noundef 336, ptr noundef %allocator) #4
  store ptr %call, ptr %next, align 8
  %cmp3 = icmp eq ptr %call, null
  br i1 %cmp3, label %return, label %if.end

if.end:                                           ; preds = %if.then
  %end = getelementptr inbounds i8, ptr %next, i64 32
  store ptr @delta_coder_end, ptr %end, align 8
  store ptr null, ptr %call, align 8
  %.compoundliteral.sroa.2.0.next6.sroa_idx = getelementptr inbounds i8, ptr %call, i64 8
  store i64 -1, ptr %.compoundliteral.sroa.2.0.next6.sroa_idx, align 8
  %.compoundliteral.sroa.3.0.next6.sroa_idx = getelementptr inbounds i8, ptr %call, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.compoundliteral.sroa.3.0.next6.sroa_idx, i8 0, i64 48, i1 false)
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry
  %options = getelementptr inbounds i8, ptr %filters, i64 16
  %1 = load ptr, ptr %options, align 8
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %return, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.end9
  %2 = load i32, ptr %1, align 8
  %cmp1.not.i = icmp eq i32 %2, 0
  br i1 %cmp1.not.i, label %lor.lhs.false2.i, label %return

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %dist.i = getelementptr inbounds i8, ptr %1, i64 4
  %3 = load i32, ptr %dist.i, align 4
  %4 = add i32 %3, -257
  %or.cond.i = icmp ult i32 %4, -256
  br i1 %or.cond.i, label %return, label %if.end13

if.end13:                                         ; preds = %lor.lhs.false2.i
  %conv = zext nneg i32 %3 to i64
  %5 = load ptr, ptr %next, align 8
  %distance = getelementptr inbounds i8, ptr %5, i64 64
  store i64 %conv, ptr %distance, align 8
  %6 = load ptr, ptr %next, align 8
  %pos = getelementptr inbounds i8, ptr %6, i64 72
  store i8 0, ptr %pos, align 8
  %7 = load ptr, ptr %next, align 8
  %history = getelementptr inbounds i8, ptr %7, i64 73
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %history, i8 0, i64 256, i1 false)
  %8 = load ptr, ptr %next, align 8
  %add.ptr = getelementptr inbounds i8, ptr %filters, i64 24
  %call21 = tail call i32 @lzma_next_filter_init(ptr noundef %8, ptr noundef %allocator, ptr noundef nonnull %add.ptr) #4
  br label %return

return:                                           ; preds = %lor.lhs.false2.i, %if.end9, %lor.lhs.false.i, %if.then, %if.end13
  %retval.0 = phi i32 [ %call21, %if.end13 ], [ 5, %if.then ], [ 8, %lor.lhs.false.i ], [ 8, %if.end9 ], [ 8, %lor.lhs.false2.i ]
  ret i32 %retval.0
}

declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @delta_coder_end(ptr noundef %pcoder, ptr noundef %allocator) #0 {
entry:
  tail call void @lzma_next_end(ptr noundef %pcoder, ptr noundef %allocator) #4
  tail call void @lzma_free(ptr noundef %pcoder, ptr noundef %allocator) #4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 -1, 337) i64 @lzma_delta_coder_memusage(ptr noundef readonly %options) local_unnamed_addr #3 {
entry:
  %cmp = icmp eq ptr %options, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load i32, ptr %options, align 8
  %cmp1.not = icmp eq i32 %0, 0
  br i1 %cmp1.not, label %lor.lhs.false2, label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %dist = getelementptr inbounds i8, ptr %options, i64 4
  %1 = load i32, ptr %dist, align 4
  %2 = add i32 %1, -257
  %or.cond = icmp ult i32 %2, -256
  %spec.select = select i1 %or.cond, i64 -1, i64 336
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false2, %entry, %lor.lhs.false
  %retval.0 = phi i64 [ -1, %lor.lhs.false ], [ -1, %entry ], [ %spec.select, %lor.lhs.false2 ]
  ret i64 %retval.0
}

declare i32 @lzma_next_filter_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
