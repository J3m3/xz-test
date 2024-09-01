; ModuleID = 'liblzma/check/crc32_fast.c'
source_filename = "liblzma/check/crc32_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lzma_crc32_table = external local_unnamed_addr constant [8 x [256 x i32]], align 16

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @lzma_crc32(ptr noundef %buf, i64 noundef %size, i32 noundef %crc) local_unnamed_addr #0 {
entry:
  %not = xor i32 %crc, -1
  %cmp = icmp ugt i64 %size, 8
  br i1 %cmp, label %while.cond.preheader, label %if.end

while.cond.preheader:                             ; preds = %entry
  %0 = ptrtoint ptr %buf to i64
  %and89 = and i64 %0, 7
  %tobool.not90 = icmp eq i64 %and89, 0
  br i1 %tobool.not90, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond.preheader
  %incdec.ptr = getelementptr inbounds i8, ptr %buf, i64 1
  %1 = load i8, ptr %buf, align 1
  %conv = zext i8 %1 to i32
  %and1 = and i32 %not, 255
  %xor = xor i32 %and1, %conv
  %idxprom = zext nneg i32 %xor to i64
  %arrayidx = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  %shr = lshr i32 %not, 8
  %xor2 = xor i32 %2, %shr
  %dec = add i64 %size, -1
  %3 = ptrtoint ptr %incdec.ptr to i64
  %and = and i64 %3, 7
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %while.end, label %while.body.1

while.body.1:                                     ; preds = %while.body
  %incdec.ptr.1 = getelementptr inbounds i8, ptr %buf, i64 2
  %4 = load i8, ptr %incdec.ptr, align 1
  %conv.1 = zext i8 %4 to i32
  %and1.1 = and i32 %xor2, 255
  %xor.1 = xor i32 %and1.1, %conv.1
  %idxprom.1 = zext nneg i32 %xor.1 to i64
  %arrayidx.1 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %idxprom.1
  %5 = load i32, ptr %arrayidx.1, align 4
  %shr.1 = lshr i32 %xor2, 8
  %xor2.1 = xor i32 %5, %shr.1
  %dec.1 = add i64 %size, -2
  %6 = ptrtoint ptr %incdec.ptr.1 to i64
  %and.1 = and i64 %6, 7
  %tobool.not.1 = icmp eq i64 %and.1, 0
  br i1 %tobool.not.1, label %while.end, label %while.body.2

while.body.2:                                     ; preds = %while.body.1
  %incdec.ptr.2 = getelementptr inbounds i8, ptr %buf, i64 3
  %7 = load i8, ptr %incdec.ptr.1, align 1
  %conv.2 = zext i8 %7 to i32
  %and1.2 = and i32 %xor2.1, 255
  %xor.2 = xor i32 %and1.2, %conv.2
  %idxprom.2 = zext nneg i32 %xor.2 to i64
  %arrayidx.2 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %idxprom.2
  %8 = load i32, ptr %arrayidx.2, align 4
  %shr.2 = lshr i32 %xor2.1, 8
  %xor2.2 = xor i32 %8, %shr.2
  %dec.2 = add i64 %size, -3
  %9 = ptrtoint ptr %incdec.ptr.2 to i64
  %and.2 = and i64 %9, 7
  %tobool.not.2 = icmp eq i64 %and.2, 0
  br i1 %tobool.not.2, label %while.end, label %while.body.3

while.body.3:                                     ; preds = %while.body.2
  %incdec.ptr.3 = getelementptr inbounds i8, ptr %buf, i64 4
  %10 = load i8, ptr %incdec.ptr.2, align 1
  %conv.3 = zext i8 %10 to i32
  %and1.3 = and i32 %xor2.2, 255
  %xor.3 = xor i32 %and1.3, %conv.3
  %idxprom.3 = zext nneg i32 %xor.3 to i64
  %arrayidx.3 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %idxprom.3
  %11 = load i32, ptr %arrayidx.3, align 4
  %shr.3 = lshr i32 %xor2.2, 8
  %xor2.3 = xor i32 %11, %shr.3
  %dec.3 = add i64 %size, -4
  %12 = ptrtoint ptr %incdec.ptr.3 to i64
  %and.3 = and i64 %12, 7
  %tobool.not.3 = icmp eq i64 %and.3, 0
  br i1 %tobool.not.3, label %while.end, label %while.body.4

while.body.4:                                     ; preds = %while.body.3
  %incdec.ptr.4 = getelementptr inbounds i8, ptr %buf, i64 5
  %13 = load i8, ptr %incdec.ptr.3, align 1
  %conv.4 = zext i8 %13 to i32
  %and1.4 = and i32 %xor2.3, 255
  %xor.4 = xor i32 %and1.4, %conv.4
  %idxprom.4 = zext nneg i32 %xor.4 to i64
  %arrayidx.4 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %idxprom.4
  %14 = load i32, ptr %arrayidx.4, align 4
  %shr.4 = lshr i32 %xor2.3, 8
  %xor2.4 = xor i32 %14, %shr.4
  %dec.4 = add i64 %size, -5
  %15 = ptrtoint ptr %incdec.ptr.4 to i64
  %and.4 = and i64 %15, 7
  %tobool.not.4 = icmp eq i64 %and.4, 0
  br i1 %tobool.not.4, label %while.end, label %while.body.5

while.body.5:                                     ; preds = %while.body.4
  %incdec.ptr.5 = getelementptr inbounds i8, ptr %buf, i64 6
  %16 = load i8, ptr %incdec.ptr.4, align 1
  %conv.5 = zext i8 %16 to i32
  %and1.5 = and i32 %xor2.4, 255
  %xor.5 = xor i32 %and1.5, %conv.5
  %idxprom.5 = zext nneg i32 %xor.5 to i64
  %arrayidx.5 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %idxprom.5
  %17 = load i32, ptr %arrayidx.5, align 4
  %shr.5 = lshr i32 %xor2.4, 8
  %xor2.5 = xor i32 %17, %shr.5
  %dec.5 = add i64 %size, -6
  %18 = ptrtoint ptr %incdec.ptr.5 to i64
  %and.5 = and i64 %18, 7
  %tobool.not.5 = icmp eq i64 %and.5, 0
  br i1 %tobool.not.5, label %while.end, label %while.body.6

while.body.6:                                     ; preds = %while.body.5
  %incdec.ptr.6 = getelementptr inbounds i8, ptr %buf, i64 7
  %19 = load i8, ptr %incdec.ptr.5, align 1
  %conv.6 = zext i8 %19 to i32
  %and1.6 = and i32 %xor2.5, 255
  %xor.6 = xor i32 %and1.6, %conv.6
  %idxprom.6 = zext nneg i32 %xor.6 to i64
  %arrayidx.6 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %idxprom.6
  %20 = load i32, ptr %arrayidx.6, align 4
  %shr.6 = lshr i32 %xor2.5, 8
  %xor2.6 = xor i32 %20, %shr.6
  %dec.6 = add i64 %size, -7
  %21 = ptrtoint ptr %incdec.ptr.6 to i64
  %and.6 = and i64 %21, 7
  %tobool.not.6 = icmp eq i64 %and.6, 0
  br i1 %tobool.not.6, label %while.end, label %while.body.7

while.body.7:                                     ; preds = %while.body.6
  %incdec.ptr.7 = getelementptr inbounds i8, ptr %buf, i64 8
  %22 = load i8, ptr %incdec.ptr.6, align 1
  %conv.7 = zext i8 %22 to i32
  %and1.7 = and i32 %xor2.6, 255
  %xor.7 = xor i32 %and1.7, %conv.7
  %idxprom.7 = zext nneg i32 %xor.7 to i64
  %arrayidx.7 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %idxprom.7
  %23 = load i32, ptr %arrayidx.7, align 4
  %shr.7 = lshr i32 %xor2.6, 8
  %xor2.7 = xor i32 %23, %shr.7
  %dec.7 = add i64 %size, -8
  br label %while.end

while.end:                                        ; preds = %while.body, %while.body.1, %while.body.2, %while.body.3, %while.body.4, %while.body.5, %while.body.6, %while.body.7, %while.cond.preheader
  %crc.addr.0.lcssa = phi i32 [ %not, %while.cond.preheader ], [ %xor2, %while.body ], [ %xor2.1, %while.body.1 ], [ %xor2.2, %while.body.2 ], [ %xor2.3, %while.body.3 ], [ %xor2.4, %while.body.4 ], [ %xor2.5, %while.body.5 ], [ %xor2.6, %while.body.6 ], [ %xor2.7, %while.body.7 ]
  %size.addr.0.lcssa = phi i64 [ %size, %while.cond.preheader ], [ %dec, %while.body ], [ %dec.1, %while.body.1 ], [ %dec.2, %while.body.2 ], [ %dec.3, %while.body.3 ], [ %dec.4, %while.body.4 ], [ %dec.5, %while.body.5 ], [ %dec.6, %while.body.6 ], [ %dec.7, %while.body.7 ]
  %buf.addr.0.lcssa = phi ptr [ %buf, %while.cond.preheader ], [ %incdec.ptr, %while.body ], [ %incdec.ptr.1, %while.body.1 ], [ %incdec.ptr.2, %while.body.2 ], [ %incdec.ptr.3, %while.body.3 ], [ %incdec.ptr.4, %while.body.4 ], [ %incdec.ptr.5, %while.body.5 ], [ %incdec.ptr.6, %while.body.6 ], [ %incdec.ptr.7, %while.body.7 ]
  %and3 = and i64 %size.addr.0.lcssa, -8
  %add.ptr = getelementptr inbounds i8, ptr %buf.addr.0.lcssa, i64 %and3
  %and4 = and i64 %size.addr.0.lcssa, 7
  %cmp696 = icmp sgt i64 %and3, 0
  br i1 %cmp696, label %while.body8, label %if.end

while.body8:                                      ; preds = %while.end, %while.body8
  %buf.addr.198 = phi ptr [ %add.ptr28, %while.body8 ], [ %buf.addr.0.lcssa, %while.end ]
  %crc.addr.197 = phi i32 [ %xor46, %while.body8 ], [ %crc.addr.0.lcssa, %while.end ]
  %24 = load i32, ptr %buf.addr.198, align 4
  %xor9 = xor i32 %24, %crc.addr.197
  %add.ptr10 = getelementptr inbounds i8, ptr %buf.addr.198, i64 4
  %and11 = and i32 %xor9, 255
  %idxprom12 = zext nneg i32 %and11 to i64
  %arrayidx13 = getelementptr inbounds [256 x i32], ptr getelementptr inbounds (i8, ptr @lzma_crc32_table, i64 7168), i64 0, i64 %idxprom12
  %25 = load i32, ptr %arrayidx13, align 4
  %shr14 = lshr i32 %xor9, 8
  %and15 = and i32 %shr14, 255
  %idxprom16 = zext nneg i32 %and15 to i64
  %arrayidx17 = getelementptr inbounds [256 x i32], ptr getelementptr inbounds (i8, ptr @lzma_crc32_table, i64 6144), i64 0, i64 %idxprom16
  %26 = load i32, ptr %arrayidx17, align 4
  %shr19 = lshr i32 %xor9, 16
  %and20 = and i32 %shr19, 255
  %idxprom21 = zext nneg i32 %and20 to i64
  %arrayidx22 = getelementptr inbounds [256 x i32], ptr getelementptr inbounds (i8, ptr @lzma_crc32_table, i64 5120), i64 0, i64 %idxprom21
  %27 = load i32, ptr %arrayidx22, align 4
  %shr24 = lshr i32 %xor9, 24
  %idxprom25 = zext nneg i32 %shr24 to i64
  %arrayidx26 = getelementptr inbounds [256 x i32], ptr getelementptr inbounds (i8, ptr @lzma_crc32_table, i64 4096), i64 0, i64 %idxprom25
  %28 = load i32, ptr %arrayidx26, align 4
  %29 = load i32, ptr %add.ptr10, align 4
  %add.ptr28 = getelementptr inbounds i8, ptr %buf.addr.198, i64 8
  %and29 = and i32 %29, 255
  %idxprom30 = zext nneg i32 %and29 to i64
  %arrayidx31 = getelementptr inbounds [256 x i32], ptr getelementptr inbounds (i8, ptr @lzma_crc32_table, i64 3072), i64 0, i64 %idxprom30
  %30 = load i32, ptr %arrayidx31, align 4
  %shr32 = lshr i32 %29, 8
  %and33 = and i32 %shr32, 255
  %idxprom34 = zext nneg i32 %and33 to i64
  %arrayidx35 = getelementptr inbounds [256 x i32], ptr getelementptr inbounds (i8, ptr @lzma_crc32_table, i64 2048), i64 0, i64 %idxprom34
  %31 = load i32, ptr %arrayidx35, align 4
  %shr38 = lshr i32 %29, 16
  %and39 = and i32 %shr38, 255
  %idxprom40 = zext nneg i32 %and39 to i64
  %arrayidx41 = getelementptr inbounds [256 x i32], ptr getelementptr inbounds (i8, ptr @lzma_crc32_table, i64 1024), i64 0, i64 %idxprom40
  %32 = load i32, ptr %arrayidx41, align 4
  %shr43 = lshr i32 %29, 24
  %idxprom44 = zext nneg i32 %shr43 to i64
  %arrayidx45 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %idxprom44
  %33 = load i32, ptr %arrayidx45, align 4
  %xor36 = xor i32 %26, %25
  %xor18 = xor i32 %xor36, %27
  %xor23 = xor i32 %xor18, %28
  %xor27 = xor i32 %xor23, %30
  %xor37 = xor i32 %xor27, %31
  %xor42 = xor i32 %xor37, %32
  %xor46 = xor i32 %xor42, %33
  %cmp6 = icmp ult ptr %add.ptr28, %add.ptr
  br i1 %cmp6, label %while.body8, label %if.end

if.end:                                           ; preds = %while.body8, %while.end, %entry
  %crc.addr.2 = phi i32 [ %not, %entry ], [ %crc.addr.0.lcssa, %while.end ], [ %xor46, %while.body8 ]
  %size.addr.1 = phi i64 [ %size, %entry ], [ %and4, %while.end ], [ %and4, %while.body8 ]
  %buf.addr.2 = phi ptr [ %buf, %entry ], [ %buf.addr.0.lcssa, %while.end ], [ %add.ptr28, %while.body8 ]
  %cmp50.not101 = icmp eq i64 %size.addr.1, 0
  br i1 %cmp50.not101, label %while.end61, label %while.body52.preheader

while.body52.preheader:                           ; preds = %if.end
  %xtraiter = and i64 %size.addr.1, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %while.body52.prol.loopexit, label %while.body52.prol

while.body52.prol:                                ; preds = %while.body52.preheader
  %dec49.prol = add nsw i64 %size.addr.1, -1
  %incdec.ptr53.prol = getelementptr inbounds i8, ptr %buf.addr.2, i64 1
  %34 = load i8, ptr %buf.addr.2, align 1
  %conv54.prol = zext i8 %34 to i32
  %and55.prol = and i32 %crc.addr.2, 255
  %xor56.prol = xor i32 %and55.prol, %conv54.prol
  %idxprom57.prol = zext nneg i32 %xor56.prol to i64
  %arrayidx58.prol = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %idxprom57.prol
  %35 = load i32, ptr %arrayidx58.prol, align 4
  %shr59.prol = lshr i32 %crc.addr.2, 8
  %xor60.prol = xor i32 %35, %shr59.prol
  br label %while.body52.prol.loopexit

while.body52.prol.loopexit:                       ; preds = %while.body52.prol, %while.body52.preheader
  %xor60.lcssa.unr = phi i32 [ poison, %while.body52.preheader ], [ %xor60.prol, %while.body52.prol ]
  %buf.addr.3104.unr = phi ptr [ %buf.addr.2, %while.body52.preheader ], [ %incdec.ptr53.prol, %while.body52.prol ]
  %size.addr.2103.unr = phi i64 [ %size.addr.1, %while.body52.preheader ], [ %dec49.prol, %while.body52.prol ]
  %crc.addr.3102.unr = phi i32 [ %crc.addr.2, %while.body52.preheader ], [ %xor60.prol, %while.body52.prol ]
  %36 = icmp eq i64 %size.addr.1, 1
  br i1 %36, label %while.end61, label %while.body52

while.body52:                                     ; preds = %while.body52.prol.loopexit, %while.body52
  %buf.addr.3104 = phi ptr [ %incdec.ptr53.1, %while.body52 ], [ %buf.addr.3104.unr, %while.body52.prol.loopexit ]
  %size.addr.2103 = phi i64 [ %dec49.1, %while.body52 ], [ %size.addr.2103.unr, %while.body52.prol.loopexit ]
  %crc.addr.3102 = phi i32 [ %xor60.1, %while.body52 ], [ %crc.addr.3102.unr, %while.body52.prol.loopexit ]
  %incdec.ptr53 = getelementptr inbounds i8, ptr %buf.addr.3104, i64 1
  %37 = load i8, ptr %buf.addr.3104, align 1
  %conv54 = zext i8 %37 to i32
  %and55 = and i32 %crc.addr.3102, 255
  %xor56 = xor i32 %and55, %conv54
  %idxprom57 = zext nneg i32 %xor56 to i64
  %arrayidx58 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %idxprom57
  %38 = load i32, ptr %arrayidx58, align 4
  %shr59 = lshr i32 %crc.addr.3102, 8
  %xor60 = xor i32 %38, %shr59
  %dec49.1 = add nsw i64 %size.addr.2103, -2
  %incdec.ptr53.1 = getelementptr inbounds i8, ptr %buf.addr.3104, i64 2
  %39 = load i8, ptr %incdec.ptr53, align 1
  %conv54.1 = zext i8 %39 to i32
  %and55.1 = and i32 %xor60, 255
  %xor56.1 = xor i32 %and55.1, %conv54.1
  %idxprom57.1 = zext nneg i32 %xor56.1 to i64
  %arrayidx58.1 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %idxprom57.1
  %40 = load i32, ptr %arrayidx58.1, align 4
  %shr59.1 = lshr i32 %xor60, 8
  %xor60.1 = xor i32 %40, %shr59.1
  %cmp50.not.1 = icmp eq i64 %dec49.1, 0
  br i1 %cmp50.not.1, label %while.end61, label %while.body52

while.end61:                                      ; preds = %while.body52.prol.loopexit, %while.body52, %if.end
  %crc.addr.3.lcssa = phi i32 [ %crc.addr.2, %if.end ], [ %xor60.lcssa.unr, %while.body52.prol.loopexit ], [ %xor60.1, %while.body52 ]
  %not62 = xor i32 %crc.addr.3.lcssa, -1
  ret i32 %not62
}

attributes #0 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
