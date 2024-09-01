; ModuleID = 'liblzma/common/filter_buffer_encoder.c'
source_filename = "liblzma/common/filter_buffer_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_raw_buffer_encode(ptr noundef %filters, ptr noundef %allocator, ptr noundef %in, i64 noundef %in_size, ptr noundef %out, ptr noundef %out_pos, i64 noundef %out_size) local_unnamed_addr #0 !dbg !45 {
entry:
  %next = alloca %struct.lzma_next_coder_s, align 8, !DIAssignID !140
    #dbg_assign(i1 undef, !93, !DIExpression(), !140, ptr %next, !DIExpression(), !141)
  %in_pos = alloca i64, align 8, !DIAssignID !142
    #dbg_assign(i1 undef, !138, !DIExpression(), !142, ptr %in_pos, !DIExpression(), !141)
    #dbg_value(ptr %filters, !86, !DIExpression(), !141)
    #dbg_value(ptr %allocator, !87, !DIExpression(), !141)
    #dbg_value(ptr %in, !88, !DIExpression(), !141)
    #dbg_value(i64 %in_size, !89, !DIExpression(), !141)
    #dbg_value(ptr %out, !90, !DIExpression(), !141)
    #dbg_value(ptr %out_pos, !91, !DIExpression(), !141)
    #dbg_value(i64 %out_size, !92, !DIExpression(), !141)
  %cmp = icmp eq ptr %in, null, !dbg !143
  %cmp1 = icmp ne i64 %in_size, 0
  %or.cond = and i1 %cmp, %cmp1, !dbg !145
  %cmp2 = icmp eq ptr %out, null
  %or.cond21 = or i1 %or.cond, %cmp2, !dbg !145
  %cmp4 = icmp eq ptr %out_pos, null
  %or.cond22 = or i1 %or.cond21, %cmp4, !dbg !145
  br i1 %or.cond22, label %return, label %lor.lhs.false5, !dbg !145

lor.lhs.false5:                                   ; preds = %entry
  %0 = load i64, ptr %out_pos, align 8, !dbg !146
  %cmp6 = icmp ugt i64 %0, %out_size, !dbg !147
  br i1 %cmp6, label %return, label %if.end, !dbg !148

if.end:                                           ; preds = %lor.lhs.false5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %next) #4, !dbg !149
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %next, i8 0, i64 64, i1 false), !dbg !150, !DIAssignID !151
    #dbg_assign(i8 0, !93, !DIExpression(), !151, ptr %next, !DIExpression(), !141)
  %1 = getelementptr inbounds i8, ptr %next, i64 8, !dbg !150
  store i64 -1, ptr %1, align 8, !dbg !150, !DIAssignID !152
    #dbg_assign(i64 -1, !93, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !152, ptr %1, !DIExpression(), !141)
  %call = call i32 @lzma_raw_encoder_init(ptr noundef nonnull %next, ptr noundef %allocator, ptr noundef %filters) #4, !dbg !153
    #dbg_value(i32 %call, !133, !DIExpression(), !154)
  %cmp7.not = icmp eq i32 %call, 0, !dbg !155
  br i1 %cmp7.not, label %do.end, label %cleanup20

do.end:                                           ; preds = %if.end
  %2 = load i64, ptr %out_pos, align 8, !dbg !157
    #dbg_value(i64 %2, !136, !DIExpression(), !141)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %in_pos) #4, !dbg !158
  store i64 0, ptr %in_pos, align 8, !dbg !159, !DIAssignID !160
    #dbg_assign(i64 0, !138, !DIExpression(), !160, ptr %in_pos, !DIExpression(), !141)
  %code = getelementptr inbounds i8, ptr %next, i64 24, !dbg !161
  %3 = load ptr, ptr %code, align 8, !dbg !161
  %4 = load ptr, ptr %next, align 8, !dbg !162
  %call10 = call i32 %3(ptr noundef %4, ptr noundef %allocator, ptr noundef %in, ptr noundef nonnull %in_pos, i64 noundef %in_size, ptr noundef nonnull %out, ptr noundef nonnull %out_pos, i64 noundef %out_size, i32 noundef 3) #4, !dbg !163
    #dbg_value(i32 %call10, !139, !DIExpression(), !141)
  call void @lzma_next_end(ptr noundef nonnull %next, ptr noundef %allocator) #4, !dbg !164
  %cmp11 = icmp eq i32 %call10, 1, !dbg !165
  br i1 %cmp11, label %if.end16, label %if.else, !dbg !167

if.else:                                          ; preds = %do.end
  %cmp13 = icmp eq i32 %call10, 0, !dbg !168
  %spec.store.select = select i1 %cmp13, i32 10, i32 %call10, !dbg !171
    #dbg_value(i32 %spec.store.select, !139, !DIExpression(), !141)
  store i64 %2, ptr %out_pos, align 8, !dbg !172
  br label %if.end16

if.end16:                                         ; preds = %do.end, %if.else
  %ret.0 = phi i32 [ %spec.store.select, %if.else ], [ 0, %do.end ], !dbg !173
    #dbg_value(i32 %ret.0, !139, !DIExpression(), !141)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in_pos) #4, !dbg !174
  br label %cleanup20

cleanup20:                                        ; preds = %if.end, %if.end16
  %retval.1 = phi i32 [ %ret.0, %if.end16 ], [ %call, %if.end ], !dbg !141
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %next) #4, !dbg !174
  br label %return

return:                                           ; preds = %lor.lhs.false5, %entry, %cleanup20
  %retval.2 = phi i32 [ %retval.1, %cleanup20 ], [ 11, %entry ], [ 11, %lor.lhs.false5 ], !dbg !141
  ret i32 %retval.2, !dbg !174
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare !dbg !175 i32 @lzma_raw_encoder_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !180 void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !32, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "liblzma/common/filter_buffer_encoder.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "0998afbb91f47ff68f6e2b95ba048706")
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
!45 = distinct !DISubprogram(name: "lzma_raw_buffer_encode", scope: !1, file: !1, line: 17, type: !46, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !85)
!46 = !DISubroutineType(types: !47)
!47 = !{!48, !49, !63, !78, !71, !83, !84, !71}
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
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!85 = !{!86, !87, !88, !89, !90, !91, !92, !93, !133, !136, !138, !139}
!86 = !DILocalVariable(name: "filters", arg: 1, scope: !45, file: !1, line: 17, type: !49)
!87 = !DILocalVariable(name: "allocator", arg: 2, scope: !45, file: !1, line: 17, type: !63)
!88 = !DILocalVariable(name: "in", arg: 3, scope: !45, file: !1, line: 18, type: !78)
!89 = !DILocalVariable(name: "in_size", arg: 4, scope: !45, file: !1, line: 18, type: !71)
!90 = !DILocalVariable(name: "out", arg: 5, scope: !45, file: !1, line: 18, type: !83)
!91 = !DILocalVariable(name: "out_pos", arg: 6, scope: !45, file: !1, line: 19, type: !84)
!92 = !DILocalVariable(name: "out_size", arg: 7, scope: !45, file: !1, line: 19, type: !71)
!93 = !DILocalVariable(name: "next", scope: !45, file: !1, line: 27, type: !94)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_next_coder", file: !95, line: 80, baseType: !96)
!95 = !DIFile(filename: "liblzma/common/common.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_next_coder_s", file: !95, line: 124, size: 512, elements: !97)
!97 = !{!98, !101, !102, !103, !112, !117, !124, !129}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !96, file: !95, line: 126, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_coder", file: !95, line: 78, baseType: null)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !96, file: !95, line: 130, baseType: !56, size: 64, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !96, file: !95, line: 136, baseType: !34, size: 64, offset: 128)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !96, file: !95, line: 139, baseType: !104, size: 64, offset: 192)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_code_function", file: !95, line: 94, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DISubroutineType(types: !107)
!107 = !{!48, !99, !63, !108, !109, !71, !110, !109, !71, !111}
!108 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !78)
!109 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !84)
!110 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !83)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !4, line: 322, baseType: !19)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !96, file: !95, line: 144, baseType: !113, size: 64, offset: 256)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_end_function", file: !95, line: 102, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DISubroutineType(types: !116)
!116 = !{null, !99, !63}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "get_check", scope: !96, file: !95, line: 148, baseType: !118, size: 64, offset: 320)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DISubroutineType(types: !120)
!120 = !{!121, !122}
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !26, line: 55, baseType: !25)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "memconfig", scope: !96, file: !95, line: 152, baseType: !125, size: 64, offset: 384)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!48, !99, !128, !128, !58}
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !96, file: !95, line: 157, baseType: !130, size: 64, offset: 448)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{!48, !99, !63, !49, !49}
!133 = !DILocalVariable(name: "ret_", scope: !134, file: !1, line: 28, type: !135)
!134 = distinct !DILexicalBlock(scope: !45, file: !1, line: 28, column: 2)
!135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!136 = !DILocalVariable(name: "out_start", scope: !45, file: !1, line: 32, type: !137)
!137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!138 = !DILocalVariable(name: "in_pos", scope: !45, file: !1, line: 35, type: !71)
!139 = !DILocalVariable(name: "ret", scope: !45, file: !1, line: 36, type: !48)
!140 = distinct !DIAssignID()
!141 = !DILocation(line: 0, scope: !45)
!142 = distinct !DIAssignID()
!143 = !DILocation(line: 22, column: 10, scope: !144)
!144 = distinct !DILexicalBlock(scope: !45, file: !1, line: 22, column: 6)
!145 = !DILocation(line: 22, column: 18, scope: !144)
!146 = !DILocation(line: 23, column: 26, scope: !144)
!147 = !DILocation(line: 23, column: 35, scope: !144)
!148 = !DILocation(line: 22, column: 6, scope: !45)
!149 = !DILocation(line: 27, column: 2, scope: !45)
!150 = !DILocation(line: 27, column: 18, scope: !45)
!151 = distinct !DIAssignID()
!152 = distinct !DIAssignID()
!153 = !DILocation(line: 28, column: 2, scope: !134)
!154 = !DILocation(line: 0, scope: !134)
!155 = !DILocation(line: 28, column: 2, scope: !156)
!156 = distinct !DILexicalBlock(scope: !134, file: !1, line: 28, column: 2)
!157 = !DILocation(line: 32, column: 27, scope: !45)
!158 = !DILocation(line: 35, column: 2, scope: !45)
!159 = !DILocation(line: 35, column: 9, scope: !45)
!160 = distinct !DIAssignID()
!161 = !DILocation(line: 36, column: 22, scope: !45)
!162 = !DILocation(line: 36, column: 32, scope: !45)
!163 = !DILocation(line: 36, column: 17, scope: !45)
!164 = !DILocation(line: 38, column: 2, scope: !45)
!165 = !DILocation(line: 40, column: 10, scope: !166)
!166 = distinct !DILexicalBlock(scope: !45, file: !1, line: 40, column: 6)
!167 = !DILocation(line: 40, column: 6, scope: !45)
!168 = !DILocation(line: 43, column: 11, scope: !169)
!169 = distinct !DILexicalBlock(scope: !170, file: !1, line: 43, column: 7)
!170 = distinct !DILexicalBlock(scope: !166, file: !1, line: 42, column: 9)
!171 = !DILocation(line: 43, column: 7, scope: !170)
!172 = !DILocation(line: 50, column: 12, scope: !170)
!173 = !DILocation(line: 0, scope: !166)
!174 = !DILocation(line: 54, column: 1, scope: !45)
!175 = !DISubprogram(name: "lzma_raw_encoder_init", scope: !176, file: !176, line: 23, type: !177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!176 = !DIFile(filename: "liblzma/common/filter_encoder.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "ddc4c6a58369644501ee0eefd7b6bf8f")
!177 = !DISubroutineType(types: !178)
!178 = !{!48, !179, !63, !49}
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!180 = !DISubprogram(name: "lzma_next_end", scope: !95, file: !95, line: 237, type: !181, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!181 = !DISubroutineType(types: !182)
!182 = !{null, !179, !63}
