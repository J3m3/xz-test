; ModuleID = 'liblzma/common/filter_flags_decoder.c'
source_filename = "liblzma/common/filter_flags_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_filter_flags_decode(ptr noundef %filter, ptr noundef %allocator, ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size) local_unnamed_addr #0 !dbg !29 {
entry:
  %props_size = alloca i64, align 8, !DIAssignID !81
    #dbg_assign(i1 undef, !77, !DIExpression(), !81, ptr %props_size, !DIExpression(), !82)
    #dbg_value(ptr %filter, !69, !DIExpression(), !82)
    #dbg_value(ptr %allocator, !70, !DIExpression(), !82)
    #dbg_value(ptr %in, !71, !DIExpression(), !82)
    #dbg_value(ptr %in_pos, !72, !DIExpression(), !82)
    #dbg_value(i64 %in_size, !73, !DIExpression(), !82)
  %options = getelementptr inbounds i8, ptr %filter, i64 8, !dbg !83
  store ptr null, ptr %options, align 8, !dbg !84
  %call = tail call i32 @lzma_vli_decode(ptr noundef %filter, ptr noundef null, ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size) #3, !dbg !85
    #dbg_value(i32 %call, !74, !DIExpression(), !86)
  %cmp.not.not = icmp eq i32 %call, 0, !dbg !87
  br i1 %cmp.not.not, label %do.end, label %return

do.end:                                           ; preds = %entry
  %0 = load i64, ptr %filter, align 8, !dbg !89
  %cmp2 = icmp ugt i64 %0, 4611686018427387903, !dbg !91
  br i1 %cmp2, label %return, label %if.end4, !dbg !92

if.end4:                                          ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %props_size) #3, !dbg !93
  %call7 = call i32 @lzma_vli_decode(ptr noundef nonnull %props_size, ptr noundef null, ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size) #3, !dbg !94
    #dbg_value(i32 %call7, !78, !DIExpression(), !95)
  %cmp8.not = icmp eq i32 %call7, 0, !dbg !96
  br i1 %cmp8.not, label %do.end14, label %cleanup20

do.end14:                                         ; preds = %if.end4
  %1 = load i64, ptr %in_pos, align 8, !dbg !98
  %sub = sub i64 %in_size, %1, !dbg !100
  %2 = load i64, ptr %props_size, align 8, !dbg !101
  %cmp15 = icmp ult i64 %sub, %2, !dbg !102
  br i1 %cmp15, label %cleanup20, label %if.end17, !dbg !103

if.end17:                                         ; preds = %do.end14
  %add.ptr = getelementptr inbounds i8, ptr %in, i64 %1, !dbg !104
  %call18 = call i32 @lzma_properties_decode(ptr noundef nonnull %filter, ptr noundef %allocator, ptr noundef %add.ptr, i64 noundef %2) #3, !dbg !105
    #dbg_value(i32 %call18, !80, !DIExpression(), !82)
  %3 = load i64, ptr %props_size, align 8, !dbg !106
  %4 = load i64, ptr %in_pos, align 8, !dbg !107
  %add = add i64 %4, %3, !dbg !107
  store i64 %add, ptr %in_pos, align 8, !dbg !107
  br label %cleanup20

cleanup20:                                        ; preds = %do.end14, %if.end4, %if.end17
  %retval.2 = phi i32 [ %call18, %if.end17 ], [ %call7, %if.end4 ], [ 9, %do.end14 ], !dbg !82
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %props_size) #3, !dbg !108
  br label %return

return:                                           ; preds = %entry, %do.end, %cleanup20
  %retval.3 = phi i32 [ %call, %entry ], [ %retval.2, %cleanup20 ], [ 9, %do.end ], !dbg !82
  ret i32 %retval.3, !dbg !108
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !109 i32 @lzma_vli_decode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !113 i32 @lzma_properties_decode(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !19, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "liblzma/common/filter_flags_decoder.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "a151777be74814b1fc1db0aad7e16145")
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
!19 = !{!20}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!21 = !{i32 7, !"Dwarf Version", i32 5}
!22 = !{i32 2, !"Debug Info Version", i32 3}
!23 = !{i32 1, !"wchar_size", i32 4}
!24 = !{i32 8, !"PIC Level", i32 2}
!25 = !{i32 7, !"PIE Level", i32 2}
!26 = !{i32 7, !"uwtable", i32 2}
!27 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!28 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!29 = distinct !DISubprogram(name: "lzma_filter_flags_decode", scope: !1, file: !1, line: 17, type: !30, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!30 = !DISubroutineType(types: !31)
!31 = !{!32, !33, !47, !62, !67, !55}
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !35, line: 65, baseType: !36)
!35 = !DIFile(filename: "liblzma/api/lzma/filter.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !35, line: 43, size: 128, elements: !37)
!37 = !{!38, !46}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !36, file: !35, line: 54, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !40, line: 63, baseType: !41)
!40 = !DIFile(filename: "liblzma/api/lzma/vli.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !42, line: 27, baseType: !43)
!42 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !44, line: 45, baseType: !45)
!44 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!45 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !36, file: !35, line: 63, baseType: !20, size: 64, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !4, line: 403, baseType: !49)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 341, size: 192, elements: !50)
!50 = !{!51, !57, !61}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !49, file: !4, line: 376, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DISubroutineType(types: !54)
!54 = !{!20, !20, !55, !55}
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !56, line: 18, baseType: !45)
!56 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!57 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !49, file: !4, line: 390, baseType: !58, size: 64, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{null, !20, !20}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !49, file: !4, line: 401, baseType: !20, size: 64, offset: 128)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !42, line: 24, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !44, line: 38, baseType: !66)
!66 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!68 = !{!69, !70, !71, !72, !73, !74, !77, !78, !80}
!69 = !DILocalVariable(name: "filter", arg: 1, scope: !29, file: !1, line: 18, type: !33)
!70 = !DILocalVariable(name: "allocator", arg: 2, scope: !29, file: !1, line: 18, type: !47)
!71 = !DILocalVariable(name: "in", arg: 3, scope: !29, file: !1, line: 19, type: !62)
!72 = !DILocalVariable(name: "in_pos", arg: 4, scope: !29, file: !1, line: 19, type: !67)
!73 = !DILocalVariable(name: "in_size", arg: 5, scope: !29, file: !1, line: 19, type: !55)
!74 = !DILocalVariable(name: "ret_", scope: !75, file: !1, line: 25, type: !76)
!75 = distinct !DILexicalBlock(scope: !29, file: !1, line: 25, column: 2)
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!77 = !DILocalVariable(name: "props_size", scope: !29, file: !1, line: 32, type: !39)
!78 = !DILocalVariable(name: "ret_", scope: !79, file: !1, line: 33, type: !76)
!79 = distinct !DILexicalBlock(scope: !29, file: !1, line: 33, column: 2)
!80 = !DILocalVariable(name: "ret", scope: !29, file: !1, line: 40, type: !76)
!81 = distinct !DIAssignID()
!82 = !DILocation(line: 0, scope: !29)
!83 = !DILocation(line: 22, column: 10, scope: !29)
!84 = !DILocation(line: 22, column: 18, scope: !29)
!85 = !DILocation(line: 25, column: 2, scope: !75)
!86 = !DILocation(line: 0, scope: !75)
!87 = !DILocation(line: 25, column: 2, scope: !88)
!88 = distinct !DILexicalBlock(scope: !75, file: !1, line: 25, column: 2)
!89 = !DILocation(line: 28, column: 14, scope: !90)
!90 = distinct !DILexicalBlock(scope: !29, file: !1, line: 28, column: 6)
!91 = !DILocation(line: 28, column: 17, scope: !90)
!92 = !DILocation(line: 28, column: 6, scope: !29)
!93 = !DILocation(line: 32, column: 2, scope: !29)
!94 = !DILocation(line: 33, column: 2, scope: !79)
!95 = !DILocation(line: 0, scope: !79)
!96 = !DILocation(line: 33, column: 2, scope: !97)
!97 = distinct !DILexicalBlock(scope: !79, file: !1, line: 33, column: 2)
!98 = !DILocation(line: 37, column: 16, scope: !99)
!99 = distinct !DILexicalBlock(scope: !29, file: !1, line: 37, column: 6)
!100 = !DILocation(line: 37, column: 14, scope: !99)
!101 = !DILocation(line: 37, column: 26, scope: !99)
!102 = !DILocation(line: 37, column: 24, scope: !99)
!103 = !DILocation(line: 37, column: 6, scope: !29)
!104 = !DILocation(line: 41, column: 26, scope: !29)
!105 = !DILocation(line: 40, column: 23, scope: !29)
!106 = !DILocation(line: 43, column: 13, scope: !29)
!107 = !DILocation(line: 43, column: 10, scope: !29)
!108 = !DILocation(line: 46, column: 1, scope: !29)
!109 = !DISubprogram(name: "lzma_vli_decode", scope: !40, file: !40, line: 154, type: !110, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!110 = !DISubroutineType(types: !111)
!111 = !{!32, !112, !67, !62, !67, !55}
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!113 = !DISubprogram(name: "lzma_properties_decode", scope: !35, file: !35, line: 358, type: !114, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!114 = !DISubroutineType(types: !115)
!115 = !{!32, !33, !47, !62, !55}
