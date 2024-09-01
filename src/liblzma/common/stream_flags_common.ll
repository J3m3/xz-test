; ModuleID = 'liblzma/common/stream_flags_common.c'
source_filename = "liblzma/common/stream_flags_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lzma_header_magic = dso_local local_unnamed_addr constant [6 x i8] c"\FD7zXZ\00", align 1, !dbg !0
@lzma_footer_magic = dso_local local_unnamed_addr constant [2 x i8] c"YZ", align 1, !dbg !33

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 12) i32 @lzma_stream_flags_compare(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) local_unnamed_addr #0 !dbg !55 {
entry:
    #dbg_value(ptr %a, !93, !DIExpression(), !95)
    #dbg_value(ptr %b, !94, !DIExpression(), !95)
  %0 = load i32, ptr %a, align 8, !dbg !96
  %cmp.not = icmp eq i32 %0, 0, !dbg !98
  br i1 %cmp.not, label %lor.lhs.false, label %return, !dbg !99

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %b, align 8, !dbg !100
  %cmp2.not = icmp eq i32 %1, 0, !dbg !101
  br i1 %cmp2.not, label %if.end, label %return, !dbg !102

if.end:                                           ; preds = %lor.lhs.false
  %check = getelementptr inbounds i8, ptr %a, i64 16, !dbg !103
  %2 = load i32, ptr %check, align 8, !dbg !103
  %cmp3 = icmp ugt i32 %2, 15, !dbg !105
  br i1 %cmp3, label %return, label %lor.lhs.false4, !dbg !106

lor.lhs.false4:                                   ; preds = %if.end
  %check5 = getelementptr inbounds i8, ptr %b, i64 16, !dbg !107
  %3 = load i32, ptr %check5, align 8, !dbg !107
  %cmp6 = icmp ugt i32 %3, 15, !dbg !108
  br i1 %cmp6, label %return, label %if.end8, !dbg !109

if.end8:                                          ; preds = %lor.lhs.false4
  %cmp11.not = icmp eq i32 %2, %3, !dbg !110
  br i1 %cmp11.not, label %if.end13, label %return, !dbg !112

if.end13:                                         ; preds = %if.end8
  %backward_size = getelementptr inbounds i8, ptr %a, i64 8, !dbg !113
  %4 = load i64, ptr %backward_size, align 8, !dbg !113
  %cmp14.not = icmp eq i64 %4, -1, !dbg !115
  br i1 %cmp14.not, label %if.end27, label %land.lhs.true, !dbg !116

land.lhs.true:                                    ; preds = %if.end13
  %backward_size15 = getelementptr inbounds i8, ptr %b, i64 8, !dbg !117
  %5 = load i64, ptr %backward_size15, align 8, !dbg !117
  %cmp16.not = icmp eq i64 %5, -1, !dbg !118
  br i1 %cmp16.not, label %if.end27, label %if.then17, !dbg !119

if.then17:                                        ; preds = %land.lhs.true
    #dbg_value(ptr undef, !120, !DIExpression(), !127)
  %6 = add i64 %4, -4, !dbg !131
  %or.cond.i = icmp ult i64 %6, 17179869181, !dbg !131
  %and.i = and i64 %4, 3, !dbg !131
  %cmp4.i = icmp eq i64 %and.i, 0, !dbg !131
  %7 = and i1 %or.cond.i, %cmp4.i, !dbg !131
  br i1 %7, label %lor.lhs.false18, label %return, !dbg !132

lor.lhs.false18:                                  ; preds = %if.then17
    #dbg_value(ptr undef, !120, !DIExpression(), !133)
  %8 = add i64 %5, -4, !dbg !135
  %or.cond.i39 = icmp ult i64 %8, 17179869181, !dbg !135
  %and.i40 = and i64 %5, 3, !dbg !135
  %cmp4.i41 = icmp eq i64 %and.i40, 0, !dbg !135
  %9 = and i1 %or.cond.i39, %cmp4.i41, !dbg !135
  br i1 %9, label %if.end21, label %return, !dbg !136

if.end21:                                         ; preds = %lor.lhs.false18
  %cmp24.not = icmp eq i64 %4, %5, !dbg !137
  br i1 %cmp24.not, label %if.end27, label %return, !dbg !139

if.end27:                                         ; preds = %if.end21, %land.lhs.true, %if.end13
  br label %return, !dbg !140

return:                                           ; preds = %if.end21, %if.then17, %lor.lhs.false18, %if.end8, %if.end, %lor.lhs.false4, %entry, %lor.lhs.false, %if.end27
  %retval.0 = phi i32 [ 0, %if.end27 ], [ 8, %lor.lhs.false ], [ 8, %entry ], [ 11, %lor.lhs.false4 ], [ 11, %if.end ], [ 9, %if.end8 ], [ 11, %lor.lhs.false18 ], [ 11, %if.then17 ], [ 9, %if.end21 ], !dbg !95
  ret i32 %retval.0, !dbg !141
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "lzma_header_magic", scope: !2, file: !3, line: 16, type: !44, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !31, globals: !32, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "liblzma/common/stream_flags_common.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "dd7c194f7d4e72ab8af23ad14250b27e")
!4 = !{!5, !21, !28}
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
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !22, line: 27, baseType: !7, size: 32, elements: !23)
!22 = !DIFile(filename: "liblzma/api/lzma/check.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "b07c3297e2bcc14bb477793d08325ee3")
!23 = !{!24, !25, !26, !27}
!24 = !DIEnumerator(name: "LZMA_CHECK_NONE", value: 0)
!25 = !DIEnumerator(name: "LZMA_CHECK_CRC32", value: 1)
!26 = !DIEnumerator(name: "LZMA_CHECK_CRC64", value: 4)
!27 = !DIEnumerator(name: "LZMA_CHECK_SHA256", value: 10)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 44, baseType: !7, size: 32, elements: !29)
!29 = !{!30}
!30 = !DIEnumerator(name: "LZMA_RESERVED_ENUM", value: 0)
!31 = !{!7}
!32 = !{!0, !33}
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "lzma_footer_magic", scope: !2, file: !3, line: 17, type: !35, isLocal: false, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 16, elements: !42)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !38, line: 24, baseType: !39)
!38 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !40, line: 38, baseType: !41)
!40 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!41 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!42 = !{!43}
!43 = !DISubrange(count: 2)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 48, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 6)
!47 = !{i32 7, !"Dwarf Version", i32 5}
!48 = !{i32 2, !"Debug Info Version", i32 3}
!49 = !{i32 1, !"wchar_size", i32 4}
!50 = !{i32 8, !"PIC Level", i32 2}
!51 = !{i32 7, !"PIE Level", i32 2}
!52 = !{i32 7, !"uwtable", i32 2}
!53 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!54 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!55 = distinct !DISubprogram(name: "lzma_stream_flags_compare", scope: !3, file: !3, line: 21, type: !56, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !92)
!56 = !DISubroutineType(types: !57)
!57 = !{!58, !59, !59}
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !6, line: 237, baseType: !5)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_stream_flags", file: !62, line: 105, baseType: !63)
!62 = !DIFile(filename: "liblzma/api/lzma/stream_flags.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "d3814c86a389337e759db33a259f1072")
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !62, line: 33, size: 448, elements: !64)
!64 = !{!65, !68, !74, !76, !78, !79, !80, !81, !83, !84, !85, !86, !87, !88, !89, !90, !91}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !63, file: !62, line: 51, baseType: !66, size: 32)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !38, line: 26, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !40, line: 42, baseType: !7)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "backward_size", scope: !63, file: !62, line: 69, baseType: !69, size: 64, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !70, line: 63, baseType: !71)
!70 = !DIFile(filename: "liblzma/api/lzma/vli.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !38, line: 27, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !40, line: 45, baseType: !73)
!73 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !63, file: !62, line: 79, baseType: !75, size: 32, offset: 128)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !22, line: 55, baseType: !21)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !63, file: !62, line: 90, baseType: !77, size: 32, offset: 160)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !6, line: 46, baseType: !28)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !63, file: !62, line: 91, baseType: !77, size: 32, offset: 192)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !63, file: !62, line: 92, baseType: !77, size: 32, offset: 224)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !63, file: !62, line: 93, baseType: !77, size: 32, offset: 256)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool1", scope: !63, file: !62, line: 94, baseType: !82, size: 8, offset: 288)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_bool", file: !6, line: 29, baseType: !41)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool2", scope: !63, file: !62, line: 95, baseType: !82, size: 8, offset: 296)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool3", scope: !63, file: !62, line: 96, baseType: !82, size: 8, offset: 304)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool4", scope: !63, file: !62, line: 97, baseType: !82, size: 8, offset: 312)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool5", scope: !63, file: !62, line: 98, baseType: !82, size: 8, offset: 320)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool6", scope: !63, file: !62, line: 99, baseType: !82, size: 8, offset: 328)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool7", scope: !63, file: !62, line: 100, baseType: !82, size: 8, offset: 336)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool8", scope: !63, file: !62, line: 101, baseType: !82, size: 8, offset: 344)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !63, file: !62, line: 102, baseType: !66, size: 32, offset: 352)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !63, file: !62, line: 103, baseType: !66, size: 32, offset: 384)
!92 = !{!93, !94}
!93 = !DILocalVariable(name: "a", arg: 1, scope: !55, file: !3, line: 22, type: !59)
!94 = !DILocalVariable(name: "b", arg: 2, scope: !55, file: !3, line: 22, type: !59)
!95 = !DILocation(line: 0, scope: !55)
!96 = !DILocation(line: 25, column: 9, scope: !97)
!97 = distinct !DILexicalBlock(scope: !55, file: !3, line: 25, column: 6)
!98 = !DILocation(line: 25, column: 17, scope: !97)
!99 = !DILocation(line: 25, column: 22, scope: !97)
!100 = !DILocation(line: 25, column: 28, scope: !97)
!101 = !DILocation(line: 25, column: 36, scope: !97)
!102 = !DILocation(line: 25, column: 6, scope: !55)
!103 = !DILocation(line: 29, column: 24, scope: !104)
!104 = distinct !DILexicalBlock(scope: !55, file: !3, line: 29, column: 6)
!105 = !DILocation(line: 29, column: 31, scope: !104)
!106 = !DILocation(line: 30, column: 4, scope: !104)
!107 = !DILocation(line: 30, column: 25, scope: !104)
!108 = !DILocation(line: 30, column: 32, scope: !104)
!109 = !DILocation(line: 29, column: 6, scope: !55)
!110 = !DILocation(line: 33, column: 15, scope: !111)
!111 = distinct !DILexicalBlock(scope: !55, file: !3, line: 33, column: 6)
!112 = !DILocation(line: 33, column: 6, scope: !55)
!113 = !DILocation(line: 37, column: 9, scope: !114)
!114 = distinct !DILexicalBlock(scope: !55, file: !3, line: 37, column: 6)
!115 = !DILocation(line: 37, column: 23, scope: !114)
!116 = !DILocation(line: 38, column: 4, scope: !114)
!117 = !DILocation(line: 38, column: 10, scope: !114)
!118 = !DILocation(line: 38, column: 24, scope: !114)
!119 = !DILocation(line: 37, column: 6, scope: !55)
!120 = !DILocalVariable(name: "options", arg: 1, scope: !121, file: !122, line: 26, type: !59)
!121 = distinct !DISubprogram(name: "is_backward_size_valid", scope: !122, file: !122, line: 26, type: !123, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !126)
!122 = !DIFile(filename: "liblzma/common/stream_flags_common.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "cd1b47fc58dd9f8e4116d4803eca0476")
!123 = !DISubroutineType(types: !124)
!124 = !{!125, !59}
!125 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!126 = !{!120}
!127 = !DILocation(line: 0, scope: !121, inlinedAt: !128)
!128 = distinct !DILocation(line: 39, column: 8, scope: !129)
!129 = distinct !DILexicalBlock(scope: !130, file: !3, line: 39, column: 7)
!130 = distinct !DILexicalBlock(scope: !114, file: !3, line: 38, column: 45)
!131 = !DILocation(line: 29, column: 4, scope: !121, inlinedAt: !128)
!132 = !DILocation(line: 39, column: 34, scope: !129)
!133 = !DILocation(line: 0, scope: !121, inlinedAt: !134)
!134 = distinct !DILocation(line: 39, column: 38, scope: !129)
!135 = !DILocation(line: 29, column: 4, scope: !121, inlinedAt: !134)
!136 = !DILocation(line: 39, column: 7, scope: !130)
!137 = !DILocation(line: 42, column: 24, scope: !138)
!138 = distinct !DILexicalBlock(scope: !130, file: !3, line: 42, column: 7)
!139 = !DILocation(line: 42, column: 7, scope: !130)
!140 = !DILocation(line: 46, column: 2, scope: !55)
!141 = !DILocation(line: 47, column: 1, scope: !55)
