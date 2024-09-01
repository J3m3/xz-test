; ModuleID = 'liblzma/common/filter_buffer_encoder.c'
source_filename = "liblzma/common/filter_buffer_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_raw_buffer_encode(ptr noundef %filters, ptr noundef %allocator, ptr noundef %in, i64 noundef %in_size, ptr noundef %out, ptr noundef %out_pos, i64 noundef %out_size) local_unnamed_addr #0 {
entry:
  %next = alloca %struct.lzma_next_coder_s, align 8
  %in_pos = alloca i64, align 8
  %cmp = icmp eq ptr %in, null
  %cmp1 = icmp ne i64 %in_size, 0
  %or.cond = and i1 %cmp, %cmp1
  %cmp2 = icmp eq ptr %out, null
  %or.cond21 = or i1 %or.cond, %cmp2
  %cmp4 = icmp eq ptr %out_pos, null
  %or.cond22 = or i1 %or.cond21, %cmp4
  br i1 %or.cond22, label %return, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %entry
  %0 = load i64, ptr %out_pos, align 8
  %cmp6 = icmp ugt i64 %0, %out_size
  br i1 %cmp6, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %next) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %next, i8 0, i64 64, i1 false)
  %1 = getelementptr inbounds i8, ptr %next, i64 8
  store i64 -1, ptr %1, align 8
  %call = call i32 @lzma_raw_encoder_init(ptr noundef nonnull %next, ptr noundef %allocator, ptr noundef %filters) #4
  %cmp7.not = icmp eq i32 %call, 0
  br i1 %cmp7.not, label %do.end, label %cleanup20

do.end:                                           ; preds = %if.end
  %2 = load i64, ptr %out_pos, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %in_pos) #4
  store i64 0, ptr %in_pos, align 8
  %code = getelementptr inbounds i8, ptr %next, i64 24
  %3 = load ptr, ptr %code, align 8
  %4 = load ptr, ptr %next, align 8
  %call10 = call i32 %3(ptr noundef %4, ptr noundef %allocator, ptr noundef %in, ptr noundef nonnull %in_pos, i64 noundef %in_size, ptr noundef nonnull %out, ptr noundef nonnull %out_pos, i64 noundef %out_size, i32 noundef 3) #4
  call void @lzma_next_end(ptr noundef nonnull %next, ptr noundef %allocator) #4
  %cmp11 = icmp eq i32 %call10, 1
  br i1 %cmp11, label %if.end16, label %if.else

if.else:                                          ; preds = %do.end
  %cmp13 = icmp eq i32 %call10, 0
  %spec.store.select = select i1 %cmp13, i32 10, i32 %call10
  store i64 %2, ptr %out_pos, align 8
  br label %if.end16

if.end16:                                         ; preds = %do.end, %if.else
  %ret.0 = phi i32 [ %spec.store.select, %if.else ], [ 0, %do.end ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in_pos) #4
  br label %cleanup20

cleanup20:                                        ; preds = %if.end, %if.end16
  %retval.1 = phi i32 [ %ret.0, %if.end16 ], [ %call, %if.end ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %next) #4
  br label %return

return:                                           ; preds = %lor.lhs.false5, %entry, %cleanup20
  %retval.2 = phi i32 [ %retval.1, %cleanup20 ], [ 11, %entry ], [ 11, %lor.lhs.false5 ]
  ret i32 %retval.2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare i32 @lzma_raw_encoder_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

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
