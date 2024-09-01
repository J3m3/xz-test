; ModuleID = 'liblzma/common/filter_buffer_decoder.c'
source_filename = "liblzma/common/filter_buffer_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_raw_buffer_decode(ptr noundef %filters, ptr noundef %allocator, ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size, ptr noundef %out, ptr noundef %out_pos, i64 noundef %out_size) local_unnamed_addr #0 !dbg !45 {
entry:
  %next = alloca %struct.lzma_next_coder_s, align 8, !DIAssignID !153
    #dbg_assign(i1 undef, !94, !DIExpression(), !153, ptr %next, !DIExpression(), !154)
  %tmp = alloca [1 x i8], align 1, !DIAssignID !155
    #dbg_assign(i1 undef, !141, !DIExpression(), !155, ptr %tmp, !DIExpression(), !156)
  %tmp_pos = alloca i64, align 8, !DIAssignID !157
    #dbg_assign(i1 undef, !152, !DIExpression(), !157, ptr %tmp_pos, !DIExpression(), !156)
    #dbg_value(ptr %filters, !86, !DIExpression(), !154)
    #dbg_value(ptr %allocator, !87, !DIExpression(), !154)
    #dbg_value(ptr %in, !88, !DIExpression(), !154)
    #dbg_value(ptr %in_pos, !89, !DIExpression(), !154)
    #dbg_value(i64 %in_size, !90, !DIExpression(), !154)
    #dbg_value(ptr %out, !91, !DIExpression(), !154)
    #dbg_value(ptr %out_pos, !92, !DIExpression(), !154)
    #dbg_value(i64 %out_size, !93, !DIExpression(), !154)
  %cmp = icmp eq ptr %in, null, !dbg !158
  %cmp1 = icmp eq ptr %in_pos, null
  %or.cond = or i1 %cmp, %cmp1, !dbg !160
  br i1 %or.cond, label %return, label %lor.lhs.false2, !dbg !160

lor.lhs.false2:                                   ; preds = %entry
  %0 = load i64, ptr %in_pos, align 8, !dbg !161
  %cmp3 = icmp ugt i64 %0, %in_size, !dbg !162
  %cmp5 = icmp eq ptr %out, null
  %or.cond39 = or i1 %cmp5, %cmp3, !dbg !163
  %cmp7 = icmp eq ptr %out_pos, null
  %or.cond40 = or i1 %cmp7, %or.cond39, !dbg !163
  br i1 %or.cond40, label %return, label %lor.lhs.false8, !dbg !163

lor.lhs.false8:                                   ; preds = %lor.lhs.false2
  %1 = load i64, ptr %out_pos, align 8, !dbg !164
  %cmp9 = icmp ugt i64 %1, %out_size, !dbg !165
  br i1 %cmp9, label %return, label %if.end, !dbg !166

if.end:                                           ; preds = %lor.lhs.false8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %next) #4, !dbg !167
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %next, i8 0, i64 64, i1 false), !dbg !168, !DIAssignID !169
    #dbg_assign(i8 0, !94, !DIExpression(), !169, ptr %next, !DIExpression(), !154)
  %2 = getelementptr inbounds i8, ptr %next, i64 8, !dbg !168
  store i64 -1, ptr %2, align 8, !dbg !168, !DIAssignID !170
    #dbg_assign(i64 -1, !94, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !170, ptr %2, !DIExpression(), !154)
  %call = call i32 @lzma_raw_decoder_init(ptr noundef nonnull %next, ptr noundef %allocator, ptr noundef %filters) #4, !dbg !171
    #dbg_value(i32 %call, !134, !DIExpression(), !172)
  %cmp10.not = icmp eq i32 %call, 0, !dbg !173
  br i1 %cmp10.not, label %do.end, label %cleanup38

do.end:                                           ; preds = %if.end
  %3 = load i64, ptr %in_pos, align 8, !dbg !175
    #dbg_value(i64 %3, !137, !DIExpression(), !154)
  %4 = load i64, ptr %out_pos, align 8, !dbg !176
    #dbg_value(i64 %4, !139, !DIExpression(), !154)
  %code = getelementptr inbounds i8, ptr %next, i64 24, !dbg !177
  %5 = load ptr, ptr %code, align 8, !dbg !177
  %6 = load ptr, ptr %next, align 8, !dbg !178
  %call13 = call i32 %5(ptr noundef %6, ptr noundef %allocator, ptr noundef nonnull %in, ptr noundef nonnull %in_pos, i64 noundef %in_size, ptr noundef nonnull %out, ptr noundef nonnull %out_pos, i64 noundef %out_size, i32 noundef 3) #4, !dbg !179
    #dbg_value(i32 %call13, !140, !DIExpression(), !154)
  switch i32 %call13, label %if.end33 [
    i32 1, label %if.end34
    i32 0, label %if.then17
  ], !dbg !180

if.then17:                                        ; preds = %do.end
  %7 = load i64, ptr %in_pos, align 8, !dbg !181
  %cmp18.not = icmp eq i64 %7, %in_size, !dbg !182
  br i1 %cmp18.not, label %if.else20, label %if.end33, !dbg !183

if.else20:                                        ; preds = %if.then17
  %8 = load i64, ptr %out_pos, align 8, !dbg !184
  %cmp21.not = icmp eq i64 %8, %out_size, !dbg !185
  br i1 %cmp21.not, label %if.else23, label %if.end33, !dbg !186

if.else23:                                        ; preds = %if.else20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #4, !dbg !187
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_pos) #4, !dbg !188
  store i64 0, ptr %tmp_pos, align 8, !dbg !189, !DIAssignID !190
    #dbg_assign(i64 0, !152, !DIExpression(), !190, ptr %tmp_pos, !DIExpression(), !156)
  %9 = load ptr, ptr %code, align 8, !dbg !191
  %10 = load ptr, ptr %next, align 8, !dbg !192
  %call26 = call i32 %9(ptr noundef %10, ptr noundef %allocator, ptr noundef nonnull %in, ptr noundef nonnull %in_pos, i64 noundef %in_size, ptr noundef nonnull %tmp, ptr noundef nonnull %tmp_pos, i64 noundef 1, i32 noundef 3) #4, !dbg !193
  %11 = load i64, ptr %tmp_pos, align 8, !dbg !194
  %cmp27 = icmp eq i64 %11, 1, !dbg !196
  %. = select i1 %cmp27, i32 10, i32 9
    #dbg_value(i32 %., !140, !DIExpression(), !154)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_pos) #4, !dbg !197
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #4, !dbg !197
  br label %if.end33

if.end33:                                         ; preds = %if.else20, %if.then17, %do.end, %if.else23
  %ret.1 = phi i32 [ %., %if.else23 ], [ %call13, %do.end ], [ 10, %if.then17 ], [ 9, %if.else20 ], !dbg !154
    #dbg_value(i32 %ret.1, !140, !DIExpression(), !154)
  store i64 %3, ptr %in_pos, align 8, !dbg !198
  store i64 %4, ptr %out_pos, align 8, !dbg !199
  br label %if.end34

if.end34:                                         ; preds = %do.end, %if.end33
  %ret.2 = phi i32 [ %ret.1, %if.end33 ], [ 0, %do.end ], !dbg !200
    #dbg_value(i32 %ret.2, !140, !DIExpression(), !154)
  call void @lzma_next_end(ptr noundef nonnull %next, ptr noundef %allocator) #4, !dbg !201
  br label %cleanup38

cleanup38:                                        ; preds = %if.end, %if.end34
  %retval.1 = phi i32 [ %ret.2, %if.end34 ], [ %call, %if.end ], !dbg !154
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %next) #4, !dbg !202
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false2, %lor.lhs.false8, %cleanup38
  %retval.2 = phi i32 [ %retval.1, %cleanup38 ], [ 11, %lor.lhs.false8 ], [ 11, %lor.lhs.false2 ], [ 11, %entry ], !dbg !154
  ret i32 %retval.2, !dbg !202
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare !dbg !203 i32 @lzma_raw_decoder_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !208 void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !32, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "liblzma/common/filter_buffer_decoder.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "5878101ad3b22a907e2dd3f2b5d5de2e")
!2 = !{!3, !19, !25}
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
!32 = !{!33, !34}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !35, line: 90, baseType: !36)
!35 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!36 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!37 = !{i32 7, !"Dwarf Version", i32 5}
!38 = !{i32 2, !"Debug Info Version", i32 3}
!39 = !{i32 1, !"wchar_size", i32 4}
!40 = !{i32 8, !"PIC Level", i32 2}
!41 = !{i32 7, !"PIE Level", i32 2}
!42 = !{i32 7, !"uwtable", i32 2}
!43 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!44 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!45 = distinct !DISubprogram(name: "lzma_raw_buffer_decode", scope: !1, file: !1, line: 17, type: !46, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !85)
!46 = !DISubroutineType(types: !47)
!47 = !{!48, !49, !63, !78, !83, !71, !84, !83, !71}
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !52, line: 65, baseType: !53)
!52 = !DIFile(filename: "liblzma/api/lzma/filter.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !52, line: 43, size: 128, elements: !54)
!54 = !{!55, !62}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !53, file: !52, line: 54, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !57, line: 63, baseType: !58)
!57 = !DIFile(filename: "liblzma/api/lzma/vli.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !59, line: 27, baseType: !60)
!59 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !61, line: 45, baseType: !36)
!61 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!62 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !53, file: !52, line: 63, baseType: !33, size: 64, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !4, line: 403, baseType: !65)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 341, size: 192, elements: !66)
!66 = !{!67, !73, !77}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !65, file: !4, line: 376, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{!33, !33, !71, !71}
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !72, line: 18, baseType: !36)
!72 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!73 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !65, file: !4, line: 390, baseType: !74, size: 64, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DISubroutineType(types: !76)
!76 = !{null, !33, !33}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !65, file: !4, line: 401, baseType: !33, size: 64, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !59, line: 24, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !61, line: 38, baseType: !82)
!82 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!85 = !{!86, !87, !88, !89, !90, !91, !92, !93, !94, !134, !137, !139, !140, !141, !152}
!86 = !DILocalVariable(name: "filters", arg: 1, scope: !45, file: !1, line: 17, type: !49)
!87 = !DILocalVariable(name: "allocator", arg: 2, scope: !45, file: !1, line: 17, type: !63)
!88 = !DILocalVariable(name: "in", arg: 3, scope: !45, file: !1, line: 18, type: !78)
!89 = !DILocalVariable(name: "in_pos", arg: 4, scope: !45, file: !1, line: 18, type: !83)
!90 = !DILocalVariable(name: "in_size", arg: 5, scope: !45, file: !1, line: 18, type: !71)
!91 = !DILocalVariable(name: "out", arg: 6, scope: !45, file: !1, line: 19, type: !84)
!92 = !DILocalVariable(name: "out_pos", arg: 7, scope: !45, file: !1, line: 19, type: !83)
!93 = !DILocalVariable(name: "out_size", arg: 8, scope: !45, file: !1, line: 19, type: !71)
!94 = !DILocalVariable(name: "next", scope: !45, file: !1, line: 27, type: !95)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_next_coder", file: !96, line: 80, baseType: !97)
!96 = !DIFile(filename: "liblzma/common/common.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_next_coder_s", file: !96, line: 124, size: 512, elements: !98)
!98 = !{!99, !102, !103, !104, !113, !118, !125, !130}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !97, file: !96, line: 126, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_coder", file: !96, line: 78, baseType: null)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !97, file: !96, line: 130, baseType: !56, size: 64, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !97, file: !96, line: 136, baseType: !34, size: 64, offset: 128)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !97, file: !96, line: 139, baseType: !105, size: 64, offset: 192)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_code_function", file: !96, line: 94, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DISubroutineType(types: !108)
!108 = !{!48, !100, !63, !109, !110, !71, !111, !110, !71, !112}
!109 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !78)
!110 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !83)
!111 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !84)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !4, line: 322, baseType: !19)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !97, file: !96, line: 144, baseType: !114, size: 64, offset: 256)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_end_function", file: !96, line: 102, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{null, !100, !63}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "get_check", scope: !97, file: !96, line: 148, baseType: !119, size: 64, offset: 320)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DISubroutineType(types: !121)
!121 = !{!122, !123}
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !26, line: 55, baseType: !25)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "memconfig", scope: !97, file: !96, line: 152, baseType: !126, size: 64, offset: 384)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DISubroutineType(types: !128)
!128 = !{!48, !100, !129, !129, !58}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !97, file: !96, line: 157, baseType: !131, size: 64, offset: 448)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{!48, !100, !63, !49, !49}
!134 = !DILocalVariable(name: "ret_", scope: !135, file: !1, line: 28, type: !136)
!135 = distinct !DILexicalBlock(scope: !45, file: !1, line: 28, column: 2)
!136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!137 = !DILocalVariable(name: "in_start", scope: !45, file: !1, line: 32, type: !138)
!138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!139 = !DILocalVariable(name: "out_start", scope: !45, file: !1, line: 33, type: !138)
!140 = !DILocalVariable(name: "ret", scope: !45, file: !1, line: 36, type: !48)
!141 = !DILocalVariable(name: "tmp", scope: !142, file: !1, line: 66, type: !149)
!142 = distinct !DILexicalBlock(scope: !143, file: !1, line: 58, column: 11)
!143 = distinct !DILexicalBlock(scope: !144, file: !1, line: 53, column: 15)
!144 = distinct !DILexicalBlock(scope: !145, file: !1, line: 47, column: 8)
!145 = distinct !DILexicalBlock(scope: !146, file: !1, line: 42, column: 23)
!146 = distinct !DILexicalBlock(scope: !147, file: !1, line: 42, column: 7)
!147 = distinct !DILexicalBlock(scope: !148, file: !1, line: 41, column: 9)
!148 = distinct !DILexicalBlock(scope: !45, file: !1, line: 39, column: 6)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 8, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 1)
!152 = !DILocalVariable(name: "tmp_pos", scope: !142, file: !1, line: 67, type: !71)
!153 = distinct !DIAssignID()
!154 = !DILocation(line: 0, scope: !45)
!155 = distinct !DIAssignID()
!156 = !DILocation(line: 0, scope: !142)
!157 = distinct !DIAssignID()
!158 = !DILocation(line: 22, column: 9, scope: !159)
!159 = distinct !DILexicalBlock(scope: !45, file: !1, line: 22, column: 6)
!160 = !DILocation(line: 22, column: 17, scope: !159)
!161 = !DILocation(line: 22, column: 38, scope: !159)
!162 = !DILocation(line: 22, column: 46, scope: !159)
!163 = !DILocation(line: 22, column: 56, scope: !159)
!164 = !DILocation(line: 23, column: 26, scope: !159)
!165 = !DILocation(line: 23, column: 35, scope: !159)
!166 = !DILocation(line: 22, column: 6, scope: !45)
!167 = !DILocation(line: 27, column: 2, scope: !45)
!168 = !DILocation(line: 27, column: 18, scope: !45)
!169 = distinct !DIAssignID()
!170 = distinct !DIAssignID()
!171 = !DILocation(line: 28, column: 2, scope: !135)
!172 = !DILocation(line: 0, scope: !135)
!173 = !DILocation(line: 28, column: 2, scope: !174)
!174 = distinct !DILexicalBlock(scope: !135, file: !1, line: 28, column: 2)
!175 = !DILocation(line: 32, column: 26, scope: !45)
!176 = !DILocation(line: 33, column: 27, scope: !45)
!177 = !DILocation(line: 36, column: 22, scope: !45)
!178 = !DILocation(line: 36, column: 32, scope: !45)
!179 = !DILocation(line: 36, column: 17, scope: !45)
!180 = !DILocation(line: 39, column: 6, scope: !45)
!181 = !DILocation(line: 47, column: 8, scope: !144)
!182 = !DILocation(line: 47, column: 16, scope: !144)
!183 = !DILocation(line: 47, column: 8, scope: !145)
!184 = !DILocation(line: 53, column: 15, scope: !143)
!185 = !DILocation(line: 53, column: 24, scope: !143)
!186 = !DILocation(line: 53, column: 15, scope: !144)
!187 = !DILocation(line: 66, column: 5, scope: !142)
!188 = !DILocation(line: 67, column: 5, scope: !142)
!189 = !DILocation(line: 67, column: 12, scope: !142)
!190 = distinct !DIAssignID()
!191 = !DILocation(line: 68, column: 16, scope: !142)
!192 = !DILocation(line: 68, column: 26, scope: !142)
!193 = !DILocation(line: 68, column: 11, scope: !142)
!194 = !DILocation(line: 72, column: 9, scope: !195)
!195 = distinct !DILexicalBlock(scope: !142, file: !1, line: 72, column: 9)
!196 = !DILocation(line: 72, column: 17, scope: !195)
!197 = !DILocation(line: 76, column: 4, scope: !143)
!198 = !DILocation(line: 80, column: 11, scope: !147)
!199 = !DILocation(line: 81, column: 12, scope: !147)
!200 = !DILocation(line: 0, scope: !148)
!201 = !DILocation(line: 84, column: 2, scope: !45)
!202 = !DILocation(line: 87, column: 1, scope: !45)
!203 = !DISubprogram(name: "lzma_raw_decoder_init", scope: !204, file: !204, line: 19, type: !205, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!204 = !DIFile(filename: "liblzma/common/filter_decoder.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "eb6564ac887b86e116dfd99078c48b83")
!205 = !DISubroutineType(types: !206)
!206 = !{!48, !207, !63, !49}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!208 = !DISubprogram(name: "lzma_next_end", scope: !96, file: !96, line: 237, type: !209, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!209 = !DISubroutineType(types: !210)
!210 = !{null, !207, !63}
