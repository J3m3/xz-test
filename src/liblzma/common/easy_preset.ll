; ModuleID = 'liblzma/common/easy_preset.c'
source_filename = "liblzma/common/easy_preset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @lzma_easy_preset(ptr noundef %opt_easy, i32 noundef %preset) local_unnamed_addr #0 {
entry:
  %opt_lzma = getelementptr inbounds i8, ptr %opt_easy, i64 80
  %call = tail call zeroext i8 @lzma_lzma_preset(ptr noundef nonnull %opt_lzma, i32 noundef %preset) #2
  %tobool.not = icmp ne i8 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  store i64 33, ptr %opt_easy, align 8
  %options = getelementptr inbounds i8, ptr %opt_easy, i64 8
  store ptr %opt_lzma, ptr %options, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %opt_easy, i64 16
  store i64 -1, ptr %arrayidx5, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  ret i1 %tobool.not
}

declare zeroext i8 @lzma_lzma_preset(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
