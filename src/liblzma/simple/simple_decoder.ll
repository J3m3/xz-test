; ModuleID = 'liblzma/simple/simple_decoder.c'
source_filename = "liblzma/simple/simple_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 9) i32 @lzma_simple_props_decode(ptr nocapture noundef writeonly %options, ptr noundef %allocator, ptr nocapture noundef readonly %props, i64 noundef %props_size) local_unnamed_addr #0 !dbg !33 {
entry:
    #dbg_value(ptr %options, !60, !DIExpression(), !71)
    #dbg_value(ptr %allocator, !61, !DIExpression(), !71)
    #dbg_value(ptr %props, !62, !DIExpression(), !71)
    #dbg_value(i64 %props_size, !63, !DIExpression(), !71)
  switch i64 %props_size, label %if.then2 [
    i64 0, label %return
    i64 4, label %if.end3
  ], !dbg !72

if.then2:                                         ; preds = %entry
  br label %return, !dbg !73

if.end3:                                          ; preds = %entry
  %call = tail call ptr @lzma_alloc(i64 noundef 4, ptr noundef %allocator) #2, !dbg !75
    #dbg_value(ptr %call, !64, !DIExpression(), !71)
  %cmp4 = icmp eq ptr %call, null, !dbg !76
  br i1 %cmp4, label %return, label %if.end6, !dbg !78

if.end6:                                          ; preds = %if.end3
    #dbg_value(ptr %props, !79, !DIExpression(), !86)
  %0 = load i32, ptr %props, align 1, !dbg !88
    #dbg_value(i8 poison, !85, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !86)
    #dbg_value(i16 poison, !85, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !86)
    #dbg_value(!DIArgList(i32 poison, i8 poison), !85, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 16, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !86)
    #dbg_value(i32 %0, !85, !DIExpression(), !86)
  store i32 %0, ptr %call, align 4, !dbg !89
  %cmp9 = icmp eq i32 %0, 0, !dbg !90
  br i1 %cmp9, label %if.then10, label %if.else, !dbg !92

if.then10:                                        ; preds = %if.end6
  tail call void @lzma_free(ptr noundef nonnull %call, ptr noundef %allocator) #2, !dbg !93
  br label %return, !dbg !93

if.else:                                          ; preds = %if.end6
  store ptr %call, ptr %options, align 8, !dbg !94
  br label %return

return:                                           ; preds = %if.end3, %if.else, %if.then10, %entry, %if.then2
  %retval.1 = phi i32 [ 8, %if.then2 ], [ 0, %entry ], [ 5, %if.end3 ], [ 0, %if.else ], [ 0, %if.then10 ], !dbg !71
  ret i32 %retval.1, !dbg !95
}

declare !dbg !96 ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !100 void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !19, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "liblzma/simple/simple_decoder.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "849564dda3db2d5ced571e5ecf1bfe34")
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
!19 = !{!20, !21}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !22, line: 26, baseType: !23)
!22 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !24, line: 42, baseType: !5)
!24 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!25 = !{i32 7, !"Dwarf Version", i32 5}
!26 = !{i32 2, !"Debug Info Version", i32 3}
!27 = !{i32 1, !"wchar_size", i32 4}
!28 = !{i32 8, !"PIC Level", i32 2}
!29 = !{i32 7, !"PIE Level", i32 2}
!30 = !{i32 7, !"uwtable", i32 2}
!31 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!32 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!33 = distinct !DISubprogram(name: "lzma_simple_props_decode", scope: !1, file: !1, line: 17, type: !34, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
!34 = !DISubroutineType(types: !35)
!35 = !{!36, !37, !38, !54, !46}
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !4, line: 403, baseType: !40)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 341, size: 192, elements: !41)
!41 = !{!42, !49, !53}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !40, file: !4, line: 376, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DISubroutineType(types: !45)
!45 = !{!20, !20, !46, !46}
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !47, line: 18, baseType: !48)
!47 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!48 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !40, file: !4, line: 390, baseType: !50, size: 64, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DISubroutineType(types: !52)
!52 = !{null, !20, !20}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !40, file: !4, line: 401, baseType: !20, size: 64, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !22, line: 24, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !24, line: 38, baseType: !58)
!58 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!59 = !{!60, !61, !62, !63, !64}
!60 = !DILocalVariable(name: "options", arg: 1, scope: !33, file: !1, line: 17, type: !37)
!61 = !DILocalVariable(name: "allocator", arg: 2, scope: !33, file: !1, line: 17, type: !38)
!62 = !DILocalVariable(name: "props", arg: 3, scope: !33, file: !1, line: 18, type: !54)
!63 = !DILocalVariable(name: "props_size", arg: 4, scope: !33, file: !1, line: 18, type: !46)
!64 = !DILocalVariable(name: "opt", scope: !33, file: !1, line: 26, type: !65)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_options_bcj", file: !67, line: 90, baseType: !68)
!67 = !DIFile(filename: "liblzma/api/lzma/bcj.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "a1035092336f34cf9afafbb05b1edd83")
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !67, line: 73, size: 32, elements: !69)
!69 = !{!70}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "start_offset", scope: !68, file: !67, line: 88, baseType: !21, size: 32)
!71 = !DILocation(line: 0, scope: !33)
!72 = !DILocation(line: 20, column: 6, scope: !33)
!73 = !DILocation(line: 24, column: 3, scope: !74)
!74 = distinct !DILexicalBlock(scope: !33, file: !1, line: 23, column: 6)
!75 = !DILocation(line: 26, column: 26, scope: !33)
!76 = !DILocation(line: 28, column: 10, scope: !77)
!77 = distinct !DILexicalBlock(scope: !33, file: !1, line: 28, column: 6)
!78 = !DILocation(line: 28, column: 6, scope: !33)
!79 = !DILocalVariable(name: "buf", arg: 1, scope: !80, file: !81, line: 311, type: !54)
!80 = distinct !DISubprogram(name: "unaligned_read32le", scope: !81, file: !81, line: 311, type: !82, scopeLine: 312, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !84)
!81 = !DIFile(filename: "common/tuklib_integer.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "877bd6a1d04ec1170bc985c87ef412ed")
!82 = !DISubroutineType(types: !83)
!83 = !{!21, !54}
!84 = !{!79, !85}
!85 = !DILocalVariable(name: "num", scope: !80, file: !81, line: 313, type: !21)
!86 = !DILocation(line: 0, scope: !80, inlinedAt: !87)
!87 = distinct !DILocation(line: 31, column: 22, scope: !33)
!88 = !DILocation(line: 313, column: 27, scope: !80, inlinedAt: !87)
!89 = !DILocation(line: 31, column: 20, scope: !33)
!90 = !DILocation(line: 34, column: 24, scope: !91)
!91 = distinct !DILexicalBlock(scope: !33, file: !1, line: 34, column: 6)
!92 = !DILocation(line: 34, column: 6, scope: !33)
!93 = !DILocation(line: 35, column: 3, scope: !91)
!94 = !DILocation(line: 37, column: 12, scope: !91)
!95 = !DILocation(line: 40, column: 1, scope: !33)
!96 = !DISubprogram(name: "lzma_alloc", scope: !97, file: !97, line: 211, type: !98, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!97 = !DIFile(filename: "liblzma/common/common.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!98 = !DISubroutineType(types: !99)
!99 = !{!20, !46, !38}
!100 = !DISubprogram(name: "lzma_free", scope: !97, file: !97, line: 215, type: !101, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!101 = !DISubroutineType(types: !102)
!102 = !{null, !20, !38}
