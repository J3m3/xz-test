; ModuleID = 'xz/hardware.c'
source_filename = "xz/hardware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@threadlimit = internal unnamed_addr global i32 0, align 4
@total_ram = internal unnamed_addr global i1 false, align 8
@memlimit_compress = internal unnamed_addr global i64 0, align 8
@memlimit_decompress = internal unnamed_addr global i64 0, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @hardware_threadlimit_set(i32 noundef %new_threadlimit) local_unnamed_addr #0 {
entry:
  %.new_threadlimit = tail call i32 @llvm.umax.i32(i32 %new_threadlimit, i32 1)
  store i32 %.new_threadlimit, ptr @threadlimit, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @hardware_threadlimit_get() local_unnamed_addr #1 {
entry:
  %0 = load i32, ptr @threadlimit, align 4
  ret i32 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @hardware_memlimit_set(i64 noundef %new_memlimit, i1 noundef zeroext %set_compress, i1 noundef zeroext %set_decompress, i1 noundef zeroext %is_percentage) local_unnamed_addr #2 {
entry:
  br i1 %is_percentage, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %conv3 = and i64 %new_memlimit, 4294967295
  %.b = load i1, ptr @total_ram, align 8
  %0 = select i1 %.b, i64 943718400, i64 0
  %mul = mul nuw nsw i64 %0, %conv3
  %div = udiv i64 %mul, 100
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %new_memlimit.addr.0 = phi i64 [ %div, %if.then ], [ %new_memlimit, %entry ]
  br i1 %set_compress, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i64 %new_memlimit.addr.0, ptr @memlimit_compress, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  br i1 %set_decompress, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  store i64 %new_memlimit.addr.0, ptr @memlimit_decompress, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i64 @hardware_memlimit_get(i32 noundef %mode) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq i32 %mode, 0
  %0 = load i64, ptr @memlimit_compress, align 8
  %1 = load i64, ptr @memlimit_decompress, align 8
  %cond = select i1 %cmp, i64 %0, i64 %1
  %cmp1.not = icmp eq i64 %cond, 0
  %cond5 = select i1 %cmp1.not, i64 -1, i64 %cond
  ret i64 %cond5
}

; Function Attrs: nounwind uwtable
define dso_local void @hardware_memlimit_show() local_unnamed_addr #3 {
entry:
  %call = tail call i32 @message_verbosity_get() #6
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  tail call void @tuklib_exit(i32 noundef 0, i32 noundef 1, i32 noundef %conv) #6
  ret void
}

declare void @tuklib_exit(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @message_verbosity_get() local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @hardware_init() local_unnamed_addr #0 {
entry:
  store i1 true, ptr @total_ram, align 8
  store i64 0, ptr @memlimit_compress, align 8
  store i64 0, ptr @memlimit_decompress, align 8
  store i32 1, ptr @threadlimit, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
