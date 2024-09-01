; ModuleID = 'common/tuklib_exit.c'
source_filename = "common/tuklib_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn nounwind uwtable
define dso_local void @tuklib_exit(i32 noundef %status, i32 noundef %err_status, i32 noundef %show_error) local_unnamed_addr #0 !dbg !10 {
entry:
    #dbg_value(i32 %status, !15, !DIExpression(), !18)
    #dbg_value(i32 %err_status, !16, !DIExpression(), !18)
    #dbg_value(i32 %show_error, !17, !DIExpression(), !18)
  tail call void @exit(i32 noundef %status) #2, !dbg !19
  unreachable, !dbg !19
}

; Function Attrs: noreturn nounwind
declare !dbg !20 void @exit(i32 noundef) local_unnamed_addr #1

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "common/tuklib_exit.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "8eba7ebaa992270d1be33b2022dc2610")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!9 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!10 = distinct !DISubprogram(name: "tuklib_exit", scope: !1, file: !1, line: 24, type: !11, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{null, !13, !13, !13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{!15, !16, !17}
!15 = !DILocalVariable(name: "status", arg: 1, scope: !10, file: !1, line: 24, type: !13)
!16 = !DILocalVariable(name: "err_status", arg: 2, scope: !10, file: !1, line: 24, type: !13)
!17 = !DILocalVariable(name: "show_error", arg: 3, scope: !10, file: !1, line: 24, type: !13)
!18 = !DILocation(line: 0, scope: !10)
!19 = !DILocation(line: 59, column: 2, scope: !10)
!20 = !DISubprogram(name: "exit", scope: !21, file: !21, line: 624, type: !22, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!21 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!22 = !DISubroutineType(types: !23)
!23 = !{null, !13}
