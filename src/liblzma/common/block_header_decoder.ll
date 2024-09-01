; ModuleID = 'liblzma/common/block_header_decoder.c'
source_filename = "liblzma/common/block_header_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_filter = type { i64, ptr }

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_block_header_decode(ptr noundef %block, ptr noundef %allocator, ptr noundef %in) local_unnamed_addr #0 {
entry:
  %in_pos = alloca i64, align 8
  %filters = getelementptr inbounds i8, ptr %block, i64 32
  %0 = load ptr, ptr %filters, align 8
  store i64 -1, ptr %0, align 8
  %1 = load ptr, ptr %filters, align 8
  %options = getelementptr inbounds i8, ptr %1, i64 8
  store ptr null, ptr %options, align 8
  %2 = load ptr, ptr %filters, align 8
  %arrayidx.1 = getelementptr inbounds i8, ptr %2, i64 16
  store i64 -1, ptr %arrayidx.1, align 8
  %3 = load ptr, ptr %filters, align 8
  %options.1 = getelementptr inbounds i8, ptr %3, i64 24
  store ptr null, ptr %options.1, align 8
  %4 = load ptr, ptr %filters, align 8
  %arrayidx.2 = getelementptr inbounds i8, ptr %4, i64 32
  store i64 -1, ptr %arrayidx.2, align 8
  %5 = load ptr, ptr %filters, align 8
  %options.2 = getelementptr inbounds i8, ptr %5, i64 40
  store ptr null, ptr %options.2, align 8
  %6 = load ptr, ptr %filters, align 8
  %arrayidx.3 = getelementptr inbounds i8, ptr %6, i64 48
  store i64 -1, ptr %arrayidx.3, align 8
  %7 = load ptr, ptr %filters, align 8
  %options.3 = getelementptr inbounds i8, ptr %7, i64 56
  store ptr null, ptr %options.3, align 8
  %8 = load ptr, ptr %filters, align 8
  %arrayidx.4 = getelementptr inbounds i8, ptr %8, i64 64
  store i64 -1, ptr %arrayidx.4, align 8
  %9 = load ptr, ptr %filters, align 8
  %options.4 = getelementptr inbounds i8, ptr %9, i64 72
  store ptr null, ptr %options.4, align 8
  store i32 0, ptr %block, align 8
  %10 = load i8, ptr %in, align 1
  %conv = zext i8 %10 to i32
  %add = shl nuw nsw i32 %conv, 2
  %mul = add nuw nsw i32 %add, 4
  %header_size = getelementptr inbounds i8, ptr %block, i64 4
  %11 = load i32, ptr %header_size, align 4
  %cmp4.not = icmp eq i32 %mul, %11
  br i1 %cmp4.not, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %entry
  %check = getelementptr inbounds i8, ptr %block, i64 8
  %12 = load i32, ptr %check, align 8
  %cmp6 = icmp ugt i32 %12, 15
  br i1 %cmp6, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %conv9 = zext nneg i32 %add to i64
  %call = tail call i32 @lzma_crc32(ptr noundef nonnull %in, i64 noundef %conv9, i32 noundef 0) #3
  %add.ptr = getelementptr inbounds i8, ptr %in, i64 %conv9
  %13 = load i32, ptr %add.ptr, align 1
  %cmp11.not = icmp eq i32 %call, %13
  br i1 %cmp11.not, label %if.end14, label %return

if.end14:                                         ; preds = %if.end
  %arrayidx15 = getelementptr inbounds i8, ptr %in, i64 1
  %14 = load i8, ptr %arrayidx15, align 1
  %15 = and i8 %14, 60
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %if.end18, label %return

if.end18:                                         ; preds = %if.end14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %in_pos) #3
  store i64 2, ptr %in_pos, align 8
  %16 = and i8 %14, 64
  %tobool22.not = icmp eq i8 %16, 0
  %compressed_size34 = getelementptr inbounds i8, ptr %block, i64 16
  br i1 %tobool22.not, label %if.else, label %do.body

do.body:                                          ; preds = %if.end18
  %call24 = call i32 @lzma_vli_decode(ptr noundef nonnull %compressed_size34, ptr noundef null, ptr noundef nonnull %in, ptr noundef nonnull %in_pos, i64 noundef %conv9) #3
  %cmp25.not = icmp eq i32 %call24, 0
  br i1 %cmp25.not, label %do.end, label %cleanup92

do.end:                                           ; preds = %do.body
  %call29 = call i64 @lzma_block_unpadded_size(ptr noundef nonnull %block) #3
  %cmp30 = icmp eq i64 %call29, 0
  br i1 %cmp30, label %cleanup92, label %if.end35

if.else:                                          ; preds = %if.end18
  store i64 -1, ptr %compressed_size34, align 8
  br label %if.end35

if.end35:                                         ; preds = %do.end, %if.else
  %17 = load i8, ptr %arrayidx15, align 1
  %tobool39.not = icmp sgt i8 %17, -1
  %uncompressed_size54 = getelementptr inbounds i8, ptr %block, i64 24
  br i1 %tobool39.not, label %if.else53, label %do.body41

do.body41:                                        ; preds = %if.end35
  %call43 = call i32 @lzma_vli_decode(ptr noundef nonnull %uncompressed_size54, ptr noundef null, ptr noundef nonnull %in, ptr noundef nonnull %in_pos, i64 noundef %conv9) #3
  %cmp44.not = icmp eq i32 %call43, 0
  br i1 %cmp44.not, label %if.end55, label %cleanup92

if.else53:                                        ; preds = %if.end35
  store i64 -1, ptr %uncompressed_size54, align 8
  br label %if.end55

if.end55:                                         ; preds = %do.body41, %if.else53
  %18 = load i8, ptr %arrayidx15, align 1
  %19 = and i8 %18, 3
  %narrow = add nuw nsw i8 %19, 1
  %conv60 = zext nneg i8 %narrow to i64
  br label %for.body66

for.cond62:                                       ; preds = %for.body66
  %inc78 = add nuw nsw i64 %i61.0143, 1
  %exitcond.not = icmp eq i64 %inc78, %conv60
  br i1 %exitcond.not, label %while.cond.preheader, label %for.body66

while.cond.preheader:                             ; preds = %for.cond62
  %in_pos.promoted = load i64, ptr %in_pos, align 8
  br label %while.cond

for.body66:                                       ; preds = %if.end55, %for.cond62
  %i61.0143 = phi i64 [ 0, %if.end55 ], [ %inc78, %for.cond62 ]
  %20 = load ptr, ptr %filters, align 8
  %arrayidx68 = getelementptr inbounds %struct.lzma_filter, ptr %20, i64 %i61.0143
  %call69 = call i32 @lzma_filter_flags_decode(ptr noundef %arrayidx68, ptr noundef %allocator, ptr noundef nonnull %in, ptr noundef nonnull %in_pos, i64 noundef %conv9) #3
  %cmp70.not = icmp eq i32 %call69, 0
  br i1 %cmp70.not, label %for.cond62, label %cleanup79.thread

cleanup79.thread:                                 ; preds = %for.body66
  %21 = load ptr, ptr %filters, align 8
  %options.i = getelementptr inbounds i8, ptr %21, i64 8
  %22 = load ptr, ptr %options.i, align 8
  call void @lzma_free(ptr noundef %22, ptr noundef %allocator) #3
  %23 = load ptr, ptr %filters, align 8
  store i64 -1, ptr %23, align 8
  %24 = load ptr, ptr %filters, align 8
  %options5.i = getelementptr inbounds i8, ptr %24, i64 8
  store ptr null, ptr %options5.i, align 8
  %25 = load ptr, ptr %filters, align 8
  %options.1.i = getelementptr inbounds i8, ptr %25, i64 24
  %26 = load ptr, ptr %options.1.i, align 8
  call void @lzma_free(ptr noundef %26, ptr noundef %allocator) #3
  %27 = load ptr, ptr %filters, align 8
  %arrayidx2.1.i = getelementptr inbounds i8, ptr %27, i64 16
  store i64 -1, ptr %arrayidx2.1.i, align 8
  %28 = load ptr, ptr %filters, align 8
  %options5.1.i = getelementptr inbounds i8, ptr %28, i64 24
  store ptr null, ptr %options5.1.i, align 8
  %29 = load ptr, ptr %filters, align 8
  %options.2.i = getelementptr inbounds i8, ptr %29, i64 40
  %30 = load ptr, ptr %options.2.i, align 8
  call void @lzma_free(ptr noundef %30, ptr noundef %allocator) #3
  %31 = load ptr, ptr %filters, align 8
  %arrayidx2.2.i = getelementptr inbounds i8, ptr %31, i64 32
  store i64 -1, ptr %arrayidx2.2.i, align 8
  %32 = load ptr, ptr %filters, align 8
  %options5.2.i = getelementptr inbounds i8, ptr %32, i64 40
  store ptr null, ptr %options5.2.i, align 8
  %33 = load ptr, ptr %filters, align 8
  %options.3.i = getelementptr inbounds i8, ptr %33, i64 56
  %34 = load ptr, ptr %options.3.i, align 8
  call void @lzma_free(ptr noundef %34, ptr noundef %allocator) #3
  %35 = load ptr, ptr %filters, align 8
  %arrayidx2.3.i = getelementptr inbounds i8, ptr %35, i64 48
  store i64 -1, ptr %arrayidx2.3.i, align 8
  %36 = load ptr, ptr %filters, align 8
  %options5.3.i = getelementptr inbounds i8, ptr %36, i64 56
  store ptr null, ptr %options5.3.i, align 8
  br label %cleanup92

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %inc84144 = phi i64 [ %in_pos.promoted, %while.cond.preheader ], [ %inc84, %while.body ]
  %cmp82 = icmp ult i64 %inc84144, %conv9
  br i1 %cmp82, label %while.body, label %cleanup92

while.body:                                       ; preds = %while.cond
  %inc84 = add nuw nsw i64 %inc84144, 1
  store i64 %inc84, ptr %in_pos, align 8
  %arrayidx85 = getelementptr inbounds i8, ptr %in, i64 %inc84144
  %37 = load i8, ptr %arrayidx85, align 1
  %cmp87.not = icmp eq i8 %37, 0
  br i1 %cmp87.not, label %while.cond, label %if.then89

if.then89:                                        ; preds = %while.body
  call fastcc void @free_properties(ptr noundef nonnull %block, ptr noundef %allocator)
  br label %cleanup92

cleanup92:                                        ; preds = %while.cond, %cleanup79.thread, %if.then89, %do.end, %do.body, %do.body41
  %retval.8 = phi i32 [ %call43, %do.body41 ], [ %call24, %do.body ], [ 9, %do.end ], [ 8, %if.then89 ], [ %call69, %cleanup79.thread ], [ 0, %while.cond ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in_pos) #3
  br label %return

return:                                           ; preds = %cleanup92, %if.end, %if.end14, %entry, %lor.lhs.false
  %retval.10 = phi i32 [ 11, %lor.lhs.false ], [ 11, %entry ], [ %retval.8, %cleanup92 ], [ 9, %if.end ], [ 8, %if.end14 ]
  ret i32 %retval.10
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @lzma_crc32(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lzma_vli_decode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @lzma_block_unpadded_size(ptr noundef) local_unnamed_addr #2

declare i32 @lzma_filter_flags_decode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @free_properties(ptr nocapture noundef readonly %block, ptr noundef %allocator) unnamed_addr #0 {
entry:
  %filters = getelementptr inbounds i8, ptr %block, i64 32
  %0 = load ptr, ptr %filters, align 8
  %options = getelementptr inbounds i8, ptr %0, i64 8
  %1 = load ptr, ptr %options, align 8
  tail call void @lzma_free(ptr noundef %1, ptr noundef %allocator) #3
  %2 = load ptr, ptr %filters, align 8
  store i64 -1, ptr %2, align 8
  %3 = load ptr, ptr %filters, align 8
  %options5 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr null, ptr %options5, align 8
  %4 = load ptr, ptr %filters, align 8
  %options.1 = getelementptr inbounds i8, ptr %4, i64 24
  %5 = load ptr, ptr %options.1, align 8
  tail call void @lzma_free(ptr noundef %5, ptr noundef %allocator) #3
  %6 = load ptr, ptr %filters, align 8
  %arrayidx2.1 = getelementptr inbounds i8, ptr %6, i64 16
  store i64 -1, ptr %arrayidx2.1, align 8
  %7 = load ptr, ptr %filters, align 8
  %options5.1 = getelementptr inbounds i8, ptr %7, i64 24
  store ptr null, ptr %options5.1, align 8
  %8 = load ptr, ptr %filters, align 8
  %options.2 = getelementptr inbounds i8, ptr %8, i64 40
  %9 = load ptr, ptr %options.2, align 8
  tail call void @lzma_free(ptr noundef %9, ptr noundef %allocator) #3
  %10 = load ptr, ptr %filters, align 8
  %arrayidx2.2 = getelementptr inbounds i8, ptr %10, i64 32
  store i64 -1, ptr %arrayidx2.2, align 8
  %11 = load ptr, ptr %filters, align 8
  %options5.2 = getelementptr inbounds i8, ptr %11, i64 40
  store ptr null, ptr %options5.2, align 8
  %12 = load ptr, ptr %filters, align 8
  %options.3 = getelementptr inbounds i8, ptr %12, i64 56
  %13 = load ptr, ptr %options.3, align 8
  tail call void @lzma_free(ptr noundef %13, ptr noundef %allocator) #3
  %14 = load ptr, ptr %filters, align 8
  %arrayidx2.3 = getelementptr inbounds i8, ptr %14, i64 48
  store i64 -1, ptr %arrayidx2.3, align 8
  %15 = load ptr, ptr %filters, align 8
  %options5.3 = getelementptr inbounds i8, ptr %15, i64 56
  store ptr null, ptr %options5.3, align 8
  ret void
}

declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
