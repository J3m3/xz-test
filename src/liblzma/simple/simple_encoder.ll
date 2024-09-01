; ModuleID = 'liblzma/simple/simple_encoder.c'
source_filename = "liblzma/simple/simple_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @lzma_simple_props_size(ptr nocapture noundef writeonly %size, ptr noundef readonly %options) local_unnamed_addr #0 !dbg !29 {
entry:
    #dbg_value(ptr %size, !41, !DIExpression(), !52)
    #dbg_value(ptr %options, !42, !DIExpression(), !52)
    #dbg_value(ptr %options, !43, !DIExpression(), !52)
  %cmp = icmp eq ptr %options, null, !dbg !53
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !54

lor.rhs:                                          ; preds = %entry
  %0 = load i32, ptr %options, align 4, !dbg !55
  %cmp1 = icmp eq i32 %0, 0, !dbg !56
  %1 = select i1 %cmp1, i32 0, i32 4, !dbg !57
  br label %lor.end, !dbg !54

lor.end:                                          ; preds = %lor.rhs, %entry
  %cond = phi i32 [ 0, %entry ], [ %1, %lor.rhs ]
  store i32 %cond, ptr %size, align 4, !dbg !58
  ret i32 0, !dbg !59
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @lzma_simple_props_encode(ptr noundef readonly %options, ptr nocapture noundef writeonly %out) local_unnamed_addr #0 !dbg !60 {
entry:
    #dbg_value(ptr %options, !68, !DIExpression(), !71)
    #dbg_value(ptr %out, !69, !DIExpression(), !71)
    #dbg_value(ptr %options, !70, !DIExpression(), !71)
  %cmp = icmp eq ptr %options, null, !dbg !72
  br i1 %cmp, label %cleanup, label %lor.lhs.false, !dbg !74

lor.lhs.false:                                    ; preds = %entry
  %0 = load i32, ptr %options, align 4, !dbg !75
  %cmp1 = icmp eq i32 %0, 0, !dbg !76
  br i1 %cmp1, label %cleanup, label %if.end, !dbg !77

if.end:                                           ; preds = %lor.lhs.false
    #dbg_value(ptr %out, !78, !DIExpression(), !85)
    #dbg_value(i32 %0, !84, !DIExpression(), !85)
  %conv.i = trunc i32 %0 to i8, !dbg !87
  store i8 %conv.i, ptr %out, align 1, !dbg !88
  %shr.i = lshr i32 %0, 8, !dbg !89
  %conv1.i = trunc i32 %shr.i to i8, !dbg !90
  %arrayidx2.i = getelementptr inbounds i8, ptr %out, i64 1, !dbg !91
  store i8 %conv1.i, ptr %arrayidx2.i, align 1, !dbg !92
  %shr3.i = lshr i32 %0, 16, !dbg !93
  %conv4.i = trunc i32 %shr3.i to i8, !dbg !94
  %arrayidx5.i = getelementptr inbounds i8, ptr %out, i64 2, !dbg !95
  store i8 %conv4.i, ptr %arrayidx5.i, align 1, !dbg !96
  %shr6.i = lshr i32 %0, 24, !dbg !97
  %conv7.i = trunc nuw i32 %shr6.i to i8, !dbg !98
  %arrayidx8.i = getelementptr inbounds i8, ptr %out, i64 3, !dbg !99
  store i8 %conv7.i, ptr %arrayidx8.i, align 1, !dbg !100
  br label %cleanup, !dbg !101

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  ret i32 0, !dbg !102
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !19, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "liblzma/simple/simple_encoder.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "34df5d4515882cf036653c42587118a2")
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
!29 = distinct !DISubprogram(name: "lzma_simple_props_size", scope: !1, file: !1, line: 17, type: !30, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !40)
!30 = !DISubroutineType(types: !31)
!31 = !{!32, !33, !38}
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !35, line: 26, baseType: !36)
!35 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !37, line: 42, baseType: !5)
!37 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!40 = !{!41, !42, !43}
!41 = !DILocalVariable(name: "size", arg: 1, scope: !29, file: !1, line: 17, type: !33)
!42 = !DILocalVariable(name: "options", arg: 2, scope: !29, file: !1, line: 17, type: !38)
!43 = !DILocalVariable(name: "opt", scope: !29, file: !1, line: 19, type: !44)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_options_bcj", file: !48, line: 90, baseType: !49)
!48 = !DIFile(filename: "liblzma/api/lzma/bcj.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "a1035092336f34cf9afafbb05b1edd83")
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !48, line: 73, size: 32, elements: !50)
!50 = !{!51}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "start_offset", scope: !49, file: !48, line: 88, baseType: !34, size: 32)
!52 = !DILocation(line: 0, scope: !29)
!53 = !DILocation(line: 20, column: 15, scope: !29)
!54 = !DILocation(line: 20, column: 23, scope: !29)
!55 = !DILocation(line: 20, column: 31, scope: !29)
!56 = !DILocation(line: 20, column: 44, scope: !29)
!57 = !DILocation(line: 20, column: 10, scope: !29)
!58 = !DILocation(line: 20, column: 8, scope: !29)
!59 = !DILocation(line: 21, column: 2, scope: !29)
!60 = distinct !DISubprogram(name: "lzma_simple_props_encode", scope: !1, file: !1, line: 26, type: !61, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !67)
!61 = !DISubroutineType(types: !62)
!62 = !{!32, !38, !63}
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !35, line: 24, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !37, line: 38, baseType: !66)
!66 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!67 = !{!68, !69, !70}
!68 = !DILocalVariable(name: "options", arg: 1, scope: !60, file: !1, line: 26, type: !38)
!69 = !DILocalVariable(name: "out", arg: 2, scope: !60, file: !1, line: 26, type: !63)
!70 = !DILocalVariable(name: "opt", scope: !60, file: !1, line: 28, type: !44)
!71 = !DILocation(line: 0, scope: !60)
!72 = !DILocation(line: 32, column: 10, scope: !73)
!73 = distinct !DILexicalBlock(scope: !60, file: !1, line: 32, column: 6)
!74 = !DILocation(line: 32, column: 18, scope: !73)
!75 = !DILocation(line: 32, column: 26, scope: !73)
!76 = !DILocation(line: 32, column: 39, scope: !73)
!77 = !DILocation(line: 32, column: 6, scope: !60)
!78 = !DILocalVariable(name: "buf", arg: 1, scope: !79, file: !80, line: 351, type: !63)
!79 = distinct !DISubprogram(name: "unaligned_write32le", scope: !80, file: !80, line: 351, type: !81, scopeLine: 352, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !83)
!80 = !DIFile(filename: "common/tuklib_integer.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "877bd6a1d04ec1170bc985c87ef412ed")
!81 = !DISubroutineType(types: !82)
!82 = !{null, !63, !34}
!83 = !{!78, !84}
!84 = !DILocalVariable(name: "num", arg: 2, scope: !79, file: !80, line: 351, type: !34)
!85 = !DILocation(line: 0, scope: !79, inlinedAt: !86)
!86 = distinct !DILocation(line: 35, column: 2, scope: !60)
!87 = !DILocation(line: 353, column: 11, scope: !79, inlinedAt: !86)
!88 = !DILocation(line: 353, column: 9, scope: !79, inlinedAt: !86)
!89 = !DILocation(line: 354, column: 15, scope: !79, inlinedAt: !86)
!90 = !DILocation(line: 354, column: 11, scope: !79, inlinedAt: !86)
!91 = !DILocation(line: 354, column: 2, scope: !79, inlinedAt: !86)
!92 = !DILocation(line: 354, column: 9, scope: !79, inlinedAt: !86)
!93 = !DILocation(line: 355, column: 15, scope: !79, inlinedAt: !86)
!94 = !DILocation(line: 355, column: 11, scope: !79, inlinedAt: !86)
!95 = !DILocation(line: 355, column: 2, scope: !79, inlinedAt: !86)
!96 = !DILocation(line: 355, column: 9, scope: !79, inlinedAt: !86)
!97 = !DILocation(line: 356, column: 15, scope: !79, inlinedAt: !86)
!98 = !DILocation(line: 356, column: 11, scope: !79, inlinedAt: !86)
!99 = !DILocation(line: 356, column: 2, scope: !79, inlinedAt: !86)
!100 = !DILocation(line: 356, column: 9, scope: !79, inlinedAt: !86)
!101 = !DILocation(line: 37, column: 2, scope: !60)
!102 = !DILocation(line: 38, column: 1, scope: !60)
