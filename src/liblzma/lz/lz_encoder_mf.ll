; ModuleID = 'liblzma/lz/lz_encoder_mf.c'
source_filename = "liblzma/lz/lz_encoder_mf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_match = type { i32, i32 }

@lzma_crc32_table = external local_unnamed_addr constant [8 x [256 x i32]], align 16

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_mf_find(ptr noundef %mf, ptr nocapture noundef writeonly %count_ptr, ptr noundef %matches) local_unnamed_addr #0 !dbg !24 {
entry:
    #dbg_value(ptr %mf, !74, !DIExpression(), !89)
    #dbg_value(ptr %count_ptr, !75, !DIExpression(), !89)
    #dbg_value(ptr %matches, !76, !DIExpression(), !89)
  %find = getelementptr inbounds i8, ptr %mf, i64 48, !dbg !90
  %0 = load ptr, ptr %find, align 8, !dbg !90
  %call = tail call i32 %0(ptr noundef %mf, ptr noundef %matches) #3, !dbg !91
    #dbg_value(i32 %call, !77, !DIExpression(), !89)
    #dbg_value(i32 0, !79, !DIExpression(), !89)
  %cmp.not = icmp eq i32 %call, 0, !dbg !92
  br i1 %cmp.not, label %if.end22, label %if.then, !dbg !93

if.then:                                          ; preds = %entry
  %sub = add i32 %call, -1, !dbg !94
  %idxprom = zext i32 %sub to i64, !dbg !95
  %arrayidx = getelementptr inbounds %struct.lzma_match, ptr %matches, i64 %idxprom, !dbg !95
  %1 = load i32, ptr %arrayidx, align 4, !dbg !96
    #dbg_value(i32 %1, !79, !DIExpression(), !89)
  %nice_len = getelementptr inbounds i8, ptr %mf, i64 96, !dbg !97
  %2 = load i32, ptr %nice_len, align 8, !dbg !97
  %cmp1 = icmp eq i32 %1, %2, !dbg !98
  br i1 %cmp1, label %if.then2, label %if.end22, !dbg !99

if.then2:                                         ; preds = %if.then
  %3 = getelementptr i8, ptr %mf, i64 24, !dbg !100
  %mf.val = load i32, ptr %3, align 8, !dbg !100
  %4 = getelementptr i8, ptr %mf, i64 36, !dbg !100
  %mf.val44 = load i32, ptr %4, align 4, !dbg !100
  %reass.sub = sub i32 %mf.val44, %mf.val, !dbg !101
  %add = add i32 %reass.sub, 1, !dbg !101
    #dbg_value(i32 %add, !80, !DIExpression(), !102)
  %match_len_max = getelementptr inbounds i8, ptr %mf, i64 100, !dbg !103
  %5 = load i32, ptr %match_len_max, align 4, !dbg !103
  %spec.select = tail call i32 @llvm.umin.i32(i32 %add, i32 %5), !dbg !105
    #dbg_value(i32 %spec.select, !80, !DIExpression(), !102)
  %mf.val45 = load ptr, ptr %mf, align 8, !dbg !106
    #dbg_value(ptr undef, !107, !DIExpression(), !114)
  %idx.ext.i = zext i32 %mf.val to i64, !dbg !116
  %add.ptr.i = getelementptr inbounds i8, ptr %mf.val45, i64 %idx.ext.i, !dbg !116
  %add.ptr = getelementptr inbounds i8, ptr %add.ptr.i, i64 -1, !dbg !117
    #dbg_value(ptr %add.ptr, !85, !DIExpression(), !102)
  %dist = getelementptr inbounds i8, ptr %arrayidx, i64 4, !dbg !118
  %6 = load i32, ptr %dist, align 4, !dbg !118
  %idx.ext = zext i32 %6 to i64, !dbg !119
  %idx.neg = sub nsw i64 0, %idx.ext, !dbg !119
  %add.ptr11 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.neg, !dbg !119
  %add.ptr12 = getelementptr inbounds i8, ptr %add.ptr11, i64 -1, !dbg !120
    #dbg_value(ptr %add.ptr12, !88, !DIExpression(), !102)
    #dbg_value(i32 %1, !79, !DIExpression(), !89)
  %cmp1347 = icmp ult i32 %1, %spec.select, !dbg !121
  br i1 %cmp1347, label %land.rhs.preheader, label %if.end22, !dbg !122

land.rhs.preheader:                               ; preds = %if.then2
  %7 = zext i32 %1 to i64, !dbg !123
  br label %land.rhs, !dbg !123

land.rhs:                                         ; preds = %land.rhs.preheader, %while.body
  %indvars.iv = phi i64 [ %7, %land.rhs.preheader ], [ %indvars.iv.next, %while.body ]
    #dbg_value(i64 %indvars.iv, !79, !DIExpression(), !89)
  %arrayidx15 = getelementptr inbounds i8, ptr %add.ptr, i64 %indvars.iv, !dbg !124
  %8 = load i8, ptr %arrayidx15, align 1, !dbg !124
  %arrayidx17 = getelementptr inbounds i8, ptr %add.ptr12, i64 %indvars.iv, !dbg !125
  %9 = load i8, ptr %arrayidx17, align 1, !dbg !125
  %cmp19 = icmp eq i8 %8, %9, !dbg !126
  br i1 %cmp19, label %while.body, label %if.end22.loopexit.split.loop.exit, !dbg !123

while.body:                                       ; preds = %land.rhs
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !127
    #dbg_value(i64 %indvars.iv.next, !79, !DIExpression(), !89)
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !121
  %exitcond.not = icmp eq i32 %spec.select, %lftr.wideiv, !dbg !121
  br i1 %exitcond.not, label %if.end22, label %land.rhs, !dbg !122, !llvm.loop !128

if.end22.loopexit.split.loop.exit:                ; preds = %land.rhs
  %10 = trunc nuw i64 %indvars.iv to i32
  br label %if.end22, !dbg !130

if.end22:                                         ; preds = %while.body, %if.end22.loopexit.split.loop.exit, %if.then2, %if.then, %entry
  %len_best.1 = phi i32 [ %1, %if.then ], [ 0, %entry ], [ %1, %if.then2 ], [ %10, %if.end22.loopexit.split.loop.exit ], [ %spec.select, %while.body ], !dbg !89
    #dbg_value(i32 %len_best.1, !79, !DIExpression(), !89)
  store i32 %call, ptr %count_ptr, align 4, !dbg !130
  %read_ahead = getelementptr inbounds i8, ptr %mf, i64 28, !dbg !131
  %11 = load i32, ptr %read_ahead, align 4, !dbg !132
  %inc23 = add i32 %11, 1, !dbg !132
  store i32 %inc23, ptr %read_ahead, align 4, !dbg !132
  ret i32 %len_best.1, !dbg !133
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @lzma_mf_hc3_find(ptr nocapture noundef %mf, ptr noundef %matches) local_unnamed_addr #1 !dbg !134 {
entry:
    #dbg_value(ptr %mf, !136, !DIExpression(), !148)
    #dbg_value(ptr %matches, !137, !DIExpression(), !148)
  %0 = getelementptr i8, ptr %mf, i64 24, !dbg !149
  %mf.val = load i32, ptr %0, align 8, !dbg !149
  %1 = getelementptr i8, ptr %mf, i64 36, !dbg !149
  %mf.val127 = load i32, ptr %1, align 4, !dbg !149
    #dbg_value(ptr undef, !150, !DIExpression(), !155)
  %sub.i = sub i32 %mf.val127, %mf.val, !dbg !157
    #dbg_value(i32 %sub.i, !138, !DIExpression(), !148)
  %nice_len = getelementptr inbounds i8, ptr %mf, i64 96, !dbg !158
  %2 = load i32, ptr %nice_len, align 8, !dbg !158
  %cmp.not = icmp ugt i32 %2, %sub.i, !dbg !158
  br i1 %cmp.not, label %if.else, label %if.end4, !dbg !149

if.else:                                          ; preds = %entry
  %cmp2 = icmp ult i32 %sub.i, 3, !dbg !160
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !158

if.then3:                                         ; preds = %if.else
    #dbg_value(ptr %mf, !162, !DIExpression(), !167)
  %inc.i = add i32 %mf.val, 1, !dbg !170
  store i32 %inc.i, ptr %0, align 8, !dbg !170
  %pending.i = getelementptr inbounds i8, ptr %mf, i64 40, !dbg !171
  %3 = load i32, ptr %pending.i, align 8, !dbg !172
  %inc1.i = add i32 %3, 1, !dbg !172
  store i32 %inc1.i, ptr %pending.i, align 8, !dbg !172
  br label %cleanup75, !dbg !173

if.end4:                                          ; preds = %entry, %if.else
  %len_limit.0 = phi i32 [ %sub.i, %if.else ], [ %2, %entry ], !dbg !149
    #dbg_value(i32 %len_limit.0, !138, !DIExpression(), !148)
  %mf.val128 = load ptr, ptr %mf, align 8, !dbg !149
    #dbg_value(ptr undef, !107, !DIExpression(), !174)
  %idx.ext.i = zext i32 %mf.val to i64, !dbg !176
  %add.ptr.i = getelementptr inbounds i8, ptr %mf.val128, i64 %idx.ext.i, !dbg !176
    #dbg_value(ptr %add.ptr.i, !139, !DIExpression(), !148)
  %offset = getelementptr inbounds i8, ptr %mf, i64 20, !dbg !149
  %4 = load i32, ptr %offset, align 4, !dbg !149
  %add = add i32 %4, %mf.val, !dbg !149
    #dbg_value(i32 %add, !140, !DIExpression(), !148)
    #dbg_value(i32 0, !141, !DIExpression(), !148)
  %5 = load i8, ptr %add.ptr.i, align 1, !dbg !177
  %idxprom = zext i8 %5 to i64, !dbg !177
  %arrayidx6 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %idxprom, !dbg !177
  %6 = load i32, ptr %arrayidx6, align 4, !dbg !177
  %arrayidx7 = getelementptr inbounds i8, ptr %add.ptr.i, i64 1, !dbg !177
  %7 = load i8, ptr %arrayidx7, align 1, !dbg !177
  %conv = zext i8 %7 to i32, !dbg !177
  %xor = xor i32 %6, %conv, !dbg !177
    #dbg_value(i32 %xor, !142, !DIExpression(), !148)
  %and = and i32 %xor, 1023, !dbg !177
    #dbg_value(i32 %and, !143, !DIExpression(), !148)
  %arrayidx8 = getelementptr inbounds i8, ptr %add.ptr.i, i64 2, !dbg !177
  %8 = load i8, ptr %arrayidx8, align 1, !dbg !177
  %conv9 = zext i8 %8 to i32, !dbg !177
  %shl = shl nuw nsw i32 %conv9, 8, !dbg !177
  %xor10 = xor i32 %shl, %xor, !dbg !177
  %hash_mask = getelementptr inbounds i8, ptr %mf, i64 88, !dbg !177
  %9 = load i32, ptr %hash_mask, align 8, !dbg !177
  %and11 = and i32 %xor10, %9, !dbg !177
    #dbg_value(i32 %and11, !144, !DIExpression(), !148)
  %hash = getelementptr inbounds i8, ptr %mf, i64 64, !dbg !178
  %10 = load ptr, ptr %hash, align 8, !dbg !178
  %idxprom12 = zext nneg i32 %and to i64, !dbg !179
  %arrayidx13 = getelementptr inbounds i32, ptr %10, i64 %idxprom12, !dbg !179
  %11 = load i32, ptr %arrayidx13, align 4, !dbg !179
  %sub = sub i32 %add, %11, !dbg !180
    #dbg_value(i32 %sub, !145, !DIExpression(), !148)
  %add15 = add i32 %and11, 1024, !dbg !181
  %idxprom16 = zext i32 %add15 to i64, !dbg !182
  %arrayidx17 = getelementptr inbounds i32, ptr %10, i64 %idxprom16, !dbg !182
  %12 = load i32, ptr %arrayidx17, align 4, !dbg !182
    #dbg_value(i32 %12, !146, !DIExpression(), !148)
  store i32 %add, ptr %arrayidx13, align 4, !dbg !183
  %13 = load ptr, ptr %hash, align 8, !dbg !184
  %arrayidx24 = getelementptr inbounds i32, ptr %13, i64 %idxprom16, !dbg !185
  store i32 %add, ptr %arrayidx24, align 4, !dbg !186
    #dbg_value(i32 2, !147, !DIExpression(), !148)
  %cyclic_size = getelementptr inbounds i8, ptr %mf, i64 84, !dbg !187
  %14 = load i32, ptr %cyclic_size, align 4, !dbg !187
  %cmp25 = icmp ult i32 %sub, %14, !dbg !189
  br i1 %cmp25, label %land.lhs.true, label %do.body57, !dbg !190

land.lhs.true:                                    ; preds = %if.end4
  %idx.ext = zext i32 %sub to i64, !dbg !191
  %idx.neg = sub nsw i64 0, %idx.ext, !dbg !191
  %add.ptr = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg, !dbg !191
  %15 = load i8, ptr %add.ptr, align 1, !dbg !192
  %16 = load i8, ptr %add.ptr.i, align 1, !dbg !193
  %cmp29 = icmp eq i8 %15, %16, !dbg !194
  br i1 %cmp29, label %for.cond.preheader, label %do.body57, !dbg !195

for.cond.preheader:                               ; preds = %land.lhs.true
    #dbg_value(i32 2, !147, !DIExpression(), !148)
  %cmp32.not171 = icmp eq i32 %len_limit.0, 2, !dbg !196
  br i1 %cmp32.not171, label %do.body, label %for.body, !dbg !200

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %len_best.0172 = phi i32 [ %inc, %for.inc ], [ 2, %for.cond.preheader ]
    #dbg_value(i32 %len_best.0172, !147, !DIExpression(), !148)
  %idx.ext34 = zext i32 %len_best.0172 to i64, !dbg !201
  %add.ptr35 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.ext34, !dbg !201
  %add.ptr38 = getelementptr inbounds i8, ptr %add.ptr35, i64 %idx.neg, !dbg !203
  %17 = load i8, ptr %add.ptr38, align 1, !dbg !204
  %18 = load i8, ptr %add.ptr35, align 1, !dbg !205
  %cmp43.not = icmp eq i8 %17, %18, !dbg !206
  br i1 %cmp43.not, label %for.inc, label %for.end, !dbg !207

for.inc:                                          ; preds = %for.body
  %inc = add i32 %len_best.0172, 1, !dbg !208
    #dbg_value(i32 %inc, !147, !DIExpression(), !148)
  %cmp32.not = icmp eq i32 %inc, %len_limit.0, !dbg !196
  br i1 %cmp32.not, label %do.body, label %for.body, !dbg !200, !llvm.loop !209

for.end:                                          ; preds = %for.body
  store i32 %len_best.0172, ptr %matches, align 4, !dbg !211
  %sub48 = add i32 %sub, -1, !dbg !212
  %dist = getelementptr inbounds i8, ptr %matches, i64 4, !dbg !213
  store i32 %sub48, ptr %dist, align 4, !dbg !214
    #dbg_value(i32 1, !141, !DIExpression(), !148)
  %.pre = load i32, ptr %cyclic_size, align 4, !dbg !215
  br label %do.body57, !dbg !217

do.body:                                          ; preds = %for.inc, %for.cond.preheader
  store i32 %len_limit.0, ptr %matches, align 4, !dbg !211
  %sub48167 = add i32 %sub, -1, !dbg !212
  %dist168 = getelementptr inbounds i8, ptr %matches, i64 4, !dbg !213
  store i32 %sub48167, ptr %dist168, align 4, !dbg !214
    #dbg_value(i32 1, !141, !DIExpression(), !148)
  %son = getelementptr inbounds i8, ptr %mf, i64 72, !dbg !218
  %19 = load ptr, ptr %son, align 8, !dbg !218
  %cyclic_pos = getelementptr inbounds i8, ptr %mf, i64 80, !dbg !218
  %20 = load i32, ptr %cyclic_pos, align 8, !dbg !218
  %idxprom53 = zext i32 %20 to i64, !dbg !218
  %arrayidx54 = getelementptr inbounds i32, ptr %19, i64 %idxprom53, !dbg !218
  store i32 %12, ptr %arrayidx54, align 4, !dbg !218
    #dbg_value(ptr %mf, !222, !DIExpression(), !225)
  %21 = load i32, ptr %cyclic_pos, align 8, !dbg !227
  %inc.i130 = add i32 %21, 1, !dbg !227
  %22 = load i32, ptr %cyclic_size, align 4, !dbg !229
  %cmp.i = icmp eq i32 %inc.i130, %22, !dbg !230
  %spec.store.select.i = select i1 %cmp.i, i32 0, i32 %inc.i130, !dbg !231
  store i32 %spec.store.select.i, ptr %cyclic_pos, align 8, !dbg !225
  %23 = load i32, ptr %0, align 8, !dbg !232
  %inc2.i = add i32 %23, 1, !dbg !232
  store i32 %inc2.i, ptr %0, align 8, !dbg !232
  %24 = load i32, ptr %offset, align 4, !dbg !233
  %add.i = add i32 %24, %inc2.i, !dbg !233
  %cmp4.i = icmp eq i32 %add.i, -1, !dbg !233
  br i1 %cmp4.i, label %if.then5.i, label %cleanup75, !dbg !235

if.then5.i:                                       ; preds = %do.body
    #dbg_value(ptr %mf, !236, !DIExpression(), !244)
  %sub.i.i = xor i32 %22, -1, !dbg !246
    #dbg_value(i32 %sub.i.i, !239, !DIExpression(), !244)
  %hash_size_sum.i.i = getelementptr inbounds i8, ptr %mf, i64 108, !dbg !247
  %25 = load i32, ptr %hash_size_sum.i.i, align 4, !dbg !247
  %sons_count.i.i = getelementptr inbounds i8, ptr %mf, i64 112, !dbg !248
  %26 = load i32, ptr %sons_count.i.i, align 8, !dbg !248
  %add.i.i = add i32 %26, %25, !dbg !249
    #dbg_value(i32 %add.i.i, !240, !DIExpression(), !244)
  %27 = load ptr, ptr %hash, align 8, !dbg !250
    #dbg_value(ptr %27, !241, !DIExpression(), !244)
    #dbg_value(i32 0, !242, !DIExpression(), !251)
  %cmp21.not.i.i = icmp eq i32 %add.i.i, 0, !dbg !252
  br i1 %cmp21.not.i.i, label %normalize.exit.i, label %for.body.preheader.i.i, !dbg !254

for.body.preheader.i.i:                           ; preds = %if.then5.i
  %wide.trip.count.i.i = zext i32 %add.i.i to i64, !dbg !252
  %min.iters.check183 = icmp ult i32 %add.i.i, 16, !dbg !254
  br i1 %min.iters.check183, label %for.body.i.i.preheader, label %vector.ph184, !dbg !254

vector.ph184:                                     ; preds = %for.body.preheader.i.i
  %n.vec186 = and i64 %wide.trip.count.i.i, 4294967280, !dbg !254
  %broadcast.splatinsert194 = insertelement <4 x i32> poison, i32 %sub.i.i, i64 0, !dbg !254
  %broadcast.splat195 = shufflevector <4 x i32> %broadcast.splatinsert194, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !254
  br label %vector.body188, !dbg !254

vector.body188:                                   ; preds = %vector.body188, %vector.ph184
  %index189 = phi i64 [ 0, %vector.ph184 ], [ %index.next196, %vector.body188 ], !dbg !255
  %28 = getelementptr inbounds i32, ptr %27, i64 %index189, !dbg !256
  %29 = getelementptr inbounds i8, ptr %28, i64 16, !dbg !256
  %30 = getelementptr inbounds i8, ptr %28, i64 32, !dbg !256
  %31 = getelementptr inbounds i8, ptr %28, i64 48, !dbg !256
  %wide.load190 = load <4 x i32>, ptr %28, align 4, !dbg !256
  %wide.load191 = load <4 x i32>, ptr %29, align 4, !dbg !256
  %wide.load192 = load <4 x i32>, ptr %30, align 4, !dbg !256
  %wide.load193 = load <4 x i32>, ptr %31, align 4, !dbg !256
  %32 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load190, <4 x i32> %broadcast.splat195), !dbg !259
  %33 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load191, <4 x i32> %broadcast.splat195), !dbg !259
  %34 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load192, <4 x i32> %broadcast.splat195), !dbg !259
  %35 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load193, <4 x i32> %broadcast.splat195), !dbg !259
  store <4 x i32> %32, ptr %28, align 4, !dbg !260
  store <4 x i32> %33, ptr %29, align 4, !dbg !260
  store <4 x i32> %34, ptr %30, align 4, !dbg !260
  store <4 x i32> %35, ptr %31, align 4, !dbg !260
  %index.next196 = add nuw i64 %index189, 16, !dbg !255
  %36 = icmp eq i64 %index.next196, %n.vec186, !dbg !255
  br i1 %36, label %middle.block181, label %vector.body188, !dbg !255, !llvm.loop !261

middle.block181:                                  ; preds = %vector.body188
  %cmp.n197 = icmp eq i64 %n.vec186, %wide.trip.count.i.i, !dbg !254
  br i1 %cmp.n197, label %normalize.exit.loopexit.i, label %for.body.i.i.preheader, !dbg !254

for.body.i.i.preheader:                           ; preds = %middle.block181, %for.body.preheader.i.i
  %indvars.iv.i.i.ph = phi i64 [ 0, %for.body.preheader.i.i ], [ %n.vec186, %middle.block181 ]
  br label %for.body.i.i, !dbg !254

for.body.i.i:                                     ; preds = %for.body.i.i.preheader, %for.body.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %for.body.i.i ], [ %indvars.iv.i.i.ph, %for.body.i.i.preheader ]
    #dbg_value(i64 %indvars.iv.i.i, !242, !DIExpression(), !251)
  %arrayidx.i.i = getelementptr inbounds i32, ptr %27, i64 %indvars.iv.i.i, !dbg !256
  %37 = load i32, ptr %arrayidx.i.i, align 4, !dbg !256
  %storemerge.i.i = tail call i32 @llvm.usub.sat.i32(i32 %37, i32 %sub.i.i), !dbg !259
  store i32 %storemerge.i.i, ptr %arrayidx.i.i, align 4, !dbg !260
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1, !dbg !255
    #dbg_value(i64 %indvars.iv.next.i.i, !242, !DIExpression(), !251)
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i, !dbg !252
  br i1 %exitcond.not.i.i, label %normalize.exit.loopexit.i, label %for.body.i.i, !dbg !254, !llvm.loop !265

normalize.exit.loopexit.i:                        ; preds = %for.body.i.i, %middle.block181
  %.pre.i = load i32, ptr %offset, align 4, !dbg !266
  br label %normalize.exit.i, !dbg !266

normalize.exit.i:                                 ; preds = %normalize.exit.loopexit.i, %if.then5.i
  %38 = phi i32 [ %.pre.i, %normalize.exit.loopexit.i ], [ %24, %if.then5.i ], !dbg !266
  %sub8.i.i = sub i32 %38, %sub.i.i, !dbg !266
  store i32 %sub8.i.i, ptr %offset, align 4, !dbg !266
  br label %cleanup75, !dbg !267

do.body57:                                        ; preds = %for.end, %if.end4, %land.lhs.true
  %39 = phi i32 [ %.pre, %for.end ], [ %14, %land.lhs.true ], [ %14, %if.end4 ], !dbg !215
  %matches_count.0 = phi i64 [ 1, %for.end ], [ 0, %land.lhs.true ], [ 0, %if.end4 ], !dbg !148
  %len_best.1 = phi i32 [ %len_best.0172, %for.end ], [ 2, %land.lhs.true ], [ 2, %if.end4 ], !dbg !268
    #dbg_value(i32 %len_best.1, !147, !DIExpression(), !148)
    #dbg_value(i64 %matches_count.0, !141, !DIExpression(), !148)
  %depth = getelementptr inbounds i8, ptr %mf, i64 92, !dbg !215
  %40 = load i32, ptr %depth, align 4, !dbg !215
  %son58 = getelementptr inbounds i8, ptr %mf, i64 72, !dbg !215
  %41 = load ptr, ptr %son58, align 8, !dbg !215
  %cyclic_pos59 = getelementptr inbounds i8, ptr %mf, i64 80, !dbg !215
  %42 = load i32, ptr %cyclic_pos59, align 8, !dbg !215
  %add.ptr62 = getelementptr inbounds %struct.lzma_match, ptr %matches, i64 %matches_count.0, !dbg !215
    #dbg_value(i32 %len_limit.0, !269, !DIExpression(), !291)
    #dbg_value(i32 %add, !276, !DIExpression(), !291)
    #dbg_value(ptr %add.ptr.i, !277, !DIExpression(), !291)
    #dbg_value(i32 %12, !278, !DIExpression(), !291)
    #dbg_value(i32 %40, !279, !DIExpression(), !291)
    #dbg_value(ptr %41, !280, !DIExpression(), !291)
    #dbg_value(i32 %42, !281, !DIExpression(), !291)
    #dbg_value(i32 %39, !282, !DIExpression(), !291)
    #dbg_value(ptr %add.ptr62, !283, !DIExpression(), !291)
    #dbg_value(i32 %len_best.1, !284, !DIExpression(), !291)
  %idxprom.i = zext i32 %42 to i64, !dbg !293
  %arrayidx.i = getelementptr inbounds i32, ptr %41, i64 %idxprom.i, !dbg !293
  store i32 %12, ptr %arrayidx.i, align 4, !dbg !294
  %sub97.i = sub i32 %add, %12, !dbg !295
  %cmp99.i = icmp ne i32 %40, 0, !dbg !296
  %cmp1.not100.i = icmp ult i32 %sub97.i, %39
  %or.cond101.i = and i1 %cmp99.i, %cmp1.not100.i, !dbg !298
  br i1 %or.cond101.i, label %if.end.preheader.i, label %hc_find_func.exit, !dbg !298

if.end.preheader.i:                               ; preds = %do.body57
  %43 = add i32 %len_limit.0, -1, !dbg !299
  %wide.trip.count.i = zext i32 %43 to i64
  br label %if.end.i, !dbg !299

if.end.i:                                         ; preds = %cleanup46.i, %if.end.preheader.i
  %dec106.in.i = phi i32 [ %dec106.i, %cleanup46.i ], [ %40, %if.end.preheader.i ]
  %sub105.i = phi i32 [ %sub.i135, %cleanup46.i ], [ %sub97.i, %if.end.preheader.i ]
  %len_best.addr.0103.i = phi i32 [ %len_best.addr.5.i, %cleanup46.i ], [ %len_best.1, %if.end.preheader.i ]
  %matches.addr.0102.i = phi ptr [ %matches.addr.5.i, %cleanup46.i ], [ %add.ptr62, %if.end.preheader.i ]
  %dec106.i = add i32 %dec106.in.i, -1, !dbg !300
    #dbg_value(i32 %len_best.addr.0103.i, !284, !DIExpression(), !291)
    #dbg_value(ptr %matches.addr.0102.i, !283, !DIExpression(), !291)
  %idx.ext.i132 = zext i32 %sub105.i to i64, !dbg !301
  %idx.neg.i = sub nsw i64 0, %idx.ext.i132, !dbg !301
  %add.ptr.i133 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg.i, !dbg !301
    #dbg_value(ptr %add.ptr.i133, !287, !DIExpression(), !302)
  %sub2.i = sub i32 %42, %sub105.i, !dbg !303
  %cmp3.i = icmp ugt i32 %sub105.i, %42, !dbg !304
  %cond.i = select i1 %cmp3.i, i32 %39, i32 0, !dbg !305
  %add.i134 = add i32 %sub2.i, %cond.i, !dbg !306
  %idxprom4.i = zext i32 %add.i134 to i64, !dbg !307
  %arrayidx5.i = getelementptr inbounds i32, ptr %41, i64 %idxprom4.i, !dbg !307
  %44 = load i32, ptr %arrayidx5.i, align 4, !dbg !307
    #dbg_value(i32 %44, !278, !DIExpression(), !291)
  %idxprom6.i = zext i32 %len_best.addr.0103.i to i64, !dbg !308
  %arrayidx7.i = getelementptr inbounds i8, ptr %add.ptr.i133, i64 %idxprom6.i, !dbg !308
  %45 = load i8, ptr %arrayidx7.i, align 1, !dbg !308
  %arrayidx9.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom6.i, !dbg !309
  %46 = load i8, ptr %arrayidx9.i, align 1, !dbg !309
  %cmp11.i = icmp eq i8 %45, %46, !dbg !310
  br i1 %cmp11.i, label %land.lhs.true.i, label %cleanup46.i, !dbg !299

land.lhs.true.i:                                  ; preds = %if.end.i
  %47 = load i8, ptr %add.ptr.i133, align 1, !dbg !311
  %48 = load i8, ptr %add.ptr.i, align 1, !dbg !312
  %cmp17.i = icmp eq i8 %47, %48, !dbg !313
  br i1 %cmp17.i, label %while.cond20.i, label %cleanup46.i, !dbg !314

while.cond20.i:                                   ; preds = %land.lhs.true.i, %while.body23.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %while.body23.i ], [ 0, %land.lhs.true.i ], !dbg !315
    #dbg_value(i64 %indvars.iv.i, !288, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !315)
  %exitcond.i = icmp eq i64 %indvars.iv.i, %wide.trip.count.i, !dbg !316
  br i1 %exitcond.i, label %while.end.i, label %while.body23.i, !dbg !317

while.body23.i:                                   ; preds = %while.cond20.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !318
    #dbg_value(i64 %indvars.iv.next.i, !288, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !315)
  %idxprom24.i = and i64 %indvars.iv.next.i, 4294967295, !dbg !319
  %arrayidx25.i = getelementptr inbounds i8, ptr %add.ptr.i133, i64 %idxprom24.i, !dbg !319
  %49 = load i8, ptr %arrayidx25.i, align 1, !dbg !319
  %arrayidx28.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom24.i, !dbg !321
  %50 = load i8, ptr %arrayidx28.i, align 1, !dbg !321
  %cmp30.not.i = icmp eq i8 %49, %50, !dbg !322
  br i1 %cmp30.not.i, label %while.cond20.i, label %while.end.split.loop.exit.i, !dbg !323, !llvm.loop !324

while.end.split.loop.exit.i:                      ; preds = %while.body23.i
  %indvars.le112.i = trunc i64 %indvars.iv.next.i to i32
  br label %while.end.i

while.end.i:                                      ; preds = %while.cond20.i, %while.end.split.loop.exit.i
  %inc.lcssa.i = phi i32 [ %indvars.le112.i, %while.end.split.loop.exit.i ], [ %len_limit.0, %while.cond20.i ], !dbg !318
  %cmp34.i = icmp ult i32 %len_best.addr.0103.i, %inc.lcssa.i, !dbg !326
  br i1 %cmp34.i, label %cleanup.i, label %cleanup46.i, !dbg !328

cleanup.i:                                        ; preds = %while.end.i
  %cmp21.not.not.le.i = icmp eq i32 %inc.lcssa.i, %len_limit.0
    #dbg_value(i32 %inc.lcssa.i, !284, !DIExpression(), !291)
  store i32 %inc.lcssa.i, ptr %matches.addr.0102.i, align 4, !dbg !329
  %sub38.i = add i32 %sub105.i, -1, !dbg !331
  %dist.i = getelementptr inbounds i8, ptr %matches.addr.0102.i, i64 4, !dbg !332
  store i32 %sub38.i, ptr %dist.i, align 4, !dbg !333
  %incdec.ptr.i = getelementptr inbounds i8, ptr %matches.addr.0102.i, i64 8, !dbg !334
    #dbg_value(ptr %incdec.ptr.i, !283, !DIExpression(), !291)
  br i1 %cmp21.not.not.le.i, label %hc_find_func.exit, label %cleanup46.i

cleanup46.i:                                      ; preds = %cleanup.i, %while.end.i, %land.lhs.true.i, %if.end.i
  %matches.addr.5.i = phi ptr [ %matches.addr.0102.i, %land.lhs.true.i ], [ %matches.addr.0102.i, %if.end.i ], [ %matches.addr.0102.i, %while.end.i ], [ %incdec.ptr.i, %cleanup.i ]
  %len_best.addr.5.i = phi i32 [ %len_best.addr.0103.i, %land.lhs.true.i ], [ %len_best.addr.0103.i, %if.end.i ], [ %len_best.addr.0103.i, %while.end.i ], [ %inc.lcssa.i, %cleanup.i ]
    #dbg_value(i32 %44, !278, !DIExpression(), !291)
    #dbg_value(i32 %len_best.addr.5.i, !284, !DIExpression(), !291)
    #dbg_value(ptr %matches.addr.5.i, !283, !DIExpression(), !291)
    #dbg_value(i32 %dec106.i, !279, !DIExpression(), !291)
  %sub.i135 = sub i32 %add, %44, !dbg !295
    #dbg_value(i32 %sub.i135, !285, !DIExpression(), !302)
    #dbg_value(i32 %dec106.i, !279, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !291)
  %cmp.i136 = icmp ne i32 %dec106.i, 0, !dbg !296
  %cmp1.not.i = icmp ult i32 %sub.i135, %39
  %or.cond.i = select i1 %cmp.i136, i1 %cmp1.not.i, i1 false, !dbg !298
  br i1 %or.cond.i, label %if.end.i, label %hc_find_func.exit, !dbg !298

hc_find_func.exit:                                ; preds = %cleanup.i, %cleanup46.i, %do.body57
  %retval.4.ph.i = phi ptr [ %add.ptr62, %do.body57 ], [ %incdec.ptr.i, %cleanup.i ], [ %matches.addr.5.i, %cleanup46.i ]
    #dbg_value(i32 poison, !278, !DIExpression(), !291)
    #dbg_value(i32 poison, !284, !DIExpression(), !291)
    #dbg_value(ptr poison, !283, !DIExpression(), !291)
  %sub.ptr.lhs.cast = ptrtoint ptr %retval.4.ph.i to i64, !dbg !215
  %sub.ptr.rhs.cast = ptrtoint ptr %matches to i64, !dbg !215
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !215
  %sub.ptr.div = lshr exact i64 %sub.ptr.sub, 3, !dbg !215
  %conv64 = trunc i64 %sub.ptr.div to i32, !dbg !215
    #dbg_value(i32 %conv64, !141, !DIExpression(), !148)
    #dbg_value(ptr %mf, !222, !DIExpression(), !335)
  %51 = load i32, ptr %cyclic_pos59, align 8, !dbg !337
  %inc.i138 = add i32 %51, 1, !dbg !337
  %52 = load i32, ptr %cyclic_size, align 4, !dbg !338
  %cmp.i140 = icmp eq i32 %inc.i138, %52, !dbg !339
  %spec.store.select.i141 = select i1 %cmp.i140, i32 0, i32 %inc.i138, !dbg !340
  store i32 %spec.store.select.i141, ptr %cyclic_pos59, align 8, !dbg !335
  %53 = load i32, ptr %0, align 8, !dbg !341
  %inc2.i143 = add i32 %53, 1, !dbg !341
  store i32 %inc2.i143, ptr %0, align 8, !dbg !341
  %54 = load i32, ptr %offset, align 4, !dbg !342
  %add.i145 = add i32 %54, %inc2.i143, !dbg !342
  %cmp4.i146 = icmp eq i32 %add.i145, -1, !dbg !342
  br i1 %cmp4.i146, label %if.then5.i147, label %cleanup75, !dbg !343

if.then5.i147:                                    ; preds = %hc_find_func.exit
    #dbg_value(ptr %mf, !236, !DIExpression(), !344)
  %sub.i.i148 = xor i32 %52, -1, !dbg !346
    #dbg_value(i32 %sub.i.i148, !239, !DIExpression(), !344)
  %hash_size_sum.i.i149 = getelementptr inbounds i8, ptr %mf, i64 108, !dbg !347
  %55 = load i32, ptr %hash_size_sum.i.i149, align 4, !dbg !347
  %sons_count.i.i150 = getelementptr inbounds i8, ptr %mf, i64 112, !dbg !348
  %56 = load i32, ptr %sons_count.i.i150, align 8, !dbg !348
  %add.i.i151 = add i32 %56, %55, !dbg !349
    #dbg_value(i32 %add.i.i151, !240, !DIExpression(), !344)
  %57 = load ptr, ptr %hash, align 8, !dbg !350
    #dbg_value(ptr %57, !241, !DIExpression(), !344)
    #dbg_value(i32 0, !242, !DIExpression(), !351)
  %cmp21.not.i.i153 = icmp eq i32 %add.i.i151, 0, !dbg !352
  br i1 %cmp21.not.i.i153, label %normalize.exit.i164, label %for.body.preheader.i.i154, !dbg !353

for.body.preheader.i.i154:                        ; preds = %if.then5.i147
  %wide.trip.count.i.i155 = zext i32 %add.i.i151 to i64, !dbg !352
  %min.iters.check = icmp ult i32 %add.i.i151, 16, !dbg !353
  br i1 %min.iters.check, label %for.body.i.i156.preheader, label %vector.ph, !dbg !353

vector.ph:                                        ; preds = %for.body.preheader.i.i154
  %n.vec = and i64 %wide.trip.count.i.i155, 4294967280, !dbg !353
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %sub.i.i148, i64 0, !dbg !353
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !353
  br label %vector.body, !dbg !353

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !354
  %58 = getelementptr inbounds i32, ptr %57, i64 %index, !dbg !355
  %59 = getelementptr inbounds i8, ptr %58, i64 16, !dbg !355
  %60 = getelementptr inbounds i8, ptr %58, i64 32, !dbg !355
  %61 = getelementptr inbounds i8, ptr %58, i64 48, !dbg !355
  %wide.load = load <4 x i32>, ptr %58, align 4, !dbg !355
  %wide.load178 = load <4 x i32>, ptr %59, align 4, !dbg !355
  %wide.load179 = load <4 x i32>, ptr %60, align 4, !dbg !355
  %wide.load180 = load <4 x i32>, ptr %61, align 4, !dbg !355
  %62 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load, <4 x i32> %broadcast.splat), !dbg !356
  %63 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load178, <4 x i32> %broadcast.splat), !dbg !356
  %64 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load179, <4 x i32> %broadcast.splat), !dbg !356
  %65 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load180, <4 x i32> %broadcast.splat), !dbg !356
  store <4 x i32> %62, ptr %58, align 4, !dbg !357
  store <4 x i32> %63, ptr %59, align 4, !dbg !357
  store <4 x i32> %64, ptr %60, align 4, !dbg !357
  store <4 x i32> %65, ptr %61, align 4, !dbg !357
  %index.next = add nuw i64 %index, 16, !dbg !354
  %66 = icmp eq i64 %index.next, %n.vec, !dbg !354
  br i1 %66, label %middle.block, label %vector.body, !dbg !354, !llvm.loop !358

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i155, !dbg !353
  br i1 %cmp.n, label %normalize.exit.loopexit.i162, label %for.body.i.i156.preheader, !dbg !353

for.body.i.i156.preheader:                        ; preds = %middle.block, %for.body.preheader.i.i154
  %indvars.iv.i.i157.ph = phi i64 [ 0, %for.body.preheader.i.i154 ], [ %n.vec, %middle.block ]
  br label %for.body.i.i156, !dbg !353

for.body.i.i156:                                  ; preds = %for.body.i.i156.preheader, %for.body.i.i156
  %indvars.iv.i.i157 = phi i64 [ %indvars.iv.next.i.i160, %for.body.i.i156 ], [ %indvars.iv.i.i157.ph, %for.body.i.i156.preheader ]
    #dbg_value(i64 %indvars.iv.i.i157, !242, !DIExpression(), !351)
  %arrayidx.i.i158 = getelementptr inbounds i32, ptr %57, i64 %indvars.iv.i.i157, !dbg !355
  %67 = load i32, ptr %arrayidx.i.i158, align 4, !dbg !355
  %storemerge.i.i159 = tail call i32 @llvm.usub.sat.i32(i32 %67, i32 %sub.i.i148), !dbg !356
  store i32 %storemerge.i.i159, ptr %arrayidx.i.i158, align 4, !dbg !357
  %indvars.iv.next.i.i160 = add nuw nsw i64 %indvars.iv.i.i157, 1, !dbg !354
    #dbg_value(i64 %indvars.iv.next.i.i160, !242, !DIExpression(), !351)
  %exitcond.not.i.i161 = icmp eq i64 %indvars.iv.next.i.i160, %wide.trip.count.i.i155, !dbg !352
  br i1 %exitcond.not.i.i161, label %normalize.exit.loopexit.i162, label %for.body.i.i156, !dbg !353, !llvm.loop !360

normalize.exit.loopexit.i162:                     ; preds = %for.body.i.i156, %middle.block
  %.pre.i163 = load i32, ptr %offset, align 4, !dbg !361
  br label %normalize.exit.i164, !dbg !361

normalize.exit.i164:                              ; preds = %normalize.exit.loopexit.i162, %if.then5.i147
  %68 = phi i32 [ %.pre.i163, %normalize.exit.loopexit.i162 ], [ %54, %if.then5.i147 ], !dbg !361
  %sub8.i.i165 = sub i32 %68, %sub.i.i148, !dbg !361
  store i32 %sub8.i.i165, ptr %offset, align 4, !dbg !361
  br label %cleanup75, !dbg !362

cleanup75:                                        ; preds = %normalize.exit.i164, %hc_find_func.exit, %normalize.exit.i, %do.body, %if.then3
  %retval.1 = phi i32 [ 0, %if.then3 ], [ 1, %do.body ], [ 1, %normalize.exit.i ], [ %conv64, %hc_find_func.exit ], [ %conv64, %normalize.exit.i164 ], !dbg !148
  ret i32 %retval.1, !dbg !363
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @lzma_mf_hc3_skip(ptr nocapture noundef %mf, i32 noundef %amount) local_unnamed_addr #1 !dbg !364 {
entry:
    #dbg_value(ptr %mf, !366, !DIExpression(), !375)
    #dbg_value(i32 %amount, !367, !DIExpression(), !375)
  %0 = getelementptr i8, ptr %mf, i64 24
  %1 = getelementptr i8, ptr %mf, i64 36
  %offset = getelementptr inbounds i8, ptr %mf, i64 20
  %hash_mask = getelementptr inbounds i8, ptr %mf, i64 88
  %hash = getelementptr inbounds i8, ptr %mf, i64 64
  %son = getelementptr inbounds i8, ptr %mf, i64 72
  %cyclic_pos = getelementptr inbounds i8, ptr %mf, i64 80
  %cyclic_size.i = getelementptr inbounds i8, ptr %mf, i64 84
  %hash_size_sum.i.i = getelementptr inbounds i8, ptr %mf, i64 108
  %sons_count.i.i = getelementptr inbounds i8, ptr %mf, i64 112
  %pending.i = getelementptr inbounds i8, ptr %mf, i64 40
  br label %do.body, !dbg !376

do.body:                                          ; preds = %do.cond21, %entry
  %amount.addr.0 = phi i32 [ %amount, %entry ], [ %dec, %do.cond21 ]
    #dbg_value(i32 %amount.addr.0, !367, !DIExpression(), !375)
  %mf.val = load i32, ptr %0, align 8, !dbg !377
  %mf.val41 = load i32, ptr %1, align 4, !dbg !377
    #dbg_value(ptr undef, !150, !DIExpression(), !379)
  %sub.i = sub i32 %mf.val41, %mf.val, !dbg !381
  %cmp = icmp ult i32 %sub.i, 3, !dbg !382
  br i1 %cmp, label %if.then, label %if.end, !dbg !383

if.then:                                          ; preds = %do.body
    #dbg_value(ptr %mf, !162, !DIExpression(), !384)
  %inc.i = add i32 %mf.val, 1, !dbg !387
  store i32 %inc.i, ptr %0, align 8, !dbg !387
  %2 = load i32, ptr %pending.i, align 8, !dbg !388
  %inc1.i = add i32 %2, 1, !dbg !388
  store i32 %inc1.i, ptr %pending.i, align 8, !dbg !388
  br label %do.cond21, !dbg !389

if.end:                                           ; preds = %do.body
  %mf.val42 = load ptr, ptr %mf, align 8, !dbg !390
    #dbg_value(ptr undef, !107, !DIExpression(), !391)
  %idx.ext.i = zext i32 %mf.val to i64, !dbg !393
  %add.ptr.i = getelementptr inbounds i8, ptr %mf.val42, i64 %idx.ext.i, !dbg !393
    #dbg_value(ptr %add.ptr.i, !368, !DIExpression(), !394)
  %3 = load i32, ptr %offset, align 4, !dbg !395
  %add = add i32 %3, %mf.val, !dbg !396
    #dbg_value(i32 %add, !370, !DIExpression(), !394)
  %4 = load i8, ptr %add.ptr.i, align 1, !dbg !397
  %idxprom = zext i8 %4 to i64, !dbg !397
  %arrayidx2 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %idxprom, !dbg !397
  %5 = load i32, ptr %arrayidx2, align 4, !dbg !397
  %arrayidx3 = getelementptr inbounds i8, ptr %add.ptr.i, i64 1, !dbg !397
  %6 = load i8, ptr %arrayidx3, align 1, !dbg !397
  %conv = zext i8 %6 to i32, !dbg !397
  %xor = xor i32 %5, %conv, !dbg !397
    #dbg_value(i32 %xor, !371, !DIExpression(), !394)
  %and = and i32 %xor, 1023, !dbg !397
    #dbg_value(i32 %and, !372, !DIExpression(), !394)
  %arrayidx4 = getelementptr inbounds i8, ptr %add.ptr.i, i64 2, !dbg !397
  %7 = load i8, ptr %arrayidx4, align 1, !dbg !397
  %conv5 = zext i8 %7 to i32, !dbg !397
  %shl = shl nuw nsw i32 %conv5, 8, !dbg !397
  %xor6 = xor i32 %shl, %xor, !dbg !397
  %8 = load i32, ptr %hash_mask, align 8, !dbg !397
  %and7 = and i32 %xor6, %8, !dbg !397
    #dbg_value(i32 %and7, !373, !DIExpression(), !394)
  %9 = load ptr, ptr %hash, align 8, !dbg !398
  %add8 = add i32 %and7, 1024, !dbg !399
  %idxprom9 = zext i32 %add8 to i64, !dbg !400
  %arrayidx10 = getelementptr inbounds i32, ptr %9, i64 %idxprom9, !dbg !400
  %10 = load i32, ptr %arrayidx10, align 4, !dbg !400
    #dbg_value(i32 %10, !374, !DIExpression(), !394)
  %idxprom12 = zext nneg i32 %and to i64, !dbg !401
  %arrayidx13 = getelementptr inbounds i32, ptr %9, i64 %idxprom12, !dbg !401
  store i32 %add, ptr %arrayidx13, align 4, !dbg !402
  %11 = load ptr, ptr %hash, align 8, !dbg !403
  %arrayidx17 = getelementptr inbounds i32, ptr %11, i64 %idxprom9, !dbg !404
  store i32 %add, ptr %arrayidx17, align 4, !dbg !405
  %12 = load ptr, ptr %son, align 8, !dbg !406
  %13 = load i32, ptr %cyclic_pos, align 8, !dbg !406
  %idxprom19 = zext i32 %13 to i64, !dbg !406
  %arrayidx20 = getelementptr inbounds i32, ptr %12, i64 %idxprom19, !dbg !406
  store i32 %10, ptr %arrayidx20, align 4, !dbg !406
    #dbg_value(ptr %mf, !222, !DIExpression(), !408)
  %14 = load i32, ptr %cyclic_pos, align 8, !dbg !410
  %inc.i44 = add i32 %14, 1, !dbg !410
  %15 = load i32, ptr %cyclic_size.i, align 4, !dbg !411
  %cmp.i = icmp eq i32 %inc.i44, %15, !dbg !412
  %spec.store.select.i = select i1 %cmp.i, i32 0, i32 %inc.i44, !dbg !413
  store i32 %spec.store.select.i, ptr %cyclic_pos, align 8, !dbg !408
  %16 = load i32, ptr %0, align 8, !dbg !414
  %inc2.i = add i32 %16, 1, !dbg !414
  store i32 %inc2.i, ptr %0, align 8, !dbg !414
  %17 = load i32, ptr %offset, align 4, !dbg !415
  %add.i = add i32 %17, %inc2.i, !dbg !415
  %cmp4.i = icmp eq i32 %add.i, -1, !dbg !415
  br i1 %cmp4.i, label %if.then5.i, label %do.cond21, !dbg !416

if.then5.i:                                       ; preds = %if.end
    #dbg_value(ptr %mf, !236, !DIExpression(), !417)
  %sub.i.i = xor i32 %15, -1, !dbg !419
    #dbg_value(i32 %sub.i.i, !239, !DIExpression(), !417)
  %18 = load i32, ptr %hash_size_sum.i.i, align 4, !dbg !420
  %19 = load i32, ptr %sons_count.i.i, align 8, !dbg !421
  %add.i.i = add i32 %19, %18, !dbg !422
    #dbg_value(i32 %add.i.i, !240, !DIExpression(), !417)
  %20 = load ptr, ptr %hash, align 8, !dbg !423
    #dbg_value(ptr %20, !241, !DIExpression(), !417)
    #dbg_value(i32 0, !242, !DIExpression(), !424)
  %cmp21.not.i.i = icmp eq i32 %add.i.i, 0, !dbg !425
  br i1 %cmp21.not.i.i, label %normalize.exit.i, label %for.body.preheader.i.i, !dbg !426

for.body.preheader.i.i:                           ; preds = %if.then5.i
  %wide.trip.count.i.i = zext i32 %add.i.i to i64, !dbg !425
  %min.iters.check = icmp ult i32 %add.i.i, 16, !dbg !426
  br i1 %min.iters.check, label %for.body.i.i.preheader, label %vector.ph, !dbg !426

vector.ph:                                        ; preds = %for.body.preheader.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 4294967280, !dbg !426
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %sub.i.i, i64 0, !dbg !426
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !426
  br label %vector.body, !dbg !426

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !427
  %21 = getelementptr inbounds i32, ptr %20, i64 %index, !dbg !428
  %22 = getelementptr inbounds i8, ptr %21, i64 16, !dbg !428
  %23 = getelementptr inbounds i8, ptr %21, i64 32, !dbg !428
  %24 = getelementptr inbounds i8, ptr %21, i64 48, !dbg !428
  %wide.load = load <4 x i32>, ptr %21, align 4, !dbg !428
  %wide.load46 = load <4 x i32>, ptr %22, align 4, !dbg !428
  %wide.load47 = load <4 x i32>, ptr %23, align 4, !dbg !428
  %wide.load48 = load <4 x i32>, ptr %24, align 4, !dbg !428
  %25 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load, <4 x i32> %broadcast.splat), !dbg !429
  %26 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load46, <4 x i32> %broadcast.splat), !dbg !429
  %27 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load47, <4 x i32> %broadcast.splat), !dbg !429
  %28 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load48, <4 x i32> %broadcast.splat), !dbg !429
  store <4 x i32> %25, ptr %21, align 4, !dbg !430
  store <4 x i32> %26, ptr %22, align 4, !dbg !430
  store <4 x i32> %27, ptr %23, align 4, !dbg !430
  store <4 x i32> %28, ptr %24, align 4, !dbg !430
  %index.next = add nuw i64 %index, 16, !dbg !427
  %29 = icmp eq i64 %index.next, %n.vec, !dbg !427
  br i1 %29, label %middle.block, label %vector.body, !dbg !427, !llvm.loop !431

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i, !dbg !426
  br i1 %cmp.n, label %normalize.exit.loopexit.i, label %for.body.i.i.preheader, !dbg !426

for.body.i.i.preheader:                           ; preds = %middle.block, %for.body.preheader.i.i
  %indvars.iv.i.i.ph = phi i64 [ 0, %for.body.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %for.body.i.i, !dbg !426

for.body.i.i:                                     ; preds = %for.body.i.i.preheader, %for.body.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %for.body.i.i ], [ %indvars.iv.i.i.ph, %for.body.i.i.preheader ]
    #dbg_value(i64 %indvars.iv.i.i, !242, !DIExpression(), !424)
  %arrayidx.i.i = getelementptr inbounds i32, ptr %20, i64 %indvars.iv.i.i, !dbg !428
  %30 = load i32, ptr %arrayidx.i.i, align 4, !dbg !428
  %storemerge.i.i = tail call i32 @llvm.usub.sat.i32(i32 %30, i32 %sub.i.i), !dbg !429
  store i32 %storemerge.i.i, ptr %arrayidx.i.i, align 4, !dbg !430
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1, !dbg !427
    #dbg_value(i64 %indvars.iv.next.i.i, !242, !DIExpression(), !424)
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i, !dbg !425
  br i1 %exitcond.not.i.i, label %normalize.exit.loopexit.i, label %for.body.i.i, !dbg !426, !llvm.loop !433

normalize.exit.loopexit.i:                        ; preds = %for.body.i.i, %middle.block
  %.pre.i = load i32, ptr %offset, align 4, !dbg !434
  br label %normalize.exit.i, !dbg !434

normalize.exit.i:                                 ; preds = %normalize.exit.loopexit.i, %if.then5.i
  %31 = phi i32 [ %.pre.i, %normalize.exit.loopexit.i ], [ %17, %if.then5.i ], !dbg !434
  %sub8.i.i = sub i32 %31, %sub.i.i, !dbg !434
  store i32 %sub8.i.i, ptr %offset, align 4, !dbg !434
  br label %do.cond21, !dbg !435

do.cond21:                                        ; preds = %normalize.exit.i, %if.end, %if.then
  %dec = add i32 %amount.addr.0, -1, !dbg !436
    #dbg_value(i32 %dec, !367, !DIExpression(), !375)
  %cmp22.not = icmp eq i32 %dec, 0, !dbg !437
  br i1 %cmp22.not, label %do.end24, label %do.body, !dbg !438, !llvm.loop !439

do.end24:                                         ; preds = %do.cond21
  ret void, !dbg !441
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @lzma_mf_hc4_find(ptr nocapture noundef %mf, ptr noundef %matches) local_unnamed_addr #1 !dbg !442 {
entry:
    #dbg_value(ptr %mf, !444, !DIExpression(), !458)
    #dbg_value(ptr %matches, !445, !DIExpression(), !458)
  %0 = getelementptr i8, ptr %mf, i64 24, !dbg !459
  %mf.val = load i32, ptr %0, align 8, !dbg !459
  %1 = getelementptr i8, ptr %mf, i64 36, !dbg !459
  %mf.val204 = load i32, ptr %1, align 4, !dbg !459
    #dbg_value(ptr undef, !150, !DIExpression(), !460)
  %sub.i = sub i32 %mf.val204, %mf.val, !dbg !462
    #dbg_value(i32 %sub.i, !446, !DIExpression(), !458)
  %nice_len = getelementptr inbounds i8, ptr %mf, i64 96, !dbg !463
  %2 = load i32, ptr %nice_len, align 8, !dbg !463
  %cmp.not = icmp ugt i32 %2, %sub.i, !dbg !463
  br i1 %cmp.not, label %if.else, label %if.end4, !dbg !459

if.else:                                          ; preds = %entry
  %cmp2 = icmp ult i32 %sub.i, 4, !dbg !465
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !463

if.then3:                                         ; preds = %if.else
    #dbg_value(ptr %mf, !162, !DIExpression(), !467)
  %inc.i = add i32 %mf.val, 1, !dbg !470
  store i32 %inc.i, ptr %0, align 8, !dbg !470
  %pending.i = getelementptr inbounds i8, ptr %mf, i64 40, !dbg !471
  %3 = load i32, ptr %pending.i, align 8, !dbg !472
  %inc1.i = add i32 %3, 1, !dbg !472
  store i32 %inc1.i, ptr %pending.i, align 8, !dbg !472
  br label %cleanup129, !dbg !473

if.end4:                                          ; preds = %entry, %if.else
  %len_limit.0 = phi i32 [ %sub.i, %if.else ], [ %2, %entry ], !dbg !459
    #dbg_value(i32 %len_limit.0, !446, !DIExpression(), !458)
  %mf.val205 = load ptr, ptr %mf, align 8, !dbg !459
    #dbg_value(ptr undef, !107, !DIExpression(), !474)
  %idx.ext.i = zext i32 %mf.val to i64, !dbg !476
  %add.ptr.i = getelementptr inbounds i8, ptr %mf.val205, i64 %idx.ext.i, !dbg !476
    #dbg_value(ptr %add.ptr.i, !447, !DIExpression(), !458)
  %offset = getelementptr inbounds i8, ptr %mf, i64 20, !dbg !459
  %4 = load i32, ptr %offset, align 4, !dbg !459
  %add = add i32 %4, %mf.val, !dbg !459
    #dbg_value(i32 %add, !448, !DIExpression(), !458)
    #dbg_value(i32 0, !449, !DIExpression(), !458)
  %5 = load i8, ptr %add.ptr.i, align 1, !dbg !477
  %idxprom = zext i8 %5 to i64, !dbg !477
  %arrayidx6 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %idxprom, !dbg !477
  %6 = load i32, ptr %arrayidx6, align 4, !dbg !477
  %arrayidx7 = getelementptr inbounds i8, ptr %add.ptr.i, i64 1, !dbg !477
  %7 = load i8, ptr %arrayidx7, align 1, !dbg !477
  %conv = zext i8 %7 to i32, !dbg !477
  %xor = xor i32 %6, %conv, !dbg !477
    #dbg_value(i32 %xor, !450, !DIExpression(), !458)
  %and = and i32 %xor, 1023, !dbg !477
    #dbg_value(i32 %and, !451, !DIExpression(), !458)
  %arrayidx8 = getelementptr inbounds i8, ptr %add.ptr.i, i64 2, !dbg !477
  %8 = load i8, ptr %arrayidx8, align 1, !dbg !477
  %conv9 = zext i8 %8 to i32, !dbg !477
  %shl = shl nuw nsw i32 %conv9, 8, !dbg !477
  %xor10 = xor i32 %shl, %xor, !dbg !477
  %and11 = and i32 %xor10, 65535, !dbg !477
    #dbg_value(i32 %and11, !452, !DIExpression(), !458)
  %arrayidx16 = getelementptr inbounds i8, ptr %add.ptr.i, i64 3, !dbg !477
  %9 = load i8, ptr %arrayidx16, align 1, !dbg !477
  %idxprom17 = zext i8 %9 to i64, !dbg !477
  %arrayidx18 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %idxprom17, !dbg !477
  %10 = load i32, ptr %arrayidx18, align 4, !dbg !477
  %shl19 = shl i32 %10, 5, !dbg !477
  %xor20 = xor i32 %xor10, %shl19, !dbg !477
  %hash_mask = getelementptr inbounds i8, ptr %mf, i64 88, !dbg !477
  %11 = load i32, ptr %hash_mask, align 8, !dbg !477
  %and21 = and i32 %xor20, %11, !dbg !477
    #dbg_value(i32 %and21, !453, !DIExpression(), !458)
  %hash = getelementptr inbounds i8, ptr %mf, i64 64, !dbg !478
  %12 = load ptr, ptr %hash, align 8, !dbg !478
  %idxprom22 = zext nneg i32 %and to i64, !dbg !479
  %arrayidx23 = getelementptr inbounds i32, ptr %12, i64 %idxprom22, !dbg !479
  %13 = load i32, ptr %arrayidx23, align 4, !dbg !479
  %sub = sub i32 %add, %13, !dbg !480
    #dbg_value(i32 %sub, !454, !DIExpression(), !458)
  %add25 = add nuw nsw i32 %and11, 1024, !dbg !481
  %idxprom26 = zext nneg i32 %add25 to i64, !dbg !482
  %arrayidx27 = getelementptr inbounds i32, ptr %12, i64 %idxprom26, !dbg !482
  %14 = load i32, ptr %arrayidx27, align 4, !dbg !482
  %sub28 = sub i32 %add, %14, !dbg !483
    #dbg_value(i32 %sub28, !455, !DIExpression(), !458)
  %add30 = add i32 %and21, 66560, !dbg !484
  %idxprom31 = zext i32 %add30 to i64, !dbg !485
  %arrayidx32 = getelementptr inbounds i32, ptr %12, i64 %idxprom31, !dbg !485
  %15 = load i32, ptr %arrayidx32, align 4, !dbg !485
    #dbg_value(i32 %15, !456, !DIExpression(), !458)
  store i32 %add, ptr %arrayidx23, align 4, !dbg !486
  %16 = load ptr, ptr %hash, align 8, !dbg !487
  %arrayidx39 = getelementptr inbounds i32, ptr %16, i64 %idxprom26, !dbg !488
  store i32 %add, ptr %arrayidx39, align 4, !dbg !489
  %17 = load ptr, ptr %hash, align 8, !dbg !490
  %arrayidx43 = getelementptr inbounds i32, ptr %17, i64 %idxprom31, !dbg !491
  store i32 %add, ptr %arrayidx43, align 4, !dbg !492
    #dbg_value(i32 1, !457, !DIExpression(), !458)
  %cyclic_size = getelementptr inbounds i8, ptr %mf, i64 84, !dbg !493
  %18 = load i32, ptr %cyclic_size, align 4, !dbg !493
  %cmp44 = icmp ult i32 %sub, %18, !dbg !495
  br i1 %cmp44, label %land.lhs.true, label %if.end54, !dbg !496

land.lhs.true:                                    ; preds = %if.end4
  %idx.ext = zext i32 %sub to i64, !dbg !497
  %idx.neg = sub nsw i64 0, %idx.ext, !dbg !497
  %add.ptr = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg, !dbg !497
  %19 = load i8, ptr %add.ptr, align 1, !dbg !498
  %20 = load i8, ptr %add.ptr.i, align 1, !dbg !499
  %cmp48 = icmp eq i8 %19, %20, !dbg !500
  br i1 %cmp48, label %if.then50, label %if.end54, !dbg !501

if.then50:                                        ; preds = %land.lhs.true
    #dbg_value(i32 2, !457, !DIExpression(), !458)
  store i32 2, ptr %matches, align 4, !dbg !502
  %sub52 = add i32 %sub, -1, !dbg !504
  %dist = getelementptr inbounds i8, ptr %matches, i64 4, !dbg !505
  store i32 %sub52, ptr %dist, align 4, !dbg !506
    #dbg_value(i32 1, !449, !DIExpression(), !458)
  br label %if.end54, !dbg !507

if.end54:                                         ; preds = %if.then50, %land.lhs.true, %if.end4
  %cmp75.not = phi i1 [ false, %if.then50 ], [ true, %land.lhs.true ], [ true, %if.end4 ], !dbg !458
  %matches_count.0 = phi i32 [ 1, %if.then50 ], [ 0, %land.lhs.true ], [ 0, %if.end4 ], !dbg !458
  %len_best.0 = phi i32 [ 2, %if.then50 ], [ 1, %land.lhs.true ], [ 1, %if.end4 ], !dbg !458
    #dbg_value(i32 %len_best.0, !457, !DIExpression(), !458)
    #dbg_value(i32 %matches_count.0, !449, !DIExpression(), !458)
  %cmp55.not = icmp eq i32 %14, %13, !dbg !508
  br i1 %cmp55.not, label %if.end74, label %land.lhs.true57, !dbg !510

land.lhs.true57:                                  ; preds = %if.end54
  %21 = load i32, ptr %cyclic_size, align 4, !dbg !511
  %cmp59 = icmp ult i32 %sub28, %21, !dbg !512
  br i1 %cmp59, label %land.lhs.true61, label %if.end74, !dbg !513

land.lhs.true61:                                  ; preds = %land.lhs.true57
  %idx.ext62 = zext i32 %sub28 to i64, !dbg !514
  %idx.neg63 = sub nsw i64 0, %idx.ext62, !dbg !514
  %add.ptr64 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg63, !dbg !514
  %22 = load i8, ptr %add.ptr64, align 1, !dbg !515
  %23 = load i8, ptr %add.ptr.i, align 1, !dbg !516
  %cmp67 = icmp eq i8 %22, %23, !dbg !517
  br i1 %cmp67, label %if.end74.thread, label %if.end74, !dbg !518

if.end74.thread:                                  ; preds = %land.lhs.true61
    #dbg_value(i32 3, !457, !DIExpression(), !458)
  %sub70 = add i32 %sub28, -1, !dbg !519
  %inc = add nuw nsw i32 %matches_count.0, 1, !dbg !521
    #dbg_value(i32 %inc, !449, !DIExpression(), !458)
  %idxprom71 = zext nneg i32 %matches_count.0 to i64, !dbg !522
  %dist73 = getelementptr inbounds %struct.lzma_match, ptr %matches, i64 %idxprom71, i32 1, !dbg !523
  store i32 %sub70, ptr %dist73, align 4, !dbg !524
    #dbg_value(i32 %sub28, !454, !DIExpression(), !458)
  br label %for.cond.preheader, !dbg !525

if.end74:                                         ; preds = %land.lhs.true61, %land.lhs.true57, %if.end54
    #dbg_value(i32 %len_best.0, !457, !DIExpression(), !458)
    #dbg_value(i32 %sub, !454, !DIExpression(), !458)
    #dbg_value(i32 %matches_count.0, !449, !DIExpression(), !458)
  br i1 %cmp75.not, label %if.end104, label %for.cond.preheader, !dbg !525

for.cond.preheader:                               ; preds = %if.end74.thread, %if.end74
  %len_best.1260 = phi i32 [ 3, %if.end74.thread ], [ %len_best.0, %if.end74 ]
  %delta2.0259 = phi i32 [ %sub28, %if.end74.thread ], [ %sub, %if.end74 ]
  %matches_count.1257 = phi i32 [ %inc, %if.end74.thread ], [ 1, %if.end74 ]
    #dbg_value(i32 %len_best.1260, !457, !DIExpression(), !458)
  %cmp78.not249 = icmp eq i32 %len_best.1260, %len_limit.0, !dbg !526
  br i1 %cmp78.not249, label %do.body, label %for.body.lr.ph, !dbg !531

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %idx.ext82 = zext i32 %delta2.0259 to i64
  %idx.neg83 = sub nsw i64 0, %idx.ext82
  br label %for.body, !dbg !531

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %len_best.2250 = phi i32 [ %len_best.1260, %for.body.lr.ph ], [ %inc93, %for.inc ]
    #dbg_value(i32 %len_best.2250, !457, !DIExpression(), !458)
  %idx.ext80 = zext i32 %len_best.2250 to i64, !dbg !532
  %add.ptr81 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.ext80, !dbg !532
  %add.ptr84 = getelementptr inbounds i8, ptr %add.ptr81, i64 %idx.neg83, !dbg !534
  %24 = load i8, ptr %add.ptr84, align 1, !dbg !535
  %25 = load i8, ptr %add.ptr81, align 1, !dbg !536
  %cmp89.not = icmp eq i8 %24, %25, !dbg !537
  br i1 %cmp89.not, label %for.inc, label %for.end, !dbg !538

for.inc:                                          ; preds = %for.body
  %inc93 = add i32 %len_best.2250, 1, !dbg !539
    #dbg_value(i32 %inc93, !457, !DIExpression(), !458)
  %cmp78.not = icmp eq i32 %inc93, %len_limit.0, !dbg !526
  br i1 %cmp78.not, label %do.body, label %for.body, !dbg !531, !llvm.loop !540

for.end:                                          ; preds = %for.body
  %sub94 = add nsw i32 %matches_count.1257, -1, !dbg !542
  %idxprom95 = zext i32 %sub94 to i64, !dbg !543
  %arrayidx96 = getelementptr inbounds %struct.lzma_match, ptr %matches, i64 %idxprom95, !dbg !543
  store i32 %len_best.2250, ptr %arrayidx96, align 4, !dbg !544
  %26 = zext nneg i32 %matches_count.1257 to i64, !dbg !545
  br label %if.end104, !dbg !547

do.body:                                          ; preds = %for.inc, %for.cond.preheader
  %sub94244 = add nsw i32 %matches_count.1257, -1, !dbg !542
  %idxprom95245 = zext i32 %sub94244 to i64, !dbg !543
  %arrayidx96246 = getelementptr inbounds %struct.lzma_match, ptr %matches, i64 %idxprom95245, !dbg !543
  store i32 %len_limit.0, ptr %arrayidx96246, align 4, !dbg !544
  %son = getelementptr inbounds i8, ptr %mf, i64 72, !dbg !548
  %27 = load ptr, ptr %son, align 8, !dbg !548
  %cyclic_pos = getelementptr inbounds i8, ptr %mf, i64 80, !dbg !548
  %28 = load i32, ptr %cyclic_pos, align 8, !dbg !548
  %idxprom101 = zext i32 %28 to i64, !dbg !548
  %arrayidx102 = getelementptr inbounds i32, ptr %27, i64 %idxprom101, !dbg !548
  store i32 %15, ptr %arrayidx102, align 4, !dbg !548
    #dbg_value(ptr %mf, !222, !DIExpression(), !552)
  %29 = load i32, ptr %cyclic_pos, align 8, !dbg !554
  %inc.i207 = add i32 %29, 1, !dbg !554
  %30 = load i32, ptr %cyclic_size, align 4, !dbg !555
  %cmp.i = icmp eq i32 %inc.i207, %30, !dbg !556
  %spec.store.select.i = select i1 %cmp.i, i32 0, i32 %inc.i207, !dbg !557
  store i32 %spec.store.select.i, ptr %cyclic_pos, align 8, !dbg !552
  %31 = load i32, ptr %0, align 8, !dbg !558
  %inc2.i = add i32 %31, 1, !dbg !558
  store i32 %inc2.i, ptr %0, align 8, !dbg !558
  %32 = load i32, ptr %offset, align 4, !dbg !559
  %add.i = add i32 %32, %inc2.i, !dbg !559
  %cmp4.i = icmp eq i32 %add.i, -1, !dbg !559
  br i1 %cmp4.i, label %if.then5.i, label %cleanup129, !dbg !560

if.then5.i:                                       ; preds = %do.body
    #dbg_value(ptr %mf, !236, !DIExpression(), !561)
  %sub.i.i = xor i32 %30, -1, !dbg !563
    #dbg_value(i32 %sub.i.i, !239, !DIExpression(), !561)
  %hash_size_sum.i.i = getelementptr inbounds i8, ptr %mf, i64 108, !dbg !564
  %33 = load i32, ptr %hash_size_sum.i.i, align 4, !dbg !564
  %sons_count.i.i = getelementptr inbounds i8, ptr %mf, i64 112, !dbg !565
  %34 = load i32, ptr %sons_count.i.i, align 8, !dbg !565
  %add.i.i = add i32 %34, %33, !dbg !566
    #dbg_value(i32 %add.i.i, !240, !DIExpression(), !561)
  %35 = load ptr, ptr %hash, align 8, !dbg !567
    #dbg_value(ptr %35, !241, !DIExpression(), !561)
    #dbg_value(i32 0, !242, !DIExpression(), !568)
  %cmp21.not.i.i = icmp eq i32 %add.i.i, 0, !dbg !569
  br i1 %cmp21.not.i.i, label %normalize.exit.i, label %for.body.preheader.i.i, !dbg !570

for.body.preheader.i.i:                           ; preds = %if.then5.i
  %wide.trip.count.i.i = zext i32 %add.i.i to i64, !dbg !569
  %min.iters.check = icmp ult i32 %add.i.i, 16, !dbg !570
  br i1 %min.iters.check, label %for.body.i.i.preheader, label %vector.ph, !dbg !570

vector.ph:                                        ; preds = %for.body.preheader.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 4294967280, !dbg !570
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %sub.i.i, i64 0, !dbg !570
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !570
  br label %vector.body, !dbg !570

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !571
  %36 = getelementptr inbounds i32, ptr %35, i64 %index, !dbg !572
  %37 = getelementptr inbounds i8, ptr %36, i64 16, !dbg !572
  %38 = getelementptr inbounds i8, ptr %36, i64 32, !dbg !572
  %39 = getelementptr inbounds i8, ptr %36, i64 48, !dbg !572
  %wide.load = load <4 x i32>, ptr %36, align 4, !dbg !572
  %wide.load264 = load <4 x i32>, ptr %37, align 4, !dbg !572
  %wide.load265 = load <4 x i32>, ptr %38, align 4, !dbg !572
  %wide.load266 = load <4 x i32>, ptr %39, align 4, !dbg !572
  %40 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load, <4 x i32> %broadcast.splat), !dbg !573
  %41 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load264, <4 x i32> %broadcast.splat), !dbg !573
  %42 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load265, <4 x i32> %broadcast.splat), !dbg !573
  %43 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load266, <4 x i32> %broadcast.splat), !dbg !573
  store <4 x i32> %40, ptr %36, align 4, !dbg !574
  store <4 x i32> %41, ptr %37, align 4, !dbg !574
  store <4 x i32> %42, ptr %38, align 4, !dbg !574
  store <4 x i32> %43, ptr %39, align 4, !dbg !574
  %index.next = add nuw i64 %index, 16, !dbg !571
  %44 = icmp eq i64 %index.next, %n.vec, !dbg !571
  br i1 %44, label %middle.block, label %vector.body, !dbg !571, !llvm.loop !575

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i, !dbg !570
  br i1 %cmp.n, label %normalize.exit.loopexit.i, label %for.body.i.i.preheader, !dbg !570

for.body.i.i.preheader:                           ; preds = %middle.block, %for.body.preheader.i.i
  %indvars.iv.i.i.ph = phi i64 [ 0, %for.body.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %for.body.i.i, !dbg !570

for.body.i.i:                                     ; preds = %for.body.i.i.preheader, %for.body.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %for.body.i.i ], [ %indvars.iv.i.i.ph, %for.body.i.i.preheader ]
    #dbg_value(i64 %indvars.iv.i.i, !242, !DIExpression(), !568)
  %arrayidx.i.i = getelementptr inbounds i32, ptr %35, i64 %indvars.iv.i.i, !dbg !572
  %45 = load i32, ptr %arrayidx.i.i, align 4, !dbg !572
  %storemerge.i.i = tail call i32 @llvm.usub.sat.i32(i32 %45, i32 %sub.i.i), !dbg !573
  store i32 %storemerge.i.i, ptr %arrayidx.i.i, align 4, !dbg !574
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1, !dbg !571
    #dbg_value(i64 %indvars.iv.next.i.i, !242, !DIExpression(), !568)
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i, !dbg !569
  br i1 %exitcond.not.i.i, label %normalize.exit.loopexit.i, label %for.body.i.i, !dbg !570, !llvm.loop !577

normalize.exit.loopexit.i:                        ; preds = %for.body.i.i, %middle.block
  %.pre.i = load i32, ptr %offset, align 4, !dbg !578
  br label %normalize.exit.i, !dbg !578

normalize.exit.i:                                 ; preds = %normalize.exit.loopexit.i, %if.then5.i
  %46 = phi i32 [ %.pre.i, %normalize.exit.loopexit.i ], [ %32, %if.then5.i ], !dbg !578
  %sub8.i.i = sub i32 %46, %sub.i.i, !dbg !578
  store i32 %sub8.i.i, ptr %offset, align 4, !dbg !578
  br label %cleanup129, !dbg !579

if.end104:                                        ; preds = %for.end, %if.end74
  %matches_count.1258 = phi i64 [ %26, %for.end ], [ 0, %if.end74 ]
  %len_best.3 = phi i32 [ %len_best.2250, %for.end ], [ %len_best.0, %if.end74 ], !dbg !580
    #dbg_value(i32 poison, !457, !DIExpression(), !458)
  %depth = getelementptr inbounds i8, ptr %mf, i64 92, !dbg !545
  %47 = load i32, ptr %depth, align 4, !dbg !545
  %son110 = getelementptr inbounds i8, ptr %mf, i64 72, !dbg !545
  %48 = load ptr, ptr %son110, align 8, !dbg !545
  %cyclic_pos111 = getelementptr inbounds i8, ptr %mf, i64 80, !dbg !545
  %49 = load i32, ptr %cyclic_pos111, align 8, !dbg !545
  %50 = load i32, ptr %cyclic_size, align 4, !dbg !545
  %add.ptr114 = getelementptr inbounds %struct.lzma_match, ptr %matches, i64 %matches_count.1258, !dbg !545
    #dbg_value(i32 %len_limit.0, !269, !DIExpression(), !581)
    #dbg_value(i32 %add, !276, !DIExpression(), !581)
    #dbg_value(ptr %add.ptr.i, !277, !DIExpression(), !581)
    #dbg_value(i32 %15, !278, !DIExpression(), !581)
    #dbg_value(i32 %47, !279, !DIExpression(), !581)
    #dbg_value(ptr %48, !280, !DIExpression(), !581)
    #dbg_value(i32 %49, !281, !DIExpression(), !581)
    #dbg_value(i32 %50, !282, !DIExpression(), !581)
    #dbg_value(ptr %add.ptr114, !283, !DIExpression(), !581)
    #dbg_value(i32 poison, !284, !DIExpression(), !581)
  %idxprom.i = zext i32 %49 to i64, !dbg !583
  %arrayidx.i = getelementptr inbounds i32, ptr %48, i64 %idxprom.i, !dbg !583
  store i32 %15, ptr %arrayidx.i, align 4, !dbg !584
  %sub97.i = sub i32 %add, %15, !dbg !585
  %cmp99.i = icmp ne i32 %47, 0, !dbg !586
  %cmp1.not100.i = icmp ult i32 %sub97.i, %50
  %or.cond101.i = and i1 %cmp99.i, %cmp1.not100.i, !dbg !587
  br i1 %or.cond101.i, label %if.end.preheader.i, label %hc_find_func.exit, !dbg !587

if.end.preheader.i:                               ; preds = %if.end104
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %len_best.3, i32 3), !dbg !588
    #dbg_value(i32 %spec.store.select, !457, !DIExpression(), !458)
    #dbg_value(i32 %spec.store.select, !284, !DIExpression(), !581)
  %51 = add i32 %len_limit.0, -1, !dbg !589
  %wide.trip.count.i = zext i32 %51 to i64
  br label %if.end.i, !dbg !589

if.end.i:                                         ; preds = %cleanup46.i, %if.end.preheader.i
  %dec106.in.i = phi i32 [ %dec106.i, %cleanup46.i ], [ %47, %if.end.preheader.i ]
  %sub105.i = phi i32 [ %sub.i212, %cleanup46.i ], [ %sub97.i, %if.end.preheader.i ]
  %len_best.addr.0103.i = phi i32 [ %len_best.addr.5.i, %cleanup46.i ], [ %spec.store.select, %if.end.preheader.i ]
  %matches.addr.0102.i = phi ptr [ %matches.addr.5.i, %cleanup46.i ], [ %add.ptr114, %if.end.preheader.i ]
  %dec106.i = add i32 %dec106.in.i, -1, !dbg !590
    #dbg_value(i32 %len_best.addr.0103.i, !284, !DIExpression(), !581)
    #dbg_value(ptr %matches.addr.0102.i, !283, !DIExpression(), !581)
  %idx.ext.i209 = zext i32 %sub105.i to i64, !dbg !591
  %idx.neg.i = sub nsw i64 0, %idx.ext.i209, !dbg !591
  %add.ptr.i210 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg.i, !dbg !591
    #dbg_value(ptr %add.ptr.i210, !287, !DIExpression(), !592)
  %sub2.i = sub i32 %49, %sub105.i, !dbg !593
  %cmp3.i = icmp ugt i32 %sub105.i, %49, !dbg !594
  %cond.i = select i1 %cmp3.i, i32 %50, i32 0, !dbg !595
  %add.i211 = add i32 %sub2.i, %cond.i, !dbg !596
  %idxprom4.i = zext i32 %add.i211 to i64, !dbg !597
  %arrayidx5.i = getelementptr inbounds i32, ptr %48, i64 %idxprom4.i, !dbg !597
  %52 = load i32, ptr %arrayidx5.i, align 4, !dbg !597
    #dbg_value(i32 %52, !278, !DIExpression(), !581)
  %idxprom6.i = zext i32 %len_best.addr.0103.i to i64, !dbg !598
  %arrayidx7.i = getelementptr inbounds i8, ptr %add.ptr.i210, i64 %idxprom6.i, !dbg !598
  %53 = load i8, ptr %arrayidx7.i, align 1, !dbg !598
  %arrayidx9.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom6.i, !dbg !599
  %54 = load i8, ptr %arrayidx9.i, align 1, !dbg !599
  %cmp11.i = icmp eq i8 %53, %54, !dbg !600
  br i1 %cmp11.i, label %land.lhs.true.i, label %cleanup46.i, !dbg !589

land.lhs.true.i:                                  ; preds = %if.end.i
  %55 = load i8, ptr %add.ptr.i210, align 1, !dbg !601
  %56 = load i8, ptr %add.ptr.i, align 1, !dbg !602
  %cmp17.i = icmp eq i8 %55, %56, !dbg !603
  br i1 %cmp17.i, label %while.cond20.i, label %cleanup46.i, !dbg !604

while.cond20.i:                                   ; preds = %land.lhs.true.i, %while.body23.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %while.body23.i ], [ 0, %land.lhs.true.i ], !dbg !605
    #dbg_value(i64 %indvars.iv.i, !288, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !605)
  %exitcond.i = icmp eq i64 %indvars.iv.i, %wide.trip.count.i, !dbg !606
  br i1 %exitcond.i, label %while.end.i, label %while.body23.i, !dbg !607

while.body23.i:                                   ; preds = %while.cond20.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !608
    #dbg_value(i64 %indvars.iv.next.i, !288, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !605)
  %idxprom24.i = and i64 %indvars.iv.next.i, 4294967295, !dbg !609
  %arrayidx25.i = getelementptr inbounds i8, ptr %add.ptr.i210, i64 %idxprom24.i, !dbg !609
  %57 = load i8, ptr %arrayidx25.i, align 1, !dbg !609
  %arrayidx28.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom24.i, !dbg !610
  %58 = load i8, ptr %arrayidx28.i, align 1, !dbg !610
  %cmp30.not.i = icmp eq i8 %57, %58, !dbg !611
  br i1 %cmp30.not.i, label %while.cond20.i, label %while.end.split.loop.exit.i, !dbg !612, !llvm.loop !613

while.end.split.loop.exit.i:                      ; preds = %while.body23.i
  %indvars.le112.i = trunc i64 %indvars.iv.next.i to i32
  br label %while.end.i

while.end.i:                                      ; preds = %while.cond20.i, %while.end.split.loop.exit.i
  %inc.lcssa.i = phi i32 [ %indvars.le112.i, %while.end.split.loop.exit.i ], [ %len_limit.0, %while.cond20.i ], !dbg !608
  %cmp34.i = icmp ult i32 %len_best.addr.0103.i, %inc.lcssa.i, !dbg !615
  br i1 %cmp34.i, label %cleanup.i, label %cleanup46.i, !dbg !616

cleanup.i:                                        ; preds = %while.end.i
  %cmp21.not.not.le.i = icmp eq i32 %inc.lcssa.i, %len_limit.0
    #dbg_value(i32 %inc.lcssa.i, !284, !DIExpression(), !581)
  store i32 %inc.lcssa.i, ptr %matches.addr.0102.i, align 4, !dbg !617
  %sub38.i = add i32 %sub105.i, -1, !dbg !618
  %dist.i = getelementptr inbounds i8, ptr %matches.addr.0102.i, i64 4, !dbg !619
  store i32 %sub38.i, ptr %dist.i, align 4, !dbg !620
  %incdec.ptr.i = getelementptr inbounds i8, ptr %matches.addr.0102.i, i64 8, !dbg !621
    #dbg_value(ptr %incdec.ptr.i, !283, !DIExpression(), !581)
  br i1 %cmp21.not.not.le.i, label %hc_find_func.exit, label %cleanup46.i

cleanup46.i:                                      ; preds = %cleanup.i, %while.end.i, %land.lhs.true.i, %if.end.i
  %matches.addr.5.i = phi ptr [ %matches.addr.0102.i, %land.lhs.true.i ], [ %matches.addr.0102.i, %if.end.i ], [ %matches.addr.0102.i, %while.end.i ], [ %incdec.ptr.i, %cleanup.i ]
  %len_best.addr.5.i = phi i32 [ %len_best.addr.0103.i, %land.lhs.true.i ], [ %len_best.addr.0103.i, %if.end.i ], [ %len_best.addr.0103.i, %while.end.i ], [ %inc.lcssa.i, %cleanup.i ]
    #dbg_value(i32 %52, !278, !DIExpression(), !581)
    #dbg_value(i32 %len_best.addr.5.i, !284, !DIExpression(), !581)
    #dbg_value(ptr %matches.addr.5.i, !283, !DIExpression(), !581)
    #dbg_value(i32 %dec106.i, !279, !DIExpression(), !581)
  %sub.i212 = sub i32 %add, %52, !dbg !585
    #dbg_value(i32 %sub.i212, !285, !DIExpression(), !592)
    #dbg_value(i32 %dec106.i, !279, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !581)
  %cmp.i213 = icmp ne i32 %dec106.i, 0, !dbg !586
  %cmp1.not.i = icmp ult i32 %sub.i212, %50
  %or.cond.i = select i1 %cmp.i213, i1 %cmp1.not.i, i1 false, !dbg !587
  br i1 %or.cond.i, label %if.end.i, label %hc_find_func.exit, !dbg !587

hc_find_func.exit:                                ; preds = %cleanup.i, %cleanup46.i, %if.end104
  %retval.4.ph.i = phi ptr [ %add.ptr114, %if.end104 ], [ %incdec.ptr.i, %cleanup.i ], [ %matches.addr.5.i, %cleanup46.i ]
    #dbg_value(i32 poison, !278, !DIExpression(), !581)
    #dbg_value(i32 poison, !284, !DIExpression(), !581)
    #dbg_value(ptr poison, !283, !DIExpression(), !581)
  %sub.ptr.lhs.cast = ptrtoint ptr %retval.4.ph.i to i64, !dbg !545
  %sub.ptr.rhs.cast = ptrtoint ptr %matches to i64, !dbg !545
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !545
  %sub.ptr.div = lshr exact i64 %sub.ptr.sub, 3, !dbg !545
  %conv116 = trunc i64 %sub.ptr.div to i32, !dbg !545
    #dbg_value(i32 %conv116, !449, !DIExpression(), !458)
    #dbg_value(ptr %mf, !222, !DIExpression(), !622)
  %59 = load i32, ptr %cyclic_pos111, align 8, !dbg !624
  %inc.i215 = add i32 %59, 1, !dbg !624
  %60 = load i32, ptr %cyclic_size, align 4, !dbg !625
  %cmp.i217 = icmp eq i32 %inc.i215, %60, !dbg !626
  %spec.store.select.i218 = select i1 %cmp.i217, i32 0, i32 %inc.i215, !dbg !627
  store i32 %spec.store.select.i218, ptr %cyclic_pos111, align 8, !dbg !622
  %61 = load i32, ptr %0, align 8, !dbg !628
  %inc2.i220 = add i32 %61, 1, !dbg !628
  store i32 %inc2.i220, ptr %0, align 8, !dbg !628
  %62 = load i32, ptr %offset, align 4, !dbg !629
  %add.i222 = add i32 %62, %inc2.i220, !dbg !629
  %cmp4.i223 = icmp eq i32 %add.i222, -1, !dbg !629
  br i1 %cmp4.i223, label %if.then5.i224, label %cleanup129, !dbg !630

if.then5.i224:                                    ; preds = %hc_find_func.exit
    #dbg_value(ptr %mf, !236, !DIExpression(), !631)
  %sub.i.i225 = xor i32 %60, -1, !dbg !633
    #dbg_value(i32 %sub.i.i225, !239, !DIExpression(), !631)
  %hash_size_sum.i.i226 = getelementptr inbounds i8, ptr %mf, i64 108, !dbg !634
  %63 = load i32, ptr %hash_size_sum.i.i226, align 4, !dbg !634
  %sons_count.i.i227 = getelementptr inbounds i8, ptr %mf, i64 112, !dbg !635
  %64 = load i32, ptr %sons_count.i.i227, align 8, !dbg !635
  %add.i.i228 = add i32 %64, %63, !dbg !636
    #dbg_value(i32 %add.i.i228, !240, !DIExpression(), !631)
  %65 = load ptr, ptr %hash, align 8, !dbg !637
    #dbg_value(ptr %65, !241, !DIExpression(), !631)
    #dbg_value(i32 0, !242, !DIExpression(), !638)
  %cmp21.not.i.i230 = icmp eq i32 %add.i.i228, 0, !dbg !639
  br i1 %cmp21.not.i.i230, label %normalize.exit.i241, label %for.body.preheader.i.i231, !dbg !640

for.body.preheader.i.i231:                        ; preds = %if.then5.i224
  %wide.trip.count.i.i232 = zext i32 %add.i.i228 to i64, !dbg !639
  %min.iters.check269 = icmp ult i32 %add.i.i228, 16, !dbg !640
  br i1 %min.iters.check269, label %for.body.i.i233.preheader, label %vector.ph270, !dbg !640

vector.ph270:                                     ; preds = %for.body.preheader.i.i231
  %n.vec272 = and i64 %wide.trip.count.i.i232, 4294967280, !dbg !640
  %broadcast.splatinsert280 = insertelement <4 x i32> poison, i32 %sub.i.i225, i64 0, !dbg !640
  %broadcast.splat281 = shufflevector <4 x i32> %broadcast.splatinsert280, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !640
  br label %vector.body274, !dbg !640

vector.body274:                                   ; preds = %vector.body274, %vector.ph270
  %index275 = phi i64 [ 0, %vector.ph270 ], [ %index.next282, %vector.body274 ], !dbg !641
  %66 = getelementptr inbounds i32, ptr %65, i64 %index275, !dbg !642
  %67 = getelementptr inbounds i8, ptr %66, i64 16, !dbg !642
  %68 = getelementptr inbounds i8, ptr %66, i64 32, !dbg !642
  %69 = getelementptr inbounds i8, ptr %66, i64 48, !dbg !642
  %wide.load276 = load <4 x i32>, ptr %66, align 4, !dbg !642
  %wide.load277 = load <4 x i32>, ptr %67, align 4, !dbg !642
  %wide.load278 = load <4 x i32>, ptr %68, align 4, !dbg !642
  %wide.load279 = load <4 x i32>, ptr %69, align 4, !dbg !642
  %70 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load276, <4 x i32> %broadcast.splat281), !dbg !643
  %71 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load277, <4 x i32> %broadcast.splat281), !dbg !643
  %72 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load278, <4 x i32> %broadcast.splat281), !dbg !643
  %73 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load279, <4 x i32> %broadcast.splat281), !dbg !643
  store <4 x i32> %70, ptr %66, align 4, !dbg !644
  store <4 x i32> %71, ptr %67, align 4, !dbg !644
  store <4 x i32> %72, ptr %68, align 4, !dbg !644
  store <4 x i32> %73, ptr %69, align 4, !dbg !644
  %index.next282 = add nuw i64 %index275, 16, !dbg !641
  %74 = icmp eq i64 %index.next282, %n.vec272, !dbg !641
  br i1 %74, label %middle.block267, label %vector.body274, !dbg !641, !llvm.loop !645

middle.block267:                                  ; preds = %vector.body274
  %cmp.n283 = icmp eq i64 %n.vec272, %wide.trip.count.i.i232, !dbg !640
  br i1 %cmp.n283, label %normalize.exit.loopexit.i239, label %for.body.i.i233.preheader, !dbg !640

for.body.i.i233.preheader:                        ; preds = %middle.block267, %for.body.preheader.i.i231
  %indvars.iv.i.i234.ph = phi i64 [ 0, %for.body.preheader.i.i231 ], [ %n.vec272, %middle.block267 ]
  br label %for.body.i.i233, !dbg !640

for.body.i.i233:                                  ; preds = %for.body.i.i233.preheader, %for.body.i.i233
  %indvars.iv.i.i234 = phi i64 [ %indvars.iv.next.i.i237, %for.body.i.i233 ], [ %indvars.iv.i.i234.ph, %for.body.i.i233.preheader ]
    #dbg_value(i64 %indvars.iv.i.i234, !242, !DIExpression(), !638)
  %arrayidx.i.i235 = getelementptr inbounds i32, ptr %65, i64 %indvars.iv.i.i234, !dbg !642
  %75 = load i32, ptr %arrayidx.i.i235, align 4, !dbg !642
  %storemerge.i.i236 = tail call i32 @llvm.usub.sat.i32(i32 %75, i32 %sub.i.i225), !dbg !643
  store i32 %storemerge.i.i236, ptr %arrayidx.i.i235, align 4, !dbg !644
  %indvars.iv.next.i.i237 = add nuw nsw i64 %indvars.iv.i.i234, 1, !dbg !641
    #dbg_value(i64 %indvars.iv.next.i.i237, !242, !DIExpression(), !638)
  %exitcond.not.i.i238 = icmp eq i64 %indvars.iv.next.i.i237, %wide.trip.count.i.i232, !dbg !639
  br i1 %exitcond.not.i.i238, label %normalize.exit.loopexit.i239, label %for.body.i.i233, !dbg !640, !llvm.loop !647

normalize.exit.loopexit.i239:                     ; preds = %for.body.i.i233, %middle.block267
  %.pre.i240 = load i32, ptr %offset, align 4, !dbg !648
  br label %normalize.exit.i241, !dbg !648

normalize.exit.i241:                              ; preds = %normalize.exit.loopexit.i239, %if.then5.i224
  %76 = phi i32 [ %.pre.i240, %normalize.exit.loopexit.i239 ], [ %62, %if.then5.i224 ], !dbg !648
  %sub8.i.i242 = sub i32 %76, %sub.i.i225, !dbg !648
  store i32 %sub8.i.i242, ptr %offset, align 4, !dbg !648
  br label %cleanup129, !dbg !649

cleanup129:                                       ; preds = %normalize.exit.i241, %hc_find_func.exit, %normalize.exit.i, %do.body, %if.then3
  %retval.1 = phi i32 [ 0, %if.then3 ], [ %matches_count.1257, %do.body ], [ %matches_count.1257, %normalize.exit.i ], [ %conv116, %hc_find_func.exit ], [ %conv116, %normalize.exit.i241 ], !dbg !458
  ret i32 %retval.1, !dbg !650
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @lzma_mf_hc4_skip(ptr nocapture noundef %mf, i32 noundef %amount) local_unnamed_addr #1 !dbg !651 {
entry:
    #dbg_value(ptr %mf, !653, !DIExpression(), !663)
    #dbg_value(i32 %amount, !654, !DIExpression(), !663)
  %0 = getelementptr i8, ptr %mf, i64 24
  %1 = getelementptr i8, ptr %mf, i64 36
  %offset = getelementptr inbounds i8, ptr %mf, i64 20
  %hash_mask = getelementptr inbounds i8, ptr %mf, i64 88
  %hash = getelementptr inbounds i8, ptr %mf, i64 64
  %son = getelementptr inbounds i8, ptr %mf, i64 72
  %cyclic_pos = getelementptr inbounds i8, ptr %mf, i64 80
  %cyclic_size.i = getelementptr inbounds i8, ptr %mf, i64 84
  %hash_size_sum.i.i = getelementptr inbounds i8, ptr %mf, i64 108
  %sons_count.i.i = getelementptr inbounds i8, ptr %mf, i64 112
  %pending.i = getelementptr inbounds i8, ptr %mf, i64 40
  br label %do.body, !dbg !664

do.body:                                          ; preds = %do.cond35, %entry
  %amount.addr.0 = phi i32 [ %amount, %entry ], [ %dec, %do.cond35 ]
    #dbg_value(i32 %amount.addr.0, !654, !DIExpression(), !663)
  %mf.val = load i32, ptr %0, align 8, !dbg !665
  %mf.val60 = load i32, ptr %1, align 4, !dbg !665
    #dbg_value(ptr undef, !150, !DIExpression(), !667)
  %sub.i = sub i32 %mf.val60, %mf.val, !dbg !669
  %cmp = icmp ult i32 %sub.i, 4, !dbg !670
  br i1 %cmp, label %if.then, label %if.end, !dbg !671

if.then:                                          ; preds = %do.body
    #dbg_value(ptr %mf, !162, !DIExpression(), !672)
  %inc.i = add i32 %mf.val, 1, !dbg !675
  store i32 %inc.i, ptr %0, align 8, !dbg !675
  %2 = load i32, ptr %pending.i, align 8, !dbg !676
  %inc1.i = add i32 %2, 1, !dbg !676
  store i32 %inc1.i, ptr %pending.i, align 8, !dbg !676
  br label %do.cond35, !dbg !677

if.end:                                           ; preds = %do.body
  %mf.val61 = load ptr, ptr %mf, align 8, !dbg !678
    #dbg_value(ptr undef, !107, !DIExpression(), !679)
  %idx.ext.i = zext i32 %mf.val to i64, !dbg !681
  %add.ptr.i = getelementptr inbounds i8, ptr %mf.val61, i64 %idx.ext.i, !dbg !681
    #dbg_value(ptr %add.ptr.i, !655, !DIExpression(), !682)
  %3 = load i32, ptr %offset, align 4, !dbg !683
  %add = add i32 %3, %mf.val, !dbg !684
    #dbg_value(i32 %add, !657, !DIExpression(), !682)
  %4 = load i8, ptr %add.ptr.i, align 1, !dbg !685
  %idxprom = zext i8 %4 to i64, !dbg !685
  %arrayidx2 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %idxprom, !dbg !685
  %5 = load i32, ptr %arrayidx2, align 4, !dbg !685
  %arrayidx3 = getelementptr inbounds i8, ptr %add.ptr.i, i64 1, !dbg !685
  %6 = load i8, ptr %arrayidx3, align 1, !dbg !685
  %conv = zext i8 %6 to i32, !dbg !685
  %xor = xor i32 %5, %conv, !dbg !685
    #dbg_value(i32 %xor, !658, !DIExpression(), !682)
  %and = and i32 %xor, 1023, !dbg !685
    #dbg_value(i32 %and, !659, !DIExpression(), !682)
  %arrayidx4 = getelementptr inbounds i8, ptr %add.ptr.i, i64 2, !dbg !685
  %7 = load i8, ptr %arrayidx4, align 1, !dbg !685
  %conv5 = zext i8 %7 to i32, !dbg !685
  %shl = shl nuw nsw i32 %conv5, 8, !dbg !685
  %xor6 = xor i32 %shl, %xor, !dbg !685
  %and7 = and i32 %xor6, 65535, !dbg !685
    #dbg_value(i32 %and7, !660, !DIExpression(), !682)
  %arrayidx12 = getelementptr inbounds i8, ptr %add.ptr.i, i64 3, !dbg !685
  %8 = load i8, ptr %arrayidx12, align 1, !dbg !685
  %idxprom13 = zext i8 %8 to i64, !dbg !685
  %arrayidx14 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %idxprom13, !dbg !685
  %9 = load i32, ptr %arrayidx14, align 4, !dbg !685
  %shl15 = shl i32 %9, 5, !dbg !685
  %xor16 = xor i32 %xor6, %shl15, !dbg !685
  %10 = load i32, ptr %hash_mask, align 8, !dbg !685
  %and17 = and i32 %xor16, %10, !dbg !685
    #dbg_value(i32 %and17, !661, !DIExpression(), !682)
  %11 = load ptr, ptr %hash, align 8, !dbg !686
  %add18 = add i32 %and17, 66560, !dbg !687
  %idxprom19 = zext i32 %add18 to i64, !dbg !688
  %arrayidx20 = getelementptr inbounds i32, ptr %11, i64 %idxprom19, !dbg !688
  %12 = load i32, ptr %arrayidx20, align 4, !dbg !688
    #dbg_value(i32 %12, !662, !DIExpression(), !682)
  %idxprom22 = zext nneg i32 %and to i64, !dbg !689
  %arrayidx23 = getelementptr inbounds i32, ptr %11, i64 %idxprom22, !dbg !689
  store i32 %add, ptr %arrayidx23, align 4, !dbg !690
  %13 = load ptr, ptr %hash, align 8, !dbg !691
  %14 = zext nneg i32 %and7 to i64, !dbg !692
  %15 = getelementptr inbounds i32, ptr %13, i64 %14, !dbg !692
  %arrayidx27 = getelementptr inbounds i8, ptr %15, i64 4096, !dbg !692
  store i32 %add, ptr %arrayidx27, align 4, !dbg !693
  %16 = load ptr, ptr %hash, align 8, !dbg !694
  %arrayidx31 = getelementptr inbounds i32, ptr %16, i64 %idxprom19, !dbg !695
  store i32 %add, ptr %arrayidx31, align 4, !dbg !696
  %17 = load ptr, ptr %son, align 8, !dbg !697
  %18 = load i32, ptr %cyclic_pos, align 8, !dbg !697
  %idxprom33 = zext i32 %18 to i64, !dbg !697
  %arrayidx34 = getelementptr inbounds i32, ptr %17, i64 %idxprom33, !dbg !697
  store i32 %12, ptr %arrayidx34, align 4, !dbg !697
    #dbg_value(ptr %mf, !222, !DIExpression(), !699)
  %19 = load i32, ptr %cyclic_pos, align 8, !dbg !701
  %inc.i63 = add i32 %19, 1, !dbg !701
  %20 = load i32, ptr %cyclic_size.i, align 4, !dbg !702
  %cmp.i = icmp eq i32 %inc.i63, %20, !dbg !703
  %spec.store.select.i = select i1 %cmp.i, i32 0, i32 %inc.i63, !dbg !704
  store i32 %spec.store.select.i, ptr %cyclic_pos, align 8, !dbg !699
  %21 = load i32, ptr %0, align 8, !dbg !705
  %inc2.i = add i32 %21, 1, !dbg !705
  store i32 %inc2.i, ptr %0, align 8, !dbg !705
  %22 = load i32, ptr %offset, align 4, !dbg !706
  %add.i = add i32 %22, %inc2.i, !dbg !706
  %cmp4.i = icmp eq i32 %add.i, -1, !dbg !706
  br i1 %cmp4.i, label %if.then5.i, label %do.cond35, !dbg !707

if.then5.i:                                       ; preds = %if.end
    #dbg_value(ptr %mf, !236, !DIExpression(), !708)
  %sub.i.i = xor i32 %20, -1, !dbg !710
    #dbg_value(i32 %sub.i.i, !239, !DIExpression(), !708)
  %23 = load i32, ptr %hash_size_sum.i.i, align 4, !dbg !711
  %24 = load i32, ptr %sons_count.i.i, align 8, !dbg !712
  %add.i.i = add i32 %24, %23, !dbg !713
    #dbg_value(i32 %add.i.i, !240, !DIExpression(), !708)
  %25 = load ptr, ptr %hash, align 8, !dbg !714
    #dbg_value(ptr %25, !241, !DIExpression(), !708)
    #dbg_value(i32 0, !242, !DIExpression(), !715)
  %cmp21.not.i.i = icmp eq i32 %add.i.i, 0, !dbg !716
  br i1 %cmp21.not.i.i, label %normalize.exit.i, label %for.body.preheader.i.i, !dbg !717

for.body.preheader.i.i:                           ; preds = %if.then5.i
  %wide.trip.count.i.i = zext i32 %add.i.i to i64, !dbg !716
  %min.iters.check = icmp ult i32 %add.i.i, 16, !dbg !717
  br i1 %min.iters.check, label %for.body.i.i.preheader, label %vector.ph, !dbg !717

vector.ph:                                        ; preds = %for.body.preheader.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 4294967280, !dbg !717
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %sub.i.i, i64 0, !dbg !717
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !717
  br label %vector.body, !dbg !717

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !718
  %26 = getelementptr inbounds i32, ptr %25, i64 %index, !dbg !719
  %27 = getelementptr inbounds i8, ptr %26, i64 16, !dbg !719
  %28 = getelementptr inbounds i8, ptr %26, i64 32, !dbg !719
  %29 = getelementptr inbounds i8, ptr %26, i64 48, !dbg !719
  %wide.load = load <4 x i32>, ptr %26, align 4, !dbg !719
  %wide.load65 = load <4 x i32>, ptr %27, align 4, !dbg !719
  %wide.load66 = load <4 x i32>, ptr %28, align 4, !dbg !719
  %wide.load67 = load <4 x i32>, ptr %29, align 4, !dbg !719
  %30 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load, <4 x i32> %broadcast.splat), !dbg !720
  %31 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load65, <4 x i32> %broadcast.splat), !dbg !720
  %32 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load66, <4 x i32> %broadcast.splat), !dbg !720
  %33 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load67, <4 x i32> %broadcast.splat), !dbg !720
  store <4 x i32> %30, ptr %26, align 4, !dbg !721
  store <4 x i32> %31, ptr %27, align 4, !dbg !721
  store <4 x i32> %32, ptr %28, align 4, !dbg !721
  store <4 x i32> %33, ptr %29, align 4, !dbg !721
  %index.next = add nuw i64 %index, 16, !dbg !718
  %34 = icmp eq i64 %index.next, %n.vec, !dbg !718
  br i1 %34, label %middle.block, label %vector.body, !dbg !718, !llvm.loop !722

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i, !dbg !717
  br i1 %cmp.n, label %normalize.exit.loopexit.i, label %for.body.i.i.preheader, !dbg !717

for.body.i.i.preheader:                           ; preds = %middle.block, %for.body.preheader.i.i
  %indvars.iv.i.i.ph = phi i64 [ 0, %for.body.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %for.body.i.i, !dbg !717

for.body.i.i:                                     ; preds = %for.body.i.i.preheader, %for.body.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %for.body.i.i ], [ %indvars.iv.i.i.ph, %for.body.i.i.preheader ]
    #dbg_value(i64 %indvars.iv.i.i, !242, !DIExpression(), !715)
  %arrayidx.i.i = getelementptr inbounds i32, ptr %25, i64 %indvars.iv.i.i, !dbg !719
  %35 = load i32, ptr %arrayidx.i.i, align 4, !dbg !719
  %storemerge.i.i = tail call i32 @llvm.usub.sat.i32(i32 %35, i32 %sub.i.i), !dbg !720
  store i32 %storemerge.i.i, ptr %arrayidx.i.i, align 4, !dbg !721
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1, !dbg !718
    #dbg_value(i64 %indvars.iv.next.i.i, !242, !DIExpression(), !715)
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i, !dbg !716
  br i1 %exitcond.not.i.i, label %normalize.exit.loopexit.i, label %for.body.i.i, !dbg !717, !llvm.loop !724

normalize.exit.loopexit.i:                        ; preds = %for.body.i.i, %middle.block
  %.pre.i = load i32, ptr %offset, align 4, !dbg !725
  br label %normalize.exit.i, !dbg !725

normalize.exit.i:                                 ; preds = %normalize.exit.loopexit.i, %if.then5.i
  %36 = phi i32 [ %.pre.i, %normalize.exit.loopexit.i ], [ %22, %if.then5.i ], !dbg !725
  %sub8.i.i = sub i32 %36, %sub.i.i, !dbg !725
  store i32 %sub8.i.i, ptr %offset, align 4, !dbg !725
  br label %do.cond35, !dbg !726

do.cond35:                                        ; preds = %normalize.exit.i, %if.end, %if.then
  %dec = add i32 %amount.addr.0, -1, !dbg !727
    #dbg_value(i32 %dec, !654, !DIExpression(), !663)
  %cmp36.not = icmp eq i32 %dec, 0, !dbg !728
  br i1 %cmp36.not, label %do.end38, label %do.body, !dbg !729, !llvm.loop !730

do.end38:                                         ; preds = %do.cond35
  ret void, !dbg !732
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @lzma_mf_bt2_find(ptr nocapture noundef %mf, ptr noundef %matches) local_unnamed_addr #1 !dbg !733 {
entry:
    #dbg_value(ptr %mf, !735, !DIExpression(), !743)
    #dbg_value(ptr %matches, !736, !DIExpression(), !743)
  %0 = getelementptr i8, ptr %mf, i64 24, !dbg !744
  %mf.val = load i32, ptr %0, align 8, !dbg !744
  %1 = getelementptr i8, ptr %mf, i64 36, !dbg !744
  %mf.val42 = load i32, ptr %1, align 4, !dbg !744
    #dbg_value(ptr undef, !150, !DIExpression(), !745)
  %sub.i = sub i32 %mf.val42, %mf.val, !dbg !747
    #dbg_value(i32 %sub.i, !737, !DIExpression(), !743)
  %nice_len = getelementptr inbounds i8, ptr %mf, i64 96, !dbg !748
  %2 = load i32, ptr %nice_len, align 8, !dbg !748
  %cmp.not = icmp ugt i32 %2, %sub.i, !dbg !748
  br i1 %cmp.not, label %if.else, label %if.end5, !dbg !744

if.else:                                          ; preds = %entry
  %cmp2 = icmp ult i32 %sub.i, 2, !dbg !750
  br i1 %cmp2, label %if.then4, label %lor.lhs.false, !dbg !750

lor.lhs.false:                                    ; preds = %if.else
  %action = getelementptr inbounds i8, ptr %mf, i64 104, !dbg !750
  %3 = load i32, ptr %action, align 8, !dbg !750
  %cmp3 = icmp eq i32 %3, 1, !dbg !750
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !748

if.then4:                                         ; preds = %lor.lhs.false, %if.else
    #dbg_value(ptr %mf, !162, !DIExpression(), !752)
  %inc.i = add i32 %mf.val, 1, !dbg !755
  store i32 %inc.i, ptr %0, align 8, !dbg !755
  %pending.i = getelementptr inbounds i8, ptr %mf, i64 40, !dbg !756
  %4 = load i32, ptr %pending.i, align 8, !dbg !757
  %inc1.i = add i32 %4, 1, !dbg !757
  store i32 %inc1.i, ptr %pending.i, align 8, !dbg !757
  br label %cleanup19, !dbg !758

if.end5:                                          ; preds = %entry, %lor.lhs.false
  %len_limit.0 = phi i32 [ %sub.i, %lor.lhs.false ], [ %2, %entry ], !dbg !744
    #dbg_value(i32 %len_limit.0, !737, !DIExpression(), !743)
  %mf.val43 = load ptr, ptr %mf, align 8, !dbg !744
    #dbg_value(ptr undef, !107, !DIExpression(), !759)
  %idx.ext.i = zext i32 %mf.val to i64, !dbg !761
  %add.ptr.i = getelementptr inbounds i8, ptr %mf.val43, i64 %idx.ext.i, !dbg !761
    #dbg_value(ptr %add.ptr.i, !738, !DIExpression(), !743)
  %offset = getelementptr inbounds i8, ptr %mf, i64 20, !dbg !744
  %5 = load i32, ptr %offset, align 4, !dbg !744
  %add = add i32 %5, %mf.val, !dbg !744
    #dbg_value(i32 %add, !739, !DIExpression(), !743)
    #dbg_value(i32 0, !740, !DIExpression(), !743)
  %6 = load i16, ptr %add.ptr.i, align 1, !dbg !762
  %7 = zext i16 %6 to i64, !dbg !762
    #dbg_value(!DIArgList(i8 poison, i8 poison), !741, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value), !743)
  %hash = getelementptr inbounds i8, ptr %mf, i64 64, !dbg !763
  %8 = load ptr, ptr %hash, align 8, !dbg !763
  %arrayidx9 = getelementptr inbounds i32, ptr %8, i64 %7, !dbg !764
  %9 = load i32, ptr %arrayidx9, align 4, !dbg !764
    #dbg_value(i32 %9, !742, !DIExpression(), !743)
  store i32 %add, ptr %arrayidx9, align 4, !dbg !765
  %depth = getelementptr inbounds i8, ptr %mf, i64 92, !dbg !766
  %10 = load i32, ptr %depth, align 4, !dbg !766
  %son = getelementptr inbounds i8, ptr %mf, i64 72, !dbg !766
  %11 = load ptr, ptr %son, align 8, !dbg !766
  %cyclic_pos = getelementptr inbounds i8, ptr %mf, i64 80, !dbg !766
  %12 = load i32, ptr %cyclic_pos, align 8, !dbg !766
  %cyclic_size = getelementptr inbounds i8, ptr %mf, i64 84, !dbg !766
  %13 = load i32, ptr %cyclic_size, align 4, !dbg !766
    #dbg_value(i32 %len_limit.0, !768, !DIExpression(), !789)
    #dbg_value(i32 %add, !771, !DIExpression(), !789)
    #dbg_value(ptr %add.ptr.i, !772, !DIExpression(), !789)
    #dbg_value(i32 %9, !773, !DIExpression(), !789)
    #dbg_value(i32 %10, !774, !DIExpression(), !789)
    #dbg_value(ptr %11, !775, !DIExpression(), !789)
    #dbg_value(i32 %12, !776, !DIExpression(), !789)
    #dbg_value(i32 %13, !777, !DIExpression(), !789)
    #dbg_value(ptr %matches, !778, !DIExpression(), !789)
    #dbg_value(i32 1, !779, !DIExpression(), !789)
  %shl.i = shl i32 %12, 1, !dbg !791
  %idx.ext.i45 = zext i32 %shl.i to i64, !dbg !792
  %add.ptr.i46 = getelementptr inbounds i32, ptr %11, i64 %idx.ext.i45, !dbg !792
  %add.ptr1.i = getelementptr inbounds i8, ptr %add.ptr.i46, i64 4, !dbg !793
    #dbg_value(ptr %add.ptr1.i, !780, !DIExpression(), !789)
    #dbg_value(ptr %add.ptr.i46, !781, !DIExpression(), !789)
    #dbg_value(i32 0, !782, !DIExpression(), !789)
    #dbg_value(i32 0, !783, !DIExpression(), !789)
  %sub135.i = sub i32 %add, %9, !dbg !794
  %cmp137.i = icmp ne i32 %10, 0, !dbg !795
  %cmp5.not138.i = icmp ult i32 %sub135.i, %13
  %or.cond139.i = and i1 %cmp137.i, %cmp5.not138.i, !dbg !797
  br i1 %or.cond139.i, label %if.end.i.preheader, label %if.then.i, !dbg !797

if.end.i.preheader:                               ; preds = %if.end5
  %.pre = zext i32 %len_limit.0 to i64
  br label %if.end.i, !dbg !798

if.then.i:                                        ; preds = %cleanup64.i, %if.end5
  %matches.addr.0.lcssa.i = phi ptr [ %matches, %if.end5 ], [ %matches.addr.1.i, %cleanup64.i ]
  %ptr0.0.lcssa.i = phi ptr [ %add.ptr1.i, %if.end5 ], [ %ptr0.1.i, %cleanup64.i ], !dbg !799
  %ptr1.0.lcssa.i = phi ptr [ %add.ptr.i46, %if.end5 ], [ %ptr1.1.i, %cleanup64.i ], !dbg !800
  store i32 0, ptr %ptr0.0.lcssa.i, align 4, !dbg !801
  store i32 0, ptr %ptr1.0.lcssa.i, align 4, !dbg !803
  br label %bt_find_func.exit, !dbg !804

if.end.i:                                         ; preds = %if.end.i.preheader, %cleanup64.i
  %dec148.in.i = phi i32 [ %dec148.i, %cleanup64.i ], [ %10, %if.end.i.preheader ]
  %sub147.i = phi i32 [ %sub.i47, %cleanup64.i ], [ %sub135.i, %if.end.i.preheader ]
  %cur_match.addr.0146.i = phi i32 [ %cur_match.addr.1.i, %cleanup64.i ], [ %9, %if.end.i.preheader ]
  %len1.0145.i = phi i32 [ %len1.1.i, %cleanup64.i ], [ 0, %if.end.i.preheader ]
  %len0.0144.i = phi i32 [ %len0.1.i, %cleanup64.i ], [ 0, %if.end.i.preheader ]
  %ptr1.0143.i = phi ptr [ %ptr1.1.i, %cleanup64.i ], [ %add.ptr.i46, %if.end.i.preheader ]
  %ptr0.0142.i = phi ptr [ %ptr0.1.i, %cleanup64.i ], [ %add.ptr1.i, %if.end.i.preheader ]
  %len_best.addr.0141.i = phi i32 [ %len_best.addr.1.i, %cleanup64.i ], [ 1, %if.end.i.preheader ]
  %matches.addr.0140.i = phi ptr [ %matches.addr.1.i, %cleanup64.i ], [ %matches, %if.end.i.preheader ]
  %dec148.i = add i32 %dec148.in.i, -1, !dbg !805
    #dbg_value(i32 %cur_match.addr.0146.i, !773, !DIExpression(), !789)
    #dbg_value(i32 %len1.0145.i, !783, !DIExpression(), !789)
    #dbg_value(i32 %len0.0144.i, !782, !DIExpression(), !789)
    #dbg_value(ptr %ptr1.0143.i, !781, !DIExpression(), !789)
    #dbg_value(ptr %ptr0.0142.i, !780, !DIExpression(), !789)
    #dbg_value(i32 %len_best.addr.0141.i, !779, !DIExpression(), !789)
    #dbg_value(ptr %matches.addr.0140.i, !778, !DIExpression(), !789)
  %sub6.i = sub i32 %12, %sub147.i, !dbg !806
  %cmp7.i = icmp ugt i32 %sub147.i, %12, !dbg !807
  %cond.i = select i1 %cmp7.i, i32 %13, i32 0, !dbg !808
  %add.i = add i32 %sub6.i, %cond.i, !dbg !809
  %shl8.i = shl i32 %add.i, 1, !dbg !810
  %idx.ext9.i = zext i32 %shl8.i to i64, !dbg !811
  %add.ptr10.i = getelementptr inbounds i32, ptr %11, i64 %idx.ext9.i, !dbg !811
    #dbg_value(ptr %add.ptr10.i, !786, !DIExpression(), !812)
  %idx.ext11.i = zext i32 %sub147.i to i64, !dbg !813
  %idx.neg.i = sub nsw i64 0, %idx.ext11.i, !dbg !813
  %add.ptr12.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg.i, !dbg !813
    #dbg_value(ptr %add.ptr12.i, !787, !DIExpression(), !812)
  %cond17.i = tail call i32 @llvm.umin.i32(i32 %len0.0144.i, i32 %len1.0145.i), !dbg !814
    #dbg_value(i32 %cond17.i, !788, !DIExpression(), !812)
  %idxprom.i = zext i32 %cond17.i to i64, !dbg !815
  %arrayidx.i = getelementptr inbounds i8, ptr %add.ptr12.i, i64 %idxprom.i, !dbg !815
  %14 = load i8, ptr %arrayidx.i, align 1, !dbg !815
  %arrayidx19.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom.i, !dbg !817
  %15 = load i8, ptr %arrayidx19.i, align 1, !dbg !817
  %cmp21.i = icmp eq i8 %14, %15, !dbg !818
  br i1 %cmp21.i, label %while.cond24.i, label %if.end50.i, !dbg !819

while.cond24.i:                                   ; preds = %if.end.i, %while.body27.i
  %len.0.i = phi i32 [ %inc.i48, %while.body27.i ], [ %cond17.i, %if.end.i ], !dbg !812
    #dbg_value(i32 %len.0.i, !788, !DIExpression(), !812)
  %inc.i48 = add i32 %len.0.i, 1, !dbg !820
    #dbg_value(i32 %inc.i48, !788, !DIExpression(), !812)
  %cmp25.not.i = icmp eq i32 %inc.i48, %len_limit.0, !dbg !822
  br i1 %cmp25.not.i, label %while.end.i, label %while.body27.i, !dbg !823

while.body27.i:                                   ; preds = %while.cond24.i
  %idxprom28.i = zext i32 %inc.i48 to i64, !dbg !824
  %arrayidx29.i = getelementptr inbounds i8, ptr %add.ptr12.i, i64 %idxprom28.i, !dbg !824
  %16 = load i8, ptr %arrayidx29.i, align 1, !dbg !824
  %arrayidx32.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom28.i, !dbg !826
  %17 = load i8, ptr %arrayidx32.i, align 1, !dbg !826
  %cmp34.not.i = icmp eq i8 %16, %17, !dbg !827
  br i1 %cmp34.not.i, label %while.cond24.i, label %while.end.thread.i, !dbg !828, !llvm.loop !829

while.end.i:                                      ; preds = %while.cond24.i
  %cmp38.i = icmp ult i32 %len_best.addr.0141.i, %len_limit.0, !dbg !831
  br i1 %cmp38.i, label %if.then45.i, label %if.end50.i, !dbg !833

while.end.thread.i:                               ; preds = %while.body27.i
  %cmp38115.i = icmp ult i32 %len_best.addr.0141.i, %inc.i48, !dbg !831
  br i1 %cmp38115.i, label %if.then40.thread.i, label %if.end50.i, !dbg !833

if.then40.thread.i:                               ; preds = %while.end.thread.i
    #dbg_value(i32 %inc.i48, !779, !DIExpression(), !789)
  store i32 %inc.i48, ptr %matches.addr.0140.i, align 4, !dbg !834
  %sub42116.i = add i32 %sub147.i, -1, !dbg !836
  %dist117.i = getelementptr inbounds i8, ptr %matches.addr.0140.i, i64 4, !dbg !837
  store i32 %sub42116.i, ptr %dist117.i, align 4, !dbg !838
  %incdec.ptr118.i = getelementptr inbounds i8, ptr %matches.addr.0140.i, i64 8, !dbg !839
    #dbg_value(ptr %incdec.ptr118.i, !778, !DIExpression(), !789)
  br label %if.end50.i, !dbg !840

if.then45.i:                                      ; preds = %while.end.i
    #dbg_value(i32 %len_limit.0, !779, !DIExpression(), !789)
  store i32 %len_limit.0, ptr %matches.addr.0140.i, align 4, !dbg !834
  %sub42.i = add i32 %sub147.i, -1, !dbg !836
  %dist.i = getelementptr inbounds i8, ptr %matches.addr.0140.i, i64 4, !dbg !837
  store i32 %sub42.i, ptr %dist.i, align 4, !dbg !838
  %incdec.ptr.i = getelementptr inbounds i8, ptr %matches.addr.0140.i, i64 8, !dbg !839
    #dbg_value(ptr %incdec.ptr.i, !778, !DIExpression(), !789)
  %18 = load i32, ptr %add.ptr10.i, align 4, !dbg !841
  store i32 %18, ptr %ptr1.0143.i, align 4, !dbg !844
  %arrayidx47.i = getelementptr inbounds i8, ptr %add.ptr10.i, i64 4, !dbg !845
  %19 = load i32, ptr %arrayidx47.i, align 4, !dbg !845
  store i32 %19, ptr %ptr0.0142.i, align 4, !dbg !846
  br label %bt_find_func.exit, !dbg !847

if.end50.i:                                       ; preds = %while.end.i, %if.then40.thread.i, %while.end.thread.i, %if.end.i
  %idxprom51.i.pre-phi = phi i64 [ %idxprom28.i, %if.then40.thread.i ], [ %idxprom28.i, %while.end.thread.i ], [ %idxprom.i, %if.end.i ], [ %.pre, %while.end.i ], !dbg !848
  %matches.addr.1.i = phi ptr [ %incdec.ptr118.i, %if.then40.thread.i ], [ %matches.addr.0140.i, %while.end.thread.i ], [ %matches.addr.0140.i, %if.end.i ], [ %matches.addr.0140.i, %while.end.i ]
  %len_best.addr.1.i = phi i32 [ %inc.i48, %if.then40.thread.i ], [ %len_best.addr.0141.i, %while.end.thread.i ], [ %len_best.addr.0141.i, %if.end.i ], [ %len_best.addr.0141.i, %while.end.i ]
  %len.1.i = phi i32 [ %inc.i48, %if.then40.thread.i ], [ %inc.i48, %while.end.thread.i ], [ %cond17.i, %if.end.i ], [ %len_limit.0, %while.end.i ], !dbg !812
    #dbg_value(i32 %len.1.i, !788, !DIExpression(), !812)
    #dbg_value(i32 %len_best.addr.1.i, !779, !DIExpression(), !789)
    #dbg_value(ptr %matches.addr.1.i, !778, !DIExpression(), !789)
  %arrayidx52.i = getelementptr inbounds i8, ptr %add.ptr12.i, i64 %idxprom51.i.pre-phi, !dbg !848
  %20 = load i8, ptr %arrayidx52.i, align 1, !dbg !848
  %arrayidx55.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom51.i.pre-phi, !dbg !850
  %21 = load i8, ptr %arrayidx55.i, align 1, !dbg !850
  %cmp57.i = icmp ult i8 %20, %21, !dbg !851
  br i1 %cmp57.i, label %if.then59.i, label %if.else.i, !dbg !852

if.then59.i:                                      ; preds = %if.end50.i
  store i32 %cur_match.addr.0146.i, ptr %ptr1.0143.i, align 4, !dbg !853
  %add.ptr60.i = getelementptr inbounds i8, ptr %add.ptr10.i, i64 4, !dbg !855
    #dbg_value(ptr %add.ptr60.i, !781, !DIExpression(), !789)
    #dbg_value(i32 poison, !773, !DIExpression(), !789)
    #dbg_value(i32 %len.1.i, !783, !DIExpression(), !789)
  br label %cleanup64.i, !dbg !856

if.else.i:                                        ; preds = %if.end50.i
  store i32 %cur_match.addr.0146.i, ptr %ptr0.0142.i, align 4, !dbg !857
    #dbg_value(ptr %add.ptr10.i, !780, !DIExpression(), !789)
    #dbg_value(i32 poison, !773, !DIExpression(), !789)
    #dbg_value(i32 %len.1.i, !782, !DIExpression(), !789)
  br label %cleanup64.i

cleanup64.i:                                      ; preds = %if.else.i, %if.then59.i
  %ptr0.1.i = phi ptr [ %ptr0.0142.i, %if.then59.i ], [ %add.ptr10.i, %if.else.i ], !dbg !789
  %ptr1.1.i = phi ptr [ %add.ptr60.i, %if.then59.i ], [ %ptr1.0143.i, %if.else.i ], !dbg !789
  %len0.1.i = phi i32 [ %len0.0144.i, %if.then59.i ], [ %len.1.i, %if.else.i ], !dbg !789
  %len1.1.i = phi i32 [ %len.1.i, %if.then59.i ], [ %len1.0145.i, %if.else.i ], !dbg !789
  %cur_match.addr.1.in.i = phi ptr [ %add.ptr60.i, %if.then59.i ], [ %add.ptr10.i, %if.else.i ]
  %cur_match.addr.1.i = load i32, ptr %cur_match.addr.1.in.i, align 4, !dbg !859
    #dbg_value(i32 %cur_match.addr.1.i, !773, !DIExpression(), !789)
    #dbg_value(i32 %dec148.i, !774, !DIExpression(), !789)
    #dbg_value(i32 %len1.1.i, !783, !DIExpression(), !789)
    #dbg_value(i32 %len0.1.i, !782, !DIExpression(), !789)
    #dbg_value(ptr %ptr1.1.i, !781, !DIExpression(), !789)
    #dbg_value(ptr %ptr0.1.i, !780, !DIExpression(), !789)
    #dbg_value(i32 %len_best.addr.1.i, !779, !DIExpression(), !789)
    #dbg_value(ptr %matches.addr.1.i, !778, !DIExpression(), !789)
  %sub.i47 = sub i32 %add, %cur_match.addr.1.i, !dbg !794
    #dbg_value(i32 %sub.i47, !784, !DIExpression(), !812)
    #dbg_value(i32 %dec148.i, !774, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !789)
  %cmp.i = icmp ne i32 %dec148.i, 0, !dbg !795
  %cmp5.not.i = icmp ult i32 %sub.i47, %13
  %or.cond.i = select i1 %cmp.i, i1 %cmp5.not.i, i1 false, !dbg !797
  br i1 %or.cond.i, label %if.end.i, label %if.then.i, !dbg !797, !llvm.loop !860

bt_find_func.exit:                                ; preds = %if.then.i, %if.then45.i
  %retval.2.ph.i = phi ptr [ %incdec.ptr.i, %if.then45.i ], [ %matches.addr.0.lcssa.i, %if.then.i ]
    #dbg_value(i32 poison, !773, !DIExpression(), !789)
    #dbg_value(i32 poison, !783, !DIExpression(), !789)
    #dbg_value(i32 poison, !782, !DIExpression(), !789)
    #dbg_value(ptr poison, !781, !DIExpression(), !789)
    #dbg_value(ptr poison, !780, !DIExpression(), !789)
    #dbg_value(i32 poison, !779, !DIExpression(), !789)
    #dbg_value(ptr poison, !778, !DIExpression(), !789)
  %sub.ptr.lhs.cast = ptrtoint ptr %retval.2.ph.i to i64, !dbg !766
  %sub.ptr.rhs.cast = ptrtoint ptr %matches to i64, !dbg !766
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !766
  %sub.ptr.div = lshr exact i64 %sub.ptr.sub, 3, !dbg !766
  %conv14 = trunc i64 %sub.ptr.div to i32, !dbg !766
    #dbg_value(i32 %conv14, !740, !DIExpression(), !743)
    #dbg_value(ptr %mf, !222, !DIExpression(), !862)
  %22 = load i32, ptr %cyclic_pos, align 8, !dbg !864
  %inc.i49 = add i32 %22, 1, !dbg !864
  %23 = load i32, ptr %cyclic_size, align 4, !dbg !865
  %cmp.i50 = icmp eq i32 %inc.i49, %23, !dbg !866
  %spec.store.select.i = select i1 %cmp.i50, i32 0, i32 %inc.i49, !dbg !867
  store i32 %spec.store.select.i, ptr %cyclic_pos, align 8, !dbg !862
  %24 = load i32, ptr %0, align 8, !dbg !868
  %inc2.i = add i32 %24, 1, !dbg !868
  store i32 %inc2.i, ptr %0, align 8, !dbg !868
  %25 = load i32, ptr %offset, align 4, !dbg !869
  %add.i52 = add i32 %25, %inc2.i, !dbg !869
  %cmp4.i = icmp eq i32 %add.i52, -1, !dbg !869
  br i1 %cmp4.i, label %if.then5.i, label %cleanup19, !dbg !870

if.then5.i:                                       ; preds = %bt_find_func.exit
    #dbg_value(ptr %mf, !236, !DIExpression(), !871)
  %sub.i.i = xor i32 %23, -1, !dbg !873
    #dbg_value(i32 %sub.i.i, !239, !DIExpression(), !871)
  %hash_size_sum.i.i = getelementptr inbounds i8, ptr %mf, i64 108, !dbg !874
  %26 = load i32, ptr %hash_size_sum.i.i, align 4, !dbg !874
  %sons_count.i.i = getelementptr inbounds i8, ptr %mf, i64 112, !dbg !875
  %27 = load i32, ptr %sons_count.i.i, align 8, !dbg !875
  %add.i.i = add i32 %27, %26, !dbg !876
    #dbg_value(i32 %add.i.i, !240, !DIExpression(), !871)
  %28 = load ptr, ptr %hash, align 8, !dbg !877
    #dbg_value(ptr %28, !241, !DIExpression(), !871)
    #dbg_value(i32 0, !242, !DIExpression(), !878)
  %cmp21.not.i.i = icmp eq i32 %add.i.i, 0, !dbg !879
  br i1 %cmp21.not.i.i, label %normalize.exit.i, label %for.body.preheader.i.i, !dbg !880

for.body.preheader.i.i:                           ; preds = %if.then5.i
  %wide.trip.count.i.i = zext i32 %add.i.i to i64, !dbg !879
  %min.iters.check = icmp ult i32 %add.i.i, 16, !dbg !880
  br i1 %min.iters.check, label %for.body.i.i.preheader, label %vector.ph, !dbg !880

vector.ph:                                        ; preds = %for.body.preheader.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 4294967280, !dbg !880
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %sub.i.i, i64 0, !dbg !880
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !880
  br label %vector.body, !dbg !880

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !881
  %29 = getelementptr inbounds i32, ptr %28, i64 %index, !dbg !882
  %30 = getelementptr inbounds i8, ptr %29, i64 16, !dbg !882
  %31 = getelementptr inbounds i8, ptr %29, i64 32, !dbg !882
  %32 = getelementptr inbounds i8, ptr %29, i64 48, !dbg !882
  %wide.load = load <4 x i32>, ptr %29, align 4, !dbg !882
  %wide.load77 = load <4 x i32>, ptr %30, align 4, !dbg !882
  %wide.load78 = load <4 x i32>, ptr %31, align 4, !dbg !882
  %wide.load79 = load <4 x i32>, ptr %32, align 4, !dbg !882
  %33 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load, <4 x i32> %broadcast.splat), !dbg !883
  %34 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load77, <4 x i32> %broadcast.splat), !dbg !883
  %35 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load78, <4 x i32> %broadcast.splat), !dbg !883
  %36 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load79, <4 x i32> %broadcast.splat), !dbg !883
  store <4 x i32> %33, ptr %29, align 4, !dbg !884
  store <4 x i32> %34, ptr %30, align 4, !dbg !884
  store <4 x i32> %35, ptr %31, align 4, !dbg !884
  store <4 x i32> %36, ptr %32, align 4, !dbg !884
  %index.next = add nuw i64 %index, 16, !dbg !881
  %37 = icmp eq i64 %index.next, %n.vec, !dbg !881
  br i1 %37, label %middle.block, label %vector.body, !dbg !881, !llvm.loop !885

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i, !dbg !880
  br i1 %cmp.n, label %normalize.exit.loopexit.i, label %for.body.i.i.preheader, !dbg !880

for.body.i.i.preheader:                           ; preds = %middle.block, %for.body.preheader.i.i
  %indvars.iv.i.i.ph = phi i64 [ 0, %for.body.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %for.body.i.i, !dbg !880

for.body.i.i:                                     ; preds = %for.body.i.i.preheader, %for.body.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %for.body.i.i ], [ %indvars.iv.i.i.ph, %for.body.i.i.preheader ]
    #dbg_value(i64 %indvars.iv.i.i, !242, !DIExpression(), !878)
  %arrayidx.i.i = getelementptr inbounds i32, ptr %28, i64 %indvars.iv.i.i, !dbg !882
  %38 = load i32, ptr %arrayidx.i.i, align 4, !dbg !882
  %storemerge.i.i = tail call i32 @llvm.usub.sat.i32(i32 %38, i32 %sub.i.i), !dbg !883
  store i32 %storemerge.i.i, ptr %arrayidx.i.i, align 4, !dbg !884
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1, !dbg !881
    #dbg_value(i64 %indvars.iv.next.i.i, !242, !DIExpression(), !878)
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i, !dbg !879
  br i1 %exitcond.not.i.i, label %normalize.exit.loopexit.i, label %for.body.i.i, !dbg !880, !llvm.loop !887

normalize.exit.loopexit.i:                        ; preds = %for.body.i.i, %middle.block
  %.pre.i = load i32, ptr %offset, align 4, !dbg !888
  br label %normalize.exit.i, !dbg !888

normalize.exit.i:                                 ; preds = %normalize.exit.loopexit.i, %if.then5.i
  %39 = phi i32 [ %.pre.i, %normalize.exit.loopexit.i ], [ %25, %if.then5.i ], !dbg !888
  %sub8.i.i = sub i32 %39, %sub.i.i, !dbg !888
  store i32 %sub8.i.i, ptr %offset, align 4, !dbg !888
  br label %cleanup19, !dbg !889

cleanup19:                                        ; preds = %normalize.exit.i, %bt_find_func.exit, %if.then4
  %retval.0 = phi i32 [ 0, %if.then4 ], [ %conv14, %bt_find_func.exit ], [ %conv14, %normalize.exit.i ], !dbg !743
  ret i32 %retval.0, !dbg !890
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @lzma_mf_bt2_skip(ptr nocapture noundef %mf, i32 noundef %amount) local_unnamed_addr #1 !dbg !891 {
entry:
    #dbg_value(ptr %mf, !893, !DIExpression(), !901)
    #dbg_value(i32 %amount, !894, !DIExpression(), !901)
  %0 = getelementptr i8, ptr %mf, i64 24
  %1 = getelementptr i8, ptr %mf, i64 36
  %nice_len = getelementptr inbounds i8, ptr %mf, i64 96
  %action = getelementptr inbounds i8, ptr %mf, i64 104
  %offset = getelementptr inbounds i8, ptr %mf, i64 20
  %hash = getelementptr inbounds i8, ptr %mf, i64 64
  %depth = getelementptr inbounds i8, ptr %mf, i64 92
  %son = getelementptr inbounds i8, ptr %mf, i64 72
  %cyclic_pos = getelementptr inbounds i8, ptr %mf, i64 80
  %cyclic_size = getelementptr inbounds i8, ptr %mf, i64 84
  %hash_size_sum.i.i = getelementptr inbounds i8, ptr %mf, i64 108
  %sons_count.i.i = getelementptr inbounds i8, ptr %mf, i64 112
  %pending.i = getelementptr inbounds i8, ptr %mf, i64 40
  br label %do.body, !dbg !902

do.body:                                          ; preds = %cleanup, %entry
  %amount.addr.0 = phi i32 [ %amount, %entry ], [ %dec, %cleanup ]
    #dbg_value(i32 %amount.addr.0, !894, !DIExpression(), !901)
  %mf.val = load i32, ptr %0, align 8, !dbg !903
  %mf.val38 = load i32, ptr %1, align 4, !dbg !903
    #dbg_value(ptr undef, !150, !DIExpression(), !904)
  %sub.i = sub i32 %mf.val38, %mf.val, !dbg !906
    #dbg_value(i32 %sub.i, !895, !DIExpression(), !907)
  %2 = load i32, ptr %nice_len, align 8, !dbg !908
  %cmp.not = icmp ugt i32 %2, %sub.i, !dbg !908
  br i1 %cmp.not, label %if.else, label %if.end5, !dbg !903

if.else:                                          ; preds = %do.body
  %cmp2 = icmp ult i32 %sub.i, 2, !dbg !910
  br i1 %cmp2, label %if.then4, label %lor.lhs.false, !dbg !910

lor.lhs.false:                                    ; preds = %if.else
  %3 = load i32, ptr %action, align 8, !dbg !910
  %cmp3 = icmp eq i32 %3, 1, !dbg !910
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !908

if.then4:                                         ; preds = %lor.lhs.false, %if.else
    #dbg_value(ptr %mf, !162, !DIExpression(), !912)
  %inc.i = add i32 %mf.val, 1, !dbg !915
  store i32 %inc.i, ptr %0, align 8, !dbg !915
  %4 = load i32, ptr %pending.i, align 8, !dbg !916
  %inc1.i = add i32 %4, 1, !dbg !916
  store i32 %inc1.i, ptr %pending.i, align 8, !dbg !916
  br label %cleanup, !dbg !917

if.end5:                                          ; preds = %do.body, %lor.lhs.false
  %len_limit.0 = phi i32 [ %sub.i, %lor.lhs.false ], [ %2, %do.body ], !dbg !903
    #dbg_value(i32 %len_limit.0, !895, !DIExpression(), !907)
  %mf.val39 = load ptr, ptr %mf, align 8, !dbg !903
    #dbg_value(ptr undef, !107, !DIExpression(), !918)
  %idx.ext.i = zext i32 %mf.val to i64, !dbg !920
  %add.ptr.i = getelementptr inbounds i8, ptr %mf.val39, i64 %idx.ext.i, !dbg !920
    #dbg_value(ptr %add.ptr.i, !897, !DIExpression(), !907)
  %5 = load i32, ptr %offset, align 4, !dbg !903
  %add = add i32 %5, %mf.val, !dbg !903
    #dbg_value(i32 %add, !898, !DIExpression(), !907)
  %6 = load i16, ptr %add.ptr.i, align 1, !dbg !921
  %7 = zext i16 %6 to i64, !dbg !921
    #dbg_value(!DIArgList(i8 poison, i8 poison), !899, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value), !907)
  %8 = load ptr, ptr %hash, align 8, !dbg !922
  %arrayidx9 = getelementptr inbounds i32, ptr %8, i64 %7, !dbg !923
  %9 = load i32, ptr %arrayidx9, align 4, !dbg !923
    #dbg_value(i32 %9, !900, !DIExpression(), !907)
  store i32 %add, ptr %arrayidx9, align 4, !dbg !924
  %10 = load i32, ptr %depth, align 4, !dbg !925
  %11 = load ptr, ptr %son, align 8, !dbg !925
  %12 = load i32, ptr %cyclic_pos, align 8, !dbg !925
  %13 = load i32, ptr %cyclic_size, align 4, !dbg !925
    #dbg_value(i32 %len_limit.0, !927, !DIExpression(), !948)
    #dbg_value(i32 %add, !932, !DIExpression(), !948)
    #dbg_value(ptr %add.ptr.i, !933, !DIExpression(), !948)
    #dbg_value(i32 %9, !934, !DIExpression(), !948)
    #dbg_value(i32 %10, !935, !DIExpression(), !948)
    #dbg_value(ptr %11, !936, !DIExpression(), !948)
    #dbg_value(i32 %12, !937, !DIExpression(), !948)
    #dbg_value(i32 %13, !938, !DIExpression(), !948)
  %shl.i = shl i32 %12, 1, !dbg !950
  %idx.ext.i41 = zext i32 %shl.i to i64, !dbg !951
  %add.ptr.i42 = getelementptr inbounds i32, ptr %11, i64 %idx.ext.i41, !dbg !951
  %add.ptr1.i = getelementptr inbounds i8, ptr %add.ptr.i42, i64 4, !dbg !952
    #dbg_value(ptr %add.ptr1.i, !939, !DIExpression(), !948)
    #dbg_value(ptr %add.ptr.i42, !940, !DIExpression(), !948)
    #dbg_value(i32 0, !941, !DIExpression(), !948)
    #dbg_value(i32 0, !942, !DIExpression(), !948)
  %sub111.i = sub i32 %add, %9, !dbg !953
  %cmp113.i = icmp ne i32 %10, 0, !dbg !954
  %cmp5.not114.i = icmp ult i32 %sub111.i, %13
  %or.cond115.i = and i1 %cmp113.i, %cmp5.not114.i, !dbg !956
  br i1 %or.cond115.i, label %if.end.i, label %if.then.i, !dbg !956

if.then.i:                                        ; preds = %cleanup58.i, %if.end5
  %ptr1.0.lcssa.i = phi ptr [ %add.ptr.i42, %if.end5 ], [ %ptr1.1.i, %cleanup58.i ], !dbg !957
  %ptr0.0.lcssa.i = phi ptr [ %add.ptr1.i, %if.end5 ], [ %ptr0.1.i, %cleanup58.i ], !dbg !958
  store i32 0, ptr %ptr0.0.lcssa.i, align 4, !dbg !959
  store i32 0, ptr %ptr1.0.lcssa.i, align 4, !dbg !961
  br label %bt_skip_func.exit, !dbg !962

if.end.i:                                         ; preds = %if.end5, %cleanup58.i
  %dec122.in.i = phi i32 [ %dec122.i, %cleanup58.i ], [ %10, %if.end5 ]
  %sub121.i = phi i32 [ %sub.i43, %cleanup58.i ], [ %sub111.i, %if.end5 ]
  %cur_match.addr.0120.i = phi i32 [ %cur_match.addr.1.i, %cleanup58.i ], [ %9, %if.end5 ]
  %ptr0.0119.i = phi ptr [ %ptr0.1.i, %cleanup58.i ], [ %add.ptr1.i, %if.end5 ]
  %len1.0118.i = phi i32 [ %len1.1.i, %cleanup58.i ], [ 0, %if.end5 ]
  %len0.0117.i = phi i32 [ %len0.1.i, %cleanup58.i ], [ 0, %if.end5 ]
  %ptr1.0116.i = phi ptr [ %ptr1.1.i, %cleanup58.i ], [ %add.ptr.i42, %if.end5 ]
  %dec122.i = add i32 %dec122.in.i, -1, !dbg !963
    #dbg_value(i32 %cur_match.addr.0120.i, !934, !DIExpression(), !948)
    #dbg_value(ptr %ptr0.0119.i, !939, !DIExpression(), !948)
    #dbg_value(i32 %len1.0118.i, !942, !DIExpression(), !948)
    #dbg_value(i32 %len0.0117.i, !941, !DIExpression(), !948)
    #dbg_value(ptr %ptr1.0116.i, !940, !DIExpression(), !948)
  %sub6.i = sub i32 %12, %sub121.i, !dbg !964
  %cmp7.i = icmp ugt i32 %sub121.i, %12, !dbg !965
  %cond.i = select i1 %cmp7.i, i32 %13, i32 0, !dbg !966
  %add.i = add i32 %sub6.i, %cond.i, !dbg !967
  %shl8.i = shl i32 %add.i, 1, !dbg !968
  %idx.ext9.i = zext i32 %shl8.i to i64, !dbg !969
  %add.ptr10.i = getelementptr inbounds i32, ptr %11, i64 %idx.ext9.i, !dbg !969
    #dbg_value(ptr %add.ptr10.i, !945, !DIExpression(), !970)
  %idx.ext11.i = zext i32 %sub121.i to i64, !dbg !971
  %idx.neg.i = sub nsw i64 0, %idx.ext11.i, !dbg !971
  %add.ptr12.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg.i, !dbg !971
    #dbg_value(ptr %add.ptr12.i, !946, !DIExpression(), !970)
  %cond17.i = tail call i32 @llvm.umin.i32(i32 %len0.0117.i, i32 %len1.0118.i), !dbg !972
    #dbg_value(i32 %cond17.i, !947, !DIExpression(), !970)
  %idxprom.i = zext i32 %cond17.i to i64, !dbg !973
  %arrayidx.i = getelementptr inbounds i8, ptr %add.ptr12.i, i64 %idxprom.i, !dbg !973
  %14 = load i8, ptr %arrayidx.i, align 1, !dbg !973
  %arrayidx19.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom.i, !dbg !975
  %15 = load i8, ptr %arrayidx19.i, align 1, !dbg !975
  %cmp21.i = icmp eq i8 %14, %15, !dbg !976
  br i1 %cmp21.i, label %while.cond24.i, label %if.end44.i, !dbg !977

while.cond24.i:                                   ; preds = %if.end.i, %while.body27.i
  %len.0.i = phi i32 [ %inc.i44, %while.body27.i ], [ %cond17.i, %if.end.i ], !dbg !970
    #dbg_value(i32 %len.0.i, !947, !DIExpression(), !970)
  %inc.i44 = add i32 %len.0.i, 1, !dbg !978
    #dbg_value(i32 %inc.i44, !947, !DIExpression(), !970)
  %cmp25.not.i = icmp eq i32 %inc.i44, %len_limit.0, !dbg !980
  br i1 %cmp25.not.i, label %if.then40.i, label %while.body27.i, !dbg !981

while.body27.i:                                   ; preds = %while.cond24.i
  %idxprom28.i = zext i32 %inc.i44 to i64, !dbg !982
  %arrayidx29.i = getelementptr inbounds i8, ptr %add.ptr12.i, i64 %idxprom28.i, !dbg !982
  %16 = load i8, ptr %arrayidx29.i, align 1, !dbg !982
  %arrayidx32.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom28.i, !dbg !984
  %17 = load i8, ptr %arrayidx32.i, align 1, !dbg !984
  %cmp34.not.i = icmp eq i8 %16, %17, !dbg !985
  br i1 %cmp34.not.i, label %while.cond24.i, label %if.end44.i, !dbg !986, !llvm.loop !987

if.then40.i:                                      ; preds = %while.cond24.i
  %18 = load i32, ptr %add.ptr10.i, align 4, !dbg !989
  store i32 %18, ptr %ptr1.0116.i, align 4, !dbg !992
  %arrayidx42.i = getelementptr inbounds i8, ptr %add.ptr10.i, i64 4, !dbg !993
  %19 = load i32, ptr %arrayidx42.i, align 4, !dbg !993
  store i32 %19, ptr %ptr0.0119.i, align 4, !dbg !994
  br label %bt_skip_func.exit, !dbg !995

if.end44.i:                                       ; preds = %while.body27.i, %if.end.i
  %20 = phi i8 [ %15, %if.end.i ], [ %17, %while.body27.i ], !dbg !996
  %21 = phi i8 [ %14, %if.end.i ], [ %16, %while.body27.i ], !dbg !998
  %len.1.i = phi i32 [ %cond17.i, %if.end.i ], [ %inc.i44, %while.body27.i ], !dbg !970
    #dbg_value(i32 %len.1.i, !947, !DIExpression(), !970)
  %cmp51.i = icmp ult i8 %21, %20, !dbg !999
  br i1 %cmp51.i, label %if.then53.i, label %if.else.i, !dbg !1000

if.then53.i:                                      ; preds = %if.end44.i
  store i32 %cur_match.addr.0120.i, ptr %ptr1.0116.i, align 4, !dbg !1001
  %add.ptr54.i = getelementptr inbounds i8, ptr %add.ptr10.i, i64 4, !dbg !1003
    #dbg_value(ptr %add.ptr54.i, !940, !DIExpression(), !948)
    #dbg_value(i32 poison, !934, !DIExpression(), !948)
    #dbg_value(i32 %len.1.i, !942, !DIExpression(), !948)
  br label %cleanup58.i, !dbg !1004

if.else.i:                                        ; preds = %if.end44.i
  store i32 %cur_match.addr.0120.i, ptr %ptr0.0119.i, align 4, !dbg !1005
    #dbg_value(ptr %add.ptr10.i, !939, !DIExpression(), !948)
    #dbg_value(i32 poison, !934, !DIExpression(), !948)
    #dbg_value(i32 %len.1.i, !941, !DIExpression(), !948)
  br label %cleanup58.i

cleanup58.i:                                      ; preds = %if.else.i, %if.then53.i
  %ptr1.1.i = phi ptr [ %add.ptr54.i, %if.then53.i ], [ %ptr1.0116.i, %if.else.i ], !dbg !948
  %len0.1.i = phi i32 [ %len0.0117.i, %if.then53.i ], [ %len.1.i, %if.else.i ], !dbg !948
  %len1.1.i = phi i32 [ %len.1.i, %if.then53.i ], [ %len1.0118.i, %if.else.i ], !dbg !948
  %ptr0.1.i = phi ptr [ %ptr0.0119.i, %if.then53.i ], [ %add.ptr10.i, %if.else.i ], !dbg !948
  %cur_match.addr.1.in.i = phi ptr [ %add.ptr54.i, %if.then53.i ], [ %add.ptr10.i, %if.else.i ]
  %cur_match.addr.1.i = load i32, ptr %cur_match.addr.1.in.i, align 4, !dbg !1007
    #dbg_value(i32 %cur_match.addr.1.i, !934, !DIExpression(), !948)
    #dbg_value(i32 %dec122.i, !935, !DIExpression(), !948)
    #dbg_value(ptr %ptr0.1.i, !939, !DIExpression(), !948)
    #dbg_value(i32 %len1.1.i, !942, !DIExpression(), !948)
    #dbg_value(i32 %len0.1.i, !941, !DIExpression(), !948)
    #dbg_value(ptr %ptr1.1.i, !940, !DIExpression(), !948)
  %sub.i43 = sub i32 %add, %cur_match.addr.1.i, !dbg !953
    #dbg_value(i32 %sub.i43, !943, !DIExpression(), !970)
    #dbg_value(i32 %dec122.i, !935, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !948)
  %cmp.i = icmp ne i32 %dec122.i, 0, !dbg !954
  %cmp5.not.i = icmp ult i32 %sub.i43, %13
  %or.cond.i = select i1 %cmp.i, i1 %cmp5.not.i, i1 false, !dbg !956
  br i1 %or.cond.i, label %if.end.i, label %if.then.i, !dbg !956, !llvm.loop !1008

bt_skip_func.exit:                                ; preds = %if.then.i, %if.then40.i
    #dbg_value(i32 poison, !934, !DIExpression(), !948)
    #dbg_value(ptr poison, !939, !DIExpression(), !948)
    #dbg_value(i32 poison, !942, !DIExpression(), !948)
    #dbg_value(i32 poison, !941, !DIExpression(), !948)
    #dbg_value(ptr poison, !940, !DIExpression(), !948)
    #dbg_value(ptr %mf, !222, !DIExpression(), !1011)
  %22 = load i32, ptr %cyclic_pos, align 8, !dbg !1013
  %inc.i45 = add i32 %22, 1, !dbg !1013
  %23 = load i32, ptr %cyclic_size, align 4, !dbg !1014
  %cmp.i46 = icmp eq i32 %inc.i45, %23, !dbg !1015
  %spec.store.select.i = select i1 %cmp.i46, i32 0, i32 %inc.i45, !dbg !1016
  store i32 %spec.store.select.i, ptr %cyclic_pos, align 8, !dbg !1011
  %24 = load i32, ptr %0, align 8, !dbg !1017
  %inc2.i = add i32 %24, 1, !dbg !1017
  store i32 %inc2.i, ptr %0, align 8, !dbg !1017
  %25 = load i32, ptr %offset, align 4, !dbg !1018
  %add.i48 = add i32 %25, %inc2.i, !dbg !1018
  %cmp4.i = icmp eq i32 %add.i48, -1, !dbg !1018
  br i1 %cmp4.i, label %if.then5.i, label %cleanup, !dbg !1019

if.then5.i:                                       ; preds = %bt_skip_func.exit
    #dbg_value(ptr %mf, !236, !DIExpression(), !1020)
  %sub.i.i = xor i32 %23, -1, !dbg !1022
    #dbg_value(i32 %sub.i.i, !239, !DIExpression(), !1020)
  %26 = load i32, ptr %hash_size_sum.i.i, align 4, !dbg !1023
  %27 = load i32, ptr %sons_count.i.i, align 8, !dbg !1024
  %add.i.i = add i32 %27, %26, !dbg !1025
    #dbg_value(i32 %add.i.i, !240, !DIExpression(), !1020)
  %28 = load ptr, ptr %hash, align 8, !dbg !1026
    #dbg_value(ptr %28, !241, !DIExpression(), !1020)
    #dbg_value(i32 0, !242, !DIExpression(), !1027)
  %cmp21.not.i.i = icmp eq i32 %add.i.i, 0, !dbg !1028
  br i1 %cmp21.not.i.i, label %normalize.exit.i, label %for.body.preheader.i.i, !dbg !1029

for.body.preheader.i.i:                           ; preds = %if.then5.i
  %wide.trip.count.i.i = zext i32 %add.i.i to i64, !dbg !1028
  %min.iters.check = icmp ult i32 %add.i.i, 16, !dbg !1029
  br i1 %min.iters.check, label %for.body.i.i.preheader, label %vector.ph, !dbg !1029

vector.ph:                                        ; preds = %for.body.preheader.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 4294967280, !dbg !1029
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %sub.i.i, i64 0, !dbg !1029
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !1029
  br label %vector.body, !dbg !1029

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !1030
  %29 = getelementptr inbounds i32, ptr %28, i64 %index, !dbg !1031
  %30 = getelementptr inbounds i8, ptr %29, i64 16, !dbg !1031
  %31 = getelementptr inbounds i8, ptr %29, i64 32, !dbg !1031
  %32 = getelementptr inbounds i8, ptr %29, i64 48, !dbg !1031
  %wide.load = load <4 x i32>, ptr %29, align 4, !dbg !1031
  %wide.load69 = load <4 x i32>, ptr %30, align 4, !dbg !1031
  %wide.load70 = load <4 x i32>, ptr %31, align 4, !dbg !1031
  %wide.load71 = load <4 x i32>, ptr %32, align 4, !dbg !1031
  %33 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load, <4 x i32> %broadcast.splat), !dbg !1032
  %34 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load69, <4 x i32> %broadcast.splat), !dbg !1032
  %35 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load70, <4 x i32> %broadcast.splat), !dbg !1032
  %36 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load71, <4 x i32> %broadcast.splat), !dbg !1032
  store <4 x i32> %33, ptr %29, align 4, !dbg !1033
  store <4 x i32> %34, ptr %30, align 4, !dbg !1033
  store <4 x i32> %35, ptr %31, align 4, !dbg !1033
  store <4 x i32> %36, ptr %32, align 4, !dbg !1033
  %index.next = add nuw i64 %index, 16, !dbg !1030
  %37 = icmp eq i64 %index.next, %n.vec, !dbg !1030
  br i1 %37, label %middle.block, label %vector.body, !dbg !1030, !llvm.loop !1034

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i, !dbg !1029
  br i1 %cmp.n, label %normalize.exit.loopexit.i, label %for.body.i.i.preheader, !dbg !1029

for.body.i.i.preheader:                           ; preds = %middle.block, %for.body.preheader.i.i
  %indvars.iv.i.i.ph = phi i64 [ 0, %for.body.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %for.body.i.i, !dbg !1029

for.body.i.i:                                     ; preds = %for.body.i.i.preheader, %for.body.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %for.body.i.i ], [ %indvars.iv.i.i.ph, %for.body.i.i.preheader ]
    #dbg_value(i64 %indvars.iv.i.i, !242, !DIExpression(), !1027)
  %arrayidx.i.i = getelementptr inbounds i32, ptr %28, i64 %indvars.iv.i.i, !dbg !1031
  %38 = load i32, ptr %arrayidx.i.i, align 4, !dbg !1031
  %storemerge.i.i = tail call i32 @llvm.usub.sat.i32(i32 %38, i32 %sub.i.i), !dbg !1032
  store i32 %storemerge.i.i, ptr %arrayidx.i.i, align 4, !dbg !1033
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1, !dbg !1030
    #dbg_value(i64 %indvars.iv.next.i.i, !242, !DIExpression(), !1027)
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i, !dbg !1028
  br i1 %exitcond.not.i.i, label %normalize.exit.loopexit.i, label %for.body.i.i, !dbg !1029, !llvm.loop !1036

normalize.exit.loopexit.i:                        ; preds = %for.body.i.i, %middle.block
  %.pre.i = load i32, ptr %offset, align 4, !dbg !1037
  br label %normalize.exit.i, !dbg !1037

normalize.exit.i:                                 ; preds = %normalize.exit.loopexit.i, %if.then5.i
  %39 = phi i32 [ %.pre.i, %normalize.exit.loopexit.i ], [ %25, %if.then5.i ], !dbg !1037
  %sub8.i.i = sub i32 %39, %sub.i.i, !dbg !1037
  store i32 %sub8.i.i, ptr %offset, align 4, !dbg !1037
  br label %cleanup, !dbg !1038

cleanup:                                          ; preds = %normalize.exit.i, %bt_skip_func.exit, %if.then4
  %dec = add i32 %amount.addr.0, -1, !dbg !1039
    #dbg_value(i32 %dec, !894, !DIExpression(), !901)
  %cmp15.not = icmp eq i32 %dec, 0, !dbg !1040
  br i1 %cmp15.not, label %do.end17, label %do.body, !dbg !1041, !llvm.loop !1042

do.end17:                                         ; preds = %cleanup
  ret void, !dbg !1044
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @lzma_mf_bt3_find(ptr nocapture noundef %mf, ptr noundef %matches) local_unnamed_addr #1 !dbg !1045 {
entry:
    #dbg_value(ptr %mf, !1047, !DIExpression(), !1059)
    #dbg_value(ptr %matches, !1048, !DIExpression(), !1059)
  %0 = getelementptr i8, ptr %mf, i64 24, !dbg !1060
  %mf.val = load i32, ptr %0, align 8, !dbg !1060
  %1 = getelementptr i8, ptr %mf, i64 36, !dbg !1060
  %mf.val134 = load i32, ptr %1, align 4, !dbg !1060
    #dbg_value(ptr undef, !150, !DIExpression(), !1061)
  %sub.i = sub i32 %mf.val134, %mf.val, !dbg !1063
    #dbg_value(i32 %sub.i, !1049, !DIExpression(), !1059)
  %nice_len = getelementptr inbounds i8, ptr %mf, i64 96, !dbg !1064
  %2 = load i32, ptr %nice_len, align 8, !dbg !1064
  %cmp.not = icmp ugt i32 %2, %sub.i, !dbg !1064
  br i1 %cmp.not, label %if.else, label %if.end5, !dbg !1060

if.else:                                          ; preds = %entry
  %cmp2 = icmp ult i32 %sub.i, 3, !dbg !1066
  br i1 %cmp2, label %if.then4, label %lor.lhs.false, !dbg !1066

lor.lhs.false:                                    ; preds = %if.else
  %action = getelementptr inbounds i8, ptr %mf, i64 104, !dbg !1066
  %3 = load i32, ptr %action, align 8, !dbg !1066
  %cmp3 = icmp eq i32 %3, 1, !dbg !1066
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !1064

if.then4:                                         ; preds = %lor.lhs.false, %if.else
    #dbg_value(ptr %mf, !162, !DIExpression(), !1068)
  %inc.i = add i32 %mf.val, 1, !dbg !1071
  store i32 %inc.i, ptr %0, align 8, !dbg !1071
  %pending.i = getelementptr inbounds i8, ptr %mf, i64 40, !dbg !1072
  %4 = load i32, ptr %pending.i, align 8, !dbg !1073
  %inc1.i = add i32 %4, 1, !dbg !1073
  store i32 %inc1.i, ptr %pending.i, align 8, !dbg !1073
  br label %cleanup76, !dbg !1074

if.end5:                                          ; preds = %entry, %lor.lhs.false
  %len_limit.0 = phi i32 [ %sub.i, %lor.lhs.false ], [ %2, %entry ], !dbg !1060
    #dbg_value(i32 %len_limit.0, !1049, !DIExpression(), !1059)
  %mf.val135 = load ptr, ptr %mf, align 8, !dbg !1060
    #dbg_value(ptr undef, !107, !DIExpression(), !1075)
  %idx.ext.i = zext i32 %mf.val to i64, !dbg !1077
  %add.ptr.i = getelementptr inbounds i8, ptr %mf.val135, i64 %idx.ext.i, !dbg !1077
    #dbg_value(ptr %add.ptr.i, !1050, !DIExpression(), !1059)
  %offset = getelementptr inbounds i8, ptr %mf, i64 20, !dbg !1060
  %5 = load i32, ptr %offset, align 4, !dbg !1060
  %add = add i32 %5, %mf.val, !dbg !1060
    #dbg_value(i32 %add, !1051, !DIExpression(), !1059)
    #dbg_value(i32 0, !1052, !DIExpression(), !1059)
  %6 = load i8, ptr %add.ptr.i, align 1, !dbg !1078
  %idxprom = zext i8 %6 to i64, !dbg !1078
  %arrayidx7 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %idxprom, !dbg !1078
  %7 = load i32, ptr %arrayidx7, align 4, !dbg !1078
  %arrayidx8 = getelementptr inbounds i8, ptr %add.ptr.i, i64 1, !dbg !1078
  %8 = load i8, ptr %arrayidx8, align 1, !dbg !1078
  %conv = zext i8 %8 to i32, !dbg !1078
  %xor = xor i32 %7, %conv, !dbg !1078
    #dbg_value(i32 %xor, !1053, !DIExpression(), !1059)
  %and = and i32 %xor, 1023, !dbg !1078
    #dbg_value(i32 %and, !1054, !DIExpression(), !1059)
  %arrayidx9 = getelementptr inbounds i8, ptr %add.ptr.i, i64 2, !dbg !1078
  %9 = load i8, ptr %arrayidx9, align 1, !dbg !1078
  %conv10 = zext i8 %9 to i32, !dbg !1078
  %shl = shl nuw nsw i32 %conv10, 8, !dbg !1078
  %xor11 = xor i32 %shl, %xor, !dbg !1078
  %hash_mask = getelementptr inbounds i8, ptr %mf, i64 88, !dbg !1078
  %10 = load i32, ptr %hash_mask, align 8, !dbg !1078
  %and12 = and i32 %xor11, %10, !dbg !1078
    #dbg_value(i32 %and12, !1055, !DIExpression(), !1059)
  %hash = getelementptr inbounds i8, ptr %mf, i64 64, !dbg !1079
  %11 = load ptr, ptr %hash, align 8, !dbg !1079
  %idxprom13 = zext nneg i32 %and to i64, !dbg !1080
  %arrayidx14 = getelementptr inbounds i32, ptr %11, i64 %idxprom13, !dbg !1080
  %12 = load i32, ptr %arrayidx14, align 4, !dbg !1080
  %sub = sub i32 %add, %12, !dbg !1081
    #dbg_value(i32 %sub, !1056, !DIExpression(), !1059)
  %add16 = add i32 %and12, 1024, !dbg !1082
  %idxprom17 = zext i32 %add16 to i64, !dbg !1083
  %arrayidx18 = getelementptr inbounds i32, ptr %11, i64 %idxprom17, !dbg !1083
  %13 = load i32, ptr %arrayidx18, align 4, !dbg !1083
    #dbg_value(i32 %13, !1057, !DIExpression(), !1059)
  store i32 %add, ptr %arrayidx14, align 4, !dbg !1084
  %14 = load ptr, ptr %hash, align 8, !dbg !1085
  %arrayidx25 = getelementptr inbounds i32, ptr %14, i64 %idxprom17, !dbg !1086
  store i32 %add, ptr %arrayidx25, align 4, !dbg !1087
    #dbg_value(i32 2, !1058, !DIExpression(), !1059)
  %cyclic_size = getelementptr inbounds i8, ptr %mf, i64 84, !dbg !1088
  %15 = load i32, ptr %cyclic_size, align 4, !dbg !1088
  %cmp26 = icmp ult i32 %sub, %15, !dbg !1090
  br i1 %cmp26, label %land.lhs.true, label %do.body57, !dbg !1091

land.lhs.true:                                    ; preds = %if.end5
  %idx.ext = zext i32 %sub to i64, !dbg !1092
  %idx.neg = sub nsw i64 0, %idx.ext, !dbg !1092
  %add.ptr = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg, !dbg !1092
  %16 = load i8, ptr %add.ptr, align 1, !dbg !1093
  %17 = load i8, ptr %add.ptr.i, align 1, !dbg !1094
  %cmp30 = icmp eq i8 %16, %17, !dbg !1095
  br i1 %cmp30, label %for.cond.preheader, label %do.body57, !dbg !1096

for.cond.preheader:                               ; preds = %land.lhs.true
    #dbg_value(i32 2, !1058, !DIExpression(), !1059)
  %cmp33.not233 = icmp eq i32 %len_limit.0, 2, !dbg !1097
  br i1 %cmp33.not233, label %do.body, label %for.body, !dbg !1101

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %len_best.0234 = phi i32 [ %inc, %for.inc ], [ 2, %for.cond.preheader ]
    #dbg_value(i32 %len_best.0234, !1058, !DIExpression(), !1059)
  %idx.ext35 = zext i32 %len_best.0234 to i64, !dbg !1102
  %add.ptr36 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.ext35, !dbg !1102
  %add.ptr39 = getelementptr inbounds i8, ptr %add.ptr36, i64 %idx.neg, !dbg !1104
  %18 = load i8, ptr %add.ptr39, align 1, !dbg !1105
  %19 = load i8, ptr %add.ptr36, align 1, !dbg !1106
  %cmp44.not = icmp eq i8 %18, %19, !dbg !1107
  br i1 %cmp44.not, label %for.inc, label %for.end, !dbg !1108

for.inc:                                          ; preds = %for.body
  %inc = add i32 %len_best.0234, 1, !dbg !1109
    #dbg_value(i32 %inc, !1058, !DIExpression(), !1059)
  %cmp33.not = icmp eq i32 %inc, %len_limit.0, !dbg !1097
  br i1 %cmp33.not, label %do.body, label %for.body, !dbg !1101, !llvm.loop !1110

for.end:                                          ; preds = %for.body
  store i32 %len_best.0234, ptr %matches, align 4, !dbg !1112
  %sub49 = add i32 %sub, -1, !dbg !1113
  %dist = getelementptr inbounds i8, ptr %matches, i64 4, !dbg !1114
  store i32 %sub49, ptr %dist, align 4, !dbg !1115
    #dbg_value(i32 1, !1052, !DIExpression(), !1059)
  %.pre = load i32, ptr %cyclic_size, align 4, !dbg !1116
  br label %do.body57, !dbg !1118

do.body:                                          ; preds = %for.inc, %for.cond.preheader
  store i32 %len_limit.0, ptr %matches, align 4, !dbg !1112
  %sub49219 = add i32 %sub, -1, !dbg !1113
  %dist220 = getelementptr inbounds i8, ptr %matches, i64 4, !dbg !1114
  store i32 %sub49219, ptr %dist220, align 4, !dbg !1115
    #dbg_value(i32 1, !1052, !DIExpression(), !1059)
  %depth = getelementptr inbounds i8, ptr %mf, i64 92, !dbg !1119
  %20 = load i32, ptr %depth, align 4, !dbg !1119
  %son = getelementptr inbounds i8, ptr %mf, i64 72, !dbg !1119
  %21 = load ptr, ptr %son, align 8, !dbg !1119
  %cyclic_pos = getelementptr inbounds i8, ptr %mf, i64 80, !dbg !1119
  %22 = load i32, ptr %cyclic_pos, align 8, !dbg !1119
  %23 = load i32, ptr %cyclic_size, align 4, !dbg !1119
    #dbg_value(i32 %len_limit.0, !927, !DIExpression(), !1123)
    #dbg_value(i32 %add, !932, !DIExpression(), !1123)
    #dbg_value(ptr %add.ptr.i, !933, !DIExpression(), !1123)
    #dbg_value(i32 %13, !934, !DIExpression(), !1123)
    #dbg_value(i32 %20, !935, !DIExpression(), !1123)
    #dbg_value(ptr %21, !936, !DIExpression(), !1123)
    #dbg_value(i32 %22, !937, !DIExpression(), !1123)
    #dbg_value(i32 %23, !938, !DIExpression(), !1123)
  %shl.i = shl i32 %22, 1, !dbg !1125
  %idx.ext.i137 = zext i32 %shl.i to i64, !dbg !1126
  %add.ptr.i138 = getelementptr inbounds i32, ptr %21, i64 %idx.ext.i137, !dbg !1126
  %add.ptr1.i = getelementptr inbounds i8, ptr %add.ptr.i138, i64 4, !dbg !1127
    #dbg_value(ptr %add.ptr1.i, !939, !DIExpression(), !1123)
    #dbg_value(ptr %add.ptr.i138, !940, !DIExpression(), !1123)
    #dbg_value(i32 0, !941, !DIExpression(), !1123)
    #dbg_value(i32 0, !942, !DIExpression(), !1123)
  %sub111.i = sub i32 %add, %13, !dbg !1128
  %cmp113.i = icmp ne i32 %20, 0, !dbg !1129
  %cmp5.not114.i = icmp ult i32 %sub111.i, %23
  %or.cond115.i = and i1 %cmp113.i, %cmp5.not114.i, !dbg !1130
  br i1 %or.cond115.i, label %if.end.i, label %if.then.i, !dbg !1130

if.then.i:                                        ; preds = %cleanup58.i, %do.body
  %ptr1.0.lcssa.i = phi ptr [ %add.ptr.i138, %do.body ], [ %ptr1.1.i, %cleanup58.i ], !dbg !1131
  %ptr0.0.lcssa.i = phi ptr [ %add.ptr1.i, %do.body ], [ %ptr0.1.i, %cleanup58.i ], !dbg !1132
  store i32 0, ptr %ptr0.0.lcssa.i, align 4, !dbg !1133
  store i32 0, ptr %ptr1.0.lcssa.i, align 4, !dbg !1134
  br label %bt_skip_func.exit, !dbg !1135

if.end.i:                                         ; preds = %do.body, %cleanup58.i
  %dec122.in.i = phi i32 [ %dec122.i, %cleanup58.i ], [ %20, %do.body ]
  %sub121.i = phi i32 [ %sub.i139, %cleanup58.i ], [ %sub111.i, %do.body ]
  %cur_match.addr.0120.i = phi i32 [ %cur_match.addr.1.i, %cleanup58.i ], [ %13, %do.body ]
  %ptr0.0119.i = phi ptr [ %ptr0.1.i, %cleanup58.i ], [ %add.ptr1.i, %do.body ]
  %len1.0118.i = phi i32 [ %len1.1.i, %cleanup58.i ], [ 0, %do.body ]
  %len0.0117.i = phi i32 [ %len0.1.i, %cleanup58.i ], [ 0, %do.body ]
  %ptr1.0116.i = phi ptr [ %ptr1.1.i, %cleanup58.i ], [ %add.ptr.i138, %do.body ]
  %dec122.i = add i32 %dec122.in.i, -1, !dbg !1136
    #dbg_value(i32 %cur_match.addr.0120.i, !934, !DIExpression(), !1123)
    #dbg_value(ptr %ptr0.0119.i, !939, !DIExpression(), !1123)
    #dbg_value(i32 %len1.0118.i, !942, !DIExpression(), !1123)
    #dbg_value(i32 %len0.0117.i, !941, !DIExpression(), !1123)
    #dbg_value(ptr %ptr1.0116.i, !940, !DIExpression(), !1123)
  %sub6.i = sub i32 %22, %sub121.i, !dbg !1137
  %cmp7.i = icmp ugt i32 %sub121.i, %22, !dbg !1138
  %cond.i = select i1 %cmp7.i, i32 %23, i32 0, !dbg !1139
  %add.i = add i32 %sub6.i, %cond.i, !dbg !1140
  %shl8.i = shl i32 %add.i, 1, !dbg !1141
  %idx.ext9.i = zext i32 %shl8.i to i64, !dbg !1142
  %add.ptr10.i = getelementptr inbounds i32, ptr %21, i64 %idx.ext9.i, !dbg !1142
    #dbg_value(ptr %add.ptr10.i, !945, !DIExpression(), !1143)
  %idx.ext11.i = zext i32 %sub121.i to i64, !dbg !1144
  %idx.neg.i = sub nsw i64 0, %idx.ext11.i, !dbg !1144
  %add.ptr12.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg.i, !dbg !1144
    #dbg_value(ptr %add.ptr12.i, !946, !DIExpression(), !1143)
  %cond17.i = tail call i32 @llvm.umin.i32(i32 %len0.0117.i, i32 %len1.0118.i), !dbg !1145
    #dbg_value(i32 %cond17.i, !947, !DIExpression(), !1143)
  %idxprom.i = zext i32 %cond17.i to i64, !dbg !1146
  %arrayidx.i = getelementptr inbounds i8, ptr %add.ptr12.i, i64 %idxprom.i, !dbg !1146
  %24 = load i8, ptr %arrayidx.i, align 1, !dbg !1146
  %arrayidx19.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom.i, !dbg !1147
  %25 = load i8, ptr %arrayidx19.i, align 1, !dbg !1147
  %cmp21.i = icmp eq i8 %24, %25, !dbg !1148
  br i1 %cmp21.i, label %while.cond24.i, label %if.end44.i, !dbg !1149

while.cond24.i:                                   ; preds = %if.end.i, %while.body27.i
  %len.0.i = phi i32 [ %inc.i140, %while.body27.i ], [ %cond17.i, %if.end.i ], !dbg !1143
    #dbg_value(i32 %len.0.i, !947, !DIExpression(), !1143)
  %inc.i140 = add i32 %len.0.i, 1, !dbg !1150
    #dbg_value(i32 %inc.i140, !947, !DIExpression(), !1143)
  %cmp25.not.i = icmp eq i32 %inc.i140, %len_limit.0, !dbg !1151
  br i1 %cmp25.not.i, label %if.then40.i, label %while.body27.i, !dbg !1152

while.body27.i:                                   ; preds = %while.cond24.i
  %idxprom28.i = zext i32 %inc.i140 to i64, !dbg !1153
  %arrayidx29.i = getelementptr inbounds i8, ptr %add.ptr12.i, i64 %idxprom28.i, !dbg !1153
  %26 = load i8, ptr %arrayidx29.i, align 1, !dbg !1153
  %arrayidx32.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom28.i, !dbg !1154
  %27 = load i8, ptr %arrayidx32.i, align 1, !dbg !1154
  %cmp34.not.i = icmp eq i8 %26, %27, !dbg !1155
  br i1 %cmp34.not.i, label %while.cond24.i, label %if.end44.i, !dbg !1156, !llvm.loop !1157

if.then40.i:                                      ; preds = %while.cond24.i
  %28 = load i32, ptr %add.ptr10.i, align 4, !dbg !1159
  store i32 %28, ptr %ptr1.0116.i, align 4, !dbg !1160
  %arrayidx42.i = getelementptr inbounds i8, ptr %add.ptr10.i, i64 4, !dbg !1161
  %29 = load i32, ptr %arrayidx42.i, align 4, !dbg !1161
  store i32 %29, ptr %ptr0.0119.i, align 4, !dbg !1162
  br label %bt_skip_func.exit, !dbg !1163

if.end44.i:                                       ; preds = %while.body27.i, %if.end.i
  %30 = phi i8 [ %25, %if.end.i ], [ %27, %while.body27.i ], !dbg !1164
  %31 = phi i8 [ %24, %if.end.i ], [ %26, %while.body27.i ], !dbg !1165
  %len.1.i = phi i32 [ %cond17.i, %if.end.i ], [ %inc.i140, %while.body27.i ], !dbg !1143
    #dbg_value(i32 %len.1.i, !947, !DIExpression(), !1143)
  %cmp51.i = icmp ult i8 %31, %30, !dbg !1166
  br i1 %cmp51.i, label %if.then53.i, label %if.else.i, !dbg !1167

if.then53.i:                                      ; preds = %if.end44.i
  store i32 %cur_match.addr.0120.i, ptr %ptr1.0116.i, align 4, !dbg !1168
  %add.ptr54.i = getelementptr inbounds i8, ptr %add.ptr10.i, i64 4, !dbg !1169
    #dbg_value(ptr %add.ptr54.i, !940, !DIExpression(), !1123)
    #dbg_value(i32 poison, !934, !DIExpression(), !1123)
    #dbg_value(i32 %len.1.i, !942, !DIExpression(), !1123)
  br label %cleanup58.i, !dbg !1170

if.else.i:                                        ; preds = %if.end44.i
  store i32 %cur_match.addr.0120.i, ptr %ptr0.0119.i, align 4, !dbg !1171
    #dbg_value(ptr %add.ptr10.i, !939, !DIExpression(), !1123)
    #dbg_value(i32 poison, !934, !DIExpression(), !1123)
    #dbg_value(i32 %len.1.i, !941, !DIExpression(), !1123)
  br label %cleanup58.i

cleanup58.i:                                      ; preds = %if.else.i, %if.then53.i
  %ptr1.1.i = phi ptr [ %add.ptr54.i, %if.then53.i ], [ %ptr1.0116.i, %if.else.i ], !dbg !1123
  %len0.1.i = phi i32 [ %len0.0117.i, %if.then53.i ], [ %len.1.i, %if.else.i ], !dbg !1123
  %len1.1.i = phi i32 [ %len.1.i, %if.then53.i ], [ %len1.0118.i, %if.else.i ], !dbg !1123
  %ptr0.1.i = phi ptr [ %ptr0.0119.i, %if.then53.i ], [ %add.ptr10.i, %if.else.i ], !dbg !1123
  %cur_match.addr.1.in.i = phi ptr [ %add.ptr54.i, %if.then53.i ], [ %add.ptr10.i, %if.else.i ]
  %cur_match.addr.1.i = load i32, ptr %cur_match.addr.1.in.i, align 4, !dbg !1172
    #dbg_value(i32 %cur_match.addr.1.i, !934, !DIExpression(), !1123)
    #dbg_value(i32 %dec122.i, !935, !DIExpression(), !1123)
    #dbg_value(ptr %ptr0.1.i, !939, !DIExpression(), !1123)
    #dbg_value(i32 %len1.1.i, !942, !DIExpression(), !1123)
    #dbg_value(i32 %len0.1.i, !941, !DIExpression(), !1123)
    #dbg_value(ptr %ptr1.1.i, !940, !DIExpression(), !1123)
  %sub.i139 = sub i32 %add, %cur_match.addr.1.i, !dbg !1128
    #dbg_value(i32 %sub.i139, !943, !DIExpression(), !1143)
    #dbg_value(i32 %dec122.i, !935, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1123)
  %cmp.i = icmp ne i32 %dec122.i, 0, !dbg !1129
  %cmp5.not.i = icmp ult i32 %sub.i139, %23
  %or.cond.i = select i1 %cmp.i, i1 %cmp5.not.i, i1 false, !dbg !1130
  br i1 %or.cond.i, label %if.end.i, label %if.then.i, !dbg !1130, !llvm.loop !1173

bt_skip_func.exit:                                ; preds = %if.then.i, %if.then40.i
    #dbg_value(i32 poison, !934, !DIExpression(), !1123)
    #dbg_value(ptr poison, !939, !DIExpression(), !1123)
    #dbg_value(i32 poison, !942, !DIExpression(), !1123)
    #dbg_value(i32 poison, !941, !DIExpression(), !1123)
    #dbg_value(ptr poison, !940, !DIExpression(), !1123)
    #dbg_value(ptr %mf, !222, !DIExpression(), !1176)
  %32 = load i32, ptr %cyclic_pos, align 8, !dbg !1178
  %inc.i141 = add i32 %32, 1, !dbg !1178
  %33 = load i32, ptr %cyclic_size, align 4, !dbg !1179
  %cmp.i142 = icmp eq i32 %inc.i141, %33, !dbg !1180
  %spec.store.select.i = select i1 %cmp.i142, i32 0, i32 %inc.i141, !dbg !1181
  store i32 %spec.store.select.i, ptr %cyclic_pos, align 8, !dbg !1176
  %34 = load i32, ptr %0, align 8, !dbg !1182
  %inc2.i = add i32 %34, 1, !dbg !1182
  store i32 %inc2.i, ptr %0, align 8, !dbg !1182
  %35 = load i32, ptr %offset, align 4, !dbg !1183
  %add.i144 = add i32 %35, %inc2.i, !dbg !1183
  %cmp4.i = icmp eq i32 %add.i144, -1, !dbg !1183
  br i1 %cmp4.i, label %if.then5.i, label %cleanup76, !dbg !1184

if.then5.i:                                       ; preds = %bt_skip_func.exit
    #dbg_value(ptr %mf, !236, !DIExpression(), !1185)
  %sub.i.i = xor i32 %33, -1, !dbg !1187
    #dbg_value(i32 %sub.i.i, !239, !DIExpression(), !1185)
  %hash_size_sum.i.i = getelementptr inbounds i8, ptr %mf, i64 108, !dbg !1188
  %36 = load i32, ptr %hash_size_sum.i.i, align 4, !dbg !1188
  %sons_count.i.i = getelementptr inbounds i8, ptr %mf, i64 112, !dbg !1189
  %37 = load i32, ptr %sons_count.i.i, align 8, !dbg !1189
  %add.i.i = add i32 %37, %36, !dbg !1190
    #dbg_value(i32 %add.i.i, !240, !DIExpression(), !1185)
  %38 = load ptr, ptr %hash, align 8, !dbg !1191
    #dbg_value(ptr %38, !241, !DIExpression(), !1185)
    #dbg_value(i32 0, !242, !DIExpression(), !1192)
  %cmp21.not.i.i = icmp eq i32 %add.i.i, 0, !dbg !1193
  br i1 %cmp21.not.i.i, label %normalize.exit.i, label %for.body.preheader.i.i, !dbg !1194

for.body.preheader.i.i:                           ; preds = %if.then5.i
  %wide.trip.count.i.i = zext i32 %add.i.i to i64, !dbg !1193
  %min.iters.check277 = icmp ult i32 %add.i.i, 16, !dbg !1194
  br i1 %min.iters.check277, label %for.body.i.i.preheader, label %vector.ph278, !dbg !1194

vector.ph278:                                     ; preds = %for.body.preheader.i.i
  %n.vec280 = and i64 %wide.trip.count.i.i, 4294967280, !dbg !1194
  %broadcast.splatinsert288 = insertelement <4 x i32> poison, i32 %sub.i.i, i64 0, !dbg !1194
  %broadcast.splat289 = shufflevector <4 x i32> %broadcast.splatinsert288, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !1194
  br label %vector.body282, !dbg !1194

vector.body282:                                   ; preds = %vector.body282, %vector.ph278
  %index283 = phi i64 [ 0, %vector.ph278 ], [ %index.next290, %vector.body282 ], !dbg !1195
  %39 = getelementptr inbounds i32, ptr %38, i64 %index283, !dbg !1196
  %40 = getelementptr inbounds i8, ptr %39, i64 16, !dbg !1196
  %41 = getelementptr inbounds i8, ptr %39, i64 32, !dbg !1196
  %42 = getelementptr inbounds i8, ptr %39, i64 48, !dbg !1196
  %wide.load284 = load <4 x i32>, ptr %39, align 4, !dbg !1196
  %wide.load285 = load <4 x i32>, ptr %40, align 4, !dbg !1196
  %wide.load286 = load <4 x i32>, ptr %41, align 4, !dbg !1196
  %wide.load287 = load <4 x i32>, ptr %42, align 4, !dbg !1196
  %43 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load284, <4 x i32> %broadcast.splat289), !dbg !1197
  %44 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load285, <4 x i32> %broadcast.splat289), !dbg !1197
  %45 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load286, <4 x i32> %broadcast.splat289), !dbg !1197
  %46 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load287, <4 x i32> %broadcast.splat289), !dbg !1197
  store <4 x i32> %43, ptr %39, align 4, !dbg !1198
  store <4 x i32> %44, ptr %40, align 4, !dbg !1198
  store <4 x i32> %45, ptr %41, align 4, !dbg !1198
  store <4 x i32> %46, ptr %42, align 4, !dbg !1198
  %index.next290 = add nuw i64 %index283, 16, !dbg !1195
  %47 = icmp eq i64 %index.next290, %n.vec280, !dbg !1195
  br i1 %47, label %middle.block275, label %vector.body282, !dbg !1195, !llvm.loop !1199

middle.block275:                                  ; preds = %vector.body282
  %cmp.n291 = icmp eq i64 %n.vec280, %wide.trip.count.i.i, !dbg !1194
  br i1 %cmp.n291, label %normalize.exit.loopexit.i, label %for.body.i.i.preheader, !dbg !1194

for.body.i.i.preheader:                           ; preds = %middle.block275, %for.body.preheader.i.i
  %indvars.iv.i.i.ph = phi i64 [ 0, %for.body.preheader.i.i ], [ %n.vec280, %middle.block275 ]
  br label %for.body.i.i, !dbg !1194

for.body.i.i:                                     ; preds = %for.body.i.i.preheader, %for.body.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %for.body.i.i ], [ %indvars.iv.i.i.ph, %for.body.i.i.preheader ]
    #dbg_value(i64 %indvars.iv.i.i, !242, !DIExpression(), !1192)
  %arrayidx.i.i = getelementptr inbounds i32, ptr %38, i64 %indvars.iv.i.i, !dbg !1196
  %48 = load i32, ptr %arrayidx.i.i, align 4, !dbg !1196
  %storemerge.i.i = tail call i32 @llvm.usub.sat.i32(i32 %48, i32 %sub.i.i), !dbg !1197
  store i32 %storemerge.i.i, ptr %arrayidx.i.i, align 4, !dbg !1198
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1, !dbg !1195
    #dbg_value(i64 %indvars.iv.next.i.i, !242, !DIExpression(), !1192)
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i, !dbg !1193
  br i1 %exitcond.not.i.i, label %normalize.exit.loopexit.i, label %for.body.i.i, !dbg !1194, !llvm.loop !1201

normalize.exit.loopexit.i:                        ; preds = %for.body.i.i, %middle.block275
  %.pre.i = load i32, ptr %offset, align 4, !dbg !1202
  br label %normalize.exit.i, !dbg !1202

normalize.exit.i:                                 ; preds = %normalize.exit.loopexit.i, %if.then5.i
  %49 = phi i32 [ %.pre.i, %normalize.exit.loopexit.i ], [ %35, %if.then5.i ], !dbg !1202
  %sub8.i.i = sub i32 %49, %sub.i.i, !dbg !1202
  store i32 %sub8.i.i, ptr %offset, align 4, !dbg !1202
  br label %cleanup76, !dbg !1203

do.body57:                                        ; preds = %for.end, %if.end5, %land.lhs.true
  %50 = phi i32 [ %.pre, %for.end ], [ %15, %land.lhs.true ], [ %15, %if.end5 ], !dbg !1116
  %matches_count.0 = phi i64 [ 1, %for.end ], [ 0, %land.lhs.true ], [ 0, %if.end5 ], !dbg !1059
  %len_best.1 = phi i32 [ %len_best.0234, %for.end ], [ 2, %land.lhs.true ], [ 2, %if.end5 ], !dbg !1204
    #dbg_value(i32 %len_best.1, !1058, !DIExpression(), !1059)
    #dbg_value(i64 %matches_count.0, !1052, !DIExpression(), !1059)
  %depth58 = getelementptr inbounds i8, ptr %mf, i64 92, !dbg !1116
  %51 = load i32, ptr %depth58, align 4, !dbg !1116
  %son59 = getelementptr inbounds i8, ptr %mf, i64 72, !dbg !1116
  %52 = load ptr, ptr %son59, align 8, !dbg !1116
  %cyclic_pos60 = getelementptr inbounds i8, ptr %mf, i64 80, !dbg !1116
  %53 = load i32, ptr %cyclic_pos60, align 8, !dbg !1116
  %add.ptr63 = getelementptr inbounds %struct.lzma_match, ptr %matches, i64 %matches_count.0, !dbg !1116
    #dbg_value(i32 %len_limit.0, !768, !DIExpression(), !1205)
    #dbg_value(i32 %add, !771, !DIExpression(), !1205)
    #dbg_value(ptr %add.ptr.i, !772, !DIExpression(), !1205)
    #dbg_value(i32 %13, !773, !DIExpression(), !1205)
    #dbg_value(i32 %51, !774, !DIExpression(), !1205)
    #dbg_value(ptr %52, !775, !DIExpression(), !1205)
    #dbg_value(i32 %53, !776, !DIExpression(), !1205)
    #dbg_value(i32 %50, !777, !DIExpression(), !1205)
    #dbg_value(ptr %add.ptr63, !778, !DIExpression(), !1205)
    #dbg_value(i32 %len_best.1, !779, !DIExpression(), !1205)
  %shl.i145 = shl i32 %53, 1, !dbg !1207
  %idx.ext.i146 = zext i32 %shl.i145 to i64, !dbg !1208
  %add.ptr.i147 = getelementptr inbounds i32, ptr %52, i64 %idx.ext.i146, !dbg !1208
  %add.ptr1.i148 = getelementptr inbounds i8, ptr %add.ptr.i147, i64 4, !dbg !1209
    #dbg_value(ptr %add.ptr1.i148, !780, !DIExpression(), !1205)
    #dbg_value(ptr %add.ptr.i147, !781, !DIExpression(), !1205)
    #dbg_value(i32 0, !782, !DIExpression(), !1205)
    #dbg_value(i32 0, !783, !DIExpression(), !1205)
  %sub135.i = sub i32 %add, %13, !dbg !1210
  %cmp137.i = icmp ne i32 %51, 0, !dbg !1211
  %cmp5.not138.i = icmp ult i32 %sub135.i, %50
  %or.cond139.i = and i1 %cmp137.i, %cmp5.not138.i, !dbg !1212
  br i1 %or.cond139.i, label %if.end.i152.preheader, label %if.then.i149, !dbg !1212

if.end.i152.preheader:                            ; preds = %do.body57
  %.pre247 = zext i32 %len_limit.0 to i64
  br label %if.end.i152, !dbg !1213

if.then.i149:                                     ; preds = %cleanup64.i, %do.body57
  %matches.addr.0.lcssa.i = phi ptr [ %add.ptr63, %do.body57 ], [ %matches.addr.1.i, %cleanup64.i ]
  %ptr0.0.lcssa.i150 = phi ptr [ %add.ptr1.i148, %do.body57 ], [ %ptr0.1.i170, %cleanup64.i ], !dbg !1214
  %ptr1.0.lcssa.i151 = phi ptr [ %add.ptr.i147, %do.body57 ], [ %ptr1.1.i171, %cleanup64.i ], !dbg !1215
  store i32 0, ptr %ptr0.0.lcssa.i150, align 4, !dbg !1216
  store i32 0, ptr %ptr1.0.lcssa.i151, align 4, !dbg !1217
  br label %bt_find_func.exit, !dbg !1218

if.end.i152:                                      ; preds = %if.end.i152.preheader, %cleanup64.i
  %dec148.in.i = phi i32 [ %dec148.i, %cleanup64.i ], [ %51, %if.end.i152.preheader ]
  %sub147.i = phi i32 [ %sub.i176, %cleanup64.i ], [ %sub135.i, %if.end.i152.preheader ]
  %cur_match.addr.0146.i = phi i32 [ %cur_match.addr.1.i175, %cleanup64.i ], [ %13, %if.end.i152.preheader ]
  %len1.0145.i = phi i32 [ %len1.1.i173, %cleanup64.i ], [ 0, %if.end.i152.preheader ]
  %len0.0144.i = phi i32 [ %len0.1.i172, %cleanup64.i ], [ 0, %if.end.i152.preheader ]
  %ptr1.0143.i = phi ptr [ %ptr1.1.i171, %cleanup64.i ], [ %add.ptr.i147, %if.end.i152.preheader ]
  %ptr0.0142.i = phi ptr [ %ptr0.1.i170, %cleanup64.i ], [ %add.ptr1.i148, %if.end.i152.preheader ]
  %len_best.addr.0141.i = phi i32 [ %len_best.addr.1.i, %cleanup64.i ], [ %len_best.1, %if.end.i152.preheader ]
  %matches.addr.0140.i = phi ptr [ %matches.addr.1.i, %cleanup64.i ], [ %add.ptr63, %if.end.i152.preheader ]
  %dec148.i = add i32 %dec148.in.i, -1, !dbg !1219
    #dbg_value(i32 %cur_match.addr.0146.i, !773, !DIExpression(), !1205)
    #dbg_value(i32 %len1.0145.i, !783, !DIExpression(), !1205)
    #dbg_value(i32 %len0.0144.i, !782, !DIExpression(), !1205)
    #dbg_value(ptr %ptr1.0143.i, !781, !DIExpression(), !1205)
    #dbg_value(ptr %ptr0.0142.i, !780, !DIExpression(), !1205)
    #dbg_value(i32 %len_best.addr.0141.i, !779, !DIExpression(), !1205)
    #dbg_value(ptr %matches.addr.0140.i, !778, !DIExpression(), !1205)
  %sub6.i153 = sub i32 %53, %sub147.i, !dbg !1220
  %cmp7.i154 = icmp ugt i32 %sub147.i, %53, !dbg !1221
  %cond.i155 = select i1 %cmp7.i154, i32 %50, i32 0, !dbg !1222
  %add.i156 = add i32 %sub6.i153, %cond.i155, !dbg !1223
  %shl8.i157 = shl i32 %add.i156, 1, !dbg !1224
  %idx.ext9.i158 = zext i32 %shl8.i157 to i64, !dbg !1225
  %add.ptr10.i159 = getelementptr inbounds i32, ptr %52, i64 %idx.ext9.i158, !dbg !1225
    #dbg_value(ptr %add.ptr10.i159, !786, !DIExpression(), !1226)
  %idx.ext11.i160 = zext i32 %sub147.i to i64, !dbg !1227
  %idx.neg.i161 = sub nsw i64 0, %idx.ext11.i160, !dbg !1227
  %add.ptr12.i162 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg.i161, !dbg !1227
    #dbg_value(ptr %add.ptr12.i162, !787, !DIExpression(), !1226)
  %cond17.i163 = tail call i32 @llvm.umin.i32(i32 %len0.0144.i, i32 %len1.0145.i), !dbg !1228
    #dbg_value(i32 %cond17.i163, !788, !DIExpression(), !1226)
  %idxprom.i164 = zext i32 %cond17.i163 to i64, !dbg !1229
  %arrayidx.i165 = getelementptr inbounds i8, ptr %add.ptr12.i162, i64 %idxprom.i164, !dbg !1229
  %54 = load i8, ptr %arrayidx.i165, align 1, !dbg !1229
  %arrayidx19.i166 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom.i164, !dbg !1230
  %55 = load i8, ptr %arrayidx19.i166, align 1, !dbg !1230
  %cmp21.i167 = icmp eq i8 %54, %55, !dbg !1231
  br i1 %cmp21.i167, label %while.cond24.i180, label %if.end50.i, !dbg !1232

while.cond24.i180:                                ; preds = %if.end.i152, %while.body27.i184
  %len.0.i181 = phi i32 [ %inc.i182, %while.body27.i184 ], [ %cond17.i163, %if.end.i152 ], !dbg !1226
    #dbg_value(i32 %len.0.i181, !788, !DIExpression(), !1226)
  %inc.i182 = add i32 %len.0.i181, 1, !dbg !1233
    #dbg_value(i32 %inc.i182, !788, !DIExpression(), !1226)
  %cmp25.not.i183 = icmp eq i32 %inc.i182, %len_limit.0, !dbg !1234
  br i1 %cmp25.not.i183, label %while.end.i, label %while.body27.i184, !dbg !1235

while.body27.i184:                                ; preds = %while.cond24.i180
  %idxprom28.i185 = zext i32 %inc.i182 to i64, !dbg !1236
  %arrayidx29.i186 = getelementptr inbounds i8, ptr %add.ptr12.i162, i64 %idxprom28.i185, !dbg !1236
  %56 = load i8, ptr %arrayidx29.i186, align 1, !dbg !1236
  %arrayidx32.i187 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom28.i185, !dbg !1237
  %57 = load i8, ptr %arrayidx32.i187, align 1, !dbg !1237
  %cmp34.not.i188 = icmp eq i8 %56, %57, !dbg !1238
  br i1 %cmp34.not.i188, label %while.cond24.i180, label %while.end.thread.i, !dbg !1239, !llvm.loop !1240

while.end.i:                                      ; preds = %while.cond24.i180
  %cmp38.i = icmp ult i32 %len_best.addr.0141.i, %len_limit.0, !dbg !1242
  br i1 %cmp38.i, label %if.then45.i, label %if.end50.i, !dbg !1243

while.end.thread.i:                               ; preds = %while.body27.i184
  %cmp38115.i = icmp ult i32 %len_best.addr.0141.i, %inc.i182, !dbg !1242
  br i1 %cmp38115.i, label %if.then40.thread.i, label %if.end50.i, !dbg !1243

if.then40.thread.i:                               ; preds = %while.end.thread.i
    #dbg_value(i32 %inc.i182, !779, !DIExpression(), !1205)
  store i32 %inc.i182, ptr %matches.addr.0140.i, align 4, !dbg !1244
  %sub42116.i = add i32 %sub147.i, -1, !dbg !1245
  %dist117.i = getelementptr inbounds i8, ptr %matches.addr.0140.i, i64 4, !dbg !1246
  store i32 %sub42116.i, ptr %dist117.i, align 4, !dbg !1247
  %incdec.ptr118.i = getelementptr inbounds i8, ptr %matches.addr.0140.i, i64 8, !dbg !1248
    #dbg_value(ptr %incdec.ptr118.i, !778, !DIExpression(), !1205)
  br label %if.end50.i, !dbg !1249

if.then45.i:                                      ; preds = %while.end.i
    #dbg_value(i32 %len_limit.0, !779, !DIExpression(), !1205)
  store i32 %len_limit.0, ptr %matches.addr.0140.i, align 4, !dbg !1244
  %sub42.i = add i32 %sub147.i, -1, !dbg !1245
  %dist.i = getelementptr inbounds i8, ptr %matches.addr.0140.i, i64 4, !dbg !1246
  store i32 %sub42.i, ptr %dist.i, align 4, !dbg !1247
  %incdec.ptr.i = getelementptr inbounds i8, ptr %matches.addr.0140.i, i64 8, !dbg !1248
    #dbg_value(ptr %incdec.ptr.i, !778, !DIExpression(), !1205)
  %58 = load i32, ptr %add.ptr10.i159, align 4, !dbg !1250
  store i32 %58, ptr %ptr1.0143.i, align 4, !dbg !1251
  %arrayidx47.i = getelementptr inbounds i8, ptr %add.ptr10.i159, i64 4, !dbg !1252
  %59 = load i32, ptr %arrayidx47.i, align 4, !dbg !1252
  store i32 %59, ptr %ptr0.0142.i, align 4, !dbg !1253
  br label %bt_find_func.exit, !dbg !1254

if.end50.i:                                       ; preds = %while.end.i, %if.then40.thread.i, %while.end.thread.i, %if.end.i152
  %idxprom51.i.pre-phi = phi i64 [ %idxprom28.i185, %if.then40.thread.i ], [ %idxprom28.i185, %while.end.thread.i ], [ %idxprom.i164, %if.end.i152 ], [ %.pre247, %while.end.i ], !dbg !1255
  %matches.addr.1.i = phi ptr [ %incdec.ptr118.i, %if.then40.thread.i ], [ %matches.addr.0140.i, %while.end.thread.i ], [ %matches.addr.0140.i, %if.end.i152 ], [ %matches.addr.0140.i, %while.end.i ]
  %len_best.addr.1.i = phi i32 [ %inc.i182, %if.then40.thread.i ], [ %len_best.addr.0141.i, %while.end.thread.i ], [ %len_best.addr.0141.i, %if.end.i152 ], [ %len_best.addr.0141.i, %while.end.i ]
  %len.1.i168 = phi i32 [ %inc.i182, %if.then40.thread.i ], [ %inc.i182, %while.end.thread.i ], [ %cond17.i163, %if.end.i152 ], [ %len_limit.0, %while.end.i ], !dbg !1226
    #dbg_value(i32 %len.1.i168, !788, !DIExpression(), !1226)
    #dbg_value(i32 %len_best.addr.1.i, !779, !DIExpression(), !1205)
    #dbg_value(ptr %matches.addr.1.i, !778, !DIExpression(), !1205)
  %arrayidx52.i = getelementptr inbounds i8, ptr %add.ptr12.i162, i64 %idxprom51.i.pre-phi, !dbg !1255
  %60 = load i8, ptr %arrayidx52.i, align 1, !dbg !1255
  %arrayidx55.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom51.i.pre-phi, !dbg !1256
  %61 = load i8, ptr %arrayidx55.i, align 1, !dbg !1256
  %cmp57.i = icmp ult i8 %60, %61, !dbg !1257
  br i1 %cmp57.i, label %if.then59.i, label %if.else.i169, !dbg !1258

if.then59.i:                                      ; preds = %if.end50.i
  store i32 %cur_match.addr.0146.i, ptr %ptr1.0143.i, align 4, !dbg !1259
  %add.ptr60.i = getelementptr inbounds i8, ptr %add.ptr10.i159, i64 4, !dbg !1260
    #dbg_value(ptr %add.ptr60.i, !781, !DIExpression(), !1205)
    #dbg_value(i32 poison, !773, !DIExpression(), !1205)
    #dbg_value(i32 %len.1.i168, !783, !DIExpression(), !1205)
  br label %cleanup64.i, !dbg !1261

if.else.i169:                                     ; preds = %if.end50.i
  store i32 %cur_match.addr.0146.i, ptr %ptr0.0142.i, align 4, !dbg !1262
    #dbg_value(ptr %add.ptr10.i159, !780, !DIExpression(), !1205)
    #dbg_value(i32 poison, !773, !DIExpression(), !1205)
    #dbg_value(i32 %len.1.i168, !782, !DIExpression(), !1205)
  br label %cleanup64.i

cleanup64.i:                                      ; preds = %if.else.i169, %if.then59.i
  %ptr0.1.i170 = phi ptr [ %ptr0.0142.i, %if.then59.i ], [ %add.ptr10.i159, %if.else.i169 ], !dbg !1205
  %ptr1.1.i171 = phi ptr [ %add.ptr60.i, %if.then59.i ], [ %ptr1.0143.i, %if.else.i169 ], !dbg !1205
  %len0.1.i172 = phi i32 [ %len0.0144.i, %if.then59.i ], [ %len.1.i168, %if.else.i169 ], !dbg !1205
  %len1.1.i173 = phi i32 [ %len.1.i168, %if.then59.i ], [ %len1.0145.i, %if.else.i169 ], !dbg !1205
  %cur_match.addr.1.in.i174 = phi ptr [ %add.ptr60.i, %if.then59.i ], [ %add.ptr10.i159, %if.else.i169 ]
  %cur_match.addr.1.i175 = load i32, ptr %cur_match.addr.1.in.i174, align 4, !dbg !1263
    #dbg_value(i32 %cur_match.addr.1.i175, !773, !DIExpression(), !1205)
    #dbg_value(i32 %dec148.i, !774, !DIExpression(), !1205)
    #dbg_value(i32 %len1.1.i173, !783, !DIExpression(), !1205)
    #dbg_value(i32 %len0.1.i172, !782, !DIExpression(), !1205)
    #dbg_value(ptr %ptr1.1.i171, !781, !DIExpression(), !1205)
    #dbg_value(ptr %ptr0.1.i170, !780, !DIExpression(), !1205)
    #dbg_value(i32 %len_best.addr.1.i, !779, !DIExpression(), !1205)
    #dbg_value(ptr %matches.addr.1.i, !778, !DIExpression(), !1205)
  %sub.i176 = sub i32 %add, %cur_match.addr.1.i175, !dbg !1210
    #dbg_value(i32 %sub.i176, !784, !DIExpression(), !1226)
    #dbg_value(i32 %dec148.i, !774, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1205)
  %cmp.i177 = icmp ne i32 %dec148.i, 0, !dbg !1211
  %cmp5.not.i178 = icmp ult i32 %sub.i176, %50
  %or.cond.i179 = select i1 %cmp.i177, i1 %cmp5.not.i178, i1 false, !dbg !1212
  br i1 %or.cond.i179, label %if.end.i152, label %if.then.i149, !dbg !1212, !llvm.loop !1264

bt_find_func.exit:                                ; preds = %if.then.i149, %if.then45.i
  %retval.2.ph.i = phi ptr [ %incdec.ptr.i, %if.then45.i ], [ %matches.addr.0.lcssa.i, %if.then.i149 ]
    #dbg_value(i32 poison, !773, !DIExpression(), !1205)
    #dbg_value(i32 poison, !783, !DIExpression(), !1205)
    #dbg_value(i32 poison, !782, !DIExpression(), !1205)
    #dbg_value(ptr poison, !781, !DIExpression(), !1205)
    #dbg_value(ptr poison, !780, !DIExpression(), !1205)
    #dbg_value(i32 poison, !779, !DIExpression(), !1205)
    #dbg_value(ptr poison, !778, !DIExpression(), !1205)
  %sub.ptr.lhs.cast = ptrtoint ptr %retval.2.ph.i to i64, !dbg !1116
  %sub.ptr.rhs.cast = ptrtoint ptr %matches to i64, !dbg !1116
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1116
  %sub.ptr.div = lshr exact i64 %sub.ptr.sub, 3, !dbg !1116
  %conv65 = trunc i64 %sub.ptr.div to i32, !dbg !1116
    #dbg_value(i32 %conv65, !1052, !DIExpression(), !1059)
    #dbg_value(ptr %mf, !222, !DIExpression(), !1266)
  %62 = load i32, ptr %cyclic_pos60, align 8, !dbg !1268
  %inc.i190 = add i32 %62, 1, !dbg !1268
  %63 = load i32, ptr %cyclic_size, align 4, !dbg !1269
  %cmp.i192 = icmp eq i32 %inc.i190, %63, !dbg !1270
  %spec.store.select.i193 = select i1 %cmp.i192, i32 0, i32 %inc.i190, !dbg !1271
  store i32 %spec.store.select.i193, ptr %cyclic_pos60, align 8, !dbg !1266
  %64 = load i32, ptr %0, align 8, !dbg !1272
  %inc2.i195 = add i32 %64, 1, !dbg !1272
  store i32 %inc2.i195, ptr %0, align 8, !dbg !1272
  %65 = load i32, ptr %offset, align 4, !dbg !1273
  %add.i197 = add i32 %65, %inc2.i195, !dbg !1273
  %cmp4.i198 = icmp eq i32 %add.i197, -1, !dbg !1273
  br i1 %cmp4.i198, label %if.then5.i199, label %cleanup76, !dbg !1274

if.then5.i199:                                    ; preds = %bt_find_func.exit
    #dbg_value(ptr %mf, !236, !DIExpression(), !1275)
  %sub.i.i200 = xor i32 %63, -1, !dbg !1277
    #dbg_value(i32 %sub.i.i200, !239, !DIExpression(), !1275)
  %hash_size_sum.i.i201 = getelementptr inbounds i8, ptr %mf, i64 108, !dbg !1278
  %66 = load i32, ptr %hash_size_sum.i.i201, align 4, !dbg !1278
  %sons_count.i.i202 = getelementptr inbounds i8, ptr %mf, i64 112, !dbg !1279
  %67 = load i32, ptr %sons_count.i.i202, align 8, !dbg !1279
  %add.i.i203 = add i32 %67, %66, !dbg !1280
    #dbg_value(i32 %add.i.i203, !240, !DIExpression(), !1275)
  %68 = load ptr, ptr %hash, align 8, !dbg !1281
    #dbg_value(ptr %68, !241, !DIExpression(), !1275)
    #dbg_value(i32 0, !242, !DIExpression(), !1282)
  %cmp21.not.i.i205 = icmp eq i32 %add.i.i203, 0, !dbg !1283
  br i1 %cmp21.not.i.i205, label %normalize.exit.i216, label %for.body.preheader.i.i206, !dbg !1284

for.body.preheader.i.i206:                        ; preds = %if.then5.i199
  %wide.trip.count.i.i207 = zext i32 %add.i.i203 to i64, !dbg !1283
  %min.iters.check = icmp ult i32 %add.i.i203, 16, !dbg !1284
  br i1 %min.iters.check, label %for.body.i.i208.preheader, label %vector.ph, !dbg !1284

vector.ph:                                        ; preds = %for.body.preheader.i.i206
  %n.vec = and i64 %wide.trip.count.i.i207, 4294967280, !dbg !1284
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %sub.i.i200, i64 0, !dbg !1284
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !1284
  br label %vector.body, !dbg !1284

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !1285
  %69 = getelementptr inbounds i32, ptr %68, i64 %index, !dbg !1286
  %70 = getelementptr inbounds i8, ptr %69, i64 16, !dbg !1286
  %71 = getelementptr inbounds i8, ptr %69, i64 32, !dbg !1286
  %72 = getelementptr inbounds i8, ptr %69, i64 48, !dbg !1286
  %wide.load = load <4 x i32>, ptr %69, align 4, !dbg !1286
  %wide.load272 = load <4 x i32>, ptr %70, align 4, !dbg !1286
  %wide.load273 = load <4 x i32>, ptr %71, align 4, !dbg !1286
  %wide.load274 = load <4 x i32>, ptr %72, align 4, !dbg !1286
  %73 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load, <4 x i32> %broadcast.splat), !dbg !1287
  %74 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load272, <4 x i32> %broadcast.splat), !dbg !1287
  %75 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load273, <4 x i32> %broadcast.splat), !dbg !1287
  %76 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load274, <4 x i32> %broadcast.splat), !dbg !1287
  store <4 x i32> %73, ptr %69, align 4, !dbg !1288
  store <4 x i32> %74, ptr %70, align 4, !dbg !1288
  store <4 x i32> %75, ptr %71, align 4, !dbg !1288
  store <4 x i32> %76, ptr %72, align 4, !dbg !1288
  %index.next = add nuw i64 %index, 16, !dbg !1285
  %77 = icmp eq i64 %index.next, %n.vec, !dbg !1285
  br i1 %77, label %middle.block, label %vector.body, !dbg !1285, !llvm.loop !1289

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i207, !dbg !1284
  br i1 %cmp.n, label %normalize.exit.loopexit.i214, label %for.body.i.i208.preheader, !dbg !1284

for.body.i.i208.preheader:                        ; preds = %middle.block, %for.body.preheader.i.i206
  %indvars.iv.i.i209.ph = phi i64 [ 0, %for.body.preheader.i.i206 ], [ %n.vec, %middle.block ]
  br label %for.body.i.i208, !dbg !1284

for.body.i.i208:                                  ; preds = %for.body.i.i208.preheader, %for.body.i.i208
  %indvars.iv.i.i209 = phi i64 [ %indvars.iv.next.i.i212, %for.body.i.i208 ], [ %indvars.iv.i.i209.ph, %for.body.i.i208.preheader ]
    #dbg_value(i64 %indvars.iv.i.i209, !242, !DIExpression(), !1282)
  %arrayidx.i.i210 = getelementptr inbounds i32, ptr %68, i64 %indvars.iv.i.i209, !dbg !1286
  %78 = load i32, ptr %arrayidx.i.i210, align 4, !dbg !1286
  %storemerge.i.i211 = tail call i32 @llvm.usub.sat.i32(i32 %78, i32 %sub.i.i200), !dbg !1287
  store i32 %storemerge.i.i211, ptr %arrayidx.i.i210, align 4, !dbg !1288
  %indvars.iv.next.i.i212 = add nuw nsw i64 %indvars.iv.i.i209, 1, !dbg !1285
    #dbg_value(i64 %indvars.iv.next.i.i212, !242, !DIExpression(), !1282)
  %exitcond.not.i.i213 = icmp eq i64 %indvars.iv.next.i.i212, %wide.trip.count.i.i207, !dbg !1283
  br i1 %exitcond.not.i.i213, label %normalize.exit.loopexit.i214, label %for.body.i.i208, !dbg !1284, !llvm.loop !1291

normalize.exit.loopexit.i214:                     ; preds = %for.body.i.i208, %middle.block
  %.pre.i215 = load i32, ptr %offset, align 4, !dbg !1292
  br label %normalize.exit.i216, !dbg !1292

normalize.exit.i216:                              ; preds = %normalize.exit.loopexit.i214, %if.then5.i199
  %79 = phi i32 [ %.pre.i215, %normalize.exit.loopexit.i214 ], [ %65, %if.then5.i199 ], !dbg !1292
  %sub8.i.i217 = sub i32 %79, %sub.i.i200, !dbg !1292
  store i32 %sub8.i.i217, ptr %offset, align 4, !dbg !1292
  br label %cleanup76, !dbg !1293

cleanup76:                                        ; preds = %normalize.exit.i216, %bt_find_func.exit, %normalize.exit.i, %bt_skip_func.exit, %if.then4
  %retval.1 = phi i32 [ 0, %if.then4 ], [ 1, %bt_skip_func.exit ], [ 1, %normalize.exit.i ], [ %conv65, %bt_find_func.exit ], [ %conv65, %normalize.exit.i216 ], !dbg !1059
  ret i32 %retval.1, !dbg !1294
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @lzma_mf_bt3_skip(ptr nocapture noundef %mf, i32 noundef %amount) local_unnamed_addr #1 !dbg !1295 {
entry:
    #dbg_value(ptr %mf, !1297, !DIExpression(), !1307)
    #dbg_value(i32 %amount, !1298, !DIExpression(), !1307)
  %0 = getelementptr i8, ptr %mf, i64 24
  %1 = getelementptr i8, ptr %mf, i64 36
  %nice_len = getelementptr inbounds i8, ptr %mf, i64 96
  %action = getelementptr inbounds i8, ptr %mf, i64 104
  %offset = getelementptr inbounds i8, ptr %mf, i64 20
  %hash_mask = getelementptr inbounds i8, ptr %mf, i64 88
  %hash = getelementptr inbounds i8, ptr %mf, i64 64
  %depth = getelementptr inbounds i8, ptr %mf, i64 92
  %son = getelementptr inbounds i8, ptr %mf, i64 72
  %cyclic_pos = getelementptr inbounds i8, ptr %mf, i64 80
  %cyclic_size = getelementptr inbounds i8, ptr %mf, i64 84
  %hash_size_sum.i.i = getelementptr inbounds i8, ptr %mf, i64 108
  %sons_count.i.i = getelementptr inbounds i8, ptr %mf, i64 112
  %pending.i = getelementptr inbounds i8, ptr %mf, i64 40
  br label %do.body, !dbg !1308

do.body:                                          ; preds = %cleanup, %entry
  %amount.addr.0 = phi i32 [ %amount, %entry ], [ %dec, %cleanup ]
    #dbg_value(i32 %amount.addr.0, !1298, !DIExpression(), !1307)
  %mf.val = load i32, ptr %0, align 8, !dbg !1309
  %mf.val53 = load i32, ptr %1, align 4, !dbg !1309
    #dbg_value(ptr undef, !150, !DIExpression(), !1310)
  %sub.i = sub i32 %mf.val53, %mf.val, !dbg !1312
    #dbg_value(i32 %sub.i, !1299, !DIExpression(), !1313)
  %2 = load i32, ptr %nice_len, align 8, !dbg !1314
  %cmp.not = icmp ugt i32 %2, %sub.i, !dbg !1314
  br i1 %cmp.not, label %if.else, label %if.end5, !dbg !1309

if.else:                                          ; preds = %do.body
  %cmp2 = icmp ult i32 %sub.i, 3, !dbg !1316
  br i1 %cmp2, label %if.then4, label %lor.lhs.false, !dbg !1316

lor.lhs.false:                                    ; preds = %if.else
  %3 = load i32, ptr %action, align 8, !dbg !1316
  %cmp3 = icmp eq i32 %3, 1, !dbg !1316
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !1314

if.then4:                                         ; preds = %lor.lhs.false, %if.else
    #dbg_value(ptr %mf, !162, !DIExpression(), !1318)
  %inc.i = add i32 %mf.val, 1, !dbg !1321
  store i32 %inc.i, ptr %0, align 8, !dbg !1321
  %4 = load i32, ptr %pending.i, align 8, !dbg !1322
  %inc1.i = add i32 %4, 1, !dbg !1322
  store i32 %inc1.i, ptr %pending.i, align 8, !dbg !1322
  br label %cleanup, !dbg !1323

if.end5:                                          ; preds = %do.body, %lor.lhs.false
  %len_limit.0 = phi i32 [ %sub.i, %lor.lhs.false ], [ %2, %do.body ], !dbg !1309
    #dbg_value(i32 %len_limit.0, !1299, !DIExpression(), !1313)
  %mf.val54 = load ptr, ptr %mf, align 8, !dbg !1309
    #dbg_value(ptr undef, !107, !DIExpression(), !1324)
  %idx.ext.i = zext i32 %mf.val to i64, !dbg !1326
  %add.ptr.i = getelementptr inbounds i8, ptr %mf.val54, i64 %idx.ext.i, !dbg !1326
    #dbg_value(ptr %add.ptr.i, !1301, !DIExpression(), !1313)
  %5 = load i32, ptr %offset, align 4, !dbg !1309
  %add = add i32 %5, %mf.val, !dbg !1309
    #dbg_value(i32 %add, !1302, !DIExpression(), !1313)
  %6 = load i8, ptr %add.ptr.i, align 1, !dbg !1327
  %idxprom = zext i8 %6 to i64, !dbg !1327
  %arrayidx7 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %idxprom, !dbg !1327
  %7 = load i32, ptr %arrayidx7, align 4, !dbg !1327
  %arrayidx8 = getelementptr inbounds i8, ptr %add.ptr.i, i64 1, !dbg !1327
  %8 = load i8, ptr %arrayidx8, align 1, !dbg !1327
  %conv = zext i8 %8 to i32, !dbg !1327
  %xor = xor i32 %7, %conv, !dbg !1327
    #dbg_value(i32 %xor, !1303, !DIExpression(), !1313)
  %and = and i32 %xor, 1023, !dbg !1327
    #dbg_value(i32 %and, !1304, !DIExpression(), !1313)
  %arrayidx9 = getelementptr inbounds i8, ptr %add.ptr.i, i64 2, !dbg !1327
  %9 = load i8, ptr %arrayidx9, align 1, !dbg !1327
  %conv10 = zext i8 %9 to i32, !dbg !1327
  %shl = shl nuw nsw i32 %conv10, 8, !dbg !1327
  %xor11 = xor i32 %shl, %xor, !dbg !1327
  %10 = load i32, ptr %hash_mask, align 8, !dbg !1327
  %and12 = and i32 %xor11, %10, !dbg !1327
    #dbg_value(i32 %and12, !1305, !DIExpression(), !1313)
  %11 = load ptr, ptr %hash, align 8, !dbg !1328
  %add13 = add i32 %and12, 1024, !dbg !1329
  %idxprom14 = zext i32 %add13 to i64, !dbg !1330
  %arrayidx15 = getelementptr inbounds i32, ptr %11, i64 %idxprom14, !dbg !1330
  %12 = load i32, ptr %arrayidx15, align 4, !dbg !1330
    #dbg_value(i32 %12, !1306, !DIExpression(), !1313)
  %idxprom17 = zext nneg i32 %and to i64, !dbg !1331
  %arrayidx18 = getelementptr inbounds i32, ptr %11, i64 %idxprom17, !dbg !1331
  store i32 %add, ptr %arrayidx18, align 4, !dbg !1332
  %13 = load ptr, ptr %hash, align 8, !dbg !1333
  %arrayidx22 = getelementptr inbounds i32, ptr %13, i64 %idxprom14, !dbg !1334
  store i32 %add, ptr %arrayidx22, align 4, !dbg !1335
  %14 = load i32, ptr %depth, align 4, !dbg !1336
  %15 = load ptr, ptr %son, align 8, !dbg !1336
  %16 = load i32, ptr %cyclic_pos, align 8, !dbg !1336
  %17 = load i32, ptr %cyclic_size, align 4, !dbg !1336
    #dbg_value(i32 %len_limit.0, !927, !DIExpression(), !1338)
    #dbg_value(i32 %add, !932, !DIExpression(), !1338)
    #dbg_value(ptr %add.ptr.i, !933, !DIExpression(), !1338)
    #dbg_value(i32 %12, !934, !DIExpression(), !1338)
    #dbg_value(i32 %14, !935, !DIExpression(), !1338)
    #dbg_value(ptr %15, !936, !DIExpression(), !1338)
    #dbg_value(i32 %16, !937, !DIExpression(), !1338)
    #dbg_value(i32 %17, !938, !DIExpression(), !1338)
  %shl.i = shl i32 %16, 1, !dbg !1340
  %idx.ext.i56 = zext i32 %shl.i to i64, !dbg !1341
  %add.ptr.i57 = getelementptr inbounds i32, ptr %15, i64 %idx.ext.i56, !dbg !1341
  %add.ptr1.i = getelementptr inbounds i8, ptr %add.ptr.i57, i64 4, !dbg !1342
    #dbg_value(ptr %add.ptr1.i, !939, !DIExpression(), !1338)
    #dbg_value(ptr %add.ptr.i57, !940, !DIExpression(), !1338)
    #dbg_value(i32 0, !941, !DIExpression(), !1338)
    #dbg_value(i32 0, !942, !DIExpression(), !1338)
  %sub111.i = sub i32 %add, %12, !dbg !1343
  %cmp113.i = icmp ne i32 %14, 0, !dbg !1344
  %cmp5.not114.i = icmp ult i32 %sub111.i, %17
  %or.cond115.i = and i1 %cmp113.i, %cmp5.not114.i, !dbg !1345
  br i1 %or.cond115.i, label %if.end.i, label %if.then.i, !dbg !1345

if.then.i:                                        ; preds = %cleanup58.i, %if.end5
  %ptr1.0.lcssa.i = phi ptr [ %add.ptr.i57, %if.end5 ], [ %ptr1.1.i, %cleanup58.i ], !dbg !1346
  %ptr0.0.lcssa.i = phi ptr [ %add.ptr1.i, %if.end5 ], [ %ptr0.1.i, %cleanup58.i ], !dbg !1347
  store i32 0, ptr %ptr0.0.lcssa.i, align 4, !dbg !1348
  store i32 0, ptr %ptr1.0.lcssa.i, align 4, !dbg !1349
  br label %bt_skip_func.exit, !dbg !1350

if.end.i:                                         ; preds = %if.end5, %cleanup58.i
  %dec122.in.i = phi i32 [ %dec122.i, %cleanup58.i ], [ %14, %if.end5 ]
  %sub121.i = phi i32 [ %sub.i58, %cleanup58.i ], [ %sub111.i, %if.end5 ]
  %cur_match.addr.0120.i = phi i32 [ %cur_match.addr.1.i, %cleanup58.i ], [ %12, %if.end5 ]
  %ptr0.0119.i = phi ptr [ %ptr0.1.i, %cleanup58.i ], [ %add.ptr1.i, %if.end5 ]
  %len1.0118.i = phi i32 [ %len1.1.i, %cleanup58.i ], [ 0, %if.end5 ]
  %len0.0117.i = phi i32 [ %len0.1.i, %cleanup58.i ], [ 0, %if.end5 ]
  %ptr1.0116.i = phi ptr [ %ptr1.1.i, %cleanup58.i ], [ %add.ptr.i57, %if.end5 ]
  %dec122.i = add i32 %dec122.in.i, -1, !dbg !1351
    #dbg_value(i32 %cur_match.addr.0120.i, !934, !DIExpression(), !1338)
    #dbg_value(ptr %ptr0.0119.i, !939, !DIExpression(), !1338)
    #dbg_value(i32 %len1.0118.i, !942, !DIExpression(), !1338)
    #dbg_value(i32 %len0.0117.i, !941, !DIExpression(), !1338)
    #dbg_value(ptr %ptr1.0116.i, !940, !DIExpression(), !1338)
  %sub6.i = sub i32 %16, %sub121.i, !dbg !1352
  %cmp7.i = icmp ugt i32 %sub121.i, %16, !dbg !1353
  %cond.i = select i1 %cmp7.i, i32 %17, i32 0, !dbg !1354
  %add.i = add i32 %sub6.i, %cond.i, !dbg !1355
  %shl8.i = shl i32 %add.i, 1, !dbg !1356
  %idx.ext9.i = zext i32 %shl8.i to i64, !dbg !1357
  %add.ptr10.i = getelementptr inbounds i32, ptr %15, i64 %idx.ext9.i, !dbg !1357
    #dbg_value(ptr %add.ptr10.i, !945, !DIExpression(), !1358)
  %idx.ext11.i = zext i32 %sub121.i to i64, !dbg !1359
  %idx.neg.i = sub nsw i64 0, %idx.ext11.i, !dbg !1359
  %add.ptr12.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg.i, !dbg !1359
    #dbg_value(ptr %add.ptr12.i, !946, !DIExpression(), !1358)
  %cond17.i = tail call i32 @llvm.umin.i32(i32 %len0.0117.i, i32 %len1.0118.i), !dbg !1360
    #dbg_value(i32 %cond17.i, !947, !DIExpression(), !1358)
  %idxprom.i = zext i32 %cond17.i to i64, !dbg !1361
  %arrayidx.i = getelementptr inbounds i8, ptr %add.ptr12.i, i64 %idxprom.i, !dbg !1361
  %18 = load i8, ptr %arrayidx.i, align 1, !dbg !1361
  %arrayidx19.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom.i, !dbg !1362
  %19 = load i8, ptr %arrayidx19.i, align 1, !dbg !1362
  %cmp21.i = icmp eq i8 %18, %19, !dbg !1363
  br i1 %cmp21.i, label %while.cond24.i, label %if.end44.i, !dbg !1364

while.cond24.i:                                   ; preds = %if.end.i, %while.body27.i
  %len.0.i = phi i32 [ %inc.i59, %while.body27.i ], [ %cond17.i, %if.end.i ], !dbg !1358
    #dbg_value(i32 %len.0.i, !947, !DIExpression(), !1358)
  %inc.i59 = add i32 %len.0.i, 1, !dbg !1365
    #dbg_value(i32 %inc.i59, !947, !DIExpression(), !1358)
  %cmp25.not.i = icmp eq i32 %inc.i59, %len_limit.0, !dbg !1366
  br i1 %cmp25.not.i, label %if.then40.i, label %while.body27.i, !dbg !1367

while.body27.i:                                   ; preds = %while.cond24.i
  %idxprom28.i = zext i32 %inc.i59 to i64, !dbg !1368
  %arrayidx29.i = getelementptr inbounds i8, ptr %add.ptr12.i, i64 %idxprom28.i, !dbg !1368
  %20 = load i8, ptr %arrayidx29.i, align 1, !dbg !1368
  %arrayidx32.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom28.i, !dbg !1369
  %21 = load i8, ptr %arrayidx32.i, align 1, !dbg !1369
  %cmp34.not.i = icmp eq i8 %20, %21, !dbg !1370
  br i1 %cmp34.not.i, label %while.cond24.i, label %if.end44.i, !dbg !1371, !llvm.loop !1372

if.then40.i:                                      ; preds = %while.cond24.i
  %22 = load i32, ptr %add.ptr10.i, align 4, !dbg !1374
  store i32 %22, ptr %ptr1.0116.i, align 4, !dbg !1375
  %arrayidx42.i = getelementptr inbounds i8, ptr %add.ptr10.i, i64 4, !dbg !1376
  %23 = load i32, ptr %arrayidx42.i, align 4, !dbg !1376
  store i32 %23, ptr %ptr0.0119.i, align 4, !dbg !1377
  br label %bt_skip_func.exit, !dbg !1378

if.end44.i:                                       ; preds = %while.body27.i, %if.end.i
  %24 = phi i8 [ %19, %if.end.i ], [ %21, %while.body27.i ], !dbg !1379
  %25 = phi i8 [ %18, %if.end.i ], [ %20, %while.body27.i ], !dbg !1380
  %len.1.i = phi i32 [ %cond17.i, %if.end.i ], [ %inc.i59, %while.body27.i ], !dbg !1358
    #dbg_value(i32 %len.1.i, !947, !DIExpression(), !1358)
  %cmp51.i = icmp ult i8 %25, %24, !dbg !1381
  br i1 %cmp51.i, label %if.then53.i, label %if.else.i, !dbg !1382

if.then53.i:                                      ; preds = %if.end44.i
  store i32 %cur_match.addr.0120.i, ptr %ptr1.0116.i, align 4, !dbg !1383
  %add.ptr54.i = getelementptr inbounds i8, ptr %add.ptr10.i, i64 4, !dbg !1384
    #dbg_value(ptr %add.ptr54.i, !940, !DIExpression(), !1338)
    #dbg_value(i32 poison, !934, !DIExpression(), !1338)
    #dbg_value(i32 %len.1.i, !942, !DIExpression(), !1338)
  br label %cleanup58.i, !dbg !1385

if.else.i:                                        ; preds = %if.end44.i
  store i32 %cur_match.addr.0120.i, ptr %ptr0.0119.i, align 4, !dbg !1386
    #dbg_value(ptr %add.ptr10.i, !939, !DIExpression(), !1338)
    #dbg_value(i32 poison, !934, !DIExpression(), !1338)
    #dbg_value(i32 %len.1.i, !941, !DIExpression(), !1338)
  br label %cleanup58.i

cleanup58.i:                                      ; preds = %if.else.i, %if.then53.i
  %ptr1.1.i = phi ptr [ %add.ptr54.i, %if.then53.i ], [ %ptr1.0116.i, %if.else.i ], !dbg !1338
  %len0.1.i = phi i32 [ %len0.0117.i, %if.then53.i ], [ %len.1.i, %if.else.i ], !dbg !1338
  %len1.1.i = phi i32 [ %len.1.i, %if.then53.i ], [ %len1.0118.i, %if.else.i ], !dbg !1338
  %ptr0.1.i = phi ptr [ %ptr0.0119.i, %if.then53.i ], [ %add.ptr10.i, %if.else.i ], !dbg !1338
  %cur_match.addr.1.in.i = phi ptr [ %add.ptr54.i, %if.then53.i ], [ %add.ptr10.i, %if.else.i ]
  %cur_match.addr.1.i = load i32, ptr %cur_match.addr.1.in.i, align 4, !dbg !1387
    #dbg_value(i32 %cur_match.addr.1.i, !934, !DIExpression(), !1338)
    #dbg_value(i32 %dec122.i, !935, !DIExpression(), !1338)
    #dbg_value(ptr %ptr0.1.i, !939, !DIExpression(), !1338)
    #dbg_value(i32 %len1.1.i, !942, !DIExpression(), !1338)
    #dbg_value(i32 %len0.1.i, !941, !DIExpression(), !1338)
    #dbg_value(ptr %ptr1.1.i, !940, !DIExpression(), !1338)
  %sub.i58 = sub i32 %add, %cur_match.addr.1.i, !dbg !1343
    #dbg_value(i32 %sub.i58, !943, !DIExpression(), !1358)
    #dbg_value(i32 %dec122.i, !935, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1338)
  %cmp.i = icmp ne i32 %dec122.i, 0, !dbg !1344
  %cmp5.not.i = icmp ult i32 %sub.i58, %17
  %or.cond.i = select i1 %cmp.i, i1 %cmp5.not.i, i1 false, !dbg !1345
  br i1 %or.cond.i, label %if.end.i, label %if.then.i, !dbg !1345, !llvm.loop !1388

bt_skip_func.exit:                                ; preds = %if.then.i, %if.then40.i
    #dbg_value(i32 poison, !934, !DIExpression(), !1338)
    #dbg_value(ptr poison, !939, !DIExpression(), !1338)
    #dbg_value(i32 poison, !942, !DIExpression(), !1338)
    #dbg_value(i32 poison, !941, !DIExpression(), !1338)
    #dbg_value(ptr poison, !940, !DIExpression(), !1338)
    #dbg_value(ptr %mf, !222, !DIExpression(), !1391)
  %26 = load i32, ptr %cyclic_pos, align 8, !dbg !1393
  %inc.i60 = add i32 %26, 1, !dbg !1393
  %27 = load i32, ptr %cyclic_size, align 4, !dbg !1394
  %cmp.i61 = icmp eq i32 %inc.i60, %27, !dbg !1395
  %spec.store.select.i = select i1 %cmp.i61, i32 0, i32 %inc.i60, !dbg !1396
  store i32 %spec.store.select.i, ptr %cyclic_pos, align 8, !dbg !1391
  %28 = load i32, ptr %0, align 8, !dbg !1397
  %inc2.i = add i32 %28, 1, !dbg !1397
  store i32 %inc2.i, ptr %0, align 8, !dbg !1397
  %29 = load i32, ptr %offset, align 4, !dbg !1398
  %add.i63 = add i32 %29, %inc2.i, !dbg !1398
  %cmp4.i = icmp eq i32 %add.i63, -1, !dbg !1398
  br i1 %cmp4.i, label %if.then5.i, label %cleanup, !dbg !1399

if.then5.i:                                       ; preds = %bt_skip_func.exit
    #dbg_value(ptr %mf, !236, !DIExpression(), !1400)
  %sub.i.i = xor i32 %27, -1, !dbg !1402
    #dbg_value(i32 %sub.i.i, !239, !DIExpression(), !1400)
  %30 = load i32, ptr %hash_size_sum.i.i, align 4, !dbg !1403
  %31 = load i32, ptr %sons_count.i.i, align 8, !dbg !1404
  %add.i.i = add i32 %31, %30, !dbg !1405
    #dbg_value(i32 %add.i.i, !240, !DIExpression(), !1400)
  %32 = load ptr, ptr %hash, align 8, !dbg !1406
    #dbg_value(ptr %32, !241, !DIExpression(), !1400)
    #dbg_value(i32 0, !242, !DIExpression(), !1407)
  %cmp21.not.i.i = icmp eq i32 %add.i.i, 0, !dbg !1408
  br i1 %cmp21.not.i.i, label %normalize.exit.i, label %for.body.preheader.i.i, !dbg !1409

for.body.preheader.i.i:                           ; preds = %if.then5.i
  %wide.trip.count.i.i = zext i32 %add.i.i to i64, !dbg !1408
  %min.iters.check = icmp ult i32 %add.i.i, 16, !dbg !1409
  br i1 %min.iters.check, label %for.body.i.i.preheader, label %vector.ph, !dbg !1409

vector.ph:                                        ; preds = %for.body.preheader.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 4294967280, !dbg !1409
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %sub.i.i, i64 0, !dbg !1409
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !1409
  br label %vector.body, !dbg !1409

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !1410
  %33 = getelementptr inbounds i32, ptr %32, i64 %index, !dbg !1411
  %34 = getelementptr inbounds i8, ptr %33, i64 16, !dbg !1411
  %35 = getelementptr inbounds i8, ptr %33, i64 32, !dbg !1411
  %36 = getelementptr inbounds i8, ptr %33, i64 48, !dbg !1411
  %wide.load = load <4 x i32>, ptr %33, align 4, !dbg !1411
  %wide.load84 = load <4 x i32>, ptr %34, align 4, !dbg !1411
  %wide.load85 = load <4 x i32>, ptr %35, align 4, !dbg !1411
  %wide.load86 = load <4 x i32>, ptr %36, align 4, !dbg !1411
  %37 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load, <4 x i32> %broadcast.splat), !dbg !1412
  %38 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load84, <4 x i32> %broadcast.splat), !dbg !1412
  %39 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load85, <4 x i32> %broadcast.splat), !dbg !1412
  %40 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load86, <4 x i32> %broadcast.splat), !dbg !1412
  store <4 x i32> %37, ptr %33, align 4, !dbg !1413
  store <4 x i32> %38, ptr %34, align 4, !dbg !1413
  store <4 x i32> %39, ptr %35, align 4, !dbg !1413
  store <4 x i32> %40, ptr %36, align 4, !dbg !1413
  %index.next = add nuw i64 %index, 16, !dbg !1410
  %41 = icmp eq i64 %index.next, %n.vec, !dbg !1410
  br i1 %41, label %middle.block, label %vector.body, !dbg !1410, !llvm.loop !1414

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i, !dbg !1409
  br i1 %cmp.n, label %normalize.exit.loopexit.i, label %for.body.i.i.preheader, !dbg !1409

for.body.i.i.preheader:                           ; preds = %middle.block, %for.body.preheader.i.i
  %indvars.iv.i.i.ph = phi i64 [ 0, %for.body.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %for.body.i.i, !dbg !1409

for.body.i.i:                                     ; preds = %for.body.i.i.preheader, %for.body.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %for.body.i.i ], [ %indvars.iv.i.i.ph, %for.body.i.i.preheader ]
    #dbg_value(i64 %indvars.iv.i.i, !242, !DIExpression(), !1407)
  %arrayidx.i.i = getelementptr inbounds i32, ptr %32, i64 %indvars.iv.i.i, !dbg !1411
  %42 = load i32, ptr %arrayidx.i.i, align 4, !dbg !1411
  %storemerge.i.i = tail call i32 @llvm.usub.sat.i32(i32 %42, i32 %sub.i.i), !dbg !1412
  store i32 %storemerge.i.i, ptr %arrayidx.i.i, align 4, !dbg !1413
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1, !dbg !1410
    #dbg_value(i64 %indvars.iv.next.i.i, !242, !DIExpression(), !1407)
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i, !dbg !1408
  br i1 %exitcond.not.i.i, label %normalize.exit.loopexit.i, label %for.body.i.i, !dbg !1409, !llvm.loop !1416

normalize.exit.loopexit.i:                        ; preds = %for.body.i.i, %middle.block
  %.pre.i = load i32, ptr %offset, align 4, !dbg !1417
  br label %normalize.exit.i, !dbg !1417

normalize.exit.i:                                 ; preds = %normalize.exit.loopexit.i, %if.then5.i
  %43 = phi i32 [ %.pre.i, %normalize.exit.loopexit.i ], [ %29, %if.then5.i ], !dbg !1417
  %sub8.i.i = sub i32 %43, %sub.i.i, !dbg !1417
  store i32 %sub8.i.i, ptr %offset, align 4, !dbg !1417
  br label %cleanup, !dbg !1418

cleanup:                                          ; preds = %normalize.exit.i, %bt_skip_func.exit, %if.then4
  %dec = add i32 %amount.addr.0, -1, !dbg !1419
    #dbg_value(i32 %dec, !1298, !DIExpression(), !1307)
  %cmp25.not = icmp eq i32 %dec, 0, !dbg !1420
  br i1 %cmp25.not, label %do.end27, label %do.body, !dbg !1421, !llvm.loop !1422

do.end27:                                         ; preds = %cleanup
  ret void, !dbg !1424
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @lzma_mf_bt4_find(ptr nocapture noundef %mf, ptr noundef %matches) local_unnamed_addr #1 !dbg !1425 {
entry:
    #dbg_value(ptr %mf, !1427, !DIExpression(), !1441)
    #dbg_value(ptr %matches, !1428, !DIExpression(), !1441)
  %0 = getelementptr i8, ptr %mf, i64 24, !dbg !1442
  %mf.val = load i32, ptr %0, align 8, !dbg !1442
  %1 = getelementptr i8, ptr %mf, i64 36, !dbg !1442
  %mf.val211 = load i32, ptr %1, align 4, !dbg !1442
    #dbg_value(ptr undef, !150, !DIExpression(), !1443)
  %sub.i = sub i32 %mf.val211, %mf.val, !dbg !1445
    #dbg_value(i32 %sub.i, !1429, !DIExpression(), !1441)
  %nice_len = getelementptr inbounds i8, ptr %mf, i64 96, !dbg !1446
  %2 = load i32, ptr %nice_len, align 8, !dbg !1446
  %cmp.not = icmp ugt i32 %2, %sub.i, !dbg !1446
  br i1 %cmp.not, label %if.else, label %if.end5, !dbg !1442

if.else:                                          ; preds = %entry
  %cmp2 = icmp ult i32 %sub.i, 4, !dbg !1448
  br i1 %cmp2, label %if.then4, label %lor.lhs.false, !dbg !1448

lor.lhs.false:                                    ; preds = %if.else
  %action = getelementptr inbounds i8, ptr %mf, i64 104, !dbg !1448
  %3 = load i32, ptr %action, align 8, !dbg !1448
  %cmp3 = icmp eq i32 %3, 1, !dbg !1448
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !1446

if.then4:                                         ; preds = %lor.lhs.false, %if.else
    #dbg_value(ptr %mf, !162, !DIExpression(), !1450)
  %inc.i = add i32 %mf.val, 1, !dbg !1453
  store i32 %inc.i, ptr %0, align 8, !dbg !1453
  %pending.i = getelementptr inbounds i8, ptr %mf, i64 40, !dbg !1454
  %4 = load i32, ptr %pending.i, align 8, !dbg !1455
  %inc1.i = add i32 %4, 1, !dbg !1455
  store i32 %inc1.i, ptr %pending.i, align 8, !dbg !1455
  br label %cleanup130, !dbg !1456

if.end5:                                          ; preds = %entry, %lor.lhs.false
  %len_limit.0 = phi i32 [ %sub.i, %lor.lhs.false ], [ %2, %entry ], !dbg !1442
    #dbg_value(i32 %len_limit.0, !1429, !DIExpression(), !1441)
  %mf.val212 = load ptr, ptr %mf, align 8, !dbg !1442
    #dbg_value(ptr undef, !107, !DIExpression(), !1457)
  %idx.ext.i = zext i32 %mf.val to i64, !dbg !1459
  %add.ptr.i = getelementptr inbounds i8, ptr %mf.val212, i64 %idx.ext.i, !dbg !1459
    #dbg_value(ptr %add.ptr.i, !1430, !DIExpression(), !1441)
  %offset = getelementptr inbounds i8, ptr %mf, i64 20, !dbg !1442
  %5 = load i32, ptr %offset, align 4, !dbg !1442
  %add = add i32 %5, %mf.val, !dbg !1442
    #dbg_value(i32 %add, !1431, !DIExpression(), !1441)
    #dbg_value(i32 0, !1432, !DIExpression(), !1441)
  %6 = load i8, ptr %add.ptr.i, align 1, !dbg !1460
  %idxprom = zext i8 %6 to i64, !dbg !1460
  %arrayidx7 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %idxprom, !dbg !1460
  %7 = load i32, ptr %arrayidx7, align 4, !dbg !1460
  %arrayidx8 = getelementptr inbounds i8, ptr %add.ptr.i, i64 1, !dbg !1460
  %8 = load i8, ptr %arrayidx8, align 1, !dbg !1460
  %conv = zext i8 %8 to i32, !dbg !1460
  %xor = xor i32 %7, %conv, !dbg !1460
    #dbg_value(i32 %xor, !1433, !DIExpression(), !1441)
  %and = and i32 %xor, 1023, !dbg !1460
    #dbg_value(i32 %and, !1434, !DIExpression(), !1441)
  %arrayidx9 = getelementptr inbounds i8, ptr %add.ptr.i, i64 2, !dbg !1460
  %9 = load i8, ptr %arrayidx9, align 1, !dbg !1460
  %conv10 = zext i8 %9 to i32, !dbg !1460
  %shl = shl nuw nsw i32 %conv10, 8, !dbg !1460
  %xor11 = xor i32 %shl, %xor, !dbg !1460
  %and12 = and i32 %xor11, 65535, !dbg !1460
    #dbg_value(i32 %and12, !1435, !DIExpression(), !1441)
  %arrayidx17 = getelementptr inbounds i8, ptr %add.ptr.i, i64 3, !dbg !1460
  %10 = load i8, ptr %arrayidx17, align 1, !dbg !1460
  %idxprom18 = zext i8 %10 to i64, !dbg !1460
  %arrayidx19 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %idxprom18, !dbg !1460
  %11 = load i32, ptr %arrayidx19, align 4, !dbg !1460
  %shl20 = shl i32 %11, 5, !dbg !1460
  %xor21 = xor i32 %xor11, %shl20, !dbg !1460
  %hash_mask = getelementptr inbounds i8, ptr %mf, i64 88, !dbg !1460
  %12 = load i32, ptr %hash_mask, align 8, !dbg !1460
  %and22 = and i32 %xor21, %12, !dbg !1460
    #dbg_value(i32 %and22, !1436, !DIExpression(), !1441)
  %hash = getelementptr inbounds i8, ptr %mf, i64 64, !dbg !1461
  %13 = load ptr, ptr %hash, align 8, !dbg !1461
  %idxprom23 = zext nneg i32 %and to i64, !dbg !1462
  %arrayidx24 = getelementptr inbounds i32, ptr %13, i64 %idxprom23, !dbg !1462
  %14 = load i32, ptr %arrayidx24, align 4, !dbg !1462
  %sub = sub i32 %add, %14, !dbg !1463
    #dbg_value(i32 %sub, !1437, !DIExpression(), !1441)
  %add26 = add nuw nsw i32 %and12, 1024, !dbg !1464
  %idxprom27 = zext nneg i32 %add26 to i64, !dbg !1465
  %arrayidx28 = getelementptr inbounds i32, ptr %13, i64 %idxprom27, !dbg !1465
  %15 = load i32, ptr %arrayidx28, align 4, !dbg !1465
  %sub29 = sub i32 %add, %15, !dbg !1466
    #dbg_value(i32 %sub29, !1438, !DIExpression(), !1441)
  %add31 = add i32 %and22, 66560, !dbg !1467
  %idxprom32 = zext i32 %add31 to i64, !dbg !1468
  %arrayidx33 = getelementptr inbounds i32, ptr %13, i64 %idxprom32, !dbg !1468
  %16 = load i32, ptr %arrayidx33, align 4, !dbg !1468
    #dbg_value(i32 %16, !1439, !DIExpression(), !1441)
  store i32 %add, ptr %arrayidx24, align 4, !dbg !1469
  %17 = load ptr, ptr %hash, align 8, !dbg !1470
  %arrayidx40 = getelementptr inbounds i32, ptr %17, i64 %idxprom27, !dbg !1471
  store i32 %add, ptr %arrayidx40, align 4, !dbg !1472
  %18 = load ptr, ptr %hash, align 8, !dbg !1473
  %arrayidx44 = getelementptr inbounds i32, ptr %18, i64 %idxprom32, !dbg !1474
  store i32 %add, ptr %arrayidx44, align 4, !dbg !1475
    #dbg_value(i32 1, !1440, !DIExpression(), !1441)
  %cyclic_size = getelementptr inbounds i8, ptr %mf, i64 84, !dbg !1476
  %19 = load i32, ptr %cyclic_size, align 4, !dbg !1476
  %cmp45 = icmp ult i32 %sub, %19, !dbg !1478
  br i1 %cmp45, label %land.lhs.true, label %if.end55, !dbg !1479

land.lhs.true:                                    ; preds = %if.end5
  %idx.ext = zext i32 %sub to i64, !dbg !1480
  %idx.neg = sub nsw i64 0, %idx.ext, !dbg !1480
  %add.ptr = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg, !dbg !1480
  %20 = load i8, ptr %add.ptr, align 1, !dbg !1481
  %21 = load i8, ptr %add.ptr.i, align 1, !dbg !1482
  %cmp49 = icmp eq i8 %20, %21, !dbg !1483
  br i1 %cmp49, label %if.then51, label %if.end55, !dbg !1484

if.then51:                                        ; preds = %land.lhs.true
    #dbg_value(i32 2, !1440, !DIExpression(), !1441)
  store i32 2, ptr %matches, align 4, !dbg !1485
  %sub53 = add i32 %sub, -1, !dbg !1487
  %dist = getelementptr inbounds i8, ptr %matches, i64 4, !dbg !1488
  store i32 %sub53, ptr %dist, align 4, !dbg !1489
    #dbg_value(i32 1, !1432, !DIExpression(), !1441)
  br label %if.end55, !dbg !1490

if.end55:                                         ; preds = %if.then51, %land.lhs.true, %if.end5
  %cmp76.not = phi i1 [ false, %if.then51 ], [ true, %land.lhs.true ], [ true, %if.end5 ], !dbg !1441
  %matches_count.0 = phi i32 [ 1, %if.then51 ], [ 0, %land.lhs.true ], [ 0, %if.end5 ], !dbg !1441
  %len_best.0 = phi i32 [ 2, %if.then51 ], [ 1, %land.lhs.true ], [ 1, %if.end5 ], !dbg !1441
    #dbg_value(i32 %len_best.0, !1440, !DIExpression(), !1441)
    #dbg_value(i32 %matches_count.0, !1432, !DIExpression(), !1441)
  %cmp56.not = icmp eq i32 %15, %14, !dbg !1491
  br i1 %cmp56.not, label %if.end75, label %land.lhs.true58, !dbg !1493

land.lhs.true58:                                  ; preds = %if.end55
  %22 = load i32, ptr %cyclic_size, align 4, !dbg !1494
  %cmp60 = icmp ult i32 %sub29, %22, !dbg !1495
  br i1 %cmp60, label %land.lhs.true62, label %if.end75, !dbg !1496

land.lhs.true62:                                  ; preds = %land.lhs.true58
  %idx.ext63 = zext i32 %sub29 to i64, !dbg !1497
  %idx.neg64 = sub nsw i64 0, %idx.ext63, !dbg !1497
  %add.ptr65 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg64, !dbg !1497
  %23 = load i8, ptr %add.ptr65, align 1, !dbg !1498
  %24 = load i8, ptr %add.ptr.i, align 1, !dbg !1499
  %cmp68 = icmp eq i8 %23, %24, !dbg !1500
  br i1 %cmp68, label %if.end75.thread, label %if.end75, !dbg !1501

if.end75.thread:                                  ; preds = %land.lhs.true62
    #dbg_value(i32 3, !1440, !DIExpression(), !1441)
  %sub71 = add i32 %sub29, -1, !dbg !1502
  %inc = add nuw nsw i32 %matches_count.0, 1, !dbg !1504
    #dbg_value(i32 %inc, !1432, !DIExpression(), !1441)
  %idxprom72 = zext nneg i32 %matches_count.0 to i64, !dbg !1505
  %dist74 = getelementptr inbounds %struct.lzma_match, ptr %matches, i64 %idxprom72, i32 1, !dbg !1506
  store i32 %sub71, ptr %dist74, align 4, !dbg !1507
    #dbg_value(i32 %sub29, !1437, !DIExpression(), !1441)
  br label %for.cond.preheader, !dbg !1508

if.end75:                                         ; preds = %land.lhs.true62, %land.lhs.true58, %if.end55
    #dbg_value(i32 %len_best.0, !1440, !DIExpression(), !1441)
    #dbg_value(i32 %sub, !1437, !DIExpression(), !1441)
    #dbg_value(i32 %matches_count.0, !1432, !DIExpression(), !1441)
  br i1 %cmp76.not, label %if.end104, label %for.cond.preheader, !dbg !1508

for.cond.preheader:                               ; preds = %if.end75.thread, %if.end75
  %len_best.1332 = phi i32 [ 3, %if.end75.thread ], [ %len_best.0, %if.end75 ]
  %delta2.0331 = phi i32 [ %sub29, %if.end75.thread ], [ %sub, %if.end75 ]
  %matches_count.1329 = phi i32 [ %inc, %if.end75.thread ], [ 1, %if.end75 ]
    #dbg_value(i32 %len_best.1332, !1440, !DIExpression(), !1441)
  %cmp79.not311 = icmp eq i32 %len_best.1332, %len_limit.0, !dbg !1509
  br i1 %cmp79.not311, label %do.body, label %for.body.lr.ph, !dbg !1514

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %idx.ext83 = zext i32 %delta2.0331 to i64
  %idx.neg84 = sub nsw i64 0, %idx.ext83
  br label %for.body, !dbg !1514

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %len_best.2312 = phi i32 [ %len_best.1332, %for.body.lr.ph ], [ %inc94, %for.inc ]
    #dbg_value(i32 %len_best.2312, !1440, !DIExpression(), !1441)
  %idx.ext81 = zext i32 %len_best.2312 to i64, !dbg !1515
  %add.ptr82 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.ext81, !dbg !1515
  %add.ptr85 = getelementptr inbounds i8, ptr %add.ptr82, i64 %idx.neg84, !dbg !1517
  %25 = load i8, ptr %add.ptr85, align 1, !dbg !1518
  %26 = load i8, ptr %add.ptr82, align 1, !dbg !1519
  %cmp90.not = icmp eq i8 %25, %26, !dbg !1520
  br i1 %cmp90.not, label %for.inc, label %for.end, !dbg !1521

for.inc:                                          ; preds = %for.body
  %inc94 = add i32 %len_best.2312, 1, !dbg !1522
    #dbg_value(i32 %inc94, !1440, !DIExpression(), !1441)
  %cmp79.not = icmp eq i32 %inc94, %len_limit.0, !dbg !1509
  br i1 %cmp79.not, label %do.body, label %for.body, !dbg !1514, !llvm.loop !1523

for.end:                                          ; preds = %for.body
  %sub95 = add nsw i32 %matches_count.1329, -1, !dbg !1525
  %idxprom96 = zext i32 %sub95 to i64, !dbg !1526
  %arrayidx97 = getelementptr inbounds %struct.lzma_match, ptr %matches, i64 %idxprom96, !dbg !1526
  store i32 %len_best.2312, ptr %arrayidx97, align 4, !dbg !1527
  %27 = zext nneg i32 %matches_count.1329 to i64, !dbg !1528
  br label %if.end104, !dbg !1530

do.body:                                          ; preds = %for.inc, %for.cond.preheader
  %sub95296 = add nsw i32 %matches_count.1329, -1, !dbg !1525
  %idxprom96297 = zext i32 %sub95296 to i64, !dbg !1526
  %arrayidx97298 = getelementptr inbounds %struct.lzma_match, ptr %matches, i64 %idxprom96297, !dbg !1526
  store i32 %len_limit.0, ptr %arrayidx97298, align 4, !dbg !1527
  %depth = getelementptr inbounds i8, ptr %mf, i64 92, !dbg !1531
  %28 = load i32, ptr %depth, align 4, !dbg !1531
  %son = getelementptr inbounds i8, ptr %mf, i64 72, !dbg !1531
  %29 = load ptr, ptr %son, align 8, !dbg !1531
  %cyclic_pos = getelementptr inbounds i8, ptr %mf, i64 80, !dbg !1531
  %30 = load i32, ptr %cyclic_pos, align 8, !dbg !1531
  %31 = load i32, ptr %cyclic_size, align 4, !dbg !1531
    #dbg_value(i32 %len_limit.0, !927, !DIExpression(), !1535)
    #dbg_value(i32 %add, !932, !DIExpression(), !1535)
    #dbg_value(ptr %add.ptr.i, !933, !DIExpression(), !1535)
    #dbg_value(i32 %16, !934, !DIExpression(), !1535)
    #dbg_value(i32 %28, !935, !DIExpression(), !1535)
    #dbg_value(ptr %29, !936, !DIExpression(), !1535)
    #dbg_value(i32 %30, !937, !DIExpression(), !1535)
    #dbg_value(i32 %31, !938, !DIExpression(), !1535)
  %shl.i = shl i32 %30, 1, !dbg !1537
  %idx.ext.i214 = zext i32 %shl.i to i64, !dbg !1538
  %add.ptr.i215 = getelementptr inbounds i32, ptr %29, i64 %idx.ext.i214, !dbg !1538
  %add.ptr1.i = getelementptr inbounds i8, ptr %add.ptr.i215, i64 4, !dbg !1539
    #dbg_value(ptr %add.ptr1.i, !939, !DIExpression(), !1535)
    #dbg_value(ptr %add.ptr.i215, !940, !DIExpression(), !1535)
    #dbg_value(i32 0, !941, !DIExpression(), !1535)
    #dbg_value(i32 0, !942, !DIExpression(), !1535)
  %sub111.i = sub i32 %add, %16, !dbg !1540
  %cmp113.i = icmp ne i32 %28, 0, !dbg !1541
  %cmp5.not114.i = icmp ult i32 %sub111.i, %31
  %or.cond115.i = and i1 %cmp113.i, %cmp5.not114.i, !dbg !1542
  br i1 %or.cond115.i, label %if.end.i, label %if.then.i, !dbg !1542

if.then.i:                                        ; preds = %cleanup58.i, %do.body
  %ptr1.0.lcssa.i = phi ptr [ %add.ptr.i215, %do.body ], [ %ptr1.1.i, %cleanup58.i ], !dbg !1543
  %ptr0.0.lcssa.i = phi ptr [ %add.ptr1.i, %do.body ], [ %ptr0.1.i, %cleanup58.i ], !dbg !1544
  store i32 0, ptr %ptr0.0.lcssa.i, align 4, !dbg !1545
  store i32 0, ptr %ptr1.0.lcssa.i, align 4, !dbg !1546
  br label %bt_skip_func.exit, !dbg !1547

if.end.i:                                         ; preds = %do.body, %cleanup58.i
  %dec122.in.i = phi i32 [ %dec122.i, %cleanup58.i ], [ %28, %do.body ]
  %sub121.i = phi i32 [ %sub.i216, %cleanup58.i ], [ %sub111.i, %do.body ]
  %cur_match.addr.0120.i = phi i32 [ %cur_match.addr.1.i, %cleanup58.i ], [ %16, %do.body ]
  %ptr0.0119.i = phi ptr [ %ptr0.1.i, %cleanup58.i ], [ %add.ptr1.i, %do.body ]
  %len1.0118.i = phi i32 [ %len1.1.i, %cleanup58.i ], [ 0, %do.body ]
  %len0.0117.i = phi i32 [ %len0.1.i, %cleanup58.i ], [ 0, %do.body ]
  %ptr1.0116.i = phi ptr [ %ptr1.1.i, %cleanup58.i ], [ %add.ptr.i215, %do.body ]
  %dec122.i = add i32 %dec122.in.i, -1, !dbg !1548
    #dbg_value(i32 %cur_match.addr.0120.i, !934, !DIExpression(), !1535)
    #dbg_value(ptr %ptr0.0119.i, !939, !DIExpression(), !1535)
    #dbg_value(i32 %len1.0118.i, !942, !DIExpression(), !1535)
    #dbg_value(i32 %len0.0117.i, !941, !DIExpression(), !1535)
    #dbg_value(ptr %ptr1.0116.i, !940, !DIExpression(), !1535)
  %sub6.i = sub i32 %30, %sub121.i, !dbg !1549
  %cmp7.i = icmp ugt i32 %sub121.i, %30, !dbg !1550
  %cond.i = select i1 %cmp7.i, i32 %31, i32 0, !dbg !1551
  %add.i = add i32 %sub6.i, %cond.i, !dbg !1552
  %shl8.i = shl i32 %add.i, 1, !dbg !1553
  %idx.ext9.i = zext i32 %shl8.i to i64, !dbg !1554
  %add.ptr10.i = getelementptr inbounds i32, ptr %29, i64 %idx.ext9.i, !dbg !1554
    #dbg_value(ptr %add.ptr10.i, !945, !DIExpression(), !1555)
  %idx.ext11.i = zext i32 %sub121.i to i64, !dbg !1556
  %idx.neg.i = sub nsw i64 0, %idx.ext11.i, !dbg !1556
  %add.ptr12.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg.i, !dbg !1556
    #dbg_value(ptr %add.ptr12.i, !946, !DIExpression(), !1555)
  %cond17.i = tail call i32 @llvm.umin.i32(i32 %len0.0117.i, i32 %len1.0118.i), !dbg !1557
    #dbg_value(i32 %cond17.i, !947, !DIExpression(), !1555)
  %idxprom.i = zext i32 %cond17.i to i64, !dbg !1558
  %arrayidx.i = getelementptr inbounds i8, ptr %add.ptr12.i, i64 %idxprom.i, !dbg !1558
  %32 = load i8, ptr %arrayidx.i, align 1, !dbg !1558
  %arrayidx19.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom.i, !dbg !1559
  %33 = load i8, ptr %arrayidx19.i, align 1, !dbg !1559
  %cmp21.i = icmp eq i8 %32, %33, !dbg !1560
  br i1 %cmp21.i, label %while.cond24.i, label %if.end44.i, !dbg !1561

while.cond24.i:                                   ; preds = %if.end.i, %while.body27.i
  %len.0.i = phi i32 [ %inc.i217, %while.body27.i ], [ %cond17.i, %if.end.i ], !dbg !1555
    #dbg_value(i32 %len.0.i, !947, !DIExpression(), !1555)
  %inc.i217 = add i32 %len.0.i, 1, !dbg !1562
    #dbg_value(i32 %inc.i217, !947, !DIExpression(), !1555)
  %cmp25.not.i = icmp eq i32 %inc.i217, %len_limit.0, !dbg !1563
  br i1 %cmp25.not.i, label %if.then40.i, label %while.body27.i, !dbg !1564

while.body27.i:                                   ; preds = %while.cond24.i
  %idxprom28.i = zext i32 %inc.i217 to i64, !dbg !1565
  %arrayidx29.i = getelementptr inbounds i8, ptr %add.ptr12.i, i64 %idxprom28.i, !dbg !1565
  %34 = load i8, ptr %arrayidx29.i, align 1, !dbg !1565
  %arrayidx32.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom28.i, !dbg !1566
  %35 = load i8, ptr %arrayidx32.i, align 1, !dbg !1566
  %cmp34.not.i = icmp eq i8 %34, %35, !dbg !1567
  br i1 %cmp34.not.i, label %while.cond24.i, label %if.end44.i, !dbg !1568, !llvm.loop !1569

if.then40.i:                                      ; preds = %while.cond24.i
  %36 = load i32, ptr %add.ptr10.i, align 4, !dbg !1571
  store i32 %36, ptr %ptr1.0116.i, align 4, !dbg !1572
  %arrayidx42.i = getelementptr inbounds i8, ptr %add.ptr10.i, i64 4, !dbg !1573
  %37 = load i32, ptr %arrayidx42.i, align 4, !dbg !1573
  store i32 %37, ptr %ptr0.0119.i, align 4, !dbg !1574
  br label %bt_skip_func.exit, !dbg !1575

if.end44.i:                                       ; preds = %while.body27.i, %if.end.i
  %38 = phi i8 [ %33, %if.end.i ], [ %35, %while.body27.i ], !dbg !1576
  %39 = phi i8 [ %32, %if.end.i ], [ %34, %while.body27.i ], !dbg !1577
  %len.1.i = phi i32 [ %cond17.i, %if.end.i ], [ %inc.i217, %while.body27.i ], !dbg !1555
    #dbg_value(i32 %len.1.i, !947, !DIExpression(), !1555)
  %cmp51.i = icmp ult i8 %39, %38, !dbg !1578
  br i1 %cmp51.i, label %if.then53.i, label %if.else.i, !dbg !1579

if.then53.i:                                      ; preds = %if.end44.i
  store i32 %cur_match.addr.0120.i, ptr %ptr1.0116.i, align 4, !dbg !1580
  %add.ptr54.i = getelementptr inbounds i8, ptr %add.ptr10.i, i64 4, !dbg !1581
    #dbg_value(ptr %add.ptr54.i, !940, !DIExpression(), !1535)
    #dbg_value(i32 poison, !934, !DIExpression(), !1535)
    #dbg_value(i32 %len.1.i, !942, !DIExpression(), !1535)
  br label %cleanup58.i, !dbg !1582

if.else.i:                                        ; preds = %if.end44.i
  store i32 %cur_match.addr.0120.i, ptr %ptr0.0119.i, align 4, !dbg !1583
    #dbg_value(ptr %add.ptr10.i, !939, !DIExpression(), !1535)
    #dbg_value(i32 poison, !934, !DIExpression(), !1535)
    #dbg_value(i32 %len.1.i, !941, !DIExpression(), !1535)
  br label %cleanup58.i

cleanup58.i:                                      ; preds = %if.else.i, %if.then53.i
  %ptr1.1.i = phi ptr [ %add.ptr54.i, %if.then53.i ], [ %ptr1.0116.i, %if.else.i ], !dbg !1535
  %len0.1.i = phi i32 [ %len0.0117.i, %if.then53.i ], [ %len.1.i, %if.else.i ], !dbg !1535
  %len1.1.i = phi i32 [ %len.1.i, %if.then53.i ], [ %len1.0118.i, %if.else.i ], !dbg !1535
  %ptr0.1.i = phi ptr [ %ptr0.0119.i, %if.then53.i ], [ %add.ptr10.i, %if.else.i ], !dbg !1535
  %cur_match.addr.1.in.i = phi ptr [ %add.ptr54.i, %if.then53.i ], [ %add.ptr10.i, %if.else.i ]
  %cur_match.addr.1.i = load i32, ptr %cur_match.addr.1.in.i, align 4, !dbg !1584
    #dbg_value(i32 %cur_match.addr.1.i, !934, !DIExpression(), !1535)
    #dbg_value(i32 %dec122.i, !935, !DIExpression(), !1535)
    #dbg_value(ptr %ptr0.1.i, !939, !DIExpression(), !1535)
    #dbg_value(i32 %len1.1.i, !942, !DIExpression(), !1535)
    #dbg_value(i32 %len0.1.i, !941, !DIExpression(), !1535)
    #dbg_value(ptr %ptr1.1.i, !940, !DIExpression(), !1535)
  %sub.i216 = sub i32 %add, %cur_match.addr.1.i, !dbg !1540
    #dbg_value(i32 %sub.i216, !943, !DIExpression(), !1555)
    #dbg_value(i32 %dec122.i, !935, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1535)
  %cmp.i = icmp ne i32 %dec122.i, 0, !dbg !1541
  %cmp5.not.i = icmp ult i32 %sub.i216, %31
  %or.cond.i = select i1 %cmp.i, i1 %cmp5.not.i, i1 false, !dbg !1542
  br i1 %or.cond.i, label %if.end.i, label %if.then.i, !dbg !1542, !llvm.loop !1585

bt_skip_func.exit:                                ; preds = %if.then.i, %if.then40.i
    #dbg_value(i32 poison, !934, !DIExpression(), !1535)
    #dbg_value(ptr poison, !939, !DIExpression(), !1535)
    #dbg_value(i32 poison, !942, !DIExpression(), !1535)
    #dbg_value(i32 poison, !941, !DIExpression(), !1535)
    #dbg_value(ptr poison, !940, !DIExpression(), !1535)
    #dbg_value(ptr %mf, !222, !DIExpression(), !1588)
  %40 = load i32, ptr %cyclic_pos, align 8, !dbg !1590
  %inc.i218 = add i32 %40, 1, !dbg !1590
  %41 = load i32, ptr %cyclic_size, align 4, !dbg !1591
  %cmp.i219 = icmp eq i32 %inc.i218, %41, !dbg !1592
  %spec.store.select.i = select i1 %cmp.i219, i32 0, i32 %inc.i218, !dbg !1593
  store i32 %spec.store.select.i, ptr %cyclic_pos, align 8, !dbg !1588
  %42 = load i32, ptr %0, align 8, !dbg !1594
  %inc2.i = add i32 %42, 1, !dbg !1594
  store i32 %inc2.i, ptr %0, align 8, !dbg !1594
  %43 = load i32, ptr %offset, align 4, !dbg !1595
  %add.i221 = add i32 %43, %inc2.i, !dbg !1595
  %cmp4.i = icmp eq i32 %add.i221, -1, !dbg !1595
  br i1 %cmp4.i, label %if.then5.i, label %cleanup130, !dbg !1596

if.then5.i:                                       ; preds = %bt_skip_func.exit
    #dbg_value(ptr %mf, !236, !DIExpression(), !1597)
  %sub.i.i = xor i32 %41, -1, !dbg !1599
    #dbg_value(i32 %sub.i.i, !239, !DIExpression(), !1597)
  %hash_size_sum.i.i = getelementptr inbounds i8, ptr %mf, i64 108, !dbg !1600
  %44 = load i32, ptr %hash_size_sum.i.i, align 4, !dbg !1600
  %sons_count.i.i = getelementptr inbounds i8, ptr %mf, i64 112, !dbg !1601
  %45 = load i32, ptr %sons_count.i.i, align 8, !dbg !1601
  %add.i.i = add i32 %45, %44, !dbg !1602
    #dbg_value(i32 %add.i.i, !240, !DIExpression(), !1597)
  %46 = load ptr, ptr %hash, align 8, !dbg !1603
    #dbg_value(ptr %46, !241, !DIExpression(), !1597)
    #dbg_value(i32 0, !242, !DIExpression(), !1604)
  %cmp21.not.i.i = icmp eq i32 %add.i.i, 0, !dbg !1605
  br i1 %cmp21.not.i.i, label %normalize.exit.i, label %for.body.preheader.i.i, !dbg !1606

for.body.preheader.i.i:                           ; preds = %if.then5.i
  %wide.trip.count.i.i = zext i32 %add.i.i to i64, !dbg !1605
  %min.iters.check = icmp ult i32 %add.i.i, 16, !dbg !1606
  br i1 %min.iters.check, label %for.body.i.i.preheader, label %vector.ph, !dbg !1606

vector.ph:                                        ; preds = %for.body.preheader.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 4294967280, !dbg !1606
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %sub.i.i, i64 0, !dbg !1606
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !1606
  br label %vector.body, !dbg !1606

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !1607
  %47 = getelementptr inbounds i32, ptr %46, i64 %index, !dbg !1608
  %48 = getelementptr inbounds i8, ptr %47, i64 16, !dbg !1608
  %49 = getelementptr inbounds i8, ptr %47, i64 32, !dbg !1608
  %50 = getelementptr inbounds i8, ptr %47, i64 48, !dbg !1608
  %wide.load = load <4 x i32>, ptr %47, align 4, !dbg !1608
  %wide.load357 = load <4 x i32>, ptr %48, align 4, !dbg !1608
  %wide.load358 = load <4 x i32>, ptr %49, align 4, !dbg !1608
  %wide.load359 = load <4 x i32>, ptr %50, align 4, !dbg !1608
  %51 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load, <4 x i32> %broadcast.splat), !dbg !1609
  %52 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load357, <4 x i32> %broadcast.splat), !dbg !1609
  %53 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load358, <4 x i32> %broadcast.splat), !dbg !1609
  %54 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load359, <4 x i32> %broadcast.splat), !dbg !1609
  store <4 x i32> %51, ptr %47, align 4, !dbg !1610
  store <4 x i32> %52, ptr %48, align 4, !dbg !1610
  store <4 x i32> %53, ptr %49, align 4, !dbg !1610
  store <4 x i32> %54, ptr %50, align 4, !dbg !1610
  %index.next = add nuw i64 %index, 16, !dbg !1607
  %55 = icmp eq i64 %index.next, %n.vec, !dbg !1607
  br i1 %55, label %middle.block, label %vector.body, !dbg !1607, !llvm.loop !1611

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i, !dbg !1606
  br i1 %cmp.n, label %normalize.exit.loopexit.i, label %for.body.i.i.preheader, !dbg !1606

for.body.i.i.preheader:                           ; preds = %middle.block, %for.body.preheader.i.i
  %indvars.iv.i.i.ph = phi i64 [ 0, %for.body.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %for.body.i.i, !dbg !1606

for.body.i.i:                                     ; preds = %for.body.i.i.preheader, %for.body.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %for.body.i.i ], [ %indvars.iv.i.i.ph, %for.body.i.i.preheader ]
    #dbg_value(i64 %indvars.iv.i.i, !242, !DIExpression(), !1604)
  %arrayidx.i.i = getelementptr inbounds i32, ptr %46, i64 %indvars.iv.i.i, !dbg !1608
  %56 = load i32, ptr %arrayidx.i.i, align 4, !dbg !1608
  %storemerge.i.i = tail call i32 @llvm.usub.sat.i32(i32 %56, i32 %sub.i.i), !dbg !1609
  store i32 %storemerge.i.i, ptr %arrayidx.i.i, align 4, !dbg !1610
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1, !dbg !1607
    #dbg_value(i64 %indvars.iv.next.i.i, !242, !DIExpression(), !1604)
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i, !dbg !1605
  br i1 %exitcond.not.i.i, label %normalize.exit.loopexit.i, label %for.body.i.i, !dbg !1606, !llvm.loop !1613

normalize.exit.loopexit.i:                        ; preds = %for.body.i.i, %middle.block
  %.pre.i = load i32, ptr %offset, align 4, !dbg !1614
  br label %normalize.exit.i, !dbg !1614

normalize.exit.i:                                 ; preds = %normalize.exit.loopexit.i, %if.then5.i
  %57 = phi i32 [ %.pre.i, %normalize.exit.loopexit.i ], [ %43, %if.then5.i ], !dbg !1614
  %sub8.i.i = sub i32 %57, %sub.i.i, !dbg !1614
  store i32 %sub8.i.i, ptr %offset, align 4, !dbg !1614
  br label %cleanup130, !dbg !1615

if.end104:                                        ; preds = %for.end, %if.end75
  %matches_count.1330 = phi i64 [ %27, %for.end ], [ 0, %if.end75 ]
  %len_best.3 = phi i32 [ %len_best.2312, %for.end ], [ %len_best.0, %if.end75 ], !dbg !1616
    #dbg_value(i32 poison, !1440, !DIExpression(), !1441)
  %depth110 = getelementptr inbounds i8, ptr %mf, i64 92, !dbg !1528
  %58 = load i32, ptr %depth110, align 4, !dbg !1528
  %son111 = getelementptr inbounds i8, ptr %mf, i64 72, !dbg !1528
  %59 = load ptr, ptr %son111, align 8, !dbg !1528
  %cyclic_pos112 = getelementptr inbounds i8, ptr %mf, i64 80, !dbg !1528
  %60 = load i32, ptr %cyclic_pos112, align 8, !dbg !1528
  %61 = load i32, ptr %cyclic_size, align 4, !dbg !1528
  %add.ptr115 = getelementptr inbounds %struct.lzma_match, ptr %matches, i64 %matches_count.1330, !dbg !1528
    #dbg_value(i32 %len_limit.0, !768, !DIExpression(), !1617)
    #dbg_value(i32 %add, !771, !DIExpression(), !1617)
    #dbg_value(ptr %add.ptr.i, !772, !DIExpression(), !1617)
    #dbg_value(i32 %16, !773, !DIExpression(), !1617)
    #dbg_value(i32 %58, !774, !DIExpression(), !1617)
    #dbg_value(ptr %59, !775, !DIExpression(), !1617)
    #dbg_value(i32 %60, !776, !DIExpression(), !1617)
    #dbg_value(i32 %61, !777, !DIExpression(), !1617)
    #dbg_value(ptr %add.ptr115, !778, !DIExpression(), !1617)
    #dbg_value(i32 poison, !779, !DIExpression(), !1617)
  %shl.i222 = shl i32 %60, 1, !dbg !1619
  %idx.ext.i223 = zext i32 %shl.i222 to i64, !dbg !1620
  %add.ptr.i224 = getelementptr inbounds i32, ptr %59, i64 %idx.ext.i223, !dbg !1620
  %add.ptr1.i225 = getelementptr inbounds i8, ptr %add.ptr.i224, i64 4, !dbg !1621
    #dbg_value(ptr %add.ptr1.i225, !780, !DIExpression(), !1617)
    #dbg_value(ptr %add.ptr.i224, !781, !DIExpression(), !1617)
    #dbg_value(i32 0, !782, !DIExpression(), !1617)
    #dbg_value(i32 0, !783, !DIExpression(), !1617)
  %sub135.i = sub i32 %add, %16, !dbg !1622
  %cmp137.i = icmp ne i32 %58, 0, !dbg !1623
  %cmp5.not138.i = icmp ult i32 %sub135.i, %61
  %or.cond139.i = and i1 %cmp137.i, %cmp5.not138.i, !dbg !1624
  br i1 %or.cond139.i, label %if.end.i229.preheader, label %if.then.i226, !dbg !1624

if.end.i229.preheader:                            ; preds = %if.end104
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %len_best.3, i32 3), !dbg !1625
    #dbg_value(i32 %spec.store.select, !1440, !DIExpression(), !1441)
    #dbg_value(i32 %spec.store.select, !779, !DIExpression(), !1617)
  %.pre = zext i32 %len_limit.0 to i64
  br label %if.end.i229, !dbg !1626

if.then.i226:                                     ; preds = %cleanup64.i, %if.end104
  %matches.addr.0.lcssa.i = phi ptr [ %add.ptr115, %if.end104 ], [ %matches.addr.1.i, %cleanup64.i ]
  %ptr0.0.lcssa.i227 = phi ptr [ %add.ptr1.i225, %if.end104 ], [ %ptr0.1.i247, %cleanup64.i ], !dbg !1627
  %ptr1.0.lcssa.i228 = phi ptr [ %add.ptr.i224, %if.end104 ], [ %ptr1.1.i248, %cleanup64.i ], !dbg !1628
  store i32 0, ptr %ptr0.0.lcssa.i227, align 4, !dbg !1629
  store i32 0, ptr %ptr1.0.lcssa.i228, align 4, !dbg !1630
  br label %bt_find_func.exit, !dbg !1631

if.end.i229:                                      ; preds = %if.end.i229.preheader, %cleanup64.i
  %dec148.in.i = phi i32 [ %dec148.i, %cleanup64.i ], [ %58, %if.end.i229.preheader ]
  %sub147.i = phi i32 [ %sub.i253, %cleanup64.i ], [ %sub135.i, %if.end.i229.preheader ]
  %cur_match.addr.0146.i = phi i32 [ %cur_match.addr.1.i252, %cleanup64.i ], [ %16, %if.end.i229.preheader ]
  %len1.0145.i = phi i32 [ %len1.1.i250, %cleanup64.i ], [ 0, %if.end.i229.preheader ]
  %len0.0144.i = phi i32 [ %len0.1.i249, %cleanup64.i ], [ 0, %if.end.i229.preheader ]
  %ptr1.0143.i = phi ptr [ %ptr1.1.i248, %cleanup64.i ], [ %add.ptr.i224, %if.end.i229.preheader ]
  %ptr0.0142.i = phi ptr [ %ptr0.1.i247, %cleanup64.i ], [ %add.ptr1.i225, %if.end.i229.preheader ]
  %len_best.addr.0141.i = phi i32 [ %len_best.addr.1.i, %cleanup64.i ], [ %spec.store.select, %if.end.i229.preheader ]
  %matches.addr.0140.i = phi ptr [ %matches.addr.1.i, %cleanup64.i ], [ %add.ptr115, %if.end.i229.preheader ]
  %dec148.i = add i32 %dec148.in.i, -1, !dbg !1632
    #dbg_value(i32 %cur_match.addr.0146.i, !773, !DIExpression(), !1617)
    #dbg_value(i32 %len1.0145.i, !783, !DIExpression(), !1617)
    #dbg_value(i32 %len0.0144.i, !782, !DIExpression(), !1617)
    #dbg_value(ptr %ptr1.0143.i, !781, !DIExpression(), !1617)
    #dbg_value(ptr %ptr0.0142.i, !780, !DIExpression(), !1617)
    #dbg_value(i32 %len_best.addr.0141.i, !779, !DIExpression(), !1617)
    #dbg_value(ptr %matches.addr.0140.i, !778, !DIExpression(), !1617)
  %sub6.i230 = sub i32 %60, %sub147.i, !dbg !1633
  %cmp7.i231 = icmp ugt i32 %sub147.i, %60, !dbg !1634
  %cond.i232 = select i1 %cmp7.i231, i32 %61, i32 0, !dbg !1635
  %add.i233 = add i32 %sub6.i230, %cond.i232, !dbg !1636
  %shl8.i234 = shl i32 %add.i233, 1, !dbg !1637
  %idx.ext9.i235 = zext i32 %shl8.i234 to i64, !dbg !1638
  %add.ptr10.i236 = getelementptr inbounds i32, ptr %59, i64 %idx.ext9.i235, !dbg !1638
    #dbg_value(ptr %add.ptr10.i236, !786, !DIExpression(), !1639)
  %idx.ext11.i237 = zext i32 %sub147.i to i64, !dbg !1640
  %idx.neg.i238 = sub nsw i64 0, %idx.ext11.i237, !dbg !1640
  %add.ptr12.i239 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg.i238, !dbg !1640
    #dbg_value(ptr %add.ptr12.i239, !787, !DIExpression(), !1639)
  %cond17.i240 = tail call i32 @llvm.umin.i32(i32 %len0.0144.i, i32 %len1.0145.i), !dbg !1641
    #dbg_value(i32 %cond17.i240, !788, !DIExpression(), !1639)
  %idxprom.i241 = zext i32 %cond17.i240 to i64, !dbg !1642
  %arrayidx.i242 = getelementptr inbounds i8, ptr %add.ptr12.i239, i64 %idxprom.i241, !dbg !1642
  %62 = load i8, ptr %arrayidx.i242, align 1, !dbg !1642
  %arrayidx19.i243 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom.i241, !dbg !1643
  %63 = load i8, ptr %arrayidx19.i243, align 1, !dbg !1643
  %cmp21.i244 = icmp eq i8 %62, %63, !dbg !1644
  br i1 %cmp21.i244, label %while.cond24.i257, label %if.end50.i, !dbg !1645

while.cond24.i257:                                ; preds = %if.end.i229, %while.body27.i261
  %len.0.i258 = phi i32 [ %inc.i259, %while.body27.i261 ], [ %cond17.i240, %if.end.i229 ], !dbg !1639
    #dbg_value(i32 %len.0.i258, !788, !DIExpression(), !1639)
  %inc.i259 = add i32 %len.0.i258, 1, !dbg !1646
    #dbg_value(i32 %inc.i259, !788, !DIExpression(), !1639)
  %cmp25.not.i260 = icmp eq i32 %inc.i259, %len_limit.0, !dbg !1647
  br i1 %cmp25.not.i260, label %while.end.i, label %while.body27.i261, !dbg !1648

while.body27.i261:                                ; preds = %while.cond24.i257
  %idxprom28.i262 = zext i32 %inc.i259 to i64, !dbg !1649
  %arrayidx29.i263 = getelementptr inbounds i8, ptr %add.ptr12.i239, i64 %idxprom28.i262, !dbg !1649
  %64 = load i8, ptr %arrayidx29.i263, align 1, !dbg !1649
  %arrayidx32.i264 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom28.i262, !dbg !1650
  %65 = load i8, ptr %arrayidx32.i264, align 1, !dbg !1650
  %cmp34.not.i265 = icmp eq i8 %64, %65, !dbg !1651
  br i1 %cmp34.not.i265, label %while.cond24.i257, label %while.end.thread.i, !dbg !1652, !llvm.loop !1653

while.end.i:                                      ; preds = %while.cond24.i257
  %cmp38.i = icmp ult i32 %len_best.addr.0141.i, %len_limit.0, !dbg !1655
  br i1 %cmp38.i, label %if.then45.i, label %if.end50.i, !dbg !1656

while.end.thread.i:                               ; preds = %while.body27.i261
  %cmp38115.i = icmp ult i32 %len_best.addr.0141.i, %inc.i259, !dbg !1655
  br i1 %cmp38115.i, label %if.then40.thread.i, label %if.end50.i, !dbg !1656

if.then40.thread.i:                               ; preds = %while.end.thread.i
    #dbg_value(i32 %inc.i259, !779, !DIExpression(), !1617)
  store i32 %inc.i259, ptr %matches.addr.0140.i, align 4, !dbg !1657
  %sub42116.i = add i32 %sub147.i, -1, !dbg !1658
  %dist117.i = getelementptr inbounds i8, ptr %matches.addr.0140.i, i64 4, !dbg !1659
  store i32 %sub42116.i, ptr %dist117.i, align 4, !dbg !1660
  %incdec.ptr118.i = getelementptr inbounds i8, ptr %matches.addr.0140.i, i64 8, !dbg !1661
    #dbg_value(ptr %incdec.ptr118.i, !778, !DIExpression(), !1617)
  br label %if.end50.i, !dbg !1662

if.then45.i:                                      ; preds = %while.end.i
    #dbg_value(i32 %len_limit.0, !779, !DIExpression(), !1617)
  store i32 %len_limit.0, ptr %matches.addr.0140.i, align 4, !dbg !1657
  %sub42.i = add i32 %sub147.i, -1, !dbg !1658
  %dist.i = getelementptr inbounds i8, ptr %matches.addr.0140.i, i64 4, !dbg !1659
  store i32 %sub42.i, ptr %dist.i, align 4, !dbg !1660
  %incdec.ptr.i = getelementptr inbounds i8, ptr %matches.addr.0140.i, i64 8, !dbg !1661
    #dbg_value(ptr %incdec.ptr.i, !778, !DIExpression(), !1617)
  %66 = load i32, ptr %add.ptr10.i236, align 4, !dbg !1663
  store i32 %66, ptr %ptr1.0143.i, align 4, !dbg !1664
  %arrayidx47.i = getelementptr inbounds i8, ptr %add.ptr10.i236, i64 4, !dbg !1665
  %67 = load i32, ptr %arrayidx47.i, align 4, !dbg !1665
  store i32 %67, ptr %ptr0.0142.i, align 4, !dbg !1666
  br label %bt_find_func.exit, !dbg !1667

if.end50.i:                                       ; preds = %while.end.i, %if.then40.thread.i, %while.end.thread.i, %if.end.i229
  %idxprom51.i.pre-phi = phi i64 [ %idxprom28.i262, %if.then40.thread.i ], [ %idxprom28.i262, %while.end.thread.i ], [ %idxprom.i241, %if.end.i229 ], [ %.pre, %while.end.i ], !dbg !1668
  %matches.addr.1.i = phi ptr [ %incdec.ptr118.i, %if.then40.thread.i ], [ %matches.addr.0140.i, %while.end.thread.i ], [ %matches.addr.0140.i, %if.end.i229 ], [ %matches.addr.0140.i, %while.end.i ]
  %len_best.addr.1.i = phi i32 [ %inc.i259, %if.then40.thread.i ], [ %len_best.addr.0141.i, %while.end.thread.i ], [ %len_best.addr.0141.i, %if.end.i229 ], [ %len_best.addr.0141.i, %while.end.i ]
  %len.1.i245 = phi i32 [ %inc.i259, %if.then40.thread.i ], [ %inc.i259, %while.end.thread.i ], [ %cond17.i240, %if.end.i229 ], [ %len_limit.0, %while.end.i ], !dbg !1639
    #dbg_value(i32 %len.1.i245, !788, !DIExpression(), !1639)
    #dbg_value(i32 %len_best.addr.1.i, !779, !DIExpression(), !1617)
    #dbg_value(ptr %matches.addr.1.i, !778, !DIExpression(), !1617)
  %arrayidx52.i = getelementptr inbounds i8, ptr %add.ptr12.i239, i64 %idxprom51.i.pre-phi, !dbg !1668
  %68 = load i8, ptr %arrayidx52.i, align 1, !dbg !1668
  %arrayidx55.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom51.i.pre-phi, !dbg !1669
  %69 = load i8, ptr %arrayidx55.i, align 1, !dbg !1669
  %cmp57.i = icmp ult i8 %68, %69, !dbg !1670
  br i1 %cmp57.i, label %if.then59.i, label %if.else.i246, !dbg !1671

if.then59.i:                                      ; preds = %if.end50.i
  store i32 %cur_match.addr.0146.i, ptr %ptr1.0143.i, align 4, !dbg !1672
  %add.ptr60.i = getelementptr inbounds i8, ptr %add.ptr10.i236, i64 4, !dbg !1673
    #dbg_value(ptr %add.ptr60.i, !781, !DIExpression(), !1617)
    #dbg_value(i32 poison, !773, !DIExpression(), !1617)
    #dbg_value(i32 %len.1.i245, !783, !DIExpression(), !1617)
  br label %cleanup64.i, !dbg !1674

if.else.i246:                                     ; preds = %if.end50.i
  store i32 %cur_match.addr.0146.i, ptr %ptr0.0142.i, align 4, !dbg !1675
    #dbg_value(ptr %add.ptr10.i236, !780, !DIExpression(), !1617)
    #dbg_value(i32 poison, !773, !DIExpression(), !1617)
    #dbg_value(i32 %len.1.i245, !782, !DIExpression(), !1617)
  br label %cleanup64.i

cleanup64.i:                                      ; preds = %if.else.i246, %if.then59.i
  %ptr0.1.i247 = phi ptr [ %ptr0.0142.i, %if.then59.i ], [ %add.ptr10.i236, %if.else.i246 ], !dbg !1617
  %ptr1.1.i248 = phi ptr [ %add.ptr60.i, %if.then59.i ], [ %ptr1.0143.i, %if.else.i246 ], !dbg !1617
  %len0.1.i249 = phi i32 [ %len0.0144.i, %if.then59.i ], [ %len.1.i245, %if.else.i246 ], !dbg !1617
  %len1.1.i250 = phi i32 [ %len.1.i245, %if.then59.i ], [ %len1.0145.i, %if.else.i246 ], !dbg !1617
  %cur_match.addr.1.in.i251 = phi ptr [ %add.ptr60.i, %if.then59.i ], [ %add.ptr10.i236, %if.else.i246 ]
  %cur_match.addr.1.i252 = load i32, ptr %cur_match.addr.1.in.i251, align 4, !dbg !1676
    #dbg_value(i32 %cur_match.addr.1.i252, !773, !DIExpression(), !1617)
    #dbg_value(i32 %dec148.i, !774, !DIExpression(), !1617)
    #dbg_value(i32 %len1.1.i250, !783, !DIExpression(), !1617)
    #dbg_value(i32 %len0.1.i249, !782, !DIExpression(), !1617)
    #dbg_value(ptr %ptr1.1.i248, !781, !DIExpression(), !1617)
    #dbg_value(ptr %ptr0.1.i247, !780, !DIExpression(), !1617)
    #dbg_value(i32 %len_best.addr.1.i, !779, !DIExpression(), !1617)
    #dbg_value(ptr %matches.addr.1.i, !778, !DIExpression(), !1617)
  %sub.i253 = sub i32 %add, %cur_match.addr.1.i252, !dbg !1622
    #dbg_value(i32 %sub.i253, !784, !DIExpression(), !1639)
    #dbg_value(i32 %dec148.i, !774, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1617)
  %cmp.i254 = icmp ne i32 %dec148.i, 0, !dbg !1623
  %cmp5.not.i255 = icmp ult i32 %sub.i253, %61
  %or.cond.i256 = select i1 %cmp.i254, i1 %cmp5.not.i255, i1 false, !dbg !1624
  br i1 %or.cond.i256, label %if.end.i229, label %if.then.i226, !dbg !1624, !llvm.loop !1677

bt_find_func.exit:                                ; preds = %if.then.i226, %if.then45.i
  %retval.2.ph.i = phi ptr [ %incdec.ptr.i, %if.then45.i ], [ %matches.addr.0.lcssa.i, %if.then.i226 ]
    #dbg_value(i32 poison, !773, !DIExpression(), !1617)
    #dbg_value(i32 poison, !783, !DIExpression(), !1617)
    #dbg_value(i32 poison, !782, !DIExpression(), !1617)
    #dbg_value(ptr poison, !781, !DIExpression(), !1617)
    #dbg_value(ptr poison, !780, !DIExpression(), !1617)
    #dbg_value(i32 poison, !779, !DIExpression(), !1617)
    #dbg_value(ptr poison, !778, !DIExpression(), !1617)
  %sub.ptr.lhs.cast = ptrtoint ptr %retval.2.ph.i to i64, !dbg !1528
  %sub.ptr.rhs.cast = ptrtoint ptr %matches to i64, !dbg !1528
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1528
  %sub.ptr.div = lshr exact i64 %sub.ptr.sub, 3, !dbg !1528
  %conv117 = trunc i64 %sub.ptr.div to i32, !dbg !1528
    #dbg_value(i32 %conv117, !1432, !DIExpression(), !1441)
    #dbg_value(ptr %mf, !222, !DIExpression(), !1679)
  %70 = load i32, ptr %cyclic_pos112, align 8, !dbg !1681
  %inc.i267 = add i32 %70, 1, !dbg !1681
  %71 = load i32, ptr %cyclic_size, align 4, !dbg !1682
  %cmp.i269 = icmp eq i32 %inc.i267, %71, !dbg !1683
  %spec.store.select.i270 = select i1 %cmp.i269, i32 0, i32 %inc.i267, !dbg !1684
  store i32 %spec.store.select.i270, ptr %cyclic_pos112, align 8, !dbg !1679
  %72 = load i32, ptr %0, align 8, !dbg !1685
  %inc2.i272 = add i32 %72, 1, !dbg !1685
  store i32 %inc2.i272, ptr %0, align 8, !dbg !1685
  %73 = load i32, ptr %offset, align 4, !dbg !1686
  %add.i274 = add i32 %73, %inc2.i272, !dbg !1686
  %cmp4.i275 = icmp eq i32 %add.i274, -1, !dbg !1686
  br i1 %cmp4.i275, label %if.then5.i276, label %cleanup130, !dbg !1687

if.then5.i276:                                    ; preds = %bt_find_func.exit
    #dbg_value(ptr %mf, !236, !DIExpression(), !1688)
  %sub.i.i277 = xor i32 %71, -1, !dbg !1690
    #dbg_value(i32 %sub.i.i277, !239, !DIExpression(), !1688)
  %hash_size_sum.i.i278 = getelementptr inbounds i8, ptr %mf, i64 108, !dbg !1691
  %74 = load i32, ptr %hash_size_sum.i.i278, align 4, !dbg !1691
  %sons_count.i.i279 = getelementptr inbounds i8, ptr %mf, i64 112, !dbg !1692
  %75 = load i32, ptr %sons_count.i.i279, align 8, !dbg !1692
  %add.i.i280 = add i32 %75, %74, !dbg !1693
    #dbg_value(i32 %add.i.i280, !240, !DIExpression(), !1688)
  %76 = load ptr, ptr %hash, align 8, !dbg !1694
    #dbg_value(ptr %76, !241, !DIExpression(), !1688)
    #dbg_value(i32 0, !242, !DIExpression(), !1695)
  %cmp21.not.i.i282 = icmp eq i32 %add.i.i280, 0, !dbg !1696
  br i1 %cmp21.not.i.i282, label %normalize.exit.i293, label %for.body.preheader.i.i283, !dbg !1697

for.body.preheader.i.i283:                        ; preds = %if.then5.i276
  %wide.trip.count.i.i284 = zext i32 %add.i.i280 to i64, !dbg !1696
  %min.iters.check362 = icmp ult i32 %add.i.i280, 16, !dbg !1697
  br i1 %min.iters.check362, label %for.body.i.i285.preheader, label %vector.ph363, !dbg !1697

vector.ph363:                                     ; preds = %for.body.preheader.i.i283
  %n.vec365 = and i64 %wide.trip.count.i.i284, 4294967280, !dbg !1697
  %broadcast.splatinsert373 = insertelement <4 x i32> poison, i32 %sub.i.i277, i64 0, !dbg !1697
  %broadcast.splat374 = shufflevector <4 x i32> %broadcast.splatinsert373, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !1697
  br label %vector.body367, !dbg !1697

vector.body367:                                   ; preds = %vector.body367, %vector.ph363
  %index368 = phi i64 [ 0, %vector.ph363 ], [ %index.next375, %vector.body367 ], !dbg !1698
  %77 = getelementptr inbounds i32, ptr %76, i64 %index368, !dbg !1699
  %78 = getelementptr inbounds i8, ptr %77, i64 16, !dbg !1699
  %79 = getelementptr inbounds i8, ptr %77, i64 32, !dbg !1699
  %80 = getelementptr inbounds i8, ptr %77, i64 48, !dbg !1699
  %wide.load369 = load <4 x i32>, ptr %77, align 4, !dbg !1699
  %wide.load370 = load <4 x i32>, ptr %78, align 4, !dbg !1699
  %wide.load371 = load <4 x i32>, ptr %79, align 4, !dbg !1699
  %wide.load372 = load <4 x i32>, ptr %80, align 4, !dbg !1699
  %81 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load369, <4 x i32> %broadcast.splat374), !dbg !1700
  %82 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load370, <4 x i32> %broadcast.splat374), !dbg !1700
  %83 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load371, <4 x i32> %broadcast.splat374), !dbg !1700
  %84 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load372, <4 x i32> %broadcast.splat374), !dbg !1700
  store <4 x i32> %81, ptr %77, align 4, !dbg !1701
  store <4 x i32> %82, ptr %78, align 4, !dbg !1701
  store <4 x i32> %83, ptr %79, align 4, !dbg !1701
  store <4 x i32> %84, ptr %80, align 4, !dbg !1701
  %index.next375 = add nuw i64 %index368, 16, !dbg !1698
  %85 = icmp eq i64 %index.next375, %n.vec365, !dbg !1698
  br i1 %85, label %middle.block360, label %vector.body367, !dbg !1698, !llvm.loop !1702

middle.block360:                                  ; preds = %vector.body367
  %cmp.n376 = icmp eq i64 %n.vec365, %wide.trip.count.i.i284, !dbg !1697
  br i1 %cmp.n376, label %normalize.exit.loopexit.i291, label %for.body.i.i285.preheader, !dbg !1697

for.body.i.i285.preheader:                        ; preds = %middle.block360, %for.body.preheader.i.i283
  %indvars.iv.i.i286.ph = phi i64 [ 0, %for.body.preheader.i.i283 ], [ %n.vec365, %middle.block360 ]
  br label %for.body.i.i285, !dbg !1697

for.body.i.i285:                                  ; preds = %for.body.i.i285.preheader, %for.body.i.i285
  %indvars.iv.i.i286 = phi i64 [ %indvars.iv.next.i.i289, %for.body.i.i285 ], [ %indvars.iv.i.i286.ph, %for.body.i.i285.preheader ]
    #dbg_value(i64 %indvars.iv.i.i286, !242, !DIExpression(), !1695)
  %arrayidx.i.i287 = getelementptr inbounds i32, ptr %76, i64 %indvars.iv.i.i286, !dbg !1699
  %86 = load i32, ptr %arrayidx.i.i287, align 4, !dbg !1699
  %storemerge.i.i288 = tail call i32 @llvm.usub.sat.i32(i32 %86, i32 %sub.i.i277), !dbg !1700
  store i32 %storemerge.i.i288, ptr %arrayidx.i.i287, align 4, !dbg !1701
  %indvars.iv.next.i.i289 = add nuw nsw i64 %indvars.iv.i.i286, 1, !dbg !1698
    #dbg_value(i64 %indvars.iv.next.i.i289, !242, !DIExpression(), !1695)
  %exitcond.not.i.i290 = icmp eq i64 %indvars.iv.next.i.i289, %wide.trip.count.i.i284, !dbg !1696
  br i1 %exitcond.not.i.i290, label %normalize.exit.loopexit.i291, label %for.body.i.i285, !dbg !1697, !llvm.loop !1704

normalize.exit.loopexit.i291:                     ; preds = %for.body.i.i285, %middle.block360
  %.pre.i292 = load i32, ptr %offset, align 4, !dbg !1705
  br label %normalize.exit.i293, !dbg !1705

normalize.exit.i293:                              ; preds = %normalize.exit.loopexit.i291, %if.then5.i276
  %87 = phi i32 [ %.pre.i292, %normalize.exit.loopexit.i291 ], [ %73, %if.then5.i276 ], !dbg !1705
  %sub8.i.i294 = sub i32 %87, %sub.i.i277, !dbg !1705
  store i32 %sub8.i.i294, ptr %offset, align 4, !dbg !1705
  br label %cleanup130, !dbg !1706

cleanup130:                                       ; preds = %normalize.exit.i293, %bt_find_func.exit, %normalize.exit.i, %bt_skip_func.exit, %if.then4
  %retval.1 = phi i32 [ 0, %if.then4 ], [ %matches_count.1329, %bt_skip_func.exit ], [ %matches_count.1329, %normalize.exit.i ], [ %conv117, %bt_find_func.exit ], [ %conv117, %normalize.exit.i293 ], !dbg !1441
  ret i32 %retval.1, !dbg !1707
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @lzma_mf_bt4_skip(ptr nocapture noundef %mf, i32 noundef %amount) local_unnamed_addr #1 !dbg !1708 {
entry:
    #dbg_value(ptr %mf, !1710, !DIExpression(), !1721)
    #dbg_value(i32 %amount, !1711, !DIExpression(), !1721)
  %0 = getelementptr i8, ptr %mf, i64 24
  %1 = getelementptr i8, ptr %mf, i64 36
  %nice_len = getelementptr inbounds i8, ptr %mf, i64 96
  %action = getelementptr inbounds i8, ptr %mf, i64 104
  %offset = getelementptr inbounds i8, ptr %mf, i64 20
  %hash_mask = getelementptr inbounds i8, ptr %mf, i64 88
  %hash = getelementptr inbounds i8, ptr %mf, i64 64
  %depth = getelementptr inbounds i8, ptr %mf, i64 92
  %son = getelementptr inbounds i8, ptr %mf, i64 72
  %cyclic_pos = getelementptr inbounds i8, ptr %mf, i64 80
  %cyclic_size = getelementptr inbounds i8, ptr %mf, i64 84
  %hash_size_sum.i.i = getelementptr inbounds i8, ptr %mf, i64 108
  %sons_count.i.i = getelementptr inbounds i8, ptr %mf, i64 112
  %pending.i = getelementptr inbounds i8, ptr %mf, i64 40
  br label %do.body, !dbg !1722

do.body:                                          ; preds = %cleanup, %entry
  %amount.addr.0 = phi i32 [ %amount, %entry ], [ %dec, %cleanup ]
    #dbg_value(i32 %amount.addr.0, !1711, !DIExpression(), !1721)
  %mf.val = load i32, ptr %0, align 8, !dbg !1723
  %mf.val72 = load i32, ptr %1, align 4, !dbg !1723
    #dbg_value(ptr undef, !150, !DIExpression(), !1724)
  %sub.i = sub i32 %mf.val72, %mf.val, !dbg !1726
    #dbg_value(i32 %sub.i, !1712, !DIExpression(), !1727)
  %2 = load i32, ptr %nice_len, align 8, !dbg !1728
  %cmp.not = icmp ugt i32 %2, %sub.i, !dbg !1728
  br i1 %cmp.not, label %if.else, label %if.end5, !dbg !1723

if.else:                                          ; preds = %do.body
  %cmp2 = icmp ult i32 %sub.i, 4, !dbg !1730
  br i1 %cmp2, label %if.then4, label %lor.lhs.false, !dbg !1730

lor.lhs.false:                                    ; preds = %if.else
  %3 = load i32, ptr %action, align 8, !dbg !1730
  %cmp3 = icmp eq i32 %3, 1, !dbg !1730
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !1728

if.then4:                                         ; preds = %lor.lhs.false, %if.else
    #dbg_value(ptr %mf, !162, !DIExpression(), !1732)
  %inc.i = add i32 %mf.val, 1, !dbg !1735
  store i32 %inc.i, ptr %0, align 8, !dbg !1735
  %4 = load i32, ptr %pending.i, align 8, !dbg !1736
  %inc1.i = add i32 %4, 1, !dbg !1736
  store i32 %inc1.i, ptr %pending.i, align 8, !dbg !1736
  br label %cleanup, !dbg !1737

if.end5:                                          ; preds = %do.body, %lor.lhs.false
  %len_limit.0 = phi i32 [ %sub.i, %lor.lhs.false ], [ %2, %do.body ], !dbg !1723
    #dbg_value(i32 %len_limit.0, !1712, !DIExpression(), !1727)
  %mf.val73 = load ptr, ptr %mf, align 8, !dbg !1723
    #dbg_value(ptr undef, !107, !DIExpression(), !1738)
  %idx.ext.i = zext i32 %mf.val to i64, !dbg !1740
  %add.ptr.i = getelementptr inbounds i8, ptr %mf.val73, i64 %idx.ext.i, !dbg !1740
    #dbg_value(ptr %add.ptr.i, !1714, !DIExpression(), !1727)
  %5 = load i32, ptr %offset, align 4, !dbg !1723
  %add = add i32 %5, %mf.val, !dbg !1723
    #dbg_value(i32 %add, !1715, !DIExpression(), !1727)
  %6 = load i8, ptr %add.ptr.i, align 1, !dbg !1741
  %idxprom = zext i8 %6 to i64, !dbg !1741
  %arrayidx7 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %idxprom, !dbg !1741
  %7 = load i32, ptr %arrayidx7, align 4, !dbg !1741
  %arrayidx8 = getelementptr inbounds i8, ptr %add.ptr.i, i64 1, !dbg !1741
  %8 = load i8, ptr %arrayidx8, align 1, !dbg !1741
  %conv = zext i8 %8 to i32, !dbg !1741
  %xor = xor i32 %7, %conv, !dbg !1741
    #dbg_value(i32 %xor, !1716, !DIExpression(), !1727)
  %and = and i32 %xor, 1023, !dbg !1741
    #dbg_value(i32 %and, !1717, !DIExpression(), !1727)
  %arrayidx9 = getelementptr inbounds i8, ptr %add.ptr.i, i64 2, !dbg !1741
  %9 = load i8, ptr %arrayidx9, align 1, !dbg !1741
  %conv10 = zext i8 %9 to i32, !dbg !1741
  %shl = shl nuw nsw i32 %conv10, 8, !dbg !1741
  %xor11 = xor i32 %shl, %xor, !dbg !1741
  %and12 = and i32 %xor11, 65535, !dbg !1741
    #dbg_value(i32 %and12, !1718, !DIExpression(), !1727)
  %arrayidx17 = getelementptr inbounds i8, ptr %add.ptr.i, i64 3, !dbg !1741
  %10 = load i8, ptr %arrayidx17, align 1, !dbg !1741
  %idxprom18 = zext i8 %10 to i64, !dbg !1741
  %arrayidx19 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %idxprom18, !dbg !1741
  %11 = load i32, ptr %arrayidx19, align 4, !dbg !1741
  %shl20 = shl i32 %11, 5, !dbg !1741
  %xor21 = xor i32 %xor11, %shl20, !dbg !1741
  %12 = load i32, ptr %hash_mask, align 8, !dbg !1741
  %and22 = and i32 %xor21, %12, !dbg !1741
    #dbg_value(i32 %and22, !1719, !DIExpression(), !1727)
  %13 = load ptr, ptr %hash, align 8, !dbg !1742
  %add23 = add i32 %and22, 66560, !dbg !1743
  %idxprom24 = zext i32 %add23 to i64, !dbg !1744
  %arrayidx25 = getelementptr inbounds i32, ptr %13, i64 %idxprom24, !dbg !1744
  %14 = load i32, ptr %arrayidx25, align 4, !dbg !1744
    #dbg_value(i32 %14, !1720, !DIExpression(), !1727)
  %idxprom27 = zext nneg i32 %and to i64, !dbg !1745
  %arrayidx28 = getelementptr inbounds i32, ptr %13, i64 %idxprom27, !dbg !1745
  store i32 %add, ptr %arrayidx28, align 4, !dbg !1746
  %15 = load ptr, ptr %hash, align 8, !dbg !1747
  %16 = zext nneg i32 %and12 to i64, !dbg !1748
  %17 = getelementptr inbounds i32, ptr %15, i64 %16, !dbg !1748
  %arrayidx32 = getelementptr inbounds i8, ptr %17, i64 4096, !dbg !1748
  store i32 %add, ptr %arrayidx32, align 4, !dbg !1749
  %18 = load ptr, ptr %hash, align 8, !dbg !1750
  %arrayidx36 = getelementptr inbounds i32, ptr %18, i64 %idxprom24, !dbg !1751
  store i32 %add, ptr %arrayidx36, align 4, !dbg !1752
  %19 = load i32, ptr %depth, align 4, !dbg !1753
  %20 = load ptr, ptr %son, align 8, !dbg !1753
  %21 = load i32, ptr %cyclic_pos, align 8, !dbg !1753
  %22 = load i32, ptr %cyclic_size, align 4, !dbg !1753
    #dbg_value(i32 %len_limit.0, !927, !DIExpression(), !1755)
    #dbg_value(i32 %add, !932, !DIExpression(), !1755)
    #dbg_value(ptr %add.ptr.i, !933, !DIExpression(), !1755)
    #dbg_value(i32 %14, !934, !DIExpression(), !1755)
    #dbg_value(i32 %19, !935, !DIExpression(), !1755)
    #dbg_value(ptr %20, !936, !DIExpression(), !1755)
    #dbg_value(i32 %21, !937, !DIExpression(), !1755)
    #dbg_value(i32 %22, !938, !DIExpression(), !1755)
  %shl.i = shl i32 %21, 1, !dbg !1757
  %idx.ext.i75 = zext i32 %shl.i to i64, !dbg !1758
  %add.ptr.i76 = getelementptr inbounds i32, ptr %20, i64 %idx.ext.i75, !dbg !1758
  %add.ptr1.i = getelementptr inbounds i8, ptr %add.ptr.i76, i64 4, !dbg !1759
    #dbg_value(ptr %add.ptr1.i, !939, !DIExpression(), !1755)
    #dbg_value(ptr %add.ptr.i76, !940, !DIExpression(), !1755)
    #dbg_value(i32 0, !941, !DIExpression(), !1755)
    #dbg_value(i32 0, !942, !DIExpression(), !1755)
  %sub111.i = sub i32 %add, %14, !dbg !1760
  %cmp113.i = icmp ne i32 %19, 0, !dbg !1761
  %cmp5.not114.i = icmp ult i32 %sub111.i, %22
  %or.cond115.i = and i1 %cmp113.i, %cmp5.not114.i, !dbg !1762
  br i1 %or.cond115.i, label %if.end.i, label %if.then.i, !dbg !1762

if.then.i:                                        ; preds = %cleanup58.i, %if.end5
  %ptr1.0.lcssa.i = phi ptr [ %add.ptr.i76, %if.end5 ], [ %ptr1.1.i, %cleanup58.i ], !dbg !1763
  %ptr0.0.lcssa.i = phi ptr [ %add.ptr1.i, %if.end5 ], [ %ptr0.1.i, %cleanup58.i ], !dbg !1764
  store i32 0, ptr %ptr0.0.lcssa.i, align 4, !dbg !1765
  store i32 0, ptr %ptr1.0.lcssa.i, align 4, !dbg !1766
  br label %bt_skip_func.exit, !dbg !1767

if.end.i:                                         ; preds = %if.end5, %cleanup58.i
  %dec122.in.i = phi i32 [ %dec122.i, %cleanup58.i ], [ %19, %if.end5 ]
  %sub121.i = phi i32 [ %sub.i77, %cleanup58.i ], [ %sub111.i, %if.end5 ]
  %cur_match.addr.0120.i = phi i32 [ %cur_match.addr.1.i, %cleanup58.i ], [ %14, %if.end5 ]
  %ptr0.0119.i = phi ptr [ %ptr0.1.i, %cleanup58.i ], [ %add.ptr1.i, %if.end5 ]
  %len1.0118.i = phi i32 [ %len1.1.i, %cleanup58.i ], [ 0, %if.end5 ]
  %len0.0117.i = phi i32 [ %len0.1.i, %cleanup58.i ], [ 0, %if.end5 ]
  %ptr1.0116.i = phi ptr [ %ptr1.1.i, %cleanup58.i ], [ %add.ptr.i76, %if.end5 ]
  %dec122.i = add i32 %dec122.in.i, -1, !dbg !1768
    #dbg_value(i32 %cur_match.addr.0120.i, !934, !DIExpression(), !1755)
    #dbg_value(ptr %ptr0.0119.i, !939, !DIExpression(), !1755)
    #dbg_value(i32 %len1.0118.i, !942, !DIExpression(), !1755)
    #dbg_value(i32 %len0.0117.i, !941, !DIExpression(), !1755)
    #dbg_value(ptr %ptr1.0116.i, !940, !DIExpression(), !1755)
  %sub6.i = sub i32 %21, %sub121.i, !dbg !1769
  %cmp7.i = icmp ugt i32 %sub121.i, %21, !dbg !1770
  %cond.i = select i1 %cmp7.i, i32 %22, i32 0, !dbg !1771
  %add.i = add i32 %sub6.i, %cond.i, !dbg !1772
  %shl8.i = shl i32 %add.i, 1, !dbg !1773
  %idx.ext9.i = zext i32 %shl8.i to i64, !dbg !1774
  %add.ptr10.i = getelementptr inbounds i32, ptr %20, i64 %idx.ext9.i, !dbg !1774
    #dbg_value(ptr %add.ptr10.i, !945, !DIExpression(), !1775)
  %idx.ext11.i = zext i32 %sub121.i to i64, !dbg !1776
  %idx.neg.i = sub nsw i64 0, %idx.ext11.i, !dbg !1776
  %add.ptr12.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg.i, !dbg !1776
    #dbg_value(ptr %add.ptr12.i, !946, !DIExpression(), !1775)
  %cond17.i = tail call i32 @llvm.umin.i32(i32 %len0.0117.i, i32 %len1.0118.i), !dbg !1777
    #dbg_value(i32 %cond17.i, !947, !DIExpression(), !1775)
  %idxprom.i = zext i32 %cond17.i to i64, !dbg !1778
  %arrayidx.i = getelementptr inbounds i8, ptr %add.ptr12.i, i64 %idxprom.i, !dbg !1778
  %23 = load i8, ptr %arrayidx.i, align 1, !dbg !1778
  %arrayidx19.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom.i, !dbg !1779
  %24 = load i8, ptr %arrayidx19.i, align 1, !dbg !1779
  %cmp21.i = icmp eq i8 %23, %24, !dbg !1780
  br i1 %cmp21.i, label %while.cond24.i, label %if.end44.i, !dbg !1781

while.cond24.i:                                   ; preds = %if.end.i, %while.body27.i
  %len.0.i = phi i32 [ %inc.i78, %while.body27.i ], [ %cond17.i, %if.end.i ], !dbg !1775
    #dbg_value(i32 %len.0.i, !947, !DIExpression(), !1775)
  %inc.i78 = add i32 %len.0.i, 1, !dbg !1782
    #dbg_value(i32 %inc.i78, !947, !DIExpression(), !1775)
  %cmp25.not.i = icmp eq i32 %inc.i78, %len_limit.0, !dbg !1783
  br i1 %cmp25.not.i, label %if.then40.i, label %while.body27.i, !dbg !1784

while.body27.i:                                   ; preds = %while.cond24.i
  %idxprom28.i = zext i32 %inc.i78 to i64, !dbg !1785
  %arrayidx29.i = getelementptr inbounds i8, ptr %add.ptr12.i, i64 %idxprom28.i, !dbg !1785
  %25 = load i8, ptr %arrayidx29.i, align 1, !dbg !1785
  %arrayidx32.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom28.i, !dbg !1786
  %26 = load i8, ptr %arrayidx32.i, align 1, !dbg !1786
  %cmp34.not.i = icmp eq i8 %25, %26, !dbg !1787
  br i1 %cmp34.not.i, label %while.cond24.i, label %if.end44.i, !dbg !1788, !llvm.loop !1789

if.then40.i:                                      ; preds = %while.cond24.i
  %27 = load i32, ptr %add.ptr10.i, align 4, !dbg !1791
  store i32 %27, ptr %ptr1.0116.i, align 4, !dbg !1792
  %arrayidx42.i = getelementptr inbounds i8, ptr %add.ptr10.i, i64 4, !dbg !1793
  %28 = load i32, ptr %arrayidx42.i, align 4, !dbg !1793
  store i32 %28, ptr %ptr0.0119.i, align 4, !dbg !1794
  br label %bt_skip_func.exit, !dbg !1795

if.end44.i:                                       ; preds = %while.body27.i, %if.end.i
  %29 = phi i8 [ %24, %if.end.i ], [ %26, %while.body27.i ], !dbg !1796
  %30 = phi i8 [ %23, %if.end.i ], [ %25, %while.body27.i ], !dbg !1797
  %len.1.i = phi i32 [ %cond17.i, %if.end.i ], [ %inc.i78, %while.body27.i ], !dbg !1775
    #dbg_value(i32 %len.1.i, !947, !DIExpression(), !1775)
  %cmp51.i = icmp ult i8 %30, %29, !dbg !1798
  br i1 %cmp51.i, label %if.then53.i, label %if.else.i, !dbg !1799

if.then53.i:                                      ; preds = %if.end44.i
  store i32 %cur_match.addr.0120.i, ptr %ptr1.0116.i, align 4, !dbg !1800
  %add.ptr54.i = getelementptr inbounds i8, ptr %add.ptr10.i, i64 4, !dbg !1801
    #dbg_value(ptr %add.ptr54.i, !940, !DIExpression(), !1755)
    #dbg_value(i32 poison, !934, !DIExpression(), !1755)
    #dbg_value(i32 %len.1.i, !942, !DIExpression(), !1755)
  br label %cleanup58.i, !dbg !1802

if.else.i:                                        ; preds = %if.end44.i
  store i32 %cur_match.addr.0120.i, ptr %ptr0.0119.i, align 4, !dbg !1803
    #dbg_value(ptr %add.ptr10.i, !939, !DIExpression(), !1755)
    #dbg_value(i32 poison, !934, !DIExpression(), !1755)
    #dbg_value(i32 %len.1.i, !941, !DIExpression(), !1755)
  br label %cleanup58.i

cleanup58.i:                                      ; preds = %if.else.i, %if.then53.i
  %ptr1.1.i = phi ptr [ %add.ptr54.i, %if.then53.i ], [ %ptr1.0116.i, %if.else.i ], !dbg !1755
  %len0.1.i = phi i32 [ %len0.0117.i, %if.then53.i ], [ %len.1.i, %if.else.i ], !dbg !1755
  %len1.1.i = phi i32 [ %len.1.i, %if.then53.i ], [ %len1.0118.i, %if.else.i ], !dbg !1755
  %ptr0.1.i = phi ptr [ %ptr0.0119.i, %if.then53.i ], [ %add.ptr10.i, %if.else.i ], !dbg !1755
  %cur_match.addr.1.in.i = phi ptr [ %add.ptr54.i, %if.then53.i ], [ %add.ptr10.i, %if.else.i ]
  %cur_match.addr.1.i = load i32, ptr %cur_match.addr.1.in.i, align 4, !dbg !1804
    #dbg_value(i32 %cur_match.addr.1.i, !934, !DIExpression(), !1755)
    #dbg_value(i32 %dec122.i, !935, !DIExpression(), !1755)
    #dbg_value(ptr %ptr0.1.i, !939, !DIExpression(), !1755)
    #dbg_value(i32 %len1.1.i, !942, !DIExpression(), !1755)
    #dbg_value(i32 %len0.1.i, !941, !DIExpression(), !1755)
    #dbg_value(ptr %ptr1.1.i, !940, !DIExpression(), !1755)
  %sub.i77 = sub i32 %add, %cur_match.addr.1.i, !dbg !1760
    #dbg_value(i32 %sub.i77, !943, !DIExpression(), !1775)
    #dbg_value(i32 %dec122.i, !935, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1755)
  %cmp.i = icmp ne i32 %dec122.i, 0, !dbg !1761
  %cmp5.not.i = icmp ult i32 %sub.i77, %22
  %or.cond.i = select i1 %cmp.i, i1 %cmp5.not.i, i1 false, !dbg !1762
  br i1 %or.cond.i, label %if.end.i, label %if.then.i, !dbg !1762, !llvm.loop !1805

bt_skip_func.exit:                                ; preds = %if.then.i, %if.then40.i
    #dbg_value(i32 poison, !934, !DIExpression(), !1755)
    #dbg_value(ptr poison, !939, !DIExpression(), !1755)
    #dbg_value(i32 poison, !942, !DIExpression(), !1755)
    #dbg_value(i32 poison, !941, !DIExpression(), !1755)
    #dbg_value(ptr poison, !940, !DIExpression(), !1755)
    #dbg_value(ptr %mf, !222, !DIExpression(), !1808)
  %31 = load i32, ptr %cyclic_pos, align 8, !dbg !1810
  %inc.i79 = add i32 %31, 1, !dbg !1810
  %32 = load i32, ptr %cyclic_size, align 4, !dbg !1811
  %cmp.i80 = icmp eq i32 %inc.i79, %32, !dbg !1812
  %spec.store.select.i = select i1 %cmp.i80, i32 0, i32 %inc.i79, !dbg !1813
  store i32 %spec.store.select.i, ptr %cyclic_pos, align 8, !dbg !1808
  %33 = load i32, ptr %0, align 8, !dbg !1814
  %inc2.i = add i32 %33, 1, !dbg !1814
  store i32 %inc2.i, ptr %0, align 8, !dbg !1814
  %34 = load i32, ptr %offset, align 4, !dbg !1815
  %add.i82 = add i32 %34, %inc2.i, !dbg !1815
  %cmp4.i = icmp eq i32 %add.i82, -1, !dbg !1815
  br i1 %cmp4.i, label %if.then5.i, label %cleanup, !dbg !1816

if.then5.i:                                       ; preds = %bt_skip_func.exit
    #dbg_value(ptr %mf, !236, !DIExpression(), !1817)
  %sub.i.i = xor i32 %32, -1, !dbg !1819
    #dbg_value(i32 %sub.i.i, !239, !DIExpression(), !1817)
  %35 = load i32, ptr %hash_size_sum.i.i, align 4, !dbg !1820
  %36 = load i32, ptr %sons_count.i.i, align 8, !dbg !1821
  %add.i.i = add i32 %36, %35, !dbg !1822
    #dbg_value(i32 %add.i.i, !240, !DIExpression(), !1817)
  %37 = load ptr, ptr %hash, align 8, !dbg !1823
    #dbg_value(ptr %37, !241, !DIExpression(), !1817)
    #dbg_value(i32 0, !242, !DIExpression(), !1824)
  %cmp21.not.i.i = icmp eq i32 %add.i.i, 0, !dbg !1825
  br i1 %cmp21.not.i.i, label %normalize.exit.i, label %for.body.preheader.i.i, !dbg !1826

for.body.preheader.i.i:                           ; preds = %if.then5.i
  %wide.trip.count.i.i = zext i32 %add.i.i to i64, !dbg !1825
  %min.iters.check = icmp ult i32 %add.i.i, 16, !dbg !1826
  br i1 %min.iters.check, label %for.body.i.i.preheader, label %vector.ph, !dbg !1826

vector.ph:                                        ; preds = %for.body.preheader.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 4294967280, !dbg !1826
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %sub.i.i, i64 0, !dbg !1826
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !1826
  br label %vector.body, !dbg !1826

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !1827
  %38 = getelementptr inbounds i32, ptr %37, i64 %index, !dbg !1828
  %39 = getelementptr inbounds i8, ptr %38, i64 16, !dbg !1828
  %40 = getelementptr inbounds i8, ptr %38, i64 32, !dbg !1828
  %41 = getelementptr inbounds i8, ptr %38, i64 48, !dbg !1828
  %wide.load = load <4 x i32>, ptr %38, align 4, !dbg !1828
  %wide.load103 = load <4 x i32>, ptr %39, align 4, !dbg !1828
  %wide.load104 = load <4 x i32>, ptr %40, align 4, !dbg !1828
  %wide.load105 = load <4 x i32>, ptr %41, align 4, !dbg !1828
  %42 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load, <4 x i32> %broadcast.splat), !dbg !1829
  %43 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load103, <4 x i32> %broadcast.splat), !dbg !1829
  %44 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load104, <4 x i32> %broadcast.splat), !dbg !1829
  %45 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load105, <4 x i32> %broadcast.splat), !dbg !1829
  store <4 x i32> %42, ptr %38, align 4, !dbg !1830
  store <4 x i32> %43, ptr %39, align 4, !dbg !1830
  store <4 x i32> %44, ptr %40, align 4, !dbg !1830
  store <4 x i32> %45, ptr %41, align 4, !dbg !1830
  %index.next = add nuw i64 %index, 16, !dbg !1827
  %46 = icmp eq i64 %index.next, %n.vec, !dbg !1827
  br i1 %46, label %middle.block, label %vector.body, !dbg !1827, !llvm.loop !1831

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i, !dbg !1826
  br i1 %cmp.n, label %normalize.exit.loopexit.i, label %for.body.i.i.preheader, !dbg !1826

for.body.i.i.preheader:                           ; preds = %middle.block, %for.body.preheader.i.i
  %indvars.iv.i.i.ph = phi i64 [ 0, %for.body.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %for.body.i.i, !dbg !1826

for.body.i.i:                                     ; preds = %for.body.i.i.preheader, %for.body.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %for.body.i.i ], [ %indvars.iv.i.i.ph, %for.body.i.i.preheader ]
    #dbg_value(i64 %indvars.iv.i.i, !242, !DIExpression(), !1824)
  %arrayidx.i.i = getelementptr inbounds i32, ptr %37, i64 %indvars.iv.i.i, !dbg !1828
  %47 = load i32, ptr %arrayidx.i.i, align 4, !dbg !1828
  %storemerge.i.i = tail call i32 @llvm.usub.sat.i32(i32 %47, i32 %sub.i.i), !dbg !1829
  store i32 %storemerge.i.i, ptr %arrayidx.i.i, align 4, !dbg !1830
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1, !dbg !1827
    #dbg_value(i64 %indvars.iv.next.i.i, !242, !DIExpression(), !1824)
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i, !dbg !1825
  br i1 %exitcond.not.i.i, label %normalize.exit.loopexit.i, label %for.body.i.i, !dbg !1826, !llvm.loop !1833

normalize.exit.loopexit.i:                        ; preds = %for.body.i.i, %middle.block
  %.pre.i = load i32, ptr %offset, align 4, !dbg !1834
  br label %normalize.exit.i, !dbg !1834

normalize.exit.i:                                 ; preds = %normalize.exit.loopexit.i, %if.then5.i
  %48 = phi i32 [ %.pre.i, %normalize.exit.loopexit.i ], [ %34, %if.then5.i ], !dbg !1834
  %sub8.i.i = sub i32 %48, %sub.i.i, !dbg !1834
  store i32 %sub8.i.i, ptr %offset, align 4, !dbg !1834
  br label %cleanup, !dbg !1835

cleanup:                                          ; preds = %normalize.exit.i, %bt_skip_func.exit, %if.then4
  %dec = add i32 %amount.addr.0, -1, !dbg !1836
    #dbg_value(i32 %dec, !1711, !DIExpression(), !1721)
  %cmp39.not = icmp eq i32 %dec, 0, !dbg !1837
  br i1 %cmp39.not, label %do.end41, label %do.body, !dbg !1838, !llvm.loop !1839

do.end41:                                         ; preds = %cleanup
  ret void, !dbg !1841
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.usub.sat.v4i32(<4 x i32>, <4 x i32>) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !11, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "liblzma/lz/lz_encoder_mf.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "5d460b327ab3f2eae21e0870eafddd6d")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 250, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "liblzma/api/lzma/base.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "81a3070447cc5b61b56cfbed076853db")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10}
!7 = !DIEnumerator(name: "LZMA_RUN", value: 0)
!8 = !DIEnumerator(name: "LZMA_SYNC_FLUSH", value: 1)
!9 = !DIEnumerator(name: "LZMA_FULL_FLUSH", value: 2)
!10 = !DIEnumerator(name: "LZMA_FINISH", value: 3)
!11 = !{!12}
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !13, line: 26, baseType: !14)
!13 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !15, line: 42, baseType: !5)
!15 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!16 = !{i32 7, !"Dwarf Version", i32 5}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{i32 8, !"PIC Level", i32 2}
!20 = !{i32 7, !"PIE Level", i32 2}
!21 = !{i32 7, !"uwtable", i32 2}
!22 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!23 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!24 = distinct !DISubprogram(name: "lzma_mf_find", scope: !1, file: !1, line: 22, type: !25, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!25 = !DISubroutineType(types: !26)
!26 = !{!12, !27, !61, !50}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_mf", file: !29, line: 28, baseType: !30)
!29 = !DIFile(filename: "liblzma/lz/lz_encoder.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "780f78e6e21a3ca52f57df68bfdc6f53")
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_mf_s", file: !29, line: 29, size: 960, elements: !31)
!31 = !{!32, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !56, !60, !62, !63, !64, !65, !66, !67, !68, !69, !71, !72}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !30, file: !29, line: 35, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !13, line: 24, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !15, line: 38, baseType: !36)
!36 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !30, file: !29, line: 39, baseType: !12, size: 32, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "keep_size_before", scope: !30, file: !29, line: 45, baseType: !12, size: 32, offset: 96)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "keep_size_after", scope: !30, file: !29, line: 51, baseType: !12, size: 32, offset: 128)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !30, file: !29, line: 58, baseType: !12, size: 32, offset: 160)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !30, file: !29, line: 63, baseType: !12, size: 32, offset: 192)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "read_ahead", scope: !30, file: !29, line: 67, baseType: !12, size: 32, offset: 224)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "read_limit", scope: !30, file: !29, line: 75, baseType: !12, size: 32, offset: 256)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "write_pos", scope: !30, file: !29, line: 80, baseType: !12, size: 32, offset: 288)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !30, file: !29, line: 84, baseType: !12, size: 32, offset: 320)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "find", scope: !30, file: !29, line: 92, baseType: !47, size: 64, offset: 384)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DISubroutineType(types: !49)
!49 = !{!12, !27, !50}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_match", file: !29, line: 25, baseType: !52)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !29, line: 22, size: 64, elements: !53)
!53 = !{!54, !55}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !52, file: !29, line: 23, baseType: !12, size: 32)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "dist", scope: !52, file: !29, line: 24, baseType: !12, size: 32, offset: 32)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !30, file: !29, line: 97, baseType: !57, size: 64, offset: 448)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DISubroutineType(types: !59)
!59 = !{null, !27, !12}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !30, file: !29, line: 99, baseType: !61, size: 64, offset: 512)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "son", scope: !30, file: !29, line: 100, baseType: !61, size: 64, offset: 576)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "cyclic_pos", scope: !30, file: !29, line: 101, baseType: !12, size: 32, offset: 640)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "cyclic_size", scope: !30, file: !29, line: 102, baseType: !12, size: 32, offset: 672)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "hash_mask", scope: !30, file: !29, line: 103, baseType: !12, size: 32, offset: 704)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !30, file: !29, line: 106, baseType: !12, size: 32, offset: 736)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "nice_len", scope: !30, file: !29, line: 109, baseType: !12, size: 32, offset: 768)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "match_len_max", scope: !30, file: !29, line: 114, baseType: !12, size: 32, offset: 800)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !30, file: !29, line: 119, baseType: !70, size: 32, offset: 832)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !4, line: 322, baseType: !3)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "hash_size_sum", scope: !30, file: !29, line: 122, baseType: !12, size: 32, offset: 864)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "sons_count", scope: !30, file: !29, line: 125, baseType: !12, size: 32, offset: 896)
!73 = !{!74, !75, !76, !77, !79, !80, !85, !88}
!74 = !DILocalVariable(name: "mf", arg: 1, scope: !24, file: !1, line: 22, type: !27)
!75 = !DILocalVariable(name: "count_ptr", arg: 2, scope: !24, file: !1, line: 22, type: !61)
!76 = !DILocalVariable(name: "matches", arg: 3, scope: !24, file: !1, line: 22, type: !50)
!77 = !DILocalVariable(name: "count", scope: !24, file: !1, line: 27, type: !78)
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!79 = !DILocalVariable(name: "len_best", scope: !24, file: !1, line: 31, type: !12)
!80 = !DILocalVariable(name: "limit", scope: !81, file: !1, line: 56, type: !12)
!81 = distinct !DILexicalBlock(scope: !82, file: !1, line: 51, column: 33)
!82 = distinct !DILexicalBlock(scope: !83, file: !1, line: 51, column: 7)
!83 = distinct !DILexicalBlock(scope: !84, file: !1, line: 33, column: 17)
!84 = distinct !DILexicalBlock(scope: !24, file: !1, line: 33, column: 6)
!85 = !DILocalVariable(name: "p1", scope: !81, file: !1, line: 62, type: !86)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!88 = !DILocalVariable(name: "p2", scope: !81, file: !1, line: 66, type: !86)
!89 = !DILocation(line: 0, scope: !24)
!90 = !DILocation(line: 27, column: 29, scope: !24)
!91 = !DILocation(line: 27, column: 25, scope: !24)
!92 = !DILocation(line: 33, column: 12, scope: !84)
!93 = !DILocation(line: 33, column: 6, scope: !24)
!94 = !DILocation(line: 47, column: 28, scope: !83)
!95 = !DILocation(line: 47, column: 14, scope: !83)
!96 = !DILocation(line: 47, column: 33, scope: !83)
!97 = !DILocation(line: 51, column: 23, scope: !82)
!98 = !DILocation(line: 51, column: 16, scope: !82)
!99 = !DILocation(line: 51, column: 7, scope: !83)
!100 = !DILocation(line: 56, column: 21, scope: !81)
!101 = !DILocation(line: 56, column: 34, scope: !81)
!102 = !DILocation(line: 0, scope: !81)
!103 = !DILocation(line: 57, column: 20, scope: !104)
!104 = distinct !DILexicalBlock(scope: !81, file: !1, line: 57, column: 8)
!105 = !DILocation(line: 57, column: 8, scope: !81)
!106 = !DILocation(line: 62, column: 24, scope: !81)
!107 = !DILocalVariable(name: "mf", arg: 1, scope: !108, file: !29, line: 222, type: !111)
!108 = distinct !DISubprogram(name: "mf_ptr", scope: !29, file: !29, line: 222, type: !109, scopeLine: 223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !113)
!109 = !DISubroutineType(types: !110)
!110 = !{!86, !111}
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!113 = !{!107}
!114 = !DILocation(line: 0, scope: !108, inlinedAt: !115)
!115 = distinct !DILocation(line: 62, column: 24, scope: !81)
!116 = !DILocation(line: 224, column: 20, scope: !108, inlinedAt: !115)
!117 = !DILocation(line: 62, column: 35, scope: !81)
!118 = !DILocation(line: 66, column: 48, scope: !81)
!119 = !DILocation(line: 66, column: 27, scope: !81)
!120 = !DILocation(line: 66, column: 53, scope: !81)
!121 = !DILocation(line: 68, column: 20, scope: !81)
!122 = !DILocation(line: 69, column: 6, scope: !81)
!123 = !DILocation(line: 68, column: 4, scope: !81)
!124 = !DILocation(line: 69, column: 9, scope: !81)
!125 = !DILocation(line: 69, column: 25, scope: !81)
!126 = !DILocation(line: 69, column: 22, scope: !81)
!127 = !DILocation(line: 70, column: 5, scope: !81)
!128 = distinct !{!128, !123, !129}
!129 = !DILocation(line: 70, column: 7, scope: !81)
!130 = !DILocation(line: 74, column: 13, scope: !24)
!131 = !DILocation(line: 78, column: 8, scope: !24)
!132 = !DILocation(line: 78, column: 2, scope: !24)
!133 = !DILocation(line: 80, column: 2, scope: !24)
!134 = distinct !DISubprogram(name: "lzma_mf_hc3_find", scope: !1, file: !1, line: 306, type: !48, scopeLine: 307, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !135)
!135 = !{!136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147}
!136 = !DILocalVariable(name: "mf", arg: 1, scope: !134, file: !1, line: 306, type: !27)
!137 = !DILocalVariable(name: "matches", arg: 2, scope: !134, file: !1, line: 306, type: !50)
!138 = !DILocalVariable(name: "len_limit", scope: !134, file: !1, line: 308, type: !12)
!139 = !DILocalVariable(name: "cur", scope: !134, file: !1, line: 308, type: !86)
!140 = !DILocalVariable(name: "pos", scope: !134, file: !1, line: 308, type: !78)
!141 = !DILocalVariable(name: "matches_count", scope: !134, file: !1, line: 308, type: !12)
!142 = !DILocalVariable(name: "temp", scope: !134, file: !1, line: 310, type: !78)
!143 = !DILocalVariable(name: "hash_2_value", scope: !134, file: !1, line: 310, type: !78)
!144 = !DILocalVariable(name: "hash_value", scope: !134, file: !1, line: 310, type: !78)
!145 = !DILocalVariable(name: "delta2", scope: !134, file: !1, line: 312, type: !78)
!146 = !DILocalVariable(name: "cur_match", scope: !134, file: !1, line: 313, type: !78)
!147 = !DILocalVariable(name: "len_best", scope: !134, file: !1, line: 318, type: !12)
!148 = !DILocation(line: 0, scope: !134)
!149 = !DILocation(line: 308, column: 2, scope: !134)
!150 = !DILocalVariable(name: "mf", arg: 1, scope: !151, file: !29, line: 230, type: !111)
!151 = distinct !DISubprogram(name: "mf_avail", scope: !29, file: !29, line: 230, type: !152, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !154)
!152 = !DISubroutineType(types: !153)
!153 = !{!12, !111}
!154 = !{!150}
!155 = !DILocation(line: 0, scope: !151, inlinedAt: !156)
!156 = distinct !DILocation(line: 308, column: 2, scope: !134)
!157 = !DILocation(line: 232, column: 23, scope: !151, inlinedAt: !156)
!158 = !DILocation(line: 308, column: 2, scope: !159)
!159 = distinct !DILexicalBlock(scope: !134, file: !1, line: 308, column: 2)
!160 = !DILocation(line: 308, column: 2, scope: !161)
!161 = distinct !DILexicalBlock(scope: !159, file: !1, line: 308, column: 2)
!162 = !DILocalVariable(name: "mf", arg: 1, scope: !163, file: !1, line: 176, type: !27)
!163 = distinct !DISubprogram(name: "move_pending", scope: !1, file: !1, line: 176, type: !164, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !166)
!164 = !DISubroutineType(types: !165)
!165 = !{null, !27}
!166 = !{!162}
!167 = !DILocation(line: 0, scope: !163, inlinedAt: !168)
!168 = distinct !DILocation(line: 308, column: 2, scope: !169)
!169 = distinct !DILexicalBlock(scope: !161, file: !1, line: 308, column: 2)
!170 = !DILocation(line: 178, column: 2, scope: !163, inlinedAt: !168)
!171 = !DILocation(line: 180, column: 8, scope: !163, inlinedAt: !168)
!172 = !DILocation(line: 180, column: 2, scope: !163, inlinedAt: !168)
!173 = !DILocation(line: 308, column: 2, scope: !169)
!174 = !DILocation(line: 0, scope: !108, inlinedAt: !175)
!175 = distinct !DILocation(line: 308, column: 2, scope: !134)
!176 = !DILocation(line: 224, column: 20, scope: !108, inlinedAt: !175)
!177 = !DILocation(line: 310, column: 2, scope: !134)
!178 = !DILocation(line: 312, column: 36, scope: !134)
!179 = !DILocation(line: 312, column: 32, scope: !134)
!180 = !DILocation(line: 312, column: 30, scope: !134)
!181 = !DILocation(line: 313, column: 54, scope: !134)
!182 = !DILocation(line: 313, column: 29, scope: !134)
!183 = !DILocation(line: 315, column: 25, scope: !134)
!184 = !DILocation(line: 316, column: 6, scope: !134)
!185 = !DILocation(line: 316, column: 2, scope: !134)
!186 = !DILocation(line: 316, column: 41, scope: !134)
!187 = !DILocation(line: 320, column: 19, scope: !188)
!188 = distinct !DILexicalBlock(scope: !134, file: !1, line: 320, column: 6)
!189 = !DILocation(line: 320, column: 13, scope: !188)
!190 = !DILocation(line: 320, column: 31, scope: !188)
!191 = !DILocation(line: 320, column: 40, scope: !188)
!192 = !DILocation(line: 320, column: 34, scope: !188)
!193 = !DILocation(line: 320, column: 53, scope: !188)
!194 = !DILocation(line: 320, column: 50, scope: !188)
!195 = !DILocation(line: 320, column: 6, scope: !134)
!196 = !DILocation(line: 321, column: 20, scope: !197)
!197 = distinct !DILexicalBlock(scope: !198, file: !1, line: 321, column: 3)
!198 = distinct !DILexicalBlock(scope: !199, file: !1, line: 321, column: 3)
!199 = distinct !DILexicalBlock(scope: !188, file: !1, line: 320, column: 59)
!200 = !DILocation(line: 321, column: 3, scope: !198)
!201 = !DILocation(line: 322, column: 14, scope: !202)
!202 = distinct !DILexicalBlock(scope: !197, file: !1, line: 322, column: 8)
!203 = !DILocation(line: 322, column: 25, scope: !202)
!204 = !DILocation(line: 322, column: 8, scope: !202)
!205 = !DILocation(line: 322, column: 38, scope: !202)
!206 = !DILocation(line: 322, column: 35, scope: !202)
!207 = !DILocation(line: 322, column: 8, scope: !197)
!208 = !DILocation(line: 321, column: 34, scope: !197)
!209 = distinct !{!209, !200, !210}
!210 = !DILocation(line: 323, column: 5, scope: !198)
!211 = !DILocation(line: 325, column: 18, scope: !199)
!212 = !DILocation(line: 326, column: 28, scope: !199)
!213 = !DILocation(line: 326, column: 14, scope: !199)
!214 = !DILocation(line: 326, column: 19, scope: !199)
!215 = !DILocation(line: 335, column: 2, scope: !216)
!216 = distinct !DILexicalBlock(scope: !134, file: !1, line: 335, column: 2)
!217 = !DILocation(line: 329, column: 7, scope: !199)
!218 = !DILocation(line: 330, column: 4, scope: !219)
!219 = distinct !DILexicalBlock(scope: !220, file: !1, line: 330, column: 4)
!220 = distinct !DILexicalBlock(scope: !221, file: !1, line: 329, column: 30)
!221 = distinct !DILexicalBlock(scope: !199, file: !1, line: 329, column: 7)
!222 = !DILocalVariable(name: "mf", arg: 1, scope: !223, file: !1, line: 148, type: !27)
!223 = distinct !DISubprogram(name: "move_pos", scope: !1, file: !1, line: 148, type: !164, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !224)
!224 = !{!222}
!225 = !DILocation(line: 0, scope: !223, inlinedAt: !226)
!226 = distinct !DILocation(line: 330, column: 4, scope: !219)
!227 = !DILocation(line: 150, column: 6, scope: !228, inlinedAt: !226)
!228 = distinct !DILexicalBlock(scope: !223, file: !1, line: 150, column: 6)
!229 = !DILocation(line: 150, column: 30, scope: !228, inlinedAt: !226)
!230 = !DILocation(line: 150, column: 23, scope: !228, inlinedAt: !226)
!231 = !DILocation(line: 150, column: 6, scope: !223, inlinedAt: !226)
!232 = !DILocation(line: 153, column: 2, scope: !223, inlinedAt: !226)
!233 = !DILocation(line: 156, column: 6, scope: !234, inlinedAt: !226)
!234 = distinct !DILexicalBlock(scope: !223, file: !1, line: 156, column: 6)
!235 = !DILocation(line: 156, column: 6, scope: !223, inlinedAt: !226)
!236 = !DILocalVariable(name: "mf", arg: 1, scope: !237, file: !1, line: 109, type: !27)
!237 = distinct !DISubprogram(name: "normalize", scope: !1, file: !1, line: 109, type: !164, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !238)
!238 = !{!236, !239, !240, !241, !242}
!239 = !DILocalVariable(name: "subvalue", scope: !237, file: !1, line: 115, type: !78)
!240 = !DILocalVariable(name: "count", scope: !237, file: !1, line: 119, type: !78)
!241 = !DILocalVariable(name: "hash", scope: !237, file: !1, line: 120, type: !61)
!242 = !DILocalVariable(name: "i", scope: !243, file: !1, line: 122, type: !12)
!243 = distinct !DILexicalBlock(scope: !237, file: !1, line: 122, column: 2)
!244 = !DILocation(line: 0, scope: !237, inlinedAt: !245)
!245 = distinct !DILocation(line: 157, column: 3, scope: !234, inlinedAt: !226)
!246 = !DILocation(line: 116, column: 26, scope: !237, inlinedAt: !245)
!247 = !DILocation(line: 119, column: 29, scope: !237, inlinedAt: !245)
!248 = !DILocation(line: 119, column: 49, scope: !237, inlinedAt: !245)
!249 = !DILocation(line: 119, column: 43, scope: !237, inlinedAt: !245)
!250 = !DILocation(line: 120, column: 23, scope: !237, inlinedAt: !245)
!251 = !DILocation(line: 0, scope: !243, inlinedAt: !245)
!252 = !DILocation(line: 122, column: 25, scope: !253, inlinedAt: !245)
!253 = distinct !DILexicalBlock(scope: !243, file: !1, line: 122, column: 2)
!254 = !DILocation(line: 122, column: 2, scope: !243, inlinedAt: !245)
!255 = !DILocation(line: 122, column: 34, scope: !253, inlinedAt: !245)
!256 = !DILocation(line: 133, column: 7, scope: !257, inlinedAt: !245)
!257 = distinct !DILexicalBlock(scope: !258, file: !1, line: 133, column: 7)
!258 = distinct !DILexicalBlock(scope: !253, file: !1, line: 122, column: 39)
!259 = !DILocation(line: 133, column: 7, scope: !258, inlinedAt: !245)
!260 = !DILocation(line: 0, scope: !257, inlinedAt: !245)
!261 = distinct !{!261, !254, !262, !263, !264}
!262 = !DILocation(line: 137, column: 2, scope: !243, inlinedAt: !245)
!263 = !{!"llvm.loop.isvectorized", i32 1}
!264 = !{!"llvm.loop.unroll.runtime.disable"}
!265 = distinct !{!265, !254, !262, !264, !263}
!266 = !DILocation(line: 140, column: 13, scope: !237, inlinedAt: !245)
!267 = !DILocation(line: 157, column: 3, scope: !234, inlinedAt: !226)
!268 = !DILocation(line: 318, column: 11, scope: !134)
!269 = !DILocalVariable(name: "len_limit", arg: 1, scope: !270, file: !1, line: 249, type: !78)
!270 = distinct !DISubprogram(name: "hc_find_func", scope: !1, file: !1, line: 248, type: !271, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !275)
!271 = !DISubroutineType(types: !272)
!272 = !{!50, !78, !78, !273, !12, !12, !274, !78, !78, !50, !12}
!273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!275 = !{!269, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !287, !288}
!276 = !DILocalVariable(name: "pos", arg: 2, scope: !270, file: !1, line: 250, type: !78)
!277 = !DILocalVariable(name: "cur", arg: 3, scope: !270, file: !1, line: 251, type: !273)
!278 = !DILocalVariable(name: "cur_match", arg: 4, scope: !270, file: !1, line: 252, type: !12)
!279 = !DILocalVariable(name: "depth", arg: 5, scope: !270, file: !1, line: 253, type: !12)
!280 = !DILocalVariable(name: "son", arg: 6, scope: !270, file: !1, line: 254, type: !274)
!281 = !DILocalVariable(name: "cyclic_pos", arg: 7, scope: !270, file: !1, line: 255, type: !78)
!282 = !DILocalVariable(name: "cyclic_size", arg: 8, scope: !270, file: !1, line: 256, type: !78)
!283 = !DILocalVariable(name: "matches", arg: 9, scope: !270, file: !1, line: 257, type: !50)
!284 = !DILocalVariable(name: "len_best", arg: 10, scope: !270, file: !1, line: 258, type: !12)
!285 = !DILocalVariable(name: "delta", scope: !286, file: !1, line: 263, type: !78)
!286 = distinct !DILexicalBlock(scope: !270, file: !1, line: 262, column: 15)
!287 = !DILocalVariable(name: "pb", scope: !286, file: !1, line: 267, type: !273)
!288 = !DILocalVariable(name: "len", scope: !289, file: !1, line: 272, type: !12)
!289 = distinct !DILexicalBlock(scope: !290, file: !1, line: 271, column: 57)
!290 = distinct !DILexicalBlock(scope: !286, file: !1, line: 271, column: 7)
!291 = !DILocation(line: 0, scope: !270, inlinedAt: !292)
!292 = distinct !DILocation(line: 335, column: 2, scope: !216)
!293 = !DILocation(line: 260, column: 2, scope: !270, inlinedAt: !292)
!294 = !DILocation(line: 260, column: 18, scope: !270, inlinedAt: !292)
!295 = !DILocation(line: 263, column: 30, scope: !286, inlinedAt: !292)
!296 = !DILocation(line: 264, column: 15, scope: !297, inlinedAt: !292)
!297 = distinct !DILexicalBlock(scope: !286, file: !1, line: 264, column: 7)
!298 = !DILocation(line: 264, column: 20, scope: !297, inlinedAt: !292)
!299 = !DILocation(line: 271, column: 37, scope: !290, inlinedAt: !292)
!300 = !DILocation(line: 264, column: 12, scope: !297, inlinedAt: !292)
!301 = !DILocation(line: 267, column: 33, scope: !286, inlinedAt: !292)
!302 = !DILocation(line: 0, scope: !286, inlinedAt: !292)
!303 = !DILocation(line: 268, column: 30, scope: !286, inlinedAt: !292)
!304 = !DILocation(line: 269, column: 14, scope: !286, inlinedAt: !292)
!305 = !DILocation(line: 269, column: 8, scope: !286, inlinedAt: !292)
!306 = !DILocation(line: 269, column: 5, scope: !286, inlinedAt: !292)
!307 = !DILocation(line: 268, column: 15, scope: !286, inlinedAt: !292)
!308 = !DILocation(line: 271, column: 7, scope: !290, inlinedAt: !292)
!309 = !DILocation(line: 271, column: 23, scope: !290, inlinedAt: !292)
!310 = !DILocation(line: 271, column: 20, scope: !290, inlinedAt: !292)
!311 = !DILocation(line: 271, column: 40, scope: !290, inlinedAt: !292)
!312 = !DILocation(line: 271, column: 49, scope: !290, inlinedAt: !292)
!313 = !DILocation(line: 271, column: 46, scope: !290, inlinedAt: !292)
!314 = !DILocation(line: 271, column: 7, scope: !286, inlinedAt: !292)
!315 = !DILocation(line: 0, scope: !289, inlinedAt: !292)
!316 = !DILocation(line: 273, column: 17, scope: !289, inlinedAt: !292)
!317 = !DILocation(line: 273, column: 4, scope: !289, inlinedAt: !292)
!318 = !DILocation(line: 273, column: 11, scope: !289, inlinedAt: !292)
!319 = !DILocation(line: 274, column: 9, scope: !320, inlinedAt: !292)
!320 = distinct !DILexicalBlock(scope: !289, file: !1, line: 274, column: 9)
!321 = !DILocation(line: 274, column: 20, scope: !320, inlinedAt: !292)
!322 = !DILocation(line: 274, column: 17, scope: !320, inlinedAt: !292)
!323 = !DILocation(line: 274, column: 9, scope: !289, inlinedAt: !292)
!324 = distinct !{!324, !317, !325}
!325 = !DILocation(line: 275, column: 6, scope: !289, inlinedAt: !292)
!326 = !DILocation(line: 277, column: 17, scope: !327, inlinedAt: !292)
!327 = distinct !DILexicalBlock(scope: !289, file: !1, line: 277, column: 8)
!328 = !DILocation(line: 277, column: 8, scope: !289, inlinedAt: !292)
!329 = !DILocation(line: 279, column: 18, scope: !330, inlinedAt: !292)
!330 = distinct !DILexicalBlock(scope: !327, file: !1, line: 277, column: 24)
!331 = !DILocation(line: 280, column: 27, scope: !330, inlinedAt: !292)
!332 = !DILocation(line: 280, column: 14, scope: !330, inlinedAt: !292)
!333 = !DILocation(line: 280, column: 19, scope: !330, inlinedAt: !292)
!334 = !DILocation(line: 281, column: 5, scope: !330, inlinedAt: !292)
!335 = !DILocation(line: 0, scope: !223, inlinedAt: !336)
!336 = distinct !DILocation(line: 335, column: 2, scope: !216)
!337 = !DILocation(line: 150, column: 6, scope: !228, inlinedAt: !336)
!338 = !DILocation(line: 150, column: 30, scope: !228, inlinedAt: !336)
!339 = !DILocation(line: 150, column: 23, scope: !228, inlinedAt: !336)
!340 = !DILocation(line: 150, column: 6, scope: !223, inlinedAt: !336)
!341 = !DILocation(line: 153, column: 2, scope: !223, inlinedAt: !336)
!342 = !DILocation(line: 156, column: 6, scope: !234, inlinedAt: !336)
!343 = !DILocation(line: 156, column: 6, scope: !223, inlinedAt: !336)
!344 = !DILocation(line: 0, scope: !237, inlinedAt: !345)
!345 = distinct !DILocation(line: 157, column: 3, scope: !234, inlinedAt: !336)
!346 = !DILocation(line: 116, column: 26, scope: !237, inlinedAt: !345)
!347 = !DILocation(line: 119, column: 29, scope: !237, inlinedAt: !345)
!348 = !DILocation(line: 119, column: 49, scope: !237, inlinedAt: !345)
!349 = !DILocation(line: 119, column: 43, scope: !237, inlinedAt: !345)
!350 = !DILocation(line: 120, column: 23, scope: !237, inlinedAt: !345)
!351 = !DILocation(line: 0, scope: !243, inlinedAt: !345)
!352 = !DILocation(line: 122, column: 25, scope: !253, inlinedAt: !345)
!353 = !DILocation(line: 122, column: 2, scope: !243, inlinedAt: !345)
!354 = !DILocation(line: 122, column: 34, scope: !253, inlinedAt: !345)
!355 = !DILocation(line: 133, column: 7, scope: !257, inlinedAt: !345)
!356 = !DILocation(line: 133, column: 7, scope: !258, inlinedAt: !345)
!357 = !DILocation(line: 0, scope: !257, inlinedAt: !345)
!358 = distinct !{!358, !353, !359, !263, !264}
!359 = !DILocation(line: 137, column: 2, scope: !243, inlinedAt: !345)
!360 = distinct !{!360, !353, !359, !264, !263}
!361 = !DILocation(line: 140, column: 13, scope: !237, inlinedAt: !345)
!362 = !DILocation(line: 157, column: 3, scope: !234, inlinedAt: !336)
!363 = !DILocation(line: 336, column: 1, scope: !134)
!364 = distinct !DISubprogram(name: "lzma_mf_hc3_skip", scope: !1, file: !1, line: 340, type: !58, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !365)
!365 = !{!366, !367, !368, !370, !371, !372, !373, !374}
!366 = !DILocalVariable(name: "mf", arg: 1, scope: !364, file: !1, line: 340, type: !27)
!367 = !DILocalVariable(name: "amount", arg: 2, scope: !364, file: !1, line: 340, type: !12)
!368 = !DILocalVariable(name: "cur", scope: !369, file: !1, line: 348, type: !86)
!369 = distinct !DILexicalBlock(scope: !364, file: !1, line: 342, column: 5)
!370 = !DILocalVariable(name: "pos", scope: !369, file: !1, line: 349, type: !78)
!371 = !DILocalVariable(name: "temp", scope: !369, file: !1, line: 351, type: !78)
!372 = !DILocalVariable(name: "hash_2_value", scope: !369, file: !1, line: 351, type: !78)
!373 = !DILocalVariable(name: "hash_value", scope: !369, file: !1, line: 351, type: !78)
!374 = !DILocalVariable(name: "cur_match", scope: !369, file: !1, line: 353, type: !78)
!375 = !DILocation(line: 0, scope: !364)
!376 = !DILocation(line: 342, column: 2, scope: !364)
!377 = !DILocation(line: 343, column: 7, scope: !378)
!378 = distinct !DILexicalBlock(scope: !369, file: !1, line: 343, column: 7)
!379 = !DILocation(line: 0, scope: !151, inlinedAt: !380)
!380 = distinct !DILocation(line: 343, column: 7, scope: !378)
!381 = !DILocation(line: 232, column: 23, scope: !151, inlinedAt: !380)
!382 = !DILocation(line: 343, column: 20, scope: !378)
!383 = !DILocation(line: 343, column: 7, scope: !369)
!384 = !DILocation(line: 0, scope: !163, inlinedAt: !385)
!385 = distinct !DILocation(line: 344, column: 4, scope: !386)
!386 = distinct !DILexicalBlock(scope: !378, file: !1, line: 343, column: 25)
!387 = !DILocation(line: 178, column: 2, scope: !163, inlinedAt: !385)
!388 = !DILocation(line: 180, column: 2, scope: !163, inlinedAt: !385)
!389 = !DILocation(line: 345, column: 4, scope: !386)
!390 = !DILocation(line: 348, column: 24, scope: !369)
!391 = !DILocation(line: 0, scope: !108, inlinedAt: !392)
!392 = distinct !DILocation(line: 348, column: 24, scope: !369)
!393 = !DILocation(line: 224, column: 20, scope: !108, inlinedAt: !392)
!394 = !DILocation(line: 0, scope: !369)
!395 = !DILocation(line: 349, column: 43, scope: !369)
!396 = !DILocation(line: 349, column: 37, scope: !369)
!397 = !DILocation(line: 351, column: 3, scope: !369)
!398 = !DILocation(line: 354, column: 11, scope: !369)
!399 = !DILocation(line: 354, column: 32, scope: !369)
!400 = !DILocation(line: 354, column: 7, scope: !369)
!401 = !DILocation(line: 356, column: 3, scope: !369)
!402 = !DILocation(line: 356, column: 26, scope: !369)
!403 = !DILocation(line: 357, column: 7, scope: !369)
!404 = !DILocation(line: 357, column: 3, scope: !369)
!405 = !DILocation(line: 357, column: 42, scope: !369)
!406 = !DILocation(line: 359, column: 3, scope: !407)
!407 = distinct !DILexicalBlock(scope: !369, file: !1, line: 359, column: 3)
!408 = !DILocation(line: 0, scope: !223, inlinedAt: !409)
!409 = distinct !DILocation(line: 359, column: 3, scope: !407)
!410 = !DILocation(line: 150, column: 6, scope: !228, inlinedAt: !409)
!411 = !DILocation(line: 150, column: 30, scope: !228, inlinedAt: !409)
!412 = !DILocation(line: 150, column: 23, scope: !228, inlinedAt: !409)
!413 = !DILocation(line: 150, column: 6, scope: !223, inlinedAt: !409)
!414 = !DILocation(line: 153, column: 2, scope: !223, inlinedAt: !409)
!415 = !DILocation(line: 156, column: 6, scope: !234, inlinedAt: !409)
!416 = !DILocation(line: 156, column: 6, scope: !223, inlinedAt: !409)
!417 = !DILocation(line: 0, scope: !237, inlinedAt: !418)
!418 = distinct !DILocation(line: 157, column: 3, scope: !234, inlinedAt: !409)
!419 = !DILocation(line: 116, column: 26, scope: !237, inlinedAt: !418)
!420 = !DILocation(line: 119, column: 29, scope: !237, inlinedAt: !418)
!421 = !DILocation(line: 119, column: 49, scope: !237, inlinedAt: !418)
!422 = !DILocation(line: 119, column: 43, scope: !237, inlinedAt: !418)
!423 = !DILocation(line: 120, column: 23, scope: !237, inlinedAt: !418)
!424 = !DILocation(line: 0, scope: !243, inlinedAt: !418)
!425 = !DILocation(line: 122, column: 25, scope: !253, inlinedAt: !418)
!426 = !DILocation(line: 122, column: 2, scope: !243, inlinedAt: !418)
!427 = !DILocation(line: 122, column: 34, scope: !253, inlinedAt: !418)
!428 = !DILocation(line: 133, column: 7, scope: !257, inlinedAt: !418)
!429 = !DILocation(line: 133, column: 7, scope: !258, inlinedAt: !418)
!430 = !DILocation(line: 0, scope: !257, inlinedAt: !418)
!431 = distinct !{!431, !426, !432, !263, !264}
!432 = !DILocation(line: 137, column: 2, scope: !243, inlinedAt: !418)
!433 = distinct !{!433, !426, !432, !264, !263}
!434 = !DILocation(line: 140, column: 13, scope: !237, inlinedAt: !418)
!435 = !DILocation(line: 157, column: 3, scope: !234, inlinedAt: !409)
!436 = !DILocation(line: 361, column: 11, scope: !364)
!437 = !DILocation(line: 361, column: 20, scope: !364)
!438 = !DILocation(line: 361, column: 2, scope: !369)
!439 = distinct !{!439, !376, !440}
!440 = !DILocation(line: 361, column: 24, scope: !364)
!441 = !DILocation(line: 362, column: 1, scope: !364)
!442 = distinct !DISubprogram(name: "lzma_mf_hc4_find", scope: !1, file: !1, line: 368, type: !48, scopeLine: 369, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !443)
!443 = !{!444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457}
!444 = !DILocalVariable(name: "mf", arg: 1, scope: !442, file: !1, line: 368, type: !27)
!445 = !DILocalVariable(name: "matches", arg: 2, scope: !442, file: !1, line: 368, type: !50)
!446 = !DILocalVariable(name: "len_limit", scope: !442, file: !1, line: 370, type: !12)
!447 = !DILocalVariable(name: "cur", scope: !442, file: !1, line: 370, type: !86)
!448 = !DILocalVariable(name: "pos", scope: !442, file: !1, line: 370, type: !78)
!449 = !DILocalVariable(name: "matches_count", scope: !442, file: !1, line: 370, type: !12)
!450 = !DILocalVariable(name: "temp", scope: !442, file: !1, line: 372, type: !78)
!451 = !DILocalVariable(name: "hash_2_value", scope: !442, file: !1, line: 372, type: !78)
!452 = !DILocalVariable(name: "hash_3_value", scope: !442, file: !1, line: 372, type: !78)
!453 = !DILocalVariable(name: "hash_value", scope: !442, file: !1, line: 372, type: !78)
!454 = !DILocalVariable(name: "delta2", scope: !442, file: !1, line: 374, type: !12)
!455 = !DILocalVariable(name: "delta3", scope: !442, file: !1, line: 375, type: !78)
!456 = !DILocalVariable(name: "cur_match", scope: !442, file: !1, line: 377, type: !78)
!457 = !DILocalVariable(name: "len_best", scope: !442, file: !1, line: 383, type: !12)
!458 = !DILocation(line: 0, scope: !442)
!459 = !DILocation(line: 370, column: 2, scope: !442)
!460 = !DILocation(line: 0, scope: !151, inlinedAt: !461)
!461 = distinct !DILocation(line: 370, column: 2, scope: !442)
!462 = !DILocation(line: 232, column: 23, scope: !151, inlinedAt: !461)
!463 = !DILocation(line: 370, column: 2, scope: !464)
!464 = distinct !DILexicalBlock(scope: !442, file: !1, line: 370, column: 2)
!465 = !DILocation(line: 370, column: 2, scope: !466)
!466 = distinct !DILexicalBlock(scope: !464, file: !1, line: 370, column: 2)
!467 = !DILocation(line: 0, scope: !163, inlinedAt: !468)
!468 = distinct !DILocation(line: 370, column: 2, scope: !469)
!469 = distinct !DILexicalBlock(scope: !466, file: !1, line: 370, column: 2)
!470 = !DILocation(line: 178, column: 2, scope: !163, inlinedAt: !468)
!471 = !DILocation(line: 180, column: 8, scope: !163, inlinedAt: !468)
!472 = !DILocation(line: 180, column: 2, scope: !163, inlinedAt: !468)
!473 = !DILocation(line: 370, column: 2, scope: !469)
!474 = !DILocation(line: 0, scope: !108, inlinedAt: !475)
!475 = distinct !DILocation(line: 370, column: 2, scope: !442)
!476 = !DILocation(line: 224, column: 20, scope: !108, inlinedAt: !475)
!477 = !DILocation(line: 372, column: 2, scope: !442)
!478 = !DILocation(line: 374, column: 30, scope: !442)
!479 = !DILocation(line: 374, column: 26, scope: !442)
!480 = !DILocation(line: 374, column: 24, scope: !442)
!481 = !DILocation(line: 376, column: 37, scope: !442)
!482 = !DILocation(line: 376, column: 12, scope: !442)
!483 = !DILocation(line: 376, column: 10, scope: !442)
!484 = !DILocation(line: 377, column: 54, scope: !442)
!485 = !DILocation(line: 377, column: 29, scope: !442)
!486 = !DILocation(line: 379, column: 26, scope: !442)
!487 = !DILocation(line: 380, column: 6, scope: !442)
!488 = !DILocation(line: 380, column: 2, scope: !442)
!489 = !DILocation(line: 380, column: 43, scope: !442)
!490 = !DILocation(line: 381, column: 6, scope: !442)
!491 = !DILocation(line: 381, column: 2, scope: !442)
!492 = !DILocation(line: 381, column: 41, scope: !442)
!493 = !DILocation(line: 385, column: 19, scope: !494)
!494 = distinct !DILexicalBlock(scope: !442, file: !1, line: 385, column: 6)
!495 = !DILocation(line: 385, column: 13, scope: !494)
!496 = !DILocation(line: 385, column: 31, scope: !494)
!497 = !DILocation(line: 385, column: 40, scope: !494)
!498 = !DILocation(line: 385, column: 34, scope: !494)
!499 = !DILocation(line: 385, column: 53, scope: !494)
!500 = !DILocation(line: 385, column: 50, scope: !494)
!501 = !DILocation(line: 385, column: 6, scope: !442)
!502 = !DILocation(line: 387, column: 18, scope: !503)
!503 = distinct !DILexicalBlock(scope: !494, file: !1, line: 385, column: 59)
!504 = !DILocation(line: 388, column: 28, scope: !503)
!505 = !DILocation(line: 388, column: 14, scope: !503)
!506 = !DILocation(line: 388, column: 19, scope: !503)
!507 = !DILocation(line: 390, column: 2, scope: !503)
!508 = !DILocation(line: 392, column: 13, scope: !509)
!509 = distinct !DILexicalBlock(scope: !442, file: !1, line: 392, column: 6)
!510 = !DILocation(line: 392, column: 23, scope: !509)
!511 = !DILocation(line: 392, column: 39, scope: !509)
!512 = !DILocation(line: 392, column: 33, scope: !509)
!513 = !DILocation(line: 393, column: 4, scope: !509)
!514 = !DILocation(line: 393, column: 13, scope: !509)
!515 = !DILocation(line: 393, column: 7, scope: !509)
!516 = !DILocation(line: 393, column: 26, scope: !509)
!517 = !DILocation(line: 393, column: 23, scope: !509)
!518 = !DILocation(line: 392, column: 6, scope: !442)
!519 = !DILocation(line: 395, column: 42, scope: !520)
!520 = distinct !DILexicalBlock(scope: !509, file: !1, line: 393, column: 32)
!521 = !DILocation(line: 395, column: 24, scope: !520)
!522 = !DILocation(line: 395, column: 3, scope: !520)
!523 = !DILocation(line: 395, column: 28, scope: !520)
!524 = !DILocation(line: 395, column: 33, scope: !520)
!525 = !DILocation(line: 399, column: 6, scope: !442)
!526 = !DILocation(line: 400, column: 20, scope: !527)
!527 = distinct !DILexicalBlock(scope: !528, file: !1, line: 400, column: 3)
!528 = distinct !DILexicalBlock(scope: !529, file: !1, line: 400, column: 3)
!529 = distinct !DILexicalBlock(scope: !530, file: !1, line: 399, column: 26)
!530 = distinct !DILexicalBlock(scope: !442, file: !1, line: 399, column: 6)
!531 = !DILocation(line: 400, column: 3, scope: !528)
!532 = !DILocation(line: 401, column: 14, scope: !533)
!533 = distinct !DILexicalBlock(scope: !527, file: !1, line: 401, column: 8)
!534 = !DILocation(line: 401, column: 25, scope: !533)
!535 = !DILocation(line: 401, column: 8, scope: !533)
!536 = !DILocation(line: 401, column: 38, scope: !533)
!537 = !DILocation(line: 401, column: 35, scope: !533)
!538 = !DILocation(line: 401, column: 8, scope: !527)
!539 = !DILocation(line: 400, column: 34, scope: !527)
!540 = distinct !{!540, !531, !541}
!541 = !DILocation(line: 402, column: 5, scope: !528)
!542 = !DILocation(line: 404, column: 25, scope: !529)
!543 = !DILocation(line: 404, column: 3, scope: !529)
!544 = !DILocation(line: 404, column: 34, scope: !529)
!545 = !DILocation(line: 415, column: 2, scope: !546)
!546 = distinct !DILexicalBlock(scope: !442, file: !1, line: 415, column: 2)
!547 = !DILocation(line: 406, column: 7, scope: !529)
!548 = !DILocation(line: 407, column: 4, scope: !549)
!549 = distinct !DILexicalBlock(scope: !550, file: !1, line: 407, column: 4)
!550 = distinct !DILexicalBlock(scope: !551, file: !1, line: 406, column: 30)
!551 = distinct !DILexicalBlock(scope: !529, file: !1, line: 406, column: 7)
!552 = !DILocation(line: 0, scope: !223, inlinedAt: !553)
!553 = distinct !DILocation(line: 407, column: 4, scope: !549)
!554 = !DILocation(line: 150, column: 6, scope: !228, inlinedAt: !553)
!555 = !DILocation(line: 150, column: 30, scope: !228, inlinedAt: !553)
!556 = !DILocation(line: 150, column: 23, scope: !228, inlinedAt: !553)
!557 = !DILocation(line: 150, column: 6, scope: !223, inlinedAt: !553)
!558 = !DILocation(line: 153, column: 2, scope: !223, inlinedAt: !553)
!559 = !DILocation(line: 156, column: 6, scope: !234, inlinedAt: !553)
!560 = !DILocation(line: 156, column: 6, scope: !223, inlinedAt: !553)
!561 = !DILocation(line: 0, scope: !237, inlinedAt: !562)
!562 = distinct !DILocation(line: 157, column: 3, scope: !234, inlinedAt: !553)
!563 = !DILocation(line: 116, column: 26, scope: !237, inlinedAt: !562)
!564 = !DILocation(line: 119, column: 29, scope: !237, inlinedAt: !562)
!565 = !DILocation(line: 119, column: 49, scope: !237, inlinedAt: !562)
!566 = !DILocation(line: 119, column: 43, scope: !237, inlinedAt: !562)
!567 = !DILocation(line: 120, column: 23, scope: !237, inlinedAt: !562)
!568 = !DILocation(line: 0, scope: !243, inlinedAt: !562)
!569 = !DILocation(line: 122, column: 25, scope: !253, inlinedAt: !562)
!570 = !DILocation(line: 122, column: 2, scope: !243, inlinedAt: !562)
!571 = !DILocation(line: 122, column: 34, scope: !253, inlinedAt: !562)
!572 = !DILocation(line: 133, column: 7, scope: !257, inlinedAt: !562)
!573 = !DILocation(line: 133, column: 7, scope: !258, inlinedAt: !562)
!574 = !DILocation(line: 0, scope: !257, inlinedAt: !562)
!575 = distinct !{!575, !570, !576, !263, !264}
!576 = !DILocation(line: 137, column: 2, scope: !243, inlinedAt: !562)
!577 = distinct !{!577, !570, !576, !264, !263}
!578 = !DILocation(line: 140, column: 13, scope: !237, inlinedAt: !562)
!579 = !DILocation(line: 157, column: 3, scope: !234, inlinedAt: !553)
!580 = !DILocation(line: 394, column: 12, scope: !520)
!581 = !DILocation(line: 0, scope: !270, inlinedAt: !582)
!582 = distinct !DILocation(line: 415, column: 2, scope: !546)
!583 = !DILocation(line: 260, column: 2, scope: !270, inlinedAt: !582)
!584 = !DILocation(line: 260, column: 18, scope: !270, inlinedAt: !582)
!585 = !DILocation(line: 263, column: 30, scope: !286, inlinedAt: !582)
!586 = !DILocation(line: 264, column: 15, scope: !297, inlinedAt: !582)
!587 = !DILocation(line: 264, column: 20, scope: !297, inlinedAt: !582)
!588 = !DILocation(line: 412, column: 6, scope: !442)
!589 = !DILocation(line: 271, column: 37, scope: !290, inlinedAt: !582)
!590 = !DILocation(line: 264, column: 12, scope: !297, inlinedAt: !582)
!591 = !DILocation(line: 267, column: 33, scope: !286, inlinedAt: !582)
!592 = !DILocation(line: 0, scope: !286, inlinedAt: !582)
!593 = !DILocation(line: 268, column: 30, scope: !286, inlinedAt: !582)
!594 = !DILocation(line: 269, column: 14, scope: !286, inlinedAt: !582)
!595 = !DILocation(line: 269, column: 8, scope: !286, inlinedAt: !582)
!596 = !DILocation(line: 269, column: 5, scope: !286, inlinedAt: !582)
!597 = !DILocation(line: 268, column: 15, scope: !286, inlinedAt: !582)
!598 = !DILocation(line: 271, column: 7, scope: !290, inlinedAt: !582)
!599 = !DILocation(line: 271, column: 23, scope: !290, inlinedAt: !582)
!600 = !DILocation(line: 271, column: 20, scope: !290, inlinedAt: !582)
!601 = !DILocation(line: 271, column: 40, scope: !290, inlinedAt: !582)
!602 = !DILocation(line: 271, column: 49, scope: !290, inlinedAt: !582)
!603 = !DILocation(line: 271, column: 46, scope: !290, inlinedAt: !582)
!604 = !DILocation(line: 271, column: 7, scope: !286, inlinedAt: !582)
!605 = !DILocation(line: 0, scope: !289, inlinedAt: !582)
!606 = !DILocation(line: 273, column: 17, scope: !289, inlinedAt: !582)
!607 = !DILocation(line: 273, column: 4, scope: !289, inlinedAt: !582)
!608 = !DILocation(line: 273, column: 11, scope: !289, inlinedAt: !582)
!609 = !DILocation(line: 274, column: 9, scope: !320, inlinedAt: !582)
!610 = !DILocation(line: 274, column: 20, scope: !320, inlinedAt: !582)
!611 = !DILocation(line: 274, column: 17, scope: !320, inlinedAt: !582)
!612 = !DILocation(line: 274, column: 9, scope: !289, inlinedAt: !582)
!613 = distinct !{!613, !607, !614}
!614 = !DILocation(line: 275, column: 6, scope: !289, inlinedAt: !582)
!615 = !DILocation(line: 277, column: 17, scope: !327, inlinedAt: !582)
!616 = !DILocation(line: 277, column: 8, scope: !289, inlinedAt: !582)
!617 = !DILocation(line: 279, column: 18, scope: !330, inlinedAt: !582)
!618 = !DILocation(line: 280, column: 27, scope: !330, inlinedAt: !582)
!619 = !DILocation(line: 280, column: 14, scope: !330, inlinedAt: !582)
!620 = !DILocation(line: 280, column: 19, scope: !330, inlinedAt: !582)
!621 = !DILocation(line: 281, column: 5, scope: !330, inlinedAt: !582)
!622 = !DILocation(line: 0, scope: !223, inlinedAt: !623)
!623 = distinct !DILocation(line: 415, column: 2, scope: !546)
!624 = !DILocation(line: 150, column: 6, scope: !228, inlinedAt: !623)
!625 = !DILocation(line: 150, column: 30, scope: !228, inlinedAt: !623)
!626 = !DILocation(line: 150, column: 23, scope: !228, inlinedAt: !623)
!627 = !DILocation(line: 150, column: 6, scope: !223, inlinedAt: !623)
!628 = !DILocation(line: 153, column: 2, scope: !223, inlinedAt: !623)
!629 = !DILocation(line: 156, column: 6, scope: !234, inlinedAt: !623)
!630 = !DILocation(line: 156, column: 6, scope: !223, inlinedAt: !623)
!631 = !DILocation(line: 0, scope: !237, inlinedAt: !632)
!632 = distinct !DILocation(line: 157, column: 3, scope: !234, inlinedAt: !623)
!633 = !DILocation(line: 116, column: 26, scope: !237, inlinedAt: !632)
!634 = !DILocation(line: 119, column: 29, scope: !237, inlinedAt: !632)
!635 = !DILocation(line: 119, column: 49, scope: !237, inlinedAt: !632)
!636 = !DILocation(line: 119, column: 43, scope: !237, inlinedAt: !632)
!637 = !DILocation(line: 120, column: 23, scope: !237, inlinedAt: !632)
!638 = !DILocation(line: 0, scope: !243, inlinedAt: !632)
!639 = !DILocation(line: 122, column: 25, scope: !253, inlinedAt: !632)
!640 = !DILocation(line: 122, column: 2, scope: !243, inlinedAt: !632)
!641 = !DILocation(line: 122, column: 34, scope: !253, inlinedAt: !632)
!642 = !DILocation(line: 133, column: 7, scope: !257, inlinedAt: !632)
!643 = !DILocation(line: 133, column: 7, scope: !258, inlinedAt: !632)
!644 = !DILocation(line: 0, scope: !257, inlinedAt: !632)
!645 = distinct !{!645, !640, !646, !263, !264}
!646 = !DILocation(line: 137, column: 2, scope: !243, inlinedAt: !632)
!647 = distinct !{!647, !640, !646, !264, !263}
!648 = !DILocation(line: 140, column: 13, scope: !237, inlinedAt: !632)
!649 = !DILocation(line: 157, column: 3, scope: !234, inlinedAt: !623)
!650 = !DILocation(line: 416, column: 1, scope: !442)
!651 = distinct !DISubprogram(name: "lzma_mf_hc4_skip", scope: !1, file: !1, line: 420, type: !58, scopeLine: 421, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !652)
!652 = !{!653, !654, !655, !657, !658, !659, !660, !661, !662}
!653 = !DILocalVariable(name: "mf", arg: 1, scope: !651, file: !1, line: 420, type: !27)
!654 = !DILocalVariable(name: "amount", arg: 2, scope: !651, file: !1, line: 420, type: !12)
!655 = !DILocalVariable(name: "cur", scope: !656, file: !1, line: 428, type: !86)
!656 = distinct !DILexicalBlock(scope: !651, file: !1, line: 422, column: 5)
!657 = !DILocalVariable(name: "pos", scope: !656, file: !1, line: 429, type: !78)
!658 = !DILocalVariable(name: "temp", scope: !656, file: !1, line: 431, type: !78)
!659 = !DILocalVariable(name: "hash_2_value", scope: !656, file: !1, line: 431, type: !78)
!660 = !DILocalVariable(name: "hash_3_value", scope: !656, file: !1, line: 431, type: !78)
!661 = !DILocalVariable(name: "hash_value", scope: !656, file: !1, line: 431, type: !78)
!662 = !DILocalVariable(name: "cur_match", scope: !656, file: !1, line: 433, type: !78)
!663 = !DILocation(line: 0, scope: !651)
!664 = !DILocation(line: 422, column: 2, scope: !651)
!665 = !DILocation(line: 423, column: 7, scope: !666)
!666 = distinct !DILexicalBlock(scope: !656, file: !1, line: 423, column: 7)
!667 = !DILocation(line: 0, scope: !151, inlinedAt: !668)
!668 = distinct !DILocation(line: 423, column: 7, scope: !666)
!669 = !DILocation(line: 232, column: 23, scope: !151, inlinedAt: !668)
!670 = !DILocation(line: 423, column: 20, scope: !666)
!671 = !DILocation(line: 423, column: 7, scope: !656)
!672 = !DILocation(line: 0, scope: !163, inlinedAt: !673)
!673 = distinct !DILocation(line: 424, column: 4, scope: !674)
!674 = distinct !DILexicalBlock(scope: !666, file: !1, line: 423, column: 25)
!675 = !DILocation(line: 178, column: 2, scope: !163, inlinedAt: !673)
!676 = !DILocation(line: 180, column: 2, scope: !163, inlinedAt: !673)
!677 = !DILocation(line: 425, column: 4, scope: !674)
!678 = !DILocation(line: 428, column: 24, scope: !656)
!679 = !DILocation(line: 0, scope: !108, inlinedAt: !680)
!680 = distinct !DILocation(line: 428, column: 24, scope: !656)
!681 = !DILocation(line: 224, column: 20, scope: !108, inlinedAt: !680)
!682 = !DILocation(line: 0, scope: !656)
!683 = !DILocation(line: 429, column: 43, scope: !656)
!684 = !DILocation(line: 429, column: 37, scope: !656)
!685 = !DILocation(line: 431, column: 3, scope: !656)
!686 = !DILocation(line: 434, column: 11, scope: !656)
!687 = !DILocation(line: 434, column: 32, scope: !656)
!688 = !DILocation(line: 434, column: 7, scope: !656)
!689 = !DILocation(line: 436, column: 3, scope: !656)
!690 = !DILocation(line: 436, column: 26, scope: !656)
!691 = !DILocation(line: 437, column: 7, scope: !656)
!692 = !DILocation(line: 437, column: 3, scope: !656)
!693 = !DILocation(line: 437, column: 44, scope: !656)
!694 = !DILocation(line: 438, column: 7, scope: !656)
!695 = !DILocation(line: 438, column: 3, scope: !656)
!696 = !DILocation(line: 438, column: 42, scope: !656)
!697 = !DILocation(line: 440, column: 3, scope: !698)
!698 = distinct !DILexicalBlock(scope: !656, file: !1, line: 440, column: 3)
!699 = !DILocation(line: 0, scope: !223, inlinedAt: !700)
!700 = distinct !DILocation(line: 440, column: 3, scope: !698)
!701 = !DILocation(line: 150, column: 6, scope: !228, inlinedAt: !700)
!702 = !DILocation(line: 150, column: 30, scope: !228, inlinedAt: !700)
!703 = !DILocation(line: 150, column: 23, scope: !228, inlinedAt: !700)
!704 = !DILocation(line: 150, column: 6, scope: !223, inlinedAt: !700)
!705 = !DILocation(line: 153, column: 2, scope: !223, inlinedAt: !700)
!706 = !DILocation(line: 156, column: 6, scope: !234, inlinedAt: !700)
!707 = !DILocation(line: 156, column: 6, scope: !223, inlinedAt: !700)
!708 = !DILocation(line: 0, scope: !237, inlinedAt: !709)
!709 = distinct !DILocation(line: 157, column: 3, scope: !234, inlinedAt: !700)
!710 = !DILocation(line: 116, column: 26, scope: !237, inlinedAt: !709)
!711 = !DILocation(line: 119, column: 29, scope: !237, inlinedAt: !709)
!712 = !DILocation(line: 119, column: 49, scope: !237, inlinedAt: !709)
!713 = !DILocation(line: 119, column: 43, scope: !237, inlinedAt: !709)
!714 = !DILocation(line: 120, column: 23, scope: !237, inlinedAt: !709)
!715 = !DILocation(line: 0, scope: !243, inlinedAt: !709)
!716 = !DILocation(line: 122, column: 25, scope: !253, inlinedAt: !709)
!717 = !DILocation(line: 122, column: 2, scope: !243, inlinedAt: !709)
!718 = !DILocation(line: 122, column: 34, scope: !253, inlinedAt: !709)
!719 = !DILocation(line: 133, column: 7, scope: !257, inlinedAt: !709)
!720 = !DILocation(line: 133, column: 7, scope: !258, inlinedAt: !709)
!721 = !DILocation(line: 0, scope: !257, inlinedAt: !709)
!722 = distinct !{!722, !717, !723, !263, !264}
!723 = !DILocation(line: 137, column: 2, scope: !243, inlinedAt: !709)
!724 = distinct !{!724, !717, !723, !264, !263}
!725 = !DILocation(line: 140, column: 13, scope: !237, inlinedAt: !709)
!726 = !DILocation(line: 157, column: 3, scope: !234, inlinedAt: !700)
!727 = !DILocation(line: 442, column: 11, scope: !651)
!728 = !DILocation(line: 442, column: 20, scope: !651)
!729 = !DILocation(line: 442, column: 2, scope: !656)
!730 = distinct !{!730, !664, !731}
!731 = !DILocation(line: 442, column: 24, scope: !651)
!732 = !DILocation(line: 443, column: 1, scope: !651)
!733 = distinct !DISubprogram(name: "lzma_mf_bt2_find", scope: !1, file: !1, line: 594, type: !48, scopeLine: 595, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !734)
!734 = !{!735, !736, !737, !738, !739, !740, !741, !742}
!735 = !DILocalVariable(name: "mf", arg: 1, scope: !733, file: !1, line: 594, type: !27)
!736 = !DILocalVariable(name: "matches", arg: 2, scope: !733, file: !1, line: 594, type: !50)
!737 = !DILocalVariable(name: "len_limit", scope: !733, file: !1, line: 596, type: !12)
!738 = !DILocalVariable(name: "cur", scope: !733, file: !1, line: 596, type: !86)
!739 = !DILocalVariable(name: "pos", scope: !733, file: !1, line: 596, type: !78)
!740 = !DILocalVariable(name: "matches_count", scope: !733, file: !1, line: 596, type: !12)
!741 = !DILocalVariable(name: "hash_value", scope: !733, file: !1, line: 598, type: !78)
!742 = !DILocalVariable(name: "cur_match", scope: !733, file: !1, line: 600, type: !78)
!743 = !DILocation(line: 0, scope: !733)
!744 = !DILocation(line: 596, column: 2, scope: !733)
!745 = !DILocation(line: 0, scope: !151, inlinedAt: !746)
!746 = distinct !DILocation(line: 596, column: 2, scope: !733)
!747 = !DILocation(line: 232, column: 23, scope: !151, inlinedAt: !746)
!748 = !DILocation(line: 596, column: 2, scope: !749)
!749 = distinct !DILexicalBlock(scope: !733, file: !1, line: 596, column: 2)
!750 = !DILocation(line: 596, column: 2, scope: !751)
!751 = distinct !DILexicalBlock(scope: !749, file: !1, line: 596, column: 2)
!752 = !DILocation(line: 0, scope: !163, inlinedAt: !753)
!753 = distinct !DILocation(line: 596, column: 2, scope: !754)
!754 = distinct !DILexicalBlock(scope: !751, file: !1, line: 596, column: 2)
!755 = !DILocation(line: 178, column: 2, scope: !163, inlinedAt: !753)
!756 = !DILocation(line: 180, column: 8, scope: !163, inlinedAt: !753)
!757 = !DILocation(line: 180, column: 2, scope: !163, inlinedAt: !753)
!758 = !DILocation(line: 596, column: 2, scope: !754)
!759 = !DILocation(line: 0, scope: !108, inlinedAt: !760)
!760 = distinct !DILocation(line: 596, column: 2, scope: !733)
!761 = !DILocation(line: 224, column: 20, scope: !108, inlinedAt: !760)
!762 = !DILocation(line: 598, column: 2, scope: !733)
!763 = !DILocation(line: 600, column: 33, scope: !733)
!764 = !DILocation(line: 600, column: 29, scope: !733)
!765 = !DILocation(line: 601, column: 23, scope: !733)
!766 = !DILocation(line: 603, column: 2, scope: !767)
!767 = distinct !DILexicalBlock(scope: !733, file: !1, line: 603, column: 2)
!768 = !DILocalVariable(name: "len_limit", arg: 1, scope: !769, file: !1, line: 454, type: !78)
!769 = distinct !DISubprogram(name: "bt_find_func", scope: !1, file: !1, line: 453, type: !271, scopeLine: 464, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !770)
!770 = !{!768, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !786, !787, !788}
!771 = !DILocalVariable(name: "pos", arg: 2, scope: !769, file: !1, line: 455, type: !78)
!772 = !DILocalVariable(name: "cur", arg: 3, scope: !769, file: !1, line: 456, type: !273)
!773 = !DILocalVariable(name: "cur_match", arg: 4, scope: !769, file: !1, line: 457, type: !12)
!774 = !DILocalVariable(name: "depth", arg: 5, scope: !769, file: !1, line: 458, type: !12)
!775 = !DILocalVariable(name: "son", arg: 6, scope: !769, file: !1, line: 459, type: !274)
!776 = !DILocalVariable(name: "cyclic_pos", arg: 7, scope: !769, file: !1, line: 460, type: !78)
!777 = !DILocalVariable(name: "cyclic_size", arg: 8, scope: !769, file: !1, line: 461, type: !78)
!778 = !DILocalVariable(name: "matches", arg: 9, scope: !769, file: !1, line: 462, type: !50)
!779 = !DILocalVariable(name: "len_best", arg: 10, scope: !769, file: !1, line: 463, type: !12)
!780 = !DILocalVariable(name: "ptr0", scope: !769, file: !1, line: 465, type: !61)
!781 = !DILocalVariable(name: "ptr1", scope: !769, file: !1, line: 466, type: !61)
!782 = !DILocalVariable(name: "len0", scope: !769, file: !1, line: 468, type: !12)
!783 = !DILocalVariable(name: "len1", scope: !769, file: !1, line: 469, type: !12)
!784 = !DILocalVariable(name: "delta", scope: !785, file: !1, line: 472, type: !78)
!785 = distinct !DILexicalBlock(scope: !769, file: !1, line: 471, column: 15)
!786 = !DILocalVariable(name: "pair", scope: !785, file: !1, line: 479, type: !274)
!787 = !DILocalVariable(name: "pb", scope: !785, file: !1, line: 483, type: !273)
!788 = !DILocalVariable(name: "len", scope: !785, file: !1, line: 484, type: !12)
!789 = !DILocation(line: 0, scope: !769, inlinedAt: !790)
!790 = distinct !DILocation(line: 603, column: 2, scope: !767)
!791 = !DILocation(line: 465, column: 37, scope: !769, inlinedAt: !790)
!792 = !DILocation(line: 465, column: 23, scope: !769, inlinedAt: !790)
!793 = !DILocation(line: 465, column: 43, scope: !769, inlinedAt: !790)
!794 = !DILocation(line: 472, column: 30, scope: !785, inlinedAt: !790)
!795 = !DILocation(line: 473, column: 15, scope: !796, inlinedAt: !790)
!796 = distinct !DILexicalBlock(scope: !785, file: !1, line: 473, column: 7)
!797 = !DILocation(line: 473, column: 20, scope: !796, inlinedAt: !790)
!798 = !DILocation(line: 471, column: 2, scope: !769, inlinedAt: !790)
!799 = !DILocation(line: 465, column: 12, scope: !769, inlinedAt: !790)
!800 = !DILocation(line: 466, column: 12, scope: !769, inlinedAt: !790)
!801 = !DILocation(line: 474, column: 10, scope: !802, inlinedAt: !790)
!802 = distinct !DILexicalBlock(scope: !796, file: !1, line: 473, column: 45)
!803 = !DILocation(line: 475, column: 10, scope: !802, inlinedAt: !790)
!804 = !DILocation(line: 476, column: 4, scope: !802, inlinedAt: !790)
!805 = !DILocation(line: 473, column: 12, scope: !796, inlinedAt: !790)
!806 = !DILocation(line: 479, column: 45, scope: !785, inlinedAt: !790)
!807 = !DILocation(line: 480, column: 14, scope: !785, inlinedAt: !790)
!808 = !DILocation(line: 480, column: 8, scope: !785, inlinedAt: !790)
!809 = !DILocation(line: 480, column: 5, scope: !785, inlinedAt: !790)
!810 = !DILocation(line: 481, column: 5, scope: !785, inlinedAt: !790)
!811 = !DILocation(line: 479, column: 30, scope: !785, inlinedAt: !790)
!812 = !DILocation(line: 0, scope: !785, inlinedAt: !790)
!813 = !DILocation(line: 483, column: 33, scope: !785, inlinedAt: !790)
!814 = !DILocation(line: 484, column: 18, scope: !785, inlinedAt: !790)
!815 = !DILocation(line: 486, column: 7, scope: !816, inlinedAt: !790)
!816 = distinct !DILexicalBlock(scope: !785, file: !1, line: 486, column: 7)
!817 = !DILocation(line: 486, column: 18, scope: !816, inlinedAt: !790)
!818 = !DILocation(line: 486, column: 15, scope: !816, inlinedAt: !790)
!819 = !DILocation(line: 486, column: 7, scope: !785, inlinedAt: !790)
!820 = !DILocation(line: 487, column: 11, scope: !821, inlinedAt: !790)
!821 = distinct !DILexicalBlock(scope: !816, file: !1, line: 486, column: 28)
!822 = !DILocation(line: 487, column: 17, scope: !821, inlinedAt: !790)
!823 = !DILocation(line: 487, column: 4, scope: !821, inlinedAt: !790)
!824 = !DILocation(line: 488, column: 9, scope: !825, inlinedAt: !790)
!825 = distinct !DILexicalBlock(scope: !821, file: !1, line: 488, column: 9)
!826 = !DILocation(line: 488, column: 20, scope: !825, inlinedAt: !790)
!827 = !DILocation(line: 488, column: 17, scope: !825, inlinedAt: !790)
!828 = !DILocation(line: 488, column: 9, scope: !821, inlinedAt: !790)
!829 = distinct !{!829, !823, !830}
!830 = !DILocation(line: 489, column: 6, scope: !821, inlinedAt: !790)
!831 = !DILocation(line: 491, column: 17, scope: !832, inlinedAt: !790)
!832 = distinct !DILexicalBlock(scope: !821, file: !1, line: 491, column: 8)
!833 = !DILocation(line: 491, column: 8, scope: !821, inlinedAt: !790)
!834 = !DILocation(line: 493, column: 18, scope: !835, inlinedAt: !790)
!835 = distinct !DILexicalBlock(scope: !832, file: !1, line: 491, column: 24)
!836 = !DILocation(line: 494, column: 27, scope: !835, inlinedAt: !790)
!837 = !DILocation(line: 494, column: 14, scope: !835, inlinedAt: !790)
!838 = !DILocation(line: 494, column: 19, scope: !835, inlinedAt: !790)
!839 = !DILocation(line: 495, column: 5, scope: !835, inlinedAt: !790)
!840 = !DILocation(line: 497, column: 9, scope: !835, inlinedAt: !790)
!841 = !DILocation(line: 498, column: 14, scope: !842, inlinedAt: !790)
!842 = distinct !DILexicalBlock(scope: !843, file: !1, line: 497, column: 27)
!843 = distinct !DILexicalBlock(scope: !835, file: !1, line: 497, column: 9)
!844 = !DILocation(line: 498, column: 12, scope: !842, inlinedAt: !790)
!845 = !DILocation(line: 499, column: 14, scope: !842, inlinedAt: !790)
!846 = !DILocation(line: 499, column: 12, scope: !842, inlinedAt: !790)
!847 = !DILocation(line: 500, column: 6, scope: !842, inlinedAt: !790)
!848 = !DILocation(line: 505, column: 7, scope: !849, inlinedAt: !790)
!849 = distinct !DILexicalBlock(scope: !785, file: !1, line: 505, column: 7)
!850 = !DILocation(line: 505, column: 17, scope: !849, inlinedAt: !790)
!851 = !DILocation(line: 505, column: 15, scope: !849, inlinedAt: !790)
!852 = !DILocation(line: 505, column: 7, scope: !785, inlinedAt: !790)
!853 = !DILocation(line: 506, column: 10, scope: !854, inlinedAt: !790)
!854 = distinct !DILexicalBlock(scope: !849, file: !1, line: 505, column: 27)
!855 = !DILocation(line: 507, column: 16, scope: !854, inlinedAt: !790)
!856 = !DILocation(line: 510, column: 3, scope: !854, inlinedAt: !790)
!857 = !DILocation(line: 511, column: 10, scope: !858, inlinedAt: !790)
!858 = distinct !DILexicalBlock(scope: !849, file: !1, line: 510, column: 10)
!859 = !DILocation(line: 0, scope: !849, inlinedAt: !790)
!860 = distinct !{!860, !798, !861}
!861 = !DILocation(line: 516, column: 2, scope: !769, inlinedAt: !790)
!862 = !DILocation(line: 0, scope: !223, inlinedAt: !863)
!863 = distinct !DILocation(line: 603, column: 2, scope: !767)
!864 = !DILocation(line: 150, column: 6, scope: !228, inlinedAt: !863)
!865 = !DILocation(line: 150, column: 30, scope: !228, inlinedAt: !863)
!866 = !DILocation(line: 150, column: 23, scope: !228, inlinedAt: !863)
!867 = !DILocation(line: 150, column: 6, scope: !223, inlinedAt: !863)
!868 = !DILocation(line: 153, column: 2, scope: !223, inlinedAt: !863)
!869 = !DILocation(line: 156, column: 6, scope: !234, inlinedAt: !863)
!870 = !DILocation(line: 156, column: 6, scope: !223, inlinedAt: !863)
!871 = !DILocation(line: 0, scope: !237, inlinedAt: !872)
!872 = distinct !DILocation(line: 157, column: 3, scope: !234, inlinedAt: !863)
!873 = !DILocation(line: 116, column: 26, scope: !237, inlinedAt: !872)
!874 = !DILocation(line: 119, column: 29, scope: !237, inlinedAt: !872)
!875 = !DILocation(line: 119, column: 49, scope: !237, inlinedAt: !872)
!876 = !DILocation(line: 119, column: 43, scope: !237, inlinedAt: !872)
!877 = !DILocation(line: 120, column: 23, scope: !237, inlinedAt: !872)
!878 = !DILocation(line: 0, scope: !243, inlinedAt: !872)
!879 = !DILocation(line: 122, column: 25, scope: !253, inlinedAt: !872)
!880 = !DILocation(line: 122, column: 2, scope: !243, inlinedAt: !872)
!881 = !DILocation(line: 122, column: 34, scope: !253, inlinedAt: !872)
!882 = !DILocation(line: 133, column: 7, scope: !257, inlinedAt: !872)
!883 = !DILocation(line: 133, column: 7, scope: !258, inlinedAt: !872)
!884 = !DILocation(line: 0, scope: !257, inlinedAt: !872)
!885 = distinct !{!885, !880, !886, !263, !264}
!886 = !DILocation(line: 137, column: 2, scope: !243, inlinedAt: !872)
!887 = distinct !{!887, !880, !886, !264, !263}
!888 = !DILocation(line: 140, column: 13, scope: !237, inlinedAt: !872)
!889 = !DILocation(line: 157, column: 3, scope: !234, inlinedAt: !863)
!890 = !DILocation(line: 604, column: 1, scope: !733)
!891 = distinct !DISubprogram(name: "lzma_mf_bt2_skip", scope: !1, file: !1, line: 608, type: !58, scopeLine: 609, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !892)
!892 = !{!893, !894, !895, !897, !898, !899, !900}
!893 = !DILocalVariable(name: "mf", arg: 1, scope: !891, file: !1, line: 608, type: !27)
!894 = !DILocalVariable(name: "amount", arg: 2, scope: !891, file: !1, line: 608, type: !12)
!895 = !DILocalVariable(name: "len_limit", scope: !896, file: !1, line: 611, type: !12)
!896 = distinct !DILexicalBlock(scope: !891, file: !1, line: 610, column: 5)
!897 = !DILocalVariable(name: "cur", scope: !896, file: !1, line: 611, type: !86)
!898 = !DILocalVariable(name: "pos", scope: !896, file: !1, line: 611, type: !78)
!899 = !DILocalVariable(name: "hash_value", scope: !896, file: !1, line: 613, type: !78)
!900 = !DILocalVariable(name: "cur_match", scope: !896, file: !1, line: 615, type: !78)
!901 = !DILocation(line: 0, scope: !891)
!902 = !DILocation(line: 610, column: 2, scope: !891)
!903 = !DILocation(line: 611, column: 3, scope: !896)
!904 = !DILocation(line: 0, scope: !151, inlinedAt: !905)
!905 = distinct !DILocation(line: 611, column: 3, scope: !896)
!906 = !DILocation(line: 232, column: 23, scope: !151, inlinedAt: !905)
!907 = !DILocation(line: 0, scope: !896)
!908 = !DILocation(line: 611, column: 3, scope: !909)
!909 = distinct !DILexicalBlock(scope: !896, file: !1, line: 611, column: 3)
!910 = !DILocation(line: 611, column: 3, scope: !911)
!911 = distinct !DILexicalBlock(scope: !909, file: !1, line: 611, column: 3)
!912 = !DILocation(line: 0, scope: !163, inlinedAt: !913)
!913 = distinct !DILocation(line: 611, column: 3, scope: !914)
!914 = distinct !DILexicalBlock(scope: !911, file: !1, line: 611, column: 3)
!915 = !DILocation(line: 178, column: 2, scope: !163, inlinedAt: !913)
!916 = !DILocation(line: 180, column: 2, scope: !163, inlinedAt: !913)
!917 = !DILocation(line: 611, column: 3, scope: !914)
!918 = !DILocation(line: 0, scope: !108, inlinedAt: !919)
!919 = distinct !DILocation(line: 611, column: 3, scope: !896)
!920 = !DILocation(line: 224, column: 20, scope: !108, inlinedAt: !919)
!921 = !DILocation(line: 613, column: 3, scope: !896)
!922 = !DILocation(line: 615, column: 34, scope: !896)
!923 = !DILocation(line: 615, column: 30, scope: !896)
!924 = !DILocation(line: 616, column: 24, scope: !896)
!925 = !DILocation(line: 618, column: 3, scope: !926)
!926 = distinct !DILexicalBlock(scope: !896, file: !1, line: 618, column: 3)
!927 = !DILocalVariable(name: "len_limit", arg: 1, scope: !928, file: !1, line: 522, type: !78)
!928 = distinct !DISubprogram(name: "bt_skip_func", scope: !1, file: !1, line: 521, type: !929, scopeLine: 530, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !931)
!929 = !DISubroutineType(types: !930)
!930 = !{null, !78, !78, !273, !12, !12, !274, !78, !78}
!931 = !{!927, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !945, !946, !947}
!932 = !DILocalVariable(name: "pos", arg: 2, scope: !928, file: !1, line: 523, type: !78)
!933 = !DILocalVariable(name: "cur", arg: 3, scope: !928, file: !1, line: 524, type: !273)
!934 = !DILocalVariable(name: "cur_match", arg: 4, scope: !928, file: !1, line: 525, type: !12)
!935 = !DILocalVariable(name: "depth", arg: 5, scope: !928, file: !1, line: 526, type: !12)
!936 = !DILocalVariable(name: "son", arg: 6, scope: !928, file: !1, line: 527, type: !274)
!937 = !DILocalVariable(name: "cyclic_pos", arg: 7, scope: !928, file: !1, line: 528, type: !78)
!938 = !DILocalVariable(name: "cyclic_size", arg: 8, scope: !928, file: !1, line: 529, type: !78)
!939 = !DILocalVariable(name: "ptr0", scope: !928, file: !1, line: 531, type: !61)
!940 = !DILocalVariable(name: "ptr1", scope: !928, file: !1, line: 532, type: !61)
!941 = !DILocalVariable(name: "len0", scope: !928, file: !1, line: 534, type: !12)
!942 = !DILocalVariable(name: "len1", scope: !928, file: !1, line: 535, type: !12)
!943 = !DILocalVariable(name: "delta", scope: !944, file: !1, line: 538, type: !78)
!944 = distinct !DILexicalBlock(scope: !928, file: !1, line: 537, column: 15)
!945 = !DILocalVariable(name: "pair", scope: !944, file: !1, line: 545, type: !61)
!946 = !DILocalVariable(name: "pb", scope: !944, file: !1, line: 548, type: !86)
!947 = !DILocalVariable(name: "len", scope: !944, file: !1, line: 549, type: !12)
!948 = !DILocation(line: 0, scope: !928, inlinedAt: !949)
!949 = distinct !DILocation(line: 618, column: 3, scope: !926)
!950 = !DILocation(line: 531, column: 37, scope: !928, inlinedAt: !949)
!951 = !DILocation(line: 531, column: 23, scope: !928, inlinedAt: !949)
!952 = !DILocation(line: 531, column: 43, scope: !928, inlinedAt: !949)
!953 = !DILocation(line: 538, column: 30, scope: !944, inlinedAt: !949)
!954 = !DILocation(line: 539, column: 15, scope: !955, inlinedAt: !949)
!955 = distinct !DILexicalBlock(scope: !944, file: !1, line: 539, column: 7)
!956 = !DILocation(line: 539, column: 20, scope: !955, inlinedAt: !949)
!957 = !DILocation(line: 532, column: 12, scope: !928, inlinedAt: !949)
!958 = !DILocation(line: 531, column: 12, scope: !928, inlinedAt: !949)
!959 = !DILocation(line: 540, column: 10, scope: !960, inlinedAt: !949)
!960 = distinct !DILexicalBlock(scope: !955, file: !1, line: 539, column: 45)
!961 = !DILocation(line: 541, column: 10, scope: !960, inlinedAt: !949)
!962 = !DILocation(line: 542, column: 4, scope: !960, inlinedAt: !949)
!963 = !DILocation(line: 539, column: 12, scope: !955, inlinedAt: !949)
!964 = !DILocation(line: 545, column: 39, scope: !944, inlinedAt: !949)
!965 = !DILocation(line: 546, column: 14, scope: !944, inlinedAt: !949)
!966 = !DILocation(line: 546, column: 8, scope: !944, inlinedAt: !949)
!967 = !DILocation(line: 546, column: 5, scope: !944, inlinedAt: !949)
!968 = !DILocation(line: 547, column: 5, scope: !944, inlinedAt: !949)
!969 = !DILocation(line: 545, column: 24, scope: !944, inlinedAt: !949)
!970 = !DILocation(line: 0, scope: !944, inlinedAt: !949)
!971 = !DILocation(line: 548, column: 27, scope: !944, inlinedAt: !949)
!972 = !DILocation(line: 549, column: 18, scope: !944, inlinedAt: !949)
!973 = !DILocation(line: 551, column: 7, scope: !974, inlinedAt: !949)
!974 = distinct !DILexicalBlock(scope: !944, file: !1, line: 551, column: 7)
!975 = !DILocation(line: 551, column: 18, scope: !974, inlinedAt: !949)
!976 = !DILocation(line: 551, column: 15, scope: !974, inlinedAt: !949)
!977 = !DILocation(line: 551, column: 7, scope: !944, inlinedAt: !949)
!978 = !DILocation(line: 552, column: 11, scope: !979, inlinedAt: !949)
!979 = distinct !DILexicalBlock(scope: !974, file: !1, line: 551, column: 28)
!980 = !DILocation(line: 552, column: 17, scope: !979, inlinedAt: !949)
!981 = !DILocation(line: 552, column: 4, scope: !979, inlinedAt: !949)
!982 = !DILocation(line: 553, column: 9, scope: !983, inlinedAt: !949)
!983 = distinct !DILexicalBlock(scope: !979, file: !1, line: 553, column: 9)
!984 = !DILocation(line: 553, column: 20, scope: !983, inlinedAt: !949)
!985 = !DILocation(line: 553, column: 17, scope: !983, inlinedAt: !949)
!986 = !DILocation(line: 553, column: 9, scope: !979, inlinedAt: !949)
!987 = distinct !{!987, !981, !988}
!988 = !DILocation(line: 554, column: 6, scope: !979, inlinedAt: !949)
!989 = !DILocation(line: 557, column: 13, scope: !990, inlinedAt: !949)
!990 = distinct !DILexicalBlock(scope: !991, file: !1, line: 556, column: 26)
!991 = distinct !DILexicalBlock(scope: !979, file: !1, line: 556, column: 8)
!992 = !DILocation(line: 557, column: 11, scope: !990, inlinedAt: !949)
!993 = !DILocation(line: 558, column: 13, scope: !990, inlinedAt: !949)
!994 = !DILocation(line: 558, column: 11, scope: !990, inlinedAt: !949)
!995 = !DILocation(line: 559, column: 5, scope: !990, inlinedAt: !949)
!996 = !DILocation(line: 563, column: 17, scope: !997, inlinedAt: !949)
!997 = distinct !DILexicalBlock(scope: !944, file: !1, line: 563, column: 7)
!998 = !DILocation(line: 563, column: 7, scope: !997, inlinedAt: !949)
!999 = !DILocation(line: 563, column: 15, scope: !997, inlinedAt: !949)
!1000 = !DILocation(line: 563, column: 7, scope: !944, inlinedAt: !949)
!1001 = !DILocation(line: 564, column: 10, scope: !1002, inlinedAt: !949)
!1002 = distinct !DILexicalBlock(scope: !997, file: !1, line: 563, column: 27)
!1003 = !DILocation(line: 565, column: 16, scope: !1002, inlinedAt: !949)
!1004 = !DILocation(line: 568, column: 3, scope: !1002, inlinedAt: !949)
!1005 = !DILocation(line: 569, column: 10, scope: !1006, inlinedAt: !949)
!1006 = distinct !DILexicalBlock(scope: !997, file: !1, line: 568, column: 10)
!1007 = !DILocation(line: 0, scope: !997, inlinedAt: !949)
!1008 = distinct !{!1008, !1009, !1010}
!1009 = !DILocation(line: 537, column: 2, scope: !928, inlinedAt: !949)
!1010 = !DILocation(line: 574, column: 2, scope: !928, inlinedAt: !949)
!1011 = !DILocation(line: 0, scope: !223, inlinedAt: !1012)
!1012 = distinct !DILocation(line: 618, column: 3, scope: !926)
!1013 = !DILocation(line: 150, column: 6, scope: !228, inlinedAt: !1012)
!1014 = !DILocation(line: 150, column: 30, scope: !228, inlinedAt: !1012)
!1015 = !DILocation(line: 150, column: 23, scope: !228, inlinedAt: !1012)
!1016 = !DILocation(line: 150, column: 6, scope: !223, inlinedAt: !1012)
!1017 = !DILocation(line: 153, column: 2, scope: !223, inlinedAt: !1012)
!1018 = !DILocation(line: 156, column: 6, scope: !234, inlinedAt: !1012)
!1019 = !DILocation(line: 156, column: 6, scope: !223, inlinedAt: !1012)
!1020 = !DILocation(line: 0, scope: !237, inlinedAt: !1021)
!1021 = distinct !DILocation(line: 157, column: 3, scope: !234, inlinedAt: !1012)
!1022 = !DILocation(line: 116, column: 26, scope: !237, inlinedAt: !1021)
!1023 = !DILocation(line: 119, column: 29, scope: !237, inlinedAt: !1021)
!1024 = !DILocation(line: 119, column: 49, scope: !237, inlinedAt: !1021)
!1025 = !DILocation(line: 119, column: 43, scope: !237, inlinedAt: !1021)
!1026 = !DILocation(line: 120, column: 23, scope: !237, inlinedAt: !1021)
!1027 = !DILocation(line: 0, scope: !243, inlinedAt: !1021)
!1028 = !DILocation(line: 122, column: 25, scope: !253, inlinedAt: !1021)
!1029 = !DILocation(line: 122, column: 2, scope: !243, inlinedAt: !1021)
!1030 = !DILocation(line: 122, column: 34, scope: !253, inlinedAt: !1021)
!1031 = !DILocation(line: 133, column: 7, scope: !257, inlinedAt: !1021)
!1032 = !DILocation(line: 133, column: 7, scope: !258, inlinedAt: !1021)
!1033 = !DILocation(line: 0, scope: !257, inlinedAt: !1021)
!1034 = distinct !{!1034, !1029, !1035, !263, !264}
!1035 = !DILocation(line: 137, column: 2, scope: !243, inlinedAt: !1021)
!1036 = distinct !{!1036, !1029, !1035, !264, !263}
!1037 = !DILocation(line: 140, column: 13, scope: !237, inlinedAt: !1021)
!1038 = !DILocation(line: 157, column: 3, scope: !234, inlinedAt: !1012)
!1039 = !DILocation(line: 620, column: 11, scope: !891)
!1040 = !DILocation(line: 620, column: 20, scope: !891)
!1041 = !DILocation(line: 620, column: 2, scope: !896)
!1042 = distinct !{!1042, !902, !1043}
!1043 = !DILocation(line: 620, column: 24, scope: !891)
!1044 = !DILocation(line: 621, column: 1, scope: !891)
!1045 = distinct !DISubprogram(name: "lzma_mf_bt3_find", scope: !1, file: !1, line: 627, type: !48, scopeLine: 628, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1046)
!1046 = !{!1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058}
!1047 = !DILocalVariable(name: "mf", arg: 1, scope: !1045, file: !1, line: 627, type: !27)
!1048 = !DILocalVariable(name: "matches", arg: 2, scope: !1045, file: !1, line: 627, type: !50)
!1049 = !DILocalVariable(name: "len_limit", scope: !1045, file: !1, line: 629, type: !12)
!1050 = !DILocalVariable(name: "cur", scope: !1045, file: !1, line: 629, type: !86)
!1051 = !DILocalVariable(name: "pos", scope: !1045, file: !1, line: 629, type: !78)
!1052 = !DILocalVariable(name: "matches_count", scope: !1045, file: !1, line: 629, type: !12)
!1053 = !DILocalVariable(name: "temp", scope: !1045, file: !1, line: 631, type: !78)
!1054 = !DILocalVariable(name: "hash_2_value", scope: !1045, file: !1, line: 631, type: !78)
!1055 = !DILocalVariable(name: "hash_value", scope: !1045, file: !1, line: 631, type: !78)
!1056 = !DILocalVariable(name: "delta2", scope: !1045, file: !1, line: 633, type: !78)
!1057 = !DILocalVariable(name: "cur_match", scope: !1045, file: !1, line: 634, type: !78)
!1058 = !DILocalVariable(name: "len_best", scope: !1045, file: !1, line: 639, type: !12)
!1059 = !DILocation(line: 0, scope: !1045)
!1060 = !DILocation(line: 629, column: 2, scope: !1045)
!1061 = !DILocation(line: 0, scope: !151, inlinedAt: !1062)
!1062 = distinct !DILocation(line: 629, column: 2, scope: !1045)
!1063 = !DILocation(line: 232, column: 23, scope: !151, inlinedAt: !1062)
!1064 = !DILocation(line: 629, column: 2, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1045, file: !1, line: 629, column: 2)
!1066 = !DILocation(line: 629, column: 2, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1065, file: !1, line: 629, column: 2)
!1068 = !DILocation(line: 0, scope: !163, inlinedAt: !1069)
!1069 = distinct !DILocation(line: 629, column: 2, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1067, file: !1, line: 629, column: 2)
!1071 = !DILocation(line: 178, column: 2, scope: !163, inlinedAt: !1069)
!1072 = !DILocation(line: 180, column: 8, scope: !163, inlinedAt: !1069)
!1073 = !DILocation(line: 180, column: 2, scope: !163, inlinedAt: !1069)
!1074 = !DILocation(line: 629, column: 2, scope: !1070)
!1075 = !DILocation(line: 0, scope: !108, inlinedAt: !1076)
!1076 = distinct !DILocation(line: 629, column: 2, scope: !1045)
!1077 = !DILocation(line: 224, column: 20, scope: !108, inlinedAt: !1076)
!1078 = !DILocation(line: 631, column: 2, scope: !1045)
!1079 = !DILocation(line: 633, column: 36, scope: !1045)
!1080 = !DILocation(line: 633, column: 32, scope: !1045)
!1081 = !DILocation(line: 633, column: 30, scope: !1045)
!1082 = !DILocation(line: 634, column: 54, scope: !1045)
!1083 = !DILocation(line: 634, column: 29, scope: !1045)
!1084 = !DILocation(line: 636, column: 25, scope: !1045)
!1085 = !DILocation(line: 637, column: 6, scope: !1045)
!1086 = !DILocation(line: 637, column: 2, scope: !1045)
!1087 = !DILocation(line: 637, column: 41, scope: !1045)
!1088 = !DILocation(line: 641, column: 19, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1045, file: !1, line: 641, column: 6)
!1090 = !DILocation(line: 641, column: 13, scope: !1089)
!1091 = !DILocation(line: 641, column: 31, scope: !1089)
!1092 = !DILocation(line: 641, column: 40, scope: !1089)
!1093 = !DILocation(line: 641, column: 34, scope: !1089)
!1094 = !DILocation(line: 641, column: 53, scope: !1089)
!1095 = !DILocation(line: 641, column: 50, scope: !1089)
!1096 = !DILocation(line: 641, column: 6, scope: !1045)
!1097 = !DILocation(line: 642, column: 20, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1099, file: !1, line: 642, column: 3)
!1099 = distinct !DILexicalBlock(scope: !1100, file: !1, line: 642, column: 3)
!1100 = distinct !DILexicalBlock(scope: !1089, file: !1, line: 641, column: 59)
!1101 = !DILocation(line: 642, column: 3, scope: !1099)
!1102 = !DILocation(line: 643, column: 14, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1098, file: !1, line: 643, column: 8)
!1104 = !DILocation(line: 643, column: 25, scope: !1103)
!1105 = !DILocation(line: 643, column: 8, scope: !1103)
!1106 = !DILocation(line: 643, column: 38, scope: !1103)
!1107 = !DILocation(line: 643, column: 35, scope: !1103)
!1108 = !DILocation(line: 643, column: 8, scope: !1098)
!1109 = !DILocation(line: 642, column: 34, scope: !1098)
!1110 = distinct !{!1110, !1101, !1111}
!1111 = !DILocation(line: 644, column: 5, scope: !1099)
!1112 = !DILocation(line: 646, column: 18, scope: !1100)
!1113 = !DILocation(line: 647, column: 28, scope: !1100)
!1114 = !DILocation(line: 647, column: 14, scope: !1100)
!1115 = !DILocation(line: 647, column: 19, scope: !1100)
!1116 = !DILocation(line: 656, column: 2, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1045, file: !1, line: 656, column: 2)
!1118 = !DILocation(line: 650, column: 7, scope: !1100)
!1119 = !DILocation(line: 651, column: 4, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1121, file: !1, line: 651, column: 4)
!1121 = distinct !DILexicalBlock(scope: !1122, file: !1, line: 650, column: 30)
!1122 = distinct !DILexicalBlock(scope: !1100, file: !1, line: 650, column: 7)
!1123 = !DILocation(line: 0, scope: !928, inlinedAt: !1124)
!1124 = distinct !DILocation(line: 651, column: 4, scope: !1120)
!1125 = !DILocation(line: 531, column: 37, scope: !928, inlinedAt: !1124)
!1126 = !DILocation(line: 531, column: 23, scope: !928, inlinedAt: !1124)
!1127 = !DILocation(line: 531, column: 43, scope: !928, inlinedAt: !1124)
!1128 = !DILocation(line: 538, column: 30, scope: !944, inlinedAt: !1124)
!1129 = !DILocation(line: 539, column: 15, scope: !955, inlinedAt: !1124)
!1130 = !DILocation(line: 539, column: 20, scope: !955, inlinedAt: !1124)
!1131 = !DILocation(line: 532, column: 12, scope: !928, inlinedAt: !1124)
!1132 = !DILocation(line: 531, column: 12, scope: !928, inlinedAt: !1124)
!1133 = !DILocation(line: 540, column: 10, scope: !960, inlinedAt: !1124)
!1134 = !DILocation(line: 541, column: 10, scope: !960, inlinedAt: !1124)
!1135 = !DILocation(line: 542, column: 4, scope: !960, inlinedAt: !1124)
!1136 = !DILocation(line: 539, column: 12, scope: !955, inlinedAt: !1124)
!1137 = !DILocation(line: 545, column: 39, scope: !944, inlinedAt: !1124)
!1138 = !DILocation(line: 546, column: 14, scope: !944, inlinedAt: !1124)
!1139 = !DILocation(line: 546, column: 8, scope: !944, inlinedAt: !1124)
!1140 = !DILocation(line: 546, column: 5, scope: !944, inlinedAt: !1124)
!1141 = !DILocation(line: 547, column: 5, scope: !944, inlinedAt: !1124)
!1142 = !DILocation(line: 545, column: 24, scope: !944, inlinedAt: !1124)
!1143 = !DILocation(line: 0, scope: !944, inlinedAt: !1124)
!1144 = !DILocation(line: 548, column: 27, scope: !944, inlinedAt: !1124)
!1145 = !DILocation(line: 549, column: 18, scope: !944, inlinedAt: !1124)
!1146 = !DILocation(line: 551, column: 7, scope: !974, inlinedAt: !1124)
!1147 = !DILocation(line: 551, column: 18, scope: !974, inlinedAt: !1124)
!1148 = !DILocation(line: 551, column: 15, scope: !974, inlinedAt: !1124)
!1149 = !DILocation(line: 551, column: 7, scope: !944, inlinedAt: !1124)
!1150 = !DILocation(line: 552, column: 11, scope: !979, inlinedAt: !1124)
!1151 = !DILocation(line: 552, column: 17, scope: !979, inlinedAt: !1124)
!1152 = !DILocation(line: 552, column: 4, scope: !979, inlinedAt: !1124)
!1153 = !DILocation(line: 553, column: 9, scope: !983, inlinedAt: !1124)
!1154 = !DILocation(line: 553, column: 20, scope: !983, inlinedAt: !1124)
!1155 = !DILocation(line: 553, column: 17, scope: !983, inlinedAt: !1124)
!1156 = !DILocation(line: 553, column: 9, scope: !979, inlinedAt: !1124)
!1157 = distinct !{!1157, !1152, !1158}
!1158 = !DILocation(line: 554, column: 6, scope: !979, inlinedAt: !1124)
!1159 = !DILocation(line: 557, column: 13, scope: !990, inlinedAt: !1124)
!1160 = !DILocation(line: 557, column: 11, scope: !990, inlinedAt: !1124)
!1161 = !DILocation(line: 558, column: 13, scope: !990, inlinedAt: !1124)
!1162 = !DILocation(line: 558, column: 11, scope: !990, inlinedAt: !1124)
!1163 = !DILocation(line: 559, column: 5, scope: !990, inlinedAt: !1124)
!1164 = !DILocation(line: 563, column: 17, scope: !997, inlinedAt: !1124)
!1165 = !DILocation(line: 563, column: 7, scope: !997, inlinedAt: !1124)
!1166 = !DILocation(line: 563, column: 15, scope: !997, inlinedAt: !1124)
!1167 = !DILocation(line: 563, column: 7, scope: !944, inlinedAt: !1124)
!1168 = !DILocation(line: 564, column: 10, scope: !1002, inlinedAt: !1124)
!1169 = !DILocation(line: 565, column: 16, scope: !1002, inlinedAt: !1124)
!1170 = !DILocation(line: 568, column: 3, scope: !1002, inlinedAt: !1124)
!1171 = !DILocation(line: 569, column: 10, scope: !1006, inlinedAt: !1124)
!1172 = !DILocation(line: 0, scope: !997, inlinedAt: !1124)
!1173 = distinct !{!1173, !1174, !1175}
!1174 = !DILocation(line: 537, column: 2, scope: !928, inlinedAt: !1124)
!1175 = !DILocation(line: 574, column: 2, scope: !928, inlinedAt: !1124)
!1176 = !DILocation(line: 0, scope: !223, inlinedAt: !1177)
!1177 = distinct !DILocation(line: 651, column: 4, scope: !1120)
!1178 = !DILocation(line: 150, column: 6, scope: !228, inlinedAt: !1177)
!1179 = !DILocation(line: 150, column: 30, scope: !228, inlinedAt: !1177)
!1180 = !DILocation(line: 150, column: 23, scope: !228, inlinedAt: !1177)
!1181 = !DILocation(line: 150, column: 6, scope: !223, inlinedAt: !1177)
!1182 = !DILocation(line: 153, column: 2, scope: !223, inlinedAt: !1177)
!1183 = !DILocation(line: 156, column: 6, scope: !234, inlinedAt: !1177)
!1184 = !DILocation(line: 156, column: 6, scope: !223, inlinedAt: !1177)
!1185 = !DILocation(line: 0, scope: !237, inlinedAt: !1186)
!1186 = distinct !DILocation(line: 157, column: 3, scope: !234, inlinedAt: !1177)
!1187 = !DILocation(line: 116, column: 26, scope: !237, inlinedAt: !1186)
!1188 = !DILocation(line: 119, column: 29, scope: !237, inlinedAt: !1186)
!1189 = !DILocation(line: 119, column: 49, scope: !237, inlinedAt: !1186)
!1190 = !DILocation(line: 119, column: 43, scope: !237, inlinedAt: !1186)
!1191 = !DILocation(line: 120, column: 23, scope: !237, inlinedAt: !1186)
!1192 = !DILocation(line: 0, scope: !243, inlinedAt: !1186)
!1193 = !DILocation(line: 122, column: 25, scope: !253, inlinedAt: !1186)
!1194 = !DILocation(line: 122, column: 2, scope: !243, inlinedAt: !1186)
!1195 = !DILocation(line: 122, column: 34, scope: !253, inlinedAt: !1186)
!1196 = !DILocation(line: 133, column: 7, scope: !257, inlinedAt: !1186)
!1197 = !DILocation(line: 133, column: 7, scope: !258, inlinedAt: !1186)
!1198 = !DILocation(line: 0, scope: !257, inlinedAt: !1186)
!1199 = distinct !{!1199, !1194, !1200, !263, !264}
!1200 = !DILocation(line: 137, column: 2, scope: !243, inlinedAt: !1186)
!1201 = distinct !{!1201, !1194, !1200, !264, !263}
!1202 = !DILocation(line: 140, column: 13, scope: !237, inlinedAt: !1186)
!1203 = !DILocation(line: 157, column: 3, scope: !234, inlinedAt: !1177)
!1204 = !DILocation(line: 639, column: 11, scope: !1045)
!1205 = !DILocation(line: 0, scope: !769, inlinedAt: !1206)
!1206 = distinct !DILocation(line: 656, column: 2, scope: !1117)
!1207 = !DILocation(line: 465, column: 37, scope: !769, inlinedAt: !1206)
!1208 = !DILocation(line: 465, column: 23, scope: !769, inlinedAt: !1206)
!1209 = !DILocation(line: 465, column: 43, scope: !769, inlinedAt: !1206)
!1210 = !DILocation(line: 472, column: 30, scope: !785, inlinedAt: !1206)
!1211 = !DILocation(line: 473, column: 15, scope: !796, inlinedAt: !1206)
!1212 = !DILocation(line: 473, column: 20, scope: !796, inlinedAt: !1206)
!1213 = !DILocation(line: 471, column: 2, scope: !769, inlinedAt: !1206)
!1214 = !DILocation(line: 465, column: 12, scope: !769, inlinedAt: !1206)
!1215 = !DILocation(line: 466, column: 12, scope: !769, inlinedAt: !1206)
!1216 = !DILocation(line: 474, column: 10, scope: !802, inlinedAt: !1206)
!1217 = !DILocation(line: 475, column: 10, scope: !802, inlinedAt: !1206)
!1218 = !DILocation(line: 476, column: 4, scope: !802, inlinedAt: !1206)
!1219 = !DILocation(line: 473, column: 12, scope: !796, inlinedAt: !1206)
!1220 = !DILocation(line: 479, column: 45, scope: !785, inlinedAt: !1206)
!1221 = !DILocation(line: 480, column: 14, scope: !785, inlinedAt: !1206)
!1222 = !DILocation(line: 480, column: 8, scope: !785, inlinedAt: !1206)
!1223 = !DILocation(line: 480, column: 5, scope: !785, inlinedAt: !1206)
!1224 = !DILocation(line: 481, column: 5, scope: !785, inlinedAt: !1206)
!1225 = !DILocation(line: 479, column: 30, scope: !785, inlinedAt: !1206)
!1226 = !DILocation(line: 0, scope: !785, inlinedAt: !1206)
!1227 = !DILocation(line: 483, column: 33, scope: !785, inlinedAt: !1206)
!1228 = !DILocation(line: 484, column: 18, scope: !785, inlinedAt: !1206)
!1229 = !DILocation(line: 486, column: 7, scope: !816, inlinedAt: !1206)
!1230 = !DILocation(line: 486, column: 18, scope: !816, inlinedAt: !1206)
!1231 = !DILocation(line: 486, column: 15, scope: !816, inlinedAt: !1206)
!1232 = !DILocation(line: 486, column: 7, scope: !785, inlinedAt: !1206)
!1233 = !DILocation(line: 487, column: 11, scope: !821, inlinedAt: !1206)
!1234 = !DILocation(line: 487, column: 17, scope: !821, inlinedAt: !1206)
!1235 = !DILocation(line: 487, column: 4, scope: !821, inlinedAt: !1206)
!1236 = !DILocation(line: 488, column: 9, scope: !825, inlinedAt: !1206)
!1237 = !DILocation(line: 488, column: 20, scope: !825, inlinedAt: !1206)
!1238 = !DILocation(line: 488, column: 17, scope: !825, inlinedAt: !1206)
!1239 = !DILocation(line: 488, column: 9, scope: !821, inlinedAt: !1206)
!1240 = distinct !{!1240, !1235, !1241}
!1241 = !DILocation(line: 489, column: 6, scope: !821, inlinedAt: !1206)
!1242 = !DILocation(line: 491, column: 17, scope: !832, inlinedAt: !1206)
!1243 = !DILocation(line: 491, column: 8, scope: !821, inlinedAt: !1206)
!1244 = !DILocation(line: 493, column: 18, scope: !835, inlinedAt: !1206)
!1245 = !DILocation(line: 494, column: 27, scope: !835, inlinedAt: !1206)
!1246 = !DILocation(line: 494, column: 14, scope: !835, inlinedAt: !1206)
!1247 = !DILocation(line: 494, column: 19, scope: !835, inlinedAt: !1206)
!1248 = !DILocation(line: 495, column: 5, scope: !835, inlinedAt: !1206)
!1249 = !DILocation(line: 497, column: 9, scope: !835, inlinedAt: !1206)
!1250 = !DILocation(line: 498, column: 14, scope: !842, inlinedAt: !1206)
!1251 = !DILocation(line: 498, column: 12, scope: !842, inlinedAt: !1206)
!1252 = !DILocation(line: 499, column: 14, scope: !842, inlinedAt: !1206)
!1253 = !DILocation(line: 499, column: 12, scope: !842, inlinedAt: !1206)
!1254 = !DILocation(line: 500, column: 6, scope: !842, inlinedAt: !1206)
!1255 = !DILocation(line: 505, column: 7, scope: !849, inlinedAt: !1206)
!1256 = !DILocation(line: 505, column: 17, scope: !849, inlinedAt: !1206)
!1257 = !DILocation(line: 505, column: 15, scope: !849, inlinedAt: !1206)
!1258 = !DILocation(line: 505, column: 7, scope: !785, inlinedAt: !1206)
!1259 = !DILocation(line: 506, column: 10, scope: !854, inlinedAt: !1206)
!1260 = !DILocation(line: 507, column: 16, scope: !854, inlinedAt: !1206)
!1261 = !DILocation(line: 510, column: 3, scope: !854, inlinedAt: !1206)
!1262 = !DILocation(line: 511, column: 10, scope: !858, inlinedAt: !1206)
!1263 = !DILocation(line: 0, scope: !849, inlinedAt: !1206)
!1264 = distinct !{!1264, !1213, !1265}
!1265 = !DILocation(line: 516, column: 2, scope: !769, inlinedAt: !1206)
!1266 = !DILocation(line: 0, scope: !223, inlinedAt: !1267)
!1267 = distinct !DILocation(line: 656, column: 2, scope: !1117)
!1268 = !DILocation(line: 150, column: 6, scope: !228, inlinedAt: !1267)
!1269 = !DILocation(line: 150, column: 30, scope: !228, inlinedAt: !1267)
!1270 = !DILocation(line: 150, column: 23, scope: !228, inlinedAt: !1267)
!1271 = !DILocation(line: 150, column: 6, scope: !223, inlinedAt: !1267)
!1272 = !DILocation(line: 153, column: 2, scope: !223, inlinedAt: !1267)
!1273 = !DILocation(line: 156, column: 6, scope: !234, inlinedAt: !1267)
!1274 = !DILocation(line: 156, column: 6, scope: !223, inlinedAt: !1267)
!1275 = !DILocation(line: 0, scope: !237, inlinedAt: !1276)
!1276 = distinct !DILocation(line: 157, column: 3, scope: !234, inlinedAt: !1267)
!1277 = !DILocation(line: 116, column: 26, scope: !237, inlinedAt: !1276)
!1278 = !DILocation(line: 119, column: 29, scope: !237, inlinedAt: !1276)
!1279 = !DILocation(line: 119, column: 49, scope: !237, inlinedAt: !1276)
!1280 = !DILocation(line: 119, column: 43, scope: !237, inlinedAt: !1276)
!1281 = !DILocation(line: 120, column: 23, scope: !237, inlinedAt: !1276)
!1282 = !DILocation(line: 0, scope: !243, inlinedAt: !1276)
!1283 = !DILocation(line: 122, column: 25, scope: !253, inlinedAt: !1276)
!1284 = !DILocation(line: 122, column: 2, scope: !243, inlinedAt: !1276)
!1285 = !DILocation(line: 122, column: 34, scope: !253, inlinedAt: !1276)
!1286 = !DILocation(line: 133, column: 7, scope: !257, inlinedAt: !1276)
!1287 = !DILocation(line: 133, column: 7, scope: !258, inlinedAt: !1276)
!1288 = !DILocation(line: 0, scope: !257, inlinedAt: !1276)
!1289 = distinct !{!1289, !1284, !1290, !263, !264}
!1290 = !DILocation(line: 137, column: 2, scope: !243, inlinedAt: !1276)
!1291 = distinct !{!1291, !1284, !1290, !264, !263}
!1292 = !DILocation(line: 140, column: 13, scope: !237, inlinedAt: !1276)
!1293 = !DILocation(line: 157, column: 3, scope: !234, inlinedAt: !1267)
!1294 = !DILocation(line: 657, column: 1, scope: !1045)
!1295 = distinct !DISubprogram(name: "lzma_mf_bt3_skip", scope: !1, file: !1, line: 661, type: !58, scopeLine: 662, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1296)
!1296 = !{!1297, !1298, !1299, !1301, !1302, !1303, !1304, !1305, !1306}
!1297 = !DILocalVariable(name: "mf", arg: 1, scope: !1295, file: !1, line: 661, type: !27)
!1298 = !DILocalVariable(name: "amount", arg: 2, scope: !1295, file: !1, line: 661, type: !12)
!1299 = !DILocalVariable(name: "len_limit", scope: !1300, file: !1, line: 664, type: !12)
!1300 = distinct !DILexicalBlock(scope: !1295, file: !1, line: 663, column: 5)
!1301 = !DILocalVariable(name: "cur", scope: !1300, file: !1, line: 664, type: !86)
!1302 = !DILocalVariable(name: "pos", scope: !1300, file: !1, line: 664, type: !78)
!1303 = !DILocalVariable(name: "temp", scope: !1300, file: !1, line: 666, type: !78)
!1304 = !DILocalVariable(name: "hash_2_value", scope: !1300, file: !1, line: 666, type: !78)
!1305 = !DILocalVariable(name: "hash_value", scope: !1300, file: !1, line: 666, type: !78)
!1306 = !DILocalVariable(name: "cur_match", scope: !1300, file: !1, line: 668, type: !78)
!1307 = !DILocation(line: 0, scope: !1295)
!1308 = !DILocation(line: 663, column: 2, scope: !1295)
!1309 = !DILocation(line: 664, column: 3, scope: !1300)
!1310 = !DILocation(line: 0, scope: !151, inlinedAt: !1311)
!1311 = distinct !DILocation(line: 664, column: 3, scope: !1300)
!1312 = !DILocation(line: 232, column: 23, scope: !151, inlinedAt: !1311)
!1313 = !DILocation(line: 0, scope: !1300)
!1314 = !DILocation(line: 664, column: 3, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1300, file: !1, line: 664, column: 3)
!1316 = !DILocation(line: 664, column: 3, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1315, file: !1, line: 664, column: 3)
!1318 = !DILocation(line: 0, scope: !163, inlinedAt: !1319)
!1319 = distinct !DILocation(line: 664, column: 3, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1317, file: !1, line: 664, column: 3)
!1321 = !DILocation(line: 178, column: 2, scope: !163, inlinedAt: !1319)
!1322 = !DILocation(line: 180, column: 2, scope: !163, inlinedAt: !1319)
!1323 = !DILocation(line: 664, column: 3, scope: !1320)
!1324 = !DILocation(line: 0, scope: !108, inlinedAt: !1325)
!1325 = distinct !DILocation(line: 664, column: 3, scope: !1300)
!1326 = !DILocation(line: 224, column: 20, scope: !108, inlinedAt: !1325)
!1327 = !DILocation(line: 666, column: 3, scope: !1300)
!1328 = !DILocation(line: 669, column: 11, scope: !1300)
!1329 = !DILocation(line: 669, column: 32, scope: !1300)
!1330 = !DILocation(line: 669, column: 7, scope: !1300)
!1331 = !DILocation(line: 671, column: 3, scope: !1300)
!1332 = !DILocation(line: 671, column: 26, scope: !1300)
!1333 = !DILocation(line: 672, column: 7, scope: !1300)
!1334 = !DILocation(line: 672, column: 3, scope: !1300)
!1335 = !DILocation(line: 672, column: 42, scope: !1300)
!1336 = !DILocation(line: 674, column: 3, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1300, file: !1, line: 674, column: 3)
!1338 = !DILocation(line: 0, scope: !928, inlinedAt: !1339)
!1339 = distinct !DILocation(line: 674, column: 3, scope: !1337)
!1340 = !DILocation(line: 531, column: 37, scope: !928, inlinedAt: !1339)
!1341 = !DILocation(line: 531, column: 23, scope: !928, inlinedAt: !1339)
!1342 = !DILocation(line: 531, column: 43, scope: !928, inlinedAt: !1339)
!1343 = !DILocation(line: 538, column: 30, scope: !944, inlinedAt: !1339)
!1344 = !DILocation(line: 539, column: 15, scope: !955, inlinedAt: !1339)
!1345 = !DILocation(line: 539, column: 20, scope: !955, inlinedAt: !1339)
!1346 = !DILocation(line: 532, column: 12, scope: !928, inlinedAt: !1339)
!1347 = !DILocation(line: 531, column: 12, scope: !928, inlinedAt: !1339)
!1348 = !DILocation(line: 540, column: 10, scope: !960, inlinedAt: !1339)
!1349 = !DILocation(line: 541, column: 10, scope: !960, inlinedAt: !1339)
!1350 = !DILocation(line: 542, column: 4, scope: !960, inlinedAt: !1339)
!1351 = !DILocation(line: 539, column: 12, scope: !955, inlinedAt: !1339)
!1352 = !DILocation(line: 545, column: 39, scope: !944, inlinedAt: !1339)
!1353 = !DILocation(line: 546, column: 14, scope: !944, inlinedAt: !1339)
!1354 = !DILocation(line: 546, column: 8, scope: !944, inlinedAt: !1339)
!1355 = !DILocation(line: 546, column: 5, scope: !944, inlinedAt: !1339)
!1356 = !DILocation(line: 547, column: 5, scope: !944, inlinedAt: !1339)
!1357 = !DILocation(line: 545, column: 24, scope: !944, inlinedAt: !1339)
!1358 = !DILocation(line: 0, scope: !944, inlinedAt: !1339)
!1359 = !DILocation(line: 548, column: 27, scope: !944, inlinedAt: !1339)
!1360 = !DILocation(line: 549, column: 18, scope: !944, inlinedAt: !1339)
!1361 = !DILocation(line: 551, column: 7, scope: !974, inlinedAt: !1339)
!1362 = !DILocation(line: 551, column: 18, scope: !974, inlinedAt: !1339)
!1363 = !DILocation(line: 551, column: 15, scope: !974, inlinedAt: !1339)
!1364 = !DILocation(line: 551, column: 7, scope: !944, inlinedAt: !1339)
!1365 = !DILocation(line: 552, column: 11, scope: !979, inlinedAt: !1339)
!1366 = !DILocation(line: 552, column: 17, scope: !979, inlinedAt: !1339)
!1367 = !DILocation(line: 552, column: 4, scope: !979, inlinedAt: !1339)
!1368 = !DILocation(line: 553, column: 9, scope: !983, inlinedAt: !1339)
!1369 = !DILocation(line: 553, column: 20, scope: !983, inlinedAt: !1339)
!1370 = !DILocation(line: 553, column: 17, scope: !983, inlinedAt: !1339)
!1371 = !DILocation(line: 553, column: 9, scope: !979, inlinedAt: !1339)
!1372 = distinct !{!1372, !1367, !1373}
!1373 = !DILocation(line: 554, column: 6, scope: !979, inlinedAt: !1339)
!1374 = !DILocation(line: 557, column: 13, scope: !990, inlinedAt: !1339)
!1375 = !DILocation(line: 557, column: 11, scope: !990, inlinedAt: !1339)
!1376 = !DILocation(line: 558, column: 13, scope: !990, inlinedAt: !1339)
!1377 = !DILocation(line: 558, column: 11, scope: !990, inlinedAt: !1339)
!1378 = !DILocation(line: 559, column: 5, scope: !990, inlinedAt: !1339)
!1379 = !DILocation(line: 563, column: 17, scope: !997, inlinedAt: !1339)
!1380 = !DILocation(line: 563, column: 7, scope: !997, inlinedAt: !1339)
!1381 = !DILocation(line: 563, column: 15, scope: !997, inlinedAt: !1339)
!1382 = !DILocation(line: 563, column: 7, scope: !944, inlinedAt: !1339)
!1383 = !DILocation(line: 564, column: 10, scope: !1002, inlinedAt: !1339)
!1384 = !DILocation(line: 565, column: 16, scope: !1002, inlinedAt: !1339)
!1385 = !DILocation(line: 568, column: 3, scope: !1002, inlinedAt: !1339)
!1386 = !DILocation(line: 569, column: 10, scope: !1006, inlinedAt: !1339)
!1387 = !DILocation(line: 0, scope: !997, inlinedAt: !1339)
!1388 = distinct !{!1388, !1389, !1390}
!1389 = !DILocation(line: 537, column: 2, scope: !928, inlinedAt: !1339)
!1390 = !DILocation(line: 574, column: 2, scope: !928, inlinedAt: !1339)
!1391 = !DILocation(line: 0, scope: !223, inlinedAt: !1392)
!1392 = distinct !DILocation(line: 674, column: 3, scope: !1337)
!1393 = !DILocation(line: 150, column: 6, scope: !228, inlinedAt: !1392)
!1394 = !DILocation(line: 150, column: 30, scope: !228, inlinedAt: !1392)
!1395 = !DILocation(line: 150, column: 23, scope: !228, inlinedAt: !1392)
!1396 = !DILocation(line: 150, column: 6, scope: !223, inlinedAt: !1392)
!1397 = !DILocation(line: 153, column: 2, scope: !223, inlinedAt: !1392)
!1398 = !DILocation(line: 156, column: 6, scope: !234, inlinedAt: !1392)
!1399 = !DILocation(line: 156, column: 6, scope: !223, inlinedAt: !1392)
!1400 = !DILocation(line: 0, scope: !237, inlinedAt: !1401)
!1401 = distinct !DILocation(line: 157, column: 3, scope: !234, inlinedAt: !1392)
!1402 = !DILocation(line: 116, column: 26, scope: !237, inlinedAt: !1401)
!1403 = !DILocation(line: 119, column: 29, scope: !237, inlinedAt: !1401)
!1404 = !DILocation(line: 119, column: 49, scope: !237, inlinedAt: !1401)
!1405 = !DILocation(line: 119, column: 43, scope: !237, inlinedAt: !1401)
!1406 = !DILocation(line: 120, column: 23, scope: !237, inlinedAt: !1401)
!1407 = !DILocation(line: 0, scope: !243, inlinedAt: !1401)
!1408 = !DILocation(line: 122, column: 25, scope: !253, inlinedAt: !1401)
!1409 = !DILocation(line: 122, column: 2, scope: !243, inlinedAt: !1401)
!1410 = !DILocation(line: 122, column: 34, scope: !253, inlinedAt: !1401)
!1411 = !DILocation(line: 133, column: 7, scope: !257, inlinedAt: !1401)
!1412 = !DILocation(line: 133, column: 7, scope: !258, inlinedAt: !1401)
!1413 = !DILocation(line: 0, scope: !257, inlinedAt: !1401)
!1414 = distinct !{!1414, !1409, !1415, !263, !264}
!1415 = !DILocation(line: 137, column: 2, scope: !243, inlinedAt: !1401)
!1416 = distinct !{!1416, !1409, !1415, !264, !263}
!1417 = !DILocation(line: 140, column: 13, scope: !237, inlinedAt: !1401)
!1418 = !DILocation(line: 157, column: 3, scope: !234, inlinedAt: !1392)
!1419 = !DILocation(line: 676, column: 11, scope: !1295)
!1420 = !DILocation(line: 676, column: 20, scope: !1295)
!1421 = !DILocation(line: 676, column: 2, scope: !1300)
!1422 = distinct !{!1422, !1308, !1423}
!1423 = !DILocation(line: 676, column: 24, scope: !1295)
!1424 = !DILocation(line: 677, column: 1, scope: !1295)
!1425 = distinct !DISubprogram(name: "lzma_mf_bt4_find", scope: !1, file: !1, line: 683, type: !48, scopeLine: 684, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1426)
!1426 = !{!1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440}
!1427 = !DILocalVariable(name: "mf", arg: 1, scope: !1425, file: !1, line: 683, type: !27)
!1428 = !DILocalVariable(name: "matches", arg: 2, scope: !1425, file: !1, line: 683, type: !50)
!1429 = !DILocalVariable(name: "len_limit", scope: !1425, file: !1, line: 685, type: !12)
!1430 = !DILocalVariable(name: "cur", scope: !1425, file: !1, line: 685, type: !86)
!1431 = !DILocalVariable(name: "pos", scope: !1425, file: !1, line: 685, type: !78)
!1432 = !DILocalVariable(name: "matches_count", scope: !1425, file: !1, line: 685, type: !12)
!1433 = !DILocalVariable(name: "temp", scope: !1425, file: !1, line: 687, type: !78)
!1434 = !DILocalVariable(name: "hash_2_value", scope: !1425, file: !1, line: 687, type: !78)
!1435 = !DILocalVariable(name: "hash_3_value", scope: !1425, file: !1, line: 687, type: !78)
!1436 = !DILocalVariable(name: "hash_value", scope: !1425, file: !1, line: 687, type: !78)
!1437 = !DILocalVariable(name: "delta2", scope: !1425, file: !1, line: 689, type: !12)
!1438 = !DILocalVariable(name: "delta3", scope: !1425, file: !1, line: 690, type: !78)
!1439 = !DILocalVariable(name: "cur_match", scope: !1425, file: !1, line: 692, type: !78)
!1440 = !DILocalVariable(name: "len_best", scope: !1425, file: !1, line: 698, type: !12)
!1441 = !DILocation(line: 0, scope: !1425)
!1442 = !DILocation(line: 685, column: 2, scope: !1425)
!1443 = !DILocation(line: 0, scope: !151, inlinedAt: !1444)
!1444 = distinct !DILocation(line: 685, column: 2, scope: !1425)
!1445 = !DILocation(line: 232, column: 23, scope: !151, inlinedAt: !1444)
!1446 = !DILocation(line: 685, column: 2, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1425, file: !1, line: 685, column: 2)
!1448 = !DILocation(line: 685, column: 2, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1447, file: !1, line: 685, column: 2)
!1450 = !DILocation(line: 0, scope: !163, inlinedAt: !1451)
!1451 = distinct !DILocation(line: 685, column: 2, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1449, file: !1, line: 685, column: 2)
!1453 = !DILocation(line: 178, column: 2, scope: !163, inlinedAt: !1451)
!1454 = !DILocation(line: 180, column: 8, scope: !163, inlinedAt: !1451)
!1455 = !DILocation(line: 180, column: 2, scope: !163, inlinedAt: !1451)
!1456 = !DILocation(line: 685, column: 2, scope: !1452)
!1457 = !DILocation(line: 0, scope: !108, inlinedAt: !1458)
!1458 = distinct !DILocation(line: 685, column: 2, scope: !1425)
!1459 = !DILocation(line: 224, column: 20, scope: !108, inlinedAt: !1458)
!1460 = !DILocation(line: 687, column: 2, scope: !1425)
!1461 = !DILocation(line: 689, column: 30, scope: !1425)
!1462 = !DILocation(line: 689, column: 26, scope: !1425)
!1463 = !DILocation(line: 689, column: 24, scope: !1425)
!1464 = !DILocation(line: 691, column: 37, scope: !1425)
!1465 = !DILocation(line: 691, column: 12, scope: !1425)
!1466 = !DILocation(line: 691, column: 10, scope: !1425)
!1467 = !DILocation(line: 692, column: 54, scope: !1425)
!1468 = !DILocation(line: 692, column: 29, scope: !1425)
!1469 = !DILocation(line: 694, column: 25, scope: !1425)
!1470 = !DILocation(line: 695, column: 6, scope: !1425)
!1471 = !DILocation(line: 695, column: 2, scope: !1425)
!1472 = !DILocation(line: 695, column: 43, scope: !1425)
!1473 = !DILocation(line: 696, column: 6, scope: !1425)
!1474 = !DILocation(line: 696, column: 2, scope: !1425)
!1475 = !DILocation(line: 696, column: 41, scope: !1425)
!1476 = !DILocation(line: 700, column: 19, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1425, file: !1, line: 700, column: 6)
!1478 = !DILocation(line: 700, column: 13, scope: !1477)
!1479 = !DILocation(line: 700, column: 31, scope: !1477)
!1480 = !DILocation(line: 700, column: 40, scope: !1477)
!1481 = !DILocation(line: 700, column: 34, scope: !1477)
!1482 = !DILocation(line: 700, column: 53, scope: !1477)
!1483 = !DILocation(line: 700, column: 50, scope: !1477)
!1484 = !DILocation(line: 700, column: 6, scope: !1425)
!1485 = !DILocation(line: 702, column: 18, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1477, file: !1, line: 700, column: 59)
!1487 = !DILocation(line: 703, column: 28, scope: !1486)
!1488 = !DILocation(line: 703, column: 14, scope: !1486)
!1489 = !DILocation(line: 703, column: 19, scope: !1486)
!1490 = !DILocation(line: 705, column: 2, scope: !1486)
!1491 = !DILocation(line: 707, column: 13, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1425, file: !1, line: 707, column: 6)
!1493 = !DILocation(line: 707, column: 23, scope: !1492)
!1494 = !DILocation(line: 707, column: 39, scope: !1492)
!1495 = !DILocation(line: 707, column: 33, scope: !1492)
!1496 = !DILocation(line: 708, column: 4, scope: !1492)
!1497 = !DILocation(line: 708, column: 13, scope: !1492)
!1498 = !DILocation(line: 708, column: 7, scope: !1492)
!1499 = !DILocation(line: 708, column: 26, scope: !1492)
!1500 = !DILocation(line: 708, column: 23, scope: !1492)
!1501 = !DILocation(line: 707, column: 6, scope: !1425)
!1502 = !DILocation(line: 710, column: 42, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1492, file: !1, line: 708, column: 32)
!1504 = !DILocation(line: 710, column: 24, scope: !1503)
!1505 = !DILocation(line: 710, column: 3, scope: !1503)
!1506 = !DILocation(line: 710, column: 28, scope: !1503)
!1507 = !DILocation(line: 710, column: 33, scope: !1503)
!1508 = !DILocation(line: 714, column: 6, scope: !1425)
!1509 = !DILocation(line: 715, column: 20, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !1, line: 715, column: 3)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !1, line: 715, column: 3)
!1512 = distinct !DILexicalBlock(scope: !1513, file: !1, line: 714, column: 26)
!1513 = distinct !DILexicalBlock(scope: !1425, file: !1, line: 714, column: 6)
!1514 = !DILocation(line: 715, column: 3, scope: !1511)
!1515 = !DILocation(line: 716, column: 14, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1510, file: !1, line: 716, column: 8)
!1517 = !DILocation(line: 716, column: 25, scope: !1516)
!1518 = !DILocation(line: 716, column: 8, scope: !1516)
!1519 = !DILocation(line: 716, column: 38, scope: !1516)
!1520 = !DILocation(line: 716, column: 35, scope: !1516)
!1521 = !DILocation(line: 716, column: 8, scope: !1510)
!1522 = !DILocation(line: 715, column: 34, scope: !1510)
!1523 = distinct !{!1523, !1514, !1524}
!1524 = !DILocation(line: 717, column: 5, scope: !1511)
!1525 = !DILocation(line: 719, column: 25, scope: !1512)
!1526 = !DILocation(line: 719, column: 3, scope: !1512)
!1527 = !DILocation(line: 719, column: 34, scope: !1512)
!1528 = !DILocation(line: 730, column: 2, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1425, file: !1, line: 730, column: 2)
!1530 = !DILocation(line: 721, column: 7, scope: !1512)
!1531 = !DILocation(line: 722, column: 4, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1533, file: !1, line: 722, column: 4)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !1, line: 721, column: 30)
!1534 = distinct !DILexicalBlock(scope: !1512, file: !1, line: 721, column: 7)
!1535 = !DILocation(line: 0, scope: !928, inlinedAt: !1536)
!1536 = distinct !DILocation(line: 722, column: 4, scope: !1532)
!1537 = !DILocation(line: 531, column: 37, scope: !928, inlinedAt: !1536)
!1538 = !DILocation(line: 531, column: 23, scope: !928, inlinedAt: !1536)
!1539 = !DILocation(line: 531, column: 43, scope: !928, inlinedAt: !1536)
!1540 = !DILocation(line: 538, column: 30, scope: !944, inlinedAt: !1536)
!1541 = !DILocation(line: 539, column: 15, scope: !955, inlinedAt: !1536)
!1542 = !DILocation(line: 539, column: 20, scope: !955, inlinedAt: !1536)
!1543 = !DILocation(line: 532, column: 12, scope: !928, inlinedAt: !1536)
!1544 = !DILocation(line: 531, column: 12, scope: !928, inlinedAt: !1536)
!1545 = !DILocation(line: 540, column: 10, scope: !960, inlinedAt: !1536)
!1546 = !DILocation(line: 541, column: 10, scope: !960, inlinedAt: !1536)
!1547 = !DILocation(line: 542, column: 4, scope: !960, inlinedAt: !1536)
!1548 = !DILocation(line: 539, column: 12, scope: !955, inlinedAt: !1536)
!1549 = !DILocation(line: 545, column: 39, scope: !944, inlinedAt: !1536)
!1550 = !DILocation(line: 546, column: 14, scope: !944, inlinedAt: !1536)
!1551 = !DILocation(line: 546, column: 8, scope: !944, inlinedAt: !1536)
!1552 = !DILocation(line: 546, column: 5, scope: !944, inlinedAt: !1536)
!1553 = !DILocation(line: 547, column: 5, scope: !944, inlinedAt: !1536)
!1554 = !DILocation(line: 545, column: 24, scope: !944, inlinedAt: !1536)
!1555 = !DILocation(line: 0, scope: !944, inlinedAt: !1536)
!1556 = !DILocation(line: 548, column: 27, scope: !944, inlinedAt: !1536)
!1557 = !DILocation(line: 549, column: 18, scope: !944, inlinedAt: !1536)
!1558 = !DILocation(line: 551, column: 7, scope: !974, inlinedAt: !1536)
!1559 = !DILocation(line: 551, column: 18, scope: !974, inlinedAt: !1536)
!1560 = !DILocation(line: 551, column: 15, scope: !974, inlinedAt: !1536)
!1561 = !DILocation(line: 551, column: 7, scope: !944, inlinedAt: !1536)
!1562 = !DILocation(line: 552, column: 11, scope: !979, inlinedAt: !1536)
!1563 = !DILocation(line: 552, column: 17, scope: !979, inlinedAt: !1536)
!1564 = !DILocation(line: 552, column: 4, scope: !979, inlinedAt: !1536)
!1565 = !DILocation(line: 553, column: 9, scope: !983, inlinedAt: !1536)
!1566 = !DILocation(line: 553, column: 20, scope: !983, inlinedAt: !1536)
!1567 = !DILocation(line: 553, column: 17, scope: !983, inlinedAt: !1536)
!1568 = !DILocation(line: 553, column: 9, scope: !979, inlinedAt: !1536)
!1569 = distinct !{!1569, !1564, !1570}
!1570 = !DILocation(line: 554, column: 6, scope: !979, inlinedAt: !1536)
!1571 = !DILocation(line: 557, column: 13, scope: !990, inlinedAt: !1536)
!1572 = !DILocation(line: 557, column: 11, scope: !990, inlinedAt: !1536)
!1573 = !DILocation(line: 558, column: 13, scope: !990, inlinedAt: !1536)
!1574 = !DILocation(line: 558, column: 11, scope: !990, inlinedAt: !1536)
!1575 = !DILocation(line: 559, column: 5, scope: !990, inlinedAt: !1536)
!1576 = !DILocation(line: 563, column: 17, scope: !997, inlinedAt: !1536)
!1577 = !DILocation(line: 563, column: 7, scope: !997, inlinedAt: !1536)
!1578 = !DILocation(line: 563, column: 15, scope: !997, inlinedAt: !1536)
!1579 = !DILocation(line: 563, column: 7, scope: !944, inlinedAt: !1536)
!1580 = !DILocation(line: 564, column: 10, scope: !1002, inlinedAt: !1536)
!1581 = !DILocation(line: 565, column: 16, scope: !1002, inlinedAt: !1536)
!1582 = !DILocation(line: 568, column: 3, scope: !1002, inlinedAt: !1536)
!1583 = !DILocation(line: 569, column: 10, scope: !1006, inlinedAt: !1536)
!1584 = !DILocation(line: 0, scope: !997, inlinedAt: !1536)
!1585 = distinct !{!1585, !1586, !1587}
!1586 = !DILocation(line: 537, column: 2, scope: !928, inlinedAt: !1536)
!1587 = !DILocation(line: 574, column: 2, scope: !928, inlinedAt: !1536)
!1588 = !DILocation(line: 0, scope: !223, inlinedAt: !1589)
!1589 = distinct !DILocation(line: 722, column: 4, scope: !1532)
!1590 = !DILocation(line: 150, column: 6, scope: !228, inlinedAt: !1589)
!1591 = !DILocation(line: 150, column: 30, scope: !228, inlinedAt: !1589)
!1592 = !DILocation(line: 150, column: 23, scope: !228, inlinedAt: !1589)
!1593 = !DILocation(line: 150, column: 6, scope: !223, inlinedAt: !1589)
!1594 = !DILocation(line: 153, column: 2, scope: !223, inlinedAt: !1589)
!1595 = !DILocation(line: 156, column: 6, scope: !234, inlinedAt: !1589)
!1596 = !DILocation(line: 156, column: 6, scope: !223, inlinedAt: !1589)
!1597 = !DILocation(line: 0, scope: !237, inlinedAt: !1598)
!1598 = distinct !DILocation(line: 157, column: 3, scope: !234, inlinedAt: !1589)
!1599 = !DILocation(line: 116, column: 26, scope: !237, inlinedAt: !1598)
!1600 = !DILocation(line: 119, column: 29, scope: !237, inlinedAt: !1598)
!1601 = !DILocation(line: 119, column: 49, scope: !237, inlinedAt: !1598)
!1602 = !DILocation(line: 119, column: 43, scope: !237, inlinedAt: !1598)
!1603 = !DILocation(line: 120, column: 23, scope: !237, inlinedAt: !1598)
!1604 = !DILocation(line: 0, scope: !243, inlinedAt: !1598)
!1605 = !DILocation(line: 122, column: 25, scope: !253, inlinedAt: !1598)
!1606 = !DILocation(line: 122, column: 2, scope: !243, inlinedAt: !1598)
!1607 = !DILocation(line: 122, column: 34, scope: !253, inlinedAt: !1598)
!1608 = !DILocation(line: 133, column: 7, scope: !257, inlinedAt: !1598)
!1609 = !DILocation(line: 133, column: 7, scope: !258, inlinedAt: !1598)
!1610 = !DILocation(line: 0, scope: !257, inlinedAt: !1598)
!1611 = distinct !{!1611, !1606, !1612, !263, !264}
!1612 = !DILocation(line: 137, column: 2, scope: !243, inlinedAt: !1598)
!1613 = distinct !{!1613, !1606, !1612, !264, !263}
!1614 = !DILocation(line: 140, column: 13, scope: !237, inlinedAt: !1598)
!1615 = !DILocation(line: 157, column: 3, scope: !234, inlinedAt: !1589)
!1616 = !DILocation(line: 709, column: 12, scope: !1503)
!1617 = !DILocation(line: 0, scope: !769, inlinedAt: !1618)
!1618 = distinct !DILocation(line: 730, column: 2, scope: !1529)
!1619 = !DILocation(line: 465, column: 37, scope: !769, inlinedAt: !1618)
!1620 = !DILocation(line: 465, column: 23, scope: !769, inlinedAt: !1618)
!1621 = !DILocation(line: 465, column: 43, scope: !769, inlinedAt: !1618)
!1622 = !DILocation(line: 472, column: 30, scope: !785, inlinedAt: !1618)
!1623 = !DILocation(line: 473, column: 15, scope: !796, inlinedAt: !1618)
!1624 = !DILocation(line: 473, column: 20, scope: !796, inlinedAt: !1618)
!1625 = !DILocation(line: 727, column: 6, scope: !1425)
!1626 = !DILocation(line: 471, column: 2, scope: !769, inlinedAt: !1618)
!1627 = !DILocation(line: 465, column: 12, scope: !769, inlinedAt: !1618)
!1628 = !DILocation(line: 466, column: 12, scope: !769, inlinedAt: !1618)
!1629 = !DILocation(line: 474, column: 10, scope: !802, inlinedAt: !1618)
!1630 = !DILocation(line: 475, column: 10, scope: !802, inlinedAt: !1618)
!1631 = !DILocation(line: 476, column: 4, scope: !802, inlinedAt: !1618)
!1632 = !DILocation(line: 473, column: 12, scope: !796, inlinedAt: !1618)
!1633 = !DILocation(line: 479, column: 45, scope: !785, inlinedAt: !1618)
!1634 = !DILocation(line: 480, column: 14, scope: !785, inlinedAt: !1618)
!1635 = !DILocation(line: 480, column: 8, scope: !785, inlinedAt: !1618)
!1636 = !DILocation(line: 480, column: 5, scope: !785, inlinedAt: !1618)
!1637 = !DILocation(line: 481, column: 5, scope: !785, inlinedAt: !1618)
!1638 = !DILocation(line: 479, column: 30, scope: !785, inlinedAt: !1618)
!1639 = !DILocation(line: 0, scope: !785, inlinedAt: !1618)
!1640 = !DILocation(line: 483, column: 33, scope: !785, inlinedAt: !1618)
!1641 = !DILocation(line: 484, column: 18, scope: !785, inlinedAt: !1618)
!1642 = !DILocation(line: 486, column: 7, scope: !816, inlinedAt: !1618)
!1643 = !DILocation(line: 486, column: 18, scope: !816, inlinedAt: !1618)
!1644 = !DILocation(line: 486, column: 15, scope: !816, inlinedAt: !1618)
!1645 = !DILocation(line: 486, column: 7, scope: !785, inlinedAt: !1618)
!1646 = !DILocation(line: 487, column: 11, scope: !821, inlinedAt: !1618)
!1647 = !DILocation(line: 487, column: 17, scope: !821, inlinedAt: !1618)
!1648 = !DILocation(line: 487, column: 4, scope: !821, inlinedAt: !1618)
!1649 = !DILocation(line: 488, column: 9, scope: !825, inlinedAt: !1618)
!1650 = !DILocation(line: 488, column: 20, scope: !825, inlinedAt: !1618)
!1651 = !DILocation(line: 488, column: 17, scope: !825, inlinedAt: !1618)
!1652 = !DILocation(line: 488, column: 9, scope: !821, inlinedAt: !1618)
!1653 = distinct !{!1653, !1648, !1654}
!1654 = !DILocation(line: 489, column: 6, scope: !821, inlinedAt: !1618)
!1655 = !DILocation(line: 491, column: 17, scope: !832, inlinedAt: !1618)
!1656 = !DILocation(line: 491, column: 8, scope: !821, inlinedAt: !1618)
!1657 = !DILocation(line: 493, column: 18, scope: !835, inlinedAt: !1618)
!1658 = !DILocation(line: 494, column: 27, scope: !835, inlinedAt: !1618)
!1659 = !DILocation(line: 494, column: 14, scope: !835, inlinedAt: !1618)
!1660 = !DILocation(line: 494, column: 19, scope: !835, inlinedAt: !1618)
!1661 = !DILocation(line: 495, column: 5, scope: !835, inlinedAt: !1618)
!1662 = !DILocation(line: 497, column: 9, scope: !835, inlinedAt: !1618)
!1663 = !DILocation(line: 498, column: 14, scope: !842, inlinedAt: !1618)
!1664 = !DILocation(line: 498, column: 12, scope: !842, inlinedAt: !1618)
!1665 = !DILocation(line: 499, column: 14, scope: !842, inlinedAt: !1618)
!1666 = !DILocation(line: 499, column: 12, scope: !842, inlinedAt: !1618)
!1667 = !DILocation(line: 500, column: 6, scope: !842, inlinedAt: !1618)
!1668 = !DILocation(line: 505, column: 7, scope: !849, inlinedAt: !1618)
!1669 = !DILocation(line: 505, column: 17, scope: !849, inlinedAt: !1618)
!1670 = !DILocation(line: 505, column: 15, scope: !849, inlinedAt: !1618)
!1671 = !DILocation(line: 505, column: 7, scope: !785, inlinedAt: !1618)
!1672 = !DILocation(line: 506, column: 10, scope: !854, inlinedAt: !1618)
!1673 = !DILocation(line: 507, column: 16, scope: !854, inlinedAt: !1618)
!1674 = !DILocation(line: 510, column: 3, scope: !854, inlinedAt: !1618)
!1675 = !DILocation(line: 511, column: 10, scope: !858, inlinedAt: !1618)
!1676 = !DILocation(line: 0, scope: !849, inlinedAt: !1618)
!1677 = distinct !{!1677, !1626, !1678}
!1678 = !DILocation(line: 516, column: 2, scope: !769, inlinedAt: !1618)
!1679 = !DILocation(line: 0, scope: !223, inlinedAt: !1680)
!1680 = distinct !DILocation(line: 730, column: 2, scope: !1529)
!1681 = !DILocation(line: 150, column: 6, scope: !228, inlinedAt: !1680)
!1682 = !DILocation(line: 150, column: 30, scope: !228, inlinedAt: !1680)
!1683 = !DILocation(line: 150, column: 23, scope: !228, inlinedAt: !1680)
!1684 = !DILocation(line: 150, column: 6, scope: !223, inlinedAt: !1680)
!1685 = !DILocation(line: 153, column: 2, scope: !223, inlinedAt: !1680)
!1686 = !DILocation(line: 156, column: 6, scope: !234, inlinedAt: !1680)
!1687 = !DILocation(line: 156, column: 6, scope: !223, inlinedAt: !1680)
!1688 = !DILocation(line: 0, scope: !237, inlinedAt: !1689)
!1689 = distinct !DILocation(line: 157, column: 3, scope: !234, inlinedAt: !1680)
!1690 = !DILocation(line: 116, column: 26, scope: !237, inlinedAt: !1689)
!1691 = !DILocation(line: 119, column: 29, scope: !237, inlinedAt: !1689)
!1692 = !DILocation(line: 119, column: 49, scope: !237, inlinedAt: !1689)
!1693 = !DILocation(line: 119, column: 43, scope: !237, inlinedAt: !1689)
!1694 = !DILocation(line: 120, column: 23, scope: !237, inlinedAt: !1689)
!1695 = !DILocation(line: 0, scope: !243, inlinedAt: !1689)
!1696 = !DILocation(line: 122, column: 25, scope: !253, inlinedAt: !1689)
!1697 = !DILocation(line: 122, column: 2, scope: !243, inlinedAt: !1689)
!1698 = !DILocation(line: 122, column: 34, scope: !253, inlinedAt: !1689)
!1699 = !DILocation(line: 133, column: 7, scope: !257, inlinedAt: !1689)
!1700 = !DILocation(line: 133, column: 7, scope: !258, inlinedAt: !1689)
!1701 = !DILocation(line: 0, scope: !257, inlinedAt: !1689)
!1702 = distinct !{!1702, !1697, !1703, !263, !264}
!1703 = !DILocation(line: 137, column: 2, scope: !243, inlinedAt: !1689)
!1704 = distinct !{!1704, !1697, !1703, !264, !263}
!1705 = !DILocation(line: 140, column: 13, scope: !237, inlinedAt: !1689)
!1706 = !DILocation(line: 157, column: 3, scope: !234, inlinedAt: !1680)
!1707 = !DILocation(line: 731, column: 1, scope: !1425)
!1708 = distinct !DISubprogram(name: "lzma_mf_bt4_skip", scope: !1, file: !1, line: 735, type: !58, scopeLine: 736, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1709)
!1709 = !{!1710, !1711, !1712, !1714, !1715, !1716, !1717, !1718, !1719, !1720}
!1710 = !DILocalVariable(name: "mf", arg: 1, scope: !1708, file: !1, line: 735, type: !27)
!1711 = !DILocalVariable(name: "amount", arg: 2, scope: !1708, file: !1, line: 735, type: !12)
!1712 = !DILocalVariable(name: "len_limit", scope: !1713, file: !1, line: 738, type: !12)
!1713 = distinct !DILexicalBlock(scope: !1708, file: !1, line: 737, column: 5)
!1714 = !DILocalVariable(name: "cur", scope: !1713, file: !1, line: 738, type: !86)
!1715 = !DILocalVariable(name: "pos", scope: !1713, file: !1, line: 738, type: !78)
!1716 = !DILocalVariable(name: "temp", scope: !1713, file: !1, line: 740, type: !78)
!1717 = !DILocalVariable(name: "hash_2_value", scope: !1713, file: !1, line: 740, type: !78)
!1718 = !DILocalVariable(name: "hash_3_value", scope: !1713, file: !1, line: 740, type: !78)
!1719 = !DILocalVariable(name: "hash_value", scope: !1713, file: !1, line: 740, type: !78)
!1720 = !DILocalVariable(name: "cur_match", scope: !1713, file: !1, line: 742, type: !78)
!1721 = !DILocation(line: 0, scope: !1708)
!1722 = !DILocation(line: 737, column: 2, scope: !1708)
!1723 = !DILocation(line: 738, column: 3, scope: !1713)
!1724 = !DILocation(line: 0, scope: !151, inlinedAt: !1725)
!1725 = distinct !DILocation(line: 738, column: 3, scope: !1713)
!1726 = !DILocation(line: 232, column: 23, scope: !151, inlinedAt: !1725)
!1727 = !DILocation(line: 0, scope: !1713)
!1728 = !DILocation(line: 738, column: 3, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1713, file: !1, line: 738, column: 3)
!1730 = !DILocation(line: 738, column: 3, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1729, file: !1, line: 738, column: 3)
!1732 = !DILocation(line: 0, scope: !163, inlinedAt: !1733)
!1733 = distinct !DILocation(line: 738, column: 3, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1731, file: !1, line: 738, column: 3)
!1735 = !DILocation(line: 178, column: 2, scope: !163, inlinedAt: !1733)
!1736 = !DILocation(line: 180, column: 2, scope: !163, inlinedAt: !1733)
!1737 = !DILocation(line: 738, column: 3, scope: !1734)
!1738 = !DILocation(line: 0, scope: !108, inlinedAt: !1739)
!1739 = distinct !DILocation(line: 738, column: 3, scope: !1713)
!1740 = !DILocation(line: 224, column: 20, scope: !108, inlinedAt: !1739)
!1741 = !DILocation(line: 740, column: 3, scope: !1713)
!1742 = !DILocation(line: 743, column: 11, scope: !1713)
!1743 = !DILocation(line: 743, column: 32, scope: !1713)
!1744 = !DILocation(line: 743, column: 7, scope: !1713)
!1745 = !DILocation(line: 745, column: 3, scope: !1713)
!1746 = !DILocation(line: 745, column: 26, scope: !1713)
!1747 = !DILocation(line: 746, column: 7, scope: !1713)
!1748 = !DILocation(line: 746, column: 3, scope: !1713)
!1749 = !DILocation(line: 746, column: 44, scope: !1713)
!1750 = !DILocation(line: 747, column: 7, scope: !1713)
!1751 = !DILocation(line: 747, column: 3, scope: !1713)
!1752 = !DILocation(line: 747, column: 42, scope: !1713)
!1753 = !DILocation(line: 749, column: 3, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1713, file: !1, line: 749, column: 3)
!1755 = !DILocation(line: 0, scope: !928, inlinedAt: !1756)
!1756 = distinct !DILocation(line: 749, column: 3, scope: !1754)
!1757 = !DILocation(line: 531, column: 37, scope: !928, inlinedAt: !1756)
!1758 = !DILocation(line: 531, column: 23, scope: !928, inlinedAt: !1756)
!1759 = !DILocation(line: 531, column: 43, scope: !928, inlinedAt: !1756)
!1760 = !DILocation(line: 538, column: 30, scope: !944, inlinedAt: !1756)
!1761 = !DILocation(line: 539, column: 15, scope: !955, inlinedAt: !1756)
!1762 = !DILocation(line: 539, column: 20, scope: !955, inlinedAt: !1756)
!1763 = !DILocation(line: 532, column: 12, scope: !928, inlinedAt: !1756)
!1764 = !DILocation(line: 531, column: 12, scope: !928, inlinedAt: !1756)
!1765 = !DILocation(line: 540, column: 10, scope: !960, inlinedAt: !1756)
!1766 = !DILocation(line: 541, column: 10, scope: !960, inlinedAt: !1756)
!1767 = !DILocation(line: 542, column: 4, scope: !960, inlinedAt: !1756)
!1768 = !DILocation(line: 539, column: 12, scope: !955, inlinedAt: !1756)
!1769 = !DILocation(line: 545, column: 39, scope: !944, inlinedAt: !1756)
!1770 = !DILocation(line: 546, column: 14, scope: !944, inlinedAt: !1756)
!1771 = !DILocation(line: 546, column: 8, scope: !944, inlinedAt: !1756)
!1772 = !DILocation(line: 546, column: 5, scope: !944, inlinedAt: !1756)
!1773 = !DILocation(line: 547, column: 5, scope: !944, inlinedAt: !1756)
!1774 = !DILocation(line: 545, column: 24, scope: !944, inlinedAt: !1756)
!1775 = !DILocation(line: 0, scope: !944, inlinedAt: !1756)
!1776 = !DILocation(line: 548, column: 27, scope: !944, inlinedAt: !1756)
!1777 = !DILocation(line: 549, column: 18, scope: !944, inlinedAt: !1756)
!1778 = !DILocation(line: 551, column: 7, scope: !974, inlinedAt: !1756)
!1779 = !DILocation(line: 551, column: 18, scope: !974, inlinedAt: !1756)
!1780 = !DILocation(line: 551, column: 15, scope: !974, inlinedAt: !1756)
!1781 = !DILocation(line: 551, column: 7, scope: !944, inlinedAt: !1756)
!1782 = !DILocation(line: 552, column: 11, scope: !979, inlinedAt: !1756)
!1783 = !DILocation(line: 552, column: 17, scope: !979, inlinedAt: !1756)
!1784 = !DILocation(line: 552, column: 4, scope: !979, inlinedAt: !1756)
!1785 = !DILocation(line: 553, column: 9, scope: !983, inlinedAt: !1756)
!1786 = !DILocation(line: 553, column: 20, scope: !983, inlinedAt: !1756)
!1787 = !DILocation(line: 553, column: 17, scope: !983, inlinedAt: !1756)
!1788 = !DILocation(line: 553, column: 9, scope: !979, inlinedAt: !1756)
!1789 = distinct !{!1789, !1784, !1790}
!1790 = !DILocation(line: 554, column: 6, scope: !979, inlinedAt: !1756)
!1791 = !DILocation(line: 557, column: 13, scope: !990, inlinedAt: !1756)
!1792 = !DILocation(line: 557, column: 11, scope: !990, inlinedAt: !1756)
!1793 = !DILocation(line: 558, column: 13, scope: !990, inlinedAt: !1756)
!1794 = !DILocation(line: 558, column: 11, scope: !990, inlinedAt: !1756)
!1795 = !DILocation(line: 559, column: 5, scope: !990, inlinedAt: !1756)
!1796 = !DILocation(line: 563, column: 17, scope: !997, inlinedAt: !1756)
!1797 = !DILocation(line: 563, column: 7, scope: !997, inlinedAt: !1756)
!1798 = !DILocation(line: 563, column: 15, scope: !997, inlinedAt: !1756)
!1799 = !DILocation(line: 563, column: 7, scope: !944, inlinedAt: !1756)
!1800 = !DILocation(line: 564, column: 10, scope: !1002, inlinedAt: !1756)
!1801 = !DILocation(line: 565, column: 16, scope: !1002, inlinedAt: !1756)
!1802 = !DILocation(line: 568, column: 3, scope: !1002, inlinedAt: !1756)
!1803 = !DILocation(line: 569, column: 10, scope: !1006, inlinedAt: !1756)
!1804 = !DILocation(line: 0, scope: !997, inlinedAt: !1756)
!1805 = distinct !{!1805, !1806, !1807}
!1806 = !DILocation(line: 537, column: 2, scope: !928, inlinedAt: !1756)
!1807 = !DILocation(line: 574, column: 2, scope: !928, inlinedAt: !1756)
!1808 = !DILocation(line: 0, scope: !223, inlinedAt: !1809)
!1809 = distinct !DILocation(line: 749, column: 3, scope: !1754)
!1810 = !DILocation(line: 150, column: 6, scope: !228, inlinedAt: !1809)
!1811 = !DILocation(line: 150, column: 30, scope: !228, inlinedAt: !1809)
!1812 = !DILocation(line: 150, column: 23, scope: !228, inlinedAt: !1809)
!1813 = !DILocation(line: 150, column: 6, scope: !223, inlinedAt: !1809)
!1814 = !DILocation(line: 153, column: 2, scope: !223, inlinedAt: !1809)
!1815 = !DILocation(line: 156, column: 6, scope: !234, inlinedAt: !1809)
!1816 = !DILocation(line: 156, column: 6, scope: !223, inlinedAt: !1809)
!1817 = !DILocation(line: 0, scope: !237, inlinedAt: !1818)
!1818 = distinct !DILocation(line: 157, column: 3, scope: !234, inlinedAt: !1809)
!1819 = !DILocation(line: 116, column: 26, scope: !237, inlinedAt: !1818)
!1820 = !DILocation(line: 119, column: 29, scope: !237, inlinedAt: !1818)
!1821 = !DILocation(line: 119, column: 49, scope: !237, inlinedAt: !1818)
!1822 = !DILocation(line: 119, column: 43, scope: !237, inlinedAt: !1818)
!1823 = !DILocation(line: 120, column: 23, scope: !237, inlinedAt: !1818)
!1824 = !DILocation(line: 0, scope: !243, inlinedAt: !1818)
!1825 = !DILocation(line: 122, column: 25, scope: !253, inlinedAt: !1818)
!1826 = !DILocation(line: 122, column: 2, scope: !243, inlinedAt: !1818)
!1827 = !DILocation(line: 122, column: 34, scope: !253, inlinedAt: !1818)
!1828 = !DILocation(line: 133, column: 7, scope: !257, inlinedAt: !1818)
!1829 = !DILocation(line: 133, column: 7, scope: !258, inlinedAt: !1818)
!1830 = !DILocation(line: 0, scope: !257, inlinedAt: !1818)
!1831 = distinct !{!1831, !1826, !1832, !263, !264}
!1832 = !DILocation(line: 137, column: 2, scope: !243, inlinedAt: !1818)
!1833 = distinct !{!1833, !1826, !1832, !264, !263}
!1834 = !DILocation(line: 140, column: 13, scope: !237, inlinedAt: !1818)
!1835 = !DILocation(line: 157, column: 3, scope: !234, inlinedAt: !1809)
!1836 = !DILocation(line: 751, column: 11, scope: !1708)
!1837 = !DILocation(line: 751, column: 20, scope: !1708)
!1838 = !DILocation(line: 751, column: 2, scope: !1713)
!1839 = distinct !{!1839, !1722, !1840}
!1840 = !DILocation(line: 751, column: 24, scope: !1708)
!1841 = !DILocation(line: 752, column: 1, scope: !1708)
