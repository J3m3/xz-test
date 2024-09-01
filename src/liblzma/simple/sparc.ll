; ModuleID = 'liblzma/simple/sparc.c'
source_filename = "liblzma/simple/sparc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_simple_sparc_encoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters) local_unnamed_addr #0 {
entry:
  %call.i = tail call i32 @lzma_simple_coder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters, ptr noundef nonnull @sparc_code, i64 noundef 0, i64 noundef 4, i32 noundef 4, i1 noundef zeroext true) #3
  ret i32 %call.i
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_simple_sparc_decoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters) local_unnamed_addr #0 {
entry:
  %call.i = tail call i32 @lzma_simple_coder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters, ptr noundef nonnull @sparc_code, i64 noundef 0, i64 noundef 4, i32 noundef 4, i1 noundef zeroext false) #3
  ret i32 %call.i
}

declare i32 @lzma_simple_coder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal i64 @sparc_code(ptr nocapture readnone %simple, i32 noundef %now_pos, i1 noundef zeroext %is_encoder, ptr nocapture noundef %buffer, i64 noundef %size) #2 {
entry:
  %cmp.not104 = icmp ult i64 %size, 4
  br i1 %cmp.not104, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  br i1 %is_encoder, label %for.body.us, label %for.body

for.body.us:                                      ; preds = %for.body.lr.ph, %for.inc.us
  %add106.us = phi i64 [ %add.us, %for.inc.us ], [ 4, %for.body.lr.ph ]
  %i.0105.us = phi i64 [ %add106.us, %for.inc.us ], [ 0, %for.body.lr.ph ]
  %arrayidx.us = getelementptr inbounds i8, ptr %buffer, i64 %i.0105.us
  %0 = load i8, ptr %arrayidx.us, align 1
  switch i8 %0, label %for.inc.us [
    i8 64, label %land.lhs.true.us
    i8 127, label %land.lhs.true12.us
  ]

land.lhs.true12.us:                               ; preds = %for.body.us
  %add13.us = or disjoint i64 %i.0105.us, 1
  %arrayidx14.us = getelementptr inbounds i8, ptr %buffer, i64 %add13.us
  %1 = load i8, ptr %arrayidx14.us, align 1
  %cmp17.us = icmp ugt i8 %1, -65
  br i1 %cmp17.us, label %if.then.us, label %for.inc.us

land.lhs.true.us:                                 ; preds = %for.body.us
  %add3.us = or disjoint i64 %i.0105.us, 1
  %arrayidx4.us = getelementptr inbounds i8, ptr %buffer, i64 %add3.us
  %2 = load i8, ptr %arrayidx4.us, align 1
  %cmp6.us = icmp ult i8 %2, 64
  br i1 %cmp6.us, label %if.then.us, label %for.inc.us

if.then.us:                                       ; preds = %land.lhs.true.us, %land.lhs.true12.us
  %3 = phi i8 [ %2, %land.lhs.true.us ], [ %1, %land.lhs.true12.us ]
  %add22.us.pre-phi = phi i64 [ %add3.us, %land.lhs.true.us ], [ %add13.us, %land.lhs.true12.us ]
  %conv21.us = zext nneg i8 %0 to i32
  %shl.us = shl nuw nsw i32 %conv21.us, 24
  %arrayidx23.us = getelementptr inbounds i8, ptr %buffer, i64 %add22.us.pre-phi
  %conv24.us = zext i8 %3 to i32
  %shl25.us = shl nuw nsw i32 %conv24.us, 16
  %or.us = or disjoint i32 %shl25.us, %shl.us
  %add26.us = or disjoint i64 %i.0105.us, 2
  %arrayidx27.us = getelementptr inbounds i8, ptr %buffer, i64 %add26.us
  %4 = load i8, ptr %arrayidx27.us, align 1
  %conv28.us = zext i8 %4 to i32
  %shl29.us = shl nuw nsw i32 %conv28.us, 8
  %or30.us = or disjoint i32 %or.us, %shl29.us
  %add31.us = or disjoint i64 %i.0105.us, 3
  %arrayidx32.us = getelementptr inbounds i8, ptr %buffer, i64 %add31.us
  %5 = load i8, ptr %arrayidx32.us, align 1
  %conv33.us = zext i8 %5 to i32
  %or34.us = or disjoint i32 %or30.us, %conv33.us
  %shl35.us = shl i32 %or34.us, 2
  %conv37.us = trunc i64 %i.0105.us to i32
  %add38.us = add i32 %conv37.us, %now_pos
  %dest.0.us = add i32 %shl35.us, %add38.us
  %shr.us = lshr i32 %dest.0.us, 2
  %6 = shl i32 %dest.0.us, 7
  %7 = ashr i32 %6, 9
  %and46.us = and i32 %7, 1069547520
  %and47.us = and i32 %shr.us, 4128768
  %or48.us = or disjoint i32 %and46.us, %and47.us
  %or49.us = lshr i32 %and46.us, 24
  %8 = trunc nuw nsw i32 %or49.us to i8
  %conv51.us = or disjoint i8 %8, 64
  store i8 %conv51.us, ptr %arrayidx.us, align 1
  %shr54.us = lshr exact i32 %or48.us, 16
  %conv55.us = trunc i32 %shr54.us to i8
  store i8 %conv55.us, ptr %arrayidx23.us, align 1
  %shr58.us = lshr i32 %dest.0.us, 10
  %conv59.us = trunc i32 %shr58.us to i8
  store i8 %conv59.us, ptr %arrayidx27.us, align 1
  %conv62.us = trunc i32 %shr.us to i8
  store i8 %conv62.us, ptr %arrayidx32.us, align 1
  br label %for.inc.us

for.inc.us:                                       ; preds = %if.then.us, %land.lhs.true.us, %land.lhs.true12.us, %for.body.us
  %add.us = add i64 %add106.us, 4
  %cmp.not.us = icmp ugt i64 %add.us, %size
  br i1 %cmp.not.us, label %for.end, label %for.body.us

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %add106 = phi i64 [ %add, %for.inc ], [ 4, %for.body.lr.ph ]
  %i.0105 = phi i64 [ %add106, %for.inc ], [ 0, %for.body.lr.ph ]
  %arrayidx = getelementptr inbounds i8, ptr %buffer, i64 %i.0105
  %9 = load i8, ptr %arrayidx, align 1
  switch i8 %9, label %for.inc [
    i8 64, label %land.lhs.true
    i8 127, label %land.lhs.true12
  ]

land.lhs.true:                                    ; preds = %for.body
  %add3 = or disjoint i64 %i.0105, 1
  %arrayidx4 = getelementptr inbounds i8, ptr %buffer, i64 %add3
  %10 = load i8, ptr %arrayidx4, align 1
  %cmp6 = icmp ult i8 %10, 64
  br i1 %cmp6, label %if.then, label %for.inc

land.lhs.true12:                                  ; preds = %for.body
  %add13 = or disjoint i64 %i.0105, 1
  %arrayidx14 = getelementptr inbounds i8, ptr %buffer, i64 %add13
  %11 = load i8, ptr %arrayidx14, align 1
  %cmp17 = icmp ugt i8 %11, -65
  br i1 %cmp17, label %if.then, label %for.inc

if.then:                                          ; preds = %land.lhs.true12, %land.lhs.true
  %12 = phi i8 [ %11, %land.lhs.true12 ], [ %10, %land.lhs.true ]
  %add22.pre-phi = phi i64 [ %add13, %land.lhs.true12 ], [ %add3, %land.lhs.true ]
  %conv21 = zext nneg i8 %9 to i32
  %shl = shl nuw nsw i32 %conv21, 24
  %arrayidx23 = getelementptr inbounds i8, ptr %buffer, i64 %add22.pre-phi
  %conv24 = zext i8 %12 to i32
  %shl25 = shl nuw nsw i32 %conv24, 16
  %or = or disjoint i32 %shl25, %shl
  %add26 = or disjoint i64 %i.0105, 2
  %arrayidx27 = getelementptr inbounds i8, ptr %buffer, i64 %add26
  %13 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %13 to i32
  %shl29 = shl nuw nsw i32 %conv28, 8
  %or30 = or disjoint i32 %or, %shl29
  %add31 = or disjoint i64 %i.0105, 3
  %arrayidx32 = getelementptr inbounds i8, ptr %buffer, i64 %add31
  %14 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %14 to i32
  %or34 = or disjoint i32 %or30, %conv33
  %shl35 = shl i32 %or34, 2
  %conv37 = trunc i64 %i.0105 to i32
  %add38 = add i32 %conv37, %now_pos
  %dest.0 = sub i32 %shl35, %add38
  %shr = lshr i32 %dest.0, 2
  %15 = shl i32 %dest.0, 7
  %16 = ashr i32 %15, 9
  %and46 = and i32 %16, 1069547520
  %and47 = and i32 %shr, 4128768
  %or48 = or disjoint i32 %and46, %and47
  %or49 = lshr i32 %and46, 24
  %17 = trunc nuw nsw i32 %or49 to i8
  %conv51 = or disjoint i8 %17, 64
  store i8 %conv51, ptr %arrayidx, align 1
  %shr54 = lshr exact i32 %or48, 16
  %conv55 = trunc i32 %shr54 to i8
  store i8 %conv55, ptr %arrayidx23, align 1
  %shr58 = lshr i32 %dest.0, 10
  %conv59 = trunc i32 %shr58 to i8
  store i8 %conv59, ptr %arrayidx27, align 1
  %conv62 = trunc i32 %shr to i8
  store i8 %conv62, ptr %arrayidx32, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true, %land.lhs.true12, %if.then
  %add = add i64 %add106, 4
  %cmp.not = icmp ugt i64 %add, %size
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %for.inc.us, %entry
  %i.0.lcssa = phi i64 [ 0, %entry ], [ %add106.us, %for.inc.us ], [ %add106, %for.inc ]
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
