; ModuleID = 'liblzma/common/filter_flags_encoder.c'
source_filename = "liblzma/common/filter_flags_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_filter_flags_size(ptr noundef %size, ptr noundef %filter) local_unnamed_addr #0 !dbg !27 {
entry:
    #dbg_value(ptr %size, !51, !DIExpression(), !56)
    #dbg_value(ptr %filter, !52, !DIExpression(), !56)
  %0 = load i64, ptr %filter, align 8, !dbg !57
  %cmp = icmp ugt i64 %0, 4611686018427387903, !dbg !59
  br i1 %cmp, label %return, label %do.body, !dbg !60

do.body:                                          ; preds = %entry
  %call = tail call i32 @lzma_properties_size(ptr noundef %size, ptr noundef nonnull %filter) #3, !dbg !61
    #dbg_value(i32 %call, !53, !DIExpression(), !62)
  %cmp1.not.not = icmp eq i32 %call, 0, !dbg !63
  br i1 %cmp1.not.not, label %do.end, label %return

do.end:                                           ; preds = %do.body
  %1 = load i64, ptr %filter, align 8, !dbg !65
  %call5 = tail call i32 @lzma_vli_size(i64 noundef %1) #3, !dbg !66
  %2 = load i32, ptr %size, align 4, !dbg !67
  %conv = zext i32 %2 to i64, !dbg !67
  %call6 = tail call i32 @lzma_vli_size(i64 noundef %conv) #3, !dbg !68
  %add = add i32 %call6, %call5, !dbg !69
  %3 = load i32, ptr %size, align 4, !dbg !70
  %add7 = add i32 %add, %3, !dbg !70
  store i32 %add7, ptr %size, align 4, !dbg !70
  br label %return, !dbg !71

return:                                           ; preds = %do.body, %entry, %do.end
  %retval.1 = phi i32 [ %call, %do.body ], [ 0, %do.end ], [ 11, %entry ], !dbg !56
  ret i32 %retval.1, !dbg !72
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !73 i32 @lzma_properties_size(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !74 i32 @lzma_vli_size(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_filter_flags_encode(ptr noundef %filter, ptr noundef %out, ptr noundef %out_pos, i64 noundef %out_size) local_unnamed_addr #0 !dbg !77 {
entry:
  %props_size = alloca i32, align 4, !DIAssignID !101
    #dbg_assign(i1 undef, !94, !DIExpression(), !101, ptr %props_size, !DIExpression(), !102)
    #dbg_value(ptr %filter, !88, !DIExpression(), !102)
    #dbg_value(ptr %out, !89, !DIExpression(), !102)
    #dbg_value(ptr %out_pos, !90, !DIExpression(), !102)
    #dbg_value(i64 %out_size, !91, !DIExpression(), !102)
  %0 = load i64, ptr %filter, align 8, !dbg !103
  %cmp = icmp ugt i64 %0, 4611686018427387903, !dbg !105
  br i1 %cmp, label %return, label %do.body, !dbg !106

do.body:                                          ; preds = %entry
  %call = tail call i32 @lzma_vli_encode(i64 noundef %0, ptr noundef null, ptr noundef %out, ptr noundef %out_pos, i64 noundef %out_size) #3, !dbg !107
    #dbg_value(i32 %call, !92, !DIExpression(), !108)
  %cmp2.not.not = icmp eq i32 %call, 0, !dbg !109
  br i1 %cmp2.not.not, label %do.end, label %return

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %props_size) #3, !dbg !111
  %call7 = call i32 @lzma_properties_size(ptr noundef nonnull %props_size, ptr noundef nonnull %filter) #3, !dbg !112
    #dbg_value(i32 %call7, !95, !DIExpression(), !113)
  %cmp8.not = icmp eq i32 %call7, 0, !dbg !114
  br i1 %cmp8.not, label %do.body15, label %cleanup45

do.body15:                                        ; preds = %do.end
  %1 = load i32, ptr %props_size, align 4, !dbg !116
  %conv = zext i32 %1 to i64, !dbg !116
  %call17 = call i32 @lzma_vli_encode(i64 noundef %conv, ptr noundef null, ptr noundef %out, ptr noundef %out_pos, i64 noundef %out_size) #3, !dbg !116
    #dbg_value(i32 %call17, !97, !DIExpression(), !117)
  %cmp18.not = icmp eq i32 %call17, 0, !dbg !118
  br i1 %cmp18.not, label %do.end26, label %cleanup45

do.end26:                                         ; preds = %do.body15
  %2 = load i64, ptr %out_pos, align 8, !dbg !120
  %sub = sub i64 %out_size, %2, !dbg !122
  %3 = load i32, ptr %props_size, align 4, !dbg !123
  %conv27 = zext i32 %3 to i64, !dbg !123
  %cmp28 = icmp ult i64 %sub, %conv27, !dbg !124
  br i1 %cmp28, label %cleanup45, label %do.body32, !dbg !125

do.body32:                                        ; preds = %do.end26
  %add.ptr = getelementptr inbounds i8, ptr %out, i64 %2, !dbg !126
  %call34 = call i32 @lzma_properties_encode(ptr noundef nonnull %filter, ptr noundef %add.ptr) #3, !dbg !126
    #dbg_value(i32 %call34, !99, !DIExpression(), !127)
  %cmp35.not = icmp eq i32 %call34, 0, !dbg !128
  br i1 %cmp35.not, label %do.end43, label %cleanup45

do.end43:                                         ; preds = %do.body32
  %4 = load i32, ptr %props_size, align 4, !dbg !130
  %conv44 = zext i32 %4 to i64, !dbg !130
  %5 = load i64, ptr %out_pos, align 8, !dbg !131
  %add = add i64 %5, %conv44, !dbg !131
  store i64 %add, ptr %out_pos, align 8, !dbg !131
  br label %cleanup45, !dbg !132

cleanup45:                                        ; preds = %do.end26, %do.body32, %do.body15, %do.end, %do.end43
  %retval.4 = phi i32 [ 0, %do.end43 ], [ %call34, %do.body32 ], [ %call17, %do.body15 ], [ %call7, %do.end ], [ 11, %do.end26 ], !dbg !102
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %props_size) #3, !dbg !133
  br label %return

return:                                           ; preds = %do.body, %entry, %cleanup45
  %retval.5 = phi i32 [ %call, %do.body ], [ %retval.4, %cleanup45 ], [ 11, %entry ], !dbg !102
  ret i32 %retval.5, !dbg !133
}

declare !dbg !134 i32 @lzma_vli_encode(i64 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !137 i32 @lzma_properties_encode(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "liblzma/common/filter_flags_encoder.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "544eb0dae4e7a381d8d20707b95c3de0")
!2 = !{!3}
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
!19 = !{i32 7, !"Dwarf Version", i32 5}
!20 = !{i32 2, !"Debug Info Version", i32 3}
!21 = !{i32 1, !"wchar_size", i32 4}
!22 = !{i32 8, !"PIC Level", i32 2}
!23 = !{i32 7, !"PIE Level", i32 2}
!24 = !{i32 7, !"uwtable", i32 2}
!25 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!26 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!27 = distinct !DISubprogram(name: "lzma_filter_flags_size", scope: !1, file: !1, line: 17, type: !28, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !50)
!28 = !DISubroutineType(types: !29)
!29 = !{!30, !31, !36}
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !33, line: 26, baseType: !34)
!33 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !35, line: 42, baseType: !5)
!35 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !39, line: 65, baseType: !40)
!39 = !DIFile(filename: "liblzma/api/lzma/filter.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !39, line: 43, size: 128, elements: !41)
!41 = !{!42, !48}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !40, file: !39, line: 54, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !44, line: 63, baseType: !45)
!44 = !DIFile(filename: "liblzma/api/lzma/vli.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !33, line: 27, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !35, line: 45, baseType: !47)
!47 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !40, file: !39, line: 63, baseType: !49, size: 64, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!50 = !{!51, !52, !53}
!51 = !DILocalVariable(name: "size", arg: 1, scope: !27, file: !1, line: 17, type: !31)
!52 = !DILocalVariable(name: "filter", arg: 2, scope: !27, file: !1, line: 17, type: !36)
!53 = !DILocalVariable(name: "ret_", scope: !54, file: !1, line: 22, type: !55)
!54 = distinct !DILexicalBlock(scope: !27, file: !1, line: 22, column: 2)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!56 = !DILocation(line: 0, scope: !27)
!57 = !DILocation(line: 19, column: 14, scope: !58)
!58 = distinct !DILexicalBlock(scope: !27, file: !1, line: 19, column: 6)
!59 = !DILocation(line: 19, column: 17, scope: !58)
!60 = !DILocation(line: 19, column: 6, scope: !27)
!61 = !DILocation(line: 22, column: 2, scope: !54)
!62 = !DILocation(line: 0, scope: !54)
!63 = !DILocation(line: 22, column: 2, scope: !64)
!64 = distinct !DILexicalBlock(scope: !54, file: !1, line: 22, column: 2)
!65 = !DILocation(line: 24, column: 33, scope: !27)
!66 = !DILocation(line: 24, column: 11, scope: !27)
!67 = !DILocation(line: 24, column: 53, scope: !27)
!68 = !DILocation(line: 24, column: 39, scope: !27)
!69 = !DILocation(line: 24, column: 37, scope: !27)
!70 = !DILocation(line: 24, column: 8, scope: !27)
!71 = !DILocation(line: 26, column: 2, scope: !27)
!72 = !DILocation(line: 27, column: 1, scope: !27)
!73 = !DISubprogram(name: "lzma_properties_size", scope: !39, file: !39, line: 307, type: !28, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!74 = !DISubprogram(name: "lzma_vli_size", scope: !44, file: !44, line: 165, type: !75, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!75 = !DISubroutineType(types: !76)
!76 = !{!32, !43}
!77 = distinct !DISubprogram(name: "lzma_filter_flags_encode", scope: !1, file: !1, line: 31, type: !78, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !87)
!78 = !DISubroutineType(types: !79)
!79 = !{!30, !36, !80, !84, !85}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !33, line: 24, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !35, line: 38, baseType: !83)
!83 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !86, line: 18, baseType: !47)
!86 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!87 = !{!88, !89, !90, !91, !92, !94, !95, !97, !99}
!88 = !DILocalVariable(name: "filter", arg: 1, scope: !77, file: !1, line: 31, type: !36)
!89 = !DILocalVariable(name: "out", arg: 2, scope: !77, file: !1, line: 32, type: !80)
!90 = !DILocalVariable(name: "out_pos", arg: 3, scope: !77, file: !1, line: 32, type: !84)
!91 = !DILocalVariable(name: "out_size", arg: 4, scope: !77, file: !1, line: 32, type: !85)
!92 = !DILocalVariable(name: "ret_", scope: !93, file: !1, line: 38, type: !55)
!93 = distinct !DILexicalBlock(scope: !77, file: !1, line: 38, column: 2)
!94 = !DILocalVariable(name: "props_size", scope: !77, file: !1, line: 42, type: !32)
!95 = !DILocalVariable(name: "ret_", scope: !96, file: !1, line: 43, type: !55)
!96 = distinct !DILexicalBlock(scope: !77, file: !1, line: 43, column: 2)
!97 = !DILocalVariable(name: "ret_", scope: !98, file: !1, line: 44, type: !55)
!98 = distinct !DILexicalBlock(scope: !77, file: !1, line: 44, column: 2)
!99 = !DILocalVariable(name: "ret_", scope: !100, file: !1, line: 51, type: !55)
!100 = distinct !DILexicalBlock(scope: !77, file: !1, line: 51, column: 2)
!101 = distinct !DIAssignID()
!102 = !DILocation(line: 0, scope: !77)
!103 = !DILocation(line: 35, column: 14, scope: !104)
!104 = distinct !DILexicalBlock(scope: !77, file: !1, line: 35, column: 6)
!105 = !DILocation(line: 35, column: 17, scope: !104)
!106 = !DILocation(line: 35, column: 6, scope: !77)
!107 = !DILocation(line: 38, column: 2, scope: !93)
!108 = !DILocation(line: 0, scope: !93)
!109 = !DILocation(line: 38, column: 2, scope: !110)
!110 = distinct !DILexicalBlock(scope: !93, file: !1, line: 38, column: 2)
!111 = !DILocation(line: 42, column: 2, scope: !77)
!112 = !DILocation(line: 43, column: 2, scope: !96)
!113 = !DILocation(line: 0, scope: !96)
!114 = !DILocation(line: 43, column: 2, scope: !115)
!115 = distinct !DILexicalBlock(scope: !96, file: !1, line: 43, column: 2)
!116 = !DILocation(line: 44, column: 2, scope: !98)
!117 = !DILocation(line: 0, scope: !98)
!118 = !DILocation(line: 44, column: 2, scope: !119)
!119 = distinct !DILexicalBlock(scope: !98, file: !1, line: 44, column: 2)
!120 = !DILocation(line: 48, column: 17, scope: !121)
!121 = distinct !DILexicalBlock(scope: !77, file: !1, line: 48, column: 6)
!122 = !DILocation(line: 48, column: 15, scope: !121)
!123 = !DILocation(line: 48, column: 28, scope: !121)
!124 = !DILocation(line: 48, column: 26, scope: !121)
!125 = !DILocation(line: 48, column: 6, scope: !77)
!126 = !DILocation(line: 51, column: 2, scope: !100)
!127 = !DILocation(line: 0, scope: !100)
!128 = !DILocation(line: 51, column: 2, scope: !129)
!129 = distinct !DILexicalBlock(scope: !100, file: !1, line: 51, column: 2)
!130 = !DILocation(line: 53, column: 14, scope: !77)
!131 = !DILocation(line: 53, column: 11, scope: !77)
!132 = !DILocation(line: 55, column: 2, scope: !77)
!133 = !DILocation(line: 56, column: 1, scope: !77)
!134 = !DISubprogram(name: "lzma_vli_encode", scope: !44, file: !44, line: 115, type: !135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!135 = !DISubroutineType(types: !136)
!136 = !{!30, !43, !84, !80, !84, !85}
!137 = !DISubprogram(name: "lzma_properties_encode", scope: !39, file: !39, line: 333, type: !138, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!138 = !DISubroutineType(types: !139)
!139 = !{!30, !36, !80}
