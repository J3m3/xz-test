; ModuleID = 'liblzma/common/alone_encoder.c'
source_filename = "liblzma/common/alone_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_filter_info_s = type { i64, ptr, ptr }

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_alone_encoder(ptr noundef %strm, ptr noundef %options) local_unnamed_addr #0 !dbg !169 {
entry:
    #dbg_value(ptr %strm, !231, !DIExpression(), !238)
    #dbg_value(ptr %options, !232, !DIExpression(), !238)
  %call = tail call i32 @lzma_strm_init(ptr noundef %strm) #4, !dbg !239
    #dbg_value(i32 %call, !233, !DIExpression(), !240)
  %cmp.not.not = icmp eq i32 %call, 0, !dbg !241
  br i1 %cmp.not.not, label %do.end, label %return

do.end:                                           ; preds = %entry
  %internal = getelementptr inbounds i8, ptr %strm, i64 56, !dbg !243
  %0 = load ptr, ptr %internal, align 8, !dbg !243
  %allocator = getelementptr inbounds i8, ptr %strm, i64 48, !dbg !243
  %1 = load ptr, ptr %allocator, align 8, !dbg !243
  %call3 = tail call i32 @alone_encoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %options), !dbg !243
    #dbg_value(i32 %call3, !237, !DIExpression(), !244)
  %cmp4.not.not = icmp eq i32 %call3, 0, !dbg !245
  br i1 %cmp4.not.not, label %do.end10, label %cleanup7, !dbg !243

cleanup7:                                         ; preds = %do.end
  tail call void @lzma_end(ptr noundef nonnull %strm) #4, !dbg !247
  br label %return

do.end10:                                         ; preds = %do.end
  %2 = load ptr, ptr %internal, align 8, !dbg !249
  %supported_actions = getelementptr inbounds i8, ptr %2, i64 80, !dbg !250
  store i8 1, ptr %supported_actions, align 8, !dbg !251
  %3 = load ptr, ptr %internal, align 8, !dbg !252
  %arrayidx14 = getelementptr inbounds i8, ptr %3, i64 83, !dbg !253
  store i8 1, ptr %arrayidx14, align 1, !dbg !254
  br label %return, !dbg !255

return:                                           ; preds = %cleanup7, %entry, %do.end10
  %retval.2 = phi i32 [ %call, %entry ], [ %call3, %cleanup7 ], [ 0, %do.end10 ], !dbg !238
  ret i32 %retval.2, !dbg !256
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !257 i32 @lzma_strm_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @alone_encoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %options) #0 !dbg !260 {
entry:
  %filters = alloca [2 x %struct.lzma_filter_info_s], align 16, !DIAssignID !285
    #dbg_assign(i1 undef, !269, !DIExpression(), !285, ptr %filters, !DIExpression(), !286)
    #dbg_value(ptr %next, !265, !DIExpression(), !286)
    #dbg_value(ptr %allocator, !266, !DIExpression(), !286)
    #dbg_value(ptr %options, !267, !DIExpression(), !286)
  %init = getelementptr inbounds i8, ptr %next, i64 16, !dbg !287
  %0 = load i64, ptr %init, align 8, !dbg !287
  %cmp.not = icmp eq i64 %0, ptrtoint (ptr @alone_encoder_init to i64), !dbg !287
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !290

if.then:                                          ; preds = %entry
  tail call void @lzma_next_end(ptr noundef nonnull %next, ptr noundef %allocator) #4, !dbg !287
  br label %if.end, !dbg !287

if.end:                                           ; preds = %if.then, %entry
  store i64 ptrtoint (ptr @alone_encoder_init to i64), ptr %init, align 8, !dbg !290
  %1 = load ptr, ptr %next, align 8, !dbg !291
  %cmp2 = icmp eq ptr %1, null, !dbg !293
  br i1 %cmp2, label %if.then3, label %if.end15, !dbg !294

if.then3:                                         ; preds = %if.end
  %call = tail call ptr @lzma_alloc(i64 noundef 96, ptr noundef %allocator) #4, !dbg !295
  store ptr %call, ptr %next, align 8, !dbg !297
  %cmp6 = icmp eq ptr %call, null, !dbg !298
  br i1 %cmp6, label %return, label %if.end8, !dbg !300

if.end8:                                          ; preds = %if.then3
  %code = getelementptr inbounds i8, ptr %next, i64 24, !dbg !301
  store ptr @alone_encode, ptr %code, align 8, !dbg !302
  %end = getelementptr inbounds i8, ptr %next, i64 32, !dbg !303
  store ptr @alone_encoder_end, ptr %end, align 8, !dbg !304
  store ptr null, ptr %call, align 8, !dbg !305
  %.compoundliteral.sroa.2.0.next10.sroa_idx = getelementptr inbounds i8, ptr %call, i64 8, !dbg !305
  store i64 -1, ptr %.compoundliteral.sroa.2.0.next10.sroa_idx, align 8, !dbg !305
  %.compoundliteral.sroa.3.0.next10.sroa_idx = getelementptr inbounds i8, ptr %call, i64 16, !dbg !305
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.compoundliteral.sroa.3.0.next10.sroa_idx, i8 0, i64 48, i1 false), !dbg !305
  %.pre = load ptr, ptr %next, align 8, !dbg !306
  br label %if.end15, !dbg !307

if.end15:                                         ; preds = %if.end8, %if.end
  %2 = phi ptr [ %.pre, %if.end8 ], [ %1, %if.end ], !dbg !306
  %sequence = getelementptr inbounds i8, ptr %2, i64 64, !dbg !308
  store i32 0, ptr %sequence, align 8, !dbg !309
  %3 = load ptr, ptr %next, align 8, !dbg !310
  %header_pos = getelementptr inbounds i8, ptr %3, i64 72, !dbg !311
  store i64 0, ptr %header_pos, align 8, !dbg !312
  %4 = load ptr, ptr %next, align 8, !dbg !313
  %header = getelementptr inbounds i8, ptr %4, i64 80, !dbg !315
  %call19 = tail call zeroext i1 @lzma_lzma_lclppb_encode(ptr noundef %options, ptr noundef nonnull %header) #4, !dbg !316
  br i1 %call19, label %return, label %if.end21, !dbg !317

if.end21:                                         ; preds = %if.end15
  %5 = load i32, ptr %options, align 8, !dbg !318
  %cmp22 = icmp ult i32 %5, 4096, !dbg !320
  br i1 %cmp22, label %return, label %if.end24, !dbg !321

if.end24:                                         ; preds = %if.end21
  %sub = add i32 %5, -1, !dbg !322
    #dbg_value(i32 %sub, !268, !DIExpression(), !286)
  %shr = lshr i32 %sub, 2, !dbg !323
  %or = or i32 %shr, %sub, !dbg !324
    #dbg_value(i32 %or, !268, !DIExpression(), !286)
  %shr26 = lshr i32 %or, 3, !dbg !325
  %or27 = or i32 %shr26, %or, !dbg !326
    #dbg_value(i32 %or27, !268, !DIExpression(), !286)
  %shr28 = lshr i32 %or27, 4, !dbg !327
  %or29 = or i32 %shr28, %or27, !dbg !328
    #dbg_value(i32 %or29, !268, !DIExpression(), !286)
  %shr30 = lshr i32 %or29, 8, !dbg !329
  %or31 = or i32 %shr30, %or29, !dbg !330
    #dbg_value(i32 %or31, !268, !DIExpression(), !286)
  %shr32 = lshr i32 %or31, 16, !dbg !331
  %or33 = or i32 %shr32, %or31, !dbg !332
    #dbg_value(i32 %or33, !268, !DIExpression(), !286)
  %cmp34.not = icmp eq i32 %or33, -1, !dbg !333
  %inc = add nuw i32 %or33, 1
  %spec.select = select i1 %cmp34.not, i32 -1, i32 %inc, !dbg !335
    #dbg_value(i32 %spec.select, !268, !DIExpression(), !286)
  %6 = load ptr, ptr %next, align 8, !dbg !336
  %add.ptr = getelementptr inbounds i8, ptr %6, i64 81, !dbg !337
    #dbg_value(ptr %add.ptr, !338, !DIExpression(), !345)
    #dbg_value(i32 %spec.select, !344, !DIExpression(), !345)
  %conv.i = trunc i32 %spec.select to i8, !dbg !347
  store i8 %conv.i, ptr %add.ptr, align 1, !dbg !348
  %shr.i = lshr i32 %spec.select, 8, !dbg !349
  %conv1.i = trunc i32 %shr.i to i8, !dbg !350
  %arrayidx2.i = getelementptr inbounds i8, ptr %6, i64 82, !dbg !351
  store i8 %conv1.i, ptr %arrayidx2.i, align 1, !dbg !352
  %shr3.i = lshr i32 %spec.select, 16, !dbg !353
  %conv4.i = trunc i32 %shr3.i to i8, !dbg !354
  %arrayidx5.i = getelementptr inbounds i8, ptr %6, i64 83, !dbg !355
  store i8 %conv4.i, ptr %arrayidx5.i, align 1, !dbg !356
  %shr6.i = lshr i32 %spec.select, 24, !dbg !357
  %conv7.i = trunc nuw i32 %shr6.i to i8, !dbg !358
  %arrayidx8.i = getelementptr inbounds i8, ptr %6, i64 84, !dbg !359
  store i8 %conv7.i, ptr %arrayidx8.i, align 1, !dbg !360
  %7 = load ptr, ptr %next, align 8, !dbg !361
  %add.ptr44 = getelementptr inbounds i8, ptr %7, i64 85, !dbg !362
  store i64 -1, ptr %add.ptr44, align 1, !dbg !363
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %filters) #4, !dbg !364
  store i64 0, ptr %filters, align 16, !dbg !365, !DIAssignID !366
    #dbg_assign(i64 0, !269, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !366, ptr %filters, !DIExpression(), !286)
  %init46 = getelementptr inbounds i8, ptr %filters, i64 8, !dbg !365
  store ptr @lzma_lzma_encoder_init, ptr %init46, align 8, !dbg !365, !DIAssignID !367
    #dbg_assign(ptr @lzma_lzma_encoder_init, !269, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !367, ptr %init46, !DIExpression(), !286)
  %options47 = getelementptr inbounds i8, ptr %filters, i64 16, !dbg !365
  store ptr %options, ptr %options47, align 16, !dbg !365, !DIAssignID !368
    #dbg_assign(ptr %options, !269, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !368, ptr %options47, !DIExpression(), !286)
  %arrayinit.element = getelementptr inbounds i8, ptr %filters, i64 24, !dbg !369
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %arrayinit.element, i8 0, i64 24, i1 false), !dbg !369, !DIAssignID !370
    #dbg_assign(i8 0, !269, !DIExpression(DW_OP_LLVM_fragment, 192, 192), !370, ptr %arrayinit.element, !DIExpression(), !286)
  %8 = load ptr, ptr %next, align 8, !dbg !371
  %call54 = call i32 @lzma_next_filter_init(ptr noundef %8, ptr noundef %allocator, ptr noundef nonnull %filters) #4, !dbg !372
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %filters) #4, !dbg !373
  br label %return

return:                                           ; preds = %if.end21, %if.end15, %if.then3, %if.end24
  %retval.0 = phi i32 [ %call54, %if.end24 ], [ 5, %if.then3 ], [ 8, %if.end15 ], [ 8, %if.end21 ], !dbg !286
  ret i32 %retval.0, !dbg !373
}

declare !dbg !374 void @lzma_end(ptr noundef) local_unnamed_addr #2

declare !dbg !377 void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !380 ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @alone_encode(ptr noundef %pcoder, ptr noundef %allocator, ptr noalias noundef %in, ptr noalias noundef %in_pos, i64 noundef %in_size, ptr noalias noundef %out, ptr noalias noundef %out_pos, i64 noundef %out_size, i32 noundef %action) #0 !dbg !383 {
entry:
    #dbg_value(ptr %pcoder, !385, !DIExpression(), !395)
    #dbg_value(ptr %allocator, !386, !DIExpression(), !395)
    #dbg_value(ptr %in, !387, !DIExpression(), !395)
    #dbg_value(ptr %in_pos, !388, !DIExpression(), !395)
    #dbg_value(i64 %in_size, !389, !DIExpression(), !395)
    #dbg_value(ptr %out, !390, !DIExpression(), !395)
    #dbg_value(ptr %out_pos, !391, !DIExpression(), !395)
    #dbg_value(i64 %out_size, !392, !DIExpression(), !395)
    #dbg_value(i32 %action, !393, !DIExpression(), !395)
    #dbg_value(ptr %pcoder, !394, !DIExpression(), !395)
  %0 = load i64, ptr %out_pos, align 8, !dbg !396
  %cmp19 = icmp ult i64 %0, %out_size, !dbg !397
  br i1 %cmp19, label %while.body.lr.ph, label %cleanup, !dbg !398

while.body.lr.ph:                                 ; preds = %entry
  %sequence = getelementptr inbounds i8, ptr %pcoder, i64 64
  %header = getelementptr inbounds i8, ptr %pcoder, i64 80
  %header_pos = getelementptr inbounds i8, ptr %pcoder, i64 72
  %.pre = load i32, ptr %sequence, align 8, !dbg !399
  switch i32 %.pre, label %cleanup [
    i32 0, label %sw.bb.peel
    i32 1, label %sw.bb4
  ], !dbg !400

sw.bb.peel:                                       ; preds = %while.body.lr.ph
  %call.peel = tail call i64 @lzma_bufcpy(ptr noundef nonnull %header, ptr noundef nonnull %header_pos, i64 noundef 13, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %out_size) #4, !dbg !401
  %1 = load i64, ptr %header_pos, align 8, !dbg !403
  %cmp2.peel = icmp ult i64 %1, 13, !dbg !405
  br i1 %cmp2.peel, label %cleanup, label %if.end.peel, !dbg !406

if.end.peel:                                      ; preds = %sw.bb.peel
  store i32 1, ptr %sequence, align 8, !dbg !407
  %2 = load i64, ptr %out_pos, align 8, !dbg !396
  %cmp.peel = icmp ult i64 %2, %out_size, !dbg !397
  br i1 %cmp.peel, label %sw.bb4, label %cleanup, !dbg !398

sw.bb4:                                           ; preds = %if.end.peel, %while.body.lr.ph
  %code = getelementptr inbounds i8, ptr %pcoder, i64 24, !dbg !408
  %3 = load ptr, ptr %code, align 8, !dbg !408
  %4 = load ptr, ptr %pcoder, align 8, !dbg !409
  %call7 = tail call i32 %3(ptr noundef %4, ptr noundef %allocator, ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %out_size, i32 noundef %action) #4, !dbg !410
  br label %cleanup, !dbg !411

cleanup:                                          ; preds = %while.body.lr.ph, %sw.bb.peel, %if.end.peel, %entry, %sw.bb4
  %retval.0 = phi i32 [ %call7, %sw.bb4 ], [ 0, %entry ], [ 11, %while.body.lr.ph ], [ 0, %sw.bb.peel ], [ 0, %if.end.peel ], !dbg !395
  ret i32 %retval.0, !dbg !412
}

; Function Attrs: nounwind uwtable
define internal void @alone_encoder_end(ptr noundef %pcoder, ptr noundef %allocator) #0 !dbg !413 {
entry:
    #dbg_value(ptr %pcoder, !415, !DIExpression(), !418)
    #dbg_value(ptr %allocator, !416, !DIExpression(), !418)
    #dbg_value(ptr %pcoder, !417, !DIExpression(), !418)
  tail call void @lzma_next_end(ptr noundef %pcoder, ptr noundef %allocator) #4, !dbg !419
  tail call void @lzma_free(ptr noundef %pcoder, ptr noundef %allocator) #4, !dbg !420
  ret void, !dbg !421
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare !dbg !422 zeroext i1 @lzma_lzma_lclppb_encode(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lzma_lzma_encoder_init(ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !426 i32 @lzma_next_filter_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !427 i64 @lzma_bufcpy(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !430 void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!161, !162, !163, !164, !165, !166, !167}
!llvm.ident = !{!168}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !159, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "liblzma/common/alone_encoder.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "9ce5b2abad8b3bd39d3b362b1a2c7b9d")
!2 = !{!3, !19, !25, !32, !131, !134, !139, !146}
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
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !34, file: !33, line: 187, baseType: !5, size: 32, elements: !124)
!33 = !DIFile(filename: "liblzma/common/common.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_internal_s", file: !33, line: 179, size: 704, elements: !35)
!35 = !{!36, !116, !117, !118, !123}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !34, file: !33, line: 181, baseType: !37, size: 512)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_next_coder", file: !33, line: 80, baseType: !38)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_next_coder_s", file: !33, line: 124, size: 512, elements: !39)
!39 = !{!40, !43, !51, !54, !87, !92, !99, !104}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !38, file: !33, line: 126, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_coder", file: !33, line: 78, baseType: null)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !38, file: !33, line: 130, baseType: !44, size: 64, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !45, line: 63, baseType: !46)
!45 = !DIFile(filename: "liblzma/api/lzma/vli.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !47, line: 27, baseType: !48)
!47 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !49, line: 45, baseType: !50)
!49 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!50 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !38, file: !33, line: 136, baseType: !52, size: 64, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !53, line: 90, baseType: !50)
!53 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!54 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !38, file: !33, line: 139, baseType: !55, size: 64, offset: 192)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_code_function", file: !33, line: 94, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DISubroutineType(types: !58)
!58 = !{!59, !41, !60, !76, !82, !69, !84, !82, !69, !86}
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !4, line: 403, baseType: !62)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 341, size: 192, elements: !63)
!63 = !{!64, !71, !75}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !62, file: !4, line: 376, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{!68, !68, !69, !69}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !70, line: 18, baseType: !50)
!70 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!71 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !62, file: !4, line: 390, baseType: !72, size: 64, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DISubroutineType(types: !74)
!74 = !{null, !68, !68}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !62, file: !4, line: 401, baseType: !68, size: 64, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !77)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !47, line: 24, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !49, line: 38, baseType: !81)
!81 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!82 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !4, line: 322, baseType: !19)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !38, file: !33, line: 144, baseType: !88, size: 64, offset: 256)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_end_function", file: !33, line: 102, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DISubroutineType(types: !91)
!91 = !{null, !41, !60}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "get_check", scope: !38, file: !33, line: 148, baseType: !93, size: 64, offset: 320)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DISubroutineType(types: !95)
!95 = !{!96, !97}
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !26, line: 55, baseType: !25)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "memconfig", scope: !38, file: !33, line: 152, baseType: !100, size: 64, offset: 384)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DISubroutineType(types: !102)
!102 = !{!59, !41, !103, !103, !46}
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !38, file: !33, line: 157, baseType: !105, size: 64, offset: 448)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DISubroutineType(types: !107)
!107 = !{!59, !41, !60, !108, !108}
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !111, line: 65, baseType: !112)
!111 = !DIFile(filename: "liblzma/api/lzma/filter.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !111, line: 43, size: 128, elements: !113)
!113 = !{!114, !115}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !112, file: !111, line: 54, baseType: !44, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !112, file: !111, line: 63, baseType: !68, size: 64, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !34, file: !33, line: 194, baseType: !32, size: 32, offset: 512)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !34, file: !33, line: 199, baseType: !69, size: 64, offset: 576)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "supported_actions", scope: !34, file: !33, line: 202, baseType: !119, size: 32, offset: 640)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 32, elements: !121)
!120 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!121 = !{!122}
!122 = !DISubrange(count: 4)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "allow_buf_error", scope: !34, file: !33, line: 206, baseType: !120, size: 8, offset: 672)
!124 = !{!125, !126, !127, !128, !129, !130}
!125 = !DIEnumerator(name: "ISEQ_RUN", value: 0)
!126 = !DIEnumerator(name: "ISEQ_SYNC_FLUSH", value: 1)
!127 = !DIEnumerator(name: "ISEQ_FULL_FLUSH", value: 2)
!128 = !DIEnumerator(name: "ISEQ_FINISH", value: 3)
!129 = !DIEnumerator(name: "ISEQ_END", value: 4)
!130 = !DIEnumerator(name: "ISEQ_ERROR", value: 5)
!131 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 44, baseType: !5, size: 32, elements: !132)
!132 = !{!133}
!133 = !DIEnumerator(name: "LZMA_RESERVED_ENUM", value: 0)
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !135, line: 138, baseType: !5, size: 32, elements: !136)
!135 = !DIFile(filename: "liblzma/api/lzma/lzma.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "c59c540efa0aff44f03d71331089fff8")
!136 = !{!137, !138}
!137 = !DIEnumerator(name: "LZMA_MODE_FAST", value: 1)
!138 = !DIEnumerator(name: "LZMA_MODE_NORMAL", value: 2)
!139 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !135, line: 58, baseType: !5, size: 32, elements: !140)
!140 = !{!141, !142, !143, !144, !145}
!141 = !DIEnumerator(name: "LZMA_MF_HC3", value: 3)
!142 = !DIEnumerator(name: "LZMA_MF_HC4", value: 4)
!143 = !DIEnumerator(name: "LZMA_MF_BT2", value: 18)
!144 = !DIEnumerator(name: "LZMA_MF_BT3", value: 19)
!145 = !DIEnumerator(name: "LZMA_MF_BT4", value: 20)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !147, file: !1, line: 23, baseType: !5, size: 32, elements: !156)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_coder_s", file: !1, line: 20, size: 768, elements: !148)
!148 = !{!149, !150, !151, !152}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !147, file: !1, line: 21, baseType: !37, size: 512)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !147, file: !1, line: 26, baseType: !146, size: 32, offset: 512)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "header_pos", scope: !147, file: !1, line: 28, baseType: !69, size: 64, offset: 576)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !147, file: !1, line: 29, baseType: !153, size: 104, offset: 640)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 104, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 13)
!156 = !{!157, !158}
!157 = !DIEnumerator(name: "SEQ_HEADER", value: 0)
!158 = !DIEnumerator(name: "SEQ_CODE", value: 1)
!159 = !{!52, !68, !160}
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!161 = !{i32 7, !"Dwarf Version", i32 5}
!162 = !{i32 2, !"Debug Info Version", i32 3}
!163 = !{i32 1, !"wchar_size", i32 4}
!164 = !{i32 8, !"PIC Level", i32 2}
!165 = !{i32 7, !"PIE Level", i32 2}
!166 = !{i32 7, !"uwtable", i32 2}
!167 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!168 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!169 = distinct !DISubprogram(name: "lzma_alone_encoder", scope: !1, file: !1, line: 151, type: !170, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !230)
!170 = !DISubroutineType(types: !171)
!171 = !{!59, !172, !197}
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_stream", file: !4, line: 490, baseType: !174)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 453, size: 1088, elements: !175)
!175 = !{!176, !177, !178, !179, !180, !181, !182, !183, !186, !187, !188, !189, !190, !191, !192, !193, !194, !196}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !174, file: !4, line: 454, baseType: !77, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !174, file: !4, line: 455, baseType: !69, size: 64, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "total_in", scope: !174, file: !4, line: 456, baseType: !46, size: 64, offset: 128)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !174, file: !4, line: 458, baseType: !85, size: 64, offset: 192)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !174, file: !4, line: 459, baseType: !69, size: 64, offset: 256)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "total_out", scope: !174, file: !4, line: 460, baseType: !46, size: 64, offset: 320)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !174, file: !4, line: 468, baseType: !60, size: 64, offset: 384)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !174, file: !4, line: 471, baseType: !184, size: 64, offset: 448)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_internal", file: !4, line: 411, baseType: !34)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !174, file: !4, line: 479, baseType: !68, size: 64, offset: 512)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !174, file: !4, line: 480, baseType: !68, size: 64, offset: 576)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !174, file: !4, line: 481, baseType: !68, size: 64, offset: 640)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr4", scope: !174, file: !4, line: 482, baseType: !68, size: 64, offset: 704)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !174, file: !4, line: 483, baseType: !46, size: 64, offset: 768)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !174, file: !4, line: 484, baseType: !46, size: 64, offset: 832)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !174, file: !4, line: 485, baseType: !69, size: 64, offset: 896)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !174, file: !4, line: 486, baseType: !69, size: 64, offset: 960)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !174, file: !4, line: 487, baseType: !195, size: 32, offset: 1024)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !4, line: 46, baseType: !131)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !174, file: !4, line: 488, baseType: !195, size: 32, offset: 1056)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !199)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_options_lzma", file: !135, line: 399, baseType: !200)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !135, line: 185, size: 896, elements: !201)
!201 = !{!202, !205, !206, !207, !208, !209, !210, !212, !213, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "dict_size", scope: !200, file: !135, line: 217, baseType: !203, size: 32)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !47, line: 26, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !49, line: 42, baseType: !5)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict", scope: !200, file: !135, line: 240, baseType: !77, size: 64, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict_size", scope: !200, file: !135, line: 254, baseType: !203, size: 32, offset: 128)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "lc", scope: !200, file: !135, line: 281, baseType: !203, size: 32, offset: 160)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "lp", scope: !200, file: !135, line: 293, baseType: !203, size: 32, offset: 192)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "pb", scope: !200, file: !135, line: 316, baseType: !203, size: 32, offset: 224)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !200, file: !135, line: 322, baseType: !211, size: 32, offset: 256)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_mode", file: !135, line: 155, baseType: !134)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "nice_len", scope: !200, file: !135, line: 342, baseType: !203, size: 32, offset: 288)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "mf", scope: !200, file: !135, line: 345, baseType: !214, size: 32, offset: 320)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_match_finder", file: !135, line: 111, baseType: !139)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !200, file: !135, line: 375, baseType: !203, size: 32, offset: 352)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !200, file: !135, line: 384, baseType: !203, size: 32, offset: 384)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !200, file: !135, line: 385, baseType: !203, size: 32, offset: 416)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !200, file: !135, line: 386, baseType: !203, size: 32, offset: 448)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !200, file: !135, line: 387, baseType: !203, size: 32, offset: 480)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int5", scope: !200, file: !135, line: 388, baseType: !203, size: 32, offset: 512)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int6", scope: !200, file: !135, line: 389, baseType: !203, size: 32, offset: 544)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int7", scope: !200, file: !135, line: 390, baseType: !203, size: 32, offset: 576)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int8", scope: !200, file: !135, line: 391, baseType: !203, size: 32, offset: 608)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !200, file: !135, line: 392, baseType: !195, size: 32, offset: 640)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !200, file: !135, line: 393, baseType: !195, size: 32, offset: 672)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !200, file: !135, line: 394, baseType: !195, size: 32, offset: 704)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !200, file: !135, line: 395, baseType: !195, size: 32, offset: 736)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !200, file: !135, line: 396, baseType: !68, size: 64, offset: 768)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !200, file: !135, line: 397, baseType: !68, size: 64, offset: 832)
!230 = !{!231, !232, !233, !237}
!231 = !DILocalVariable(name: "strm", arg: 1, scope: !169, file: !1, line: 151, type: !172)
!232 = !DILocalVariable(name: "options", arg: 2, scope: !169, file: !1, line: 151, type: !197)
!233 = !DILocalVariable(name: "ret_", scope: !234, file: !1, line: 153, type: !236)
!234 = distinct !DILexicalBlock(scope: !235, file: !1, line: 153, column: 2)
!235 = distinct !DILexicalBlock(scope: !169, file: !1, line: 153, column: 2)
!236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!237 = !DILocalVariable(name: "ret_", scope: !235, file: !1, line: 153, type: !236)
!238 = !DILocation(line: 0, scope: !169)
!239 = !DILocation(line: 153, column: 2, scope: !234)
!240 = !DILocation(line: 0, scope: !234)
!241 = !DILocation(line: 153, column: 2, scope: !242)
!242 = distinct !DILexicalBlock(scope: !234, file: !1, line: 153, column: 2)
!243 = !DILocation(line: 153, column: 2, scope: !235)
!244 = !DILocation(line: 0, scope: !235)
!245 = !DILocation(line: 153, column: 2, scope: !246)
!246 = distinct !DILexicalBlock(scope: !235, file: !1, line: 153, column: 2)
!247 = !DILocation(line: 153, column: 2, scope: !248)
!248 = distinct !DILexicalBlock(scope: !246, file: !1, line: 153, column: 2)
!249 = !DILocation(line: 155, column: 8, scope: !169)
!250 = !DILocation(line: 155, column: 18, scope: !169)
!251 = !DILocation(line: 155, column: 46, scope: !169)
!252 = !DILocation(line: 156, column: 8, scope: !169)
!253 = !DILocation(line: 156, column: 2, scope: !169)
!254 = !DILocation(line: 156, column: 49, scope: !169)
!255 = !DILocation(line: 158, column: 2, scope: !169)
!256 = !DILocation(line: 159, column: 1, scope: !169)
!257 = !DISubprogram(name: "lzma_strm_init", scope: !33, file: !33, line: 220, type: !258, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!258 = !DISubroutineType(types: !259)
!259 = !{!59, !172}
!260 = distinct !DISubprogram(name: "alone_encoder_init", scope: !1, file: !1, line: 80, type: !261, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !264)
!261 = !DISubroutineType(types: !262)
!262 = !{!59, !263, !60, !197}
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!264 = !{!265, !266, !267, !268, !269}
!265 = !DILocalVariable(name: "next", arg: 1, scope: !260, file: !1, line: 80, type: !263)
!266 = !DILocalVariable(name: "allocator", arg: 2, scope: !260, file: !1, line: 80, type: !60)
!267 = !DILocalVariable(name: "options", arg: 3, scope: !260, file: !1, line: 81, type: !197)
!268 = !DILocalVariable(name: "d", scope: !260, file: !1, line: 112, type: !203)
!269 = !DILocalVariable(name: "filters", scope: !260, file: !1, line: 127, type: !270)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 384, elements: !283)
!271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !272)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter_info", file: !33, line: 82, baseType: !273)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_filter_info_s", file: !33, line: 109, size: 192, elements: !274)
!274 = !{!275, !276, !282}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !273, file: !33, line: 112, baseType: !44, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !273, file: !33, line: 116, baseType: !277, size: 64, offset: 64)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_init_function", file: !33, line: 86, baseType: !278)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{!59, !263, !60, !281}
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !273, file: !33, line: 119, baseType: !68, size: 64, offset: 128)
!283 = !{!284}
!284 = !DISubrange(count: 2)
!285 = distinct !DIAssignID()
!286 = !DILocation(line: 0, scope: !260)
!287 = !DILocation(line: 83, column: 2, scope: !288)
!288 = distinct !DILexicalBlock(scope: !289, file: !1, line: 83, column: 2)
!289 = distinct !DILexicalBlock(scope: !260, file: !1, line: 83, column: 2)
!290 = !DILocation(line: 83, column: 2, scope: !289)
!291 = !DILocation(line: 85, column: 12, scope: !292)
!292 = distinct !DILexicalBlock(scope: !260, file: !1, line: 85, column: 6)
!293 = !DILocation(line: 85, column: 18, scope: !292)
!294 = !DILocation(line: 85, column: 6, scope: !260)
!295 = !DILocation(line: 86, column: 17, scope: !296)
!296 = distinct !DILexicalBlock(scope: !292, file: !1, line: 85, column: 27)
!297 = !DILocation(line: 86, column: 15, scope: !296)
!298 = !DILocation(line: 87, column: 19, scope: !299)
!299 = distinct !DILexicalBlock(scope: !296, file: !1, line: 87, column: 7)
!300 = !DILocation(line: 87, column: 7, scope: !296)
!301 = !DILocation(line: 90, column: 9, scope: !296)
!302 = !DILocation(line: 90, column: 14, scope: !296)
!303 = !DILocation(line: 91, column: 9, scope: !296)
!304 = !DILocation(line: 91, column: 13, scope: !296)
!305 = !DILocation(line: 92, column: 47, scope: !296)
!306 = !DILocation(line: 96, column: 31, scope: !260)
!307 = !DILocation(line: 93, column: 2, scope: !296)
!308 = !DILocation(line: 96, column: 39, scope: !260)
!309 = !DILocation(line: 96, column: 48, scope: !260)
!310 = !DILocation(line: 97, column: 31, scope: !260)
!311 = !DILocation(line: 97, column: 39, scope: !260)
!312 = !DILocation(line: 97, column: 50, scope: !260)
!313 = !DILocation(line: 101, column: 68, scope: !314)
!314 = distinct !DILexicalBlock(scope: !260, file: !1, line: 101, column: 6)
!315 = !DILocation(line: 101, column: 76, scope: !314)
!316 = !DILocation(line: 101, column: 6, scope: !314)
!317 = !DILocation(line: 101, column: 6, scope: !260)
!318 = !DILocation(line: 105, column: 15, scope: !319)
!319 = distinct !DILexicalBlock(scope: !260, file: !1, line: 105, column: 6)
!320 = !DILocation(line: 105, column: 25, scope: !319)
!321 = !DILocation(line: 105, column: 6, scope: !260)
!322 = !DILocation(line: 112, column: 34, scope: !260)
!323 = !DILocation(line: 113, column: 9, scope: !260)
!324 = !DILocation(line: 113, column: 4, scope: !260)
!325 = !DILocation(line: 114, column: 9, scope: !260)
!326 = !DILocation(line: 114, column: 4, scope: !260)
!327 = !DILocation(line: 115, column: 9, scope: !260)
!328 = !DILocation(line: 115, column: 4, scope: !260)
!329 = !DILocation(line: 116, column: 9, scope: !260)
!330 = !DILocation(line: 116, column: 4, scope: !260)
!331 = !DILocation(line: 117, column: 9, scope: !260)
!332 = !DILocation(line: 117, column: 4, scope: !260)
!333 = !DILocation(line: 118, column: 8, scope: !334)
!334 = distinct !DILexicalBlock(scope: !260, file: !1, line: 118, column: 6)
!335 = !DILocation(line: 118, column: 6, scope: !260)
!336 = !DILocation(line: 121, column: 51, scope: !260)
!337 = !DILocation(line: 121, column: 66, scope: !260)
!338 = !DILocalVariable(name: "buf", arg: 1, scope: !339, file: !340, line: 351, type: !85)
!339 = distinct !DISubprogram(name: "unaligned_write32le", scope: !340, file: !340, line: 351, type: !341, scopeLine: 352, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !343)
!340 = !DIFile(filename: "common/tuklib_integer.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "877bd6a1d04ec1170bc985c87ef412ed")
!341 = !DISubroutineType(types: !342)
!342 = !{null, !85, !203}
!343 = !{!338, !344}
!344 = !DILocalVariable(name: "num", arg: 2, scope: !339, file: !340, line: 351, type: !203)
!345 = !DILocation(line: 0, scope: !339, inlinedAt: !346)
!346 = distinct !DILocation(line: 121, column: 2, scope: !260)
!347 = !DILocation(line: 353, column: 11, scope: !339, inlinedAt: !346)
!348 = !DILocation(line: 353, column: 9, scope: !339, inlinedAt: !346)
!349 = !DILocation(line: 354, column: 15, scope: !339, inlinedAt: !346)
!350 = !DILocation(line: 354, column: 11, scope: !339, inlinedAt: !346)
!351 = !DILocation(line: 354, column: 2, scope: !339, inlinedAt: !346)
!352 = !DILocation(line: 354, column: 9, scope: !339, inlinedAt: !346)
!353 = !DILocation(line: 355, column: 15, scope: !339, inlinedAt: !346)
!354 = !DILocation(line: 355, column: 11, scope: !339, inlinedAt: !346)
!355 = !DILocation(line: 355, column: 2, scope: !339, inlinedAt: !346)
!356 = !DILocation(line: 355, column: 9, scope: !339, inlinedAt: !346)
!357 = !DILocation(line: 356, column: 15, scope: !339, inlinedAt: !346)
!358 = !DILocation(line: 356, column: 11, scope: !339, inlinedAt: !346)
!359 = !DILocation(line: 356, column: 2, scope: !339, inlinedAt: !346)
!360 = !DILocation(line: 356, column: 9, scope: !339, inlinedAt: !346)
!361 = !DILocation(line: 124, column: 38, scope: !260)
!362 = !DILocation(line: 124, column: 57, scope: !260)
!363 = !DILocation(line: 124, column: 2, scope: !260)
!364 = !DILocation(line: 127, column: 2, scope: !260)
!365 = !DILocation(line: 128, column: 3, scope: !260)
!366 = distinct !DIAssignID()
!367 = distinct !DIAssignID()
!368 = distinct !DIAssignID()
!369 = !DILocation(line: 127, column: 38, scope: !260)
!370 = distinct !DIAssignID()
!371 = !DILocation(line: 136, column: 61, scope: !260)
!372 = !DILocation(line: 136, column: 9, scope: !260)
!373 = !DILocation(line: 137, column: 1, scope: !260)
!374 = !DISubprogram(name: "lzma_end", scope: !4, file: !4, line: 546, type: !375, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!375 = !DISubroutineType(types: !376)
!376 = !{null, !172}
!377 = !DISubprogram(name: "lzma_next_end", scope: !33, file: !33, line: 237, type: !378, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!378 = !DISubroutineType(types: !379)
!379 = !{null, !263, !60}
!380 = !DISubprogram(name: "lzma_alloc", scope: !33, file: !33, line: 211, type: !381, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!381 = !DISubroutineType(types: !382)
!382 = !{!68, !69, !60}
!383 = distinct !DISubprogram(name: "alone_encode", scope: !1, file: !1, line: 34, type: !57, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !384)
!384 = !{!385, !386, !387, !388, !389, !390, !391, !392, !393, !394}
!385 = !DILocalVariable(name: "pcoder", arg: 1, scope: !383, file: !1, line: 34, type: !41)
!386 = !DILocalVariable(name: "allocator", arg: 2, scope: !383, file: !1, line: 35, type: !60)
!387 = !DILocalVariable(name: "in", arg: 3, scope: !383, file: !1, line: 36, type: !76)
!388 = !DILocalVariable(name: "in_pos", arg: 4, scope: !383, file: !1, line: 36, type: !82)
!389 = !DILocalVariable(name: "in_size", arg: 5, scope: !383, file: !1, line: 37, type: !69)
!390 = !DILocalVariable(name: "out", arg: 6, scope: !383, file: !1, line: 37, type: !84)
!391 = !DILocalVariable(name: "out_pos", arg: 7, scope: !383, file: !1, line: 38, type: !82)
!392 = !DILocalVariable(name: "out_size", arg: 8, scope: !383, file: !1, line: 38, type: !69)
!393 = !DILocalVariable(name: "action", arg: 9, scope: !383, file: !1, line: 39, type: !86)
!394 = !DILocalVariable(name: "coder", scope: !383, file: !1, line: 41, type: !160)
!395 = !DILocation(line: 0, scope: !383)
!396 = !DILocation(line: 42, column: 9, scope: !383)
!397 = !DILocation(line: 42, column: 18, scope: !383)
!398 = !DILocation(line: 42, column: 2, scope: !383)
!399 = !DILocation(line: 43, column: 17, scope: !383)
!400 = !DILocation(line: 43, column: 2, scope: !383)
!401 = !DILocation(line: 45, column: 3, scope: !402)
!402 = distinct !DILexicalBlock(scope: !383, file: !1, line: 43, column: 27)
!403 = !DILocation(line: 48, column: 14, scope: !404)
!404 = distinct !DILexicalBlock(scope: !402, file: !1, line: 48, column: 7)
!405 = !DILocation(line: 48, column: 25, scope: !404)
!406 = !DILocation(line: 48, column: 7, scope: !402)
!407 = !DILocation(line: 51, column: 19, scope: !402)
!408 = !DILocation(line: 55, column: 22, scope: !402)
!409 = !DILocation(line: 55, column: 39, scope: !402)
!410 = !DILocation(line: 55, column: 10, scope: !402)
!411 = !DILocation(line: 55, column: 3, scope: !402)
!412 = !DILocation(line: 65, column: 1, scope: !383)
!413 = distinct !DISubprogram(name: "alone_encoder_end", scope: !1, file: !1, line: 69, type: !90, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !414)
!414 = !{!415, !416, !417}
!415 = !DILocalVariable(name: "pcoder", arg: 1, scope: !413, file: !1, line: 69, type: !41)
!416 = !DILocalVariable(name: "allocator", arg: 2, scope: !413, file: !1, line: 69, type: !60)
!417 = !DILocalVariable(name: "coder", scope: !413, file: !1, line: 71, type: !160)
!418 = !DILocation(line: 0, scope: !413)
!419 = !DILocation(line: 72, column: 2, scope: !413)
!420 = !DILocation(line: 73, column: 2, scope: !413)
!421 = !DILocation(line: 75, column: 1, scope: !413)
!422 = !DISubprogram(name: "lzma_lzma_lclppb_encode", scope: !423, file: !423, line: 30, type: !424, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!423 = !DIFile(filename: "liblzma/lzma/lzma_encoder.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "f040cedafb3694586d90cdd6536f6965")
!424 = !DISubroutineType(types: !425)
!425 = !{!120, !197, !85}
!426 = !DISubprogram(name: "lzma_next_filter_init", scope: !33, file: !33, line: 226, type: !279, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!427 = !DISubprogram(name: "lzma_bufcpy", scope: !33, file: !33, line: 242, type: !428, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!428 = !DISubroutineType(types: !429)
!429 = !{!69, !76, !82, !69, !84, !82, !69}
!430 = !DISubprogram(name: "lzma_free", scope: !33, file: !33, line: 215, type: !431, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!431 = !DISubroutineType(types: !432)
!432 = !{null, !68, !60}
