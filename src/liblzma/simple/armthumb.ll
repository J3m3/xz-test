; ModuleID = 'liblzma/simple/armthumb.c'
source_filename = "liblzma/simple/armthumb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_simple_armthumb_encoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters) local_unnamed_addr #0 {
entry:
  %call.i = tail call i32 @lzma_simple_coder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters, ptr noundef nonnull @armthumb_code, i64 noundef 0, i64 noundef 4, i32 noundef 2, i1 noundef zeroext true) #3
  ret i32 %call.i
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_simple_armthumb_decoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters) local_unnamed_addr #0 {
entry:
  %call.i = tail call i32 @lzma_simple_coder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters, ptr noundef nonnull @armthumb_code, i64 noundef 0, i64 noundef 4, i32 noundef 2, i1 noundef zeroext false) #3
  ret i32 %call.i
}

declare i32 @lzma_simple_coder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal i64 @armthumb_code(ptr nocapture readnone %simple, i32 noundef %now_pos, i1 noundef zeroext %is_encoder, ptr nocapture noundef %buffer, i64 noundef %size) #2 {
entry:
  %cmp.not90 = icmp ult i64 %size, 4
  br i1 %cmp.not90, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %add31 = add i32 %now_pos, 4
  br i1 %is_encoder, label %for.body.us, label %for.body

for.body.us:                                      ; preds = %for.body.lr.ph, %for.inc.us
  %i.091.us = phi i64 [ %add58.us, %for.inc.us ], [ 0, %for.body.lr.ph ]
  %0 = getelementptr i8, ptr %buffer, i64 %i.091.us
  %arrayidx.us = getelementptr i8, ptr %0, i64 1
  %1 = load i8, ptr %arrayidx.us, align 1
  %conv.us = zext i8 %1 to i32
  %and.us = and i32 %conv.us, 248
  %cmp2.us = icmp eq i32 %and.us, 240
  br i1 %cmp2.us, label %land.lhs.true.us, label %for.inc.us

land.lhs.true.us:                                 ; preds = %for.body.us
  %arrayidx5.us = getelementptr i8, ptr %0, i64 3
  %2 = load i8, ptr %arrayidx5.us, align 1
  %conv6.us = zext i8 %2 to i32
  %and7.us = and i32 %conv6.us, 248
  %cmp8.us = icmp eq i32 %and7.us, 248
  br i1 %cmp8.us, label %if.then.us, label %for.inc.us

if.then.us:                                       ; preds = %land.lhs.true.us
  %and13.us = shl nuw nsw i32 %conv.us, 19
  %shl.us = and i32 %and13.us, 3670016
  %3 = load i8, ptr %0, align 1
  %conv16.us = zext i8 %3 to i32
  %shl17.us = shl nuw nsw i32 %conv16.us, 11
  %or.us = or disjoint i32 %shl17.us, %shl.us
  %and21.us = shl nuw nsw i32 %conv6.us, 8
  %shl22.us = and i32 %and21.us, 1792
  %or23.us = or disjoint i32 %or.us, %shl22.us
  %add24.us = add i64 %i.091.us, 2
  %arrayidx25.us = getelementptr inbounds i8, ptr %buffer, i64 %add24.us
  %4 = load i8, ptr %arrayidx25.us, align 1
  %conv26.us = zext i8 %4 to i32
  %or27.us = or disjoint i32 %or23.us, %conv26.us
  %shl28.us = shl nuw nsw i32 %or27.us, 1
  %conv30.us = trunc i64 %i.091.us to i32
  %add32.us = add i32 %add31, %conv30.us
  %add33.us = add i32 %add32.us, %shl28.us
  %shr.us = lshr i32 %add33.us, 1
  %shr37.us = lshr i32 %add33.us, 20
  %5 = trunc i32 %shr37.us to i8
  %6 = and i8 %5, 7
  %conv40.us = or disjoint i8 %6, -16
  store i8 %conv40.us, ptr %arrayidx.us, align 1
  %shr43.us = lshr i32 %add33.us, 12
  %conv44.us = trunc i32 %shr43.us to i8
  store i8 %conv44.us, ptr %0, align 1
  %shr47.us = lshr i32 %add33.us, 9
  %7 = trunc i32 %shr47.us to i8
  %conv50.us = or i8 %7, -8
  store i8 %conv50.us, ptr %arrayidx5.us, align 1
  %conv53.us = trunc i32 %shr.us to i8
  store i8 %conv53.us, ptr %arrayidx25.us, align 1
  br label %for.inc.us

for.inc.us:                                       ; preds = %if.then.us, %land.lhs.true.us, %for.body.us
  %i.1.us = phi i64 [ %add24.us, %if.then.us ], [ %i.091.us, %land.lhs.true.us ], [ %i.091.us, %for.body.us ]
  %add58.us = add i64 %i.1.us, 2
  %add.us = add i64 %i.1.us, 6
  %cmp.not.us = icmp ugt i64 %add.us, %size
  br i1 %cmp.not.us, label %for.end, label %for.body.us

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.091 = phi i64 [ %add58, %for.inc ], [ 0, %for.body.lr.ph ]
  %8 = getelementptr i8, ptr %buffer, i64 %i.091
  %arrayidx = getelementptr i8, ptr %8, i64 1
  %9 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %9 to i32
  %and = and i32 %conv, 248
  %cmp2 = icmp eq i32 %and, 240
  br i1 %cmp2, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %arrayidx5 = getelementptr i8, ptr %8, i64 3
  %10 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %10 to i32
  %and7 = and i32 %conv6, 248
  %cmp8 = icmp eq i32 %and7, 248
  br i1 %cmp8, label %if.then, label %for.inc

if.then:                                          ; preds = %land.lhs.true
  %and13 = shl nuw nsw i32 %conv, 19
  %shl = and i32 %and13, 3670016
  %11 = load i8, ptr %8, align 1
  %conv16 = zext i8 %11 to i32
  %shl17 = shl nuw nsw i32 %conv16, 11
  %or = or disjoint i32 %shl17, %shl
  %and21 = shl nuw nsw i32 %conv6, 8
  %shl22 = and i32 %and21, 1792
  %or23 = or disjoint i32 %or, %shl22
  %add24 = add i64 %i.091, 2
  %arrayidx25 = getelementptr inbounds i8, ptr %buffer, i64 %add24
  %12 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %12 to i32
  %or27 = or disjoint i32 %or23, %conv26
  %shl28 = shl nuw nsw i32 %or27, 1
  %conv34 = trunc i64 %i.091 to i32
  %13 = add i32 %conv34, %now_pos
  %reass.sub = sub i32 %shl28, %13
  %sub = add i32 %reass.sub, -4
  %shr = lshr i32 %sub, 1
  %shr37 = lshr i32 %sub, 20
  %14 = trunc i32 %shr37 to i8
  %15 = and i8 %14, 7
  %conv40 = or disjoint i8 %15, -16
  store i8 %conv40, ptr %arrayidx, align 1
  %shr43 = lshr i32 %sub, 12
  %conv44 = trunc i32 %shr43 to i8
  store i8 %conv44, ptr %8, align 1
  %shr47 = lshr i32 %sub, 9
  %16 = trunc i32 %shr47 to i8
  %conv50 = or i8 %16, -8
  store i8 %conv50, ptr %arrayidx5, align 1
  %conv53 = trunc i32 %shr to i8
  store i8 %conv53, ptr %arrayidx25, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true, %if.then
  %i.1 = phi i64 [ %add24, %if.then ], [ %i.091, %land.lhs.true ], [ %i.091, %for.body ]
  %add58 = add i64 %i.1, 2
  %add = add i64 %i.1, 6
  %cmp.not = icmp ugt i64 %add, %size
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %for.inc.us, %entry
  %i.0.lcssa = phi i64 [ 0, %entry ], [ %add58.us, %for.inc.us ], [ %add58, %for.inc ]
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
