; ModuleID = 'liblzma/check/check.c'
source_filename = "liblzma/check/check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lzma_check_is_supported.available_checks = internal unnamed_addr constant [16 x i8] c"\01\01\00\00\01\00\00\00\00\00\01\00\00\00\00\00", align 16, !dbg !0
@lzma_check_size.check_sizes = internal unnamed_addr constant [16 x i8] c"\00\04\04\04\08\08\08\10\10\10   @@@", align 16, !dbg !29

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i8 @lzma_check_is_supported(i32 noundef %type) local_unnamed_addr #0 !dbg !2 {
entry:
    #dbg_value(i32 %type, !43, !DIExpression(), !54)
  %cmp = icmp ugt i32 %type, 15, !dbg !55
  br i1 %cmp, label %return, label %if.end, !dbg !57

if.end:                                           ; preds = %entry
  %idxprom = zext nneg i32 %type to i64, !dbg !58
  %arrayidx = getelementptr inbounds [16 x i8], ptr @lzma_check_is_supported.available_checks, i64 0, i64 %idxprom, !dbg !58
  %0 = load i8, ptr %arrayidx, align 1, !dbg !58
  br label %return, !dbg !59

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8 [ %0, %if.end ], [ 0, %entry ], !dbg !54
  ret i8 %retval.0, !dbg !60
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 -1, 256) i32 @lzma_check_size(i32 noundef %type) local_unnamed_addr #0 !dbg !31 {
entry:
    #dbg_value(i32 %type, !35, !DIExpression(), !61)
  %cmp = icmp ugt i32 %type, 15, !dbg !62
  br i1 %cmp, label %return, label %if.end, !dbg !64

if.end:                                           ; preds = %entry
  %idxprom = zext nneg i32 %type to i64, !dbg !65
  %arrayidx = getelementptr inbounds [16 x i8], ptr @lzma_check_size.check_sizes, i64 0, i64 %idxprom, !dbg !65
  %0 = load i8, ptr %arrayidx, align 1, !dbg !65
  %conv = zext i8 %0 to i32, !dbg !65
  br label %return, !dbg !66

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %conv, %if.end ], [ -1, %entry ], !dbg !61
  ret i32 %retval.0, !dbg !67
}

; Function Attrs: nounwind uwtable
define dso_local void @lzma_check_init(ptr noundef %check, i32 noundef %type) local_unnamed_addr #1 !dbg !68 {
entry:
    #dbg_value(ptr %check, !101, !DIExpression(), !103)
    #dbg_value(i32 %type, !102, !DIExpression(), !103)
  switch i32 %type, label %sw.epilog [
    i32 10, label %sw.bb3
    i32 1, label %sw.bb
    i32 4, label %sw.bb1
  ], !dbg !104

sw.bb:                                            ; preds = %entry
  %state = getelementptr inbounds i8, ptr %check, i64 64, !dbg !105
  store i32 0, ptr %state, align 8, !dbg !107
  br label %sw.epilog, !dbg !108

sw.bb1:                                           ; preds = %entry
  %state2 = getelementptr inbounds i8, ptr %check, i64 64, !dbg !109
  store i64 0, ptr %state2, align 8, !dbg !110
  br label %sw.epilog, !dbg !111

sw.bb3:                                           ; preds = %entry
  tail call void @lzma_sha256_init(ptr noundef %check) #3, !dbg !112
  br label %sw.epilog, !dbg !113

sw.epilog:                                        ; preds = %entry, %sw.bb3, %sw.bb1, %sw.bb
  ret void, !dbg !114
}

declare !dbg !115 void @lzma_sha256_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @lzma_check_update(ptr noundef %check, i32 noundef %type, ptr noundef %buf, i64 noundef %size) local_unnamed_addr #1 !dbg !118 {
entry:
    #dbg_value(ptr %check, !125, !DIExpression(), !129)
    #dbg_value(i32 %type, !126, !DIExpression(), !129)
    #dbg_value(ptr %buf, !127, !DIExpression(), !129)
    #dbg_value(i64 %size, !128, !DIExpression(), !129)
  switch i32 %type, label %sw.epilog [
    i32 1, label %sw.bb
    i32 4, label %sw.bb2
    i32 10, label %sw.bb6
  ], !dbg !130

sw.bb:                                            ; preds = %entry
  %state = getelementptr inbounds i8, ptr %check, i64 64, !dbg !131
  %0 = load i32, ptr %state, align 8, !dbg !133
  %call = tail call i32 @lzma_crc32(ptr noundef %buf, i64 noundef %size, i32 noundef %0) #3, !dbg !134
  store i32 %call, ptr %state, align 8, !dbg !135
  br label %sw.epilog, !dbg !136

sw.bb2:                                           ; preds = %entry
  %state3 = getelementptr inbounds i8, ptr %check, i64 64, !dbg !137
  %1 = load i64, ptr %state3, align 8, !dbg !138
  %call4 = tail call i64 @lzma_crc64(ptr noundef %buf, i64 noundef %size, i64 noundef %1) #3, !dbg !139
  store i64 %call4, ptr %state3, align 8, !dbg !140
  br label %sw.epilog, !dbg !141

sw.bb6:                                           ; preds = %entry
  tail call void @lzma_sha256_update(ptr noundef %buf, i64 noundef %size, ptr noundef %check) #3, !dbg !142
  br label %sw.epilog, !dbg !143

sw.epilog:                                        ; preds = %entry, %sw.bb6, %sw.bb2, %sw.bb
  ret void, !dbg !144
}

declare !dbg !145 i32 @lzma_crc32(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !148 i64 @lzma_crc64(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !151 void @lzma_sha256_update(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @lzma_check_finish(ptr noundef %check, i32 noundef %type) local_unnamed_addr #1 !dbg !154 {
entry:
    #dbg_value(ptr %check, !156, !DIExpression(), !158)
    #dbg_value(i32 %type, !157, !DIExpression(), !158)
  switch i32 %type, label %sw.epilog [
    i32 1, label %sw.bb
    i32 4, label %sw.bb1
    i32 10, label %sw.bb5
  ], !dbg !159

sw.bb:                                            ; preds = %entry
  %state = getelementptr inbounds i8, ptr %check, i64 64, !dbg !160
  %0 = load i32, ptr %state, align 8, !dbg !160
  store i32 %0, ptr %check, align 8, !dbg !162
  br label %sw.epilog, !dbg !163

sw.bb1:                                           ; preds = %entry
  %state2 = getelementptr inbounds i8, ptr %check, i64 64, !dbg !164
  %1 = load i64, ptr %state2, align 8, !dbg !164
  store i64 %1, ptr %check, align 8, !dbg !165
  br label %sw.epilog, !dbg !166

sw.bb5:                                           ; preds = %entry
  tail call void @lzma_sha256_finish(ptr noundef %check) #3, !dbg !167
  br label %sw.epilog, !dbg !168

sw.epilog:                                        ; preds = %entry, %sw.bb5, %sw.bb1, %sw.bb
  ret void, !dbg !169
}

declare !dbg !170 void @lzma_sha256_finish(ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!18}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "available_checks", scope: !2, file: !3, line: 22, type: !44, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "lzma_check_is_supported", scope: !3, file: !3, line: 17, type: !4, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !42)
!3 = !DIFile(filename: "liblzma/check/check.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "8fa3c3e33fe92c31a91a9f5b9e5120ff")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !9}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_bool", file: !7, line: 29, baseType: !8)
!7 = !DIFile(filename: "liblzma/api/lzma/base.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "81a3070447cc5b61b56cfbed076853db")
!8 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !10, line: 55, baseType: !11)
!10 = !DIFile(filename: "liblzma/api/lzma/check.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "b07c3297e2bcc14bb477793d08325ee3")
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 27, baseType: !12, size: 32, elements: !13)
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !{!14, !15, !16, !17}
!14 = !DIEnumerator(name: "LZMA_CHECK_NONE", value: 0)
!15 = !DIEnumerator(name: "LZMA_CHECK_CRC32", value: 1)
!16 = !DIEnumerator(name: "LZMA_CHECK_CRC64", value: 4)
!17 = !DIEnumerator(name: "LZMA_CHECK_SHA256", value: 10)
!18 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, retainedTypes: !20, globals: !28, splitDebugInlining: false, nameTableKind: None)
!19 = !{!11}
!20 = !{!12, !21, !25}
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !22, line: 26, baseType: !23)
!22 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !24, line: 42, baseType: !12)
!24 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !22, line: 27, baseType: !26)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !24, line: 45, baseType: !27)
!27 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!28 = !{!0, !29}
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "check_sizes", scope: !31, file: !3, line: 70, type: !36, isLocal: true, isDefinition: true)
!31 = distinct !DISubprogram(name: "lzma_check_size", scope: !3, file: !3, line: 64, type: !32, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !34)
!32 = !DISubroutineType(types: !33)
!33 = !{!21, !9}
!34 = !{!35}
!35 = !DILocalVariable(name: "type", arg: 1, scope: !31, file: !3, line: 64, type: !9)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 128, elements: !40)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !22, line: 24, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !24, line: 38, baseType: !8)
!40 = !{!41}
!41 = !DISubrange(count: 16)
!42 = !{!43}
!43 = !DILocalVariable(name: "type", arg: 1, scope: !2, file: !3, line: 17, type: !9)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 128, elements: !40)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!46 = !{i32 7, !"Dwarf Version", i32 5}
!47 = !{i32 2, !"Debug Info Version", i32 3}
!48 = !{i32 1, !"wchar_size", i32 4}
!49 = !{i32 8, !"PIC Level", i32 2}
!50 = !{i32 7, !"PIE Level", i32 2}
!51 = !{i32 7, !"uwtable", i32 2}
!52 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!53 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!54 = !DILocation(line: 0, scope: !2)
!55 = !DILocation(line: 19, column: 27, scope: !56)
!56 = distinct !DILexicalBlock(scope: !2, file: !3, line: 19, column: 6)
!57 = !DILocation(line: 19, column: 6, scope: !2)
!58 = !DILocation(line: 59, column: 9, scope: !2)
!59 = !DILocation(line: 59, column: 2, scope: !2)
!60 = !DILocation(line: 60, column: 1, scope: !2)
!61 = !DILocation(line: 0, scope: !31)
!62 = !DILocation(line: 66, column: 27, scope: !63)
!63 = distinct !DILexicalBlock(scope: !31, file: !3, line: 66, column: 6)
!64 = !DILocation(line: 66, column: 6, scope: !31)
!65 = !DILocation(line: 79, column: 9, scope: !31)
!66 = !DILocation(line: 79, column: 2, scope: !31)
!67 = !DILocation(line: 80, column: 1, scope: !31)
!68 = distinct !DISubprogram(name: "lzma_check_init", scope: !3, file: !3, line: 84, type: !69, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !100)
!69 = !DISubroutineType(types: !70)
!70 = !{null, !71, !9}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check_state", file: !73, line: 56, baseType: !74)
!73 = !DIFile(filename: "liblzma/check/check.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "938220df6e0ab33115ef85b0d8c70c5b")
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !73, line: 34, size: 832, elements: !75)
!75 = !{!76, !89}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !74, file: !73, line: 40, baseType: !77, size: 512)
!77 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !74, file: !73, line: 36, size: 512, elements: !78)
!78 = !{!79, !83, !85}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "u8", scope: !77, file: !73, line: 37, baseType: !80, size: 512)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 512, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "u32", scope: !77, file: !73, line: 38, baseType: !84, size: 512)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 512, elements: !40)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !77, file: !73, line: 39, baseType: !86, size: 512)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 512, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 8)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !74, file: !73, line: 54, baseType: !90, size: 320, offset: 512)
!90 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !74, file: !73, line: 43, size: 320, elements: !91)
!91 = !{!92, !93, !94}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "crc32", scope: !90, file: !73, line: 44, baseType: !21, size: 32)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "crc64", scope: !90, file: !73, line: 45, baseType: !25, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "sha256", scope: !90, file: !73, line: 53, baseType: !95, size: 320)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !90, file: !73, line: 47, size: 320, elements: !96)
!96 = !{!97, !99}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !95, file: !73, line: 49, baseType: !98, size: 256)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 256, elements: !87)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !95, file: !73, line: 52, baseType: !25, size: 64, offset: 256)
!100 = !{!101, !102}
!101 = !DILocalVariable(name: "check", arg: 1, scope: !68, file: !3, line: 84, type: !71)
!102 = !DILocalVariable(name: "type", arg: 2, scope: !68, file: !3, line: 84, type: !9)
!103 = !DILocation(line: 0, scope: !68)
!104 = !DILocation(line: 86, column: 2, scope: !68)
!105 = !DILocation(line: 92, column: 10, scope: !106)
!106 = distinct !DILexicalBlock(scope: !68, file: !3, line: 86, column: 16)
!107 = !DILocation(line: 92, column: 22, scope: !106)
!108 = !DILocation(line: 93, column: 3, scope: !106)
!109 = !DILocation(line: 98, column: 10, scope: !106)
!110 = !DILocation(line: 98, column: 22, scope: !106)
!111 = !DILocation(line: 99, column: 3, scope: !106)
!112 = !DILocation(line: 104, column: 3, scope: !106)
!113 = !DILocation(line: 105, column: 3, scope: !106)
!114 = !DILocation(line: 112, column: 2, scope: !68)
!115 = !DISubprogram(name: "lzma_sha256_init", scope: !73, file: !73, line: 86, type: !116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!116 = !DISubroutineType(types: !117)
!117 = !{null, !71}
!118 = distinct !DISubprogram(name: "lzma_check_update", scope: !3, file: !3, line: 117, type: !119, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !124)
!119 = !DISubroutineType(types: !120)
!120 = !{null, !71, !9, !121, !122}
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !123, line: 18, baseType: !27)
!123 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!124 = !{!125, !126, !127, !128}
!125 = !DILocalVariable(name: "check", arg: 1, scope: !118, file: !3, line: 117, type: !71)
!126 = !DILocalVariable(name: "type", arg: 2, scope: !118, file: !3, line: 117, type: !9)
!127 = !DILocalVariable(name: "buf", arg: 3, scope: !118, file: !3, line: 118, type: !121)
!128 = !DILocalVariable(name: "size", arg: 4, scope: !118, file: !3, line: 118, type: !122)
!129 = !DILocation(line: 0, scope: !118)
!130 = !DILocation(line: 120, column: 2, scope: !118)
!131 = !DILocation(line: 123, column: 53, scope: !132)
!132 = distinct !DILexicalBlock(scope: !118, file: !3, line: 120, column: 16)
!133 = !DILocation(line: 123, column: 59, scope: !132)
!134 = !DILocation(line: 123, column: 24, scope: !132)
!135 = !DILocation(line: 123, column: 22, scope: !132)
!136 = !DILocation(line: 124, column: 3, scope: !132)
!137 = !DILocation(line: 129, column: 53, scope: !132)
!138 = !DILocation(line: 129, column: 59, scope: !132)
!139 = !DILocation(line: 129, column: 24, scope: !132)
!140 = !DILocation(line: 129, column: 22, scope: !132)
!141 = !DILocation(line: 130, column: 3, scope: !132)
!142 = !DILocation(line: 135, column: 3, scope: !132)
!143 = !DILocation(line: 136, column: 3, scope: !132)
!144 = !DILocation(line: 143, column: 2, scope: !118)
!145 = !DISubprogram(name: "lzma_crc32", scope: !10, file: !10, line: 119, type: !146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!146 = !DISubroutineType(types: !147)
!147 = !{!21, !121, !122, !21}
!148 = !DISubprogram(name: "lzma_crc64", scope: !10, file: !10, line: 131, type: !149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!149 = !DISubroutineType(types: !150)
!150 = !{!25, !121, !122, !25}
!151 = !DISubprogram(name: "lzma_sha256_update", scope: !73, file: !73, line: 89, type: !152, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!152 = !DISubroutineType(types: !153)
!153 = !{null, !121, !122, !71}
!154 = distinct !DISubprogram(name: "lzma_check_finish", scope: !3, file: !3, line: 148, type: !69, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !155)
!155 = !{!156, !157}
!156 = !DILocalVariable(name: "check", arg: 1, scope: !154, file: !3, line: 148, type: !71)
!157 = !DILocalVariable(name: "type", arg: 2, scope: !154, file: !3, line: 148, type: !9)
!158 = !DILocation(line: 0, scope: !154)
!159 = !DILocation(line: 150, column: 2, scope: !154)
!160 = !DILocation(line: 153, column: 26, scope: !161)
!161 = distinct !DILexicalBlock(scope: !154, file: !3, line: 150, column: 16)
!162 = !DILocation(line: 153, column: 24, scope: !161)
!163 = !DILocation(line: 154, column: 3, scope: !161)
!164 = !DILocation(line: 159, column: 26, scope: !161)
!165 = !DILocation(line: 159, column: 24, scope: !161)
!166 = !DILocation(line: 160, column: 3, scope: !161)
!167 = !DILocation(line: 165, column: 3, scope: !161)
!168 = !DILocation(line: 166, column: 3, scope: !161)
!169 = !DILocation(line: 173, column: 2, scope: !154)
!170 = !DISubprogram(name: "lzma_sha256_finish", scope: !73, file: !73, line: 93, type: !116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
