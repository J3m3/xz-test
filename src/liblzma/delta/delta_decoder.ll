; ModuleID = 'liblzma/delta/delta_decoder.c'
source_filename = "liblzma/delta/delta_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_delta_decoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters) local_unnamed_addr #0 !dbg !46 {
entry:
    #dbg_value(ptr %next, !140, !DIExpression(), !143)
    #dbg_value(ptr %allocator, !141, !DIExpression(), !143)
    #dbg_value(ptr %filters, !142, !DIExpression(), !143)
  %code = getelementptr inbounds i8, ptr %next, i64 24, !dbg !144
  store ptr @delta_decode, ptr %code, align 8, !dbg !145
  %call = tail call i32 @lzma_delta_coder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters) #2, !dbg !146
  ret i32 %call, !dbg !147
}

; Function Attrs: nounwind uwtable
define internal i32 @delta_decode(ptr nocapture noundef %pcoder, ptr noundef %allocator, ptr noalias noundef %in, ptr noalias noundef %in_pos, i64 noundef %in_size, ptr noalias noundef %out, ptr noalias noundef %out_pos, i64 noundef %out_size, i32 noundef %action) #0 !dbg !148 {
entry:
    #dbg_value(ptr %pcoder, !150, !DIExpression(), !175)
    #dbg_value(ptr %allocator, !151, !DIExpression(), !175)
    #dbg_value(ptr %in, !152, !DIExpression(), !175)
    #dbg_value(ptr %in_pos, !153, !DIExpression(), !175)
    #dbg_value(i64 %in_size, !154, !DIExpression(), !175)
    #dbg_value(ptr %out, !155, !DIExpression(), !175)
    #dbg_value(ptr %out_pos, !156, !DIExpression(), !175)
    #dbg_value(i64 %out_size, !157, !DIExpression(), !175)
    #dbg_value(i32 %action, !158, !DIExpression(), !175)
    #dbg_value(ptr %pcoder, !159, !DIExpression(), !175)
  %0 = load i64, ptr %out_pos, align 8, !dbg !176
    #dbg_value(i64 %0, !171, !DIExpression(), !175)
  %code = getelementptr inbounds i8, ptr %pcoder, i64 24, !dbg !177
  %1 = load ptr, ptr %code, align 8, !dbg !177
  %2 = load ptr, ptr %pcoder, align 8, !dbg !178
  %call = tail call i32 %1(ptr noundef %2, ptr noundef %allocator, ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %out_size, i32 noundef %action) #2, !dbg !179
    #dbg_value(i32 %call, !173, !DIExpression(), !175)
  %add.ptr = getelementptr inbounds i8, ptr %out, i64 %0, !dbg !180
  %3 = load i64, ptr %out_pos, align 8, !dbg !181
  %sub = sub i64 %3, %0, !dbg !182
    #dbg_value(ptr %pcoder, !183, !DIExpression(), !194)
    #dbg_value(ptr %add.ptr, !188, !DIExpression(), !194)
    #dbg_value(i64 %sub, !189, !DIExpression(), !194)
    #dbg_value(ptr %pcoder, !190, !DIExpression(), !194)
    #dbg_value(i64 poison, !191, !DIExpression(), !194)
    #dbg_value(i64 0, !192, !DIExpression(), !196)
  %cmp21.not.i = icmp eq i64 %3, %0, !dbg !197
  br i1 %cmp21.not.i, label %decode_buffer.exit, label %for.body.lr.ph.i, !dbg !199

for.body.lr.ph.i:                                 ; preds = %entry
  %distance1.i = getelementptr inbounds i8, ptr %pcoder, i64 64, !dbg !200
  %4 = load i64, ptr %distance1.i, align 8, !dbg !200
    #dbg_value(i64 %4, !191, !DIExpression(), !194)
  %history.i = getelementptr inbounds i8, ptr %pcoder, i64 73
  %pos.i = getelementptr inbounds i8, ptr %pcoder, i64 72
  %.tr.i = trunc i64 %4 to i8
  %.pre.i = load i8, ptr %pos.i, align 8, !dbg !201
  %min.iters.check = icmp ult i64 %sub, 64, !dbg !199
  br i1 %min.iters.check, label %for.body.i.preheader, label %vector.scevcheck, !dbg !199

vector.scevcheck:                                 ; preds = %for.body.lr.ph.i
  %5 = xor i64 %0, -1, !dbg !199
  %6 = add i64 %3, %5, !dbg !199
  %7 = trunc i64 %6 to i8, !dbg !199
  %8 = icmp ult i8 %.pre.i, %7, !dbg !199
  %9 = add i8 %.pre.i, %.tr.i, !dbg !199
  %10 = trunc i64 %6 to i8, !dbg !199
  %11 = icmp ult i8 %9, %10, !dbg !199
  %12 = icmp ugt i64 %6, 255, !dbg !199
  %13 = or i1 %11, %12, !dbg !199
  %14 = zext i8 %.pre.i to i64, !dbg !199
  %15 = getelementptr i8, ptr %pcoder, i64 %14, !dbg !199
  %scevgep = getelementptr i8, ptr %15, i64 73, !dbg !199
  %16 = sub i64 0, %6, !dbg !199
  %17 = getelementptr i8, ptr %scevgep, i64 %16, !dbg !199
  %18 = icmp ugt ptr %17, %scevgep, !dbg !199
  %19 = zext i8 %9 to i64, !dbg !199
  %20 = getelementptr i8, ptr %pcoder, i64 %19, !dbg !199
  %scevgep16 = getelementptr i8, ptr %20, i64 73, !dbg !199
  %21 = sub i64 0, %6, !dbg !199
  %22 = getelementptr i8, ptr %scevgep16, i64 %21, !dbg !199
  %23 = icmp ugt ptr %22, %scevgep16, !dbg !199
  %24 = or i1 %8, %13, !dbg !199
  %25 = or i1 %24, %18, !dbg !199
  %26 = or i1 %25, %23, !dbg !199
  br i1 %26, label %for.body.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %27 = add i8 %.pre.i, %.tr.i, !dbg !199
  %28 = zext i8 %27 to i64, !dbg !199
  %29 = zext i8 %.pre.i to i64, !dbg !199
  %30 = sub nsw i64 %28, %29, !dbg !199
  %diff.check = icmp ult i64 %30, 64, !dbg !199
  br i1 %diff.check, label %for.body.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %sub, -64, !dbg !199
  %.cast = trunc i64 %n.vec to i8, !dbg !199
  %ind.end = sub i8 %.pre.i, %.cast, !dbg !199
  br label %vector.body, !dbg !199

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !203
  %.cast21 = trunc i64 %index to i8, !dbg !199
  %offset.idx = sub i8 %.pre.i, %.cast21, !dbg !199
  %31 = add i8 %offset.idx, %.tr.i, !dbg !204
  %32 = zext i8 %31 to i64, !dbg !204
  %33 = getelementptr inbounds [256 x i8], ptr %history.i, i64 0, i64 %32, !dbg !205
  %34 = getelementptr inbounds i8, ptr %33, i64 -15, !dbg !205
  %35 = getelementptr inbounds i8, ptr %33, i64 -31, !dbg !205
  %36 = getelementptr inbounds i8, ptr %33, i64 -47, !dbg !205
  %37 = getelementptr inbounds i8, ptr %33, i64 -63, !dbg !205
  %wide.load = load <16 x i8>, ptr %34, align 1, !dbg !205
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !205
  %wide.load22 = load <16 x i8>, ptr %35, align 1, !dbg !205
  %reverse23 = shufflevector <16 x i8> %wide.load22, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !205
  %wide.load24 = load <16 x i8>, ptr %36, align 1, !dbg !205
  %reverse25 = shufflevector <16 x i8> %wide.load24, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !205
  %wide.load26 = load <16 x i8>, ptr %37, align 1, !dbg !205
  %reverse27 = shufflevector <16 x i8> %wide.load26, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !205
  %38 = getelementptr inbounds i8, ptr %add.ptr, i64 %index, !dbg !206
  %39 = getelementptr inbounds i8, ptr %38, i64 16, !dbg !207
  %40 = getelementptr inbounds i8, ptr %38, i64 32, !dbg !207
  %41 = getelementptr inbounds i8, ptr %38, i64 48, !dbg !207
  %wide.load28 = load <16 x i8>, ptr %38, align 1, !dbg !207
  %wide.load29 = load <16 x i8>, ptr %39, align 1, !dbg !207
  %wide.load30 = load <16 x i8>, ptr %40, align 1, !dbg !207
  %wide.load31 = load <16 x i8>, ptr %41, align 1, !dbg !207
  %42 = add <16 x i8> %wide.load28, %reverse, !dbg !207
  %43 = add <16 x i8> %wide.load29, %reverse23, !dbg !207
  %44 = add <16 x i8> %wide.load30, %reverse25, !dbg !207
  %45 = add <16 x i8> %wide.load31, %reverse27, !dbg !207
  store <16 x i8> %42, ptr %38, align 1, !dbg !207
  store <16 x i8> %43, ptr %39, align 1, !dbg !207
  store <16 x i8> %44, ptr %40, align 1, !dbg !207
  store <16 x i8> %45, ptr %41, align 1, !dbg !207
  %46 = zext i8 %offset.idx to i64, !dbg !208
  %47 = getelementptr inbounds [256 x i8], ptr %history.i, i64 0, i64 %46, !dbg !208
  %48 = getelementptr inbounds i8, ptr %47, i64 -15, !dbg !209
  %49 = getelementptr inbounds i8, ptr %47, i64 -31, !dbg !209
  %50 = getelementptr inbounds i8, ptr %47, i64 -47, !dbg !209
  %51 = getelementptr inbounds i8, ptr %47, i64 -63, !dbg !209
  %reverse32 = shufflevector <16 x i8> %42, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !209
  store <16 x i8> %reverse32, ptr %48, align 1, !dbg !209
  %reverse33 = shufflevector <16 x i8> %43, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !209
  store <16 x i8> %reverse33, ptr %49, align 1, !dbg !209
  %reverse34 = shufflevector <16 x i8> %44, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !209
  store <16 x i8> %reverse34, ptr %50, align 1, !dbg !209
  %reverse35 = shufflevector <16 x i8> %45, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !209
  store <16 x i8> %reverse35, ptr %51, align 1, !dbg !209
  %index.next = add nuw i64 %index, 64, !dbg !203
  %52 = icmp eq i64 %index.next, %n.vec, !dbg !203
  br i1 %52, label %middle.block, label %vector.body, !dbg !203, !llvm.loop !210

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %sub, %n.vec, !dbg !199
  br i1 %cmp.n, label %decode_buffer.exit.loopexit, label %for.body.i.preheader, !dbg !199

for.body.i.preheader:                             ; preds = %middle.block, %vector.memcheck, %vector.scevcheck, %for.body.lr.ph.i
  %.ph = phi i8 [ %.pre.i, %vector.memcheck ], [ %.pre.i, %vector.scevcheck ], [ %.pre.i, %for.body.lr.ph.i ], [ %ind.end, %middle.block ]
  %i.022.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %for.body.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %for.body.i, !dbg !199

for.body.i:                                       ; preds = %for.body.i.preheader, %for.body.i
  %53 = phi i8 [ %dec.i, %for.body.i ], [ %.ph, %for.body.i.preheader ], !dbg !201
  %i.022.i = phi i64 [ %inc.i, %for.body.i ], [ %i.022.i.ph, %for.body.i.preheader ]
    #dbg_value(i64 %i.022.i, !192, !DIExpression(), !196)
  %add.narrow.i = add i8 %53, %.tr.i, !dbg !204
  %and.i = zext i8 %add.narrow.i to i64, !dbg !204
  %arrayidx.i = getelementptr inbounds [256 x i8], ptr %history.i, i64 0, i64 %and.i, !dbg !205
  %54 = load i8, ptr %arrayidx.i, align 1, !dbg !205
  %arrayidx3.i = getelementptr inbounds i8, ptr %add.ptr, i64 %i.022.i, !dbg !206
  %55 = load i8, ptr %arrayidx3.i, align 1, !dbg !207
  %add5.i = add i8 %55, %54, !dbg !207
  store i8 %add5.i, ptr %arrayidx3.i, align 1, !dbg !207
  %dec.i = add i8 %53, -1, !dbg !214
  %idxprom.i = zext i8 %53 to i64, !dbg !208
  %arrayidx12.i = getelementptr inbounds [256 x i8], ptr %history.i, i64 0, i64 %idxprom.i, !dbg !208
  store i8 %add5.i, ptr %arrayidx12.i, align 1, !dbg !209
  %inc.i = add nuw i64 %i.022.i, 1, !dbg !203
    #dbg_value(i64 %inc.i, !192, !DIExpression(), !196)
  %exitcond.not.i = icmp eq i64 %inc.i, %sub, !dbg !197
  br i1 %exitcond.not.i, label %decode_buffer.exit.loopexit, label %for.body.i, !dbg !199, !llvm.loop !215

decode_buffer.exit.loopexit:                      ; preds = %for.body.i, %middle.block
  %dec.i.lcssa = phi i8 [ %ind.end, %middle.block ], [ %dec.i, %for.body.i ], !dbg !214
  store i8 %dec.i.lcssa, ptr %pos.i, align 8, !dbg !214
  br label %decode_buffer.exit, !dbg !216

decode_buffer.exit:                               ; preds = %decode_buffer.exit.loopexit, %entry
  ret i32 %call, !dbg !216
}

declare !dbg !217 i32 @lzma_delta_coder_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 9) i32 @lzma_delta_props_decode(ptr nocapture noundef writeonly %options, ptr noundef %allocator, ptr nocapture noundef readonly %props, i64 noundef %props_size) local_unnamed_addr #0 !dbg !218 {
entry:
    #dbg_value(ptr %options, !223, !DIExpression(), !243)
    #dbg_value(ptr %allocator, !224, !DIExpression(), !243)
    #dbg_value(ptr %props, !225, !DIExpression(), !243)
    #dbg_value(i64 %props_size, !226, !DIExpression(), !243)
  %cmp.not = icmp eq i64 %props_size, 1, !dbg !244
  br i1 %cmp.not, label %if.end, label %return, !dbg !246

if.end:                                           ; preds = %entry
  %call = tail call ptr @lzma_alloc(i64 noundef 40, ptr noundef %allocator) #2, !dbg !247
    #dbg_value(ptr %call, !227, !DIExpression(), !243)
  %cmp1 = icmp eq ptr %call, null, !dbg !248
  br i1 %cmp1, label %return, label %if.end3, !dbg !250

if.end3:                                          ; preds = %if.end
  store i32 0, ptr %call, align 8, !dbg !251
  %0 = load i8, ptr %props, align 1, !dbg !252
  %conv = zext i8 %0 to i32, !dbg !252
  %add = add nuw nsw i32 %conv, 1, !dbg !253
  %dist = getelementptr inbounds i8, ptr %call, i64 4, !dbg !254
  store i32 %add, ptr %dist, align 4, !dbg !255
  store ptr %call, ptr %options, align 8, !dbg !256
  br label %return, !dbg !257

return:                                           ; preds = %if.end3, %if.end, %entry
  %retval.1 = phi i32 [ 8, %entry ], [ 0, %if.end3 ], [ 5, %if.end ], !dbg !243
  ret i32 %retval.1, !dbg !258
}

declare !dbg !259 ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !36, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "liblzma/delta/delta_decoder.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "2e365ead6dc84d04de0a81ecc9b65746")
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
!46 = distinct !DISubprogram(name: "lzma_delta_decoder_init", scope: !1, file: !1, line: 52, type: !47, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !139)
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
!140 = !DILocalVariable(name: "next", arg: 1, scope: !46, file: !1, line: 52, type: !50)
!141 = !DILocalVariable(name: "allocator", arg: 2, scope: !46, file: !1, line: 52, type: !74)
!142 = !DILocalVariable(name: "filters", arg: 3, scope: !46, file: !1, line: 53, type: !129)
!143 = !DILocation(line: 0, scope: !46)
!144 = !DILocation(line: 55, column: 8, scope: !46)
!145 = !DILocation(line: 55, column: 13, scope: !46)
!146 = !DILocation(line: 56, column: 9, scope: !46)
!147 = !DILocation(line: 56, column: 2, scope: !46)
!148 = distinct !DISubprogram(name: "delta_decode", scope: !1, file: !1, line: 31, type: !72, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !149)
!149 = !{!150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !171, !173}
!150 = !DILocalVariable(name: "pcoder", arg: 1, scope: !148, file: !1, line: 31, type: !56)
!151 = !DILocalVariable(name: "allocator", arg: 2, scope: !148, file: !1, line: 31, type: !74)
!152 = !DILocalVariable(name: "in", arg: 3, scope: !148, file: !1, line: 32, type: !89)
!153 = !DILocalVariable(name: "in_pos", arg: 4, scope: !148, file: !1, line: 32, type: !95)
!154 = !DILocalVariable(name: "in_size", arg: 5, scope: !148, file: !1, line: 33, type: !82)
!155 = !DILocalVariable(name: "out", arg: 6, scope: !148, file: !1, line: 33, type: !97)
!156 = !DILocalVariable(name: "out_pos", arg: 7, scope: !148, file: !1, line: 34, type: !95)
!157 = !DILocalVariable(name: "out_size", arg: 8, scope: !148, file: !1, line: 34, type: !82)
!158 = !DILocalVariable(name: "action", arg: 9, scope: !148, file: !1, line: 34, type: !99)
!159 = !DILocalVariable(name: "coder", scope: !148, file: !1, line: 36, type: !160)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_coder_s", file: !162, line: 18, size: 2688, elements: !163)
!162 = !DIFile(filename: "liblzma/delta/delta_private.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "41e9aeb6bf08fbe16153633c0856b3a7")
!163 = !{!164, !165, !166, !167}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !161, file: !162, line: 20, baseType: !51, size: 512)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "distance", scope: !161, file: !162, line: 23, baseType: !82, size: 64, offset: 512)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !161, file: !162, line: 26, baseType: !92, size: 8, offset: 576)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "history", scope: !161, file: !162, line: 29, baseType: !168, size: 2048, offset: 584)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 2048, elements: !169)
!169 = !{!170}
!170 = !DISubrange(count: 256)
!171 = !DILocalVariable(name: "out_start", scope: !148, file: !1, line: 39, type: !172)
!172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!173 = !DILocalVariable(name: "ret", scope: !148, file: !1, line: 41, type: !174)
!174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!175 = !DILocation(line: 0, scope: !148)
!176 = !DILocation(line: 39, column: 27, scope: !148)
!177 = !DILocation(line: 41, column: 35, scope: !148)
!178 = !DILocation(line: 41, column: 52, scope: !148)
!179 = !DILocation(line: 41, column: 23, scope: !148)
!180 = !DILocation(line: 45, column: 27, scope: !148)
!181 = !DILocation(line: 45, column: 40, scope: !148)
!182 = !DILocation(line: 45, column: 49, scope: !148)
!183 = !DILocalVariable(name: "pcoder", arg: 1, scope: !184, file: !1, line: 18, type: !56)
!184 = distinct !DISubprogram(name: "decode_buffer", scope: !1, file: !1, line: 18, type: !185, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !187)
!185 = !DISubroutineType(types: !186)
!186 = !{null, !56, !98, !82}
!187 = !{!183, !188, !189, !190, !191, !192}
!188 = !DILocalVariable(name: "buffer", arg: 2, scope: !184, file: !1, line: 18, type: !98)
!189 = !DILocalVariable(name: "size", arg: 3, scope: !184, file: !1, line: 18, type: !82)
!190 = !DILocalVariable(name: "coder", scope: !184, file: !1, line: 20, type: !160)
!191 = !DILocalVariable(name: "distance", scope: !184, file: !1, line: 21, type: !172)
!192 = !DILocalVariable(name: "i", scope: !193, file: !1, line: 23, type: !82)
!193 = distinct !DILexicalBlock(scope: !184, file: !1, line: 23, column: 2)
!194 = !DILocation(line: 0, scope: !184, inlinedAt: !195)
!195 = distinct !DILocation(line: 45, column: 2, scope: !148)
!196 = !DILocation(line: 0, scope: !193, inlinedAt: !195)
!197 = !DILocation(line: 23, column: 23, scope: !198, inlinedAt: !195)
!198 = distinct !DILexicalBlock(scope: !193, file: !1, line: 23, column: 2)
!199 = !DILocation(line: 23, column: 2, scope: !193, inlinedAt: !195)
!200 = !DILocation(line: 21, column: 33, scope: !184, inlinedAt: !195)
!201 = !DILocation(line: 24, column: 50, scope: !202, inlinedAt: !195)
!202 = distinct !DILexicalBlock(scope: !198, file: !1, line: 23, column: 36)
!203 = !DILocation(line: 23, column: 31, scope: !198, inlinedAt: !195)
!204 = !DILocation(line: 24, column: 55, scope: !202, inlinedAt: !195)
!205 = !DILocation(line: 24, column: 16, scope: !202, inlinedAt: !195)
!206 = !DILocation(line: 24, column: 3, scope: !202, inlinedAt: !195)
!207 = !DILocation(line: 24, column: 13, scope: !202, inlinedAt: !195)
!208 = !DILocation(line: 25, column: 3, scope: !202, inlinedAt: !195)
!209 = !DILocation(line: 25, column: 39, scope: !202, inlinedAt: !195)
!210 = distinct !{!210, !199, !211, !212, !213}
!211 = !DILocation(line: 26, column: 2, scope: !193, inlinedAt: !195)
!212 = !{!"llvm.loop.isvectorized", i32 1}
!213 = !{!"llvm.loop.unroll.runtime.disable"}
!214 = !DILocation(line: 25, column: 28, scope: !202, inlinedAt: !195)
!215 = distinct !{!215, !199, !211, !212}
!216 = !DILocation(line: 47, column: 2, scope: !148)
!217 = !DISubprogram(name: "lzma_delta_coder_init", scope: !162, file: !162, line: 33, type: !47, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!218 = distinct !DISubprogram(name: "lzma_delta_props_decode", scope: !1, file: !1, line: 61, type: !219, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !222)
!219 = !DISubroutineType(types: !220)
!220 = !{!49, !221, !74, !90, !82}
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!222 = !{!223, !224, !225, !226, !227}
!223 = !DILocalVariable(name: "options", arg: 1, scope: !218, file: !1, line: 61, type: !221)
!224 = !DILocalVariable(name: "allocator", arg: 2, scope: !218, file: !1, line: 61, type: !74)
!225 = !DILocalVariable(name: "props", arg: 3, scope: !218, file: !1, line: 62, type: !90)
!226 = !DILocalVariable(name: "props_size", arg: 4, scope: !218, file: !1, line: 62, type: !82)
!227 = !DILocalVariable(name: "opt", scope: !218, file: !1, line: 67, type: !228)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_options_delta", file: !33, line: 77, baseType: !230)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !33, line: 45, size: 320, elements: !231)
!231 = !{!232, !234, !237, !238, !239, !240, !241, !242}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !230, file: !33, line: 47, baseType: !233, size: 32)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_delta_type", file: !33, line: 37, baseType: !32)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "dist", scope: !230, file: !33, line: 59, baseType: !235, size: 32, offset: 32)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !62, line: 26, baseType: !236)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !64, line: 42, baseType: !5)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !230, file: !33, line: 70, baseType: !235, size: 32, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !230, file: !33, line: 71, baseType: !235, size: 32, offset: 96)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !230, file: !33, line: 72, baseType: !235, size: 32, offset: 128)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !230, file: !33, line: 73, baseType: !235, size: 32, offset: 160)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !230, file: !33, line: 74, baseType: !37, size: 64, offset: 192)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !230, file: !33, line: 75, baseType: !37, size: 64, offset: 256)
!243 = !DILocation(line: 0, scope: !218)
!244 = !DILocation(line: 64, column: 17, scope: !245)
!245 = distinct !DILexicalBlock(scope: !218, file: !1, line: 64, column: 6)
!246 = !DILocation(line: 64, column: 6, scope: !218)
!247 = !DILocation(line: 68, column: 6, scope: !218)
!248 = !DILocation(line: 69, column: 10, scope: !249)
!249 = distinct !DILexicalBlock(scope: !218, file: !1, line: 69, column: 6)
!250 = !DILocation(line: 69, column: 6, scope: !218)
!251 = !DILocation(line: 72, column: 12, scope: !218)
!252 = !DILocation(line: 73, column: 14, scope: !218)
!253 = !DILocation(line: 73, column: 23, scope: !218)
!254 = !DILocation(line: 73, column: 7, scope: !218)
!255 = !DILocation(line: 73, column: 12, scope: !218)
!256 = !DILocation(line: 75, column: 11, scope: !218)
!257 = !DILocation(line: 77, column: 2, scope: !218)
!258 = !DILocation(line: 78, column: 1, scope: !218)
!259 = !DISubprogram(name: "lzma_alloc", scope: !52, file: !52, line: 211, type: !260, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!260 = !DISubroutineType(types: !261)
!261 = !{!37, !82, !74}
