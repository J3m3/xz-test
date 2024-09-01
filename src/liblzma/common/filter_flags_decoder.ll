; ModuleID = 'liblzma/common/filter_flags_decoder.c'
source_filename = "liblzma/common/filter_flags_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_filter_flags_decode(ptr noundef %filter, ptr noundef %allocator, ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size) local_unnamed_addr #0 {
entry:
  %props_size = alloca i64, align 8
  %options = getelementptr inbounds i8, ptr %filter, i64 8
  store ptr null, ptr %options, align 8
  %call = tail call i32 @lzma_vli_decode(ptr noundef %filter, ptr noundef null, ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size) #3
  %cmp.not.not = icmp eq i32 %call, 0
  br i1 %cmp.not.not, label %do.end, label %return

do.end:                                           ; preds = %entry
  %0 = load i64, ptr %filter, align 8
  %cmp2 = icmp ugt i64 %0, 4611686018427387903
  br i1 %cmp2, label %return, label %if.end4

if.end4:                                          ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %props_size) #3
  %call7 = call i32 @lzma_vli_decode(ptr noundef nonnull %props_size, ptr noundef null, ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size) #3
  %cmp8.not = icmp eq i32 %call7, 0
  br i1 %cmp8.not, label %do.end14, label %cleanup20

do.end14:                                         ; preds = %if.end4
  %1 = load i64, ptr %in_pos, align 8
  %sub = sub i64 %in_size, %1
  %2 = load i64, ptr %props_size, align 8
  %cmp15 = icmp ult i64 %sub, %2
  br i1 %cmp15, label %cleanup20, label %if.end17

if.end17:                                         ; preds = %do.end14
  %add.ptr = getelementptr inbounds i8, ptr %in, i64 %1
  %call18 = call i32 @lzma_properties_decode(ptr noundef nonnull %filter, ptr noundef %allocator, ptr noundef %add.ptr, i64 noundef %2) #3
  %3 = load i64, ptr %props_size, align 8
  %4 = load i64, ptr %in_pos, align 8
  %add = add i64 %4, %3
  store i64 %add, ptr %in_pos, align 8
  br label %cleanup20

cleanup20:                                        ; preds = %do.end14, %if.end4, %if.end17
  %retval.2 = phi i32 [ %call18, %if.end17 ], [ %call7, %if.end4 ], [ 9, %do.end14 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %props_size) #3
  br label %return

return:                                           ; preds = %entry, %do.end, %cleanup20
  %retval.3 = phi i32 [ %call, %entry ], [ %retval.2, %cleanup20 ], [ 9, %do.end ]
  ret i32 %retval.3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @lzma_vli_decode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @lzma_properties_decode(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

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
