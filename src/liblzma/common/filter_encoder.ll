; ModuleID = 'liblzma/common/filter_encoder.c'
source_filename = "liblzma/common/filter_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_filter_encoder = type { i64, ptr, ptr, ptr, ptr, i32, ptr }
%struct.lzma_filter = type { i64, ptr }

@encoders = internal constant [9 x %struct.lzma_filter_encoder] [%struct.lzma_filter_encoder { i64 4611686018427387905, ptr @lzma_lzma_encoder_init, ptr @lzma_lzma_encoder_memusage, ptr null, ptr null, i32 5, ptr @lzma_lzma_props_encode }, %struct.lzma_filter_encoder { i64 33, ptr @lzma_lzma2_encoder_init, ptr @lzma_lzma2_encoder_memusage, ptr null, ptr null, i32 1, ptr @lzma_lzma2_props_encode }, %struct.lzma_filter_encoder { i64 4, ptr @lzma_simple_x86_encoder_init, ptr null, ptr null, ptr @lzma_simple_props_size, i32 0, ptr @lzma_simple_props_encode }, %struct.lzma_filter_encoder { i64 5, ptr @lzma_simple_powerpc_encoder_init, ptr null, ptr null, ptr @lzma_simple_props_size, i32 0, ptr @lzma_simple_props_encode }, %struct.lzma_filter_encoder { i64 6, ptr @lzma_simple_ia64_encoder_init, ptr null, ptr null, ptr @lzma_simple_props_size, i32 0, ptr @lzma_simple_props_encode }, %struct.lzma_filter_encoder { i64 7, ptr @lzma_simple_arm_encoder_init, ptr null, ptr null, ptr @lzma_simple_props_size, i32 0, ptr @lzma_simple_props_encode }, %struct.lzma_filter_encoder { i64 8, ptr @lzma_simple_armthumb_encoder_init, ptr null, ptr null, ptr @lzma_simple_props_size, i32 0, ptr @lzma_simple_props_encode }, %struct.lzma_filter_encoder { i64 9, ptr @lzma_simple_sparc_encoder_init, ptr null, ptr null, ptr @lzma_simple_props_size, i32 0, ptr @lzma_simple_props_encode }, %struct.lzma_filter_encoder { i64 3, ptr @lzma_delta_encoder_init, ptr @lzma_delta_coder_memusage, ptr null, ptr null, i32 1, ptr @lzma_delta_props_encode }], align 16, !dbg !0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext range(i8 0, 2) i8 @lzma_filter_encoder_is_supported(i64 noundef %id) local_unnamed_addr #0 !dbg !203 {
entry:
    #dbg_value(i64 %id, !208, !DIExpression(), !209)
    #dbg_value(i64 %id, !210, !DIExpression(), !218)
    #dbg_value(i64 0, !216, !DIExpression(), !220)
    #dbg_value(i64 0, !216, !DIExpression(), !220)
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
  ], !dbg !221

if.then.i:                                        ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  br label %encoder_find.exit, !dbg !223

encoder_find.exit:                                ; preds = %entry, %if.then.i
  %spec.select.i = phi i8 [ 1, %if.then.i ], [ 0, %entry ]
  ret i8 %spec.select.i, !dbg !225
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal ptr @encoder_find(i64 noundef %id) #0 !dbg !211 {
entry:
    #dbg_value(i64 %id, !210, !DIExpression(), !226)
    #dbg_value(i64 0, !216, !DIExpression(), !227)
    #dbg_value(i64 0, !216, !DIExpression(), !227)
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
  ], !dbg !228

if.then.fold.split:                               ; preds = %entry
  br label %if.then, !dbg !229

if.then.fold.split9:                              ; preds = %entry
  br label %if.then, !dbg !229

if.then.fold.split10:                             ; preds = %entry
  br label %if.then, !dbg !229

if.then.fold.split11:                             ; preds = %entry
  br label %if.then, !dbg !229

if.then.fold.split12:                             ; preds = %entry
  br label %if.then, !dbg !229

if.then.fold.split13:                             ; preds = %entry
  br label %if.then, !dbg !229

if.then.fold.split14:                             ; preds = %entry
  br label %if.then, !dbg !229

if.then.fold.split15:                             ; preds = %entry
  br label %if.then, !dbg !229

if.then:                                          ; preds = %entry, %if.then.fold.split15, %if.then.fold.split14, %if.then.fold.split13, %if.then.fold.split12, %if.then.fold.split11, %if.then.fold.split10, %if.then.fold.split9, %if.then.fold.split
  %i.07.lcssa = phi i64 [ 0, %entry ], [ 1, %if.then.fold.split ], [ 2, %if.then.fold.split9 ], [ 3, %if.then.fold.split10 ], [ 4, %if.then.fold.split11 ], [ 5, %if.then.fold.split12 ], [ 6, %if.then.fold.split13 ], [ 7, %if.then.fold.split14 ], [ 8, %if.then.fold.split15 ]
  %add.ptr = getelementptr inbounds %struct.lzma_filter_encoder, ptr @encoders, i64 %i.07.lcssa, !dbg !229
  br label %cleanup, !dbg !230

cleanup:                                          ; preds = %entry, %if.then
  %spec.select = phi ptr [ %add.ptr, %if.then ], [ null, %entry ]
  ret ptr %spec.select, !dbg !231
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_filters_update(ptr nocapture noundef readonly %strm, ptr noundef %filters) local_unnamed_addr #1 !dbg !232 {
entry:
  %reversed_filters = alloca [5 x %struct.lzma_filter], align 16, !DIAssignID !270
    #dbg_assign(i1 undef, !264, !DIExpression(), !270, ptr %reversed_filters, !DIExpression(), !271)
    #dbg_value(ptr %strm, !261, !DIExpression(), !271)
    #dbg_value(ptr %filters, !262, !DIExpression(), !271)
  %internal = getelementptr inbounds i8, ptr %strm, i64 56, !dbg !272
  %0 = load ptr, ptr %internal, align 8, !dbg !272
  %update = getelementptr inbounds i8, ptr %0, i64 56, !dbg !274
  %1 = load ptr, ptr %update, align 8, !dbg !274
  %cmp = icmp eq ptr %1, null, !dbg !275
  br i1 %cmp, label %return, label %if.end, !dbg !276

if.end:                                           ; preds = %entry
    #dbg_value(ptr %filters, !277, !DIExpression(), !282)
  %call.i = tail call i64 @lzma_raw_coder_memusage(ptr noundef nonnull @encoder_find, ptr noundef %filters) #5, !dbg !285
  %cmp1 = icmp eq i64 %call.i, -1, !dbg !286
  br i1 %cmp1, label %return, label %while.cond, !dbg !287

while.cond:                                       ; preds = %if.end, %while.cond
  %indvar = phi i64 [ %indvar.next, %while.cond ], [ 0, %if.end ]
  %count.0 = phi i64 [ %inc, %while.cond ], [ 1, %if.end ], !dbg !271
    #dbg_value(i64 %count.0, !263, !DIExpression(), !271)
  %arrayidx = getelementptr inbounds %struct.lzma_filter, ptr %filters, i64 %count.0, !dbg !288
  %2 = load i64, ptr %arrayidx, align 8, !dbg !289
  %cmp4.not = icmp eq i64 %2, -1, !dbg !290
  %inc = add i64 %count.0, 1, !dbg !291
    #dbg_value(i64 %inc, !263, !DIExpression(), !271)
  %indvar.next = add i64 %indvar, 1, !dbg !292
  br i1 %cmp4.not, label %while.end, label %while.cond, !dbg !292, !llvm.loop !293

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %reversed_filters) #5, !dbg !295
    #dbg_value(i64 0, !268, !DIExpression(), !296)
  %cmp531.not = icmp eq i64 %count.0, 0, !dbg !297
  br i1 %cmp531.not, label %for.cond.cleanup, label %for.body.preheader, !dbg !299

for.body.preheader:                               ; preds = %while.end
  %xtraiter = and i64 %count.0, 1, !dbg !299
  %3 = icmp eq i64 %indvar, 0, !dbg !299
  br i1 %3, label %for.cond.cleanup.loopexit.unr-lcssa, label %for.body.preheader.new, !dbg !299

for.body.preheader.new:                           ; preds = %for.body.preheader
  %unroll_iter = and i64 %count.0, -2, !dbg !299
  br label %for.body, !dbg !299

for.cond.cleanup.loopexit.unr-lcssa:              ; preds = %for.body, %for.body.preheader
  %i.032.unr = phi i64 [ 0, %for.body.preheader ], [ %inc9.1, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !299
  br i1 %lcmp.mod.not, label %for.cond.cleanup, label %for.body.epil, !dbg !299

for.body.epil:                                    ; preds = %for.cond.cleanup.loopexit.unr-lcssa
    #dbg_value(i64 %i.032.unr, !268, !DIExpression(), !296)
  %4 = xor i64 %i.032.unr, -1, !dbg !300
  %sub6.epil = add i64 %count.0, %4, !dbg !300
  %arrayidx7.epil = getelementptr inbounds [5 x %struct.lzma_filter], ptr %reversed_filters, i64 0, i64 %sub6.epil, !dbg !301
  %arrayidx8.epil = getelementptr inbounds %struct.lzma_filter, ptr %filters, i64 %i.032.unr, !dbg !302
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %arrayidx7.epil, ptr noundef nonnull align 8 dereferenceable(16) %arrayidx8.epil, i64 16, i1 false), !dbg !302
    #dbg_value(i64 %i.032.unr, !268, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !296)
  br label %for.cond.cleanup, !dbg !303

for.cond.cleanup:                                 ; preds = %for.body.epil, %for.cond.cleanup.loopexit.unr-lcssa, %while.end
  %arrayidx10 = getelementptr inbounds [5 x %struct.lzma_filter], ptr %reversed_filters, i64 0, i64 %count.0, !dbg !303
  store i64 -1, ptr %arrayidx10, align 16, !dbg !304
  %5 = load ptr, ptr %internal, align 8, !dbg !305
  %update14 = getelementptr inbounds i8, ptr %5, i64 56, !dbg !306
  %6 = load ptr, ptr %update14, align 8, !dbg !306
  %7 = load ptr, ptr %5, align 8, !dbg !307
  %allocator = getelementptr inbounds i8, ptr %strm, i64 48, !dbg !308
  %8 = load ptr, ptr %allocator, align 8, !dbg !308
  %call17 = call i32 %6(ptr noundef %7, ptr noundef %8, ptr noundef nonnull %filters, ptr noundef nonnull %reversed_filters) #5, !dbg !309
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %reversed_filters) #5, !dbg !310
  br label %return

for.body:                                         ; preds = %for.body, %for.body.preheader.new
  %i.032 = phi i64 [ 0, %for.body.preheader.new ], [ %inc9.1, %for.body ]
  %niter = phi i64 [ 0, %for.body.preheader.new ], [ %niter.next.1, %for.body ]
    #dbg_value(i64 %i.032, !268, !DIExpression(), !296)
  %9 = xor i64 %i.032, -1, !dbg !300
  %sub6 = add i64 %count.0, %9, !dbg !300
  %arrayidx7 = getelementptr inbounds [5 x %struct.lzma_filter], ptr %reversed_filters, i64 0, i64 %sub6, !dbg !301
  %arrayidx8 = getelementptr inbounds %struct.lzma_filter, ptr %filters, i64 %i.032, !dbg !302
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %arrayidx7, ptr noundef nonnull align 8 dereferenceable(16) %arrayidx8, i64 16, i1 false), !dbg !302
  %inc9 = or disjoint i64 %i.032, 1, !dbg !311
    #dbg_value(i64 %inc9, !268, !DIExpression(), !296)
  %10 = xor i64 %i.032, -2, !dbg !300
  %sub6.1 = add i64 %count.0, %10, !dbg !300
  %arrayidx7.1 = getelementptr inbounds [5 x %struct.lzma_filter], ptr %reversed_filters, i64 0, i64 %sub6.1, !dbg !301
  %arrayidx8.1 = getelementptr inbounds %struct.lzma_filter, ptr %filters, i64 %inc9, !dbg !302
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %arrayidx7.1, ptr noundef nonnull align 8 dereferenceable(16) %arrayidx8.1, i64 16, i1 false), !dbg !302
  %inc9.1 = add nuw i64 %i.032, 2, !dbg !311
    #dbg_value(i64 %inc9.1, !268, !DIExpression(), !296)
  %niter.next.1 = add i64 %niter, 2, !dbg !299
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !299
  br i1 %niter.ncmp.1, label %for.cond.cleanup.loopexit.unr-lcssa, label %for.body, !dbg !299, !llvm.loop !312

return:                                           ; preds = %if.end, %entry, %for.cond.cleanup
  %retval.0 = phi i32 [ %call17, %for.cond.cleanup ], [ 11, %entry ], [ 8, %if.end ], !dbg !271
  ret i32 %retval.0, !dbg !310
}

; Function Attrs: nounwind uwtable
define dso_local i64 @lzma_raw_encoder_memusage(ptr noundef %filters) local_unnamed_addr #1 !dbg !278 {
entry:
    #dbg_value(ptr %filters, !277, !DIExpression(), !314)
  %call = tail call i64 @lzma_raw_coder_memusage(ptr noundef nonnull @encoder_find, ptr noundef %filters) #5, !dbg !315
  ret i64 %call, !dbg !316
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_raw_encoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %options) local_unnamed_addr #1 !dbg !317 {
entry:
    #dbg_value(ptr %next, !321, !DIExpression(), !324)
    #dbg_value(ptr %allocator, !322, !DIExpression(), !324)
    #dbg_value(ptr %options, !323, !DIExpression(), !324)
  %call = tail call i32 @lzma_raw_coder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %options, ptr noundef nonnull @encoder_find, i1 noundef zeroext true) #5, !dbg !325
  ret i32 %call, !dbg !326
}

declare !dbg !327 i32 @lzma_raw_coder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_raw_encoder(ptr noundef %strm, ptr noundef %options) local_unnamed_addr #1 !dbg !330 {
entry:
    #dbg_value(ptr %strm, !332, !DIExpression(), !339)
    #dbg_value(ptr %options, !333, !DIExpression(), !339)
  %call = tail call i32 @lzma_strm_init(ptr noundef %strm) #5, !dbg !340
    #dbg_value(i32 %call, !334, !DIExpression(), !341)
  %cmp.not.not = icmp eq i32 %call, 0, !dbg !342
  br i1 %cmp.not.not, label %do.end, label %return

do.end:                                           ; preds = %entry
  %internal = getelementptr inbounds i8, ptr %strm, i64 56, !dbg !344
  %0 = load ptr, ptr %internal, align 8, !dbg !344
  %allocator = getelementptr inbounds i8, ptr %strm, i64 48, !dbg !344
  %1 = load ptr, ptr %allocator, align 8, !dbg !344
  %call3 = tail call i32 @lzma_raw_coder_init(ptr noundef %0, ptr noundef %1, ptr noundef %options, ptr noundef nonnull @encoder_find, i1 noundef zeroext true) #5, !dbg !344
    #dbg_value(i32 %call3, !338, !DIExpression(), !345)
  %cmp4.not.not = icmp eq i32 %call3, 0, !dbg !346
  br i1 %cmp4.not.not, label %do.end10, label %cleanup7, !dbg !344

cleanup7:                                         ; preds = %do.end
  tail call void @lzma_end(ptr noundef nonnull %strm) #5, !dbg !348
  br label %return

do.end10:                                         ; preds = %do.end
  %2 = load ptr, ptr %internal, align 8, !dbg !350
  %supported_actions = getelementptr inbounds i8, ptr %2, i64 80, !dbg !351
  store i8 1, ptr %supported_actions, align 8, !dbg !352
  %3 = load ptr, ptr %internal, align 8, !dbg !353
  %arrayidx14 = getelementptr inbounds i8, ptr %3, i64 81, !dbg !354
  store i8 1, ptr %arrayidx14, align 1, !dbg !355
  %4 = load ptr, ptr %internal, align 8, !dbg !356
  %arrayidx17 = getelementptr inbounds i8, ptr %4, i64 83, !dbg !357
  store i8 1, ptr %arrayidx17, align 1, !dbg !358
  br label %return, !dbg !359

return:                                           ; preds = %cleanup7, %entry, %do.end10
  %retval.2 = phi i32 [ %call, %entry ], [ %call3, %cleanup7 ], [ 0, %do.end10 ], !dbg !339
  ret i32 %retval.2, !dbg !360
}

declare !dbg !361 i32 @lzma_strm_init(ptr noundef) local_unnamed_addr #4

declare !dbg !364 void @lzma_end(ptr noundef) local_unnamed_addr #4

declare !dbg !367 i64 @lzma_raw_coder_memusage(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_properties_size(ptr noundef %size, ptr nocapture noundef readonly %filter) local_unnamed_addr #1 !dbg !370 {
entry:
    #dbg_value(ptr %size, !374, !DIExpression(), !378)
    #dbg_value(ptr %filter, !375, !DIExpression(), !378)
  %0 = load i64, ptr %filter, align 8, !dbg !379
    #dbg_value(i64 %0, !210, !DIExpression(), !380)
    #dbg_value(i64 0, !216, !DIExpression(), !382)
    #dbg_value(i64 0, !216, !DIExpression(), !382)
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
  ], !dbg !383

if.then.fold.split.i:                             ; preds = %entry
  br label %if.end, !dbg !384

if.then.fold.split9.i:                            ; preds = %entry
  br label %if.end, !dbg !384

if.then.fold.split10.i:                           ; preds = %entry
  br label %if.end, !dbg !384

if.then.fold.split11.i:                           ; preds = %entry
  br label %if.end, !dbg !384

if.then.fold.split12.i:                           ; preds = %entry
  br label %if.end, !dbg !384

if.then.fold.split13.i:                           ; preds = %entry
  br label %if.end, !dbg !384

if.then.fold.split14.i:                           ; preds = %entry
  br label %if.end, !dbg !384

if.then.fold.split15.i:                           ; preds = %entry
  br label %if.end, !dbg !384

if.then:                                          ; preds = %entry
    #dbg_value(ptr null, !376, !DIExpression(), !378)
  %cmp2 = icmp sgt i64 %0, -1, !dbg !385
  %cond = select i1 %cmp2, i32 8, i32 11, !dbg !388
  br label %cleanup, !dbg !389

if.end:                                           ; preds = %if.then.fold.split15.i, %if.then.fold.split14.i, %if.then.fold.split13.i, %if.then.fold.split12.i, %if.then.fold.split11.i, %if.then.fold.split10.i, %if.then.fold.split9.i, %if.then.fold.split.i, %entry
  %i.07.lcssa.i = phi i64 [ 0, %entry ], [ 1, %if.then.fold.split.i ], [ 2, %if.then.fold.split9.i ], [ 3, %if.then.fold.split10.i ], [ 4, %if.then.fold.split11.i ], [ 5, %if.then.fold.split12.i ], [ 6, %if.then.fold.split13.i ], [ 7, %if.then.fold.split14.i ], [ 8, %if.then.fold.split15.i ]
  %add.ptr.i = getelementptr inbounds %struct.lzma_filter_encoder, ptr @encoders, i64 %i.07.lcssa.i, !dbg !384
    #dbg_value(ptr %add.ptr.i, !376, !DIExpression(), !378)
  %props_size_get = getelementptr inbounds i8, ptr %add.ptr.i, i64 32, !dbg !390
  %1 = load ptr, ptr %props_size_get, align 8, !dbg !390
  %cmp3 = icmp eq ptr %1, null, !dbg !392
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !393

if.then4:                                         ; preds = %if.end
  %props_size_fixed = getelementptr inbounds i8, ptr %add.ptr.i, i64 40, !dbg !394
  %2 = load i32, ptr %props_size_fixed, align 8, !dbg !394
  store i32 %2, ptr %size, align 4, !dbg !396
  br label %cleanup, !dbg !397

if.end5:                                          ; preds = %if.end
  %options = getelementptr inbounds i8, ptr %filter, i64 8, !dbg !398
  %3 = load ptr, ptr %options, align 8, !dbg !398
  %call7 = tail call i32 %1(ptr noundef %size, ptr noundef %3) #5, !dbg !399
  br label %cleanup, !dbg !400

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  %retval.0 = phi i32 [ %cond, %if.then ], [ 0, %if.then4 ], [ %call7, %if.end5 ], !dbg !378
  ret i32 %retval.0, !dbg !401
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_properties_encode(ptr nocapture noundef readonly %filter, ptr noundef %props) local_unnamed_addr #1 !dbg !402 {
entry:
    #dbg_value(ptr %filter, !406, !DIExpression(), !409)
    #dbg_value(ptr %props, !407, !DIExpression(), !409)
  %0 = load i64, ptr %filter, align 8, !dbg !410
    #dbg_value(i64 %0, !210, !DIExpression(), !411)
    #dbg_value(i64 0, !216, !DIExpression(), !413)
    #dbg_value(i64 0, !216, !DIExpression(), !413)
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
  ], !dbg !414

if.then.fold.split.i:                             ; preds = %entry
  br label %if.end, !dbg !415

if.then.fold.split9.i:                            ; preds = %entry
  br label %if.end, !dbg !415

if.then.fold.split10.i:                           ; preds = %entry
  br label %if.end, !dbg !415

if.then.fold.split11.i:                           ; preds = %entry
  br label %if.end, !dbg !415

if.then.fold.split12.i:                           ; preds = %entry
  br label %if.end, !dbg !415

if.then.fold.split13.i:                           ; preds = %entry
  br label %if.end, !dbg !415

if.then.fold.split14.i:                           ; preds = %entry
  br label %if.end, !dbg !415

if.then.fold.split15.i:                           ; preds = %entry
  br label %if.end, !dbg !415

if.end:                                           ; preds = %if.then.fold.split15.i, %if.then.fold.split14.i, %if.then.fold.split13.i, %if.then.fold.split12.i, %if.then.fold.split11.i, %if.then.fold.split10.i, %if.then.fold.split9.i, %if.then.fold.split.i, %entry
  %i.07.lcssa.i = phi i64 [ 0, %entry ], [ 1, %if.then.fold.split.i ], [ 2, %if.then.fold.split9.i ], [ 3, %if.then.fold.split10.i ], [ 4, %if.then.fold.split11.i ], [ 5, %if.then.fold.split12.i ], [ 6, %if.then.fold.split13.i ], [ 7, %if.then.fold.split14.i ], [ 8, %if.then.fold.split15.i ]
    #dbg_value(!DIArgList(ptr @encoders, i64 %i.07.lcssa.i), !408, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 56, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !409)
  %props_encode = getelementptr inbounds %struct.lzma_filter_encoder, ptr @encoders, i64 %i.07.lcssa.i, i32 6, !dbg !416
  %1 = load ptr, ptr %props_encode, align 8, !dbg !416
  %cmp1 = icmp eq ptr %1, null, !dbg !418
  br i1 %cmp1, label %cleanup, label %if.end3, !dbg !419

if.end3:                                          ; preds = %if.end
  %options = getelementptr inbounds i8, ptr %filter, i64 8, !dbg !420
  %2 = load ptr, ptr %options, align 8, !dbg !420
  %call5 = tail call i32 %1(ptr noundef %2, ptr noundef %props) #5, !dbg !421
  br label %cleanup, !dbg !422

cleanup:                                          ; preds = %entry, %if.end, %if.end3
  %retval.0 = phi i32 [ %call5, %if.end3 ], [ 0, %if.end ], [ 11, %entry ], !dbg !409
  ret i32 %retval.0, !dbg !423
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

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!195, !196, !197, !198, !199, !200, !201}
!llvm.ident = !{!202}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "encoders", scope: !2, file: !3, line: 56, type: !169, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !136, globals: !168, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "liblzma/common/filter_encoder.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "fc5fadddba740b28186eb750b5e2aebe")
!4 = !{!5, !21, !27, !34, !133}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 57, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "liblzma/api/lzma/base.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "81a3070447cc5b61b56cfbed076853db")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20}
!9 = !DIEnumerator(name: "LZMA_OK", value: 0)
!10 = !DIEnumerator(name: "LZMA_STREAM_END", value: 1)
!11 = !DIEnumerator(name: "LZMA_NO_CHECK", value: 2)
!12 = !DIEnumerator(name: "LZMA_UNSUPPORTED_CHECK", value: 3)
!13 = !DIEnumerator(name: "LZMA_GET_CHECK", value: 4)
!14 = !DIEnumerator(name: "LZMA_MEM_ERROR", value: 5)
!15 = !DIEnumerator(name: "LZMA_MEMLIMIT_ERROR", value: 6)
!16 = !DIEnumerator(name: "LZMA_FORMAT_ERROR", value: 7)
!17 = !DIEnumerator(name: "LZMA_OPTIONS_ERROR", value: 8)
!18 = !DIEnumerator(name: "LZMA_DATA_ERROR", value: 9)
!19 = !DIEnumerator(name: "LZMA_BUF_ERROR", value: 10)
!20 = !DIEnumerator(name: "LZMA_PROG_ERROR", value: 11)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 250, baseType: !7, size: 32, elements: !22)
!22 = !{!23, !24, !25, !26}
!23 = !DIEnumerator(name: "LZMA_RUN", value: 0)
!24 = !DIEnumerator(name: "LZMA_SYNC_FLUSH", value: 1)
!25 = !DIEnumerator(name: "LZMA_FULL_FLUSH", value: 2)
!26 = !DIEnumerator(name: "LZMA_FINISH", value: 3)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !28, line: 27, baseType: !7, size: 32, elements: !29)
!28 = !DIFile(filename: "liblzma/api/lzma/check.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "b07c3297e2bcc14bb477793d08325ee3")
!29 = !{!30, !31, !32, !33}
!30 = !DIEnumerator(name: "LZMA_CHECK_NONE", value: 0)
!31 = !DIEnumerator(name: "LZMA_CHECK_CRC32", value: 1)
!32 = !DIEnumerator(name: "LZMA_CHECK_CRC64", value: 4)
!33 = !DIEnumerator(name: "LZMA_CHECK_SHA256", value: 10)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !36, file: !35, line: 187, baseType: !7, size: 32, elements: !126)
!35 = !DIFile(filename: "liblzma/common/common.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_internal_s", file: !35, line: 179, size: 704, elements: !37)
!37 = !{!38, !118, !119, !120, !125}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !36, file: !35, line: 181, baseType: !39, size: 512)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_next_coder", file: !35, line: 80, baseType: !40)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_next_coder_s", file: !35, line: 124, size: 512, elements: !41)
!41 = !{!42, !45, !53, !56, !89, !94, !101, !106}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !40, file: !35, line: 126, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_coder", file: !35, line: 78, baseType: null)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !40, file: !35, line: 130, baseType: !46, size: 64, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !47, line: 63, baseType: !48)
!47 = !DIFile(filename: "liblzma/api/lzma/vli.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !49, line: 27, baseType: !50)
!49 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !51, line: 45, baseType: !52)
!51 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!52 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !40, file: !35, line: 136, baseType: !54, size: 64, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !55, line: 90, baseType: !52)
!55 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!56 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !40, file: !35, line: 139, baseType: !57, size: 64, offset: 192)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_code_function", file: !35, line: 94, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{!61, !43, !62, !78, !84, !71, !86, !84, !71, !88}
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !6, line: 237, baseType: !5)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !6, line: 403, baseType: !64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 341, size: 192, elements: !65)
!65 = !{!66, !73, !77}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !64, file: !6, line: 376, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{!70, !70, !71, !71}
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !72, line: 18, baseType: !52)
!72 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!73 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !64, file: !6, line: 390, baseType: !74, size: 64, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DISubroutineType(types: !76)
!76 = !{null, !70, !70}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !64, file: !6, line: 401, baseType: !70, size: 64, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !49, line: 24, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !51, line: 38, baseType: !83)
!83 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!84 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !6, line: 322, baseType: !21)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !40, file: !35, line: 144, baseType: !90, size: 64, offset: 256)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_end_function", file: !35, line: 102, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DISubroutineType(types: !93)
!93 = !{null, !43, !62}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "get_check", scope: !40, file: !35, line: 148, baseType: !95, size: 64, offset: 320)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DISubroutineType(types: !97)
!97 = !{!98, !99}
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !28, line: 55, baseType: !27)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "memconfig", scope: !40, file: !35, line: 152, baseType: !102, size: 64, offset: 384)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DISubroutineType(types: !104)
!104 = !{!61, !43, !105, !105, !48}
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !40, file: !35, line: 157, baseType: !107, size: 64, offset: 448)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DISubroutineType(types: !109)
!109 = !{!61, !43, !62, !110, !110}
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !113, line: 65, baseType: !114)
!113 = !DIFile(filename: "liblzma/api/lzma/filter.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !113, line: 43, size: 128, elements: !115)
!115 = !{!116, !117}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !114, file: !113, line: 54, baseType: !46, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !114, file: !113, line: 63, baseType: !70, size: 64, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !36, file: !35, line: 194, baseType: !34, size: 32, offset: 512)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !36, file: !35, line: 199, baseType: !71, size: 64, offset: 576)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "supported_actions", scope: !36, file: !35, line: 202, baseType: !121, size: 32, offset: 640)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 32, elements: !123)
!122 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!123 = !{!124}
!124 = !DISubrange(count: 4)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "allow_buf_error", scope: !36, file: !35, line: 206, baseType: !122, size: 8, offset: 672)
!126 = !{!127, !128, !129, !130, !131, !132}
!127 = !DIEnumerator(name: "ISEQ_RUN", value: 0)
!128 = !DIEnumerator(name: "ISEQ_SYNC_FLUSH", value: 1)
!129 = !DIEnumerator(name: "ISEQ_FULL_FLUSH", value: 2)
!130 = !DIEnumerator(name: "ISEQ_FINISH", value: 3)
!131 = !DIEnumerator(name: "ISEQ_END", value: 4)
!132 = !DIEnumerator(name: "ISEQ_ERROR", value: 5)
!133 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 44, baseType: !7, size: 32, elements: !134)
!134 = !{!135}
!135 = !DIEnumerator(name: "LZMA_RESERVED_ENUM", value: 0)
!136 = !{!70, !137}
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter_find", file: !138, line: 35, baseType: !139)
!138 = !DIFile(filename: "liblzma/common/filter_common.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "2b3d0d0ae4b0d967ddcb9fa677c708ca")
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DISubroutineType(types: !141)
!141 = !{!142, !46}
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter_coder", file: !138, line: 32, baseType: !145)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !138, line: 20, size: 192, elements: !146)
!146 = !{!147, !148, !162}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !145, file: !138, line: 22, baseType: !46, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !145, file: !138, line: 26, baseType: !149, size: 64, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_init_function", file: !35, line: 86, baseType: !150)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DISubroutineType(types: !152)
!152 = !{!61, !153, !62, !154}
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter_info", file: !35, line: 82, baseType: !157)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_filter_info_s", file: !35, line: 109, size: 192, elements: !158)
!158 = !{!159, !160, !161}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !157, file: !35, line: 112, baseType: !46, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !157, file: !35, line: 116, baseType: !149, size: 64, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !157, file: !35, line: 119, baseType: !70, size: 64, offset: 128)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "memusage", scope: !145, file: !138, line: 30, baseType: !163, size: 64, offset: 128)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DISubroutineType(types: !165)
!165 = !{!48, !166}
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!168 = !{!0}
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 4032, elements: !193)
!170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter_encoder", file: !3, line: 53, baseType: !172)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 21, size: 448, elements: !173)
!173 = !{!174, !175, !176, !177, !181, !188, !189}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !172, file: !3, line: 23, baseType: !46, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !172, file: !3, line: 27, baseType: !149, size: 64, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "memusage", scope: !172, file: !3, line: 31, baseType: !163, size: 64, offset: 128)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !172, file: !3, line: 37, baseType: !178, size: 64, offset: 192)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DISubroutineType(types: !180)
!180 = !{!46, !166}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "props_size_get", scope: !172, file: !3, line: 42, baseType: !182, size: 64, offset: 256)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DISubroutineType(types: !184)
!184 = !{!61, !185, !166}
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !49, line: 26, baseType: !187)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !51, line: 42, baseType: !7)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "props_size_fixed", scope: !172, file: !3, line: 43, baseType: !186, size: 32, offset: 320)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "props_encode", scope: !172, file: !3, line: 51, baseType: !190, size: 64, offset: 384)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!61, !166, !87}
!193 = !{!194}
!194 = !DISubrange(count: 9)
!195 = !{i32 7, !"Dwarf Version", i32 5}
!196 = !{i32 2, !"Debug Info Version", i32 3}
!197 = !{i32 1, !"wchar_size", i32 4}
!198 = !{i32 8, !"PIC Level", i32 2}
!199 = !{i32 7, !"PIE Level", i32 2}
!200 = !{i32 7, !"uwtable", i32 2}
!201 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!202 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!203 = distinct !DISubprogram(name: "lzma_filter_encoder_is_supported", scope: !3, file: !3, line: 165, type: !204, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !207)
!204 = !DISubroutineType(types: !205)
!205 = !{!206, !46}
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_bool", file: !6, line: 29, baseType: !83)
!207 = !{!208}
!208 = !DILocalVariable(name: "id", arg: 1, scope: !203, file: !3, line: 165, type: !46)
!209 = !DILocation(line: 0, scope: !203)
!210 = !DILocalVariable(name: "id", arg: 1, scope: !211, file: !3, line: 154, type: !46)
!211 = distinct !DISubprogram(name: "encoder_find", scope: !3, file: !3, line: 154, type: !212, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !215)
!212 = !DISubroutineType(types: !213)
!213 = !{!214, !46}
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!215 = !{!210, !216}
!216 = !DILocalVariable(name: "i", scope: !217, file: !3, line: 156, type: !71)
!217 = distinct !DILexicalBlock(scope: !211, file: !3, line: 156, column: 2)
!218 = !DILocation(line: 0, scope: !211, inlinedAt: !219)
!219 = distinct !DILocation(line: 167, column: 9, scope: !203)
!220 = !DILocation(line: 0, scope: !217, inlinedAt: !219)
!221 = !DILocation(line: 157, column: 7, scope: !222, inlinedAt: !219)
!222 = distinct !DILexicalBlock(scope: !217, file: !3, line: 156, column: 2)
!223 = !DILocation(line: 158, column: 4, scope: !224, inlinedAt: !219)
!224 = distinct !DILexicalBlock(scope: !222, file: !3, line: 157, column: 7)
!225 = !DILocation(line: 167, column: 2, scope: !203)
!226 = !DILocation(line: 0, scope: !211)
!227 = !DILocation(line: 0, scope: !217)
!228 = !DILocation(line: 157, column: 7, scope: !222)
!229 = !DILocation(line: 158, column: 20, scope: !224)
!230 = !DILocation(line: 158, column: 4, scope: !224)
!231 = !DILocation(line: 161, column: 1, scope: !211)
!232 = distinct !DISubprogram(name: "lzma_filters_update", scope: !3, file: !3, line: 172, type: !233, scopeLine: 173, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !260)
!233 = !DISubroutineType(types: !234)
!234 = !{!61, !235, !110}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_stream", file: !6, line: 490, baseType: !237)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 453, size: 1088, elements: !238)
!238 = !{!239, !240, !241, !242, !243, !244, !245, !246, !249, !250, !251, !252, !253, !254, !255, !256, !257, !259}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !237, file: !6, line: 454, baseType: !79, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !237, file: !6, line: 455, baseType: !71, size: 64, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "total_in", scope: !237, file: !6, line: 456, baseType: !48, size: 64, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !237, file: !6, line: 458, baseType: !87, size: 64, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !237, file: !6, line: 459, baseType: !71, size: 64, offset: 256)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "total_out", scope: !237, file: !6, line: 460, baseType: !48, size: 64, offset: 320)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !237, file: !6, line: 468, baseType: !62, size: 64, offset: 384)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !237, file: !6, line: 471, baseType: !247, size: 64, offset: 448)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_internal", file: !6, line: 411, baseType: !36)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !237, file: !6, line: 479, baseType: !70, size: 64, offset: 512)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !237, file: !6, line: 480, baseType: !70, size: 64, offset: 576)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !237, file: !6, line: 481, baseType: !70, size: 64, offset: 640)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr4", scope: !237, file: !6, line: 482, baseType: !70, size: 64, offset: 704)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !237, file: !6, line: 483, baseType: !48, size: 64, offset: 768)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !237, file: !6, line: 484, baseType: !48, size: 64, offset: 832)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !237, file: !6, line: 485, baseType: !71, size: 64, offset: 896)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !237, file: !6, line: 486, baseType: !71, size: 64, offset: 960)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !237, file: !6, line: 487, baseType: !258, size: 32, offset: 1024)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !6, line: 46, baseType: !133)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !237, file: !6, line: 488, baseType: !258, size: 32, offset: 1056)
!260 = !{!261, !262, !263, !264, !268}
!261 = !DILocalVariable(name: "strm", arg: 1, scope: !232, file: !3, line: 172, type: !235)
!262 = !DILocalVariable(name: "filters", arg: 2, scope: !232, file: !3, line: 172, type: !110)
!263 = !DILocalVariable(name: "count", scope: !232, file: !3, line: 183, type: !71)
!264 = !DILocalVariable(name: "reversed_filters", scope: !232, file: !3, line: 187, type: !265)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 640, elements: !266)
!266 = !{!267}
!267 = !DISubrange(count: 5)
!268 = !DILocalVariable(name: "i", scope: !269, file: !3, line: 188, type: !71)
!269 = distinct !DILexicalBlock(scope: !232, file: !3, line: 188, column: 2)
!270 = distinct !DIAssignID()
!271 = !DILocation(line: 0, scope: !232)
!272 = !DILocation(line: 174, column: 12, scope: !273)
!273 = distinct !DILexicalBlock(scope: !232, file: !3, line: 174, column: 6)
!274 = !DILocation(line: 174, column: 27, scope: !273)
!275 = !DILocation(line: 174, column: 34, scope: !273)
!276 = !DILocation(line: 174, column: 6, scope: !232)
!277 = !DILocalVariable(name: "filters", arg: 1, scope: !278, file: !3, line: 222, type: !110)
!278 = distinct !DISubprogram(name: "lzma_raw_encoder_memusage", scope: !3, file: !3, line: 222, type: !279, scopeLine: 223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !281)
!279 = !DISubroutineType(types: !280)
!280 = !{!48, !110}
!281 = !{!277}
!282 = !DILocation(line: 0, scope: !278, inlinedAt: !283)
!283 = distinct !DILocation(line: 178, column: 6, scope: !284)
!284 = distinct !DILexicalBlock(scope: !232, file: !3, line: 178, column: 6)
!285 = !DILocation(line: 224, column: 9, scope: !278, inlinedAt: !283)
!286 = !DILocation(line: 178, column: 41, scope: !284)
!287 = !DILocation(line: 178, column: 6, scope: !232)
!288 = !DILocation(line: 184, column: 9, scope: !232)
!289 = !DILocation(line: 184, column: 24, scope: !232)
!290 = !DILocation(line: 184, column: 27, scope: !232)
!291 = !DILocation(line: 185, column: 3, scope: !232)
!292 = !DILocation(line: 184, column: 2, scope: !232)
!293 = distinct !{!293, !292, !294}
!294 = !DILocation(line: 185, column: 5, scope: !232)
!295 = !DILocation(line: 187, column: 2, scope: !232)
!296 = !DILocation(line: 0, scope: !269)
!297 = !DILocation(line: 188, column: 23, scope: !298)
!298 = distinct !DILexicalBlock(scope: !269, file: !3, line: 188, column: 2)
!299 = !DILocation(line: 188, column: 2, scope: !269)
!300 = !DILocation(line: 189, column: 30, scope: !298)
!301 = !DILocation(line: 189, column: 3, scope: !298)
!302 = !DILocation(line: 189, column: 37, scope: !298)
!303 = !DILocation(line: 191, column: 2, scope: !232)
!304 = !DILocation(line: 191, column: 29, scope: !232)
!305 = !DILocation(line: 193, column: 15, scope: !232)
!306 = !DILocation(line: 193, column: 30, scope: !232)
!307 = !DILocation(line: 193, column: 58, scope: !232)
!308 = !DILocation(line: 194, column: 10, scope: !232)
!309 = !DILocation(line: 193, column: 9, scope: !232)
!310 = !DILocation(line: 195, column: 1, scope: !232)
!311 = !DILocation(line: 188, column: 32, scope: !298)
!312 = distinct !{!312, !299, !313}
!313 = !DILocation(line: 189, column: 46, scope: !269)
!314 = !DILocation(line: 0, scope: !278)
!315 = !DILocation(line: 224, column: 9, scope: !278)
!316 = !DILocation(line: 224, column: 2, scope: !278)
!317 = distinct !DISubprogram(name: "lzma_raw_encoder_init", scope: !3, file: !3, line: 199, type: !318, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !320)
!318 = !DISubroutineType(types: !319)
!319 = !{!61, !153, !62, !110}
!320 = !{!321, !322, !323}
!321 = !DILocalVariable(name: "next", arg: 1, scope: !317, file: !3, line: 199, type: !153)
!322 = !DILocalVariable(name: "allocator", arg: 2, scope: !317, file: !3, line: 199, type: !62)
!323 = !DILocalVariable(name: "options", arg: 3, scope: !317, file: !3, line: 200, type: !110)
!324 = !DILocation(line: 0, scope: !317)
!325 = !DILocation(line: 202, column: 9, scope: !317)
!326 = !DILocation(line: 202, column: 2, scope: !317)
!327 = !DISubprogram(name: "lzma_raw_coder_init", scope: !138, file: !138, line: 38, type: !328, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!328 = !DISubroutineType(types: !329)
!329 = !{!61, !153, !62, !110, !137, !122}
!330 = distinct !DISubprogram(name: "lzma_raw_encoder", scope: !3, file: !3, line: 208, type: !233, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !331)
!331 = !{!332, !333, !334, !338}
!332 = !DILocalVariable(name: "strm", arg: 1, scope: !330, file: !3, line: 208, type: !235)
!333 = !DILocalVariable(name: "options", arg: 2, scope: !330, file: !3, line: 208, type: !110)
!334 = !DILocalVariable(name: "ret_", scope: !335, file: !3, line: 210, type: !337)
!335 = distinct !DILexicalBlock(scope: !336, file: !3, line: 210, column: 2)
!336 = distinct !DILexicalBlock(scope: !330, file: !3, line: 210, column: 2)
!337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!338 = !DILocalVariable(name: "ret_", scope: !336, file: !3, line: 210, type: !337)
!339 = !DILocation(line: 0, scope: !330)
!340 = !DILocation(line: 210, column: 2, scope: !335)
!341 = !DILocation(line: 0, scope: !335)
!342 = !DILocation(line: 210, column: 2, scope: !343)
!343 = distinct !DILexicalBlock(scope: !335, file: !3, line: 210, column: 2)
!344 = !DILocation(line: 210, column: 2, scope: !336)
!345 = !DILocation(line: 0, scope: !336)
!346 = !DILocation(line: 210, column: 2, scope: !347)
!347 = distinct !DILexicalBlock(scope: !336, file: !3, line: 210, column: 2)
!348 = !DILocation(line: 210, column: 2, scope: !349)
!349 = distinct !DILexicalBlock(scope: !347, file: !3, line: 210, column: 2)
!350 = !DILocation(line: 213, column: 8, scope: !330)
!351 = !DILocation(line: 213, column: 18, scope: !330)
!352 = !DILocation(line: 213, column: 46, scope: !330)
!353 = !DILocation(line: 214, column: 8, scope: !330)
!354 = !DILocation(line: 214, column: 2, scope: !330)
!355 = !DILocation(line: 214, column: 53, scope: !330)
!356 = !DILocation(line: 215, column: 8, scope: !330)
!357 = !DILocation(line: 215, column: 2, scope: !330)
!358 = !DILocation(line: 215, column: 49, scope: !330)
!359 = !DILocation(line: 217, column: 2, scope: !330)
!360 = !DILocation(line: 218, column: 1, scope: !330)
!361 = !DISubprogram(name: "lzma_strm_init", scope: !35, file: !35, line: 220, type: !362, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!362 = !DISubroutineType(types: !363)
!363 = !{!61, !235}
!364 = !DISubprogram(name: "lzma_end", scope: !6, file: !6, line: 546, type: !365, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!365 = !DISubroutineType(types: !366)
!366 = !{null, !235}
!367 = !DISubprogram(name: "lzma_raw_coder_memusage", scope: !138, file: !138, line: 44, type: !368, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!368 = !DISubroutineType(types: !369)
!369 = !{!48, !137, !110}
!370 = distinct !DISubprogram(name: "lzma_properties_size", scope: !3, file: !3, line: 255, type: !371, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !373)
!371 = !DISubroutineType(types: !372)
!372 = !{!61, !185, !110}
!373 = !{!374, !375, !376}
!374 = !DILocalVariable(name: "size", arg: 1, scope: !370, file: !3, line: 255, type: !185)
!375 = !DILocalVariable(name: "filter", arg: 2, scope: !370, file: !3, line: 255, type: !110)
!376 = !DILocalVariable(name: "fe", scope: !370, file: !3, line: 257, type: !377)
!377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !214)
!378 = !DILocation(line: 0, scope: !370)
!379 = !DILocation(line: 257, column: 61, scope: !370)
!380 = !DILocation(line: 0, scope: !211, inlinedAt: !381)
!381 = distinct !DILocation(line: 257, column: 40, scope: !370)
!382 = !DILocation(line: 0, scope: !217, inlinedAt: !381)
!383 = !DILocation(line: 157, column: 7, scope: !222, inlinedAt: !381)
!384 = !DILocation(line: 158, column: 20, scope: !224, inlinedAt: !381)
!385 = !DILocation(line: 263, column: 21, scope: !386)
!386 = distinct !DILexicalBlock(scope: !387, file: !3, line: 258, column: 18)
!387 = distinct !DILexicalBlock(scope: !370, file: !3, line: 258, column: 6)
!388 = !DILocation(line: 263, column: 10, scope: !386)
!389 = !DILocation(line: 263, column: 3, scope: !386)
!390 = !DILocation(line: 267, column: 10, scope: !391)
!391 = distinct !DILexicalBlock(scope: !370, file: !3, line: 267, column: 6)
!392 = !DILocation(line: 267, column: 25, scope: !391)
!393 = !DILocation(line: 267, column: 6, scope: !370)
!394 = !DILocation(line: 269, column: 15, scope: !395)
!395 = distinct !DILexicalBlock(scope: !391, file: !3, line: 267, column: 34)
!396 = !DILocation(line: 269, column: 9, scope: !395)
!397 = !DILocation(line: 270, column: 3, scope: !395)
!398 = !DILocation(line: 273, column: 42, scope: !370)
!399 = !DILocation(line: 273, column: 9, scope: !370)
!400 = !DILocation(line: 273, column: 2, scope: !370)
!401 = !DILocation(line: 274, column: 1, scope: !370)
!402 = distinct !DISubprogram(name: "lzma_properties_encode", scope: !3, file: !3, line: 278, type: !403, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !405)
!403 = !DISubroutineType(types: !404)
!404 = !{!61, !110, !87}
!405 = !{!406, !407, !408}
!406 = !DILocalVariable(name: "filter", arg: 1, scope: !402, file: !3, line: 278, type: !110)
!407 = !DILocalVariable(name: "props", arg: 2, scope: !402, file: !3, line: 278, type: !87)
!408 = !DILocalVariable(name: "fe", scope: !402, file: !3, line: 280, type: !377)
!409 = !DILocation(line: 0, scope: !402)
!410 = !DILocation(line: 280, column: 61, scope: !402)
!411 = !DILocation(line: 0, scope: !211, inlinedAt: !412)
!412 = distinct !DILocation(line: 280, column: 40, scope: !402)
!413 = !DILocation(line: 0, scope: !217, inlinedAt: !412)
!414 = !DILocation(line: 157, column: 7, scope: !222, inlinedAt: !412)
!415 = !DILocation(line: 158, column: 20, scope: !224, inlinedAt: !412)
!416 = !DILocation(line: 284, column: 10, scope: !417)
!417 = distinct !DILexicalBlock(scope: !402, file: !3, line: 284, column: 6)
!418 = !DILocation(line: 284, column: 23, scope: !417)
!419 = !DILocation(line: 284, column: 6, scope: !402)
!420 = !DILocation(line: 287, column: 34, scope: !402)
!421 = !DILocation(line: 287, column: 9, scope: !402)
!422 = !DILocation(line: 287, column: 2, scope: !402)
!423 = !DILocation(line: 288, column: 1, scope: !402)
