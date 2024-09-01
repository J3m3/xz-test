; ModuleID = 'liblzma/delta/delta_common.c'
source_filename = "liblzma/delta/delta_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_delta_coder_init(ptr nocapture noundef %next, ptr noundef %allocator, ptr noundef %filters) local_unnamed_addr #0 !dbg !136 {
entry:
    #dbg_value(ptr %next, !151, !DIExpression(), !171)
    #dbg_value(ptr %allocator, !152, !DIExpression(), !171)
    #dbg_value(ptr %filters, !153, !DIExpression(), !171)
  %0 = load ptr, ptr %next, align 8, !dbg !172
  %cmp = icmp eq ptr %0, null, !dbg !174
  br i1 %cmp, label %if.then, label %if.end9, !dbg !175

if.then:                                          ; preds = %entry
  %call = tail call ptr @lzma_alloc(i64 noundef 336, ptr noundef %allocator) #4, !dbg !176
  store ptr %call, ptr %next, align 8, !dbg !178
  %cmp3 = icmp eq ptr %call, null, !dbg !179
  br i1 %cmp3, label %return, label %if.end, !dbg !181

if.end:                                           ; preds = %if.then
  %end = getelementptr inbounds i8, ptr %next, i64 32, !dbg !182
  store ptr @delta_coder_end, ptr %end, align 8, !dbg !183
  store ptr null, ptr %call, align 8, !dbg !184
  %.compoundliteral.sroa.2.0.next6.sroa_idx = getelementptr inbounds i8, ptr %call, i64 8, !dbg !184
  store i64 -1, ptr %.compoundliteral.sroa.2.0.next6.sroa_idx, align 8, !dbg !184
  %.compoundliteral.sroa.3.0.next6.sroa_idx = getelementptr inbounds i8, ptr %call, i64 16, !dbg !184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.compoundliteral.sroa.3.0.next6.sroa_idx, i8 0, i64 48, i1 false), !dbg !184
  br label %if.end9, !dbg !185

if.end9:                                          ; preds = %if.end, %entry
  %options = getelementptr inbounds i8, ptr %filters, i64 16, !dbg !186
  %1 = load ptr, ptr %options, align 8, !dbg !186
    #dbg_value(ptr %1, !188, !DIExpression(), !196)
    #dbg_value(ptr %1, !195, !DIExpression(), !196)
  %cmp.i = icmp eq ptr %1, null, !dbg !198
  br i1 %cmp.i, label %return, label %lor.lhs.false.i, !dbg !200

lor.lhs.false.i:                                  ; preds = %if.end9
  %2 = load i32, ptr %1, align 8, !dbg !201
  %cmp1.not.i = icmp eq i32 %2, 0, !dbg !202
  br i1 %cmp1.not.i, label %lor.lhs.false2.i, label %return, !dbg !203

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %dist.i = getelementptr inbounds i8, ptr %1, i64 4, !dbg !204
  %3 = load i32, ptr %dist.i, align 4, !dbg !204
  %4 = add i32 %3, -257, !dbg !205
  %or.cond.i = icmp ult i32 %4, -256, !dbg !205
  br i1 %or.cond.i, label %return, label %if.end13, !dbg !205

if.end13:                                         ; preds = %lor.lhs.false2.i
    #dbg_value(ptr %1, !154, !DIExpression(), !171)
  %conv = zext nneg i32 %3 to i64, !dbg !206
  %5 = load ptr, ptr %next, align 8, !dbg !207
  %distance = getelementptr inbounds i8, ptr %5, i64 64, !dbg !208
  store i64 %conv, ptr %distance, align 8, !dbg !209
  %6 = load ptr, ptr %next, align 8, !dbg !210
  %pos = getelementptr inbounds i8, ptr %6, i64 72, !dbg !211
  store i8 0, ptr %pos, align 8, !dbg !212
  %7 = load ptr, ptr %next, align 8, !dbg !213
  %history = getelementptr inbounds i8, ptr %7, i64 73, !dbg !213
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %history, i8 0, i64 256, i1 false), !dbg !213
  %8 = load ptr, ptr %next, align 8, !dbg !214
  %add.ptr = getelementptr inbounds i8, ptr %filters, i64 24, !dbg !215
  %call21 = tail call i32 @lzma_next_filter_init(ptr noundef %8, ptr noundef %allocator, ptr noundef nonnull %add.ptr) #4, !dbg !216
  br label %return

return:                                           ; preds = %lor.lhs.false2.i, %if.end9, %lor.lhs.false.i, %if.then, %if.end13
  %retval.0 = phi i32 [ %call21, %if.end13 ], [ 5, %if.then ], [ 8, %lor.lhs.false.i ], [ 8, %if.end9 ], [ 8, %lor.lhs.false2.i ], !dbg !171
  ret i32 %retval.0, !dbg !217
}

declare !dbg !218 ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @delta_coder_end(ptr noundef %pcoder, ptr noundef %allocator) #0 !dbg !221 {
entry:
    #dbg_value(ptr %pcoder, !223, !DIExpression(), !226)
    #dbg_value(ptr %allocator, !224, !DIExpression(), !226)
    #dbg_value(ptr %pcoder, !225, !DIExpression(), !226)
  tail call void @lzma_next_end(ptr noundef %pcoder, ptr noundef %allocator) #4, !dbg !227
  tail call void @lzma_free(ptr noundef %pcoder, ptr noundef %allocator) #4, !dbg !228
  ret void, !dbg !229
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 -1, 337) i64 @lzma_delta_coder_memusage(ptr noundef readonly %options) local_unnamed_addr #3 !dbg !189 {
entry:
    #dbg_value(ptr %options, !188, !DIExpression(), !230)
    #dbg_value(ptr %options, !195, !DIExpression(), !230)
  %cmp = icmp eq ptr %options, null, !dbg !231
  br i1 %cmp, label %cleanup, label %lor.lhs.false, !dbg !232

lor.lhs.false:                                    ; preds = %entry
  %0 = load i32, ptr %options, align 8, !dbg !233
  %cmp1.not = icmp eq i32 %0, 0, !dbg !234
  br i1 %cmp1.not, label %lor.lhs.false2, label %cleanup, !dbg !235

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %dist = getelementptr inbounds i8, ptr %options, i64 4, !dbg !236
  %1 = load i32, ptr %dist, align 4, !dbg !236
  %2 = add i32 %1, -257, !dbg !237
  %or.cond = icmp ult i32 %2, -256, !dbg !237
  %spec.select = select i1 %or.cond, i64 -1, i64 336, !dbg !237
  br label %cleanup, !dbg !237

cleanup:                                          ; preds = %lor.lhs.false2, %entry, %lor.lhs.false
  %retval.0 = phi i64 [ -1, %lor.lhs.false ], [ -1, %entry ], [ %spec.select, %lor.lhs.false2 ], !dbg !230
  ret i64 %retval.0, !dbg !238
}

declare !dbg !239 i32 @lzma_next_filter_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !240 void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !243 void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!128, !129, !130, !131, !132, !133, !134}
!llvm.ident = !{!135}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !36, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "liblzma/delta/delta_common.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "3f3bd7ade0eb539d460740f0c907babd")
!2 = !{!3, !19, !25, !32}
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
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 250, baseType: !5, size: 32, elements: !20)
!20 = !{!21, !22, !23, !24}
!21 = !DIEnumerator(name: "LZMA_RUN", value: 0)
!22 = !DIEnumerator(name: "LZMA_SYNC_FLUSH", value: 1)
!23 = !DIEnumerator(name: "LZMA_FULL_FLUSH", value: 2)
!24 = !DIEnumerator(name: "LZMA_FINISH", value: 3)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !26, line: 27, baseType: !5, size: 32, elements: !27)
!26 = !DIFile(filename: "liblzma/api/lzma/check.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "b07c3297e2bcc14bb477793d08325ee3")
!27 = !{!28, !29, !30, !31}
!28 = !DIEnumerator(name: "LZMA_CHECK_NONE", value: 0)
!29 = !DIEnumerator(name: "LZMA_CHECK_CRC32", value: 1)
!30 = !DIEnumerator(name: "LZMA_CHECK_CRC64", value: 4)
!31 = !DIEnumerator(name: "LZMA_CHECK_SHA256", value: 10)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !33, line: 35, baseType: !5, size: 32, elements: !34)
!33 = !DIFile(filename: "liblzma/api/lzma/delta.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "397cde14a8f4a544385c9c6ecc7e0cc9")
!34 = !{!35}
!35 = !DIEnumerator(name: "LZMA_DELTA_TYPE_BYTE", value: 0)
!36 = !{!37, !38}
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_coder_s", file: !40, line: 18, size: 2688, elements: !41)
!40 = !DIFile(filename: "liblzma/delta/delta_private.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "41e9aeb6bf08fbe16153633c0856b3a7")
!41 = !{!42, !122, !123, !124}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !39, file: !40, line: 20, baseType: !43, size: 512)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_next_coder", file: !44, line: 80, baseType: !45)
!44 = !DIFile(filename: "liblzma/common/common.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_next_coder_s", file: !44, line: 124, size: 512, elements: !46)
!46 = !{!47, !50, !58, !61, !93, !98, !105, !110}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !45, file: !44, line: 126, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_coder", file: !44, line: 78, baseType: null)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !45, file: !44, line: 130, baseType: !51, size: 64, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !52, line: 63, baseType: !53)
!52 = !DIFile(filename: "liblzma/api/lzma/vli.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !54, line: 27, baseType: !55)
!54 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !56, line: 45, baseType: !57)
!56 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!57 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !45, file: !44, line: 136, baseType: !59, size: 64, offset: 128)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !60, line: 90, baseType: !57)
!60 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!61 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !45, file: !44, line: 139, baseType: !62, size: 64, offset: 192)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_code_function", file: !44, line: 94, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DISubroutineType(types: !65)
!65 = !{!66, !48, !67, !82, !88, !75, !90, !88, !75, !92}
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !4, line: 403, baseType: !69)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 341, size: 192, elements: !70)
!70 = !{!71, !77, !81}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !69, file: !4, line: 376, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DISubroutineType(types: !74)
!74 = !{!37, !37, !75, !75}
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !76, line: 18, baseType: !57)
!76 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!77 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !69, file: !4, line: 390, baseType: !78, size: 64, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DISubroutineType(types: !80)
!80 = !{null, !37, !37}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !69, file: !4, line: 401, baseType: !37, size: 64, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !54, line: 24, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !56, line: 38, baseType: !87)
!87 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!88 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !4, line: 322, baseType: !19)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !45, file: !44, line: 144, baseType: !94, size: 64, offset: 256)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_end_function", file: !44, line: 102, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DISubroutineType(types: !97)
!97 = !{null, !48, !67}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "get_check", scope: !45, file: !44, line: 148, baseType: !99, size: 64, offset: 320)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DISubroutineType(types: !101)
!101 = !{!102, !103}
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !26, line: 55, baseType: !25)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "memconfig", scope: !45, file: !44, line: 152, baseType: !106, size: 64, offset: 384)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DISubroutineType(types: !108)
!108 = !{!66, !48, !109, !109, !53}
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !45, file: !44, line: 157, baseType: !111, size: 64, offset: 448)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{!66, !48, !67, !114, !114}
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !117, line: 65, baseType: !118)
!117 = !DIFile(filename: "liblzma/api/lzma/filter.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !117, line: 43, size: 128, elements: !119)
!119 = !{!120, !121}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !118, file: !117, line: 54, baseType: !51, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !118, file: !117, line: 63, baseType: !37, size: 64, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "distance", scope: !39, file: !40, line: 23, baseType: !75, size: 64, offset: 512)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !39, file: !40, line: 26, baseType: !85, size: 8, offset: 576)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "history", scope: !39, file: !40, line: 29, baseType: !125, size: 2048, offset: 584)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 2048, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 256)
!128 = !{i32 7, !"Dwarf Version", i32 5}
!129 = !{i32 2, !"Debug Info Version", i32 3}
!130 = !{i32 1, !"wchar_size", i32 4}
!131 = !{i32 8, !"PIC Level", i32 2}
!132 = !{i32 7, !"PIE Level", i32 2}
!133 = !{i32 7, !"uwtable", i32 2}
!134 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!135 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!136 = distinct !DISubprogram(name: "lzma_delta_coder_init", scope: !1, file: !1, line: 28, type: !137, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !150)
!137 = !DISubroutineType(types: !138)
!138 = !{!66, !139, !67, !140}
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter_info", file: !44, line: 82, baseType: !143)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_filter_info_s", file: !44, line: 109, size: 192, elements: !144)
!144 = !{!145, !146, !149}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !143, file: !44, line: 112, baseType: !51, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !143, file: !44, line: 116, baseType: !147, size: 64, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_init_function", file: !44, line: 86, baseType: !148)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !143, file: !44, line: 119, baseType: !37, size: 64, offset: 128)
!150 = !{!151, !152, !153, !154}
!151 = !DILocalVariable(name: "next", arg: 1, scope: !136, file: !1, line: 28, type: !139)
!152 = !DILocalVariable(name: "allocator", arg: 2, scope: !136, file: !1, line: 28, type: !67)
!153 = !DILocalVariable(name: "filters", arg: 3, scope: !136, file: !1, line: 29, type: !140)
!154 = !DILocalVariable(name: "opt", scope: !136, file: !1, line: 47, type: !155)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_options_delta", file: !33, line: 77, baseType: !158)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !33, line: 45, size: 320, elements: !159)
!159 = !{!160, !162, !165, !166, !167, !168, !169, !170}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !158, file: !33, line: 47, baseType: !161, size: 32)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_delta_type", file: !33, line: 37, baseType: !32)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "dist", scope: !158, file: !33, line: 59, baseType: !163, size: 32, offset: 32)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !54, line: 26, baseType: !164)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !56, line: 42, baseType: !5)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !158, file: !33, line: 70, baseType: !163, size: 32, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !158, file: !33, line: 71, baseType: !163, size: 32, offset: 96)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !158, file: !33, line: 72, baseType: !163, size: 32, offset: 128)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !158, file: !33, line: 73, baseType: !163, size: 32, offset: 160)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !158, file: !33, line: 74, baseType: !37, size: 64, offset: 192)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !158, file: !33, line: 75, baseType: !37, size: 64, offset: 256)
!171 = !DILocation(line: 0, scope: !136)
!172 = !DILocation(line: 32, column: 12, scope: !173)
!173 = distinct !DILexicalBlock(scope: !136, file: !1, line: 32, column: 6)
!174 = !DILocation(line: 32, column: 18, scope: !173)
!175 = !DILocation(line: 32, column: 6, scope: !136)
!176 = !DILocation(line: 33, column: 17, scope: !177)
!177 = distinct !DILexicalBlock(scope: !173, file: !1, line: 32, column: 27)
!178 = !DILocation(line: 33, column: 15, scope: !177)
!179 = !DILocation(line: 34, column: 19, scope: !180)
!180 = distinct !DILexicalBlock(scope: !177, file: !1, line: 34, column: 7)
!181 = !DILocation(line: 34, column: 7, scope: !177)
!182 = !DILocation(line: 38, column: 9, scope: !177)
!183 = !DILocation(line: 38, column: 13, scope: !177)
!184 = !DILocation(line: 39, column: 47, scope: !177)
!185 = !DILocation(line: 40, column: 2, scope: !177)
!186 = !DILocation(line: 43, column: 43, scope: !187)
!187 = distinct !DILexicalBlock(scope: !136, file: !1, line: 43, column: 6)
!188 = !DILocalVariable(name: "options", arg: 1, scope: !189, file: !1, line: 61, type: !192)
!189 = distinct !DISubprogram(name: "lzma_delta_coder_memusage", scope: !1, file: !1, line: 61, type: !190, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !194)
!190 = !DISubroutineType(types: !191)
!191 = !{!53, !192}
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!194 = !{!188, !195}
!195 = !DILocalVariable(name: "opt", scope: !189, file: !1, line: 63, type: !155)
!196 = !DILocation(line: 0, scope: !189, inlinedAt: !197)
!197 = distinct !DILocation(line: 43, column: 6, scope: !187)
!198 = !DILocation(line: 65, column: 10, scope: !199, inlinedAt: !197)
!199 = distinct !DILexicalBlock(scope: !189, file: !1, line: 65, column: 6)
!200 = !DILocation(line: 65, column: 18, scope: !199, inlinedAt: !197)
!201 = !DILocation(line: 65, column: 26, scope: !199, inlinedAt: !197)
!202 = !DILocation(line: 65, column: 31, scope: !199, inlinedAt: !197)
!203 = !DILocation(line: 66, column: 4, scope: !199, inlinedAt: !197)
!204 = !DILocation(line: 66, column: 12, scope: !199, inlinedAt: !197)
!205 = !DILocation(line: 67, column: 4, scope: !199, inlinedAt: !197)
!206 = !DILocation(line: 48, column: 50, scope: !136)
!207 = !DILocation(line: 48, column: 31, scope: !136)
!208 = !DILocation(line: 48, column: 39, scope: !136)
!209 = !DILocation(line: 48, column: 48, scope: !136)
!210 = !DILocation(line: 51, column: 31, scope: !136)
!211 = !DILocation(line: 51, column: 39, scope: !136)
!212 = !DILocation(line: 51, column: 43, scope: !136)
!213 = !DILocation(line: 52, column: 2, scope: !136)
!214 = !DILocation(line: 55, column: 61, scope: !136)
!215 = !DILocation(line: 56, column: 23, scope: !136)
!216 = !DILocation(line: 55, column: 9, scope: !136)
!217 = !DILocation(line: 57, column: 1, scope: !136)
!218 = !DISubprogram(name: "lzma_alloc", scope: !44, file: !44, line: 211, type: !219, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!219 = !DISubroutineType(types: !220)
!220 = !{!37, !75, !67}
!221 = distinct !DISubprogram(name: "delta_coder_end", scope: !1, file: !1, line: 18, type: !96, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !222)
!222 = !{!223, !224, !225}
!223 = !DILocalVariable(name: "pcoder", arg: 1, scope: !221, file: !1, line: 18, type: !48)
!224 = !DILocalVariable(name: "allocator", arg: 2, scope: !221, file: !1, line: 18, type: !67)
!225 = !DILocalVariable(name: "coder", scope: !221, file: !1, line: 20, type: !38)
!226 = !DILocation(line: 0, scope: !221)
!227 = !DILocation(line: 21, column: 2, scope: !221)
!228 = !DILocation(line: 22, column: 2, scope: !221)
!229 = !DILocation(line: 24, column: 1, scope: !221)
!230 = !DILocation(line: 0, scope: !189)
!231 = !DILocation(line: 65, column: 10, scope: !199)
!232 = !DILocation(line: 65, column: 18, scope: !199)
!233 = !DILocation(line: 65, column: 26, scope: !199)
!234 = !DILocation(line: 65, column: 31, scope: !199)
!235 = !DILocation(line: 66, column: 4, scope: !199)
!236 = !DILocation(line: 66, column: 12, scope: !199)
!237 = !DILocation(line: 67, column: 4, scope: !199)
!238 = !DILocation(line: 71, column: 1, scope: !189)
!239 = !DISubprogram(name: "lzma_next_filter_init", scope: !44, file: !44, line: 226, type: !137, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!240 = !DISubprogram(name: "lzma_next_end", scope: !44, file: !44, line: 237, type: !241, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!241 = !DISubroutineType(types: !242)
!242 = !{null, !139, !67}
!243 = !DISubprogram(name: "lzma_free", scope: !44, file: !44, line: 215, type: !244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!244 = !DISubroutineType(types: !245)
!245 = !{null, !37, !67}
