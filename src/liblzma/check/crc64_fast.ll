; ModuleID = 'liblzma/check/crc64_fast.c'
source_filename = "liblzma/check/crc64_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lzma_crc64_table = external local_unnamed_addr constant [4 x [256 x i64]], align 16

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @lzma_crc64(ptr noundef %buf, i64 noundef %size, i64 noundef %crc) local_unnamed_addr #0 {
entry:
  %not = xor i64 %crc, -1
  %cmp = icmp ugt i64 %size, 4
  br i1 %cmp, label %while.cond.preheader, label %if.end

while.cond.preheader:                             ; preds = %entry
  %0 = ptrtoint ptr %buf to i64
  %and66 = and i64 %0, 3
  %tobool.not67 = icmp eq i64 %and66, 0
  br i1 %tobool.not67, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond.preheader
  %incdec.ptr = getelementptr inbounds i8, ptr %buf, i64 1
  %1 = load i8, ptr %buf, align 1
  %conv = zext i8 %1 to i64
  %and1 = and i64 %not, 255
  %xor = xor i64 %and1, %conv
  %arrayidx = getelementptr inbounds [256 x i64], ptr @lzma_crc64_table, i64 0, i64 %xor
  %2 = load i64, ptr %arrayidx, align 8
  %shr = lshr i64 %not, 8
  %xor2 = xor i64 %2, %shr
  %dec = add i64 %size, -1
  %3 = ptrtoint ptr %incdec.ptr to i64
  %and = and i64 %3, 3
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %while.end, label %while.body.1

while.body.1:                                     ; preds = %while.body
  %incdec.ptr.1 = getelementptr inbounds i8, ptr %buf, i64 2
  %4 = load i8, ptr %incdec.ptr, align 1
  %conv.1 = zext i8 %4 to i64
  %and1.1 = and i64 %xor2, 255
  %xor.1 = xor i64 %and1.1, %conv.1
  %arrayidx.1 = getelementptr inbounds [256 x i64], ptr @lzma_crc64_table, i64 0, i64 %xor.1
  %5 = load i64, ptr %arrayidx.1, align 8
  %shr.1 = lshr i64 %xor2, 8
  %xor2.1 = xor i64 %5, %shr.1
  %dec.1 = add i64 %size, -2
  %6 = ptrtoint ptr %incdec.ptr.1 to i64
  %and.1 = and i64 %6, 3
  %tobool.not.1 = icmp eq i64 %and.1, 0
  br i1 %tobool.not.1, label %while.end, label %while.body.2

while.body.2:                                     ; preds = %while.body.1
  %incdec.ptr.2 = getelementptr inbounds i8, ptr %buf, i64 3
  %7 = load i8, ptr %incdec.ptr.1, align 1
  %conv.2 = zext i8 %7 to i64
  %and1.2 = and i64 %xor2.1, 255
  %xor.2 = xor i64 %and1.2, %conv.2
  %arrayidx.2 = getelementptr inbounds [256 x i64], ptr @lzma_crc64_table, i64 0, i64 %xor.2
  %8 = load i64, ptr %arrayidx.2, align 8
  %shr.2 = lshr i64 %xor2.1, 8
  %xor2.2 = xor i64 %8, %shr.2
  %dec.2 = add i64 %size, -3
  %9 = ptrtoint ptr %incdec.ptr.2 to i64
  %and.2 = and i64 %9, 3
  %tobool.not.2 = icmp eq i64 %and.2, 0
  br i1 %tobool.not.2, label %while.end, label %while.body.3

while.body.3:                                     ; preds = %while.body.2
  %incdec.ptr.3 = getelementptr inbounds i8, ptr %buf, i64 4
  %10 = load i8, ptr %incdec.ptr.2, align 1
  %conv.3 = zext i8 %10 to i64
  %and1.3 = and i64 %xor2.2, 255
  %xor.3 = xor i64 %and1.3, %conv.3
  %arrayidx.3 = getelementptr inbounds [256 x i64], ptr @lzma_crc64_table, i64 0, i64 %xor.3
  %11 = load i64, ptr %arrayidx.3, align 8
  %shr.3 = lshr i64 %xor2.2, 8
  %xor2.3 = xor i64 %11, %shr.3
  %dec.3 = add i64 %size, -4
  br label %while.end

while.end:                                        ; preds = %while.body, %while.body.1, %while.body.2, %while.body.3, %while.cond.preheader
  %crc.addr.0.lcssa = phi i64 [ %not, %while.cond.preheader ], [ %xor2, %while.body ], [ %xor2.1, %while.body.1 ], [ %xor2.2, %while.body.2 ], [ %xor2.3, %while.body.3 ]
  %size.addr.0.lcssa = phi i64 [ %size, %while.cond.preheader ], [ %dec, %while.body ], [ %dec.1, %while.body.1 ], [ %dec.2, %while.body.2 ], [ %dec.3, %while.body.3 ]
  %buf.addr.0.lcssa = phi ptr [ %buf, %while.cond.preheader ], [ %incdec.ptr, %while.body ], [ %incdec.ptr.1, %while.body.1 ], [ %incdec.ptr.2, %while.body.2 ], [ %incdec.ptr.3, %while.body.3 ]
  %and3 = and i64 %size.addr.0.lcssa, -4
  %add.ptr = getelementptr inbounds i8, ptr %buf.addr.0.lcssa, i64 %and3
  %and4 = and i64 %size.addr.0.lcssa, 3
  %cmp673 = icmp sgt i64 %and3, 0
  br i1 %cmp673, label %while.body8, label %if.end

while.body8:                                      ; preds = %while.end, %while.body8
  %buf.addr.175 = phi ptr [ %add.ptr12, %while.body8 ], [ %buf.addr.0.lcssa, %while.end ]
  %crc.addr.174 = phi i64 [ %xor30, %while.body8 ], [ %crc.addr.0.lcssa, %while.end ]
  %12 = load i32, ptr %buf.addr.175, align 4
  %13 = trunc i64 %crc.addr.174 to i32
  %conv11 = xor i32 %12, %13
  %add.ptr12 = getelementptr inbounds i8, ptr %buf.addr.175, i64 4
  %and13 = and i32 %conv11, 255
  %idxprom = zext nneg i32 %and13 to i64
  %arrayidx14 = getelementptr inbounds [256 x i64], ptr getelementptr inbounds (i8, ptr @lzma_crc64_table, i64 6144), i64 0, i64 %idxprom
  %14 = load i64, ptr %arrayidx14, align 8
  %shr15 = lshr i32 %conv11, 8
  %and16 = and i32 %shr15, 255
  %idxprom17 = zext nneg i32 %and16 to i64
  %arrayidx18 = getelementptr inbounds [256 x i64], ptr getelementptr inbounds (i8, ptr @lzma_crc64_table, i64 4096), i64 0, i64 %idxprom17
  %15 = load i64, ptr %arrayidx18, align 8
  %shr20 = lshr i64 %crc.addr.174, 32
  %shr22 = lshr i32 %conv11, 16
  %and23 = and i32 %shr22, 255
  %idxprom24 = zext nneg i32 %and23 to i64
  %arrayidx25 = getelementptr inbounds [256 x i64], ptr getelementptr inbounds (i8, ptr @lzma_crc64_table, i64 2048), i64 0, i64 %idxprom24
  %16 = load i64, ptr %arrayidx25, align 8
  %shr27 = lshr i32 %conv11, 24
  %idxprom28 = zext nneg i32 %shr27 to i64
  %arrayidx29 = getelementptr inbounds [256 x i64], ptr @lzma_crc64_table, i64 0, i64 %idxprom28
  %17 = load i64, ptr %arrayidx29, align 8
  %xor19 = xor i64 %14, %shr20
  %xor21 = xor i64 %xor19, %15
  %xor26 = xor i64 %xor21, %16
  %xor30 = xor i64 %xor26, %17
  %cmp6 = icmp ult ptr %add.ptr12, %add.ptr
  br i1 %cmp6, label %while.body8, label %if.end

if.end:                                           ; preds = %while.body8, %while.end, %entry
  %crc.addr.2 = phi i64 [ %not, %entry ], [ %crc.addr.0.lcssa, %while.end ], [ %xor30, %while.body8 ]
  %size.addr.1 = phi i64 [ %size, %entry ], [ %and4, %while.end ], [ %and4, %while.body8 ]
  %buf.addr.2 = phi ptr [ %buf, %entry ], [ %buf.addr.0.lcssa, %while.end ], [ %add.ptr12, %while.body8 ]
  %cmp34.not78 = icmp eq i64 %size.addr.1, 0
  br i1 %cmp34.not78, label %while.end44, label %while.body36

while.body36:                                     ; preds = %if.end
  %18 = load i8, ptr %buf.addr.2, align 1
  %conv38 = zext i8 %18 to i64
  %and39 = and i64 %crc.addr.2, 255
  %xor40 = xor i64 %and39, %conv38
  %arrayidx41 = getelementptr inbounds [256 x i64], ptr @lzma_crc64_table, i64 0, i64 %xor40
  %19 = load i64, ptr %arrayidx41, align 8
  %shr42 = lshr i64 %crc.addr.2, 8
  %xor43 = xor i64 %19, %shr42
  %cmp34.not = icmp eq i64 %size.addr.1, 1
  br i1 %cmp34.not, label %while.end44, label %while.body36.1

while.body36.1:                                   ; preds = %while.body36
  %incdec.ptr37 = getelementptr inbounds i8, ptr %buf.addr.2, i64 1
  %20 = load i8, ptr %incdec.ptr37, align 1
  %conv38.1 = zext i8 %20 to i64
  %and39.1 = and i64 %xor43, 255
  %xor40.1 = xor i64 %and39.1, %conv38.1
  %arrayidx41.1 = getelementptr inbounds [256 x i64], ptr @lzma_crc64_table, i64 0, i64 %xor40.1
  %21 = load i64, ptr %arrayidx41.1, align 8
  %shr42.1 = lshr i64 %xor43, 8
  %xor43.1 = xor i64 %21, %shr42.1
  %cmp34.not.1 = icmp eq i64 %size.addr.1, 2
  br i1 %cmp34.not.1, label %while.end44, label %while.body36.2

while.body36.2:                                   ; preds = %while.body36.1
  %incdec.ptr37.1 = getelementptr inbounds i8, ptr %buf.addr.2, i64 2
  %22 = load i8, ptr %incdec.ptr37.1, align 1
  %conv38.2 = zext i8 %22 to i64
  %and39.2 = and i64 %xor43.1, 255
  %xor40.2 = xor i64 %and39.2, %conv38.2
  %arrayidx41.2 = getelementptr inbounds [256 x i64], ptr @lzma_crc64_table, i64 0, i64 %xor40.2
  %23 = load i64, ptr %arrayidx41.2, align 8
  %shr42.2 = lshr i64 %xor43.1, 8
  %xor43.2 = xor i64 %23, %shr42.2
  %cmp34.not.2 = icmp eq i64 %size.addr.1, 3
  br i1 %cmp34.not.2, label %while.end44, label %while.body36.3

while.body36.3:                                   ; preds = %while.body36.2
  %incdec.ptr37.2 = getelementptr inbounds i8, ptr %buf.addr.2, i64 3
  %24 = load i8, ptr %incdec.ptr37.2, align 1
  %conv38.3 = zext i8 %24 to i64
  %and39.3 = and i64 %xor43.2, 255
  %xor40.3 = xor i64 %and39.3, %conv38.3
  %arrayidx41.3 = getelementptr inbounds [256 x i64], ptr @lzma_crc64_table, i64 0, i64 %xor40.3
  %25 = load i64, ptr %arrayidx41.3, align 8
  %shr42.3 = lshr i64 %xor43.2, 8
  %xor43.3 = xor i64 %25, %shr42.3
  %cmp34.not.3 = icmp eq i64 %size.addr.1, 4
  br i1 %cmp34.not.3, label %while.end44, label %while.body36.4

while.body36.4:                                   ; preds = %while.body36.3
  %incdec.ptr37.3 = getelementptr inbounds i8, ptr %buf.addr.2, i64 4
  %26 = load i8, ptr %incdec.ptr37.3, align 1
  %conv38.4 = zext i8 %26 to i64
  %and39.4 = and i64 %xor43.3, 255
  %xor40.4 = xor i64 %and39.4, %conv38.4
  %arrayidx41.4 = getelementptr inbounds [256 x i64], ptr @lzma_crc64_table, i64 0, i64 %xor40.4
  %27 = load i64, ptr %arrayidx41.4, align 8
  %shr42.4 = lshr i64 %xor43.3, 8
  %xor43.4 = xor i64 %27, %shr42.4
  %cmp34.not.4 = icmp eq i64 %size.addr.1, 5
  br i1 %cmp34.not.4, label %while.end44, label %while.body36.5

while.body36.5:                                   ; preds = %while.body36.4
  %incdec.ptr37.4 = getelementptr inbounds i8, ptr %buf.addr.2, i64 5
  %28 = load i8, ptr %incdec.ptr37.4, align 1
  %conv38.5 = zext i8 %28 to i64
  %and39.5 = and i64 %xor43.4, 255
  %xor40.5 = xor i64 %and39.5, %conv38.5
  %arrayidx41.5 = getelementptr inbounds [256 x i64], ptr @lzma_crc64_table, i64 0, i64 %xor40.5
  %29 = load i64, ptr %arrayidx41.5, align 8
  %shr42.5 = lshr i64 %xor43.4, 8
  %xor43.5 = xor i64 %29, %shr42.5
  %cmp34.not.5 = icmp eq i64 %size.addr.1, 6
  br i1 %cmp34.not.5, label %while.end44, label %while.body36.6

while.body36.6:                                   ; preds = %while.body36.5
  %incdec.ptr37.5 = getelementptr inbounds i8, ptr %buf.addr.2, i64 6
  %30 = load i8, ptr %incdec.ptr37.5, align 1
  %conv38.6 = zext i8 %30 to i64
  %and39.6 = and i64 %xor43.5, 255
  %xor40.6 = xor i64 %and39.6, %conv38.6
  %arrayidx41.6 = getelementptr inbounds [256 x i64], ptr @lzma_crc64_table, i64 0, i64 %xor40.6
  %31 = load i64, ptr %arrayidx41.6, align 8
  %shr42.6 = lshr i64 %xor43.5, 8
  %xor43.6 = xor i64 %31, %shr42.6
  br label %while.end44

while.end44:                                      ; preds = %while.body36, %while.body36.1, %while.body36.2, %while.body36.3, %while.body36.4, %while.body36.5, %while.body36.6, %if.end
  %crc.addr.3.lcssa = phi i64 [ %crc.addr.2, %if.end ], [ %xor43, %while.body36 ], [ %xor43.1, %while.body36.1 ], [ %xor43.2, %while.body36.2 ], [ %xor43.3, %while.body36.3 ], [ %xor43.4, %while.body36.4 ], [ %xor43.5, %while.body36.5 ], [ %xor43.6, %while.body36.6 ]
  %not45 = xor i64 %crc.addr.3.lcssa, -1
  ret i64 %not45
}

attributes #0 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
