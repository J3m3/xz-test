; ModuleID = 'liblzma/lzma/lzma_encoder_presets.c'
source_filename = "liblzma/lzma/lzma_encoder_presets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local zeroext range(i8 0, 2) i8 @lzma_lzma_preset(ptr nocapture noundef writeonly %options, i32 noundef %preset) local_unnamed_addr #0 !dbg !28 {
entry:
  %.compoundliteral = alloca [10 x i8], align 8
  %.compoundliteral19 = alloca [4 x i8], align 4
    #dbg_value(ptr %options, !74, !DIExpression(), !80)
    #dbg_value(i32 %preset, !75, !DIExpression(), !80)
  %and = and i32 %preset, 31, !dbg !81
    #dbg_value(i32 %and, !76, !DIExpression(), !80)
    #dbg_value(i32 %preset, !78, !DIExpression(DW_OP_constu, 18446744073709551584, DW_OP_and, DW_OP_stack_value), !80)
    #dbg_value(i32 -2147483648, !79, !DIExpression(), !80)
  %cmp = icmp ult i32 %and, 10, !dbg !82
  %and2 = and i32 %preset, 2147483616
  %tobool.not = icmp eq i32 %and2, 0
  %or.cond87 = and i1 %cmp, %tobool.not, !dbg !84
  br i1 %or.cond87, label %if.end, label %cleanup, !dbg !84

if.end:                                           ; preds = %entry
  %preset_dict = getelementptr inbounds i8, ptr %options, i64 8, !dbg !85
  store ptr null, ptr %preset_dict, align 8, !dbg !86
  %preset_dict_size = getelementptr inbounds i8, ptr %options, i64 16, !dbg !87
  store <4 x i32> <i32 0, i32 3, i32 0, i32 2>, ptr %preset_dict_size, align 8, !dbg !88
  store <8 x i8> <i8 18, i8 20, i8 21, i8 22, i8 22, i8 23, i8 23, i8 24>, ptr %.compoundliteral, align 8, !dbg !89
  %arrayinit.element9 = getelementptr inbounds i8, ptr %.compoundliteral, i64 8, !dbg !89
  store i8 25, ptr %arrayinit.element9, align 8, !dbg !89
  %arrayinit.element10 = getelementptr inbounds i8, ptr %.compoundliteral, i64 9, !dbg !89
  store i8 26, ptr %arrayinit.element10, align 1, !dbg !89
  %idxprom = zext nneg i32 %and to i64, !dbg !90
  %arrayidx = getelementptr inbounds [10 x i8], ptr %.compoundliteral, i64 0, i64 %idxprom, !dbg !90
  %0 = load i8, ptr %arrayidx, align 1, !dbg !90
  %conv = zext nneg i8 %0 to i32, !dbg !90
  %shl = shl nuw i32 1, %conv, !dbg !91
  store i32 %shl, ptr %options, align 8, !dbg !92
  %cmp11 = icmp ult i32 %and, 4, !dbg !93
  br i1 %cmp11, label %if.then13, label %if.else, !dbg !95

if.then13:                                        ; preds = %if.end
  %cmp14 = icmp eq i32 %and, 0, !dbg !96
  %cond = select i1 %cmp14, i32 3, i32 4, !dbg !98
  %cmp16 = icmp ult i32 %and, 2, !dbg !99
  %cond18 = select i1 %cmp16, i32 128, i32 273, !dbg !100
  store <4 x i8> <i8 4, i8 8, i8 24, i8 48>, ptr %.compoundliteral19, align 4, !dbg !101
  %arrayidx24 = getelementptr inbounds [4 x i8], ptr %.compoundliteral19, i64 0, i64 %idxprom, !dbg !102
  %1 = load i8, ptr %arrayidx24, align 1, !dbg !102
  %conv25 = zext i8 %1 to i32, !dbg !102
  br label %if.end36, !dbg !103

if.else:                                          ; preds = %if.end
  %cmp28 = icmp eq i32 %and, 4, !dbg !104
  %cmp30 = icmp eq i32 %and, 5, !dbg !106
  %cond32 = select i1 %cmp30, i32 32, i32 64, !dbg !106
  %cond33 = select i1 %cmp28, i32 16, i32 %cond32, !dbg !106
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.then13
  %.sink89 = phi i32 [ 1, %if.then13 ], [ 2, %if.else ], !dbg !107
  %.sink88 = phi i32 [ %cond, %if.then13 ], [ 20, %if.else ], !dbg !107
  %cond33.sink = phi i32 [ %cond18, %if.then13 ], [ %cond33, %if.else ], !dbg !107
  %.sink = phi i32 [ %conv25, %if.then13 ], [ 0, %if.else ], !dbg !107
  %2 = getelementptr inbounds i8, ptr %options, i64 32, !dbg !107
  store i32 %.sink89, ptr %2, align 8, !dbg !107
  %3 = getelementptr inbounds i8, ptr %options, i64 40, !dbg !107
  store i32 %.sink88, ptr %3, align 8, !dbg !107
  %4 = getelementptr inbounds i8, ptr %options, i64 36, !dbg !107
  store i32 %cond33.sink, ptr %4, align 4, !dbg !107
  %5 = getelementptr inbounds i8, ptr %options, i64 44, !dbg !107
  store i32 %.sink, ptr %5, align 4, !dbg !107
  %tobool38.not = icmp sgt i32 %preset, -1, !dbg !108
  br i1 %tobool38.not, label %cleanup, label %if.then39, !dbg !110

if.then39:                                        ; preds = %if.end36
  store i32 2, ptr %2, align 8, !dbg !111
  store i32 20, ptr %3, align 8, !dbg !113
  switch i32 %and, label %if.else50 [
    i32 5, label %cleanup.sink.split
    i32 3, label %cleanup.sink.split
  ], !dbg !114

if.else50:                                        ; preds = %if.then39
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then39, %if.then39, %if.else50
  %.sink91 = phi i32 [ 273, %if.else50 ], [ 192, %if.then39 ], [ 192, %if.then39 ]
  %.sink90 = phi i32 [ 512, %if.else50 ], [ 0, %if.then39 ], [ 0, %if.then39 ]
  store i32 %.sink91, ptr %4, align 4, !dbg !116
  store i32 %.sink90, ptr %5, align 4, !dbg !116
  br label %cleanup, !dbg !117

cleanup:                                          ; preds = %cleanup.sink.split, %if.end36, %entry
  %retval.0 = phi i8 [ 1, %entry ], [ 0, %if.end36 ], [ 0, %cleanup.sink.split ], !dbg !80
  ret i8 %retval.0, !dbg !117
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "liblzma/lzma/lzma_encoder_presets.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "0a5ebb3f0e6b11f43a1e1f264dd97819")
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
!28 = distinct !DISubprogram(name: "lzma_lzma_preset", scope: !1, file: !1, line: 17, type: !29, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!29 = !DISubroutineType(types: !30)
!30 = !{!31, !33, !38}
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_bool", file: !17, line: 29, baseType: !32)
!32 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_options_lzma", file: !4, line: 399, baseType: !35)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 185, size: 896, elements: !36)
!36 = !{!37, !42, !47, !48, !49, !50, !51, !53, !54, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !67, !68, !69, !70, !72}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "dict_size", scope: !35, file: !4, line: 217, baseType: !38, size: 32)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !39, line: 26, baseType: !40)
!39 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !41, line: 42, baseType: !5)
!41 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!42 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict", scope: !35, file: !4, line: 240, baseType: !43, size: 64, offset: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !39, line: 24, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !41, line: 38, baseType: !32)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict_size", scope: !35, file: !4, line: 254, baseType: !38, size: 32, offset: 128)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "lc", scope: !35, file: !4, line: 281, baseType: !38, size: 32, offset: 160)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "lp", scope: !35, file: !4, line: 293, baseType: !38, size: 32, offset: 192)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "pb", scope: !35, file: !4, line: 316, baseType: !38, size: 32, offset: 224)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !35, file: !4, line: 322, baseType: !52, size: 32, offset: 256)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_mode", file: !4, line: 155, baseType: !3)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "nice_len", scope: !35, file: !4, line: 342, baseType: !38, size: 32, offset: 288)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "mf", scope: !35, file: !4, line: 345, baseType: !55, size: 32, offset: 320)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_match_finder", file: !4, line: 111, baseType: !9)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !35, file: !4, line: 375, baseType: !38, size: 32, offset: 352)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !35, file: !4, line: 384, baseType: !38, size: 32, offset: 384)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !35, file: !4, line: 385, baseType: !38, size: 32, offset: 416)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !35, file: !4, line: 386, baseType: !38, size: 32, offset: 448)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !35, file: !4, line: 387, baseType: !38, size: 32, offset: 480)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int5", scope: !35, file: !4, line: 388, baseType: !38, size: 32, offset: 512)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int6", scope: !35, file: !4, line: 389, baseType: !38, size: 32, offset: 544)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int7", scope: !35, file: !4, line: 390, baseType: !38, size: 32, offset: 576)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int8", scope: !35, file: !4, line: 391, baseType: !38, size: 32, offset: 608)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !35, file: !4, line: 392, baseType: !66, size: 32, offset: 640)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !17, line: 46, baseType: !16)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !35, file: !4, line: 393, baseType: !66, size: 32, offset: 672)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !35, file: !4, line: 394, baseType: !66, size: 32, offset: 704)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !35, file: !4, line: 395, baseType: !66, size: 32, offset: 736)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !35, file: !4, line: 396, baseType: !71, size: 64, offset: 768)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !35, file: !4, line: 397, baseType: !71, size: 64, offset: 832)
!73 = !{!74, !75, !76, !78, !79}
!74 = !DILocalVariable(name: "options", arg: 1, scope: !28, file: !1, line: 17, type: !33)
!75 = !DILocalVariable(name: "preset", arg: 2, scope: !28, file: !1, line: 17, type: !38)
!76 = !DILocalVariable(name: "level", scope: !28, file: !1, line: 19, type: !77)
!77 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!78 = !DILocalVariable(name: "flags", scope: !28, file: !1, line: 20, type: !77)
!79 = !DILocalVariable(name: "supported_flags", scope: !28, file: !1, line: 21, type: !77)
!80 = !DILocation(line: 0, scope: !28)
!81 = !DILocation(line: 19, column: 32, scope: !28)
!82 = !DILocation(line: 23, column: 12, scope: !83)
!83 = distinct !DILexicalBlock(scope: !28, file: !1, line: 23, column: 6)
!84 = !DILocation(line: 23, column: 16, scope: !83)
!85 = !DILocation(line: 26, column: 11, scope: !28)
!86 = !DILocation(line: 26, column: 23, scope: !28)
!87 = !DILocation(line: 27, column: 11, scope: !28)
!88 = !DILocation(line: 27, column: 28, scope: !28)
!89 = !DILocation(line: 37, column: 50, scope: !28)
!90 = !DILocation(line: 37, column: 38, scope: !28)
!91 = !DILocation(line: 37, column: 35, scope: !28)
!92 = !DILocation(line: 37, column: 21, scope: !28)
!93 = !DILocation(line: 41, column: 12, scope: !94)
!94 = distinct !DILexicalBlock(scope: !28, file: !1, line: 41, column: 6)
!95 = !DILocation(line: 41, column: 6, scope: !28)
!96 = !DILocation(line: 43, column: 23, scope: !97)
!97 = distinct !DILexicalBlock(scope: !94, file: !1, line: 41, column: 18)
!98 = !DILocation(line: 43, column: 17, scope: !97)
!99 = !DILocation(line: 44, column: 29, scope: !97)
!100 = !DILocation(line: 44, column: 23, scope: !97)
!101 = !DILocation(line: 48, column: 32, scope: !97)
!102 = !DILocation(line: 48, column: 20, scope: !97)
!103 = !DILocation(line: 50, column: 2, scope: !97)
!104 = !DILocation(line: 53, column: 29, scope: !105)
!105 = distinct !DILexicalBlock(scope: !94, file: !1, line: 50, column: 9)
!106 = !DILocation(line: 53, column: 23, scope: !105)
!107 = !DILocation(line: 0, scope: !94)
!108 = !DILocation(line: 57, column: 12, scope: !109)
!109 = distinct !DILexicalBlock(scope: !28, file: !1, line: 57, column: 6)
!110 = !DILocation(line: 57, column: 6, scope: !28)
!111 = !DILocation(line: 58, column: 17, scope: !112)
!112 = distinct !DILexicalBlock(scope: !109, file: !1, line: 57, column: 35)
!113 = !DILocation(line: 59, column: 15, scope: !112)
!114 = !DILocation(line: 60, column: 18, scope: !115)
!115 = distinct !DILexicalBlock(scope: !112, file: !1, line: 60, column: 7)
!116 = !DILocation(line: 0, scope: !115)
!117 = !DILocation(line: 70, column: 1, scope: !28)
