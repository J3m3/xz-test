; ModuleID = 'liblzma/common/filter_flags_encoder.c'
source_filename = "liblzma/common/filter_flags_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_filter_flags_size(ptr noundef %size, ptr noundef %filter) local_unnamed_addr #0 {
entry:
  %0 = load i64, ptr %filter, align 8
  %cmp = icmp ugt i64 %0, 4611686018427387903
  br i1 %cmp, label %return, label %do.body

do.body:                                          ; preds = %entry
  %call = tail call i32 @lzma_properties_size(ptr noundef %size, ptr noundef nonnull %filter) #3
  %cmp1.not.not = icmp eq i32 %call, 0
  br i1 %cmp1.not.not, label %do.end, label %return

do.end:                                           ; preds = %do.body
  %1 = load i64, ptr %filter, align 8
  %call5 = tail call i32 @lzma_vli_size(i64 noundef %1) #3
  %2 = load i32, ptr %size, align 4
  %conv = zext i32 %2 to i64
  %call6 = tail call i32 @lzma_vli_size(i64 noundef %conv) #3
  %add = add i32 %call6, %call5
  %3 = load i32, ptr %size, align 4
  %add7 = add i32 %add, %3
  store i32 %add7, ptr %size, align 4
  br label %return

return:                                           ; preds = %do.body, %entry, %do.end
  %retval.1 = phi i32 [ %call, %do.body ], [ 0, %do.end ], [ 11, %entry ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @lzma_properties_size(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @lzma_vli_size(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_filter_flags_encode(ptr noundef %filter, ptr noundef %out, ptr noundef %out_pos, i64 noundef %out_size) local_unnamed_addr #0 {
entry:
  %props_size = alloca i32, align 4
  %0 = load i64, ptr %filter, align 8
  %cmp = icmp ugt i64 %0, 4611686018427387903
  br i1 %cmp, label %return, label %do.body

do.body:                                          ; preds = %entry
  %call = tail call i32 @lzma_vli_encode(i64 noundef %0, ptr noundef null, ptr noundef %out, ptr noundef %out_pos, i64 noundef %out_size) #3
  %cmp2.not.not = icmp eq i32 %call, 0
  br i1 %cmp2.not.not, label %do.end, label %return

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %props_size) #3
  %call7 = call i32 @lzma_properties_size(ptr noundef nonnull %props_size, ptr noundef nonnull %filter) #3
  %cmp8.not = icmp eq i32 %call7, 0
  br i1 %cmp8.not, label %do.body15, label %cleanup45

do.body15:                                        ; preds = %do.end
  %1 = load i32, ptr %props_size, align 4
  %conv = zext i32 %1 to i64
  %call17 = call i32 @lzma_vli_encode(i64 noundef %conv, ptr noundef null, ptr noundef %out, ptr noundef %out_pos, i64 noundef %out_size) #3
  %cmp18.not = icmp eq i32 %call17, 0
  br i1 %cmp18.not, label %do.end26, label %cleanup45

do.end26:                                         ; preds = %do.body15
  %2 = load i64, ptr %out_pos, align 8
  %sub = sub i64 %out_size, %2
  %3 = load i32, ptr %props_size, align 4
  %conv27 = zext i32 %3 to i64
  %cmp28 = icmp ult i64 %sub, %conv27
  br i1 %cmp28, label %cleanup45, label %do.body32

do.body32:                                        ; preds = %do.end26
  %add.ptr = getelementptr inbounds i8, ptr %out, i64 %2
  %call34 = call i32 @lzma_properties_encode(ptr noundef nonnull %filter, ptr noundef %add.ptr) #3
  %cmp35.not = icmp eq i32 %call34, 0
  br i1 %cmp35.not, label %do.end43, label %cleanup45

do.end43:                                         ; preds = %do.body32
  %4 = load i32, ptr %props_size, align 4
  %conv44 = zext i32 %4 to i64
  %5 = load i64, ptr %out_pos, align 8
  %add = add i64 %5, %conv44
  store i64 %add, ptr %out_pos, align 8
  br label %cleanup45

cleanup45:                                        ; preds = %do.end26, %do.body32, %do.body15, %do.end, %do.end43
  %retval.4 = phi i32 [ 0, %do.end43 ], [ %call34, %do.body32 ], [ %call17, %do.body15 ], [ %call7, %do.end ], [ 11, %do.end26 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %props_size) #3
  br label %return

return:                                           ; preds = %do.body, %entry, %cleanup45
  %retval.5 = phi i32 [ %call, %do.body ], [ %retval.4, %cleanup45 ], [ 11, %entry ]
  ret i32 %retval.5
}

declare i32 @lzma_vli_encode(i64 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @lzma_properties_encode(ptr noundef, ptr noundef) local_unnamed_addr #2

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
