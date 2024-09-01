; ModuleID = 'liblzma/lzma/lzma_encoder_optimum_fast.c'
source_filename = "liblzma/lzma/lzma_encoder_optimum_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_match = type { i32, i32 }

; Function Attrs: nounwind uwtable
define dso_local void @lzma_lzma_optimum_fast(ptr noundef %pcoder, ptr noalias noundef %mf, ptr noalias nocapture noundef writeonly %back_res, ptr noalias nocapture noundef writeonly %len_res) local_unnamed_addr #0 {
entry:
  %matches_count = alloca i32, align 4
  %nice_len1 = getelementptr inbounds i8, ptr %mf, i64 96
  %0 = load i32, ptr %nice_len1, align 8
  %.fr = freeze i32 %0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %matches_count) #4
  %read_ahead = getelementptr inbounds i8, ptr %mf, i64 28
  %1 = load i32, ptr %read_ahead, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %matches = getelementptr inbounds i8, ptr %pcoder, i64 756
  %call = call i32 @lzma_mf_find(ptr noundef nonnull %mf, ptr noundef nonnull %matches_count, ptr noundef nonnull %matches) #4
  br label %if.end

if.else:                                          ; preds = %entry
  %longest_match_length = getelementptr inbounds i8, ptr %pcoder, i64 2952
  %2 = load i32, ptr %longest_match_length, align 8
  %matches_count2 = getelementptr inbounds i8, ptr %pcoder, i64 2948
  %3 = load i32, ptr %matches_count2, align 4
  store i32 %3, ptr %matches_count, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %len_main.0 = phi i32 [ %call, %if.then ], [ %2, %if.else ]
  %mf.val = load ptr, ptr %mf, align 8
  %4 = getelementptr i8, ptr %mf, i64 24
  %mf.val392 = load i32, ptr %4, align 8
  %idx.ext.i = zext i32 %mf.val392 to i64
  %add.ptr.i = getelementptr inbounds i8, ptr %mf.val, i64 %idx.ext.i
  %add.ptr = getelementptr inbounds i8, ptr %add.ptr.i, i64 -1
  %5 = getelementptr i8, ptr %mf, i64 36
  %mf.val396 = load i32, ptr %5, align 4
  %sub.i = sub i32 %mf.val396, %mf.val392
  %sub.i.fr = freeze i32 %sub.i
  %add = add i32 %sub.i.fr, 1
  %spec.select426 = call i32 @llvm.umin.i32(i32 %add, i32 273)
  %cmp8 = icmp ult i32 %add, 2
  br i1 %cmp8, label %if.then9, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %reps = getelementptr inbounds i8, ptr %pcoder, i64 740
  %6 = load i8, ptr %add.ptr, align 1
  %cmp28434.not = icmp eq i32 %add, 2
  %7 = load i32, ptr %reps, align 4
  %idx.ext.us451 = zext i32 %7 to i64
  %idx.neg.us452 = sub nsw i64 0, %idx.ext.us451
  %add.ptr12.us453 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.neg.us452
  %add.ptr13.us454 = getelementptr inbounds i8, ptr %add.ptr12.us453, i64 -1
  %8 = load i8, ptr %add.ptr13.us454, align 1
  %cmp17.not.us455 = icmp eq i8 %6, %8
  br i1 %cmp28434.not, label %for.cond.preheader.split, label %for.body.us.preheader

for.body.us.preheader:                            ; preds = %for.cond.preheader
  %umax = call i32 @llvm.umax.i32(i32 %spec.select426, i32 3)
  br i1 %cmp17.not.us455, label %lor.lhs.false.us, label %for.inc48.us

lor.lhs.false.us:                                 ; preds = %for.body.us.preheader
  %9 = load i8, ptr %add.ptr.i, align 1
  %10 = load i8, ptr %add.ptr12.us453, align 1
  %cmp23.not.us = icmp eq i8 %9, %10
  br i1 %cmp23.not.us, label %land.rhs.us.preheader, label %for.inc48.us

land.rhs.us.preheader:                            ; preds = %lor.lhs.false.us
  %wide.trip.count = zext nneg i32 %umax to i64
  br label %land.rhs.us

land.rhs.us:                                      ; preds = %land.rhs.us.preheader, %for.inc.us
  %indvars.iv = phi i64 [ 2, %land.rhs.us.preheader ], [ %indvars.iv.next, %for.inc.us ]
  %arrayidx31.us = getelementptr inbounds i8, ptr %add.ptr, i64 %indvars.iv
  %11 = load i8, ptr %arrayidx31.us, align 1
  %arrayidx34.us = getelementptr inbounds i8, ptr %add.ptr13.us454, i64 %indvars.iv
  %12 = load i8, ptr %arrayidx34.us, align 1
  %cmp36.us = icmp eq i8 %11, %12
  br i1 %cmp36.us, label %for.inc.us, label %for.end.us.split.loop.exit

for.end.us.split.loop.exit:                       ; preds = %land.rhs.us
  %13 = trunc nuw nsw i64 %indvars.iv to i32
  br label %for.end.us

for.end.us:                                       ; preds = %for.inc.us, %for.end.us.split.loop.exit
  %len.0.lcssa.us = phi i32 [ %13, %for.end.us.split.loop.exit ], [ %umax, %for.inc.us ]
  %cmp39.not.us = icmp ult i32 %len.0.lcssa.us, %.fr
  br i1 %cmp39.not.us, label %for.inc48.us, label %if.then41

for.inc48.us:                                     ; preds = %for.end.us, %lor.lhs.false.us, %for.body.us.preheader
  %rep_len.3.ph.us = phi i32 [ 0, %for.body.us.preheader ], [ 0, %lor.lhs.false.us ], [ %len.0.lcssa.us, %for.end.us ]
  %arrayidx.us.1 = getelementptr inbounds i8, ptr %pcoder, i64 744
  %14 = load i32, ptr %arrayidx.us.1, align 4
  %idx.ext.us.1 = zext i32 %14 to i64
  %idx.neg.us.1 = sub nsw i64 0, %idx.ext.us.1
  %add.ptr12.us.1 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.neg.us.1
  %add.ptr13.us.1 = getelementptr inbounds i8, ptr %add.ptr12.us.1, i64 -1
  %15 = load i8, ptr %add.ptr13.us.1, align 1
  %cmp17.not.us.1 = icmp eq i8 %6, %15
  br i1 %cmp17.not.us.1, label %lor.lhs.false.us.1, label %for.inc48.us.1

lor.lhs.false.us.1:                               ; preds = %for.inc48.us
  %16 = load i8, ptr %add.ptr.i, align 1
  %17 = load i8, ptr %add.ptr12.us.1, align 1
  %cmp23.not.us.1 = icmp eq i8 %16, %17
  br i1 %cmp23.not.us.1, label %land.rhs.us.preheader.1, label %for.inc48.us.1

land.rhs.us.preheader.1:                          ; preds = %lor.lhs.false.us.1
  %wide.trip.count.1 = zext nneg i32 %umax to i64
  br label %land.rhs.us.1

land.rhs.us.1:                                    ; preds = %for.inc.us.1, %land.rhs.us.preheader.1
  %indvars.iv.1 = phi i64 [ 2, %land.rhs.us.preheader.1 ], [ %indvars.iv.next.1, %for.inc.us.1 ]
  %arrayidx31.us.1 = getelementptr inbounds i8, ptr %add.ptr, i64 %indvars.iv.1
  %18 = load i8, ptr %arrayidx31.us.1, align 1
  %arrayidx34.us.1 = getelementptr inbounds i8, ptr %add.ptr13.us.1, i64 %indvars.iv.1
  %19 = load i8, ptr %arrayidx34.us.1, align 1
  %cmp36.us.1 = icmp eq i8 %18, %19
  br i1 %cmp36.us.1, label %for.inc.us.1, label %for.end.us.1.split.loop.exit540

for.inc.us.1:                                     ; preds = %land.rhs.us.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  %exitcond.1.not = icmp eq i64 %indvars.iv.next.1, %wide.trip.count.1
  br i1 %exitcond.1.not, label %for.end.us.1, label %land.rhs.us.1

for.end.us.1.split.loop.exit540:                  ; preds = %land.rhs.us.1
  %20 = trunc nuw nsw i64 %indvars.iv.1 to i32
  br label %for.end.us.1

for.end.us.1:                                     ; preds = %for.inc.us.1, %for.end.us.1.split.loop.exit540
  %len.0.lcssa.us.1 = phi i32 [ %20, %for.end.us.1.split.loop.exit540 ], [ %umax, %for.inc.us.1 ]
  %cmp39.not.us.1 = icmp ult i32 %len.0.lcssa.us.1, %.fr
  br i1 %cmp39.not.us.1, label %if.end42.us.1, label %if.then41

if.end42.us.1:                                    ; preds = %for.end.us.1
  %cmp43.us.1 = icmp ugt i32 %len.0.lcssa.us.1, %rep_len.3.ph.us
  %spec.select.us.1 = zext i1 %cmp43.us.1 to i32
  %spec.select388.us.1 = call i32 @llvm.umax.i32(i32 %len.0.lcssa.us.1, i32 %rep_len.3.ph.us)
  br label %for.inc48.us.1

for.inc48.us.1:                                   ; preds = %if.end42.us.1, %lor.lhs.false.us.1, %for.inc48.us
  %rep_index.3.ph.us.1 = phi i32 [ %spec.select.us.1, %if.end42.us.1 ], [ 0, %for.inc48.us ], [ 0, %lor.lhs.false.us.1 ]
  %rep_len.3.ph.us.1 = phi i32 [ %spec.select388.us.1, %if.end42.us.1 ], [ %rep_len.3.ph.us, %for.inc48.us ], [ %rep_len.3.ph.us, %lor.lhs.false.us.1 ]
  %arrayidx.us.2 = getelementptr inbounds i8, ptr %pcoder, i64 748
  %21 = load i32, ptr %arrayidx.us.2, align 4
  %idx.ext.us.2 = zext i32 %21 to i64
  %idx.neg.us.2 = sub nsw i64 0, %idx.ext.us.2
  %add.ptr12.us.2 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.neg.us.2
  %add.ptr13.us.2 = getelementptr inbounds i8, ptr %add.ptr12.us.2, i64 -1
  %22 = load i8, ptr %add.ptr13.us.2, align 1
  %cmp17.not.us.2 = icmp eq i8 %6, %22
  br i1 %cmp17.not.us.2, label %lor.lhs.false.us.2, label %for.inc48.us.2

lor.lhs.false.us.2:                               ; preds = %for.inc48.us.1
  %23 = load i8, ptr %add.ptr.i, align 1
  %24 = load i8, ptr %add.ptr12.us.2, align 1
  %cmp23.not.us.2 = icmp eq i8 %23, %24
  br i1 %cmp23.not.us.2, label %land.rhs.us.preheader.2, label %for.inc48.us.2

land.rhs.us.preheader.2:                          ; preds = %lor.lhs.false.us.2
  %wide.trip.count.2 = zext nneg i32 %umax to i64
  br label %land.rhs.us.2

land.rhs.us.2:                                    ; preds = %for.inc.us.2, %land.rhs.us.preheader.2
  %indvars.iv.2 = phi i64 [ 2, %land.rhs.us.preheader.2 ], [ %indvars.iv.next.2, %for.inc.us.2 ]
  %arrayidx31.us.2 = getelementptr inbounds i8, ptr %add.ptr, i64 %indvars.iv.2
  %25 = load i8, ptr %arrayidx31.us.2, align 1
  %arrayidx34.us.2 = getelementptr inbounds i8, ptr %add.ptr13.us.2, i64 %indvars.iv.2
  %26 = load i8, ptr %arrayidx34.us.2, align 1
  %cmp36.us.2 = icmp eq i8 %25, %26
  br i1 %cmp36.us.2, label %for.inc.us.2, label %for.end.us.2.split.loop.exit542

for.inc.us.2:                                     ; preds = %land.rhs.us.2
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1
  %exitcond.2.not = icmp eq i64 %indvars.iv.next.2, %wide.trip.count.2
  br i1 %exitcond.2.not, label %for.end.us.2, label %land.rhs.us.2

for.end.us.2.split.loop.exit542:                  ; preds = %land.rhs.us.2
  %27 = trunc nuw nsw i64 %indvars.iv.2 to i32
  br label %for.end.us.2

for.end.us.2:                                     ; preds = %for.inc.us.2, %for.end.us.2.split.loop.exit542
  %len.0.lcssa.us.2 = phi i32 [ %27, %for.end.us.2.split.loop.exit542 ], [ %umax, %for.inc.us.2 ]
  %cmp39.not.us.2 = icmp ult i32 %len.0.lcssa.us.2, %.fr
  br i1 %cmp39.not.us.2, label %if.end42.us.2, label %if.then41

if.end42.us.2:                                    ; preds = %for.end.us.2
  %cmp43.us.2 = icmp ugt i32 %len.0.lcssa.us.2, %rep_len.3.ph.us.1
  %spec.select.us.2 = select i1 %cmp43.us.2, i32 2, i32 %rep_index.3.ph.us.1
  %spec.select388.us.2 = call i32 @llvm.umax.i32(i32 %len.0.lcssa.us.2, i32 %rep_len.3.ph.us.1)
  br label %for.inc48.us.2

for.inc48.us.2:                                   ; preds = %if.end42.us.2, %lor.lhs.false.us.2, %for.inc48.us.1
  %rep_index.3.ph.us.2 = phi i32 [ %spec.select.us.2, %if.end42.us.2 ], [ %rep_index.3.ph.us.1, %for.inc48.us.1 ], [ %rep_index.3.ph.us.1, %lor.lhs.false.us.2 ]
  %rep_len.3.ph.us.2 = phi i32 [ %spec.select388.us.2, %if.end42.us.2 ], [ %rep_len.3.ph.us.1, %for.inc48.us.1 ], [ %rep_len.3.ph.us.1, %lor.lhs.false.us.2 ]
  %arrayidx.us.3 = getelementptr inbounds i8, ptr %pcoder, i64 752
  %28 = load i32, ptr %arrayidx.us.3, align 4
  %idx.ext.us.3 = zext i32 %28 to i64
  %idx.neg.us.3 = sub nsw i64 0, %idx.ext.us.3
  %add.ptr12.us.3 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.neg.us.3
  %add.ptr13.us.3 = getelementptr inbounds i8, ptr %add.ptr12.us.3, i64 -1
  %29 = load i8, ptr %add.ptr13.us.3, align 1
  %cmp17.not.us.3 = icmp eq i8 %6, %29
  br i1 %cmp17.not.us.3, label %lor.lhs.false.us.3, label %for.end52

lor.lhs.false.us.3:                               ; preds = %for.inc48.us.2
  %30 = load i8, ptr %add.ptr.i, align 1
  %31 = load i8, ptr %add.ptr12.us.3, align 1
  %cmp23.not.us.3 = icmp eq i8 %30, %31
  br i1 %cmp23.not.us.3, label %land.rhs.us.preheader.3, label %for.end52

land.rhs.us.preheader.3:                          ; preds = %lor.lhs.false.us.3
  %wide.trip.count.3 = zext nneg i32 %umax to i64
  br label %land.rhs.us.3

land.rhs.us.3:                                    ; preds = %for.inc.us.3, %land.rhs.us.preheader.3
  %indvars.iv.3 = phi i64 [ 2, %land.rhs.us.preheader.3 ], [ %indvars.iv.next.3, %for.inc.us.3 ]
  %arrayidx31.us.3 = getelementptr inbounds i8, ptr %add.ptr, i64 %indvars.iv.3
  %32 = load i8, ptr %arrayidx31.us.3, align 1
  %arrayidx34.us.3 = getelementptr inbounds i8, ptr %add.ptr13.us.3, i64 %indvars.iv.3
  %33 = load i8, ptr %arrayidx34.us.3, align 1
  %cmp36.us.3 = icmp eq i8 %32, %33
  br i1 %cmp36.us.3, label %for.inc.us.3, label %for.end.us.3.split.loop.exit544

for.inc.us.3:                                     ; preds = %land.rhs.us.3
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 1
  %exitcond.3.not = icmp eq i64 %indvars.iv.next.3, %wide.trip.count.3
  br i1 %exitcond.3.not, label %for.end.us.3, label %land.rhs.us.3

for.end.us.3.split.loop.exit544:                  ; preds = %land.rhs.us.3
  %34 = trunc nuw nsw i64 %indvars.iv.3 to i32
  br label %for.end.us.3

for.end.us.3:                                     ; preds = %for.inc.us.3, %for.end.us.3.split.loop.exit544
  %len.0.lcssa.us.3 = phi i32 [ %34, %for.end.us.3.split.loop.exit544 ], [ %umax, %for.inc.us.3 ]
  %cmp39.not.us.3 = icmp ult i32 %len.0.lcssa.us.3, %.fr
  br i1 %cmp39.not.us.3, label %if.end42.us.3, label %if.then41

if.end42.us.3:                                    ; preds = %for.end.us.3
  %cmp43.us.3 = icmp ugt i32 %len.0.lcssa.us.3, %rep_len.3.ph.us.2
  %spec.select.us.3 = select i1 %cmp43.us.3, i32 3, i32 %rep_index.3.ph.us.2
  %spec.select388.us.3 = call i32 @llvm.umax.i32(i32 %len.0.lcssa.us.3, i32 %rep_len.3.ph.us.2)
  br label %for.end52

for.inc.us:                                       ; preds = %land.rhs.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end.us, label %land.rhs.us

for.cond.preheader.split:                         ; preds = %for.cond.preheader
  %cmp39.not = icmp ugt i32 %.fr, 2
  br i1 %cmp39.not, label %for.body.us445.preheader, label %for.body.preheader

for.body.preheader:                               ; preds = %for.cond.preheader.split
  br i1 %cmp17.not.us455, label %lor.lhs.false, label %for.inc48

for.body.us445.preheader:                         ; preds = %for.cond.preheader.split
  br i1 %cmp17.not.us455, label %lor.lhs.false.us456, label %for.inc48.us462

lor.lhs.false.us456:                              ; preds = %for.body.us445.preheader
  %35 = load i8, ptr %add.ptr.i, align 1
  %36 = load i8, ptr %add.ptr12.us453, align 1
  %cmp23.not.us457 = icmp ne i8 %35, %36
  %spec.select = zext i1 %cmp23.not.us457 to i32
  %spec.select546 = select i1 %cmp23.not.us457, i32 0, i32 2
  br label %for.inc48.us462

for.inc48.us462:                                  ; preds = %lor.lhs.false.us456, %for.body.us445.preheader
  %cmp43.us459.1 = phi i32 [ 1, %for.body.us445.preheader ], [ %spec.select, %lor.lhs.false.us456 ]
  %rep_len.3.ph.us464 = phi i32 [ 0, %for.body.us445.preheader ], [ %spec.select546, %lor.lhs.false.us456 ]
  %arrayidx.us450.1 = getelementptr inbounds i8, ptr %pcoder, i64 744
  %37 = load i32, ptr %arrayidx.us450.1, align 4
  %idx.ext.us451.1 = zext i32 %37 to i64
  %idx.neg.us452.1 = sub nsw i64 0, %idx.ext.us451.1
  %add.ptr12.us453.1 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.neg.us452.1
  %add.ptr13.us454.1 = getelementptr inbounds i8, ptr %add.ptr12.us453.1, i64 -1
  %38 = load i8, ptr %add.ptr13.us454.1, align 1
  %cmp17.not.us455.1 = icmp eq i8 %6, %38
  br i1 %cmp17.not.us455.1, label %lor.lhs.false.us456.1, label %for.inc48.us462.1

lor.lhs.false.us456.1:                            ; preds = %for.inc48.us462
  %39 = load i8, ptr %add.ptr.i, align 1
  %40 = load i8, ptr %add.ptr12.us453.1, align 1
  %cmp23.not.us457.1 = icmp eq i8 %39, %40
  %spec.select547 = select i1 %cmp23.not.us457.1, i32 %cmp43.us459.1, i32 0
  %spec.select548 = select i1 %cmp23.not.us457.1, i32 2, i32 %rep_len.3.ph.us464
  br label %for.inc48.us462.1

for.inc48.us462.1:                                ; preds = %lor.lhs.false.us456.1, %for.inc48.us462
  %rep_index.3.ph.us463.1 = phi i32 [ 0, %for.inc48.us462 ], [ %spec.select547, %lor.lhs.false.us456.1 ]
  %rep_len.3.ph.us464.1 = phi i32 [ %rep_len.3.ph.us464, %for.inc48.us462 ], [ %spec.select548, %lor.lhs.false.us456.1 ]
  %arrayidx.us450.2 = getelementptr inbounds i8, ptr %pcoder, i64 748
  %41 = load i32, ptr %arrayidx.us450.2, align 4
  %idx.ext.us451.2 = zext i32 %41 to i64
  %idx.neg.us452.2 = sub nsw i64 0, %idx.ext.us451.2
  %add.ptr12.us453.2 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.neg.us452.2
  %add.ptr13.us454.2 = getelementptr inbounds i8, ptr %add.ptr12.us453.2, i64 -1
  %42 = load i8, ptr %add.ptr13.us454.2, align 1
  %cmp17.not.us455.2 = icmp eq i8 %6, %42
  br i1 %cmp17.not.us455.2, label %lor.lhs.false.us456.2, label %for.inc48.us462.2

lor.lhs.false.us456.2:                            ; preds = %for.inc48.us462.1
  %43 = load i8, ptr %add.ptr.i, align 1
  %44 = load i8, ptr %add.ptr12.us453.2, align 1
  %cmp23.not.us457.2 = icmp eq i8 %43, %44
  br i1 %cmp23.not.us457.2, label %for.cond27.preheader.us467.2, label %for.inc48.us462.2

for.cond27.preheader.us467.2:                     ; preds = %lor.lhs.false.us456.2
  %cmp43.us459.2 = icmp ult i32 %rep_len.3.ph.us464.1, 2
  %spec.select.us460.2 = select i1 %cmp43.us459.2, i32 2, i32 %rep_index.3.ph.us463.1
  br label %for.inc48.us462.2

for.inc48.us462.2:                                ; preds = %for.cond27.preheader.us467.2, %lor.lhs.false.us456.2, %for.inc48.us462.1
  %rep_index.3.ph.us463.2 = phi i32 [ %spec.select.us460.2, %for.cond27.preheader.us467.2 ], [ %rep_index.3.ph.us463.1, %for.inc48.us462.1 ], [ %rep_index.3.ph.us463.1, %lor.lhs.false.us456.2 ]
  %rep_len.3.ph.us464.2 = phi i32 [ 2, %for.cond27.preheader.us467.2 ], [ %rep_len.3.ph.us464.1, %for.inc48.us462.1 ], [ %rep_len.3.ph.us464.1, %lor.lhs.false.us456.2 ]
  %arrayidx.us450.3 = getelementptr inbounds i8, ptr %pcoder, i64 752
  %45 = load i32, ptr %arrayidx.us450.3, align 4
  %idx.ext.us451.3 = zext i32 %45 to i64
  %idx.neg.us452.3 = sub nsw i64 0, %idx.ext.us451.3
  %add.ptr12.us453.3 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.neg.us452.3
  %add.ptr13.us454.3 = getelementptr inbounds i8, ptr %add.ptr12.us453.3, i64 -1
  %46 = load i8, ptr %add.ptr13.us454.3, align 1
  %cmp17.not.us455.3 = icmp eq i8 %6, %46
  br i1 %cmp17.not.us455.3, label %lor.lhs.false.us456.3, label %for.end52

lor.lhs.false.us456.3:                            ; preds = %for.inc48.us462.2
  %47 = load i8, ptr %add.ptr.i, align 1
  %48 = load i8, ptr %add.ptr12.us453.3, align 1
  %cmp23.not.us457.3 = icmp eq i8 %47, %48
  br i1 %cmp23.not.us457.3, label %for.cond27.preheader.us467.3, label %for.end52

for.cond27.preheader.us467.3:                     ; preds = %lor.lhs.false.us456.3
  %cmp43.us459.3 = icmp ult i32 %rep_len.3.ph.us464.2, 2
  %spec.select.us460.3 = select i1 %cmp43.us459.3, i32 3, i32 %rep_index.3.ph.us463.2
  br label %for.end52

if.then9:                                         ; preds = %if.end
  store i32 -1, ptr %back_res, align 4
  store i32 1, ptr %len_res, align 4
  br label %cleanup260

lor.lhs.false:                                    ; preds = %for.body.preheader
  %49 = load i8, ptr %add.ptr.i, align 1
  %50 = load i8, ptr %add.ptr12.us453, align 1
  %cmp23.not = icmp eq i8 %49, %50
  br i1 %cmp23.not, label %if.then41.thread, label %for.inc48

if.then41.thread:                                 ; preds = %lor.lhs.false.3, %lor.lhs.false.2, %lor.lhs.false.1, %lor.lhs.false
  %.us-phi440.ph = phi i32 [ 3, %lor.lhs.false.3 ], [ 2, %lor.lhs.false.2 ], [ 1, %lor.lhs.false.1 ], [ 0, %lor.lhs.false ]
  store i32 %.us-phi440.ph, ptr %back_res, align 4
  store i32 2, ptr %len_res, align 4
  br label %if.then.i

if.then41:                                        ; preds = %for.end.us, %for.end.us.1, %for.end.us.2, %for.end.us.3
  %.us-phi440 = phi i32 [ 0, %for.end.us ], [ 1, %for.end.us.1 ], [ 2, %for.end.us.2 ], [ 3, %for.end.us.3 ]
  %.us-phi442 = phi i32 [ %len.0.lcssa.us, %for.end.us ], [ %len.0.lcssa.us.1, %for.end.us.1 ], [ %len.0.lcssa.us.2, %for.end.us.2 ], [ %len.0.lcssa.us.3, %for.end.us.3 ]
  store i32 %.us-phi440, ptr %back_res, align 4
  store i32 %.us-phi442, ptr %len_res, align 4
  %sub = add i32 %.us-phi442, -1
  %cmp.not.i = icmp eq i32 %sub, 0
  br i1 %cmp.not.i, label %cleanup260, label %if.then.i

if.then.i:                                        ; preds = %if.then41.thread, %if.then41
  %sub534 = phi i32 [ 1, %if.then41.thread ], [ %sub, %if.then41 ]
  %skip.i = getelementptr inbounds i8, ptr %mf, i64 56
  %51 = load ptr, ptr %skip.i, align 8
  call void %51(ptr noundef nonnull %mf, i32 noundef %sub534) #4
  %52 = load i32, ptr %read_ahead, align 4
  %add.i = add i32 %52, %sub534
  store i32 %add.i, ptr %read_ahead, align 4
  br label %cleanup260

for.inc48:                                        ; preds = %lor.lhs.false, %for.body.preheader
  %arrayidx.1 = getelementptr inbounds i8, ptr %pcoder, i64 744
  %53 = load i32, ptr %arrayidx.1, align 4
  %idx.ext.1 = zext i32 %53 to i64
  %idx.neg.1 = sub nsw i64 0, %idx.ext.1
  %add.ptr12.1 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.neg.1
  %add.ptr13.1 = getelementptr inbounds i8, ptr %add.ptr12.1, i64 -1
  %54 = load i8, ptr %add.ptr13.1, align 1
  %cmp17.not.1 = icmp eq i8 %6, %54
  br i1 %cmp17.not.1, label %lor.lhs.false.1, label %for.inc48.1

lor.lhs.false.1:                                  ; preds = %for.inc48
  %55 = load i8, ptr %add.ptr.i, align 1
  %56 = load i8, ptr %add.ptr12.1, align 1
  %cmp23.not.1 = icmp eq i8 %55, %56
  br i1 %cmp23.not.1, label %if.then41.thread, label %for.inc48.1

for.inc48.1:                                      ; preds = %lor.lhs.false.1, %for.inc48
  %arrayidx.2 = getelementptr inbounds i8, ptr %pcoder, i64 748
  %57 = load i32, ptr %arrayidx.2, align 4
  %idx.ext.2 = zext i32 %57 to i64
  %idx.neg.2 = sub nsw i64 0, %idx.ext.2
  %add.ptr12.2 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.neg.2
  %add.ptr13.2 = getelementptr inbounds i8, ptr %add.ptr12.2, i64 -1
  %58 = load i8, ptr %add.ptr13.2, align 1
  %cmp17.not.2 = icmp eq i8 %6, %58
  br i1 %cmp17.not.2, label %lor.lhs.false.2, label %for.inc48.2

lor.lhs.false.2:                                  ; preds = %for.inc48.1
  %59 = load i8, ptr %add.ptr.i, align 1
  %60 = load i8, ptr %add.ptr12.2, align 1
  %cmp23.not.2 = icmp eq i8 %59, %60
  br i1 %cmp23.not.2, label %if.then41.thread, label %for.inc48.2

for.inc48.2:                                      ; preds = %lor.lhs.false.2, %for.inc48.1
  %arrayidx.3 = getelementptr inbounds i8, ptr %pcoder, i64 752
  %61 = load i32, ptr %arrayidx.3, align 4
  %idx.ext.3 = zext i32 %61 to i64
  %idx.neg.3 = sub nsw i64 0, %idx.ext.3
  %add.ptr12.3 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.neg.3
  %add.ptr13.3 = getelementptr inbounds i8, ptr %add.ptr12.3, i64 -1
  %62 = load i8, ptr %add.ptr13.3, align 1
  %cmp17.not.3 = icmp eq i8 %6, %62
  br i1 %cmp17.not.3, label %lor.lhs.false.3, label %for.end52

lor.lhs.false.3:                                  ; preds = %for.inc48.2
  %63 = load i8, ptr %add.ptr.i, align 1
  %64 = load i8, ptr %add.ptr12.3, align 1
  %cmp23.not.3 = icmp eq i8 %63, %64
  br i1 %cmp23.not.3, label %if.then41.thread, label %for.end52

for.end52:                                        ; preds = %for.inc48.2, %lor.lhs.false.3, %for.inc48.us462.2, %lor.lhs.false.us456.3, %for.cond27.preheader.us467.3, %for.inc48.us.2, %lor.lhs.false.us.3, %if.end42.us.3
  %.us-phi443 = phi i32 [ %spec.select.us.3, %if.end42.us.3 ], [ %rep_index.3.ph.us.2, %for.inc48.us.2 ], [ %rep_index.3.ph.us.2, %lor.lhs.false.us.3 ], [ %spec.select.us460.3, %for.cond27.preheader.us467.3 ], [ %rep_index.3.ph.us463.2, %for.inc48.us462.2 ], [ %rep_index.3.ph.us463.2, %lor.lhs.false.us456.3 ], [ 0, %lor.lhs.false.3 ], [ 0, %for.inc48.2 ]
  %.us-phi444 = phi i32 [ %spec.select388.us.3, %if.end42.us.3 ], [ %rep_len.3.ph.us.2, %for.inc48.us.2 ], [ %rep_len.3.ph.us.2, %lor.lhs.false.us.3 ], [ 2, %for.cond27.preheader.us467.3 ], [ %rep_len.3.ph.us464.2, %for.inc48.us462.2 ], [ %rep_len.3.ph.us464.2, %lor.lhs.false.us456.3 ], [ 0, %lor.lhs.false.3 ], [ 0, %for.inc48.2 ]
  %cmp53.not = icmp ult i32 %len_main.0, %.fr
  br i1 %cmp53.not, label %if.end62, label %if.then55

if.then55:                                        ; preds = %for.end52
  %matches56 = getelementptr inbounds i8, ptr %pcoder, i64 756
  %65 = load i32, ptr %matches_count, align 4
  %sub57 = add i32 %65, -1
  %idxprom58 = zext i32 %sub57 to i64
  %dist = getelementptr inbounds [274 x %struct.lzma_match], ptr %matches56, i64 0, i64 %idxprom58, i32 1
  %66 = load i32, ptr %dist, align 4
  %add60 = add i32 %66, 4
  store i32 %add60, ptr %back_res, align 4
  store i32 %len_main.0, ptr %len_res, align 4
  %sub61 = add i32 %len_main.0, -1
  %cmp.not.i398 = icmp eq i32 %sub61, 0
  br i1 %cmp.not.i398, label %cleanup260, label %if.then.i399

if.then.i399:                                     ; preds = %if.then55
  %skip.i400 = getelementptr inbounds i8, ptr %mf, i64 56
  %67 = load ptr, ptr %skip.i400, align 8
  call void %67(ptr noundef nonnull %mf, i32 noundef %sub61) #4
  %68 = load i32, ptr %read_ahead, align 4
  %add.i402 = add i32 %68, %sub61
  store i32 %add.i402, ptr %read_ahead, align 4
  br label %cleanup260

if.end62:                                         ; preds = %for.end52
  %cmp63 = icmp ugt i32 %len_main.0, 1
  br i1 %cmp63, label %if.then65, label %if.end108

if.then65:                                        ; preds = %if.end62
  %matches66 = getelementptr inbounds i8, ptr %pcoder, i64 756
  %69 = load i32, ptr %matches_count, align 4
  %sub67 = add i32 %69, -1
  %idxprom68 = zext i32 %sub67 to i64
  %dist70 = getelementptr inbounds [274 x %struct.lzma_match], ptr %matches66, i64 0, i64 %idxprom68, i32 1
  %back_main.0475 = load i32, ptr %dist70, align 4
  %cmp71476 = icmp ugt i32 %69, 1
  br i1 %cmp71476, label %land.rhs73.preheader, label %while.end

land.rhs73.preheader:                             ; preds = %if.then65
  %70 = zext i32 %69 to i64
  br label %land.rhs73

land.rhs73:                                       ; preds = %land.rhs73.preheader, %if.end91
  %indvars.iv507 = phi i64 [ %70, %land.rhs73.preheader ], [ %indvars.iv.next508, %if.end91 ]
  %back_main.0478 = phi i32 [ %back_main.0475, %land.rhs73.preheader ], [ %73, %if.end91 ]
  %len_main.1477 = phi i32 [ %len_main.0, %land.rhs73.preheader ], [ %72, %if.end91 ]
  %71 = add nsw i64 %indvars.iv507, -2
  %arrayidx77 = getelementptr inbounds [274 x %struct.lzma_match], ptr %matches66, i64 0, i64 %71
  %72 = load i32, ptr %arrayidx77, align 4
  %add79 = add i32 %72, 1
  %cmp80 = icmp eq i32 %len_main.1477, %add79
  br i1 %cmp80, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs73
  %shr = lshr i32 %back_main.0478, 7
  %dist87 = getelementptr inbounds i8, ptr %arrayidx77, i64 4
  %73 = load i32, ptr %dist87, align 4
  %cmp88 = icmp ugt i32 %shr, %73
  br i1 %cmp88, label %if.end91, label %while.end

if.end91:                                         ; preds = %while.body
  %indvars.iv.next508 = add nsw i64 %indvars.iv507, -1
  %indvars = trunc i64 %indvars.iv.next508 to i32
  store i32 %indvars, ptr %matches_count, align 4
  %cmp71 = icmp ugt i32 %indvars, 1
  br i1 %cmp71, label %land.rhs73, label %while.end

while.end:                                        ; preds = %land.rhs73, %while.body, %if.end91, %if.then65
  %len_main.1.lcssa = phi i32 [ %len_main.0, %if.then65 ], [ %72, %if.end91 ], [ %len_main.1477, %while.body ], [ %len_main.1477, %land.rhs73 ]
  %back_main.0.lcssa = phi i32 [ %back_main.0475, %if.then65 ], [ %73, %if.end91 ], [ %back_main.0478, %while.body ], [ %back_main.0478, %land.rhs73 ]
  %cmp102 = icmp eq i32 %len_main.1.lcssa, 2
  %cmp104 = icmp ugt i32 %back_main.0.lcssa, 127
  %or.cond = select i1 %cmp102, i1 %cmp104, i1 false
  %spec.store.select = select i1 %or.cond, i32 1, i32 %len_main.1.lcssa
  br label %if.end108

if.end108:                                        ; preds = %while.end, %if.end62
  %back_main.1 = phi i32 [ %back_main.0.lcssa, %while.end ], [ 0, %if.end62 ]
  %len_main.2 = phi i32 [ %spec.store.select, %while.end ], [ %len_main.0, %if.end62 ]
  %len_main.2.fr = freeze i32 %len_main.2
  %cmp109 = icmp ugt i32 %.us-phi444, 1
  br i1 %cmp109, label %if.then111, label %if.end132

if.then111:                                       ; preds = %if.end108
  %add112 = add i32 %.us-phi444, 1
  %cmp113.not = icmp ult i32 %add112, %len_main.2.fr
  br i1 %cmp113.not, label %lor.lhs.false115, label %mf_skip.exit409

lor.lhs.false115:                                 ; preds = %if.then111
  %add116 = add i32 %.us-phi444, 2
  %cmp117 = icmp uge i32 %add116, %len_main.2.fr
  %cmp120 = icmp ugt i32 %back_main.1, 512
  %or.cond269 = select i1 %cmp117, i1 %cmp120, i1 false
  br i1 %or.cond269, label %mf_skip.exit409, label %lor.lhs.false122

lor.lhs.false122:                                 ; preds = %lor.lhs.false115
  %add123 = add i32 %.us-phi444, 3
  %cmp124 = icmp uge i32 %add123, %len_main.2.fr
  %cmp127 = icmp ugt i32 %back_main.1, 32768
  %or.cond270 = select i1 %cmp124, i1 %cmp127, i1 false
  br i1 %or.cond270, label %mf_skip.exit409, label %if.end132

mf_skip.exit409:                                  ; preds = %lor.lhs.false122, %lor.lhs.false115, %if.then111
  store i32 %.us-phi443, ptr %back_res, align 4
  store i32 %.us-phi444, ptr %len_res, align 4
  %sub130 = add i32 %.us-phi444, -1
  %skip.i406 = getelementptr inbounds i8, ptr %mf, i64 56
  %74 = load ptr, ptr %skip.i406, align 8
  call void %74(ptr noundef nonnull %mf, i32 noundef %sub130) #4
  %75 = load i32, ptr %read_ahead, align 4
  %add.i408 = add i32 %75, %sub130
  store i32 %add.i408, ptr %read_ahead, align 4
  br label %cleanup260

if.end132:                                        ; preds = %lor.lhs.false122, %if.end108
  %cmp133 = icmp ult i32 %len_main.2.fr, 2
  %or.cond271 = or i1 %cmp28434.not, %cmp133
  br i1 %or.cond271, label %if.then138, label %if.end139

if.then138:                                       ; preds = %if.end132
  store i32 -1, ptr %back_res, align 4
  store i32 1, ptr %len_res, align 4
  br label %cleanup260

if.end139:                                        ; preds = %if.end132
  %matches_count140 = getelementptr inbounds i8, ptr %pcoder, i64 2948
  %matches141 = getelementptr inbounds i8, ptr %pcoder, i64 756
  %call143 = call i32 @lzma_mf_find(ptr noundef nonnull %mf, ptr noundef nonnull %matches_count140, ptr noundef nonnull %matches141) #4
  %longest_match_length144 = getelementptr inbounds i8, ptr %pcoder, i64 2952
  store i32 %call143, ptr %longest_match_length144, align 8
  %cmp146 = icmp ugt i32 %call143, 1
  br i1 %cmp146, label %if.then148, label %if.end192

if.then148:                                       ; preds = %if.end139
  %76 = load i32, ptr %matches_count140, align 4
  %sub151 = add i32 %76, -1
  %idxprom152 = zext i32 %sub151 to i64
  %dist154 = getelementptr inbounds [274 x %struct.lzma_match], ptr %matches141, i64 0, i64 %idxprom152, i32 1
  %77 = load i32, ptr %dist154, align 4
  %cmp156.not = icmp uge i32 %call143, %len_main.2.fr
  %cmp159 = icmp ult i32 %77, %back_main.1
  %or.cond389 = select i1 %cmp156.not, i1 %cmp159, i1 false
  br i1 %or.cond389, label %if.then187, label %lor.lhs.false161

lor.lhs.false161:                                 ; preds = %if.then148
  %add163 = add i32 %len_main.2.fr, 1
  %cmp164 = icmp eq i32 %call143, %add163
  %shr167 = lshr i32 %77, 7
  %cmp168 = icmp ule i32 %shr167, %back_main.1
  %or.cond390.not428 = select i1 %cmp164, i1 %cmp168, i1 false
  %cmp173 = icmp ugt i32 %call143, %add163
  %or.cond427 = or i1 %cmp173, %or.cond390.not428
  br i1 %or.cond427, label %if.then187, label %lor.lhs.false175

lor.lhs.false175:                                 ; preds = %lor.lhs.false161
  %add177 = add i32 %call143, 1
  %cmp178 = icmp uge i32 %add177, %len_main.2.fr
  %cmp181 = icmp ugt i32 %len_main.2.fr, 2
  %or.cond272 = and i1 %cmp181, %cmp178
  %shr184 = lshr i32 %back_main.1, 7
  %cmp185 = icmp ugt i32 %shr184, %77
  %or.cond391 = select i1 %or.cond272, i1 %cmp185, i1 false
  br i1 %or.cond391, label %if.then187, label %if.end192

if.then187:                                       ; preds = %lor.lhs.false175, %lor.lhs.false161, %if.then148
  store i32 -1, ptr %back_res, align 4
  store i32 1, ptr %len_res, align 4
  br label %cleanup260

if.end192:                                        ; preds = %lor.lhs.false175, %if.end139
  %sub193 = add i32 %len_main.2.fr, -1
  %78 = load i8, ptr %add.ptr.i, align 1
  %arrayidx215 = getelementptr inbounds i8, ptr %add.ptr.i, i64 1
  %cmp225484 = icmp ugt i32 %sub193, 2
  %79 = load i32, ptr %reps, align 4
  %idx.ext204.us = zext i32 %79 to i64
  %idx.neg205.us = sub nsw i64 0, %idx.ext204.us
  %add.ptr206.us = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg205.us
  %add.ptr207.us = getelementptr inbounds i8, ptr %add.ptr206.us, i64 -1
  %80 = load i8, ptr %add.ptr207.us, align 1
  %cmp212.not.us = icmp eq i8 %78, %80
  br i1 %cmp225484, label %for.body199.us.preheader, label %for.body199.preheader

for.body199.preheader:                            ; preds = %if.end192
  br i1 %cmp212.not.us, label %lor.lhs.false214, label %for.inc249

for.body199.us.preheader:                         ; preds = %if.end192
  br i1 %cmp212.not.us, label %lor.lhs.false214.us, label %for.inc249.us

lor.lhs.false214.us:                              ; preds = %for.body199.us.preheader
  %81 = load i8, ptr %arrayidx215, align 1
  %82 = load i8, ptr %add.ptr206.us, align 1
  %cmp219.not.us = icmp eq i8 %81, %82
  br i1 %cmp219.not.us, label %land.rhs227.us.preheader, label %for.inc249.us

land.rhs227.us.preheader:                         ; preds = %lor.lhs.false214.us
  %wide.trip.count520 = zext i32 %sub193 to i64
  br label %land.rhs227.us

for.cond224.us:                                   ; preds = %land.rhs227.us
  %indvars.iv.next517 = add nuw nsw i64 %indvars.iv516, 1
  %exitcond521.not = icmp eq i64 %indvars.iv.next517, %wide.trip.count520
  br i1 %exitcond521.not, label %cleanup251, label %land.rhs227.us

land.rhs227.us:                                   ; preds = %land.rhs227.us.preheader, %for.cond224.us
  %indvars.iv516 = phi i64 [ 2, %land.rhs227.us.preheader ], [ %indvars.iv.next517, %for.cond224.us ]
  %arrayidx229.us = getelementptr inbounds i8, ptr %add.ptr.i, i64 %indvars.iv516
  %83 = load i8, ptr %arrayidx229.us, align 1
  %arrayidx232.us = getelementptr inbounds i8, ptr %add.ptr207.us, i64 %indvars.iv516
  %84 = load i8, ptr %arrayidx232.us, align 1
  %cmp234.us = icmp eq i8 %83, %84
  br i1 %cmp234.us, label %for.cond224.us, label %for.inc249.us

for.inc249.us:                                    ; preds = %land.rhs227.us, %lor.lhs.false214.us, %for.body199.us.preheader
  %arrayidx203.us.1 = getelementptr inbounds i8, ptr %pcoder, i64 744
  %85 = load i32, ptr %arrayidx203.us.1, align 4
  %idx.ext204.us.1 = zext i32 %85 to i64
  %idx.neg205.us.1 = sub nsw i64 0, %idx.ext204.us.1
  %add.ptr206.us.1 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg205.us.1
  %add.ptr207.us.1 = getelementptr inbounds i8, ptr %add.ptr206.us.1, i64 -1
  %86 = load i8, ptr %add.ptr207.us.1, align 1
  %cmp212.not.us.1 = icmp eq i8 %78, %86
  br i1 %cmp212.not.us.1, label %lor.lhs.false214.us.1, label %for.inc249.us.1

lor.lhs.false214.us.1:                            ; preds = %for.inc249.us
  %87 = load i8, ptr %arrayidx215, align 1
  %88 = load i8, ptr %add.ptr206.us.1, align 1
  %cmp219.not.us.1 = icmp eq i8 %87, %88
  br i1 %cmp219.not.us.1, label %land.rhs227.us.preheader.1, label %for.inc249.us.1

land.rhs227.us.preheader.1:                       ; preds = %lor.lhs.false214.us.1
  %wide.trip.count520.1 = zext i32 %sub193 to i64
  br label %land.rhs227.us.1

land.rhs227.us.1:                                 ; preds = %for.cond224.us.1, %land.rhs227.us.preheader.1
  %indvars.iv516.1 = phi i64 [ 2, %land.rhs227.us.preheader.1 ], [ %indvars.iv.next517.1, %for.cond224.us.1 ]
  %arrayidx229.us.1 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %indvars.iv516.1
  %89 = load i8, ptr %arrayidx229.us.1, align 1
  %arrayidx232.us.1 = getelementptr inbounds i8, ptr %add.ptr207.us.1, i64 %indvars.iv516.1
  %90 = load i8, ptr %arrayidx232.us.1, align 1
  %cmp234.us.1 = icmp eq i8 %89, %90
  br i1 %cmp234.us.1, label %for.cond224.us.1, label %for.inc249.us.1

for.inc249.us.1:                                  ; preds = %land.rhs227.us.1, %lor.lhs.false214.us.1, %for.inc249.us
  %arrayidx203.us.2 = getelementptr inbounds i8, ptr %pcoder, i64 748
  %91 = load i32, ptr %arrayidx203.us.2, align 4
  %idx.ext204.us.2 = zext i32 %91 to i64
  %idx.neg205.us.2 = sub nsw i64 0, %idx.ext204.us.2
  %add.ptr206.us.2 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg205.us.2
  %add.ptr207.us.2 = getelementptr inbounds i8, ptr %add.ptr206.us.2, i64 -1
  %92 = load i8, ptr %add.ptr207.us.2, align 1
  %cmp212.not.us.2 = icmp eq i8 %78, %92
  br i1 %cmp212.not.us.2, label %lor.lhs.false214.us.2, label %for.inc249.us.2

for.cond224.us.1:                                 ; preds = %land.rhs227.us.1
  %indvars.iv.next517.1 = add nuw nsw i64 %indvars.iv516.1, 1
  %exitcond521.1.not = icmp eq i64 %indvars.iv.next517.1, %wide.trip.count520.1
  br i1 %exitcond521.1.not, label %cleanup251, label %land.rhs227.us.1

lor.lhs.false214.us.2:                            ; preds = %for.inc249.us.1
  %93 = load i8, ptr %arrayidx215, align 1
  %94 = load i8, ptr %add.ptr206.us.2, align 1
  %cmp219.not.us.2 = icmp eq i8 %93, %94
  br i1 %cmp219.not.us.2, label %land.rhs227.us.preheader.2, label %for.inc249.us.2

land.rhs227.us.preheader.2:                       ; preds = %lor.lhs.false214.us.2
  %wide.trip.count520.2 = zext i32 %sub193 to i64
  br label %land.rhs227.us.2

land.rhs227.us.2:                                 ; preds = %for.cond224.us.2, %land.rhs227.us.preheader.2
  %indvars.iv516.2 = phi i64 [ 2, %land.rhs227.us.preheader.2 ], [ %indvars.iv.next517.2, %for.cond224.us.2 ]
  %arrayidx229.us.2 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %indvars.iv516.2
  %95 = load i8, ptr %arrayidx229.us.2, align 1
  %arrayidx232.us.2 = getelementptr inbounds i8, ptr %add.ptr207.us.2, i64 %indvars.iv516.2
  %96 = load i8, ptr %arrayidx232.us.2, align 1
  %cmp234.us.2 = icmp eq i8 %95, %96
  br i1 %cmp234.us.2, label %for.cond224.us.2, label %for.inc249.us.2

for.inc249.us.2:                                  ; preds = %land.rhs227.us.2, %lor.lhs.false214.us.2, %for.inc249.us.1
  %arrayidx203.us.3 = getelementptr inbounds i8, ptr %pcoder, i64 752
  %97 = load i32, ptr %arrayidx203.us.3, align 4
  %idx.ext204.us.3 = zext i32 %97 to i64
  %idx.neg205.us.3 = sub nsw i64 0, %idx.ext204.us.3
  %add.ptr206.us.3 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg205.us.3
  %add.ptr207.us.3 = getelementptr inbounds i8, ptr %add.ptr206.us.3, i64 -1
  %98 = load i8, ptr %add.ptr207.us.3, align 1
  %cmp212.not.us.3 = icmp eq i8 %78, %98
  br i1 %cmp212.not.us.3, label %lor.lhs.false214.us.3, label %for.end253

for.cond224.us.2:                                 ; preds = %land.rhs227.us.2
  %indvars.iv.next517.2 = add nuw nsw i64 %indvars.iv516.2, 1
  %exitcond521.2.not = icmp eq i64 %indvars.iv.next517.2, %wide.trip.count520.2
  br i1 %exitcond521.2.not, label %cleanup251, label %land.rhs227.us.2

lor.lhs.false214.us.3:                            ; preds = %for.inc249.us.2
  %99 = load i8, ptr %arrayidx215, align 1
  %100 = load i8, ptr %add.ptr206.us.3, align 1
  %cmp219.not.us.3 = icmp eq i8 %99, %100
  br i1 %cmp219.not.us.3, label %land.rhs227.us.preheader.3, label %for.end253

land.rhs227.us.preheader.3:                       ; preds = %lor.lhs.false214.us.3
  %wide.trip.count520.3 = zext i32 %sub193 to i64
  br label %land.rhs227.us.3

land.rhs227.us.3:                                 ; preds = %for.cond224.us.3, %land.rhs227.us.preheader.3
  %indvars.iv516.3 = phi i64 [ 2, %land.rhs227.us.preheader.3 ], [ %indvars.iv.next517.3, %for.cond224.us.3 ]
  %arrayidx229.us.3 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %indvars.iv516.3
  %101 = load i8, ptr %arrayidx229.us.3, align 1
  %arrayidx232.us.3 = getelementptr inbounds i8, ptr %add.ptr207.us.3, i64 %indvars.iv516.3
  %102 = load i8, ptr %arrayidx232.us.3, align 1
  %cmp234.us.3 = icmp eq i8 %101, %102
  br i1 %cmp234.us.3, label %for.cond224.us.3, label %for.end253

for.cond224.us.3:                                 ; preds = %land.rhs227.us.3
  %indvars.iv.next517.3 = add nuw nsw i64 %indvars.iv516.3, 1
  %exitcond521.3.not = icmp eq i64 %indvars.iv.next517.3, %wide.trip.count520.3
  br i1 %exitcond521.3.not, label %cleanup251, label %land.rhs227.us.3

lor.lhs.false214:                                 ; preds = %for.body199.preheader
  %103 = load i8, ptr %arrayidx215, align 1
  %104 = load i8, ptr %add.ptr206.us, align 1
  %cmp219.not = icmp eq i8 %103, %104
  br i1 %cmp219.not, label %cleanup251, label %for.inc249

for.inc249:                                       ; preds = %lor.lhs.false214, %for.body199.preheader
  %arrayidx203.1 = getelementptr inbounds i8, ptr %pcoder, i64 744
  %105 = load i32, ptr %arrayidx203.1, align 4
  %idx.ext204.1 = zext i32 %105 to i64
  %idx.neg205.1 = sub nsw i64 0, %idx.ext204.1
  %add.ptr206.1 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg205.1
  %add.ptr207.1 = getelementptr inbounds i8, ptr %add.ptr206.1, i64 -1
  %106 = load i8, ptr %add.ptr207.1, align 1
  %cmp212.not.1 = icmp eq i8 %78, %106
  br i1 %cmp212.not.1, label %lor.lhs.false214.1, label %for.inc249.1

lor.lhs.false214.1:                               ; preds = %for.inc249
  %107 = load i8, ptr %arrayidx215, align 1
  %108 = load i8, ptr %add.ptr206.1, align 1
  %cmp219.not.1 = icmp eq i8 %107, %108
  br i1 %cmp219.not.1, label %cleanup251, label %for.inc249.1

for.inc249.1:                                     ; preds = %lor.lhs.false214.1, %for.inc249
  %arrayidx203.2 = getelementptr inbounds i8, ptr %pcoder, i64 748
  %109 = load i32, ptr %arrayidx203.2, align 4
  %idx.ext204.2 = zext i32 %109 to i64
  %idx.neg205.2 = sub nsw i64 0, %idx.ext204.2
  %add.ptr206.2 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg205.2
  %add.ptr207.2 = getelementptr inbounds i8, ptr %add.ptr206.2, i64 -1
  %110 = load i8, ptr %add.ptr207.2, align 1
  %cmp212.not.2 = icmp eq i8 %78, %110
  br i1 %cmp212.not.2, label %lor.lhs.false214.2, label %for.inc249.2

lor.lhs.false214.2:                               ; preds = %for.inc249.1
  %111 = load i8, ptr %arrayidx215, align 1
  %112 = load i8, ptr %add.ptr206.2, align 1
  %cmp219.not.2 = icmp eq i8 %111, %112
  br i1 %cmp219.not.2, label %cleanup251, label %for.inc249.2

for.inc249.2:                                     ; preds = %lor.lhs.false214.2, %for.inc249.1
  %arrayidx203.3 = getelementptr inbounds i8, ptr %pcoder, i64 752
  %113 = load i32, ptr %arrayidx203.3, align 4
  %idx.ext204.3 = zext i32 %113 to i64
  %idx.neg205.3 = sub nsw i64 0, %idx.ext204.3
  %add.ptr206.3 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg205.3
  %add.ptr207.3 = getelementptr inbounds i8, ptr %add.ptr206.3, i64 -1
  %114 = load i8, ptr %add.ptr207.3, align 1
  %cmp212.not.3 = icmp eq i8 %78, %114
  br i1 %cmp212.not.3, label %lor.lhs.false214.3, label %for.end253

lor.lhs.false214.3:                               ; preds = %for.inc249.2
  %115 = load i8, ptr %arrayidx215, align 1
  %116 = load i8, ptr %add.ptr206.3, align 1
  %cmp219.not.3 = icmp eq i8 %115, %116
  br i1 %cmp219.not.3, label %cleanup251, label %for.end253

cleanup251:                                       ; preds = %for.cond224.us, %for.cond224.us.1, %for.cond224.us.2, %for.cond224.us.3, %lor.lhs.false214, %lor.lhs.false214.1, %lor.lhs.false214.2, %lor.lhs.false214.3
  store i32 -1, ptr %back_res, align 4
  store i32 1, ptr %len_res, align 4
  br label %cleanup260

for.end253:                                       ; preds = %land.rhs227.us.3, %for.inc249.2, %lor.lhs.false214.3, %for.inc249.us.2, %lor.lhs.false214.us.3
  %add254 = add i32 %back_main.1, 4
  store i32 %add254, ptr %back_res, align 4
  store i32 %len_main.2.fr, ptr %len_res, align 4
  %sub255 = add i32 %len_main.2.fr, -2
  %cmp.not.i410 = icmp eq i32 %sub255, 0
  br i1 %cmp.not.i410, label %cleanup260, label %if.then.i411

if.then.i411:                                     ; preds = %for.end253
  %skip.i412 = getelementptr inbounds i8, ptr %mf, i64 56
  %117 = load ptr, ptr %skip.i412, align 8
  call void %117(ptr noundef nonnull %mf, i32 noundef %sub255) #4
  %118 = load i32, ptr %read_ahead, align 4
  %add.i414 = add i32 %118, %sub255
  store i32 %add.i414, ptr %read_ahead, align 4
  br label %cleanup260

cleanup260:                                       ; preds = %if.then.i, %if.then41, %if.then.i411, %for.end253, %cleanup251, %if.then.i399, %if.then55, %if.then187, %if.then138, %mf_skip.exit409, %if.then9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %matches_count) #4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @lzma_mf_find(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
