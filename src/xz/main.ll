; ModuleID = 'xz/main.c'
source_filename = "xz/main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@exit_status = internal unnamed_addr global i32 0, align 4, !dbg !0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @set_exit_status(i32 noundef %new_status) local_unnamed_addr #0 !dbg !24 {
entry:
    #dbg_value(i32 %new_status, !28, !DIExpression(), !29)
  %0 = load i32, ptr @exit_status, align 4, !dbg !30
  %cmp.not = icmp eq i32 %0, 1, !dbg !32
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !33

if.then:                                          ; preds = %entry
  store i32 %new_status, ptr @exit_status, align 4, !dbg !34
  br label %if.end, !dbg !35

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !36
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @set_exit_no_warn() local_unnamed_addr #1 !dbg !37 {
entry:
  ret void, !dbg !40
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "exit_status", scope: !2, file: !3, line: 20, type: !5, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !12, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "xz/main.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "df8d7caed255e35b590d61bd42e36bc4")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "exit_status_type", file: !6, line: 14, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "xz/main.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "f54f82fff34a105635379e91892f4bd0")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "E_SUCCESS", value: 0)
!10 = !DIEnumerator(name: "E_ERROR", value: 1)
!11 = !DIEnumerator(name: "E_WARNING", value: 2)
!12 = !{!0, !13}
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "no_warn", scope: !2, file: !3, line: 32, type: !15, isLocal: true, isDefinition: true)
!15 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!16 = !{i32 7, !"Dwarf Version", i32 5}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{i32 8, !"PIC Level", i32 2}
!20 = !{i32 7, !"PIE Level", i32 2}
!21 = !{i32 7, !"uwtable", i32 2}
!22 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!23 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!24 = distinct !DISubprogram(name: "set_exit_status", scope: !3, file: !3, line: 36, type: !25, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !27)
!25 = !DISubroutineType(types: !26)
!26 = !{null, !5}
!27 = !{!28}
!28 = !DILocalVariable(name: "new_status", arg: 1, scope: !24, file: !3, line: 36, type: !5)
!29 = !DILocation(line: 0, scope: !24)
!30 = !DILocation(line: 46, column: 6, scope: !31)
!31 = distinct !DILexicalBlock(scope: !24, file: !3, line: 46, column: 6)
!32 = !DILocation(line: 46, column: 18, scope: !31)
!33 = !DILocation(line: 46, column: 6, scope: !24)
!34 = !DILocation(line: 47, column: 15, scope: !31)
!35 = !DILocation(line: 47, column: 3, scope: !31)
!36 = !DILocation(line: 55, column: 2, scope: !24)
!37 = distinct !DISubprogram(name: "set_exit_no_warn", scope: !3, file: !3, line: 60, type: !38, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!38 = !DISubroutineType(types: !39)
!39 = !{null}
!40 = !DILocation(line: 63, column: 2, scope: !37)
