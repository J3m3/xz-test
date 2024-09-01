; ModuleID = 'liblzma/delta/delta_encoder.c'
source_filename = "liblzma/delta/delta_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_delta_encoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters) local_unnamed_addr #0 {
entry:
  %code = getelementptr inbounds i8, ptr %next, i64 24
  store ptr @delta_encode, ptr %code, align 8
  %update = getelementptr inbounds i8, ptr %next, i64 56
  store ptr @delta_encoder_update, ptr %update, align 8
  %call = tail call i32 @lzma_delta_coder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @delta_encode(ptr nocapture noundef %pcoder, ptr noundef %allocator, ptr noalias noundef %in, ptr noalias noundef %in_pos, i64 noundef %in_size, ptr noalias noundef %out, ptr noalias noundef %out_pos, i64 noundef %out_size, i32 noundef %action) #0 {
entry:
  %code = getelementptr inbounds i8, ptr %pcoder, i64 24
  %0 = load ptr, ptr %code, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %in_pos, align 8
  %sub = sub i64 %in_size, %1
  %2 = load i64, ptr %out_pos, align 8
  %sub1 = sub i64 %out_size, %2
  %cond = tail call i64 @llvm.umin.i64(i64 %sub, i64 %sub1)
  %add.ptr = getelementptr inbounds i8, ptr %in, i64 %1
  %add.ptr3 = getelementptr inbounds i8, ptr %out, i64 %2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8)
  %cmp22.not.i = icmp eq i64 %cond, 0
  br i1 %cmp22.not.i, label %copy_and_encode.exit, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %if.then
  %distance1.i = getelementptr inbounds i8, ptr %pcoder, i64 64
  %3 = load i64, ptr %distance1.i, align 8, !noalias !10
  %history.i = getelementptr inbounds i8, ptr %pcoder, i64 73
  %pos.i = getelementptr inbounds i8, ptr %pcoder, i64 72
  %.tr.i = trunc i64 %3 to i8
  %pos.promoted.i = load i8, ptr %pos.i, align 8, !noalias !10
  %min.iters.check101 = icmp ult i64 %cond, 64
  br i1 %min.iters.check101, label %for.body.i.preheader, label %vector.scevcheck82

for.body.i.preheader:                             ; preds = %middle.block99, %vector.memcheck97, %vector.scevcheck82, %for.body.lr.ph.i
  %.ph = phi i8 [ %pos.promoted.i, %vector.memcheck97 ], [ %pos.promoted.i, %vector.scevcheck82 ], [ %pos.promoted.i, %for.body.lr.ph.i ], [ %ind.end106, %middle.block99 ]
  %i.023.i.ph = phi i64 [ 0, %vector.memcheck97 ], [ 0, %vector.scevcheck82 ], [ 0, %for.body.lr.ph.i ], [ %n.vec104, %middle.block99 ]
  %.neg = or disjoint i64 %i.023.i.ph, 1
  %xtraiter = and i64 %cond, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body.i.prol.loopexit, label %for.body.i.prol

for.body.i.prol:                                  ; preds = %for.body.i.preheader
  %add.narrow.i.prol = add i8 %.ph, %.tr.i
  %and.i.prol = zext i8 %add.narrow.i.prol to i64
  %arrayidx.i.prol = getelementptr inbounds [256 x i8], ptr %history.i, i64 0, i64 %and.i.prol
  %4 = load i8, ptr %arrayidx.i.prol, align 1, !noalias !10
  %arrayidx2.i.prol = getelementptr inbounds i8, ptr %add.ptr, i64 %i.023.i.ph
  %5 = load i8, ptr %arrayidx2.i.prol, align 1, !alias.scope !5, !noalias !8
  %dec.i.prol = add i8 %.ph, -1
  %idxprom.i.prol = zext i8 %.ph to i64
  %arrayidx7.i.prol = getelementptr inbounds [256 x i8], ptr %history.i, i64 0, i64 %idxprom.i.prol
  store i8 %5, ptr %arrayidx7.i.prol, align 1, !noalias !10
  %sub.i.prol = sub i8 %5, %4
  %arrayidx12.i.prol = getelementptr inbounds i8, ptr %add.ptr3, i64 %i.023.i.ph
  store i8 %sub.i.prol, ptr %arrayidx12.i.prol, align 1, !alias.scope !8, !noalias !5
  %inc.i.prol = or disjoint i64 %i.023.i.ph, 1
  br label %for.body.i.prol.loopexit

for.body.i.prol.loopexit:                         ; preds = %for.body.i.prol, %for.body.i.preheader
  %dec.i.lcssa131.unr = phi i8 [ poison, %for.body.i.preheader ], [ %dec.i.prol, %for.body.i.prol ]
  %.unr = phi i8 [ %.ph, %for.body.i.preheader ], [ %dec.i.prol, %for.body.i.prol ]
  %i.023.i.unr = phi i64 [ %i.023.i.ph, %for.body.i.preheader ], [ %inc.i.prol, %for.body.i.prol ]
  %6 = icmp eq i64 %cond, %.neg
  br i1 %6, label %for.cond.for.cond.cleanup_crit_edge.i, label %for.body.i

vector.scevcheck82:                               ; preds = %for.body.lr.ph.i
  %7 = add i64 %cond, -1
  %8 = trunc i64 %7 to i8
  %9 = icmp ult i8 %pos.promoted.i, %8
  %10 = add i8 %pos.promoted.i, %.tr.i
  %11 = trunc i64 %7 to i8
  %12 = icmp ult i8 %10, %11
  %13 = icmp ugt i64 %7, 255
  %14 = or i1 %12, %13
  %15 = zext i8 %pos.promoted.i to i64
  %16 = getelementptr i8, ptr %pcoder, i64 %15
  %scevgep89 = getelementptr i8, ptr %16, i64 73
  %17 = sub i64 1, %cond
  %18 = getelementptr i8, ptr %scevgep89, i64 %17
  %19 = icmp ugt ptr %18, %scevgep89
  %20 = zext i8 %10 to i64
  %21 = getelementptr i8, ptr %pcoder, i64 %20
  %scevgep93 = getelementptr i8, ptr %21, i64 73
  %22 = sub i64 1, %cond
  %23 = getelementptr i8, ptr %scevgep93, i64 %22
  %24 = icmp ugt ptr %23, %scevgep93
  %25 = or i1 %9, %14
  %26 = or i1 %25, %19
  %27 = or i1 %26, %24
  br i1 %27, label %for.body.i.preheader, label %vector.memcheck97

vector.memcheck97:                                ; preds = %vector.scevcheck82
  %28 = add i8 %pos.promoted.i, %.tr.i
  %29 = zext i8 %28 to i64
  %30 = zext i8 %pos.promoted.i to i64
  %31 = sub nsw i64 %29, %30
  %diff.check98 = icmp ult i64 %31, 64
  br i1 %diff.check98, label %for.body.i.preheader, label %vector.ph102

vector.ph102:                                     ; preds = %vector.memcheck97
  %n.vec104 = and i64 %cond, 448
  %.cast105 = trunc i64 %n.vec104 to i8
  %ind.end106 = sub i8 %pos.promoted.i, %.cast105
  br label %vector.body109

vector.body109:                                   ; preds = %vector.body109, %vector.ph102
  %index110 = phi i64 [ 0, %vector.ph102 ], [ %index.next129, %vector.body109 ]
  %.cast111 = trunc i64 %index110 to i8
  %offset.idx112 = sub i8 %pos.promoted.i, %.cast111
  %32 = add i8 %offset.idx112, %.tr.i
  %33 = zext i8 %32 to i64
  %34 = getelementptr inbounds [256 x i8], ptr %history.i, i64 0, i64 %33
  %35 = getelementptr inbounds i8, ptr %34, i64 -15
  %36 = getelementptr inbounds i8, ptr %34, i64 -31
  %37 = getelementptr inbounds i8, ptr %34, i64 -47
  %38 = getelementptr inbounds i8, ptr %34, i64 -63
  %wide.load113 = load <16 x i8>, ptr %35, align 1, !noalias !10
  %reverse114 = shufflevector <16 x i8> %wide.load113, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %wide.load115 = load <16 x i8>, ptr %36, align 1, !noalias !10
  %reverse116 = shufflevector <16 x i8> %wide.load115, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %wide.load117 = load <16 x i8>, ptr %37, align 1, !noalias !10
  %reverse118 = shufflevector <16 x i8> %wide.load117, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %wide.load119 = load <16 x i8>, ptr %38, align 1, !noalias !10
  %reverse120 = shufflevector <16 x i8> %wide.load119, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %39 = getelementptr inbounds i8, ptr %add.ptr, i64 %index110
  %40 = getelementptr inbounds i8, ptr %39, i64 16
  %41 = getelementptr inbounds i8, ptr %39, i64 32
  %42 = getelementptr inbounds i8, ptr %39, i64 48
  %wide.load121 = load <16 x i8>, ptr %39, align 1, !alias.scope !5, !noalias !8
  %wide.load122 = load <16 x i8>, ptr %40, align 1, !alias.scope !5, !noalias !8
  %wide.load123 = load <16 x i8>, ptr %41, align 1, !alias.scope !5, !noalias !8
  %wide.load124 = load <16 x i8>, ptr %42, align 1, !alias.scope !5, !noalias !8
  %43 = zext i8 %offset.idx112 to i64
  %44 = getelementptr inbounds [256 x i8], ptr %history.i, i64 0, i64 %43
  %45 = getelementptr inbounds i8, ptr %44, i64 -15
  %46 = getelementptr inbounds i8, ptr %44, i64 -31
  %47 = getelementptr inbounds i8, ptr %44, i64 -47
  %48 = getelementptr inbounds i8, ptr %44, i64 -63
  %reverse125 = shufflevector <16 x i8> %wide.load121, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse125, ptr %45, align 1, !noalias !10
  %reverse126 = shufflevector <16 x i8> %wide.load122, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse126, ptr %46, align 1, !noalias !10
  %reverse127 = shufflevector <16 x i8> %wide.load123, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse127, ptr %47, align 1, !noalias !10
  %reverse128 = shufflevector <16 x i8> %wide.load124, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse128, ptr %48, align 1, !noalias !10
  %49 = sub <16 x i8> %wide.load121, %reverse114
  %50 = sub <16 x i8> %wide.load122, %reverse116
  %51 = sub <16 x i8> %wide.load123, %reverse118
  %52 = sub <16 x i8> %wide.load124, %reverse120
  %53 = getelementptr inbounds i8, ptr %add.ptr3, i64 %index110
  %54 = getelementptr inbounds i8, ptr %53, i64 16
  %55 = getelementptr inbounds i8, ptr %53, i64 32
  %56 = getelementptr inbounds i8, ptr %53, i64 48
  store <16 x i8> %49, ptr %53, align 1, !alias.scope !8, !noalias !5
  store <16 x i8> %50, ptr %54, align 1, !alias.scope !8, !noalias !5
  store <16 x i8> %51, ptr %55, align 1, !alias.scope !8, !noalias !5
  store <16 x i8> %52, ptr %56, align 1, !alias.scope !8, !noalias !5
  %index.next129 = add nuw i64 %index110, 64
  %57 = icmp eq i64 %index.next129, %n.vec104
  br i1 %57, label %middle.block99, label %vector.body109, !llvm.loop !11

middle.block99:                                   ; preds = %vector.body109
  %cmp.n130 = icmp eq i64 %cond, %n.vec104
  br i1 %cmp.n130, label %for.cond.for.cond.cleanup_crit_edge.i, label %for.body.i.preheader

for.cond.for.cond.cleanup_crit_edge.i:            ; preds = %for.body.i.prol.loopexit, %for.body.i, %middle.block99
  %dec.i.lcssa = phi i8 [ %ind.end106, %middle.block99 ], [ %dec.i.lcssa131.unr, %for.body.i.prol.loopexit ], [ %dec.i.1, %for.body.i ]
  store i8 %dec.i.lcssa, ptr %pos.i, align 8, !noalias !10
  br label %copy_and_encode.exit

for.body.i:                                       ; preds = %for.body.i.prol.loopexit, %for.body.i
  %58 = phi i8 [ %dec.i.1, %for.body.i ], [ %.unr, %for.body.i.prol.loopexit ]
  %i.023.i = phi i64 [ %inc.i.1, %for.body.i ], [ %i.023.i.unr, %for.body.i.prol.loopexit ]
  %add.narrow.i = add i8 %58, %.tr.i
  %and.i = zext i8 %add.narrow.i to i64
  %arrayidx.i = getelementptr inbounds [256 x i8], ptr %history.i, i64 0, i64 %and.i
  %59 = load i8, ptr %arrayidx.i, align 1, !noalias !10
  %arrayidx2.i = getelementptr inbounds i8, ptr %add.ptr, i64 %i.023.i
  %60 = load i8, ptr %arrayidx2.i, align 1, !alias.scope !5, !noalias !8
  %dec.i = add i8 %58, -1
  %idxprom.i = zext i8 %58 to i64
  %arrayidx7.i = getelementptr inbounds [256 x i8], ptr %history.i, i64 0, i64 %idxprom.i
  store i8 %60, ptr %arrayidx7.i, align 1, !noalias !10
  %sub.i = sub i8 %60, %59
  %arrayidx12.i = getelementptr inbounds i8, ptr %add.ptr3, i64 %i.023.i
  store i8 %sub.i, ptr %arrayidx12.i, align 1, !alias.scope !8, !noalias !5
  %inc.i = add nuw i64 %i.023.i, 1
  %add.narrow.i.1 = add i8 %dec.i, %.tr.i
  %and.i.1 = zext i8 %add.narrow.i.1 to i64
  %arrayidx.i.1 = getelementptr inbounds [256 x i8], ptr %history.i, i64 0, i64 %and.i.1
  %61 = load i8, ptr %arrayidx.i.1, align 1, !noalias !10
  %arrayidx2.i.1 = getelementptr inbounds i8, ptr %add.ptr, i64 %inc.i
  %62 = load i8, ptr %arrayidx2.i.1, align 1, !alias.scope !5, !noalias !8
  %dec.i.1 = add i8 %58, -2
  %idxprom.i.1 = zext i8 %dec.i to i64
  %arrayidx7.i.1 = getelementptr inbounds [256 x i8], ptr %history.i, i64 0, i64 %idxprom.i.1
  store i8 %62, ptr %arrayidx7.i.1, align 1, !noalias !10
  %sub.i.1 = sub i8 %62, %61
  %arrayidx12.i.1 = getelementptr inbounds i8, ptr %add.ptr3, i64 %inc.i
  store i8 %sub.i.1, ptr %arrayidx12.i.1, align 1, !alias.scope !8, !noalias !5
  %inc.i.1 = add nuw i64 %i.023.i, 2
  %exitcond.not.i.1 = icmp eq i64 %inc.i.1, %cond
  br i1 %exitcond.not.i.1, label %for.cond.for.cond.cleanup_crit_edge.i, label %for.body.i, !llvm.loop !14

copy_and_encode.exit:                             ; preds = %if.then, %for.cond.for.cond.cleanup_crit_edge.i
  %add = add i64 %cond, %1
  store i64 %add, ptr %in_pos, align 8
  %add4 = add i64 %cond, %2
  store i64 %add4, ptr %out_pos, align 8
  %cmp5.not = icmp eq i32 %action, 0
  br i1 %cmp5.not, label %if.end, label %land.rhs

land.rhs:                                         ; preds = %copy_and_encode.exit
  %cmp6 = icmp eq i64 %add, %in_size
  %63 = zext i1 %cmp6 to i32
  br label %if.end

if.else:                                          ; preds = %entry
  %64 = load i64, ptr %out_pos, align 8
  %65 = load ptr, ptr %pcoder, align 8
  %call = tail call i32 %0(ptr noundef %65, ptr noundef %allocator, ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %out_size, i32 noundef %action) #4
  %add.ptr12 = getelementptr inbounds i8, ptr %out, i64 %64
  %66 = load i64, ptr %out_pos, align 8
  %sub13 = sub i64 %66, %64
  %cmp20.not.i = icmp eq i64 %66, %64
  br i1 %cmp20.not.i, label %if.end, label %for.body.lr.ph.i39

for.body.lr.ph.i39:                               ; preds = %if.else
  %distance1.i40 = getelementptr inbounds i8, ptr %pcoder, i64 64
  %67 = load i64, ptr %distance1.i40, align 8
  %history.i41 = getelementptr inbounds i8, ptr %pcoder, i64 73
  %pos.i42 = getelementptr inbounds i8, ptr %pcoder, i64 72
  %.tr.i43 = trunc i64 %67 to i8
  %pos.i42.promoted = load i8, ptr %pos.i42, align 8
  %min.iters.check = icmp ult i64 %sub13, 64
  br i1 %min.iters.check, label %for.body.i44.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %for.body.lr.ph.i39
  %68 = xor i64 %64, -1
  %69 = add i64 %66, %68
  %70 = trunc i64 %69 to i8
  %71 = icmp ult i8 %pos.i42.promoted, %70
  %72 = add i8 %pos.i42.promoted, %.tr.i43
  %73 = trunc i64 %69 to i8
  %74 = icmp ult i8 %72, %73
  %75 = icmp ugt i64 %69, 255
  %76 = or i1 %74, %75
  %77 = zext i8 %pos.i42.promoted to i64
  %78 = getelementptr i8, ptr %pcoder, i64 %77
  %scevgep = getelementptr i8, ptr %78, i64 73
  %79 = sub i64 0, %69
  %80 = getelementptr i8, ptr %scevgep, i64 %79
  %81 = icmp ugt ptr %80, %scevgep
  %82 = zext i8 %72 to i64
  %83 = getelementptr i8, ptr %pcoder, i64 %82
  %scevgep62 = getelementptr i8, ptr %83, i64 73
  %84 = sub i64 0, %69
  %85 = getelementptr i8, ptr %scevgep62, i64 %84
  %86 = icmp ugt ptr %85, %scevgep62
  %87 = or i1 %71, %76
  %88 = or i1 %87, %81
  %89 = or i1 %88, %86
  br i1 %89, label %for.body.i44.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %90 = add i8 %pos.i42.promoted, %.tr.i43
  %91 = zext i8 %90 to i64
  %92 = zext i8 %pos.i42.promoted to i64
  %93 = sub nsw i64 %91, %92
  %diff.check = icmp ult i64 %93, 64
  br i1 %diff.check, label %for.body.i44.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %sub13, -64
  %.cast = trunc i64 %n.vec to i8
  %ind.end = sub i8 %pos.i42.promoted, %.cast
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %.cast67 = trunc i64 %index to i8
  %offset.idx = sub i8 %pos.i42.promoted, %.cast67
  %94 = add i8 %offset.idx, %.tr.i43
  %95 = zext i8 %94 to i64
  %96 = getelementptr inbounds [256 x i8], ptr %history.i41, i64 0, i64 %95
  %97 = getelementptr inbounds i8, ptr %96, i64 -15
  %98 = getelementptr inbounds i8, ptr %96, i64 -31
  %99 = getelementptr inbounds i8, ptr %96, i64 -47
  %100 = getelementptr inbounds i8, ptr %96, i64 -63
  %wide.load = load <16 x i8>, ptr %97, align 1
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %wide.load68 = load <16 x i8>, ptr %98, align 1
  %reverse69 = shufflevector <16 x i8> %wide.load68, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %wide.load70 = load <16 x i8>, ptr %99, align 1
  %reverse71 = shufflevector <16 x i8> %wide.load70, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %wide.load72 = load <16 x i8>, ptr %100, align 1
  %reverse73 = shufflevector <16 x i8> %wide.load72, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %101 = getelementptr inbounds i8, ptr %add.ptr12, i64 %index
  %102 = getelementptr inbounds i8, ptr %101, i64 16
  %103 = getelementptr inbounds i8, ptr %101, i64 32
  %104 = getelementptr inbounds i8, ptr %101, i64 48
  %wide.load74 = load <16 x i8>, ptr %101, align 1
  %wide.load75 = load <16 x i8>, ptr %102, align 1
  %wide.load76 = load <16 x i8>, ptr %103, align 1
  %wide.load77 = load <16 x i8>, ptr %104, align 1
  %105 = zext i8 %offset.idx to i64
  %106 = getelementptr inbounds [256 x i8], ptr %history.i41, i64 0, i64 %105
  %107 = getelementptr inbounds i8, ptr %106, i64 -15
  %108 = getelementptr inbounds i8, ptr %106, i64 -31
  %109 = getelementptr inbounds i8, ptr %106, i64 -47
  %110 = getelementptr inbounds i8, ptr %106, i64 -63
  %reverse78 = shufflevector <16 x i8> %wide.load74, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse78, ptr %107, align 1
  %reverse79 = shufflevector <16 x i8> %wide.load75, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse79, ptr %108, align 1
  %reverse80 = shufflevector <16 x i8> %wide.load76, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse80, ptr %109, align 1
  %reverse81 = shufflevector <16 x i8> %wide.load77, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse81, ptr %110, align 1
  %111 = sub <16 x i8> %wide.load74, %reverse
  %112 = sub <16 x i8> %wide.load75, %reverse69
  %113 = sub <16 x i8> %wide.load76, %reverse71
  %114 = sub <16 x i8> %wide.load77, %reverse73
  store <16 x i8> %111, ptr %101, align 1
  store <16 x i8> %112, ptr %102, align 1
  store <16 x i8> %113, ptr %103, align 1
  store <16 x i8> %114, ptr %104, align 1
  %index.next = add nuw i64 %index, 64
  %115 = icmp eq i64 %index.next, %n.vec
  br i1 %115, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %sub13, %n.vec
  br i1 %cmp.n, label %if.end.loopexit, label %for.body.i44.preheader

for.body.i44.preheader:                           ; preds = %middle.block, %vector.memcheck, %vector.scevcheck, %for.body.lr.ph.i39
  %dec.i4955.ph = phi i8 [ %pos.i42.promoted, %vector.memcheck ], [ %pos.i42.promoted, %vector.scevcheck ], [ %pos.i42.promoted, %for.body.lr.ph.i39 ], [ %ind.end, %middle.block ]
  %i.021.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %for.body.lr.ph.i39 ], [ %n.vec, %middle.block ]
  br label %for.body.i44

for.body.i44:                                     ; preds = %for.body.i44.preheader, %for.body.i44
  %dec.i4955 = phi i8 [ %dec.i49, %for.body.i44 ], [ %dec.i4955.ph, %for.body.i44.preheader ]
  %i.021.i = phi i64 [ %inc.i53, %for.body.i44 ], [ %i.021.i.ph, %for.body.i44.preheader ]
  %add.narrow.i45 = add i8 %dec.i4955, %.tr.i43
  %and.i46 = zext i8 %add.narrow.i45 to i64
  %arrayidx.i47 = getelementptr inbounds [256 x i8], ptr %history.i41, i64 0, i64 %and.i46
  %116 = load i8, ptr %arrayidx.i47, align 1
  %arrayidx2.i48 = getelementptr inbounds i8, ptr %add.ptr12, i64 %i.021.i
  %117 = load i8, ptr %arrayidx2.i48, align 1
  %dec.i49 = add i8 %dec.i4955, -1
  %idxprom.i50 = zext i8 %dec.i4955 to i64
  %arrayidx7.i51 = getelementptr inbounds [256 x i8], ptr %history.i41, i64 0, i64 %idxprom.i50
  store i8 %117, ptr %arrayidx7.i51, align 1
  %sub.i52 = sub i8 %117, %116
  store i8 %sub.i52, ptr %arrayidx2.i48, align 1
  %inc.i53 = add nuw i64 %i.021.i, 1
  %exitcond.not.i54 = icmp eq i64 %inc.i53, %sub13
  br i1 %exitcond.not.i54, label %if.end.loopexit, label %for.body.i44, !llvm.loop !16

if.end.loopexit:                                  ; preds = %for.body.i44, %middle.block
  %dec.i49.lcssa = phi i8 [ %ind.end, %middle.block ], [ %dec.i49, %for.body.i44 ]
  store i8 %dec.i49.lcssa, ptr %pos.i42, align 8
  br label %if.end

if.end:                                           ; preds = %if.end.loopexit, %if.else, %copy_and_encode.exit, %land.rhs
  %ret.0 = phi i32 [ 0, %copy_and_encode.exit ], [ %63, %land.rhs ], [ %call, %if.else ], [ %call, %if.end.loopexit ]
  ret i32 %ret.0
}

; Function Attrs: nounwind uwtable
define internal i32 @delta_encoder_update(ptr noundef %pcoder, ptr noundef %allocator, ptr nocapture readnone %filters_null, ptr noundef %reversed_filters) #0 {
entry:
  %add.ptr = getelementptr inbounds i8, ptr %reversed_filters, i64 16
  %call = tail call i32 @lzma_next_filter_update(ptr noundef %pcoder, ptr noundef %allocator, ptr noundef nonnull %add.ptr) #4
  ret i32 %call
}

declare i32 @lzma_delta_coder_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 12) i32 @lzma_delta_props_encode(ptr noundef %options, ptr nocapture noundef writeonly %out) local_unnamed_addr #0 {
entry:
  %call = tail call i64 @lzma_delta_coder_memusage(ptr noundef %options) #4
  %cmp = icmp eq i64 %call, -1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %dist = getelementptr inbounds i8, ptr %options, i64 4
  %0 = load i32, ptr %dist, align 4
  %1 = trunc i32 %0 to i8
  %conv = add i8 %1, -1
  store i8 %conv, ptr %out, align 1
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 11, %entry ]
  ret i32 %retval.0
}

declare i64 @lzma_delta_coder_memusage(ptr noundef) local_unnamed_addr #1

declare i32 @lzma_next_filter_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"copy_and_encode: %in"}
!7 = distinct !{!7, !"copy_and_encode"}
!8 = !{!9}
!9 = distinct !{!9, !7, !"copy_and_encode: %out"}
!10 = !{!6, !9}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12, !13}
!16 = distinct !{!16, !12}
