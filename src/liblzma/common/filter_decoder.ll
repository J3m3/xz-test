; ModuleID = 'liblzma/common/filter_decoder.c'
source_filename = "liblzma/common/filter_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_filter_decoder = type { i64, ptr, ptr, ptr }

@decoders = internal constant [9 x %struct.lzma_filter_decoder] [%struct.lzma_filter_decoder { i64 4611686018427387905, ptr @lzma_lzma_decoder_init, ptr @lzma_lzma_decoder_memusage, ptr @lzma_lzma_props_decode }, %struct.lzma_filter_decoder { i64 33, ptr @lzma_lzma2_decoder_init, ptr @lzma_lzma2_decoder_memusage, ptr @lzma_lzma2_props_decode }, %struct.lzma_filter_decoder { i64 4, ptr @lzma_simple_x86_decoder_init, ptr null, ptr @lzma_simple_props_decode }, %struct.lzma_filter_decoder { i64 5, ptr @lzma_simple_powerpc_decoder_init, ptr null, ptr @lzma_simple_props_decode }, %struct.lzma_filter_decoder { i64 6, ptr @lzma_simple_ia64_decoder_init, ptr null, ptr @lzma_simple_props_decode }, %struct.lzma_filter_decoder { i64 7, ptr @lzma_simple_arm_decoder_init, ptr null, ptr @lzma_simple_props_decode }, %struct.lzma_filter_decoder { i64 8, ptr @lzma_simple_armthumb_decoder_init, ptr null, ptr @lzma_simple_props_decode }, %struct.lzma_filter_decoder { i64 9, ptr @lzma_simple_sparc_decoder_init, ptr null, ptr @lzma_simple_props_decode }, %struct.lzma_filter_decoder { i64 3, ptr @lzma_delta_decoder_init, ptr @lzma_delta_coder_memusage, ptr @lzma_delta_props_decode }], align 16, !dbg !0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext range(i8 0, 2) i8 @lzma_filter_decoder_is_supported(i64 noundef %id) local_unnamed_addr #0 !dbg !192 {
entry:
    #dbg_value(i64 %id, !197, !DIExpression(), !198)
    #dbg_value(i64 %id, !199, !DIExpression(), !207)
    #dbg_value(i64 0, !205, !DIExpression(), !209)
    #dbg_value(i64 0, !205, !DIExpression(), !209)
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
  ], !dbg !210

if.then.i:                                        ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  br label %decoder_find.exit, !dbg !212

decoder_find.exit:                                ; preds = %entry, %if.then.i
  %spec.select.i = phi i8 [ 1, %if.then.i ], [ 0, %entry ]
  ret i8 %spec.select.i, !dbg !214
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal ptr @decoder_find(i64 noundef %id) #0 !dbg !200 {
entry:
    #dbg_value(i64 %id, !199, !DIExpression(), !215)
    #dbg_value(i64 0, !205, !DIExpression(), !216)
    #dbg_value(i64 0, !205, !DIExpression(), !216)
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
  ], !dbg !217

if.then.fold.split:                               ; preds = %entry
  br label %if.then, !dbg !218

if.then.fold.split9:                              ; preds = %entry
  br label %if.then, !dbg !218

if.then.fold.split10:                             ; preds = %entry
  br label %if.then, !dbg !218

if.then.fold.split11:                             ; preds = %entry
  br label %if.then, !dbg !218

if.then.fold.split12:                             ; preds = %entry
  br label %if.then, !dbg !218

if.then.fold.split13:                             ; preds = %entry
  br label %if.then, !dbg !218

if.then.fold.split14:                             ; preds = %entry
  br label %if.then, !dbg !218

if.then.fold.split15:                             ; preds = %entry
  br label %if.then, !dbg !218

if.then:                                          ; preds = %entry, %if.then.fold.split15, %if.then.fold.split14, %if.then.fold.split13, %if.then.fold.split12, %if.then.fold.split11, %if.then.fold.split10, %if.then.fold.split9, %if.then.fold.split
  %i.07.lcssa = phi i64 [ 0, %entry ], [ 1, %if.then.fold.split ], [ 2, %if.then.fold.split9 ], [ 3, %if.then.fold.split10 ], [ 4, %if.then.fold.split11 ], [ 5, %if.then.fold.split12 ], [ 6, %if.then.fold.split13 ], [ 7, %if.then.fold.split14 ], [ 8, %if.then.fold.split15 ]
  %add.ptr = getelementptr inbounds %struct.lzma_filter_decoder, ptr @decoders, i64 %i.07.lcssa, !dbg !218
  br label %cleanup, !dbg !219

cleanup:                                          ; preds = %entry, %if.then
  %spec.select = phi ptr [ %add.ptr, %if.then ], [ null, %entry ]
  ret ptr %spec.select, !dbg !220
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_raw_decoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %options) local_unnamed_addr #1 !dbg !221 {
entry:
    #dbg_value(ptr %next, !225, !DIExpression(), !228)
    #dbg_value(ptr %allocator, !226, !DIExpression(), !228)
    #dbg_value(ptr %options, !227, !DIExpression(), !228)
  %call = tail call i32 @lzma_raw_coder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %options, ptr noundef nonnull @decoder_find, i1 noundef zeroext false) #3, !dbg !229
  ret i32 %call, !dbg !230
}

declare !dbg !231 i32 @lzma_raw_coder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_raw_decoder(ptr noundef %strm, ptr noundef %options) local_unnamed_addr #1 !dbg !234 {
entry:
    #dbg_value(ptr %strm, !263, !DIExpression(), !270)
    #dbg_value(ptr %options, !264, !DIExpression(), !270)
  %call = tail call i32 @lzma_strm_init(ptr noundef %strm) #3, !dbg !271
    #dbg_value(i32 %call, !265, !DIExpression(), !272)
  %cmp.not.not = icmp eq i32 %call, 0, !dbg !273
  br i1 %cmp.not.not, label %do.end, label %return

do.end:                                           ; preds = %entry
  %internal = getelementptr inbounds i8, ptr %strm, i64 56, !dbg !275
  %0 = load ptr, ptr %internal, align 8, !dbg !275
  %allocator = getelementptr inbounds i8, ptr %strm, i64 48, !dbg !275
  %1 = load ptr, ptr %allocator, align 8, !dbg !275
    #dbg_value(ptr %0, !225, !DIExpression(), !276)
    #dbg_value(ptr %1, !226, !DIExpression(), !276)
    #dbg_value(ptr %options, !227, !DIExpression(), !276)
  %call.i = tail call i32 @lzma_raw_coder_init(ptr noundef %0, ptr noundef %1, ptr noundef %options, ptr noundef nonnull @decoder_find, i1 noundef zeroext false) #3, !dbg !278
    #dbg_value(i32 %call.i, !269, !DIExpression(), !279)
  %cmp4.not.not = icmp eq i32 %call.i, 0, !dbg !280
  br i1 %cmp4.not.not, label %do.end10, label %cleanup7, !dbg !275

cleanup7:                                         ; preds = %do.end
  tail call void @lzma_end(ptr noundef nonnull %strm) #3, !dbg !282
  br label %return

do.end10:                                         ; preds = %do.end
  %2 = load ptr, ptr %internal, align 8, !dbg !284
  %supported_actions = getelementptr inbounds i8, ptr %2, i64 80, !dbg !285
  store i8 1, ptr %supported_actions, align 8, !dbg !286
  %3 = load ptr, ptr %internal, align 8, !dbg !287
  %arrayidx14 = getelementptr inbounds i8, ptr %3, i64 83, !dbg !288
  store i8 1, ptr %arrayidx14, align 1, !dbg !289
  br label %return, !dbg !290

return:                                           ; preds = %cleanup7, %entry, %do.end10
  %retval.2 = phi i32 [ %call, %entry ], [ %call.i, %cleanup7 ], [ 0, %do.end10 ], !dbg !270
  ret i32 %retval.2, !dbg !291
}

declare !dbg !292 i32 @lzma_strm_init(ptr noundef) local_unnamed_addr #2

declare !dbg !295 void @lzma_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @lzma_raw_decoder_memusage(ptr noundef %filters) local_unnamed_addr #1 !dbg !298 {
entry:
    #dbg_value(ptr %filters, !302, !DIExpression(), !303)
  %call = tail call i64 @lzma_raw_coder_memusage(ptr noundef nonnull @decoder_find, ptr noundef %filters) #3, !dbg !304
  ret i64 %call, !dbg !305
}

declare !dbg !306 i64 @lzma_raw_coder_memusage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_properties_decode(ptr noundef %filter, ptr noundef %allocator, ptr noundef %props, i64 noundef %props_size) local_unnamed_addr #1 !dbg !309 {
entry:
    #dbg_value(ptr %filter, !314, !DIExpression(), !320)
    #dbg_value(ptr %allocator, !315, !DIExpression(), !320)
    #dbg_value(ptr %props, !316, !DIExpression(), !320)
    #dbg_value(i64 %props_size, !317, !DIExpression(), !320)
  %options = getelementptr inbounds i8, ptr %filter, i64 8, !dbg !321
  store ptr null, ptr %options, align 8, !dbg !322
  %0 = load i64, ptr %filter, align 8, !dbg !323
    #dbg_value(i64 %0, !199, !DIExpression(), !324)
    #dbg_value(i64 0, !205, !DIExpression(), !326)
    #dbg_value(i64 0, !205, !DIExpression(), !326)
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
  ], !dbg !327

if.then.fold.split.i:                             ; preds = %entry
  br label %if.end, !dbg !328

if.then.fold.split9.i:                            ; preds = %entry
  br label %if.end, !dbg !328

if.then.fold.split10.i:                           ; preds = %entry
  br label %if.end, !dbg !328

if.then.fold.split11.i:                           ; preds = %entry
  br label %if.end, !dbg !328

if.then.fold.split12.i:                           ; preds = %entry
  br label %if.end, !dbg !328

if.then.fold.split13.i:                           ; preds = %entry
  br label %if.end, !dbg !328

if.then.fold.split14.i:                           ; preds = %entry
  br label %if.end, !dbg !328

if.then.fold.split15.i:                           ; preds = %entry
  br label %if.end, !dbg !328

if.end:                                           ; preds = %if.then.fold.split15.i, %if.then.fold.split14.i, %if.then.fold.split13.i, %if.then.fold.split12.i, %if.then.fold.split11.i, %if.then.fold.split10.i, %if.then.fold.split9.i, %if.then.fold.split.i, %entry
  %i.07.lcssa.i = phi i64 [ 0, %entry ], [ 1, %if.then.fold.split.i ], [ 2, %if.then.fold.split9.i ], [ 3, %if.then.fold.split10.i ], [ 4, %if.then.fold.split11.i ], [ 5, %if.then.fold.split12.i ], [ 6, %if.then.fold.split13.i ], [ 7, %if.then.fold.split14.i ], [ 8, %if.then.fold.split15.i ]
    #dbg_value(!DIArgList(ptr @decoders, i64 %i.07.lcssa.i), !318, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !320)
  %props_decode = getelementptr inbounds %struct.lzma_filter_decoder, ptr @decoders, i64 %i.07.lcssa.i, i32 3, !dbg !329
  %1 = load ptr, ptr %props_decode, align 8, !dbg !329
  %cmp1 = icmp eq ptr %1, null, !dbg !331
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !332

if.then2:                                         ; preds = %if.end
  %cmp3 = icmp eq i64 %props_size, 0, !dbg !333
  %cond = select i1 %cmp3, i32 0, i32 8, !dbg !334
  br label %cleanup, !dbg !335

if.end4:                                          ; preds = %if.end
  %call7 = tail call i32 %1(ptr noundef nonnull %options, ptr noundef %allocator, ptr noundef %props, i64 noundef %props_size) #3, !dbg !336
  br label %cleanup, !dbg !337

cleanup:                                          ; preds = %entry, %if.end4, %if.then2
  %retval.0 = phi i32 [ %cond, %if.then2 ], [ %call7, %if.end4 ], [ 8, %entry ], !dbg !320
  ret i32 %retval.0, !dbg !338
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

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!184, !185, !186, !187, !188, !189, !190}
!llvm.ident = !{!191}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "decoders", scope: !2, file: !3, line: 44, type: !169, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !136, globals: !168, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "liblzma/common/filter_decoder.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "adc3b4c5f89841352349a28c6cc96b69")
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
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 2304, elements: !182)
!170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter_decoder", file: !3, line: 41, baseType: !172)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 21, size: 256, elements: !173)
!173 = !{!174, !175, !176, !177}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !172, file: !3, line: 23, baseType: !46, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !172, file: !3, line: 27, baseType: !149, size: 64, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "memusage", scope: !172, file: !3, line: 31, baseType: !163, size: 64, offset: 128)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "props_decode", scope: !172, file: !3, line: 38, baseType: !178, size: 64, offset: 192)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DISubroutineType(types: !180)
!180 = !{!61, !181, !62, !79, !71}
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!182 = !{!183}
!183 = !DISubrange(count: 9)
!184 = !{i32 7, !"Dwarf Version", i32 5}
!185 = !{i32 2, !"Debug Info Version", i32 3}
!186 = !{i32 1, !"wchar_size", i32 4}
!187 = !{i32 8, !"PIC Level", i32 2}
!188 = !{i32 7, !"PIE Level", i32 2}
!189 = !{i32 7, !"uwtable", i32 2}
!190 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!191 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!192 = distinct !DISubprogram(name: "lzma_filter_decoder_is_supported", scope: !3, file: !3, line: 132, type: !193, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !196)
!193 = !DISubroutineType(types: !194)
!194 = !{!195, !46}
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_bool", file: !6, line: 29, baseType: !83)
!196 = !{!197}
!197 = !DILocalVariable(name: "id", arg: 1, scope: !192, file: !3, line: 132, type: !46)
!198 = !DILocation(line: 0, scope: !192)
!199 = !DILocalVariable(name: "id", arg: 1, scope: !200, file: !3, line: 121, type: !46)
!200 = distinct !DISubprogram(name: "decoder_find", scope: !3, file: !3, line: 121, type: !201, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !204)
!201 = !DISubroutineType(types: !202)
!202 = !{!203, !46}
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!204 = !{!199, !205}
!205 = !DILocalVariable(name: "i", scope: !206, file: !3, line: 123, type: !71)
!206 = distinct !DILexicalBlock(scope: !200, file: !3, line: 123, column: 2)
!207 = !DILocation(line: 0, scope: !200, inlinedAt: !208)
!208 = distinct !DILocation(line: 134, column: 9, scope: !192)
!209 = !DILocation(line: 0, scope: !206, inlinedAt: !208)
!210 = !DILocation(line: 124, column: 7, scope: !211, inlinedAt: !208)
!211 = distinct !DILexicalBlock(scope: !206, file: !3, line: 123, column: 2)
!212 = !DILocation(line: 125, column: 4, scope: !213, inlinedAt: !208)
!213 = distinct !DILexicalBlock(scope: !211, file: !3, line: 124, column: 7)
!214 = !DILocation(line: 134, column: 2, scope: !192)
!215 = !DILocation(line: 0, scope: !200)
!216 = !DILocation(line: 0, scope: !206)
!217 = !DILocation(line: 124, column: 7, scope: !211)
!218 = !DILocation(line: 125, column: 20, scope: !213)
!219 = !DILocation(line: 125, column: 4, scope: !213)
!220 = !DILocation(line: 128, column: 1, scope: !200)
!221 = distinct !DISubprogram(name: "lzma_raw_decoder_init", scope: !3, file: !3, line: 139, type: !222, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !224)
!222 = !DISubroutineType(types: !223)
!223 = !{!61, !153, !62, !110}
!224 = !{!225, !226, !227}
!225 = !DILocalVariable(name: "next", arg: 1, scope: !221, file: !3, line: 139, type: !153)
!226 = !DILocalVariable(name: "allocator", arg: 2, scope: !221, file: !3, line: 139, type: !62)
!227 = !DILocalVariable(name: "options", arg: 3, scope: !221, file: !3, line: 140, type: !110)
!228 = !DILocation(line: 0, scope: !221)
!229 = !DILocation(line: 142, column: 9, scope: !221)
!230 = !DILocation(line: 142, column: 2, scope: !221)
!231 = !DISubprogram(name: "lzma_raw_coder_init", scope: !138, file: !138, line: 38, type: !232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!232 = !DISubroutineType(types: !233)
!233 = !{!61, !153, !62, !110, !137, !122}
!234 = distinct !DISubprogram(name: "lzma_raw_decoder", scope: !3, file: !3, line: 148, type: !235, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !262)
!235 = !DISubroutineType(types: !236)
!236 = !{!61, !237, !110}
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_stream", file: !6, line: 490, baseType: !239)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 453, size: 1088, elements: !240)
!240 = !{!241, !242, !243, !244, !245, !246, !247, !248, !251, !252, !253, !254, !255, !256, !257, !258, !259, !261}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !239, file: !6, line: 454, baseType: !79, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !239, file: !6, line: 455, baseType: !71, size: 64, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "total_in", scope: !239, file: !6, line: 456, baseType: !48, size: 64, offset: 128)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !239, file: !6, line: 458, baseType: !87, size: 64, offset: 192)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !239, file: !6, line: 459, baseType: !71, size: 64, offset: 256)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "total_out", scope: !239, file: !6, line: 460, baseType: !48, size: 64, offset: 320)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !239, file: !6, line: 468, baseType: !62, size: 64, offset: 384)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !239, file: !6, line: 471, baseType: !249, size: 64, offset: 448)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_internal", file: !6, line: 411, baseType: !36)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !239, file: !6, line: 479, baseType: !70, size: 64, offset: 512)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !239, file: !6, line: 480, baseType: !70, size: 64, offset: 576)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !239, file: !6, line: 481, baseType: !70, size: 64, offset: 640)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr4", scope: !239, file: !6, line: 482, baseType: !70, size: 64, offset: 704)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !239, file: !6, line: 483, baseType: !48, size: 64, offset: 768)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !239, file: !6, line: 484, baseType: !48, size: 64, offset: 832)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !239, file: !6, line: 485, baseType: !71, size: 64, offset: 896)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !239, file: !6, line: 486, baseType: !71, size: 64, offset: 960)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !239, file: !6, line: 487, baseType: !260, size: 32, offset: 1024)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !6, line: 46, baseType: !133)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !239, file: !6, line: 488, baseType: !260, size: 32, offset: 1056)
!262 = !{!263, !264, !265, !269}
!263 = !DILocalVariable(name: "strm", arg: 1, scope: !234, file: !3, line: 148, type: !237)
!264 = !DILocalVariable(name: "options", arg: 2, scope: !234, file: !3, line: 148, type: !110)
!265 = !DILocalVariable(name: "ret_", scope: !266, file: !3, line: 150, type: !268)
!266 = distinct !DILexicalBlock(scope: !267, file: !3, line: 150, column: 2)
!267 = distinct !DILexicalBlock(scope: !234, file: !3, line: 150, column: 2)
!268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!269 = !DILocalVariable(name: "ret_", scope: !267, file: !3, line: 150, type: !268)
!270 = !DILocation(line: 0, scope: !234)
!271 = !DILocation(line: 150, column: 2, scope: !266)
!272 = !DILocation(line: 0, scope: !266)
!273 = !DILocation(line: 150, column: 2, scope: !274)
!274 = distinct !DILexicalBlock(scope: !266, file: !3, line: 150, column: 2)
!275 = !DILocation(line: 150, column: 2, scope: !267)
!276 = !DILocation(line: 0, scope: !221, inlinedAt: !277)
!277 = distinct !DILocation(line: 150, column: 2, scope: !267)
!278 = !DILocation(line: 142, column: 9, scope: !221, inlinedAt: !277)
!279 = !DILocation(line: 0, scope: !267)
!280 = !DILocation(line: 150, column: 2, scope: !281)
!281 = distinct !DILexicalBlock(scope: !267, file: !3, line: 150, column: 2)
!282 = !DILocation(line: 150, column: 2, scope: !283)
!283 = distinct !DILexicalBlock(scope: !281, file: !3, line: 150, column: 2)
!284 = !DILocation(line: 152, column: 8, scope: !234)
!285 = !DILocation(line: 152, column: 18, scope: !234)
!286 = !DILocation(line: 152, column: 46, scope: !234)
!287 = !DILocation(line: 153, column: 8, scope: !234)
!288 = !DILocation(line: 153, column: 2, scope: !234)
!289 = !DILocation(line: 153, column: 49, scope: !234)
!290 = !DILocation(line: 155, column: 2, scope: !234)
!291 = !DILocation(line: 156, column: 1, scope: !234)
!292 = !DISubprogram(name: "lzma_strm_init", scope: !35, file: !35, line: 220, type: !293, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!293 = !DISubroutineType(types: !294)
!294 = !{!61, !237}
!295 = !DISubprogram(name: "lzma_end", scope: !6, file: !6, line: 546, type: !296, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!296 = !DISubroutineType(types: !297)
!297 = !{null, !237}
!298 = distinct !DISubprogram(name: "lzma_raw_decoder_memusage", scope: !3, file: !3, line: 160, type: !299, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !301)
!299 = !DISubroutineType(types: !300)
!300 = !{!48, !110}
!301 = !{!302}
!302 = !DILocalVariable(name: "filters", arg: 1, scope: !298, file: !3, line: 160, type: !110)
!303 = !DILocation(line: 0, scope: !298)
!304 = !DILocation(line: 162, column: 9, scope: !298)
!305 = !DILocation(line: 162, column: 2, scope: !298)
!306 = !DISubprogram(name: "lzma_raw_coder_memusage", scope: !138, file: !138, line: 44, type: !307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!307 = !DISubroutineType(types: !308)
!308 = !{!48, !137, !110}
!309 = distinct !DISubprogram(name: "lzma_properties_decode", scope: !3, file: !3, line: 168, type: !310, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !313)
!310 = !DISubroutineType(types: !311)
!311 = !{!61, !312, !62, !79, !71}
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!313 = !{!314, !315, !316, !317, !318}
!314 = !DILocalVariable(name: "filter", arg: 1, scope: !309, file: !3, line: 168, type: !312)
!315 = !DILocalVariable(name: "allocator", arg: 2, scope: !309, file: !3, line: 168, type: !62)
!316 = !DILocalVariable(name: "props", arg: 3, scope: !309, file: !3, line: 169, type: !79)
!317 = !DILocalVariable(name: "props_size", arg: 4, scope: !309, file: !3, line: 169, type: !71)
!318 = !DILocalVariable(name: "fd", scope: !309, file: !3, line: 174, type: !319)
!319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !203)
!320 = !DILocation(line: 0, scope: !309)
!321 = !DILocation(line: 172, column: 10, scope: !309)
!322 = !DILocation(line: 172, column: 18, scope: !309)
!323 = !DILocation(line: 174, column: 61, scope: !309)
!324 = !DILocation(line: 0, scope: !200, inlinedAt: !325)
!325 = distinct !DILocation(line: 174, column: 40, scope: !309)
!326 = !DILocation(line: 0, scope: !206, inlinedAt: !325)
!327 = !DILocation(line: 124, column: 7, scope: !211, inlinedAt: !325)
!328 = !DILocation(line: 125, column: 20, scope: !213, inlinedAt: !325)
!329 = !DILocation(line: 178, column: 10, scope: !330)
!330 = distinct !DILexicalBlock(scope: !309, file: !3, line: 178, column: 6)
!331 = !DILocation(line: 178, column: 23, scope: !330)
!332 = !DILocation(line: 178, column: 6, scope: !309)
!333 = !DILocation(line: 179, column: 21, scope: !330)
!334 = !DILocation(line: 179, column: 10, scope: !330)
!335 = !DILocation(line: 179, column: 3, scope: !330)
!336 = !DILocation(line: 181, column: 9, scope: !309)
!337 = !DILocation(line: 181, column: 2, scope: !309)
!338 = !DILocation(line: 183, column: 1, scope: !309)
