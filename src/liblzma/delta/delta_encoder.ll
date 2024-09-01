; ModuleID = 'liblzma/delta/delta_encoder.c'
source_filename = "liblzma/delta/delta_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_delta_encoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters) local_unnamed_addr #0 !dbg !46 {
entry:
    #dbg_value(ptr %next, !140, !DIExpression(), !143)
    #dbg_value(ptr %allocator, !141, !DIExpression(), !143)
    #dbg_value(ptr %filters, !142, !DIExpression(), !143)
  %code = getelementptr inbounds i8, ptr %next, i64 24, !dbg !144
  store ptr @delta_encode, ptr %code, align 8, !dbg !145
  %update = getelementptr inbounds i8, ptr %next, i64 56, !dbg !146
  store ptr @delta_encoder_update, ptr %update, align 8, !dbg !147
  %call = tail call i32 @lzma_delta_coder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters) #4, !dbg !148
  ret i32 %call, !dbg !149
}

; Function Attrs: nounwind uwtable
define internal i32 @delta_encode(ptr nocapture noundef %pcoder, ptr noundef %allocator, ptr noalias noundef %in, ptr noalias noundef %in_pos, i64 noundef %in_size, ptr noalias noundef %out, ptr noalias noundef %out_pos, i64 noundef %out_size, i32 noundef %action) #0 !dbg !150 {
entry:
    #dbg_value(ptr %pcoder, !152, !DIExpression(), !182)
    #dbg_value(ptr %allocator, !153, !DIExpression(), !182)
    #dbg_value(ptr %in, !154, !DIExpression(), !182)
    #dbg_value(ptr %in_pos, !155, !DIExpression(), !182)
    #dbg_value(i64 %in_size, !156, !DIExpression(), !182)
    #dbg_value(ptr %out, !157, !DIExpression(), !182)
    #dbg_value(ptr %out_pos, !158, !DIExpression(), !182)
    #dbg_value(i64 %out_size, !159, !DIExpression(), !182)
    #dbg_value(i32 %action, !160, !DIExpression(), !182)
    #dbg_value(ptr %pcoder, !161, !DIExpression(), !182)
  %code = getelementptr inbounds i8, ptr %pcoder, i64 24, !dbg !183
  %0 = load ptr, ptr %code, align 8, !dbg !183
  %cmp = icmp eq ptr %0, null, !dbg !184
  br i1 %cmp, label %if.then, label %if.else, !dbg !185

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %in_pos, align 8, !dbg !186
  %sub = sub i64 %in_size, %1, !dbg !187
    #dbg_value(i64 %sub, !174, !DIExpression(), !188)
  %2 = load i64, ptr %out_pos, align 8, !dbg !189
  %sub1 = sub i64 %out_size, %2, !dbg !190
    #dbg_value(i64 %sub1, !178, !DIExpression(), !188)
  %cond = tail call i64 @llvm.umin.i64(i64 %sub, i64 %sub1), !dbg !191
    #dbg_value(i64 %cond, !179, !DIExpression(), !188)
  %add.ptr = getelementptr inbounds i8, ptr %in, i64 %1, !dbg !192
  %add.ptr3 = getelementptr inbounds i8, ptr %out, i64 %2, !dbg !193
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194), !dbg !197
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198), !dbg !197
    #dbg_value(ptr %pcoder, !200, !DIExpression(), !215)
    #dbg_value(ptr %add.ptr, !205, !DIExpression(), !215)
    #dbg_value(ptr %add.ptr3, !206, !DIExpression(), !215)
    #dbg_value(i64 %cond, !207, !DIExpression(), !215)
    #dbg_value(ptr %pcoder, !208, !DIExpression(), !215)
    #dbg_value(i64 poison, !209, !DIExpression(), !215)
    #dbg_value(i64 0, !210, !DIExpression(), !217)
  %cmp22.not.i = icmp eq i64 %cond, 0, !dbg !218
  br i1 %cmp22.not.i, label %copy_and_encode.exit, label %for.body.lr.ph.i, !dbg !219

for.body.lr.ph.i:                                 ; preds = %if.then
  %distance1.i = getelementptr inbounds i8, ptr %pcoder, i64 64, !dbg !220
  %3 = load i64, ptr %distance1.i, align 8, !dbg !220, !noalias !221
    #dbg_value(i64 %3, !209, !DIExpression(), !215)
  %history.i = getelementptr inbounds i8, ptr %pcoder, i64 73
  %pos.i = getelementptr inbounds i8, ptr %pcoder, i64 72
  %.tr.i = trunc i64 %3 to i8
  %pos.promoted.i = load i8, ptr %pos.i, align 8, !noalias !221
  %min.iters.check101 = icmp ult i64 %cond, 64, !dbg !219
  br i1 %min.iters.check101, label %for.body.i.preheader, label %vector.scevcheck82, !dbg !219

for.body.i.preheader:                             ; preds = %middle.block99, %vector.memcheck97, %vector.scevcheck82, %for.body.lr.ph.i
  %.ph = phi i8 [ %pos.promoted.i, %vector.memcheck97 ], [ %pos.promoted.i, %vector.scevcheck82 ], [ %pos.promoted.i, %for.body.lr.ph.i ], [ %ind.end106, %middle.block99 ]
  %i.023.i.ph = phi i64 [ 0, %vector.memcheck97 ], [ 0, %vector.scevcheck82 ], [ 0, %for.body.lr.ph.i ], [ %n.vec104, %middle.block99 ]
  %.neg = or disjoint i64 %i.023.i.ph, 1, !dbg !219
  %xtraiter = and i64 %cond, 1, !dbg !219
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !219
  br i1 %lcmp.mod.not, label %for.body.i.prol.loopexit, label %for.body.i.prol, !dbg !219

for.body.i.prol:                                  ; preds = %for.body.i.preheader
    #dbg_value(i64 poison, !210, !DIExpression(), !217)
  %add.narrow.i.prol = add i8 %.ph, %.tr.i, !dbg !222
  %and.i.prol = zext i8 %add.narrow.i.prol to i64, !dbg !222
  %arrayidx.i.prol = getelementptr inbounds [256 x i8], ptr %history.i, i64 0, i64 %and.i.prol, !dbg !223
  %4 = load i8, ptr %arrayidx.i.prol, align 1, !dbg !223, !noalias !221
    #dbg_value(i8 %4, !212, !DIExpression(), !224)
  %arrayidx2.i.prol = getelementptr inbounds i8, ptr %add.ptr, i64 %i.023.i.ph, !dbg !225
  %5 = load i8, ptr %arrayidx2.i.prol, align 1, !dbg !225, !alias.scope !194, !noalias !198
  %dec.i.prol = add i8 %.ph, -1, !dbg !226
  %idxprom.i.prol = zext i8 %.ph to i64, !dbg !227
  %arrayidx7.i.prol = getelementptr inbounds [256 x i8], ptr %history.i, i64 0, i64 %idxprom.i.prol, !dbg !227
  store i8 %5, ptr %arrayidx7.i.prol, align 1, !dbg !228, !noalias !221
  %sub.i.prol = sub i8 %5, %4, !dbg !229
  %arrayidx12.i.prol = getelementptr inbounds i8, ptr %add.ptr3, i64 %i.023.i.ph, !dbg !230
  store i8 %sub.i.prol, ptr %arrayidx12.i.prol, align 1, !dbg !231, !alias.scope !198, !noalias !194
  %inc.i.prol = or disjoint i64 %i.023.i.ph, 1, !dbg !232
    #dbg_value(i64 %inc.i.prol, !210, !DIExpression(), !217)
  br label %for.body.i.prol.loopexit, !dbg !219

for.body.i.prol.loopexit:                         ; preds = %for.body.i.prol, %for.body.i.preheader
  %dec.i.lcssa131.unr = phi i8 [ poison, %for.body.i.preheader ], [ %dec.i.prol, %for.body.i.prol ]
  %.unr = phi i8 [ %.ph, %for.body.i.preheader ], [ %dec.i.prol, %for.body.i.prol ]
  %i.023.i.unr = phi i64 [ %i.023.i.ph, %for.body.i.preheader ], [ %inc.i.prol, %for.body.i.prol ]
  %6 = icmp eq i64 %cond, %.neg, !dbg !219
  br i1 %6, label %for.cond.for.cond.cleanup_crit_edge.i, label %for.body.i, !dbg !219

vector.scevcheck82:                               ; preds = %for.body.lr.ph.i
  %7 = add i64 %cond, -1, !dbg !219
  %8 = trunc i64 %7 to i8, !dbg !219
  %9 = icmp ult i8 %pos.promoted.i, %8, !dbg !219
  %10 = add i8 %pos.promoted.i, %.tr.i, !dbg !219
  %11 = trunc i64 %7 to i8, !dbg !219
  %12 = icmp ult i8 %10, %11, !dbg !219
  %13 = icmp ugt i64 %7, 255, !dbg !219
  %14 = or i1 %12, %13, !dbg !219
  %15 = zext i8 %pos.promoted.i to i64, !dbg !219
  %16 = getelementptr i8, ptr %pcoder, i64 %15, !dbg !219
  %scevgep89 = getelementptr i8, ptr %16, i64 73, !dbg !219
  %17 = sub i64 1, %cond, !dbg !219
  %18 = getelementptr i8, ptr %scevgep89, i64 %17, !dbg !219
  %19 = icmp ugt ptr %18, %scevgep89, !dbg !219
  %20 = zext i8 %10 to i64, !dbg !219
  %21 = getelementptr i8, ptr %pcoder, i64 %20, !dbg !219
  %scevgep93 = getelementptr i8, ptr %21, i64 73, !dbg !219
  %22 = sub i64 1, %cond, !dbg !219
  %23 = getelementptr i8, ptr %scevgep93, i64 %22, !dbg !219
  %24 = icmp ugt ptr %23, %scevgep93, !dbg !219
  %25 = or i1 %9, %14, !dbg !219
  %26 = or i1 %25, %19, !dbg !219
  %27 = or i1 %26, %24, !dbg !219
  br i1 %27, label %for.body.i.preheader, label %vector.memcheck97

vector.memcheck97:                                ; preds = %vector.scevcheck82
  %28 = add i8 %pos.promoted.i, %.tr.i, !dbg !219
  %29 = zext i8 %28 to i64, !dbg !219
  %30 = zext i8 %pos.promoted.i to i64, !dbg !219
  %31 = sub nsw i64 %29, %30, !dbg !219
  %diff.check98 = icmp ult i64 %31, 64, !dbg !219
  br i1 %diff.check98, label %for.body.i.preheader, label %vector.ph102

vector.ph102:                                     ; preds = %vector.memcheck97
  %n.vec104 = and i64 %cond, 448, !dbg !219
  %.cast105 = trunc i64 %n.vec104 to i8, !dbg !219
  %ind.end106 = sub i8 %pos.promoted.i, %.cast105, !dbg !219
  br label %vector.body109, !dbg !219

vector.body109:                                   ; preds = %vector.body109, %vector.ph102
  %index110 = phi i64 [ 0, %vector.ph102 ], [ %index.next129, %vector.body109 ], !dbg !232
  %.cast111 = trunc i64 %index110 to i8, !dbg !219
  %offset.idx112 = sub i8 %pos.promoted.i, %.cast111, !dbg !219
  %32 = add i8 %offset.idx112, %.tr.i, !dbg !222
  %33 = zext i8 %32 to i64, !dbg !222
  %34 = getelementptr inbounds [256 x i8], ptr %history.i, i64 0, i64 %33, !dbg !223
  %35 = getelementptr inbounds i8, ptr %34, i64 -15, !dbg !223
  %36 = getelementptr inbounds i8, ptr %34, i64 -31, !dbg !223
  %37 = getelementptr inbounds i8, ptr %34, i64 -47, !dbg !223
  %38 = getelementptr inbounds i8, ptr %34, i64 -63, !dbg !223
  %wide.load113 = load <16 x i8>, ptr %35, align 1, !dbg !223, !noalias !221
  %reverse114 = shufflevector <16 x i8> %wide.load113, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !223
  %wide.load115 = load <16 x i8>, ptr %36, align 1, !dbg !223, !noalias !221
  %reverse116 = shufflevector <16 x i8> %wide.load115, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !223
  %wide.load117 = load <16 x i8>, ptr %37, align 1, !dbg !223, !noalias !221
  %reverse118 = shufflevector <16 x i8> %wide.load117, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !223
  %wide.load119 = load <16 x i8>, ptr %38, align 1, !dbg !223, !noalias !221
  %reverse120 = shufflevector <16 x i8> %wide.load119, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !223
  %39 = getelementptr inbounds i8, ptr %add.ptr, i64 %index110, !dbg !225
  %40 = getelementptr inbounds i8, ptr %39, i64 16, !dbg !225
  %41 = getelementptr inbounds i8, ptr %39, i64 32, !dbg !225
  %42 = getelementptr inbounds i8, ptr %39, i64 48, !dbg !225
  %wide.load121 = load <16 x i8>, ptr %39, align 1, !dbg !225, !alias.scope !194, !noalias !198
  %wide.load122 = load <16 x i8>, ptr %40, align 1, !dbg !225, !alias.scope !194, !noalias !198
  %wide.load123 = load <16 x i8>, ptr %41, align 1, !dbg !225, !alias.scope !194, !noalias !198
  %wide.load124 = load <16 x i8>, ptr %42, align 1, !dbg !225, !alias.scope !194, !noalias !198
  %43 = zext i8 %offset.idx112 to i64, !dbg !227
  %44 = getelementptr inbounds [256 x i8], ptr %history.i, i64 0, i64 %43, !dbg !227
  %45 = getelementptr inbounds i8, ptr %44, i64 -15, !dbg !228
  %46 = getelementptr inbounds i8, ptr %44, i64 -31, !dbg !228
  %47 = getelementptr inbounds i8, ptr %44, i64 -47, !dbg !228
  %48 = getelementptr inbounds i8, ptr %44, i64 -63, !dbg !228
  %reverse125 = shufflevector <16 x i8> %wide.load121, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !228
  store <16 x i8> %reverse125, ptr %45, align 1, !dbg !228, !noalias !221
  %reverse126 = shufflevector <16 x i8> %wide.load122, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !228
  store <16 x i8> %reverse126, ptr %46, align 1, !dbg !228, !noalias !221
  %reverse127 = shufflevector <16 x i8> %wide.load123, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !228
  store <16 x i8> %reverse127, ptr %47, align 1, !dbg !228, !noalias !221
  %reverse128 = shufflevector <16 x i8> %wide.load124, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !228
  store <16 x i8> %reverse128, ptr %48, align 1, !dbg !228, !noalias !221
  %49 = sub <16 x i8> %wide.load121, %reverse114, !dbg !229
  %50 = sub <16 x i8> %wide.load122, %reverse116, !dbg !229
  %51 = sub <16 x i8> %wide.load123, %reverse118, !dbg !229
  %52 = sub <16 x i8> %wide.load124, %reverse120, !dbg !229
  %53 = getelementptr inbounds i8, ptr %add.ptr3, i64 %index110, !dbg !230
  %54 = getelementptr inbounds i8, ptr %53, i64 16, !dbg !231
  %55 = getelementptr inbounds i8, ptr %53, i64 32, !dbg !231
  %56 = getelementptr inbounds i8, ptr %53, i64 48, !dbg !231
  store <16 x i8> %49, ptr %53, align 1, !dbg !231, !alias.scope !198, !noalias !194
  store <16 x i8> %50, ptr %54, align 1, !dbg !231, !alias.scope !198, !noalias !194
  store <16 x i8> %51, ptr %55, align 1, !dbg !231, !alias.scope !198, !noalias !194
  store <16 x i8> %52, ptr %56, align 1, !dbg !231, !alias.scope !198, !noalias !194
  %index.next129 = add nuw i64 %index110, 64, !dbg !232
  %57 = icmp eq i64 %index.next129, %n.vec104, !dbg !232
  br i1 %57, label %middle.block99, label %vector.body109, !dbg !232, !llvm.loop !233

middle.block99:                                   ; preds = %vector.body109
  %cmp.n130 = icmp eq i64 %cond, %n.vec104, !dbg !219
  br i1 %cmp.n130, label %for.cond.for.cond.cleanup_crit_edge.i, label %for.body.i.preheader, !dbg !219

for.cond.for.cond.cleanup_crit_edge.i:            ; preds = %for.body.i.prol.loopexit, %for.body.i, %middle.block99
  %dec.i.lcssa = phi i8 [ %ind.end106, %middle.block99 ], [ %dec.i.lcssa131.unr, %for.body.i.prol.loopexit ], [ %dec.i.1, %for.body.i ], !dbg !226
  store i8 %dec.i.lcssa, ptr %pos.i, align 8, !dbg !224, !noalias !221
  br label %copy_and_encode.exit, !dbg !219

for.body.i:                                       ; preds = %for.body.i.prol.loopexit, %for.body.i
  %58 = phi i8 [ %dec.i.1, %for.body.i ], [ %.unr, %for.body.i.prol.loopexit ], !dbg !237
  %i.023.i = phi i64 [ %inc.i.1, %for.body.i ], [ %i.023.i.unr, %for.body.i.prol.loopexit ]
    #dbg_value(i64 %i.023.i, !210, !DIExpression(), !217)
  %add.narrow.i = add i8 %58, %.tr.i, !dbg !222
  %and.i = zext i8 %add.narrow.i to i64, !dbg !222
  %arrayidx.i = getelementptr inbounds [256 x i8], ptr %history.i, i64 0, i64 %and.i, !dbg !223
  %59 = load i8, ptr %arrayidx.i, align 1, !dbg !223, !noalias !221
    #dbg_value(i8 %59, !212, !DIExpression(), !224)
  %arrayidx2.i = getelementptr inbounds i8, ptr %add.ptr, i64 %i.023.i, !dbg !225
  %60 = load i8, ptr %arrayidx2.i, align 1, !dbg !225, !alias.scope !194, !noalias !198
  %dec.i = add i8 %58, -1, !dbg !226
  %idxprom.i = zext i8 %58 to i64, !dbg !227
  %arrayidx7.i = getelementptr inbounds [256 x i8], ptr %history.i, i64 0, i64 %idxprom.i, !dbg !227
  store i8 %60, ptr %arrayidx7.i, align 1, !dbg !228, !noalias !221
  %sub.i = sub i8 %60, %59, !dbg !229
  %arrayidx12.i = getelementptr inbounds i8, ptr %add.ptr3, i64 %i.023.i, !dbg !230
  store i8 %sub.i, ptr %arrayidx12.i, align 1, !dbg !231, !alias.scope !198, !noalias !194
  %inc.i = add nuw i64 %i.023.i, 1, !dbg !232
    #dbg_value(i64 %inc.i, !210, !DIExpression(), !217)
  %add.narrow.i.1 = add i8 %dec.i, %.tr.i, !dbg !222
  %and.i.1 = zext i8 %add.narrow.i.1 to i64, !dbg !222
  %arrayidx.i.1 = getelementptr inbounds [256 x i8], ptr %history.i, i64 0, i64 %and.i.1, !dbg !223
  %61 = load i8, ptr %arrayidx.i.1, align 1, !dbg !223, !noalias !221
    #dbg_value(i8 %61, !212, !DIExpression(), !224)
  %arrayidx2.i.1 = getelementptr inbounds i8, ptr %add.ptr, i64 %inc.i, !dbg !225
  %62 = load i8, ptr %arrayidx2.i.1, align 1, !dbg !225, !alias.scope !194, !noalias !198
  %dec.i.1 = add i8 %58, -2, !dbg !226
  %idxprom.i.1 = zext i8 %dec.i to i64, !dbg !227
  %arrayidx7.i.1 = getelementptr inbounds [256 x i8], ptr %history.i, i64 0, i64 %idxprom.i.1, !dbg !227
  store i8 %62, ptr %arrayidx7.i.1, align 1, !dbg !228, !noalias !221
  %sub.i.1 = sub i8 %62, %61, !dbg !229
  %arrayidx12.i.1 = getelementptr inbounds i8, ptr %add.ptr3, i64 %inc.i, !dbg !230
  store i8 %sub.i.1, ptr %arrayidx12.i.1, align 1, !dbg !231, !alias.scope !198, !noalias !194
  %inc.i.1 = add nuw i64 %i.023.i, 2, !dbg !232
    #dbg_value(i64 %inc.i.1, !210, !DIExpression(), !217)
  %exitcond.not.i.1 = icmp eq i64 %inc.i.1, %cond, !dbg !218
  br i1 %exitcond.not.i.1, label %for.cond.for.cond.cleanup_crit_edge.i, label %for.body.i, !dbg !219, !llvm.loop !238

copy_and_encode.exit:                             ; preds = %if.then, %for.cond.for.cond.cleanup_crit_edge.i
  %add = add i64 %cond, %1, !dbg !239
  store i64 %add, ptr %in_pos, align 8, !dbg !239
  %add4 = add i64 %cond, %2, !dbg !240
  store i64 %add4, ptr %out_pos, align 8, !dbg !240
  %cmp5.not = icmp eq i32 %action, 0, !dbg !241
  br i1 %cmp5.not, label %if.end, label %land.rhs, !dbg !242

land.rhs:                                         ; preds = %copy_and_encode.exit
  %cmp6 = icmp eq i64 %add, %in_size, !dbg !243
  %63 = zext i1 %cmp6 to i32, !dbg !244
  br label %if.end

if.else:                                          ; preds = %entry
  %64 = load i64, ptr %out_pos, align 8, !dbg !245
    #dbg_value(i64 %64, !180, !DIExpression(), !246)
  %65 = load ptr, ptr %pcoder, align 8, !dbg !247
  %call = tail call i32 %0(ptr noundef %65, ptr noundef %allocator, ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %out_size, i32 noundef %action) #4, !dbg !248
    #dbg_value(i32 %call, !173, !DIExpression(), !182)
  %add.ptr12 = getelementptr inbounds i8, ptr %out, i64 %64, !dbg !249
  %66 = load i64, ptr %out_pos, align 8, !dbg !250
  %sub13 = sub i64 %66, %64, !dbg !251
    #dbg_value(ptr %pcoder, !252, !DIExpression(), !266)
    #dbg_value(ptr %add.ptr12, !257, !DIExpression(), !266)
    #dbg_value(i64 %sub13, !258, !DIExpression(), !266)
    #dbg_value(ptr %pcoder, !259, !DIExpression(), !266)
    #dbg_value(i64 poison, !260, !DIExpression(), !266)
    #dbg_value(i64 0, !261, !DIExpression(), !268)
  %cmp20.not.i = icmp eq i64 %66, %64, !dbg !269
  br i1 %cmp20.not.i, label %if.end, label %for.body.lr.ph.i39, !dbg !270

for.body.lr.ph.i39:                               ; preds = %if.else
  %distance1.i40 = getelementptr inbounds i8, ptr %pcoder, i64 64, !dbg !271
  %67 = load i64, ptr %distance1.i40, align 8, !dbg !271
    #dbg_value(i64 %67, !260, !DIExpression(), !266)
  %history.i41 = getelementptr inbounds i8, ptr %pcoder, i64 73
  %pos.i42 = getelementptr inbounds i8, ptr %pcoder, i64 72
  %.tr.i43 = trunc i64 %67 to i8
  %pos.i42.promoted = load i8, ptr %pos.i42, align 8
  %min.iters.check = icmp ult i64 %sub13, 64, !dbg !270
  br i1 %min.iters.check, label %for.body.i44.preheader, label %vector.scevcheck, !dbg !270

vector.scevcheck:                                 ; preds = %for.body.lr.ph.i39
  %68 = xor i64 %64, -1, !dbg !270
  %69 = add i64 %66, %68, !dbg !270
  %70 = trunc i64 %69 to i8, !dbg !270
  %71 = icmp ult i8 %pos.i42.promoted, %70, !dbg !270
  %72 = add i8 %pos.i42.promoted, %.tr.i43, !dbg !270
  %73 = trunc i64 %69 to i8, !dbg !270
  %74 = icmp ult i8 %72, %73, !dbg !270
  %75 = icmp ugt i64 %69, 255, !dbg !270
  %76 = or i1 %74, %75, !dbg !270
  %77 = zext i8 %pos.i42.promoted to i64, !dbg !270
  %78 = getelementptr i8, ptr %pcoder, i64 %77, !dbg !270
  %scevgep = getelementptr i8, ptr %78, i64 73, !dbg !270
  %79 = sub i64 0, %69, !dbg !270
  %80 = getelementptr i8, ptr %scevgep, i64 %79, !dbg !270
  %81 = icmp ugt ptr %80, %scevgep, !dbg !270
  %82 = zext i8 %72 to i64, !dbg !270
  %83 = getelementptr i8, ptr %pcoder, i64 %82, !dbg !270
  %scevgep62 = getelementptr i8, ptr %83, i64 73, !dbg !270
  %84 = sub i64 0, %69, !dbg !270
  %85 = getelementptr i8, ptr %scevgep62, i64 %84, !dbg !270
  %86 = icmp ugt ptr %85, %scevgep62, !dbg !270
  %87 = or i1 %71, %76, !dbg !270
  %88 = or i1 %87, %81, !dbg !270
  %89 = or i1 %88, %86, !dbg !270
  br i1 %89, label %for.body.i44.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %90 = add i8 %pos.i42.promoted, %.tr.i43, !dbg !270
  %91 = zext i8 %90 to i64, !dbg !270
  %92 = zext i8 %pos.i42.promoted to i64, !dbg !270
  %93 = sub nsw i64 %91, %92, !dbg !270
  %diff.check = icmp ult i64 %93, 64, !dbg !270
  br i1 %diff.check, label %for.body.i44.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %sub13, -64, !dbg !270
  %.cast = trunc i64 %n.vec to i8, !dbg !270
  %ind.end = sub i8 %pos.i42.promoted, %.cast, !dbg !270
  br label %vector.body, !dbg !270

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !272
  %.cast67 = trunc i64 %index to i8, !dbg !270
  %offset.idx = sub i8 %pos.i42.promoted, %.cast67, !dbg !270
  %94 = add i8 %offset.idx, %.tr.i43, !dbg !273
  %95 = zext i8 %94 to i64, !dbg !273
  %96 = getelementptr inbounds [256 x i8], ptr %history.i41, i64 0, i64 %95, !dbg !274
  %97 = getelementptr inbounds i8, ptr %96, i64 -15, !dbg !274
  %98 = getelementptr inbounds i8, ptr %96, i64 -31, !dbg !274
  %99 = getelementptr inbounds i8, ptr %96, i64 -47, !dbg !274
  %100 = getelementptr inbounds i8, ptr %96, i64 -63, !dbg !274
  %wide.load = load <16 x i8>, ptr %97, align 1, !dbg !274
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !274
  %wide.load68 = load <16 x i8>, ptr %98, align 1, !dbg !274
  %reverse69 = shufflevector <16 x i8> %wide.load68, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !274
  %wide.load70 = load <16 x i8>, ptr %99, align 1, !dbg !274
  %reverse71 = shufflevector <16 x i8> %wide.load70, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !274
  %wide.load72 = load <16 x i8>, ptr %100, align 1, !dbg !274
  %reverse73 = shufflevector <16 x i8> %wide.load72, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !274
  %101 = getelementptr inbounds i8, ptr %add.ptr12, i64 %index, !dbg !275
  %102 = getelementptr inbounds i8, ptr %101, i64 16, !dbg !275
  %103 = getelementptr inbounds i8, ptr %101, i64 32, !dbg !275
  %104 = getelementptr inbounds i8, ptr %101, i64 48, !dbg !275
  %wide.load74 = load <16 x i8>, ptr %101, align 1, !dbg !275
  %wide.load75 = load <16 x i8>, ptr %102, align 1, !dbg !275
  %wide.load76 = load <16 x i8>, ptr %103, align 1, !dbg !275
  %wide.load77 = load <16 x i8>, ptr %104, align 1, !dbg !275
  %105 = zext i8 %offset.idx to i64, !dbg !276
  %106 = getelementptr inbounds [256 x i8], ptr %history.i41, i64 0, i64 %105, !dbg !276
  %107 = getelementptr inbounds i8, ptr %106, i64 -15, !dbg !277
  %108 = getelementptr inbounds i8, ptr %106, i64 -31, !dbg !277
  %109 = getelementptr inbounds i8, ptr %106, i64 -47, !dbg !277
  %110 = getelementptr inbounds i8, ptr %106, i64 -63, !dbg !277
  %reverse78 = shufflevector <16 x i8> %wide.load74, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !277
  store <16 x i8> %reverse78, ptr %107, align 1, !dbg !277
  %reverse79 = shufflevector <16 x i8> %wide.load75, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !277
  store <16 x i8> %reverse79, ptr %108, align 1, !dbg !277
  %reverse80 = shufflevector <16 x i8> %wide.load76, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !277
  store <16 x i8> %reverse80, ptr %109, align 1, !dbg !277
  %reverse81 = shufflevector <16 x i8> %wide.load77, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !277
  store <16 x i8> %reverse81, ptr %110, align 1, !dbg !277
  %111 = sub <16 x i8> %wide.load74, %reverse, !dbg !278
  %112 = sub <16 x i8> %wide.load75, %reverse69, !dbg !278
  %113 = sub <16 x i8> %wide.load76, %reverse71, !dbg !278
  %114 = sub <16 x i8> %wide.load77, %reverse73, !dbg !278
  store <16 x i8> %111, ptr %101, align 1, !dbg !278
  store <16 x i8> %112, ptr %102, align 1, !dbg !278
  store <16 x i8> %113, ptr %103, align 1, !dbg !278
  store <16 x i8> %114, ptr %104, align 1, !dbg !278
  %index.next = add nuw i64 %index, 64, !dbg !272
  %115 = icmp eq i64 %index.next, %n.vec, !dbg !272
  br i1 %115, label %middle.block, label %vector.body, !dbg !272, !llvm.loop !279

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %sub13, %n.vec, !dbg !270
  br i1 %cmp.n, label %if.end.loopexit, label %for.body.i44.preheader, !dbg !270

for.body.i44.preheader:                           ; preds = %middle.block, %vector.memcheck, %vector.scevcheck, %for.body.lr.ph.i39
  %dec.i4955.ph = phi i8 [ %pos.i42.promoted, %vector.memcheck ], [ %pos.i42.promoted, %vector.scevcheck ], [ %pos.i42.promoted, %for.body.lr.ph.i39 ], [ %ind.end, %middle.block ]
  %i.021.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %for.body.lr.ph.i39 ], [ %n.vec, %middle.block ]
  br label %for.body.i44, !dbg !270

for.body.i44:                                     ; preds = %for.body.i44.preheader, %for.body.i44
  %dec.i4955 = phi i8 [ %dec.i49, %for.body.i44 ], [ %dec.i4955.ph, %for.body.i44.preheader ], !dbg !281
  %i.021.i = phi i64 [ %inc.i53, %for.body.i44 ], [ %i.021.i.ph, %for.body.i44.preheader ]
    #dbg_value(i64 %i.021.i, !261, !DIExpression(), !268)
  %add.narrow.i45 = add i8 %dec.i4955, %.tr.i43, !dbg !273
  %and.i46 = zext i8 %add.narrow.i45 to i64, !dbg !273
  %arrayidx.i47 = getelementptr inbounds [256 x i8], ptr %history.i41, i64 0, i64 %and.i46, !dbg !274
  %116 = load i8, ptr %arrayidx.i47, align 1, !dbg !274
    #dbg_value(i8 %116, !263, !DIExpression(), !282)
  %arrayidx2.i48 = getelementptr inbounds i8, ptr %add.ptr12, i64 %i.021.i, !dbg !275
  %117 = load i8, ptr %arrayidx2.i48, align 1, !dbg !275
  %dec.i49 = add i8 %dec.i4955, -1, !dbg !283
  %idxprom.i50 = zext i8 %dec.i4955 to i64, !dbg !276
  %arrayidx7.i51 = getelementptr inbounds [256 x i8], ptr %history.i41, i64 0, i64 %idxprom.i50, !dbg !276
  store i8 %117, ptr %arrayidx7.i51, align 1, !dbg !277
  %sub.i52 = sub i8 %117, %116, !dbg !278
  store i8 %sub.i52, ptr %arrayidx2.i48, align 1, !dbg !278
  %inc.i53 = add nuw i64 %i.021.i, 1, !dbg !272
    #dbg_value(i64 %inc.i53, !261, !DIExpression(), !268)
  %exitcond.not.i54 = icmp eq i64 %inc.i53, %sub13, !dbg !269
  br i1 %exitcond.not.i54, label %if.end.loopexit, label %for.body.i44, !dbg !270, !llvm.loop !284

if.end.loopexit:                                  ; preds = %for.body.i44, %middle.block
  %dec.i49.lcssa = phi i8 [ %ind.end, %middle.block ], [ %dec.i49, %for.body.i44 ], !dbg !283
  store i8 %dec.i49.lcssa, ptr %pos.i42, align 8, !dbg !282
  br label %if.end, !dbg !285

if.end:                                           ; preds = %if.end.loopexit, %if.else, %copy_and_encode.exit, %land.rhs
  %ret.0 = phi i32 [ 0, %copy_and_encode.exit ], [ %63, %land.rhs ], [ %call, %if.else ], [ %call, %if.end.loopexit ], !dbg !286
    #dbg_value(i32 %ret.0, !173, !DIExpression(), !182)
  ret i32 %ret.0, !dbg !285
}

; Function Attrs: nounwind uwtable
define internal i32 @delta_encoder_update(ptr noundef %pcoder, ptr noundef %allocator, ptr nocapture readnone %filters_null, ptr noundef %reversed_filters) #0 !dbg !287 {
entry:
    #dbg_value(ptr %pcoder, !289, !DIExpression(), !294)
    #dbg_value(ptr %allocator, !290, !DIExpression(), !294)
    #dbg_value(ptr poison, !291, !DIExpression(), !294)
    #dbg_value(ptr %reversed_filters, !292, !DIExpression(), !294)
    #dbg_value(ptr %pcoder, !293, !DIExpression(), !294)
  %add.ptr = getelementptr inbounds i8, ptr %reversed_filters, i64 16, !dbg !295
  %call = tail call i32 @lzma_next_filter_update(ptr noundef %pcoder, ptr noundef %allocator, ptr noundef nonnull %add.ptr) #4, !dbg !296
  ret i32 %call, !dbg !297
}

declare !dbg !298 i32 @lzma_delta_coder_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 12) i32 @lzma_delta_props_encode(ptr noundef %options, ptr nocapture noundef writeonly %out) local_unnamed_addr #0 !dbg !299 {
entry:
    #dbg_value(ptr %options, !305, !DIExpression(), !324)
    #dbg_value(ptr %out, !306, !DIExpression(), !324)
  %call = tail call i64 @lzma_delta_coder_memusage(ptr noundef %options) #4, !dbg !325
  %cmp = icmp eq i64 %call, -1, !dbg !327
  br i1 %cmp, label %return, label %if.end, !dbg !328

if.end:                                           ; preds = %entry
    #dbg_value(ptr %options, !307, !DIExpression(), !324)
  %dist = getelementptr inbounds i8, ptr %options, i64 4, !dbg !329
  %0 = load i32, ptr %dist, align 4, !dbg !329
  %1 = trunc i32 %0 to i8, !dbg !330
  %conv = add i8 %1, -1, !dbg !330
  store i8 %conv, ptr %out, align 1, !dbg !331
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 11, %entry ], !dbg !324
  ret i32 %retval.0, !dbg !332
}

declare !dbg !333 i64 @lzma_delta_coder_memusage(ptr noundef) local_unnamed_addr #1

declare !dbg !337 i32 @lzma_next_filter_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !36, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "liblzma/delta/delta_encoder.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "71af779cb357b668e17f145629560449")
!2 = !{!3, !19, !25, !32}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 57, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "liblzma/api/lzma/base.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "81a3070447cc5b61b56cfbed076853db")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18}
!7 = !DIEnumerator(name: "LZMA_OK", value: 0)
!8 = !DIEnumerator(name: "LZMA_STREAM_END", value: 1)
!9 = !DIEnumerator(name: "LZMA_NO_CHECK", value: 2)
!10 = !DIEnumerator(name: "LZMA_UNSUPPORTED_CHECK", value: 3)
!11 = !DIEnumerator(name: "LZMA_GET_CHECK", value: 4)
!12 = !DIEnumerator(name: "LZMA_MEM_ERROR", value: 5)
!13 = !DIEnumerator(name: "LZMA_MEMLIMIT_ERROR", value: 6)
!14 = !DIEnumerator(name: "LZMA_FORMAT_ERROR", value: 7)
!15 = !DIEnumerator(name: "LZMA_OPTIONS_ERROR", value: 8)
!16 = !DIEnumerator(name: "LZMA_DATA_ERROR", value: 9)
!17 = !DIEnumerator(name: "LZMA_BUF_ERROR", value: 10)
!18 = !DIEnumerator(name: "LZMA_PROG_ERROR", value: 11)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 250, baseType: !5, size: 32, elements: !20)
!20 = !{!21, !22, !23, !24}
!21 = !DIEnumerator(name: "LZMA_RUN", value: 0)
!22 = !DIEnumerator(name: "LZMA_SYNC_FLUSH", value: 1)
!23 = !DIEnumerator(name: "LZMA_FULL_FLUSH", value: 2)
!24 = !DIEnumerator(name: "LZMA_FINISH", value: 3)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !26, line: 27, baseType: !5, size: 32, elements: !27)
!26 = !DIFile(filename: "liblzma/api/lzma/check.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "b07c3297e2bcc14bb477793d08325ee3")
!27 = !{!28, !29, !30, !31}
!28 = !DIEnumerator(name: "LZMA_CHECK_NONE", value: 0)
!29 = !DIEnumerator(name: "LZMA_CHECK_CRC32", value: 1)
!30 = !DIEnumerator(name: "LZMA_CHECK_CRC64", value: 4)
!31 = !DIEnumerator(name: "LZMA_CHECK_SHA256", value: 10)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !33, line: 35, baseType: !5, size: 32, elements: !34)
!33 = !DIFile(filename: "liblzma/api/lzma/delta.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "397cde14a8f4a544385c9c6ecc7e0cc9")
!34 = !{!35}
!35 = !DIEnumerator(name: "LZMA_DELTA_TYPE_BYTE", value: 0)
!36 = !{!37}
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!38 = !{i32 7, !"Dwarf Version", i32 5}
!39 = !{i32 2, !"Debug Info Version", i32 3}
!40 = !{i32 1, !"wchar_size", i32 4}
!41 = !{i32 8, !"PIC Level", i32 2}
!42 = !{i32 7, !"PIE Level", i32 2}
!43 = !{i32 7, !"uwtable", i32 2}
!44 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!45 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!46 = distinct !DISubprogram(name: "lzma_delta_encoder_init", scope: !1, file: !1, line: 104, type: !47, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !139)
!47 = !DISubroutineType(types: !48)
!48 = !{!49, !50, !74, !129}
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_next_coder", file: !52, line: 80, baseType: !53)
!52 = !DIFile(filename: "liblzma/common/common.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_next_coder_s", file: !52, line: 124, size: 512, elements: !54)
!54 = !{!55, !58, !66, !69, !100, !105, !112, !117}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !53, file: !52, line: 126, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_coder", file: !52, line: 78, baseType: null)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !53, file: !52, line: 130, baseType: !59, size: 64, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !60, line: 63, baseType: !61)
!60 = !DIFile(filename: "liblzma/api/lzma/vli.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !62, line: 27, baseType: !63)
!62 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !64, line: 45, baseType: !65)
!64 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!65 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !53, file: !52, line: 136, baseType: !67, size: 64, offset: 128)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !68, line: 90, baseType: !65)
!68 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!69 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !53, file: !52, line: 139, baseType: !70, size: 64, offset: 192)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_code_function", file: !52, line: 94, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DISubroutineType(types: !73)
!73 = !{!49, !56, !74, !89, !95, !82, !97, !95, !82, !99}
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !4, line: 403, baseType: !76)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 341, size: 192, elements: !77)
!77 = !{!78, !84, !88}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !76, file: !4, line: 376, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DISubroutineType(types: !81)
!81 = !{!37, !37, !82, !82}
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !83, line: 18, baseType: !65)
!83 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!84 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !76, file: !4, line: 390, baseType: !85, size: 64, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DISubroutineType(types: !87)
!87 = !{null, !37, !37}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !76, file: !4, line: 401, baseType: !37, size: 64, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !62, line: 24, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !64, line: 38, baseType: !94)
!94 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!95 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !98)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !4, line: 322, baseType: !19)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !53, file: !52, line: 144, baseType: !101, size: 64, offset: 256)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_end_function", file: !52, line: 102, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DISubroutineType(types: !104)
!104 = !{null, !56, !74}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "get_check", scope: !53, file: !52, line: 148, baseType: !106, size: 64, offset: 320)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DISubroutineType(types: !108)
!108 = !{!109, !110}
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !26, line: 55, baseType: !25)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "memconfig", scope: !53, file: !52, line: 152, baseType: !113, size: 64, offset: 384)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DISubroutineType(types: !115)
!115 = !{!49, !56, !116, !116, !61}
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !53, file: !52, line: 157, baseType: !118, size: 64, offset: 448)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DISubroutineType(types: !120)
!120 = !{!49, !56, !74, !121, !121}
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !124, line: 65, baseType: !125)
!124 = !DIFile(filename: "liblzma/api/lzma/filter.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !124, line: 43, size: 128, elements: !126)
!126 = !{!127, !128}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !125, file: !124, line: 54, baseType: !59, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !125, file: !124, line: 63, baseType: !37, size: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter_info", file: !52, line: 82, baseType: !132)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_filter_info_s", file: !52, line: 109, size: 192, elements: !133)
!133 = !{!134, !135, !138}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !132, file: !52, line: 112, baseType: !59, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !132, file: !52, line: 116, baseType: !136, size: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_init_function", file: !52, line: 86, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !132, file: !52, line: 119, baseType: !37, size: 64, offset: 128)
!139 = !{!140, !141, !142}
!140 = !DILocalVariable(name: "next", arg: 1, scope: !46, file: !1, line: 104, type: !50)
!141 = !DILocalVariable(name: "allocator", arg: 2, scope: !46, file: !1, line: 104, type: !74)
!142 = !DILocalVariable(name: "filters", arg: 3, scope: !46, file: !1, line: 105, type: !129)
!143 = !DILocation(line: 0, scope: !46)
!144 = !DILocation(line: 107, column: 8, scope: !46)
!145 = !DILocation(line: 107, column: 13, scope: !46)
!146 = !DILocation(line: 108, column: 8, scope: !46)
!147 = !DILocation(line: 108, column: 15, scope: !46)
!148 = !DILocation(line: 109, column: 9, scope: !46)
!149 = !DILocation(line: 109, column: 2, scope: !46)
!150 = distinct !DISubprogram(name: "delta_encode", scope: !1, file: !1, line: 54, type: !72, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !151)
!151 = !{!152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !173, !174, !178, !179, !180}
!152 = !DILocalVariable(name: "pcoder", arg: 1, scope: !150, file: !1, line: 54, type: !56)
!153 = !DILocalVariable(name: "allocator", arg: 2, scope: !150, file: !1, line: 54, type: !74)
!154 = !DILocalVariable(name: "in", arg: 3, scope: !150, file: !1, line: 55, type: !89)
!155 = !DILocalVariable(name: "in_pos", arg: 4, scope: !150, file: !1, line: 55, type: !95)
!156 = !DILocalVariable(name: "in_size", arg: 5, scope: !150, file: !1, line: 56, type: !82)
!157 = !DILocalVariable(name: "out", arg: 6, scope: !150, file: !1, line: 56, type: !97)
!158 = !DILocalVariable(name: "out_pos", arg: 7, scope: !150, file: !1, line: 57, type: !95)
!159 = !DILocalVariable(name: "out_size", arg: 8, scope: !150, file: !1, line: 57, type: !82)
!160 = !DILocalVariable(name: "action", arg: 9, scope: !150, file: !1, line: 57, type: !99)
!161 = !DILocalVariable(name: "coder", scope: !150, file: !1, line: 59, type: !162)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_coder_s", file: !164, line: 18, size: 2688, elements: !165)
!164 = !DIFile(filename: "liblzma/delta/delta_private.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "41e9aeb6bf08fbe16153633c0856b3a7")
!165 = !{!166, !167, !168, !169}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !163, file: !164, line: 20, baseType: !51, size: 512)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "distance", scope: !163, file: !164, line: 23, baseType: !82, size: 64, offset: 512)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !163, file: !164, line: 26, baseType: !92, size: 8, offset: 576)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "history", scope: !163, file: !164, line: 29, baseType: !170, size: 2048, offset: 584)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 2048, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: 256)
!173 = !DILocalVariable(name: "ret", scope: !150, file: !1, line: 60, type: !49)
!174 = !DILocalVariable(name: "in_avail", scope: !175, file: !1, line: 63, type: !177)
!175 = distinct !DILexicalBlock(scope: !176, file: !1, line: 62, column: 32)
!176 = distinct !DILexicalBlock(scope: !150, file: !1, line: 62, column: 6)
!177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!178 = !DILocalVariable(name: "out_avail", scope: !175, file: !1, line: 64, type: !177)
!179 = !DILocalVariable(name: "size", scope: !175, file: !1, line: 65, type: !177)
!180 = !DILocalVariable(name: "out_start", scope: !181, file: !1, line: 76, type: !177)
!181 = distinct !DILexicalBlock(scope: !176, file: !1, line: 75, column: 9)
!182 = !DILocation(line: 0, scope: !150)
!183 = !DILocation(line: 62, column: 18, scope: !176)
!184 = !DILocation(line: 62, column: 23, scope: !176)
!185 = !DILocation(line: 62, column: 6, scope: !150)
!186 = !DILocation(line: 63, column: 37, scope: !175)
!187 = !DILocation(line: 63, column: 35, scope: !175)
!188 = !DILocation(line: 0, scope: !175)
!189 = !DILocation(line: 64, column: 39, scope: !175)
!190 = !DILocation(line: 64, column: 37, scope: !175)
!191 = !DILocation(line: 65, column: 23, scope: !175)
!192 = !DILocation(line: 67, column: 29, scope: !175)
!193 = !DILocation(line: 67, column: 44, scope: !175)
!194 = !{!195}
!195 = distinct !{!195, !196, !"copy_and_encode: %in"}
!196 = distinct !{!196, !"copy_and_encode"}
!197 = !DILocation(line: 67, column: 3, scope: !175)
!198 = !{!199}
!199 = distinct !{!199, !196, !"copy_and_encode: %out"}
!200 = !DILocalVariable(name: "pcoder", arg: 1, scope: !201, file: !1, line: 21, type: !56)
!201 = distinct !DISubprogram(name: "copy_and_encode", scope: !1, file: !1, line: 21, type: !202, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !204)
!202 = !DISubroutineType(types: !203)
!203 = !{null, !56, !89, !97, !82}
!204 = !{!200, !205, !206, !207, !208, !209, !210, !212}
!205 = !DILocalVariable(name: "in", arg: 2, scope: !201, file: !1, line: 22, type: !89)
!206 = !DILocalVariable(name: "out", arg: 3, scope: !201, file: !1, line: 22, type: !97)
!207 = !DILocalVariable(name: "size", arg: 4, scope: !201, file: !1, line: 22, type: !82)
!208 = !DILocalVariable(name: "coder", scope: !201, file: !1, line: 24, type: !162)
!209 = !DILocalVariable(name: "distance", scope: !201, file: !1, line: 25, type: !177)
!210 = !DILocalVariable(name: "i", scope: !211, file: !1, line: 27, type: !82)
!211 = distinct !DILexicalBlock(scope: !201, file: !1, line: 27, column: 2)
!212 = !DILocalVariable(name: "tmp", scope: !213, file: !1, line: 28, type: !91)
!213 = distinct !DILexicalBlock(scope: !214, file: !1, line: 27, column: 36)
!214 = distinct !DILexicalBlock(scope: !211, file: !1, line: 27, column: 2)
!215 = !DILocation(line: 0, scope: !201, inlinedAt: !216)
!216 = distinct !DILocation(line: 67, column: 3, scope: !175)
!217 = !DILocation(line: 0, scope: !211, inlinedAt: !216)
!218 = !DILocation(line: 27, column: 23, scope: !214, inlinedAt: !216)
!219 = !DILocation(line: 27, column: 2, scope: !211, inlinedAt: !216)
!220 = !DILocation(line: 25, column: 33, scope: !201, inlinedAt: !216)
!221 = !{!195, !199}
!222 = !DILocation(line: 29, column: 29, scope: !213, inlinedAt: !216)
!223 = !DILocation(line: 28, column: 23, scope: !213, inlinedAt: !216)
!224 = !DILocation(line: 0, scope: !213, inlinedAt: !216)
!225 = !DILocation(line: 30, column: 41, scope: !213, inlinedAt: !216)
!226 = !DILocation(line: 30, column: 28, scope: !213, inlinedAt: !216)
!227 = !DILocation(line: 30, column: 3, scope: !213, inlinedAt: !216)
!228 = !DILocation(line: 30, column: 39, scope: !213, inlinedAt: !216)
!229 = !DILocation(line: 31, column: 18, scope: !213, inlinedAt: !216)
!230 = !DILocation(line: 31, column: 3, scope: !213, inlinedAt: !216)
!231 = !DILocation(line: 31, column: 10, scope: !213, inlinedAt: !216)
!232 = !DILocation(line: 27, column: 31, scope: !214, inlinedAt: !216)
!233 = distinct !{!233, !219, !234, !235, !236}
!234 = !DILocation(line: 32, column: 2, scope: !211, inlinedAt: !216)
!235 = !{!"llvm.loop.isvectorized", i32 1}
!236 = !{!"llvm.loop.unroll.runtime.disable"}
!237 = !DILocation(line: 29, column: 24, scope: !213, inlinedAt: !216)
!238 = distinct !{!238, !219, !234, !235}
!239 = !DILocation(line: 69, column: 11, scope: !175)
!240 = !DILocation(line: 70, column: 12, scope: !175)
!241 = !DILocation(line: 72, column: 16, scope: !175)
!242 = !DILocation(line: 72, column: 28, scope: !175)
!243 = !DILocation(line: 72, column: 39, scope: !175)
!244 = !DILocation(line: 72, column: 9, scope: !175)
!245 = !DILocation(line: 76, column: 28, scope: !181)
!246 = !DILocation(line: 0, scope: !181)
!247 = !DILocation(line: 78, column: 38, scope: !181)
!248 = !DILocation(line: 78, column: 9, scope: !181)
!249 = !DILocation(line: 82, column: 30, scope: !181)
!250 = !DILocation(line: 82, column: 43, scope: !181)
!251 = !DILocation(line: 82, column: 52, scope: !181)
!252 = !DILocalVariable(name: "pcoder", arg: 1, scope: !253, file: !1, line: 39, type: !56)
!253 = distinct !DISubprogram(name: "encode_in_place", scope: !1, file: !1, line: 39, type: !254, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !256)
!254 = !DISubroutineType(types: !255)
!255 = !{null, !56, !98, !82}
!256 = !{!252, !257, !258, !259, !260, !261, !263}
!257 = !DILocalVariable(name: "buffer", arg: 2, scope: !253, file: !1, line: 39, type: !98)
!258 = !DILocalVariable(name: "size", arg: 3, scope: !253, file: !1, line: 39, type: !82)
!259 = !DILocalVariable(name: "coder", scope: !253, file: !1, line: 41, type: !162)
!260 = !DILocalVariable(name: "distance", scope: !253, file: !1, line: 42, type: !177)
!261 = !DILocalVariable(name: "i", scope: !262, file: !1, line: 44, type: !82)
!262 = distinct !DILexicalBlock(scope: !253, file: !1, line: 44, column: 2)
!263 = !DILocalVariable(name: "tmp", scope: !264, file: !1, line: 45, type: !91)
!264 = distinct !DILexicalBlock(scope: !265, file: !1, line: 44, column: 36)
!265 = distinct !DILexicalBlock(scope: !262, file: !1, line: 44, column: 2)
!266 = !DILocation(line: 0, scope: !253, inlinedAt: !267)
!267 = distinct !DILocation(line: 82, column: 3, scope: !181)
!268 = !DILocation(line: 0, scope: !262, inlinedAt: !267)
!269 = !DILocation(line: 44, column: 23, scope: !265, inlinedAt: !267)
!270 = !DILocation(line: 44, column: 2, scope: !262, inlinedAt: !267)
!271 = !DILocation(line: 42, column: 33, scope: !253, inlinedAt: !267)
!272 = !DILocation(line: 44, column: 31, scope: !265, inlinedAt: !267)
!273 = !DILocation(line: 46, column: 29, scope: !264, inlinedAt: !267)
!274 = !DILocation(line: 45, column: 23, scope: !264, inlinedAt: !267)
!275 = !DILocation(line: 47, column: 41, scope: !264, inlinedAt: !267)
!276 = !DILocation(line: 47, column: 3, scope: !264, inlinedAt: !267)
!277 = !DILocation(line: 47, column: 39, scope: !264, inlinedAt: !267)
!278 = !DILocation(line: 48, column: 13, scope: !264, inlinedAt: !267)
!279 = distinct !{!279, !270, !280, !235, !236}
!280 = !DILocation(line: 49, column: 2, scope: !262, inlinedAt: !267)
!281 = !DILocation(line: 46, column: 24, scope: !264, inlinedAt: !267)
!282 = !DILocation(line: 0, scope: !264, inlinedAt: !267)
!283 = !DILocation(line: 47, column: 28, scope: !264, inlinedAt: !267)
!284 = distinct !{!284, !270, !280, !235}
!285 = !DILocation(line: 85, column: 2, scope: !150)
!286 = !DILocation(line: 0, scope: !176)
!287 = distinct !DISubprogram(name: "delta_encoder_update", scope: !1, file: !1, line: 90, type: !119, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !288)
!288 = !{!289, !290, !291, !292, !293}
!289 = !DILocalVariable(name: "pcoder", arg: 1, scope: !287, file: !1, line: 90, type: !56)
!290 = !DILocalVariable(name: "allocator", arg: 2, scope: !287, file: !1, line: 90, type: !74)
!291 = !DILocalVariable(name: "filters_null", arg: 3, scope: !287, file: !1, line: 91, type: !121)
!292 = !DILocalVariable(name: "reversed_filters", arg: 4, scope: !287, file: !1, line: 92, type: !121)
!293 = !DILocalVariable(name: "coder", scope: !287, file: !1, line: 94, type: !162)
!294 = !DILocation(line: 0, scope: !287)
!295 = !DILocation(line: 99, column: 46, scope: !287)
!296 = !DILocation(line: 98, column: 9, scope: !287)
!297 = !DILocation(line: 98, column: 2, scope: !287)
!298 = !DISubprogram(name: "lzma_delta_coder_init", scope: !164, file: !164, line: 33, type: !47, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!299 = distinct !DISubprogram(name: "lzma_delta_props_encode", scope: !1, file: !1, line: 114, type: !300, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !304)
!300 = !DISubroutineType(types: !301)
!301 = !{!49, !302, !98}
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!304 = !{!305, !306, !307}
!305 = !DILocalVariable(name: "options", arg: 1, scope: !299, file: !1, line: 114, type: !302)
!306 = !DILocalVariable(name: "out", arg: 2, scope: !299, file: !1, line: 114, type: !98)
!307 = !DILocalVariable(name: "opt", scope: !299, file: !1, line: 121, type: !308)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !310)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_options_delta", file: !33, line: 77, baseType: !311)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !33, line: 45, size: 320, elements: !312)
!312 = !{!313, !315, !318, !319, !320, !321, !322, !323}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !311, file: !33, line: 47, baseType: !314, size: 32)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_delta_type", file: !33, line: 37, baseType: !32)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "dist", scope: !311, file: !33, line: 59, baseType: !316, size: 32, offset: 32)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !62, line: 26, baseType: !317)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !64, line: 42, baseType: !5)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !311, file: !33, line: 70, baseType: !316, size: 32, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !311, file: !33, line: 71, baseType: !316, size: 32, offset: 96)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !311, file: !33, line: 72, baseType: !316, size: 32, offset: 128)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !311, file: !33, line: 73, baseType: !316, size: 32, offset: 160)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !311, file: !33, line: 74, baseType: !37, size: 64, offset: 192)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !311, file: !33, line: 75, baseType: !37, size: 64, offset: 256)
!324 = !DILocation(line: 0, scope: !299)
!325 = !DILocation(line: 118, column: 6, scope: !326)
!326 = distinct !DILexicalBlock(scope: !299, file: !1, line: 118, column: 6)
!327 = !DILocation(line: 118, column: 41, scope: !326)
!328 = !DILocation(line: 118, column: 6, scope: !299)
!329 = !DILocation(line: 122, column: 16, scope: !299)
!330 = !DILocation(line: 122, column: 11, scope: !299)
!331 = !DILocation(line: 122, column: 9, scope: !299)
!332 = !DILocation(line: 125, column: 1, scope: !299)
!333 = !DISubprogram(name: "lzma_delta_coder_memusage", scope: !334, file: !334, line: 18, type: !335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!334 = !DIFile(filename: "liblzma/delta/delta_common.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "3f542936998671d34c377109cc510e6f")
!335 = !DISubroutineType(types: !336)
!336 = !{!61, !302}
!337 = !DISubprogram(name: "lzma_next_filter_update", scope: !52, file: !52, line: 231, type: !338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!338 = !DISubroutineType(types: !339)
!339 = !{!49, !50, !74, !121}
