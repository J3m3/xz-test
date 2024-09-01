; ModuleID = 'liblzma/simple/ia64.c'
source_filename = "liblzma/simple/ia64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_simple_ia64_encoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters) local_unnamed_addr #0 {
entry:
  %call.i = tail call i32 @lzma_simple_coder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters, ptr noundef nonnull @ia64_code, i64 noundef 0, i64 noundef 16, i32 noundef 16, i1 noundef zeroext true) #3
  ret i32 %call.i
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_simple_ia64_decoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters) local_unnamed_addr #0 {
entry:
  %call.i = tail call i32 @lzma_simple_coder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters, ptr noundef nonnull @ia64_code, i64 noundef 0, i64 noundef 16, i32 noundef 16, i1 noundef zeroext false) #3
  ret i32 %call.i
}

declare i32 @lzma_simple_coder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal i64 @ia64_code(ptr nocapture readnone %simple, i32 noundef %now_pos, i1 noundef zeroext %is_encoder, ptr nocapture noundef %buffer, i64 noundef %size) #2 {
entry:
  %cmp.not135 = icmp ult i64 %size, 16
  br i1 %cmp.not135, label %for.end88, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %invariant.gep.1 = getelementptr i8, ptr %buffer, i64 5
  %invariant.gep.2 = getelementptr i8, ptr %buffer, i64 10
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc82.2
  %add137 = phi i64 [ %add, %for.inc82.2 ], [ 16, %for.body.preheader ]
  %i.0136 = phi i64 [ %add137, %for.inc82.2 ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr i8, ptr %buffer, i64 %i.0136
  %0 = load i8, ptr %arrayidx, align 1
  %1 = and i8 %0, 31
  %idxprom = zext nneg i8 %1 to i64
  %conv43 = trunc i64 %i.0136 to i32
  %add44 = add i32 %conv43, %now_pos
  %2 = sub i32 0, %add44
  %dest.0.p = select i1 %is_encoder, i32 %add44, i32 %2
  %3 = lshr i32 %dest.0.p, 4
  %4 = add nsw i8 %1, -24
  %cmp7 = icmp ult i8 %4, -2
  br i1 %cmp7, label %for.inc82, label %if.end

if.end:                                           ; preds = %for.body
  %conv20 = zext i8 %0 to i64
  %add17.1 = or disjoint i64 %i.0136, 1
  %gep.1 = getelementptr i8, ptr %buffer, i64 %add17.1
  %5 = load i8, ptr %gep.1, align 1
  %conv20.1 = zext i8 %5 to i64
  %shl.1 = shl nuw nsw i64 %conv20.1, 8
  %add17.2 = or disjoint i64 %i.0136, 2
  %gep.2 = getelementptr i8, ptr %buffer, i64 %add17.2
  %6 = load i8, ptr %gep.2, align 1
  %conv20.2 = zext i8 %6 to i64
  %shl.2 = shl nuw nsw i64 %conv20.2, 16
  %7 = or disjoint i64 %shl.1, %shl.2
  %add21.2 = or disjoint i64 %7, %conv20
  %add17.3 = or disjoint i64 %i.0136, 3
  %gep.3 = getelementptr i8, ptr %buffer, i64 %add17.3
  %8 = load i8, ptr %gep.3, align 1
  %conv20.3 = zext i8 %8 to i64
  %shl.3 = shl nuw nsw i64 %conv20.3, 24
  %add17.4 = or disjoint i64 %i.0136, 4
  %gep.4 = getelementptr i8, ptr %buffer, i64 %add17.4
  %9 = load i8, ptr %gep.4, align 1
  %conv20.4 = zext i8 %9 to i64
  %shl.4 = shl nuw nsw i64 %conv20.4, 32
  %10 = or disjoint i64 %shl.3, %shl.4
  %add21.4 = or disjoint i64 %10, %add21.2
  %add17.5 = or disjoint i64 %i.0136, 5
  %gep.5 = getelementptr i8, ptr %buffer, i64 %add17.5
  %11 = load i8, ptr %gep.5, align 1
  %conv20.5 = zext i8 %11 to i64
  %shl.5 = shl nuw nsw i64 %conv20.5, 40
  %add21.5 = or disjoint i64 %shl.5, %add21.4
  %12 = and i64 %add21.5, 65970697781248
  %or.cond = icmp eq i64 %12, 21990232555520
  br i1 %or.cond, label %if.then32, label %for.inc82

if.then32:                                        ; preds = %if.end
  %shr33 = lshr i64 %add21.4, 18
  %conv35 = and i64 %shr33, 1048575
  %13 = lshr i64 %add21.5, 21
  %shl38 = and i64 %13, 1048576
  %or = or disjoint i64 %conv35, %shl38
  %conv40 = trunc nuw nsw i64 %or to i32
  %14 = add nuw nsw i32 %3, %conv40
  %and50 = and i64 %add21.5, 9223325582488649696
  %and51 = and i32 %14, 1048575
  %conv52 = zext nneg i32 %and51 to i64
  %shl53 = shl nuw nsw i64 %conv52, 18
  %or54 = or disjoint i64 %shl53, %and50
  %and55 = and i32 %14, 1048576
  %conv56 = zext nneg i32 %and55 to i64
  %shl57 = shl nuw nsw i64 %conv56, 21
  %and62 = and i64 %conv20, 31
  %15 = or disjoint i64 %shl57, %and62
  %or65 = or disjoint i64 %15, %or54
  %conv74 = trunc i64 %or65 to i8
  store i8 %conv74, ptr %arrayidx, align 1
  store i8 %5, ptr %gep.1, align 1
  %shr73.2 = lshr i64 %or65, 16
  %conv74.2 = trunc i64 %shr73.2 to i8
  store i8 %conv74.2, ptr %gep.2, align 1
  %shr73.3 = lshr i64 %or65, 24
  %conv74.3 = trunc i64 %shr73.3 to i8
  store i8 %conv74.3, ptr %gep.3, align 1
  %shr73.4 = lshr i64 %or65, 32
  %conv74.4 = trunc i64 %shr73.4 to i8
  store i8 %conv74.4, ptr %gep.4, align 1
  %shr73.5 = lshr i64 %or65, 40
  %conv74.5 = trunc nuw i64 %shr73.5 to i8
  store i8 %conv74.5, ptr %gep.5, align 1
  br label %for.inc82

for.inc82:                                        ; preds = %if.then32, %if.end, %for.body
  %16 = lshr i64 4281597951, %idxprom
  %17 = and i64 %16, 1
  %cmp7.1.not = icmp eq i64 %17, 0
  br i1 %cmp7.1.not, label %if.end.1, label %for.inc82.1

if.end.1:                                         ; preds = %for.inc82
  %gep.1140 = getelementptr i8, ptr %invariant.gep.1, i64 %i.0136
  %18 = load i8, ptr %gep.1140, align 1
  %conv20.1141 = zext i8 %18 to i64
  %add17.1.1 = or disjoint i64 %i.0136, 1
  %gep.1.1 = getelementptr i8, ptr %invariant.gep.1, i64 %add17.1.1
  %19 = load i8, ptr %gep.1.1, align 1
  %conv20.1.1 = zext i8 %19 to i64
  %shl.1.1 = shl nuw nsw i64 %conv20.1.1, 8
  %add17.2.1 = or disjoint i64 %i.0136, 2
  %gep.2.1 = getelementptr i8, ptr %invariant.gep.1, i64 %add17.2.1
  %20 = load i8, ptr %gep.2.1, align 1
  %conv20.2.1 = zext i8 %20 to i64
  %shl.2.1 = shl nuw nsw i64 %conv20.2.1, 16
  %21 = or disjoint i64 %shl.1.1, %shl.2.1
  %add21.2.1 = or disjoint i64 %21, %conv20.1141
  %add17.3.1 = or disjoint i64 %i.0136, 3
  %gep.3.1 = getelementptr i8, ptr %invariant.gep.1, i64 %add17.3.1
  %22 = load i8, ptr %gep.3.1, align 1
  %conv20.3.1 = zext i8 %22 to i64
  %shl.3.1 = shl nuw nsw i64 %conv20.3.1, 24
  %add17.4.1 = or disjoint i64 %i.0136, 4
  %gep.4.1 = getelementptr i8, ptr %invariant.gep.1, i64 %add17.4.1
  %23 = load i8, ptr %gep.4.1, align 1
  %conv20.4.1 = zext i8 %23 to i64
  %shl.4.1 = shl nuw nsw i64 %conv20.4.1, 32
  %24 = or disjoint i64 %shl.3.1, %shl.4.1
  %add21.4.1 = or disjoint i64 %24, %add21.2.1
  %add17.5.1 = or disjoint i64 %i.0136, 5
  %gep.5.1 = getelementptr i8, ptr %invariant.gep.1, i64 %add17.5.1
  %25 = load i8, ptr %gep.5.1, align 1
  %conv20.5.1 = zext i8 %25 to i64
  %shl.5.1 = shl nuw nsw i64 %conv20.5.1, 40
  %add21.5.1 = or disjoint i64 %shl.5.1, %add21.4.1
  %26 = and i64 %add21.5.1, 131941395562496
  %or.cond.1 = icmp eq i64 %26, 43980465111040
  br i1 %or.cond.1, label %if.then32.1, label %for.inc82.1

if.then32.1:                                      ; preds = %if.end.1
  %shr33.1 = lshr i64 %add21.4.1, 19
  %conv35.1 = and i64 %shr33.1, 1048575
  %27 = lshr i64 %add21.5.1, 22
  %shl38.1 = and i64 %27, 1048576
  %or.1 = or disjoint i64 %conv35.1, %shl38.1
  %conv40.1 = trunc nuw nsw i64 %or.1 to i32
  %28 = add nuw nsw i32 %3, %conv40.1
  %and50.1 = and i64 %add21.5.1, 9223279128122523584
  %and51.1 = and i32 %28, 1048575
  %conv52.1 = zext nneg i32 %and51.1 to i64
  %shl53.1 = shl nuw nsw i64 %conv52.1, 19
  %or54.1 = or disjoint i64 %shl53.1, %and50.1
  %and55.1 = and i32 %28, 1048576
  %conv56.1 = zext nneg i32 %and55.1 to i64
  %shl57.1 = shl nuw nsw i64 %conv56.1, 22
  %and62.1 = and i64 %conv20.1141, 63
  %29 = or disjoint i64 %shl57.1, %and62.1
  %or65.1 = or disjoint i64 %29, %or54.1
  %conv74.1142 = trunc i64 %or65.1 to i8
  store i8 %conv74.1142, ptr %gep.1140, align 1
  store i8 %19, ptr %gep.1.1, align 1
  %shr73.2.1 = lshr i64 %or65.1, 16
  %conv74.2.1 = trunc i64 %shr73.2.1 to i8
  store i8 %conv74.2.1, ptr %gep.2.1, align 1
  %shr73.3.1 = lshr i64 %or65.1, 24
  %conv74.3.1 = trunc i64 %shr73.3.1 to i8
  store i8 %conv74.3.1, ptr %gep.3.1, align 1
  %shr73.4.1 = lshr i64 %or65.1, 32
  %conv74.4.1 = trunc i64 %shr73.4.1 to i8
  store i8 %conv74.4.1, ptr %gep.4.1, align 1
  %shr73.5.1 = lshr i64 %or65.1, 40
  %conv74.5.1 = trunc nuw i64 %shr73.5.1 to i8
  store i8 %conv74.5.1, ptr %gep.5.1, align 1
  br label %for.inc82.1

for.inc82.1:                                      ; preds = %if.then32.1, %if.end.1, %for.inc82
  %30 = lshr i64 3425763327, %idxprom
  %31 = and i64 %30, 1
  %cmp7.2.not = icmp eq i64 %31, 0
  br i1 %cmp7.2.not, label %if.end.2, label %for.inc82.2

if.end.2:                                         ; preds = %for.inc82.1
  %gep.2144 = getelementptr i8, ptr %invariant.gep.2, i64 %i.0136
  %32 = load i8, ptr %gep.2144, align 1
  %conv20.2145 = zext i8 %32 to i64
  %add17.1.2 = or disjoint i64 %i.0136, 1
  %gep.1.2 = getelementptr i8, ptr %invariant.gep.2, i64 %add17.1.2
  %33 = load i8, ptr %gep.1.2, align 1
  %conv20.1.2 = zext i8 %33 to i64
  %shl.1.2 = shl nuw nsw i64 %conv20.1.2, 8
  %add17.2.2 = or disjoint i64 %i.0136, 2
  %gep.2.2 = getelementptr i8, ptr %invariant.gep.2, i64 %add17.2.2
  %34 = load i8, ptr %gep.2.2, align 1
  %conv20.2.2 = zext i8 %34 to i64
  %shl.2.2 = shl nuw nsw i64 %conv20.2.2, 16
  %35 = or disjoint i64 %shl.1.2, %shl.2.2
  %add21.2.2 = or disjoint i64 %35, %conv20.2145
  %add17.3.2 = or disjoint i64 %i.0136, 3
  %gep.3.2 = getelementptr i8, ptr %invariant.gep.2, i64 %add17.3.2
  %36 = load i8, ptr %gep.3.2, align 1
  %conv20.3.2 = zext i8 %36 to i64
  %shl.3.2 = shl nuw nsw i64 %conv20.3.2, 24
  %add17.4.2 = or disjoint i64 %i.0136, 4
  %gep.4.2 = getelementptr i8, ptr %invariant.gep.2, i64 %add17.4.2
  %37 = load i8, ptr %gep.4.2, align 1
  %conv20.4.2 = zext i8 %37 to i64
  %shl.4.2 = shl nuw nsw i64 %conv20.4.2, 32
  %38 = or disjoint i64 %shl.3.2, %shl.4.2
  %add21.4.2 = or disjoint i64 %38, %add21.2.2
  %add17.5.2 = or disjoint i64 %i.0136, 5
  %gep.5.2 = getelementptr i8, ptr %invariant.gep.2, i64 %add17.5.2
  %39 = load i8, ptr %gep.5.2, align 1
  %conv20.5.2 = zext i8 %39 to i64
  %shl.5.2 = shl nuw nsw i64 %conv20.5.2, 40
  %add21.5.2 = or disjoint i64 %shl.5.2, %add21.4.2
  %40 = and i64 %add21.5.2, 263882791124992
  %or.cond.2 = icmp eq i64 %40, 87960930222080
  br i1 %or.cond.2, label %if.then32.2, label %for.inc82.2

if.then32.2:                                      ; preds = %if.end.2
  %shr33.2 = lshr i64 %add21.4.2, 20
  %41 = lshr i64 %add21.5.2, 23
  %shl38.2 = and i64 %41, 1048576
  %or.2 = or disjoint i64 %shr33.2, %shl38.2
  %conv40.2 = trunc nuw nsw i64 %or.2 to i32
  %42 = add nuw nsw i32 %3, %conv40.2
  %and50.2 = and i64 %add21.5.2, 9223186219390271360
  %and51.2 = and i32 %42, 1048575
  %conv52.2 = zext nneg i32 %and51.2 to i64
  %shl53.2 = shl nuw nsw i64 %conv52.2, 20
  %or54.2 = or disjoint i64 %shl53.2, %and50.2
  %and55.2 = and i32 %42, 1048576
  %conv56.2 = zext nneg i32 %and55.2 to i64
  %shl57.2 = shl nuw nsw i64 %conv56.2, 23
  %and62.2 = and i64 %conv20.2145, 127
  %43 = or disjoint i64 %shl57.2, %and62.2
  %or65.2 = or disjoint i64 %43, %or54.2
  %conv74.2146 = trunc i64 %or65.2 to i8
  store i8 %conv74.2146, ptr %gep.2144, align 1
  store i8 %33, ptr %gep.1.2, align 1
  %shr73.2.2 = lshr i64 %or65.2, 16
  %conv74.2.2 = trunc i64 %shr73.2.2 to i8
  store i8 %conv74.2.2, ptr %gep.2.2, align 1
  %shr73.3.2 = lshr i64 %or65.2, 24
  %conv74.3.2 = trunc i64 %shr73.3.2 to i8
  store i8 %conv74.3.2, ptr %gep.3.2, align 1
  %shr73.4.2 = lshr i64 %or65.2, 32
  %conv74.4.2 = trunc i64 %shr73.4.2 to i8
  store i8 %conv74.4.2, ptr %gep.4.2, align 1
  %shr73.5.2 = lshr i64 %or65.2, 40
  %conv74.5.2 = trunc nuw nsw i64 %shr73.5.2 to i8
  store i8 %conv74.5.2, ptr %gep.5.2, align 1
  br label %for.inc82.2

for.inc82.2:                                      ; preds = %if.then32.2, %if.end.2, %for.inc82.1
  %add = add i64 %add137, 16
  %cmp.not = icmp ugt i64 %add, %size
  br i1 %cmp.not, label %for.end88, label %for.body

for.end88:                                        ; preds = %for.inc82.2, %entry
  %i.0.lcssa = phi i64 [ 0, %entry ], [ %add137, %for.inc82.2 ]
  ret i64 %i.0.lcssa
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
