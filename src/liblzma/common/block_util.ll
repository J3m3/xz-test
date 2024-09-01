; ModuleID = 'liblzma/common/block_util.c'
source_filename = "liblzma/common/block_util.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 12) i32 @lzma_block_compressed_size(ptr noundef %block, i64 noundef %unpadded_size) local_unnamed_addr #0 {
entry:
  %cmp.i = icmp eq ptr %block, null
  br i1 %cmp.i, label %return, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %entry
  %0 = load i32, ptr %block, align 8
  %cmp1.not.i = icmp eq i32 %0, 0
  br i1 %cmp1.not.i, label %lor.lhs.false2.i, label %return

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %header_size.i = getelementptr inbounds i8, ptr %block, i64 4
  %1 = load i32, ptr %header_size.i, align 4
  %2 = add i32 %1, -8
  %or.cond.i = icmp ult i32 %2, 1017
  %and.i = and i32 %1, 3
  %tobool.not.i = icmp eq i32 %and.i, 0
  %or.cond48.i = and i1 %or.cond.i, %tobool.not.i
  br i1 %or.cond48.i, label %lor.lhs.false9.i, label %return

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false2.i
  %compressed_size.i = getelementptr inbounds i8, ptr %block, i64 16
  %3 = load i64, ptr %compressed_size.i, align 8
  %or.cond49.i = icmp slt i64 %3, -1
  %cmp16.i = icmp eq i64 %3, 0
  %or.cond50.i = or i1 %or.cond49.i, %cmp16.i
  br i1 %or.cond50.i, label %return, label %lor.lhs.false17.i

lor.lhs.false17.i:                                ; preds = %lor.lhs.false9.i
  %cmp13.i = icmp eq i64 %3, -1
  %check.i = getelementptr inbounds i8, ptr %block, i64 8
  %4 = load i32, ptr %check.i, align 8
  %cmp18.i = icmp ugt i32 %4, 15
  %brmerge.i = or i1 %cmp13.i, %cmp18.i
  br i1 %brmerge.i, label %lzma_block_unpadded_size.exit, label %if.end22.i

if.end22.i:                                       ; preds = %lor.lhs.false17.i
  %conv.i = zext nneg i32 %1 to i64
  %add.i = add nuw i64 %3, %conv.i
  %call.i = tail call i32 @lzma_check_size(i32 noundef %4) #2
  %conv26.i = zext i32 %call.i to i64
  %add27.i = add nuw i64 %add.i, %conv26.i
  %cmp28.i = icmp ugt i64 %add27.i, 9223372036854775804
  br i1 %cmp28.i, label %return, label %if.end22.i.if.end_crit_edge

if.end22.i.if.end_crit_edge:                      ; preds = %if.end22.i
  %.pre = load i32, ptr %header_size.i, align 4
  %.pre30 = load i32, ptr %check.i, align 8
  br label %if.end

lzma_block_unpadded_size.exit:                    ; preds = %lor.lhs.false17.i
  br i1 %cmp18.i, label %return, label %if.end

if.end:                                           ; preds = %if.end22.i.if.end_crit_edge, %lzma_block_unpadded_size.exit
  %5 = phi i32 [ %.pre30, %if.end22.i.if.end_crit_edge ], [ %4, %lzma_block_unpadded_size.exit ]
  %6 = phi i32 [ %.pre, %if.end22.i.if.end_crit_edge ], [ %1, %lzma_block_unpadded_size.exit ]
  %call1 = tail call i32 @lzma_check_size(i32 noundef %5) #2
  %add = add i32 %call1, %6
  %conv = zext i32 %add to i64
  %cmp2.not = icmp ult i64 %conv, %unpadded_size
  br i1 %cmp2.not, label %if.end5, label %return

if.end5:                                          ; preds = %if.end
  %sub = sub i64 %unpadded_size, %conv
  %7 = load i64, ptr %compressed_size.i, align 8
  %cmp8.not = icmp eq i64 %7, -1
  %cmp11.not = icmp eq i64 %7, %sub
  %or.cond = or i1 %cmp8.not, %cmp11.not
  br i1 %or.cond, label %if.end14, label %return

if.end14:                                         ; preds = %if.end5
  store i64 %sub, ptr %compressed_size.i, align 8
  br label %return

return:                                           ; preds = %if.end22.i, %entry, %lor.lhs.false.i, %lor.lhs.false2.i, %lor.lhs.false9.i, %if.end, %if.end5, %if.end14, %lzma_block_unpadded_size.exit
  %retval.2 = phi i32 [ 11, %lzma_block_unpadded_size.exit ], [ 9, %if.end ], [ 0, %if.end14 ], [ 9, %if.end5 ], [ 11, %lor.lhs.false9.i ], [ 11, %lor.lhs.false2.i ], [ 11, %lor.lhs.false.i ], [ 11, %entry ], [ 11, %if.end22.i ]
  ret i32 %retval.2
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -1, 9223372036854775805) i64 @lzma_block_unpadded_size(ptr noundef readonly %block) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq ptr %block, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load i32, ptr %block, align 8
  %cmp1.not = icmp eq i32 %0, 0
  br i1 %cmp1.not, label %lor.lhs.false2, label %return

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %header_size = getelementptr inbounds i8, ptr %block, i64 4
  %1 = load i32, ptr %header_size, align 4
  %2 = add i32 %1, -8
  %or.cond = icmp ult i32 %2, 1017
  %and = and i32 %1, 3
  %tobool.not = icmp eq i32 %and, 0
  %or.cond48 = and i1 %or.cond, %tobool.not
  br i1 %or.cond48, label %lor.lhs.false9, label %return

lor.lhs.false9:                                   ; preds = %lor.lhs.false2
  %compressed_size = getelementptr inbounds i8, ptr %block, i64 16
  %3 = load i64, ptr %compressed_size, align 8
  %or.cond49 = icmp slt i64 %3, -1
  %cmp16 = icmp eq i64 %3, 0
  %or.cond50 = or i1 %or.cond49, %cmp16
  br i1 %or.cond50, label %return, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false9
  %cmp13 = icmp eq i64 %3, -1
  %check = getelementptr inbounds i8, ptr %block, i64 8
  %4 = load i32, ptr %check, align 8
  %cmp18 = icmp ugt i32 %4, 15
  %brmerge = or i1 %cmp13, %cmp18
  %not.cmp18 = xor i1 %cmp18, true
  %.mux = sext i1 %not.cmp18 to i64
  br i1 %brmerge, label %return, label %if.end22

if.end22:                                         ; preds = %lor.lhs.false17
  %conv = zext nneg i32 %1 to i64
  %add = add nuw i64 %3, %conv
  %call = tail call i32 @lzma_check_size(i32 noundef %4) #2
  %conv26 = zext i32 %call to i64
  %add27 = add nuw i64 %add, %conv26
  %cmp28 = icmp ugt i64 %add27, 9223372036854775804
  %.add27 = select i1 %cmp28, i64 0, i64 %add27
  br label %return

return:                                           ; preds = %lor.lhs.false17, %entry, %lor.lhs.false, %lor.lhs.false2, %lor.lhs.false9, %if.end22
  %retval.1 = phi i64 [ %.add27, %if.end22 ], [ 0, %lor.lhs.false9 ], [ %.mux, %lor.lhs.false17 ], [ 0, %lor.lhs.false2 ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i64 %retval.1
}

declare i32 @lzma_check_size(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i64 -1, 9223372036854775805) i64 @lzma_block_total_size(ptr noundef readonly %block) local_unnamed_addr #0 {
entry:
  %cmp.i = icmp eq ptr %block, null
  br i1 %cmp.i, label %if.end, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %entry
  %0 = load i32, ptr %block, align 8
  %cmp1.not.i = icmp eq i32 %0, 0
  br i1 %cmp1.not.i, label %lor.lhs.false2.i, label %if.end

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %header_size.i = getelementptr inbounds i8, ptr %block, i64 4
  %1 = load i32, ptr %header_size.i, align 4
  %2 = add i32 %1, -8
  %or.cond.i = icmp ult i32 %2, 1017
  %and.i = and i32 %1, 3
  %tobool.not.i = icmp eq i32 %and.i, 0
  %or.cond48.i = and i1 %or.cond.i, %tobool.not.i
  br i1 %or.cond48.i, label %lor.lhs.false9.i, label %if.end

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false2.i
  %compressed_size.i = getelementptr inbounds i8, ptr %block, i64 16
  %3 = load i64, ptr %compressed_size.i, align 8
  %or.cond49.i = icmp slt i64 %3, -1
  %cmp16.i = icmp eq i64 %3, 0
  %or.cond50.i = or i1 %or.cond49.i, %cmp16.i
  br i1 %or.cond50.i, label %if.end, label %lor.lhs.false17.i

lor.lhs.false17.i:                                ; preds = %lor.lhs.false9.i
  %cmp13.i = icmp eq i64 %3, -1
  %check.i = getelementptr inbounds i8, ptr %block, i64 8
  %4 = load i32, ptr %check.i, align 8
  %cmp18.i = icmp ugt i32 %4, 15
  %brmerge.i = or i1 %cmp13.i, %cmp18.i
  br i1 %brmerge.i, label %lzma_block_unpadded_size.exit, label %if.end22.i

if.end22.i:                                       ; preds = %lor.lhs.false17.i
  %conv.i = zext nneg i32 %1 to i64
  %add.i = add nuw i64 %3, %conv.i
  %call.i = tail call i32 @lzma_check_size(i32 noundef %4) #2
  %conv26.i = zext i32 %call.i to i64
  %add27.i = add nuw i64 %add.i, %conv26.i
  %cmp28.i = icmp ugt i64 %add27.i, 9223372036854775804
  %5 = add nuw nsw i64 %add27.i, 3
  %6 = and i64 %5, -4
  %7 = select i1 %cmp28.i, i64 0, i64 %6
  br label %if.end

lzma_block_unpadded_size.exit:                    ; preds = %lor.lhs.false17.i
  %not.cmp18.i = xor i1 %cmp18.i, true
  %spec.select = sext i1 %not.cmp18.i to i64
  br label %if.end

if.end:                                           ; preds = %lzma_block_unpadded_size.exit, %if.end22.i, %lor.lhs.false9.i, %lor.lhs.false2.i, %lor.lhs.false.i, %entry
  %unpadded_size.0 = phi i64 [ 0, %entry ], [ 0, %lor.lhs.false.i ], [ 0, %lor.lhs.false2.i ], [ 0, %lor.lhs.false9.i ], [ %7, %if.end22.i ], [ %spec.select, %lzma_block_unpadded_size.exit ]
  ret i64 %unpadded_size.0
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
