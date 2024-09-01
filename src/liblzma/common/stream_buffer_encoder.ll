; ModuleID = 'liblzma/common/stream_buffer_encoder.c'
source_filename = "liblzma/common/stream_buffer_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_stream_flags = type { i32, i64, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.lzma_block = type { i32, i32, i32, i64, i64, ptr, [64 x i8], ptr, ptr, ptr, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }

; Function Attrs: nounwind uwtable
define dso_local range(i64 49, 48) i64 @lzma_stream_buffer_bound(i64 noundef %uncompressed_size) local_unnamed_addr #0 {
entry:
  %call = tail call i64 @lzma_block_buffer_bound(i64 noundef %uncompressed_size) #4
  %cmp = icmp eq i64 %call, 0
  %cmp1 = icmp sgt i64 %call, 9223372036854775759
  %or.cond = or i1 %cmp, %cmp1
  %add = add i64 %call, 48
  %retval.0 = select i1 %or.cond, i64 0, i64 %add
  ret i64 %retval.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i64 @lzma_block_buffer_bound(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_stream_buffer_encode(ptr noundef %filters, i32 noundef %check, ptr noundef %allocator, ptr noundef %in, i64 noundef %in_size, ptr noundef %out, ptr noundef %out_pos_ptr, i64 noundef %out_size) local_unnamed_addr #0 {
entry:
  %out_pos = alloca i64, align 8
  %stream_flags = alloca %struct.lzma_stream_flags, align 8
  %block = alloca %struct.lzma_block, align 8
  %cmp = icmp eq ptr %filters, null
  %cmp1 = icmp ugt i32 %check, 15
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %return, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %cmp3 = icmp eq ptr %in, null
  %cmp4 = icmp ne i64 %in_size, 0
  %or.cond79 = and i1 %cmp3, %cmp4
  %cmp6 = icmp eq ptr %out, null
  %or.cond80 = or i1 %or.cond79, %cmp6
  %cmp8 = icmp eq ptr %out_pos_ptr, null
  %or.cond81 = or i1 %or.cond80, %cmp8
  br i1 %or.cond81, label %return, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false2
  %0 = load i64, ptr %out_pos_ptr, align 8
  %cmp10 = icmp ugt i64 %0, %out_size
  br i1 %cmp10, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false9
  %call = tail call zeroext i8 @lzma_check_is_supported(i32 noundef %check) #4
  %tobool.not = icmp eq i8 %call, 0
  br i1 %tobool.not, label %return, label %if.end12

if.end12:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_pos) #4
  %1 = load i64, ptr %out_pos_ptr, align 8
  %sub = sub i64 %out_size, %1
  %cmp13 = icmp ult i64 %sub, 25
  br i1 %cmp13, label %cleanup77, label %if.end15

if.end15:                                         ; preds = %if.end12
  %sub16 = add i64 %out_size, -12
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %stream_flags) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %stream_flags, i8 0, i64 56, i1 false)
  %check17 = getelementptr inbounds i8, ptr %stream_flags, i64 16
  store i32 %check, ptr %check17, align 8
  %add.ptr = getelementptr inbounds i8, ptr %out, i64 %1
  %call18 = call i32 @lzma_stream_header_encode(ptr noundef nonnull %stream_flags, ptr noundef %add.ptr) #4
  %cmp19.not = icmp eq i32 %call18, 0
  br i1 %cmp19.not, label %if.end21, label %cleanup76

if.end21:                                         ; preds = %if.end15
  %add = add i64 %1, 12
  store i64 %add, ptr %out_pos, align 8
  call void @llvm.lifetime.start.p0(i64 208, ptr nonnull %block) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %block, i8 0, i64 208, i1 false)
  %check23 = getelementptr inbounds i8, ptr %block, i64 8
  store i32 %check, ptr %check23, align 8
  %filters24 = getelementptr inbounds i8, ptr %block, i64 32
  store ptr %filters, ptr %filters24, align 8
  %cmp39.not = icmp eq i64 %in_size, 0
  br i1 %cmp39.not, label %if.end45, label %do.body

do.body:                                          ; preds = %if.end21
  %call41 = call i32 @lzma_block_buffer_encode(ptr noundef nonnull %block, ptr noundef %allocator, ptr noundef %in, i64 noundef %in_size, ptr noundef nonnull %out, ptr noundef nonnull %out_pos, i64 noundef %sub16) #4
  %cmp42.not = icmp eq i32 %call41, 0
  br i1 %cmp42.not, label %if.end45.thread, label %cleanup75

if.end45:                                         ; preds = %if.end21
  %call46 = call ptr @lzma_index_init(ptr noundef %allocator) #4
  %cmp47 = icmp eq ptr %call46, null
  br i1 %cmp47, label %cleanup75, label %cleanup66

if.end45.thread:                                  ; preds = %do.body
  %call46113 = call ptr @lzma_index_init(ptr noundef %allocator) #4
  %cmp47114 = icmp eq ptr %call46113, null
  br i1 %cmp47114, label %cleanup75, label %if.end55

if.end55:                                         ; preds = %if.end45.thread
  %call52 = call i64 @lzma_block_unpadded_size(ptr noundef nonnull %block) #4
  %uncompressed_size53 = getelementptr inbounds i8, ptr %block, i64 24
  %2 = load i64, ptr %uncompressed_size53, align 8
  %call54 = call i32 @lzma_index_append(ptr noundef nonnull %call46113, ptr noundef %allocator, i64 noundef %call52, i64 noundef %2) #4
  %cmp56 = icmp eq i32 %call54, 0
  br i1 %cmp56, label %cleanup66, label %cleanup66.thread133

cleanup66.thread133:                              ; preds = %if.end55
  call void @lzma_index_end(ptr noundef nonnull %call46113, ptr noundef %allocator) #4
  br label %cleanup75

cleanup66:                                        ; preds = %if.end45, %if.end55
  %call46116120130 = phi ptr [ %call46113, %if.end55 ], [ %call46, %if.end45 ]
  %call58 = call i32 @lzma_index_buffer_encode(ptr noundef nonnull %call46116120130, ptr noundef nonnull %out, ptr noundef nonnull %out_pos, i64 noundef %sub16) #4
  %call59 = call i64 @lzma_index_size(ptr noundef nonnull %call46116120130) #4
  %backward_size60 = getelementptr inbounds i8, ptr %stream_flags, i64 8
  store i64 %call59, ptr %backward_size60, align 8
  call void @lzma_index_end(ptr noundef nonnull %call46116120130, ptr noundef %allocator) #4
  %cmp62.not = icmp eq i32 %call58, 0
  br i1 %cmp62.not, label %cleanup.cont68, label %cleanup75

cleanup.cont68:                                   ; preds = %cleanup66
  %3 = load i64, ptr %out_pos, align 8
  %add.ptr69 = getelementptr inbounds i8, ptr %out, i64 %3
  %call70 = call i32 @lzma_stream_footer_encode(ptr noundef nonnull %stream_flags, ptr noundef %add.ptr69) #4
  %cmp71.not = icmp eq i32 %call70, 0
  br i1 %cmp71.not, label %if.end73, label %cleanup75

if.end73:                                         ; preds = %cleanup.cont68
  %4 = load i64, ptr %out_pos, align 8
  %add74 = add i64 %4, 12
  store i64 %add74, ptr %out_pos_ptr, align 8
  br label %cleanup75

cleanup75:                                        ; preds = %if.end45.thread, %if.end45, %cleanup66.thread133, %cleanup.cont68, %do.body, %cleanup66, %if.end73
  %retval.4 = phi i32 [ 0, %if.end73 ], [ %call58, %cleanup66 ], [ %call41, %do.body ], [ 11, %cleanup.cont68 ], [ %call54, %cleanup66.thread133 ], [ 5, %if.end45 ], [ 5, %if.end45.thread ]
  call void @llvm.lifetime.end.p0(i64 208, ptr nonnull %block) #4
  br label %cleanup76

cleanup76:                                        ; preds = %if.end15, %cleanup75
  %retval.5 = phi i32 [ %retval.4, %cleanup75 ], [ 11, %if.end15 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %stream_flags) #4
  br label %cleanup77

cleanup77:                                        ; preds = %if.end12, %cleanup76
  %retval.6 = phi i32 [ %retval.5, %cleanup76 ], [ 10, %if.end12 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_pos) #4
  br label %return

return:                                           ; preds = %if.end, %entry, %lor.lhs.false9, %lor.lhs.false2, %cleanup77
  %retval.7 = phi i32 [ %retval.6, %cleanup77 ], [ 11, %lor.lhs.false2 ], [ 11, %lor.lhs.false9 ], [ 11, %entry ], [ 3, %if.end ]
  ret i32 %retval.7
}

declare zeroext i8 @lzma_check_is_supported(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare i32 @lzma_stream_header_encode(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lzma_block_buffer_encode(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @lzma_index_init(ptr noundef) local_unnamed_addr #2

declare i32 @lzma_index_append(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @lzma_block_unpadded_size(ptr noundef) local_unnamed_addr #2

declare i32 @lzma_index_buffer_encode(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @lzma_index_size(ptr noundef) local_unnamed_addr #2

declare void @lzma_index_end(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lzma_stream_footer_encode(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
