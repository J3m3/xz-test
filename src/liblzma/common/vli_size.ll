; ModuleID = 'liblzma/common/vli_size.c'
source_filename = "liblzma/common/vli_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @lzma_vli_size(i64 noundef %vli) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i64 %vli, 0
  br i1 %cmp, label %return, label %do.body

do.body:                                          ; preds = %entry, %do.body
  %vli.addr.0 = phi i64 [ %shr, %do.body ], [ %vli, %entry ]
  %i.0 = phi i32 [ %inc, %do.body ], [ 0, %entry ]
  %shr = lshr i64 %vli.addr.0, 7
  %inc = add nuw nsw i32 %i.0, 1
  %cmp1.not = icmp ult i64 %vli.addr.0, 128
  br i1 %cmp1.not, label %return, label %do.body

return:                                           ; preds = %do.body, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %inc, %do.body ]
  ret i32 %retval.0
}

attributes #0 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
