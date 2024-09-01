; ModuleID = 'liblzma/common/filter_decoder.c'
source_filename = "liblzma/common/filter_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_filter_decoder = type { i64, ptr, ptr, ptr }

@decoders = internal constant [9 x %struct.lzma_filter_decoder] [%struct.lzma_filter_decoder { i64 4611686018427387905, ptr @lzma_lzma_decoder_init, ptr @lzma_lzma_decoder_memusage, ptr @lzma_lzma_props_decode }, %struct.lzma_filter_decoder { i64 33, ptr @lzma_lzma2_decoder_init, ptr @lzma_lzma2_decoder_memusage, ptr @lzma_lzma2_props_decode }, %struct.lzma_filter_decoder { i64 4, ptr @lzma_simple_x86_decoder_init, ptr null, ptr @lzma_simple_props_decode }, %struct.lzma_filter_decoder { i64 5, ptr @lzma_simple_powerpc_decoder_init, ptr null, ptr @lzma_simple_props_decode }, %struct.lzma_filter_decoder { i64 6, ptr @lzma_simple_ia64_decoder_init, ptr null, ptr @lzma_simple_props_decode }, %struct.lzma_filter_decoder { i64 7, ptr @lzma_simple_arm_decoder_init, ptr null, ptr @lzma_simple_props_decode }, %struct.lzma_filter_decoder { i64 8, ptr @lzma_simple_armthumb_decoder_init, ptr null, ptr @lzma_simple_props_decode }, %struct.lzma_filter_decoder { i64 9, ptr @lzma_simple_sparc_decoder_init, ptr null, ptr @lzma_simple_props_decode }, %struct.lzma_filter_decoder { i64 3, ptr @lzma_delta_decoder_init, ptr @lzma_delta_coder_memusage, ptr @lzma_delta_props_decode }], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext range(i8 0, 2) i8 @lzma_filter_decoder_is_supported(i64 noundef %id) local_unnamed_addr #0 {
entry:
  switch i64 %id, label %decoder_find.exit [
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
  br label %decoder_find.exit

decoder_find.exit:                                ; preds = %entry, %if.then.i
  %spec.select.i = phi i8 [ 1, %if.then.i ], [ 0, %entry ]
  ret i8 %spec.select.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal ptr @decoder_find(i64 noundef %id) #0 {
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
  %add.ptr = getelementptr inbounds %struct.lzma_filter_decoder, ptr @decoders, i64 %i.07.lcssa
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %spec.select = phi ptr [ %add.ptr, %if.then ], [ null, %entry ]
  ret ptr %spec.select
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_raw_decoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %options) local_unnamed_addr #1 {
entry:
  %call = tail call i32 @lzma_raw_coder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %options, ptr noundef nonnull @decoder_find, i1 noundef zeroext false) #3
  ret i32 %call
}

declare i32 @lzma_raw_coder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_raw_decoder(ptr noundef %strm, ptr noundef %options) local_unnamed_addr #1 {
entry:
  %call = tail call i32 @lzma_strm_init(ptr noundef %strm) #3
  %cmp.not.not = icmp eq i32 %call, 0
  br i1 %cmp.not.not, label %do.end, label %return

do.end:                                           ; preds = %entry
  %internal = getelementptr inbounds i8, ptr %strm, i64 56
  %0 = load ptr, ptr %internal, align 8
  %allocator = getelementptr inbounds i8, ptr %strm, i64 48
  %1 = load ptr, ptr %allocator, align 8
  %call.i = tail call i32 @lzma_raw_coder_init(ptr noundef %0, ptr noundef %1, ptr noundef %options, ptr noundef nonnull @decoder_find, i1 noundef zeroext false) #3
  %cmp4.not.not = icmp eq i32 %call.i, 0
  br i1 %cmp4.not.not, label %do.end10, label %cleanup7

cleanup7:                                         ; preds = %do.end
  tail call void @lzma_end(ptr noundef nonnull %strm) #3
  br label %return

do.end10:                                         ; preds = %do.end
  %2 = load ptr, ptr %internal, align 8
  %supported_actions = getelementptr inbounds i8, ptr %2, i64 80
  store i8 1, ptr %supported_actions, align 8
  %3 = load ptr, ptr %internal, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %3, i64 83
  store i8 1, ptr %arrayidx14, align 1
  br label %return

return:                                           ; preds = %cleanup7, %entry, %do.end10
  %retval.2 = phi i32 [ %call, %entry ], [ %call.i, %cleanup7 ], [ 0, %do.end10 ]
  ret i32 %retval.2
}

declare i32 @lzma_strm_init(ptr noundef) local_unnamed_addr #2

declare void @lzma_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @lzma_raw_decoder_memusage(ptr noundef %filters) local_unnamed_addr #1 {
entry:
  %call = tail call i64 @lzma_raw_coder_memusage(ptr noundef nonnull @decoder_find, ptr noundef %filters) #3
  ret i64 %call
}

declare i64 @lzma_raw_coder_memusage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_properties_decode(ptr noundef %filter, ptr noundef %allocator, ptr noundef %props, i64 noundef %props_size) local_unnamed_addr #1 {
entry:
  %options = getelementptr inbounds i8, ptr %filter, i64 8
  store ptr null, ptr %options, align 8
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
  %props_decode = getelementptr inbounds %struct.lzma_filter_decoder, ptr @decoders, i64 %i.07.lcssa.i, i32 3
  %1 = load ptr, ptr %props_decode, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %cmp3 = icmp eq i64 %props_size, 0
  %cond = select i1 %cmp3, i32 0, i32 8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call7 = tail call i32 %1(ptr noundef nonnull %options, ptr noundef %allocator, ptr noundef %props, i64 noundef %props_size) #3
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end4, %if.then2
  %retval.0 = phi i32 [ %cond, %if.then2 ], [ %call7, %if.end4 ], [ 8, %entry ]
  ret i32 %retval.0
}

declare i32 @lzma_lzma_decoder_init(ptr noundef, ptr noundef, ptr noundef) #2

declare i64 @lzma_lzma_decoder_memusage(ptr noundef) #2

declare i32 @lzma_lzma_props_decode(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

declare i32 @lzma_lzma2_decoder_init(ptr noundef, ptr noundef, ptr noundef) #2

declare i64 @lzma_lzma2_decoder_memusage(ptr noundef) #2

declare i32 @lzma_lzma2_props_decode(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

declare i32 @lzma_simple_x86_decoder_init(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @lzma_simple_props_decode(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

declare i32 @lzma_simple_powerpc_decoder_init(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @lzma_simple_ia64_decoder_init(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @lzma_simple_arm_decoder_init(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @lzma_simple_armthumb_decoder_init(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @lzma_simple_sparc_decoder_init(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @lzma_delta_decoder_init(ptr noundef, ptr noundef, ptr noundef) #2

declare i64 @lzma_delta_coder_memusage(ptr noundef) #2

declare i32 @lzma_delta_props_decode(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
