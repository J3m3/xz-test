; ModuleID = 'liblzma/common/filter_encoder.c'
source_filename = "liblzma/common/filter_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_filter_encoder = type { i64, ptr, ptr, ptr, ptr, i32, ptr }
%struct.lzma_filter = type { i64, ptr }

@encoders = internal constant [9 x %struct.lzma_filter_encoder] [%struct.lzma_filter_encoder { i64 4611686018427387905, ptr @lzma_lzma_encoder_init, ptr @lzma_lzma_encoder_memusage, ptr null, ptr null, i32 5, ptr @lzma_lzma_props_encode }, %struct.lzma_filter_encoder { i64 33, ptr @lzma_lzma2_encoder_init, ptr @lzma_lzma2_encoder_memusage, ptr null, ptr null, i32 1, ptr @lzma_lzma2_props_encode }, %struct.lzma_filter_encoder { i64 4, ptr @lzma_simple_x86_encoder_init, ptr null, ptr null, ptr @lzma_simple_props_size, i32 0, ptr @lzma_simple_props_encode }, %struct.lzma_filter_encoder { i64 5, ptr @lzma_simple_powerpc_encoder_init, ptr null, ptr null, ptr @lzma_simple_props_size, i32 0, ptr @lzma_simple_props_encode }, %struct.lzma_filter_encoder { i64 6, ptr @lzma_simple_ia64_encoder_init, ptr null, ptr null, ptr @lzma_simple_props_size, i32 0, ptr @lzma_simple_props_encode }, %struct.lzma_filter_encoder { i64 7, ptr @lzma_simple_arm_encoder_init, ptr null, ptr null, ptr @lzma_simple_props_size, i32 0, ptr @lzma_simple_props_encode }, %struct.lzma_filter_encoder { i64 8, ptr @lzma_simple_armthumb_encoder_init, ptr null, ptr null, ptr @lzma_simple_props_size, i32 0, ptr @lzma_simple_props_encode }, %struct.lzma_filter_encoder { i64 9, ptr @lzma_simple_sparc_encoder_init, ptr null, ptr null, ptr @lzma_simple_props_size, i32 0, ptr @lzma_simple_props_encode }, %struct.lzma_filter_encoder { i64 3, ptr @lzma_delta_encoder_init, ptr @lzma_delta_coder_memusage, ptr null, ptr null, i32 1, ptr @lzma_delta_props_encode }], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext range(i8 0, 2) i8 @lzma_filter_encoder_is_supported(i64 noundef %id) local_unnamed_addr #0 {
entry:
  switch i64 %id, label %encoder_find.exit [
    i64 4611686018427387905, label %if.then.i
    i64 33, label %if.then.i
    i64 4, label %if.then.i
    i64 5, label %if.then.i
    i64 6, label %if.then.i
    i64 7, label %if.then.i
    i64 8, label %if.then.i
    i64 9, label %if.then.i
    i64 3, label %if.then.i
  ]

if.then.i:                                        ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  br label %encoder_find.exit

encoder_find.exit:                                ; preds = %entry, %if.then.i
  %spec.select.i = phi i8 [ 1, %if.then.i ], [ 0, %entry ]
  ret i8 %spec.select.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal ptr @encoder_find(i64 noundef %id) #0 {
entry:
  switch i64 %id, label %cleanup [
    i64 4611686018427387905, label %if.then
    i64 33, label %if.then.fold.split
    i64 4, label %if.then.fold.split9
    i64 5, label %if.then.fold.split10
    i64 6, label %if.then.fold.split11
    i64 7, label %if.then.fold.split12
    i64 8, label %if.then.fold.split13
    i64 9, label %if.then.fold.split14
    i64 3, label %if.then.fold.split15
  ]

if.then.fold.split:                               ; preds = %entry
  br label %if.then

if.then.fold.split9:                              ; preds = %entry
  br label %if.then

if.then.fold.split10:                             ; preds = %entry
  br label %if.then

if.then.fold.split11:                             ; preds = %entry
  br label %if.then

if.then.fold.split12:                             ; preds = %entry
  br label %if.then

if.then.fold.split13:                             ; preds = %entry
  br label %if.then

if.then.fold.split14:                             ; preds = %entry
  br label %if.then

if.then.fold.split15:                             ; preds = %entry
  br label %if.then

if.then:                                          ; preds = %entry, %if.then.fold.split15, %if.then.fold.split14, %if.then.fold.split13, %if.then.fold.split12, %if.then.fold.split11, %if.then.fold.split10, %if.then.fold.split9, %if.then.fold.split
  %i.07.lcssa = phi i64 [ 0, %entry ], [ 1, %if.then.fold.split ], [ 2, %if.then.fold.split9 ], [ 3, %if.then.fold.split10 ], [ 4, %if.then.fold.split11 ], [ 5, %if.then.fold.split12 ], [ 6, %if.then.fold.split13 ], [ 7, %if.then.fold.split14 ], [ 8, %if.then.fold.split15 ]
  %add.ptr = getelementptr inbounds %struct.lzma_filter_encoder, ptr @encoders, i64 %i.07.lcssa
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %spec.select = phi ptr [ %add.ptr, %if.then ], [ null, %entry ]
  ret ptr %spec.select
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_filters_update(ptr nocapture noundef readonly %strm, ptr noundef %filters) local_unnamed_addr #1 {
entry:
  %reversed_filters = alloca [5 x %struct.lzma_filter], align 16
  %internal = getelementptr inbounds i8, ptr %strm, i64 56
  %0 = load ptr, ptr %internal, align 8
  %update = getelementptr inbounds i8, ptr %0, i64 56
  %1 = load ptr, ptr %update, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call.i = tail call i64 @lzma_raw_coder_memusage(ptr noundef nonnull @encoder_find, ptr noundef %filters) #5
  %cmp1 = icmp eq i64 %call.i, -1
  br i1 %cmp1, label %return, label %while.cond

while.cond:                                       ; preds = %if.end, %while.cond
  %indvar = phi i64 [ %indvar.next, %while.cond ], [ 0, %if.end ]
  %count.0 = phi i64 [ %inc, %while.cond ], [ 1, %if.end ]
  %arrayidx = getelementptr inbounds %struct.lzma_filter, ptr %filters, i64 %count.0
  %2 = load i64, ptr %arrayidx, align 8
  %cmp4.not = icmp eq i64 %2, -1
  %inc = add i64 %count.0, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %cmp4.not, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %reversed_filters) #5
  %cmp531.not = icmp eq i64 %count.0, 0
  br i1 %cmp531.not, label %for.cond.cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %while.end
  %xtraiter = and i64 %count.0, 1
  %3 = icmp eq i64 %indvar, 0
  br i1 %3, label %for.cond.cleanup.loopexit.unr-lcssa, label %for.body.preheader.new

for.body.preheader.new:                           ; preds = %for.body.preheader
  %unroll_iter = and i64 %count.0, -2
  br label %for.body

for.cond.cleanup.loopexit.unr-lcssa:              ; preds = %for.body, %for.body.preheader
  %i.032.unr = phi i64 [ 0, %for.body.preheader ], [ %inc9.1, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.cond.cleanup, label %for.body.epil

for.body.epil:                                    ; preds = %for.cond.cleanup.loopexit.unr-lcssa
  %4 = xor i64 %i.032.unr, -1
  %sub6.epil = add i64 %count.0, %4
  %arrayidx7.epil = getelementptr inbounds [5 x %struct.lzma_filter], ptr %reversed_filters, i64 0, i64 %sub6.epil
  %arrayidx8.epil = getelementptr inbounds %struct.lzma_filter, ptr %filters, i64 %i.032.unr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %arrayidx7.epil, ptr noundef nonnull align 8 dereferenceable(16) %arrayidx8.epil, i64 16, i1 false)
  br label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.body.epil, %for.cond.cleanup.loopexit.unr-lcssa, %while.end
  %arrayidx10 = getelementptr inbounds [5 x %struct.lzma_filter], ptr %reversed_filters, i64 0, i64 %count.0
  store i64 -1, ptr %arrayidx10, align 16
  %5 = load ptr, ptr %internal, align 8
  %update14 = getelementptr inbounds i8, ptr %5, i64 56
  %6 = load ptr, ptr %update14, align 8
  %7 = load ptr, ptr %5, align 8
  %allocator = getelementptr inbounds i8, ptr %strm, i64 48
  %8 = load ptr, ptr %allocator, align 8
  %call17 = call i32 %6(ptr noundef %7, ptr noundef %8, ptr noundef nonnull %filters, ptr noundef nonnull %reversed_filters) #5
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %reversed_filters) #5
  br label %return

for.body:                                         ; preds = %for.body, %for.body.preheader.new
  %i.032 = phi i64 [ 0, %for.body.preheader.new ], [ %inc9.1, %for.body ]
  %niter = phi i64 [ 0, %for.body.preheader.new ], [ %niter.next.1, %for.body ]
  %9 = xor i64 %i.032, -1
  %sub6 = add i64 %count.0, %9
  %arrayidx7 = getelementptr inbounds [5 x %struct.lzma_filter], ptr %reversed_filters, i64 0, i64 %sub6
  %arrayidx8 = getelementptr inbounds %struct.lzma_filter, ptr %filters, i64 %i.032
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %arrayidx7, ptr noundef nonnull align 8 dereferenceable(16) %arrayidx8, i64 16, i1 false)
  %inc9 = or disjoint i64 %i.032, 1
  %10 = xor i64 %i.032, -2
  %sub6.1 = add i64 %count.0, %10
  %arrayidx7.1 = getelementptr inbounds [5 x %struct.lzma_filter], ptr %reversed_filters, i64 0, i64 %sub6.1
  %arrayidx8.1 = getelementptr inbounds %struct.lzma_filter, ptr %filters, i64 %inc9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %arrayidx7.1, ptr noundef nonnull align 8 dereferenceable(16) %arrayidx8.1, i64 16, i1 false)
  %inc9.1 = add nuw i64 %i.032, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %for.cond.cleanup.loopexit.unr-lcssa, label %for.body

return:                                           ; preds = %if.end, %entry, %for.cond.cleanup
  %retval.0 = phi i32 [ %call17, %for.cond.cleanup ], [ 11, %entry ], [ 8, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i64 @lzma_raw_encoder_memusage(ptr noundef %filters) local_unnamed_addr #1 {
entry:
  %call = tail call i64 @lzma_raw_coder_memusage(ptr noundef nonnull @encoder_find, ptr noundef %filters) #5
  ret i64 %call
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_raw_encoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %options) local_unnamed_addr #1 {
entry:
  %call = tail call i32 @lzma_raw_coder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %options, ptr noundef nonnull @encoder_find, i1 noundef zeroext true) #5
  ret i32 %call
}

declare i32 @lzma_raw_coder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_raw_encoder(ptr noundef %strm, ptr noundef %options) local_unnamed_addr #1 {
entry:
  %call = tail call i32 @lzma_strm_init(ptr noundef %strm) #5
  %cmp.not.not = icmp eq i32 %call, 0
  br i1 %cmp.not.not, label %do.end, label %return

do.end:                                           ; preds = %entry
  %internal = getelementptr inbounds i8, ptr %strm, i64 56
  %0 = load ptr, ptr %internal, align 8
  %allocator = getelementptr inbounds i8, ptr %strm, i64 48
  %1 = load ptr, ptr %allocator, align 8
  %call3 = tail call i32 @lzma_raw_coder_init(ptr noundef %0, ptr noundef %1, ptr noundef %options, ptr noundef nonnull @encoder_find, i1 noundef zeroext true) #5
  %cmp4.not.not = icmp eq i32 %call3, 0
  br i1 %cmp4.not.not, label %do.end10, label %cleanup7

cleanup7:                                         ; preds = %do.end
  tail call void @lzma_end(ptr noundef nonnull %strm) #5
  br label %return

do.end10:                                         ; preds = %do.end
  %2 = load ptr, ptr %internal, align 8
  %supported_actions = getelementptr inbounds i8, ptr %2, i64 80
  store i8 1, ptr %supported_actions, align 8
  %3 = load ptr, ptr %internal, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %3, i64 81
  store i8 1, ptr %arrayidx14, align 1
  %4 = load ptr, ptr %internal, align 8
  %arrayidx17 = getelementptr inbounds i8, ptr %4, i64 83
  store i8 1, ptr %arrayidx17, align 1
  br label %return

return:                                           ; preds = %cleanup7, %entry, %do.end10
  %retval.2 = phi i32 [ %call, %entry ], [ %call3, %cleanup7 ], [ 0, %do.end10 ]
  ret i32 %retval.2
}

declare i32 @lzma_strm_init(ptr noundef) local_unnamed_addr #4

declare void @lzma_end(ptr noundef) local_unnamed_addr #4

declare i64 @lzma_raw_coder_memusage(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_properties_size(ptr noundef %size, ptr nocapture noundef readonly %filter) local_unnamed_addr #1 {
entry:
  %0 = load i64, ptr %filter, align 8
  switch i64 %0, label %if.then [
    i64 4611686018427387905, label %if.end
    i64 33, label %if.then.fold.split.i
    i64 4, label %if.then.fold.split9.i
    i64 5, label %if.then.fold.split10.i
    i64 6, label %if.then.fold.split11.i
    i64 7, label %if.then.fold.split12.i
    i64 8, label %if.then.fold.split13.i
    i64 9, label %if.then.fold.split14.i
    i64 3, label %if.then.fold.split15.i
  ]

if.then.fold.split.i:                             ; preds = %entry
  br label %if.end

if.then.fold.split9.i:                            ; preds = %entry
  br label %if.end

if.then.fold.split10.i:                           ; preds = %entry
  br label %if.end

if.then.fold.split11.i:                           ; preds = %entry
  br label %if.end

if.then.fold.split12.i:                           ; preds = %entry
  br label %if.end

if.then.fold.split13.i:                           ; preds = %entry
  br label %if.end

if.then.fold.split14.i:                           ; preds = %entry
  br label %if.end

if.then.fold.split15.i:                           ; preds = %entry
  br label %if.end

if.then:                                          ; preds = %entry
  %cmp2 = icmp sgt i64 %0, -1
  %cond = select i1 %cmp2, i32 8, i32 11
  br label %cleanup

if.end:                                           ; preds = %if.then.fold.split15.i, %if.then.fold.split14.i, %if.then.fold.split13.i, %if.then.fold.split12.i, %if.then.fold.split11.i, %if.then.fold.split10.i, %if.then.fold.split9.i, %if.then.fold.split.i, %entry
  %i.07.lcssa.i = phi i64 [ 0, %entry ], [ 1, %if.then.fold.split.i ], [ 2, %if.then.fold.split9.i ], [ 3, %if.then.fold.split10.i ], [ 4, %if.then.fold.split11.i ], [ 5, %if.then.fold.split12.i ], [ 6, %if.then.fold.split13.i ], [ 7, %if.then.fold.split14.i ], [ 8, %if.then.fold.split15.i ]
  %add.ptr.i = getelementptr inbounds %struct.lzma_filter_encoder, ptr @encoders, i64 %i.07.lcssa.i
  %props_size_get = getelementptr inbounds i8, ptr %add.ptr.i, i64 32
  %1 = load ptr, ptr %props_size_get, align 8
  %cmp3 = icmp eq ptr %1, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %props_size_fixed = getelementptr inbounds i8, ptr %add.ptr.i, i64 40
  %2 = load i32, ptr %props_size_fixed, align 8
  store i32 %2, ptr %size, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %options = getelementptr inbounds i8, ptr %filter, i64 8
  %3 = load ptr, ptr %options, align 8
  %call7 = tail call i32 %1(ptr noundef %size, ptr noundef %3) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  %retval.0 = phi i32 [ %cond, %if.then ], [ 0, %if.then4 ], [ %call7, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_properties_encode(ptr nocapture noundef readonly %filter, ptr noundef %props) local_unnamed_addr #1 {
entry:
  %0 = load i64, ptr %filter, align 8
  switch i64 %0, label %cleanup [
    i64 4611686018427387905, label %if.end
    i64 33, label %if.then.fold.split.i
    i64 4, label %if.then.fold.split9.i
    i64 5, label %if.then.fold.split10.i
    i64 6, label %if.then.fold.split11.i
    i64 7, label %if.then.fold.split12.i
    i64 8, label %if.then.fold.split13.i
    i64 9, label %if.then.fold.split14.i
    i64 3, label %if.then.fold.split15.i
  ]

if.then.fold.split.i:                             ; preds = %entry
  br label %if.end

if.then.fold.split9.i:                            ; preds = %entry
  br label %if.end

if.then.fold.split10.i:                           ; preds = %entry
  br label %if.end

if.then.fold.split11.i:                           ; preds = %entry
  br label %if.end

if.then.fold.split12.i:                           ; preds = %entry
  br label %if.end

if.then.fold.split13.i:                           ; preds = %entry
  br label %if.end

if.then.fold.split14.i:                           ; preds = %entry
  br label %if.end

if.then.fold.split15.i:                           ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.then.fold.split15.i, %if.then.fold.split14.i, %if.then.fold.split13.i, %if.then.fold.split12.i, %if.then.fold.split11.i, %if.then.fold.split10.i, %if.then.fold.split9.i, %if.then.fold.split.i, %entry
  %i.07.lcssa.i = phi i64 [ 0, %entry ], [ 1, %if.then.fold.split.i ], [ 2, %if.then.fold.split9.i ], [ 3, %if.then.fold.split10.i ], [ 4, %if.then.fold.split11.i ], [ 5, %if.then.fold.split12.i ], [ 6, %if.then.fold.split13.i ], [ 7, %if.then.fold.split14.i ], [ 8, %if.then.fold.split15.i ]
  %props_encode = getelementptr inbounds %struct.lzma_filter_encoder, ptr @encoders, i64 %i.07.lcssa.i, i32 6
  %1 = load ptr, ptr %props_encode, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %options = getelementptr inbounds i8, ptr %filter, i64 8
  %2 = load ptr, ptr %options, align 8
  %call5 = tail call i32 %1(ptr noundef %2, ptr noundef %props) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end, %if.end3
  %retval.0 = phi i32 [ %call5, %if.end3 ], [ 0, %if.end ], [ 11, %entry ]
  ret i32 %retval.0
}

declare i32 @lzma_lzma_encoder_init(ptr noundef, ptr noundef, ptr noundef) #4

declare i64 @lzma_lzma_encoder_memusage(ptr noundef) #4

declare i32 @lzma_lzma_props_encode(ptr noundef, ptr noundef) #4

declare i32 @lzma_lzma2_encoder_init(ptr noundef, ptr noundef, ptr noundef) #4

declare i64 @lzma_lzma2_encoder_memusage(ptr noundef) #4

declare i32 @lzma_lzma2_props_encode(ptr noundef, ptr noundef) #4

declare i32 @lzma_simple_x86_encoder_init(ptr noundef, ptr noundef, ptr noundef) #4

declare i32 @lzma_simple_props_size(ptr noundef, ptr noundef) #4

declare i32 @lzma_simple_props_encode(ptr noundef, ptr noundef) #4

declare i32 @lzma_simple_powerpc_encoder_init(ptr noundef, ptr noundef, ptr noundef) #4

declare i32 @lzma_simple_ia64_encoder_init(ptr noundef, ptr noundef, ptr noundef) #4

declare i32 @lzma_simple_arm_encoder_init(ptr noundef, ptr noundef, ptr noundef) #4

declare i32 @lzma_simple_armthumb_encoder_init(ptr noundef, ptr noundef, ptr noundef) #4

declare i32 @lzma_simple_sparc_encoder_init(ptr noundef, ptr noundef, ptr noundef) #4

declare i32 @lzma_delta_encoder_init(ptr noundef, ptr noundef, ptr noundef) #4

declare i64 @lzma_delta_coder_memusage(ptr noundef) #4

declare i32 @lzma_delta_props_encode(ptr noundef, ptr noundef) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
