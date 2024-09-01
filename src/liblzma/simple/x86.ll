; ModuleID = 'liblzma/simple/x86.c'
source_filename = "liblzma/simple/x86.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x86_code.MASK_TO_ALLOWED_STATUS = internal unnamed_addr constant [8 x i8] c"\01\01\01\00\01\00\00\00", align 1
@x86_code.MASK_TO_BIT_NUMBER = internal unnamed_addr constant [8 x i32] [i32 0, i32 1, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3], align 16

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_simple_x86_encoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters) local_unnamed_addr #0 {
entry:
  %call.i = tail call i32 @lzma_simple_coder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters, ptr noundef nonnull @x86_code, i64 noundef 8, i64 noundef 5, i32 noundef 1, i1 noundef zeroext true) #4
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %x86_coder_init.exit

if.then.i:                                        ; preds = %entry
  %0 = load ptr, ptr %next, align 8
  %simple.i = getelementptr inbounds i8, ptr %0, i64 80
  %1 = load ptr, ptr %simple.i, align 8
  store i32 0, ptr %1, align 4
  %2 = load ptr, ptr %next, align 8
  %simple2.i = getelementptr inbounds i8, ptr %2, i64 80
  %3 = load ptr, ptr %simple2.i, align 8
  %prev_pos.i = getelementptr inbounds i8, ptr %3, i64 4
  store i32 -5, ptr %prev_pos.i, align 4
  br label %x86_coder_init.exit

x86_coder_init.exit:                              ; preds = %entry, %if.then.i
  ret i32 %call.i
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_simple_x86_decoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters) local_unnamed_addr #0 {
entry:
  %call.i = tail call i32 @lzma_simple_coder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters, ptr noundef nonnull @x86_code, i64 noundef 8, i64 noundef 5, i32 noundef 1, i1 noundef zeroext false) #4
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %x86_coder_init.exit

if.then.i:                                        ; preds = %entry
  %0 = load ptr, ptr %next, align 8
  %simple.i = getelementptr inbounds i8, ptr %0, i64 80
  %1 = load ptr, ptr %simple.i, align 8
  store i32 0, ptr %1, align 4
  %2 = load ptr, ptr %next, align 8
  %simple2.i = getelementptr inbounds i8, ptr %2, i64 80
  %3 = load ptr, ptr %simple2.i, align 8
  %prev_pos.i = getelementptr inbounds i8, ptr %3, i64 4
  store i32 -5, ptr %prev_pos.i, align 4
  br label %x86_coder_init.exit

x86_coder_init.exit:                              ; preds = %entry, %if.then.i
  ret i32 %call.i
}

declare i32 @lzma_simple_coder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal i64 @x86_code(ptr nocapture noundef %simple, i32 noundef %now_pos, i1 noundef zeroext %is_encoder, ptr nocapture noundef %buffer, i64 noundef %size) #2 {
entry:
  %prev_pos2 = getelementptr inbounds i8, ptr %simple, i64 4
  %cmp = icmp ult i64 %size, 5
  br i1 %cmp, label %cleanup137, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %simple, align 4
  %1 = load i32, ptr %prev_pos2, align 4
  %sub = sub i32 %now_pos, %1
  %cmp3 = icmp ugt i32 %sub, 5
  %sub5 = add i32 %now_pos, -5
  %spec.select = select i1 %cmp3, i32 %sub5, i32 %1
  %sub7 = add i64 %size, -5
  br label %while.body

while.body:                                       ; preds = %if.end, %cleanup129
  %prev_mask.0218 = phi i32 [ %0, %if.end ], [ %prev_mask.4, %cleanup129 ]
  %buffer_pos.0217 = phi i64 [ 0, %if.end ], [ %buffer_pos.2, %cleanup129 ]
  %prev_pos.1216 = phi i32 [ %spec.select, %if.end ], [ %prev_pos.2, %cleanup129 ]
  %arrayidx = getelementptr inbounds i8, ptr %buffer, i64 %buffer_pos.0217
  %2 = load i8, ptr %arrayidx, align 1
  %3 = add i8 %2, 22
  %or.cond = icmp ult i8 %3, -2
  br i1 %or.cond, label %if.then14, label %if.end15

if.then14:                                        ; preds = %while.body
  %inc = add nuw i64 %buffer_pos.0217, 1
  br label %cleanup129

if.end15:                                         ; preds = %while.body
  %conv16 = trunc i64 %buffer_pos.0217 to i32
  %add = add i32 %conv16, %now_pos
  %sub17 = sub i32 %add, %prev_pos.1216
  %cmp20 = icmp ugt i32 %sub17, 5
  br i1 %cmp20, label %if.end26, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end15
  %cmp23208.not = icmp eq i32 %add, %prev_pos.1216
  br i1 %cmp23208.not, label %if.end26, label %for.body.preheader

for.body.preheader:                               ; preds = %for.cond.preheader
  %umax = tail call i32 @llvm.umax.i32(i32 %sub17, i32 1)
  br label %for.body.epil

for.body.epil:                                    ; preds = %for.body.epil, %for.body.preheader
  %prev_mask.1209.epil = phi i32 [ %shl.epil, %for.body.epil ], [ %prev_mask.0218, %for.body.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %for.body.epil ], [ 0, %for.body.preheader ]
  %and.epil = shl i32 %prev_mask.1209.epil, 1
  %shl.epil = and i32 %and.epil, 238
  %epil.iter.next = add i32 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %umax
  br i1 %epil.iter.cmp.not, label %if.end26, label %for.body.epil, !llvm.loop !5

if.end26:                                         ; preds = %for.body.epil, %for.cond.preheader, %if.end15
  %prev_mask.2 = phi i32 [ 0, %if.end15 ], [ %prev_mask.0218, %for.cond.preheader ], [ %shl.epil, %for.body.epil ]
  %arrayidx28 = getelementptr i8, ptr %arrayidx, i64 4
  %4 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %4 to i32
  %5 = add i8 %4, 1
  %or.cond139 = icmp ult i8 %5, 2
  br i1 %or.cond139, label %land.lhs.true35, label %if.else115

land.lhs.true35:                                  ; preds = %if.end26
  %shr = lshr i32 %prev_mask.2, 1
  %and36 = and i32 %shr, 7
  %idxprom = zext nneg i32 %and36 to i64
  %arrayidx37 = getelementptr inbounds [8 x i8], ptr @x86_code.MASK_TO_ALLOWED_STATUS, i64 0, i64 %idxprom
  %6 = load i8, ptr %arrayidx37, align 1, !range !7, !noundef !8
  %loadedv = trunc nuw i8 %6 to i1
  %cmp41 = icmp ult i32 %prev_mask.2, 32
  %or.cond203 = select i1 %loadedv, i1 %cmp41, i1 false
  br i1 %or.cond203, label %if.then43, label %if.else115

if.then43:                                        ; preds = %land.lhs.true35
  %shl45 = shl nuw i32 %conv29, 24
  %arrayidx47 = getelementptr i8, ptr %arrayidx, i64 3
  %7 = load i8, ptr %arrayidx47, align 1
  %conv48 = zext i8 %7 to i32
  %shl49 = shl nuw nsw i32 %conv48, 16
  %or = or disjoint i32 %shl49, %shl45
  %arrayidx51 = getelementptr i8, ptr %arrayidx, i64 2
  %8 = load i8, ptr %arrayidx51, align 1
  %conv52 = zext i8 %8 to i32
  %shl53 = shl nuw nsw i32 %conv52, 8
  %or54 = or disjoint i32 %or, %shl53
  %arrayidx56 = getelementptr i8, ptr %arrayidx, i64 1
  %9 = load i8, ptr %arrayidx56, align 1
  %conv57 = zext i8 %9 to i32
  %or58 = or disjoint i32 %or54, %conv57
  %add65 = add i32 %add, 5
  %10 = sub i32 -5, %add
  %dest.0.p = select i1 %is_encoder, i32 %add65, i32 %10
  %cmp73 = icmp eq i32 %prev_mask.2, 0
  %dest.0211 = add i32 %or58, %dest.0.p
  br i1 %cmp73, label %while.end, label %if.end76.lr.ph

if.end76.lr.ph:                                   ; preds = %if.then43
  %idxprom79 = zext nneg i32 %shr to i64
  %arrayidx80 = getelementptr inbounds [8 x i32], ptr @x86_code.MASK_TO_BIT_NUMBER, i64 0, i64 %idxprom79
  %11 = load i32, ptr %arrayidx80, align 4
  %mul = shl i32 %11, 3
  %sub81 = sub i32 24, %mul
  %sub94 = sub i32 32, %mul
  %notmask = shl nsw i32 -1, %sub94
  br label %if.end76

if.end76:                                         ; preds = %cleanup, %if.end76.lr.ph
  %dest.0212 = phi i32 [ %dest.0211, %if.end76.lr.ph ], [ %dest.0, %cleanup ]
  %shr82 = lshr i32 %dest.0212, %sub81
  %trunc = trunc i32 %shr82 to i8
  switch i8 %trunc, label %while.end [
    i8 -1, label %cleanup
    i8 0, label %cleanup
  ]

cleanup:                                          ; preds = %if.end76, %if.end76
  %12 = xor i32 %dest.0212, %notmask
  %xor = xor i32 %12, -1
  %dest.0 = add i32 %dest.0.p, %xor
  br label %if.end76

while.end:                                        ; preds = %if.end76, %if.then43
  %dest.0.lcssa = phi i32 [ %dest.0211, %if.then43 ], [ %dest.0212, %if.end76 ]
  %13 = shl i32 %dest.0.lcssa, 7
  %14 = ashr i32 %13, 31
  %conv100 = trunc nsw i32 %14 to i8
  store i8 %conv100, ptr %arrayidx28, align 1
  %shr103 = lshr i32 %dest.0.lcssa, 16
  %conv104 = trunc i32 %shr103 to i8
  store i8 %conv104, ptr %arrayidx47, align 1
  %shr107 = lshr i32 %dest.0.lcssa, 8
  %conv108 = trunc i32 %shr107 to i8
  store i8 %conv108, ptr %arrayidx51, align 1
  %conv111 = trunc i32 %dest.0.lcssa to i8
  store i8 %conv111, ptr %arrayidx56, align 1
  %add114 = add nuw i64 %buffer_pos.0217, 5
  br label %cleanup129

if.else115:                                       ; preds = %if.end26, %land.lhs.true35
  %spec.select204.v = phi i32 [ 1, %if.end26 ], [ 17, %land.lhs.true35 ]
  %inc116 = add nuw i64 %buffer_pos.0217, 1
  %spec.select204 = or i32 %spec.select204.v, %prev_mask.2
  br label %cleanup129

cleanup129:                                       ; preds = %if.else115, %while.end, %if.then14
  %prev_pos.2 = phi i32 [ %prev_pos.1216, %if.then14 ], [ %add, %if.else115 ], [ %add, %while.end ]
  %buffer_pos.2 = phi i64 [ %inc, %if.then14 ], [ %inc116, %if.else115 ], [ %add114, %while.end ]
  %prev_mask.4 = phi i32 [ %prev_mask.0218, %if.then14 ], [ %spec.select204, %if.else115 ], [ 0, %while.end ]
  %cmp8.not = icmp ugt i64 %buffer_pos.2, %sub7
  br i1 %cmp8.not, label %while.end132, label %while.body

while.end132:                                     ; preds = %cleanup129
  store i32 %prev_mask.4, ptr %simple, align 4
  store i32 %prev_pos.2, ptr %prev_pos2, align 4
  br label %cleanup137

cleanup137:                                       ; preds = %entry, %while.end132
  %retval.0 = phi i64 [ %buffer_pos.2, %while.end132 ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.unroll.disable"}
!7 = !{i8 0, i8 2}
!8 = !{}
