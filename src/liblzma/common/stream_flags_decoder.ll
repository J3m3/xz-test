; ModuleID = 'liblzma/common/stream_flags_decoder.c'
source_filename = "liblzma/common/stream_flags_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lzma_header_magic = external constant [6 x i8], align 1
@lzma_footer_magic = external constant [2 x i8], align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 10) i32 @lzma_stream_header_decode(ptr nocapture noundef writeonly %options, ptr noundef %in) local_unnamed_addr #0 {
entry:
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %in, ptr noundef nonnull dereferenceable(6) @lzma_header_magic, i64 6)
  %cmp.not = icmp eq i32 %bcmp, 0
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds i8, ptr %in, i64 6
  %call1 = tail call i32 @lzma_crc32(ptr noundef nonnull %add.ptr, i64 noundef 2, i32 noundef 0) #3
  %add.ptr3 = getelementptr inbounds i8, ptr %in, i64 8
  %0 = load i32, ptr %add.ptr3, align 1
  %cmp5.not = icmp eq i32 %call1, %0
  br i1 %cmp5.not, label %if.end7, label %return

if.end7:                                          ; preds = %if.end
  %1 = load i8, ptr %add.ptr, align 1
  %cmp.not.i = icmp eq i8 %1, 0
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %return

lor.lhs.false.i:                                  ; preds = %if.end7
  %arrayidx2.i = getelementptr inbounds i8, ptr %in, i64 7
  %2 = load i8, ptr %arrayidx2.i, align 1
  %tobool.not.i = icmp ult i8 %2, 16
  br i1 %tobool.not.i, label %if.end11, label %return

if.end11:                                         ; preds = %lor.lhs.false.i
  store i32 0, ptr %options, align 8
  %3 = load i8, ptr %arrayidx2.i, align 1
  %4 = and i8 %3, 15
  %and6.i = zext nneg i8 %4 to i32
  %check.i = getelementptr inbounds i8, ptr %options, i64 16
  store i32 %and6.i, ptr %check.i, align 8
  %backward_size = getelementptr inbounds i8, ptr %options, i64 8
  store i64 -1, ptr %backward_size, align 8
  br label %return

return:                                           ; preds = %if.end7, %lor.lhs.false.i, %if.end11, %if.end, %entry
  %retval.1 = phi i32 [ 7, %entry ], [ 0, %if.end11 ], [ 9, %if.end ], [ 8, %lor.lhs.false.i ], [ 8, %if.end7 ]
  ret i32 %retval.1
}

declare i32 @lzma_crc32(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 10) i32 @lzma_stream_footer_decode(ptr nocapture noundef writeonly %options, ptr noundef %in) local_unnamed_addr #0 {
entry:
  %add.ptr = getelementptr inbounds i8, ptr %in, i64 8
  %add.ptr1 = getelementptr inbounds i8, ptr %in, i64 10
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %add.ptr1, ptr noundef nonnull dereferenceable(2) @lzma_footer_magic, i64 2)
  %cmp.not = icmp eq i32 %bcmp, 0
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %add.ptr2 = getelementptr inbounds i8, ptr %in, i64 4
  %call3 = tail call i32 @lzma_crc32(ptr noundef nonnull %add.ptr2, i64 noundef 6, i32 noundef 0) #3
  %0 = load i32, ptr %in, align 1
  %cmp5.not = icmp eq i32 %call3, %0
  br i1 %cmp5.not, label %if.end7, label %return

if.end7:                                          ; preds = %if.end
  %1 = load i8, ptr %add.ptr, align 1
  %cmp.not.i = icmp eq i8 %1, 0
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %return

lor.lhs.false.i:                                  ; preds = %if.end7
  %arrayidx2.i = getelementptr inbounds i8, ptr %in, i64 9
  %2 = load i8, ptr %arrayidx2.i, align 1
  %tobool.not.i = icmp ult i8 %2, 16
  br i1 %tobool.not.i, label %if.end11, label %return

if.end11:                                         ; preds = %lor.lhs.false.i
  store i32 0, ptr %options, align 8
  %3 = load i8, ptr %arrayidx2.i, align 1
  %4 = and i8 %3, 15
  %and6.i = zext nneg i8 %4 to i32
  %check.i = getelementptr inbounds i8, ptr %options, i64 16
  store i32 %and6.i, ptr %check.i, align 8
  %5 = load i32, ptr %add.ptr2, align 1
  %conv = zext i32 %5 to i64
  %backward_size = getelementptr inbounds i8, ptr %options, i64 8
  %add = shl nuw nsw i64 %conv, 2
  %mul = add nuw nsw i64 %add, 4
  store i64 %mul, ptr %backward_size, align 8
  br label %return

return:                                           ; preds = %if.end7, %lor.lhs.false.i, %if.end11, %if.end, %entry
  %retval.1 = phi i32 [ 7, %entry ], [ 0, %if.end11 ], [ 9, %if.end ], [ 8, %lor.lhs.false.i ], [ 8, %if.end7 ]
  ret i32 %retval.1
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind willreturn memory(argmem: read) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
