; ModuleID = 'common/tuklib_mbstr_fw.c'
source_filename = "common/tuklib_mbstr_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @tuklib_mbstr_fw(ptr noundef %str, i32 noundef %columns_min) local_unnamed_addr #0 !dbg !14 {
entry:
  %len = alloca i64, align 8, !DIAssignID !27
    #dbg_assign(i1 undef, !24, !DIExpression(), !27, ptr %len, !DIExpression(), !28)
    #dbg_value(ptr %str, !22, !DIExpression(), !28)
    #dbg_value(i32 %columns_min, !23, !DIExpression(), !28)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len) #4, !dbg !29
  %call = call i64 @tuklib_mbstr_width(ptr noundef %str, ptr noundef nonnull %len) #4, !dbg !30
    #dbg_value(i64 %call, !25, !DIExpression(), !28)
  %cmp = icmp eq i64 %call, -1, !dbg !31
  br i1 %cmp, label %cleanup, label %if.end, !dbg !33

if.end:                                           ; preds = %entry
  %conv = sext i32 %columns_min to i64, !dbg !34
  %cmp1 = icmp ugt i64 %call, %conv, !dbg !36
  br i1 %cmp1, label %cleanup, label %if.end4, !dbg !37

if.end4:                                          ; preds = %if.end
  %.pre = load i64, ptr %len, align 8, !dbg !38
  %add = call i64 @llvm.usub.sat.i64(i64 %conv, i64 %call), !dbg !39
  %0 = add i64 %.pre, %add, !dbg !39
  %conv11 = trunc i64 %0 to i32, !dbg !38
  br label %cleanup, !dbg !40

cleanup:                                          ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi i32 [ %conv11, %if.end4 ], [ -1, %entry ], [ 0, %if.end ], !dbg !28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len) #4, !dbg !41
  ret i32 %retval.0, !dbg !41
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !42 i64 @tuklib_mbstr_width(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "common/tuklib_mbstr_fw.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "2dcc99604758195b800a6303c1109630")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !4, line: 18, baseType: !5)
!4 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!5 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!6 = !{i32 7, !"Dwarf Version", i32 5}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{i32 8, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 2}
!12 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!13 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!14 = distinct !DISubprogram(name: "tuklib_mbstr_fw", scope: !1, file: !1, line: 17, type: !15, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !21)
!15 = !DISubroutineType(types: !16)
!16 = !{!17, !18, !17}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!20 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!21 = !{!22, !23, !24, !25}
!22 = !DILocalVariable(name: "str", arg: 1, scope: !14, file: !1, line: 17, type: !18)
!23 = !DILocalVariable(name: "columns_min", arg: 2, scope: !14, file: !1, line: 17, type: !17)
!24 = !DILocalVariable(name: "len", scope: !14, file: !1, line: 19, type: !3)
!25 = !DILocalVariable(name: "width", scope: !14, file: !1, line: 20, type: !26)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3)
!27 = distinct !DIAssignID()
!28 = !DILocation(line: 0, scope: !14)
!29 = !DILocation(line: 19, column: 2, scope: !14)
!30 = !DILocation(line: 20, column: 23, scope: !14)
!31 = !DILocation(line: 21, column: 12, scope: !32)
!32 = distinct !DILexicalBlock(scope: !14, file: !1, line: 21, column: 6)
!33 = !DILocation(line: 21, column: 6, scope: !14)
!34 = !DILocation(line: 24, column: 14, scope: !35)
!35 = distinct !DILexicalBlock(scope: !14, file: !1, line: 24, column: 6)
!36 = !DILocation(line: 24, column: 12, scope: !35)
!37 = !DILocation(line: 24, column: 6, scope: !14)
!38 = !DILocation(line: 30, column: 9, scope: !14)
!39 = !DILocation(line: 27, column: 6, scope: !14)
!40 = !DILocation(line: 30, column: 2, scope: !14)
!41 = !DILocation(line: 31, column: 1, scope: !14)
!42 = !DISubprogram(name: "tuklib_mbstr_width", scope: !43, file: !43, line: 25, type: !44, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!43 = !DIFile(filename: "common/tuklib_mbstr.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "5bc9cb58bcf05bb0a68592285fa2e6df")
!44 = !DISubroutineType(types: !45)
!45 = !{!3, !18, !46}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64)
