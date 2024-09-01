; ModuleID = 'liblzma/common/vli_encoder.c'
source_filename = "liblzma/common/vli_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 12) i32 @lzma_vli_encode(i64 noundef %vli, ptr noundef %vli_pos, ptr noalias nocapture noundef writeonly %out, ptr noalias nocapture noundef %out_pos, i64 noundef %out_size) local_unnamed_addr #0 {
entry:
  %vli_pos_internal = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vli_pos_internal) #2
  store i64 0, ptr %vli_pos_internal, align 8
  %cmp = icmp eq ptr %vli_pos, null
  %0 = load i64, ptr %out_pos, align 8
  %cmp1.not = icmp ult i64 %0, %out_size
  %vli_pos_internal.vli_pos = select i1 %cmp, ptr %vli_pos_internal, ptr %vli_pos
  %. = select i1 %cmp, i32 11, i32 10
  br i1 %cmp1.not, label %if.end6, label %cleanup

if.end6:                                          ; preds = %entry
  %1 = load i64, ptr %vli_pos_internal.vli_pos, align 8
  %cmp7 = icmp ugt i64 %1, 8
  %cmp8 = icmp slt i64 %vli, 0
  %or.cond = or i1 %cmp8, %cmp7
  br i1 %or.cond, label %cleanup, label %if.end10

if.end10:                                         ; preds = %if.end6
  %mul = mul nuw nsw i64 %1, 7
  %shr = lshr i64 %vli, %mul
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end10
  %2 = phi i64 [ %1, %if.end10 ], [ %inc, %while.body ]
  %3 = phi i64 [ %0, %if.end10 ], [ %inc15, %while.body ]
  %vli.addr.0 = phi i64 [ %shr, %if.end10 ], [ %shr14, %while.body ]
  %cmp11 = icmp ugt i64 %vli.addr.0, 127
  br i1 %cmp11, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %inc = add i64 %2, 1
  store i64 %inc, ptr %vli_pos_internal.vli_pos, align 8
  %conv = trunc i64 %vli.addr.0 to i8
  %or = or i8 %conv, -128
  %arrayidx = getelementptr inbounds i8, ptr %out, i64 %3
  store i8 %or, ptr %arrayidx, align 1
  %shr14 = lshr i64 %vli.addr.0, 7
  %inc15 = add i64 %3, 1
  store i64 %inc15, ptr %out_pos, align 8
  %cmp16 = icmp eq i64 %inc15, %out_size
  br i1 %cmp16, label %if.then18, label %while.cond

if.then18:                                        ; preds = %while.body
  %cmp19 = icmp eq ptr %vli_pos_internal.vli_pos, %vli_pos_internal
  %cond = select i1 %cmp19, i32 11, i32 0
  br label %cleanup

while.end:                                        ; preds = %while.cond
  %conv22 = trunc nuw nsw i64 %vli.addr.0 to i8
  %arrayidx23 = getelementptr inbounds i8, ptr %out, i64 %3
  store i8 %conv22, ptr %arrayidx23, align 1
  %inc24 = add i64 %3, 1
  store i64 %inc24, ptr %out_pos, align 8
  %inc25 = add i64 %2, 1
  store i64 %inc25, ptr %vli_pos_internal.vli_pos, align 8
  %cmp26 = icmp ne ptr %vli_pos_internal.vli_pos, %vli_pos_internal
  %cond28 = zext i1 %cmp26 to i32
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end6, %while.end, %if.then18
  %retval.0 = phi i32 [ %cond, %if.then18 ], [ %cond28, %while.end ], [ 11, %if.end6 ], [ %., %entry ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vli_pos_internal) #2
  ret i32 %retval.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
