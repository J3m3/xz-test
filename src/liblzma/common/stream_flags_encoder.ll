; ModuleID = 'liblzma/common/stream_flags_encoder.c'
source_filename = "liblzma/common/stream_flags_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lzma_header_magic = external local_unnamed_addr constant [6 x i8], align 1
@lzma_footer_magic = external local_unnamed_addr constant [2 x i8], align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 12) i32 @lzma_stream_header_encode(ptr nocapture noundef readonly %options, ptr noundef %out) local_unnamed_addr #0 !dbg !38 {
entry:
    #dbg_value(ptr %options, !82, !DIExpression(), !86)
    #dbg_value(ptr %out, !83, !DIExpression(), !86)
  %0 = load i32, ptr %options, align 8, !dbg !87
  %cmp.not = icmp eq i32 %0, 0, !dbg !89
  br i1 %cmp.not, label %if.end, label %return, !dbg !90

if.end:                                           ; preds = %entry
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %out, ptr noundef nonnull align 1 dereferenceable(6) @lzma_header_magic, i64 6, i1 false), !dbg !91
    #dbg_value(ptr %options, !92, !DIExpression(), !99)
    #dbg_value(ptr %out, !98, !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value), !99)
  %check.i = getelementptr inbounds i8, ptr %options, i64 16, !dbg !102
  %1 = load i32, ptr %check.i, align 8, !dbg !102
  %cmp.i = icmp ugt i32 %1, 15, !dbg !104
  br i1 %cmp.i, label %return, label %if.end2, !dbg !105

if.end2:                                          ; preds = %if.end
  %add.ptr = getelementptr inbounds i8, ptr %out, i64 6, !dbg !106
    #dbg_value(ptr %add.ptr, !98, !DIExpression(), !99)
  store i8 0, ptr %add.ptr, align 1, !dbg !107
  %2 = load i32, ptr %check.i, align 8, !dbg !108
  %conv.i = trunc i32 %2 to i8, !dbg !109
  %arrayidx2.i = getelementptr inbounds i8, ptr %out, i64 7, !dbg !110
  store i8 %conv.i, ptr %arrayidx2.i, align 1, !dbg !111
  %call4 = tail call i32 @lzma_crc32(ptr noundef nonnull %add.ptr, i64 noundef 2, i32 noundef 0) #3, !dbg !112
    #dbg_value(i32 %call4, !84, !DIExpression(), !86)
  %add.ptr6 = getelementptr inbounds i8, ptr %out, i64 8, !dbg !113
    #dbg_value(ptr %add.ptr6, !114, !DIExpression(), !121)
    #dbg_value(i32 %call4, !120, !DIExpression(), !121)
  %conv.i11 = trunc i32 %call4 to i8, !dbg !123
  store i8 %conv.i11, ptr %add.ptr6, align 1, !dbg !124
  %shr.i = lshr i32 %call4, 8, !dbg !125
  %conv1.i = trunc i32 %shr.i to i8, !dbg !126
  %arrayidx2.i12 = getelementptr inbounds i8, ptr %out, i64 9, !dbg !127
  store i8 %conv1.i, ptr %arrayidx2.i12, align 1, !dbg !128
  %shr3.i = lshr i32 %call4, 16, !dbg !129
  %conv4.i = trunc i32 %shr3.i to i8, !dbg !130
  %arrayidx5.i = getelementptr inbounds i8, ptr %out, i64 10, !dbg !131
  store i8 %conv4.i, ptr %arrayidx5.i, align 1, !dbg !132
  %shr6.i = lshr i32 %call4, 24, !dbg !133
  %conv7.i = trunc nuw i32 %shr6.i to i8, !dbg !134
  %arrayidx8.i = getelementptr inbounds i8, ptr %out, i64 11, !dbg !135
  store i8 %conv7.i, ptr %arrayidx8.i, align 1, !dbg !136
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end2
  %retval.0 = phi i32 [ 0, %if.end2 ], [ 8, %entry ], [ 11, %if.end ], !dbg !86
  ret i32 %retval.0, !dbg !137
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

declare !dbg !138 i32 @lzma_crc32(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 12) i32 @lzma_stream_footer_encode(ptr nocapture noundef readonly %options, ptr noundef %out) local_unnamed_addr #0 !dbg !145 {
entry:
    #dbg_value(ptr %options, !147, !DIExpression(), !150)
    #dbg_value(ptr %out, !148, !DIExpression(), !150)
  %0 = load i32, ptr %options, align 8, !dbg !151
  %cmp.not = icmp eq i32 %0, 0, !dbg !153
  br i1 %cmp.not, label %if.end, label %return, !dbg !154

if.end:                                           ; preds = %entry
  %1 = getelementptr i8, ptr %options, i64 8, !dbg !155
  %options.val = load i64, ptr %1, align 8, !dbg !155
    #dbg_value(ptr undef, !157, !DIExpression(), !163)
  %2 = add i64 %options.val, -4, !dbg !165
  %or.cond.i = icmp ult i64 %2, 17179869181, !dbg !165
  %and.i = and i64 %options.val, 3, !dbg !165
  %cmp4.i = icmp eq i64 %and.i, 0, !dbg !165
  %3 = and i1 %or.cond.i, %cmp4.i, !dbg !165
  br i1 %3, label %if.end2, label %return, !dbg !166

if.end2:                                          ; preds = %if.end
  %add.ptr = getelementptr inbounds i8, ptr %out, i64 4, !dbg !167
  %div18 = lshr exact i64 %options.val, 2, !dbg !168
  %4 = trunc i64 %div18 to i32, !dbg !169
  %conv = add i32 %4, -1, !dbg !169
    #dbg_value(ptr %add.ptr, !114, !DIExpression(), !170)
    #dbg_value(i32 %conv, !120, !DIExpression(), !170)
  %conv.i = trunc i32 %conv to i8, !dbg !172
  store i8 %conv.i, ptr %add.ptr, align 1, !dbg !173
  %shr.i = lshr i32 %conv, 8, !dbg !174
  %conv1.i = trunc i32 %shr.i to i8, !dbg !175
  %arrayidx2.i = getelementptr inbounds i8, ptr %out, i64 5, !dbg !176
  store i8 %conv1.i, ptr %arrayidx2.i, align 1, !dbg !177
  %shr3.i = lshr i32 %conv, 16, !dbg !178
  %conv4.i = trunc i32 %shr3.i to i8, !dbg !179
  %arrayidx5.i = getelementptr inbounds i8, ptr %out, i64 6, !dbg !180
  store i8 %conv4.i, ptr %arrayidx5.i, align 1, !dbg !181
  %shr6.i = lshr i32 %conv, 24, !dbg !182
  %conv7.i = trunc nuw i32 %shr6.i to i8, !dbg !183
  %arrayidx8.i = getelementptr inbounds i8, ptr %out, i64 7, !dbg !184
  store i8 %conv7.i, ptr %arrayidx8.i, align 1, !dbg !185
    #dbg_value(ptr %options, !92, !DIExpression(), !186)
    #dbg_value(ptr %out, !98, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !186)
  %check.i = getelementptr inbounds i8, ptr %options, i64 16, !dbg !189
  %5 = load i32, ptr %check.i, align 8, !dbg !189
  %cmp.i = icmp ugt i32 %5, 15, !dbg !190
  br i1 %cmp.i, label %return, label %if.end6, !dbg !191

if.end6:                                          ; preds = %if.end2
  %add.ptr3 = getelementptr inbounds i8, ptr %out, i64 8, !dbg !192
    #dbg_value(ptr %add.ptr3, !98, !DIExpression(), !186)
  store i8 0, ptr %add.ptr3, align 1, !dbg !193
  %6 = load i32, ptr %check.i, align 8, !dbg !194
  %conv.i19 = trunc i32 %6 to i8, !dbg !195
  %arrayidx2.i20 = getelementptr inbounds i8, ptr %out, i64 9, !dbg !196
  store i8 %conv.i19, ptr %arrayidx2.i20, align 1, !dbg !197
  %call8 = tail call i32 @lzma_crc32(ptr noundef nonnull %add.ptr, i64 noundef 6, i32 noundef 0) #3, !dbg !198
    #dbg_value(i32 %call8, !149, !DIExpression(), !150)
    #dbg_value(ptr %out, !114, !DIExpression(), !199)
    #dbg_value(i32 %call8, !120, !DIExpression(), !199)
  %conv.i21 = trunc i32 %call8 to i8, !dbg !201
  store i8 %conv.i21, ptr %out, align 1, !dbg !202
  %shr.i22 = lshr i32 %call8, 8, !dbg !203
  %conv1.i23 = trunc i32 %shr.i22 to i8, !dbg !204
  %arrayidx2.i24 = getelementptr inbounds i8, ptr %out, i64 1, !dbg !205
  store i8 %conv1.i23, ptr %arrayidx2.i24, align 1, !dbg !206
  %shr3.i25 = lshr i32 %call8, 16, !dbg !207
  %conv4.i26 = trunc i32 %shr3.i25 to i8, !dbg !208
  %arrayidx5.i27 = getelementptr inbounds i8, ptr %out, i64 2, !dbg !209
  store i8 %conv4.i26, ptr %arrayidx5.i27, align 1, !dbg !210
  %shr6.i28 = lshr i32 %call8, 24, !dbg !211
  %conv7.i29 = trunc nuw i32 %shr6.i28 to i8, !dbg !212
  %arrayidx8.i30 = getelementptr inbounds i8, ptr %out, i64 3, !dbg !213
  store i8 %conv7.i29, ptr %arrayidx8.i30, align 1, !dbg !214
  %add.ptr10 = getelementptr inbounds i8, ptr %out, i64 10, !dbg !215
  %7 = load i16, ptr @lzma_footer_magic, align 1, !dbg !216
  store i16 %7, ptr %add.ptr10, align 1, !dbg !216
  br label %return

return:                                           ; preds = %if.end2, %if.end, %entry, %if.end6
  %retval.0 = phi i32 [ 0, %if.end6 ], [ 8, %entry ], [ 11, %if.end ], [ 11, %if.end2 ], !dbg !150
  ret i32 %retval.0, !dbg !217
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !29, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "liblzma/common/stream_flags_encoder.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "0bf07b93a64696a494670a0b5c1e9dfe")
!2 = !{!3, !19, !26}
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
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 27, baseType: !5, size: 32, elements: !21)
!20 = !DIFile(filename: "liblzma/api/lzma/check.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "b07c3297e2bcc14bb477793d08325ee3")
!21 = !{!22, !23, !24, !25}
!22 = !DIEnumerator(name: "LZMA_CHECK_NONE", value: 0)
!23 = !DIEnumerator(name: "LZMA_CHECK_CRC32", value: 1)
!24 = !DIEnumerator(name: "LZMA_CHECK_CRC64", value: 4)
!25 = !DIEnumerator(name: "LZMA_CHECK_SHA256", value: 10)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 44, baseType: !5, size: 32, elements: !27)
!27 = !{!28}
!28 = !DIEnumerator(name: "LZMA_RESERVED_ENUM", value: 0)
!29 = !{!5}
!30 = !{i32 7, !"Dwarf Version", i32 5}
!31 = !{i32 2, !"Debug Info Version", i32 3}
!32 = !{i32 1, !"wchar_size", i32 4}
!33 = !{i32 8, !"PIC Level", i32 2}
!34 = !{i32 7, !"PIE Level", i32 2}
!35 = !{i32 7, !"uwtable", i32 2}
!36 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!37 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!38 = distinct !DISubprogram(name: "lzma_stream_header_encode", scope: !1, file: !1, line: 30, type: !39, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!39 = !DISubroutineType(types: !40)
!40 = !{!41, !42, !78}
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_stream_flags", file: !45, line: 105, baseType: !46)
!45 = !DIFile(filename: "liblzma/api/lzma/stream_flags.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "d3814c86a389337e759db33a259f1072")
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 33, size: 448, elements: !47)
!47 = !{!48, !53, !59, !61, !63, !64, !65, !66, !69, !70, !71, !72, !73, !74, !75, !76, !77}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !46, file: !45, line: 51, baseType: !49, size: 32)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !50, line: 26, baseType: !51)
!50 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !52, line: 42, baseType: !5)
!52 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!53 = !DIDerivedType(tag: DW_TAG_member, name: "backward_size", scope: !46, file: !45, line: 69, baseType: !54, size: 64, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !55, line: 63, baseType: !56)
!55 = !DIFile(filename: "liblzma/api/lzma/vli.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !50, line: 27, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !52, line: 45, baseType: !58)
!58 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !46, file: !45, line: 79, baseType: !60, size: 32, offset: 128)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !20, line: 55, baseType: !19)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !46, file: !45, line: 90, baseType: !62, size: 32, offset: 160)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !4, line: 46, baseType: !26)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !46, file: !45, line: 91, baseType: !62, size: 32, offset: 192)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !46, file: !45, line: 92, baseType: !62, size: 32, offset: 224)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !46, file: !45, line: 93, baseType: !62, size: 32, offset: 256)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool1", scope: !46, file: !45, line: 94, baseType: !67, size: 8, offset: 288)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_bool", file: !4, line: 29, baseType: !68)
!68 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool2", scope: !46, file: !45, line: 95, baseType: !67, size: 8, offset: 296)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool3", scope: !46, file: !45, line: 96, baseType: !67, size: 8, offset: 304)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool4", scope: !46, file: !45, line: 97, baseType: !67, size: 8, offset: 312)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool5", scope: !46, file: !45, line: 98, baseType: !67, size: 8, offset: 320)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool6", scope: !46, file: !45, line: 99, baseType: !67, size: 8, offset: 328)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool7", scope: !46, file: !45, line: 100, baseType: !67, size: 8, offset: 336)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool8", scope: !46, file: !45, line: 101, baseType: !67, size: 8, offset: 344)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !46, file: !45, line: 102, baseType: !49, size: 32, offset: 352)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !46, file: !45, line: 103, baseType: !49, size: 32, offset: 384)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !50, line: 24, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !52, line: 38, baseType: !68)
!81 = !{!82, !83, !84}
!82 = !DILocalVariable(name: "options", arg: 1, scope: !38, file: !1, line: 30, type: !42)
!83 = !DILocalVariable(name: "out", arg: 2, scope: !38, file: !1, line: 30, type: !78)
!84 = !DILocalVariable(name: "crc", scope: !38, file: !1, line: 46, type: !85)
!85 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!86 = !DILocation(line: 0, scope: !38)
!87 = !DILocation(line: 35, column: 15, scope: !88)
!88 = distinct !DILexicalBlock(scope: !38, file: !1, line: 35, column: 6)
!89 = !DILocation(line: 35, column: 23, scope: !88)
!90 = !DILocation(line: 35, column: 6, scope: !38)
!91 = !DILocation(line: 39, column: 2, scope: !38)
!92 = !DILocalVariable(name: "options", arg: 1, scope: !93, file: !1, line: 17, type: !42)
!93 = distinct !DISubprogram(name: "stream_flags_encode", scope: !1, file: !1, line: 17, type: !94, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !97)
!94 = !DISubroutineType(types: !95)
!95 = !{!96, !42, !78}
!96 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!97 = !{!92, !98}
!98 = !DILocalVariable(name: "out", arg: 2, scope: !93, file: !1, line: 17, type: !78)
!99 = !DILocation(line: 0, scope: !93, inlinedAt: !100)
!100 = distinct !DILocation(line: 42, column: 6, scope: !101)
!101 = distinct !DILexicalBlock(scope: !38, file: !1, line: 42, column: 6)
!102 = !DILocation(line: 19, column: 30, scope: !103, inlinedAt: !100)
!103 = distinct !DILexicalBlock(scope: !93, file: !1, line: 19, column: 6)
!104 = !DILocation(line: 19, column: 37, scope: !103, inlinedAt: !100)
!105 = !DILocation(line: 19, column: 6, scope: !93, inlinedAt: !100)
!106 = !DILocation(line: 42, column: 39, scope: !101)
!107 = !DILocation(line: 22, column: 9, scope: !93, inlinedAt: !100)
!108 = !DILocation(line: 23, column: 20, scope: !93, inlinedAt: !100)
!109 = !DILocation(line: 23, column: 11, scope: !93, inlinedAt: !100)
!110 = !DILocation(line: 23, column: 2, scope: !93, inlinedAt: !100)
!111 = !DILocation(line: 23, column: 9, scope: !93, inlinedAt: !100)
!112 = !DILocation(line: 46, column: 23, scope: !38)
!113 = !DILocation(line: 50, column: 4, scope: !38)
!114 = !DILocalVariable(name: "buf", arg: 1, scope: !115, file: !116, line: 351, type: !78)
!115 = distinct !DISubprogram(name: "unaligned_write32le", scope: !116, file: !116, line: 351, type: !117, scopeLine: 352, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!116 = !DIFile(filename: "common/tuklib_integer.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "877bd6a1d04ec1170bc985c87ef412ed")
!117 = !DISubroutineType(types: !118)
!118 = !{null, !78, !49}
!119 = !{!114, !120}
!120 = !DILocalVariable(name: "num", arg: 2, scope: !115, file: !116, line: 351, type: !49)
!121 = !DILocation(line: 0, scope: !115, inlinedAt: !122)
!122 = distinct !DILocation(line: 49, column: 2, scope: !38)
!123 = !DILocation(line: 353, column: 11, scope: !115, inlinedAt: !122)
!124 = !DILocation(line: 353, column: 9, scope: !115, inlinedAt: !122)
!125 = !DILocation(line: 354, column: 15, scope: !115, inlinedAt: !122)
!126 = !DILocation(line: 354, column: 11, scope: !115, inlinedAt: !122)
!127 = !DILocation(line: 354, column: 2, scope: !115, inlinedAt: !122)
!128 = !DILocation(line: 354, column: 9, scope: !115, inlinedAt: !122)
!129 = !DILocation(line: 355, column: 15, scope: !115, inlinedAt: !122)
!130 = !DILocation(line: 355, column: 11, scope: !115, inlinedAt: !122)
!131 = !DILocation(line: 355, column: 2, scope: !115, inlinedAt: !122)
!132 = !DILocation(line: 355, column: 9, scope: !115, inlinedAt: !122)
!133 = !DILocation(line: 356, column: 15, scope: !115, inlinedAt: !122)
!134 = !DILocation(line: 356, column: 11, scope: !115, inlinedAt: !122)
!135 = !DILocation(line: 356, column: 2, scope: !115, inlinedAt: !122)
!136 = !DILocation(line: 356, column: 9, scope: !115, inlinedAt: !122)
!137 = !DILocation(line: 53, column: 1, scope: !38)
!138 = !DISubprogram(name: "lzma_crc32", scope: !20, file: !20, line: 119, type: !139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!139 = !DISubroutineType(types: !140)
!140 = !{!49, !141, !143, !49}
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !144, line: 18, baseType: !58)
!144 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!145 = distinct !DISubprogram(name: "lzma_stream_footer_encode", scope: !1, file: !1, line: 57, type: !39, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !146)
!146 = !{!147, !148, !149}
!147 = !DILocalVariable(name: "options", arg: 1, scope: !145, file: !1, line: 57, type: !42)
!148 = !DILocalVariable(name: "out", arg: 2, scope: !145, file: !1, line: 57, type: !78)
!149 = !DILocalVariable(name: "crc", scope: !145, file: !1, line: 76, type: !85)
!150 = !DILocation(line: 0, scope: !145)
!151 = !DILocation(line: 62, column: 15, scope: !152)
!152 = distinct !DILexicalBlock(scope: !145, file: !1, line: 62, column: 6)
!153 = !DILocation(line: 62, column: 23, scope: !152)
!154 = !DILocation(line: 62, column: 6, scope: !145)
!155 = !DILocation(line: 66, column: 7, scope: !156)
!156 = distinct !DILexicalBlock(scope: !145, file: !1, line: 66, column: 6)
!157 = !DILocalVariable(name: "options", arg: 1, scope: !158, file: !159, line: 26, type: !42)
!158 = distinct !DISubprogram(name: "is_backward_size_valid", scope: !159, file: !159, line: 26, type: !160, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !162)
!159 = !DIFile(filename: "liblzma/common/stream_flags_common.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "cd1b47fc58dd9f8e4116d4803eca0476")
!160 = !DISubroutineType(types: !161)
!161 = !{!96, !42}
!162 = !{!157}
!163 = !DILocation(line: 0, scope: !158, inlinedAt: !164)
!164 = distinct !DILocation(line: 66, column: 7, scope: !156)
!165 = !DILocation(line: 29, column: 4, scope: !158, inlinedAt: !164)
!166 = !DILocation(line: 66, column: 6, scope: !145)
!167 = !DILocation(line: 69, column: 26, scope: !145)
!168 = !DILocation(line: 69, column: 54, scope: !145)
!169 = !DILocation(line: 69, column: 31, scope: !145)
!170 = !DILocation(line: 0, scope: !115, inlinedAt: !171)
!171 = distinct !DILocation(line: 69, column: 2, scope: !145)
!172 = !DILocation(line: 353, column: 11, scope: !115, inlinedAt: !171)
!173 = !DILocation(line: 353, column: 9, scope: !115, inlinedAt: !171)
!174 = !DILocation(line: 354, column: 15, scope: !115, inlinedAt: !171)
!175 = !DILocation(line: 354, column: 11, scope: !115, inlinedAt: !171)
!176 = !DILocation(line: 354, column: 2, scope: !115, inlinedAt: !171)
!177 = !DILocation(line: 354, column: 9, scope: !115, inlinedAt: !171)
!178 = !DILocation(line: 355, column: 15, scope: !115, inlinedAt: !171)
!179 = !DILocation(line: 355, column: 11, scope: !115, inlinedAt: !171)
!180 = !DILocation(line: 355, column: 2, scope: !115, inlinedAt: !171)
!181 = !DILocation(line: 355, column: 9, scope: !115, inlinedAt: !171)
!182 = !DILocation(line: 356, column: 15, scope: !115, inlinedAt: !171)
!183 = !DILocation(line: 356, column: 11, scope: !115, inlinedAt: !171)
!184 = !DILocation(line: 356, column: 2, scope: !115, inlinedAt: !171)
!185 = !DILocation(line: 356, column: 9, scope: !115, inlinedAt: !171)
!186 = !DILocation(line: 0, scope: !93, inlinedAt: !187)
!187 = distinct !DILocation(line: 72, column: 6, scope: !188)
!188 = distinct !DILexicalBlock(scope: !145, file: !1, line: 72, column: 6)
!189 = !DILocation(line: 19, column: 30, scope: !103, inlinedAt: !187)
!190 = !DILocation(line: 19, column: 37, scope: !103, inlinedAt: !187)
!191 = !DILocation(line: 19, column: 6, scope: !93, inlinedAt: !187)
!192 = !DILocation(line: 72, column: 39, scope: !188)
!193 = !DILocation(line: 22, column: 9, scope: !93, inlinedAt: !187)
!194 = !DILocation(line: 23, column: 20, scope: !93, inlinedAt: !187)
!195 = !DILocation(line: 23, column: 11, scope: !93, inlinedAt: !187)
!196 = !DILocation(line: 23, column: 2, scope: !93, inlinedAt: !187)
!197 = !DILocation(line: 23, column: 9, scope: !93, inlinedAt: !187)
!198 = !DILocation(line: 76, column: 23, scope: !145)
!199 = !DILocation(line: 0, scope: !115, inlinedAt: !200)
!200 = distinct !DILocation(line: 79, column: 2, scope: !145)
!201 = !DILocation(line: 353, column: 11, scope: !115, inlinedAt: !200)
!202 = !DILocation(line: 353, column: 9, scope: !115, inlinedAt: !200)
!203 = !DILocation(line: 354, column: 15, scope: !115, inlinedAt: !200)
!204 = !DILocation(line: 354, column: 11, scope: !115, inlinedAt: !200)
!205 = !DILocation(line: 354, column: 2, scope: !115, inlinedAt: !200)
!206 = !DILocation(line: 354, column: 9, scope: !115, inlinedAt: !200)
!207 = !DILocation(line: 355, column: 15, scope: !115, inlinedAt: !200)
!208 = !DILocation(line: 355, column: 11, scope: !115, inlinedAt: !200)
!209 = !DILocation(line: 355, column: 2, scope: !115, inlinedAt: !200)
!210 = !DILocation(line: 355, column: 9, scope: !115, inlinedAt: !200)
!211 = !DILocation(line: 356, column: 15, scope: !115, inlinedAt: !200)
!212 = !DILocation(line: 356, column: 11, scope: !115, inlinedAt: !200)
!213 = !DILocation(line: 356, column: 2, scope: !115, inlinedAt: !200)
!214 = !DILocation(line: 356, column: 9, scope: !115, inlinedAt: !200)
!215 = !DILocation(line: 82, column: 21, scope: !145)
!216 = !DILocation(line: 82, column: 2, scope: !145)
!217 = !DILocation(line: 86, column: 1, scope: !145)
