; ModuleID = 'liblzma/common/vli_decoder.c'
source_filename = "liblzma/common/vli_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @lzma_vli_decode(ptr noalias nocapture noundef %vli, ptr noundef %vli_pos, ptr noalias nocapture noundef readonly %in, ptr noalias nocapture noundef %in_pos, i64 noundef %in_size) local_unnamed_addr #0 !dbg !36 {
entry:
  %vli_pos_internal = alloca i64, align 8, !DIAssignID !61
    #dbg_assign(i1 undef, !58, !DIExpression(), !61, ptr %vli_pos_internal, !DIExpression(), !62)
    #dbg_value(ptr %vli, !53, !DIExpression(), !62)
    #dbg_value(ptr %vli_pos, !54, !DIExpression(), !62)
    #dbg_value(ptr %in, !55, !DIExpression(), !62)
    #dbg_value(ptr %in_pos, !56, !DIExpression(), !62)
    #dbg_value(i64 %in_size, !57, !DIExpression(), !62)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vli_pos_internal) #3, !dbg !63
    #dbg_assign(i64 0, !58, !DIExpression(), !64, ptr %vli_pos_internal, !DIExpression(), !62)
  %cmp = icmp eq ptr %vli_pos, null, !dbg !65
  br i1 %cmp, label %if.then, label %if.else, !dbg !67

if.then:                                          ; preds = %entry
    #dbg_value(ptr %vli_pos_internal, !54, !DIExpression(), !62)
  store i64 0, ptr %vli, align 8, !dbg !68
  %0 = load i64, ptr %in_pos, align 8, !dbg !70
  %cmp1.not = icmp ult i64 %0, %in_size, !dbg !72
  br i1 %cmp1.not, label %if.end13, label %cleanup41, !dbg !73

if.else:                                          ; preds = %entry
  %1 = load i64, ptr %vli_pos, align 8, !dbg !74
  %cmp3 = icmp eq i64 %1, 0, !dbg !77
  br i1 %cmp3, label %if.end5.thread, label %if.end5, !dbg !78

if.end5.thread:                                   ; preds = %if.else
  store i64 0, ptr %vli, align 8, !dbg !79
  br label %lor.lhs.false, !dbg !80

if.end5:                                          ; preds = %if.else
  %cmp6 = icmp ugt i64 %1, 8, !dbg !82
  br i1 %cmp6, label %cleanup41, label %if.end5.lor.lhs.false_crit_edge, !dbg !80

if.end5.lor.lhs.false_crit_edge:                  ; preds = %if.end5
  %.pre = load i64, ptr %vli, align 8, !dbg !83
  br label %lor.lhs.false, !dbg !80

lor.lhs.false:                                    ; preds = %if.end5.lor.lhs.false_crit_edge, %if.end5.thread
  %2 = phi i64 [ %.pre, %if.end5.lor.lhs.false_crit_edge ], [ 0, %if.end5.thread ], !dbg !83
  %mul = mul nuw nsw i64 %1, 7, !dbg !84
  %shr = lshr i64 %2, %mul, !dbg !85
  %cmp7.not = icmp eq i64 %shr, 0, !dbg !86
  br i1 %cmp7.not, label %if.end9, label %cleanup41, !dbg !87

if.end9:                                          ; preds = %lor.lhs.false
  %3 = load i64, ptr %in_pos, align 8, !dbg !88
  %cmp10.not = icmp ult i64 %3, %in_size, !dbg !90
  br i1 %cmp10.not, label %if.end13, label %cleanup41, !dbg !91

if.end13:                                         ; preds = %if.end9, %if.then
  %vli.promoted = phi i64 [ 0, %if.then ], [ %2, %if.end9 ]
  %vli_pos.addr.0.promoted = phi i64 [ 0, %if.then ], [ %1, %if.end9 ]
  %in_pos.promoted = phi i64 [ %0, %if.then ], [ %3, %if.end9 ]
  %vli_pos.addr.0 = phi ptr [ %vli_pos_internal, %if.then ], [ %vli_pos, %if.end9 ]
    #dbg_value(ptr %vli_pos.addr.0, !54, !DIExpression(), !62)
  %4 = add i64 %in_pos.promoted, 9, !dbg !92
  %5 = sub i64 %4, %vli_pos.addr.0.promoted, !dbg !92
  %6 = add nuw i64 %in_pos.promoted, 1, !dbg !92
  %umax = tail call i64 @llvm.umax.i64(i64 %in_size, i64 %6), !dbg !92
  br label %do.body, !dbg !92

do.body:                                          ; preds = %do.cond, %if.end13
  %add77 = phi i64 [ %vli.promoted, %if.end13 ], [ %add, %do.cond ], !dbg !93
  %inc1673 = phi i64 [ %vli_pos.addr.0.promoted, %if.end13 ], [ %inc16, %do.cond ], !dbg !93
  %7 = phi i64 [ %in_pos.promoted, %if.end13 ], [ %inc, %do.cond ], !dbg !94
  %arrayidx = getelementptr inbounds i8, ptr %in, i64 %7, !dbg !93
  %8 = load i8, ptr %arrayidx, align 1, !dbg !93
    #dbg_value(i8 %8, !59, !DIExpression(), !95)
  %inc = add nuw i64 %7, 1, !dbg !96
  %9 = and i8 %8, 127, !dbg !97
  %conv14 = zext nneg i8 %9 to i64, !dbg !98
  %mul15 = mul i64 %inc1673, 7, !dbg !99
  %shl = shl i64 %conv14, %mul15, !dbg !100
  %add = add i64 %shl, %add77, !dbg !101
  %inc16 = add i64 %inc1673, 1, !dbg !102
  %cmp19 = icmp sgt i8 %8, -1, !dbg !103
  br i1 %cmp19, label %if.then21, label %cleanup, !dbg !105

if.then21:                                        ; preds = %do.body
  store i64 %inc, ptr %in_pos, align 8, !dbg !95
  store i64 %inc16, ptr %vli_pos.addr.0, align 8, !dbg !95
  store i64 %add, ptr %vli, align 8, !dbg !101
  %cmp23 = icmp eq i8 %8, 0, !dbg !106
  %cmp25 = icmp ugt i64 %inc16, 1
  %or.cond = select i1 %cmp23, i1 %cmp25, i1 false, !dbg !109
  br i1 %or.cond, label %cleanup41, label %if.end28, !dbg !109

if.end28:                                         ; preds = %if.then21
  %cmp29 = icmp ne ptr %vli_pos.addr.0, %vli_pos_internal, !dbg !110
  %cond = zext i1 %cmp29 to i32, !dbg !111
  br label %cleanup41, !dbg !112

cleanup:                                          ; preds = %do.body
  %cmp32.not = icmp eq i64 %inc16, 9, !dbg !113
  br i1 %cmp32.not, label %cleanup41.loopexit, label %do.cond

do.cond:                                          ; preds = %cleanup
  %cmp36 = icmp ult i64 %inc, %in_size, !dbg !115
  br i1 %cmp36, label %do.body, label %do.end, !dbg !116, !llvm.loop !117

do.end:                                           ; preds = %do.cond
  store i64 %umax, ptr %in_pos, align 8, !dbg !95
  store i64 %inc16, ptr %vli_pos.addr.0, align 8, !dbg !95
  store i64 %add, ptr %vli, align 8, !dbg !101
  %cmp38 = icmp eq ptr %vli_pos.addr.0, %vli_pos_internal, !dbg !119
  %cond40 = select i1 %cmp38, i32 9, i32 0, !dbg !120
  br label %cleanup41, !dbg !121

cleanup41.loopexit:                               ; preds = %cleanup
  store i64 %5, ptr %in_pos, align 8, !dbg !95
  store i64 9, ptr %vli_pos.addr.0, align 8, !dbg !95
  store i64 %add, ptr %vli, align 8, !dbg !101
  br label %cleanup41, !dbg !122

cleanup41:                                        ; preds = %cleanup41.loopexit, %if.then21, %if.end28, %if.end9, %if.end5, %lor.lhs.false, %if.then, %do.end
  %retval.2 = phi i32 [ %cond40, %do.end ], [ 9, %if.then ], [ 11, %lor.lhs.false ], [ 11, %if.end5 ], [ 10, %if.end9 ], [ 9, %if.then21 ], [ %cond, %if.end28 ], [ 9, %cleanup41.loopexit ], !dbg !62
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vli_pos_internal) #3, !dbg !122
  ret i32 %retval.2, !dbg !122
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #2

attributes #0 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !19, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "liblzma/common/vli_decoder.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "91d125b315a326080f5a7fe001c7add2")
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
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !22, line: 63, baseType: !23)
!22 = !DIFile(filename: "liblzma/api/lzma/vli.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !24, line: 27, baseType: !25)
!24 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !26, line: 45, baseType: !27)
!26 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!27 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!28 = !{i32 7, !"Dwarf Version", i32 5}
!29 = !{i32 2, !"Debug Info Version", i32 3}
!30 = !{i32 1, !"wchar_size", i32 4}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!35 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!36 = distinct !DISubprogram(name: "lzma_vli_decode", scope: !1, file: !1, line: 17, type: !37, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !52)
!37 = !DISubroutineType(types: !38)
!38 = !{!39, !40, !42, !45, !51, !43}
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!40 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !44, line: 18, baseType: !27)
!44 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!45 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !24, line: 24, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !26, line: 38, baseType: !50)
!50 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!51 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !42)
!52 = !{!53, !54, !55, !56, !57, !58, !59}
!53 = !DILocalVariable(name: "vli", arg: 1, scope: !36, file: !1, line: 17, type: !40)
!54 = !DILocalVariable(name: "vli_pos", arg: 2, scope: !36, file: !1, line: 17, type: !42)
!55 = !DILocalVariable(name: "in", arg: 3, scope: !36, file: !1, line: 18, type: !45)
!56 = !DILocalVariable(name: "in_pos", arg: 4, scope: !36, file: !1, line: 18, type: !51)
!57 = !DILocalVariable(name: "in_size", arg: 5, scope: !36, file: !1, line: 19, type: !43)
!58 = !DILocalVariable(name: "vli_pos_internal", scope: !36, file: !1, line: 22, type: !43)
!59 = !DILocalVariable(name: "byte", scope: !60, file: !1, line: 51, type: !47)
!60 = distinct !DILexicalBlock(scope: !36, file: !1, line: 48, column: 5)
!61 = distinct !DIAssignID()
!62 = !DILocation(line: 0, scope: !36)
!63 = !DILocation(line: 22, column: 2, scope: !36)
!64 = distinct !DIAssignID()
!65 = !DILocation(line: 23, column: 14, scope: !66)
!66 = distinct !DILexicalBlock(scope: !36, file: !1, line: 23, column: 6)
!67 = !DILocation(line: 23, column: 6, scope: !36)
!68 = !DILocation(line: 25, column: 8, scope: !69)
!69 = distinct !DILexicalBlock(scope: !66, file: !1, line: 23, column: 23)
!70 = !DILocation(line: 31, column: 7, scope: !71)
!71 = distinct !DILexicalBlock(scope: !69, file: !1, line: 31, column: 7)
!72 = !DILocation(line: 31, column: 15, scope: !71)
!73 = !DILocation(line: 31, column: 7, scope: !69)
!74 = !DILocation(line: 36, column: 7, scope: !75)
!75 = distinct !DILexicalBlock(scope: !76, file: !1, line: 36, column: 7)
!76 = distinct !DILexicalBlock(scope: !66, file: !1, line: 34, column: 9)
!77 = !DILocation(line: 36, column: 16, scope: !75)
!78 = !DILocation(line: 36, column: 7, scope: !76)
!79 = !DILocation(line: 37, column: 9, scope: !75)
!80 = !DILocation(line: 41, column: 5, scope: !81)
!81 = distinct !DILexicalBlock(scope: !76, file: !1, line: 40, column: 7)
!82 = !DILocation(line: 40, column: 16, scope: !81)
!83 = !DILocation(line: 41, column: 9, scope: !81)
!84 = !DILocation(line: 41, column: 27, scope: !81)
!85 = !DILocation(line: 41, column: 14, scope: !81)
!86 = !DILocation(line: 41, column: 33, scope: !81)
!87 = !DILocation(line: 40, column: 7, scope: !76)
!88 = !DILocation(line: 44, column: 7, scope: !89)
!89 = distinct !DILexicalBlock(scope: !76, file: !1, line: 44, column: 7)
!90 = !DILocation(line: 44, column: 15, scope: !89)
!91 = !DILocation(line: 44, column: 7, scope: !76)
!92 = !DILocation(line: 48, column: 2, scope: !36)
!93 = !DILocation(line: 51, column: 24, scope: !60)
!94 = !DILocation(line: 51, column: 27, scope: !60)
!95 = !DILocation(line: 0, scope: !60)
!96 = !DILocation(line: 52, column: 3, scope: !60)
!97 = !DILocation(line: 55, column: 27, scope: !60)
!98 = !DILocation(line: 55, column: 11, scope: !60)
!99 = !DILocation(line: 55, column: 48, scope: !60)
!100 = !DILocation(line: 55, column: 35, scope: !60)
!101 = !DILocation(line: 55, column: 8, scope: !60)
!102 = !DILocation(line: 56, column: 3, scope: !60)
!103 = !DILocation(line: 59, column: 21, scope: !104)
!104 = distinct !DILexicalBlock(scope: !60, file: !1, line: 59, column: 7)
!105 = !DILocation(line: 59, column: 7, scope: !60)
!106 = !DILocation(line: 63, column: 13, scope: !107)
!107 = distinct !DILexicalBlock(scope: !108, file: !1, line: 63, column: 8)
!108 = distinct !DILexicalBlock(scope: !104, file: !1, line: 59, column: 27)
!109 = !DILocation(line: 63, column: 21, scope: !107)
!110 = !DILocation(line: 66, column: 19, scope: !108)
!111 = !DILocation(line: 66, column: 11, scope: !108)
!112 = !DILocation(line: 66, column: 4, scope: !108)
!113 = !DILocation(line: 80, column: 16, scope: !114)
!114 = distinct !DILexicalBlock(scope: !60, file: !1, line: 80, column: 7)
!115 = !DILocation(line: 83, column: 19, scope: !36)
!116 = !DILocation(line: 83, column: 2, scope: !60)
!117 = distinct !{!117, !92, !118}
!118 = !DILocation(line: 83, column: 28, scope: !36)
!119 = !DILocation(line: 85, column: 17, scope: !36)
!120 = !DILocation(line: 85, column: 9, scope: !36)
!121 = !DILocation(line: 85, column: 2, scope: !36)
!122 = !DILocation(line: 86, column: 1, scope: !36)
