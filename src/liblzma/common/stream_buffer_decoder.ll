; ModuleID = 'liblzma/common/stream_buffer_decoder.c'
source_filename = "liblzma/common/stream_buffer_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_stream_buffer_decode(ptr noundef %memlimit, i32 noundef %flags, ptr noundef %allocator, ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size, ptr noundef %out, ptr noundef %out_pos, i64 noundef %out_size) local_unnamed_addr #0 !dbg !45 {
entry:
  %stream_decoder = alloca %struct.lzma_next_coder_s, align 8, !DIAssignID !149
    #dbg_assign(i1 undef, !88, !DIExpression(), !149, ptr %stream_decoder, !DIExpression(), !150)
  %memusage = alloca i64, align 8, !DIAssignID !151
    #dbg_assign(i1 undef, !143, !DIExpression(), !151, ptr %memusage, !DIExpression(), !152)
    #dbg_value(ptr %memlimit, !79, !DIExpression(), !150)
    #dbg_value(i32 %flags, !80, !DIExpression(), !150)
    #dbg_value(ptr %allocator, !81, !DIExpression(), !150)
    #dbg_value(ptr %in, !82, !DIExpression(), !150)
    #dbg_value(ptr %in_pos, !83, !DIExpression(), !150)
    #dbg_value(i64 %in_size, !84, !DIExpression(), !150)
    #dbg_value(ptr %out, !85, !DIExpression(), !150)
    #dbg_value(ptr %out_pos, !86, !DIExpression(), !150)
    #dbg_value(i64 %out_size, !87, !DIExpression(), !150)
  %cmp = icmp eq ptr %in_pos, null, !dbg !153
  br i1 %cmp, label %return, label %lor.lhs.false, !dbg !155

lor.lhs.false:                                    ; preds = %entry
  %cmp1 = icmp ne ptr %in, null, !dbg !156
  %.pre = load i64, ptr %in_pos, align 8, !dbg !157
  %cmp2.not = icmp eq i64 %.pre, %in_size
  %or.cond63 = select i1 %cmp1, i1 true, i1 %cmp2.not, !dbg !158
  br i1 %or.cond63, label %lor.lhs.false3, label %return, !dbg !158

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %cmp4 = icmp ugt i64 %.pre, %in_size, !dbg !159
  %cmp6 = icmp eq ptr %out_pos, null
  %or.cond = or i1 %cmp6, %cmp4, !dbg !160
  br i1 %or.cond, label %return, label %lor.lhs.false7, !dbg !160

lor.lhs.false7:                                   ; preds = %lor.lhs.false3
  %cmp8 = icmp ne ptr %out, null, !dbg !161
  %.pre62 = load i64, ptr %out_pos, align 8, !dbg !162
  %cmp10.not = icmp eq i64 %.pre62, %out_size
  %or.cond64 = select i1 %cmp8, i1 true, i1 %cmp10.not, !dbg !163
  br i1 %or.cond64, label %lor.lhs.false11, label %return, !dbg !163

lor.lhs.false11:                                  ; preds = %lor.lhs.false7
  %cmp12 = icmp ule i64 %.pre62, %out_size, !dbg !164
  %and = and i32 %flags, 4
  %tobool.not = icmp eq i32 %and, 0
  %or.cond61 = and i1 %tobool.not, %cmp12, !dbg !165
  br i1 %or.cond61, label %if.end14, label %return, !dbg !165

if.end14:                                         ; preds = %lor.lhs.false11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %stream_decoder) #4, !dbg !166
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %stream_decoder, i8 0, i64 64, i1 false), !dbg !167, !DIAssignID !168
    #dbg_assign(i8 0, !88, !DIExpression(), !168, ptr %stream_decoder, !DIExpression(), !150)
  %0 = getelementptr inbounds i8, ptr %stream_decoder, i64 8, !dbg !167
  store i64 -1, ptr %0, align 8, !dbg !167, !DIAssignID !169
    #dbg_assign(i64 -1, !88, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !169, ptr %0, !DIExpression(), !150)
  %1 = load i64, ptr %memlimit, align 8, !dbg !170
  %call = call i32 @lzma_stream_decoder_init(ptr noundef nonnull %stream_decoder, ptr noundef %allocator, i64 noundef %1, i32 noundef %flags) #4, !dbg !171
    #dbg_value(i32 %call, !137, !DIExpression(), !150)
  %cmp15 = icmp eq i32 %call, 0, !dbg !172
  br i1 %cmp15, label %if.then16, label %if.end34, !dbg !173

if.then16:                                        ; preds = %if.end14
  %2 = load i64, ptr %in_pos, align 8, !dbg !174
    #dbg_value(i64 %2, !138, !DIExpression(), !175)
  %3 = load i64, ptr %out_pos, align 8, !dbg !176
    #dbg_value(i64 %3, !142, !DIExpression(), !175)
  %code = getelementptr inbounds i8, ptr %stream_decoder, i64 24, !dbg !177
  %4 = load ptr, ptr %code, align 8, !dbg !177
  %5 = load ptr, ptr %stream_decoder, align 8, !dbg !178
  %call17 = call i32 %4(ptr noundef %5, ptr noundef %allocator, ptr noundef %in, ptr noundef nonnull %in_pos, i64 noundef %in_size, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %out_size, i32 noundef 3) #4, !dbg !179
    #dbg_value(i32 %call17, !137, !DIExpression(), !150)
  %cmp18 = icmp eq i32 %call17, 1, !dbg !180
  br i1 %cmp18, label %if.end34, label %if.else, !dbg !181

if.else:                                          ; preds = %if.then16
  store i64 %2, ptr %in_pos, align 8, !dbg !182
  store i64 %3, ptr %out_pos, align 8, !dbg !183
  switch i32 %call17, label %if.end34 [
    i32 0, label %if.then21
    i32 6, label %if.then28
  ], !dbg !184

if.then21:                                        ; preds = %if.else
  %6 = load i64, ptr %in_pos, align 8, !dbg !185
  %cmp22 = icmp eq i64 %6, %in_size, !dbg !188
  %. = select i1 %cmp22, i32 9, i32 10
  br label %if.end34

if.then28:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %memusage) #4, !dbg !189
  %memconfig = getelementptr inbounds i8, ptr %stream_decoder, i64 48, !dbg !190
  %7 = load ptr, ptr %memconfig, align 8, !dbg !190
  %8 = load ptr, ptr %stream_decoder, align 8, !dbg !191
  %call30 = call i32 %7(ptr noundef %8, ptr noundef nonnull %memlimit, ptr noundef nonnull %memusage, i64 noundef 0) #4, !dbg !192
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %memusage) #4, !dbg !193
  br label %if.end34, !dbg !194

if.end34:                                         ; preds = %if.then28, %if.then16, %if.then21, %if.else, %if.end14
  %ret.1 = phi i32 [ %call, %if.end14 ], [ 6, %if.then28 ], [ 0, %if.then16 ], [ %., %if.then21 ], [ %call17, %if.else ], !dbg !150
    #dbg_value(i32 %ret.1, !137, !DIExpression(), !150)
  call void @lzma_next_end(ptr noundef nonnull %stream_decoder, ptr noundef %allocator) #4, !dbg !195
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %stream_decoder) #4, !dbg !196
  br label %return

return:                                           ; preds = %lor.lhs.false7, %lor.lhs.false, %entry, %lor.lhs.false3, %lor.lhs.false11, %if.end34
  %retval.0 = phi i32 [ %ret.1, %if.end34 ], [ 11, %lor.lhs.false11 ], [ 11, %lor.lhs.false3 ], [ 11, %entry ], [ 11, %lor.lhs.false ], [ 11, %lor.lhs.false7 ], !dbg !150
  ret i32 %retval.0, !dbg !196
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare !dbg !197 i32 @lzma_stream_decoder_init(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !202 void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !32, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "liblzma/common/stream_buffer_decoder.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "0690b7f38e6e5e8b11f02aee3af00bbd")
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
!45 = distinct !DISubprogram(name: "lzma_stream_buffer_decode", scope: !1, file: !1, line: 17, type: !46, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !78)
!46 = !DISubroutineType(types: !47)
!47 = !{!48, !49, !54, !56, !71, !76, !64, !77, !76, !64}
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !51, line: 27, baseType: !52)
!51 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !53, line: 45, baseType: !36)
!53 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !51, line: 26, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !53, line: 42, baseType: !5)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !4, line: 403, baseType: !58)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 341, size: 192, elements: !59)
!59 = !{!60, !66, !70}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !58, file: !4, line: 376, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DISubroutineType(types: !63)
!63 = !{!33, !33, !64, !64}
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !65, line: 18, baseType: !36)
!65 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!66 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !58, file: !4, line: 390, baseType: !67, size: 64, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !33, !33}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !58, file: !4, line: 401, baseType: !33, size: 64, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !51, line: 24, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !53, line: 38, baseType: !75)
!75 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!78 = !{!79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !137, !138, !142, !143}
!79 = !DILocalVariable(name: "memlimit", arg: 1, scope: !45, file: !1, line: 17, type: !49)
!80 = !DILocalVariable(name: "flags", arg: 2, scope: !45, file: !1, line: 17, type: !54)
!81 = !DILocalVariable(name: "allocator", arg: 3, scope: !45, file: !1, line: 18, type: !56)
!82 = !DILocalVariable(name: "in", arg: 4, scope: !45, file: !1, line: 19, type: !71)
!83 = !DILocalVariable(name: "in_pos", arg: 5, scope: !45, file: !1, line: 19, type: !76)
!84 = !DILocalVariable(name: "in_size", arg: 6, scope: !45, file: !1, line: 19, type: !64)
!85 = !DILocalVariable(name: "out", arg: 7, scope: !45, file: !1, line: 20, type: !77)
!86 = !DILocalVariable(name: "out_pos", arg: 8, scope: !45, file: !1, line: 20, type: !76)
!87 = !DILocalVariable(name: "out_size", arg: 9, scope: !45, file: !1, line: 20, type: !64)
!88 = !DILocalVariable(name: "stream_decoder", scope: !45, file: !1, line: 36, type: !89)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_next_coder", file: !90, line: 80, baseType: !91)
!90 = !DIFile(filename: "liblzma/common/common.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_next_coder_s", file: !90, line: 124, size: 512, elements: !92)
!92 = !{!93, !96, !99, !100, !109, !114, !121, !125}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !91, file: !90, line: 126, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_coder", file: !90, line: 78, baseType: null)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !91, file: !90, line: 130, baseType: !97, size: 64, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !98, line: 63, baseType: !50)
!98 = !DIFile(filename: "liblzma/api/lzma/vli.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!99 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !91, file: !90, line: 136, baseType: !34, size: 64, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !91, file: !90, line: 139, baseType: !101, size: 64, offset: 192)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_code_function", file: !90, line: 94, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DISubroutineType(types: !104)
!104 = !{!48, !94, !56, !105, !106, !64, !107, !106, !64, !108}
!105 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !71)
!106 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !76)
!107 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !77)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !4, line: 322, baseType: !19)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !91, file: !90, line: 144, baseType: !110, size: 64, offset: 256)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_end_function", file: !90, line: 102, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{null, !94, !56}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "get_check", scope: !91, file: !90, line: 148, baseType: !115, size: 64, offset: 320)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!118, !119}
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !26, line: 55, baseType: !25)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "memconfig", scope: !91, file: !90, line: 152, baseType: !122, size: 64, offset: 384)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DISubroutineType(types: !124)
!124 = !{!48, !94, !49, !49, !50}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !91, file: !90, line: 157, baseType: !126, size: 64, offset: 448)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DISubroutineType(types: !128)
!128 = !{!48, !94, !56, !129, !129}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !132, line: 65, baseType: !133)
!132 = !DIFile(filename: "liblzma/api/lzma/filter.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !132, line: 43, size: 128, elements: !134)
!134 = !{!135, !136}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !133, file: !132, line: 54, baseType: !97, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !133, file: !132, line: 63, baseType: !33, size: 64, offset: 64)
!137 = !DILocalVariable(name: "ret", scope: !45, file: !1, line: 37, type: !48)
!138 = !DILocalVariable(name: "in_start", scope: !139, file: !1, line: 43, type: !141)
!139 = distinct !DILexicalBlock(scope: !140, file: !1, line: 40, column: 22)
!140 = distinct !DILexicalBlock(scope: !45, file: !1, line: 40, column: 6)
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!142 = !DILocalVariable(name: "out_start", scope: !139, file: !1, line: 44, type: !141)
!143 = !DILocalVariable(name: "memusage", scope: !144, file: !1, line: 77, type: !50)
!144 = distinct !DILexicalBlock(scope: !145, file: !1, line: 74, column: 43)
!145 = distinct !DILexicalBlock(scope: !146, file: !1, line: 74, column: 15)
!146 = distinct !DILexicalBlock(scope: !147, file: !1, line: 58, column: 8)
!147 = distinct !DILexicalBlock(scope: !148, file: !1, line: 53, column: 10)
!148 = distinct !DILexicalBlock(scope: !139, file: !1, line: 51, column: 7)
!149 = distinct !DIAssignID()
!150 = !DILocation(line: 0, scope: !45)
!151 = distinct !DIAssignID()
!152 = !DILocation(line: 0, scope: !144)
!153 = !DILocation(line: 23, column: 13, scope: !154)
!154 = distinct !DILexicalBlock(scope: !45, file: !1, line: 23, column: 6)
!155 = !DILocation(line: 23, column: 21, scope: !154)
!156 = !DILocation(line: 23, column: 28, scope: !154)
!157 = !DILocation(line: 24, column: 7, scope: !154)
!158 = !DILocation(line: 23, column: 36, scope: !154)
!159 = !DILocation(line: 24, column: 15, scope: !154)
!160 = !DILocation(line: 24, column: 25, scope: !154)
!161 = !DILocation(line: 25, column: 12, scope: !154)
!162 = !DILocation(line: 26, column: 7, scope: !154)
!163 = !DILocation(line: 25, column: 20, scope: !154)
!164 = !DILocation(line: 26, column: 16, scope: !154)
!165 = !DILocation(line: 23, column: 6, scope: !45)
!166 = !DILocation(line: 36, column: 2, scope: !45)
!167 = !DILocation(line: 36, column: 18, scope: !45)
!168 = distinct !DIAssignID()
!169 = distinct !DIAssignID()
!170 = !DILocation(line: 38, column: 32, scope: !45)
!171 = !DILocation(line: 37, column: 17, scope: !45)
!172 = !DILocation(line: 40, column: 10, scope: !140)
!173 = !DILocation(line: 40, column: 6, scope: !45)
!174 = !DILocation(line: 43, column: 27, scope: !139)
!175 = !DILocation(line: 0, scope: !139)
!176 = !DILocation(line: 44, column: 28, scope: !139)
!177 = !DILocation(line: 47, column: 24, scope: !139)
!178 = !DILocation(line: 47, column: 44, scope: !139)
!179 = !DILocation(line: 47, column: 9, scope: !139)
!180 = !DILocation(line: 51, column: 11, scope: !148)
!181 = !DILocation(line: 51, column: 7, scope: !139)
!182 = !DILocation(line: 55, column: 12, scope: !147)
!183 = !DILocation(line: 56, column: 13, scope: !147)
!184 = !DILocation(line: 58, column: 8, scope: !147)
!185 = !DILocation(line: 69, column: 9, scope: !186)
!186 = distinct !DILexicalBlock(scope: !187, file: !1, line: 69, column: 9)
!187 = distinct !DILexicalBlock(scope: !146, file: !1, line: 58, column: 24)
!188 = !DILocation(line: 69, column: 17, scope: !186)
!189 = !DILocation(line: 77, column: 5, scope: !144)
!190 = !DILocation(line: 78, column: 26, scope: !144)
!191 = !DILocation(line: 79, column: 22, scope: !144)
!192 = !DILocation(line: 78, column: 11, scope: !144)
!193 = !DILocation(line: 81, column: 4, scope: !145)
!194 = !DILocation(line: 81, column: 4, scope: !144)
!195 = !DILocation(line: 88, column: 2, scope: !45)
!196 = !DILocation(line: 91, column: 1, scope: !45)
!197 = !DISubprogram(name: "lzma_stream_decoder_init", scope: !198, file: !198, line: 18, type: !199, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!198 = !DIFile(filename: "liblzma/common/stream_decoder.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "82f2a7f1e50521ce1ad27540f4230cca")
!199 = !DISubroutineType(types: !200)
!200 = !{!48, !201, !56, !50, !54}
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!202 = !DISubprogram(name: "lzma_next_end", scope: !90, file: !90, line: 237, type: !203, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!203 = !DISubroutineType(types: !204)
!204 = !{null, !201, !56}
