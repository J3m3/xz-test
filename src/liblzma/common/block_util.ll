; ModuleID = 'liblzma/common/block_util.c'
source_filename = "liblzma/common/block_util.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 12) i32 @lzma_block_compressed_size(ptr noundef %block, i64 noundef %unpadded_size) local_unnamed_addr #0 !dbg !39 {
entry:
    #dbg_value(ptr %block, !104, !DIExpression(), !110)
    #dbg_value(i64 %unpadded_size, !105, !DIExpression(), !110)
    #dbg_value(ptr %block, !111, !DIExpression(), !119)
  %cmp.i = icmp eq ptr %block, null, !dbg !122
  br i1 %cmp.i, label %return, label %lor.lhs.false.i, !dbg !124

lor.lhs.false.i:                                  ; preds = %entry
  %0 = load i32, ptr %block, align 8, !dbg !125
  %cmp1.not.i = icmp eq i32 %0, 0, !dbg !126
  br i1 %cmp1.not.i, label %lor.lhs.false2.i, label %return, !dbg !127

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %header_size.i = getelementptr inbounds i8, ptr %block, i64 4, !dbg !128
  %1 = load i32, ptr %header_size.i, align 4, !dbg !128
  %2 = add i32 %1, -8, !dbg !129
  %or.cond.i = icmp ult i32 %2, 1017, !dbg !129
  %and.i = and i32 %1, 3
  %tobool.not.i = icmp eq i32 %and.i, 0
  %or.cond48.i = and i1 %or.cond.i, %tobool.not.i, !dbg !129
  br i1 %or.cond48.i, label %lor.lhs.false9.i, label %return, !dbg !129

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false2.i
  %compressed_size.i = getelementptr inbounds i8, ptr %block, i64 16, !dbg !130
  %3 = load i64, ptr %compressed_size.i, align 8, !dbg !130
  %or.cond49.i = icmp slt i64 %3, -1, !dbg !130
  %cmp16.i = icmp eq i64 %3, 0
  %or.cond50.i = or i1 %or.cond49.i, %cmp16.i, !dbg !130
  br i1 %or.cond50.i, label %return, label %lor.lhs.false17.i, !dbg !130

lor.lhs.false17.i:                                ; preds = %lor.lhs.false9.i
  %cmp13.i = icmp eq i64 %3, -1, !dbg !130
  %check.i = getelementptr inbounds i8, ptr %block, i64 8, !dbg !131
  %4 = load i32, ptr %check.i, align 8, !dbg !131
  %cmp18.i = icmp ugt i32 %4, 15, !dbg !132
  %brmerge.i = or i1 %cmp13.i, %cmp18.i, !dbg !133
  br i1 %brmerge.i, label %lzma_block_unpadded_size.exit, label %if.end22.i, !dbg !133

if.end22.i:                                       ; preds = %lor.lhs.false17.i
  %conv.i = zext nneg i32 %1 to i64, !dbg !134
  %add.i = add nuw i64 %3, %conv.i, !dbg !135
  %call.i = tail call i32 @lzma_check_size(i32 noundef %4) #2, !dbg !136
  %conv26.i = zext i32 %call.i to i64, !dbg !136
  %add27.i = add nuw i64 %add.i, %conv26.i, !dbg !137
    #dbg_value(i64 %add27.i, !118, !DIExpression(), !119)
  %cmp28.i = icmp ugt i64 %add27.i, 9223372036854775804, !dbg !138
  br i1 %cmp28.i, label %return, label %if.end22.i.if.end_crit_edge

if.end22.i.if.end_crit_edge:                      ; preds = %if.end22.i
  %.pre = load i32, ptr %header_size.i, align 4, !dbg !140
  %.pre30 = load i32, ptr %check.i, align 8, !dbg !141
  br label %if.end

lzma_block_unpadded_size.exit:                    ; preds = %lor.lhs.false17.i
  br i1 %cmp18.i, label %return, label %if.end, !dbg !142

if.end:                                           ; preds = %if.end22.i.if.end_crit_edge, %lzma_block_unpadded_size.exit
  %5 = phi i32 [ %.pre30, %if.end22.i.if.end_crit_edge ], [ %4, %lzma_block_unpadded_size.exit ], !dbg !141
  %6 = phi i32 [ %.pre, %if.end22.i.if.end_crit_edge ], [ %1, %lzma_block_unpadded_size.exit ], !dbg !140
  %call1 = tail call i32 @lzma_check_size(i32 noundef %5) #2, !dbg !143
  %add = add i32 %call1, %6, !dbg !144
    #dbg_value(i32 %add, !106, !DIExpression(), !110)
  %conv = zext i32 %add to i64, !dbg !145
  %cmp2.not = icmp ult i64 %conv, %unpadded_size, !dbg !147
  br i1 %cmp2.not, label %if.end5, label %return, !dbg !148

if.end5:                                          ; preds = %if.end
  %sub = sub i64 %unpadded_size, %conv, !dbg !149
    #dbg_value(i64 %sub, !108, !DIExpression(), !110)
  %7 = load i64, ptr %compressed_size.i, align 8, !dbg !150
  %cmp8.not = icmp eq i64 %7, -1, !dbg !152
  %cmp11.not = icmp eq i64 %7, %sub
  %or.cond = or i1 %cmp8.not, %cmp11.not, !dbg !153
  br i1 %or.cond, label %if.end14, label %return, !dbg !153

if.end14:                                         ; preds = %if.end5
  store i64 %sub, ptr %compressed_size.i, align 8, !dbg !154
  br label %return, !dbg !155

return:                                           ; preds = %if.end22.i, %entry, %lor.lhs.false.i, %lor.lhs.false2.i, %lor.lhs.false9.i, %if.end, %if.end5, %if.end14, %lzma_block_unpadded_size.exit
  %retval.2 = phi i32 [ 11, %lzma_block_unpadded_size.exit ], [ 9, %if.end ], [ 0, %if.end14 ], [ 9, %if.end5 ], [ 11, %lor.lhs.false9.i ], [ 11, %lor.lhs.false2.i ], [ 11, %lor.lhs.false.i ], [ 11, %entry ], [ 11, %if.end22.i ], !dbg !110
  ret i32 %retval.2, !dbg !156
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -1, 9223372036854775805) i64 @lzma_block_unpadded_size(ptr noundef readonly %block) local_unnamed_addr #0 !dbg !112 {
entry:
    #dbg_value(ptr %block, !111, !DIExpression(), !157)
  %cmp = icmp eq ptr %block, null, !dbg !158
  br i1 %cmp, label %return, label %lor.lhs.false, !dbg !159

lor.lhs.false:                                    ; preds = %entry
  %0 = load i32, ptr %block, align 8, !dbg !160
  %cmp1.not = icmp eq i32 %0, 0, !dbg !161
  br i1 %cmp1.not, label %lor.lhs.false2, label %return, !dbg !162

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %header_size = getelementptr inbounds i8, ptr %block, i64 4, !dbg !163
  %1 = load i32, ptr %header_size, align 4, !dbg !163
  %2 = add i32 %1, -8, !dbg !164
  %or.cond = icmp ult i32 %2, 1017, !dbg !164
  %and = and i32 %1, 3
  %tobool.not = icmp eq i32 %and, 0
  %or.cond48 = and i1 %or.cond, %tobool.not, !dbg !164
  br i1 %or.cond48, label %lor.lhs.false9, label %return, !dbg !164

lor.lhs.false9:                                   ; preds = %lor.lhs.false2
  %compressed_size = getelementptr inbounds i8, ptr %block, i64 16, !dbg !165
  %3 = load i64, ptr %compressed_size, align 8, !dbg !165
  %or.cond49 = icmp slt i64 %3, -1, !dbg !165
  %cmp16 = icmp eq i64 %3, 0
  %or.cond50 = or i1 %or.cond49, %cmp16, !dbg !165
  br i1 %or.cond50, label %return, label %lor.lhs.false17, !dbg !165

lor.lhs.false17:                                  ; preds = %lor.lhs.false9
  %cmp13 = icmp eq i64 %3, -1, !dbg !165
  %check = getelementptr inbounds i8, ptr %block, i64 8, !dbg !166
  %4 = load i32, ptr %check, align 8, !dbg !166
  %cmp18 = icmp ugt i32 %4, 15, !dbg !167
  %brmerge = or i1 %cmp13, %cmp18, !dbg !168
  %not.cmp18 = xor i1 %cmp18, true, !dbg !168
  %.mux = sext i1 %not.cmp18 to i64, !dbg !168
  br i1 %brmerge, label %return, label %if.end22, !dbg !168

if.end22:                                         ; preds = %lor.lhs.false17
  %conv = zext nneg i32 %1 to i64, !dbg !169
  %add = add nuw i64 %3, %conv, !dbg !170
  %call = tail call i32 @lzma_check_size(i32 noundef %4) #2, !dbg !171
  %conv26 = zext i32 %call to i64, !dbg !171
  %add27 = add nuw i64 %add, %conv26, !dbg !172
    #dbg_value(i64 %add27, !118, !DIExpression(), !157)
  %cmp28 = icmp ugt i64 %add27, 9223372036854775804, !dbg !173
  %.add27 = select i1 %cmp28, i64 0, i64 %add27, !dbg !157
  br label %return

return:                                           ; preds = %lor.lhs.false17, %entry, %lor.lhs.false, %lor.lhs.false2, %lor.lhs.false9, %if.end22
  %retval.1 = phi i64 [ %.add27, %if.end22 ], [ 0, %lor.lhs.false9 ], [ %.mux, %lor.lhs.false17 ], [ 0, %lor.lhs.false2 ], [ 0, %lor.lhs.false ], [ 0, %entry ], !dbg !157
  ret i64 %retval.1, !dbg !174
}

declare !dbg !175 i32 @lzma_check_size(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i64 -1, 9223372036854775805) i64 @lzma_block_total_size(ptr noundef readonly %block) local_unnamed_addr #0 !dbg !178 {
entry:
    #dbg_value(ptr %block, !180, !DIExpression(), !182)
    #dbg_value(ptr %block, !111, !DIExpression(), !183)
  %cmp.i = icmp eq ptr %block, null, !dbg !185
  br i1 %cmp.i, label %if.end, label %lor.lhs.false.i, !dbg !186

lor.lhs.false.i:                                  ; preds = %entry
  %0 = load i32, ptr %block, align 8, !dbg !187
  %cmp1.not.i = icmp eq i32 %0, 0, !dbg !188
  br i1 %cmp1.not.i, label %lor.lhs.false2.i, label %if.end, !dbg !189

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %header_size.i = getelementptr inbounds i8, ptr %block, i64 4, !dbg !190
  %1 = load i32, ptr %header_size.i, align 4, !dbg !190
  %2 = add i32 %1, -8, !dbg !191
  %or.cond.i = icmp ult i32 %2, 1017, !dbg !191
  %and.i = and i32 %1, 3
  %tobool.not.i = icmp eq i32 %and.i, 0
  %or.cond48.i = and i1 %or.cond.i, %tobool.not.i, !dbg !191
  br i1 %or.cond48.i, label %lor.lhs.false9.i, label %if.end, !dbg !191

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false2.i
  %compressed_size.i = getelementptr inbounds i8, ptr %block, i64 16, !dbg !192
  %3 = load i64, ptr %compressed_size.i, align 8, !dbg !192
  %or.cond49.i = icmp slt i64 %3, -1, !dbg !192
  %cmp16.i = icmp eq i64 %3, 0
  %or.cond50.i = or i1 %or.cond49.i, %cmp16.i, !dbg !192
  br i1 %or.cond50.i, label %if.end, label %lor.lhs.false17.i, !dbg !192

lor.lhs.false17.i:                                ; preds = %lor.lhs.false9.i
  %cmp13.i = icmp eq i64 %3, -1, !dbg !192
  %check.i = getelementptr inbounds i8, ptr %block, i64 8, !dbg !193
  %4 = load i32, ptr %check.i, align 8, !dbg !193
  %cmp18.i = icmp ugt i32 %4, 15, !dbg !194
  %brmerge.i = or i1 %cmp13.i, %cmp18.i, !dbg !195
  br i1 %brmerge.i, label %lzma_block_unpadded_size.exit, label %if.end22.i, !dbg !195

if.end22.i:                                       ; preds = %lor.lhs.false17.i
  %conv.i = zext nneg i32 %1 to i64, !dbg !196
  %add.i = add nuw i64 %3, %conv.i, !dbg !197
  %call.i = tail call i32 @lzma_check_size(i32 noundef %4) #2, !dbg !198
  %conv26.i = zext i32 %call.i to i64, !dbg !198
  %add27.i = add nuw i64 %add.i, %conv26.i, !dbg !199
    #dbg_value(i64 %add27.i, !118, !DIExpression(), !183)
  %cmp28.i = icmp ugt i64 %add27.i, 9223372036854775804, !dbg !200
  %5 = add nuw nsw i64 %add27.i, 3, !dbg !201
  %6 = and i64 %5, -4, !dbg !210
  %7 = select i1 %cmp28.i, i64 0, i64 %6, !dbg !210
  br label %if.end

lzma_block_unpadded_size.exit:                    ; preds = %lor.lhs.false17.i
    #dbg_value(i1 %cmp18.i, !181, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert, 1, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !182)
  %not.cmp18.i = xor i1 %cmp18.i, true, !dbg !211
  %spec.select = sext i1 %not.cmp18.i to i64, !dbg !211
  br label %if.end, !dbg !211

if.end:                                           ; preds = %lzma_block_unpadded_size.exit, %if.end22.i, %lor.lhs.false9.i, %lor.lhs.false2.i, %lor.lhs.false.i, %entry
  %unpadded_size.0 = phi i64 [ 0, %entry ], [ 0, %lor.lhs.false.i ], [ 0, %lor.lhs.false2.i ], [ 0, %lor.lhs.false9.i ], [ %7, %if.end22.i ], [ %spec.select, %lzma_block_unpadded_size.exit ], !dbg !182
    #dbg_value(i64 %unpadded_size.0, !181, !DIExpression(), !182)
  ret i64 %unpadded_size.0, !dbg !212
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !29, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "liblzma/common/block_util.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "76359d4b7b6eb4ad30a646e248fa0975")
!2 = !{!3, !19, !26}
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
!29 = !{!30, !5}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!31 = !{i32 7, !"Dwarf Version", i32 5}
!32 = !{i32 2, !"Debug Info Version", i32 3}
!33 = !{i32 1, !"wchar_size", i32 4}
!34 = !{i32 8, !"PIC Level", i32 2}
!35 = !{i32 7, !"PIE Level", i32 2}
!36 = !{i32 7, !"uwtable", i32 2}
!37 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!38 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!39 = distinct !DISubprogram(name: "lzma_block_compressed_size", scope: !1, file: !1, line: 18, type: !40, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !103)
!40 = !DISubroutineType(types: !41)
!41 = !{!42, !43, !57}
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_block", file: !45, line: 245, baseType: !46)
!45 = !DIFile(filename: "liblzma/api/lzma/block.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "bf8cbafce550217b909c63081e414910")
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 30, size: 1664, elements: !47)
!47 = !{!48, !53, !54, !56, !62, !63, !71, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !99, !100, !101, !102}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !46, file: !45, line: 47, baseType: !49, size: 32)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !50, line: 26, baseType: !51)
!50 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !52, line: 42, baseType: !5)
!52 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!53 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !46, file: !45, line: 67, baseType: !49, size: 32, offset: 32)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !46, file: !45, line: 88, baseType: !55, size: 32, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !20, line: 55, baseType: !19)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_size", scope: !46, file: !45, line: 143, baseType: !57, size: 64, offset: 128)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !58, line: 63, baseType: !59)
!58 = !DIFile(filename: "liblzma/api/lzma/vli.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !50, line: 27, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !52, line: 45, baseType: !61)
!61 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_size", scope: !46, file: !45, line: 167, baseType: !57, size: 64, offset: 192)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "filters", scope: !46, file: !45, line: 195, baseType: !64, size: 64, offset: 256)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !66, line: 65, baseType: !67)
!66 = !DIFile(filename: "liblzma/api/lzma/filter.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !66, line: 43, size: 128, elements: !68)
!68 = !{!69, !70}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !67, file: !66, line: 54, baseType: !57, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !67, file: !66, line: 63, baseType: !30, size: 64, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "raw_check", scope: !46, file: !45, line: 212, baseType: !72, size: 512, offset: 320)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 512, elements: !76)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !50, line: 24, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !52, line: 38, baseType: !75)
!75 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!76 = !{!77}
!77 = !DISubrange(count: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !46, file: !45, line: 221, baseType: !30, size: 64, offset: 832)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !46, file: !45, line: 222, baseType: !30, size: 64, offset: 896)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !46, file: !45, line: 223, baseType: !30, size: 64, offset: 960)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !46, file: !45, line: 224, baseType: !49, size: 32, offset: 1024)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !46, file: !45, line: 225, baseType: !49, size: 32, offset: 1056)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !46, file: !45, line: 226, baseType: !57, size: 64, offset: 1088)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !46, file: !45, line: 227, baseType: !57, size: 64, offset: 1152)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int5", scope: !46, file: !45, line: 228, baseType: !57, size: 64, offset: 1216)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int6", scope: !46, file: !45, line: 229, baseType: !57, size: 64, offset: 1280)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int7", scope: !46, file: !45, line: 230, baseType: !57, size: 64, offset: 1344)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int8", scope: !46, file: !45, line: 231, baseType: !57, size: 64, offset: 1408)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !46, file: !45, line: 232, baseType: !90, size: 32, offset: 1472)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !4, line: 46, baseType: !26)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !46, file: !45, line: 233, baseType: !90, size: 32, offset: 1504)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !46, file: !45, line: 234, baseType: !90, size: 32, offset: 1536)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !46, file: !45, line: 235, baseType: !90, size: 32, offset: 1568)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool1", scope: !46, file: !45, line: 236, baseType: !95, size: 8, offset: 1600)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_bool", file: !4, line: 29, baseType: !75)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool2", scope: !46, file: !45, line: 237, baseType: !95, size: 8, offset: 1608)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool3", scope: !46, file: !45, line: 238, baseType: !95, size: 8, offset: 1616)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool4", scope: !46, file: !45, line: 239, baseType: !95, size: 8, offset: 1624)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool5", scope: !46, file: !45, line: 240, baseType: !95, size: 8, offset: 1632)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool6", scope: !46, file: !45, line: 241, baseType: !95, size: 8, offset: 1640)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool7", scope: !46, file: !45, line: 242, baseType: !95, size: 8, offset: 1648)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool8", scope: !46, file: !45, line: 243, baseType: !95, size: 8, offset: 1656)
!103 = !{!104, !105, !106, !108}
!104 = !DILocalVariable(name: "block", arg: 1, scope: !39, file: !1, line: 18, type: !43)
!105 = !DILocalVariable(name: "unpadded_size", arg: 2, scope: !39, file: !1, line: 18, type: !57)
!106 = !DILocalVariable(name: "container_size", scope: !39, file: !1, line: 24, type: !107)
!107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!108 = !DILocalVariable(name: "compressed_size", scope: !39, file: !1, line: 34, type: !109)
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!110 = !DILocation(line: 0, scope: !39)
!111 = !DILocalVariable(name: "block", arg: 1, scope: !112, file: !1, line: 46, type: !115)
!112 = distinct !DISubprogram(name: "lzma_block_unpadded_size", scope: !1, file: !1, line: 46, type: !113, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !117)
!113 = !DISubroutineType(types: !114)
!114 = !{!57, !115}
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!117 = !{!111, !118}
!118 = !DILocalVariable(name: "unpadded_size", scope: !112, file: !1, line: 69, type: !109)
!119 = !DILocation(line: 0, scope: !112, inlinedAt: !120)
!120 = distinct !DILocation(line: 21, column: 6, scope: !121)
!121 = distinct !DILexicalBlock(scope: !39, file: !1, line: 21, column: 6)
!122 = !DILocation(line: 54, column: 12, scope: !123, inlinedAt: !120)
!123 = distinct !DILexicalBlock(scope: !112, file: !1, line: 54, column: 6)
!124 = !DILocation(line: 54, column: 20, scope: !123, inlinedAt: !120)
!125 = !DILocation(line: 54, column: 30, scope: !123, inlinedAt: !120)
!126 = !DILocation(line: 54, column: 38, scope: !123, inlinedAt: !120)
!127 = !DILocation(line: 55, column: 4, scope: !123, inlinedAt: !120)
!128 = !DILocation(line: 55, column: 14, scope: !123, inlinedAt: !120)
!129 = !DILocation(line: 56, column: 4, scope: !123, inlinedAt: !120)
!130 = !DILocation(line: 58, column: 8, scope: !123, inlinedAt: !120)
!131 = !DILocation(line: 60, column: 29, scope: !123, inlinedAt: !120)
!132 = !DILocation(line: 60, column: 36, scope: !123, inlinedAt: !120)
!133 = !DILocation(line: 54, column: 6, scope: !112, inlinedAt: !120)
!134 = !DILocation(line: 70, column: 7, scope: !112, inlinedAt: !120)
!135 = !DILocation(line: 70, column: 5, scope: !112, inlinedAt: !120)
!136 = !DILocation(line: 71, column: 7, scope: !112, inlinedAt: !120)
!137 = !DILocation(line: 71, column: 5, scope: !112, inlinedAt: !120)
!138 = !DILocation(line: 74, column: 20, scope: !139, inlinedAt: !120)
!139 = distinct !DILexicalBlock(scope: !112, file: !1, line: 74, column: 6)
!140 = !DILocation(line: 24, column: 41, scope: !39)
!141 = !DILocation(line: 25, column: 29, scope: !39)
!142 = !DILocation(line: 21, column: 6, scope: !39)
!143 = !DILocation(line: 25, column: 6, scope: !39)
!144 = !DILocation(line: 25, column: 4, scope: !39)
!145 = !DILocation(line: 28, column: 23, scope: !146)
!146 = distinct !DILexicalBlock(scope: !39, file: !1, line: 28, column: 6)
!147 = !DILocation(line: 28, column: 20, scope: !146)
!148 = !DILocation(line: 28, column: 6, scope: !39)
!149 = !DILocation(line: 34, column: 49, scope: !39)
!150 = !DILocation(line: 35, column: 13, scope: !151)
!151 = distinct !DILexicalBlock(scope: !39, file: !1, line: 35, column: 6)
!152 = !DILocation(line: 35, column: 29, scope: !151)
!153 = !DILocation(line: 36, column: 4, scope: !151)
!154 = !DILocation(line: 39, column: 25, scope: !39)
!155 = !DILocation(line: 41, column: 2, scope: !39)
!156 = !DILocation(line: 42, column: 1, scope: !39)
!157 = !DILocation(line: 0, scope: !112)
!158 = !DILocation(line: 54, column: 12, scope: !123)
!159 = !DILocation(line: 54, column: 20, scope: !123)
!160 = !DILocation(line: 54, column: 30, scope: !123)
!161 = !DILocation(line: 54, column: 38, scope: !123)
!162 = !DILocation(line: 55, column: 4, scope: !123)
!163 = !DILocation(line: 55, column: 14, scope: !123)
!164 = !DILocation(line: 56, column: 4, scope: !123)
!165 = !DILocation(line: 58, column: 8, scope: !123)
!166 = !DILocation(line: 60, column: 29, scope: !123)
!167 = !DILocation(line: 60, column: 36, scope: !123)
!168 = !DILocation(line: 54, column: 6, scope: !112)
!169 = !DILocation(line: 70, column: 7, scope: !112)
!170 = !DILocation(line: 70, column: 5, scope: !112)
!171 = !DILocation(line: 71, column: 7, scope: !112)
!172 = !DILocation(line: 71, column: 5, scope: !112)
!173 = !DILocation(line: 74, column: 20, scope: !139)
!174 = !DILocation(line: 78, column: 1, scope: !112)
!175 = !DISubprogram(name: "lzma_check_size", scope: !20, file: !20, line: 95, type: !176, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!176 = !DISubroutineType(types: !177)
!177 = !{!49, !55}
!178 = distinct !DISubprogram(name: "lzma_block_total_size", scope: !1, file: !1, line: 82, type: !113, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !179)
!179 = !{!180, !181}
!180 = !DILocalVariable(name: "block", arg: 1, scope: !178, file: !1, line: 82, type: !115)
!181 = !DILocalVariable(name: "unpadded_size", scope: !178, file: !1, line: 84, type: !57)
!182 = !DILocation(line: 0, scope: !178)
!183 = !DILocation(line: 0, scope: !112, inlinedAt: !184)
!184 = distinct !DILocation(line: 84, column: 27, scope: !178)
!185 = !DILocation(line: 54, column: 12, scope: !123, inlinedAt: !184)
!186 = !DILocation(line: 54, column: 20, scope: !123, inlinedAt: !184)
!187 = !DILocation(line: 54, column: 30, scope: !123, inlinedAt: !184)
!188 = !DILocation(line: 54, column: 38, scope: !123, inlinedAt: !184)
!189 = !DILocation(line: 55, column: 4, scope: !123, inlinedAt: !184)
!190 = !DILocation(line: 55, column: 14, scope: !123, inlinedAt: !184)
!191 = !DILocation(line: 56, column: 4, scope: !123, inlinedAt: !184)
!192 = !DILocation(line: 58, column: 8, scope: !123, inlinedAt: !184)
!193 = !DILocation(line: 60, column: 29, scope: !123, inlinedAt: !184)
!194 = !DILocation(line: 60, column: 36, scope: !123, inlinedAt: !184)
!195 = !DILocation(line: 54, column: 6, scope: !112, inlinedAt: !184)
!196 = !DILocation(line: 70, column: 7, scope: !112, inlinedAt: !184)
!197 = !DILocation(line: 70, column: 5, scope: !112, inlinedAt: !184)
!198 = !DILocation(line: 71, column: 7, scope: !112, inlinedAt: !184)
!199 = !DILocation(line: 71, column: 5, scope: !112, inlinedAt: !184)
!200 = !DILocation(line: 74, column: 20, scope: !139, inlinedAt: !184)
!201 = !DILocation(line: 42, column: 14, scope: !202, inlinedAt: !208)
!202 = distinct !DISubprogram(name: "vli_ceil4", scope: !203, file: !203, line: 39, type: !204, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !206)
!203 = !DIFile(filename: "liblzma/common/index.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "8c1da33cfb6445c1ed40367774c91b69")
!204 = !DISubroutineType(types: !205)
!205 = !{!57, !57}
!206 = !{!207}
!207 = !DILocalVariable(name: "vli", arg: 1, scope: !202, file: !203, line: 39, type: !57)
!208 = distinct !DILocation(line: 87, column: 19, scope: !209)
!209 = distinct !DILexicalBlock(scope: !178, file: !1, line: 86, column: 6)
!210 = !DILocation(line: 42, column: 19, scope: !202, inlinedAt: !208)
!211 = !DILocation(line: 86, column: 6, scope: !178)
!212 = !DILocation(line: 89, column: 2, scope: !178)
