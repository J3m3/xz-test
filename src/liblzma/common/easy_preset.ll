; ModuleID = 'liblzma/common/easy_preset.c'
source_filename = "liblzma/common/easy_preset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @lzma_easy_preset(ptr noundef %opt_easy, i32 noundef %preset) local_unnamed_addr #0 !dbg !28 {
entry:
    #dbg_value(ptr %opt_easy, !94, !DIExpression(), !96)
    #dbg_value(i32 %preset, !95, !DIExpression(), !96)
  %opt_lzma = getelementptr inbounds i8, ptr %opt_easy, i64 80, !dbg !97
  %call = tail call zeroext i8 @lzma_lzma_preset(ptr noundef nonnull %opt_lzma, i32 noundef %preset) #2, !dbg !99
  %tobool.not = icmp ne i8 %call, 0, !dbg !99
  br i1 %tobool.not, label %return, label %if.end, !dbg !100

if.end:                                           ; preds = %entry
  store i64 33, ptr %opt_easy, align 8, !dbg !101
  %options = getelementptr inbounds i8, ptr %opt_easy, i64 8, !dbg !102
  store ptr %opt_lzma, ptr %options, align 8, !dbg !103
  %arrayidx5 = getelementptr inbounds i8, ptr %opt_easy, i64 16, !dbg !104
  store i64 -1, ptr %arrayidx5, align 8, !dbg !105
  br label %return, !dbg !106

return:                                           ; preds = %entry, %if.end
  ret i1 %tobool.not, !dbg !107
}

declare !dbg !108 zeroext i8 @lzma_lzma_preset(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "liblzma/common/easy_preset.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "bfe53d32208fcbcf4f0e9b5bf08ea753")
!2 = !{!3, !9, !16}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 138, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "liblzma/api/lzma/lzma.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "c59c540efa0aff44f03d71331089fff8")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "LZMA_MODE_FAST", value: 1)
!8 = !DIEnumerator(name: "LZMA_MODE_NORMAL", value: 2)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 58, baseType: !5, size: 32, elements: !10)
!10 = !{!11, !12, !13, !14, !15}
!11 = !DIEnumerator(name: "LZMA_MF_HC3", value: 3)
!12 = !DIEnumerator(name: "LZMA_MF_HC4", value: 4)
!13 = !DIEnumerator(name: "LZMA_MF_BT2", value: 18)
!14 = !DIEnumerator(name: "LZMA_MF_BT3", value: 19)
!15 = !DIEnumerator(name: "LZMA_MF_BT4", value: 20)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !17, line: 44, baseType: !5, size: 32, elements: !18)
!17 = !DIFile(filename: "liblzma/api/lzma/base.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "81a3070447cc5b61b56cfbed076853db")
!18 = !{!19}
!19 = !DIEnumerator(name: "LZMA_RESERVED_ENUM", value: 0)
!20 = !{i32 7, !"Dwarf Version", i32 5}
!21 = !{i32 2, !"Debug Info Version", i32 3}
!22 = !{i32 1, !"wchar_size", i32 4}
!23 = !{i32 8, !"PIC Level", i32 2}
!24 = !{i32 7, !"PIE Level", i32 2}
!25 = !{i32 7, !"uwtable", i32 2}
!26 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!27 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!28 = distinct !DISubprogram(name: "lzma_easy_preset", scope: !1, file: !1, line: 17, type: !29, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !93)
!29 = !DISubroutineType(types: !30)
!30 = !{!31, !32, !60}
!31 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_options_easy", file: !34, line: 27, baseType: !35)
!34 = !DIFile(filename: "liblzma/common/easy_preset.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "d577811d5aeebd46232348c9f7923e50")
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 16, size: 1536, elements: !36)
!36 = !{!37, !55}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "filters", scope: !35, file: !34, line: 19, baseType: !38, size: 640)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 640, elements: !53)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !40, line: 65, baseType: !41)
!40 = !DIFile(filename: "liblzma/api/lzma/filter.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !40, line: 43, size: 128, elements: !42)
!42 = !{!43, !51}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !41, file: !40, line: 54, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !45, line: 63, baseType: !46)
!45 = !DIFile(filename: "liblzma/api/lzma/vli.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !47, line: 27, baseType: !48)
!47 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !49, line: 45, baseType: !50)
!49 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!50 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !41, file: !40, line: 63, baseType: !52, size: 64, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!53 = !{!54}
!54 = !DISubrange(count: 5)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "opt_lzma", scope: !35, file: !34, line: 22, baseType: !56, size: 896, offset: 640)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_options_lzma", file: !4, line: 399, baseType: !57)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 185, size: 896, elements: !58)
!58 = !{!59, !62, !68, !69, !70, !71, !72, !74, !75, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !88, !89, !90, !91, !92}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "dict_size", scope: !57, file: !4, line: 217, baseType: !60, size: 32)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !47, line: 26, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !49, line: 42, baseType: !5)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict", scope: !57, file: !4, line: 240, baseType: !63, size: 64, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !47, line: 24, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !49, line: 38, baseType: !67)
!67 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict_size", scope: !57, file: !4, line: 254, baseType: !60, size: 32, offset: 128)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "lc", scope: !57, file: !4, line: 281, baseType: !60, size: 32, offset: 160)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "lp", scope: !57, file: !4, line: 293, baseType: !60, size: 32, offset: 192)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "pb", scope: !57, file: !4, line: 316, baseType: !60, size: 32, offset: 224)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !57, file: !4, line: 322, baseType: !73, size: 32, offset: 256)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_mode", file: !4, line: 155, baseType: !3)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "nice_len", scope: !57, file: !4, line: 342, baseType: !60, size: 32, offset: 288)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "mf", scope: !57, file: !4, line: 345, baseType: !76, size: 32, offset: 320)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_match_finder", file: !4, line: 111, baseType: !9)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !57, file: !4, line: 375, baseType: !60, size: 32, offset: 352)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !57, file: !4, line: 384, baseType: !60, size: 32, offset: 384)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !57, file: !4, line: 385, baseType: !60, size: 32, offset: 416)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !57, file: !4, line: 386, baseType: !60, size: 32, offset: 448)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !57, file: !4, line: 387, baseType: !60, size: 32, offset: 480)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int5", scope: !57, file: !4, line: 388, baseType: !60, size: 32, offset: 512)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int6", scope: !57, file: !4, line: 389, baseType: !60, size: 32, offset: 544)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int7", scope: !57, file: !4, line: 390, baseType: !60, size: 32, offset: 576)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int8", scope: !57, file: !4, line: 391, baseType: !60, size: 32, offset: 608)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !57, file: !4, line: 392, baseType: !87, size: 32, offset: 640)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !17, line: 46, baseType: !16)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !57, file: !4, line: 393, baseType: !87, size: 32, offset: 672)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !57, file: !4, line: 394, baseType: !87, size: 32, offset: 704)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !57, file: !4, line: 395, baseType: !87, size: 32, offset: 736)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !57, file: !4, line: 396, baseType: !52, size: 64, offset: 768)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !57, file: !4, line: 397, baseType: !52, size: 64, offset: 832)
!93 = !{!94, !95}
!94 = !DILocalVariable(name: "opt_easy", arg: 1, scope: !28, file: !1, line: 17, type: !32)
!95 = !DILocalVariable(name: "preset", arg: 2, scope: !28, file: !1, line: 17, type: !60)
!96 = !DILocation(line: 0, scope: !28)
!97 = !DILocation(line: 19, column: 34, scope: !98)
!98 = distinct !DILexicalBlock(scope: !28, file: !1, line: 19, column: 6)
!99 = !DILocation(line: 19, column: 6, scope: !98)
!100 = !DILocation(line: 19, column: 6, scope: !28)
!101 = !DILocation(line: 22, column: 26, scope: !28)
!102 = !DILocation(line: 23, column: 23, scope: !28)
!103 = !DILocation(line: 23, column: 31, scope: !28)
!104 = !DILocation(line: 24, column: 2, scope: !28)
!105 = !DILocation(line: 24, column: 26, scope: !28)
!106 = !DILocation(line: 26, column: 2, scope: !28)
!107 = !DILocation(line: 27, column: 1, scope: !28)
!108 = !DISubprogram(name: "lzma_lzma_preset", scope: !4, file: !4, line: 419, type: !109, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!109 = !DISubroutineType(types: !110)
!110 = !{!111, !112, !60}
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_bool", file: !17, line: 29, baseType: !67)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
