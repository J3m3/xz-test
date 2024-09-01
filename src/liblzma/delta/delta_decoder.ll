; ModuleID = 'liblzma/delta/delta_decoder.c'
source_filename = "liblzma/delta/delta_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_delta_decoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters) local_unnamed_addr #0 {
entry:
  %code = getelementptr inbounds i8, ptr %next, i64 24
  store ptr @delta_decode, ptr %code, align 8
  %call = tail call i32 @lzma_delta_coder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @delta_decode(ptr nocapture noundef %pcoder, ptr noundef %allocator, ptr noalias noundef %in, ptr noalias noundef %in_pos, i64 noundef %in_size, ptr noalias noundef %out, ptr noalias noundef %out_pos, i64 noundef %out_size, i32 noundef %action) #0 {
entry:
  %0 = load i64, ptr %out_pos, align 8
  %code = getelementptr inbounds i8, ptr %pcoder, i64 24
  %1 = load ptr, ptr %code, align 8
  %2 = load ptr, ptr %pcoder, align 8
  %call = tail call i32 %1(ptr noundef %2, ptr noundef %allocator, ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %out_size, i32 noundef %action) #2
  %add.ptr = getelementptr inbounds i8, ptr %out, i64 %0
  %3 = load i64, ptr %out_pos, align 8
  %sub = sub i64 %3, %0
  %cmp21.not.i = icmp eq i64 %3, %0
  br i1 %cmp21.not.i, label %decode_buffer.exit, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %entry
  %distance1.i = getelementptr inbounds i8, ptr %pcoder, i64 64
  %4 = load i64, ptr %distance1.i, align 8
  %history.i = getelementptr inbounds i8, ptr %pcoder, i64 73
  %pos.i = getelementptr inbounds i8, ptr %pcoder, i64 72
  %.tr.i = trunc i64 %4 to i8
  %.pre.i = load i8, ptr %pos.i, align 8
  %min.iters.check = icmp ult i64 %sub, 64
  br i1 %min.iters.check, label %for.body.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %for.body.lr.ph.i
  %5 = xor i64 %0, -1
  %6 = add i64 %3, %5
  %7 = trunc i64 %6 to i8
  %8 = icmp ult i8 %.pre.i, %7
  %9 = add i8 %.pre.i, %.tr.i
  %10 = trunc i64 %6 to i8
  %11 = icmp ult i8 %9, %10
  %12 = icmp ugt i64 %6, 255
  %13 = or i1 %11, %12
  %14 = zext i8 %.pre.i to i64
  %15 = getelementptr i8, ptr %pcoder, i64 %14
  %scevgep = getelementptr i8, ptr %15, i64 73
  %16 = sub i64 0, %6
  %17 = getelementptr i8, ptr %scevgep, i64 %16
  %18 = icmp ugt ptr %17, %scevgep
  %19 = zext i8 %9 to i64
  %20 = getelementptr i8, ptr %pcoder, i64 %19
  %scevgep16 = getelementptr i8, ptr %20, i64 73
  %21 = sub i64 0, %6
  %22 = getelementptr i8, ptr %scevgep16, i64 %21
  %23 = icmp ugt ptr %22, %scevgep16
  %24 = or i1 %8, %13
  %25 = or i1 %24, %18
  %26 = or i1 %25, %23
  br i1 %26, label %for.body.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %27 = add i8 %.pre.i, %.tr.i
  %28 = zext i8 %27 to i64
  %29 = zext i8 %.pre.i to i64
  %30 = sub nsw i64 %28, %29
  %diff.check = icmp ult i64 %30, 64
  br i1 %diff.check, label %for.body.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %sub, -64
  %.cast = trunc i64 %n.vec to i8
  %ind.end = sub i8 %.pre.i, %.cast
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %.cast21 = trunc i64 %index to i8
  %offset.idx = sub i8 %.pre.i, %.cast21
  %31 = add i8 %offset.idx, %.tr.i
  %32 = zext i8 %31 to i64
  %33 = getelementptr inbounds [256 x i8], ptr %history.i, i64 0, i64 %32
  %34 = getelementptr inbounds i8, ptr %33, i64 -15
  %35 = getelementptr inbounds i8, ptr %33, i64 -31
  %36 = getelementptr inbounds i8, ptr %33, i64 -47
  %37 = getelementptr inbounds i8, ptr %33, i64 -63
  %wide.load = load <16 x i8>, ptr %34, align 1
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %wide.load22 = load <16 x i8>, ptr %35, align 1
  %reverse23 = shufflevector <16 x i8> %wide.load22, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %wide.load24 = load <16 x i8>, ptr %36, align 1
  %reverse25 = shufflevector <16 x i8> %wide.load24, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %wide.load26 = load <16 x i8>, ptr %37, align 1
  %reverse27 = shufflevector <16 x i8> %wide.load26, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %38 = getelementptr inbounds i8, ptr %add.ptr, i64 %index
  %39 = getelementptr inbounds i8, ptr %38, i64 16
  %40 = getelementptr inbounds i8, ptr %38, i64 32
  %41 = getelementptr inbounds i8, ptr %38, i64 48
  %wide.load28 = load <16 x i8>, ptr %38, align 1
  %wide.load29 = load <16 x i8>, ptr %39, align 1
  %wide.load30 = load <16 x i8>, ptr %40, align 1
  %wide.load31 = load <16 x i8>, ptr %41, align 1
  %42 = add <16 x i8> %wide.load28, %reverse
  %43 = add <16 x i8> %wide.load29, %reverse23
  %44 = add <16 x i8> %wide.load30, %reverse25
  %45 = add <16 x i8> %wide.load31, %reverse27
  store <16 x i8> %42, ptr %38, align 1
  store <16 x i8> %43, ptr %39, align 1
  store <16 x i8> %44, ptr %40, align 1
  store <16 x i8> %45, ptr %41, align 1
  %46 = zext i8 %offset.idx to i64
  %47 = getelementptr inbounds [256 x i8], ptr %history.i, i64 0, i64 %46
  %48 = getelementptr inbounds i8, ptr %47, i64 -15
  %49 = getelementptr inbounds i8, ptr %47, i64 -31
  %50 = getelementptr inbounds i8, ptr %47, i64 -47
  %51 = getelementptr inbounds i8, ptr %47, i64 -63
  %reverse32 = shufflevector <16 x i8> %42, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse32, ptr %48, align 1
  %reverse33 = shufflevector <16 x i8> %43, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse33, ptr %49, align 1
  %reverse34 = shufflevector <16 x i8> %44, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse34, ptr %50, align 1
  %reverse35 = shufflevector <16 x i8> %45, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse35, ptr %51, align 1
  %index.next = add nuw i64 %index, 64
  %52 = icmp eq i64 %index.next, %n.vec
  br i1 %52, label %middle.block, label %vector.body, !llvm.loop !5

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %sub, %n.vec
  br i1 %cmp.n, label %decode_buffer.exit.loopexit, label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %middle.block, %vector.memcheck, %vector.scevcheck, %for.body.lr.ph.i
  %.ph = phi i8 [ %.pre.i, %vector.memcheck ], [ %.pre.i, %vector.scevcheck ], [ %.pre.i, %for.body.lr.ph.i ], [ %ind.end, %middle.block ]
  %i.022.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %for.body.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.preheader, %for.body.i
  %53 = phi i8 [ %dec.i, %for.body.i ], [ %.ph, %for.body.i.preheader ]
  %i.022.i = phi i64 [ %inc.i, %for.body.i ], [ %i.022.i.ph, %for.body.i.preheader ]
  %add.narrow.i = add i8 %53, %.tr.i
  %and.i = zext i8 %add.narrow.i to i64
  %arrayidx.i = getelementptr inbounds [256 x i8], ptr %history.i, i64 0, i64 %and.i
  %54 = load i8, ptr %arrayidx.i, align 1
  %arrayidx3.i = getelementptr inbounds i8, ptr %add.ptr, i64 %i.022.i
  %55 = load i8, ptr %arrayidx3.i, align 1
  %add5.i = add i8 %55, %54
  store i8 %add5.i, ptr %arrayidx3.i, align 1
  %dec.i = add i8 %53, -1
  %idxprom.i = zext i8 %53 to i64
  %arrayidx12.i = getelementptr inbounds [256 x i8], ptr %history.i, i64 0, i64 %idxprom.i
  store i8 %add5.i, ptr %arrayidx12.i, align 1
  %inc.i = add nuw i64 %i.022.i, 1
  %exitcond.not.i = icmp eq i64 %inc.i, %sub
  br i1 %exitcond.not.i, label %decode_buffer.exit.loopexit, label %for.body.i, !llvm.loop !8

decode_buffer.exit.loopexit:                      ; preds = %for.body.i, %middle.block
  %dec.i.lcssa = phi i8 [ %ind.end, %middle.block ], [ %dec.i, %for.body.i ]
  store i8 %dec.i.lcssa, ptr %pos.i, align 8
  br label %decode_buffer.exit

decode_buffer.exit:                               ; preds = %decode_buffer.exit.loopexit, %entry
  ret i32 %call
}

declare i32 @lzma_delta_coder_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 9) i32 @lzma_delta_props_decode(ptr nocapture noundef writeonly %options, ptr noundef %allocator, ptr nocapture noundef readonly %props, i64 noundef %props_size) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i64 %props_size, 1
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call = tail call ptr @lzma_alloc(i64 noundef 40, ptr noundef %allocator) #2
  %cmp1 = icmp eq ptr %call, null
  br i1 %cmp1, label %return, label %if.end3

if.end3:                                          ; preds = %if.end
  store i32 0, ptr %call, align 8
  %0 = load i8, ptr %props, align 1
  %conv = zext i8 %0 to i32
  %add = add nuw nsw i32 %conv, 1
  %dist = getelementptr inbounds i8, ptr %call, i64 4
  store i32 %add, ptr %dist, align 4
  store ptr %call, ptr %options, align 8
  br label %return

return:                                           ; preds = %if.end3, %if.end, %entry
  %retval.1 = phi i32 [ 8, %entry ], [ 0, %if.end3 ], [ 5, %if.end ]
  ret i32 %retval.1
}

declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

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
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.isvectorized", i32 1}
!7 = !{!"llvm.loop.unroll.runtime.disable"}
!8 = distinct !{!8, !6}
