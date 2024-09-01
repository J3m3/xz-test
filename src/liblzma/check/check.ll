; ModuleID = 'liblzma/check/check.c'
source_filename = "liblzma/check/check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lzma_check_is_supported.available_checks = internal unnamed_addr constant [16 x i8] c"\01\01\00\00\01\00\00\00\00\00\01\00\00\00\00\00", align 16
@lzma_check_size.check_sizes = internal unnamed_addr constant [16 x i8] c"\00\04\04\04\08\08\08\10\10\10   @@@", align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i8 @lzma_check_is_supported(i32 noundef %type) local_unnamed_addr #0 {
entry:
  %cmp = icmp ugt i32 %type, 15
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %idxprom = zext nneg i32 %type to i64
  %arrayidx = getelementptr inbounds [16 x i8], ptr @lzma_check_is_supported.available_checks, i64 0, i64 %idxprom
  %0 = load i8, ptr %arrayidx, align 1
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8 [ %0, %if.end ], [ 0, %entry ]
  ret i8 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 -1, 256) i32 @lzma_check_size(i32 noundef %type) local_unnamed_addr #0 {
entry:
  %cmp = icmp ugt i32 %type, 15
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %idxprom = zext nneg i32 %type to i64
  %arrayidx = getelementptr inbounds [16 x i8], ptr @lzma_check_size.check_sizes, i64 0, i64 %idxprom
  %0 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %0 to i32
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %conv, %if.end ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local void @lzma_check_init(ptr noundef %check, i32 noundef %type) local_unnamed_addr #1 {
entry:
  switch i32 %type, label %sw.epilog [
    i32 10, label %sw.bb3
    i32 1, label %sw.bb
    i32 4, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %state = getelementptr inbounds i8, ptr %check, i64 64
  store i32 0, ptr %state, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %state2 = getelementptr inbounds i8, ptr %check, i64 64
  store i64 0, ptr %state2, align 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  tail call void @lzma_sha256_init(ptr noundef %check) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb3, %sw.bb1, %sw.bb
  ret void
}

declare void @lzma_sha256_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @lzma_check_update(ptr noundef %check, i32 noundef %type, ptr noundef %buf, i64 noundef %size) local_unnamed_addr #1 {
entry:
  switch i32 %type, label %sw.epilog [
    i32 1, label %sw.bb
    i32 4, label %sw.bb2
    i32 10, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  %state = getelementptr inbounds i8, ptr %check, i64 64
  %0 = load i32, ptr %state, align 8
  %call = tail call i32 @lzma_crc32(ptr noundef %buf, i64 noundef %size, i32 noundef %0) #3
  store i32 %call, ptr %state, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %state3 = getelementptr inbounds i8, ptr %check, i64 64
  %1 = load i64, ptr %state3, align 8
  %call4 = tail call i64 @lzma_crc64(ptr noundef %buf, i64 noundef %size, i64 noundef %1) #3
  store i64 %call4, ptr %state3, align 8
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  tail call void @lzma_sha256_update(ptr noundef %buf, i64 noundef %size, ptr noundef %check) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb6, %sw.bb2, %sw.bb
  ret void
}

declare i32 @lzma_crc32(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i64 @lzma_crc64(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @lzma_sha256_update(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @lzma_check_finish(ptr noundef %check, i32 noundef %type) local_unnamed_addr #1 {
entry:
  switch i32 %type, label %sw.epilog [
    i32 1, label %sw.bb
    i32 4, label %sw.bb1
    i32 10, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  %state = getelementptr inbounds i8, ptr %check, i64 64
  %0 = load i32, ptr %state, align 8
  store i32 %0, ptr %check, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %state2 = getelementptr inbounds i8, ptr %check, i64 64
  %1 = load i64, ptr %state2, align 8
  store i64 %1, ptr %check, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  tail call void @lzma_sha256_finish(ptr noundef %check) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb5, %sw.bb1, %sw.bb
  ret void
}

declare void @lzma_sha256_finish(ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
