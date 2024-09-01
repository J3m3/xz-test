; ModuleID = 'liblzma/lzma/lzma_encoder_presets.c'
source_filename = "liblzma/lzma/lzma_encoder_presets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local zeroext range(i8 0, 2) i8 @lzma_lzma_preset(ptr nocapture noundef writeonly %options, i32 noundef %preset) local_unnamed_addr #0 {
entry:
  %.compoundliteral = alloca [10 x i8], align 8
  %.compoundliteral19 = alloca [4 x i8], align 4
  %and = and i32 %preset, 31
  %cmp = icmp ult i32 %and, 10
  %and2 = and i32 %preset, 2147483616
  %tobool.not = icmp eq i32 %and2, 0
  %or.cond87 = and i1 %cmp, %tobool.not
  br i1 %or.cond87, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %preset_dict = getelementptr inbounds i8, ptr %options, i64 8
  store ptr null, ptr %preset_dict, align 8
  %preset_dict_size = getelementptr inbounds i8, ptr %options, i64 16
  store <4 x i32> <i32 0, i32 3, i32 0, i32 2>, ptr %preset_dict_size, align 8
  store <8 x i8> <i8 18, i8 20, i8 21, i8 22, i8 22, i8 23, i8 23, i8 24>, ptr %.compoundliteral, align 8
  %arrayinit.element9 = getelementptr inbounds i8, ptr %.compoundliteral, i64 8
  store i8 25, ptr %arrayinit.element9, align 8
  %arrayinit.element10 = getelementptr inbounds i8, ptr %.compoundliteral, i64 9
  store i8 26, ptr %arrayinit.element10, align 1
  %idxprom = zext nneg i32 %and to i64
  %arrayidx = getelementptr inbounds [10 x i8], ptr %.compoundliteral, i64 0, i64 %idxprom
  %0 = load i8, ptr %arrayidx, align 1
  %conv = zext nneg i8 %0 to i32
  %shl = shl nuw i32 1, %conv
  store i32 %shl, ptr %options, align 8
  %cmp11 = icmp ult i32 %and, 4
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end
  %cmp14 = icmp eq i32 %and, 0
  %cond = select i1 %cmp14, i32 3, i32 4
  %cmp16 = icmp ult i32 %and, 2
  %cond18 = select i1 %cmp16, i32 128, i32 273
  store <4 x i8> <i8 4, i8 8, i8 24, i8 48>, ptr %.compoundliteral19, align 4
  %arrayidx24 = getelementptr inbounds [4 x i8], ptr %.compoundliteral19, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %1 to i32
  br label %if.end36

if.else:                                          ; preds = %if.end
  %cmp28 = icmp eq i32 %and, 4
  %cmp30 = icmp eq i32 %and, 5
  %cond32 = select i1 %cmp30, i32 32, i32 64
  %cond33 = select i1 %cmp28, i32 16, i32 %cond32
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.then13
  %.sink89 = phi i32 [ 1, %if.then13 ], [ 2, %if.else ]
  %.sink88 = phi i32 [ %cond, %if.then13 ], [ 20, %if.else ]
  %cond33.sink = phi i32 [ %cond18, %if.then13 ], [ %cond33, %if.else ]
  %.sink = phi i32 [ %conv25, %if.then13 ], [ 0, %if.else ]
  %2 = getelementptr inbounds i8, ptr %options, i64 32
  store i32 %.sink89, ptr %2, align 8
  %3 = getelementptr inbounds i8, ptr %options, i64 40
  store i32 %.sink88, ptr %3, align 8
  %4 = getelementptr inbounds i8, ptr %options, i64 36
  store i32 %cond33.sink, ptr %4, align 4
  %5 = getelementptr inbounds i8, ptr %options, i64 44
  store i32 %.sink, ptr %5, align 4
  %tobool38.not = icmp sgt i32 %preset, -1
  br i1 %tobool38.not, label %cleanup, label %if.then39

if.then39:                                        ; preds = %if.end36
  store i32 2, ptr %2, align 8
  store i32 20, ptr %3, align 8
  switch i32 %and, label %if.else50 [
    i32 5, label %cleanup.sink.split
    i32 3, label %cleanup.sink.split
  ]

if.else50:                                        ; preds = %if.then39
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then39, %if.then39, %if.else50
  %.sink91 = phi i32 [ 273, %if.else50 ], [ 192, %if.then39 ], [ 192, %if.then39 ]
  %.sink90 = phi i32 [ 512, %if.else50 ], [ 0, %if.then39 ], [ 0, %if.then39 ]
  store i32 %.sink91, ptr %4, align 4
  store i32 %.sink90, ptr %5, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end36, %entry
  %retval.0 = phi i8 [ 1, %entry ], [ 0, %if.end36 ], [ 0, %cleanup.sink.split ]
  ret i8 %retval.0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
