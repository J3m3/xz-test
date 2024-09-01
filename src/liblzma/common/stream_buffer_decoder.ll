; ModuleID = 'liblzma/common/stream_buffer_decoder.c'
source_filename = "liblzma/common/stream_buffer_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_stream_buffer_decode(ptr noundef %memlimit, i32 noundef %flags, ptr noundef %allocator, ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size, ptr noundef %out, ptr noundef %out_pos, i64 noundef %out_size) local_unnamed_addr #0 {
entry:
  %stream_decoder = alloca %struct.lzma_next_coder_s, align 8
  %memusage = alloca i64, align 8
  %cmp = icmp eq ptr %in_pos, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %cmp1 = icmp ne ptr %in, null
  %.pre = load i64, ptr %in_pos, align 8
  %cmp2.not = icmp eq i64 %.pre, %in_size
  %or.cond63 = select i1 %cmp1, i1 true, i1 %cmp2.not
  br i1 %or.cond63, label %lor.lhs.false3, label %return

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %cmp4 = icmp ugt i64 %.pre, %in_size
  %cmp6 = icmp eq ptr %out_pos, null
  %or.cond = or i1 %cmp6, %cmp4
  br i1 %or.cond, label %return, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false3
  %cmp8 = icmp ne ptr %out, null
  %.pre62 = load i64, ptr %out_pos, align 8
  %cmp10.not = icmp eq i64 %.pre62, %out_size
  %or.cond64 = select i1 %cmp8, i1 true, i1 %cmp10.not
  br i1 %or.cond64, label %lor.lhs.false11, label %return

lor.lhs.false11:                                  ; preds = %lor.lhs.false7
  %cmp12 = icmp ule i64 %.pre62, %out_size
  %and = and i32 %flags, 4
  %tobool.not = icmp eq i32 %and, 0
  %or.cond61 = and i1 %tobool.not, %cmp12
  br i1 %or.cond61, label %if.end14, label %return

if.end14:                                         ; preds = %lor.lhs.false11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %stream_decoder) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %stream_decoder, i8 0, i64 64, i1 false)
  %0 = getelementptr inbounds i8, ptr %stream_decoder, i64 8
  store i64 -1, ptr %0, align 8
  %1 = load i64, ptr %memlimit, align 8
  %call = call i32 @lzma_stream_decoder_init(ptr noundef nonnull %stream_decoder, ptr noundef %allocator, i64 noundef %1, i32 noundef %flags) #4
  %cmp15 = icmp eq i32 %call, 0
  br i1 %cmp15, label %if.then16, label %if.end34

if.then16:                                        ; preds = %if.end14
  %2 = load i64, ptr %in_pos, align 8
  %3 = load i64, ptr %out_pos, align 8
  %code = getelementptr inbounds i8, ptr %stream_decoder, i64 24
  %4 = load ptr, ptr %code, align 8
  %5 = load ptr, ptr %stream_decoder, align 8
  %call17 = call i32 %4(ptr noundef %5, ptr noundef %allocator, ptr noundef %in, ptr noundef nonnull %in_pos, i64 noundef %in_size, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %out_size, i32 noundef 3) #4
  %cmp18 = icmp eq i32 %call17, 1
  br i1 %cmp18, label %if.end34, label %if.else

if.else:                                          ; preds = %if.then16
  store i64 %2, ptr %in_pos, align 8
  store i64 %3, ptr %out_pos, align 8
  switch i32 %call17, label %if.end34 [
    i32 0, label %if.then21
    i32 6, label %if.then28
  ]

if.then21:                                        ; preds = %if.else
  %6 = load i64, ptr %in_pos, align 8
  %cmp22 = icmp eq i64 %6, %in_size
  %. = select i1 %cmp22, i32 9, i32 10
  br label %if.end34

if.then28:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %memusage) #4
  %memconfig = getelementptr inbounds i8, ptr %stream_decoder, i64 48
  %7 = load ptr, ptr %memconfig, align 8
  %8 = load ptr, ptr %stream_decoder, align 8
  %call30 = call i32 %7(ptr noundef %8, ptr noundef nonnull %memlimit, ptr noundef nonnull %memusage, i64 noundef 0) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %memusage) #4
  br label %if.end34

if.end34:                                         ; preds = %if.then28, %if.then16, %if.then21, %if.else, %if.end14
  %ret.1 = phi i32 [ %call, %if.end14 ], [ 6, %if.then28 ], [ 0, %if.then16 ], [ %., %if.then21 ], [ %call17, %if.else ]
  call void @lzma_next_end(ptr noundef nonnull %stream_decoder, ptr noundef %allocator) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %stream_decoder) #4
  br label %return

return:                                           ; preds = %lor.lhs.false7, %lor.lhs.false, %entry, %lor.lhs.false3, %lor.lhs.false11, %if.end34
  %retval.0 = phi i32 [ %ret.1, %if.end34 ], [ 11, %lor.lhs.false11 ], [ 11, %lor.lhs.false3 ], [ 11, %entry ], [ 11, %lor.lhs.false ], [ 11, %lor.lhs.false7 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare i32 @lzma_stream_decoder_init(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

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
