; ModuleID = 'liblzma/simple/sparc.c'
source_filename = "liblzma/simple/sparc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_simple_sparc_encoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters) local_unnamed_addr #0 !dbg !48 {
entry:
    #dbg_value(ptr %next, !138, !DIExpression(), !141)
    #dbg_value(ptr %allocator, !139, !DIExpression(), !141)
    #dbg_value(ptr %filters, !140, !DIExpression(), !141)
    #dbg_value(ptr %next, !142, !DIExpression(), !151)
    #dbg_value(ptr %allocator, !148, !DIExpression(), !151)
    #dbg_value(ptr %filters, !149, !DIExpression(), !151)
    #dbg_value(i1 true, !150, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !151)
  %call.i = tail call i32 @lzma_simple_coder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters, ptr noundef nonnull @sparc_code, i64 noundef 0, i64 noundef 4, i32 noundef 4, i1 noundef zeroext true) #3, !dbg !153
  ret i32 %call.i, !dbg !154
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_simple_sparc_decoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters) local_unnamed_addr #0 !dbg !155 {
entry:
    #dbg_value(ptr %next, !157, !DIExpression(), !160)
    #dbg_value(ptr %allocator, !158, !DIExpression(), !160)
    #dbg_value(ptr %filters, !159, !DIExpression(), !160)
    #dbg_value(ptr %next, !142, !DIExpression(), !161)
    #dbg_value(ptr %allocator, !148, !DIExpression(), !161)
    #dbg_value(ptr %filters, !149, !DIExpression(), !161)
    #dbg_value(i1 false, !150, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !161)
  %call.i = tail call i32 @lzma_simple_coder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters, ptr noundef nonnull @sparc_code, i64 noundef 0, i64 noundef 4, i32 noundef 4, i1 noundef zeroext false) #3, !dbg !163
  ret i32 %call.i, !dbg !164
}

declare !dbg !165 i32 @lzma_simple_coder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal i64 @sparc_code(ptr nocapture readnone %simple, i32 noundef %now_pos, i1 noundef zeroext %is_encoder, ptr nocapture noundef %buffer, i64 noundef %size) #2 !dbg !175 {
entry:
    #dbg_value(ptr poison, !177, !DIExpression(), !190)
    #dbg_value(i32 %now_pos, !178, !DIExpression(), !190)
    #dbg_value(i1 %is_encoder, !179, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !190)
    #dbg_value(ptr %buffer, !180, !DIExpression(), !190)
    #dbg_value(i64 %size, !181, !DIExpression(), !190)
    #dbg_value(i64 0, !182, !DIExpression(), !190)
  %cmp.not104 = icmp ult i64 %size, 4, !dbg !191
  br i1 %cmp.not104, label %for.end, label %for.body.lr.ph, !dbg !192

for.body.lr.ph:                                   ; preds = %entry
  br i1 %is_encoder, label %for.body.us, label %for.body

for.body.us:                                      ; preds = %for.body.lr.ph, %for.inc.us
  %add106.us = phi i64 [ %add.us, %for.inc.us ], [ 4, %for.body.lr.ph ]
  %i.0105.us = phi i64 [ %add106.us, %for.inc.us ], [ 0, %for.body.lr.ph ]
    #dbg_value(i64 %i.0105.us, !182, !DIExpression(), !190)
  %arrayidx.us = getelementptr inbounds i8, ptr %buffer, i64 %i.0105.us, !dbg !193
  %0 = load i8, ptr %arrayidx.us, align 1, !dbg !193
  switch i8 %0, label %for.inc.us [
    i8 64, label %land.lhs.true.us
    i8 127, label %land.lhs.true12.us
  ], !dbg !194

land.lhs.true12.us:                               ; preds = %for.body.us
  %add13.us = or disjoint i64 %i.0105.us, 1, !dbg !195
  %arrayidx14.us = getelementptr inbounds i8, ptr %buffer, i64 %add13.us, !dbg !196
  %1 = load i8, ptr %arrayidx14.us, align 1, !dbg !196
  %cmp17.us = icmp ugt i8 %1, -65, !dbg !197
  br i1 %cmp17.us, label %if.then.us, label %for.inc.us, !dbg !198

land.lhs.true.us:                                 ; preds = %for.body.us
  %add3.us = or disjoint i64 %i.0105.us, 1, !dbg !199
  %arrayidx4.us = getelementptr inbounds i8, ptr %buffer, i64 %add3.us, !dbg !200
  %2 = load i8, ptr %arrayidx4.us, align 1, !dbg !200
  %cmp6.us = icmp ult i8 %2, 64, !dbg !201
  br i1 %cmp6.us, label %if.then.us, label %for.inc.us, !dbg !202

if.then.us:                                       ; preds = %land.lhs.true.us, %land.lhs.true12.us
  %3 = phi i8 [ %2, %land.lhs.true.us ], [ %1, %land.lhs.true12.us ], !dbg !203
  %add22.us.pre-phi = phi i64 [ %add3.us, %land.lhs.true.us ], [ %add13.us, %land.lhs.true12.us ], !dbg !204
  %conv21.us = zext nneg i8 %0 to i32, !dbg !205
  %shl.us = shl nuw nsw i32 %conv21.us, 24, !dbg !206
  %arrayidx23.us = getelementptr inbounds i8, ptr %buffer, i64 %add22.us.pre-phi, !dbg !203
  %conv24.us = zext i8 %3 to i32, !dbg !207
  %shl25.us = shl nuw nsw i32 %conv24.us, 16, !dbg !208
  %or.us = or disjoint i32 %shl25.us, %shl.us, !dbg !209
  %add26.us = or disjoint i64 %i.0105.us, 2, !dbg !210
  %arrayidx27.us = getelementptr inbounds i8, ptr %buffer, i64 %add26.us, !dbg !211
  %4 = load i8, ptr %arrayidx27.us, align 1, !dbg !211
  %conv28.us = zext i8 %4 to i32, !dbg !212
  %shl29.us = shl nuw nsw i32 %conv28.us, 8, !dbg !213
  %or30.us = or disjoint i32 %or.us, %shl29.us, !dbg !214
  %add31.us = or disjoint i64 %i.0105.us, 3, !dbg !215
  %arrayidx32.us = getelementptr inbounds i8, ptr %buffer, i64 %add31.us, !dbg !216
  %5 = load i8, ptr %arrayidx32.us, align 1, !dbg !216
  %conv33.us = zext i8 %5 to i32, !dbg !217
  %or34.us = or disjoint i32 %or30.us, %conv33.us, !dbg !218
    #dbg_value(i32 %or34.us, !183, !DIExpression(), !219)
  %shl35.us = shl i32 %or34.us, 2, !dbg !220
    #dbg_value(i32 %shl35.us, !183, !DIExpression(), !219)
  %conv37.us = trunc i64 %i.0105.us to i32, !dbg !221
  %add38.us = add i32 %conv37.us, %now_pos, !dbg !221
  %dest.0.us = add i32 %shl35.us, %add38.us, !dbg !221
    #dbg_value(i32 %dest.0.us, !189, !DIExpression(), !219)
  %shr.us = lshr i32 %dest.0.us, 2, !dbg !222
    #dbg_value(i32 %shr.us, !189, !DIExpression(), !219)
  %6 = shl i32 %dest.0.us, 7, !dbg !223
  %7 = ashr i32 %6, 9, !dbg !224
  %and46.us = and i32 %7, 1069547520, !dbg !225
  %and47.us = and i32 %shr.us, 4128768, !dbg !226
  %or48.us = or disjoint i32 %and46.us, %and47.us, !dbg !227
    #dbg_value(!DIArgList(i32 %and46.us, i32 %shr.us), !189, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 4194303, DW_OP_and, DW_OP_or, DW_OP_constu, 1073741824, DW_OP_or, DW_OP_stack_value), !219)
  %or49.us = lshr i32 %and46.us, 24, !dbg !228
  %8 = trunc nuw nsw i32 %or49.us to i8, !dbg !229
  %conv51.us = or disjoint i8 %8, 64, !dbg !229
  store i8 %conv51.us, ptr %arrayidx.us, align 1, !dbg !230
  %shr54.us = lshr exact i32 %or48.us, 16, !dbg !231
  %conv55.us = trunc i32 %shr54.us to i8, !dbg !232
  store i8 %conv55.us, ptr %arrayidx23.us, align 1, !dbg !233
  %shr58.us = lshr i32 %dest.0.us, 10, !dbg !234
  %conv59.us = trunc i32 %shr58.us to i8, !dbg !235
  store i8 %conv59.us, ptr %arrayidx27.us, align 1, !dbg !236
  %conv62.us = trunc i32 %shr.us to i8, !dbg !237
  store i8 %conv62.us, ptr %arrayidx32.us, align 1, !dbg !238
  br label %for.inc.us, !dbg !239

for.inc.us:                                       ; preds = %if.then.us, %land.lhs.true.us, %land.lhs.true12.us, %for.body.us
    #dbg_value(i64 %add106.us, !182, !DIExpression(), !190)
  %add.us = add i64 %add106.us, 4, !dbg !240
  %cmp.not.us = icmp ugt i64 %add.us, %size, !dbg !191
  br i1 %cmp.not.us, label %for.end, label %for.body.us, !dbg !192, !llvm.loop !241

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %add106 = phi i64 [ %add, %for.inc ], [ 4, %for.body.lr.ph ]
  %i.0105 = phi i64 [ %add106, %for.inc ], [ 0, %for.body.lr.ph ]
    #dbg_value(i64 %i.0105, !182, !DIExpression(), !190)
  %arrayidx = getelementptr inbounds i8, ptr %buffer, i64 %i.0105, !dbg !193
  %9 = load i8, ptr %arrayidx, align 1, !dbg !193
  switch i8 %9, label %for.inc [
    i8 64, label %land.lhs.true
    i8 127, label %land.lhs.true12
  ], !dbg !194

land.lhs.true:                                    ; preds = %for.body
  %add3 = or disjoint i64 %i.0105, 1, !dbg !199
  %arrayidx4 = getelementptr inbounds i8, ptr %buffer, i64 %add3, !dbg !200
  %10 = load i8, ptr %arrayidx4, align 1, !dbg !200
  %cmp6 = icmp ult i8 %10, 64, !dbg !201
  br i1 %cmp6, label %if.then, label %for.inc, !dbg !202

land.lhs.true12:                                  ; preds = %for.body
  %add13 = or disjoint i64 %i.0105, 1, !dbg !195
  %arrayidx14 = getelementptr inbounds i8, ptr %buffer, i64 %add13, !dbg !196
  %11 = load i8, ptr %arrayidx14, align 1, !dbg !196
  %cmp17 = icmp ugt i8 %11, -65, !dbg !197
  br i1 %cmp17, label %if.then, label %for.inc, !dbg !198

if.then:                                          ; preds = %land.lhs.true12, %land.lhs.true
  %12 = phi i8 [ %11, %land.lhs.true12 ], [ %10, %land.lhs.true ], !dbg !203
  %add22.pre-phi = phi i64 [ %add13, %land.lhs.true12 ], [ %add3, %land.lhs.true ], !dbg !204
  %conv21 = zext nneg i8 %9 to i32, !dbg !205
  %shl = shl nuw nsw i32 %conv21, 24, !dbg !206
  %arrayidx23 = getelementptr inbounds i8, ptr %buffer, i64 %add22.pre-phi, !dbg !203
  %conv24 = zext i8 %12 to i32, !dbg !207
  %shl25 = shl nuw nsw i32 %conv24, 16, !dbg !208
  %or = or disjoint i32 %shl25, %shl, !dbg !209
  %add26 = or disjoint i64 %i.0105, 2, !dbg !210
  %arrayidx27 = getelementptr inbounds i8, ptr %buffer, i64 %add26, !dbg !211
  %13 = load i8, ptr %arrayidx27, align 1, !dbg !211
  %conv28 = zext i8 %13 to i32, !dbg !212
  %shl29 = shl nuw nsw i32 %conv28, 8, !dbg !213
  %or30 = or disjoint i32 %or, %shl29, !dbg !214
  %add31 = or disjoint i64 %i.0105, 3, !dbg !215
  %arrayidx32 = getelementptr inbounds i8, ptr %buffer, i64 %add31, !dbg !216
  %14 = load i8, ptr %arrayidx32, align 1, !dbg !216
  %conv33 = zext i8 %14 to i32, !dbg !217
  %or34 = or disjoint i32 %or30, %conv33, !dbg !218
    #dbg_value(i32 %or34, !183, !DIExpression(), !219)
  %shl35 = shl i32 %or34, 2, !dbg !220
    #dbg_value(i32 %shl35, !183, !DIExpression(), !219)
  %conv37 = trunc i64 %i.0105 to i32, !dbg !221
  %add38 = add i32 %conv37, %now_pos, !dbg !221
  %dest.0 = sub i32 %shl35, %add38, !dbg !221
    #dbg_value(i32 %dest.0, !189, !DIExpression(), !219)
  %shr = lshr i32 %dest.0, 2, !dbg !222
    #dbg_value(i32 %shr, !189, !DIExpression(), !219)
  %15 = shl i32 %dest.0, 7, !dbg !223
  %16 = ashr i32 %15, 9, !dbg !224
  %and46 = and i32 %16, 1069547520, !dbg !225
  %and47 = and i32 %shr, 4128768, !dbg !226
  %or48 = or disjoint i32 %and46, %and47, !dbg !227
    #dbg_value(!DIArgList(i32 %and46, i32 %shr), !189, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 4194303, DW_OP_and, DW_OP_or, DW_OP_constu, 1073741824, DW_OP_or, DW_OP_stack_value), !219)
  %or49 = lshr i32 %and46, 24, !dbg !228
  %17 = trunc nuw nsw i32 %or49 to i8, !dbg !229
  %conv51 = or disjoint i8 %17, 64, !dbg !229
  store i8 %conv51, ptr %arrayidx, align 1, !dbg !230
  %shr54 = lshr exact i32 %or48, 16, !dbg !231
  %conv55 = trunc i32 %shr54 to i8, !dbg !232
  store i8 %conv55, ptr %arrayidx23, align 1, !dbg !233
  %shr58 = lshr i32 %dest.0, 10, !dbg !234
  %conv59 = trunc i32 %shr58 to i8, !dbg !235
  store i8 %conv59, ptr %arrayidx27, align 1, !dbg !236
  %conv62 = trunc i32 %shr to i8, !dbg !237
  store i8 %conv62, ptr %arrayidx32, align 1, !dbg !238
  br label %for.inc, !dbg !239

for.inc:                                          ; preds = %for.body, %land.lhs.true, %land.lhs.true12, %if.then
    #dbg_value(i64 %add106, !182, !DIExpression(), !190)
  %add = add i64 %add106, 4, !dbg !240
  %cmp.not = icmp ugt i64 %add, %size, !dbg !191
  br i1 %cmp.not, label %for.end, label %for.body, !dbg !192, !llvm.loop !241

for.end:                                          ; preds = %for.inc, %for.inc.us, %entry
  %i.0.lcssa = phi i64 [ 0, %entry ], [ %add106.us, %for.inc.us ], [ %add106, %for.inc ], !dbg !243
  ret i64 %i.0.lcssa, !dbg !244
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !32, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "liblzma/simple/sparc.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "6066fcc16bf6e42415c178d50b4ec385")
!2 = !{!3, !19, !25}
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
!32 = !{!33, !37}
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !34, line: 26, baseType: !35)
!34 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !36, line: 42, baseType: !5)
!36 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !34, line: 24, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !36, line: 38, baseType: !39)
!39 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!40 = !{i32 7, !"Dwarf Version", i32 5}
!41 = !{i32 2, !"Debug Info Version", i32 3}
!42 = !{i32 1, !"wchar_size", i32 4}
!43 = !{i32 8, !"PIC Level", i32 2}
!44 = !{i32 7, !"PIE Level", i32 2}
!45 = !{i32 7, !"uwtable", i32 2}
!46 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!47 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!48 = distinct !DISubprogram(name: "lzma_simple_sparc_encoder_init", scope: !1, file: !1, line: 69, type: !49, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !137)
!49 = !DISubroutineType(types: !50)
!50 = !{!51, !52, !74, !127}
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_next_coder", file: !54, line: 80, baseType: !55)
!54 = !DIFile(filename: "liblzma/common/common.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_next_coder_s", file: !54, line: 124, size: 512, elements: !56)
!56 = !{!57, !60, !66, !69, !98, !103, !110, !115}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !55, file: !54, line: 126, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_coder", file: !54, line: 78, baseType: null)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !55, file: !54, line: 130, baseType: !61, size: 64, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !62, line: 63, baseType: !63)
!62 = !DIFile(filename: "liblzma/api/lzma/vli.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !34, line: 27, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !36, line: 45, baseType: !65)
!65 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !55, file: !54, line: 136, baseType: !67, size: 64, offset: 128)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !68, line: 90, baseType: !65)
!68 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!69 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !55, file: !54, line: 139, baseType: !70, size: 64, offset: 192)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_code_function", file: !54, line: 94, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DISubroutineType(types: !73)
!73 = !{!51, !58, !74, !90, !93, !83, !95, !93, !83, !97}
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !4, line: 403, baseType: !76)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 341, size: 192, elements: !77)
!77 = !{!78, !85, !89}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !76, file: !4, line: 376, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DISubroutineType(types: !81)
!81 = !{!82, !82, !83, !83}
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !84, line: 18, baseType: !65)
!84 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!85 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !76, file: !4, line: 390, baseType: !86, size: 64, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DISubroutineType(types: !88)
!88 = !{null, !82, !82}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !76, file: !4, line: 401, baseType: !82, size: 64, offset: 128)
!90 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!93 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !4, line: 322, baseType: !19)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !55, file: !54, line: 144, baseType: !99, size: 64, offset: 256)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_end_function", file: !54, line: 102, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DISubroutineType(types: !102)
!102 = !{null, !58, !74}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "get_check", scope: !55, file: !54, line: 148, baseType: !104, size: 64, offset: 320)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DISubroutineType(types: !106)
!106 = !{!107, !108}
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !26, line: 55, baseType: !25)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "memconfig", scope: !55, file: !54, line: 152, baseType: !111, size: 64, offset: 384)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{!51, !58, !114, !114, !63}
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !55, file: !54, line: 157, baseType: !116, size: 64, offset: 448)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DISubroutineType(types: !118)
!118 = !{!51, !58, !74, !119, !119}
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !122, line: 65, baseType: !123)
!122 = !DIFile(filename: "liblzma/api/lzma/filter.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !122, line: 43, size: 128, elements: !124)
!124 = !{!125, !126}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !123, file: !122, line: 54, baseType: !61, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !123, file: !122, line: 63, baseType: !82, size: 64, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter_info", file: !54, line: 82, baseType: !130)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_filter_info_s", file: !54, line: 109, size: 192, elements: !131)
!131 = !{!132, !133, !136}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !130, file: !54, line: 112, baseType: !61, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !130, file: !54, line: 116, baseType: !134, size: 64, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_init_function", file: !54, line: 86, baseType: !135)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !130, file: !54, line: 119, baseType: !82, size: 64, offset: 128)
!137 = !{!138, !139, !140}
!138 = !DILocalVariable(name: "next", arg: 1, scope: !48, file: !1, line: 69, type: !52)
!139 = !DILocalVariable(name: "allocator", arg: 2, scope: !48, file: !1, line: 70, type: !74)
!140 = !DILocalVariable(name: "filters", arg: 3, scope: !48, file: !1, line: 70, type: !127)
!141 = !DILocation(line: 0, scope: !48)
!142 = !DILocalVariable(name: "next", arg: 1, scope: !143, file: !1, line: 60, type: !52)
!143 = distinct !DISubprogram(name: "sparc_coder_init", scope: !1, file: !1, line: 60, type: !144, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !147)
!144 = !DISubroutineType(types: !145)
!145 = !{!51, !52, !74, !127, !146}
!146 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!147 = !{!142, !148, !149, !150}
!148 = !DILocalVariable(name: "allocator", arg: 2, scope: !143, file: !1, line: 60, type: !74)
!149 = !DILocalVariable(name: "filters", arg: 3, scope: !143, file: !1, line: 61, type: !127)
!150 = !DILocalVariable(name: "is_encoder", arg: 4, scope: !143, file: !1, line: 61, type: !146)
!151 = !DILocation(line: 0, scope: !143, inlinedAt: !152)
!152 = distinct !DILocation(line: 72, column: 9, scope: !48)
!153 = !DILocation(line: 63, column: 9, scope: !143, inlinedAt: !152)
!154 = !DILocation(line: 72, column: 2, scope: !48)
!155 = distinct !DISubprogram(name: "lzma_simple_sparc_decoder_init", scope: !1, file: !1, line: 77, type: !49, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !156)
!156 = !{!157, !158, !159}
!157 = !DILocalVariable(name: "next", arg: 1, scope: !155, file: !1, line: 77, type: !52)
!158 = !DILocalVariable(name: "allocator", arg: 2, scope: !155, file: !1, line: 78, type: !74)
!159 = !DILocalVariable(name: "filters", arg: 3, scope: !155, file: !1, line: 78, type: !127)
!160 = !DILocation(line: 0, scope: !155)
!161 = !DILocation(line: 0, scope: !143, inlinedAt: !162)
!162 = distinct !DILocation(line: 80, column: 9, scope: !155)
!163 = !DILocation(line: 63, column: 9, scope: !143, inlinedAt: !162)
!164 = !DILocation(line: 80, column: 2, scope: !155)
!165 = !DISubprogram(name: "lzma_simple_coder_init", scope: !166, file: !166, line: 68, type: !167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!166 = !DIFile(filename: "liblzma/simple/simple_private.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "2921a659cca72849047c4661dc5d5b7e")
!167 = !DISubroutineType(types: !168)
!168 = !{!51, !52, !74, !127, !169, !83, !83, !33, !146}
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DISubroutineType(types: !171)
!171 = !{!83, !172, !33, !146, !96, !83}
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_simple", file: !166, line: 19, baseType: !174)
!174 = !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_simple_s", file: !166, line: 19, flags: DIFlagFwdDecl)
!175 = distinct !DISubprogram(name: "sparc_code", scope: !1, file: !1, line: 18, type: !170, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !176)
!176 = !{!177, !178, !179, !180, !181, !182, !183, !189}
!177 = !DILocalVariable(name: "simple", arg: 1, scope: !175, file: !1, line: 18, type: !172)
!178 = !DILocalVariable(name: "now_pos", arg: 2, scope: !175, file: !1, line: 19, type: !33)
!179 = !DILocalVariable(name: "is_encoder", arg: 3, scope: !175, file: !1, line: 19, type: !146)
!180 = !DILocalVariable(name: "buffer", arg: 4, scope: !175, file: !1, line: 20, type: !96)
!181 = !DILocalVariable(name: "size", arg: 5, scope: !175, file: !1, line: 20, type: !83)
!182 = !DILocalVariable(name: "i", scope: !175, file: !1, line: 22, type: !83)
!183 = !DILocalVariable(name: "src", scope: !184, file: !1, line: 29, type: !33)
!184 = distinct !DILexicalBlock(scope: !185, file: !1, line: 27, column: 41)
!185 = distinct !DILexicalBlock(scope: !186, file: !1, line: 25, column: 7)
!186 = distinct !DILexicalBlock(scope: !187, file: !1, line: 23, column: 37)
!187 = distinct !DILexicalBlock(scope: !188, file: !1, line: 23, column: 2)
!188 = distinct !DILexicalBlock(scope: !175, file: !1, line: 23, column: 2)
!189 = !DILocalVariable(name: "dest", scope: !184, file: !1, line: 36, type: !33)
!190 = !DILocation(line: 0, scope: !175)
!191 = !DILocation(line: 23, column: 20, scope: !187)
!192 = !DILocation(line: 23, column: 2, scope: !188)
!193 = !DILocation(line: 25, column: 8, scope: !185)
!194 = !DILocation(line: 25, column: 26, scope: !185)
!195 = !DILocation(line: 27, column: 18, scope: !185)
!196 = !DILocation(line: 27, column: 9, scope: !185)
!197 = !DILocation(line: 27, column: 31, scope: !185)
!198 = !DILocation(line: 25, column: 7, scope: !186)
!199 = !DILocation(line: 25, column: 39, scope: !185)
!200 = !DILocation(line: 25, column: 30, scope: !185)
!201 = !DILocation(line: 25, column: 52, scope: !185)
!202 = !DILocation(line: 26, column: 5, scope: !185)
!203 = !DILocation(line: 30, column: 19, scope: !184)
!204 = !DILocation(line: 30, column: 28, scope: !184)
!205 = !DILocation(line: 29, column: 20, scope: !184)
!206 = !DILocation(line: 29, column: 44, scope: !184)
!207 = !DILocation(line: 30, column: 9, scope: !184)
!208 = !DILocation(line: 30, column: 33, scope: !184)
!209 = !DILocation(line: 30, column: 6, scope: !184)
!210 = !DILocation(line: 31, column: 28, scope: !184)
!211 = !DILocation(line: 31, column: 19, scope: !184)
!212 = !DILocation(line: 31, column: 9, scope: !184)
!213 = !DILocation(line: 31, column: 33, scope: !184)
!214 = !DILocation(line: 31, column: 6, scope: !184)
!215 = !DILocation(line: 32, column: 28, scope: !184)
!216 = !DILocation(line: 32, column: 19, scope: !184)
!217 = !DILocation(line: 32, column: 9, scope: !184)
!218 = !DILocation(line: 32, column: 6, scope: !184)
!219 = !DILocation(line: 0, scope: !184)
!220 = !DILocation(line: 34, column: 8, scope: !184)
!221 = !DILocation(line: 37, column: 8, scope: !184)
!222 = !DILocation(line: 42, column: 9, scope: !184)
!223 = !DILocation(line: 44, column: 32, scope: !184)
!224 = !DILocation(line: 44, column: 38, scope: !184)
!225 = !DILocation(line: 44, column: 45, scope: !184)
!226 = !DILocation(line: 45, column: 14, scope: !184)
!227 = !DILocation(line: 45, column: 6, scope: !184)
!228 = !DILocation(line: 48, column: 35, scope: !184)
!229 = !DILocation(line: 48, column: 20, scope: !184)
!230 = !DILocation(line: 48, column: 18, scope: !184)
!231 = !DILocation(line: 49, column: 35, scope: !184)
!232 = !DILocation(line: 49, column: 20, scope: !184)
!233 = !DILocation(line: 49, column: 18, scope: !184)
!234 = !DILocation(line: 50, column: 35, scope: !184)
!235 = !DILocation(line: 50, column: 20, scope: !184)
!236 = !DILocation(line: 50, column: 18, scope: !184)
!237 = !DILocation(line: 51, column: 20, scope: !184)
!238 = !DILocation(line: 51, column: 18, scope: !184)
!239 = !DILocation(line: 52, column: 3, scope: !184)
!240 = !DILocation(line: 23, column: 16, scope: !187)
!241 = distinct !{!241, !192, !242}
!242 = !DILocation(line: 53, column: 2, scope: !188)
!243 = !DILocation(line: 23, scope: !188)
!244 = !DILocation(line: 55, column: 2, scope: !175)
