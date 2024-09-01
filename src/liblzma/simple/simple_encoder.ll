; ModuleID = 'liblzma/simple/simple_encoder.c'
source_filename = "liblzma/simple/simple_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @lzma_simple_props_size(ptr nocapture noundef writeonly %size, ptr noundef readonly %options) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq ptr %options, null
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %0 = load i32, ptr %options, align 4
  %cmp1 = icmp eq i32 %0, 0
  %1 = select i1 %cmp1, i32 0, i32 4
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %cond = phi i32 [ 0, %entry ], [ %1, %lor.rhs ]
  store i32 %cond, ptr %size, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @lzma_simple_props_encode(ptr noundef readonly %options, ptr nocapture noundef writeonly %out) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq ptr %options, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load i32, ptr %options, align 4
  %cmp1 = icmp eq i32 %0, 0
  br i1 %cmp1, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %conv.i = trunc i32 %0 to i8
  store i8 %conv.i, ptr %out, align 1
  %shr.i = lshr i32 %0, 8
  %conv1.i = trunc i32 %shr.i to i8
  %arrayidx2.i = getelementptr inbounds i8, ptr %out, i64 1
  store i8 %conv1.i, ptr %arrayidx2.i, align 1
  %shr3.i = lshr i32 %0, 16
  %conv4.i = trunc i32 %shr3.i to i8
  %arrayidx5.i = getelementptr inbounds i8, ptr %out, i64 2
  store i8 %conv4.i, ptr %arrayidx5.i, align 1
  %shr6.i = lshr i32 %0, 24
  %conv7.i = trunc nuw i32 %shr6.i to i8
  %arrayidx8.i = getelementptr inbounds i8, ptr %out, i64 3
  store i8 %conv7.i, ptr %arrayidx8.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
