; ModuleID = 'liblzma/common/block_buffer_decoder.c'
source_filename = "liblzma/common/block_buffer_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_block_buffer_decode(ptr noundef %block, ptr noundef %allocator, ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size, ptr noundef %out, ptr noundef %out_pos, i64 noundef %out_size) local_unnamed_addr #0 {
entry:
  %block_decoder = alloca %struct.lzma_next_coder_s, align 8
  %cmp = icmp eq ptr %in_pos, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %cmp1 = icmp ne ptr %in, null
  %.pre = load i64, ptr %in_pos, align 8
  %cmp2.not = icmp eq i64 %.pre, %in_size
  %or.cond51 = select i1 %cmp1, i1 true, i1 %cmp2.not
  br i1 %or.cond51, label %lor.lhs.false3, label %return

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %cmp4 = icmp ugt i64 %.pre, %in_size
  %cmp6 = icmp eq ptr %out_pos, null
  %or.cond = or i1 %cmp6, %cmp4
  br i1 %or.cond, label %return, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false3
  %cmp8 = icmp eq ptr %out, null
  %.pre50 = load i64, ptr %out_pos, align 8
  %cmp10.not = icmp ne i64 %.pre50, %out_size
  %or.cond52.not54 = select i1 %cmp8, i1 %cmp10.not, i1 false
  %cmp12 = icmp ugt i64 %.pre50, %out_size
  %or.cond53 = select i1 %or.cond52.not54, i1 true, i1 %cmp12
  br i1 %or.cond53, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %block_decoder) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %block_decoder, i8 0, i64 64, i1 false)
  %0 = getelementptr inbounds i8, ptr %block_decoder, i64 8
  store i64 -1, ptr %0, align 8
  %call = call i32 @lzma_block_decoder_init(ptr noundef nonnull %block_decoder, ptr noundef %allocator, ptr noundef %block) #4
  %cmp13 = icmp eq i32 %call, 0
  br i1 %cmp13, label %if.then14, label %if.end26

if.then14:                                        ; preds = %if.end
  %1 = load i64, ptr %in_pos, align 8
  %2 = load i64, ptr %out_pos, align 8
  %code = getelementptr inbounds i8, ptr %block_decoder, i64 24
  %3 = load ptr, ptr %code, align 8
  %4 = load ptr, ptr %block_decoder, align 8
  %call15 = call i32 %3(ptr noundef %4, ptr noundef %allocator, ptr noundef %in, ptr noundef nonnull %in_pos, i64 noundef %in_size, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %out_size, i32 noundef 3) #4
  switch i32 %call15, label %if.end24 [
    i32 1, label %if.end26
    i32 0, label %if.then19
  ]

if.then19:                                        ; preds = %if.then14
  %5 = load i64, ptr %in_pos, align 8
  %cmp20 = icmp eq i64 %5, %in_size
  %. = select i1 %cmp20, i32 9, i32 10
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %if.then14
  %ret.0 = phi i32 [ %call15, %if.then14 ], [ %., %if.then19 ]
  store i64 %1, ptr %in_pos, align 8
  store i64 %2, ptr %out_pos, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.end24, %if.then14, %if.end
  %ret.2 = phi i32 [ %call, %if.end ], [ %ret.0, %if.end24 ], [ 0, %if.then14 ]
  call void @lzma_next_end(ptr noundef nonnull %block_decoder, ptr noundef %allocator) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %block_decoder) #4
  br label %return

return:                                           ; preds = %lor.lhs.false7, %lor.lhs.false, %entry, %lor.lhs.false3, %if.end26
  %retval.0 = phi i32 [ %ret.2, %if.end26 ], [ 11, %lor.lhs.false3 ], [ 11, %entry ], [ 11, %lor.lhs.false ], [ 11, %lor.lhs.false7 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare i32 @lzma_block_decoder_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
