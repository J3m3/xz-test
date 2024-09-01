; ModuleID = 'xz/hardware.c'
source_filename = "xz/hardware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@threadlimit = internal unnamed_addr global i32 0, align 4, !dbg !0
@total_ram = internal unnamed_addr global i1 false, align 8, !dbg !42
@memlimit_compress = internal unnamed_addr global i64 0, align 8, !dbg !36
@memlimit_decompress = internal unnamed_addr global i64 0, align 8, !dbg !38

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @hardware_threadlimit_set(i32 noundef %new_threadlimit) local_unnamed_addr #0 !dbg !51 {
entry:
    #dbg_value(i32 %new_threadlimit, !55, !DIExpression(), !56)
  %.new_threadlimit = tail call i32 @llvm.umax.i32(i32 %new_threadlimit, i32 1)
  store i32 %.new_threadlimit, ptr @threadlimit, align 4, !dbg !57
  ret void, !dbg !59
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @hardware_threadlimit_get() local_unnamed_addr #1 !dbg !60 {
entry:
  %0 = load i32, ptr @threadlimit, align 4, !dbg !63
  ret i32 %0, !dbg !64
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @hardware_memlimit_set(i64 noundef %new_memlimit, i1 noundef zeroext %set_compress, i1 noundef zeroext %set_decompress, i1 noundef zeroext %is_percentage) local_unnamed_addr #2 !dbg !65 {
entry:
    #dbg_value(i64 %new_memlimit, !70, !DIExpression(), !74)
    #dbg_value(i1 %set_compress, !71, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !74)
    #dbg_value(i1 %set_decompress, !72, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !74)
    #dbg_value(i1 %is_percentage, !73, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !74)
  br i1 %is_percentage, label %if.then, label %if.end, !dbg !75

if.then:                                          ; preds = %entry
  %conv3 = and i64 %new_memlimit, 4294967295, !dbg !76
  %.b = load i1, ptr @total_ram, align 8, !dbg !79
  %0 = select i1 %.b, i64 943718400, i64 0, !dbg !79
  %mul = mul nuw nsw i64 %0, %conv3, !dbg !80
  %div = udiv i64 %mul, 100, !dbg !81
    #dbg_value(i64 %div, !70, !DIExpression(), !74)
  br label %if.end, !dbg !82

if.end:                                           ; preds = %if.then, %entry
  %new_memlimit.addr.0 = phi i64 [ %div, %if.then ], [ %new_memlimit, %entry ]
    #dbg_value(i64 %new_memlimit.addr.0, !70, !DIExpression(), !74)
  br i1 %set_compress, label %if.then5, label %if.end6, !dbg !83

if.then5:                                         ; preds = %if.end
  store i64 %new_memlimit.addr.0, ptr @memlimit_compress, align 8, !dbg !84
  br label %if.end6, !dbg !86

if.end6:                                          ; preds = %if.then5, %if.end
  br i1 %set_decompress, label %if.then8, label %if.end9, !dbg !87

if.then8:                                         ; preds = %if.end6
  store i64 %new_memlimit.addr.0, ptr @memlimit_decompress, align 8, !dbg !88
  br label %if.end9, !dbg !90

if.end9:                                          ; preds = %if.then8, %if.end6
  ret void, !dbg !91
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i64 @hardware_memlimit_get(i32 noundef %mode) local_unnamed_addr #1 !dbg !92 {
entry:
    #dbg_value(i32 %mode, !96, !DIExpression(), !99)
  %cmp = icmp eq i32 %mode, 0, !dbg !100
  %0 = load i64, ptr @memlimit_compress, align 8, !dbg !101
  %1 = load i64, ptr @memlimit_decompress, align 8, !dbg !101
  %cond = select i1 %cmp, i64 %0, i64 %1, !dbg !101
    #dbg_value(i64 %cond, !97, !DIExpression(), !99)
  %cmp1.not = icmp eq i64 %cond, 0, !dbg !102
  %cond5 = select i1 %cmp1.not, i64 -1, i64 %cond, !dbg !103
  ret i64 %cond5, !dbg !104
}

; Function Attrs: nounwind uwtable
define dso_local void @hardware_memlimit_show() local_unnamed_addr #3 !dbg !105 {
entry:
  %call = tail call i32 @message_verbosity_get() #6, !dbg !108
  %cmp = icmp ne i32 %call, 0, !dbg !109
  %conv = zext i1 %cmp to i32, !dbg !109
  tail call void @tuklib_exit(i32 noundef 0, i32 noundef 1, i32 noundef %conv) #6, !dbg !110
  ret void, !dbg !111
}

declare !dbg !112 void @tuklib_exit(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !117 i32 @message_verbosity_get() local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @hardware_init() local_unnamed_addr #0 !dbg !120 {
entry:
  store i1 true, ptr @total_ram, align 8, !dbg !121
    #dbg_value(i64 0, !70, !DIExpression(), !122)
    #dbg_value(i1 true, !71, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !122)
    #dbg_value(i1 true, !72, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !122)
    #dbg_value(i1 false, !73, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !122)
    #dbg_value(i64 0, !70, !DIExpression(), !122)
  store i64 0, ptr @memlimit_compress, align 8, !dbg !124
  store i64 0, ptr @memlimit_decompress, align 8, !dbg !125
    #dbg_value(i32 0, !55, !DIExpression(), !126)
  store i32 1, ptr @threadlimit, align 4, !dbg !128
  ret void, !dbg !129
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "threadlimit", scope: !2, file: !3, line: 19, type: !28, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !27, globals: !35, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "xz/hardware.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "5cbf5725e64d60ca855b01ad121851ce")
!4 = !{!5, !13, !19}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "operation_mode", file: !6, line: 13, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "xz/coder.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "17fcfb290997745d98f9605d60a11c50")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MODE_COMPRESS", value: 0)
!10 = !DIEnumerator(name: "MODE_DECOMPRESS", value: 1)
!11 = !DIEnumerator(name: "MODE_TEST", value: 2)
!12 = !DIEnumerator(name: "MODE_LIST", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "exit_status_type", file: !14, line: 14, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "xz/main.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "f54f82fff34a105635379e91892f4bd0")
!15 = !{!16, !17, !18}
!16 = !DIEnumerator(name: "E_SUCCESS", value: 0)
!17 = !DIEnumerator(name: "E_ERROR", value: 1)
!18 = !DIEnumerator(name: "E_WARNING", value: 2)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "message_verbosity", file: !20, line: 14, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "xz/message.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "46ce4fae4ea23be71658f9b2e1a5aef3")
!21 = !{!22, !23, !24, !25, !26}
!22 = !DIEnumerator(name: "V_SILENT", value: 0)
!23 = !DIEnumerator(name: "V_ERROR", value: 1)
!24 = !DIEnumerator(name: "V_WARNING", value: 2)
!25 = !DIEnumerator(name: "V_VERBOSE", value: 3)
!26 = !DIEnumerator(name: "V_DEBUG", value: 4)
!27 = !{!28, !32}
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !29, line: 26, baseType: !30)
!29 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !31, line: 42, baseType: !7)
!31 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !29, line: 27, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !31, line: 45, baseType: !34)
!34 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!35 = !{!0, !36, !38, !40}
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "memlimit_compress", scope: !2, file: !3, line: 22, type: !32, isLocal: true, isDefinition: true)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "memlimit_decompress", scope: !2, file: !3, line: 25, type: !32, isLocal: true, isDefinition: true)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "total_ram", scope: !2, file: !3, line: 28, type: !32, isLocal: true, isDefinition: true)
!42 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 943718400, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!43 = !{i32 7, !"Dwarf Version", i32 5}
!44 = !{i32 2, !"Debug Info Version", i32 3}
!45 = !{i32 1, !"wchar_size", i32 4}
!46 = !{i32 8, !"PIC Level", i32 2}
!47 = !{i32 7, !"PIE Level", i32 2}
!48 = !{i32 7, !"uwtable", i32 2}
!49 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!50 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!51 = distinct !DISubprogram(name: "hardware_threadlimit_set", scope: !3, file: !3, line: 32, type: !52, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !54)
!52 = !DISubroutineType(types: !53)
!53 = !{null, !28}
!54 = !{!55}
!55 = !DILocalVariable(name: "new_threadlimit", arg: 1, scope: !51, file: !3, line: 32, type: !28)
!56 = !DILocation(line: 0, scope: !51)
!57 = !DILocation(line: 0, scope: !58)
!58 = distinct !DILexicalBlock(scope: !51, file: !3, line: 34, column: 6)
!59 = !DILocation(line: 45, column: 2, scope: !51)
!60 = distinct !DISubprogram(name: "hardware_threadlimit_get", scope: !3, file: !3, line: 50, type: !61, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!61 = !DISubroutineType(types: !62)
!62 = !{!28}
!63 = !DILocation(line: 52, column: 9, scope: !60)
!64 = !DILocation(line: 52, column: 2, scope: !60)
!65 = distinct !DISubprogram(name: "hardware_memlimit_set", scope: !3, file: !3, line: 57, type: !66, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !69)
!66 = !DISubroutineType(types: !67)
!67 = !{null, !32, !68, !68, !68}
!68 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!69 = !{!70, !71, !72, !73}
!70 = !DILocalVariable(name: "new_memlimit", arg: 1, scope: !65, file: !3, line: 57, type: !32)
!71 = !DILocalVariable(name: "set_compress", arg: 2, scope: !65, file: !3, line: 58, type: !68)
!72 = !DILocalVariable(name: "set_decompress", arg: 3, scope: !65, file: !3, line: 58, type: !68)
!73 = !DILocalVariable(name: "is_percentage", arg: 4, scope: !65, file: !3, line: 58, type: !68)
!74 = !DILocation(line: 0, scope: !65)
!75 = !DILocation(line: 60, column: 6, scope: !65)
!76 = !DILocation(line: 63, column: 18, scope: !77)
!77 = distinct !DILexicalBlock(scope: !78, file: !3, line: 60, column: 21)
!78 = distinct !DILexicalBlock(scope: !65, file: !3, line: 60, column: 6)
!79 = !DILocation(line: 63, column: 43, scope: !77)
!80 = !DILocation(line: 63, column: 41, scope: !77)
!81 = !DILocation(line: 63, column: 53, scope: !77)
!82 = !DILocation(line: 64, column: 2, scope: !77)
!83 = !DILocation(line: 66, column: 6, scope: !65)
!84 = !DILocation(line: 67, column: 21, scope: !85)
!85 = distinct !DILexicalBlock(scope: !65, file: !3, line: 66, column: 6)
!86 = !DILocation(line: 67, column: 3, scope: !85)
!87 = !DILocation(line: 69, column: 6, scope: !65)
!88 = !DILocation(line: 70, column: 23, scope: !89)
!89 = distinct !DILexicalBlock(scope: !65, file: !3, line: 69, column: 6)
!90 = !DILocation(line: 70, column: 3, scope: !89)
!91 = !DILocation(line: 72, column: 2, scope: !65)
!92 = distinct !DISubprogram(name: "hardware_memlimit_get", scope: !3, file: !3, line: 77, type: !93, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !95)
!93 = !DISubroutineType(types: !94)
!94 = !{!32, !5}
!95 = !{!96, !97}
!96 = !DILocalVariable(name: "mode", arg: 1, scope: !92, file: !3, line: 77, type: !5)
!97 = !DILocalVariable(name: "memlimit", scope: !92, file: !3, line: 88, type: !98)
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!99 = !DILocation(line: 0, scope: !92)
!100 = !DILocation(line: 88, column: 33, scope: !92)
!101 = !DILocation(line: 88, column: 28, scope: !92)
!102 = !DILocation(line: 90, column: 18, scope: !92)
!103 = !DILocation(line: 90, column: 9, scope: !92)
!104 = !DILocation(line: 90, column: 2, scope: !92)
!105 = distinct !DISubprogram(name: "hardware_memlimit_show", scope: !3, file: !3, line: 115, type: !106, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!106 = !DISubroutineType(types: !107)
!107 = !{null}
!108 = !DILocation(line: 132, column: 34, scope: !105)
!109 = !DILocation(line: 132, column: 58, scope: !105)
!110 = !DILocation(line: 132, column: 2, scope: !105)
!111 = !DILocation(line: 133, column: 1, scope: !105)
!112 = !DISubprogram(name: "tuklib_exit", scope: !113, file: !113, line: 21, type: !114, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!113 = !DIFile(filename: "common/tuklib_exit.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "09538a5ffe493e3e268cd00199828e96")
!114 = !DISubroutineType(types: !115)
!115 = !{null, !116, !116, !116}
!116 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!117 = !DISubprogram(name: "message_verbosity_get", scope: !20, file: !20, line: 41, type: !118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!118 = !DISubroutineType(types: !119)
!119 = !{!19}
!120 = distinct !DISubprogram(name: "hardware_init", scope: !3, file: !3, line: 137, type: !106, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!121 = !DILocation(line: 145, column: 13, scope: !120)
!122 = !DILocation(line: 0, scope: !65, inlinedAt: !123)
!123 = distinct !DILocation(line: 148, column: 2, scope: !120)
!124 = !DILocation(line: 67, column: 21, scope: !85, inlinedAt: !123)
!125 = !DILocation(line: 70, column: 23, scope: !89, inlinedAt: !123)
!126 = !DILocation(line: 0, scope: !51, inlinedAt: !127)
!127 = distinct !DILocation(line: 149, column: 2, scope: !120)
!128 = !DILocation(line: 0, scope: !58, inlinedAt: !127)
!129 = !DILocation(line: 150, column: 2, scope: !120)
