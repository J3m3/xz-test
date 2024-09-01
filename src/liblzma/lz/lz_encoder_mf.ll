; ModuleID = 'liblzma/lz/lz_encoder_mf.c'
source_filename = "liblzma/lz/lz_encoder_mf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_match = type { i32, i32 }

@lzma_crc32_table = external local_unnamed_addr constant [8 x [256 x i32]], align 16

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_mf_find(ptr noundef %mf, ptr nocapture noundef writeonly %count_ptr, ptr noundef %matches) local_unnamed_addr #0 {
entry:
  %find = getelementptr inbounds i8, ptr %mf, i64 48
  %0 = load ptr, ptr %find, align 8
  %call = tail call i32 %0(ptr noundef %mf, ptr noundef %matches) #3
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end22, label %if.then

if.then:                                          ; preds = %entry
  %sub = add i32 %call, -1
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds %struct.lzma_match, ptr %matches, i64 %idxprom
  %1 = load i32, ptr %arrayidx, align 4
  %nice_len = getelementptr inbounds i8, ptr %mf, i64 96
  %2 = load i32, ptr %nice_len, align 8
  %cmp1 = icmp eq i32 %1, %2
  br i1 %cmp1, label %if.then2, label %if.end22

if.then2:                                         ; preds = %if.then
  %3 = getelementptr i8, ptr %mf, i64 24
  %mf.val = load i32, ptr %3, align 8
  %4 = getelementptr i8, ptr %mf, i64 36
  %mf.val44 = load i32, ptr %4, align 4
  %reass.sub = sub i32 %mf.val44, %mf.val
  %add = add i32 %reass.sub, 1
  %match_len_max = getelementptr inbounds i8, ptr %mf, i64 100
  %5 = load i32, ptr %match_len_max, align 4
  %spec.select = tail call i32 @llvm.umin.i32(i32 %add, i32 %5)
  %mf.val45 = load ptr, ptr %mf, align 8
  %idx.ext.i = zext i32 %mf.val to i64
  %add.ptr.i = getelementptr inbounds i8, ptr %mf.val45, i64 %idx.ext.i
  %add.ptr = getelementptr inbounds i8, ptr %add.ptr.i, i64 -1
  %dist = getelementptr inbounds i8, ptr %arrayidx, i64 4
  %6 = load i32, ptr %dist, align 4
  %idx.ext = zext i32 %6 to i64
  %idx.neg = sub nsw i64 0, %idx.ext
  %add.ptr11 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.neg
  %add.ptr12 = getelementptr inbounds i8, ptr %add.ptr11, i64 -1
  %cmp1347 = icmp ult i32 %1, %spec.select
  br i1 %cmp1347, label %land.rhs.preheader, label %if.end22

land.rhs.preheader:                               ; preds = %if.then2
  %7 = zext i32 %1 to i64
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.preheader, %while.body
  %indvars.iv = phi i64 [ %7, %land.rhs.preheader ], [ %indvars.iv.next, %while.body ]
  %arrayidx15 = getelementptr inbounds i8, ptr %add.ptr, i64 %indvars.iv
  %8 = load i8, ptr %arrayidx15, align 1
  %arrayidx17 = getelementptr inbounds i8, ptr %add.ptr12, i64 %indvars.iv
  %9 = load i8, ptr %arrayidx17, align 1
  %cmp19 = icmp eq i8 %8, %9
  br i1 %cmp19, label %while.body, label %if.end22.loopexit.split.loop.exit

while.body:                                       ; preds = %land.rhs
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %spec.select, %lftr.wideiv
  br i1 %exitcond.not, label %if.end22, label %land.rhs

if.end22.loopexit.split.loop.exit:                ; preds = %land.rhs
  %10 = trunc nuw i64 %indvars.iv to i32
  br label %if.end22

if.end22:                                         ; preds = %while.body, %if.end22.loopexit.split.loop.exit, %if.then2, %if.then, %entry
  %len_best.1 = phi i32 [ %1, %if.then ], [ 0, %entry ], [ %1, %if.then2 ], [ %10, %if.end22.loopexit.split.loop.exit ], [ %spec.select, %while.body ]
  store i32 %call, ptr %count_ptr, align 4
  %read_ahead = getelementptr inbounds i8, ptr %mf, i64 28
  %11 = load i32, ptr %read_ahead, align 4
  %inc23 = add i32 %11, 1
  store i32 %inc23, ptr %read_ahead, align 4
  ret i32 %len_best.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @lzma_mf_hc3_find(ptr nocapture noundef %mf, ptr noundef %matches) local_unnamed_addr #1 {
entry:
  %0 = getelementptr i8, ptr %mf, i64 24
  %mf.val = load i32, ptr %0, align 8
  %1 = getelementptr i8, ptr %mf, i64 36
  %mf.val127 = load i32, ptr %1, align 4
  %sub.i = sub i32 %mf.val127, %mf.val
  %nice_len = getelementptr inbounds i8, ptr %mf, i64 96
  %2 = load i32, ptr %nice_len, align 8
  %cmp.not = icmp ugt i32 %2, %sub.i
  br i1 %cmp.not, label %if.else, label %if.end4

if.else:                                          ; preds = %entry
  %cmp2 = icmp ult i32 %sub.i, 3
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.else
  %inc.i = add i32 %mf.val, 1
  store i32 %inc.i, ptr %0, align 8
  %pending.i = getelementptr inbounds i8, ptr %mf, i64 40
  %3 = load i32, ptr %pending.i, align 8
  %inc1.i = add i32 %3, 1
  store i32 %inc1.i, ptr %pending.i, align 8
  br label %cleanup75

if.end4:                                          ; preds = %entry, %if.else
  %len_limit.0 = phi i32 [ %sub.i, %if.else ], [ %2, %entry ]
  %mf.val128 = load ptr, ptr %mf, align 8
  %idx.ext.i = zext i32 %mf.val to i64
  %add.ptr.i = getelementptr inbounds i8, ptr %mf.val128, i64 %idx.ext.i
  %offset = getelementptr inbounds i8, ptr %mf, i64 20
  %4 = load i32, ptr %offset, align 4
  %add = add i32 %4, %mf.val
  %5 = load i8, ptr %add.ptr.i, align 1
  %idxprom = zext i8 %5 to i64
  %arrayidx6 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %idxprom
  %6 = load i32, ptr %arrayidx6, align 4
  %arrayidx7 = getelementptr inbounds i8, ptr %add.ptr.i, i64 1
  %7 = load i8, ptr %arrayidx7, align 1
  %conv = zext i8 %7 to i32
  %xor = xor i32 %6, %conv
  %and = and i32 %xor, 1023
  %arrayidx8 = getelementptr inbounds i8, ptr %add.ptr.i, i64 2
  %8 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %8 to i32
  %shl = shl nuw nsw i32 %conv9, 8
  %xor10 = xor i32 %shl, %xor
  %hash_mask = getelementptr inbounds i8, ptr %mf, i64 88
  %9 = load i32, ptr %hash_mask, align 8
  %and11 = and i32 %xor10, %9
  %hash = getelementptr inbounds i8, ptr %mf, i64 64
  %10 = load ptr, ptr %hash, align 8
  %idxprom12 = zext nneg i32 %and to i64
  %arrayidx13 = getelementptr inbounds i32, ptr %10, i64 %idxprom12
  %11 = load i32, ptr %arrayidx13, align 4
  %sub = sub i32 %add, %11
  %add15 = add i32 %and11, 1024
  %idxprom16 = zext i32 %add15 to i64
  %arrayidx17 = getelementptr inbounds i32, ptr %10, i64 %idxprom16
  %12 = load i32, ptr %arrayidx17, align 4
  store i32 %add, ptr %arrayidx13, align 4
  %13 = load ptr, ptr %hash, align 8
  %arrayidx24 = getelementptr inbounds i32, ptr %13, i64 %idxprom16
  store i32 %add, ptr %arrayidx24, align 4
  %cyclic_size = getelementptr inbounds i8, ptr %mf, i64 84
  %14 = load i32, ptr %cyclic_size, align 4
  %cmp25 = icmp ult i32 %sub, %14
  br i1 %cmp25, label %land.lhs.true, label %do.body57

land.lhs.true:                                    ; preds = %if.end4
  %idx.ext = zext i32 %sub to i64
  %idx.neg = sub nsw i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg
  %15 = load i8, ptr %add.ptr, align 1
  %16 = load i8, ptr %add.ptr.i, align 1
  %cmp29 = icmp eq i8 %15, %16
  br i1 %cmp29, label %for.cond.preheader, label %do.body57

for.cond.preheader:                               ; preds = %land.lhs.true
  %cmp32.not171 = icmp eq i32 %len_limit.0, 2
  br i1 %cmp32.not171, label %do.body, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %len_best.0172 = phi i32 [ %inc, %for.inc ], [ 2, %for.cond.preheader ]
  %idx.ext34 = zext i32 %len_best.0172 to i64
  %add.ptr35 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.ext34
  %add.ptr38 = getelementptr inbounds i8, ptr %add.ptr35, i64 %idx.neg
  %17 = load i8, ptr %add.ptr38, align 1
  %18 = load i8, ptr %add.ptr35, align 1
  %cmp43.not = icmp eq i8 %17, %18
  br i1 %cmp43.not, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add i32 %len_best.0172, 1
  %cmp32.not = icmp eq i32 %inc, %len_limit.0
  br i1 %cmp32.not, label %do.body, label %for.body

for.end:                                          ; preds = %for.body
  store i32 %len_best.0172, ptr %matches, align 4
  %sub48 = add i32 %sub, -1
  %dist = getelementptr inbounds i8, ptr %matches, i64 4
  store i32 %sub48, ptr %dist, align 4
  %.pre = load i32, ptr %cyclic_size, align 4
  br label %do.body57

do.body:                                          ; preds = %for.inc, %for.cond.preheader
  store i32 %len_limit.0, ptr %matches, align 4
  %sub48167 = add i32 %sub, -1
  %dist168 = getelementptr inbounds i8, ptr %matches, i64 4
  store i32 %sub48167, ptr %dist168, align 4
  %son = getelementptr inbounds i8, ptr %mf, i64 72
  %19 = load ptr, ptr %son, align 8
  %cyclic_pos = getelementptr inbounds i8, ptr %mf, i64 80
  %20 = load i32, ptr %cyclic_pos, align 8
  %idxprom53 = zext i32 %20 to i64
  %arrayidx54 = getelementptr inbounds i32, ptr %19, i64 %idxprom53
  store i32 %12, ptr %arrayidx54, align 4
  %21 = load i32, ptr %cyclic_pos, align 8
  %inc.i130 = add i32 %21, 1
  %22 = load i32, ptr %cyclic_size, align 4
  %cmp.i = icmp eq i32 %inc.i130, %22
  %spec.store.select.i = select i1 %cmp.i, i32 0, i32 %inc.i130
  store i32 %spec.store.select.i, ptr %cyclic_pos, align 8
  %23 = load i32, ptr %0, align 8
  %inc2.i = add i32 %23, 1
  store i32 %inc2.i, ptr %0, align 8
  %24 = load i32, ptr %offset, align 4
  %add.i = add i32 %24, %inc2.i
  %cmp4.i = icmp eq i32 %add.i, -1
  br i1 %cmp4.i, label %if.then5.i, label %cleanup75

if.then5.i:                                       ; preds = %do.body
  %sub.i.i = xor i32 %22, -1
  %hash_size_sum.i.i = getelementptr inbounds i8, ptr %mf, i64 108
  %25 = load i32, ptr %hash_size_sum.i.i, align 4
  %sons_count.i.i = getelementptr inbounds i8, ptr %mf, i64 112
  %26 = load i32, ptr %sons_count.i.i, align 8
  %add.i.i = add i32 %26, %25
  %27 = load ptr, ptr %hash, align 8
  %cmp21.not.i.i = icmp eq i32 %add.i.i, 0
  br i1 %cmp21.not.i.i, label %normalize.exit.i, label %for.body.preheader.i.i

for.body.preheader.i.i:                           ; preds = %if.then5.i
  %wide.trip.count.i.i = zext i32 %add.i.i to i64
  %min.iters.check183 = icmp ult i32 %add.i.i, 16
  br i1 %min.iters.check183, label %for.body.i.i.preheader, label %vector.ph184

vector.ph184:                                     ; preds = %for.body.preheader.i.i
  %n.vec186 = and i64 %wide.trip.count.i.i, 4294967280
  %broadcast.splatinsert194 = insertelement <4 x i32> poison, i32 %sub.i.i, i64 0
  %broadcast.splat195 = shufflevector <4 x i32> %broadcast.splatinsert194, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body188

vector.body188:                                   ; preds = %vector.body188, %vector.ph184
  %index189 = phi i64 [ 0, %vector.ph184 ], [ %index.next196, %vector.body188 ]
  %28 = getelementptr inbounds i32, ptr %27, i64 %index189
  %29 = getelementptr inbounds i8, ptr %28, i64 16
  %30 = getelementptr inbounds i8, ptr %28, i64 32
  %31 = getelementptr inbounds i8, ptr %28, i64 48
  %wide.load190 = load <4 x i32>, ptr %28, align 4
  %wide.load191 = load <4 x i32>, ptr %29, align 4
  %wide.load192 = load <4 x i32>, ptr %30, align 4
  %wide.load193 = load <4 x i32>, ptr %31, align 4
  %32 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load190, <4 x i32> %broadcast.splat195)
  %33 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load191, <4 x i32> %broadcast.splat195)
  %34 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load192, <4 x i32> %broadcast.splat195)
  %35 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load193, <4 x i32> %broadcast.splat195)
  store <4 x i32> %32, ptr %28, align 4
  store <4 x i32> %33, ptr %29, align 4
  store <4 x i32> %34, ptr %30, align 4
  store <4 x i32> %35, ptr %31, align 4
  %index.next196 = add nuw i64 %index189, 16
  %36 = icmp eq i64 %index.next196, %n.vec186
  br i1 %36, label %middle.block181, label %vector.body188, !llvm.loop !5

middle.block181:                                  ; preds = %vector.body188
  %cmp.n197 = icmp eq i64 %n.vec186, %wide.trip.count.i.i
  br i1 %cmp.n197, label %normalize.exit.loopexit.i, label %for.body.i.i.preheader

for.body.i.i.preheader:                           ; preds = %middle.block181, %for.body.preheader.i.i
  %indvars.iv.i.i.ph = phi i64 [ 0, %for.body.preheader.i.i ], [ %n.vec186, %middle.block181 ]
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.preheader, %for.body.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %for.body.i.i ], [ %indvars.iv.i.i.ph, %for.body.i.i.preheader ]
  %arrayidx.i.i = getelementptr inbounds i32, ptr %27, i64 %indvars.iv.i.i
  %37 = load i32, ptr %arrayidx.i.i, align 4
  %storemerge.i.i = tail call i32 @llvm.usub.sat.i32(i32 %37, i32 %sub.i.i)
  store i32 %storemerge.i.i, ptr %arrayidx.i.i, align 4
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %normalize.exit.loopexit.i, label %for.body.i.i, !llvm.loop !8

normalize.exit.loopexit.i:                        ; preds = %for.body.i.i, %middle.block181
  %.pre.i = load i32, ptr %offset, align 4
  br label %normalize.exit.i

normalize.exit.i:                                 ; preds = %normalize.exit.loopexit.i, %if.then5.i
  %38 = phi i32 [ %.pre.i, %normalize.exit.loopexit.i ], [ %24, %if.then5.i ]
  %sub8.i.i = sub i32 %38, %sub.i.i
  store i32 %sub8.i.i, ptr %offset, align 4
  br label %cleanup75

do.body57:                                        ; preds = %for.end, %if.end4, %land.lhs.true
  %39 = phi i32 [ %.pre, %for.end ], [ %14, %land.lhs.true ], [ %14, %if.end4 ]
  %matches_count.0 = phi i64 [ 1, %for.end ], [ 0, %land.lhs.true ], [ 0, %if.end4 ]
  %len_best.1 = phi i32 [ %len_best.0172, %for.end ], [ 2, %land.lhs.true ], [ 2, %if.end4 ]
  %depth = getelementptr inbounds i8, ptr %mf, i64 92
  %40 = load i32, ptr %depth, align 4
  %son58 = getelementptr inbounds i8, ptr %mf, i64 72
  %41 = load ptr, ptr %son58, align 8
  %cyclic_pos59 = getelementptr inbounds i8, ptr %mf, i64 80
  %42 = load i32, ptr %cyclic_pos59, align 8
  %add.ptr62 = getelementptr inbounds %struct.lzma_match, ptr %matches, i64 %matches_count.0
  %idxprom.i = zext i32 %42 to i64
  %arrayidx.i = getelementptr inbounds i32, ptr %41, i64 %idxprom.i
  store i32 %12, ptr %arrayidx.i, align 4
  %sub97.i = sub i32 %add, %12
  %cmp99.i = icmp ne i32 %40, 0
  %cmp1.not100.i = icmp ult i32 %sub97.i, %39
  %or.cond101.i = and i1 %cmp99.i, %cmp1.not100.i
  br i1 %or.cond101.i, label %if.end.preheader.i, label %hc_find_func.exit

if.end.preheader.i:                               ; preds = %do.body57
  %43 = add i32 %len_limit.0, -1
  %wide.trip.count.i = zext i32 %43 to i64
  br label %if.end.i

if.end.i:                                         ; preds = %cleanup46.i, %if.end.preheader.i
  %dec106.in.i = phi i32 [ %dec106.i, %cleanup46.i ], [ %40, %if.end.preheader.i ]
  %sub105.i = phi i32 [ %sub.i135, %cleanup46.i ], [ %sub97.i, %if.end.preheader.i ]
  %len_best.addr.0103.i = phi i32 [ %len_best.addr.5.i, %cleanup46.i ], [ %len_best.1, %if.end.preheader.i ]
  %matches.addr.0102.i = phi ptr [ %matches.addr.5.i, %cleanup46.i ], [ %add.ptr62, %if.end.preheader.i ]
  %dec106.i = add i32 %dec106.in.i, -1
  %idx.ext.i132 = zext i32 %sub105.i to i64
  %idx.neg.i = sub nsw i64 0, %idx.ext.i132
  %add.ptr.i133 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg.i
  %sub2.i = sub i32 %42, %sub105.i
  %cmp3.i = icmp ugt i32 %sub105.i, %42
  %cond.i = select i1 %cmp3.i, i32 %39, i32 0
  %add.i134 = add i32 %sub2.i, %cond.i
  %idxprom4.i = zext i32 %add.i134 to i64
  %arrayidx5.i = getelementptr inbounds i32, ptr %41, i64 %idxprom4.i
  %44 = load i32, ptr %arrayidx5.i, align 4
  %idxprom6.i = zext i32 %len_best.addr.0103.i to i64
  %arrayidx7.i = getelementptr inbounds i8, ptr %add.ptr.i133, i64 %idxprom6.i
  %45 = load i8, ptr %arrayidx7.i, align 1
  %arrayidx9.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom6.i
  %46 = load i8, ptr %arrayidx9.i, align 1
  %cmp11.i = icmp eq i8 %45, %46
  br i1 %cmp11.i, label %land.lhs.true.i, label %cleanup46.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %47 = load i8, ptr %add.ptr.i133, align 1
  %48 = load i8, ptr %add.ptr.i, align 1
  %cmp17.i = icmp eq i8 %47, %48
  br i1 %cmp17.i, label %while.cond20.i, label %cleanup46.i

while.cond20.i:                                   ; preds = %land.lhs.true.i, %while.body23.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %while.body23.i ], [ 0, %land.lhs.true.i ]
  %exitcond.i = icmp eq i64 %indvars.iv.i, %wide.trip.count.i
  br i1 %exitcond.i, label %while.end.i, label %while.body23.i

while.body23.i:                                   ; preds = %while.cond20.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %idxprom24.i = and i64 %indvars.iv.next.i, 4294967295
  %arrayidx25.i = getelementptr inbounds i8, ptr %add.ptr.i133, i64 %idxprom24.i
  %49 = load i8, ptr %arrayidx25.i, align 1
  %arrayidx28.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom24.i
  %50 = load i8, ptr %arrayidx28.i, align 1
  %cmp30.not.i = icmp eq i8 %49, %50
  br i1 %cmp30.not.i, label %while.cond20.i, label %while.end.split.loop.exit.i

while.end.split.loop.exit.i:                      ; preds = %while.body23.i
  %indvars.le112.i = trunc i64 %indvars.iv.next.i to i32
  br label %while.end.i

while.end.i:                                      ; preds = %while.cond20.i, %while.end.split.loop.exit.i
  %inc.lcssa.i = phi i32 [ %indvars.le112.i, %while.end.split.loop.exit.i ], [ %len_limit.0, %while.cond20.i ]
  %cmp34.i = icmp ult i32 %len_best.addr.0103.i, %inc.lcssa.i
  br i1 %cmp34.i, label %cleanup.i, label %cleanup46.i

cleanup.i:                                        ; preds = %while.end.i
  %cmp21.not.not.le.i = icmp eq i32 %inc.lcssa.i, %len_limit.0
  store i32 %inc.lcssa.i, ptr %matches.addr.0102.i, align 4
  %sub38.i = add i32 %sub105.i, -1
  %dist.i = getelementptr inbounds i8, ptr %matches.addr.0102.i, i64 4
  store i32 %sub38.i, ptr %dist.i, align 4
  %incdec.ptr.i = getelementptr inbounds i8, ptr %matches.addr.0102.i, i64 8
  br i1 %cmp21.not.not.le.i, label %hc_find_func.exit, label %cleanup46.i

cleanup46.i:                                      ; preds = %cleanup.i, %while.end.i, %land.lhs.true.i, %if.end.i
  %matches.addr.5.i = phi ptr [ %matches.addr.0102.i, %land.lhs.true.i ], [ %matches.addr.0102.i, %if.end.i ], [ %matches.addr.0102.i, %while.end.i ], [ %incdec.ptr.i, %cleanup.i ]
  %len_best.addr.5.i = phi i32 [ %len_best.addr.0103.i, %land.lhs.true.i ], [ %len_best.addr.0103.i, %if.end.i ], [ %len_best.addr.0103.i, %while.end.i ], [ %inc.lcssa.i, %cleanup.i ]
  %sub.i135 = sub i32 %add, %44
  %cmp.i136 = icmp ne i32 %dec106.i, 0
  %cmp1.not.i = icmp ult i32 %sub.i135, %39
  %or.cond.i = select i1 %cmp.i136, i1 %cmp1.not.i, i1 false
  br i1 %or.cond.i, label %if.end.i, label %hc_find_func.exit

hc_find_func.exit:                                ; preds = %cleanup.i, %cleanup46.i, %do.body57
  %retval.4.ph.i = phi ptr [ %add.ptr62, %do.body57 ], [ %incdec.ptr.i, %cleanup.i ], [ %matches.addr.5.i, %cleanup46.i ]
  %sub.ptr.lhs.cast = ptrtoint ptr %retval.4.ph.i to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %matches to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = lshr exact i64 %sub.ptr.sub, 3
  %conv64 = trunc i64 %sub.ptr.div to i32
  %51 = load i32, ptr %cyclic_pos59, align 8
  %inc.i138 = add i32 %51, 1
  %52 = load i32, ptr %cyclic_size, align 4
  %cmp.i140 = icmp eq i32 %inc.i138, %52
  %spec.store.select.i141 = select i1 %cmp.i140, i32 0, i32 %inc.i138
  store i32 %spec.store.select.i141, ptr %cyclic_pos59, align 8
  %53 = load i32, ptr %0, align 8
  %inc2.i143 = add i32 %53, 1
  store i32 %inc2.i143, ptr %0, align 8
  %54 = load i32, ptr %offset, align 4
  %add.i145 = add i32 %54, %inc2.i143
  %cmp4.i146 = icmp eq i32 %add.i145, -1
  br i1 %cmp4.i146, label %if.then5.i147, label %cleanup75

if.then5.i147:                                    ; preds = %hc_find_func.exit
  %sub.i.i148 = xor i32 %52, -1
  %hash_size_sum.i.i149 = getelementptr inbounds i8, ptr %mf, i64 108
  %55 = load i32, ptr %hash_size_sum.i.i149, align 4
  %sons_count.i.i150 = getelementptr inbounds i8, ptr %mf, i64 112
  %56 = load i32, ptr %sons_count.i.i150, align 8
  %add.i.i151 = add i32 %56, %55
  %57 = load ptr, ptr %hash, align 8
  %cmp21.not.i.i153 = icmp eq i32 %add.i.i151, 0
  br i1 %cmp21.not.i.i153, label %normalize.exit.i164, label %for.body.preheader.i.i154

for.body.preheader.i.i154:                        ; preds = %if.then5.i147
  %wide.trip.count.i.i155 = zext i32 %add.i.i151 to i64
  %min.iters.check = icmp ult i32 %add.i.i151, 16
  br i1 %min.iters.check, label %for.body.i.i156.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body.preheader.i.i154
  %n.vec = and i64 %wide.trip.count.i.i155, 4294967280
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %sub.i.i148, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %58 = getelementptr inbounds i32, ptr %57, i64 %index
  %59 = getelementptr inbounds i8, ptr %58, i64 16
  %60 = getelementptr inbounds i8, ptr %58, i64 32
  %61 = getelementptr inbounds i8, ptr %58, i64 48
  %wide.load = load <4 x i32>, ptr %58, align 4
  %wide.load178 = load <4 x i32>, ptr %59, align 4
  %wide.load179 = load <4 x i32>, ptr %60, align 4
  %wide.load180 = load <4 x i32>, ptr %61, align 4
  %62 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load, <4 x i32> %broadcast.splat)
  %63 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load178, <4 x i32> %broadcast.splat)
  %64 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load179, <4 x i32> %broadcast.splat)
  %65 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load180, <4 x i32> %broadcast.splat)
  store <4 x i32> %62, ptr %58, align 4
  store <4 x i32> %63, ptr %59, align 4
  store <4 x i32> %64, ptr %60, align 4
  store <4 x i32> %65, ptr %61, align 4
  %index.next = add nuw i64 %index, 16
  %66 = icmp eq i64 %index.next, %n.vec
  br i1 %66, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i155
  br i1 %cmp.n, label %normalize.exit.loopexit.i162, label %for.body.i.i156.preheader

for.body.i.i156.preheader:                        ; preds = %middle.block, %for.body.preheader.i.i154
  %indvars.iv.i.i157.ph = phi i64 [ 0, %for.body.preheader.i.i154 ], [ %n.vec, %middle.block ]
  br label %for.body.i.i156

for.body.i.i156:                                  ; preds = %for.body.i.i156.preheader, %for.body.i.i156
  %indvars.iv.i.i157 = phi i64 [ %indvars.iv.next.i.i160, %for.body.i.i156 ], [ %indvars.iv.i.i157.ph, %for.body.i.i156.preheader ]
  %arrayidx.i.i158 = getelementptr inbounds i32, ptr %57, i64 %indvars.iv.i.i157
  %67 = load i32, ptr %arrayidx.i.i158, align 4
  %storemerge.i.i159 = tail call i32 @llvm.usub.sat.i32(i32 %67, i32 %sub.i.i148)
  store i32 %storemerge.i.i159, ptr %arrayidx.i.i158, align 4
  %indvars.iv.next.i.i160 = add nuw nsw i64 %indvars.iv.i.i157, 1
  %exitcond.not.i.i161 = icmp eq i64 %indvars.iv.next.i.i160, %wide.trip.count.i.i155
  br i1 %exitcond.not.i.i161, label %normalize.exit.loopexit.i162, label %for.body.i.i156, !llvm.loop !10

normalize.exit.loopexit.i162:                     ; preds = %for.body.i.i156, %middle.block
  %.pre.i163 = load i32, ptr %offset, align 4
  br label %normalize.exit.i164

normalize.exit.i164:                              ; preds = %normalize.exit.loopexit.i162, %if.then5.i147
  %68 = phi i32 [ %.pre.i163, %normalize.exit.loopexit.i162 ], [ %54, %if.then5.i147 ]
  %sub8.i.i165 = sub i32 %68, %sub.i.i148
  store i32 %sub8.i.i165, ptr %offset, align 4
  br label %cleanup75

cleanup75:                                        ; preds = %normalize.exit.i164, %hc_find_func.exit, %normalize.exit.i, %do.body, %if.then3
  %retval.1 = phi i32 [ 0, %if.then3 ], [ 1, %do.body ], [ 1, %normalize.exit.i ], [ %conv64, %hc_find_func.exit ], [ %conv64, %normalize.exit.i164 ]
  ret i32 %retval.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @lzma_mf_hc3_skip(ptr nocapture noundef %mf, i32 noundef %amount) local_unnamed_addr #1 {
entry:
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
  br label %do.body

do.body:                                          ; preds = %do.cond21, %entry
  %amount.addr.0 = phi i32 [ %amount, %entry ], [ %dec, %do.cond21 ]
  %mf.val = load i32, ptr %0, align 8
  %mf.val41 = load i32, ptr %1, align 4
  %sub.i = sub i32 %mf.val41, %mf.val
  %cmp = icmp ult i32 %sub.i, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %inc.i = add i32 %mf.val, 1
  store i32 %inc.i, ptr %0, align 8
  %2 = load i32, ptr %pending.i, align 8
  %inc1.i = add i32 %2, 1
  store i32 %inc1.i, ptr %pending.i, align 8
  br label %do.cond21

if.end:                                           ; preds = %do.body
  %mf.val42 = load ptr, ptr %mf, align 8
  %idx.ext.i = zext i32 %mf.val to i64
  %add.ptr.i = getelementptr inbounds i8, ptr %mf.val42, i64 %idx.ext.i
  %3 = load i32, ptr %offset, align 4
  %add = add i32 %3, %mf.val
  %4 = load i8, ptr %add.ptr.i, align 1
  %idxprom = zext i8 %4 to i64
  %arrayidx2 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %idxprom
  %5 = load i32, ptr %arrayidx2, align 4
  %arrayidx3 = getelementptr inbounds i8, ptr %add.ptr.i, i64 1
  %6 = load i8, ptr %arrayidx3, align 1
  %conv = zext i8 %6 to i32
  %xor = xor i32 %5, %conv
  %and = and i32 %xor, 1023
  %arrayidx4 = getelementptr inbounds i8, ptr %add.ptr.i, i64 2
  %7 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %7 to i32
  %shl = shl nuw nsw i32 %conv5, 8
  %xor6 = xor i32 %shl, %xor
  %8 = load i32, ptr %hash_mask, align 8
  %and7 = and i32 %xor6, %8
  %9 = load ptr, ptr %hash, align 8
  %add8 = add i32 %and7, 1024
  %idxprom9 = zext i32 %add8 to i64
  %arrayidx10 = getelementptr inbounds i32, ptr %9, i64 %idxprom9
  %10 = load i32, ptr %arrayidx10, align 4
  %idxprom12 = zext nneg i32 %and to i64
  %arrayidx13 = getelementptr inbounds i32, ptr %9, i64 %idxprom12
  store i32 %add, ptr %arrayidx13, align 4
  %11 = load ptr, ptr %hash, align 8
  %arrayidx17 = getelementptr inbounds i32, ptr %11, i64 %idxprom9
  store i32 %add, ptr %arrayidx17, align 4
  %12 = load ptr, ptr %son, align 8
  %13 = load i32, ptr %cyclic_pos, align 8
  %idxprom19 = zext i32 %13 to i64
  %arrayidx20 = getelementptr inbounds i32, ptr %12, i64 %idxprom19
  store i32 %10, ptr %arrayidx20, align 4
  %14 = load i32, ptr %cyclic_pos, align 8
  %inc.i44 = add i32 %14, 1
  %15 = load i32, ptr %cyclic_size.i, align 4
  %cmp.i = icmp eq i32 %inc.i44, %15
  %spec.store.select.i = select i1 %cmp.i, i32 0, i32 %inc.i44
  store i32 %spec.store.select.i, ptr %cyclic_pos, align 8
  %16 = load i32, ptr %0, align 8
  %inc2.i = add i32 %16, 1
  store i32 %inc2.i, ptr %0, align 8
  %17 = load i32, ptr %offset, align 4
  %add.i = add i32 %17, %inc2.i
  %cmp4.i = icmp eq i32 %add.i, -1
  br i1 %cmp4.i, label %if.then5.i, label %do.cond21

if.then5.i:                                       ; preds = %if.end
  %sub.i.i = xor i32 %15, -1
  %18 = load i32, ptr %hash_size_sum.i.i, align 4
  %19 = load i32, ptr %sons_count.i.i, align 8
  %add.i.i = add i32 %19, %18
  %20 = load ptr, ptr %hash, align 8
  %cmp21.not.i.i = icmp eq i32 %add.i.i, 0
  br i1 %cmp21.not.i.i, label %normalize.exit.i, label %for.body.preheader.i.i

for.body.preheader.i.i:                           ; preds = %if.then5.i
  %wide.trip.count.i.i = zext i32 %add.i.i to i64
  %min.iters.check = icmp ult i32 %add.i.i, 16
  br i1 %min.iters.check, label %for.body.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body.preheader.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 4294967280
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %sub.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %21 = getelementptr inbounds i32, ptr %20, i64 %index
  %22 = getelementptr inbounds i8, ptr %21, i64 16
  %23 = getelementptr inbounds i8, ptr %21, i64 32
  %24 = getelementptr inbounds i8, ptr %21, i64 48
  %wide.load = load <4 x i32>, ptr %21, align 4
  %wide.load46 = load <4 x i32>, ptr %22, align 4
  %wide.load47 = load <4 x i32>, ptr %23, align 4
  %wide.load48 = load <4 x i32>, ptr %24, align 4
  %25 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load, <4 x i32> %broadcast.splat)
  %26 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load46, <4 x i32> %broadcast.splat)
  %27 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load47, <4 x i32> %broadcast.splat)
  %28 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load48, <4 x i32> %broadcast.splat)
  store <4 x i32> %25, ptr %21, align 4
  store <4 x i32> %26, ptr %22, align 4
  store <4 x i32> %27, ptr %23, align 4
  store <4 x i32> %28, ptr %24, align 4
  %index.next = add nuw i64 %index, 16
  %29 = icmp eq i64 %index.next, %n.vec
  br i1 %29, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %normalize.exit.loopexit.i, label %for.body.i.i.preheader

for.body.i.i.preheader:                           ; preds = %middle.block, %for.body.preheader.i.i
  %indvars.iv.i.i.ph = phi i64 [ 0, %for.body.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.preheader, %for.body.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %for.body.i.i ], [ %indvars.iv.i.i.ph, %for.body.i.i.preheader ]
  %arrayidx.i.i = getelementptr inbounds i32, ptr %20, i64 %indvars.iv.i.i
  %30 = load i32, ptr %arrayidx.i.i, align 4
  %storemerge.i.i = tail call i32 @llvm.usub.sat.i32(i32 %30, i32 %sub.i.i)
  store i32 %storemerge.i.i, ptr %arrayidx.i.i, align 4
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %normalize.exit.loopexit.i, label %for.body.i.i, !llvm.loop !12

normalize.exit.loopexit.i:                        ; preds = %for.body.i.i, %middle.block
  %.pre.i = load i32, ptr %offset, align 4
  br label %normalize.exit.i

normalize.exit.i:                                 ; preds = %normalize.exit.loopexit.i, %if.then5.i
  %31 = phi i32 [ %.pre.i, %normalize.exit.loopexit.i ], [ %17, %if.then5.i ]
  %sub8.i.i = sub i32 %31, %sub.i.i
  store i32 %sub8.i.i, ptr %offset, align 4
  br label %do.cond21

do.cond21:                                        ; preds = %normalize.exit.i, %if.end, %if.then
  %dec = add i32 %amount.addr.0, -1
  %cmp22.not = icmp eq i32 %dec, 0
  br i1 %cmp22.not, label %do.end24, label %do.body

do.end24:                                         ; preds = %do.cond21
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @lzma_mf_hc4_find(ptr nocapture noundef %mf, ptr noundef %matches) local_unnamed_addr #1 {
entry:
  %0 = getelementptr i8, ptr %mf, i64 24
  %mf.val = load i32, ptr %0, align 8
  %1 = getelementptr i8, ptr %mf, i64 36
  %mf.val204 = load i32, ptr %1, align 4
  %sub.i = sub i32 %mf.val204, %mf.val
  %nice_len = getelementptr inbounds i8, ptr %mf, i64 96
  %2 = load i32, ptr %nice_len, align 8
  %cmp.not = icmp ugt i32 %2, %sub.i
  br i1 %cmp.not, label %if.else, label %if.end4

if.else:                                          ; preds = %entry
  %cmp2 = icmp ult i32 %sub.i, 4
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.else
  %inc.i = add i32 %mf.val, 1
  store i32 %inc.i, ptr %0, align 8
  %pending.i = getelementptr inbounds i8, ptr %mf, i64 40
  %3 = load i32, ptr %pending.i, align 8
  %inc1.i = add i32 %3, 1
  store i32 %inc1.i, ptr %pending.i, align 8
  br label %cleanup129

if.end4:                                          ; preds = %entry, %if.else
  %len_limit.0 = phi i32 [ %sub.i, %if.else ], [ %2, %entry ]
  %mf.val205 = load ptr, ptr %mf, align 8
  %idx.ext.i = zext i32 %mf.val to i64
  %add.ptr.i = getelementptr inbounds i8, ptr %mf.val205, i64 %idx.ext.i
  %offset = getelementptr inbounds i8, ptr %mf, i64 20
  %4 = load i32, ptr %offset, align 4
  %add = add i32 %4, %mf.val
  %5 = load i8, ptr %add.ptr.i, align 1
  %idxprom = zext i8 %5 to i64
  %arrayidx6 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %idxprom
  %6 = load i32, ptr %arrayidx6, align 4
  %arrayidx7 = getelementptr inbounds i8, ptr %add.ptr.i, i64 1
  %7 = load i8, ptr %arrayidx7, align 1
  %conv = zext i8 %7 to i32
  %xor = xor i32 %6, %conv
  %and = and i32 %xor, 1023
  %arrayidx8 = getelementptr inbounds i8, ptr %add.ptr.i, i64 2
  %8 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %8 to i32
  %shl = shl nuw nsw i32 %conv9, 8
  %xor10 = xor i32 %shl, %xor
  %and11 = and i32 %xor10, 65535
  %arrayidx16 = getelementptr inbounds i8, ptr %add.ptr.i, i64 3
  %9 = load i8, ptr %arrayidx16, align 1
  %idxprom17 = zext i8 %9 to i64
  %arrayidx18 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %idxprom17
  %10 = load i32, ptr %arrayidx18, align 4
  %shl19 = shl i32 %10, 5
  %xor20 = xor i32 %xor10, %shl19
  %hash_mask = getelementptr inbounds i8, ptr %mf, i64 88
  %11 = load i32, ptr %hash_mask, align 8
  %and21 = and i32 %xor20, %11
  %hash = getelementptr inbounds i8, ptr %mf, i64 64
  %12 = load ptr, ptr %hash, align 8
  %idxprom22 = zext nneg i32 %and to i64
  %arrayidx23 = getelementptr inbounds i32, ptr %12, i64 %idxprom22
  %13 = load i32, ptr %arrayidx23, align 4
  %sub = sub i32 %add, %13
  %add25 = add nuw nsw i32 %and11, 1024
  %idxprom26 = zext nneg i32 %add25 to i64
  %arrayidx27 = getelementptr inbounds i32, ptr %12, i64 %idxprom26
  %14 = load i32, ptr %arrayidx27, align 4
  %sub28 = sub i32 %add, %14
  %add30 = add i32 %and21, 66560
  %idxprom31 = zext i32 %add30 to i64
  %arrayidx32 = getelementptr inbounds i32, ptr %12, i64 %idxprom31
  %15 = load i32, ptr %arrayidx32, align 4
  store i32 %add, ptr %arrayidx23, align 4
  %16 = load ptr, ptr %hash, align 8
  %arrayidx39 = getelementptr inbounds i32, ptr %16, i64 %idxprom26
  store i32 %add, ptr %arrayidx39, align 4
  %17 = load ptr, ptr %hash, align 8
  %arrayidx43 = getelementptr inbounds i32, ptr %17, i64 %idxprom31
  store i32 %add, ptr %arrayidx43, align 4
  %cyclic_size = getelementptr inbounds i8, ptr %mf, i64 84
  %18 = load i32, ptr %cyclic_size, align 4
  %cmp44 = icmp ult i32 %sub, %18
  br i1 %cmp44, label %land.lhs.true, label %if.end54

land.lhs.true:                                    ; preds = %if.end4
  %idx.ext = zext i32 %sub to i64
  %idx.neg = sub nsw i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg
  %19 = load i8, ptr %add.ptr, align 1
  %20 = load i8, ptr %add.ptr.i, align 1
  %cmp48 = icmp eq i8 %19, %20
  br i1 %cmp48, label %if.then50, label %if.end54

if.then50:                                        ; preds = %land.lhs.true
  store i32 2, ptr %matches, align 4
  %sub52 = add i32 %sub, -1
  %dist = getelementptr inbounds i8, ptr %matches, i64 4
  store i32 %sub52, ptr %dist, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then50, %land.lhs.true, %if.end4
  %cmp75.not = phi i1 [ false, %if.then50 ], [ true, %land.lhs.true ], [ true, %if.end4 ]
  %matches_count.0 = phi i32 [ 1, %if.then50 ], [ 0, %land.lhs.true ], [ 0, %if.end4 ]
  %len_best.0 = phi i32 [ 2, %if.then50 ], [ 1, %land.lhs.true ], [ 1, %if.end4 ]
  %cmp55.not = icmp eq i32 %14, %13
  br i1 %cmp55.not, label %if.end74, label %land.lhs.true57

land.lhs.true57:                                  ; preds = %if.end54
  %21 = load i32, ptr %cyclic_size, align 4
  %cmp59 = icmp ult i32 %sub28, %21
  br i1 %cmp59, label %land.lhs.true61, label %if.end74

land.lhs.true61:                                  ; preds = %land.lhs.true57
  %idx.ext62 = zext i32 %sub28 to i64
  %idx.neg63 = sub nsw i64 0, %idx.ext62
  %add.ptr64 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg63
  %22 = load i8, ptr %add.ptr64, align 1
  %23 = load i8, ptr %add.ptr.i, align 1
  %cmp67 = icmp eq i8 %22, %23
  br i1 %cmp67, label %if.end74.thread, label %if.end74

if.end74.thread:                                  ; preds = %land.lhs.true61
  %sub70 = add i32 %sub28, -1
  %inc = add nuw nsw i32 %matches_count.0, 1
  %idxprom71 = zext nneg i32 %matches_count.0 to i64
  %dist73 = getelementptr inbounds %struct.lzma_match, ptr %matches, i64 %idxprom71, i32 1
  store i32 %sub70, ptr %dist73, align 4
  br label %for.cond.preheader

if.end74:                                         ; preds = %land.lhs.true61, %land.lhs.true57, %if.end54
  br i1 %cmp75.not, label %if.end104, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end74.thread, %if.end74
  %len_best.1260 = phi i32 [ 3, %if.end74.thread ], [ %len_best.0, %if.end74 ]
  %delta2.0259 = phi i32 [ %sub28, %if.end74.thread ], [ %sub, %if.end74 ]
  %matches_count.1257 = phi i32 [ %inc, %if.end74.thread ], [ 1, %if.end74 ]
  %cmp78.not249 = icmp eq i32 %len_best.1260, %len_limit.0
  br i1 %cmp78.not249, label %do.body, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %idx.ext82 = zext i32 %delta2.0259 to i64
  %idx.neg83 = sub nsw i64 0, %idx.ext82
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %len_best.2250 = phi i32 [ %len_best.1260, %for.body.lr.ph ], [ %inc93, %for.inc ]
  %idx.ext80 = zext i32 %len_best.2250 to i64
  %add.ptr81 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.ext80
  %add.ptr84 = getelementptr inbounds i8, ptr %add.ptr81, i64 %idx.neg83
  %24 = load i8, ptr %add.ptr84, align 1
  %25 = load i8, ptr %add.ptr81, align 1
  %cmp89.not = icmp eq i8 %24, %25
  br i1 %cmp89.not, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.body
  %inc93 = add i32 %len_best.2250, 1
  %cmp78.not = icmp eq i32 %inc93, %len_limit.0
  br i1 %cmp78.not, label %do.body, label %for.body

for.end:                                          ; preds = %for.body
  %sub94 = add nsw i32 %matches_count.1257, -1
  %idxprom95 = zext i32 %sub94 to i64
  %arrayidx96 = getelementptr inbounds %struct.lzma_match, ptr %matches, i64 %idxprom95
  store i32 %len_best.2250, ptr %arrayidx96, align 4
  %26 = zext nneg i32 %matches_count.1257 to i64
  br label %if.end104

do.body:                                          ; preds = %for.inc, %for.cond.preheader
  %sub94244 = add nsw i32 %matches_count.1257, -1
  %idxprom95245 = zext i32 %sub94244 to i64
  %arrayidx96246 = getelementptr inbounds %struct.lzma_match, ptr %matches, i64 %idxprom95245
  store i32 %len_limit.0, ptr %arrayidx96246, align 4
  %son = getelementptr inbounds i8, ptr %mf, i64 72
  %27 = load ptr, ptr %son, align 8
  %cyclic_pos = getelementptr inbounds i8, ptr %mf, i64 80
  %28 = load i32, ptr %cyclic_pos, align 8
  %idxprom101 = zext i32 %28 to i64
  %arrayidx102 = getelementptr inbounds i32, ptr %27, i64 %idxprom101
  store i32 %15, ptr %arrayidx102, align 4
  %29 = load i32, ptr %cyclic_pos, align 8
  %inc.i207 = add i32 %29, 1
  %30 = load i32, ptr %cyclic_size, align 4
  %cmp.i = icmp eq i32 %inc.i207, %30
  %spec.store.select.i = select i1 %cmp.i, i32 0, i32 %inc.i207
  store i32 %spec.store.select.i, ptr %cyclic_pos, align 8
  %31 = load i32, ptr %0, align 8
  %inc2.i = add i32 %31, 1
  store i32 %inc2.i, ptr %0, align 8
  %32 = load i32, ptr %offset, align 4
  %add.i = add i32 %32, %inc2.i
  %cmp4.i = icmp eq i32 %add.i, -1
  br i1 %cmp4.i, label %if.then5.i, label %cleanup129

if.then5.i:                                       ; preds = %do.body
  %sub.i.i = xor i32 %30, -1
  %hash_size_sum.i.i = getelementptr inbounds i8, ptr %mf, i64 108
  %33 = load i32, ptr %hash_size_sum.i.i, align 4
  %sons_count.i.i = getelementptr inbounds i8, ptr %mf, i64 112
  %34 = load i32, ptr %sons_count.i.i, align 8
  %add.i.i = add i32 %34, %33
  %35 = load ptr, ptr %hash, align 8
  %cmp21.not.i.i = icmp eq i32 %add.i.i, 0
  br i1 %cmp21.not.i.i, label %normalize.exit.i, label %for.body.preheader.i.i

for.body.preheader.i.i:                           ; preds = %if.then5.i
  %wide.trip.count.i.i = zext i32 %add.i.i to i64
  %min.iters.check = icmp ult i32 %add.i.i, 16
  br i1 %min.iters.check, label %for.body.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body.preheader.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 4294967280
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %sub.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %36 = getelementptr inbounds i32, ptr %35, i64 %index
  %37 = getelementptr inbounds i8, ptr %36, i64 16
  %38 = getelementptr inbounds i8, ptr %36, i64 32
  %39 = getelementptr inbounds i8, ptr %36, i64 48
  %wide.load = load <4 x i32>, ptr %36, align 4
  %wide.load264 = load <4 x i32>, ptr %37, align 4
  %wide.load265 = load <4 x i32>, ptr %38, align 4
  %wide.load266 = load <4 x i32>, ptr %39, align 4
  %40 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load, <4 x i32> %broadcast.splat)
  %41 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load264, <4 x i32> %broadcast.splat)
  %42 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load265, <4 x i32> %broadcast.splat)
  %43 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load266, <4 x i32> %broadcast.splat)
  store <4 x i32> %40, ptr %36, align 4
  store <4 x i32> %41, ptr %37, align 4
  store <4 x i32> %42, ptr %38, align 4
  store <4 x i32> %43, ptr %39, align 4
  %index.next = add nuw i64 %index, 16
  %44 = icmp eq i64 %index.next, %n.vec
  br i1 %44, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %normalize.exit.loopexit.i, label %for.body.i.i.preheader

for.body.i.i.preheader:                           ; preds = %middle.block, %for.body.preheader.i.i
  %indvars.iv.i.i.ph = phi i64 [ 0, %for.body.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.preheader, %for.body.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %for.body.i.i ], [ %indvars.iv.i.i.ph, %for.body.i.i.preheader ]
  %arrayidx.i.i = getelementptr inbounds i32, ptr %35, i64 %indvars.iv.i.i
  %45 = load i32, ptr %arrayidx.i.i, align 4
  %storemerge.i.i = tail call i32 @llvm.usub.sat.i32(i32 %45, i32 %sub.i.i)
  store i32 %storemerge.i.i, ptr %arrayidx.i.i, align 4
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %normalize.exit.loopexit.i, label %for.body.i.i, !llvm.loop !14

normalize.exit.loopexit.i:                        ; preds = %for.body.i.i, %middle.block
  %.pre.i = load i32, ptr %offset, align 4
  br label %normalize.exit.i

normalize.exit.i:                                 ; preds = %normalize.exit.loopexit.i, %if.then5.i
  %46 = phi i32 [ %.pre.i, %normalize.exit.loopexit.i ], [ %32, %if.then5.i ]
  %sub8.i.i = sub i32 %46, %sub.i.i
  store i32 %sub8.i.i, ptr %offset, align 4
  br label %cleanup129

if.end104:                                        ; preds = %for.end, %if.end74
  %matches_count.1258 = phi i64 [ %26, %for.end ], [ 0, %if.end74 ]
  %len_best.3 = phi i32 [ %len_best.2250, %for.end ], [ %len_best.0, %if.end74 ]
  %depth = getelementptr inbounds i8, ptr %mf, i64 92
  %47 = load i32, ptr %depth, align 4
  %son110 = getelementptr inbounds i8, ptr %mf, i64 72
  %48 = load ptr, ptr %son110, align 8
  %cyclic_pos111 = getelementptr inbounds i8, ptr %mf, i64 80
  %49 = load i32, ptr %cyclic_pos111, align 8
  %50 = load i32, ptr %cyclic_size, align 4
  %add.ptr114 = getelementptr inbounds %struct.lzma_match, ptr %matches, i64 %matches_count.1258
  %idxprom.i = zext i32 %49 to i64
  %arrayidx.i = getelementptr inbounds i32, ptr %48, i64 %idxprom.i
  store i32 %15, ptr %arrayidx.i, align 4
  %sub97.i = sub i32 %add, %15
  %cmp99.i = icmp ne i32 %47, 0
  %cmp1.not100.i = icmp ult i32 %sub97.i, %50
  %or.cond101.i = and i1 %cmp99.i, %cmp1.not100.i
  br i1 %or.cond101.i, label %if.end.preheader.i, label %hc_find_func.exit

if.end.preheader.i:                               ; preds = %if.end104
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %len_best.3, i32 3)
  %51 = add i32 %len_limit.0, -1
  %wide.trip.count.i = zext i32 %51 to i64
  br label %if.end.i

if.end.i:                                         ; preds = %cleanup46.i, %if.end.preheader.i
  %dec106.in.i = phi i32 [ %dec106.i, %cleanup46.i ], [ %47, %if.end.preheader.i ]
  %sub105.i = phi i32 [ %sub.i212, %cleanup46.i ], [ %sub97.i, %if.end.preheader.i ]
  %len_best.addr.0103.i = phi i32 [ %len_best.addr.5.i, %cleanup46.i ], [ %spec.store.select, %if.end.preheader.i ]
  %matches.addr.0102.i = phi ptr [ %matches.addr.5.i, %cleanup46.i ], [ %add.ptr114, %if.end.preheader.i ]
  %dec106.i = add i32 %dec106.in.i, -1
  %idx.ext.i209 = zext i32 %sub105.i to i64
  %idx.neg.i = sub nsw i64 0, %idx.ext.i209
  %add.ptr.i210 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg.i
  %sub2.i = sub i32 %49, %sub105.i
  %cmp3.i = icmp ugt i32 %sub105.i, %49
  %cond.i = select i1 %cmp3.i, i32 %50, i32 0
  %add.i211 = add i32 %sub2.i, %cond.i
  %idxprom4.i = zext i32 %add.i211 to i64
  %arrayidx5.i = getelementptr inbounds i32, ptr %48, i64 %idxprom4.i
  %52 = load i32, ptr %arrayidx5.i, align 4
  %idxprom6.i = zext i32 %len_best.addr.0103.i to i64
  %arrayidx7.i = getelementptr inbounds i8, ptr %add.ptr.i210, i64 %idxprom6.i
  %53 = load i8, ptr %arrayidx7.i, align 1
  %arrayidx9.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom6.i
  %54 = load i8, ptr %arrayidx9.i, align 1
  %cmp11.i = icmp eq i8 %53, %54
  br i1 %cmp11.i, label %land.lhs.true.i, label %cleanup46.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %55 = load i8, ptr %add.ptr.i210, align 1
  %56 = load i8, ptr %add.ptr.i, align 1
  %cmp17.i = icmp eq i8 %55, %56
  br i1 %cmp17.i, label %while.cond20.i, label %cleanup46.i

while.cond20.i:                                   ; preds = %land.lhs.true.i, %while.body23.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %while.body23.i ], [ 0, %land.lhs.true.i ]
  %exitcond.i = icmp eq i64 %indvars.iv.i, %wide.trip.count.i
  br i1 %exitcond.i, label %while.end.i, label %while.body23.i

while.body23.i:                                   ; preds = %while.cond20.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %idxprom24.i = and i64 %indvars.iv.next.i, 4294967295
  %arrayidx25.i = getelementptr inbounds i8, ptr %add.ptr.i210, i64 %idxprom24.i
  %57 = load i8, ptr %arrayidx25.i, align 1
  %arrayidx28.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom24.i
  %58 = load i8, ptr %arrayidx28.i, align 1
  %cmp30.not.i = icmp eq i8 %57, %58
  br i1 %cmp30.not.i, label %while.cond20.i, label %while.end.split.loop.exit.i

while.end.split.loop.exit.i:                      ; preds = %while.body23.i
  %indvars.le112.i = trunc i64 %indvars.iv.next.i to i32
  br label %while.end.i

while.end.i:                                      ; preds = %while.cond20.i, %while.end.split.loop.exit.i
  %inc.lcssa.i = phi i32 [ %indvars.le112.i, %while.end.split.loop.exit.i ], [ %len_limit.0, %while.cond20.i ]
  %cmp34.i = icmp ult i32 %len_best.addr.0103.i, %inc.lcssa.i
  br i1 %cmp34.i, label %cleanup.i, label %cleanup46.i

cleanup.i:                                        ; preds = %while.end.i
  %cmp21.not.not.le.i = icmp eq i32 %inc.lcssa.i, %len_limit.0
  store i32 %inc.lcssa.i, ptr %matches.addr.0102.i, align 4
  %sub38.i = add i32 %sub105.i, -1
  %dist.i = getelementptr inbounds i8, ptr %matches.addr.0102.i, i64 4
  store i32 %sub38.i, ptr %dist.i, align 4
  %incdec.ptr.i = getelementptr inbounds i8, ptr %matches.addr.0102.i, i64 8
  br i1 %cmp21.not.not.le.i, label %hc_find_func.exit, label %cleanup46.i

cleanup46.i:                                      ; preds = %cleanup.i, %while.end.i, %land.lhs.true.i, %if.end.i
  %matches.addr.5.i = phi ptr [ %matches.addr.0102.i, %land.lhs.true.i ], [ %matches.addr.0102.i, %if.end.i ], [ %matches.addr.0102.i, %while.end.i ], [ %incdec.ptr.i, %cleanup.i ]
  %len_best.addr.5.i = phi i32 [ %len_best.addr.0103.i, %land.lhs.true.i ], [ %len_best.addr.0103.i, %if.end.i ], [ %len_best.addr.0103.i, %while.end.i ], [ %inc.lcssa.i, %cleanup.i ]
  %sub.i212 = sub i32 %add, %52
  %cmp.i213 = icmp ne i32 %dec106.i, 0
  %cmp1.not.i = icmp ult i32 %sub.i212, %50
  %or.cond.i = select i1 %cmp.i213, i1 %cmp1.not.i, i1 false
  br i1 %or.cond.i, label %if.end.i, label %hc_find_func.exit

hc_find_func.exit:                                ; preds = %cleanup.i, %cleanup46.i, %if.end104
  %retval.4.ph.i = phi ptr [ %add.ptr114, %if.end104 ], [ %incdec.ptr.i, %cleanup.i ], [ %matches.addr.5.i, %cleanup46.i ]
  %sub.ptr.lhs.cast = ptrtoint ptr %retval.4.ph.i to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %matches to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = lshr exact i64 %sub.ptr.sub, 3
  %conv116 = trunc i64 %sub.ptr.div to i32
  %59 = load i32, ptr %cyclic_pos111, align 8
  %inc.i215 = add i32 %59, 1
  %60 = load i32, ptr %cyclic_size, align 4
  %cmp.i217 = icmp eq i32 %inc.i215, %60
  %spec.store.select.i218 = select i1 %cmp.i217, i32 0, i32 %inc.i215
  store i32 %spec.store.select.i218, ptr %cyclic_pos111, align 8
  %61 = load i32, ptr %0, align 8
  %inc2.i220 = add i32 %61, 1
  store i32 %inc2.i220, ptr %0, align 8
  %62 = load i32, ptr %offset, align 4
  %add.i222 = add i32 %62, %inc2.i220
  %cmp4.i223 = icmp eq i32 %add.i222, -1
  br i1 %cmp4.i223, label %if.then5.i224, label %cleanup129

if.then5.i224:                                    ; preds = %hc_find_func.exit
  %sub.i.i225 = xor i32 %60, -1
  %hash_size_sum.i.i226 = getelementptr inbounds i8, ptr %mf, i64 108
  %63 = load i32, ptr %hash_size_sum.i.i226, align 4
  %sons_count.i.i227 = getelementptr inbounds i8, ptr %mf, i64 112
  %64 = load i32, ptr %sons_count.i.i227, align 8
  %add.i.i228 = add i32 %64, %63
  %65 = load ptr, ptr %hash, align 8
  %cmp21.not.i.i230 = icmp eq i32 %add.i.i228, 0
  br i1 %cmp21.not.i.i230, label %normalize.exit.i241, label %for.body.preheader.i.i231

for.body.preheader.i.i231:                        ; preds = %if.then5.i224
  %wide.trip.count.i.i232 = zext i32 %add.i.i228 to i64
  %min.iters.check269 = icmp ult i32 %add.i.i228, 16
  br i1 %min.iters.check269, label %for.body.i.i233.preheader, label %vector.ph270

vector.ph270:                                     ; preds = %for.body.preheader.i.i231
  %n.vec272 = and i64 %wide.trip.count.i.i232, 4294967280
  %broadcast.splatinsert280 = insertelement <4 x i32> poison, i32 %sub.i.i225, i64 0
  %broadcast.splat281 = shufflevector <4 x i32> %broadcast.splatinsert280, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body274

vector.body274:                                   ; preds = %vector.body274, %vector.ph270
  %index275 = phi i64 [ 0, %vector.ph270 ], [ %index.next282, %vector.body274 ]
  %66 = getelementptr inbounds i32, ptr %65, i64 %index275
  %67 = getelementptr inbounds i8, ptr %66, i64 16
  %68 = getelementptr inbounds i8, ptr %66, i64 32
  %69 = getelementptr inbounds i8, ptr %66, i64 48
  %wide.load276 = load <4 x i32>, ptr %66, align 4
  %wide.load277 = load <4 x i32>, ptr %67, align 4
  %wide.load278 = load <4 x i32>, ptr %68, align 4
  %wide.load279 = load <4 x i32>, ptr %69, align 4
  %70 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load276, <4 x i32> %broadcast.splat281)
  %71 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load277, <4 x i32> %broadcast.splat281)
  %72 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load278, <4 x i32> %broadcast.splat281)
  %73 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load279, <4 x i32> %broadcast.splat281)
  store <4 x i32> %70, ptr %66, align 4
  store <4 x i32> %71, ptr %67, align 4
  store <4 x i32> %72, ptr %68, align 4
  store <4 x i32> %73, ptr %69, align 4
  %index.next282 = add nuw i64 %index275, 16
  %74 = icmp eq i64 %index.next282, %n.vec272
  br i1 %74, label %middle.block267, label %vector.body274, !llvm.loop !15

middle.block267:                                  ; preds = %vector.body274
  %cmp.n283 = icmp eq i64 %n.vec272, %wide.trip.count.i.i232
  br i1 %cmp.n283, label %normalize.exit.loopexit.i239, label %for.body.i.i233.preheader

for.body.i.i233.preheader:                        ; preds = %middle.block267, %for.body.preheader.i.i231
  %indvars.iv.i.i234.ph = phi i64 [ 0, %for.body.preheader.i.i231 ], [ %n.vec272, %middle.block267 ]
  br label %for.body.i.i233

for.body.i.i233:                                  ; preds = %for.body.i.i233.preheader, %for.body.i.i233
  %indvars.iv.i.i234 = phi i64 [ %indvars.iv.next.i.i237, %for.body.i.i233 ], [ %indvars.iv.i.i234.ph, %for.body.i.i233.preheader ]
  %arrayidx.i.i235 = getelementptr inbounds i32, ptr %65, i64 %indvars.iv.i.i234
  %75 = load i32, ptr %arrayidx.i.i235, align 4
  %storemerge.i.i236 = tail call i32 @llvm.usub.sat.i32(i32 %75, i32 %sub.i.i225)
  store i32 %storemerge.i.i236, ptr %arrayidx.i.i235, align 4
  %indvars.iv.next.i.i237 = add nuw nsw i64 %indvars.iv.i.i234, 1
  %exitcond.not.i.i238 = icmp eq i64 %indvars.iv.next.i.i237, %wide.trip.count.i.i232
  br i1 %exitcond.not.i.i238, label %normalize.exit.loopexit.i239, label %for.body.i.i233, !llvm.loop !16

normalize.exit.loopexit.i239:                     ; preds = %for.body.i.i233, %middle.block267
  %.pre.i240 = load i32, ptr %offset, align 4
  br label %normalize.exit.i241

normalize.exit.i241:                              ; preds = %normalize.exit.loopexit.i239, %if.then5.i224
  %76 = phi i32 [ %.pre.i240, %normalize.exit.loopexit.i239 ], [ %62, %if.then5.i224 ]
  %sub8.i.i242 = sub i32 %76, %sub.i.i225
  store i32 %sub8.i.i242, ptr %offset, align 4
  br label %cleanup129

cleanup129:                                       ; preds = %normalize.exit.i241, %hc_find_func.exit, %normalize.exit.i, %do.body, %if.then3
  %retval.1 = phi i32 [ 0, %if.then3 ], [ %matches_count.1257, %do.body ], [ %matches_count.1257, %normalize.exit.i ], [ %conv116, %hc_find_func.exit ], [ %conv116, %normalize.exit.i241 ]
  ret i32 %retval.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @lzma_mf_hc4_skip(ptr nocapture noundef %mf, i32 noundef %amount) local_unnamed_addr #1 {
entry:
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
  br label %do.body

do.body:                                          ; preds = %do.cond35, %entry
  %amount.addr.0 = phi i32 [ %amount, %entry ], [ %dec, %do.cond35 ]
  %mf.val = load i32, ptr %0, align 8
  %mf.val60 = load i32, ptr %1, align 4
  %sub.i = sub i32 %mf.val60, %mf.val
  %cmp = icmp ult i32 %sub.i, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %inc.i = add i32 %mf.val, 1
  store i32 %inc.i, ptr %0, align 8
  %2 = load i32, ptr %pending.i, align 8
  %inc1.i = add i32 %2, 1
  store i32 %inc1.i, ptr %pending.i, align 8
  br label %do.cond35

if.end:                                           ; preds = %do.body
  %mf.val61 = load ptr, ptr %mf, align 8
  %idx.ext.i = zext i32 %mf.val to i64
  %add.ptr.i = getelementptr inbounds i8, ptr %mf.val61, i64 %idx.ext.i
  %3 = load i32, ptr %offset, align 4
  %add = add i32 %3, %mf.val
  %4 = load i8, ptr %add.ptr.i, align 1
  %idxprom = zext i8 %4 to i64
  %arrayidx2 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %idxprom
  %5 = load i32, ptr %arrayidx2, align 4
  %arrayidx3 = getelementptr inbounds i8, ptr %add.ptr.i, i64 1
  %6 = load i8, ptr %arrayidx3, align 1
  %conv = zext i8 %6 to i32
  %xor = xor i32 %5, %conv
  %and = and i32 %xor, 1023
  %arrayidx4 = getelementptr inbounds i8, ptr %add.ptr.i, i64 2
  %7 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %7 to i32
  %shl = shl nuw nsw i32 %conv5, 8
  %xor6 = xor i32 %shl, %xor
  %and7 = and i32 %xor6, 65535
  %arrayidx12 = getelementptr inbounds i8, ptr %add.ptr.i, i64 3
  %8 = load i8, ptr %arrayidx12, align 1
  %idxprom13 = zext i8 %8 to i64
  %arrayidx14 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %idxprom13
  %9 = load i32, ptr %arrayidx14, align 4
  %shl15 = shl i32 %9, 5
  %xor16 = xor i32 %xor6, %shl15
  %10 = load i32, ptr %hash_mask, align 8
  %and17 = and i32 %xor16, %10
  %11 = load ptr, ptr %hash, align 8
  %add18 = add i32 %and17, 66560
  %idxprom19 = zext i32 %add18 to i64
  %arrayidx20 = getelementptr inbounds i32, ptr %11, i64 %idxprom19
  %12 = load i32, ptr %arrayidx20, align 4
  %idxprom22 = zext nneg i32 %and to i64
  %arrayidx23 = getelementptr inbounds i32, ptr %11, i64 %idxprom22
  store i32 %add, ptr %arrayidx23, align 4
  %13 = load ptr, ptr %hash, align 8
  %14 = zext nneg i32 %and7 to i64
  %15 = getelementptr inbounds i32, ptr %13, i64 %14
  %arrayidx27 = getelementptr inbounds i8, ptr %15, i64 4096
  store i32 %add, ptr %arrayidx27, align 4
  %16 = load ptr, ptr %hash, align 8
  %arrayidx31 = getelementptr inbounds i32, ptr %16, i64 %idxprom19
  store i32 %add, ptr %arrayidx31, align 4
  %17 = load ptr, ptr %son, align 8
  %18 = load i32, ptr %cyclic_pos, align 8
  %idxprom33 = zext i32 %18 to i64
  %arrayidx34 = getelementptr inbounds i32, ptr %17, i64 %idxprom33
  store i32 %12, ptr %arrayidx34, align 4
  %19 = load i32, ptr %cyclic_pos, align 8
  %inc.i63 = add i32 %19, 1
  %20 = load i32, ptr %cyclic_size.i, align 4
  %cmp.i = icmp eq i32 %inc.i63, %20
  %spec.store.select.i = select i1 %cmp.i, i32 0, i32 %inc.i63
  store i32 %spec.store.select.i, ptr %cyclic_pos, align 8
  %21 = load i32, ptr %0, align 8
  %inc2.i = add i32 %21, 1
  store i32 %inc2.i, ptr %0, align 8
  %22 = load i32, ptr %offset, align 4
  %add.i = add i32 %22, %inc2.i
  %cmp4.i = icmp eq i32 %add.i, -1
  br i1 %cmp4.i, label %if.then5.i, label %do.cond35

if.then5.i:                                       ; preds = %if.end
  %sub.i.i = xor i32 %20, -1
  %23 = load i32, ptr %hash_size_sum.i.i, align 4
  %24 = load i32, ptr %sons_count.i.i, align 8
  %add.i.i = add i32 %24, %23
  %25 = load ptr, ptr %hash, align 8
  %cmp21.not.i.i = icmp eq i32 %add.i.i, 0
  br i1 %cmp21.not.i.i, label %normalize.exit.i, label %for.body.preheader.i.i

for.body.preheader.i.i:                           ; preds = %if.then5.i
  %wide.trip.count.i.i = zext i32 %add.i.i to i64
  %min.iters.check = icmp ult i32 %add.i.i, 16
  br i1 %min.iters.check, label %for.body.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body.preheader.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 4294967280
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %sub.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %26 = getelementptr inbounds i32, ptr %25, i64 %index
  %27 = getelementptr inbounds i8, ptr %26, i64 16
  %28 = getelementptr inbounds i8, ptr %26, i64 32
  %29 = getelementptr inbounds i8, ptr %26, i64 48
  %wide.load = load <4 x i32>, ptr %26, align 4
  %wide.load65 = load <4 x i32>, ptr %27, align 4
  %wide.load66 = load <4 x i32>, ptr %28, align 4
  %wide.load67 = load <4 x i32>, ptr %29, align 4
  %30 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load, <4 x i32> %broadcast.splat)
  %31 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load65, <4 x i32> %broadcast.splat)
  %32 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load66, <4 x i32> %broadcast.splat)
  %33 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load67, <4 x i32> %broadcast.splat)
  store <4 x i32> %30, ptr %26, align 4
  store <4 x i32> %31, ptr %27, align 4
  store <4 x i32> %32, ptr %28, align 4
  store <4 x i32> %33, ptr %29, align 4
  %index.next = add nuw i64 %index, 16
  %34 = icmp eq i64 %index.next, %n.vec
  br i1 %34, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %normalize.exit.loopexit.i, label %for.body.i.i.preheader

for.body.i.i.preheader:                           ; preds = %middle.block, %for.body.preheader.i.i
  %indvars.iv.i.i.ph = phi i64 [ 0, %for.body.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.preheader, %for.body.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %for.body.i.i ], [ %indvars.iv.i.i.ph, %for.body.i.i.preheader ]
  %arrayidx.i.i = getelementptr inbounds i32, ptr %25, i64 %indvars.iv.i.i
  %35 = load i32, ptr %arrayidx.i.i, align 4
  %storemerge.i.i = tail call i32 @llvm.usub.sat.i32(i32 %35, i32 %sub.i.i)
  store i32 %storemerge.i.i, ptr %arrayidx.i.i, align 4
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %normalize.exit.loopexit.i, label %for.body.i.i, !llvm.loop !18

normalize.exit.loopexit.i:                        ; preds = %for.body.i.i, %middle.block
  %.pre.i = load i32, ptr %offset, align 4
  br label %normalize.exit.i

normalize.exit.i:                                 ; preds = %normalize.exit.loopexit.i, %if.then5.i
  %36 = phi i32 [ %.pre.i, %normalize.exit.loopexit.i ], [ %22, %if.then5.i ]
  %sub8.i.i = sub i32 %36, %sub.i.i
  store i32 %sub8.i.i, ptr %offset, align 4
  br label %do.cond35

do.cond35:                                        ; preds = %normalize.exit.i, %if.end, %if.then
  %dec = add i32 %amount.addr.0, -1
  %cmp36.not = icmp eq i32 %dec, 0
  br i1 %cmp36.not, label %do.end38, label %do.body

do.end38:                                         ; preds = %do.cond35
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @lzma_mf_bt2_find(ptr nocapture noundef %mf, ptr noundef %matches) local_unnamed_addr #1 {
entry:
  %0 = getelementptr i8, ptr %mf, i64 24
  %mf.val = load i32, ptr %0, align 8
  %1 = getelementptr i8, ptr %mf, i64 36
  %mf.val42 = load i32, ptr %1, align 4
  %sub.i = sub i32 %mf.val42, %mf.val
  %nice_len = getelementptr inbounds i8, ptr %mf, i64 96
  %2 = load i32, ptr %nice_len, align 8
  %cmp.not = icmp ugt i32 %2, %sub.i
  br i1 %cmp.not, label %if.else, label %if.end5

if.else:                                          ; preds = %entry
  %cmp2 = icmp ult i32 %sub.i, 2
  br i1 %cmp2, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %action = getelementptr inbounds i8, ptr %mf, i64 104
  %3 = load i32, ptr %action, align 8
  %cmp3 = icmp eq i32 %3, 1
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %lor.lhs.false, %if.else
  %inc.i = add i32 %mf.val, 1
  store i32 %inc.i, ptr %0, align 8
  %pending.i = getelementptr inbounds i8, ptr %mf, i64 40
  %4 = load i32, ptr %pending.i, align 8
  %inc1.i = add i32 %4, 1
  store i32 %inc1.i, ptr %pending.i, align 8
  br label %cleanup19

if.end5:                                          ; preds = %entry, %lor.lhs.false
  %len_limit.0 = phi i32 [ %sub.i, %lor.lhs.false ], [ %2, %entry ]
  %mf.val43 = load ptr, ptr %mf, align 8
  %idx.ext.i = zext i32 %mf.val to i64
  %add.ptr.i = getelementptr inbounds i8, ptr %mf.val43, i64 %idx.ext.i
  %offset = getelementptr inbounds i8, ptr %mf, i64 20
  %5 = load i32, ptr %offset, align 4
  %add = add i32 %5, %mf.val
  %6 = load i16, ptr %add.ptr.i, align 1
  %7 = zext i16 %6 to i64
  %hash = getelementptr inbounds i8, ptr %mf, i64 64
  %8 = load ptr, ptr %hash, align 8
  %arrayidx9 = getelementptr inbounds i32, ptr %8, i64 %7
  %9 = load i32, ptr %arrayidx9, align 4
  store i32 %add, ptr %arrayidx9, align 4
  %depth = getelementptr inbounds i8, ptr %mf, i64 92
  %10 = load i32, ptr %depth, align 4
  %son = getelementptr inbounds i8, ptr %mf, i64 72
  %11 = load ptr, ptr %son, align 8
  %cyclic_pos = getelementptr inbounds i8, ptr %mf, i64 80
  %12 = load i32, ptr %cyclic_pos, align 8
  %cyclic_size = getelementptr inbounds i8, ptr %mf, i64 84
  %13 = load i32, ptr %cyclic_size, align 4
  %shl.i = shl i32 %12, 1
  %idx.ext.i45 = zext i32 %shl.i to i64
  %add.ptr.i46 = getelementptr inbounds i32, ptr %11, i64 %idx.ext.i45
  %add.ptr1.i = getelementptr inbounds i8, ptr %add.ptr.i46, i64 4
  %sub135.i = sub i32 %add, %9
  %cmp137.i = icmp ne i32 %10, 0
  %cmp5.not138.i = icmp ult i32 %sub135.i, %13
  %or.cond139.i = and i1 %cmp137.i, %cmp5.not138.i
  br i1 %or.cond139.i, label %if.end.i.preheader, label %if.then.i

if.end.i.preheader:                               ; preds = %if.end5
  %.pre = zext i32 %len_limit.0 to i64
  br label %if.end.i

if.then.i:                                        ; preds = %cleanup64.i, %if.end5
  %matches.addr.0.lcssa.i = phi ptr [ %matches, %if.end5 ], [ %matches.addr.1.i, %cleanup64.i ]
  %ptr0.0.lcssa.i = phi ptr [ %add.ptr1.i, %if.end5 ], [ %ptr0.1.i, %cleanup64.i ]
  %ptr1.0.lcssa.i = phi ptr [ %add.ptr.i46, %if.end5 ], [ %ptr1.1.i, %cleanup64.i ]
  store i32 0, ptr %ptr0.0.lcssa.i, align 4
  store i32 0, ptr %ptr1.0.lcssa.i, align 4
  br label %bt_find_func.exit

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
  %dec148.i = add i32 %dec148.in.i, -1
  %sub6.i = sub i32 %12, %sub147.i
  %cmp7.i = icmp ugt i32 %sub147.i, %12
  %cond.i = select i1 %cmp7.i, i32 %13, i32 0
  %add.i = add i32 %sub6.i, %cond.i
  %shl8.i = shl i32 %add.i, 1
  %idx.ext9.i = zext i32 %shl8.i to i64
  %add.ptr10.i = getelementptr inbounds i32, ptr %11, i64 %idx.ext9.i
  %idx.ext11.i = zext i32 %sub147.i to i64
  %idx.neg.i = sub nsw i64 0, %idx.ext11.i
  %add.ptr12.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg.i
  %cond17.i = tail call i32 @llvm.umin.i32(i32 %len0.0144.i, i32 %len1.0145.i)
  %idxprom.i = zext i32 %cond17.i to i64
  %arrayidx.i = getelementptr inbounds i8, ptr %add.ptr12.i, i64 %idxprom.i
  %14 = load i8, ptr %arrayidx.i, align 1
  %arrayidx19.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom.i
  %15 = load i8, ptr %arrayidx19.i, align 1
  %cmp21.i = icmp eq i8 %14, %15
  br i1 %cmp21.i, label %while.cond24.i, label %if.end50.i

while.cond24.i:                                   ; preds = %if.end.i, %while.body27.i
  %len.0.i = phi i32 [ %inc.i48, %while.body27.i ], [ %cond17.i, %if.end.i ]
  %inc.i48 = add i32 %len.0.i, 1
  %cmp25.not.i = icmp eq i32 %inc.i48, %len_limit.0
  br i1 %cmp25.not.i, label %while.end.i, label %while.body27.i

while.body27.i:                                   ; preds = %while.cond24.i
  %idxprom28.i = zext i32 %inc.i48 to i64
  %arrayidx29.i = getelementptr inbounds i8, ptr %add.ptr12.i, i64 %idxprom28.i
  %16 = load i8, ptr %arrayidx29.i, align 1
  %arrayidx32.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom28.i
  %17 = load i8, ptr %arrayidx32.i, align 1
  %cmp34.not.i = icmp eq i8 %16, %17
  br i1 %cmp34.not.i, label %while.cond24.i, label %while.end.thread.i

while.end.i:                                      ; preds = %while.cond24.i
  %cmp38.i = icmp ult i32 %len_best.addr.0141.i, %len_limit.0
  br i1 %cmp38.i, label %if.then45.i, label %if.end50.i

while.end.thread.i:                               ; preds = %while.body27.i
  %cmp38115.i = icmp ult i32 %len_best.addr.0141.i, %inc.i48
  br i1 %cmp38115.i, label %if.then40.thread.i, label %if.end50.i

if.then40.thread.i:                               ; preds = %while.end.thread.i
  store i32 %inc.i48, ptr %matches.addr.0140.i, align 4
  %sub42116.i = add i32 %sub147.i, -1
  %dist117.i = getelementptr inbounds i8, ptr %matches.addr.0140.i, i64 4
  store i32 %sub42116.i, ptr %dist117.i, align 4
  %incdec.ptr118.i = getelementptr inbounds i8, ptr %matches.addr.0140.i, i64 8
  br label %if.end50.i

if.then45.i:                                      ; preds = %while.end.i
  store i32 %len_limit.0, ptr %matches.addr.0140.i, align 4
  %sub42.i = add i32 %sub147.i, -1
  %dist.i = getelementptr inbounds i8, ptr %matches.addr.0140.i, i64 4
  store i32 %sub42.i, ptr %dist.i, align 4
  %incdec.ptr.i = getelementptr inbounds i8, ptr %matches.addr.0140.i, i64 8
  %18 = load i32, ptr %add.ptr10.i, align 4
  store i32 %18, ptr %ptr1.0143.i, align 4
  %arrayidx47.i = getelementptr inbounds i8, ptr %add.ptr10.i, i64 4
  %19 = load i32, ptr %arrayidx47.i, align 4
  store i32 %19, ptr %ptr0.0142.i, align 4
  br label %bt_find_func.exit

if.end50.i:                                       ; preds = %while.end.i, %if.then40.thread.i, %while.end.thread.i, %if.end.i
  %idxprom51.i.pre-phi = phi i64 [ %idxprom28.i, %if.then40.thread.i ], [ %idxprom28.i, %while.end.thread.i ], [ %idxprom.i, %if.end.i ], [ %.pre, %while.end.i ]
  %matches.addr.1.i = phi ptr [ %incdec.ptr118.i, %if.then40.thread.i ], [ %matches.addr.0140.i, %while.end.thread.i ], [ %matches.addr.0140.i, %if.end.i ], [ %matches.addr.0140.i, %while.end.i ]
  %len_best.addr.1.i = phi i32 [ %inc.i48, %if.then40.thread.i ], [ %len_best.addr.0141.i, %while.end.thread.i ], [ %len_best.addr.0141.i, %if.end.i ], [ %len_best.addr.0141.i, %while.end.i ]
  %len.1.i = phi i32 [ %inc.i48, %if.then40.thread.i ], [ %inc.i48, %while.end.thread.i ], [ %cond17.i, %if.end.i ], [ %len_limit.0, %while.end.i ]
  %arrayidx52.i = getelementptr inbounds i8, ptr %add.ptr12.i, i64 %idxprom51.i.pre-phi
  %20 = load i8, ptr %arrayidx52.i, align 1
  %arrayidx55.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom51.i.pre-phi
  %21 = load i8, ptr %arrayidx55.i, align 1
  %cmp57.i = icmp ult i8 %20, %21
  br i1 %cmp57.i, label %if.then59.i, label %if.else.i

if.then59.i:                                      ; preds = %if.end50.i
  store i32 %cur_match.addr.0146.i, ptr %ptr1.0143.i, align 4
  %add.ptr60.i = getelementptr inbounds i8, ptr %add.ptr10.i, i64 4
  br label %cleanup64.i

if.else.i:                                        ; preds = %if.end50.i
  store i32 %cur_match.addr.0146.i, ptr %ptr0.0142.i, align 4
  br label %cleanup64.i

cleanup64.i:                                      ; preds = %if.else.i, %if.then59.i
  %ptr0.1.i = phi ptr [ %ptr0.0142.i, %if.then59.i ], [ %add.ptr10.i, %if.else.i ]
  %ptr1.1.i = phi ptr [ %add.ptr60.i, %if.then59.i ], [ %ptr1.0143.i, %if.else.i ]
  %len0.1.i = phi i32 [ %len0.0144.i, %if.then59.i ], [ %len.1.i, %if.else.i ]
  %len1.1.i = phi i32 [ %len.1.i, %if.then59.i ], [ %len1.0145.i, %if.else.i ]
  %cur_match.addr.1.in.i = phi ptr [ %add.ptr60.i, %if.then59.i ], [ %add.ptr10.i, %if.else.i ]
  %cur_match.addr.1.i = load i32, ptr %cur_match.addr.1.in.i, align 4
  %sub.i47 = sub i32 %add, %cur_match.addr.1.i
  %cmp.i = icmp ne i32 %dec148.i, 0
  %cmp5.not.i = icmp ult i32 %sub.i47, %13
  %or.cond.i = select i1 %cmp.i, i1 %cmp5.not.i, i1 false
  br i1 %or.cond.i, label %if.end.i, label %if.then.i

bt_find_func.exit:                                ; preds = %if.then.i, %if.then45.i
  %retval.2.ph.i = phi ptr [ %incdec.ptr.i, %if.then45.i ], [ %matches.addr.0.lcssa.i, %if.then.i ]
  %sub.ptr.lhs.cast = ptrtoint ptr %retval.2.ph.i to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %matches to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = lshr exact i64 %sub.ptr.sub, 3
  %conv14 = trunc i64 %sub.ptr.div to i32
  %22 = load i32, ptr %cyclic_pos, align 8
  %inc.i49 = add i32 %22, 1
  %23 = load i32, ptr %cyclic_size, align 4
  %cmp.i50 = icmp eq i32 %inc.i49, %23
  %spec.store.select.i = select i1 %cmp.i50, i32 0, i32 %inc.i49
  store i32 %spec.store.select.i, ptr %cyclic_pos, align 8
  %24 = load i32, ptr %0, align 8
  %inc2.i = add i32 %24, 1
  store i32 %inc2.i, ptr %0, align 8
  %25 = load i32, ptr %offset, align 4
  %add.i52 = add i32 %25, %inc2.i
  %cmp4.i = icmp eq i32 %add.i52, -1
  br i1 %cmp4.i, label %if.then5.i, label %cleanup19

if.then5.i:                                       ; preds = %bt_find_func.exit
  %sub.i.i = xor i32 %23, -1
  %hash_size_sum.i.i = getelementptr inbounds i8, ptr %mf, i64 108
  %26 = load i32, ptr %hash_size_sum.i.i, align 4
  %sons_count.i.i = getelementptr inbounds i8, ptr %mf, i64 112
  %27 = load i32, ptr %sons_count.i.i, align 8
  %add.i.i = add i32 %27, %26
  %28 = load ptr, ptr %hash, align 8
  %cmp21.not.i.i = icmp eq i32 %add.i.i, 0
  br i1 %cmp21.not.i.i, label %normalize.exit.i, label %for.body.preheader.i.i

for.body.preheader.i.i:                           ; preds = %if.then5.i
  %wide.trip.count.i.i = zext i32 %add.i.i to i64
  %min.iters.check = icmp ult i32 %add.i.i, 16
  br i1 %min.iters.check, label %for.body.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body.preheader.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 4294967280
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %sub.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %29 = getelementptr inbounds i32, ptr %28, i64 %index
  %30 = getelementptr inbounds i8, ptr %29, i64 16
  %31 = getelementptr inbounds i8, ptr %29, i64 32
  %32 = getelementptr inbounds i8, ptr %29, i64 48
  %wide.load = load <4 x i32>, ptr %29, align 4
  %wide.load77 = load <4 x i32>, ptr %30, align 4
  %wide.load78 = load <4 x i32>, ptr %31, align 4
  %wide.load79 = load <4 x i32>, ptr %32, align 4
  %33 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load, <4 x i32> %broadcast.splat)
  %34 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load77, <4 x i32> %broadcast.splat)
  %35 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load78, <4 x i32> %broadcast.splat)
  %36 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load79, <4 x i32> %broadcast.splat)
  store <4 x i32> %33, ptr %29, align 4
  store <4 x i32> %34, ptr %30, align 4
  store <4 x i32> %35, ptr %31, align 4
  store <4 x i32> %36, ptr %32, align 4
  %index.next = add nuw i64 %index, 16
  %37 = icmp eq i64 %index.next, %n.vec
  br i1 %37, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %normalize.exit.loopexit.i, label %for.body.i.i.preheader

for.body.i.i.preheader:                           ; preds = %middle.block, %for.body.preheader.i.i
  %indvars.iv.i.i.ph = phi i64 [ 0, %for.body.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.preheader, %for.body.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %for.body.i.i ], [ %indvars.iv.i.i.ph, %for.body.i.i.preheader ]
  %arrayidx.i.i = getelementptr inbounds i32, ptr %28, i64 %indvars.iv.i.i
  %38 = load i32, ptr %arrayidx.i.i, align 4
  %storemerge.i.i = tail call i32 @llvm.usub.sat.i32(i32 %38, i32 %sub.i.i)
  store i32 %storemerge.i.i, ptr %arrayidx.i.i, align 4
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %normalize.exit.loopexit.i, label %for.body.i.i, !llvm.loop !20

normalize.exit.loopexit.i:                        ; preds = %for.body.i.i, %middle.block
  %.pre.i = load i32, ptr %offset, align 4
  br label %normalize.exit.i

normalize.exit.i:                                 ; preds = %normalize.exit.loopexit.i, %if.then5.i
  %39 = phi i32 [ %.pre.i, %normalize.exit.loopexit.i ], [ %25, %if.then5.i ]
  %sub8.i.i = sub i32 %39, %sub.i.i
  store i32 %sub8.i.i, ptr %offset, align 4
  br label %cleanup19

cleanup19:                                        ; preds = %normalize.exit.i, %bt_find_func.exit, %if.then4
  %retval.0 = phi i32 [ 0, %if.then4 ], [ %conv14, %bt_find_func.exit ], [ %conv14, %normalize.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @lzma_mf_bt2_skip(ptr nocapture noundef %mf, i32 noundef %amount) local_unnamed_addr #1 {
entry:
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
  br label %do.body

do.body:                                          ; preds = %cleanup, %entry
  %amount.addr.0 = phi i32 [ %amount, %entry ], [ %dec, %cleanup ]
  %mf.val = load i32, ptr %0, align 8
  %mf.val38 = load i32, ptr %1, align 4
  %sub.i = sub i32 %mf.val38, %mf.val
  %2 = load i32, ptr %nice_len, align 8
  %cmp.not = icmp ugt i32 %2, %sub.i
  br i1 %cmp.not, label %if.else, label %if.end5

if.else:                                          ; preds = %do.body
  %cmp2 = icmp ult i32 %sub.i, 2
  br i1 %cmp2, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %3 = load i32, ptr %action, align 8
  %cmp3 = icmp eq i32 %3, 1
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %lor.lhs.false, %if.else
  %inc.i = add i32 %mf.val, 1
  store i32 %inc.i, ptr %0, align 8
  %4 = load i32, ptr %pending.i, align 8
  %inc1.i = add i32 %4, 1
  store i32 %inc1.i, ptr %pending.i, align 8
  br label %cleanup

if.end5:                                          ; preds = %do.body, %lor.lhs.false
  %len_limit.0 = phi i32 [ %sub.i, %lor.lhs.false ], [ %2, %do.body ]
  %mf.val39 = load ptr, ptr %mf, align 8
  %idx.ext.i = zext i32 %mf.val to i64
  %add.ptr.i = getelementptr inbounds i8, ptr %mf.val39, i64 %idx.ext.i
  %5 = load i32, ptr %offset, align 4
  %add = add i32 %5, %mf.val
  %6 = load i16, ptr %add.ptr.i, align 1
  %7 = zext i16 %6 to i64
  %8 = load ptr, ptr %hash, align 8
  %arrayidx9 = getelementptr inbounds i32, ptr %8, i64 %7
  %9 = load i32, ptr %arrayidx9, align 4
  store i32 %add, ptr %arrayidx9, align 4
  %10 = load i32, ptr %depth, align 4
  %11 = load ptr, ptr %son, align 8
  %12 = load i32, ptr %cyclic_pos, align 8
  %13 = load i32, ptr %cyclic_size, align 4
  %shl.i = shl i32 %12, 1
  %idx.ext.i41 = zext i32 %shl.i to i64
  %add.ptr.i42 = getelementptr inbounds i32, ptr %11, i64 %idx.ext.i41
  %add.ptr1.i = getelementptr inbounds i8, ptr %add.ptr.i42, i64 4
  %sub111.i = sub i32 %add, %9
  %cmp113.i = icmp ne i32 %10, 0
  %cmp5.not114.i = icmp ult i32 %sub111.i, %13
  %or.cond115.i = and i1 %cmp113.i, %cmp5.not114.i
  br i1 %or.cond115.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %cleanup58.i, %if.end5
  %ptr1.0.lcssa.i = phi ptr [ %add.ptr.i42, %if.end5 ], [ %ptr1.1.i, %cleanup58.i ]
  %ptr0.0.lcssa.i = phi ptr [ %add.ptr1.i, %if.end5 ], [ %ptr0.1.i, %cleanup58.i ]
  store i32 0, ptr %ptr0.0.lcssa.i, align 4
  store i32 0, ptr %ptr1.0.lcssa.i, align 4
  br label %bt_skip_func.exit

if.end.i:                                         ; preds = %if.end5, %cleanup58.i
  %dec122.in.i = phi i32 [ %dec122.i, %cleanup58.i ], [ %10, %if.end5 ]
  %sub121.i = phi i32 [ %sub.i43, %cleanup58.i ], [ %sub111.i, %if.end5 ]
  %cur_match.addr.0120.i = phi i32 [ %cur_match.addr.1.i, %cleanup58.i ], [ %9, %if.end5 ]
  %ptr0.0119.i = phi ptr [ %ptr0.1.i, %cleanup58.i ], [ %add.ptr1.i, %if.end5 ]
  %len1.0118.i = phi i32 [ %len1.1.i, %cleanup58.i ], [ 0, %if.end5 ]
  %len0.0117.i = phi i32 [ %len0.1.i, %cleanup58.i ], [ 0, %if.end5 ]
  %ptr1.0116.i = phi ptr [ %ptr1.1.i, %cleanup58.i ], [ %add.ptr.i42, %if.end5 ]
  %dec122.i = add i32 %dec122.in.i, -1
  %sub6.i = sub i32 %12, %sub121.i
  %cmp7.i = icmp ugt i32 %sub121.i, %12
  %cond.i = select i1 %cmp7.i, i32 %13, i32 0
  %add.i = add i32 %sub6.i, %cond.i
  %shl8.i = shl i32 %add.i, 1
  %idx.ext9.i = zext i32 %shl8.i to i64
  %add.ptr10.i = getelementptr inbounds i32, ptr %11, i64 %idx.ext9.i
  %idx.ext11.i = zext i32 %sub121.i to i64
  %idx.neg.i = sub nsw i64 0, %idx.ext11.i
  %add.ptr12.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg.i
  %cond17.i = tail call i32 @llvm.umin.i32(i32 %len0.0117.i, i32 %len1.0118.i)
  %idxprom.i = zext i32 %cond17.i to i64
  %arrayidx.i = getelementptr inbounds i8, ptr %add.ptr12.i, i64 %idxprom.i
  %14 = load i8, ptr %arrayidx.i, align 1
  %arrayidx19.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom.i
  %15 = load i8, ptr %arrayidx19.i, align 1
  %cmp21.i = icmp eq i8 %14, %15
  br i1 %cmp21.i, label %while.cond24.i, label %if.end44.i

while.cond24.i:                                   ; preds = %if.end.i, %while.body27.i
  %len.0.i = phi i32 [ %inc.i44, %while.body27.i ], [ %cond17.i, %if.end.i ]
  %inc.i44 = add i32 %len.0.i, 1
  %cmp25.not.i = icmp eq i32 %inc.i44, %len_limit.0
  br i1 %cmp25.not.i, label %if.then40.i, label %while.body27.i

while.body27.i:                                   ; preds = %while.cond24.i
  %idxprom28.i = zext i32 %inc.i44 to i64
  %arrayidx29.i = getelementptr inbounds i8, ptr %add.ptr12.i, i64 %idxprom28.i
  %16 = load i8, ptr %arrayidx29.i, align 1
  %arrayidx32.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom28.i
  %17 = load i8, ptr %arrayidx32.i, align 1
  %cmp34.not.i = icmp eq i8 %16, %17
  br i1 %cmp34.not.i, label %while.cond24.i, label %if.end44.i

if.then40.i:                                      ; preds = %while.cond24.i
  %18 = load i32, ptr %add.ptr10.i, align 4
  store i32 %18, ptr %ptr1.0116.i, align 4
  %arrayidx42.i = getelementptr inbounds i8, ptr %add.ptr10.i, i64 4
  %19 = load i32, ptr %arrayidx42.i, align 4
  store i32 %19, ptr %ptr0.0119.i, align 4
  br label %bt_skip_func.exit

if.end44.i:                                       ; preds = %while.body27.i, %if.end.i
  %20 = phi i8 [ %15, %if.end.i ], [ %17, %while.body27.i ]
  %21 = phi i8 [ %14, %if.end.i ], [ %16, %while.body27.i ]
  %len.1.i = phi i32 [ %cond17.i, %if.end.i ], [ %inc.i44, %while.body27.i ]
  %cmp51.i = icmp ult i8 %21, %20
  br i1 %cmp51.i, label %if.then53.i, label %if.else.i

if.then53.i:                                      ; preds = %if.end44.i
  store i32 %cur_match.addr.0120.i, ptr %ptr1.0116.i, align 4
  %add.ptr54.i = getelementptr inbounds i8, ptr %add.ptr10.i, i64 4
  br label %cleanup58.i

if.else.i:                                        ; preds = %if.end44.i
  store i32 %cur_match.addr.0120.i, ptr %ptr0.0119.i, align 4
  br label %cleanup58.i

cleanup58.i:                                      ; preds = %if.else.i, %if.then53.i
  %ptr1.1.i = phi ptr [ %add.ptr54.i, %if.then53.i ], [ %ptr1.0116.i, %if.else.i ]
  %len0.1.i = phi i32 [ %len0.0117.i, %if.then53.i ], [ %len.1.i, %if.else.i ]
  %len1.1.i = phi i32 [ %len.1.i, %if.then53.i ], [ %len1.0118.i, %if.else.i ]
  %ptr0.1.i = phi ptr [ %ptr0.0119.i, %if.then53.i ], [ %add.ptr10.i, %if.else.i ]
  %cur_match.addr.1.in.i = phi ptr [ %add.ptr54.i, %if.then53.i ], [ %add.ptr10.i, %if.else.i ]
  %cur_match.addr.1.i = load i32, ptr %cur_match.addr.1.in.i, align 4
  %sub.i43 = sub i32 %add, %cur_match.addr.1.i
  %cmp.i = icmp ne i32 %dec122.i, 0
  %cmp5.not.i = icmp ult i32 %sub.i43, %13
  %or.cond.i = select i1 %cmp.i, i1 %cmp5.not.i, i1 false
  br i1 %or.cond.i, label %if.end.i, label %if.then.i

bt_skip_func.exit:                                ; preds = %if.then.i, %if.then40.i
  %22 = load i32, ptr %cyclic_pos, align 8
  %inc.i45 = add i32 %22, 1
  %23 = load i32, ptr %cyclic_size, align 4
  %cmp.i46 = icmp eq i32 %inc.i45, %23
  %spec.store.select.i = select i1 %cmp.i46, i32 0, i32 %inc.i45
  store i32 %spec.store.select.i, ptr %cyclic_pos, align 8
  %24 = load i32, ptr %0, align 8
  %inc2.i = add i32 %24, 1
  store i32 %inc2.i, ptr %0, align 8
  %25 = load i32, ptr %offset, align 4
  %add.i48 = add i32 %25, %inc2.i
  %cmp4.i = icmp eq i32 %add.i48, -1
  br i1 %cmp4.i, label %if.then5.i, label %cleanup

if.then5.i:                                       ; preds = %bt_skip_func.exit
  %sub.i.i = xor i32 %23, -1
  %26 = load i32, ptr %hash_size_sum.i.i, align 4
  %27 = load i32, ptr %sons_count.i.i, align 8
  %add.i.i = add i32 %27, %26
  %28 = load ptr, ptr %hash, align 8
  %cmp21.not.i.i = icmp eq i32 %add.i.i, 0
  br i1 %cmp21.not.i.i, label %normalize.exit.i, label %for.body.preheader.i.i

for.body.preheader.i.i:                           ; preds = %if.then5.i
  %wide.trip.count.i.i = zext i32 %add.i.i to i64
  %min.iters.check = icmp ult i32 %add.i.i, 16
  br i1 %min.iters.check, label %for.body.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body.preheader.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 4294967280
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %sub.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %29 = getelementptr inbounds i32, ptr %28, i64 %index
  %30 = getelementptr inbounds i8, ptr %29, i64 16
  %31 = getelementptr inbounds i8, ptr %29, i64 32
  %32 = getelementptr inbounds i8, ptr %29, i64 48
  %wide.load = load <4 x i32>, ptr %29, align 4
  %wide.load69 = load <4 x i32>, ptr %30, align 4
  %wide.load70 = load <4 x i32>, ptr %31, align 4
  %wide.load71 = load <4 x i32>, ptr %32, align 4
  %33 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load, <4 x i32> %broadcast.splat)
  %34 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load69, <4 x i32> %broadcast.splat)
  %35 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load70, <4 x i32> %broadcast.splat)
  %36 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load71, <4 x i32> %broadcast.splat)
  store <4 x i32> %33, ptr %29, align 4
  store <4 x i32> %34, ptr %30, align 4
  store <4 x i32> %35, ptr %31, align 4
  store <4 x i32> %36, ptr %32, align 4
  %index.next = add nuw i64 %index, 16
  %37 = icmp eq i64 %index.next, %n.vec
  br i1 %37, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %normalize.exit.loopexit.i, label %for.body.i.i.preheader

for.body.i.i.preheader:                           ; preds = %middle.block, %for.body.preheader.i.i
  %indvars.iv.i.i.ph = phi i64 [ 0, %for.body.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.preheader, %for.body.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %for.body.i.i ], [ %indvars.iv.i.i.ph, %for.body.i.i.preheader ]
  %arrayidx.i.i = getelementptr inbounds i32, ptr %28, i64 %indvars.iv.i.i
  %38 = load i32, ptr %arrayidx.i.i, align 4
  %storemerge.i.i = tail call i32 @llvm.usub.sat.i32(i32 %38, i32 %sub.i.i)
  store i32 %storemerge.i.i, ptr %arrayidx.i.i, align 4
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %normalize.exit.loopexit.i, label %for.body.i.i, !llvm.loop !22

normalize.exit.loopexit.i:                        ; preds = %for.body.i.i, %middle.block
  %.pre.i = load i32, ptr %offset, align 4
  br label %normalize.exit.i

normalize.exit.i:                                 ; preds = %normalize.exit.loopexit.i, %if.then5.i
  %39 = phi i32 [ %.pre.i, %normalize.exit.loopexit.i ], [ %25, %if.then5.i ]
  %sub8.i.i = sub i32 %39, %sub.i.i
  store i32 %sub8.i.i, ptr %offset, align 4
  br label %cleanup

cleanup:                                          ; preds = %normalize.exit.i, %bt_skip_func.exit, %if.then4
  %dec = add i32 %amount.addr.0, -1
  %cmp15.not = icmp eq i32 %dec, 0
  br i1 %cmp15.not, label %do.end17, label %do.body

do.end17:                                         ; preds = %cleanup
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @lzma_mf_bt3_find(ptr nocapture noundef %mf, ptr noundef %matches) local_unnamed_addr #1 {
entry:
  %0 = getelementptr i8, ptr %mf, i64 24
  %mf.val = load i32, ptr %0, align 8
  %1 = getelementptr i8, ptr %mf, i64 36
  %mf.val134 = load i32, ptr %1, align 4
  %sub.i = sub i32 %mf.val134, %mf.val
  %nice_len = getelementptr inbounds i8, ptr %mf, i64 96
  %2 = load i32, ptr %nice_len, align 8
  %cmp.not = icmp ugt i32 %2, %sub.i
  br i1 %cmp.not, label %if.else, label %if.end5

if.else:                                          ; preds = %entry
  %cmp2 = icmp ult i32 %sub.i, 3
  br i1 %cmp2, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %action = getelementptr inbounds i8, ptr %mf, i64 104
  %3 = load i32, ptr %action, align 8
  %cmp3 = icmp eq i32 %3, 1
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %lor.lhs.false, %if.else
  %inc.i = add i32 %mf.val, 1
  store i32 %inc.i, ptr %0, align 8
  %pending.i = getelementptr inbounds i8, ptr %mf, i64 40
  %4 = load i32, ptr %pending.i, align 8
  %inc1.i = add i32 %4, 1
  store i32 %inc1.i, ptr %pending.i, align 8
  br label %cleanup76

if.end5:                                          ; preds = %entry, %lor.lhs.false
  %len_limit.0 = phi i32 [ %sub.i, %lor.lhs.false ], [ %2, %entry ]
  %mf.val135 = load ptr, ptr %mf, align 8
  %idx.ext.i = zext i32 %mf.val to i64
  %add.ptr.i = getelementptr inbounds i8, ptr %mf.val135, i64 %idx.ext.i
  %offset = getelementptr inbounds i8, ptr %mf, i64 20
  %5 = load i32, ptr %offset, align 4
  %add = add i32 %5, %mf.val
  %6 = load i8, ptr %add.ptr.i, align 1
  %idxprom = zext i8 %6 to i64
  %arrayidx7 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %idxprom
  %7 = load i32, ptr %arrayidx7, align 4
  %arrayidx8 = getelementptr inbounds i8, ptr %add.ptr.i, i64 1
  %8 = load i8, ptr %arrayidx8, align 1
  %conv = zext i8 %8 to i32
  %xor = xor i32 %7, %conv
  %and = and i32 %xor, 1023
  %arrayidx9 = getelementptr inbounds i8, ptr %add.ptr.i, i64 2
  %9 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %9 to i32
  %shl = shl nuw nsw i32 %conv10, 8
  %xor11 = xor i32 %shl, %xor
  %hash_mask = getelementptr inbounds i8, ptr %mf, i64 88
  %10 = load i32, ptr %hash_mask, align 8
  %and12 = and i32 %xor11, %10
  %hash = getelementptr inbounds i8, ptr %mf, i64 64
  %11 = load ptr, ptr %hash, align 8
  %idxprom13 = zext nneg i32 %and to i64
  %arrayidx14 = getelementptr inbounds i32, ptr %11, i64 %idxprom13
  %12 = load i32, ptr %arrayidx14, align 4
  %sub = sub i32 %add, %12
  %add16 = add i32 %and12, 1024
  %idxprom17 = zext i32 %add16 to i64
  %arrayidx18 = getelementptr inbounds i32, ptr %11, i64 %idxprom17
  %13 = load i32, ptr %arrayidx18, align 4
  store i32 %add, ptr %arrayidx14, align 4
  %14 = load ptr, ptr %hash, align 8
  %arrayidx25 = getelementptr inbounds i32, ptr %14, i64 %idxprom17
  store i32 %add, ptr %arrayidx25, align 4
  %cyclic_size = getelementptr inbounds i8, ptr %mf, i64 84
  %15 = load i32, ptr %cyclic_size, align 4
  %cmp26 = icmp ult i32 %sub, %15
  br i1 %cmp26, label %land.lhs.true, label %do.body57

land.lhs.true:                                    ; preds = %if.end5
  %idx.ext = zext i32 %sub to i64
  %idx.neg = sub nsw i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg
  %16 = load i8, ptr %add.ptr, align 1
  %17 = load i8, ptr %add.ptr.i, align 1
  %cmp30 = icmp eq i8 %16, %17
  br i1 %cmp30, label %for.cond.preheader, label %do.body57

for.cond.preheader:                               ; preds = %land.lhs.true
  %cmp33.not233 = icmp eq i32 %len_limit.0, 2
  br i1 %cmp33.not233, label %do.body, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %len_best.0234 = phi i32 [ %inc, %for.inc ], [ 2, %for.cond.preheader ]
  %idx.ext35 = zext i32 %len_best.0234 to i64
  %add.ptr36 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.ext35
  %add.ptr39 = getelementptr inbounds i8, ptr %add.ptr36, i64 %idx.neg
  %18 = load i8, ptr %add.ptr39, align 1
  %19 = load i8, ptr %add.ptr36, align 1
  %cmp44.not = icmp eq i8 %18, %19
  br i1 %cmp44.not, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add i32 %len_best.0234, 1
  %cmp33.not = icmp eq i32 %inc, %len_limit.0
  br i1 %cmp33.not, label %do.body, label %for.body

for.end:                                          ; preds = %for.body
  store i32 %len_best.0234, ptr %matches, align 4
  %sub49 = add i32 %sub, -1
  %dist = getelementptr inbounds i8, ptr %matches, i64 4
  store i32 %sub49, ptr %dist, align 4
  %.pre = load i32, ptr %cyclic_size, align 4
  br label %do.body57

do.body:                                          ; preds = %for.inc, %for.cond.preheader
  store i32 %len_limit.0, ptr %matches, align 4
  %sub49219 = add i32 %sub, -1
  %dist220 = getelementptr inbounds i8, ptr %matches, i64 4
  store i32 %sub49219, ptr %dist220, align 4
  %depth = getelementptr inbounds i8, ptr %mf, i64 92
  %20 = load i32, ptr %depth, align 4
  %son = getelementptr inbounds i8, ptr %mf, i64 72
  %21 = load ptr, ptr %son, align 8
  %cyclic_pos = getelementptr inbounds i8, ptr %mf, i64 80
  %22 = load i32, ptr %cyclic_pos, align 8
  %23 = load i32, ptr %cyclic_size, align 4
  %shl.i = shl i32 %22, 1
  %idx.ext.i137 = zext i32 %shl.i to i64
  %add.ptr.i138 = getelementptr inbounds i32, ptr %21, i64 %idx.ext.i137
  %add.ptr1.i = getelementptr inbounds i8, ptr %add.ptr.i138, i64 4
  %sub111.i = sub i32 %add, %13
  %cmp113.i = icmp ne i32 %20, 0
  %cmp5.not114.i = icmp ult i32 %sub111.i, %23
  %or.cond115.i = and i1 %cmp113.i, %cmp5.not114.i
  br i1 %or.cond115.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %cleanup58.i, %do.body
  %ptr1.0.lcssa.i = phi ptr [ %add.ptr.i138, %do.body ], [ %ptr1.1.i, %cleanup58.i ]
  %ptr0.0.lcssa.i = phi ptr [ %add.ptr1.i, %do.body ], [ %ptr0.1.i, %cleanup58.i ]
  store i32 0, ptr %ptr0.0.lcssa.i, align 4
  store i32 0, ptr %ptr1.0.lcssa.i, align 4
  br label %bt_skip_func.exit

if.end.i:                                         ; preds = %do.body, %cleanup58.i
  %dec122.in.i = phi i32 [ %dec122.i, %cleanup58.i ], [ %20, %do.body ]
  %sub121.i = phi i32 [ %sub.i139, %cleanup58.i ], [ %sub111.i, %do.body ]
  %cur_match.addr.0120.i = phi i32 [ %cur_match.addr.1.i, %cleanup58.i ], [ %13, %do.body ]
  %ptr0.0119.i = phi ptr [ %ptr0.1.i, %cleanup58.i ], [ %add.ptr1.i, %do.body ]
  %len1.0118.i = phi i32 [ %len1.1.i, %cleanup58.i ], [ 0, %do.body ]
  %len0.0117.i = phi i32 [ %len0.1.i, %cleanup58.i ], [ 0, %do.body ]
  %ptr1.0116.i = phi ptr [ %ptr1.1.i, %cleanup58.i ], [ %add.ptr.i138, %do.body ]
  %dec122.i = add i32 %dec122.in.i, -1
  %sub6.i = sub i32 %22, %sub121.i
  %cmp7.i = icmp ugt i32 %sub121.i, %22
  %cond.i = select i1 %cmp7.i, i32 %23, i32 0
  %add.i = add i32 %sub6.i, %cond.i
  %shl8.i = shl i32 %add.i, 1
  %idx.ext9.i = zext i32 %shl8.i to i64
  %add.ptr10.i = getelementptr inbounds i32, ptr %21, i64 %idx.ext9.i
  %idx.ext11.i = zext i32 %sub121.i to i64
  %idx.neg.i = sub nsw i64 0, %idx.ext11.i
  %add.ptr12.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg.i
  %cond17.i = tail call i32 @llvm.umin.i32(i32 %len0.0117.i, i32 %len1.0118.i)
  %idxprom.i = zext i32 %cond17.i to i64
  %arrayidx.i = getelementptr inbounds i8, ptr %add.ptr12.i, i64 %idxprom.i
  %24 = load i8, ptr %arrayidx.i, align 1
  %arrayidx19.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom.i
  %25 = load i8, ptr %arrayidx19.i, align 1
  %cmp21.i = icmp eq i8 %24, %25
  br i1 %cmp21.i, label %while.cond24.i, label %if.end44.i

while.cond24.i:                                   ; preds = %if.end.i, %while.body27.i
  %len.0.i = phi i32 [ %inc.i140, %while.body27.i ], [ %cond17.i, %if.end.i ]
  %inc.i140 = add i32 %len.0.i, 1
  %cmp25.not.i = icmp eq i32 %inc.i140, %len_limit.0
  br i1 %cmp25.not.i, label %if.then40.i, label %while.body27.i

while.body27.i:                                   ; preds = %while.cond24.i
  %idxprom28.i = zext i32 %inc.i140 to i64
  %arrayidx29.i = getelementptr inbounds i8, ptr %add.ptr12.i, i64 %idxprom28.i
  %26 = load i8, ptr %arrayidx29.i, align 1
  %arrayidx32.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom28.i
  %27 = load i8, ptr %arrayidx32.i, align 1
  %cmp34.not.i = icmp eq i8 %26, %27
  br i1 %cmp34.not.i, label %while.cond24.i, label %if.end44.i

if.then40.i:                                      ; preds = %while.cond24.i
  %28 = load i32, ptr %add.ptr10.i, align 4
  store i32 %28, ptr %ptr1.0116.i, align 4
  %arrayidx42.i = getelementptr inbounds i8, ptr %add.ptr10.i, i64 4
  %29 = load i32, ptr %arrayidx42.i, align 4
  store i32 %29, ptr %ptr0.0119.i, align 4
  br label %bt_skip_func.exit

if.end44.i:                                       ; preds = %while.body27.i, %if.end.i
  %30 = phi i8 [ %25, %if.end.i ], [ %27, %while.body27.i ]
  %31 = phi i8 [ %24, %if.end.i ], [ %26, %while.body27.i ]
  %len.1.i = phi i32 [ %cond17.i, %if.end.i ], [ %inc.i140, %while.body27.i ]
  %cmp51.i = icmp ult i8 %31, %30
  br i1 %cmp51.i, label %if.then53.i, label %if.else.i

if.then53.i:                                      ; preds = %if.end44.i
  store i32 %cur_match.addr.0120.i, ptr %ptr1.0116.i, align 4
  %add.ptr54.i = getelementptr inbounds i8, ptr %add.ptr10.i, i64 4
  br label %cleanup58.i

if.else.i:                                        ; preds = %if.end44.i
  store i32 %cur_match.addr.0120.i, ptr %ptr0.0119.i, align 4
  br label %cleanup58.i

cleanup58.i:                                      ; preds = %if.else.i, %if.then53.i
  %ptr1.1.i = phi ptr [ %add.ptr54.i, %if.then53.i ], [ %ptr1.0116.i, %if.else.i ]
  %len0.1.i = phi i32 [ %len0.0117.i, %if.then53.i ], [ %len.1.i, %if.else.i ]
  %len1.1.i = phi i32 [ %len.1.i, %if.then53.i ], [ %len1.0118.i, %if.else.i ]
  %ptr0.1.i = phi ptr [ %ptr0.0119.i, %if.then53.i ], [ %add.ptr10.i, %if.else.i ]
  %cur_match.addr.1.in.i = phi ptr [ %add.ptr54.i, %if.then53.i ], [ %add.ptr10.i, %if.else.i ]
  %cur_match.addr.1.i = load i32, ptr %cur_match.addr.1.in.i, align 4
  %sub.i139 = sub i32 %add, %cur_match.addr.1.i
  %cmp.i = icmp ne i32 %dec122.i, 0
  %cmp5.not.i = icmp ult i32 %sub.i139, %23
  %or.cond.i = select i1 %cmp.i, i1 %cmp5.not.i, i1 false
  br i1 %or.cond.i, label %if.end.i, label %if.then.i

bt_skip_func.exit:                                ; preds = %if.then.i, %if.then40.i
  %32 = load i32, ptr %cyclic_pos, align 8
  %inc.i141 = add i32 %32, 1
  %33 = load i32, ptr %cyclic_size, align 4
  %cmp.i142 = icmp eq i32 %inc.i141, %33
  %spec.store.select.i = select i1 %cmp.i142, i32 0, i32 %inc.i141
  store i32 %spec.store.select.i, ptr %cyclic_pos, align 8
  %34 = load i32, ptr %0, align 8
  %inc2.i = add i32 %34, 1
  store i32 %inc2.i, ptr %0, align 8
  %35 = load i32, ptr %offset, align 4
  %add.i144 = add i32 %35, %inc2.i
  %cmp4.i = icmp eq i32 %add.i144, -1
  br i1 %cmp4.i, label %if.then5.i, label %cleanup76

if.then5.i:                                       ; preds = %bt_skip_func.exit
  %sub.i.i = xor i32 %33, -1
  %hash_size_sum.i.i = getelementptr inbounds i8, ptr %mf, i64 108
  %36 = load i32, ptr %hash_size_sum.i.i, align 4
  %sons_count.i.i = getelementptr inbounds i8, ptr %mf, i64 112
  %37 = load i32, ptr %sons_count.i.i, align 8
  %add.i.i = add i32 %37, %36
  %38 = load ptr, ptr %hash, align 8
  %cmp21.not.i.i = icmp eq i32 %add.i.i, 0
  br i1 %cmp21.not.i.i, label %normalize.exit.i, label %for.body.preheader.i.i

for.body.preheader.i.i:                           ; preds = %if.then5.i
  %wide.trip.count.i.i = zext i32 %add.i.i to i64
  %min.iters.check277 = icmp ult i32 %add.i.i, 16
  br i1 %min.iters.check277, label %for.body.i.i.preheader, label %vector.ph278

vector.ph278:                                     ; preds = %for.body.preheader.i.i
  %n.vec280 = and i64 %wide.trip.count.i.i, 4294967280
  %broadcast.splatinsert288 = insertelement <4 x i32> poison, i32 %sub.i.i, i64 0
  %broadcast.splat289 = shufflevector <4 x i32> %broadcast.splatinsert288, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body282

vector.body282:                                   ; preds = %vector.body282, %vector.ph278
  %index283 = phi i64 [ 0, %vector.ph278 ], [ %index.next290, %vector.body282 ]
  %39 = getelementptr inbounds i32, ptr %38, i64 %index283
  %40 = getelementptr inbounds i8, ptr %39, i64 16
  %41 = getelementptr inbounds i8, ptr %39, i64 32
  %42 = getelementptr inbounds i8, ptr %39, i64 48
  %wide.load284 = load <4 x i32>, ptr %39, align 4
  %wide.load285 = load <4 x i32>, ptr %40, align 4
  %wide.load286 = load <4 x i32>, ptr %41, align 4
  %wide.load287 = load <4 x i32>, ptr %42, align 4
  %43 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load284, <4 x i32> %broadcast.splat289)
  %44 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load285, <4 x i32> %broadcast.splat289)
  %45 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load286, <4 x i32> %broadcast.splat289)
  %46 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load287, <4 x i32> %broadcast.splat289)
  store <4 x i32> %43, ptr %39, align 4
  store <4 x i32> %44, ptr %40, align 4
  store <4 x i32> %45, ptr %41, align 4
  store <4 x i32> %46, ptr %42, align 4
  %index.next290 = add nuw i64 %index283, 16
  %47 = icmp eq i64 %index.next290, %n.vec280
  br i1 %47, label %middle.block275, label %vector.body282, !llvm.loop !23

middle.block275:                                  ; preds = %vector.body282
  %cmp.n291 = icmp eq i64 %n.vec280, %wide.trip.count.i.i
  br i1 %cmp.n291, label %normalize.exit.loopexit.i, label %for.body.i.i.preheader

for.body.i.i.preheader:                           ; preds = %middle.block275, %for.body.preheader.i.i
  %indvars.iv.i.i.ph = phi i64 [ 0, %for.body.preheader.i.i ], [ %n.vec280, %middle.block275 ]
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.preheader, %for.body.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %for.body.i.i ], [ %indvars.iv.i.i.ph, %for.body.i.i.preheader ]
  %arrayidx.i.i = getelementptr inbounds i32, ptr %38, i64 %indvars.iv.i.i
  %48 = load i32, ptr %arrayidx.i.i, align 4
  %storemerge.i.i = tail call i32 @llvm.usub.sat.i32(i32 %48, i32 %sub.i.i)
  store i32 %storemerge.i.i, ptr %arrayidx.i.i, align 4
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %normalize.exit.loopexit.i, label %for.body.i.i, !llvm.loop !24

normalize.exit.loopexit.i:                        ; preds = %for.body.i.i, %middle.block275
  %.pre.i = load i32, ptr %offset, align 4
  br label %normalize.exit.i

normalize.exit.i:                                 ; preds = %normalize.exit.loopexit.i, %if.then5.i
  %49 = phi i32 [ %.pre.i, %normalize.exit.loopexit.i ], [ %35, %if.then5.i ]
  %sub8.i.i = sub i32 %49, %sub.i.i
  store i32 %sub8.i.i, ptr %offset, align 4
  br label %cleanup76

do.body57:                                        ; preds = %for.end, %if.end5, %land.lhs.true
  %50 = phi i32 [ %.pre, %for.end ], [ %15, %land.lhs.true ], [ %15, %if.end5 ]
  %matches_count.0 = phi i64 [ 1, %for.end ], [ 0, %land.lhs.true ], [ 0, %if.end5 ]
  %len_best.1 = phi i32 [ %len_best.0234, %for.end ], [ 2, %land.lhs.true ], [ 2, %if.end5 ]
  %depth58 = getelementptr inbounds i8, ptr %mf, i64 92
  %51 = load i32, ptr %depth58, align 4
  %son59 = getelementptr inbounds i8, ptr %mf, i64 72
  %52 = load ptr, ptr %son59, align 8
  %cyclic_pos60 = getelementptr inbounds i8, ptr %mf, i64 80
  %53 = load i32, ptr %cyclic_pos60, align 8
  %add.ptr63 = getelementptr inbounds %struct.lzma_match, ptr %matches, i64 %matches_count.0
  %shl.i145 = shl i32 %53, 1
  %idx.ext.i146 = zext i32 %shl.i145 to i64
  %add.ptr.i147 = getelementptr inbounds i32, ptr %52, i64 %idx.ext.i146
  %add.ptr1.i148 = getelementptr inbounds i8, ptr %add.ptr.i147, i64 4
  %sub135.i = sub i32 %add, %13
  %cmp137.i = icmp ne i32 %51, 0
  %cmp5.not138.i = icmp ult i32 %sub135.i, %50
  %or.cond139.i = and i1 %cmp137.i, %cmp5.not138.i
  br i1 %or.cond139.i, label %if.end.i152.preheader, label %if.then.i149

if.end.i152.preheader:                            ; preds = %do.body57
  %.pre247 = zext i32 %len_limit.0 to i64
  br label %if.end.i152

if.then.i149:                                     ; preds = %cleanup64.i, %do.body57
  %matches.addr.0.lcssa.i = phi ptr [ %add.ptr63, %do.body57 ], [ %matches.addr.1.i, %cleanup64.i ]
  %ptr0.0.lcssa.i150 = phi ptr [ %add.ptr1.i148, %do.body57 ], [ %ptr0.1.i170, %cleanup64.i ]
  %ptr1.0.lcssa.i151 = phi ptr [ %add.ptr.i147, %do.body57 ], [ %ptr1.1.i171, %cleanup64.i ]
  store i32 0, ptr %ptr0.0.lcssa.i150, align 4
  store i32 0, ptr %ptr1.0.lcssa.i151, align 4
  br label %bt_find_func.exit

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
  %dec148.i = add i32 %dec148.in.i, -1
  %sub6.i153 = sub i32 %53, %sub147.i
  %cmp7.i154 = icmp ugt i32 %sub147.i, %53
  %cond.i155 = select i1 %cmp7.i154, i32 %50, i32 0
  %add.i156 = add i32 %sub6.i153, %cond.i155
  %shl8.i157 = shl i32 %add.i156, 1
  %idx.ext9.i158 = zext i32 %shl8.i157 to i64
  %add.ptr10.i159 = getelementptr inbounds i32, ptr %52, i64 %idx.ext9.i158
  %idx.ext11.i160 = zext i32 %sub147.i to i64
  %idx.neg.i161 = sub nsw i64 0, %idx.ext11.i160
  %add.ptr12.i162 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg.i161
  %cond17.i163 = tail call i32 @llvm.umin.i32(i32 %len0.0144.i, i32 %len1.0145.i)
  %idxprom.i164 = zext i32 %cond17.i163 to i64
  %arrayidx.i165 = getelementptr inbounds i8, ptr %add.ptr12.i162, i64 %idxprom.i164
  %54 = load i8, ptr %arrayidx.i165, align 1
  %arrayidx19.i166 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom.i164
  %55 = load i8, ptr %arrayidx19.i166, align 1
  %cmp21.i167 = icmp eq i8 %54, %55
  br i1 %cmp21.i167, label %while.cond24.i180, label %if.end50.i

while.cond24.i180:                                ; preds = %if.end.i152, %while.body27.i184
  %len.0.i181 = phi i32 [ %inc.i182, %while.body27.i184 ], [ %cond17.i163, %if.end.i152 ]
  %inc.i182 = add i32 %len.0.i181, 1
  %cmp25.not.i183 = icmp eq i32 %inc.i182, %len_limit.0
  br i1 %cmp25.not.i183, label %while.end.i, label %while.body27.i184

while.body27.i184:                                ; preds = %while.cond24.i180
  %idxprom28.i185 = zext i32 %inc.i182 to i64
  %arrayidx29.i186 = getelementptr inbounds i8, ptr %add.ptr12.i162, i64 %idxprom28.i185
  %56 = load i8, ptr %arrayidx29.i186, align 1
  %arrayidx32.i187 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom28.i185
  %57 = load i8, ptr %arrayidx32.i187, align 1
  %cmp34.not.i188 = icmp eq i8 %56, %57
  br i1 %cmp34.not.i188, label %while.cond24.i180, label %while.end.thread.i

while.end.i:                                      ; preds = %while.cond24.i180
  %cmp38.i = icmp ult i32 %len_best.addr.0141.i, %len_limit.0
  br i1 %cmp38.i, label %if.then45.i, label %if.end50.i

while.end.thread.i:                               ; preds = %while.body27.i184
  %cmp38115.i = icmp ult i32 %len_best.addr.0141.i, %inc.i182
  br i1 %cmp38115.i, label %if.then40.thread.i, label %if.end50.i

if.then40.thread.i:                               ; preds = %while.end.thread.i
  store i32 %inc.i182, ptr %matches.addr.0140.i, align 4
  %sub42116.i = add i32 %sub147.i, -1
  %dist117.i = getelementptr inbounds i8, ptr %matches.addr.0140.i, i64 4
  store i32 %sub42116.i, ptr %dist117.i, align 4
  %incdec.ptr118.i = getelementptr inbounds i8, ptr %matches.addr.0140.i, i64 8
  br label %if.end50.i

if.then45.i:                                      ; preds = %while.end.i
  store i32 %len_limit.0, ptr %matches.addr.0140.i, align 4
  %sub42.i = add i32 %sub147.i, -1
  %dist.i = getelementptr inbounds i8, ptr %matches.addr.0140.i, i64 4
  store i32 %sub42.i, ptr %dist.i, align 4
  %incdec.ptr.i = getelementptr inbounds i8, ptr %matches.addr.0140.i, i64 8
  %58 = load i32, ptr %add.ptr10.i159, align 4
  store i32 %58, ptr %ptr1.0143.i, align 4
  %arrayidx47.i = getelementptr inbounds i8, ptr %add.ptr10.i159, i64 4
  %59 = load i32, ptr %arrayidx47.i, align 4
  store i32 %59, ptr %ptr0.0142.i, align 4
  br label %bt_find_func.exit

if.end50.i:                                       ; preds = %while.end.i, %if.then40.thread.i, %while.end.thread.i, %if.end.i152
  %idxprom51.i.pre-phi = phi i64 [ %idxprom28.i185, %if.then40.thread.i ], [ %idxprom28.i185, %while.end.thread.i ], [ %idxprom.i164, %if.end.i152 ], [ %.pre247, %while.end.i ]
  %matches.addr.1.i = phi ptr [ %incdec.ptr118.i, %if.then40.thread.i ], [ %matches.addr.0140.i, %while.end.thread.i ], [ %matches.addr.0140.i, %if.end.i152 ], [ %matches.addr.0140.i, %while.end.i ]
  %len_best.addr.1.i = phi i32 [ %inc.i182, %if.then40.thread.i ], [ %len_best.addr.0141.i, %while.end.thread.i ], [ %len_best.addr.0141.i, %if.end.i152 ], [ %len_best.addr.0141.i, %while.end.i ]
  %len.1.i168 = phi i32 [ %inc.i182, %if.then40.thread.i ], [ %inc.i182, %while.end.thread.i ], [ %cond17.i163, %if.end.i152 ], [ %len_limit.0, %while.end.i ]
  %arrayidx52.i = getelementptr inbounds i8, ptr %add.ptr12.i162, i64 %idxprom51.i.pre-phi
  %60 = load i8, ptr %arrayidx52.i, align 1
  %arrayidx55.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom51.i.pre-phi
  %61 = load i8, ptr %arrayidx55.i, align 1
  %cmp57.i = icmp ult i8 %60, %61
  br i1 %cmp57.i, label %if.then59.i, label %if.else.i169

if.then59.i:                                      ; preds = %if.end50.i
  store i32 %cur_match.addr.0146.i, ptr %ptr1.0143.i, align 4
  %add.ptr60.i = getelementptr inbounds i8, ptr %add.ptr10.i159, i64 4
  br label %cleanup64.i

if.else.i169:                                     ; preds = %if.end50.i
  store i32 %cur_match.addr.0146.i, ptr %ptr0.0142.i, align 4
  br label %cleanup64.i

cleanup64.i:                                      ; preds = %if.else.i169, %if.then59.i
  %ptr0.1.i170 = phi ptr [ %ptr0.0142.i, %if.then59.i ], [ %add.ptr10.i159, %if.else.i169 ]
  %ptr1.1.i171 = phi ptr [ %add.ptr60.i, %if.then59.i ], [ %ptr1.0143.i, %if.else.i169 ]
  %len0.1.i172 = phi i32 [ %len0.0144.i, %if.then59.i ], [ %len.1.i168, %if.else.i169 ]
  %len1.1.i173 = phi i32 [ %len.1.i168, %if.then59.i ], [ %len1.0145.i, %if.else.i169 ]
  %cur_match.addr.1.in.i174 = phi ptr [ %add.ptr60.i, %if.then59.i ], [ %add.ptr10.i159, %if.else.i169 ]
  %cur_match.addr.1.i175 = load i32, ptr %cur_match.addr.1.in.i174, align 4
  %sub.i176 = sub i32 %add, %cur_match.addr.1.i175
  %cmp.i177 = icmp ne i32 %dec148.i, 0
  %cmp5.not.i178 = icmp ult i32 %sub.i176, %50
  %or.cond.i179 = select i1 %cmp.i177, i1 %cmp5.not.i178, i1 false
  br i1 %or.cond.i179, label %if.end.i152, label %if.then.i149

bt_find_func.exit:                                ; preds = %if.then.i149, %if.then45.i
  %retval.2.ph.i = phi ptr [ %incdec.ptr.i, %if.then45.i ], [ %matches.addr.0.lcssa.i, %if.then.i149 ]
  %sub.ptr.lhs.cast = ptrtoint ptr %retval.2.ph.i to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %matches to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = lshr exact i64 %sub.ptr.sub, 3
  %conv65 = trunc i64 %sub.ptr.div to i32
  %62 = load i32, ptr %cyclic_pos60, align 8
  %inc.i190 = add i32 %62, 1
  %63 = load i32, ptr %cyclic_size, align 4
  %cmp.i192 = icmp eq i32 %inc.i190, %63
  %spec.store.select.i193 = select i1 %cmp.i192, i32 0, i32 %inc.i190
  store i32 %spec.store.select.i193, ptr %cyclic_pos60, align 8
  %64 = load i32, ptr %0, align 8
  %inc2.i195 = add i32 %64, 1
  store i32 %inc2.i195, ptr %0, align 8
  %65 = load i32, ptr %offset, align 4
  %add.i197 = add i32 %65, %inc2.i195
  %cmp4.i198 = icmp eq i32 %add.i197, -1
  br i1 %cmp4.i198, label %if.then5.i199, label %cleanup76

if.then5.i199:                                    ; preds = %bt_find_func.exit
  %sub.i.i200 = xor i32 %63, -1
  %hash_size_sum.i.i201 = getelementptr inbounds i8, ptr %mf, i64 108
  %66 = load i32, ptr %hash_size_sum.i.i201, align 4
  %sons_count.i.i202 = getelementptr inbounds i8, ptr %mf, i64 112
  %67 = load i32, ptr %sons_count.i.i202, align 8
  %add.i.i203 = add i32 %67, %66
  %68 = load ptr, ptr %hash, align 8
  %cmp21.not.i.i205 = icmp eq i32 %add.i.i203, 0
  br i1 %cmp21.not.i.i205, label %normalize.exit.i216, label %for.body.preheader.i.i206

for.body.preheader.i.i206:                        ; preds = %if.then5.i199
  %wide.trip.count.i.i207 = zext i32 %add.i.i203 to i64
  %min.iters.check = icmp ult i32 %add.i.i203, 16
  br i1 %min.iters.check, label %for.body.i.i208.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body.preheader.i.i206
  %n.vec = and i64 %wide.trip.count.i.i207, 4294967280
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %sub.i.i200, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %69 = getelementptr inbounds i32, ptr %68, i64 %index
  %70 = getelementptr inbounds i8, ptr %69, i64 16
  %71 = getelementptr inbounds i8, ptr %69, i64 32
  %72 = getelementptr inbounds i8, ptr %69, i64 48
  %wide.load = load <4 x i32>, ptr %69, align 4
  %wide.load272 = load <4 x i32>, ptr %70, align 4
  %wide.load273 = load <4 x i32>, ptr %71, align 4
  %wide.load274 = load <4 x i32>, ptr %72, align 4
  %73 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load, <4 x i32> %broadcast.splat)
  %74 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load272, <4 x i32> %broadcast.splat)
  %75 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load273, <4 x i32> %broadcast.splat)
  %76 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load274, <4 x i32> %broadcast.splat)
  store <4 x i32> %73, ptr %69, align 4
  store <4 x i32> %74, ptr %70, align 4
  store <4 x i32> %75, ptr %71, align 4
  store <4 x i32> %76, ptr %72, align 4
  %index.next = add nuw i64 %index, 16
  %77 = icmp eq i64 %index.next, %n.vec
  br i1 %77, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i207
  br i1 %cmp.n, label %normalize.exit.loopexit.i214, label %for.body.i.i208.preheader

for.body.i.i208.preheader:                        ; preds = %middle.block, %for.body.preheader.i.i206
  %indvars.iv.i.i209.ph = phi i64 [ 0, %for.body.preheader.i.i206 ], [ %n.vec, %middle.block ]
  br label %for.body.i.i208

for.body.i.i208:                                  ; preds = %for.body.i.i208.preheader, %for.body.i.i208
  %indvars.iv.i.i209 = phi i64 [ %indvars.iv.next.i.i212, %for.body.i.i208 ], [ %indvars.iv.i.i209.ph, %for.body.i.i208.preheader ]
  %arrayidx.i.i210 = getelementptr inbounds i32, ptr %68, i64 %indvars.iv.i.i209
  %78 = load i32, ptr %arrayidx.i.i210, align 4
  %storemerge.i.i211 = tail call i32 @llvm.usub.sat.i32(i32 %78, i32 %sub.i.i200)
  store i32 %storemerge.i.i211, ptr %arrayidx.i.i210, align 4
  %indvars.iv.next.i.i212 = add nuw nsw i64 %indvars.iv.i.i209, 1
  %exitcond.not.i.i213 = icmp eq i64 %indvars.iv.next.i.i212, %wide.trip.count.i.i207
  br i1 %exitcond.not.i.i213, label %normalize.exit.loopexit.i214, label %for.body.i.i208, !llvm.loop !26

normalize.exit.loopexit.i214:                     ; preds = %for.body.i.i208, %middle.block
  %.pre.i215 = load i32, ptr %offset, align 4
  br label %normalize.exit.i216

normalize.exit.i216:                              ; preds = %normalize.exit.loopexit.i214, %if.then5.i199
  %79 = phi i32 [ %.pre.i215, %normalize.exit.loopexit.i214 ], [ %65, %if.then5.i199 ]
  %sub8.i.i217 = sub i32 %79, %sub.i.i200
  store i32 %sub8.i.i217, ptr %offset, align 4
  br label %cleanup76

cleanup76:                                        ; preds = %normalize.exit.i216, %bt_find_func.exit, %normalize.exit.i, %bt_skip_func.exit, %if.then4
  %retval.1 = phi i32 [ 0, %if.then4 ], [ 1, %bt_skip_func.exit ], [ 1, %normalize.exit.i ], [ %conv65, %bt_find_func.exit ], [ %conv65, %normalize.exit.i216 ]
  ret i32 %retval.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @lzma_mf_bt3_skip(ptr nocapture noundef %mf, i32 noundef %amount) local_unnamed_addr #1 {
entry:
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
  br label %do.body

do.body:                                          ; preds = %cleanup, %entry
  %amount.addr.0 = phi i32 [ %amount, %entry ], [ %dec, %cleanup ]
  %mf.val = load i32, ptr %0, align 8
  %mf.val53 = load i32, ptr %1, align 4
  %sub.i = sub i32 %mf.val53, %mf.val
  %2 = load i32, ptr %nice_len, align 8
  %cmp.not = icmp ugt i32 %2, %sub.i
  br i1 %cmp.not, label %if.else, label %if.end5

if.else:                                          ; preds = %do.body
  %cmp2 = icmp ult i32 %sub.i, 3
  br i1 %cmp2, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %3 = load i32, ptr %action, align 8
  %cmp3 = icmp eq i32 %3, 1
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %lor.lhs.false, %if.else
  %inc.i = add i32 %mf.val, 1
  store i32 %inc.i, ptr %0, align 8
  %4 = load i32, ptr %pending.i, align 8
  %inc1.i = add i32 %4, 1
  store i32 %inc1.i, ptr %pending.i, align 8
  br label %cleanup

if.end5:                                          ; preds = %do.body, %lor.lhs.false
  %len_limit.0 = phi i32 [ %sub.i, %lor.lhs.false ], [ %2, %do.body ]
  %mf.val54 = load ptr, ptr %mf, align 8
  %idx.ext.i = zext i32 %mf.val to i64
  %add.ptr.i = getelementptr inbounds i8, ptr %mf.val54, i64 %idx.ext.i
  %5 = load i32, ptr %offset, align 4
  %add = add i32 %5, %mf.val
  %6 = load i8, ptr %add.ptr.i, align 1
  %idxprom = zext i8 %6 to i64
  %arrayidx7 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %idxprom
  %7 = load i32, ptr %arrayidx7, align 4
  %arrayidx8 = getelementptr inbounds i8, ptr %add.ptr.i, i64 1
  %8 = load i8, ptr %arrayidx8, align 1
  %conv = zext i8 %8 to i32
  %xor = xor i32 %7, %conv
  %and = and i32 %xor, 1023
  %arrayidx9 = getelementptr inbounds i8, ptr %add.ptr.i, i64 2
  %9 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %9 to i32
  %shl = shl nuw nsw i32 %conv10, 8
  %xor11 = xor i32 %shl, %xor
  %10 = load i32, ptr %hash_mask, align 8
  %and12 = and i32 %xor11, %10
  %11 = load ptr, ptr %hash, align 8
  %add13 = add i32 %and12, 1024
  %idxprom14 = zext i32 %add13 to i64
  %arrayidx15 = getelementptr inbounds i32, ptr %11, i64 %idxprom14
  %12 = load i32, ptr %arrayidx15, align 4
  %idxprom17 = zext nneg i32 %and to i64
  %arrayidx18 = getelementptr inbounds i32, ptr %11, i64 %idxprom17
  store i32 %add, ptr %arrayidx18, align 4
  %13 = load ptr, ptr %hash, align 8
  %arrayidx22 = getelementptr inbounds i32, ptr %13, i64 %idxprom14
  store i32 %add, ptr %arrayidx22, align 4
  %14 = load i32, ptr %depth, align 4
  %15 = load ptr, ptr %son, align 8
  %16 = load i32, ptr %cyclic_pos, align 8
  %17 = load i32, ptr %cyclic_size, align 4
  %shl.i = shl i32 %16, 1
  %idx.ext.i56 = zext i32 %shl.i to i64
  %add.ptr.i57 = getelementptr inbounds i32, ptr %15, i64 %idx.ext.i56
  %add.ptr1.i = getelementptr inbounds i8, ptr %add.ptr.i57, i64 4
  %sub111.i = sub i32 %add, %12
  %cmp113.i = icmp ne i32 %14, 0
  %cmp5.not114.i = icmp ult i32 %sub111.i, %17
  %or.cond115.i = and i1 %cmp113.i, %cmp5.not114.i
  br i1 %or.cond115.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %cleanup58.i, %if.end5
  %ptr1.0.lcssa.i = phi ptr [ %add.ptr.i57, %if.end5 ], [ %ptr1.1.i, %cleanup58.i ]
  %ptr0.0.lcssa.i = phi ptr [ %add.ptr1.i, %if.end5 ], [ %ptr0.1.i, %cleanup58.i ]
  store i32 0, ptr %ptr0.0.lcssa.i, align 4
  store i32 0, ptr %ptr1.0.lcssa.i, align 4
  br label %bt_skip_func.exit

if.end.i:                                         ; preds = %if.end5, %cleanup58.i
  %dec122.in.i = phi i32 [ %dec122.i, %cleanup58.i ], [ %14, %if.end5 ]
  %sub121.i = phi i32 [ %sub.i58, %cleanup58.i ], [ %sub111.i, %if.end5 ]
  %cur_match.addr.0120.i = phi i32 [ %cur_match.addr.1.i, %cleanup58.i ], [ %12, %if.end5 ]
  %ptr0.0119.i = phi ptr [ %ptr0.1.i, %cleanup58.i ], [ %add.ptr1.i, %if.end5 ]
  %len1.0118.i = phi i32 [ %len1.1.i, %cleanup58.i ], [ 0, %if.end5 ]
  %len0.0117.i = phi i32 [ %len0.1.i, %cleanup58.i ], [ 0, %if.end5 ]
  %ptr1.0116.i = phi ptr [ %ptr1.1.i, %cleanup58.i ], [ %add.ptr.i57, %if.end5 ]
  %dec122.i = add i32 %dec122.in.i, -1
  %sub6.i = sub i32 %16, %sub121.i
  %cmp7.i = icmp ugt i32 %sub121.i, %16
  %cond.i = select i1 %cmp7.i, i32 %17, i32 0
  %add.i = add i32 %sub6.i, %cond.i
  %shl8.i = shl i32 %add.i, 1
  %idx.ext9.i = zext i32 %shl8.i to i64
  %add.ptr10.i = getelementptr inbounds i32, ptr %15, i64 %idx.ext9.i
  %idx.ext11.i = zext i32 %sub121.i to i64
  %idx.neg.i = sub nsw i64 0, %idx.ext11.i
  %add.ptr12.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg.i
  %cond17.i = tail call i32 @llvm.umin.i32(i32 %len0.0117.i, i32 %len1.0118.i)
  %idxprom.i = zext i32 %cond17.i to i64
  %arrayidx.i = getelementptr inbounds i8, ptr %add.ptr12.i, i64 %idxprom.i
  %18 = load i8, ptr %arrayidx.i, align 1
  %arrayidx19.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom.i
  %19 = load i8, ptr %arrayidx19.i, align 1
  %cmp21.i = icmp eq i8 %18, %19
  br i1 %cmp21.i, label %while.cond24.i, label %if.end44.i

while.cond24.i:                                   ; preds = %if.end.i, %while.body27.i
  %len.0.i = phi i32 [ %inc.i59, %while.body27.i ], [ %cond17.i, %if.end.i ]
  %inc.i59 = add i32 %len.0.i, 1
  %cmp25.not.i = icmp eq i32 %inc.i59, %len_limit.0
  br i1 %cmp25.not.i, label %if.then40.i, label %while.body27.i

while.body27.i:                                   ; preds = %while.cond24.i
  %idxprom28.i = zext i32 %inc.i59 to i64
  %arrayidx29.i = getelementptr inbounds i8, ptr %add.ptr12.i, i64 %idxprom28.i
  %20 = load i8, ptr %arrayidx29.i, align 1
  %arrayidx32.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom28.i
  %21 = load i8, ptr %arrayidx32.i, align 1
  %cmp34.not.i = icmp eq i8 %20, %21
  br i1 %cmp34.not.i, label %while.cond24.i, label %if.end44.i

if.then40.i:                                      ; preds = %while.cond24.i
  %22 = load i32, ptr %add.ptr10.i, align 4
  store i32 %22, ptr %ptr1.0116.i, align 4
  %arrayidx42.i = getelementptr inbounds i8, ptr %add.ptr10.i, i64 4
  %23 = load i32, ptr %arrayidx42.i, align 4
  store i32 %23, ptr %ptr0.0119.i, align 4
  br label %bt_skip_func.exit

if.end44.i:                                       ; preds = %while.body27.i, %if.end.i
  %24 = phi i8 [ %19, %if.end.i ], [ %21, %while.body27.i ]
  %25 = phi i8 [ %18, %if.end.i ], [ %20, %while.body27.i ]
  %len.1.i = phi i32 [ %cond17.i, %if.end.i ], [ %inc.i59, %while.body27.i ]
  %cmp51.i = icmp ult i8 %25, %24
  br i1 %cmp51.i, label %if.then53.i, label %if.else.i

if.then53.i:                                      ; preds = %if.end44.i
  store i32 %cur_match.addr.0120.i, ptr %ptr1.0116.i, align 4
  %add.ptr54.i = getelementptr inbounds i8, ptr %add.ptr10.i, i64 4
  br label %cleanup58.i

if.else.i:                                        ; preds = %if.end44.i
  store i32 %cur_match.addr.0120.i, ptr %ptr0.0119.i, align 4
  br label %cleanup58.i

cleanup58.i:                                      ; preds = %if.else.i, %if.then53.i
  %ptr1.1.i = phi ptr [ %add.ptr54.i, %if.then53.i ], [ %ptr1.0116.i, %if.else.i ]
  %len0.1.i = phi i32 [ %len0.0117.i, %if.then53.i ], [ %len.1.i, %if.else.i ]
  %len1.1.i = phi i32 [ %len.1.i, %if.then53.i ], [ %len1.0118.i, %if.else.i ]
  %ptr0.1.i = phi ptr [ %ptr0.0119.i, %if.then53.i ], [ %add.ptr10.i, %if.else.i ]
  %cur_match.addr.1.in.i = phi ptr [ %add.ptr54.i, %if.then53.i ], [ %add.ptr10.i, %if.else.i ]
  %cur_match.addr.1.i = load i32, ptr %cur_match.addr.1.in.i, align 4
  %sub.i58 = sub i32 %add, %cur_match.addr.1.i
  %cmp.i = icmp ne i32 %dec122.i, 0
  %cmp5.not.i = icmp ult i32 %sub.i58, %17
  %or.cond.i = select i1 %cmp.i, i1 %cmp5.not.i, i1 false
  br i1 %or.cond.i, label %if.end.i, label %if.then.i

bt_skip_func.exit:                                ; preds = %if.then.i, %if.then40.i
  %26 = load i32, ptr %cyclic_pos, align 8
  %inc.i60 = add i32 %26, 1
  %27 = load i32, ptr %cyclic_size, align 4
  %cmp.i61 = icmp eq i32 %inc.i60, %27
  %spec.store.select.i = select i1 %cmp.i61, i32 0, i32 %inc.i60
  store i32 %spec.store.select.i, ptr %cyclic_pos, align 8
  %28 = load i32, ptr %0, align 8
  %inc2.i = add i32 %28, 1
  store i32 %inc2.i, ptr %0, align 8
  %29 = load i32, ptr %offset, align 4
  %add.i63 = add i32 %29, %inc2.i
  %cmp4.i = icmp eq i32 %add.i63, -1
  br i1 %cmp4.i, label %if.then5.i, label %cleanup

if.then5.i:                                       ; preds = %bt_skip_func.exit
  %sub.i.i = xor i32 %27, -1
  %30 = load i32, ptr %hash_size_sum.i.i, align 4
  %31 = load i32, ptr %sons_count.i.i, align 8
  %add.i.i = add i32 %31, %30
  %32 = load ptr, ptr %hash, align 8
  %cmp21.not.i.i = icmp eq i32 %add.i.i, 0
  br i1 %cmp21.not.i.i, label %normalize.exit.i, label %for.body.preheader.i.i

for.body.preheader.i.i:                           ; preds = %if.then5.i
  %wide.trip.count.i.i = zext i32 %add.i.i to i64
  %min.iters.check = icmp ult i32 %add.i.i, 16
  br i1 %min.iters.check, label %for.body.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body.preheader.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 4294967280
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %sub.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %33 = getelementptr inbounds i32, ptr %32, i64 %index
  %34 = getelementptr inbounds i8, ptr %33, i64 16
  %35 = getelementptr inbounds i8, ptr %33, i64 32
  %36 = getelementptr inbounds i8, ptr %33, i64 48
  %wide.load = load <4 x i32>, ptr %33, align 4
  %wide.load84 = load <4 x i32>, ptr %34, align 4
  %wide.load85 = load <4 x i32>, ptr %35, align 4
  %wide.load86 = load <4 x i32>, ptr %36, align 4
  %37 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load, <4 x i32> %broadcast.splat)
  %38 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load84, <4 x i32> %broadcast.splat)
  %39 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load85, <4 x i32> %broadcast.splat)
  %40 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load86, <4 x i32> %broadcast.splat)
  store <4 x i32> %37, ptr %33, align 4
  store <4 x i32> %38, ptr %34, align 4
  store <4 x i32> %39, ptr %35, align 4
  store <4 x i32> %40, ptr %36, align 4
  %index.next = add nuw i64 %index, 16
  %41 = icmp eq i64 %index.next, %n.vec
  br i1 %41, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %normalize.exit.loopexit.i, label %for.body.i.i.preheader

for.body.i.i.preheader:                           ; preds = %middle.block, %for.body.preheader.i.i
  %indvars.iv.i.i.ph = phi i64 [ 0, %for.body.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.preheader, %for.body.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %for.body.i.i ], [ %indvars.iv.i.i.ph, %for.body.i.i.preheader ]
  %arrayidx.i.i = getelementptr inbounds i32, ptr %32, i64 %indvars.iv.i.i
  %42 = load i32, ptr %arrayidx.i.i, align 4
  %storemerge.i.i = tail call i32 @llvm.usub.sat.i32(i32 %42, i32 %sub.i.i)
  store i32 %storemerge.i.i, ptr %arrayidx.i.i, align 4
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %normalize.exit.loopexit.i, label %for.body.i.i, !llvm.loop !28

normalize.exit.loopexit.i:                        ; preds = %for.body.i.i, %middle.block
  %.pre.i = load i32, ptr %offset, align 4
  br label %normalize.exit.i

normalize.exit.i:                                 ; preds = %normalize.exit.loopexit.i, %if.then5.i
  %43 = phi i32 [ %.pre.i, %normalize.exit.loopexit.i ], [ %29, %if.then5.i ]
  %sub8.i.i = sub i32 %43, %sub.i.i
  store i32 %sub8.i.i, ptr %offset, align 4
  br label %cleanup

cleanup:                                          ; preds = %normalize.exit.i, %bt_skip_func.exit, %if.then4
  %dec = add i32 %amount.addr.0, -1
  %cmp25.not = icmp eq i32 %dec, 0
  br i1 %cmp25.not, label %do.end27, label %do.body

do.end27:                                         ; preds = %cleanup
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @lzma_mf_bt4_find(ptr nocapture noundef %mf, ptr noundef %matches) local_unnamed_addr #1 {
entry:
  %0 = getelementptr i8, ptr %mf, i64 24
  %mf.val = load i32, ptr %0, align 8
  %1 = getelementptr i8, ptr %mf, i64 36
  %mf.val211 = load i32, ptr %1, align 4
  %sub.i = sub i32 %mf.val211, %mf.val
  %nice_len = getelementptr inbounds i8, ptr %mf, i64 96
  %2 = load i32, ptr %nice_len, align 8
  %cmp.not = icmp ugt i32 %2, %sub.i
  br i1 %cmp.not, label %if.else, label %if.end5

if.else:                                          ; preds = %entry
  %cmp2 = icmp ult i32 %sub.i, 4
  br i1 %cmp2, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %action = getelementptr inbounds i8, ptr %mf, i64 104
  %3 = load i32, ptr %action, align 8
  %cmp3 = icmp eq i32 %3, 1
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %lor.lhs.false, %if.else
  %inc.i = add i32 %mf.val, 1
  store i32 %inc.i, ptr %0, align 8
  %pending.i = getelementptr inbounds i8, ptr %mf, i64 40
  %4 = load i32, ptr %pending.i, align 8
  %inc1.i = add i32 %4, 1
  store i32 %inc1.i, ptr %pending.i, align 8
  br label %cleanup130

if.end5:                                          ; preds = %entry, %lor.lhs.false
  %len_limit.0 = phi i32 [ %sub.i, %lor.lhs.false ], [ %2, %entry ]
  %mf.val212 = load ptr, ptr %mf, align 8
  %idx.ext.i = zext i32 %mf.val to i64
  %add.ptr.i = getelementptr inbounds i8, ptr %mf.val212, i64 %idx.ext.i
  %offset = getelementptr inbounds i8, ptr %mf, i64 20
  %5 = load i32, ptr %offset, align 4
  %add = add i32 %5, %mf.val
  %6 = load i8, ptr %add.ptr.i, align 1
  %idxprom = zext i8 %6 to i64
  %arrayidx7 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %idxprom
  %7 = load i32, ptr %arrayidx7, align 4
  %arrayidx8 = getelementptr inbounds i8, ptr %add.ptr.i, i64 1
  %8 = load i8, ptr %arrayidx8, align 1
  %conv = zext i8 %8 to i32
  %xor = xor i32 %7, %conv
  %and = and i32 %xor, 1023
  %arrayidx9 = getelementptr inbounds i8, ptr %add.ptr.i, i64 2
  %9 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %9 to i32
  %shl = shl nuw nsw i32 %conv10, 8
  %xor11 = xor i32 %shl, %xor
  %and12 = and i32 %xor11, 65535
  %arrayidx17 = getelementptr inbounds i8, ptr %add.ptr.i, i64 3
  %10 = load i8, ptr %arrayidx17, align 1
  %idxprom18 = zext i8 %10 to i64
  %arrayidx19 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %idxprom18
  %11 = load i32, ptr %arrayidx19, align 4
  %shl20 = shl i32 %11, 5
  %xor21 = xor i32 %xor11, %shl20
  %hash_mask = getelementptr inbounds i8, ptr %mf, i64 88
  %12 = load i32, ptr %hash_mask, align 8
  %and22 = and i32 %xor21, %12
  %hash = getelementptr inbounds i8, ptr %mf, i64 64
  %13 = load ptr, ptr %hash, align 8
  %idxprom23 = zext nneg i32 %and to i64
  %arrayidx24 = getelementptr inbounds i32, ptr %13, i64 %idxprom23
  %14 = load i32, ptr %arrayidx24, align 4
  %sub = sub i32 %add, %14
  %add26 = add nuw nsw i32 %and12, 1024
  %idxprom27 = zext nneg i32 %add26 to i64
  %arrayidx28 = getelementptr inbounds i32, ptr %13, i64 %idxprom27
  %15 = load i32, ptr %arrayidx28, align 4
  %sub29 = sub i32 %add, %15
  %add31 = add i32 %and22, 66560
  %idxprom32 = zext i32 %add31 to i64
  %arrayidx33 = getelementptr inbounds i32, ptr %13, i64 %idxprom32
  %16 = load i32, ptr %arrayidx33, align 4
  store i32 %add, ptr %arrayidx24, align 4
  %17 = load ptr, ptr %hash, align 8
  %arrayidx40 = getelementptr inbounds i32, ptr %17, i64 %idxprom27
  store i32 %add, ptr %arrayidx40, align 4
  %18 = load ptr, ptr %hash, align 8
  %arrayidx44 = getelementptr inbounds i32, ptr %18, i64 %idxprom32
  store i32 %add, ptr %arrayidx44, align 4
  %cyclic_size = getelementptr inbounds i8, ptr %mf, i64 84
  %19 = load i32, ptr %cyclic_size, align 4
  %cmp45 = icmp ult i32 %sub, %19
  br i1 %cmp45, label %land.lhs.true, label %if.end55

land.lhs.true:                                    ; preds = %if.end5
  %idx.ext = zext i32 %sub to i64
  %idx.neg = sub nsw i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg
  %20 = load i8, ptr %add.ptr, align 1
  %21 = load i8, ptr %add.ptr.i, align 1
  %cmp49 = icmp eq i8 %20, %21
  br i1 %cmp49, label %if.then51, label %if.end55

if.then51:                                        ; preds = %land.lhs.true
  store i32 2, ptr %matches, align 4
  %sub53 = add i32 %sub, -1
  %dist = getelementptr inbounds i8, ptr %matches, i64 4
  store i32 %sub53, ptr %dist, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then51, %land.lhs.true, %if.end5
  %cmp76.not = phi i1 [ false, %if.then51 ], [ true, %land.lhs.true ], [ true, %if.end5 ]
  %matches_count.0 = phi i32 [ 1, %if.then51 ], [ 0, %land.lhs.true ], [ 0, %if.end5 ]
  %len_best.0 = phi i32 [ 2, %if.then51 ], [ 1, %land.lhs.true ], [ 1, %if.end5 ]
  %cmp56.not = icmp eq i32 %15, %14
  br i1 %cmp56.not, label %if.end75, label %land.lhs.true58

land.lhs.true58:                                  ; preds = %if.end55
  %22 = load i32, ptr %cyclic_size, align 4
  %cmp60 = icmp ult i32 %sub29, %22
  br i1 %cmp60, label %land.lhs.true62, label %if.end75

land.lhs.true62:                                  ; preds = %land.lhs.true58
  %idx.ext63 = zext i32 %sub29 to i64
  %idx.neg64 = sub nsw i64 0, %idx.ext63
  %add.ptr65 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg64
  %23 = load i8, ptr %add.ptr65, align 1
  %24 = load i8, ptr %add.ptr.i, align 1
  %cmp68 = icmp eq i8 %23, %24
  br i1 %cmp68, label %if.end75.thread, label %if.end75

if.end75.thread:                                  ; preds = %land.lhs.true62
  %sub71 = add i32 %sub29, -1
  %inc = add nuw nsw i32 %matches_count.0, 1
  %idxprom72 = zext nneg i32 %matches_count.0 to i64
  %dist74 = getelementptr inbounds %struct.lzma_match, ptr %matches, i64 %idxprom72, i32 1
  store i32 %sub71, ptr %dist74, align 4
  br label %for.cond.preheader

if.end75:                                         ; preds = %land.lhs.true62, %land.lhs.true58, %if.end55
  br i1 %cmp76.not, label %if.end104, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end75.thread, %if.end75
  %len_best.1332 = phi i32 [ 3, %if.end75.thread ], [ %len_best.0, %if.end75 ]
  %delta2.0331 = phi i32 [ %sub29, %if.end75.thread ], [ %sub, %if.end75 ]
  %matches_count.1329 = phi i32 [ %inc, %if.end75.thread ], [ 1, %if.end75 ]
  %cmp79.not311 = icmp eq i32 %len_best.1332, %len_limit.0
  br i1 %cmp79.not311, label %do.body, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %idx.ext83 = zext i32 %delta2.0331 to i64
  %idx.neg84 = sub nsw i64 0, %idx.ext83
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %len_best.2312 = phi i32 [ %len_best.1332, %for.body.lr.ph ], [ %inc94, %for.inc ]
  %idx.ext81 = zext i32 %len_best.2312 to i64
  %add.ptr82 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.ext81
  %add.ptr85 = getelementptr inbounds i8, ptr %add.ptr82, i64 %idx.neg84
  %25 = load i8, ptr %add.ptr85, align 1
  %26 = load i8, ptr %add.ptr82, align 1
  %cmp90.not = icmp eq i8 %25, %26
  br i1 %cmp90.not, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.body
  %inc94 = add i32 %len_best.2312, 1
  %cmp79.not = icmp eq i32 %inc94, %len_limit.0
  br i1 %cmp79.not, label %do.body, label %for.body

for.end:                                          ; preds = %for.body
  %sub95 = add nsw i32 %matches_count.1329, -1
  %idxprom96 = zext i32 %sub95 to i64
  %arrayidx97 = getelementptr inbounds %struct.lzma_match, ptr %matches, i64 %idxprom96
  store i32 %len_best.2312, ptr %arrayidx97, align 4
  %27 = zext nneg i32 %matches_count.1329 to i64
  br label %if.end104

do.body:                                          ; preds = %for.inc, %for.cond.preheader
  %sub95296 = add nsw i32 %matches_count.1329, -1
  %idxprom96297 = zext i32 %sub95296 to i64
  %arrayidx97298 = getelementptr inbounds %struct.lzma_match, ptr %matches, i64 %idxprom96297
  store i32 %len_limit.0, ptr %arrayidx97298, align 4
  %depth = getelementptr inbounds i8, ptr %mf, i64 92
  %28 = load i32, ptr %depth, align 4
  %son = getelementptr inbounds i8, ptr %mf, i64 72
  %29 = load ptr, ptr %son, align 8
  %cyclic_pos = getelementptr inbounds i8, ptr %mf, i64 80
  %30 = load i32, ptr %cyclic_pos, align 8
  %31 = load i32, ptr %cyclic_size, align 4
  %shl.i = shl i32 %30, 1
  %idx.ext.i214 = zext i32 %shl.i to i64
  %add.ptr.i215 = getelementptr inbounds i32, ptr %29, i64 %idx.ext.i214
  %add.ptr1.i = getelementptr inbounds i8, ptr %add.ptr.i215, i64 4
  %sub111.i = sub i32 %add, %16
  %cmp113.i = icmp ne i32 %28, 0
  %cmp5.not114.i = icmp ult i32 %sub111.i, %31
  %or.cond115.i = and i1 %cmp113.i, %cmp5.not114.i
  br i1 %or.cond115.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %cleanup58.i, %do.body
  %ptr1.0.lcssa.i = phi ptr [ %add.ptr.i215, %do.body ], [ %ptr1.1.i, %cleanup58.i ]
  %ptr0.0.lcssa.i = phi ptr [ %add.ptr1.i, %do.body ], [ %ptr0.1.i, %cleanup58.i ]
  store i32 0, ptr %ptr0.0.lcssa.i, align 4
  store i32 0, ptr %ptr1.0.lcssa.i, align 4
  br label %bt_skip_func.exit

if.end.i:                                         ; preds = %do.body, %cleanup58.i
  %dec122.in.i = phi i32 [ %dec122.i, %cleanup58.i ], [ %28, %do.body ]
  %sub121.i = phi i32 [ %sub.i216, %cleanup58.i ], [ %sub111.i, %do.body ]
  %cur_match.addr.0120.i = phi i32 [ %cur_match.addr.1.i, %cleanup58.i ], [ %16, %do.body ]
  %ptr0.0119.i = phi ptr [ %ptr0.1.i, %cleanup58.i ], [ %add.ptr1.i, %do.body ]
  %len1.0118.i = phi i32 [ %len1.1.i, %cleanup58.i ], [ 0, %do.body ]
  %len0.0117.i = phi i32 [ %len0.1.i, %cleanup58.i ], [ 0, %do.body ]
  %ptr1.0116.i = phi ptr [ %ptr1.1.i, %cleanup58.i ], [ %add.ptr.i215, %do.body ]
  %dec122.i = add i32 %dec122.in.i, -1
  %sub6.i = sub i32 %30, %sub121.i
  %cmp7.i = icmp ugt i32 %sub121.i, %30
  %cond.i = select i1 %cmp7.i, i32 %31, i32 0
  %add.i = add i32 %sub6.i, %cond.i
  %shl8.i = shl i32 %add.i, 1
  %idx.ext9.i = zext i32 %shl8.i to i64
  %add.ptr10.i = getelementptr inbounds i32, ptr %29, i64 %idx.ext9.i
  %idx.ext11.i = zext i32 %sub121.i to i64
  %idx.neg.i = sub nsw i64 0, %idx.ext11.i
  %add.ptr12.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg.i
  %cond17.i = tail call i32 @llvm.umin.i32(i32 %len0.0117.i, i32 %len1.0118.i)
  %idxprom.i = zext i32 %cond17.i to i64
  %arrayidx.i = getelementptr inbounds i8, ptr %add.ptr12.i, i64 %idxprom.i
  %32 = load i8, ptr %arrayidx.i, align 1
  %arrayidx19.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom.i
  %33 = load i8, ptr %arrayidx19.i, align 1
  %cmp21.i = icmp eq i8 %32, %33
  br i1 %cmp21.i, label %while.cond24.i, label %if.end44.i

while.cond24.i:                                   ; preds = %if.end.i, %while.body27.i
  %len.0.i = phi i32 [ %inc.i217, %while.body27.i ], [ %cond17.i, %if.end.i ]
  %inc.i217 = add i32 %len.0.i, 1
  %cmp25.not.i = icmp eq i32 %inc.i217, %len_limit.0
  br i1 %cmp25.not.i, label %if.then40.i, label %while.body27.i

while.body27.i:                                   ; preds = %while.cond24.i
  %idxprom28.i = zext i32 %inc.i217 to i64
  %arrayidx29.i = getelementptr inbounds i8, ptr %add.ptr12.i, i64 %idxprom28.i
  %34 = load i8, ptr %arrayidx29.i, align 1
  %arrayidx32.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom28.i
  %35 = load i8, ptr %arrayidx32.i, align 1
  %cmp34.not.i = icmp eq i8 %34, %35
  br i1 %cmp34.not.i, label %while.cond24.i, label %if.end44.i

if.then40.i:                                      ; preds = %while.cond24.i
  %36 = load i32, ptr %add.ptr10.i, align 4
  store i32 %36, ptr %ptr1.0116.i, align 4
  %arrayidx42.i = getelementptr inbounds i8, ptr %add.ptr10.i, i64 4
  %37 = load i32, ptr %arrayidx42.i, align 4
  store i32 %37, ptr %ptr0.0119.i, align 4
  br label %bt_skip_func.exit

if.end44.i:                                       ; preds = %while.body27.i, %if.end.i
  %38 = phi i8 [ %33, %if.end.i ], [ %35, %while.body27.i ]
  %39 = phi i8 [ %32, %if.end.i ], [ %34, %while.body27.i ]
  %len.1.i = phi i32 [ %cond17.i, %if.end.i ], [ %inc.i217, %while.body27.i ]
  %cmp51.i = icmp ult i8 %39, %38
  br i1 %cmp51.i, label %if.then53.i, label %if.else.i

if.then53.i:                                      ; preds = %if.end44.i
  store i32 %cur_match.addr.0120.i, ptr %ptr1.0116.i, align 4
  %add.ptr54.i = getelementptr inbounds i8, ptr %add.ptr10.i, i64 4
  br label %cleanup58.i

if.else.i:                                        ; preds = %if.end44.i
  store i32 %cur_match.addr.0120.i, ptr %ptr0.0119.i, align 4
  br label %cleanup58.i

cleanup58.i:                                      ; preds = %if.else.i, %if.then53.i
  %ptr1.1.i = phi ptr [ %add.ptr54.i, %if.then53.i ], [ %ptr1.0116.i, %if.else.i ]
  %len0.1.i = phi i32 [ %len0.0117.i, %if.then53.i ], [ %len.1.i, %if.else.i ]
  %len1.1.i = phi i32 [ %len.1.i, %if.then53.i ], [ %len1.0118.i, %if.else.i ]
  %ptr0.1.i = phi ptr [ %ptr0.0119.i, %if.then53.i ], [ %add.ptr10.i, %if.else.i ]
  %cur_match.addr.1.in.i = phi ptr [ %add.ptr54.i, %if.then53.i ], [ %add.ptr10.i, %if.else.i ]
  %cur_match.addr.1.i = load i32, ptr %cur_match.addr.1.in.i, align 4
  %sub.i216 = sub i32 %add, %cur_match.addr.1.i
  %cmp.i = icmp ne i32 %dec122.i, 0
  %cmp5.not.i = icmp ult i32 %sub.i216, %31
  %or.cond.i = select i1 %cmp.i, i1 %cmp5.not.i, i1 false
  br i1 %or.cond.i, label %if.end.i, label %if.then.i

bt_skip_func.exit:                                ; preds = %if.then.i, %if.then40.i
  %40 = load i32, ptr %cyclic_pos, align 8
  %inc.i218 = add i32 %40, 1
  %41 = load i32, ptr %cyclic_size, align 4
  %cmp.i219 = icmp eq i32 %inc.i218, %41
  %spec.store.select.i = select i1 %cmp.i219, i32 0, i32 %inc.i218
  store i32 %spec.store.select.i, ptr %cyclic_pos, align 8
  %42 = load i32, ptr %0, align 8
  %inc2.i = add i32 %42, 1
  store i32 %inc2.i, ptr %0, align 8
  %43 = load i32, ptr %offset, align 4
  %add.i221 = add i32 %43, %inc2.i
  %cmp4.i = icmp eq i32 %add.i221, -1
  br i1 %cmp4.i, label %if.then5.i, label %cleanup130

if.then5.i:                                       ; preds = %bt_skip_func.exit
  %sub.i.i = xor i32 %41, -1
  %hash_size_sum.i.i = getelementptr inbounds i8, ptr %mf, i64 108
  %44 = load i32, ptr %hash_size_sum.i.i, align 4
  %sons_count.i.i = getelementptr inbounds i8, ptr %mf, i64 112
  %45 = load i32, ptr %sons_count.i.i, align 8
  %add.i.i = add i32 %45, %44
  %46 = load ptr, ptr %hash, align 8
  %cmp21.not.i.i = icmp eq i32 %add.i.i, 0
  br i1 %cmp21.not.i.i, label %normalize.exit.i, label %for.body.preheader.i.i

for.body.preheader.i.i:                           ; preds = %if.then5.i
  %wide.trip.count.i.i = zext i32 %add.i.i to i64
  %min.iters.check = icmp ult i32 %add.i.i, 16
  br i1 %min.iters.check, label %for.body.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body.preheader.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 4294967280
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %sub.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %47 = getelementptr inbounds i32, ptr %46, i64 %index
  %48 = getelementptr inbounds i8, ptr %47, i64 16
  %49 = getelementptr inbounds i8, ptr %47, i64 32
  %50 = getelementptr inbounds i8, ptr %47, i64 48
  %wide.load = load <4 x i32>, ptr %47, align 4
  %wide.load357 = load <4 x i32>, ptr %48, align 4
  %wide.load358 = load <4 x i32>, ptr %49, align 4
  %wide.load359 = load <4 x i32>, ptr %50, align 4
  %51 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load, <4 x i32> %broadcast.splat)
  %52 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load357, <4 x i32> %broadcast.splat)
  %53 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load358, <4 x i32> %broadcast.splat)
  %54 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load359, <4 x i32> %broadcast.splat)
  store <4 x i32> %51, ptr %47, align 4
  store <4 x i32> %52, ptr %48, align 4
  store <4 x i32> %53, ptr %49, align 4
  store <4 x i32> %54, ptr %50, align 4
  %index.next = add nuw i64 %index, 16
  %55 = icmp eq i64 %index.next, %n.vec
  br i1 %55, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %normalize.exit.loopexit.i, label %for.body.i.i.preheader

for.body.i.i.preheader:                           ; preds = %middle.block, %for.body.preheader.i.i
  %indvars.iv.i.i.ph = phi i64 [ 0, %for.body.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.preheader, %for.body.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %for.body.i.i ], [ %indvars.iv.i.i.ph, %for.body.i.i.preheader ]
  %arrayidx.i.i = getelementptr inbounds i32, ptr %46, i64 %indvars.iv.i.i
  %56 = load i32, ptr %arrayidx.i.i, align 4
  %storemerge.i.i = tail call i32 @llvm.usub.sat.i32(i32 %56, i32 %sub.i.i)
  store i32 %storemerge.i.i, ptr %arrayidx.i.i, align 4
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %normalize.exit.loopexit.i, label %for.body.i.i, !llvm.loop !30

normalize.exit.loopexit.i:                        ; preds = %for.body.i.i, %middle.block
  %.pre.i = load i32, ptr %offset, align 4
  br label %normalize.exit.i

normalize.exit.i:                                 ; preds = %normalize.exit.loopexit.i, %if.then5.i
  %57 = phi i32 [ %.pre.i, %normalize.exit.loopexit.i ], [ %43, %if.then5.i ]
  %sub8.i.i = sub i32 %57, %sub.i.i
  store i32 %sub8.i.i, ptr %offset, align 4
  br label %cleanup130

if.end104:                                        ; preds = %for.end, %if.end75
  %matches_count.1330 = phi i64 [ %27, %for.end ], [ 0, %if.end75 ]
  %len_best.3 = phi i32 [ %len_best.2312, %for.end ], [ %len_best.0, %if.end75 ]
  %depth110 = getelementptr inbounds i8, ptr %mf, i64 92
  %58 = load i32, ptr %depth110, align 4
  %son111 = getelementptr inbounds i8, ptr %mf, i64 72
  %59 = load ptr, ptr %son111, align 8
  %cyclic_pos112 = getelementptr inbounds i8, ptr %mf, i64 80
  %60 = load i32, ptr %cyclic_pos112, align 8
  %61 = load i32, ptr %cyclic_size, align 4
  %add.ptr115 = getelementptr inbounds %struct.lzma_match, ptr %matches, i64 %matches_count.1330
  %shl.i222 = shl i32 %60, 1
  %idx.ext.i223 = zext i32 %shl.i222 to i64
  %add.ptr.i224 = getelementptr inbounds i32, ptr %59, i64 %idx.ext.i223
  %add.ptr1.i225 = getelementptr inbounds i8, ptr %add.ptr.i224, i64 4
  %sub135.i = sub i32 %add, %16
  %cmp137.i = icmp ne i32 %58, 0
  %cmp5.not138.i = icmp ult i32 %sub135.i, %61
  %or.cond139.i = and i1 %cmp137.i, %cmp5.not138.i
  br i1 %or.cond139.i, label %if.end.i229.preheader, label %if.then.i226

if.end.i229.preheader:                            ; preds = %if.end104
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %len_best.3, i32 3)
  %.pre = zext i32 %len_limit.0 to i64
  br label %if.end.i229

if.then.i226:                                     ; preds = %cleanup64.i, %if.end104
  %matches.addr.0.lcssa.i = phi ptr [ %add.ptr115, %if.end104 ], [ %matches.addr.1.i, %cleanup64.i ]
  %ptr0.0.lcssa.i227 = phi ptr [ %add.ptr1.i225, %if.end104 ], [ %ptr0.1.i247, %cleanup64.i ]
  %ptr1.0.lcssa.i228 = phi ptr [ %add.ptr.i224, %if.end104 ], [ %ptr1.1.i248, %cleanup64.i ]
  store i32 0, ptr %ptr0.0.lcssa.i227, align 4
  store i32 0, ptr %ptr1.0.lcssa.i228, align 4
  br label %bt_find_func.exit

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
  %dec148.i = add i32 %dec148.in.i, -1
  %sub6.i230 = sub i32 %60, %sub147.i
  %cmp7.i231 = icmp ugt i32 %sub147.i, %60
  %cond.i232 = select i1 %cmp7.i231, i32 %61, i32 0
  %add.i233 = add i32 %sub6.i230, %cond.i232
  %shl8.i234 = shl i32 %add.i233, 1
  %idx.ext9.i235 = zext i32 %shl8.i234 to i64
  %add.ptr10.i236 = getelementptr inbounds i32, ptr %59, i64 %idx.ext9.i235
  %idx.ext11.i237 = zext i32 %sub147.i to i64
  %idx.neg.i238 = sub nsw i64 0, %idx.ext11.i237
  %add.ptr12.i239 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg.i238
  %cond17.i240 = tail call i32 @llvm.umin.i32(i32 %len0.0144.i, i32 %len1.0145.i)
  %idxprom.i241 = zext i32 %cond17.i240 to i64
  %arrayidx.i242 = getelementptr inbounds i8, ptr %add.ptr12.i239, i64 %idxprom.i241
  %62 = load i8, ptr %arrayidx.i242, align 1
  %arrayidx19.i243 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom.i241
  %63 = load i8, ptr %arrayidx19.i243, align 1
  %cmp21.i244 = icmp eq i8 %62, %63
  br i1 %cmp21.i244, label %while.cond24.i257, label %if.end50.i

while.cond24.i257:                                ; preds = %if.end.i229, %while.body27.i261
  %len.0.i258 = phi i32 [ %inc.i259, %while.body27.i261 ], [ %cond17.i240, %if.end.i229 ]
  %inc.i259 = add i32 %len.0.i258, 1
  %cmp25.not.i260 = icmp eq i32 %inc.i259, %len_limit.0
  br i1 %cmp25.not.i260, label %while.end.i, label %while.body27.i261

while.body27.i261:                                ; preds = %while.cond24.i257
  %idxprom28.i262 = zext i32 %inc.i259 to i64
  %arrayidx29.i263 = getelementptr inbounds i8, ptr %add.ptr12.i239, i64 %idxprom28.i262
  %64 = load i8, ptr %arrayidx29.i263, align 1
  %arrayidx32.i264 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom28.i262
  %65 = load i8, ptr %arrayidx32.i264, align 1
  %cmp34.not.i265 = icmp eq i8 %64, %65
  br i1 %cmp34.not.i265, label %while.cond24.i257, label %while.end.thread.i

while.end.i:                                      ; preds = %while.cond24.i257
  %cmp38.i = icmp ult i32 %len_best.addr.0141.i, %len_limit.0
  br i1 %cmp38.i, label %if.then45.i, label %if.end50.i

while.end.thread.i:                               ; preds = %while.body27.i261
  %cmp38115.i = icmp ult i32 %len_best.addr.0141.i, %inc.i259
  br i1 %cmp38115.i, label %if.then40.thread.i, label %if.end50.i

if.then40.thread.i:                               ; preds = %while.end.thread.i
  store i32 %inc.i259, ptr %matches.addr.0140.i, align 4
  %sub42116.i = add i32 %sub147.i, -1
  %dist117.i = getelementptr inbounds i8, ptr %matches.addr.0140.i, i64 4
  store i32 %sub42116.i, ptr %dist117.i, align 4
  %incdec.ptr118.i = getelementptr inbounds i8, ptr %matches.addr.0140.i, i64 8
  br label %if.end50.i

if.then45.i:                                      ; preds = %while.end.i
  store i32 %len_limit.0, ptr %matches.addr.0140.i, align 4
  %sub42.i = add i32 %sub147.i, -1
  %dist.i = getelementptr inbounds i8, ptr %matches.addr.0140.i, i64 4
  store i32 %sub42.i, ptr %dist.i, align 4
  %incdec.ptr.i = getelementptr inbounds i8, ptr %matches.addr.0140.i, i64 8
  %66 = load i32, ptr %add.ptr10.i236, align 4
  store i32 %66, ptr %ptr1.0143.i, align 4
  %arrayidx47.i = getelementptr inbounds i8, ptr %add.ptr10.i236, i64 4
  %67 = load i32, ptr %arrayidx47.i, align 4
  store i32 %67, ptr %ptr0.0142.i, align 4
  br label %bt_find_func.exit

if.end50.i:                                       ; preds = %while.end.i, %if.then40.thread.i, %while.end.thread.i, %if.end.i229
  %idxprom51.i.pre-phi = phi i64 [ %idxprom28.i262, %if.then40.thread.i ], [ %idxprom28.i262, %while.end.thread.i ], [ %idxprom.i241, %if.end.i229 ], [ %.pre, %while.end.i ]
  %matches.addr.1.i = phi ptr [ %incdec.ptr118.i, %if.then40.thread.i ], [ %matches.addr.0140.i, %while.end.thread.i ], [ %matches.addr.0140.i, %if.end.i229 ], [ %matches.addr.0140.i, %while.end.i ]
  %len_best.addr.1.i = phi i32 [ %inc.i259, %if.then40.thread.i ], [ %len_best.addr.0141.i, %while.end.thread.i ], [ %len_best.addr.0141.i, %if.end.i229 ], [ %len_best.addr.0141.i, %while.end.i ]
  %len.1.i245 = phi i32 [ %inc.i259, %if.then40.thread.i ], [ %inc.i259, %while.end.thread.i ], [ %cond17.i240, %if.end.i229 ], [ %len_limit.0, %while.end.i ]
  %arrayidx52.i = getelementptr inbounds i8, ptr %add.ptr12.i239, i64 %idxprom51.i.pre-phi
  %68 = load i8, ptr %arrayidx52.i, align 1
  %arrayidx55.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom51.i.pre-phi
  %69 = load i8, ptr %arrayidx55.i, align 1
  %cmp57.i = icmp ult i8 %68, %69
  br i1 %cmp57.i, label %if.then59.i, label %if.else.i246

if.then59.i:                                      ; preds = %if.end50.i
  store i32 %cur_match.addr.0146.i, ptr %ptr1.0143.i, align 4
  %add.ptr60.i = getelementptr inbounds i8, ptr %add.ptr10.i236, i64 4
  br label %cleanup64.i

if.else.i246:                                     ; preds = %if.end50.i
  store i32 %cur_match.addr.0146.i, ptr %ptr0.0142.i, align 4
  br label %cleanup64.i

cleanup64.i:                                      ; preds = %if.else.i246, %if.then59.i
  %ptr0.1.i247 = phi ptr [ %ptr0.0142.i, %if.then59.i ], [ %add.ptr10.i236, %if.else.i246 ]
  %ptr1.1.i248 = phi ptr [ %add.ptr60.i, %if.then59.i ], [ %ptr1.0143.i, %if.else.i246 ]
  %len0.1.i249 = phi i32 [ %len0.0144.i, %if.then59.i ], [ %len.1.i245, %if.else.i246 ]
  %len1.1.i250 = phi i32 [ %len.1.i245, %if.then59.i ], [ %len1.0145.i, %if.else.i246 ]
  %cur_match.addr.1.in.i251 = phi ptr [ %add.ptr60.i, %if.then59.i ], [ %add.ptr10.i236, %if.else.i246 ]
  %cur_match.addr.1.i252 = load i32, ptr %cur_match.addr.1.in.i251, align 4
  %sub.i253 = sub i32 %add, %cur_match.addr.1.i252
  %cmp.i254 = icmp ne i32 %dec148.i, 0
  %cmp5.not.i255 = icmp ult i32 %sub.i253, %61
  %or.cond.i256 = select i1 %cmp.i254, i1 %cmp5.not.i255, i1 false
  br i1 %or.cond.i256, label %if.end.i229, label %if.then.i226

bt_find_func.exit:                                ; preds = %if.then.i226, %if.then45.i
  %retval.2.ph.i = phi ptr [ %incdec.ptr.i, %if.then45.i ], [ %matches.addr.0.lcssa.i, %if.then.i226 ]
  %sub.ptr.lhs.cast = ptrtoint ptr %retval.2.ph.i to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %matches to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = lshr exact i64 %sub.ptr.sub, 3
  %conv117 = trunc i64 %sub.ptr.div to i32
  %70 = load i32, ptr %cyclic_pos112, align 8
  %inc.i267 = add i32 %70, 1
  %71 = load i32, ptr %cyclic_size, align 4
  %cmp.i269 = icmp eq i32 %inc.i267, %71
  %spec.store.select.i270 = select i1 %cmp.i269, i32 0, i32 %inc.i267
  store i32 %spec.store.select.i270, ptr %cyclic_pos112, align 8
  %72 = load i32, ptr %0, align 8
  %inc2.i272 = add i32 %72, 1
  store i32 %inc2.i272, ptr %0, align 8
  %73 = load i32, ptr %offset, align 4
  %add.i274 = add i32 %73, %inc2.i272
  %cmp4.i275 = icmp eq i32 %add.i274, -1
  br i1 %cmp4.i275, label %if.then5.i276, label %cleanup130

if.then5.i276:                                    ; preds = %bt_find_func.exit
  %sub.i.i277 = xor i32 %71, -1
  %hash_size_sum.i.i278 = getelementptr inbounds i8, ptr %mf, i64 108
  %74 = load i32, ptr %hash_size_sum.i.i278, align 4
  %sons_count.i.i279 = getelementptr inbounds i8, ptr %mf, i64 112
  %75 = load i32, ptr %sons_count.i.i279, align 8
  %add.i.i280 = add i32 %75, %74
  %76 = load ptr, ptr %hash, align 8
  %cmp21.not.i.i282 = icmp eq i32 %add.i.i280, 0
  br i1 %cmp21.not.i.i282, label %normalize.exit.i293, label %for.body.preheader.i.i283

for.body.preheader.i.i283:                        ; preds = %if.then5.i276
  %wide.trip.count.i.i284 = zext i32 %add.i.i280 to i64
  %min.iters.check362 = icmp ult i32 %add.i.i280, 16
  br i1 %min.iters.check362, label %for.body.i.i285.preheader, label %vector.ph363

vector.ph363:                                     ; preds = %for.body.preheader.i.i283
  %n.vec365 = and i64 %wide.trip.count.i.i284, 4294967280
  %broadcast.splatinsert373 = insertelement <4 x i32> poison, i32 %sub.i.i277, i64 0
  %broadcast.splat374 = shufflevector <4 x i32> %broadcast.splatinsert373, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body367

vector.body367:                                   ; preds = %vector.body367, %vector.ph363
  %index368 = phi i64 [ 0, %vector.ph363 ], [ %index.next375, %vector.body367 ]
  %77 = getelementptr inbounds i32, ptr %76, i64 %index368
  %78 = getelementptr inbounds i8, ptr %77, i64 16
  %79 = getelementptr inbounds i8, ptr %77, i64 32
  %80 = getelementptr inbounds i8, ptr %77, i64 48
  %wide.load369 = load <4 x i32>, ptr %77, align 4
  %wide.load370 = load <4 x i32>, ptr %78, align 4
  %wide.load371 = load <4 x i32>, ptr %79, align 4
  %wide.load372 = load <4 x i32>, ptr %80, align 4
  %81 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load369, <4 x i32> %broadcast.splat374)
  %82 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load370, <4 x i32> %broadcast.splat374)
  %83 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load371, <4 x i32> %broadcast.splat374)
  %84 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load372, <4 x i32> %broadcast.splat374)
  store <4 x i32> %81, ptr %77, align 4
  store <4 x i32> %82, ptr %78, align 4
  store <4 x i32> %83, ptr %79, align 4
  store <4 x i32> %84, ptr %80, align 4
  %index.next375 = add nuw i64 %index368, 16
  %85 = icmp eq i64 %index.next375, %n.vec365
  br i1 %85, label %middle.block360, label %vector.body367, !llvm.loop !31

middle.block360:                                  ; preds = %vector.body367
  %cmp.n376 = icmp eq i64 %n.vec365, %wide.trip.count.i.i284
  br i1 %cmp.n376, label %normalize.exit.loopexit.i291, label %for.body.i.i285.preheader

for.body.i.i285.preheader:                        ; preds = %middle.block360, %for.body.preheader.i.i283
  %indvars.iv.i.i286.ph = phi i64 [ 0, %for.body.preheader.i.i283 ], [ %n.vec365, %middle.block360 ]
  br label %for.body.i.i285

for.body.i.i285:                                  ; preds = %for.body.i.i285.preheader, %for.body.i.i285
  %indvars.iv.i.i286 = phi i64 [ %indvars.iv.next.i.i289, %for.body.i.i285 ], [ %indvars.iv.i.i286.ph, %for.body.i.i285.preheader ]
  %arrayidx.i.i287 = getelementptr inbounds i32, ptr %76, i64 %indvars.iv.i.i286
  %86 = load i32, ptr %arrayidx.i.i287, align 4
  %storemerge.i.i288 = tail call i32 @llvm.usub.sat.i32(i32 %86, i32 %sub.i.i277)
  store i32 %storemerge.i.i288, ptr %arrayidx.i.i287, align 4
  %indvars.iv.next.i.i289 = add nuw nsw i64 %indvars.iv.i.i286, 1
  %exitcond.not.i.i290 = icmp eq i64 %indvars.iv.next.i.i289, %wide.trip.count.i.i284
  br i1 %exitcond.not.i.i290, label %normalize.exit.loopexit.i291, label %for.body.i.i285, !llvm.loop !32

normalize.exit.loopexit.i291:                     ; preds = %for.body.i.i285, %middle.block360
  %.pre.i292 = load i32, ptr %offset, align 4
  br label %normalize.exit.i293

normalize.exit.i293:                              ; preds = %normalize.exit.loopexit.i291, %if.then5.i276
  %87 = phi i32 [ %.pre.i292, %normalize.exit.loopexit.i291 ], [ %73, %if.then5.i276 ]
  %sub8.i.i294 = sub i32 %87, %sub.i.i277
  store i32 %sub8.i.i294, ptr %offset, align 4
  br label %cleanup130

cleanup130:                                       ; preds = %normalize.exit.i293, %bt_find_func.exit, %normalize.exit.i, %bt_skip_func.exit, %if.then4
  %retval.1 = phi i32 [ 0, %if.then4 ], [ %matches_count.1329, %bt_skip_func.exit ], [ %matches_count.1329, %normalize.exit.i ], [ %conv117, %bt_find_func.exit ], [ %conv117, %normalize.exit.i293 ]
  ret i32 %retval.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @lzma_mf_bt4_skip(ptr nocapture noundef %mf, i32 noundef %amount) local_unnamed_addr #1 {
entry:
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
  br label %do.body

do.body:                                          ; preds = %cleanup, %entry
  %amount.addr.0 = phi i32 [ %amount, %entry ], [ %dec, %cleanup ]
  %mf.val = load i32, ptr %0, align 8
  %mf.val72 = load i32, ptr %1, align 4
  %sub.i = sub i32 %mf.val72, %mf.val
  %2 = load i32, ptr %nice_len, align 8
  %cmp.not = icmp ugt i32 %2, %sub.i
  br i1 %cmp.not, label %if.else, label %if.end5

if.else:                                          ; preds = %do.body
  %cmp2 = icmp ult i32 %sub.i, 4
  br i1 %cmp2, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %3 = load i32, ptr %action, align 8
  %cmp3 = icmp eq i32 %3, 1
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %lor.lhs.false, %if.else
  %inc.i = add i32 %mf.val, 1
  store i32 %inc.i, ptr %0, align 8
  %4 = load i32, ptr %pending.i, align 8
  %inc1.i = add i32 %4, 1
  store i32 %inc1.i, ptr %pending.i, align 8
  br label %cleanup

if.end5:                                          ; preds = %do.body, %lor.lhs.false
  %len_limit.0 = phi i32 [ %sub.i, %lor.lhs.false ], [ %2, %do.body ]
  %mf.val73 = load ptr, ptr %mf, align 8
  %idx.ext.i = zext i32 %mf.val to i64
  %add.ptr.i = getelementptr inbounds i8, ptr %mf.val73, i64 %idx.ext.i
  %5 = load i32, ptr %offset, align 4
  %add = add i32 %5, %mf.val
  %6 = load i8, ptr %add.ptr.i, align 1
  %idxprom = zext i8 %6 to i64
  %arrayidx7 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %idxprom
  %7 = load i32, ptr %arrayidx7, align 4
  %arrayidx8 = getelementptr inbounds i8, ptr %add.ptr.i, i64 1
  %8 = load i8, ptr %arrayidx8, align 1
  %conv = zext i8 %8 to i32
  %xor = xor i32 %7, %conv
  %and = and i32 %xor, 1023
  %arrayidx9 = getelementptr inbounds i8, ptr %add.ptr.i, i64 2
  %9 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %9 to i32
  %shl = shl nuw nsw i32 %conv10, 8
  %xor11 = xor i32 %shl, %xor
  %and12 = and i32 %xor11, 65535
  %arrayidx17 = getelementptr inbounds i8, ptr %add.ptr.i, i64 3
  %10 = load i8, ptr %arrayidx17, align 1
  %idxprom18 = zext i8 %10 to i64
  %arrayidx19 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %idxprom18
  %11 = load i32, ptr %arrayidx19, align 4
  %shl20 = shl i32 %11, 5
  %xor21 = xor i32 %xor11, %shl20
  %12 = load i32, ptr %hash_mask, align 8
  %and22 = and i32 %xor21, %12
  %13 = load ptr, ptr %hash, align 8
  %add23 = add i32 %and22, 66560
  %idxprom24 = zext i32 %add23 to i64
  %arrayidx25 = getelementptr inbounds i32, ptr %13, i64 %idxprom24
  %14 = load i32, ptr %arrayidx25, align 4
  %idxprom27 = zext nneg i32 %and to i64
  %arrayidx28 = getelementptr inbounds i32, ptr %13, i64 %idxprom27
  store i32 %add, ptr %arrayidx28, align 4
  %15 = load ptr, ptr %hash, align 8
  %16 = zext nneg i32 %and12 to i64
  %17 = getelementptr inbounds i32, ptr %15, i64 %16
  %arrayidx32 = getelementptr inbounds i8, ptr %17, i64 4096
  store i32 %add, ptr %arrayidx32, align 4
  %18 = load ptr, ptr %hash, align 8
  %arrayidx36 = getelementptr inbounds i32, ptr %18, i64 %idxprom24
  store i32 %add, ptr %arrayidx36, align 4
  %19 = load i32, ptr %depth, align 4
  %20 = load ptr, ptr %son, align 8
  %21 = load i32, ptr %cyclic_pos, align 8
  %22 = load i32, ptr %cyclic_size, align 4
  %shl.i = shl i32 %21, 1
  %idx.ext.i75 = zext i32 %shl.i to i64
  %add.ptr.i76 = getelementptr inbounds i32, ptr %20, i64 %idx.ext.i75
  %add.ptr1.i = getelementptr inbounds i8, ptr %add.ptr.i76, i64 4
  %sub111.i = sub i32 %add, %14
  %cmp113.i = icmp ne i32 %19, 0
  %cmp5.not114.i = icmp ult i32 %sub111.i, %22
  %or.cond115.i = and i1 %cmp113.i, %cmp5.not114.i
  br i1 %or.cond115.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %cleanup58.i, %if.end5
  %ptr1.0.lcssa.i = phi ptr [ %add.ptr.i76, %if.end5 ], [ %ptr1.1.i, %cleanup58.i ]
  %ptr0.0.lcssa.i = phi ptr [ %add.ptr1.i, %if.end5 ], [ %ptr0.1.i, %cleanup58.i ]
  store i32 0, ptr %ptr0.0.lcssa.i, align 4
  store i32 0, ptr %ptr1.0.lcssa.i, align 4
  br label %bt_skip_func.exit

if.end.i:                                         ; preds = %if.end5, %cleanup58.i
  %dec122.in.i = phi i32 [ %dec122.i, %cleanup58.i ], [ %19, %if.end5 ]
  %sub121.i = phi i32 [ %sub.i77, %cleanup58.i ], [ %sub111.i, %if.end5 ]
  %cur_match.addr.0120.i = phi i32 [ %cur_match.addr.1.i, %cleanup58.i ], [ %14, %if.end5 ]
  %ptr0.0119.i = phi ptr [ %ptr0.1.i, %cleanup58.i ], [ %add.ptr1.i, %if.end5 ]
  %len1.0118.i = phi i32 [ %len1.1.i, %cleanup58.i ], [ 0, %if.end5 ]
  %len0.0117.i = phi i32 [ %len0.1.i, %cleanup58.i ], [ 0, %if.end5 ]
  %ptr1.0116.i = phi ptr [ %ptr1.1.i, %cleanup58.i ], [ %add.ptr.i76, %if.end5 ]
  %dec122.i = add i32 %dec122.in.i, -1
  %sub6.i = sub i32 %21, %sub121.i
  %cmp7.i = icmp ugt i32 %sub121.i, %21
  %cond.i = select i1 %cmp7.i, i32 %22, i32 0
  %add.i = add i32 %sub6.i, %cond.i
  %shl8.i = shl i32 %add.i, 1
  %idx.ext9.i = zext i32 %shl8.i to i64
  %add.ptr10.i = getelementptr inbounds i32, ptr %20, i64 %idx.ext9.i
  %idx.ext11.i = zext i32 %sub121.i to i64
  %idx.neg.i = sub nsw i64 0, %idx.ext11.i
  %add.ptr12.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg.i
  %cond17.i = tail call i32 @llvm.umin.i32(i32 %len0.0117.i, i32 %len1.0118.i)
  %idxprom.i = zext i32 %cond17.i to i64
  %arrayidx.i = getelementptr inbounds i8, ptr %add.ptr12.i, i64 %idxprom.i
  %23 = load i8, ptr %arrayidx.i, align 1
  %arrayidx19.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom.i
  %24 = load i8, ptr %arrayidx19.i, align 1
  %cmp21.i = icmp eq i8 %23, %24
  br i1 %cmp21.i, label %while.cond24.i, label %if.end44.i

while.cond24.i:                                   ; preds = %if.end.i, %while.body27.i
  %len.0.i = phi i32 [ %inc.i78, %while.body27.i ], [ %cond17.i, %if.end.i ]
  %inc.i78 = add i32 %len.0.i, 1
  %cmp25.not.i = icmp eq i32 %inc.i78, %len_limit.0
  br i1 %cmp25.not.i, label %if.then40.i, label %while.body27.i

while.body27.i:                                   ; preds = %while.cond24.i
  %idxprom28.i = zext i32 %inc.i78 to i64
  %arrayidx29.i = getelementptr inbounds i8, ptr %add.ptr12.i, i64 %idxprom28.i
  %25 = load i8, ptr %arrayidx29.i, align 1
  %arrayidx32.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom28.i
  %26 = load i8, ptr %arrayidx32.i, align 1
  %cmp34.not.i = icmp eq i8 %25, %26
  br i1 %cmp34.not.i, label %while.cond24.i, label %if.end44.i

if.then40.i:                                      ; preds = %while.cond24.i
  %27 = load i32, ptr %add.ptr10.i, align 4
  store i32 %27, ptr %ptr1.0116.i, align 4
  %arrayidx42.i = getelementptr inbounds i8, ptr %add.ptr10.i, i64 4
  %28 = load i32, ptr %arrayidx42.i, align 4
  store i32 %28, ptr %ptr0.0119.i, align 4
  br label %bt_skip_func.exit

if.end44.i:                                       ; preds = %while.body27.i, %if.end.i
  %29 = phi i8 [ %24, %if.end.i ], [ %26, %while.body27.i ]
  %30 = phi i8 [ %23, %if.end.i ], [ %25, %while.body27.i ]
  %len.1.i = phi i32 [ %cond17.i, %if.end.i ], [ %inc.i78, %while.body27.i ]
  %cmp51.i = icmp ult i8 %30, %29
  br i1 %cmp51.i, label %if.then53.i, label %if.else.i

if.then53.i:                                      ; preds = %if.end44.i
  store i32 %cur_match.addr.0120.i, ptr %ptr1.0116.i, align 4
  %add.ptr54.i = getelementptr inbounds i8, ptr %add.ptr10.i, i64 4
  br label %cleanup58.i

if.else.i:                                        ; preds = %if.end44.i
  store i32 %cur_match.addr.0120.i, ptr %ptr0.0119.i, align 4
  br label %cleanup58.i

cleanup58.i:                                      ; preds = %if.else.i, %if.then53.i
  %ptr1.1.i = phi ptr [ %add.ptr54.i, %if.then53.i ], [ %ptr1.0116.i, %if.else.i ]
  %len0.1.i = phi i32 [ %len0.0117.i, %if.then53.i ], [ %len.1.i, %if.else.i ]
  %len1.1.i = phi i32 [ %len.1.i, %if.then53.i ], [ %len1.0118.i, %if.else.i ]
  %ptr0.1.i = phi ptr [ %ptr0.0119.i, %if.then53.i ], [ %add.ptr10.i, %if.else.i ]
  %cur_match.addr.1.in.i = phi ptr [ %add.ptr54.i, %if.then53.i ], [ %add.ptr10.i, %if.else.i ]
  %cur_match.addr.1.i = load i32, ptr %cur_match.addr.1.in.i, align 4
  %sub.i77 = sub i32 %add, %cur_match.addr.1.i
  %cmp.i = icmp ne i32 %dec122.i, 0
  %cmp5.not.i = icmp ult i32 %sub.i77, %22
  %or.cond.i = select i1 %cmp.i, i1 %cmp5.not.i, i1 false
  br i1 %or.cond.i, label %if.end.i, label %if.then.i

bt_skip_func.exit:                                ; preds = %if.then.i, %if.then40.i
  %31 = load i32, ptr %cyclic_pos, align 8
  %inc.i79 = add i32 %31, 1
  %32 = load i32, ptr %cyclic_size, align 4
  %cmp.i80 = icmp eq i32 %inc.i79, %32
  %spec.store.select.i = select i1 %cmp.i80, i32 0, i32 %inc.i79
  store i32 %spec.store.select.i, ptr %cyclic_pos, align 8
  %33 = load i32, ptr %0, align 8
  %inc2.i = add i32 %33, 1
  store i32 %inc2.i, ptr %0, align 8
  %34 = load i32, ptr %offset, align 4
  %add.i82 = add i32 %34, %inc2.i
  %cmp4.i = icmp eq i32 %add.i82, -1
  br i1 %cmp4.i, label %if.then5.i, label %cleanup

if.then5.i:                                       ; preds = %bt_skip_func.exit
  %sub.i.i = xor i32 %32, -1
  %35 = load i32, ptr %hash_size_sum.i.i, align 4
  %36 = load i32, ptr %sons_count.i.i, align 8
  %add.i.i = add i32 %36, %35
  %37 = load ptr, ptr %hash, align 8
  %cmp21.not.i.i = icmp eq i32 %add.i.i, 0
  br i1 %cmp21.not.i.i, label %normalize.exit.i, label %for.body.preheader.i.i

for.body.preheader.i.i:                           ; preds = %if.then5.i
  %wide.trip.count.i.i = zext i32 %add.i.i to i64
  %min.iters.check = icmp ult i32 %add.i.i, 16
  br i1 %min.iters.check, label %for.body.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body.preheader.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 4294967280
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %sub.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %38 = getelementptr inbounds i32, ptr %37, i64 %index
  %39 = getelementptr inbounds i8, ptr %38, i64 16
  %40 = getelementptr inbounds i8, ptr %38, i64 32
  %41 = getelementptr inbounds i8, ptr %38, i64 48
  %wide.load = load <4 x i32>, ptr %38, align 4
  %wide.load103 = load <4 x i32>, ptr %39, align 4
  %wide.load104 = load <4 x i32>, ptr %40, align 4
  %wide.load105 = load <4 x i32>, ptr %41, align 4
  %42 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load, <4 x i32> %broadcast.splat)
  %43 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load103, <4 x i32> %broadcast.splat)
  %44 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load104, <4 x i32> %broadcast.splat)
  %45 = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load105, <4 x i32> %broadcast.splat)
  store <4 x i32> %42, ptr %38, align 4
  store <4 x i32> %43, ptr %39, align 4
  store <4 x i32> %44, ptr %40, align 4
  store <4 x i32> %45, ptr %41, align 4
  %index.next = add nuw i64 %index, 16
  %46 = icmp eq i64 %index.next, %n.vec
  br i1 %46, label %middle.block, label %vector.body, !llvm.loop !33

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %normalize.exit.loopexit.i, label %for.body.i.i.preheader

for.body.i.i.preheader:                           ; preds = %middle.block, %for.body.preheader.i.i
  %indvars.iv.i.i.ph = phi i64 [ 0, %for.body.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.preheader, %for.body.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %for.body.i.i ], [ %indvars.iv.i.i.ph, %for.body.i.i.preheader ]
  %arrayidx.i.i = getelementptr inbounds i32, ptr %37, i64 %indvars.iv.i.i
  %47 = load i32, ptr %arrayidx.i.i, align 4
  %storemerge.i.i = tail call i32 @llvm.usub.sat.i32(i32 %47, i32 %sub.i.i)
  store i32 %storemerge.i.i, ptr %arrayidx.i.i, align 4
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %normalize.exit.loopexit.i, label %for.body.i.i, !llvm.loop !34

normalize.exit.loopexit.i:                        ; preds = %for.body.i.i, %middle.block
  %.pre.i = load i32, ptr %offset, align 4
  br label %normalize.exit.i

normalize.exit.i:                                 ; preds = %normalize.exit.loopexit.i, %if.then5.i
  %48 = phi i32 [ %.pre.i, %normalize.exit.loopexit.i ], [ %34, %if.then5.i ]
  %sub8.i.i = sub i32 %48, %sub.i.i
  store i32 %sub8.i.i, ptr %offset, align 4
  br label %cleanup

cleanup:                                          ; preds = %normalize.exit.i, %bt_skip_func.exit, %if.then4
  %dec = add i32 %amount.addr.0, -1
  %cmp39.not = icmp eq i32 %dec, 0
  br i1 %cmp39.not, label %do.end41, label %do.body

do.end41:                                         ; preds = %cleanup
  ret void
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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.isvectorized", i32 1}
!7 = !{!"llvm.loop.unroll.runtime.disable"}
!8 = distinct !{!8, !7, !6}
!9 = distinct !{!9, !6, !7}
!10 = distinct !{!10, !7, !6}
!11 = distinct !{!11, !6, !7}
!12 = distinct !{!12, !7, !6}
!13 = distinct !{!13, !6, !7}
!14 = distinct !{!14, !7, !6}
!15 = distinct !{!15, !6, !7}
!16 = distinct !{!16, !7, !6}
!17 = distinct !{!17, !6, !7}
!18 = distinct !{!18, !7, !6}
!19 = distinct !{!19, !6, !7}
!20 = distinct !{!20, !7, !6}
!21 = distinct !{!21, !6, !7}
!22 = distinct !{!22, !7, !6}
!23 = distinct !{!23, !6, !7}
!24 = distinct !{!24, !7, !6}
!25 = distinct !{!25, !6, !7}
!26 = distinct !{!26, !7, !6}
!27 = distinct !{!27, !6, !7}
!28 = distinct !{!28, !7, !6}
!29 = distinct !{!29, !6, !7}
!30 = distinct !{!30, !7, !6}
!31 = distinct !{!31, !6, !7}
!32 = distinct !{!32, !7, !6}
!33 = distinct !{!33, !6, !7}
!34 = distinct !{!34, !7, !6}
