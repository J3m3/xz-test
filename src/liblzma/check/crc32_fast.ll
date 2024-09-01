; ModuleID = 'liblzma/check/crc32_fast.c'
source_filename = "liblzma/check/crc32_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lzma_crc32_table = external local_unnamed_addr constant [8 x [256 x i32]], align 16

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @lzma_crc32(ptr noundef %buf, i64 noundef %size, i32 noundef %crc) local_unnamed_addr #0 !dbg !23 {
entry:
    #dbg_value(ptr %buf, !32, !DIExpression(), !41)
    #dbg_value(i64 %size, !33, !DIExpression(), !41)
    #dbg_value(i32 %crc, !34, !DIExpression(), !41)
  %not = xor i32 %crc, -1, !dbg !42
    #dbg_value(i32 %not, !34, !DIExpression(), !41)
  %cmp = icmp ugt i64 %size, 8, !dbg !43
  br i1 %cmp, label %while.cond.preheader, label %if.end, !dbg !44

while.cond.preheader:                             ; preds = %entry
    #dbg_value(ptr %buf, !32, !DIExpression(), !41)
    #dbg_value(i64 %size, !33, !DIExpression(), !41)
    #dbg_value(i32 %not, !34, !DIExpression(), !41)
  %0 = ptrtoint ptr %buf to i64, !dbg !45
  %and89 = and i64 %0, 7, !dbg !46
  %tobool.not90 = icmp eq i64 %and89, 0, !dbg !47
  br i1 %tobool.not90, label %while.end, label %while.body, !dbg !47

while.body:                                       ; preds = %while.cond.preheader
    #dbg_value(ptr %buf, !32, !DIExpression(), !41)
    #dbg_value(i64 %size, !33, !DIExpression(), !41)
    #dbg_value(i32 %not, !34, !DIExpression(), !41)
  %incdec.ptr = getelementptr inbounds i8, ptr %buf, i64 1, !dbg !48
    #dbg_value(ptr %incdec.ptr, !32, !DIExpression(), !41)
  %1 = load i8, ptr %buf, align 1, !dbg !50
  %conv = zext i8 %1 to i32, !dbg !50
  %and1 = and i32 %not, 255, !dbg !51
  %xor = xor i32 %and1, %conv, !dbg !52
  %idxprom = zext nneg i32 %xor to i64, !dbg !53
  %arrayidx = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %idxprom, !dbg !53
  %2 = load i32, ptr %arrayidx, align 4, !dbg !53
  %shr = lshr i32 %not, 8, !dbg !54
  %xor2 = xor i32 %2, %shr, !dbg !55
    #dbg_value(i32 %xor2, !34, !DIExpression(), !41)
  %dec = add i64 %size, -1, !dbg !56
    #dbg_value(i64 %dec, !33, !DIExpression(), !41)
  %3 = ptrtoint ptr %incdec.ptr to i64, !dbg !45
  %and = and i64 %3, 7, !dbg !46
  %tobool.not = icmp eq i64 %and, 0, !dbg !47
  br i1 %tobool.not, label %while.end, label %while.body.1, !dbg !47, !llvm.loop !57

while.body.1:                                     ; preds = %while.body
    #dbg_value(ptr %incdec.ptr, !32, !DIExpression(), !41)
    #dbg_value(i64 %dec, !33, !DIExpression(), !41)
    #dbg_value(i32 %xor2, !34, !DIExpression(), !41)
  %incdec.ptr.1 = getelementptr inbounds i8, ptr %buf, i64 2, !dbg !48
    #dbg_value(ptr %incdec.ptr.1, !32, !DIExpression(), !41)
  %4 = load i8, ptr %incdec.ptr, align 1, !dbg !50
  %conv.1 = zext i8 %4 to i32, !dbg !50
  %and1.1 = and i32 %xor2, 255, !dbg !51
  %xor.1 = xor i32 %and1.1, %conv.1, !dbg !52
  %idxprom.1 = zext nneg i32 %xor.1 to i64, !dbg !53
  %arrayidx.1 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %idxprom.1, !dbg !53
  %5 = load i32, ptr %arrayidx.1, align 4, !dbg !53
  %shr.1 = lshr i32 %xor2, 8, !dbg !54
  %xor2.1 = xor i32 %5, %shr.1, !dbg !55
    #dbg_value(i32 %xor2.1, !34, !DIExpression(), !41)
  %dec.1 = add i64 %size, -2, !dbg !56
    #dbg_value(i64 %dec.1, !33, !DIExpression(), !41)
  %6 = ptrtoint ptr %incdec.ptr.1 to i64, !dbg !45
  %and.1 = and i64 %6, 7, !dbg !46
  %tobool.not.1 = icmp eq i64 %and.1, 0, !dbg !47
  br i1 %tobool.not.1, label %while.end, label %while.body.2, !dbg !47, !llvm.loop !57

while.body.2:                                     ; preds = %while.body.1
    #dbg_value(ptr %incdec.ptr.1, !32, !DIExpression(), !41)
    #dbg_value(i64 %dec.1, !33, !DIExpression(), !41)
    #dbg_value(i32 %xor2.1, !34, !DIExpression(), !41)
  %incdec.ptr.2 = getelementptr inbounds i8, ptr %buf, i64 3, !dbg !48
    #dbg_value(ptr %incdec.ptr.2, !32, !DIExpression(), !41)
  %7 = load i8, ptr %incdec.ptr.1, align 1, !dbg !50
  %conv.2 = zext i8 %7 to i32, !dbg !50
  %and1.2 = and i32 %xor2.1, 255, !dbg !51
  %xor.2 = xor i32 %and1.2, %conv.2, !dbg !52
  %idxprom.2 = zext nneg i32 %xor.2 to i64, !dbg !53
  %arrayidx.2 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %idxprom.2, !dbg !53
  %8 = load i32, ptr %arrayidx.2, align 4, !dbg !53
  %shr.2 = lshr i32 %xor2.1, 8, !dbg !54
  %xor2.2 = xor i32 %8, %shr.2, !dbg !55
    #dbg_value(i32 %xor2.2, !34, !DIExpression(), !41)
  %dec.2 = add i64 %size, -3, !dbg !56
    #dbg_value(i64 %dec.2, !33, !DIExpression(), !41)
  %9 = ptrtoint ptr %incdec.ptr.2 to i64, !dbg !45
  %and.2 = and i64 %9, 7, !dbg !46
  %tobool.not.2 = icmp eq i64 %and.2, 0, !dbg !47
  br i1 %tobool.not.2, label %while.end, label %while.body.3, !dbg !47, !llvm.loop !57

while.body.3:                                     ; preds = %while.body.2
    #dbg_value(ptr %incdec.ptr.2, !32, !DIExpression(), !41)
    #dbg_value(i64 %dec.2, !33, !DIExpression(), !41)
    #dbg_value(i32 %xor2.2, !34, !DIExpression(), !41)
  %incdec.ptr.3 = getelementptr inbounds i8, ptr %buf, i64 4, !dbg !48
    #dbg_value(ptr %incdec.ptr.3, !32, !DIExpression(), !41)
  %10 = load i8, ptr %incdec.ptr.2, align 1, !dbg !50
  %conv.3 = zext i8 %10 to i32, !dbg !50
  %and1.3 = and i32 %xor2.2, 255, !dbg !51
  %xor.3 = xor i32 %and1.3, %conv.3, !dbg !52
  %idxprom.3 = zext nneg i32 %xor.3 to i64, !dbg !53
  %arrayidx.3 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %idxprom.3, !dbg !53
  %11 = load i32, ptr %arrayidx.3, align 4, !dbg !53
  %shr.3 = lshr i32 %xor2.2, 8, !dbg !54
  %xor2.3 = xor i32 %11, %shr.3, !dbg !55
    #dbg_value(i32 %xor2.3, !34, !DIExpression(), !41)
  %dec.3 = add i64 %size, -4, !dbg !56
    #dbg_value(i64 %dec.3, !33, !DIExpression(), !41)
  %12 = ptrtoint ptr %incdec.ptr.3 to i64, !dbg !45
  %and.3 = and i64 %12, 7, !dbg !46
  %tobool.not.3 = icmp eq i64 %and.3, 0, !dbg !47
  br i1 %tobool.not.3, label %while.end, label %while.body.4, !dbg !47, !llvm.loop !57

while.body.4:                                     ; preds = %while.body.3
    #dbg_value(ptr %incdec.ptr.3, !32, !DIExpression(), !41)
    #dbg_value(i64 %dec.3, !33, !DIExpression(), !41)
    #dbg_value(i32 %xor2.3, !34, !DIExpression(), !41)
  %incdec.ptr.4 = getelementptr inbounds i8, ptr %buf, i64 5, !dbg !48
    #dbg_value(ptr %incdec.ptr.4, !32, !DIExpression(), !41)
  %13 = load i8, ptr %incdec.ptr.3, align 1, !dbg !50
  %conv.4 = zext i8 %13 to i32, !dbg !50
  %and1.4 = and i32 %xor2.3, 255, !dbg !51
  %xor.4 = xor i32 %and1.4, %conv.4, !dbg !52
  %idxprom.4 = zext nneg i32 %xor.4 to i64, !dbg !53
  %arrayidx.4 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %idxprom.4, !dbg !53
  %14 = load i32, ptr %arrayidx.4, align 4, !dbg !53
  %shr.4 = lshr i32 %xor2.3, 8, !dbg !54
  %xor2.4 = xor i32 %14, %shr.4, !dbg !55
    #dbg_value(i32 %xor2.4, !34, !DIExpression(), !41)
  %dec.4 = add i64 %size, -5, !dbg !56
    #dbg_value(i64 %dec.4, !33, !DIExpression(), !41)
  %15 = ptrtoint ptr %incdec.ptr.4 to i64, !dbg !45
  %and.4 = and i64 %15, 7, !dbg !46
  %tobool.not.4 = icmp eq i64 %and.4, 0, !dbg !47
  br i1 %tobool.not.4, label %while.end, label %while.body.5, !dbg !47, !llvm.loop !57

while.body.5:                                     ; preds = %while.body.4
    #dbg_value(ptr %incdec.ptr.4, !32, !DIExpression(), !41)
    #dbg_value(i64 %dec.4, !33, !DIExpression(), !41)
    #dbg_value(i32 %xor2.4, !34, !DIExpression(), !41)
  %incdec.ptr.5 = getelementptr inbounds i8, ptr %buf, i64 6, !dbg !48
    #dbg_value(ptr %incdec.ptr.5, !32, !DIExpression(), !41)
  %16 = load i8, ptr %incdec.ptr.4, align 1, !dbg !50
  %conv.5 = zext i8 %16 to i32, !dbg !50
  %and1.5 = and i32 %xor2.4, 255, !dbg !51
  %xor.5 = xor i32 %and1.5, %conv.5, !dbg !52
  %idxprom.5 = zext nneg i32 %xor.5 to i64, !dbg !53
  %arrayidx.5 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %idxprom.5, !dbg !53
  %17 = load i32, ptr %arrayidx.5, align 4, !dbg !53
  %shr.5 = lshr i32 %xor2.4, 8, !dbg !54
  %xor2.5 = xor i32 %17, %shr.5, !dbg !55
    #dbg_value(i32 %xor2.5, !34, !DIExpression(), !41)
  %dec.5 = add i64 %size, -6, !dbg !56
    #dbg_value(i64 %dec.5, !33, !DIExpression(), !41)
  %18 = ptrtoint ptr %incdec.ptr.5 to i64, !dbg !45
  %and.5 = and i64 %18, 7, !dbg !46
  %tobool.not.5 = icmp eq i64 %and.5, 0, !dbg !47
  br i1 %tobool.not.5, label %while.end, label %while.body.6, !dbg !47, !llvm.loop !57

while.body.6:                                     ; preds = %while.body.5
    #dbg_value(ptr %incdec.ptr.5, !32, !DIExpression(), !41)
    #dbg_value(i64 %dec.5, !33, !DIExpression(), !41)
    #dbg_value(i32 %xor2.5, !34, !DIExpression(), !41)
  %incdec.ptr.6 = getelementptr inbounds i8, ptr %buf, i64 7, !dbg !48
    #dbg_value(ptr %incdec.ptr.6, !32, !DIExpression(), !41)
  %19 = load i8, ptr %incdec.ptr.5, align 1, !dbg !50
  %conv.6 = zext i8 %19 to i32, !dbg !50
  %and1.6 = and i32 %xor2.5, 255, !dbg !51
  %xor.6 = xor i32 %and1.6, %conv.6, !dbg !52
  %idxprom.6 = zext nneg i32 %xor.6 to i64, !dbg !53
  %arrayidx.6 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %idxprom.6, !dbg !53
  %20 = load i32, ptr %arrayidx.6, align 4, !dbg !53
  %shr.6 = lshr i32 %xor2.5, 8, !dbg !54
  %xor2.6 = xor i32 %20, %shr.6, !dbg !55
    #dbg_value(i32 %xor2.6, !34, !DIExpression(), !41)
  %dec.6 = add i64 %size, -7, !dbg !56
    #dbg_value(i64 %dec.6, !33, !DIExpression(), !41)
  %21 = ptrtoint ptr %incdec.ptr.6 to i64, !dbg !45
  %and.6 = and i64 %21, 7, !dbg !46
  %tobool.not.6 = icmp eq i64 %and.6, 0, !dbg !47
  br i1 %tobool.not.6, label %while.end, label %while.body.7, !dbg !47, !llvm.loop !57

while.body.7:                                     ; preds = %while.body.6
    #dbg_value(ptr %incdec.ptr.6, !32, !DIExpression(), !41)
    #dbg_value(i64 %dec.6, !33, !DIExpression(), !41)
    #dbg_value(i32 %xor2.6, !34, !DIExpression(), !41)
  %incdec.ptr.7 = getelementptr inbounds i8, ptr %buf, i64 8, !dbg !48
    #dbg_value(ptr %incdec.ptr.7, !32, !DIExpression(), !41)
  %22 = load i8, ptr %incdec.ptr.6, align 1, !dbg !50
  %conv.7 = zext i8 %22 to i32, !dbg !50
  %and1.7 = and i32 %xor2.6, 255, !dbg !51
  %xor.7 = xor i32 %and1.7, %conv.7, !dbg !52
  %idxprom.7 = zext nneg i32 %xor.7 to i64, !dbg !53
  %arrayidx.7 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %idxprom.7, !dbg !53
  %23 = load i32, ptr %arrayidx.7, align 4, !dbg !53
  %shr.7 = lshr i32 %xor2.6, 8, !dbg !54
  %xor2.7 = xor i32 %23, %shr.7, !dbg !55
    #dbg_value(i32 %xor2.7, !34, !DIExpression(), !41)
  %dec.7 = add i64 %size, -8, !dbg !56
    #dbg_value(i64 %dec.7, !33, !DIExpression(), !41)
  br label %while.end

while.end:                                        ; preds = %while.body, %while.body.1, %while.body.2, %while.body.3, %while.body.4, %while.body.5, %while.body.6, %while.body.7, %while.cond.preheader
  %crc.addr.0.lcssa = phi i32 [ %not, %while.cond.preheader ], [ %xor2, %while.body ], [ %xor2.1, %while.body.1 ], [ %xor2.2, %while.body.2 ], [ %xor2.3, %while.body.3 ], [ %xor2.4, %while.body.4 ], [ %xor2.5, %while.body.5 ], [ %xor2.6, %while.body.6 ], [ %xor2.7, %while.body.7 ], !dbg !41
  %size.addr.0.lcssa = phi i64 [ %size, %while.cond.preheader ], [ %dec, %while.body ], [ %dec.1, %while.body.1 ], [ %dec.2, %while.body.2 ], [ %dec.3, %while.body.3 ], [ %dec.4, %while.body.4 ], [ %dec.5, %while.body.5 ], [ %dec.6, %while.body.6 ], [ %dec.7, %while.body.7 ]
  %buf.addr.0.lcssa = phi ptr [ %buf, %while.cond.preheader ], [ %incdec.ptr, %while.body ], [ %incdec.ptr.1, %while.body.1 ], [ %incdec.ptr.2, %while.body.2 ], [ %incdec.ptr.3, %while.body.3 ], [ %incdec.ptr.4, %while.body.4 ], [ %incdec.ptr.5, %while.body.5 ], [ %incdec.ptr.6, %while.body.6 ], [ %incdec.ptr.7, %while.body.7 ]
  %and3 = and i64 %size.addr.0.lcssa, -8, !dbg !59
  %add.ptr = getelementptr inbounds i8, ptr %buf.addr.0.lcssa, i64 %and3, !dbg !60
    #dbg_value(ptr %add.ptr, !35, !DIExpression(), !61)
  %and4 = and i64 %size.addr.0.lcssa, 7, !dbg !62
    #dbg_value(i64 %and4, !33, !DIExpression(), !41)
    #dbg_value(ptr %buf.addr.0.lcssa, !32, !DIExpression(), !41)
    #dbg_value(i32 %crc.addr.0.lcssa, !34, !DIExpression(), !41)
  %cmp696 = icmp sgt i64 %and3, 0, !dbg !63
  br i1 %cmp696, label %while.body8, label %if.end, !dbg !64

while.body8:                                      ; preds = %while.end, %while.body8
  %buf.addr.198 = phi ptr [ %add.ptr28, %while.body8 ], [ %buf.addr.0.lcssa, %while.end ]
  %crc.addr.197 = phi i32 [ %xor46, %while.body8 ], [ %crc.addr.0.lcssa, %while.end ]
    #dbg_value(ptr %buf.addr.198, !32, !DIExpression(), !41)
    #dbg_value(i32 %crc.addr.197, !34, !DIExpression(), !41)
  %24 = load i32, ptr %buf.addr.198, align 4, !dbg !65
  %xor9 = xor i32 %24, %crc.addr.197, !dbg !66
    #dbg_value(i32 %xor9, !34, !DIExpression(), !41)
  %add.ptr10 = getelementptr inbounds i8, ptr %buf.addr.198, i64 4, !dbg !67
    #dbg_value(ptr %add.ptr10, !32, !DIExpression(), !41)
  %and11 = and i32 %xor9, 255, !dbg !68
  %idxprom12 = zext nneg i32 %and11 to i64, !dbg !69
  %arrayidx13 = getelementptr inbounds [256 x i32], ptr getelementptr inbounds (i8, ptr @lzma_crc32_table, i64 7168), i64 0, i64 %idxprom12, !dbg !69
  %25 = load i32, ptr %arrayidx13, align 4, !dbg !69
  %shr14 = lshr i32 %xor9, 8, !dbg !70
  %and15 = and i32 %shr14, 255, !dbg !70
  %idxprom16 = zext nneg i32 %and15 to i64, !dbg !71
  %arrayidx17 = getelementptr inbounds [256 x i32], ptr getelementptr inbounds (i8, ptr @lzma_crc32_table, i64 6144), i64 0, i64 %idxprom16, !dbg !71
  %26 = load i32, ptr %arrayidx17, align 4, !dbg !71
  %shr19 = lshr i32 %xor9, 16, !dbg !72
  %and20 = and i32 %shr19, 255, !dbg !72
  %idxprom21 = zext nneg i32 %and20 to i64, !dbg !73
  %arrayidx22 = getelementptr inbounds [256 x i32], ptr getelementptr inbounds (i8, ptr @lzma_crc32_table, i64 5120), i64 0, i64 %idxprom21, !dbg !73
  %27 = load i32, ptr %arrayidx22, align 4, !dbg !73
  %shr24 = lshr i32 %xor9, 24, !dbg !74
  %idxprom25 = zext nneg i32 %shr24 to i64, !dbg !75
  %arrayidx26 = getelementptr inbounds [256 x i32], ptr getelementptr inbounds (i8, ptr @lzma_crc32_table, i64 4096), i64 0, i64 %idxprom25, !dbg !75
  %28 = load i32, ptr %arrayidx26, align 4, !dbg !75
    #dbg_value(i32 poison, !34, !DIExpression(), !41)
  %29 = load i32, ptr %add.ptr10, align 4, !dbg !76
    #dbg_value(i32 %29, !39, !DIExpression(), !77)
  %add.ptr28 = getelementptr inbounds i8, ptr %buf.addr.198, i64 8, !dbg !78
    #dbg_value(ptr %add.ptr28, !32, !DIExpression(), !41)
  %and29 = and i32 %29, 255, !dbg !79
  %idxprom30 = zext nneg i32 %and29 to i64, !dbg !80
  %arrayidx31 = getelementptr inbounds [256 x i32], ptr getelementptr inbounds (i8, ptr @lzma_crc32_table, i64 3072), i64 0, i64 %idxprom30, !dbg !80
  %30 = load i32, ptr %arrayidx31, align 4, !dbg !80
  %shr32 = lshr i32 %29, 8, !dbg !81
  %and33 = and i32 %shr32, 255, !dbg !81
  %idxprom34 = zext nneg i32 %and33 to i64, !dbg !82
  %arrayidx35 = getelementptr inbounds [256 x i32], ptr getelementptr inbounds (i8, ptr @lzma_crc32_table, i64 2048), i64 0, i64 %idxprom34, !dbg !82
  %31 = load i32, ptr %arrayidx35, align 4, !dbg !82
  %shr38 = lshr i32 %29, 16, !dbg !83
  %and39 = and i32 %shr38, 255, !dbg !83
  %idxprom40 = zext nneg i32 %and39 to i64, !dbg !84
  %arrayidx41 = getelementptr inbounds [256 x i32], ptr getelementptr inbounds (i8, ptr @lzma_crc32_table, i64 1024), i64 0, i64 %idxprom40, !dbg !84
  %32 = load i32, ptr %arrayidx41, align 4, !dbg !84
  %shr43 = lshr i32 %29, 24, !dbg !85
  %idxprom44 = zext nneg i32 %shr43 to i64, !dbg !86
  %arrayidx45 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %idxprom44, !dbg !86
  %33 = load i32, ptr %arrayidx45, align 4, !dbg !86
  %xor36 = xor i32 %26, %25, !dbg !87
  %xor18 = xor i32 %xor36, %27, !dbg !88
  %xor23 = xor i32 %xor18, %28, !dbg !89
  %xor27 = xor i32 %xor23, %30, !dbg !90
  %xor37 = xor i32 %xor27, %31, !dbg !91
  %xor42 = xor i32 %xor37, %32, !dbg !92
  %xor46 = xor i32 %xor42, %33, !dbg !93
    #dbg_value(i32 %xor46, !34, !DIExpression(), !41)
  %cmp6 = icmp ult ptr %add.ptr28, %add.ptr, !dbg !63
  br i1 %cmp6, label %while.body8, label %if.end, !dbg !64, !llvm.loop !94

if.end:                                           ; preds = %while.body8, %while.end, %entry
  %crc.addr.2 = phi i32 [ %not, %entry ], [ %crc.addr.0.lcssa, %while.end ], [ %xor46, %while.body8 ], !dbg !96
  %size.addr.1 = phi i64 [ %size, %entry ], [ %and4, %while.end ], [ %and4, %while.body8 ]
  %buf.addr.2 = phi ptr [ %buf, %entry ], [ %buf.addr.0.lcssa, %while.end ], [ %add.ptr28, %while.body8 ]
    #dbg_value(ptr %buf.addr.2, !32, !DIExpression(), !41)
    #dbg_value(i32 %crc.addr.2, !34, !DIExpression(), !41)
    #dbg_value(i64 %size.addr.1, !33, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !41)
  %cmp50.not101 = icmp eq i64 %size.addr.1, 0, !dbg !97
  br i1 %cmp50.not101, label %while.end61, label %while.body52.preheader, !dbg !98

while.body52.preheader:                           ; preds = %if.end
  %xtraiter = and i64 %size.addr.1, 1, !dbg !98
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !98
  br i1 %lcmp.mod.not, label %while.body52.prol.loopexit, label %while.body52.prol, !dbg !98

while.body52.prol:                                ; preds = %while.body52.preheader
    #dbg_value(ptr %buf.addr.2, !32, !DIExpression(), !41)
    #dbg_value(i64 %size.addr.1, !33, !DIExpression(), !41)
    #dbg_value(i32 %crc.addr.2, !34, !DIExpression(), !41)
  %dec49.prol = add nsw i64 %size.addr.1, -1, !dbg !99
    #dbg_value(i64 %dec49.prol, !33, !DIExpression(), !41)
  %incdec.ptr53.prol = getelementptr inbounds i8, ptr %buf.addr.2, i64 1, !dbg !100
    #dbg_value(ptr %incdec.ptr53.prol, !32, !DIExpression(), !41)
  %34 = load i8, ptr %buf.addr.2, align 1, !dbg !101
  %conv54.prol = zext i8 %34 to i32, !dbg !101
  %and55.prol = and i32 %crc.addr.2, 255, !dbg !102
  %xor56.prol = xor i32 %and55.prol, %conv54.prol, !dbg !103
  %idxprom57.prol = zext nneg i32 %xor56.prol to i64, !dbg !104
  %arrayidx58.prol = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %idxprom57.prol, !dbg !104
  %35 = load i32, ptr %arrayidx58.prol, align 4, !dbg !104
  %shr59.prol = lshr i32 %crc.addr.2, 8, !dbg !105
  %xor60.prol = xor i32 %35, %shr59.prol, !dbg !106
    #dbg_value(i32 %xor60.prol, !34, !DIExpression(), !41)
    #dbg_value(i64 %dec49.prol, !33, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !41)
  br label %while.body52.prol.loopexit, !dbg !98

while.body52.prol.loopexit:                       ; preds = %while.body52.prol, %while.body52.preheader
  %xor60.lcssa.unr = phi i32 [ poison, %while.body52.preheader ], [ %xor60.prol, %while.body52.prol ]
  %buf.addr.3104.unr = phi ptr [ %buf.addr.2, %while.body52.preheader ], [ %incdec.ptr53.prol, %while.body52.prol ]
  %size.addr.2103.unr = phi i64 [ %size.addr.1, %while.body52.preheader ], [ %dec49.prol, %while.body52.prol ]
  %crc.addr.3102.unr = phi i32 [ %crc.addr.2, %while.body52.preheader ], [ %xor60.prol, %while.body52.prol ]
  %36 = icmp eq i64 %size.addr.1, 1, !dbg !98
  br i1 %36, label %while.end61, label %while.body52, !dbg !98

while.body52:                                     ; preds = %while.body52.prol.loopexit, %while.body52
  %buf.addr.3104 = phi ptr [ %incdec.ptr53.1, %while.body52 ], [ %buf.addr.3104.unr, %while.body52.prol.loopexit ]
  %size.addr.2103 = phi i64 [ %dec49.1, %while.body52 ], [ %size.addr.2103.unr, %while.body52.prol.loopexit ]
  %crc.addr.3102 = phi i32 [ %xor60.1, %while.body52 ], [ %crc.addr.3102.unr, %while.body52.prol.loopexit ]
    #dbg_value(ptr %buf.addr.3104, !32, !DIExpression(), !41)
    #dbg_value(i64 %size.addr.2103, !33, !DIExpression(), !41)
    #dbg_value(i32 %crc.addr.3102, !34, !DIExpression(), !41)
    #dbg_value(i64 %size.addr.2103, !33, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !41)
  %incdec.ptr53 = getelementptr inbounds i8, ptr %buf.addr.3104, i64 1, !dbg !100
    #dbg_value(ptr %incdec.ptr53, !32, !DIExpression(), !41)
  %37 = load i8, ptr %buf.addr.3104, align 1, !dbg !101
  %conv54 = zext i8 %37 to i32, !dbg !101
  %and55 = and i32 %crc.addr.3102, 255, !dbg !102
  %xor56 = xor i32 %and55, %conv54, !dbg !103
  %idxprom57 = zext nneg i32 %xor56 to i64, !dbg !104
  %arrayidx58 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %idxprom57, !dbg !104
  %38 = load i32, ptr %arrayidx58, align 4, !dbg !104
  %shr59 = lshr i32 %crc.addr.3102, 8, !dbg !105
  %xor60 = xor i32 %38, %shr59, !dbg !106
    #dbg_value(i32 %xor60, !34, !DIExpression(), !41)
  %dec49.1 = add nsw i64 %size.addr.2103, -2, !dbg !99
    #dbg_value(i64 %dec49.1, !33, !DIExpression(), !41)
  %incdec.ptr53.1 = getelementptr inbounds i8, ptr %buf.addr.3104, i64 2, !dbg !100
    #dbg_value(ptr %incdec.ptr53.1, !32, !DIExpression(), !41)
  %39 = load i8, ptr %incdec.ptr53, align 1, !dbg !101
  %conv54.1 = zext i8 %39 to i32, !dbg !101
  %and55.1 = and i32 %xor60, 255, !dbg !102
  %xor56.1 = xor i32 %and55.1, %conv54.1, !dbg !103
  %idxprom57.1 = zext nneg i32 %xor56.1 to i64, !dbg !104
  %arrayidx58.1 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %idxprom57.1, !dbg !104
  %40 = load i32, ptr %arrayidx58.1, align 4, !dbg !104
  %shr59.1 = lshr i32 %xor60, 8, !dbg !105
  %xor60.1 = xor i32 %40, %shr59.1, !dbg !106
    #dbg_value(i32 %xor60.1, !34, !DIExpression(), !41)
    #dbg_value(i64 %dec49.1, !33, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !41)
  %cmp50.not.1 = icmp eq i64 %dec49.1, 0, !dbg !97
  br i1 %cmp50.not.1, label %while.end61, label %while.body52, !dbg !98, !llvm.loop !107

while.end61:                                      ; preds = %while.body52.prol.loopexit, %while.body52, %if.end
  %crc.addr.3.lcssa = phi i32 [ %crc.addr.2, %if.end ], [ %xor60.lcssa.unr, %while.body52.prol.loopexit ], [ %xor60.1, %while.body52 ], !dbg !41
  %not62 = xor i32 %crc.addr.3.lcssa, -1, !dbg !108
  ret i32 %not62, !dbg !109
}

attributes #0 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "liblzma/check/crc32_fast.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "4fa34e8cd6884d53dcd8eb9598f861e8")
!2 = !{!3, !6, !8}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !4, line: 90, baseType: !5)
!4 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!5 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !7, line: 18, baseType: !5)
!7 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !11, line: 26, baseType: !12)
!11 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !13, line: 42, baseType: !14)
!13 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !{i32 7, !"Dwarf Version", i32 5}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{i32 8, !"PIC Level", i32 2}
!19 = !{i32 7, !"PIE Level", i32 2}
!20 = !{i32 7, !"uwtable", i32 2}
!21 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!22 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!23 = distinct !DISubprogram(name: "lzma_crc32", scope: !1, file: !1, line: 27, type: !24, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!24 = !DISubroutineType(types: !25)
!25 = !{!10, !26, !6, !10}
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !11, line: 24, baseType: !29)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !13, line: 38, baseType: !30)
!30 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!31 = !{!32, !33, !34, !35, !39}
!32 = !DILocalVariable(name: "buf", arg: 1, scope: !23, file: !1, line: 27, type: !26)
!33 = !DILocalVariable(name: "size", arg: 2, scope: !23, file: !1, line: 27, type: !6)
!34 = !DILocalVariable(name: "crc", arg: 3, scope: !23, file: !1, line: 27, type: !10)
!35 = !DILocalVariable(name: "limit", scope: !36, file: !1, line: 44, type: !38)
!36 = distinct !DILexicalBlock(scope: !37, file: !1, line: 35, column: 16)
!37 = distinct !DILexicalBlock(scope: !23, file: !1, line: 35, column: 6)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!39 = !DILocalVariable(name: "tmp", scope: !40, file: !1, line: 60, type: !9)
!40 = distinct !DILexicalBlock(scope: !36, file: !1, line: 51, column: 23)
!41 = !DILocation(line: 0, scope: !23)
!42 = !DILocation(line: 29, column: 8, scope: !23)
!43 = !DILocation(line: 35, column: 11, scope: !37)
!44 = !DILocation(line: 35, column: 6, scope: !23)
!45 = !DILocation(line: 38, column: 10, scope: !36)
!46 = !DILocation(line: 38, column: 27, scope: !36)
!47 = !DILocation(line: 38, column: 3, scope: !36)
!48 = !DILocation(line: 39, column: 34, scope: !49)
!49 = distinct !DILexicalBlock(scope: !36, file: !1, line: 38, column: 32)
!50 = !DILocation(line: 39, column: 30, scope: !49)
!51 = !DILocation(line: 39, column: 39, scope: !49)
!52 = !DILocation(line: 39, column: 37, scope: !49)
!53 = !DILocation(line: 39, column: 10, scope: !49)
!54 = !DILocation(line: 39, column: 49, scope: !49)
!55 = !DILocation(line: 39, column: 47, scope: !49)
!56 = !DILocation(line: 40, column: 4, scope: !49)
!57 = distinct !{!57, !47, !58}
!58 = !DILocation(line: 41, column: 3, scope: !36)
!59 = !DILocation(line: 44, column: 44, scope: !36)
!60 = !DILocation(line: 44, column: 36, scope: !36)
!61 = !DILocation(line: 0, scope: !36)
!62 = !DILocation(line: 48, column: 8, scope: !36)
!63 = !DILocation(line: 51, column: 14, scope: !36)
!64 = !DILocation(line: 51, column: 3, scope: !36)
!65 = !DILocation(line: 52, column: 11, scope: !40)
!66 = !DILocation(line: 52, column: 8, scope: !40)
!67 = !DILocation(line: 53, column: 8, scope: !40)
!68 = !DILocation(line: 55, column: 30, scope: !40)
!69 = !DILocation(line: 55, column: 10, scope: !40)
!70 = !DILocation(line: 56, column: 30, scope: !40)
!71 = !DILocation(line: 56, column: 10, scope: !40)
!72 = !DILocation(line: 57, column: 30, scope: !40)
!73 = !DILocation(line: 57, column: 10, scope: !40)
!74 = !DILocation(line: 58, column: 30, scope: !40)
!75 = !DILocation(line: 58, column: 10, scope: !40)
!76 = !DILocation(line: 60, column: 25, scope: !40)
!77 = !DILocation(line: 0, scope: !40)
!78 = !DILocation(line: 61, column: 8, scope: !40)
!79 = !DILocation(line: 66, column: 30, scope: !40)
!80 = !DILocation(line: 66, column: 10, scope: !40)
!81 = !DILocation(line: 67, column: 30, scope: !40)
!82 = !DILocation(line: 67, column: 10, scope: !40)
!83 = !DILocation(line: 69, column: 30, scope: !40)
!84 = !DILocation(line: 69, column: 10, scope: !40)
!85 = !DILocation(line: 70, column: 30, scope: !40)
!86 = !DILocation(line: 70, column: 10, scope: !40)
!87 = !DILocation(line: 67, column: 8, scope: !40)
!88 = !DILocation(line: 56, column: 8, scope: !40)
!89 = !DILocation(line: 57, column: 8, scope: !40)
!90 = !DILocation(line: 58, column: 8, scope: !40)
!91 = !DILocation(line: 68, column: 8, scope: !40)
!92 = !DILocation(line: 69, column: 8, scope: !40)
!93 = !DILocation(line: 70, column: 8, scope: !40)
!94 = distinct !{!94, !64, !95}
!95 = !DILocation(line: 71, column: 3, scope: !36)
!96 = !DILocation(line: 29, column: 6, scope: !23)
!97 = !DILocation(line: 74, column: 16, scope: !23)
!98 = !DILocation(line: 74, column: 2, scope: !23)
!99 = !DILocation(line: 74, column: 13, scope: !23)
!100 = !DILocation(line: 75, column: 33, scope: !23)
!101 = !DILocation(line: 75, column: 29, scope: !23)
!102 = !DILocation(line: 75, column: 38, scope: !23)
!103 = !DILocation(line: 75, column: 36, scope: !23)
!104 = !DILocation(line: 75, column: 9, scope: !23)
!105 = !DILocation(line: 75, column: 48, scope: !23)
!106 = !DILocation(line: 75, column: 46, scope: !23)
!107 = distinct !{!107, !98, !105}
!108 = !DILocation(line: 81, column: 9, scope: !23)
!109 = !DILocation(line: 81, column: 2, scope: !23)
