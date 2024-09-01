; ModuleID = 'liblzma/lzma/lzma_encoder_optimum_fast.c'
source_filename = "liblzma/lzma/lzma_encoder_optimum_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_match = type { i32, i32 }

; Function Attrs: nounwind uwtable
define dso_local void @lzma_lzma_optimum_fast(ptr noundef %pcoder, ptr noalias noundef %mf, ptr noalias nocapture noundef writeonly %back_res, ptr noalias nocapture noundef writeonly %len_res) local_unnamed_addr #0 !dbg !74 {
entry:
  %matches_count = alloca i32, align 4, !DIAssignID !263
    #dbg_assign(i1 undef, !238, !DIExpression(), !263, ptr %matches_count, !DIExpression(), !264)
    #dbg_value(ptr %pcoder, !126, !DIExpression(), !264)
    #dbg_value(ptr %mf, !127, !DIExpression(), !264)
    #dbg_value(ptr %back_res, !128, !DIExpression(), !264)
    #dbg_value(ptr %len_res, !129, !DIExpression(), !264)
    #dbg_value(ptr %pcoder, !130, !DIExpression(), !264)
  %nice_len1 = getelementptr inbounds i8, ptr %mf, i64 96, !dbg !265
  %0 = load i32, ptr %nice_len1, align 8, !dbg !265
    #dbg_value(i32 %0, !235, !DIExpression(), !264)
  %.fr = freeze i32 %0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %matches_count) #4, !dbg !266
  %read_ahead = getelementptr inbounds i8, ptr %mf, i64 28, !dbg !267
  %1 = load i32, ptr %read_ahead, align 4, !dbg !267
  %cmp = icmp eq i32 %1, 0, !dbg !269
  br i1 %cmp, label %if.then, label %if.else, !dbg !270

if.then:                                          ; preds = %entry
  %matches = getelementptr inbounds i8, ptr %pcoder, i64 756, !dbg !271
  %call = call i32 @lzma_mf_find(ptr noundef nonnull %mf, ptr noundef nonnull %matches_count, ptr noundef nonnull %matches) #4, !dbg !273
    #dbg_value(i32 %call, !237, !DIExpression(), !264)
  br label %if.end, !dbg !274

if.else:                                          ; preds = %entry
  %longest_match_length = getelementptr inbounds i8, ptr %pcoder, i64 2952, !dbg !275
  %2 = load i32, ptr %longest_match_length, align 8, !dbg !275
    #dbg_value(i32 %2, !237, !DIExpression(), !264)
  %matches_count2 = getelementptr inbounds i8, ptr %pcoder, i64 2948, !dbg !277
  %3 = load i32, ptr %matches_count2, align 4, !dbg !277
  store i32 %3, ptr %matches_count, align 4, !dbg !278, !DIAssignID !279
    #dbg_assign(i32 %3, !238, !DIExpression(), !279, ptr %matches_count, !DIExpression(), !264)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %len_main.0 = phi i32 [ %call, %if.then ], [ %2, %if.else ], !dbg !280
    #dbg_value(i32 %len_main.0, !237, !DIExpression(), !264)
  %mf.val = load ptr, ptr %mf, align 8, !dbg !281
  %4 = getelementptr i8, ptr %mf, i64 24, !dbg !281
  %mf.val392 = load i32, ptr %4, align 8, !dbg !281
    #dbg_value(ptr undef, !282, !DIExpression(), !289)
  %idx.ext.i = zext i32 %mf.val392 to i64, !dbg !291
  %add.ptr.i = getelementptr inbounds i8, ptr %mf.val, i64 %idx.ext.i, !dbg !291
  %add.ptr = getelementptr inbounds i8, ptr %add.ptr.i, i64 -1, !dbg !292
    #dbg_value(ptr %add.ptr, !239, !DIExpression(), !264)
  %5 = getelementptr i8, ptr %mf, i64 36, !dbg !293
  %mf.val396 = load i32, ptr %5, align 4, !dbg !293
    #dbg_value(ptr undef, !294, !DIExpression(), !299)
  %sub.i = sub i32 %mf.val396, %mf.val392, !dbg !301
  %sub.i.fr = freeze i32 %sub.i, !dbg !293
  %add = add i32 %sub.i.fr, 1, !dbg !293
  %spec.select426 = call i32 @llvm.umin.i32(i32 %add, i32 273), !dbg !293
    #dbg_value(i32 %spec.select426, !242, !DIExpression(), !264)
  %cmp8 = icmp ult i32 %add, 2, !dbg !302
  br i1 %cmp8, label %if.then9, label %for.cond.preheader, !dbg !304

for.cond.preheader:                               ; preds = %if.end
  %reps = getelementptr inbounds i8, ptr %pcoder, i64 740
  %6 = load i8, ptr %add.ptr, align 1
    #dbg_value(i32 0, !243, !DIExpression(), !264)
    #dbg_value(i32 0, !245, !DIExpression(), !305)
    #dbg_value(i32 0, !244, !DIExpression(), !264)
  %cmp28434.not = icmp eq i32 %add, 2
    #dbg_value(i64 0, !245, !DIExpression(), !305)
    #dbg_value(i64 0, !245, !DIExpression(), !305)
  %7 = load i32, ptr %reps, align 4, !dbg !306
  %idx.ext.us451 = zext i32 %7 to i64, !dbg !307
  %idx.neg.us452 = sub nsw i64 0, %idx.ext.us451, !dbg !307
  %add.ptr12.us453 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.neg.us452, !dbg !307
  %add.ptr13.us454 = getelementptr inbounds i8, ptr %add.ptr12.us453, i64 -1, !dbg !308
    #dbg_value(ptr %add.ptr13.us454, !247, !DIExpression(), !309)
    #dbg_value(ptr %add.ptr13.us454, !247, !DIExpression(), !309)
  %8 = load i8, ptr %add.ptr13.us454, align 1, !dbg !310
  %cmp17.not.us455 = icmp eq i8 %6, %8, !dbg !310
  br i1 %cmp28434.not, label %for.cond.preheader.split, label %for.body.us.preheader

for.body.us.preheader:                            ; preds = %for.cond.preheader
  %umax = call i32 @llvm.umax.i32(i32 %spec.select426, i32 3), !dbg !312
    #dbg_value(i32 0, !243, !DIExpression(), !264)
    #dbg_value(i32 0, !244, !DIExpression(), !264)
  br i1 %cmp17.not.us455, label %lor.lhs.false.us, label %for.inc48.us, !dbg !310

lor.lhs.false.us:                                 ; preds = %for.body.us.preheader
  %9 = load i8, ptr %add.ptr.i, align 1, !dbg !310
  %10 = load i8, ptr %add.ptr12.us453, align 1, !dbg !310
  %cmp23.not.us = icmp eq i8 %9, %10, !dbg !310
  br i1 %cmp23.not.us, label %land.rhs.us.preheader, label %for.inc48.us, !dbg !313

land.rhs.us.preheader:                            ; preds = %lor.lhs.false.us
  %wide.trip.count = zext nneg i32 %umax to i64, !dbg !314
  br label %land.rhs.us, !dbg !317

land.rhs.us:                                      ; preds = %land.rhs.us.preheader, %for.inc.us
  %indvars.iv = phi i64 [ 2, %land.rhs.us.preheader ], [ %indvars.iv.next, %for.inc.us ]
    #dbg_value(i64 %indvars.iv, !251, !DIExpression(), !309)
  %arrayidx31.us = getelementptr inbounds i8, ptr %add.ptr, i64 %indvars.iv, !dbg !318
  %11 = load i8, ptr %arrayidx31.us, align 1, !dbg !318
  %arrayidx34.us = getelementptr inbounds i8, ptr %add.ptr13.us454, i64 %indvars.iv, !dbg !319
  %12 = load i8, ptr %arrayidx34.us, align 1, !dbg !319
  %cmp36.us = icmp eq i8 %11, %12, !dbg !320
  br i1 %cmp36.us, label %for.inc.us, label %for.end.us.split.loop.exit, !dbg !317

for.end.us.split.loop.exit:                       ; preds = %land.rhs.us
  %13 = trunc nuw nsw i64 %indvars.iv to i32
  br label %for.end.us, !dbg !321

for.end.us:                                       ; preds = %for.inc.us, %for.end.us.split.loop.exit
  %len.0.lcssa.us = phi i32 [ %13, %for.end.us.split.loop.exit ], [ %umax, %for.inc.us ], !dbg !323
  %cmp39.not.us = icmp ult i32 %len.0.lcssa.us, %.fr, !dbg !321
  br i1 %cmp39.not.us, label %for.inc48.us, label %if.then41, !dbg !324

for.inc48.us:                                     ; preds = %for.end.us, %lor.lhs.false.us, %for.body.us.preheader
  %rep_len.3.ph.us = phi i32 [ 0, %for.body.us.preheader ], [ 0, %lor.lhs.false.us ], [ %len.0.lcssa.us, %for.end.us ]
    #dbg_value(i32 %rep_len.3.ph.us, !243, !DIExpression(), !264)
    #dbg_value(i32 0, !244, !DIExpression(), !264)
    #dbg_value(i64 1, !245, !DIExpression(), !305)
  %arrayidx.us.1 = getelementptr inbounds i8, ptr %pcoder, i64 744, !dbg !306
  %14 = load i32, ptr %arrayidx.us.1, align 4, !dbg !306
  %idx.ext.us.1 = zext i32 %14 to i64, !dbg !307
  %idx.neg.us.1 = sub nsw i64 0, %idx.ext.us.1, !dbg !307
  %add.ptr12.us.1 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.neg.us.1, !dbg !307
  %add.ptr13.us.1 = getelementptr inbounds i8, ptr %add.ptr12.us.1, i64 -1, !dbg !308
    #dbg_value(ptr %add.ptr13.us.1, !247, !DIExpression(), !309)
  %15 = load i8, ptr %add.ptr13.us.1, align 1, !dbg !310
  %cmp17.not.us.1 = icmp eq i8 %6, %15, !dbg !310
  br i1 %cmp17.not.us.1, label %lor.lhs.false.us.1, label %for.inc48.us.1, !dbg !310

lor.lhs.false.us.1:                               ; preds = %for.inc48.us
  %16 = load i8, ptr %add.ptr.i, align 1, !dbg !310
  %17 = load i8, ptr %add.ptr12.us.1, align 1, !dbg !310
  %cmp23.not.us.1 = icmp eq i8 %16, %17, !dbg !310
  br i1 %cmp23.not.us.1, label %land.rhs.us.preheader.1, label %for.inc48.us.1, !dbg !313

land.rhs.us.preheader.1:                          ; preds = %lor.lhs.false.us.1
  %wide.trip.count.1 = zext nneg i32 %umax to i64, !dbg !314
  br label %land.rhs.us.1, !dbg !317

land.rhs.us.1:                                    ; preds = %for.inc.us.1, %land.rhs.us.preheader.1
  %indvars.iv.1 = phi i64 [ 2, %land.rhs.us.preheader.1 ], [ %indvars.iv.next.1, %for.inc.us.1 ]
    #dbg_value(i64 %indvars.iv.1, !251, !DIExpression(), !309)
  %arrayidx31.us.1 = getelementptr inbounds i8, ptr %add.ptr, i64 %indvars.iv.1, !dbg !318
  %18 = load i8, ptr %arrayidx31.us.1, align 1, !dbg !318
  %arrayidx34.us.1 = getelementptr inbounds i8, ptr %add.ptr13.us.1, i64 %indvars.iv.1, !dbg !319
  %19 = load i8, ptr %arrayidx34.us.1, align 1, !dbg !319
  %cmp36.us.1 = icmp eq i8 %18, %19, !dbg !320
  br i1 %cmp36.us.1, label %for.inc.us.1, label %for.end.us.1.split.loop.exit540, !dbg !317

for.inc.us.1:                                     ; preds = %land.rhs.us.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1, !dbg !325
    #dbg_value(i64 %indvars.iv.next.1, !251, !DIExpression(), !309)
  %exitcond.1.not = icmp eq i64 %indvars.iv.next.1, %wide.trip.count.1, !dbg !314
  br i1 %exitcond.1.not, label %for.end.us.1, label %land.rhs.us.1, !dbg !326, !llvm.loop !327

for.end.us.1.split.loop.exit540:                  ; preds = %land.rhs.us.1
  %20 = trunc nuw nsw i64 %indvars.iv.1 to i32
  br label %for.end.us.1, !dbg !321

for.end.us.1:                                     ; preds = %for.inc.us.1, %for.end.us.1.split.loop.exit540
  %len.0.lcssa.us.1 = phi i32 [ %20, %for.end.us.1.split.loop.exit540 ], [ %umax, %for.inc.us.1 ], !dbg !323
  %cmp39.not.us.1 = icmp ult i32 %len.0.lcssa.us.1, %.fr, !dbg !321
  br i1 %cmp39.not.us.1, label %if.end42.us.1, label %if.then41, !dbg !324

if.end42.us.1:                                    ; preds = %for.end.us.1
  %cmp43.us.1 = icmp ugt i32 %len.0.lcssa.us.1, %rep_len.3.ph.us, !dbg !329
  %spec.select.us.1 = zext i1 %cmp43.us.1 to i32, !dbg !331
  %spec.select388.us.1 = call i32 @llvm.umax.i32(i32 %len.0.lcssa.us.1, i32 %rep_len.3.ph.us), !dbg !331
    #dbg_value(i32 %spec.select388.us.1, !243, !DIExpression(), !264)
    #dbg_value(i32 %spec.select.us.1, !244, !DIExpression(), !264)
  br label %for.inc48.us.1, !dbg !332

for.inc48.us.1:                                   ; preds = %if.end42.us.1, %lor.lhs.false.us.1, %for.inc48.us
  %rep_index.3.ph.us.1 = phi i32 [ %spec.select.us.1, %if.end42.us.1 ], [ 0, %for.inc48.us ], [ 0, %lor.lhs.false.us.1 ]
  %rep_len.3.ph.us.1 = phi i32 [ %spec.select388.us.1, %if.end42.us.1 ], [ %rep_len.3.ph.us, %for.inc48.us ], [ %rep_len.3.ph.us, %lor.lhs.false.us.1 ]
    #dbg_value(i32 %rep_len.3.ph.us.1, !243, !DIExpression(), !264)
    #dbg_value(i32 %rep_index.3.ph.us.1, !244, !DIExpression(), !264)
    #dbg_value(i64 2, !245, !DIExpression(), !305)
  %arrayidx.us.2 = getelementptr inbounds i8, ptr %pcoder, i64 748, !dbg !306
  %21 = load i32, ptr %arrayidx.us.2, align 4, !dbg !306
  %idx.ext.us.2 = zext i32 %21 to i64, !dbg !307
  %idx.neg.us.2 = sub nsw i64 0, %idx.ext.us.2, !dbg !307
  %add.ptr12.us.2 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.neg.us.2, !dbg !307
  %add.ptr13.us.2 = getelementptr inbounds i8, ptr %add.ptr12.us.2, i64 -1, !dbg !308
    #dbg_value(ptr %add.ptr13.us.2, !247, !DIExpression(), !309)
  %22 = load i8, ptr %add.ptr13.us.2, align 1, !dbg !310
  %cmp17.not.us.2 = icmp eq i8 %6, %22, !dbg !310
  br i1 %cmp17.not.us.2, label %lor.lhs.false.us.2, label %for.inc48.us.2, !dbg !310

lor.lhs.false.us.2:                               ; preds = %for.inc48.us.1
  %23 = load i8, ptr %add.ptr.i, align 1, !dbg !310
  %24 = load i8, ptr %add.ptr12.us.2, align 1, !dbg !310
  %cmp23.not.us.2 = icmp eq i8 %23, %24, !dbg !310
  br i1 %cmp23.not.us.2, label %land.rhs.us.preheader.2, label %for.inc48.us.2, !dbg !313

land.rhs.us.preheader.2:                          ; preds = %lor.lhs.false.us.2
  %wide.trip.count.2 = zext nneg i32 %umax to i64, !dbg !314
  br label %land.rhs.us.2, !dbg !317

land.rhs.us.2:                                    ; preds = %for.inc.us.2, %land.rhs.us.preheader.2
  %indvars.iv.2 = phi i64 [ 2, %land.rhs.us.preheader.2 ], [ %indvars.iv.next.2, %for.inc.us.2 ]
    #dbg_value(i64 %indvars.iv.2, !251, !DIExpression(), !309)
  %arrayidx31.us.2 = getelementptr inbounds i8, ptr %add.ptr, i64 %indvars.iv.2, !dbg !318
  %25 = load i8, ptr %arrayidx31.us.2, align 1, !dbg !318
  %arrayidx34.us.2 = getelementptr inbounds i8, ptr %add.ptr13.us.2, i64 %indvars.iv.2, !dbg !319
  %26 = load i8, ptr %arrayidx34.us.2, align 1, !dbg !319
  %cmp36.us.2 = icmp eq i8 %25, %26, !dbg !320
  br i1 %cmp36.us.2, label %for.inc.us.2, label %for.end.us.2.split.loop.exit542, !dbg !317

for.inc.us.2:                                     ; preds = %land.rhs.us.2
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1, !dbg !325
    #dbg_value(i64 %indvars.iv.next.2, !251, !DIExpression(), !309)
  %exitcond.2.not = icmp eq i64 %indvars.iv.next.2, %wide.trip.count.2, !dbg !314
  br i1 %exitcond.2.not, label %for.end.us.2, label %land.rhs.us.2, !dbg !326, !llvm.loop !327

for.end.us.2.split.loop.exit542:                  ; preds = %land.rhs.us.2
  %27 = trunc nuw nsw i64 %indvars.iv.2 to i32
  br label %for.end.us.2, !dbg !321

for.end.us.2:                                     ; preds = %for.inc.us.2, %for.end.us.2.split.loop.exit542
  %len.0.lcssa.us.2 = phi i32 [ %27, %for.end.us.2.split.loop.exit542 ], [ %umax, %for.inc.us.2 ], !dbg !323
  %cmp39.not.us.2 = icmp ult i32 %len.0.lcssa.us.2, %.fr, !dbg !321
  br i1 %cmp39.not.us.2, label %if.end42.us.2, label %if.then41, !dbg !324

if.end42.us.2:                                    ; preds = %for.end.us.2
  %cmp43.us.2 = icmp ugt i32 %len.0.lcssa.us.2, %rep_len.3.ph.us.1, !dbg !329
  %spec.select.us.2 = select i1 %cmp43.us.2, i32 2, i32 %rep_index.3.ph.us.1, !dbg !331
  %spec.select388.us.2 = call i32 @llvm.umax.i32(i32 %len.0.lcssa.us.2, i32 %rep_len.3.ph.us.1), !dbg !331
    #dbg_value(i32 %spec.select388.us.2, !243, !DIExpression(), !264)
    #dbg_value(i32 %spec.select.us.2, !244, !DIExpression(), !264)
  br label %for.inc48.us.2, !dbg !332

for.inc48.us.2:                                   ; preds = %if.end42.us.2, %lor.lhs.false.us.2, %for.inc48.us.1
  %rep_index.3.ph.us.2 = phi i32 [ %spec.select.us.2, %if.end42.us.2 ], [ %rep_index.3.ph.us.1, %for.inc48.us.1 ], [ %rep_index.3.ph.us.1, %lor.lhs.false.us.2 ]
  %rep_len.3.ph.us.2 = phi i32 [ %spec.select388.us.2, %if.end42.us.2 ], [ %rep_len.3.ph.us.1, %for.inc48.us.1 ], [ %rep_len.3.ph.us.1, %lor.lhs.false.us.2 ]
    #dbg_value(i32 %rep_len.3.ph.us.2, !243, !DIExpression(), !264)
    #dbg_value(i32 %rep_index.3.ph.us.2, !244, !DIExpression(), !264)
    #dbg_value(i64 3, !245, !DIExpression(), !305)
  %arrayidx.us.3 = getelementptr inbounds i8, ptr %pcoder, i64 752, !dbg !306
  %28 = load i32, ptr %arrayidx.us.3, align 4, !dbg !306
  %idx.ext.us.3 = zext i32 %28 to i64, !dbg !307
  %idx.neg.us.3 = sub nsw i64 0, %idx.ext.us.3, !dbg !307
  %add.ptr12.us.3 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.neg.us.3, !dbg !307
  %add.ptr13.us.3 = getelementptr inbounds i8, ptr %add.ptr12.us.3, i64 -1, !dbg !308
    #dbg_value(ptr %add.ptr13.us.3, !247, !DIExpression(), !309)
  %29 = load i8, ptr %add.ptr13.us.3, align 1, !dbg !310
  %cmp17.not.us.3 = icmp eq i8 %6, %29, !dbg !310
  br i1 %cmp17.not.us.3, label %lor.lhs.false.us.3, label %for.end52, !dbg !310

lor.lhs.false.us.3:                               ; preds = %for.inc48.us.2
  %30 = load i8, ptr %add.ptr.i, align 1, !dbg !310
  %31 = load i8, ptr %add.ptr12.us.3, align 1, !dbg !310
  %cmp23.not.us.3 = icmp eq i8 %30, %31, !dbg !310
  br i1 %cmp23.not.us.3, label %land.rhs.us.preheader.3, label %for.end52, !dbg !313

land.rhs.us.preheader.3:                          ; preds = %lor.lhs.false.us.3
  %wide.trip.count.3 = zext nneg i32 %umax to i64, !dbg !314
  br label %land.rhs.us.3, !dbg !317

land.rhs.us.3:                                    ; preds = %for.inc.us.3, %land.rhs.us.preheader.3
  %indvars.iv.3 = phi i64 [ 2, %land.rhs.us.preheader.3 ], [ %indvars.iv.next.3, %for.inc.us.3 ]
    #dbg_value(i64 %indvars.iv.3, !251, !DIExpression(), !309)
  %arrayidx31.us.3 = getelementptr inbounds i8, ptr %add.ptr, i64 %indvars.iv.3, !dbg !318
  %32 = load i8, ptr %arrayidx31.us.3, align 1, !dbg !318
  %arrayidx34.us.3 = getelementptr inbounds i8, ptr %add.ptr13.us.3, i64 %indvars.iv.3, !dbg !319
  %33 = load i8, ptr %arrayidx34.us.3, align 1, !dbg !319
  %cmp36.us.3 = icmp eq i8 %32, %33, !dbg !320
  br i1 %cmp36.us.3, label %for.inc.us.3, label %for.end.us.3.split.loop.exit544, !dbg !317

for.inc.us.3:                                     ; preds = %land.rhs.us.3
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 1, !dbg !325
    #dbg_value(i64 %indvars.iv.next.3, !251, !DIExpression(), !309)
  %exitcond.3.not = icmp eq i64 %indvars.iv.next.3, %wide.trip.count.3, !dbg !314
  br i1 %exitcond.3.not, label %for.end.us.3, label %land.rhs.us.3, !dbg !326, !llvm.loop !327

for.end.us.3.split.loop.exit544:                  ; preds = %land.rhs.us.3
  %34 = trunc nuw nsw i64 %indvars.iv.3 to i32
  br label %for.end.us.3, !dbg !321

for.end.us.3:                                     ; preds = %for.inc.us.3, %for.end.us.3.split.loop.exit544
  %len.0.lcssa.us.3 = phi i32 [ %34, %for.end.us.3.split.loop.exit544 ], [ %umax, %for.inc.us.3 ], !dbg !323
  %cmp39.not.us.3 = icmp ult i32 %len.0.lcssa.us.3, %.fr, !dbg !321
  br i1 %cmp39.not.us.3, label %if.end42.us.3, label %if.then41, !dbg !324

if.end42.us.3:                                    ; preds = %for.end.us.3
  %cmp43.us.3 = icmp ugt i32 %len.0.lcssa.us.3, %rep_len.3.ph.us.2, !dbg !329
  %spec.select.us.3 = select i1 %cmp43.us.3, i32 3, i32 %rep_index.3.ph.us.2, !dbg !331
  %spec.select388.us.3 = call i32 @llvm.umax.i32(i32 %len.0.lcssa.us.3, i32 %rep_len.3.ph.us.2), !dbg !331
    #dbg_value(i32 %spec.select388.us.3, !243, !DIExpression(), !264)
    #dbg_value(i32 %spec.select.us.3, !244, !DIExpression(), !264)
  br label %for.end52, !dbg !332

for.inc.us:                                       ; preds = %land.rhs.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !325
    #dbg_value(i64 %indvars.iv.next, !251, !DIExpression(), !309)
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !314
  br i1 %exitcond.not, label %for.end.us, label %land.rhs.us, !dbg !326, !llvm.loop !327

for.cond.preheader.split:                         ; preds = %for.cond.preheader
  %cmp39.not = icmp ugt i32 %.fr, 2
    #dbg_value(i64 0, !245, !DIExpression(), !305)
    #dbg_value(ptr %add.ptr13.us454, !247, !DIExpression(), !309)
  br i1 %cmp39.not, label %for.body.us445.preheader, label %for.body.preheader

for.body.preheader:                               ; preds = %for.cond.preheader.split
    #dbg_value(i32 poison, !243, !DIExpression(), !264)
    #dbg_value(i32 poison, !244, !DIExpression(), !264)
  br i1 %cmp17.not.us455, label %lor.lhs.false, label %for.inc48, !dbg !310

for.body.us445.preheader:                         ; preds = %for.cond.preheader.split
    #dbg_value(i32 0, !243, !DIExpression(), !264)
    #dbg_value(i32 0, !244, !DIExpression(), !264)
  br i1 %cmp17.not.us455, label %lor.lhs.false.us456, label %for.inc48.us462, !dbg !310

lor.lhs.false.us456:                              ; preds = %for.body.us445.preheader
  %35 = load i8, ptr %add.ptr.i, align 1, !dbg !310
  %36 = load i8, ptr %add.ptr12.us453, align 1, !dbg !310
  %cmp23.not.us457 = icmp ne i8 %35, %36, !dbg !310
  %spec.select = zext i1 %cmp23.not.us457 to i32, !dbg !313
  %spec.select546 = select i1 %cmp23.not.us457, i32 0, i32 2, !dbg !313
  br label %for.inc48.us462, !dbg !313

for.inc48.us462:                                  ; preds = %lor.lhs.false.us456, %for.body.us445.preheader
  %cmp43.us459.1 = phi i32 [ 1, %for.body.us445.preheader ], [ %spec.select, %lor.lhs.false.us456 ]
  %rep_len.3.ph.us464 = phi i32 [ 0, %for.body.us445.preheader ], [ %spec.select546, %lor.lhs.false.us456 ]
    #dbg_value(i32 %rep_len.3.ph.us464, !243, !DIExpression(), !264)
    #dbg_value(i32 0, !244, !DIExpression(), !264)
    #dbg_value(i64 1, !245, !DIExpression(), !305)
  %arrayidx.us450.1 = getelementptr inbounds i8, ptr %pcoder, i64 744, !dbg !306
  %37 = load i32, ptr %arrayidx.us450.1, align 4, !dbg !306
  %idx.ext.us451.1 = zext i32 %37 to i64, !dbg !307
  %idx.neg.us452.1 = sub nsw i64 0, %idx.ext.us451.1, !dbg !307
  %add.ptr12.us453.1 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.neg.us452.1, !dbg !307
  %add.ptr13.us454.1 = getelementptr inbounds i8, ptr %add.ptr12.us453.1, i64 -1, !dbg !308
    #dbg_value(ptr %add.ptr13.us454.1, !247, !DIExpression(), !309)
  %38 = load i8, ptr %add.ptr13.us454.1, align 1, !dbg !310
  %cmp17.not.us455.1 = icmp eq i8 %6, %38, !dbg !310
  br i1 %cmp17.not.us455.1, label %lor.lhs.false.us456.1, label %for.inc48.us462.1, !dbg !310

lor.lhs.false.us456.1:                            ; preds = %for.inc48.us462
  %39 = load i8, ptr %add.ptr.i, align 1, !dbg !310
  %40 = load i8, ptr %add.ptr12.us453.1, align 1, !dbg !310
  %cmp23.not.us457.1 = icmp eq i8 %39, %40, !dbg !310
  %spec.select547 = select i1 %cmp23.not.us457.1, i32 %cmp43.us459.1, i32 0, !dbg !313
  %spec.select548 = select i1 %cmp23.not.us457.1, i32 2, i32 %rep_len.3.ph.us464, !dbg !313
  br label %for.inc48.us462.1, !dbg !313

for.inc48.us462.1:                                ; preds = %lor.lhs.false.us456.1, %for.inc48.us462
  %rep_index.3.ph.us463.1 = phi i32 [ 0, %for.inc48.us462 ], [ %spec.select547, %lor.lhs.false.us456.1 ]
  %rep_len.3.ph.us464.1 = phi i32 [ %rep_len.3.ph.us464, %for.inc48.us462 ], [ %spec.select548, %lor.lhs.false.us456.1 ]
    #dbg_value(i32 %rep_len.3.ph.us464.1, !243, !DIExpression(), !264)
    #dbg_value(i32 %rep_index.3.ph.us463.1, !244, !DIExpression(), !264)
    #dbg_value(i64 2, !245, !DIExpression(), !305)
  %arrayidx.us450.2 = getelementptr inbounds i8, ptr %pcoder, i64 748, !dbg !306
  %41 = load i32, ptr %arrayidx.us450.2, align 4, !dbg !306
  %idx.ext.us451.2 = zext i32 %41 to i64, !dbg !307
  %idx.neg.us452.2 = sub nsw i64 0, %idx.ext.us451.2, !dbg !307
  %add.ptr12.us453.2 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.neg.us452.2, !dbg !307
  %add.ptr13.us454.2 = getelementptr inbounds i8, ptr %add.ptr12.us453.2, i64 -1, !dbg !308
    #dbg_value(ptr %add.ptr13.us454.2, !247, !DIExpression(), !309)
  %42 = load i8, ptr %add.ptr13.us454.2, align 1, !dbg !310
  %cmp17.not.us455.2 = icmp eq i8 %6, %42, !dbg !310
  br i1 %cmp17.not.us455.2, label %lor.lhs.false.us456.2, label %for.inc48.us462.2, !dbg !310

lor.lhs.false.us456.2:                            ; preds = %for.inc48.us462.1
  %43 = load i8, ptr %add.ptr.i, align 1, !dbg !310
  %44 = load i8, ptr %add.ptr12.us453.2, align 1, !dbg !310
  %cmp23.not.us457.2 = icmp eq i8 %43, %44, !dbg !310
  br i1 %cmp23.not.us457.2, label %for.cond27.preheader.us467.2, label %for.inc48.us462.2, !dbg !313

for.cond27.preheader.us467.2:                     ; preds = %lor.lhs.false.us456.2
    #dbg_value(i32 2, !251, !DIExpression(), !309)
  %cmp43.us459.2 = icmp ult i32 %rep_len.3.ph.us464.1, 2, !dbg !329
  %spec.select.us460.2 = select i1 %cmp43.us459.2, i32 2, i32 %rep_index.3.ph.us463.1, !dbg !331
    #dbg_value(i32 2, !243, !DIExpression(), !264)
    #dbg_value(i32 %spec.select.us460.2, !244, !DIExpression(), !264)
  br label %for.inc48.us462.2, !dbg !332

for.inc48.us462.2:                                ; preds = %for.cond27.preheader.us467.2, %lor.lhs.false.us456.2, %for.inc48.us462.1
  %rep_index.3.ph.us463.2 = phi i32 [ %spec.select.us460.2, %for.cond27.preheader.us467.2 ], [ %rep_index.3.ph.us463.1, %for.inc48.us462.1 ], [ %rep_index.3.ph.us463.1, %lor.lhs.false.us456.2 ]
  %rep_len.3.ph.us464.2 = phi i32 [ 2, %for.cond27.preheader.us467.2 ], [ %rep_len.3.ph.us464.1, %for.inc48.us462.1 ], [ %rep_len.3.ph.us464.1, %lor.lhs.false.us456.2 ]
    #dbg_value(i32 %rep_len.3.ph.us464.2, !243, !DIExpression(), !264)
    #dbg_value(i32 %rep_index.3.ph.us463.2, !244, !DIExpression(), !264)
    #dbg_value(i64 3, !245, !DIExpression(), !305)
  %arrayidx.us450.3 = getelementptr inbounds i8, ptr %pcoder, i64 752, !dbg !306
  %45 = load i32, ptr %arrayidx.us450.3, align 4, !dbg !306
  %idx.ext.us451.3 = zext i32 %45 to i64, !dbg !307
  %idx.neg.us452.3 = sub nsw i64 0, %idx.ext.us451.3, !dbg !307
  %add.ptr12.us453.3 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.neg.us452.3, !dbg !307
  %add.ptr13.us454.3 = getelementptr inbounds i8, ptr %add.ptr12.us453.3, i64 -1, !dbg !308
    #dbg_value(ptr %add.ptr13.us454.3, !247, !DIExpression(), !309)
  %46 = load i8, ptr %add.ptr13.us454.3, align 1, !dbg !310
  %cmp17.not.us455.3 = icmp eq i8 %6, %46, !dbg !310
  br i1 %cmp17.not.us455.3, label %lor.lhs.false.us456.3, label %for.end52, !dbg !310

lor.lhs.false.us456.3:                            ; preds = %for.inc48.us462.2
  %47 = load i8, ptr %add.ptr.i, align 1, !dbg !310
  %48 = load i8, ptr %add.ptr12.us453.3, align 1, !dbg !310
  %cmp23.not.us457.3 = icmp eq i8 %47, %48, !dbg !310
  br i1 %cmp23.not.us457.3, label %for.cond27.preheader.us467.3, label %for.end52, !dbg !313

for.cond27.preheader.us467.3:                     ; preds = %lor.lhs.false.us456.3
    #dbg_value(i32 2, !251, !DIExpression(), !309)
  %cmp43.us459.3 = icmp ult i32 %rep_len.3.ph.us464.2, 2, !dbg !329
  %spec.select.us460.3 = select i1 %cmp43.us459.3, i32 3, i32 %rep_index.3.ph.us463.2, !dbg !331
    #dbg_value(i32 2, !243, !DIExpression(), !264)
    #dbg_value(i32 %spec.select.us460.3, !244, !DIExpression(), !264)
  br label %for.end52, !dbg !332

if.then9:                                         ; preds = %if.end
  store i32 -1, ptr %back_res, align 4, !dbg !333
  store i32 1, ptr %len_res, align 4, !dbg !335
  br label %cleanup260, !dbg !336

lor.lhs.false:                                    ; preds = %for.body.preheader
  %49 = load i8, ptr %add.ptr.i, align 1, !dbg !310
  %50 = load i8, ptr %add.ptr12.us453, align 1, !dbg !310
  %cmp23.not = icmp eq i8 %49, %50, !dbg !310
  br i1 %cmp23.not, label %if.then41.thread, label %for.inc48, !dbg !313

if.then41.thread:                                 ; preds = %lor.lhs.false.3, %lor.lhs.false.2, %lor.lhs.false.1, %lor.lhs.false
  %.us-phi440.ph = phi i32 [ 3, %lor.lhs.false.3 ], [ 2, %lor.lhs.false.2 ], [ 1, %lor.lhs.false.1 ], [ 0, %lor.lhs.false ]
  store i32 %.us-phi440.ph, ptr %back_res, align 4, !dbg !337
  store i32 2, ptr %len_res, align 4, !dbg !339
    #dbg_value(ptr %mf, !340, !DIExpression(), !344)
    #dbg_value(i32 1, !343, !DIExpression(), !344)
  br label %if.then.i, !dbg !346

if.then41:                                        ; preds = %for.end.us, %for.end.us.1, %for.end.us.2, %for.end.us.3
  %.us-phi440 = phi i32 [ 0, %for.end.us ], [ 1, %for.end.us.1 ], [ 2, %for.end.us.2 ], [ 3, %for.end.us.3 ], !dbg !337
  %.us-phi442 = phi i32 [ %len.0.lcssa.us, %for.end.us ], [ %len.0.lcssa.us.1, %for.end.us.1 ], [ %len.0.lcssa.us.2, %for.end.us.2 ], [ %len.0.lcssa.us.3, %for.end.us.3 ], !dbg !337
  store i32 %.us-phi440, ptr %back_res, align 4, !dbg !337
  store i32 %.us-phi442, ptr %len_res, align 4, !dbg !339
  %sub = add i32 %.us-phi442, -1, !dbg !347
    #dbg_value(ptr %mf, !340, !DIExpression(), !344)
    #dbg_value(i32 %sub, !343, !DIExpression(), !344)
  %cmp.not.i = icmp eq i32 %sub, 0, !dbg !348
  br i1 %cmp.not.i, label %cleanup260, label %if.then.i, !dbg !346

if.then.i:                                        ; preds = %if.then41.thread, %if.then41
  %sub534 = phi i32 [ 1, %if.then41.thread ], [ %sub, %if.then41 ]
  %skip.i = getelementptr inbounds i8, ptr %mf, i64 56, !dbg !350
  %51 = load ptr, ptr %skip.i, align 8, !dbg !350
  call void %51(ptr noundef nonnull %mf, i32 noundef %sub534) #4, !dbg !352
  %52 = load i32, ptr %read_ahead, align 4, !dbg !353
  %add.i = add i32 %52, %sub534, !dbg !353
  store i32 %add.i, ptr %read_ahead, align 4, !dbg !353
  br label %cleanup260, !dbg !354

for.inc48:                                        ; preds = %lor.lhs.false, %for.body.preheader
    #dbg_value(i32 poison, !243, !DIExpression(), !264)
    #dbg_value(i32 poison, !244, !DIExpression(), !264)
    #dbg_value(i64 1, !245, !DIExpression(), !305)
  %arrayidx.1 = getelementptr inbounds i8, ptr %pcoder, i64 744, !dbg !306
  %53 = load i32, ptr %arrayidx.1, align 4, !dbg !306
  %idx.ext.1 = zext i32 %53 to i64, !dbg !307
  %idx.neg.1 = sub nsw i64 0, %idx.ext.1, !dbg !307
  %add.ptr12.1 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.neg.1, !dbg !307
  %add.ptr13.1 = getelementptr inbounds i8, ptr %add.ptr12.1, i64 -1, !dbg !308
    #dbg_value(ptr %add.ptr13.1, !247, !DIExpression(), !309)
  %54 = load i8, ptr %add.ptr13.1, align 1, !dbg !310
  %cmp17.not.1 = icmp eq i8 %6, %54, !dbg !310
  br i1 %cmp17.not.1, label %lor.lhs.false.1, label %for.inc48.1, !dbg !310

lor.lhs.false.1:                                  ; preds = %for.inc48
  %55 = load i8, ptr %add.ptr.i, align 1, !dbg !310
  %56 = load i8, ptr %add.ptr12.1, align 1, !dbg !310
  %cmp23.not.1 = icmp eq i8 %55, %56, !dbg !310
  br i1 %cmp23.not.1, label %if.then41.thread, label %for.inc48.1, !dbg !313

for.inc48.1:                                      ; preds = %lor.lhs.false.1, %for.inc48
    #dbg_value(i32 poison, !243, !DIExpression(), !264)
    #dbg_value(i32 poison, !244, !DIExpression(), !264)
    #dbg_value(i64 2, !245, !DIExpression(), !305)
  %arrayidx.2 = getelementptr inbounds i8, ptr %pcoder, i64 748, !dbg !306
  %57 = load i32, ptr %arrayidx.2, align 4, !dbg !306
  %idx.ext.2 = zext i32 %57 to i64, !dbg !307
  %idx.neg.2 = sub nsw i64 0, %idx.ext.2, !dbg !307
  %add.ptr12.2 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.neg.2, !dbg !307
  %add.ptr13.2 = getelementptr inbounds i8, ptr %add.ptr12.2, i64 -1, !dbg !308
    #dbg_value(ptr %add.ptr13.2, !247, !DIExpression(), !309)
  %58 = load i8, ptr %add.ptr13.2, align 1, !dbg !310
  %cmp17.not.2 = icmp eq i8 %6, %58, !dbg !310
  br i1 %cmp17.not.2, label %lor.lhs.false.2, label %for.inc48.2, !dbg !310

lor.lhs.false.2:                                  ; preds = %for.inc48.1
  %59 = load i8, ptr %add.ptr.i, align 1, !dbg !310
  %60 = load i8, ptr %add.ptr12.2, align 1, !dbg !310
  %cmp23.not.2 = icmp eq i8 %59, %60, !dbg !310
  br i1 %cmp23.not.2, label %if.then41.thread, label %for.inc48.2, !dbg !313

for.inc48.2:                                      ; preds = %lor.lhs.false.2, %for.inc48.1
    #dbg_value(i32 poison, !243, !DIExpression(), !264)
    #dbg_value(i32 poison, !244, !DIExpression(), !264)
    #dbg_value(i64 3, !245, !DIExpression(), !305)
  %arrayidx.3 = getelementptr inbounds i8, ptr %pcoder, i64 752, !dbg !306
  %61 = load i32, ptr %arrayidx.3, align 4, !dbg !306
  %idx.ext.3 = zext i32 %61 to i64, !dbg !307
  %idx.neg.3 = sub nsw i64 0, %idx.ext.3, !dbg !307
  %add.ptr12.3 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.neg.3, !dbg !307
  %add.ptr13.3 = getelementptr inbounds i8, ptr %add.ptr12.3, i64 -1, !dbg !308
    #dbg_value(ptr %add.ptr13.3, !247, !DIExpression(), !309)
  %62 = load i8, ptr %add.ptr13.3, align 1, !dbg !310
  %cmp17.not.3 = icmp eq i8 %6, %62, !dbg !310
  br i1 %cmp17.not.3, label %lor.lhs.false.3, label %for.end52, !dbg !310

lor.lhs.false.3:                                  ; preds = %for.inc48.2
  %63 = load i8, ptr %add.ptr.i, align 1, !dbg !310
  %64 = load i8, ptr %add.ptr12.3, align 1, !dbg !310
  %cmp23.not.3 = icmp eq i8 %63, %64, !dbg !310
  br i1 %cmp23.not.3, label %if.then41.thread, label %for.end52, !dbg !313

for.end52:                                        ; preds = %for.inc48.2, %lor.lhs.false.3, %for.inc48.us462.2, %lor.lhs.false.us456.3, %for.cond27.preheader.us467.3, %for.inc48.us.2, %lor.lhs.false.us.3, %if.end42.us.3
  %.us-phi443 = phi i32 [ %spec.select.us.3, %if.end42.us.3 ], [ %rep_index.3.ph.us.2, %for.inc48.us.2 ], [ %rep_index.3.ph.us.2, %lor.lhs.false.us.3 ], [ %spec.select.us460.3, %for.cond27.preheader.us467.3 ], [ %rep_index.3.ph.us463.2, %for.inc48.us462.2 ], [ %rep_index.3.ph.us463.2, %lor.lhs.false.us456.3 ], [ 0, %lor.lhs.false.3 ], [ 0, %for.inc48.2 ], !dbg !355
  %.us-phi444 = phi i32 [ %spec.select388.us.3, %if.end42.us.3 ], [ %rep_len.3.ph.us.2, %for.inc48.us.2 ], [ %rep_len.3.ph.us.2, %lor.lhs.false.us.3 ], [ 2, %for.cond27.preheader.us467.3 ], [ %rep_len.3.ph.us464.2, %for.inc48.us462.2 ], [ %rep_len.3.ph.us464.2, %lor.lhs.false.us456.3 ], [ 0, %lor.lhs.false.3 ], [ 0, %for.inc48.2 ], !dbg !355
  %cmp53.not = icmp ult i32 %len_main.0, %.fr, !dbg !355
  br i1 %cmp53.not, label %if.end62, label %if.then55, !dbg !357

if.then55:                                        ; preds = %for.end52
  %matches56 = getelementptr inbounds i8, ptr %pcoder, i64 756, !dbg !358
  %65 = load i32, ptr %matches_count, align 4, !dbg !360
  %sub57 = add i32 %65, -1, !dbg !361
  %idxprom58 = zext i32 %sub57 to i64, !dbg !362
  %dist = getelementptr inbounds [274 x %struct.lzma_match], ptr %matches56, i64 0, i64 %idxprom58, i32 1, !dbg !363
  %66 = load i32, ptr %dist, align 4, !dbg !363
  %add60 = add i32 %66, 4, !dbg !364
  store i32 %add60, ptr %back_res, align 4, !dbg !365
  store i32 %len_main.0, ptr %len_res, align 4, !dbg !366
  %sub61 = add i32 %len_main.0, -1, !dbg !367
    #dbg_value(ptr %mf, !340, !DIExpression(), !368)
    #dbg_value(i32 %sub61, !343, !DIExpression(), !368)
  %cmp.not.i398 = icmp eq i32 %sub61, 0, !dbg !370
  br i1 %cmp.not.i398, label %cleanup260, label %if.then.i399, !dbg !371

if.then.i399:                                     ; preds = %if.then55
  %skip.i400 = getelementptr inbounds i8, ptr %mf, i64 56, !dbg !372
  %67 = load ptr, ptr %skip.i400, align 8, !dbg !372
  call void %67(ptr noundef nonnull %mf, i32 noundef %sub61) #4, !dbg !373
  %68 = load i32, ptr %read_ahead, align 4, !dbg !374
  %add.i402 = add i32 %68, %sub61, !dbg !374
  store i32 %add.i402, ptr %read_ahead, align 4, !dbg !374
  br label %cleanup260, !dbg !375

if.end62:                                         ; preds = %for.end52
    #dbg_value(i32 0, !252, !DIExpression(), !264)
  %cmp63 = icmp ugt i32 %len_main.0, 1, !dbg !376
  br i1 %cmp63, label %if.then65, label %if.end108, !dbg !378

if.then65:                                        ; preds = %if.end62
  %matches66 = getelementptr inbounds i8, ptr %pcoder, i64 756, !dbg !379
  %69 = load i32, ptr %matches_count, align 4, !dbg !381
  %sub67 = add i32 %69, -1, !dbg !382
  %idxprom68 = zext i32 %sub67 to i64, !dbg !383
  %dist70 = getelementptr inbounds [274 x %struct.lzma_match], ptr %matches66, i64 0, i64 %idxprom68, i32 1, !dbg !384
    #dbg_value(i32 poison, !252, !DIExpression(), !264)
  %back_main.0475 = load i32, ptr %dist70, align 4, !dbg !385
  %cmp71476 = icmp ugt i32 %69, 1, !dbg !386
  br i1 %cmp71476, label %land.rhs73.preheader, label %while.end, !dbg !387

land.rhs73.preheader:                             ; preds = %if.then65
  %70 = zext i32 %69 to i64, !dbg !388
  br label %land.rhs73, !dbg !388

land.rhs73:                                       ; preds = %land.rhs73.preheader, %if.end91
  %indvars.iv507 = phi i64 [ %70, %land.rhs73.preheader ], [ %indvars.iv.next508, %if.end91 ]
  %back_main.0478 = phi i32 [ %back_main.0475, %land.rhs73.preheader ], [ %73, %if.end91 ]
  %len_main.1477 = phi i32 [ %len_main.0, %land.rhs73.preheader ], [ %72, %if.end91 ]
    #dbg_value(i32 %len_main.1477, !237, !DIExpression(), !264)
  %71 = add nsw i64 %indvars.iv507, -2, !dbg !389
  %arrayidx77 = getelementptr inbounds [274 x %struct.lzma_match], ptr %matches66, i64 0, i64 %71, !dbg !390
  %72 = load i32, ptr %arrayidx77, align 4, !dbg !391
  %add79 = add i32 %72, 1, !dbg !392
  %cmp80 = icmp eq i32 %len_main.1477, %add79, !dbg !393
  br i1 %cmp80, label %while.body, label %while.end, !dbg !388

while.body:                                       ; preds = %land.rhs73
  %shr = lshr i32 %back_main.0478, 7, !dbg !394
  %dist87 = getelementptr inbounds i8, ptr %arrayidx77, i64 4, !dbg !394
  %73 = load i32, ptr %dist87, align 4, !dbg !394
  %cmp88 = icmp ugt i32 %shr, %73, !dbg !394
  br i1 %cmp88, label %if.end91, label %while.end, !dbg !397

if.end91:                                         ; preds = %while.body
  %indvars.iv.next508 = add nsw i64 %indvars.iv507, -1, !dbg !398
  %indvars = trunc i64 %indvars.iv.next508 to i32, !dbg !398
  store i32 %indvars, ptr %matches_count, align 4, !dbg !398, !DIAssignID !399
    #dbg_assign(i32 %indvars, !238, !DIExpression(), !399, ptr %matches_count, !DIExpression(), !264)
    #dbg_value(i32 %72, !237, !DIExpression(), !264)
    #dbg_value(i32 %73, !252, !DIExpression(), !264)
  %cmp71 = icmp ugt i32 %indvars, 1, !dbg !386
  br i1 %cmp71, label %land.rhs73, label %while.end, !dbg !387, !llvm.loop !400

while.end:                                        ; preds = %land.rhs73, %while.body, %if.end91, %if.then65
  %len_main.1.lcssa = phi i32 [ %len_main.0, %if.then65 ], [ %72, %if.end91 ], [ %len_main.1477, %while.body ], [ %len_main.1477, %land.rhs73 ], !dbg !264
  %back_main.0.lcssa = phi i32 [ %back_main.0475, %if.then65 ], [ %73, %if.end91 ], [ %back_main.0478, %while.body ], [ %back_main.0478, %land.rhs73 ], !dbg !385
  %cmp102 = icmp eq i32 %len_main.1.lcssa, 2, !dbg !402
  %cmp104 = icmp ugt i32 %back_main.0.lcssa, 127
  %or.cond = select i1 %cmp102, i1 %cmp104, i1 false, !dbg !404
  %spec.store.select = select i1 %or.cond, i32 1, i32 %len_main.1.lcssa, !dbg !404
    #dbg_value(i32 %spec.store.select, !237, !DIExpression(), !264)
  br label %if.end108, !dbg !404

if.end108:                                        ; preds = %while.end, %if.end62
  %back_main.1 = phi i32 [ %back_main.0.lcssa, %while.end ], [ 0, %if.end62 ], !dbg !264
  %len_main.2 = phi i32 [ %spec.store.select, %while.end ], [ %len_main.0, %if.end62 ], !dbg !264
    #dbg_value(i32 %len_main.2, !237, !DIExpression(), !264)
    #dbg_value(i32 %back_main.1, !252, !DIExpression(), !264)
  %len_main.2.fr = freeze i32 %len_main.2, !dbg !405
  %cmp109 = icmp ugt i32 %.us-phi444, 1, !dbg !406
  br i1 %cmp109, label %if.then111, label %if.end132, !dbg !408

if.then111:                                       ; preds = %if.end108
  %add112 = add i32 %.us-phi444, 1, !dbg !409
  %cmp113.not = icmp ult i32 %add112, %len_main.2.fr, !dbg !412
  br i1 %cmp113.not, label %lor.lhs.false115, label %mf_skip.exit409, !dbg !413

lor.lhs.false115:                                 ; preds = %if.then111
  %add116 = add i32 %.us-phi444, 2, !dbg !414
  %cmp117 = icmp uge i32 %add116, %len_main.2.fr, !dbg !415
  %cmp120 = icmp ugt i32 %back_main.1, 512
  %or.cond269 = select i1 %cmp117, i1 %cmp120, i1 false, !dbg !416
  br i1 %or.cond269, label %mf_skip.exit409, label %lor.lhs.false122, !dbg !416

lor.lhs.false122:                                 ; preds = %lor.lhs.false115
  %add123 = add i32 %.us-phi444, 3, !dbg !417
  %cmp124 = icmp uge i32 %add123, %len_main.2.fr, !dbg !418
  %cmp127 = icmp ugt i32 %back_main.1, 32768
  %or.cond270 = select i1 %cmp124, i1 %cmp127, i1 false, !dbg !419
  br i1 %or.cond270, label %mf_skip.exit409, label %if.end132, !dbg !419

mf_skip.exit409:                                  ; preds = %lor.lhs.false122, %lor.lhs.false115, %if.then111
  store i32 %.us-phi443, ptr %back_res, align 4, !dbg !420
  store i32 %.us-phi444, ptr %len_res, align 4, !dbg !422
  %sub130 = add i32 %.us-phi444, -1, !dbg !423
    #dbg_value(ptr %mf, !340, !DIExpression(), !424)
    #dbg_value(i32 %sub130, !343, !DIExpression(), !424)
  %skip.i406 = getelementptr inbounds i8, ptr %mf, i64 56, !dbg !426
  %74 = load ptr, ptr %skip.i406, align 8, !dbg !426
  call void %74(ptr noundef nonnull %mf, i32 noundef %sub130) #4, !dbg !427
  %75 = load i32, ptr %read_ahead, align 4, !dbg !428
  %add.i408 = add i32 %75, %sub130, !dbg !428
  store i32 %add.i408, ptr %read_ahead, align 4, !dbg !428
  br label %cleanup260, !dbg !429

if.end132:                                        ; preds = %lor.lhs.false122, %if.end108
  %cmp133 = icmp ult i32 %len_main.2.fr, 2, !dbg !430
  %or.cond271 = or i1 %cmp28434.not, %cmp133, !dbg !432
  br i1 %or.cond271, label %if.then138, label %if.end139, !dbg !432

if.then138:                                       ; preds = %if.end132
  store i32 -1, ptr %back_res, align 4, !dbg !433
  store i32 1, ptr %len_res, align 4, !dbg !435
  br label %cleanup260, !dbg !436

if.end139:                                        ; preds = %if.end132
  %matches_count140 = getelementptr inbounds i8, ptr %pcoder, i64 2948, !dbg !437
  %matches141 = getelementptr inbounds i8, ptr %pcoder, i64 756, !dbg !438
  %call143 = call i32 @lzma_mf_find(ptr noundef nonnull %mf, ptr noundef nonnull %matches_count140, ptr noundef nonnull %matches141) #4, !dbg !439
  %longest_match_length144 = getelementptr inbounds i8, ptr %pcoder, i64 2952, !dbg !440
  store i32 %call143, ptr %longest_match_length144, align 8, !dbg !441
  %cmp146 = icmp ugt i32 %call143, 1, !dbg !442
  br i1 %cmp146, label %if.then148, label %if.end192, !dbg !443

if.then148:                                       ; preds = %if.end139
  %76 = load i32, ptr %matches_count140, align 4, !dbg !444
  %sub151 = add i32 %76, -1, !dbg !445
  %idxprom152 = zext i32 %sub151 to i64, !dbg !446
  %dist154 = getelementptr inbounds [274 x %struct.lzma_match], ptr %matches141, i64 0, i64 %idxprom152, i32 1, !dbg !447
  %77 = load i32, ptr %dist154, align 4, !dbg !447
    #dbg_value(i32 %77, !253, !DIExpression(), !448)
  %cmp156.not = icmp uge i32 %call143, %len_main.2.fr, !dbg !449
  %cmp159 = icmp ult i32 %77, %back_main.1
  %or.cond389 = select i1 %cmp156.not, i1 %cmp159, i1 false, !dbg !451
  br i1 %or.cond389, label %if.then187, label %lor.lhs.false161, !dbg !451

lor.lhs.false161:                                 ; preds = %if.then148
  %add163 = add i32 %len_main.2.fr, 1, !dbg !452
  %cmp164 = icmp eq i32 %call143, %add163, !dbg !453
  %shr167 = lshr i32 %77, 7
  %cmp168 = icmp ule i32 %shr167, %back_main.1
  %or.cond390.not428 = select i1 %cmp164, i1 %cmp168, i1 false, !dbg !454
  %cmp173 = icmp ugt i32 %call143, %add163
  %or.cond427 = or i1 %cmp173, %or.cond390.not428, !dbg !454
  br i1 %or.cond427, label %if.then187, label %lor.lhs.false175, !dbg !454

lor.lhs.false175:                                 ; preds = %lor.lhs.false161
  %add177 = add i32 %call143, 1, !dbg !455
  %cmp178 = icmp uge i32 %add177, %len_main.2.fr, !dbg !456
  %cmp181 = icmp ugt i32 %len_main.2.fr, 2
  %or.cond272 = and i1 %cmp181, %cmp178, !dbg !457
  %shr184 = lshr i32 %back_main.1, 7
  %cmp185 = icmp ugt i32 %shr184, %77
  %or.cond391 = select i1 %or.cond272, i1 %cmp185, i1 false, !dbg !457
  br i1 %or.cond391, label %if.then187, label %if.end192, !dbg !457

if.then187:                                       ; preds = %lor.lhs.false175, %lor.lhs.false161, %if.then148
  store i32 -1, ptr %back_res, align 4, !dbg !458
  store i32 1, ptr %len_res, align 4, !dbg !460
  br label %cleanup260

if.end192:                                        ; preds = %lor.lhs.false175, %if.end139
    #dbg_value(ptr %add.ptr.i, !239, !DIExpression(), !264)
  %sub193 = add i32 %len_main.2.fr, -1, !dbg !405
    #dbg_value(i32 %sub193, !256, !DIExpression(), !264)
    #dbg_value(i32 0, !257, !DIExpression(), !461)
  %78 = load i8, ptr %add.ptr.i, align 1
  %arrayidx215 = getelementptr inbounds i8, ptr %add.ptr.i, i64 1
  %cmp225484 = icmp ugt i32 %sub193, 2
    #dbg_value(i64 0, !257, !DIExpression(), !461)
    #dbg_value(i64 0, !257, !DIExpression(), !461)
  %79 = load i32, ptr %reps, align 4, !dbg !462
  %idx.ext204.us = zext i32 %79 to i64, !dbg !463
  %idx.neg205.us = sub nsw i64 0, %idx.ext204.us, !dbg !463
  %add.ptr206.us = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg205.us, !dbg !463
  %add.ptr207.us = getelementptr inbounds i8, ptr %add.ptr206.us, i64 -1, !dbg !464
    #dbg_value(ptr %add.ptr207.us, !259, !DIExpression(), !465)
    #dbg_value(ptr %add.ptr207.us, !259, !DIExpression(), !465)
  %80 = load i8, ptr %add.ptr207.us, align 1, !dbg !466
  %cmp212.not.us = icmp eq i8 %78, %80, !dbg !466
  br i1 %cmp225484, label %for.body199.us.preheader, label %for.body199.preheader

for.body199.preheader:                            ; preds = %if.end192
  br i1 %cmp212.not.us, label %lor.lhs.false214, label %for.inc249, !dbg !466

for.body199.us.preheader:                         ; preds = %if.end192
  br i1 %cmp212.not.us, label %lor.lhs.false214.us, label %for.inc249.us, !dbg !466

lor.lhs.false214.us:                              ; preds = %for.body199.us.preheader
  %81 = load i8, ptr %arrayidx215, align 1, !dbg !466
  %82 = load i8, ptr %add.ptr206.us, align 1, !dbg !466
  %cmp219.not.us = icmp eq i8 %81, %82, !dbg !466
  br i1 %cmp219.not.us, label %land.rhs227.us.preheader, label %for.inc249.us, !dbg !468

land.rhs227.us.preheader:                         ; preds = %lor.lhs.false214.us
  %wide.trip.count520 = zext i32 %sub193 to i64, !dbg !469
  br label %land.rhs227.us, !dbg !472

for.cond224.us:                                   ; preds = %land.rhs227.us
  %indvars.iv.next517 = add nuw nsw i64 %indvars.iv516, 1, !dbg !473
    #dbg_value(i32 poison, !262, !DIExpression(), !465)
  %exitcond521.not = icmp eq i64 %indvars.iv.next517, %wide.trip.count520, !dbg !469
  br i1 %exitcond521.not, label %cleanup251, label %land.rhs227.us, !dbg !474, !llvm.loop !475

land.rhs227.us:                                   ; preds = %land.rhs227.us.preheader, %for.cond224.us
  %indvars.iv516 = phi i64 [ 2, %land.rhs227.us.preheader ], [ %indvars.iv.next517, %for.cond224.us ]
    #dbg_value(i64 %indvars.iv516, !262, !DIExpression(), !465)
  %arrayidx229.us = getelementptr inbounds i8, ptr %add.ptr.i, i64 %indvars.iv516, !dbg !477
  %83 = load i8, ptr %arrayidx229.us, align 1, !dbg !477
  %arrayidx232.us = getelementptr inbounds i8, ptr %add.ptr207.us, i64 %indvars.iv516, !dbg !478
  %84 = load i8, ptr %arrayidx232.us, align 1, !dbg !478
  %cmp234.us = icmp eq i8 %83, %84, !dbg !479
    #dbg_value(i64 %indvars.iv516, !262, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !465)
  br i1 %cmp234.us, label %for.cond224.us, label %for.inc249.us, !dbg !472

for.inc249.us:                                    ; preds = %land.rhs227.us, %lor.lhs.false214.us, %for.body199.us.preheader
    #dbg_value(i64 1, !257, !DIExpression(), !461)
  %arrayidx203.us.1 = getelementptr inbounds i8, ptr %pcoder, i64 744, !dbg !462
  %85 = load i32, ptr %arrayidx203.us.1, align 4, !dbg !462
  %idx.ext204.us.1 = zext i32 %85 to i64, !dbg !463
  %idx.neg205.us.1 = sub nsw i64 0, %idx.ext204.us.1, !dbg !463
  %add.ptr206.us.1 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg205.us.1, !dbg !463
  %add.ptr207.us.1 = getelementptr inbounds i8, ptr %add.ptr206.us.1, i64 -1, !dbg !464
    #dbg_value(ptr %add.ptr207.us.1, !259, !DIExpression(), !465)
  %86 = load i8, ptr %add.ptr207.us.1, align 1, !dbg !466
  %cmp212.not.us.1 = icmp eq i8 %78, %86, !dbg !466
  br i1 %cmp212.not.us.1, label %lor.lhs.false214.us.1, label %for.inc249.us.1, !dbg !466

lor.lhs.false214.us.1:                            ; preds = %for.inc249.us
  %87 = load i8, ptr %arrayidx215, align 1, !dbg !466
  %88 = load i8, ptr %add.ptr206.us.1, align 1, !dbg !466
  %cmp219.not.us.1 = icmp eq i8 %87, %88, !dbg !466
  br i1 %cmp219.not.us.1, label %land.rhs227.us.preheader.1, label %for.inc249.us.1, !dbg !468

land.rhs227.us.preheader.1:                       ; preds = %lor.lhs.false214.us.1
  %wide.trip.count520.1 = zext i32 %sub193 to i64, !dbg !469
  br label %land.rhs227.us.1, !dbg !472

land.rhs227.us.1:                                 ; preds = %for.cond224.us.1, %land.rhs227.us.preheader.1
  %indvars.iv516.1 = phi i64 [ 2, %land.rhs227.us.preheader.1 ], [ %indvars.iv.next517.1, %for.cond224.us.1 ]
    #dbg_value(i64 %indvars.iv516.1, !262, !DIExpression(), !465)
  %arrayidx229.us.1 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %indvars.iv516.1, !dbg !477
  %89 = load i8, ptr %arrayidx229.us.1, align 1, !dbg !477
  %arrayidx232.us.1 = getelementptr inbounds i8, ptr %add.ptr207.us.1, i64 %indvars.iv516.1, !dbg !478
  %90 = load i8, ptr %arrayidx232.us.1, align 1, !dbg !478
  %cmp234.us.1 = icmp eq i8 %89, %90, !dbg !479
    #dbg_value(i64 %indvars.iv516.1, !262, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !465)
  br i1 %cmp234.us.1, label %for.cond224.us.1, label %for.inc249.us.1, !dbg !472

for.inc249.us.1:                                  ; preds = %land.rhs227.us.1, %lor.lhs.false214.us.1, %for.inc249.us
    #dbg_value(i64 2, !257, !DIExpression(), !461)
  %arrayidx203.us.2 = getelementptr inbounds i8, ptr %pcoder, i64 748, !dbg !462
  %91 = load i32, ptr %arrayidx203.us.2, align 4, !dbg !462
  %idx.ext204.us.2 = zext i32 %91 to i64, !dbg !463
  %idx.neg205.us.2 = sub nsw i64 0, %idx.ext204.us.2, !dbg !463
  %add.ptr206.us.2 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg205.us.2, !dbg !463
  %add.ptr207.us.2 = getelementptr inbounds i8, ptr %add.ptr206.us.2, i64 -1, !dbg !464
    #dbg_value(ptr %add.ptr207.us.2, !259, !DIExpression(), !465)
  %92 = load i8, ptr %add.ptr207.us.2, align 1, !dbg !466
  %cmp212.not.us.2 = icmp eq i8 %78, %92, !dbg !466
  br i1 %cmp212.not.us.2, label %lor.lhs.false214.us.2, label %for.inc249.us.2, !dbg !466

for.cond224.us.1:                                 ; preds = %land.rhs227.us.1
  %indvars.iv.next517.1 = add nuw nsw i64 %indvars.iv516.1, 1, !dbg !473
    #dbg_value(i32 poison, !262, !DIExpression(), !465)
  %exitcond521.1.not = icmp eq i64 %indvars.iv.next517.1, %wide.trip.count520.1, !dbg !469
  br i1 %exitcond521.1.not, label %cleanup251, label %land.rhs227.us.1, !dbg !474, !llvm.loop !475

lor.lhs.false214.us.2:                            ; preds = %for.inc249.us.1
  %93 = load i8, ptr %arrayidx215, align 1, !dbg !466
  %94 = load i8, ptr %add.ptr206.us.2, align 1, !dbg !466
  %cmp219.not.us.2 = icmp eq i8 %93, %94, !dbg !466
  br i1 %cmp219.not.us.2, label %land.rhs227.us.preheader.2, label %for.inc249.us.2, !dbg !468

land.rhs227.us.preheader.2:                       ; preds = %lor.lhs.false214.us.2
  %wide.trip.count520.2 = zext i32 %sub193 to i64, !dbg !469
  br label %land.rhs227.us.2, !dbg !472

land.rhs227.us.2:                                 ; preds = %for.cond224.us.2, %land.rhs227.us.preheader.2
  %indvars.iv516.2 = phi i64 [ 2, %land.rhs227.us.preheader.2 ], [ %indvars.iv.next517.2, %for.cond224.us.2 ]
    #dbg_value(i64 %indvars.iv516.2, !262, !DIExpression(), !465)
  %arrayidx229.us.2 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %indvars.iv516.2, !dbg !477
  %95 = load i8, ptr %arrayidx229.us.2, align 1, !dbg !477
  %arrayidx232.us.2 = getelementptr inbounds i8, ptr %add.ptr207.us.2, i64 %indvars.iv516.2, !dbg !478
  %96 = load i8, ptr %arrayidx232.us.2, align 1, !dbg !478
  %cmp234.us.2 = icmp eq i8 %95, %96, !dbg !479
    #dbg_value(i64 %indvars.iv516.2, !262, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !465)
  br i1 %cmp234.us.2, label %for.cond224.us.2, label %for.inc249.us.2, !dbg !472

for.inc249.us.2:                                  ; preds = %land.rhs227.us.2, %lor.lhs.false214.us.2, %for.inc249.us.1
    #dbg_value(i64 3, !257, !DIExpression(), !461)
  %arrayidx203.us.3 = getelementptr inbounds i8, ptr %pcoder, i64 752, !dbg !462
  %97 = load i32, ptr %arrayidx203.us.3, align 4, !dbg !462
  %idx.ext204.us.3 = zext i32 %97 to i64, !dbg !463
  %idx.neg205.us.3 = sub nsw i64 0, %idx.ext204.us.3, !dbg !463
  %add.ptr206.us.3 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg205.us.3, !dbg !463
  %add.ptr207.us.3 = getelementptr inbounds i8, ptr %add.ptr206.us.3, i64 -1, !dbg !464
    #dbg_value(ptr %add.ptr207.us.3, !259, !DIExpression(), !465)
  %98 = load i8, ptr %add.ptr207.us.3, align 1, !dbg !466
  %cmp212.not.us.3 = icmp eq i8 %78, %98, !dbg !466
  br i1 %cmp212.not.us.3, label %lor.lhs.false214.us.3, label %for.end253, !dbg !466

for.cond224.us.2:                                 ; preds = %land.rhs227.us.2
  %indvars.iv.next517.2 = add nuw nsw i64 %indvars.iv516.2, 1, !dbg !473
    #dbg_value(i32 poison, !262, !DIExpression(), !465)
  %exitcond521.2.not = icmp eq i64 %indvars.iv.next517.2, %wide.trip.count520.2, !dbg !469
  br i1 %exitcond521.2.not, label %cleanup251, label %land.rhs227.us.2, !dbg !474, !llvm.loop !475

lor.lhs.false214.us.3:                            ; preds = %for.inc249.us.2
  %99 = load i8, ptr %arrayidx215, align 1, !dbg !466
  %100 = load i8, ptr %add.ptr206.us.3, align 1, !dbg !466
  %cmp219.not.us.3 = icmp eq i8 %99, %100, !dbg !466
  br i1 %cmp219.not.us.3, label %land.rhs227.us.preheader.3, label %for.end253, !dbg !468

land.rhs227.us.preheader.3:                       ; preds = %lor.lhs.false214.us.3
  %wide.trip.count520.3 = zext i32 %sub193 to i64, !dbg !469
  br label %land.rhs227.us.3, !dbg !472

land.rhs227.us.3:                                 ; preds = %for.cond224.us.3, %land.rhs227.us.preheader.3
  %indvars.iv516.3 = phi i64 [ 2, %land.rhs227.us.preheader.3 ], [ %indvars.iv.next517.3, %for.cond224.us.3 ]
    #dbg_value(i64 %indvars.iv516.3, !262, !DIExpression(), !465)
  %arrayidx229.us.3 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %indvars.iv516.3, !dbg !477
  %101 = load i8, ptr %arrayidx229.us.3, align 1, !dbg !477
  %arrayidx232.us.3 = getelementptr inbounds i8, ptr %add.ptr207.us.3, i64 %indvars.iv516.3, !dbg !478
  %102 = load i8, ptr %arrayidx232.us.3, align 1, !dbg !478
  %cmp234.us.3 = icmp eq i8 %101, %102, !dbg !479
    #dbg_value(i64 %indvars.iv516.3, !262, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !465)
  br i1 %cmp234.us.3, label %for.cond224.us.3, label %for.end253, !dbg !472

for.cond224.us.3:                                 ; preds = %land.rhs227.us.3
  %indvars.iv.next517.3 = add nuw nsw i64 %indvars.iv516.3, 1, !dbg !473
    #dbg_value(i32 poison, !262, !DIExpression(), !465)
  %exitcond521.3.not = icmp eq i64 %indvars.iv.next517.3, %wide.trip.count520.3, !dbg !469
  br i1 %exitcond521.3.not, label %cleanup251, label %land.rhs227.us.3, !dbg !474, !llvm.loop !475

lor.lhs.false214:                                 ; preds = %for.body199.preheader
  %103 = load i8, ptr %arrayidx215, align 1, !dbg !466
  %104 = load i8, ptr %add.ptr206.us, align 1, !dbg !466
  %cmp219.not = icmp eq i8 %103, %104, !dbg !466
  br i1 %cmp219.not, label %cleanup251, label %for.inc249, !dbg !468

for.inc249:                                       ; preds = %lor.lhs.false214, %for.body199.preheader
    #dbg_value(i64 1, !257, !DIExpression(), !461)
  %arrayidx203.1 = getelementptr inbounds i8, ptr %pcoder, i64 744, !dbg !462
  %105 = load i32, ptr %arrayidx203.1, align 4, !dbg !462
  %idx.ext204.1 = zext i32 %105 to i64, !dbg !463
  %idx.neg205.1 = sub nsw i64 0, %idx.ext204.1, !dbg !463
  %add.ptr206.1 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg205.1, !dbg !463
  %add.ptr207.1 = getelementptr inbounds i8, ptr %add.ptr206.1, i64 -1, !dbg !464
    #dbg_value(ptr %add.ptr207.1, !259, !DIExpression(), !465)
  %106 = load i8, ptr %add.ptr207.1, align 1, !dbg !466
  %cmp212.not.1 = icmp eq i8 %78, %106, !dbg !466
  br i1 %cmp212.not.1, label %lor.lhs.false214.1, label %for.inc249.1, !dbg !466

lor.lhs.false214.1:                               ; preds = %for.inc249
  %107 = load i8, ptr %arrayidx215, align 1, !dbg !466
  %108 = load i8, ptr %add.ptr206.1, align 1, !dbg !466
  %cmp219.not.1 = icmp eq i8 %107, %108, !dbg !466
  br i1 %cmp219.not.1, label %cleanup251, label %for.inc249.1, !dbg !468

for.inc249.1:                                     ; preds = %lor.lhs.false214.1, %for.inc249
    #dbg_value(i64 2, !257, !DIExpression(), !461)
  %arrayidx203.2 = getelementptr inbounds i8, ptr %pcoder, i64 748, !dbg !462
  %109 = load i32, ptr %arrayidx203.2, align 4, !dbg !462
  %idx.ext204.2 = zext i32 %109 to i64, !dbg !463
  %idx.neg205.2 = sub nsw i64 0, %idx.ext204.2, !dbg !463
  %add.ptr206.2 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg205.2, !dbg !463
  %add.ptr207.2 = getelementptr inbounds i8, ptr %add.ptr206.2, i64 -1, !dbg !464
    #dbg_value(ptr %add.ptr207.2, !259, !DIExpression(), !465)
  %110 = load i8, ptr %add.ptr207.2, align 1, !dbg !466
  %cmp212.not.2 = icmp eq i8 %78, %110, !dbg !466
  br i1 %cmp212.not.2, label %lor.lhs.false214.2, label %for.inc249.2, !dbg !466

lor.lhs.false214.2:                               ; preds = %for.inc249.1
  %111 = load i8, ptr %arrayidx215, align 1, !dbg !466
  %112 = load i8, ptr %add.ptr206.2, align 1, !dbg !466
  %cmp219.not.2 = icmp eq i8 %111, %112, !dbg !466
  br i1 %cmp219.not.2, label %cleanup251, label %for.inc249.2, !dbg !468

for.inc249.2:                                     ; preds = %lor.lhs.false214.2, %for.inc249.1
    #dbg_value(i64 3, !257, !DIExpression(), !461)
  %arrayidx203.3 = getelementptr inbounds i8, ptr %pcoder, i64 752, !dbg !462
  %113 = load i32, ptr %arrayidx203.3, align 4, !dbg !462
  %idx.ext204.3 = zext i32 %113 to i64, !dbg !463
  %idx.neg205.3 = sub nsw i64 0, %idx.ext204.3, !dbg !463
  %add.ptr206.3 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg205.3, !dbg !463
  %add.ptr207.3 = getelementptr inbounds i8, ptr %add.ptr206.3, i64 -1, !dbg !464
    #dbg_value(ptr %add.ptr207.3, !259, !DIExpression(), !465)
  %114 = load i8, ptr %add.ptr207.3, align 1, !dbg !466
  %cmp212.not.3 = icmp eq i8 %78, %114, !dbg !466
  br i1 %cmp212.not.3, label %lor.lhs.false214.3, label %for.end253, !dbg !466

lor.lhs.false214.3:                               ; preds = %for.inc249.2
  %115 = load i8, ptr %arrayidx215, align 1, !dbg !466
  %116 = load i8, ptr %add.ptr206.3, align 1, !dbg !466
  %cmp219.not.3 = icmp eq i8 %115, %116, !dbg !466
  br i1 %cmp219.not.3, label %cleanup251, label %for.end253, !dbg !468

cleanup251:                                       ; preds = %for.cond224.us, %for.cond224.us.1, %for.cond224.us.2, %for.cond224.us.3, %lor.lhs.false214, %lor.lhs.false214.1, %lor.lhs.false214.2, %lor.lhs.false214.3
  store i32 -1, ptr %back_res, align 4, !dbg !480
  store i32 1, ptr %len_res, align 4, !dbg !483
  br label %cleanup260

for.end253:                                       ; preds = %land.rhs227.us.3, %for.inc249.2, %lor.lhs.false214.3, %for.inc249.us.2, %lor.lhs.false214.us.3
  %add254 = add i32 %back_main.1, 4, !dbg !484
  store i32 %add254, ptr %back_res, align 4, !dbg !485
  store i32 %len_main.2.fr, ptr %len_res, align 4, !dbg !486
  %sub255 = add i32 %len_main.2.fr, -2, !dbg !487
    #dbg_value(ptr %mf, !340, !DIExpression(), !488)
    #dbg_value(i32 %sub255, !343, !DIExpression(), !488)
  %cmp.not.i410 = icmp eq i32 %sub255, 0, !dbg !490
  br i1 %cmp.not.i410, label %cleanup260, label %if.then.i411, !dbg !491

if.then.i411:                                     ; preds = %for.end253
  %skip.i412 = getelementptr inbounds i8, ptr %mf, i64 56, !dbg !492
  %117 = load ptr, ptr %skip.i412, align 8, !dbg !492
  call void %117(ptr noundef nonnull %mf, i32 noundef %sub255) #4, !dbg !493
  %118 = load i32, ptr %read_ahead, align 4, !dbg !494
  %add.i414 = add i32 %118, %sub255, !dbg !494
  store i32 %add.i414, ptr %read_ahead, align 4, !dbg !494
  br label %cleanup260, !dbg !495

cleanup260:                                       ; preds = %if.then.i, %if.then41, %if.then.i411, %for.end253, %cleanup251, %if.then.i399, %if.then55, %if.then187, %if.then138, %mf_skip.exit409, %if.then9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %matches_count) #4, !dbg !496
  ret void, !dbg !496
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !497 i32 @lzma_mf_find(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

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

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "liblzma/lzma/lzma_encoder_optimum_fast.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "2f7decb644128e554449599785f4e3e7")
!2 = !{!3, !11, !51}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 250, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "liblzma/api/lzma/base.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "81a3070447cc5b61b56cfbed076853db")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10}
!7 = !DIEnumerator(name: "LZMA_RUN", value: 0)
!8 = !DIEnumerator(name: "LZMA_SYNC_FLUSH", value: 1)
!9 = !DIEnumerator(name: "LZMA_FULL_FLUSH", value: 2)
!10 = !DIEnumerator(name: "LZMA_FINISH", value: 3)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !13, file: !12, line: 40, baseType: !5, size: 32, elements: !45)
!12 = !DIFile(filename: "liblzma/rangecoder/range_encoder.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "e02ad9079871d268a82b8ebf2e7d385d")
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 27, size: 5888, elements: !14)
!14 = !{!15, !21, !22, !25, !29, !32, !33, !37}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !13, file: !12, line: 28, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !17, line: 27, baseType: !18)
!17 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !19, line: 45, baseType: !20)
!19 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!20 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "cache_size", scope: !13, file: !12, line: 29, baseType: !16, size: 64, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !13, file: !12, line: 30, baseType: !23, size: 32, offset: 128)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !17, line: 26, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !19, line: 42, baseType: !5)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !13, file: !12, line: 31, baseType: !26, size: 8, offset: 160)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !17, line: 24, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !19, line: 38, baseType: !28)
!28 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !13, file: !12, line: 34, baseType: !30, size: 64, offset: 192)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !31, line: 18, baseType: !20)
!31 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!32 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !13, file: !12, line: 37, baseType: !30, size: 64, offset: 256)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "symbols", scope: !13, file: !12, line: 46, baseType: !34, size: 1856, offset: 320)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 1856, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 58)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "probs", scope: !13, file: !12, line: 49, baseType: !38, size: 3712, offset: 2176)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 3712, elements: !35)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "probability", file: !41, line: 71, baseType: !42)
!41 = !DIFile(filename: "liblzma/rangecoder/range_common.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "7d3e93a1bf35640522f499de026cfdad")
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !17, line: 25, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !19, line: 40, baseType: !44)
!44 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!45 = !{!46, !47, !48, !49, !50}
!46 = !DIEnumerator(name: "RC_BIT_0", value: 0)
!47 = !DIEnumerator(name: "RC_BIT_1", value: 1)
!48 = !DIEnumerator(name: "RC_DIRECT_0", value: 2)
!49 = !DIEnumerator(name: "RC_DIRECT_1", value: 3)
!50 = !DIEnumerator(name: "RC_FLUSH", value: 4)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !52, line: 56, baseType: !5, size: 32, elements: !53)
!52 = !DIFile(filename: "liblzma/lzma/lzma_common.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "ce364754aa91e57f603599f25328df33")
!53 = !{!54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65}
!54 = !DIEnumerator(name: "STATE_LIT_LIT", value: 0)
!55 = !DIEnumerator(name: "STATE_MATCH_LIT_LIT", value: 1)
!56 = !DIEnumerator(name: "STATE_REP_LIT_LIT", value: 2)
!57 = !DIEnumerator(name: "STATE_SHORTREP_LIT_LIT", value: 3)
!58 = !DIEnumerator(name: "STATE_MATCH_LIT", value: 4)
!59 = !DIEnumerator(name: "STATE_REP_LIT", value: 5)
!60 = !DIEnumerator(name: "STATE_SHORTREP_LIT", value: 6)
!61 = !DIEnumerator(name: "STATE_LIT_MATCH", value: 7)
!62 = !DIEnumerator(name: "STATE_LIT_LONGREP", value: 8)
!63 = !DIEnumerator(name: "STATE_LIT_SHORTREP", value: 9)
!64 = !DIEnumerator(name: "STATE_NONLIT_MATCH", value: 10)
!65 = !DIEnumerator(name: "STATE_NONLIT_REP", value: 11)
!66 = !{i32 7, !"Dwarf Version", i32 5}
!67 = !{i32 2, !"Debug Info Version", i32 3}
!68 = !{i32 1, !"wchar_size", i32 4}
!69 = !{i32 8, !"PIC Level", i32 2}
!70 = !{i32 7, !"PIE Level", i32 2}
!71 = !{i32 7, !"uwtable", i32 2}
!72 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!73 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!74 = distinct !DISubprogram(name: "lzma_lzma_optimum_fast", scope: !1, file: !1, line: 20, type: !75, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !125)
!75 = !DISubroutineType(types: !76)
!76 = !{null, !77, !80, !124, !124}
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_coder", file: !79, line: 78, baseType: null)
!79 = !DIFile(filename: "liblzma/common/common.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!80 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_mf", file: !83, line: 28, baseType: !84)
!83 = !DIFile(filename: "liblzma/lz/lz_encoder.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "780f78e6e21a3ca52f57df68bfdc6f53")
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_mf_s", file: !83, line: 29, size: 960, elements: !85)
!85 = !{!86, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !107, !111, !113, !114, !115, !116, !117, !118, !119, !120, !122, !123}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !84, file: !83, line: 35, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !84, file: !83, line: 39, baseType: !23, size: 32, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "keep_size_before", scope: !84, file: !83, line: 45, baseType: !23, size: 32, offset: 96)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "keep_size_after", scope: !84, file: !83, line: 51, baseType: !23, size: 32, offset: 128)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !84, file: !83, line: 58, baseType: !23, size: 32, offset: 160)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !84, file: !83, line: 63, baseType: !23, size: 32, offset: 192)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "read_ahead", scope: !84, file: !83, line: 67, baseType: !23, size: 32, offset: 224)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "read_limit", scope: !84, file: !83, line: 75, baseType: !23, size: 32, offset: 256)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "write_pos", scope: !84, file: !83, line: 80, baseType: !23, size: 32, offset: 288)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !84, file: !83, line: 84, baseType: !23, size: 32, offset: 320)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "find", scope: !84, file: !83, line: 92, baseType: !98, size: 64, offset: 384)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DISubroutineType(types: !100)
!100 = !{!23, !81, !101}
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_match", file: !83, line: 25, baseType: !103)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !83, line: 22, size: 64, elements: !104)
!104 = !{!105, !106}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !103, file: !83, line: 23, baseType: !23, size: 32)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "dist", scope: !103, file: !83, line: 24, baseType: !23, size: 32, offset: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !84, file: !83, line: 97, baseType: !108, size: 64, offset: 448)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DISubroutineType(types: !110)
!110 = !{null, !81, !23}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !84, file: !83, line: 99, baseType: !112, size: 64, offset: 512)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "son", scope: !84, file: !83, line: 100, baseType: !112, size: 64, offset: 576)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "cyclic_pos", scope: !84, file: !83, line: 101, baseType: !23, size: 32, offset: 640)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "cyclic_size", scope: !84, file: !83, line: 102, baseType: !23, size: 32, offset: 672)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "hash_mask", scope: !84, file: !83, line: 103, baseType: !23, size: 32, offset: 704)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !84, file: !83, line: 106, baseType: !23, size: 32, offset: 736)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "nice_len", scope: !84, file: !83, line: 109, baseType: !23, size: 32, offset: 768)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "match_len_max", scope: !84, file: !83, line: 114, baseType: !23, size: 32, offset: 800)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !84, file: !83, line: 119, baseType: !121, size: 32, offset: 832)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !4, line: 322, baseType: !3)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "hash_size_sum", scope: !84, file: !83, line: 122, baseType: !23, size: 32, offset: 864)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "sons_count", scope: !84, file: !83, line: 125, baseType: !23, size: 32, offset: 896)
!124 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !112)
!125 = !{!126, !127, !128, !129, !130, !235, !237, !238, !239, !242, !243, !244, !245, !247, !251, !252, !253, !256, !257, !259, !262}
!126 = !DILocalVariable(name: "pcoder", arg: 1, scope: !74, file: !1, line: 20, type: !77)
!127 = !DILocalVariable(name: "mf", arg: 2, scope: !74, file: !1, line: 20, type: !80)
!128 = !DILocalVariable(name: "back_res", arg: 3, scope: !74, file: !1, line: 21, type: !124)
!129 = !DILocalVariable(name: "len_res", arg: 4, scope: !74, file: !1, line: 21, type: !124)
!130 = !DILocalVariable(name: "coder", scope: !74, file: !1, line: 23, type: !131)
!131 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_coder_s", file: !134, line: 72, size: 1996608, elements: !135)
!134 = !DIFile(filename: "liblzma/lzma/lzma_encoder_private.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "0c1b7b41ddfbed104b8c32f19cfcc2b2")
!135 = !{!136, !138, !140, !144, !148, !149, !150, !152, !153, !154, !155, !156, !157, !162, !166, !169, !170, !171, !172, !173, !177, !181, !184, !206, !207, !209, !213, !214, !215, !216, !217, !218, !219}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !133, file: !134, line: 74, baseType: !137, size: 5888)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_range_encoder", file: !12, line: 51, baseType: !13)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !133, file: !134, line: 77, baseType: !139, size: 32, offset: 5888)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_lzma_state", file: !52, line: 69, baseType: !51)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "reps", scope: !133, file: !134, line: 80, baseType: !141, size: 128, offset: 5920)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 128, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 4)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "matches", scope: !133, file: !134, line: 83, baseType: !145, size: 17536, offset: 6048)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 17536, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 274)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "matches_count", scope: !133, file: !134, line: 86, baseType: !23, size: 32, offset: 23584)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "longest_match_length", scope: !133, file: !134, line: 90, baseType: !23, size: 32, offset: 23616)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "fast_mode", scope: !133, file: !134, line: 93, baseType: !151, size: 8, offset: 23648)
!151 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "is_initialized", scope: !133, file: !134, line: 97, baseType: !151, size: 8, offset: 23656)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "is_flushed", scope: !133, file: !134, line: 101, baseType: !151, size: 8, offset: 23664)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "pos_mask", scope: !133, file: !134, line: 103, baseType: !23, size: 32, offset: 23680)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "literal_context_bits", scope: !133, file: !134, line: 104, baseType: !23, size: 32, offset: 23712)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "literal_pos_mask", scope: !133, file: !134, line: 105, baseType: !23, size: 32, offset: 23744)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "literal", scope: !133, file: !134, line: 108, baseType: !158, size: 196608, offset: 23776)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 196608, elements: !159)
!159 = !{!160, !161}
!160 = !DISubrange(count: 16)
!161 = !DISubrange(count: 768)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "is_match", scope: !133, file: !134, line: 109, baseType: !163, size: 3072, offset: 220384)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 3072, elements: !164)
!164 = !{!165, !160}
!165 = !DISubrange(count: 12)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "is_rep", scope: !133, file: !134, line: 110, baseType: !167, size: 192, offset: 223456)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 192, elements: !168)
!168 = !{!165}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "is_rep0", scope: !133, file: !134, line: 111, baseType: !167, size: 192, offset: 223648)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "is_rep1", scope: !133, file: !134, line: 112, baseType: !167, size: 192, offset: 223840)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "is_rep2", scope: !133, file: !134, line: 113, baseType: !167, size: 192, offset: 224032)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "is_rep0_long", scope: !133, file: !134, line: 114, baseType: !163, size: 3072, offset: 224224)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "pos_slot", scope: !133, file: !134, line: 115, baseType: !174, size: 4096, offset: 227296)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 4096, elements: !175)
!175 = !{!143, !176}
!176 = !DISubrange(count: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "pos_special", scope: !133, file: !134, line: 116, baseType: !178, size: 1824, offset: 231392)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 1824, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 114)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "pos_align", scope: !133, file: !134, line: 117, baseType: !182, size: 256, offset: 233216)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 256, elements: !183)
!183 = !{!160}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "match_len_encoder", scope: !133, file: !134, line: 121, baseType: !185, size: 148032, offset: 233472)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_length_encoder", file: !134, line: 51, baseType: !186)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !134, line: 40, size: 148032, elements: !187)
!187 = !{!188, !189, !190, !194, !195, !199, !203, !204}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "choice", scope: !186, file: !134, line: 41, baseType: !40, size: 16)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "choice2", scope: !186, file: !134, line: 42, baseType: !40, size: 16, offset: 16)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !186, file: !134, line: 43, baseType: !191, size: 2048, offset: 32)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 2048, elements: !192)
!192 = !{!160, !193}
!193 = !DISubrange(count: 8)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "mid", scope: !186, file: !134, line: 44, baseType: !191, size: 2048, offset: 2080)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !186, file: !134, line: 45, baseType: !196, size: 4096, offset: 4128)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 4096, elements: !197)
!197 = !{!198}
!198 = !DISubrange(count: 256)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "prices", scope: !186, file: !134, line: 47, baseType: !200, size: 139264, offset: 8224)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 139264, elements: !201)
!201 = !{!160, !202}
!202 = !DISubrange(count: 272)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "table_size", scope: !186, file: !134, line: 48, baseType: !23, size: 32, offset: 147488)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !186, file: !134, line: 49, baseType: !205, size: 512, offset: 147520)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 512, elements: !183)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "rep_len_encoder", scope: !133, file: !134, line: 122, baseType: !185, size: 148032, offset: 381504)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "pos_slot_prices", scope: !133, file: !134, line: 125, baseType: !208, size: 8192, offset: 529536)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8192, elements: !175)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "distances_prices", scope: !133, file: !134, line: 126, baseType: !210, size: 16384, offset: 537728)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 16384, elements: !211)
!211 = !{!143, !212}
!212 = !DISubrange(count: 128)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "dist_table_size", scope: !133, file: !134, line: 127, baseType: !23, size: 32, offset: 554112)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "match_price_count", scope: !133, file: !134, line: 128, baseType: !23, size: 32, offset: 554144)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "align_prices", scope: !133, file: !134, line: 130, baseType: !205, size: 512, offset: 554176)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "align_price_count", scope: !133, file: !134, line: 131, baseType: !23, size: 32, offset: 554688)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "opts_end_index", scope: !133, file: !134, line: 134, baseType: !23, size: 32, offset: 554720)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "opts_current_index", scope: !133, file: !134, line: 135, baseType: !23, size: 32, offset: 554752)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !133, file: !134, line: 136, baseType: !220, size: 1441792, offset: 554784)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 1441792, elements: !233)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_optimal", file: !134, line: 69, baseType: !222)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !134, line: 54, size: 352, elements: !223)
!223 = !{!224, !225, !226, !227, !228, !229, !230, !231, !232}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !222, file: !134, line: 55, baseType: !139, size: 32)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "prev_1_is_literal", scope: !222, file: !134, line: 57, baseType: !151, size: 8, offset: 32)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "prev_2", scope: !222, file: !134, line: 58, baseType: !151, size: 8, offset: 40)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "pos_prev_2", scope: !222, file: !134, line: 60, baseType: !23, size: 32, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "back_prev_2", scope: !222, file: !134, line: 61, baseType: !23, size: 32, offset: 96)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "price", scope: !222, file: !134, line: 63, baseType: !23, size: 32, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "pos_prev", scope: !222, file: !134, line: 64, baseType: !23, size: 32, offset: 160)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "back_prev", scope: !222, file: !134, line: 65, baseType: !23, size: 32, offset: 192)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "backs", scope: !222, file: !134, line: 67, baseType: !141, size: 128, offset: 224)
!233 = !{!234}
!234 = !DISubrange(count: 4096)
!235 = !DILocalVariable(name: "nice_len", scope: !74, file: !1, line: 24, type: !236)
!236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!237 = !DILocalVariable(name: "len_main", scope: !74, file: !1, line: 26, type: !23)
!238 = !DILocalVariable(name: "matches_count", scope: !74, file: !1, line: 27, type: !23)
!239 = !DILocalVariable(name: "buf", scope: !74, file: !1, line: 36, type: !240)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!242 = !DILocalVariable(name: "buf_avail", scope: !74, file: !1, line: 37, type: !236)
!243 = !DILocalVariable(name: "rep_len", scope: !74, file: !1, line: 47, type: !23)
!244 = !DILocalVariable(name: "rep_index", scope: !74, file: !1, line: 48, type: !23)
!245 = !DILocalVariable(name: "i", scope: !246, file: !1, line: 50, type: !23)
!246 = distinct !DILexicalBlock(scope: !74, file: !1, line: 50, column: 2)
!247 = !DILocalVariable(name: "buf_back", scope: !248, file: !1, line: 52, type: !250)
!248 = distinct !DILexicalBlock(scope: !249, file: !1, line: 50, column: 47)
!249 = distinct !DILexicalBlock(scope: !246, file: !1, line: 50, column: 2)
!250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !240)
!251 = !DILocalVariable(name: "len", scope: !248, file: !1, line: 61, type: !23)
!252 = !DILocalVariable(name: "back_main", scope: !74, file: !1, line: 90, type: !23)
!253 = !DILocalVariable(name: "new_dist", scope: !254, file: !1, line: 135, type: !236)
!254 = distinct !DILexicalBlock(scope: !255, file: !1, line: 134, column: 40)
!255 = distinct !DILexicalBlock(scope: !74, file: !1, line: 134, column: 6)
!256 = !DILocalVariable(name: "limit", scope: !74, file: !1, line: 157, type: !236)
!257 = !DILocalVariable(name: "i", scope: !258, file: !1, line: 159, type: !23)
!258 = distinct !DILexicalBlock(scope: !74, file: !1, line: 159, column: 2)
!259 = !DILocalVariable(name: "buf_back", scope: !260, file: !1, line: 160, type: !250)
!260 = distinct !DILexicalBlock(scope: !261, file: !1, line: 159, column: 47)
!261 = distinct !DILexicalBlock(scope: !258, file: !1, line: 159, column: 2)
!262 = !DILocalVariable(name: "len", scope: !260, file: !1, line: 165, type: !23)
!263 = distinct !DIAssignID()
!264 = !DILocation(line: 0, scope: !74)
!265 = !DILocation(line: 24, column: 32, scope: !74)
!266 = !DILocation(line: 27, column: 2, scope: !74)
!267 = !DILocation(line: 28, column: 10, scope: !268)
!268 = distinct !DILexicalBlock(scope: !74, file: !1, line: 28, column: 6)
!269 = !DILocation(line: 28, column: 21, scope: !268)
!270 = !DILocation(line: 28, column: 6, scope: !74)
!271 = !DILocation(line: 29, column: 49, scope: !272)
!272 = distinct !DILexicalBlock(scope: !268, file: !1, line: 28, column: 27)
!273 = !DILocation(line: 29, column: 14, scope: !272)
!274 = !DILocation(line: 30, column: 2, scope: !272)
!275 = !DILocation(line: 32, column: 21, scope: !276)
!276 = distinct !DILexicalBlock(scope: !268, file: !1, line: 30, column: 9)
!277 = !DILocation(line: 33, column: 26, scope: !276)
!278 = !DILocation(line: 33, column: 17, scope: !276)
!279 = distinct !DIAssignID()
!280 = !DILocation(line: 0, scope: !268)
!281 = !DILocation(line: 36, column: 23, scope: !74)
!282 = !DILocalVariable(name: "mf", arg: 1, scope: !283, file: !83, line: 222, type: !286)
!283 = distinct !DISubprogram(name: "mf_ptr", scope: !83, file: !83, line: 222, type: !284, scopeLine: 223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !288)
!284 = !DISubroutineType(types: !285)
!285 = !{!240, !286}
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!288 = !{!282}
!289 = !DILocation(line: 0, scope: !283, inlinedAt: !290)
!290 = distinct !DILocation(line: 36, column: 23, scope: !74)
!291 = !DILocation(line: 224, column: 20, scope: !283, inlinedAt: !290)
!292 = !DILocation(line: 36, column: 34, scope: !74)
!293 = !DILocation(line: 37, column: 29, scope: !74)
!294 = !DILocalVariable(name: "mf", arg: 1, scope: !295, file: !83, line: 230, type: !286)
!295 = distinct !DISubprogram(name: "mf_avail", scope: !83, file: !83, line: 230, type: !296, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !298)
!296 = !DISubroutineType(types: !297)
!297 = !{!23, !286}
!298 = !{!294}
!299 = !DILocation(line: 0, scope: !295, inlinedAt: !300)
!300 = distinct !DILocation(line: 37, column: 29, scope: !74)
!301 = !DILocation(line: 232, column: 23, scope: !295, inlinedAt: !300)
!302 = !DILocation(line: 39, column: 16, scope: !303)
!303 = distinct !DILexicalBlock(scope: !74, file: !1, line: 39, column: 6)
!304 = !DILocation(line: 39, column: 6, scope: !74)
!305 = !DILocation(line: 0, scope: !246)
!306 = !DILocation(line: 52, column: 41, scope: !248)
!307 = !DILocation(line: 52, column: 39, scope: !248)
!308 = !DILocation(line: 52, column: 56, scope: !248)
!309 = !DILocation(line: 0, scope: !248)
!310 = !DILocation(line: 56, column: 7, scope: !311)
!311 = distinct !DILexicalBlock(scope: !248, file: !1, line: 56, column: 7)
!312 = !DILocation(line: 50, column: 2, scope: !246)
!313 = !DILocation(line: 56, column: 7, scope: !248)
!314 = !DILocation(line: 62, column: 21, scope: !315)
!315 = distinct !DILexicalBlock(scope: !316, file: !1, line: 62, column: 3)
!316 = distinct !DILexicalBlock(scope: !248, file: !1, line: 62, column: 3)
!317 = !DILocation(line: 62, column: 3, scope: !316)
!318 = !DILocation(line: 63, column: 8, scope: !315)
!319 = !DILocation(line: 63, column: 20, scope: !315)
!320 = !DILocation(line: 63, column: 17, scope: !315)
!321 = !DILocation(line: 67, column: 11, scope: !322)
!322 = distinct !DILexicalBlock(scope: !248, file: !1, line: 67, column: 7)
!323 = !DILocation(line: 0, scope: !316)
!324 = !DILocation(line: 67, column: 7, scope: !248)
!325 = !DILocation(line: 63, column: 35, scope: !315)
!326 = !DILocation(line: 63, column: 5, scope: !315)
!327 = distinct !{!327, !317, !328}
!328 = !DILocation(line: 63, column: 42, scope: !316)
!329 = !DILocation(line: 74, column: 11, scope: !330)
!330 = distinct !DILexicalBlock(scope: !248, file: !1, line: 74, column: 7)
!331 = !DILocation(line: 74, column: 7, scope: !248)
!332 = !DILocation(line: 78, column: 2, scope: !249)
!333 = !DILocation(line: 41, column: 13, scope: !334)
!334 = distinct !DILexicalBlock(scope: !303, file: !1, line: 39, column: 21)
!335 = !DILocation(line: 42, column: 12, scope: !334)
!336 = !DILocation(line: 43, column: 3, scope: !334)
!337 = !DILocation(line: 68, column: 14, scope: !338)
!338 = distinct !DILexicalBlock(scope: !322, file: !1, line: 67, column: 24)
!339 = !DILocation(line: 69, column: 13, scope: !338)
!340 = !DILocalVariable(name: "mf", arg: 1, scope: !341, file: !83, line: 268, type: !81)
!341 = distinct !DISubprogram(name: "mf_skip", scope: !83, file: !83, line: 268, type: !109, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !342)
!342 = !{!340, !343}
!343 = !DILocalVariable(name: "amount", arg: 2, scope: !341, file: !83, line: 268, type: !23)
!344 = !DILocation(line: 0, scope: !341, inlinedAt: !345)
!345 = distinct !DILocation(line: 70, column: 4, scope: !338)
!346 = !DILocation(line: 270, column: 6, scope: !341, inlinedAt: !345)
!347 = !DILocation(line: 70, column: 20, scope: !338)
!348 = !DILocation(line: 270, column: 13, scope: !349, inlinedAt: !345)
!349 = distinct !DILexicalBlock(scope: !341, file: !83, line: 270, column: 6)
!350 = !DILocation(line: 271, column: 7, scope: !351, inlinedAt: !345)
!351 = distinct !DILexicalBlock(scope: !349, file: !83, line: 270, column: 19)
!352 = !DILocation(line: 271, column: 3, scope: !351, inlinedAt: !345)
!353 = !DILocation(line: 272, column: 18, scope: !351, inlinedAt: !345)
!354 = !DILocation(line: 273, column: 2, scope: !351, inlinedAt: !345)
!355 = !DILocation(line: 82, column: 15, scope: !356)
!356 = distinct !DILexicalBlock(scope: !74, file: !1, line: 82, column: 6)
!357 = !DILocation(line: 82, column: 6, scope: !74)
!358 = !DILocation(line: 83, column: 22, scope: !359)
!359 = distinct !DILexicalBlock(scope: !356, file: !1, line: 82, column: 28)
!360 = !DILocation(line: 83, column: 30, scope: !359)
!361 = !DILocation(line: 83, column: 44, scope: !359)
!362 = !DILocation(line: 83, column: 15, scope: !359)
!363 = !DILocation(line: 83, column: 49, scope: !359)
!364 = !DILocation(line: 84, column: 5, scope: !359)
!365 = !DILocation(line: 83, column: 13, scope: !359)
!366 = !DILocation(line: 85, column: 12, scope: !359)
!367 = !DILocation(line: 86, column: 24, scope: !359)
!368 = !DILocation(line: 0, scope: !341, inlinedAt: !369)
!369 = distinct !DILocation(line: 86, column: 3, scope: !359)
!370 = !DILocation(line: 270, column: 13, scope: !349, inlinedAt: !369)
!371 = !DILocation(line: 270, column: 6, scope: !341, inlinedAt: !369)
!372 = !DILocation(line: 271, column: 7, scope: !351, inlinedAt: !369)
!373 = !DILocation(line: 271, column: 3, scope: !351, inlinedAt: !369)
!374 = !DILocation(line: 272, column: 18, scope: !351, inlinedAt: !369)
!375 = !DILocation(line: 273, column: 2, scope: !351, inlinedAt: !369)
!376 = !DILocation(line: 91, column: 15, scope: !377)
!377 = distinct !DILexicalBlock(scope: !74, file: !1, line: 91, column: 6)
!378 = !DILocation(line: 91, column: 6, scope: !74)
!379 = !DILocation(line: 92, column: 22, scope: !380)
!380 = distinct !DILexicalBlock(scope: !377, file: !1, line: 91, column: 21)
!381 = !DILocation(line: 92, column: 30, scope: !380)
!382 = !DILocation(line: 92, column: 44, scope: !380)
!383 = !DILocation(line: 92, column: 15, scope: !380)
!384 = !DILocation(line: 92, column: 49, scope: !380)
!385 = !DILocation(line: 0, scope: !380)
!386 = !DILocation(line: 94, column: 24, scope: !380)
!387 = !DILocation(line: 94, column: 28, scope: !380)
!388 = !DILocation(line: 94, column: 3, scope: !380)
!389 = !DILocation(line: 95, column: 34, scope: !380)
!390 = !DILocation(line: 95, column: 5, scope: !380)
!391 = !DILocation(line: 95, column: 39, scope: !380)
!392 = !DILocation(line: 95, column: 43, scope: !380)
!393 = !DILocation(line: 94, column: 40, scope: !380)
!394 = !DILocation(line: 96, column: 9, scope: !395)
!395 = distinct !DILexicalBlock(scope: !396, file: !1, line: 96, column: 8)
!396 = distinct !DILexicalBlock(scope: !380, file: !1, line: 95, column: 48)
!397 = !DILocation(line: 96, column: 8, scope: !396)
!398 = !DILocation(line: 101, column: 4, scope: !396)
!399 = distinct !DIAssignID()
!400 = distinct !{!400, !388, !401}
!401 = !DILocation(line: 104, column: 3, scope: !380)
!402 = !DILocation(line: 106, column: 16, scope: !403)
!403 = distinct !DILexicalBlock(scope: !380, file: !1, line: 106, column: 7)
!404 = !DILocation(line: 106, column: 21, scope: !403)
!405 = !DILocation(line: 157, column: 34, scope: !74)
!406 = !DILocation(line: 110, column: 14, scope: !407)
!407 = distinct !DILexicalBlock(scope: !74, file: !1, line: 110, column: 6)
!408 = !DILocation(line: 110, column: 6, scope: !74)
!409 = !DILocation(line: 111, column: 15, scope: !410)
!410 = distinct !DILexicalBlock(scope: !411, file: !1, line: 111, column: 7)
!411 = distinct !DILexicalBlock(scope: !407, file: !1, line: 110, column: 20)
!412 = !DILocation(line: 111, column: 19, scope: !410)
!413 = !DILocation(line: 112, column: 5, scope: !410)
!414 = !DILocation(line: 112, column: 17, scope: !410)
!415 = !DILocation(line: 112, column: 21, scope: !410)
!416 = !DILocation(line: 113, column: 6, scope: !410)
!417 = !DILocation(line: 114, column: 17, scope: !410)
!418 = !DILocation(line: 114, column: 21, scope: !410)
!419 = !DILocation(line: 115, column: 6, scope: !410)
!420 = !DILocation(line: 116, column: 14, scope: !421)
!421 = distinct !DILexicalBlock(scope: !410, file: !1, line: 115, column: 43)
!422 = !DILocation(line: 117, column: 13, scope: !421)
!423 = !DILocation(line: 118, column: 24, scope: !421)
!424 = !DILocation(line: 0, scope: !341, inlinedAt: !425)
!425 = distinct !DILocation(line: 118, column: 4, scope: !421)
!426 = !DILocation(line: 271, column: 7, scope: !351, inlinedAt: !425)
!427 = !DILocation(line: 271, column: 3, scope: !351, inlinedAt: !425)
!428 = !DILocation(line: 272, column: 18, scope: !351, inlinedAt: !425)
!429 = !DILocation(line: 119, column: 4, scope: !421)
!430 = !DILocation(line: 123, column: 15, scope: !431)
!431 = distinct !DILexicalBlock(scope: !74, file: !1, line: 123, column: 6)
!432 = !DILocation(line: 123, column: 19, scope: !431)
!433 = !DILocation(line: 124, column: 13, scope: !434)
!434 = distinct !DILexicalBlock(scope: !431, file: !1, line: 123, column: 38)
!435 = !DILocation(line: 125, column: 12, scope: !434)
!436 = !DILocation(line: 126, column: 3, scope: !434)
!437 = !DILocation(line: 132, column: 12, scope: !74)
!438 = !DILocation(line: 132, column: 34, scope: !74)
!439 = !DILocation(line: 131, column: 32, scope: !74)
!440 = !DILocation(line: 131, column: 9, scope: !74)
!441 = !DILocation(line: 131, column: 30, scope: !74)
!442 = !DILocation(line: 134, column: 34, scope: !255)
!443 = !DILocation(line: 134, column: 6, scope: !74)
!444 = !DILocation(line: 136, column: 12, scope: !254)
!445 = !DILocation(line: 136, column: 26, scope: !254)
!446 = !DILocation(line: 135, column: 29, scope: !254)
!447 = !DILocation(line: 136, column: 31, scope: !254)
!448 = !DILocation(line: 0, scope: !254)
!449 = !DILocation(line: 138, column: 36, scope: !450)
!450 = distinct !DILexicalBlock(scope: !254, file: !1, line: 138, column: 7)
!451 = !DILocation(line: 139, column: 6, scope: !450)
!452 = !DILocation(line: 140, column: 49, scope: !450)
!453 = !DILocation(line: 140, column: 37, scope: !450)
!454 = !DILocation(line: 141, column: 6, scope: !450)
!455 = !DILocation(line: 143, column: 37, scope: !450)
!456 = !DILocation(line: 143, column: 41, scope: !450)
!457 = !DILocation(line: 144, column: 6, scope: !450)
!458 = !DILocation(line: 146, column: 14, scope: !459)
!459 = distinct !DILexicalBlock(scope: !450, file: !1, line: 145, column: 44)
!460 = !DILocation(line: 147, column: 13, scope: !459)
!461 = !DILocation(line: 0, scope: !258)
!462 = !DILocation(line: 160, column: 41, scope: !260)
!463 = !DILocation(line: 160, column: 39, scope: !260)
!464 = !DILocation(line: 160, column: 56, scope: !260)
!465 = !DILocation(line: 0, scope: !260)
!466 = !DILocation(line: 162, column: 7, scope: !467)
!467 = distinct !DILexicalBlock(scope: !260, file: !1, line: 162, column: 7)
!468 = !DILocation(line: 162, column: 7, scope: !260)
!469 = !DILocation(line: 166, column: 21, scope: !470)
!470 = distinct !DILexicalBlock(scope: !471, file: !1, line: 166, column: 3)
!471 = distinct !DILexicalBlock(scope: !260, file: !1, line: 166, column: 3)
!472 = !DILocation(line: 166, column: 3, scope: !471)
!473 = !DILocation(line: 167, column: 35, scope: !470)
!474 = !DILocation(line: 167, column: 5, scope: !470)
!475 = distinct !{!475, !472, !476}
!476 = !DILocation(line: 167, column: 42, scope: !471)
!477 = !DILocation(line: 167, column: 8, scope: !470)
!478 = !DILocation(line: 167, column: 20, scope: !470)
!479 = !DILocation(line: 167, column: 17, scope: !470)
!480 = !DILocation(line: 170, column: 14, scope: !481)
!481 = distinct !DILexicalBlock(scope: !482, file: !1, line: 169, column: 21)
!482 = distinct !DILexicalBlock(scope: !260, file: !1, line: 169, column: 7)
!483 = !DILocation(line: 171, column: 13, scope: !481)
!484 = !DILocation(line: 176, column: 24, scope: !74)
!485 = !DILocation(line: 176, column: 12, scope: !74)
!486 = !DILocation(line: 177, column: 11, scope: !74)
!487 = !DILocation(line: 178, column: 23, scope: !74)
!488 = !DILocation(line: 0, scope: !341, inlinedAt: !489)
!489 = distinct !DILocation(line: 178, column: 2, scope: !74)
!490 = !DILocation(line: 270, column: 13, scope: !349, inlinedAt: !489)
!491 = !DILocation(line: 270, column: 6, scope: !341, inlinedAt: !489)
!492 = !DILocation(line: 271, column: 7, scope: !351, inlinedAt: !489)
!493 = !DILocation(line: 271, column: 3, scope: !351, inlinedAt: !489)
!494 = !DILocation(line: 272, column: 18, scope: !351, inlinedAt: !489)
!495 = !DILocation(line: 273, column: 2, scope: !351, inlinedAt: !489)
!496 = !DILocation(line: 180, column: 1, scope: !74)
!497 = !DISubprogram(name: "lzma_mf_find", scope: !83, file: !83, line: 310, type: !498, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!498 = !DISubroutineType(types: !499)
!499 = !{!23, !81, !112, !101}
