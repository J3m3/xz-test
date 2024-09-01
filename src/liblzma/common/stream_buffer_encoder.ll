; ModuleID = 'liblzma/common/stream_buffer_encoder.c'
source_filename = "liblzma/common/stream_buffer_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_stream_flags = type { i32, i64, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.lzma_block = type { i32, i32, i32, i64, i64, ptr, [64 x i8], ptr, ptr, ptr, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }

; Function Attrs: nounwind uwtable
define dso_local range(i64 49, 48) i64 @lzma_stream_buffer_bound(i64 noundef %uncompressed_size) local_unnamed_addr #0 !dbg !39 {
entry:
    #dbg_value(i64 %uncompressed_size, !46, !DIExpression(), !49)
  %call = tail call i64 @lzma_block_buffer_bound(i64 noundef %uncompressed_size) #4, !dbg !50
    #dbg_value(i64 %call, !47, !DIExpression(), !49)
  %cmp = icmp eq i64 %call, 0, !dbg !51
  %cmp1 = icmp sgt i64 %call, 9223372036854775759
  %or.cond = or i1 %cmp, %cmp1, !dbg !53
  %add = add i64 %call, 48, !dbg !53
  %retval.0 = select i1 %or.cond, i64 0, i64 %add, !dbg !53
  ret i64 %retval.0, !dbg !54
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !55 i64 @lzma_block_buffer_bound(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_stream_buffer_encode(ptr noundef %filters, i32 noundef %check, ptr noundef %allocator, ptr noundef %in, i64 noundef %in_size, ptr noundef %out, ptr noundef %out_pos_ptr, i64 noundef %out_size) local_unnamed_addr #0 !dbg !57 {
entry:
  %out_pos = alloca i64, align 8, !DIAssignID !179
    #dbg_assign(i1 undef, !104, !DIExpression(), !179, ptr %out_pos, !DIExpression(), !180)
  %stream_flags = alloca %struct.lzma_stream_flags, align 8, !DIAssignID !181
    #dbg_assign(i1 undef, !105, !DIExpression(), !181, ptr %stream_flags, !DIExpression(), !180)
  %block = alloca %struct.lzma_block, align 8, !DIAssignID !182
    #dbg_assign(i1 undef, !131, !DIExpression(), !182, ptr %block, !DIExpression(), !180)
    #dbg_value(ptr %filters, !96, !DIExpression(), !180)
    #dbg_value(i32 %check, !97, !DIExpression(), !180)
    #dbg_value(ptr %allocator, !98, !DIExpression(), !180)
    #dbg_value(ptr %in, !99, !DIExpression(), !180)
    #dbg_value(i64 %in_size, !100, !DIExpression(), !180)
    #dbg_value(ptr %out, !101, !DIExpression(), !180)
    #dbg_value(ptr %out_pos_ptr, !102, !DIExpression(), !180)
    #dbg_value(i64 %out_size, !103, !DIExpression(), !180)
  %cmp = icmp eq ptr %filters, null, !dbg !183
  %cmp1 = icmp ugt i32 %check, 15
  %or.cond = or i1 %cmp, %cmp1, !dbg !185
  br i1 %or.cond, label %return, label %lor.lhs.false2, !dbg !185

lor.lhs.false2:                                   ; preds = %entry
  %cmp3 = icmp eq ptr %in, null, !dbg !186
  %cmp4 = icmp ne i64 %in_size, 0
  %or.cond79 = and i1 %cmp3, %cmp4, !dbg !187
  %cmp6 = icmp eq ptr %out, null
  %or.cond80 = or i1 %or.cond79, %cmp6, !dbg !187
  %cmp8 = icmp eq ptr %out_pos_ptr, null
  %or.cond81 = or i1 %or.cond80, %cmp8, !dbg !187
  br i1 %or.cond81, label %return, label %lor.lhs.false9, !dbg !187

lor.lhs.false9:                                   ; preds = %lor.lhs.false2
  %0 = load i64, ptr %out_pos_ptr, align 8, !dbg !188
  %cmp10 = icmp ugt i64 %0, %out_size, !dbg !189
  br i1 %cmp10, label %return, label %if.end, !dbg !190

if.end:                                           ; preds = %lor.lhs.false9
  %call = tail call zeroext i8 @lzma_check_is_supported(i32 noundef %check) #4, !dbg !191
  %tobool.not = icmp eq i8 %call, 0, !dbg !191
  br i1 %tobool.not, label %return, label %if.end12, !dbg !193

if.end12:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_pos) #4, !dbg !194
  %1 = load i64, ptr %out_pos_ptr, align 8, !dbg !195
    #dbg_assign(i64 %1, !104, !DIExpression(), !196, ptr %out_pos, !DIExpression(), !180)
  %sub = sub i64 %out_size, %1, !dbg !197
  %cmp13 = icmp ult i64 %sub, 25, !dbg !199
  br i1 %cmp13, label %cleanup77, label %if.end15, !dbg !200

if.end15:                                         ; preds = %if.end12
  %sub16 = add i64 %out_size, -12, !dbg !201
    #dbg_value(i64 %sub16, !103, !DIExpression(), !180)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %stream_flags) #4, !dbg !202
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %stream_flags, i8 0, i64 56, i1 false), !dbg !203, !DIAssignID !204
    #dbg_assign(i8 0, !105, !DIExpression(), !204, ptr %stream_flags, !DIExpression(), !180)
  %check17 = getelementptr inbounds i8, ptr %stream_flags, i64 16, !dbg !205
  store i32 %check, ptr %check17, align 8, !dbg !205, !DIAssignID !206
    #dbg_assign(i32 %check, !105, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !206, ptr %check17, !DIExpression(), !180)
  %add.ptr = getelementptr inbounds i8, ptr %out, i64 %1, !dbg !207
  %call18 = call i32 @lzma_stream_header_encode(ptr noundef nonnull %stream_flags, ptr noundef %add.ptr) #4, !dbg !209
  %cmp19.not = icmp eq i32 %call18, 0, !dbg !210
  br i1 %cmp19.not, label %if.end21, label %cleanup76, !dbg !211

if.end21:                                         ; preds = %if.end15
  %add = add i64 %1, 12, !dbg !212
  store i64 %add, ptr %out_pos, align 8, !dbg !212, !DIAssignID !213
    #dbg_assign(i64 %add, !104, !DIExpression(), !213, ptr %out_pos, !DIExpression(), !180)
  call void @llvm.lifetime.start.p0(i64 208, ptr nonnull %block) #4, !dbg !214
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %block, i8 0, i64 208, i1 false), !dbg !215, !DIAssignID !216
    #dbg_assign(i8 0, !131, !DIExpression(), !216, ptr %block, !DIExpression(), !180)
  %check23 = getelementptr inbounds i8, ptr %block, i64 8, !dbg !217
  store i32 %check, ptr %check23, align 8, !dbg !217, !DIAssignID !218
    #dbg_assign(i32 %check, !131, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !218, ptr %check23, !DIExpression(), !180)
  %filters24 = getelementptr inbounds i8, ptr %block, i64 32, !dbg !217
  store ptr %filters, ptr %filters24, align 8, !dbg !217, !DIAssignID !219
    #dbg_assign(ptr %filters, !131, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !219, ptr %filters24, !DIExpression(), !180)
  %cmp39.not = icmp eq i64 %in_size, 0, !dbg !220
  br i1 %cmp39.not, label %if.end45, label %do.body, !dbg !221

do.body:                                          ; preds = %if.end21
  %call41 = call i32 @lzma_block_buffer_encode(ptr noundef nonnull %block, ptr noundef %allocator, ptr noundef %in, i64 noundef %in_size, ptr noundef nonnull %out, ptr noundef nonnull %out_pos, i64 noundef %sub16) #4, !dbg !222
    #dbg_value(i32 %call41, !168, !DIExpression(), !223)
  %cmp42.not = icmp eq i32 %call41, 0, !dbg !224
  br i1 %cmp42.not, label %if.end45.thread, label %cleanup75

if.end45:                                         ; preds = %if.end21
  %call46 = call ptr @lzma_index_init(ptr noundef %allocator) #4, !dbg !226
    #dbg_value(ptr %call46, !172, !DIExpression(), !227)
  %cmp47 = icmp eq ptr %call46, null, !dbg !228
  br i1 %cmp47, label %cleanup75, label %cleanup66, !dbg !230

if.end45.thread:                                  ; preds = %do.body
  %call46113 = call ptr @lzma_index_init(ptr noundef %allocator) #4, !dbg !226
    #dbg_value(ptr %call46113, !172, !DIExpression(), !227)
  %cmp47114 = icmp eq ptr %call46113, null, !dbg !228
  br i1 %cmp47114, label %cleanup75, label %if.end55, !dbg !230

if.end55:                                         ; preds = %if.end45.thread
    #dbg_value(i32 0, !178, !DIExpression(), !227)
  %call52 = call i64 @lzma_block_unpadded_size(ptr noundef nonnull %block) #4, !dbg !231
  %uncompressed_size53 = getelementptr inbounds i8, ptr %block, i64 24, !dbg !233
  %2 = load i64, ptr %uncompressed_size53, align 8, !dbg !233
  %call54 = call i32 @lzma_index_append(ptr noundef nonnull %call46113, ptr noundef %allocator, i64 noundef %call52, i64 noundef %2) #4, !dbg !234
    #dbg_value(i32 %call54, !178, !DIExpression(), !227)
  %cmp56 = icmp eq i32 %call54, 0, !dbg !235
  br i1 %cmp56, label %cleanup66, label %cleanup66.thread133, !dbg !237

cleanup66.thread133:                              ; preds = %if.end55
    #dbg_value(i32 %call54, !178, !DIExpression(), !227)
  call void @lzma_index_end(ptr noundef nonnull %call46113, ptr noundef %allocator) #4, !dbg !238
  br label %cleanup75

cleanup66:                                        ; preds = %if.end45, %if.end55
  %call46116120130 = phi ptr [ %call46113, %if.end55 ], [ %call46, %if.end45 ]
  %call58 = call i32 @lzma_index_buffer_encode(ptr noundef nonnull %call46116120130, ptr noundef nonnull %out, ptr noundef nonnull %out_pos, i64 noundef %sub16) #4, !dbg !239
    #dbg_value(i32 %call58, !178, !DIExpression(), !227)
  %call59 = call i64 @lzma_index_size(ptr noundef nonnull %call46116120130) #4, !dbg !241
  %backward_size60 = getelementptr inbounds i8, ptr %stream_flags, i64 8, !dbg !242
  store i64 %call59, ptr %backward_size60, align 8, !dbg !243, !DIAssignID !244
    #dbg_assign(i64 %call59, !105, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !244, ptr %backward_size60, !DIExpression(), !180)
  call void @lzma_index_end(ptr noundef nonnull %call46116120130, ptr noundef %allocator) #4, !dbg !238
  %cmp62.not = icmp eq i32 %call58, 0, !dbg !245
  br i1 %cmp62.not, label %cleanup.cont68, label %cleanup75

cleanup.cont68:                                   ; preds = %cleanup66
  %3 = load i64, ptr %out_pos, align 8, !dbg !247
  %add.ptr69 = getelementptr inbounds i8, ptr %out, i64 %3, !dbg !249
  %call70 = call i32 @lzma_stream_footer_encode(ptr noundef nonnull %stream_flags, ptr noundef %add.ptr69) #4, !dbg !250
  %cmp71.not = icmp eq i32 %call70, 0, !dbg !251
  br i1 %cmp71.not, label %if.end73, label %cleanup75, !dbg !252

if.end73:                                         ; preds = %cleanup.cont68
  %4 = load i64, ptr %out_pos, align 8, !dbg !253
  %add74 = add i64 %4, 12, !dbg !253
    #dbg_assign(i64 %add74, !104, !DIExpression(), !254, ptr %out_pos, !DIExpression(), !180)
  store i64 %add74, ptr %out_pos_ptr, align 8, !dbg !255
  br label %cleanup75, !dbg !256

cleanup75:                                        ; preds = %if.end45.thread, %if.end45, %cleanup66.thread133, %cleanup.cont68, %do.body, %cleanup66, %if.end73
  %retval.4 = phi i32 [ 0, %if.end73 ], [ %call58, %cleanup66 ], [ %call41, %do.body ], [ 11, %cleanup.cont68 ], [ %call54, %cleanup66.thread133 ], [ 5, %if.end45 ], [ 5, %if.end45.thread ], !dbg !180
  call void @llvm.lifetime.end.p0(i64 208, ptr nonnull %block) #4, !dbg !257
  br label %cleanup76

cleanup76:                                        ; preds = %if.end15, %cleanup75
  %retval.5 = phi i32 [ %retval.4, %cleanup75 ], [ 11, %if.end15 ], !dbg !180
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %stream_flags) #4, !dbg !257
  br label %cleanup77

cleanup77:                                        ; preds = %if.end12, %cleanup76
  %retval.6 = phi i32 [ %retval.5, %cleanup76 ], [ 10, %if.end12 ], !dbg !180
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_pos) #4, !dbg !257
  br label %return

return:                                           ; preds = %if.end, %entry, %lor.lhs.false9, %lor.lhs.false2, %cleanup77
  %retval.7 = phi i32 [ %retval.6, %cleanup77 ], [ 11, %lor.lhs.false2 ], [ 11, %lor.lhs.false9 ], [ 11, %entry ], [ 3, %if.end ], !dbg !180
  ret i32 %retval.7, !dbg !257
}

declare !dbg !258 zeroext i8 @lzma_check_is_supported(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare !dbg !261 i32 @lzma_stream_header_encode(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !266 i32 @lzma_block_buffer_encode(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !270 ptr @lzma_index_init(ptr noundef) local_unnamed_addr #2

declare !dbg !273 i32 @lzma_index_append(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !276 i64 @lzma_block_unpadded_size(ptr noundef) local_unnamed_addr #2

declare !dbg !281 i32 @lzma_index_buffer_encode(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !286 i64 @lzma_index_size(ptr noundef) local_unnamed_addr #2

declare !dbg !289 void @lzma_index_end(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !292 i32 @lzma_stream_footer_encode(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !29, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "liblzma/common/stream_buffer_encoder.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "c86907379f940eabe0025fd9fc4e4d6b")
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
!39 = distinct !DISubprogram(name: "lzma_stream_buffer_bound", scope: !1, file: !1, line: 26, type: !40, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !45)
!40 = !DISubroutineType(types: !41)
!41 = !{!42, !42}
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !43, line: 18, baseType: !44)
!43 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!44 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!45 = !{!46, !47}
!46 = !DILocalVariable(name: "uncompressed_size", arg: 1, scope: !39, file: !1, line: 26, type: !42)
!47 = !DILocalVariable(name: "block_bound", scope: !39, file: !1, line: 29, type: !48)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!49 = !DILocation(line: 0, scope: !39)
!50 = !DILocation(line: 29, column: 29, scope: !39)
!51 = !DILocation(line: 30, column: 18, scope: !52)
!52 = distinct !DILexicalBlock(scope: !39, file: !1, line: 30, column: 6)
!53 = !DILocation(line: 30, column: 6, scope: !39)
!54 = !DILocation(line: 40, column: 1, scope: !39)
!55 = !DISubprogram(name: "lzma_block_buffer_bound", scope: !56, file: !56, line: 451, type: !40, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!56 = !DIFile(filename: "liblzma/api/lzma/block.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "bf8cbafce550217b909c63081e414910")
!57 = distinct !DISubprogram(name: "lzma_stream_buffer_encode", scope: !1, file: !1, line: 44, type: !58, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !95)
!58 = !DISubroutineType(types: !59)
!59 = !{!60, !61, !74, !75, !88, !42, !93, !94, !42}
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !63, line: 65, baseType: !64)
!63 = !DIFile(filename: "liblzma/api/lzma/filter.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !63, line: 43, size: 128, elements: !65)
!65 = !{!66, !73}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !64, file: !63, line: 54, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !68, line: 63, baseType: !69)
!68 = !DIFile(filename: "liblzma/api/lzma/vli.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !70, line: 27, baseType: !71)
!70 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !72, line: 45, baseType: !44)
!72 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!73 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !64, file: !63, line: 63, baseType: !30, size: 64, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !20, line: 55, baseType: !19)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !4, line: 403, baseType: !77)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 341, size: 192, elements: !78)
!78 = !{!79, !83, !87}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !77, file: !4, line: 376, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DISubroutineType(types: !82)
!82 = !{!30, !30, !42, !42}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !77, file: !4, line: 390, baseType: !84, size: 64, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DISubroutineType(types: !86)
!86 = !{null, !30, !30}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !77, file: !4, line: 401, baseType: !30, size: 64, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !70, line: 24, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !72, line: 38, baseType: !92)
!92 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!95 = !{!96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !131, !168, !172, !178}
!96 = !DILocalVariable(name: "filters", arg: 1, scope: !57, file: !1, line: 44, type: !61)
!97 = !DILocalVariable(name: "check", arg: 2, scope: !57, file: !1, line: 44, type: !74)
!98 = !DILocalVariable(name: "allocator", arg: 3, scope: !57, file: !1, line: 45, type: !75)
!99 = !DILocalVariable(name: "in", arg: 4, scope: !57, file: !1, line: 45, type: !88)
!100 = !DILocalVariable(name: "in_size", arg: 5, scope: !57, file: !1, line: 45, type: !42)
!101 = !DILocalVariable(name: "out", arg: 6, scope: !57, file: !1, line: 46, type: !93)
!102 = !DILocalVariable(name: "out_pos_ptr", arg: 7, scope: !57, file: !1, line: 46, type: !94)
!103 = !DILocalVariable(name: "out_size", arg: 8, scope: !57, file: !1, line: 46, type: !42)
!104 = !DILocalVariable(name: "out_pos", scope: !57, file: !1, line: 64, type: !42)
!105 = !DILocalVariable(name: "stream_flags", scope: !57, file: !1, line: 76, type: !106)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_stream_flags", file: !107, line: 105, baseType: !108)
!107 = !DIFile(filename: "liblzma/api/lzma/stream_flags.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "d3814c86a389337e759db33a259f1072")
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !107, line: 33, size: 448, elements: !109)
!109 = !{!110, !113, !114, !115, !117, !118, !119, !120, !122, !123, !124, !125, !126, !127, !128, !129, !130}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !108, file: !107, line: 51, baseType: !111, size: 32)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !70, line: 26, baseType: !112)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !72, line: 42, baseType: !5)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "backward_size", scope: !108, file: !107, line: 69, baseType: !67, size: 64, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !108, file: !107, line: 79, baseType: !74, size: 32, offset: 128)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !108, file: !107, line: 90, baseType: !116, size: 32, offset: 160)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !4, line: 46, baseType: !26)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !108, file: !107, line: 91, baseType: !116, size: 32, offset: 192)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !108, file: !107, line: 92, baseType: !116, size: 32, offset: 224)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !108, file: !107, line: 93, baseType: !116, size: 32, offset: 256)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool1", scope: !108, file: !107, line: 94, baseType: !121, size: 8, offset: 288)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_bool", file: !4, line: 29, baseType: !92)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool2", scope: !108, file: !107, line: 95, baseType: !121, size: 8, offset: 296)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool3", scope: !108, file: !107, line: 96, baseType: !121, size: 8, offset: 304)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool4", scope: !108, file: !107, line: 97, baseType: !121, size: 8, offset: 312)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool5", scope: !108, file: !107, line: 98, baseType: !121, size: 8, offset: 320)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool6", scope: !108, file: !107, line: 99, baseType: !121, size: 8, offset: 328)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool7", scope: !108, file: !107, line: 100, baseType: !121, size: 8, offset: 336)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool8", scope: !108, file: !107, line: 101, baseType: !121, size: 8, offset: 344)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !108, file: !107, line: 102, baseType: !111, size: 32, offset: 352)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !108, file: !107, line: 103, baseType: !111, size: 32, offset: 384)
!131 = !DILocalVariable(name: "block", scope: !57, file: !1, line: 88, type: !132)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_block", file: !56, line: 245, baseType: !133)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !56, line: 30, size: 1664, elements: !134)
!134 = !{!135, !136, !137, !138, !139, !140, !141, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !133, file: !56, line: 47, baseType: !111, size: 32)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !133, file: !56, line: 67, baseType: !111, size: 32, offset: 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !133, file: !56, line: 88, baseType: !74, size: 32, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_size", scope: !133, file: !56, line: 143, baseType: !67, size: 64, offset: 128)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_size", scope: !133, file: !56, line: 167, baseType: !67, size: 64, offset: 192)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "filters", scope: !133, file: !56, line: 195, baseType: !61, size: 64, offset: 256)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "raw_check", scope: !133, file: !56, line: 212, baseType: !142, size: 512, offset: 320)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 512, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !133, file: !56, line: 221, baseType: !30, size: 64, offset: 832)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !133, file: !56, line: 222, baseType: !30, size: 64, offset: 896)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !133, file: !56, line: 223, baseType: !30, size: 64, offset: 960)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !133, file: !56, line: 224, baseType: !111, size: 32, offset: 1024)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !133, file: !56, line: 225, baseType: !111, size: 32, offset: 1056)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !133, file: !56, line: 226, baseType: !67, size: 64, offset: 1088)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !133, file: !56, line: 227, baseType: !67, size: 64, offset: 1152)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int5", scope: !133, file: !56, line: 228, baseType: !67, size: 64, offset: 1216)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int6", scope: !133, file: !56, line: 229, baseType: !67, size: 64, offset: 1280)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int7", scope: !133, file: !56, line: 230, baseType: !67, size: 64, offset: 1344)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int8", scope: !133, file: !56, line: 231, baseType: !67, size: 64, offset: 1408)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !133, file: !56, line: 232, baseType: !116, size: 32, offset: 1472)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !133, file: !56, line: 233, baseType: !116, size: 32, offset: 1504)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !133, file: !56, line: 234, baseType: !116, size: 32, offset: 1536)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !133, file: !56, line: 235, baseType: !116, size: 32, offset: 1568)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool1", scope: !133, file: !56, line: 236, baseType: !121, size: 8, offset: 1600)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool2", scope: !133, file: !56, line: 237, baseType: !121, size: 8, offset: 1608)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool3", scope: !133, file: !56, line: 238, baseType: !121, size: 8, offset: 1616)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool4", scope: !133, file: !56, line: 239, baseType: !121, size: 8, offset: 1624)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool5", scope: !133, file: !56, line: 240, baseType: !121, size: 8, offset: 1632)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool6", scope: !133, file: !56, line: 241, baseType: !121, size: 8, offset: 1640)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool7", scope: !133, file: !56, line: 242, baseType: !121, size: 8, offset: 1648)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool8", scope: !133, file: !56, line: 243, baseType: !121, size: 8, offset: 1656)
!168 = !DILocalVariable(name: "ret_", scope: !169, file: !1, line: 95, type: !171)
!169 = distinct !DILexicalBlock(scope: !170, file: !1, line: 95, column: 3)
!170 = distinct !DILexicalBlock(scope: !57, file: !1, line: 94, column: 6)
!171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!172 = !DILocalVariable(name: "i", scope: !173, file: !1, line: 103, type: !174)
!173 = distinct !DILexicalBlock(scope: !57, file: !1, line: 99, column: 2)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_index", file: !176, line: 37, baseType: !177)
!176 = !DIFile(filename: "liblzma/api/lzma/index.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "923fbd07d3b348bf7a676d089b5c066f")
!177 = !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_index_s", file: !176, line: 37, flags: DIFlagFwdDecl)
!178 = !DILocalVariable(name: "ret", scope: !173, file: !1, line: 107, type: !60)
!179 = distinct !DIAssignID()
!180 = !DILocation(line: 0, scope: !57)
!181 = distinct !DIAssignID()
!182 = distinct !DIAssignID()
!183 = !DILocation(line: 49, column: 14, scope: !184)
!184 = distinct !DILexicalBlock(scope: !57, file: !1, line: 49, column: 6)
!185 = !DILocation(line: 49, column: 22, scope: !184)
!186 = !DILocation(line: 50, column: 11, scope: !184)
!187 = !DILocation(line: 50, column: 19, scope: !184)
!188 = !DILocation(line: 51, column: 30, scope: !184)
!189 = !DILocation(line: 51, column: 43, scope: !184)
!190 = !DILocation(line: 49, column: 6, scope: !57)
!191 = !DILocation(line: 54, column: 7, scope: !192)
!192 = distinct !DILexicalBlock(scope: !57, file: !1, line: 54, column: 6)
!193 = !DILocation(line: 54, column: 6, scope: !57)
!194 = !DILocation(line: 64, column: 2, scope: !57)
!195 = !DILocation(line: 64, column: 19, scope: !57)
!196 = distinct !DIAssignID()
!197 = !DILocation(line: 68, column: 15, scope: !198)
!198 = distinct !DILexicalBlock(scope: !57, file: !1, line: 68, column: 6)
!199 = !DILocation(line: 68, column: 25, scope: !198)
!200 = !DILocation(line: 68, column: 6, scope: !57)
!201 = !DILocation(line: 73, column: 11, scope: !57)
!202 = !DILocation(line: 76, column: 2, scope: !57)
!203 = !DILocation(line: 76, column: 20, scope: !57)
!204 = distinct !DIAssignID()
!205 = !DILocation(line: 76, column: 35, scope: !57)
!206 = distinct !DIAssignID()
!207 = !DILocation(line: 81, column: 51, scope: !208)
!208 = distinct !DILexicalBlock(scope: !57, file: !1, line: 81, column: 6)
!209 = !DILocation(line: 81, column: 6, scope: !208)
!210 = !DILocation(line: 82, column: 4, scope: !208)
!211 = !DILocation(line: 81, column: 6, scope: !57)
!212 = !DILocation(line: 85, column: 10, scope: !57)
!213 = distinct !DIAssignID()
!214 = !DILocation(line: 88, column: 2, scope: !57)
!215 = !DILocation(line: 88, column: 13, scope: !57)
!216 = distinct !DIAssignID()
!217 = !DILocation(line: 88, column: 21, scope: !57)
!218 = distinct !DIAssignID()
!219 = distinct !DIAssignID()
!220 = !DILocation(line: 94, column: 14, scope: !170)
!221 = !DILocation(line: 94, column: 6, scope: !57)
!222 = !DILocation(line: 95, column: 3, scope: !169)
!223 = !DILocation(line: 0, scope: !169)
!224 = !DILocation(line: 95, column: 3, scope: !225)
!225 = distinct !DILexicalBlock(scope: !169, file: !1, line: 95, column: 3)
!226 = !DILocation(line: 103, column: 19, scope: !173)
!227 = !DILocation(line: 0, scope: !173)
!228 = !DILocation(line: 104, column: 9, scope: !229)
!229 = distinct !DILexicalBlock(scope: !173, file: !1, line: 104, column: 7)
!230 = !DILocation(line: 104, column: 7, scope: !173)
!231 = !DILocation(line: 111, column: 6, scope: !232)
!232 = distinct !DILexicalBlock(scope: !173, file: !1, line: 109, column: 7)
!233 = !DILocation(line: 112, column: 12, scope: !232)
!234 = !DILocation(line: 110, column: 10, scope: !232)
!235 = !DILocation(line: 116, column: 11, scope: !236)
!236 = distinct !DILexicalBlock(scope: !173, file: !1, line: 116, column: 7)
!237 = !DILocation(line: 116, column: 7, scope: !173)
!238 = !DILocation(line: 123, column: 3, scope: !173)
!239 = !DILocation(line: 117, column: 10, scope: !240)
!240 = distinct !DILexicalBlock(scope: !236, file: !1, line: 116, column: 23)
!241 = !DILocation(line: 120, column: 33, scope: !240)
!242 = !DILocation(line: 120, column: 17, scope: !240)
!243 = !DILocation(line: 120, column: 31, scope: !240)
!244 = distinct !DIAssignID()
!245 = !DILocation(line: 125, column: 11, scope: !246)
!246 = distinct !DILexicalBlock(scope: !173, file: !1, line: 125, column: 7)
!247 = !DILocation(line: 130, column: 53, scope: !248)
!248 = distinct !DILexicalBlock(scope: !57, file: !1, line: 130, column: 6)
!249 = !DILocation(line: 130, column: 51, scope: !248)
!250 = !DILocation(line: 130, column: 6, scope: !248)
!251 = !DILocation(line: 131, column: 4, scope: !248)
!252 = !DILocation(line: 130, column: 6, scope: !57)
!253 = !DILocation(line: 134, column: 10, scope: !57)
!254 = distinct !DIAssignID()
!255 = !DILocation(line: 138, column: 15, scope: !57)
!256 = !DILocation(line: 139, column: 2, scope: !57)
!257 = !DILocation(line: 140, column: 1, scope: !57)
!258 = !DISubprogram(name: "lzma_check_is_supported", scope: !20, file: !20, line: 81, type: !259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!259 = !DISubroutineType(types: !260)
!260 = !{!121, !74}
!261 = !DISubprogram(name: "lzma_stream_header_encode", scope: !107, file: !107, line: 122, type: !262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!262 = !DISubroutineType(types: !263)
!263 = !{!60, !264, !93}
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !106)
!266 = !DISubprogram(name: "lzma_block_buffer_encode", scope: !56, file: !56, line: 492, type: !267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!267 = !DISubroutineType(types: !268)
!268 = !{!60, !269, !75, !88, !42, !93, !94, !42}
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!270 = !DISubprogram(name: "lzma_index_init", scope: !176, file: !176, line: 306, type: !271, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!271 = !DISubroutineType(types: !272)
!272 = !{!174, !75}
!273 = !DISubprogram(name: "lzma_index_append", scope: !176, file: !176, line: 343, type: !274, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!274 = !DISubroutineType(types: !275)
!275 = !{!60, !174, !75, !67, !67}
!276 = !DISubprogram(name: "lzma_block_unpadded_size", scope: !56, file: !56, line: 391, type: !277, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!277 = !DISubroutineType(types: !278)
!278 = !{!67, !279}
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!281 = !DISubprogram(name: "lzma_index_buffer_encode", scope: !176, file: !176, line: 648, type: !282, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!282 = !DISubroutineType(types: !283)
!283 = !{!60, !284, !93, !94, !42}
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !175)
!286 = !DISubprogram(name: "lzma_index_size", scope: !176, file: !176, line: 424, type: !287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!287 = !DISubroutineType(types: !288)
!288 = !{!67, !284}
!289 = !DISubprogram(name: "lzma_index_end", scope: !176, file: !176, line: 315, type: !290, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!290 = !DISubroutineType(types: !291)
!291 = !{null, !174, !75}
!292 = !DISubprogram(name: "lzma_stream_footer_encode", scope: !107, file: !107, line: 139, type: !262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
