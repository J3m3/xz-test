; ModuleID = 'common/tuklib_mbstr_width.c'
source_filename = "common/tuklib_mbstr_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i64 @tuklib_mbstr_width(ptr nocapture noundef readonly %str, ptr noundef writeonly %bytes) local_unnamed_addr #0 !dbg !12 {
entry:
    #dbg_value(ptr %str, !23, !DIExpression(), !27)
    #dbg_value(ptr %bytes, !24, !DIExpression(), !27)
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %str) #2, !dbg !28
    #dbg_value(i64 %call, !25, !DIExpression(), !27)
  %cmp.not = icmp eq ptr %bytes, null, !dbg !29
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !31

if.then:                                          ; preds = %entry
  store i64 %call, ptr %bytes, align 8, !dbg !32
  br label %if.end, !dbg !33

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call, !dbg !34
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !35 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #1

attributes #0 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "common/tuklib_mbstr_width.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "222459987dcc98c6ea41fd7b2c07f457")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!11 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!12 = distinct !DISubprogram(name: "tuklib_mbstr_width", scope: !1, file: !1, line: 21, type: !13, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !22)
!13 = !DISubroutineType(types: !14)
!14 = !{!15, !18, !21}
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !16, line: 18, baseType: !17)
!16 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!17 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!20 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!22 = !{!23, !24, !25}
!23 = !DILocalVariable(name: "str", arg: 1, scope: !12, file: !1, line: 21, type: !18)
!24 = !DILocalVariable(name: "bytes", arg: 2, scope: !12, file: !1, line: 21, type: !21)
!25 = !DILocalVariable(name: "len", scope: !12, file: !1, line: 23, type: !26)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!27 = !DILocation(line: 0, scope: !12)
!28 = !DILocation(line: 23, column: 21, scope: !12)
!29 = !DILocation(line: 24, column: 12, scope: !30)
!30 = distinct !DILexicalBlock(scope: !12, file: !1, line: 24, column: 6)
!31 = !DILocation(line: 24, column: 6, scope: !12)
!32 = !DILocation(line: 25, column: 10, scope: !30)
!33 = !DILocation(line: 25, column: 3, scope: !30)
!34 = !DILocation(line: 30, column: 2, scope: !12)
!35 = !DISubprogram(name: "strlen", scope: !36, file: !36, line: 407, type: !37, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!36 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!37 = !DISubroutineType(types: !38)
!38 = !{!17, !18}
