; ModuleID = 'liblzma/common/stream_flags_decoder.c'
source_filename = "liblzma/common/stream_flags_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lzma_header_magic = external constant [6 x i8], align 1
@lzma_footer_magic = external constant [2 x i8], align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 10) i32 @lzma_stream_header_decode(ptr nocapture noundef writeonly %options, ptr noundef %in) local_unnamed_addr #0 !dbg !42 {
entry:
    #dbg_value(ptr %options, !82, !DIExpression(), !86)
    #dbg_value(ptr %in, !83, !DIExpression(), !86)
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %in, ptr noundef nonnull dereferenceable(6) @lzma_header_magic, i64 6), !dbg !87
  %cmp.not = icmp eq i32 %bcmp, 0, !dbg !89
  br i1 %cmp.not, label %if.end, label %return, !dbg !90

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds i8, ptr %in, i64 6, !dbg !91
  %call1 = tail call i32 @lzma_crc32(ptr noundef nonnull %add.ptr, i64 noundef 2, i32 noundef 0) #3, !dbg !92
    #dbg_value(i32 %call1, !84, !DIExpression(), !86)
  %add.ptr3 = getelementptr inbounds i8, ptr %in, i64 8, !dbg !93
    #dbg_value(ptr %add.ptr3, !95, !DIExpression(), !102)
  %0 = load i32, ptr %add.ptr3, align 1, !dbg !104
    #dbg_value(i8 poison, !101, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !102)
    #dbg_value(i16 poison, !101, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !102)
    #dbg_value(!DIArgList(i32 poison, i8 poison), !101, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 16, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !102)
    #dbg_value(i32 %0, !101, !DIExpression(), !102)
  %cmp5.not = icmp eq i32 %call1, %0, !dbg !105
  br i1 %cmp5.not, label %if.end7, label %return, !dbg !106

if.end7:                                          ; preds = %if.end
    #dbg_value(ptr %options, !107, !DIExpression(), !114)
    #dbg_value(ptr %add.ptr, !113, !DIExpression(), !114)
  %1 = load i8, ptr %add.ptr, align 1, !dbg !117
  %cmp.not.i = icmp eq i8 %1, 0, !dbg !119
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %return, !dbg !120

lor.lhs.false.i:                                  ; preds = %if.end7
  %arrayidx2.i = getelementptr inbounds i8, ptr %in, i64 7, !dbg !121
  %2 = load i8, ptr %arrayidx2.i, align 1, !dbg !121
  %tobool.not.i = icmp ult i8 %2, 16, !dbg !122
  br i1 %tobool.not.i, label %if.end11, label %return, !dbg !123

if.end11:                                         ; preds = %lor.lhs.false.i
  store i32 0, ptr %options, align 8, !dbg !124
  %3 = load i8, ptr %arrayidx2.i, align 1, !dbg !125
  %4 = and i8 %3, 15, !dbg !126
  %and6.i = zext nneg i8 %4 to i32, !dbg !126
  %check.i = getelementptr inbounds i8, ptr %options, i64 16, !dbg !127
  store i32 %and6.i, ptr %check.i, align 8, !dbg !128
  %backward_size = getelementptr inbounds i8, ptr %options, i64 8, !dbg !129
  store i64 -1, ptr %backward_size, align 8, !dbg !130
  br label %return, !dbg !131

return:                                           ; preds = %if.end7, %lor.lhs.false.i, %if.end11, %if.end, %entry
  %retval.1 = phi i32 [ 7, %entry ], [ 0, %if.end11 ], [ 9, %if.end ], [ 8, %lor.lhs.false.i ], [ 8, %if.end7 ], !dbg !86
  ret i32 %retval.1, !dbg !132
}

declare !dbg !133 i32 @lzma_crc32(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 10) i32 @lzma_stream_footer_decode(ptr nocapture noundef writeonly %options, ptr noundef %in) local_unnamed_addr #0 !dbg !138 {
entry:
    #dbg_value(ptr %options, !140, !DIExpression(), !143)
    #dbg_value(ptr %in, !141, !DIExpression(), !143)
  %add.ptr = getelementptr inbounds i8, ptr %in, i64 8, !dbg !144
  %add.ptr1 = getelementptr inbounds i8, ptr %in, i64 10, !dbg !146
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %add.ptr1, ptr noundef nonnull dereferenceable(2) @lzma_footer_magic, i64 2), !dbg !147
  %cmp.not = icmp eq i32 %bcmp, 0, !dbg !148
  br i1 %cmp.not, label %if.end, label %return, !dbg !149

if.end:                                           ; preds = %entry
  %add.ptr2 = getelementptr inbounds i8, ptr %in, i64 4, !dbg !150
  %call3 = tail call i32 @lzma_crc32(ptr noundef nonnull %add.ptr2, i64 noundef 6, i32 noundef 0) #3, !dbg !151
    #dbg_value(i32 %call3, !142, !DIExpression(), !143)
    #dbg_value(ptr %in, !95, !DIExpression(), !152)
  %0 = load i32, ptr %in, align 1, !dbg !155
    #dbg_value(i8 poison, !101, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !152)
    #dbg_value(i16 poison, !101, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !152)
    #dbg_value(!DIArgList(i32 poison, i8 poison), !101, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 16, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !152)
    #dbg_value(i32 %0, !101, !DIExpression(), !152)
  %cmp5.not = icmp eq i32 %call3, %0, !dbg !156
  br i1 %cmp5.not, label %if.end7, label %return, !dbg !157

if.end7:                                          ; preds = %if.end
    #dbg_value(ptr %options, !107, !DIExpression(), !158)
    #dbg_value(ptr %add.ptr, !113, !DIExpression(), !158)
  %1 = load i8, ptr %add.ptr, align 1, !dbg !161
  %cmp.not.i = icmp eq i8 %1, 0, !dbg !162
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %return, !dbg !163

lor.lhs.false.i:                                  ; preds = %if.end7
  %arrayidx2.i = getelementptr inbounds i8, ptr %in, i64 9, !dbg !164
  %2 = load i8, ptr %arrayidx2.i, align 1, !dbg !164
  %tobool.not.i = icmp ult i8 %2, 16, !dbg !165
  br i1 %tobool.not.i, label %if.end11, label %return, !dbg !166

if.end11:                                         ; preds = %lor.lhs.false.i
  store i32 0, ptr %options, align 8, !dbg !167
  %3 = load i8, ptr %arrayidx2.i, align 1, !dbg !168
  %4 = and i8 %3, 15, !dbg !169
  %and6.i = zext nneg i8 %4 to i32, !dbg !169
  %check.i = getelementptr inbounds i8, ptr %options, i64 16, !dbg !170
  store i32 %and6.i, ptr %check.i, align 8, !dbg !171
    #dbg_value(ptr %add.ptr2, !95, !DIExpression(), !172)
  %5 = load i32, ptr %add.ptr2, align 1, !dbg !174
    #dbg_value(i32 %5, !101, !DIExpression(), !172)
  %conv = zext i32 %5 to i64, !dbg !175
  %backward_size = getelementptr inbounds i8, ptr %options, i64 8, !dbg !176
  %add = shl nuw nsw i64 %conv, 2, !dbg !177
  %mul = add nuw nsw i64 %add, 4, !dbg !177
  store i64 %mul, ptr %backward_size, align 8, !dbg !178
  br label %return, !dbg !179

return:                                           ; preds = %if.end7, %lor.lhs.false.i, %if.end11, %if.end, %entry
  %retval.1 = phi i32 [ 7, %entry ], [ 0, %if.end11 ], [ 9, %if.end ], [ 8, %lor.lhs.false.i ], [ 8, %if.end7 ], !dbg !143
  ret i32 %retval.1, !dbg !180
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind willreturn memory(argmem: read) }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !29, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "liblzma/common/stream_flags_decoder.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "a6d63bd83f97b1aa444916dbbbfa60b1")
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
!29 = !{!30}
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !31, line: 26, baseType: !32)
!31 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !33, line: 42, baseType: !5)
!33 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!34 = !{i32 7, !"Dwarf Version", i32 5}
!35 = !{i32 2, !"Debug Info Version", i32 3}
!36 = !{i32 1, !"wchar_size", i32 4}
!37 = !{i32 8, !"PIC Level", i32 2}
!38 = !{i32 7, !"PIE Level", i32 2}
!39 = !{i32 7, !"uwtable", i32 2}
!40 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!41 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!42 = distinct !DISubprogram(name: "lzma_stream_header_decode", scope: !1, file: !1, line: 31, type: !43, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!43 = !DISubroutineType(types: !44)
!44 = !{!45, !46, !77}
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_stream_flags", file: !48, line: 105, baseType: !49)
!48 = !DIFile(filename: "liblzma/api/lzma/stream_flags.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "d3814c86a389337e759db33a259f1072")
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !48, line: 33, size: 448, elements: !50)
!50 = !{!51, !52, !58, !60, !62, !63, !64, !65, !68, !69, !70, !71, !72, !73, !74, !75, !76}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !49, file: !48, line: 51, baseType: !30, size: 32)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "backward_size", scope: !49, file: !48, line: 69, baseType: !53, size: 64, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !54, line: 63, baseType: !55)
!54 = !DIFile(filename: "liblzma/api/lzma/vli.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !31, line: 27, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !33, line: 45, baseType: !57)
!57 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !49, file: !48, line: 79, baseType: !59, size: 32, offset: 128)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !20, line: 55, baseType: !19)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !49, file: !48, line: 90, baseType: !61, size: 32, offset: 160)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !4, line: 46, baseType: !26)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !49, file: !48, line: 91, baseType: !61, size: 32, offset: 192)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !49, file: !48, line: 92, baseType: !61, size: 32, offset: 224)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !49, file: !48, line: 93, baseType: !61, size: 32, offset: 256)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool1", scope: !49, file: !48, line: 94, baseType: !66, size: 8, offset: 288)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_bool", file: !4, line: 29, baseType: !67)
!67 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool2", scope: !49, file: !48, line: 95, baseType: !66, size: 8, offset: 296)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool3", scope: !49, file: !48, line: 96, baseType: !66, size: 8, offset: 304)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool4", scope: !49, file: !48, line: 97, baseType: !66, size: 8, offset: 312)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool5", scope: !49, file: !48, line: 98, baseType: !66, size: 8, offset: 320)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool6", scope: !49, file: !48, line: 99, baseType: !66, size: 8, offset: 328)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool7", scope: !49, file: !48, line: 100, baseType: !66, size: 8, offset: 336)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool8", scope: !49, file: !48, line: 101, baseType: !66, size: 8, offset: 344)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !49, file: !48, line: 102, baseType: !30, size: 32, offset: 352)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !49, file: !48, line: 103, baseType: !30, size: 32, offset: 384)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !31, line: 24, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !33, line: 38, baseType: !67)
!81 = !{!82, !83, !84}
!82 = !DILocalVariable(name: "options", arg: 1, scope: !42, file: !1, line: 31, type: !46)
!83 = !DILocalVariable(name: "in", arg: 2, scope: !42, file: !1, line: 31, type: !77)
!84 = !DILocalVariable(name: "crc", scope: !42, file: !1, line: 39, type: !85)
!85 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!86 = !DILocation(line: 0, scope: !42)
!87 = !DILocation(line: 34, column: 6, scope: !88)
!88 = distinct !DILexicalBlock(scope: !42, file: !1, line: 34, column: 6)
!89 = !DILocation(line: 34, column: 63, scope: !88)
!90 = !DILocation(line: 34, column: 6, scope: !42)
!91 = !DILocation(line: 39, column: 37, scope: !42)
!92 = !DILocation(line: 39, column: 23, scope: !42)
!93 = !DILocation(line: 42, column: 4, scope: !94)
!94 = distinct !DILexicalBlock(scope: !42, file: !1, line: 41, column: 6)
!95 = !DILocalVariable(name: "buf", arg: 1, scope: !96, file: !97, line: 311, type: !77)
!96 = distinct !DISubprogram(name: "unaligned_read32le", scope: !97, file: !97, line: 311, type: !98, scopeLine: 312, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !100)
!97 = !DIFile(filename: "common/tuklib_integer.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "877bd6a1d04ec1170bc985c87ef412ed")
!98 = !DISubroutineType(types: !99)
!99 = !{!30, !77}
!100 = !{!95, !101}
!101 = !DILocalVariable(name: "num", scope: !96, file: !97, line: 313, type: !30)
!102 = !DILocation(line: 0, scope: !96, inlinedAt: !103)
!103 = distinct !DILocation(line: 41, column: 13, scope: !94)
!104 = !DILocation(line: 313, column: 27, scope: !96, inlinedAt: !103)
!105 = !DILocation(line: 41, column: 10, scope: !94)
!106 = !DILocation(line: 41, column: 6, scope: !42)
!107 = !DILocalVariable(name: "options", arg: 1, scope: !108, file: !1, line: 17, type: !46)
!108 = distinct !DISubprogram(name: "stream_flags_decode", scope: !1, file: !1, line: 17, type: !109, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !112)
!109 = !DISubroutineType(types: !110)
!110 = !{!111, !46, !77}
!111 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!112 = !{!107, !113}
!113 = !DILocalVariable(name: "in", arg: 2, scope: !108, file: !1, line: 17, type: !77)
!114 = !DILocation(line: 0, scope: !108, inlinedAt: !115)
!115 = distinct !DILocation(line: 46, column: 6, scope: !116)
!116 = distinct !DILexicalBlock(scope: !42, file: !1, line: 46, column: 6)
!117 = !DILocation(line: 20, column: 6, scope: !118, inlinedAt: !115)
!118 = distinct !DILexicalBlock(scope: !108, file: !1, line: 20, column: 6)
!119 = !DILocation(line: 20, column: 12, scope: !118, inlinedAt: !115)
!120 = !DILocation(line: 20, column: 20, scope: !118, inlinedAt: !115)
!121 = !DILocation(line: 20, column: 24, scope: !118, inlinedAt: !115)
!122 = !DILocation(line: 20, column: 30, scope: !118, inlinedAt: !115)
!123 = !DILocation(line: 20, column: 6, scope: !108, inlinedAt: !115)
!124 = !DILocation(line: 23, column: 19, scope: !108, inlinedAt: !115)
!125 = !DILocation(line: 24, column: 19, scope: !108, inlinedAt: !115)
!126 = !DILocation(line: 24, column: 25, scope: !108, inlinedAt: !115)
!127 = !DILocation(line: 24, column: 11, scope: !108, inlinedAt: !115)
!128 = !DILocation(line: 24, column: 17, scope: !108, inlinedAt: !115)
!129 = !DILocation(line: 53, column: 11, scope: !42)
!130 = !DILocation(line: 53, column: 25, scope: !42)
!131 = !DILocation(line: 55, column: 2, scope: !42)
!132 = !DILocation(line: 56, column: 1, scope: !42)
!133 = !DISubprogram(name: "lzma_crc32", scope: !20, file: !20, line: 119, type: !134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!134 = !DISubroutineType(types: !135)
!135 = !{!30, !77, !136, !30}
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !137, line: 18, baseType: !57)
!137 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!138 = distinct !DISubprogram(name: "lzma_stream_footer_decode", scope: !1, file: !1, line: 60, type: !43, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !139)
!139 = !{!140, !141, !142}
!140 = !DILocalVariable(name: "options", arg: 1, scope: !138, file: !1, line: 60, type: !46)
!141 = !DILocalVariable(name: "in", arg: 2, scope: !138, file: !1, line: 60, type: !77)
!142 = !DILocalVariable(name: "crc", scope: !138, file: !1, line: 68, type: !85)
!143 = !DILocation(line: 0, scope: !138)
!144 = !DILocation(line: 63, column: 16, scope: !145)
!145 = distinct !DILexicalBlock(scope: !138, file: !1, line: 63, column: 6)
!146 = !DILocation(line: 63, column: 39, scope: !145)
!147 = !DILocation(line: 63, column: 6, scope: !145)
!148 = !DILocation(line: 64, column: 50, scope: !145)
!149 = !DILocation(line: 63, column: 6, scope: !138)
!150 = !DILocation(line: 68, column: 37, scope: !138)
!151 = !DILocation(line: 68, column: 23, scope: !138)
!152 = !DILocation(line: 0, scope: !96, inlinedAt: !153)
!153 = distinct !DILocation(line: 70, column: 13, scope: !154)
!154 = distinct !DILexicalBlock(scope: !138, file: !1, line: 70, column: 6)
!155 = !DILocation(line: 313, column: 27, scope: !96, inlinedAt: !153)
!156 = !DILocation(line: 70, column: 10, scope: !154)
!157 = !DILocation(line: 70, column: 6, scope: !138)
!158 = !DILocation(line: 0, scope: !108, inlinedAt: !159)
!159 = distinct !DILocation(line: 74, column: 6, scope: !160)
!160 = distinct !DILexicalBlock(scope: !138, file: !1, line: 74, column: 6)
!161 = !DILocation(line: 20, column: 6, scope: !118, inlinedAt: !159)
!162 = !DILocation(line: 20, column: 12, scope: !118, inlinedAt: !159)
!163 = !DILocation(line: 20, column: 20, scope: !118, inlinedAt: !159)
!164 = !DILocation(line: 20, column: 24, scope: !118, inlinedAt: !159)
!165 = !DILocation(line: 20, column: 30, scope: !118, inlinedAt: !159)
!166 = !DILocation(line: 20, column: 6, scope: !108, inlinedAt: !159)
!167 = !DILocation(line: 23, column: 19, scope: !108, inlinedAt: !159)
!168 = !DILocation(line: 24, column: 19, scope: !108, inlinedAt: !159)
!169 = !DILocation(line: 24, column: 25, scope: !108, inlinedAt: !159)
!170 = !DILocation(line: 24, column: 11, scope: !108, inlinedAt: !159)
!171 = !DILocation(line: 24, column: 17, scope: !108, inlinedAt: !159)
!172 = !DILocation(line: 0, scope: !96, inlinedAt: !173)
!173 = distinct !DILocation(line: 78, column: 27, scope: !138)
!174 = !DILocation(line: 313, column: 27, scope: !96, inlinedAt: !173)
!175 = !DILocation(line: 78, column: 27, scope: !138)
!176 = !DILocation(line: 78, column: 11, scope: !138)
!177 = !DILocation(line: 79, column: 56, scope: !138)
!178 = !DILocation(line: 79, column: 25, scope: !138)
!179 = !DILocation(line: 81, column: 2, scope: !138)
!180 = !DILocation(line: 82, column: 1, scope: !138)
