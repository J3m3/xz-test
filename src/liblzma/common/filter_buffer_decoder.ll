; ModuleID = 'liblzma/common/filter_buffer_decoder.c'
source_filename = "liblzma/common/filter_buffer_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_raw_buffer_decode(ptr noundef %filters, ptr noundef %allocator, ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size, ptr noundef %out, ptr noundef %out_pos, i64 noundef %out_size) local_unnamed_addr #0 {
entry:
  %next = alloca %struct.lzma_next_coder_s, align 8
  %tmp = alloca [1 x i8], align 1
  %tmp_pos = alloca i64, align 8
  %cmp = icmp eq ptr %in, null
  %cmp1 = icmp eq ptr %in_pos, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %return, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %0 = load i64, ptr %in_pos, align 8
  %cmp3 = icmp ugt i64 %0, %in_size
  %cmp5 = icmp eq ptr %out, null
  %or.cond39 = or i1 %cmp5, %cmp3
  %cmp7 = icmp eq ptr %out_pos, null
  %or.cond40 = or i1 %cmp7, %or.cond39
  br i1 %or.cond40, label %return, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false2
  %1 = load i64, ptr %out_pos, align 8
  %cmp9 = icmp ugt i64 %1, %out_size
  br i1 %cmp9, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %next) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %next, i8 0, i64 64, i1 false)
  %2 = getelementptr inbounds i8, ptr %next, i64 8
  store i64 -1, ptr %2, align 8
  %call = call i32 @lzma_raw_decoder_init(ptr noundef nonnull %next, ptr noundef %allocator, ptr noundef %filters) #4
  %cmp10.not = icmp eq i32 %call, 0
  br i1 %cmp10.not, label %do.end, label %cleanup38

do.end:                                           ; preds = %if.end
  %3 = load i64, ptr %in_pos, align 8
  %4 = load i64, ptr %out_pos, align 8
  %code = getelementptr inbounds i8, ptr %next, i64 24
  %5 = load ptr, ptr %code, align 8
  %6 = load ptr, ptr %next, align 8
  %call13 = call i32 %5(ptr noundef %6, ptr noundef %allocator, ptr noundef nonnull %in, ptr noundef nonnull %in_pos, i64 noundef %in_size, ptr noundef nonnull %out, ptr noundef nonnull %out_pos, i64 noundef %out_size, i32 noundef 3) #4
  switch i32 %call13, label %if.end33 [
    i32 1, label %if.end34
    i32 0, label %if.then17
  ]

if.then17:                                        ; preds = %do.end
  %7 = load i64, ptr %in_pos, align 8
  %cmp18.not = icmp eq i64 %7, %in_size
  br i1 %cmp18.not, label %if.else20, label %if.end33

if.else20:                                        ; preds = %if.then17
  %8 = load i64, ptr %out_pos, align 8
  %cmp21.not = icmp eq i64 %8, %out_size
  br i1 %cmp21.not, label %if.else23, label %if.end33

if.else23:                                        ; preds = %if.else20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_pos) #4
  store i64 0, ptr %tmp_pos, align 8
  %9 = load ptr, ptr %code, align 8
  %10 = load ptr, ptr %next, align 8
  %call26 = call i32 %9(ptr noundef %10, ptr noundef %allocator, ptr noundef nonnull %in, ptr noundef nonnull %in_pos, i64 noundef %in_size, ptr noundef nonnull %tmp, ptr noundef nonnull %tmp_pos, i64 noundef 1, i32 noundef 3) #4
  %11 = load i64, ptr %tmp_pos, align 8
  %cmp27 = icmp eq i64 %11, 1
  %. = select i1 %cmp27, i32 10, i32 9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_pos) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #4
  br label %if.end33

if.end33:                                         ; preds = %if.else20, %if.then17, %do.end, %if.else23
  %ret.1 = phi i32 [ %., %if.else23 ], [ %call13, %do.end ], [ 10, %if.then17 ], [ 9, %if.else20 ]
  store i64 %3, ptr %in_pos, align 8
  store i64 %4, ptr %out_pos, align 8
  br label %if.end34

if.end34:                                         ; preds = %do.end, %if.end33
  %ret.2 = phi i32 [ %ret.1, %if.end33 ], [ 0, %do.end ]
  call void @lzma_next_end(ptr noundef nonnull %next, ptr noundef %allocator) #4
  br label %cleanup38

cleanup38:                                        ; preds = %if.end, %if.end34
  %retval.1 = phi i32 [ %ret.2, %if.end34 ], [ %call, %if.end ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %next) #4
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false2, %lor.lhs.false8, %cleanup38
  %retval.2 = phi i32 [ %retval.1, %cleanup38 ], [ 11, %lor.lhs.false8 ], [ 11, %lor.lhs.false2 ], [ 11, %entry ]
  ret i32 %retval.2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare i32 @lzma_raw_decoder_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

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
