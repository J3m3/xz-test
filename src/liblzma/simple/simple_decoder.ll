; ModuleID = 'liblzma/simple/simple_decoder.c'
source_filename = "liblzma/simple/simple_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 9) i32 @lzma_simple_props_decode(ptr nocapture noundef writeonly %options, ptr noundef %allocator, ptr nocapture noundef readonly %props, i64 noundef %props_size) local_unnamed_addr #0 {
entry:
  switch i64 %props_size, label %if.then2 [
    i64 0, label %return
    i64 4, label %if.end3
  ]

if.then2:                                         ; preds = %entry
  br label %return

if.end3:                                          ; preds = %entry
  %call = tail call ptr @lzma_alloc(i64 noundef 4, ptr noundef %allocator) #2
  %cmp4 = icmp eq ptr %call, null
  br i1 %cmp4, label %return, label %if.end6

if.end6:                                          ; preds = %if.end3
  %0 = load i32, ptr %props, align 1
  store i32 %0, ptr %call, align 4
  %cmp9 = icmp eq i32 %0, 0
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end6
  tail call void @lzma_free(ptr noundef nonnull %call, ptr noundef %allocator) #2
  br label %return

if.else:                                          ; preds = %if.end6
  store ptr %call, ptr %options, align 8
  br label %return

return:                                           ; preds = %if.end3, %if.else, %if.then10, %entry, %if.then2
  %retval.1 = phi i32 [ 8, %if.then2 ], [ 0, %entry ], [ 5, %if.end3 ], [ 0, %if.else ], [ 0, %if.then10 ]
  ret i32 %retval.1
}

declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

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
