; ModuleID = 'liblzma/common/block_buffer_decoder.c'
source_filename = "liblzma/common/block_buffer_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_block_buffer_decode(ptr noundef %block, ptr noundef %allocator, ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size, ptr noundef %out, ptr noundef %out_pos, i64 noundef %out_size) local_unnamed_addr #0 !dbg !48 {
entry:
  %block_decoder = alloca %struct.lzma_next_coder_s, align 8, !DIAssignID !186
    #dbg_assign(i1 undef, !139, !DIExpression(), !186, ptr %block_decoder, !DIExpression(), !187)
    #dbg_value(ptr %block, !131, !DIExpression(), !187)
    #dbg_value(ptr %allocator, !132, !DIExpression(), !187)
    #dbg_value(ptr %in, !133, !DIExpression(), !187)
    #dbg_value(ptr %in_pos, !134, !DIExpression(), !187)
    #dbg_value(i64 %in_size, !135, !DIExpression(), !187)
    #dbg_value(ptr %out, !136, !DIExpression(), !187)
    #dbg_value(ptr %out_pos, !137, !DIExpression(), !187)
    #dbg_value(i64 %out_size, !138, !DIExpression(), !187)
  %cmp = icmp eq ptr %in_pos, null, !dbg !188
  br i1 %cmp, label %return, label %lor.lhs.false, !dbg !190

lor.lhs.false:                                    ; preds = %entry
  %cmp1 = icmp ne ptr %in, null, !dbg !191
  %.pre = load i64, ptr %in_pos, align 8, !dbg !192
  %cmp2.not = icmp eq i64 %.pre, %in_size
  %or.cond51 = select i1 %cmp1, i1 true, i1 %cmp2.not, !dbg !193
  br i1 %or.cond51, label %lor.lhs.false3, label %return, !dbg !193

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %cmp4 = icmp ugt i64 %.pre, %in_size, !dbg !194
  %cmp6 = icmp eq ptr %out_pos, null
  %or.cond = or i1 %cmp6, %cmp4, !dbg !195
  br i1 %or.cond, label %return, label %lor.lhs.false7, !dbg !195

lor.lhs.false7:                                   ; preds = %lor.lhs.false3
  %cmp8 = icmp eq ptr %out, null, !dbg !196
  %.pre50 = load i64, ptr %out_pos, align 8, !dbg !197
  %cmp10.not = icmp ne i64 %.pre50, %out_size
  %or.cond52.not54 = select i1 %cmp8, i1 %cmp10.not, i1 false, !dbg !198
  %cmp12 = icmp ugt i64 %.pre50, %out_size
  %or.cond53 = select i1 %or.cond52.not54, i1 true, i1 %cmp12, !dbg !198
  br i1 %or.cond53, label %return, label %if.end, !dbg !198

if.end:                                           ; preds = %lor.lhs.false7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %block_decoder) #4, !dbg !199
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %block_decoder, i8 0, i64 64, i1 false), !dbg !200, !DIAssignID !201
    #dbg_assign(i8 0, !139, !DIExpression(), !201, ptr %block_decoder, !DIExpression(), !187)
  %0 = getelementptr inbounds i8, ptr %block_decoder, i64 8, !dbg !200
  store i64 -1, ptr %0, align 8, !dbg !200, !DIAssignID !202
    #dbg_assign(i64 -1, !139, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !202, ptr %0, !DIExpression(), !187)
  %call = call i32 @lzma_block_decoder_init(ptr noundef nonnull %block_decoder, ptr noundef %allocator, ptr noundef %block) #4, !dbg !203
    #dbg_value(i32 %call, !180, !DIExpression(), !187)
  %cmp13 = icmp eq i32 %call, 0, !dbg !204
  br i1 %cmp13, label %if.then14, label %if.end26, !dbg !205

if.then14:                                        ; preds = %if.end
  %1 = load i64, ptr %in_pos, align 8, !dbg !206
    #dbg_value(i64 %1, !181, !DIExpression(), !207)
  %2 = load i64, ptr %out_pos, align 8, !dbg !208
    #dbg_value(i64 %2, !185, !DIExpression(), !207)
  %code = getelementptr inbounds i8, ptr %block_decoder, i64 24, !dbg !209
  %3 = load ptr, ptr %code, align 8, !dbg !209
  %4 = load ptr, ptr %block_decoder, align 8, !dbg !210
  %call15 = call i32 %3(ptr noundef %4, ptr noundef %allocator, ptr noundef %in, ptr noundef nonnull %in_pos, i64 noundef %in_size, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %out_size, i32 noundef 3) #4, !dbg !211
    #dbg_value(i32 %call15, !180, !DIExpression(), !187)
  switch i32 %call15, label %if.end24 [
    i32 1, label %if.end26
    i32 0, label %if.then19
  ], !dbg !212

if.then19:                                        ; preds = %if.then14
  %5 = load i64, ptr %in_pos, align 8, !dbg !213
  %cmp20 = icmp eq i64 %5, %in_size, !dbg !219
  %. = select i1 %cmp20, i32 9, i32 10
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %if.then14
  %ret.0 = phi i32 [ %call15, %if.then14 ], [ %., %if.then19 ], !dbg !207
    #dbg_value(i32 %ret.0, !180, !DIExpression(), !187)
  store i64 %1, ptr %in_pos, align 8, !dbg !220
  store i64 %2, ptr %out_pos, align 8, !dbg !221
  br label %if.end26

if.end26:                                         ; preds = %if.end24, %if.then14, %if.end
  %ret.2 = phi i32 [ %call, %if.end ], [ %ret.0, %if.end24 ], [ 0, %if.then14 ], !dbg !187
    #dbg_value(i32 %ret.2, !180, !DIExpression(), !187)
  call void @lzma_next_end(ptr noundef nonnull %block_decoder, ptr noundef %allocator) #4, !dbg !222
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %block_decoder) #4, !dbg !223
  br label %return

return:                                           ; preds = %lor.lhs.false7, %lor.lhs.false, %entry, %lor.lhs.false3, %if.end26
  %retval.0 = phi i32 [ %ret.2, %if.end26 ], [ 11, %lor.lhs.false3 ], [ 11, %entry ], [ 11, %lor.lhs.false ], [ 11, %lor.lhs.false7 ], !dbg !187
  ret i32 %retval.0, !dbg !223
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare !dbg !224 i32 @lzma_block_decoder_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !229 void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !35, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "liblzma/common/block_buffer_decoder.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "ecaea2d3c10afacf016d39de887b7677")
!2 = !{!3, !19, !26, !29}
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
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 27, baseType: !5, size: 32, elements: !21)
!20 = !DIFile(filename: "liblzma/api/lzma/check.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "b07c3297e2bcc14bb477793d08325ee3")
!21 = !{!22, !23, !24, !25}
!22 = !DIEnumerator(name: "LZMA_CHECK_NONE", value: 0)
!23 = !DIEnumerator(name: "LZMA_CHECK_CRC32", value: 1)
!24 = !DIEnumerator(name: "LZMA_CHECK_CRC64", value: 4)
!25 = !DIEnumerator(name: "LZMA_CHECK_SHA256", value: 10)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 44, baseType: !5, size: 32, elements: !27)
!27 = !{!28}
!28 = !DIEnumerator(name: "LZMA_RESERVED_ENUM", value: 0)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 250, baseType: !5, size: 32, elements: !30)
!30 = !{!31, !32, !33, !34}
!31 = !DIEnumerator(name: "LZMA_RUN", value: 0)
!32 = !DIEnumerator(name: "LZMA_SYNC_FLUSH", value: 1)
!33 = !DIEnumerator(name: "LZMA_FULL_FLUSH", value: 2)
!34 = !DIEnumerator(name: "LZMA_FINISH", value: 3)
!35 = !{!36, !37}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !38, line: 90, baseType: !39)
!38 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!39 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!40 = !{i32 7, !"Dwarf Version", i32 5}
!41 = !{i32 2, !"Debug Info Version", i32 3}
!42 = !{i32 1, !"wchar_size", i32 4}
!43 = !{i32 8, !"PIC Level", i32 2}
!44 = !{i32 7, !"PIE Level", i32 2}
!45 = !{i32 7, !"uwtable", i32 2}
!46 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!47 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!48 = distinct !DISubprogram(name: "lzma_block_buffer_decode", scope: !1, file: !1, line: 17, type: !49, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !130)
!49 = !DISubroutineType(types: !50)
!50 = !{!51, !52, !111, !126, !128, !119, !129, !128, !119}
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_block", file: !54, line: 245, baseType: !55)
!54 = !DIFile(filename: "liblzma/api/lzma/block.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "bf8cbafce550217b909c63081e414910")
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !54, line: 30, size: 1664, elements: !56)
!56 = !{!57, !62, !63, !65, !70, !71, !79, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !99, !100, !101, !102, !104, !105, !106, !107, !108, !109, !110}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !55, file: !54, line: 47, baseType: !58, size: 32)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !59, line: 26, baseType: !60)
!59 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !61, line: 42, baseType: !5)
!61 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!62 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !55, file: !54, line: 67, baseType: !58, size: 32, offset: 32)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !55, file: !54, line: 88, baseType: !64, size: 32, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !20, line: 55, baseType: !19)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_size", scope: !55, file: !54, line: 143, baseType: !66, size: 64, offset: 128)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !67, line: 63, baseType: !68)
!67 = !DIFile(filename: "liblzma/api/lzma/vli.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !59, line: 27, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !61, line: 45, baseType: !39)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_size", scope: !55, file: !54, line: 167, baseType: !66, size: 64, offset: 192)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "filters", scope: !55, file: !54, line: 195, baseType: !72, size: 64, offset: 256)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !74, line: 65, baseType: !75)
!74 = !DIFile(filename: "liblzma/api/lzma/filter.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !74, line: 43, size: 128, elements: !76)
!76 = !{!77, !78}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !75, file: !74, line: 54, baseType: !66, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !75, file: !74, line: 63, baseType: !36, size: 64, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "raw_check", scope: !55, file: !54, line: 212, baseType: !80, size: 512, offset: 320)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 512, elements: !84)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !59, line: 24, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !61, line: 38, baseType: !83)
!83 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!84 = !{!85}
!85 = !DISubrange(count: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !55, file: !54, line: 221, baseType: !36, size: 64, offset: 832)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !55, file: !54, line: 222, baseType: !36, size: 64, offset: 896)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !55, file: !54, line: 223, baseType: !36, size: 64, offset: 960)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !55, file: !54, line: 224, baseType: !58, size: 32, offset: 1024)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !55, file: !54, line: 225, baseType: !58, size: 32, offset: 1056)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !55, file: !54, line: 226, baseType: !66, size: 64, offset: 1088)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !55, file: !54, line: 227, baseType: !66, size: 64, offset: 1152)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int5", scope: !55, file: !54, line: 228, baseType: !66, size: 64, offset: 1216)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int6", scope: !55, file: !54, line: 229, baseType: !66, size: 64, offset: 1280)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int7", scope: !55, file: !54, line: 230, baseType: !66, size: 64, offset: 1344)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int8", scope: !55, file: !54, line: 231, baseType: !66, size: 64, offset: 1408)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !55, file: !54, line: 232, baseType: !98, size: 32, offset: 1472)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !4, line: 46, baseType: !26)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !55, file: !54, line: 233, baseType: !98, size: 32, offset: 1504)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !55, file: !54, line: 234, baseType: !98, size: 32, offset: 1536)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !55, file: !54, line: 235, baseType: !98, size: 32, offset: 1568)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool1", scope: !55, file: !54, line: 236, baseType: !103, size: 8, offset: 1600)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_bool", file: !4, line: 29, baseType: !83)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool2", scope: !55, file: !54, line: 237, baseType: !103, size: 8, offset: 1608)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool3", scope: !55, file: !54, line: 238, baseType: !103, size: 8, offset: 1616)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool4", scope: !55, file: !54, line: 239, baseType: !103, size: 8, offset: 1624)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool5", scope: !55, file: !54, line: 240, baseType: !103, size: 8, offset: 1632)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool6", scope: !55, file: !54, line: 241, baseType: !103, size: 8, offset: 1640)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool7", scope: !55, file: !54, line: 242, baseType: !103, size: 8, offset: 1648)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool8", scope: !55, file: !54, line: 243, baseType: !103, size: 8, offset: 1656)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !4, line: 403, baseType: !113)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 341, size: 192, elements: !114)
!114 = !{!115, !121, !125}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !113, file: !4, line: 376, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DISubroutineType(types: !118)
!118 = !{!36, !36, !119, !119}
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !120, line: 18, baseType: !39)
!120 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!121 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !113, file: !4, line: 390, baseType: !122, size: 64, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DISubroutineType(types: !124)
!124 = !{null, !36, !36}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !113, file: !4, line: 401, baseType: !36, size: 64, offset: 128)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!130 = !{!131, !132, !133, !134, !135, !136, !137, !138, !139, !180, !181, !185}
!131 = !DILocalVariable(name: "block", arg: 1, scope: !48, file: !1, line: 17, type: !52)
!132 = !DILocalVariable(name: "allocator", arg: 2, scope: !48, file: !1, line: 17, type: !111)
!133 = !DILocalVariable(name: "in", arg: 3, scope: !48, file: !1, line: 18, type: !126)
!134 = !DILocalVariable(name: "in_pos", arg: 4, scope: !48, file: !1, line: 18, type: !128)
!135 = !DILocalVariable(name: "in_size", arg: 5, scope: !48, file: !1, line: 18, type: !119)
!136 = !DILocalVariable(name: "out", arg: 6, scope: !48, file: !1, line: 19, type: !129)
!137 = !DILocalVariable(name: "out_pos", arg: 7, scope: !48, file: !1, line: 19, type: !128)
!138 = !DILocalVariable(name: "out_size", arg: 8, scope: !48, file: !1, line: 19, type: !119)
!139 = !DILocalVariable(name: "block_decoder", scope: !48, file: !1, line: 28, type: !140)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_next_coder", file: !141, line: 80, baseType: !142)
!141 = !DIFile(filename: "liblzma/common/common.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_next_coder_s", file: !141, line: 124, size: 512, elements: !143)
!143 = !{!144, !147, !148, !149, !158, !163, !169, !174}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !142, file: !141, line: 126, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_coder", file: !141, line: 78, baseType: null)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !142, file: !141, line: 130, baseType: !66, size: 64, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !142, file: !141, line: 136, baseType: !37, size: 64, offset: 128)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !142, file: !141, line: 139, baseType: !150, size: 64, offset: 192)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_code_function", file: !141, line: 94, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DISubroutineType(types: !153)
!153 = !{!51, !145, !111, !154, !155, !119, !156, !155, !119, !157}
!154 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !126)
!155 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !128)
!156 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !129)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !4, line: 322, baseType: !29)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !142, file: !141, line: 144, baseType: !159, size: 64, offset: 256)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_end_function", file: !141, line: 102, baseType: !160)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DISubroutineType(types: !162)
!162 = !{null, !145, !111}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "get_check", scope: !142, file: !141, line: 148, baseType: !164, size: 64, offset: 320)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DISubroutineType(types: !166)
!166 = !{!64, !167}
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !146)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "memconfig", scope: !142, file: !141, line: 152, baseType: !170, size: 64, offset: 384)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DISubroutineType(types: !172)
!172 = !{!51, !145, !173, !173, !68}
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !142, file: !141, line: 157, baseType: !175, size: 64, offset: 448)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DISubroutineType(types: !177)
!177 = !{!51, !145, !111, !178, !178}
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!180 = !DILocalVariable(name: "ret", scope: !48, file: !1, line: 29, type: !51)
!181 = !DILocalVariable(name: "in_start", scope: !182, file: !1, line: 35, type: !184)
!182 = distinct !DILexicalBlock(scope: !183, file: !1, line: 32, column: 22)
!183 = distinct !DILexicalBlock(scope: !48, file: !1, line: 32, column: 6)
!184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!185 = !DILocalVariable(name: "out_start", scope: !182, file: !1, line: 36, type: !184)
!186 = distinct !DIAssignID()
!187 = !DILocation(line: 0, scope: !48)
!188 = !DILocation(line: 21, column: 13, scope: !189)
!189 = distinct !DILexicalBlock(scope: !48, file: !1, line: 21, column: 6)
!190 = !DILocation(line: 21, column: 21, scope: !189)
!191 = !DILocation(line: 21, column: 28, scope: !189)
!192 = !DILocation(line: 22, column: 7, scope: !189)
!193 = !DILocation(line: 21, column: 36, scope: !189)
!194 = !DILocation(line: 22, column: 15, scope: !189)
!195 = !DILocation(line: 22, column: 25, scope: !189)
!196 = !DILocation(line: 23, column: 12, scope: !189)
!197 = !DILocation(line: 24, column: 7, scope: !189)
!198 = !DILocation(line: 23, column: 20, scope: !189)
!199 = !DILocation(line: 28, column: 2, scope: !48)
!200 = !DILocation(line: 28, column: 18, scope: !48)
!201 = distinct !DIAssignID()
!202 = distinct !DIAssignID()
!203 = !DILocation(line: 29, column: 17, scope: !48)
!204 = !DILocation(line: 32, column: 10, scope: !183)
!205 = !DILocation(line: 32, column: 6, scope: !48)
!206 = !DILocation(line: 35, column: 27, scope: !182)
!207 = !DILocation(line: 0, scope: !182)
!208 = !DILocation(line: 36, column: 28, scope: !182)
!209 = !DILocation(line: 39, column: 23, scope: !182)
!210 = !DILocation(line: 39, column: 42, scope: !182)
!211 = !DILocation(line: 39, column: 9, scope: !182)
!212 = !DILocation(line: 43, column: 7, scope: !182)
!213 = !DILocation(line: 62, column: 9, scope: !214)
!214 = distinct !DILexicalBlock(scope: !215, file: !1, line: 62, column: 9)
!215 = distinct !DILexicalBlock(scope: !216, file: !1, line: 46, column: 24)
!216 = distinct !DILexicalBlock(scope: !217, file: !1, line: 46, column: 8)
!217 = distinct !DILexicalBlock(scope: !218, file: !1, line: 45, column: 10)
!218 = distinct !DILexicalBlock(scope: !182, file: !1, line: 43, column: 7)
!219 = !DILocation(line: 62, column: 17, scope: !214)
!220 = !DILocation(line: 69, column: 12, scope: !217)
!221 = !DILocation(line: 70, column: 13, scope: !217)
!222 = !DILocation(line: 77, column: 2, scope: !48)
!223 = !DILocation(line: 80, column: 1, scope: !48)
!224 = !DISubprogram(name: "lzma_block_decoder_init", scope: !225, file: !225, line: 19, type: !226, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!225 = !DIFile(filename: "liblzma/common/block_decoder.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "d741972e9232abef21e8d748627f2569")
!226 = !DISubroutineType(types: !227)
!227 = !{!51, !228, !111, !52}
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!229 = !DISubprogram(name: "lzma_next_end", scope: !141, file: !141, line: 237, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!230 = !DISubroutineType(types: !231)
!231 = !{null, !228, !111}
