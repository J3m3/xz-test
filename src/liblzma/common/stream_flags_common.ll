; ModuleID = 'liblzma/common/stream_flags_common.c'
source_filename = "liblzma/common/stream_flags_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lzma_header_magic = dso_local local_unnamed_addr constant [6 x i8] c"\FD7zXZ\00", align 1
@lzma_footer_magic = dso_local local_unnamed_addr constant [2 x i8] c"YZ", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 12) i32 @lzma_stream_flags_compare(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr %a, align 8
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %b, align 8
  %cmp2.not = icmp eq i32 %1, 0
  br i1 %cmp2.not, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false
  %check = getelementptr inbounds i8, ptr %a, i64 16
  %2 = load i32, ptr %check, align 8
  %cmp3 = icmp ugt i32 %2, 15
  br i1 %cmp3, label %return, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %if.end
  %check5 = getelementptr inbounds i8, ptr %b, i64 16
  %3 = load i32, ptr %check5, align 8
  %cmp6 = icmp ugt i32 %3, 15
  br i1 %cmp6, label %return, label %if.end8

if.end8:                                          ; preds = %lor.lhs.false4
  %cmp11.not = icmp eq i32 %2, %3
  br i1 %cmp11.not, label %if.end13, label %return

if.end13:                                         ; preds = %if.end8
  %backward_size = getelementptr inbounds i8, ptr %a, i64 8
  %4 = load i64, ptr %backward_size, align 8
  %cmp14.not = icmp eq i64 %4, -1
  br i1 %cmp14.not, label %if.end27, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end13
  %backward_size15 = getelementptr inbounds i8, ptr %b, i64 8
  %5 = load i64, ptr %backward_size15, align 8
  %cmp16.not = icmp eq i64 %5, -1
  br i1 %cmp16.not, label %if.end27, label %if.then17

if.then17:                                        ; preds = %land.lhs.true
  %6 = add i64 %4, -4
  %or.cond.i = icmp ult i64 %6, 17179869181
  %and.i = and i64 %4, 3
  %cmp4.i = icmp eq i64 %and.i, 0
  %7 = and i1 %or.cond.i, %cmp4.i
  br i1 %7, label %lor.lhs.false18, label %return

lor.lhs.false18:                                  ; preds = %if.then17
  %8 = add i64 %5, -4
  %or.cond.i39 = icmp ult i64 %8, 17179869181
  %and.i40 = and i64 %5, 3
  %cmp4.i41 = icmp eq i64 %and.i40, 0
  %9 = and i1 %or.cond.i39, %cmp4.i41
  br i1 %9, label %if.end21, label %return

if.end21:                                         ; preds = %lor.lhs.false18
  %cmp24.not = icmp eq i64 %4, %5
  br i1 %cmp24.not, label %if.end27, label %return

if.end27:                                         ; preds = %if.end21, %land.lhs.true, %if.end13
  br label %return

return:                                           ; preds = %if.end21, %if.then17, %lor.lhs.false18, %if.end8, %if.end, %lor.lhs.false4, %entry, %lor.lhs.false, %if.end27
  %retval.0 = phi i32 [ 0, %if.end27 ], [ 8, %lor.lhs.false ], [ 8, %entry ], [ 11, %lor.lhs.false4 ], [ 11, %if.end ], [ 9, %if.end8 ], [ 11, %lor.lhs.false18 ], [ 11, %if.then17 ], [ 9, %if.end21 ]
  ret i32 %retval.0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
