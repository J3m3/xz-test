; ModuleID = 'liblzma/common/vli_encoder.c'
source_filename = "liblzma/common/vli_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 12) i32 @lzma_vli_encode(i64 noundef %vli, ptr noundef %vli_pos, ptr noalias nocapture noundef writeonly %out, ptr noalias nocapture noundef %out_pos, i64 noundef %out_size) local_unnamed_addr #0 !dbg !34 {
entry:
  %vli_pos_internal = alloca i64, align 8, !DIAssignID !56
    #dbg_assign(i1 undef, !55, !DIExpression(), !56, ptr %vli_pos_internal, !DIExpression(), !57)
    #dbg_value(i64 %vli, !50, !DIExpression(), !57)
    #dbg_value(ptr %vli_pos, !51, !DIExpression(), !57)
    #dbg_value(ptr %out, !52, !DIExpression(), !57)
    #dbg_value(ptr %out_pos, !53, !DIExpression(), !57)
    #dbg_value(i64 %out_size, !54, !DIExpression(), !57)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vli_pos_internal) #2, !dbg !58
  store i64 0, ptr %vli_pos_internal, align 8, !dbg !59, !DIAssignID !60
    #dbg_assign(i64 0, !55, !DIExpression(), !60, ptr %vli_pos_internal, !DIExpression(), !57)
  %cmp = icmp eq ptr %vli_pos, null, !dbg !61
  %0 = load i64, ptr %out_pos, align 8, !dbg !63
  %cmp1.not = icmp ult i64 %0, %out_size, !dbg !63
  %vli_pos_internal.vli_pos = select i1 %cmp, ptr %vli_pos_internal, ptr %vli_pos, !dbg !63
  %. = select i1 %cmp, i32 11, i32 10, !dbg !63
  br i1 %cmp1.not, label %if.end6, label %cleanup, !dbg !63

if.end6:                                          ; preds = %entry
    #dbg_value(ptr %vli_pos_internal.vli_pos, !51, !DIExpression(), !57)
  %1 = load i64, ptr %vli_pos_internal.vli_pos, align 8, !dbg !64
  %cmp7 = icmp ugt i64 %1, 8, !dbg !66
  %cmp8 = icmp slt i64 %vli, 0
  %or.cond = or i1 %cmp8, %cmp7, !dbg !67
  br i1 %or.cond, label %cleanup, label %if.end10, !dbg !67

if.end10:                                         ; preds = %if.end6
  %mul = mul nuw nsw i64 %1, 7, !dbg !68
  %shr = lshr i64 %vli, %mul, !dbg !69
    #dbg_value(i64 %shr, !50, !DIExpression(), !57)
  br label %while.cond, !dbg !70

while.cond:                                       ; preds = %while.body, %if.end10
  %2 = phi i64 [ %1, %if.end10 ], [ %inc, %while.body ]
  %3 = phi i64 [ %0, %if.end10 ], [ %inc15, %while.body ]
  %vli.addr.0 = phi i64 [ %shr, %if.end10 ], [ %shr14, %while.body ], !dbg !57
    #dbg_value(i64 %vli.addr.0, !50, !DIExpression(), !57)
  %cmp11 = icmp ugt i64 %vli.addr.0, 127, !dbg !71
  br i1 %cmp11, label %while.body, label %while.end, !dbg !70

while.body:                                       ; preds = %while.cond
  %inc = add i64 %2, 1, !dbg !72
  store i64 %inc, ptr %vli_pos_internal.vli_pos, align 8, !dbg !72
  %conv = trunc i64 %vli.addr.0 to i8, !dbg !74
  %or = or i8 %conv, -128, !dbg !75
  %arrayidx = getelementptr inbounds i8, ptr %out, i64 %3, !dbg !76
  store i8 %or, ptr %arrayidx, align 1, !dbg !77
  %shr14 = lshr i64 %vli.addr.0, 7, !dbg !78
    #dbg_value(i64 %shr14, !50, !DIExpression(), !57)
  %inc15 = add i64 %3, 1, !dbg !79
  store i64 %inc15, ptr %out_pos, align 8, !dbg !79
  %cmp16 = icmp eq i64 %inc15, %out_size, !dbg !81
  br i1 %cmp16, label %if.then18, label %while.cond, !dbg !82, !llvm.loop !83

if.then18:                                        ; preds = %while.body
  %cmp19 = icmp eq ptr %vli_pos_internal.vli_pos, %vli_pos_internal, !dbg !85
  %cond = select i1 %cmp19, i32 11, i32 0, !dbg !86
  br label %cleanup, !dbg !87

while.end:                                        ; preds = %while.cond
  %conv22 = trunc nuw nsw i64 %vli.addr.0 to i8, !dbg !88
  %arrayidx23 = getelementptr inbounds i8, ptr %out, i64 %3, !dbg !89
  store i8 %conv22, ptr %arrayidx23, align 1, !dbg !90
  %inc24 = add i64 %3, 1, !dbg !91
  store i64 %inc24, ptr %out_pos, align 8, !dbg !91
  %inc25 = add i64 %2, 1, !dbg !92
  store i64 %inc25, ptr %vli_pos_internal.vli_pos, align 8, !dbg !92
  %cmp26 = icmp ne ptr %vli_pos_internal.vli_pos, %vli_pos_internal, !dbg !93
  %cond28 = zext i1 %cmp26 to i32, !dbg !94
  br label %cleanup, !dbg !95

cleanup:                                          ; preds = %entry, %if.end6, %while.end, %if.then18
  %retval.0 = phi i32 [ %cond, %if.then18 ], [ %cond28, %while.end ], [ 11, %if.end6 ], [ %., %entry ], !dbg !57
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vli_pos_internal) #2, !dbg !96
  ret i32 %retval.0, !dbg !96
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !19, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "liblzma/common/vli_encoder.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "4de7f9e5052ab9957fee955a20da3326")
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
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !22, line: 24, baseType: !23)
!22 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !24, line: 38, baseType: !25)
!24 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!25 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!26 = !{i32 7, !"Dwarf Version", i32 5}
!27 = !{i32 2, !"Debug Info Version", i32 3}
!28 = !{i32 1, !"wchar_size", i32 4}
!29 = !{i32 8, !"PIC Level", i32 2}
!30 = !{i32 7, !"PIE Level", i32 2}
!31 = !{i32 7, !"uwtable", i32 2}
!32 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!33 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!34 = distinct !DISubprogram(name: "lzma_vli_encode", scope: !1, file: !1, line: 17, type: !35, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !49)
!35 = !DISubroutineType(types: !36)
!36 = !{!37, !38, !43, !46, !48, !44}
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !39, line: 63, baseType: !40)
!39 = !DIFile(filename: "liblzma/api/lzma/vli.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !22, line: 27, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !24, line: 45, baseType: !42)
!42 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !45, line: 18, baseType: !42)
!45 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!46 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !43)
!49 = !{!50, !51, !52, !53, !54, !55}
!50 = !DILocalVariable(name: "vli", arg: 1, scope: !34, file: !1, line: 17, type: !38)
!51 = !DILocalVariable(name: "vli_pos", arg: 2, scope: !34, file: !1, line: 17, type: !43)
!52 = !DILocalVariable(name: "out", arg: 3, scope: !34, file: !1, line: 18, type: !46)
!53 = !DILocalVariable(name: "out_pos", arg: 4, scope: !34, file: !1, line: 18, type: !48)
!54 = !DILocalVariable(name: "out_size", arg: 5, scope: !34, file: !1, line: 19, type: !44)
!55 = !DILocalVariable(name: "vli_pos_internal", scope: !34, file: !1, line: 22, type: !44)
!56 = distinct !DIAssignID()
!57 = !DILocation(line: 0, scope: !34)
!58 = !DILocation(line: 22, column: 2, scope: !34)
!59 = !DILocation(line: 22, column: 9, scope: !34)
!60 = distinct !DIAssignID()
!61 = !DILocation(line: 23, column: 14, scope: !62)
!62 = distinct !DILexicalBlock(scope: !34, file: !1, line: 23, column: 6)
!63 = !DILocation(line: 0, scope: !62)
!64 = !DILocation(line: 38, column: 6, scope: !65)
!65 = distinct !DILexicalBlock(scope: !34, file: !1, line: 38, column: 6)
!66 = !DILocation(line: 38, column: 15, scope: !65)
!67 = !DILocation(line: 38, column: 37, scope: !65)
!68 = !DILocation(line: 43, column: 19, scope: !34)
!69 = !DILocation(line: 43, column: 6, scope: !34)
!70 = !DILocation(line: 46, column: 2, scope: !34)
!71 = !DILocation(line: 46, column: 13, scope: !34)
!72 = !DILocation(line: 50, column: 3, scope: !73)
!73 = distinct !DILexicalBlock(scope: !34, file: !1, line: 46, column: 22)
!74 = !DILocation(line: 54, column: 19, scope: !73)
!75 = !DILocation(line: 54, column: 34, scope: !73)
!76 = !DILocation(line: 54, column: 3, scope: !73)
!77 = !DILocation(line: 54, column: 17, scope: !73)
!78 = !DILocation(line: 55, column: 7, scope: !73)
!79 = !DILocation(line: 57, column: 7, scope: !80)
!80 = distinct !DILexicalBlock(scope: !73, file: !1, line: 57, column: 7)
!81 = !DILocation(line: 57, column: 18, scope: !80)
!82 = !DILocation(line: 57, column: 7, scope: !73)
!83 = distinct !{!83, !70, !84}
!84 = !DILocation(line: 60, column: 2, scope: !34)
!85 = !DILocation(line: 58, column: 19, scope: !80)
!86 = !DILocation(line: 58, column: 11, scope: !80)
!87 = !DILocation(line: 58, column: 4, scope: !80)
!88 = !DILocation(line: 63, column: 18, scope: !34)
!89 = !DILocation(line: 63, column: 2, scope: !34)
!90 = !DILocation(line: 63, column: 16, scope: !34)
!91 = !DILocation(line: 64, column: 2, scope: !34)
!92 = !DILocation(line: 65, column: 2, scope: !34)
!93 = !DILocation(line: 67, column: 17, scope: !34)
!94 = !DILocation(line: 67, column: 9, scope: !34)
!95 = !DILocation(line: 67, column: 2, scope: !34)
!96 = !DILocation(line: 69, column: 1, scope: !34)
