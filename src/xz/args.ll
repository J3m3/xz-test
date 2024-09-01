; ModuleID = 'xz/args.c'
source_filename = "xz/args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@opt_stdout = dso_local local_unnamed_addr global i8 0, align 1
@opt_force = dso_local local_unnamed_addr global i8 0, align 1
@opt_keep_original = dso_local local_unnamed_addr global i8 0, align 1
@opt_robot = dso_local local_unnamed_addr global i8 0, align 1
@stdin_filename = dso_local local_unnamed_addr constant [8 x i8] c"(stdin)\00", align 1

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
