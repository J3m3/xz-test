; ModuleID = 'liblzma/check/crc64_fast.c'
source_filename = "liblzma/check/crc64_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lzma_crc64_table = external local_unnamed_addr constant [4 x [256 x i64]], align 16

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @lzma_crc64(ptr noundef %buf, i64 noundef %size, i64 noundef %crc) local_unnamed_addr #0 !dbg !23 {
entry:
    #dbg_value(ptr %buf, !34, !DIExpression(), !43)
    #dbg_value(i64 %size, !35, !DIExpression(), !43)
    #dbg_value(i64 %crc, !36, !DIExpression(), !43)
  %not = xor i64 %crc, -1, !dbg !44
    #dbg_value(i64 %not, !36, !DIExpression(), !43)
  %cmp = icmp ugt i64 %size, 4, !dbg !45
  br i1 %cmp, label %while.cond.preheader, label %if.end, !dbg !46

while.cond.preheader:                             ; preds = %entry
    #dbg_value(ptr %buf, !34, !DIExpression(), !43)
    #dbg_value(i64 %size, !35, !DIExpression(), !43)
    #dbg_value(i64 %not, !36, !DIExpression(), !43)
  %0 = ptrtoint ptr %buf to i64, !dbg !47
  %and66 = and i64 %0, 3, !dbg !48
  %tobool.not67 = icmp eq i64 %and66, 0, !dbg !49
  br i1 %tobool.not67, label %while.end, label %while.body, !dbg !49

while.body:                                       ; preds = %while.cond.preheader
    #dbg_value(ptr %buf, !34, !DIExpression(), !43)
    #dbg_value(i64 %size, !35, !DIExpression(), !43)
    #dbg_value(i64 %not, !36, !DIExpression(), !43)
  %incdec.ptr = getelementptr inbounds i8, ptr %buf, i64 1, !dbg !50
    #dbg_value(ptr %incdec.ptr, !34, !DIExpression(), !43)
  %1 = load i8, ptr %buf, align 1, !dbg !52
  %conv = zext i8 %1 to i64, !dbg !52
  %and1 = and i64 %not, 255, !dbg !53
  %xor = xor i64 %and1, %conv, !dbg !54
  %arrayidx = getelementptr inbounds [256 x i64], ptr @lzma_crc64_table, i64 0, i64 %xor, !dbg !55
  %2 = load i64, ptr %arrayidx, align 8, !dbg !55
  %shr = lshr i64 %not, 8, !dbg !56
  %xor2 = xor i64 %2, %shr, !dbg !57
    #dbg_value(i64 %xor2, !36, !DIExpression(), !43)
  %dec = add i64 %size, -1, !dbg !58
    #dbg_value(i64 %dec, !35, !DIExpression(), !43)
  %3 = ptrtoint ptr %incdec.ptr to i64, !dbg !47
  %and = and i64 %3, 3, !dbg !48
  %tobool.not = icmp eq i64 %and, 0, !dbg !49
  br i1 %tobool.not, label %while.end, label %while.body.1, !dbg !49, !llvm.loop !59

while.body.1:                                     ; preds = %while.body
    #dbg_value(ptr %incdec.ptr, !34, !DIExpression(), !43)
    #dbg_value(i64 %dec, !35, !DIExpression(), !43)
    #dbg_value(i64 %xor2, !36, !DIExpression(), !43)
  %incdec.ptr.1 = getelementptr inbounds i8, ptr %buf, i64 2, !dbg !50
    #dbg_value(ptr %incdec.ptr.1, !34, !DIExpression(), !43)
  %4 = load i8, ptr %incdec.ptr, align 1, !dbg !52
  %conv.1 = zext i8 %4 to i64, !dbg !52
  %and1.1 = and i64 %xor2, 255, !dbg !53
  %xor.1 = xor i64 %and1.1, %conv.1, !dbg !54
  %arrayidx.1 = getelementptr inbounds [256 x i64], ptr @lzma_crc64_table, i64 0, i64 %xor.1, !dbg !55
  %5 = load i64, ptr %arrayidx.1, align 8, !dbg !55
  %shr.1 = lshr i64 %xor2, 8, !dbg !56
  %xor2.1 = xor i64 %5, %shr.1, !dbg !57
    #dbg_value(i64 %xor2.1, !36, !DIExpression(), !43)
  %dec.1 = add i64 %size, -2, !dbg !58
    #dbg_value(i64 %dec.1, !35, !DIExpression(), !43)
  %6 = ptrtoint ptr %incdec.ptr.1 to i64, !dbg !47
  %and.1 = and i64 %6, 3, !dbg !48
  %tobool.not.1 = icmp eq i64 %and.1, 0, !dbg !49
  br i1 %tobool.not.1, label %while.end, label %while.body.2, !dbg !49, !llvm.loop !59

while.body.2:                                     ; preds = %while.body.1
    #dbg_value(ptr %incdec.ptr.1, !34, !DIExpression(), !43)
    #dbg_value(i64 %dec.1, !35, !DIExpression(), !43)
    #dbg_value(i64 %xor2.1, !36, !DIExpression(), !43)
  %incdec.ptr.2 = getelementptr inbounds i8, ptr %buf, i64 3, !dbg !50
    #dbg_value(ptr %incdec.ptr.2, !34, !DIExpression(), !43)
  %7 = load i8, ptr %incdec.ptr.1, align 1, !dbg !52
  %conv.2 = zext i8 %7 to i64, !dbg !52
  %and1.2 = and i64 %xor2.1, 255, !dbg !53
  %xor.2 = xor i64 %and1.2, %conv.2, !dbg !54
  %arrayidx.2 = getelementptr inbounds [256 x i64], ptr @lzma_crc64_table, i64 0, i64 %xor.2, !dbg !55
  %8 = load i64, ptr %arrayidx.2, align 8, !dbg !55
  %shr.2 = lshr i64 %xor2.1, 8, !dbg !56
  %xor2.2 = xor i64 %8, %shr.2, !dbg !57
    #dbg_value(i64 %xor2.2, !36, !DIExpression(), !43)
  %dec.2 = add i64 %size, -3, !dbg !58
    #dbg_value(i64 %dec.2, !35, !DIExpression(), !43)
  %9 = ptrtoint ptr %incdec.ptr.2 to i64, !dbg !47
  %and.2 = and i64 %9, 3, !dbg !48
  %tobool.not.2 = icmp eq i64 %and.2, 0, !dbg !49
  br i1 %tobool.not.2, label %while.end, label %while.body.3, !dbg !49, !llvm.loop !59

while.body.3:                                     ; preds = %while.body.2
    #dbg_value(ptr %incdec.ptr.2, !34, !DIExpression(), !43)
    #dbg_value(i64 %dec.2, !35, !DIExpression(), !43)
    #dbg_value(i64 %xor2.2, !36, !DIExpression(), !43)
  %incdec.ptr.3 = getelementptr inbounds i8, ptr %buf, i64 4, !dbg !50
    #dbg_value(ptr %incdec.ptr.3, !34, !DIExpression(), !43)
  %10 = load i8, ptr %incdec.ptr.2, align 1, !dbg !52
  %conv.3 = zext i8 %10 to i64, !dbg !52
  %and1.3 = and i64 %xor2.2, 255, !dbg !53
  %xor.3 = xor i64 %and1.3, %conv.3, !dbg !54
  %arrayidx.3 = getelementptr inbounds [256 x i64], ptr @lzma_crc64_table, i64 0, i64 %xor.3, !dbg !55
  %11 = load i64, ptr %arrayidx.3, align 8, !dbg !55
  %shr.3 = lshr i64 %xor2.2, 8, !dbg !56
  %xor2.3 = xor i64 %11, %shr.3, !dbg !57
    #dbg_value(i64 %xor2.3, !36, !DIExpression(), !43)
  %dec.3 = add i64 %size, -4, !dbg !58
    #dbg_value(i64 %dec.3, !35, !DIExpression(), !43)
  br label %while.end

while.end:                                        ; preds = %while.body, %while.body.1, %while.body.2, %while.body.3, %while.cond.preheader
  %crc.addr.0.lcssa = phi i64 [ %not, %while.cond.preheader ], [ %xor2, %while.body ], [ %xor2.1, %while.body.1 ], [ %xor2.2, %while.body.2 ], [ %xor2.3, %while.body.3 ], !dbg !43
  %size.addr.0.lcssa = phi i64 [ %size, %while.cond.preheader ], [ %dec, %while.body ], [ %dec.1, %while.body.1 ], [ %dec.2, %while.body.2 ], [ %dec.3, %while.body.3 ]
  %buf.addr.0.lcssa = phi ptr [ %buf, %while.cond.preheader ], [ %incdec.ptr, %while.body ], [ %incdec.ptr.1, %while.body.1 ], [ %incdec.ptr.2, %while.body.2 ], [ %incdec.ptr.3, %while.body.3 ]
  %and3 = and i64 %size.addr.0.lcssa, -4, !dbg !61
  %add.ptr = getelementptr inbounds i8, ptr %buf.addr.0.lcssa, i64 %and3, !dbg !62
    #dbg_value(ptr %add.ptr, !37, !DIExpression(), !63)
  %and4 = and i64 %size.addr.0.lcssa, 3, !dbg !64
    #dbg_value(i64 %and4, !35, !DIExpression(), !43)
    #dbg_value(ptr %buf.addr.0.lcssa, !34, !DIExpression(), !43)
    #dbg_value(i64 %crc.addr.0.lcssa, !36, !DIExpression(), !43)
  %cmp673 = icmp sgt i64 %and3, 0, !dbg !65
  br i1 %cmp673, label %while.body8, label %if.end, !dbg !66

while.body8:                                      ; preds = %while.end, %while.body8
  %buf.addr.175 = phi ptr [ %add.ptr12, %while.body8 ], [ %buf.addr.0.lcssa, %while.end ]
  %crc.addr.174 = phi i64 [ %xor30, %while.body8 ], [ %crc.addr.0.lcssa, %while.end ]
    #dbg_value(ptr %buf.addr.175, !34, !DIExpression(), !43)
    #dbg_value(i64 %crc.addr.174, !36, !DIExpression(), !43)
  %12 = load i32, ptr %buf.addr.175, align 4, !dbg !67
  %13 = trunc i64 %crc.addr.174 to i32, !dbg !68
  %conv11 = xor i32 %12, %13, !dbg !68
    #dbg_value(i32 %conv11, !41, !DIExpression(), !69)
  %add.ptr12 = getelementptr inbounds i8, ptr %buf.addr.175, i64 4, !dbg !70
    #dbg_value(ptr %add.ptr12, !34, !DIExpression(), !43)
  %and13 = and i32 %conv11, 255, !dbg !71
  %idxprom = zext nneg i32 %and13 to i64, !dbg !72
  %arrayidx14 = getelementptr inbounds [256 x i64], ptr getelementptr inbounds (i8, ptr @lzma_crc64_table, i64 6144), i64 0, i64 %idxprom, !dbg !72
  %14 = load i64, ptr %arrayidx14, align 8, !dbg !72
  %shr15 = lshr i32 %conv11, 8, !dbg !73
  %and16 = and i32 %shr15, 255, !dbg !73
  %idxprom17 = zext nneg i32 %and16 to i64, !dbg !74
  %arrayidx18 = getelementptr inbounds [256 x i64], ptr getelementptr inbounds (i8, ptr @lzma_crc64_table, i64 4096), i64 0, i64 %idxprom17, !dbg !74
  %15 = load i64, ptr %arrayidx18, align 8, !dbg !74
  %shr20 = lshr i64 %crc.addr.174, 32, !dbg !75
  %shr22 = lshr i32 %conv11, 16, !dbg !76
  %and23 = and i32 %shr22, 255, !dbg !76
  %idxprom24 = zext nneg i32 %and23 to i64, !dbg !77
  %arrayidx25 = getelementptr inbounds [256 x i64], ptr getelementptr inbounds (i8, ptr @lzma_crc64_table, i64 2048), i64 0, i64 %idxprom24, !dbg !77
  %16 = load i64, ptr %arrayidx25, align 8, !dbg !77
  %shr27 = lshr i32 %conv11, 24, !dbg !78
  %idxprom28 = zext nneg i32 %shr27 to i64, !dbg !79
  %arrayidx29 = getelementptr inbounds [256 x i64], ptr @lzma_crc64_table, i64 0, i64 %idxprom28, !dbg !79
  %17 = load i64, ptr %arrayidx29, align 8, !dbg !79
  %xor19 = xor i64 %14, %shr20, !dbg !80
  %xor21 = xor i64 %xor19, %15, !dbg !81
  %xor26 = xor i64 %xor21, %16, !dbg !82
  %xor30 = xor i64 %xor26, %17, !dbg !83
    #dbg_value(i64 %xor30, !36, !DIExpression(), !43)
  %cmp6 = icmp ult ptr %add.ptr12, %add.ptr, !dbg !65
  br i1 %cmp6, label %while.body8, label %if.end, !dbg !66, !llvm.loop !84

if.end:                                           ; preds = %while.body8, %while.end, %entry
  %crc.addr.2 = phi i64 [ %not, %entry ], [ %crc.addr.0.lcssa, %while.end ], [ %xor30, %while.body8 ], !dbg !86
  %size.addr.1 = phi i64 [ %size, %entry ], [ %and4, %while.end ], [ %and4, %while.body8 ]
  %buf.addr.2 = phi ptr [ %buf, %entry ], [ %buf.addr.0.lcssa, %while.end ], [ %add.ptr12, %while.body8 ]
    #dbg_value(ptr %buf.addr.2, !34, !DIExpression(), !43)
    #dbg_value(i64 %crc.addr.2, !36, !DIExpression(), !43)
    #dbg_value(i64 %size.addr.1, !35, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !43)
  %cmp34.not78 = icmp eq i64 %size.addr.1, 0, !dbg !87
  br i1 %cmp34.not78, label %while.end44, label %while.body36, !dbg !88

while.body36:                                     ; preds = %if.end
    #dbg_value(ptr %buf.addr.2, !34, !DIExpression(), !43)
    #dbg_value(i64 %size.addr.1, !35, !DIExpression(), !43)
    #dbg_value(i64 %crc.addr.2, !36, !DIExpression(), !43)
    #dbg_value(i64 %size.addr.1, !35, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !43)
    #dbg_value(ptr %buf.addr.2, !34, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !43)
  %18 = load i8, ptr %buf.addr.2, align 1, !dbg !89
  %conv38 = zext i8 %18 to i64, !dbg !89
  %and39 = and i64 %crc.addr.2, 255, !dbg !90
  %xor40 = xor i64 %and39, %conv38, !dbg !91
  %arrayidx41 = getelementptr inbounds [256 x i64], ptr @lzma_crc64_table, i64 0, i64 %xor40, !dbg !92
  %19 = load i64, ptr %arrayidx41, align 8, !dbg !92
  %shr42 = lshr i64 %crc.addr.2, 8, !dbg !93
  %xor43 = xor i64 %19, %shr42, !dbg !94
    #dbg_value(i64 %xor43, !36, !DIExpression(), !43)
    #dbg_value(i64 %size.addr.1, !35, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !43)
  %cmp34.not = icmp eq i64 %size.addr.1, 1, !dbg !87
  br i1 %cmp34.not, label %while.end44, label %while.body36.1, !dbg !88, !llvm.loop !95

while.body36.1:                                   ; preds = %while.body36
  %incdec.ptr37 = getelementptr inbounds i8, ptr %buf.addr.2, i64 1, !dbg !96
    #dbg_value(ptr %incdec.ptr37, !34, !DIExpression(), !43)
    #dbg_value(ptr %incdec.ptr37, !34, !DIExpression(), !43)
    #dbg_value(i64 %size.addr.1, !35, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !43)
    #dbg_value(i64 %xor43, !36, !DIExpression(), !43)
    #dbg_value(i64 %size.addr.1, !35, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !43)
    #dbg_value(ptr %incdec.ptr37, !34, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !43)
  %20 = load i8, ptr %incdec.ptr37, align 1, !dbg !89
  %conv38.1 = zext i8 %20 to i64, !dbg !89
  %and39.1 = and i64 %xor43, 255, !dbg !90
  %xor40.1 = xor i64 %and39.1, %conv38.1, !dbg !91
  %arrayidx41.1 = getelementptr inbounds [256 x i64], ptr @lzma_crc64_table, i64 0, i64 %xor40.1, !dbg !92
  %21 = load i64, ptr %arrayidx41.1, align 8, !dbg !92
  %shr42.1 = lshr i64 %xor43, 8, !dbg !93
  %xor43.1 = xor i64 %21, %shr42.1, !dbg !94
    #dbg_value(i64 %xor43.1, !36, !DIExpression(), !43)
    #dbg_value(i64 %size.addr.1, !35, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !43)
  %cmp34.not.1 = icmp eq i64 %size.addr.1, 2, !dbg !87
  br i1 %cmp34.not.1, label %while.end44, label %while.body36.2, !dbg !88, !llvm.loop !95

while.body36.2:                                   ; preds = %while.body36.1
  %incdec.ptr37.1 = getelementptr inbounds i8, ptr %buf.addr.2, i64 2, !dbg !96
    #dbg_value(ptr %incdec.ptr37.1, !34, !DIExpression(), !43)
    #dbg_value(ptr %incdec.ptr37.1, !34, !DIExpression(), !43)
    #dbg_value(i64 %size.addr.1, !35, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !43)
    #dbg_value(i64 %xor43.1, !36, !DIExpression(), !43)
    #dbg_value(i64 %size.addr.1, !35, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value), !43)
    #dbg_value(ptr %incdec.ptr37.1, !34, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !43)
  %22 = load i8, ptr %incdec.ptr37.1, align 1, !dbg !89
  %conv38.2 = zext i8 %22 to i64, !dbg !89
  %and39.2 = and i64 %xor43.1, 255, !dbg !90
  %xor40.2 = xor i64 %and39.2, %conv38.2, !dbg !91
  %arrayidx41.2 = getelementptr inbounds [256 x i64], ptr @lzma_crc64_table, i64 0, i64 %xor40.2, !dbg !92
  %23 = load i64, ptr %arrayidx41.2, align 8, !dbg !92
  %shr42.2 = lshr i64 %xor43.1, 8, !dbg !93
  %xor43.2 = xor i64 %23, %shr42.2, !dbg !94
    #dbg_value(i64 %xor43.2, !36, !DIExpression(), !43)
    #dbg_value(i64 %size.addr.1, !35, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !43)
  %cmp34.not.2 = icmp eq i64 %size.addr.1, 3, !dbg !87
  br i1 %cmp34.not.2, label %while.end44, label %while.body36.3, !dbg !88, !llvm.loop !95

while.body36.3:                                   ; preds = %while.body36.2
  %incdec.ptr37.2 = getelementptr inbounds i8, ptr %buf.addr.2, i64 3, !dbg !96
    #dbg_value(ptr %incdec.ptr37.2, !34, !DIExpression(), !43)
    #dbg_value(ptr %incdec.ptr37.2, !34, !DIExpression(), !43)
    #dbg_value(i64 %size.addr.1, !35, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value), !43)
    #dbg_value(i64 %xor43.2, !36, !DIExpression(), !43)
    #dbg_value(i64 %size.addr.1, !35, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value), !43)
    #dbg_value(ptr %incdec.ptr37.2, !34, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !43)
  %24 = load i8, ptr %incdec.ptr37.2, align 1, !dbg !89
  %conv38.3 = zext i8 %24 to i64, !dbg !89
  %and39.3 = and i64 %xor43.2, 255, !dbg !90
  %xor40.3 = xor i64 %and39.3, %conv38.3, !dbg !91
  %arrayidx41.3 = getelementptr inbounds [256 x i64], ptr @lzma_crc64_table, i64 0, i64 %xor40.3, !dbg !92
  %25 = load i64, ptr %arrayidx41.3, align 8, !dbg !92
  %shr42.3 = lshr i64 %xor43.2, 8, !dbg !93
  %xor43.3 = xor i64 %25, %shr42.3, !dbg !94
    #dbg_value(i64 %xor43.3, !36, !DIExpression(), !43)
    #dbg_value(i64 %size.addr.1, !35, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !43)
  %cmp34.not.3 = icmp eq i64 %size.addr.1, 4, !dbg !87
  br i1 %cmp34.not.3, label %while.end44, label %while.body36.4, !dbg !88, !llvm.loop !95

while.body36.4:                                   ; preds = %while.body36.3
  %incdec.ptr37.3 = getelementptr inbounds i8, ptr %buf.addr.2, i64 4, !dbg !96
    #dbg_value(ptr %incdec.ptr37.3, !34, !DIExpression(), !43)
    #dbg_value(ptr %incdec.ptr37.3, !34, !DIExpression(), !43)
    #dbg_value(i64 %size.addr.1, !35, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value), !43)
    #dbg_value(i64 %xor43.3, !36, !DIExpression(), !43)
    #dbg_value(i64 %size.addr.1, !35, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value), !43)
    #dbg_value(ptr %incdec.ptr37.3, !34, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !43)
  %26 = load i8, ptr %incdec.ptr37.3, align 1, !dbg !89
  %conv38.4 = zext i8 %26 to i64, !dbg !89
  %and39.4 = and i64 %xor43.3, 255, !dbg !90
  %xor40.4 = xor i64 %and39.4, %conv38.4, !dbg !91
  %arrayidx41.4 = getelementptr inbounds [256 x i64], ptr @lzma_crc64_table, i64 0, i64 %xor40.4, !dbg !92
  %27 = load i64, ptr %arrayidx41.4, align 8, !dbg !92
  %shr42.4 = lshr i64 %xor43.3, 8, !dbg !93
  %xor43.4 = xor i64 %27, %shr42.4, !dbg !94
    #dbg_value(i64 %xor43.4, !36, !DIExpression(), !43)
    #dbg_value(i64 %size.addr.1, !35, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !43)
  %cmp34.not.4 = icmp eq i64 %size.addr.1, 5, !dbg !87
  br i1 %cmp34.not.4, label %while.end44, label %while.body36.5, !dbg !88, !llvm.loop !95

while.body36.5:                                   ; preds = %while.body36.4
  %incdec.ptr37.4 = getelementptr inbounds i8, ptr %buf.addr.2, i64 5, !dbg !96
    #dbg_value(ptr %incdec.ptr37.4, !34, !DIExpression(), !43)
    #dbg_value(ptr %incdec.ptr37.4, !34, !DIExpression(), !43)
    #dbg_value(i64 %size.addr.1, !35, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value), !43)
    #dbg_value(i64 %xor43.4, !36, !DIExpression(), !43)
    #dbg_value(i64 %size.addr.1, !35, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value), !43)
    #dbg_value(ptr %incdec.ptr37.4, !34, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !43)
  %28 = load i8, ptr %incdec.ptr37.4, align 1, !dbg !89
  %conv38.5 = zext i8 %28 to i64, !dbg !89
  %and39.5 = and i64 %xor43.4, 255, !dbg !90
  %xor40.5 = xor i64 %and39.5, %conv38.5, !dbg !91
  %arrayidx41.5 = getelementptr inbounds [256 x i64], ptr @lzma_crc64_table, i64 0, i64 %xor40.5, !dbg !92
  %29 = load i64, ptr %arrayidx41.5, align 8, !dbg !92
  %shr42.5 = lshr i64 %xor43.4, 8, !dbg !93
  %xor43.5 = xor i64 %29, %shr42.5, !dbg !94
    #dbg_value(i64 %xor43.5, !36, !DIExpression(), !43)
    #dbg_value(i64 %size.addr.1, !35, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !43)
  %cmp34.not.5 = icmp eq i64 %size.addr.1, 6, !dbg !87
  br i1 %cmp34.not.5, label %while.end44, label %while.body36.6, !dbg !88, !llvm.loop !95

while.body36.6:                                   ; preds = %while.body36.5
  %incdec.ptr37.5 = getelementptr inbounds i8, ptr %buf.addr.2, i64 6, !dbg !96
    #dbg_value(ptr %incdec.ptr37.5, !34, !DIExpression(), !43)
    #dbg_value(ptr %incdec.ptr37.5, !34, !DIExpression(), !43)
    #dbg_value(i64 %size.addr.1, !35, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value), !43)
    #dbg_value(i64 %xor43.5, !36, !DIExpression(), !43)
    #dbg_value(i64 %size.addr.1, !35, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value), !43)
    #dbg_value(ptr %incdec.ptr37.5, !34, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !43)
  %30 = load i8, ptr %incdec.ptr37.5, align 1, !dbg !89
  %conv38.6 = zext i8 %30 to i64, !dbg !89
  %and39.6 = and i64 %xor43.5, 255, !dbg !90
  %xor40.6 = xor i64 %and39.6, %conv38.6, !dbg !91
  %arrayidx41.6 = getelementptr inbounds [256 x i64], ptr @lzma_crc64_table, i64 0, i64 %xor40.6, !dbg !92
  %31 = load i64, ptr %arrayidx41.6, align 8, !dbg !92
  %shr42.6 = lshr i64 %xor43.5, 8, !dbg !93
  %xor43.6 = xor i64 %31, %shr42.6, !dbg !94
    #dbg_value(i64 %xor43.6, !36, !DIExpression(), !43)
    #dbg_value(i64 %size.addr.1, !35, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !43)
  br label %while.end44

while.end44:                                      ; preds = %while.body36, %while.body36.1, %while.body36.2, %while.body36.3, %while.body36.4, %while.body36.5, %while.body36.6, %if.end
  %crc.addr.3.lcssa = phi i64 [ %crc.addr.2, %if.end ], [ %xor43, %while.body36 ], [ %xor43.1, %while.body36.1 ], [ %xor43.2, %while.body36.2 ], [ %xor43.3, %while.body36.3 ], [ %xor43.4, %while.body36.4 ], [ %xor43.5, %while.body36.5 ], [ %xor43.6, %while.body36.6 ], !dbg !43
  %not45 = xor i64 %crc.addr.3.lcssa, -1, !dbg !97
  ret i64 %not45, !dbg !98
}

attributes #0 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "liblzma/check/crc64_fast.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "48de9a2589e975d1231092af2afbf70c")
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
!23 = distinct !DISubprogram(name: "lzma_crc64", scope: !1, file: !1, line: 30, type: !24, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !33)
!24 = !DISubroutineType(types: !25)
!25 = !{!26, !28, !6, !26}
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !11, line: 27, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !13, line: 45, baseType: !5)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !11, line: 24, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !13, line: 38, baseType: !32)
!32 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!33 = !{!34, !35, !36, !37, !41}
!34 = !DILocalVariable(name: "buf", arg: 1, scope: !23, file: !1, line: 30, type: !28)
!35 = !DILocalVariable(name: "size", arg: 2, scope: !23, file: !1, line: 30, type: !6)
!36 = !DILocalVariable(name: "crc", arg: 3, scope: !23, file: !1, line: 30, type: !26)
!37 = !DILocalVariable(name: "limit", scope: !38, file: !1, line: 44, type: !40)
!38 = distinct !DILexicalBlock(scope: !39, file: !1, line: 38, column: 16)
!39 = distinct !DILexicalBlock(scope: !23, file: !1, line: 38, column: 6)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!41 = !DILocalVariable(name: "tmp", scope: !42, file: !1, line: 52, type: !9)
!42 = distinct !DILexicalBlock(scope: !38, file: !1, line: 47, column: 23)
!43 = !DILocation(line: 0, scope: !23)
!44 = !DILocation(line: 32, column: 8, scope: !23)
!45 = !DILocation(line: 38, column: 11, scope: !39)
!46 = !DILocation(line: 38, column: 6, scope: !23)
!47 = !DILocation(line: 39, column: 10, scope: !38)
!48 = !DILocation(line: 39, column: 27, scope: !38)
!49 = !DILocation(line: 39, column: 3, scope: !38)
!50 = !DILocation(line: 40, column: 34, scope: !51)
!51 = distinct !DILexicalBlock(scope: !38, file: !1, line: 39, column: 32)
!52 = !DILocation(line: 40, column: 30, scope: !51)
!53 = !DILocation(line: 40, column: 39, scope: !51)
!54 = !DILocation(line: 40, column: 37, scope: !51)
!55 = !DILocation(line: 40, column: 10, scope: !51)
!56 = !DILocation(line: 40, column: 50, scope: !51)
!57 = !DILocation(line: 40, column: 48, scope: !51)
!58 = !DILocation(line: 41, column: 4, scope: !51)
!59 = distinct !{!59, !49, !60}
!60 = !DILocation(line: 42, column: 3, scope: !38)
!61 = !DILocation(line: 44, column: 44, scope: !38)
!62 = !DILocation(line: 44, column: 36, scope: !38)
!63 = !DILocation(line: 0, scope: !38)
!64 = !DILocation(line: 45, column: 8, scope: !38)
!65 = !DILocation(line: 47, column: 14, scope: !38)
!66 = !DILocation(line: 47, column: 3, scope: !38)
!67 = !DILocation(line: 52, column: 31, scope: !42)
!68 = !DILocation(line: 52, column: 25, scope: !42)
!69 = !DILocation(line: 0, scope: !42)
!70 = !DILocation(line: 54, column: 8, scope: !42)
!71 = !DILocation(line: 56, column: 30, scope: !42)
!72 = !DILocation(line: 56, column: 10, scope: !42)
!73 = !DILocation(line: 57, column: 30, scope: !42)
!74 = !DILocation(line: 57, column: 10, scope: !42)
!75 = !DILocation(line: 58, column: 10, scope: !42)
!76 = !DILocation(line: 59, column: 30, scope: !42)
!77 = !DILocation(line: 59, column: 10, scope: !42)
!78 = !DILocation(line: 60, column: 30, scope: !42)
!79 = !DILocation(line: 60, column: 10, scope: !42)
!80 = !DILocation(line: 57, column: 8, scope: !42)
!81 = !DILocation(line: 58, column: 8, scope: !42)
!82 = !DILocation(line: 59, column: 8, scope: !42)
!83 = !DILocation(line: 60, column: 8, scope: !42)
!84 = distinct !{!84, !66, !85}
!85 = !DILocation(line: 61, column: 3, scope: !38)
!86 = !DILocation(line: 32, column: 6, scope: !23)
!87 = !DILocation(line: 64, column: 16, scope: !23)
!88 = !DILocation(line: 64, column: 2, scope: !23)
!89 = !DILocation(line: 65, column: 29, scope: !23)
!90 = !DILocation(line: 65, column: 38, scope: !23)
!91 = !DILocation(line: 65, column: 36, scope: !23)
!92 = !DILocation(line: 65, column: 9, scope: !23)
!93 = !DILocation(line: 65, column: 49, scope: !23)
!94 = !DILocation(line: 65, column: 47, scope: !23)
!95 = distinct !{!95, !88, !93}
!96 = !DILocation(line: 65, column: 33, scope: !23)
!97 = !DILocation(line: 71, column: 9, scope: !23)
!98 = !DILocation(line: 71, column: 2, scope: !23)
