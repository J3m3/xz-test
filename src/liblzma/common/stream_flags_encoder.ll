; ModuleID = 'liblzma/common/stream_flags_encoder.c'
source_filename = "liblzma/common/stream_flags_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lzma_header_magic = external local_unnamed_addr constant [6 x i8], align 1
@lzma_footer_magic = external local_unnamed_addr constant [2 x i8], align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 12) i32 @lzma_stream_header_encode(ptr nocapture noundef readonly %options, ptr noundef %out) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr %options, align 8
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %out, ptr noundef nonnull align 1 dereferenceable(6) @lzma_header_magic, i64 6, i1 false)
  %check.i = getelementptr inbounds i8, ptr %options, i64 16
  %1 = load i32, ptr %check.i, align 8
  %cmp.i = icmp ugt i32 %1, 15
  br i1 %cmp.i, label %return, label %if.end2

if.end2:                                          ; preds = %if.end
  %add.ptr = getelementptr inbounds i8, ptr %out, i64 6
  store i8 0, ptr %add.ptr, align 1
  %2 = load i32, ptr %check.i, align 8
  %conv.i = trunc i32 %2 to i8
  %arrayidx2.i = getelementptr inbounds i8, ptr %out, i64 7
  store i8 %conv.i, ptr %arrayidx2.i, align 1
  %call4 = tail call i32 @lzma_crc32(ptr noundef nonnull %add.ptr, i64 noundef 2, i32 noundef 0) #3
  %add.ptr6 = getelementptr inbounds i8, ptr %out, i64 8
  %conv.i11 = trunc i32 %call4 to i8
  store i8 %conv.i11, ptr %add.ptr6, align 1
  %shr.i = lshr i32 %call4, 8
  %conv1.i = trunc i32 %shr.i to i8
  %arrayidx2.i12 = getelementptr inbounds i8, ptr %out, i64 9
  store i8 %conv1.i, ptr %arrayidx2.i12, align 1
  %shr3.i = lshr i32 %call4, 16
  %conv4.i = trunc i32 %shr3.i to i8
  %arrayidx5.i = getelementptr inbounds i8, ptr %out, i64 10
  store i8 %conv4.i, ptr %arrayidx5.i, align 1
  %shr6.i = lshr i32 %call4, 24
  %conv7.i = trunc nuw i32 %shr6.i to i8
  %arrayidx8.i = getelementptr inbounds i8, ptr %out, i64 11
  store i8 %conv7.i, ptr %arrayidx8.i, align 1
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end2
  %retval.0 = phi i32 [ 0, %if.end2 ], [ 8, %entry ], [ 11, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

declare i32 @lzma_crc32(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 12) i32 @lzma_stream_footer_encode(ptr nocapture noundef readonly %options, ptr noundef %out) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr %options, align 8
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %1 = getelementptr i8, ptr %options, i64 8
  %options.val = load i64, ptr %1, align 8
  %2 = add i64 %options.val, -4
  %or.cond.i = icmp ult i64 %2, 17179869181
  %and.i = and i64 %options.val, 3
  %cmp4.i = icmp eq i64 %and.i, 0
  %3 = and i1 %or.cond.i, %cmp4.i
  br i1 %3, label %if.end2, label %return

if.end2:                                          ; preds = %if.end
  %add.ptr = getelementptr inbounds i8, ptr %out, i64 4
  %div18 = lshr exact i64 %options.val, 2
  %4 = trunc i64 %div18 to i32
  %conv = add i32 %4, -1
  %conv.i = trunc i32 %conv to i8
  store i8 %conv.i, ptr %add.ptr, align 1
  %shr.i = lshr i32 %conv, 8
  %conv1.i = trunc i32 %shr.i to i8
  %arrayidx2.i = getelementptr inbounds i8, ptr %out, i64 5
  store i8 %conv1.i, ptr %arrayidx2.i, align 1
  %shr3.i = lshr i32 %conv, 16
  %conv4.i = trunc i32 %shr3.i to i8
  %arrayidx5.i = getelementptr inbounds i8, ptr %out, i64 6
  store i8 %conv4.i, ptr %arrayidx5.i, align 1
  %shr6.i = lshr i32 %conv, 24
  %conv7.i = trunc nuw i32 %shr6.i to i8
  %arrayidx8.i = getelementptr inbounds i8, ptr %out, i64 7
  store i8 %conv7.i, ptr %arrayidx8.i, align 1
  %check.i = getelementptr inbounds i8, ptr %options, i64 16
  %5 = load i32, ptr %check.i, align 8
  %cmp.i = icmp ugt i32 %5, 15
  br i1 %cmp.i, label %return, label %if.end6

if.end6:                                          ; preds = %if.end2
  %add.ptr3 = getelementptr inbounds i8, ptr %out, i64 8
  store i8 0, ptr %add.ptr3, align 1
  %6 = load i32, ptr %check.i, align 8
  %conv.i19 = trunc i32 %6 to i8
  %arrayidx2.i20 = getelementptr inbounds i8, ptr %out, i64 9
  store i8 %conv.i19, ptr %arrayidx2.i20, align 1
  %call8 = tail call i32 @lzma_crc32(ptr noundef nonnull %add.ptr, i64 noundef 6, i32 noundef 0) #3
  %conv.i21 = trunc i32 %call8 to i8
  store i8 %conv.i21, ptr %out, align 1
  %shr.i22 = lshr i32 %call8, 8
  %conv1.i23 = trunc i32 %shr.i22 to i8
  %arrayidx2.i24 = getelementptr inbounds i8, ptr %out, i64 1
  store i8 %conv1.i23, ptr %arrayidx2.i24, align 1
  %shr3.i25 = lshr i32 %call8, 16
  %conv4.i26 = trunc i32 %shr3.i25 to i8
  %arrayidx5.i27 = getelementptr inbounds i8, ptr %out, i64 2
  store i8 %conv4.i26, ptr %arrayidx5.i27, align 1
  %shr6.i28 = lshr i32 %call8, 24
  %conv7.i29 = trunc nuw i32 %shr6.i28 to i8
  %arrayidx8.i30 = getelementptr inbounds i8, ptr %out, i64 3
  store i8 %conv7.i29, ptr %arrayidx8.i30, align 1
  %add.ptr10 = getelementptr inbounds i8, ptr %out, i64 10
  %7 = load i16, ptr @lzma_footer_magic, align 1
  store i16 %7, ptr %add.ptr10, align 1
  br label %return

return:                                           ; preds = %if.end2, %if.end, %entry, %if.end6
  %retval.0 = phi i32 [ 0, %if.end6 ], [ 8, %entry ], [ 11, %if.end ], [ 11, %if.end2 ]
  ret i32 %retval.0
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
