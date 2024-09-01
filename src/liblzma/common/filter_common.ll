; ModuleID = 'liblzma/common/filter_common.c'
source_filename = "liblzma/common/filter_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i64, i64, i8, i8, i8 }
%struct.lzma_filter = type { i64, ptr }
%struct.lzma_filter_info_s = type { i64, ptr, ptr }

@features = internal unnamed_addr constant [10 x %struct.anon] [%struct.anon { i64 4611686018427387905, i64 112, i8 0, i8 1, i8 1 }, %struct.anon { i64 33, i64 112, i8 0, i8 1, i8 1 }, %struct.anon { i64 4, i64 4, i8 1, i8 0, i8 0 }, %struct.anon { i64 5, i64 4, i8 1, i8 0, i8 0 }, %struct.anon { i64 6, i64 4, i8 1, i8 0, i8 0 }, %struct.anon { i64 7, i64 4, i8 1, i8 0, i8 0 }, %struct.anon { i64 8, i64 4, i8 1, i8 0, i8 0 }, %struct.anon { i64 9, i64 4, i8 1, i8 0, i8 0 }, %struct.anon { i64 3, i64 40, i8 1, i8 0, i8 0 }, %struct.anon { i64 -1, i64 0, i8 0, i8 0, i8 0 }], align 16, !dbg !0

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @lzma_filters_copy(ptr noundef readonly %src, ptr noundef %dest, ptr noundef %allocator) local_unnamed_addr #0 !dbg !66 {
entry:
    #dbg_value(ptr %src, !93, !DIExpression(), !105)
    #dbg_value(ptr %dest, !94, !DIExpression(), !105)
    #dbg_value(ptr %allocator, !95, !DIExpression(), !105)
  %cmp = icmp eq ptr %src, null, !dbg !106
  %cmp1 = icmp eq ptr %dest, null
  %or.cond = or i1 %cmp, %cmp1, !dbg !108
  br i1 %or.cond, label %return, label %for.cond.preheader, !dbg !108

for.cond.preheader:                               ; preds = %entry
    #dbg_value(i64 0, !97, !DIExpression(), !105)
    #dbg_value(i32 undef, !96, !DIExpression(), !105)
  %0 = load i64, ptr %src, align 8, !dbg !109
  %cmp2.not101 = icmp eq i64 %0, -1, !dbg !110
  br i1 %cmp2.not101, label %for.end44, label %if.end5, !dbg !111

if.end5:                                          ; preds = %for.cond.preheader
    #dbg_value(i64 0, !97, !DIExpression(), !105)
  store i64 %0, ptr %dest, align 8, !dbg !112
  %options = getelementptr inbounds i8, ptr %src, i64 8, !dbg !113
  %1 = load ptr, ptr %options, align 8, !dbg !113
  %cmp11 = icmp eq ptr %1, null, !dbg !114
  br i1 %cmp11, label %if.then12, label %for.cond15.preheader, !dbg !115

for.cond15.preheader:                             ; preds = %if.end5
  %2 = load i64, ptr %src, align 8
    #dbg_value(i64 0, !98, !DIExpression(), !116)
  switch i64 %2, label %error [
    i64 4611686018427387905, label %for.end
    i64 33, label %for.end.fold.split
    i64 4, label %for.end.fold.split119
    i64 5, label %for.end.fold.split120
    i64 6, label %for.end.fold.split121
    i64 7, label %for.end.fold.split122
    i64 8, label %for.end.fold.split123
    i64 9, label %for.end.fold.split124
    i64 3, label %for.end.fold.split125
    i64 -1, label %for.end.fold.split126
  ], !dbg !117

if.then12:                                        ; preds = %if.end5
  %options14 = getelementptr inbounds i8, ptr %dest, i64 8, !dbg !119
  store ptr null, ptr %options14, align 8, !dbg !121
  br label %for.inc42, !dbg !122

for.end.fold.split:                               ; preds = %for.cond15.preheader
  br label %for.end, !dbg !123

for.end.fold.split119:                            ; preds = %for.cond15.preheader
  br label %for.end, !dbg !123

for.end.fold.split120:                            ; preds = %for.cond15.preheader
  br label %for.end, !dbg !123

for.end.fold.split121:                            ; preds = %for.cond15.preheader
  br label %for.end, !dbg !123

for.end.fold.split122:                            ; preds = %for.cond15.preheader
  br label %for.end, !dbg !123

for.end.fold.split123:                            ; preds = %for.cond15.preheader
  br label %for.end, !dbg !123

for.end.fold.split124:                            ; preds = %for.cond15.preheader
  br label %for.end, !dbg !123

for.end.fold.split125:                            ; preds = %for.cond15.preheader
  br label %for.end, !dbg !123

for.end.fold.split126:                            ; preds = %for.cond15.preheader
  br label %for.end, !dbg !123

for.end:                                          ; preds = %for.cond15.preheader, %for.end.fold.split126, %for.end.fold.split125, %for.end.fold.split124, %for.end.fold.split123, %for.end.fold.split122, %for.end.fold.split121, %for.end.fold.split120, %for.end.fold.split119, %for.end.fold.split
  %arrayidx18.lcssa = phi ptr [ @features, %for.cond15.preheader ], [ getelementptr inbounds (i8, ptr @features, i64 24), %for.end.fold.split ], [ getelementptr inbounds (i8, ptr @features, i64 48), %for.end.fold.split119 ], [ getelementptr inbounds (i8, ptr @features, i64 72), %for.end.fold.split120 ], [ getelementptr inbounds (i8, ptr @features, i64 96), %for.end.fold.split121 ], [ getelementptr inbounds (i8, ptr @features, i64 120), %for.end.fold.split122 ], [ getelementptr inbounds (i8, ptr @features, i64 144), %for.end.fold.split123 ], [ getelementptr inbounds (i8, ptr @features, i64 168), %for.end.fold.split124 ], [ getelementptr inbounds (i8, ptr @features, i64 192), %for.end.fold.split125 ], [ getelementptr inbounds (i8, ptr @features, i64 216), %for.end.fold.split126 ], !dbg !124
  %options_size = getelementptr inbounds i8, ptr %arrayidx18.lcssa, i64 8, !dbg !123
  %3 = load i64, ptr %options_size, align 8, !dbg !123
  %call = tail call ptr @lzma_alloc(i64 noundef %3, ptr noundef %allocator) #4, !dbg !126
  %options29 = getelementptr inbounds i8, ptr %dest, i64 8, !dbg !127
  store ptr %call, ptr %options29, align 8, !dbg !128
  %cmp32 = icmp eq ptr %call, null, !dbg !129
  br i1 %cmp32, label %error, label %cleanup, !dbg !131

cleanup:                                          ; preds = %for.end
  %4 = load ptr, ptr %options, align 8, !dbg !132
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %call, ptr align 1 %4, i64 %3, i1 false), !dbg !133
    #dbg_value(i32 undef, !96, !DIExpression(), !105)
  br label %for.inc42

for.inc42:                                        ; preds = %cleanup, %if.then12
    #dbg_value(i32 undef, !96, !DIExpression(), !105)
    #dbg_value(i64 1, !97, !DIExpression(), !105)
  %arrayidx = getelementptr inbounds i8, ptr %src, i64 16, !dbg !134
  %5 = load i64, ptr %arrayidx, align 8, !dbg !109
  %cmp2.not = icmp eq i64 %5, -1, !dbg !110
  br i1 %cmp2.not, label %for.end44, label %for.body.1, !dbg !111, !llvm.loop !135

for.body.1:                                       ; preds = %for.inc42
  %arrayidx103.1 = getelementptr inbounds i8, ptr %src, i64 16, !dbg !137
    #dbg_value(i64 1, !97, !DIExpression(), !105)
  %arrayidx8.1 = getelementptr inbounds i8, ptr %dest, i64 16, !dbg !139
  store i64 %5, ptr %arrayidx8.1, align 8, !dbg !112
  %options.1 = getelementptr inbounds i8, ptr %src, i64 24, !dbg !113
  %6 = load ptr, ptr %options.1, align 8, !dbg !113
  %cmp11.1 = icmp eq ptr %6, null, !dbg !114
  br i1 %cmp11.1, label %if.then12.1, label %for.cond15.preheader.1, !dbg !115

for.cond15.preheader.1:                           ; preds = %for.body.1
  %7 = load i64, ptr %arrayidx103.1, align 8
    #dbg_value(i64 0, !98, !DIExpression(), !116)
  switch i64 %7, label %error [
    i64 4611686018427387905, label %for.end.1
    i64 33, label %for.end.fold.split.1
    i64 4, label %for.end.fold.split119.1
    i64 5, label %for.end.fold.split120.1
    i64 6, label %for.end.fold.split121.1
    i64 7, label %for.end.fold.split122.1
    i64 8, label %for.end.fold.split123.1
    i64 9, label %for.end.fold.split124.1
    i64 3, label %for.end.fold.split125.1
    i64 -1, label %for.end.fold.split126.1
  ], !dbg !117

for.end.fold.split126.1:                          ; preds = %for.cond15.preheader.1
  br label %for.end.1, !dbg !123

for.end.fold.split125.1:                          ; preds = %for.cond15.preheader.1
  br label %for.end.1, !dbg !123

for.end.fold.split124.1:                          ; preds = %for.cond15.preheader.1
  br label %for.end.1, !dbg !123

for.end.fold.split123.1:                          ; preds = %for.cond15.preheader.1
  br label %for.end.1, !dbg !123

for.end.fold.split122.1:                          ; preds = %for.cond15.preheader.1
  br label %for.end.1, !dbg !123

for.end.fold.split121.1:                          ; preds = %for.cond15.preheader.1
  br label %for.end.1, !dbg !123

for.end.fold.split120.1:                          ; preds = %for.cond15.preheader.1
  br label %for.end.1, !dbg !123

for.end.fold.split119.1:                          ; preds = %for.cond15.preheader.1
  br label %for.end.1, !dbg !123

for.end.fold.split.1:                             ; preds = %for.cond15.preheader.1
  br label %for.end.1, !dbg !123

for.end.1:                                        ; preds = %for.end.fold.split.1, %for.end.fold.split119.1, %for.end.fold.split120.1, %for.end.fold.split121.1, %for.end.fold.split122.1, %for.end.fold.split123.1, %for.end.fold.split124.1, %for.end.fold.split125.1, %for.end.fold.split126.1, %for.cond15.preheader.1
  %arrayidx18.lcssa.1 = phi ptr [ @features, %for.cond15.preheader.1 ], [ getelementptr inbounds (i8, ptr @features, i64 24), %for.end.fold.split.1 ], [ getelementptr inbounds (i8, ptr @features, i64 48), %for.end.fold.split119.1 ], [ getelementptr inbounds (i8, ptr @features, i64 72), %for.end.fold.split120.1 ], [ getelementptr inbounds (i8, ptr @features, i64 96), %for.end.fold.split121.1 ], [ getelementptr inbounds (i8, ptr @features, i64 120), %for.end.fold.split122.1 ], [ getelementptr inbounds (i8, ptr @features, i64 144), %for.end.fold.split123.1 ], [ getelementptr inbounds (i8, ptr @features, i64 168), %for.end.fold.split124.1 ], [ getelementptr inbounds (i8, ptr @features, i64 192), %for.end.fold.split125.1 ], [ getelementptr inbounds (i8, ptr @features, i64 216), %for.end.fold.split126.1 ], !dbg !124
  %options_size.1 = getelementptr inbounds i8, ptr %arrayidx18.lcssa.1, i64 8, !dbg !123
  %8 = load i64, ptr %options_size.1, align 8, !dbg !123
  %call.1 = tail call ptr @lzma_alloc(i64 noundef %8, ptr noundef %allocator) #4, !dbg !126
  %options29.1 = getelementptr inbounds i8, ptr %dest, i64 24, !dbg !127
  store ptr %call.1, ptr %options29.1, align 8, !dbg !128
  %cmp32.1 = icmp eq ptr %call.1, null, !dbg !129
  br i1 %cmp32.1, label %error, label %cleanup.1, !dbg !131

cleanup.1:                                        ; preds = %for.end.1
  %9 = load ptr, ptr %options.1, align 8, !dbg !132
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %call.1, ptr align 1 %9, i64 %8, i1 false), !dbg !133
    #dbg_value(i32 undef, !96, !DIExpression(), !105)
  br label %for.inc42.1

if.then12.1:                                      ; preds = %for.body.1
  %options14.1 = getelementptr inbounds i8, ptr %dest, i64 24, !dbg !119
  store ptr null, ptr %options14.1, align 8, !dbg !121
  br label %for.inc42.1, !dbg !122

for.inc42.1:                                      ; preds = %if.then12.1, %cleanup.1
    #dbg_value(i32 undef, !96, !DIExpression(), !105)
    #dbg_value(i64 2, !97, !DIExpression(), !105)
  %arrayidx.1 = getelementptr inbounds i8, ptr %src, i64 32, !dbg !134
  %10 = load i64, ptr %arrayidx.1, align 8, !dbg !109
  %cmp2.not.1 = icmp eq i64 %10, -1, !dbg !110
  br i1 %cmp2.not.1, label %for.end44, label %for.body.2, !dbg !111, !llvm.loop !135

for.body.2:                                       ; preds = %for.inc42.1
  %arrayidx103.2 = getelementptr inbounds i8, ptr %src, i64 32, !dbg !137
    #dbg_value(i64 2, !97, !DIExpression(), !105)
  %arrayidx8.2 = getelementptr inbounds i8, ptr %dest, i64 32, !dbg !139
  store i64 %10, ptr %arrayidx8.2, align 8, !dbg !112
  %options.2 = getelementptr inbounds i8, ptr %src, i64 40, !dbg !113
  %11 = load ptr, ptr %options.2, align 8, !dbg !113
  %cmp11.2 = icmp eq ptr %11, null, !dbg !114
  br i1 %cmp11.2, label %if.then12.2, label %for.cond15.preheader.2, !dbg !115

for.cond15.preheader.2:                           ; preds = %for.body.2
  %12 = load i64, ptr %arrayidx103.2, align 8
    #dbg_value(i64 0, !98, !DIExpression(), !116)
  switch i64 %12, label %error [
    i64 4611686018427387905, label %for.end.2
    i64 33, label %for.end.fold.split.2
    i64 4, label %for.end.fold.split119.2
    i64 5, label %for.end.fold.split120.2
    i64 6, label %for.end.fold.split121.2
    i64 7, label %for.end.fold.split122.2
    i64 8, label %for.end.fold.split123.2
    i64 9, label %for.end.fold.split124.2
    i64 3, label %for.end.fold.split125.2
    i64 -1, label %for.end.fold.split126.2
  ], !dbg !117

for.end.fold.split126.2:                          ; preds = %for.cond15.preheader.2
  br label %for.end.2, !dbg !123

for.end.fold.split125.2:                          ; preds = %for.cond15.preheader.2
  br label %for.end.2, !dbg !123

for.end.fold.split124.2:                          ; preds = %for.cond15.preheader.2
  br label %for.end.2, !dbg !123

for.end.fold.split123.2:                          ; preds = %for.cond15.preheader.2
  br label %for.end.2, !dbg !123

for.end.fold.split122.2:                          ; preds = %for.cond15.preheader.2
  br label %for.end.2, !dbg !123

for.end.fold.split121.2:                          ; preds = %for.cond15.preheader.2
  br label %for.end.2, !dbg !123

for.end.fold.split120.2:                          ; preds = %for.cond15.preheader.2
  br label %for.end.2, !dbg !123

for.end.fold.split119.2:                          ; preds = %for.cond15.preheader.2
  br label %for.end.2, !dbg !123

for.end.fold.split.2:                             ; preds = %for.cond15.preheader.2
  br label %for.end.2, !dbg !123

for.end.2:                                        ; preds = %for.end.fold.split.2, %for.end.fold.split119.2, %for.end.fold.split120.2, %for.end.fold.split121.2, %for.end.fold.split122.2, %for.end.fold.split123.2, %for.end.fold.split124.2, %for.end.fold.split125.2, %for.end.fold.split126.2, %for.cond15.preheader.2
  %arrayidx18.lcssa.2 = phi ptr [ @features, %for.cond15.preheader.2 ], [ getelementptr inbounds (i8, ptr @features, i64 24), %for.end.fold.split.2 ], [ getelementptr inbounds (i8, ptr @features, i64 48), %for.end.fold.split119.2 ], [ getelementptr inbounds (i8, ptr @features, i64 72), %for.end.fold.split120.2 ], [ getelementptr inbounds (i8, ptr @features, i64 96), %for.end.fold.split121.2 ], [ getelementptr inbounds (i8, ptr @features, i64 120), %for.end.fold.split122.2 ], [ getelementptr inbounds (i8, ptr @features, i64 144), %for.end.fold.split123.2 ], [ getelementptr inbounds (i8, ptr @features, i64 168), %for.end.fold.split124.2 ], [ getelementptr inbounds (i8, ptr @features, i64 192), %for.end.fold.split125.2 ], [ getelementptr inbounds (i8, ptr @features, i64 216), %for.end.fold.split126.2 ], !dbg !124
  %options_size.2 = getelementptr inbounds i8, ptr %arrayidx18.lcssa.2, i64 8, !dbg !123
  %13 = load i64, ptr %options_size.2, align 8, !dbg !123
  %call.2 = tail call ptr @lzma_alloc(i64 noundef %13, ptr noundef %allocator) #4, !dbg !126
  %options29.2 = getelementptr inbounds i8, ptr %dest, i64 40, !dbg !127
  store ptr %call.2, ptr %options29.2, align 8, !dbg !128
  %cmp32.2 = icmp eq ptr %call.2, null, !dbg !129
  br i1 %cmp32.2, label %error, label %cleanup.2, !dbg !131

cleanup.2:                                        ; preds = %for.end.2
  %14 = load ptr, ptr %options.2, align 8, !dbg !132
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %call.2, ptr align 1 %14, i64 %13, i1 false), !dbg !133
    #dbg_value(i32 undef, !96, !DIExpression(), !105)
  br label %for.inc42.2

if.then12.2:                                      ; preds = %for.body.2
  %options14.2 = getelementptr inbounds i8, ptr %dest, i64 40, !dbg !119
  store ptr null, ptr %options14.2, align 8, !dbg !121
  br label %for.inc42.2, !dbg !122

for.inc42.2:                                      ; preds = %if.then12.2, %cleanup.2
    #dbg_value(i32 undef, !96, !DIExpression(), !105)
    #dbg_value(i64 3, !97, !DIExpression(), !105)
  %arrayidx.2 = getelementptr inbounds i8, ptr %src, i64 48, !dbg !134
  %15 = load i64, ptr %arrayidx.2, align 8, !dbg !109
  %cmp2.not.2 = icmp eq i64 %15, -1, !dbg !110
  br i1 %cmp2.not.2, label %for.end44, label %for.body.3, !dbg !111, !llvm.loop !135

for.body.3:                                       ; preds = %for.inc42.2
  %arrayidx103.3 = getelementptr inbounds i8, ptr %src, i64 48, !dbg !137
    #dbg_value(i64 3, !97, !DIExpression(), !105)
  %arrayidx8.3 = getelementptr inbounds i8, ptr %dest, i64 48, !dbg !139
  store i64 %15, ptr %arrayidx8.3, align 8, !dbg !112
  %options.3 = getelementptr inbounds i8, ptr %src, i64 56, !dbg !113
  %16 = load ptr, ptr %options.3, align 8, !dbg !113
  %cmp11.3 = icmp eq ptr %16, null, !dbg !114
  br i1 %cmp11.3, label %if.then12.3, label %for.cond15.preheader.3, !dbg !115

for.cond15.preheader.3:                           ; preds = %for.body.3
  %17 = load i64, ptr %arrayidx103.3, align 8
    #dbg_value(i64 0, !98, !DIExpression(), !116)
  switch i64 %17, label %error [
    i64 4611686018427387905, label %for.end.3
    i64 33, label %for.end.fold.split.3
    i64 4, label %for.end.fold.split119.3
    i64 5, label %for.end.fold.split120.3
    i64 6, label %for.end.fold.split121.3
    i64 7, label %for.end.fold.split122.3
    i64 8, label %for.end.fold.split123.3
    i64 9, label %for.end.fold.split124.3
    i64 3, label %for.end.fold.split125.3
    i64 -1, label %for.end.fold.split126.3
  ], !dbg !117

for.end.fold.split126.3:                          ; preds = %for.cond15.preheader.3
  br label %for.end.3, !dbg !123

for.end.fold.split125.3:                          ; preds = %for.cond15.preheader.3
  br label %for.end.3, !dbg !123

for.end.fold.split124.3:                          ; preds = %for.cond15.preheader.3
  br label %for.end.3, !dbg !123

for.end.fold.split123.3:                          ; preds = %for.cond15.preheader.3
  br label %for.end.3, !dbg !123

for.end.fold.split122.3:                          ; preds = %for.cond15.preheader.3
  br label %for.end.3, !dbg !123

for.end.fold.split121.3:                          ; preds = %for.cond15.preheader.3
  br label %for.end.3, !dbg !123

for.end.fold.split120.3:                          ; preds = %for.cond15.preheader.3
  br label %for.end.3, !dbg !123

for.end.fold.split119.3:                          ; preds = %for.cond15.preheader.3
  br label %for.end.3, !dbg !123

for.end.fold.split.3:                             ; preds = %for.cond15.preheader.3
  br label %for.end.3, !dbg !123

for.end.3:                                        ; preds = %for.end.fold.split.3, %for.end.fold.split119.3, %for.end.fold.split120.3, %for.end.fold.split121.3, %for.end.fold.split122.3, %for.end.fold.split123.3, %for.end.fold.split124.3, %for.end.fold.split125.3, %for.end.fold.split126.3, %for.cond15.preheader.3
  %arrayidx18.lcssa.3 = phi ptr [ @features, %for.cond15.preheader.3 ], [ getelementptr inbounds (i8, ptr @features, i64 24), %for.end.fold.split.3 ], [ getelementptr inbounds (i8, ptr @features, i64 48), %for.end.fold.split119.3 ], [ getelementptr inbounds (i8, ptr @features, i64 72), %for.end.fold.split120.3 ], [ getelementptr inbounds (i8, ptr @features, i64 96), %for.end.fold.split121.3 ], [ getelementptr inbounds (i8, ptr @features, i64 120), %for.end.fold.split122.3 ], [ getelementptr inbounds (i8, ptr @features, i64 144), %for.end.fold.split123.3 ], [ getelementptr inbounds (i8, ptr @features, i64 168), %for.end.fold.split124.3 ], [ getelementptr inbounds (i8, ptr @features, i64 192), %for.end.fold.split125.3 ], [ getelementptr inbounds (i8, ptr @features, i64 216), %for.end.fold.split126.3 ], !dbg !124
  %options_size.3 = getelementptr inbounds i8, ptr %arrayidx18.lcssa.3, i64 8, !dbg !123
  %18 = load i64, ptr %options_size.3, align 8, !dbg !123
  %call.3 = tail call ptr @lzma_alloc(i64 noundef %18, ptr noundef %allocator) #4, !dbg !126
  %options29.3 = getelementptr inbounds i8, ptr %dest, i64 56, !dbg !127
  store ptr %call.3, ptr %options29.3, align 8, !dbg !128
  %cmp32.3 = icmp eq ptr %call.3, null, !dbg !129
  br i1 %cmp32.3, label %error, label %cleanup.3, !dbg !131

cleanup.3:                                        ; preds = %for.end.3
  %19 = load ptr, ptr %options.3, align 8, !dbg !132
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %call.3, ptr align 1 %19, i64 %18, i1 false), !dbg !133
    #dbg_value(i32 undef, !96, !DIExpression(), !105)
  br label %for.inc42.3

if.then12.3:                                      ; preds = %for.body.3
  %options14.3 = getelementptr inbounds i8, ptr %dest, i64 56, !dbg !119
  store ptr null, ptr %options14.3, align 8, !dbg !121
  br label %for.inc42.3, !dbg !122

for.inc42.3:                                      ; preds = %if.then12.3, %cleanup.3
    #dbg_value(i32 undef, !96, !DIExpression(), !105)
    #dbg_value(i64 4, !97, !DIExpression(), !105)
  %arrayidx.3 = getelementptr inbounds i8, ptr %src, i64 64, !dbg !134
  %20 = load i64, ptr %arrayidx.3, align 8, !dbg !109
  %cmp2.not.3 = icmp eq i64 %20, -1, !dbg !110
  br i1 %cmp2.not.3, label %for.end44, label %while.body.preheader, !dbg !111, !llvm.loop !135

for.end44:                                        ; preds = %for.inc42, %for.inc42.1, %for.inc42.2, %for.inc42.3, %for.cond.preheader
  %i.0.lcssa = phi i64 [ 0, %for.cond.preheader ], [ 1, %for.inc42 ], [ 2, %for.inc42.1 ], [ 3, %for.inc42.2 ], [ 4, %for.inc42.3 ], !dbg !140
  %arrayidx45 = getelementptr inbounds %struct.lzma_filter, ptr %dest, i64 %i.0.lcssa, !dbg !141
  store i64 -1, ptr %arrayidx45, align 8, !dbg !142
  %options48 = getelementptr inbounds i8, ptr %arrayidx45, i64 8, !dbg !143
  store ptr null, ptr %options48, align 8, !dbg !144
  br label %return, !dbg !145

error:                                            ; preds = %for.end.3, %for.cond15.preheader.3, %for.end.2, %for.cond15.preheader.2, %for.end.1, %for.cond15.preheader.1, %for.cond15.preheader, %for.end
  %cmp49.not105 = phi i1 [ true, %for.cond15.preheader ], [ true, %for.end ], [ false, %for.cond15.preheader.1 ], [ false, %for.end.1 ], [ false, %for.cond15.preheader.2 ], [ false, %for.end.2 ], [ false, %for.cond15.preheader.3 ], [ false, %for.end.3 ]
  %i.0102.lcssa129 = phi i64 [ 0, %for.cond15.preheader ], [ 0, %for.end ], [ 1, %for.cond15.preheader.1 ], [ 1, %for.end.1 ], [ 2, %for.cond15.preheader.2 ], [ 2, %for.end.2 ], [ 3, %for.cond15.preheader.3 ], [ 3, %for.end.3 ]
  %ret.3 = phi i32 [ 8, %for.cond15.preheader ], [ 5, %for.end ], [ 8, %for.cond15.preheader.1 ], [ 5, %for.end.1 ], [ 8, %for.cond15.preheader.2 ], [ 5, %for.end.2 ], [ 8, %for.cond15.preheader.3 ], [ 5, %for.end.3 ], !dbg !146
    #dbg_value(i32 %ret.3, !96, !DIExpression(), !105)
    #dbg_label(!104, !147)
    #dbg_value(i64 %i.0102.lcssa129, !97, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !105)
  br i1 %cmp49.not105, label %return, label %while.body.preheader, !dbg !148

while.body.preheader:                             ; preds = %for.inc42.3, %error
  %ret.3116 = phi i32 [ %ret.3, %error ], [ 8, %for.inc42.3 ]
  %i.0102111115 = phi i64 [ %i.0102.lcssa129, %error ], [ 4, %for.inc42.3 ]
  br label %while.body, !dbg !148

while.body:                                       ; preds = %while.body.preheader, %while.body
  %i.1106 = phi i64 [ %dec, %while.body ], [ %i.0102111115, %while.body.preheader ]
    #dbg_value(i64 %i.1106, !97, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !105)
  %dec = add nsw i64 %i.1106, -1, !dbg !149
    #dbg_value(i64 %dec, !97, !DIExpression(), !105)
  %options51 = getelementptr inbounds %struct.lzma_filter, ptr %dest, i64 %dec, i32 1, !dbg !150
  %21 = load ptr, ptr %options51, align 8, !dbg !150
  tail call void @lzma_free(ptr noundef %21, ptr noundef %allocator) #4, !dbg !152
  store ptr null, ptr %options51, align 8, !dbg !153
    #dbg_value(i64 %dec, !97, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !105)
  %cmp49.not = icmp eq i64 %dec, 0, !dbg !154
  br i1 %cmp49.not, label %return, label %while.body, !dbg !148, !llvm.loop !155

return:                                           ; preds = %while.body, %error, %for.end44, %entry
  %retval.1 = phi i32 [ 11, %entry ], [ 0, %for.end44 ], [ %ret.3, %error ], [ %ret.3116, %while.body ], !dbg !105
  ret i32 %retval.1, !dbg !157
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !158 ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !162 void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_raw_coder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef readonly %options, ptr nocapture noundef readonly %coder_find, i1 noundef zeroext %is_encoder) local_unnamed_addr #0 !dbg !165 {
entry:
  %filters = alloca [5 x %struct.lzma_filter_info_s], align 16, !DIAssignID !277
    #dbg_assign(i1 undef, !256, !DIExpression(), !277, ptr %filters, !DIExpression(), !278)
    #dbg_value(ptr %next, !247, !DIExpression(), !278)
    #dbg_value(ptr %allocator, !248, !DIExpression(), !278)
    #dbg_value(ptr %options, !249, !DIExpression(), !278)
    #dbg_value(ptr %coder_find, !250, !DIExpression(), !278)
    #dbg_value(i1 %is_encoder, !251, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !278)
    #dbg_value(ptr %options, !279, !DIExpression(), !291)
    #dbg_value(ptr undef, !284, !DIExpression(), !291)
  %cmp.i = icmp eq ptr %options, null, !dbg !293
  br i1 %cmp.i, label %cleanup71, label %lor.lhs.false.i, !dbg !295

lor.lhs.false.i:                                  ; preds = %entry
  %0 = load i64, ptr %options, align 8, !dbg !296
  %cmp1.i = icmp eq i64 %0, -1, !dbg !297
  br i1 %cmp1.i, label %cleanup71, label %do.body.i, !dbg !298

do.body.i:                                        ; preds = %lor.lhs.false.i, %do.cond.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %do.cond.i ], [ 1, %lor.lhs.false.i ]
  %1 = phi i64 [ %4, %do.cond.i ], [ %0, %lor.lhs.false.i ]
  %changes_size_count.0.i = phi i64 [ %add.i, %do.cond.i ], [ 0, %lor.lhs.false.i ], !dbg !299
  %non_last_ok.0.i = phi i8 [ %2, %do.cond.i ], [ 1, %lor.lhs.false.i ], !dbg !300
  %i.0.i = phi i64 [ %inc23.i, %do.cond.i ], [ 0, %lor.lhs.false.i ], !dbg !291
    #dbg_value(i64 %i.0.i, !288, !DIExpression(), !291)
    #dbg_value(i8 poison, !287, !DIExpression(), !291)
    #dbg_value(i8 %non_last_ok.0.i, !286, !DIExpression(), !291)
    #dbg_value(i64 %changes_size_count.0.i, !285, !DIExpression(), !291)
    #dbg_value(i64 0, !289, !DIExpression(), !301)
  switch i64 %1, label %cleanup71 [
    i64 4611686018427387905, label %for.end.i
    i64 33, label %for.end.fold.split.i
    i64 4, label %for.end.fold.split65.i
    i64 5, label %for.end.fold.split66.i
    i64 6, label %for.end.fold.split67.i
    i64 7, label %for.end.fold.split68.i
    i64 8, label %for.end.fold.split69.i
    i64 9, label %for.end.fold.split70.i
    i64 3, label %for.end.fold.split71.i
  ], !dbg !302

for.end.fold.split.i:                             ; preds = %do.body.i
  br label %for.end.i, !dbg !304

for.end.fold.split65.i:                           ; preds = %do.body.i
  br label %for.end.i, !dbg !304

for.end.fold.split66.i:                           ; preds = %do.body.i
  br label %for.end.i, !dbg !304

for.end.fold.split67.i:                           ; preds = %do.body.i
  br label %for.end.i, !dbg !304

for.end.fold.split68.i:                           ; preds = %do.body.i
  br label %for.end.i, !dbg !304

for.end.fold.split69.i:                           ; preds = %do.body.i
  br label %for.end.i, !dbg !304

for.end.fold.split70.i:                           ; preds = %do.body.i
  br label %for.end.i, !dbg !304

for.end.fold.split71.i:                           ; preds = %do.body.i
  br label %for.end.i, !dbg !304

for.end.i:                                        ; preds = %for.end.fold.split71.i, %for.end.fold.split70.i, %for.end.fold.split69.i, %for.end.fold.split68.i, %for.end.fold.split67.i, %for.end.fold.split66.i, %for.end.fold.split65.i, %for.end.fold.split.i, %do.body.i
  %arrayidx4.lcssa.i = phi ptr [ @features, %do.body.i ], [ getelementptr inbounds (i8, ptr @features, i64 24), %for.end.fold.split.i ], [ getelementptr inbounds (i8, ptr @features, i64 48), %for.end.fold.split65.i ], [ getelementptr inbounds (i8, ptr @features, i64 72), %for.end.fold.split66.i ], [ getelementptr inbounds (i8, ptr @features, i64 96), %for.end.fold.split67.i ], [ getelementptr inbounds (i8, ptr @features, i64 120), %for.end.fold.split68.i ], [ getelementptr inbounds (i8, ptr @features, i64 144), %for.end.fold.split69.i ], [ getelementptr inbounds (i8, ptr @features, i64 168), %for.end.fold.split70.i ], [ getelementptr inbounds (i8, ptr @features, i64 192), %for.end.fold.split71.i ], !dbg !306
  %loadedv.i = trunc nuw i8 %non_last_ok.0.i to i1, !dbg !304
  br i1 %loadedv.i, label %do.cond.i, label %cleanup71, !dbg !308

do.cond.i:                                        ; preds = %for.end.i
  %non_last_ok15.i = getelementptr inbounds i8, ptr %arrayidx4.lcssa.i, i64 16, !dbg !309
  %2 = load i8, ptr %non_last_ok15.i, align 8, !dbg !309, !range !310, !noundef !311
    #dbg_value(i8 %2, !286, !DIExpression(), !291)
    #dbg_value(i8 poison, !287, !DIExpression(), !291)
  %changes_size.i = getelementptr inbounds i8, ptr %arrayidx4.lcssa.i, i64 18, !dbg !312
  %3 = load i8, ptr %changes_size.i, align 2, !dbg !312, !range !310, !noundef !311
  %loadedv22.i = zext nneg i8 %3 to i64, !dbg !312
  %add.i = add i64 %changes_size_count.0.i, %loadedv22.i, !dbg !313
    #dbg_value(i64 %add.i, !285, !DIExpression(), !291)
  %inc23.i = add i64 %i.0.i, 1, !dbg !314
    #dbg_value(i64 %inc23.i, !288, !DIExpression(), !291)
  %arrayidx24.i = getelementptr inbounds %struct.lzma_filter, ptr %options, i64 %inc23.i, !dbg !315
  %4 = load i64, ptr %arrayidx24.i, align 8, !dbg !316
  %cmp26.not.i = icmp eq i64 %4, -1, !dbg !317
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !318
  br i1 %cmp26.not.i, label %do.end.i, label %do.body.i, !dbg !318, !llvm.loop !319

do.end.i:                                         ; preds = %do.cond.i
  %last_ok18.i = getelementptr inbounds i8, ptr %arrayidx4.lcssa.i, i64 17, !dbg !322
  %5 = load i8, ptr %last_ok18.i, align 1, !dbg !322, !range !310, !noundef !311
    #dbg_value(i8 %5, !287, !DIExpression(), !291)
  %cmp28.i = icmp ult i64 %inc23.i, 5, !dbg !323
  %loadedv31.i = trunc nuw i8 %5 to i1
  %cmp33.i = icmp ult i64 %add.i, 4
  %6 = select i1 %cmp28.i, i1 %loadedv31.i, i1 false, !dbg !325
  %or.cond.i = select i1 %6, i1 %cmp33.i, i1 false, !dbg !325
  br i1 %or.cond.i, label %do.end, label %cleanup71, !dbg !325

do.end:                                           ; preds = %do.end.i
    #dbg_value(i64 %inc23.i, !252, !DIExpression(), !278)
    #dbg_value(i32 0, !253, !DIExpression(), !326)
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %filters) #4, !dbg !327
  %cmp2.not126.not = icmp eq i64 %inc23.i, 0, !dbg !328
  br i1 %is_encoder, label %for.cond.preheader, label %for.cond27.preheader, !dbg !329

for.cond27.preheader:                             ; preds = %do.end
    #dbg_value(i64 0, !270, !DIExpression(), !330)
  br i1 %cmp2.not126.not, label %if.end60, label %for.body30, !dbg !331

for.cond.preheader:                               ; preds = %do.end
    #dbg_value(i64 0, !260, !DIExpression(), !332)
  br i1 %cmp2.not126.not, label %if.end60, label %for.body, !dbg !333

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %i.0127 = phi i64 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
    #dbg_value(i64 %i.0127, !260, !DIExpression(), !332)
  %sub3 = sub i64 %i.0.i, %i.0127, !dbg !334
    #dbg_value(i64 %sub3, !264, !DIExpression(), !335)
  %arrayidx = getelementptr inbounds %struct.lzma_filter, ptr %options, i64 %i.0127, !dbg !336
  %7 = load i64, ptr %arrayidx, align 8, !dbg !337
  %call4 = tail call ptr %coder_find(i64 noundef %7) #4, !dbg !338
    #dbg_value(ptr %call4, !268, !DIExpression(), !335)
  %cmp5 = icmp eq ptr %call4, null, !dbg !339
  br i1 %cmp5, label %cleanup70, label %lor.lhs.false, !dbg !341

lor.lhs.false:                                    ; preds = %for.body
  %init = getelementptr inbounds i8, ptr %call4, i64 8, !dbg !342
  %8 = load ptr, ptr %init, align 8, !dbg !342
  %cmp6 = icmp eq ptr %8, null, !dbg !343
  br i1 %cmp6, label %cleanup70, label %for.inc, !dbg !344

for.inc:                                          ; preds = %lor.lhs.false
  %9 = load i64, ptr %arrayidx, align 8, !dbg !345
  %arrayidx11 = getelementptr inbounds [5 x %struct.lzma_filter_info_s], ptr %filters, i64 0, i64 %sub3, !dbg !346
  store i64 %9, ptr %arrayidx11, align 8, !dbg !347
  %init15 = getelementptr inbounds i8, ptr %arrayidx11, i64 8, !dbg !348
  store ptr %8, ptr %init15, align 8, !dbg !349
  %options17 = getelementptr inbounds i8, ptr %arrayidx, i64 8, !dbg !350
  %10 = load ptr, ptr %options17, align 8, !dbg !350
  %options19 = getelementptr inbounds i8, ptr %arrayidx11, i64 16, !dbg !351
  store ptr %10, ptr %options19, align 8, !dbg !352
  %inc = add nuw i64 %i.0127, 1, !dbg !353
    #dbg_value(i64 %inc, !260, !DIExpression(), !332)
  %exitcond133.not = icmp eq i64 %inc, %indvars.iv, !dbg !354
  br i1 %exitcond133.not, label %if.end60, label %for.body, !dbg !333, !llvm.loop !355

for.body30:                                       ; preds = %for.cond27.preheader, %for.inc55
  %i26.0125 = phi i64 [ %inc56, %for.inc55 ], [ 0, %for.cond27.preheader ]
    #dbg_value(i64 %i26.0125, !270, !DIExpression(), !330)
  %arrayidx32 = getelementptr inbounds %struct.lzma_filter, ptr %options, i64 %i26.0125, !dbg !357
  %11 = load i64, ptr %arrayidx32, align 8, !dbg !358
  %call34 = tail call ptr %coder_find(i64 noundef %11) #4, !dbg !359
    #dbg_value(ptr %call34, !273, !DIExpression(), !360)
  %cmp35 = icmp eq ptr %call34, null, !dbg !361
  br i1 %cmp35, label %cleanup70, label %lor.lhs.false36, !dbg !363

lor.lhs.false36:                                  ; preds = %for.body30
  %init37 = getelementptr inbounds i8, ptr %call34, i64 8, !dbg !364
  %12 = load ptr, ptr %init37, align 8, !dbg !364
  %cmp38 = icmp eq ptr %12, null, !dbg !365
  br i1 %cmp38, label %cleanup70, label %for.inc55, !dbg !366

for.inc55:                                        ; preds = %lor.lhs.false36
  %13 = load i64, ptr %arrayidx32, align 8, !dbg !367
  %arrayidx43 = getelementptr inbounds [5 x %struct.lzma_filter_info_s], ptr %filters, i64 0, i64 %i26.0125, !dbg !368
  store i64 %13, ptr %arrayidx43, align 8, !dbg !369
  %init47 = getelementptr inbounds i8, ptr %arrayidx43, i64 8, !dbg !370
  store ptr %12, ptr %init47, align 8, !dbg !371
  %options49 = getelementptr inbounds i8, ptr %arrayidx32, i64 8, !dbg !372
  %14 = load ptr, ptr %options49, align 8, !dbg !372
  %options51 = getelementptr inbounds i8, ptr %arrayidx43, i64 16, !dbg !373
  store ptr %14, ptr %options51, align 8, !dbg !374
  %inc56 = add nuw i64 %i26.0125, 1, !dbg !375
    #dbg_value(i64 %inc56, !270, !DIExpression(), !330)
  %exitcond.not = icmp eq i64 %inc56, %indvars.iv, !dbg !376
  br i1 %exitcond.not, label %if.end60, label %for.body30, !dbg !331, !llvm.loop !377

if.end60:                                         ; preds = %for.inc55, %for.inc, %for.cond27.preheader, %for.cond.preheader
  %arrayidx61 = getelementptr inbounds [5 x %struct.lzma_filter_info_s], ptr %filters, i64 0, i64 %inc23.i, !dbg !379
  store i64 -1, ptr %arrayidx61, align 8, !dbg !380
  %init64 = getelementptr inbounds [5 x %struct.lzma_filter_info_s], ptr %filters, i64 0, i64 %inc23.i, i32 1, !dbg !381
  store ptr null, ptr %init64, align 8, !dbg !382
  %call65 = call i32 @lzma_next_filter_init(ptr noundef %next, ptr noundef %allocator, ptr noundef nonnull %filters) #4, !dbg !383
    #dbg_value(i32 %call65, !276, !DIExpression(), !278)
  %cmp66.not = icmp eq i32 %call65, 0, !dbg !384
  br i1 %cmp66.not, label %cleanup70, label %if.then67, !dbg !386

if.then67:                                        ; preds = %if.end60
  call void @lzma_next_end(ptr noundef %next, ptr noundef %allocator) #4, !dbg !387
  br label %cleanup70, !dbg !387

cleanup70:                                        ; preds = %lor.lhs.false36, %for.body30, %lor.lhs.false, %for.body, %if.end60, %if.then67
  %retval.7 = phi i32 [ %call65, %if.then67 ], [ 0, %if.end60 ], [ 8, %for.body ], [ 8, %lor.lhs.false ], [ 8, %for.body30 ], [ 8, %lor.lhs.false36 ], !dbg !278
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %filters) #4, !dbg !388
  br label %cleanup71

cleanup71:                                        ; preds = %for.end.i, %do.body.i, %do.end.i, %entry, %lor.lhs.false.i, %cleanup70
  %retval.8 = phi i32 [ %retval.7, %cleanup70 ], [ 8, %do.end.i ], [ 11, %entry ], [ 11, %lor.lhs.false.i ], [ 8, %do.body.i ], [ 8, %for.end.i ], !dbg !278
  ret i32 %retval.8, !dbg !388
}

declare !dbg !389 i32 @lzma_next_filter_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !390 void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @lzma_raw_coder_memusage(ptr nocapture noundef readonly %coder_find, ptr noundef readonly %filters) local_unnamed_addr #0 !dbg !393 {
entry:
    #dbg_value(ptr %coder_find, !397, !DIExpression(), !409)
    #dbg_value(ptr %filters, !398, !DIExpression(), !409)
    #dbg_value(ptr %filters, !279, !DIExpression(), !410)
    #dbg_value(ptr undef, !284, !DIExpression(), !410)
  %cmp.i = icmp eq ptr %filters, null, !dbg !413
  br i1 %cmp.i, label %return, label %lor.lhs.false.i, !dbg !414

lor.lhs.false.i:                                  ; preds = %entry
  %0 = load i64, ptr %filters, align 8, !dbg !415
  %cmp1.i = icmp eq i64 %0, -1, !dbg !416
  br i1 %cmp1.i, label %return, label %do.body.i, !dbg !417

do.body.i:                                        ; preds = %lor.lhs.false.i, %do.cond.i
  %1 = phi i64 [ %4, %do.cond.i ], [ %0, %lor.lhs.false.i ]
  %changes_size_count.0.i = phi i64 [ %add.i, %do.cond.i ], [ 0, %lor.lhs.false.i ], !dbg !418
  %non_last_ok.0.i = phi i8 [ %2, %do.cond.i ], [ 1, %lor.lhs.false.i ], !dbg !419
  %i.0.i = phi i64 [ %inc23.i, %do.cond.i ], [ 0, %lor.lhs.false.i ], !dbg !410
    #dbg_value(i64 %i.0.i, !288, !DIExpression(), !410)
    #dbg_value(i8 poison, !287, !DIExpression(), !410)
    #dbg_value(i8 %non_last_ok.0.i, !286, !DIExpression(), !410)
    #dbg_value(i64 %changes_size_count.0.i, !285, !DIExpression(), !410)
    #dbg_value(i64 0, !289, !DIExpression(), !420)
  switch i64 %1, label %return [
    i64 4611686018427387905, label %for.end.i
    i64 33, label %for.end.fold.split.i
    i64 4, label %for.end.fold.split65.i
    i64 5, label %for.end.fold.split66.i
    i64 6, label %for.end.fold.split67.i
    i64 7, label %for.end.fold.split68.i
    i64 8, label %for.end.fold.split69.i
    i64 9, label %for.end.fold.split70.i
    i64 3, label %for.end.fold.split71.i
  ], !dbg !421

for.end.fold.split.i:                             ; preds = %do.body.i
  br label %for.end.i, !dbg !422

for.end.fold.split65.i:                           ; preds = %do.body.i
  br label %for.end.i, !dbg !422

for.end.fold.split66.i:                           ; preds = %do.body.i
  br label %for.end.i, !dbg !422

for.end.fold.split67.i:                           ; preds = %do.body.i
  br label %for.end.i, !dbg !422

for.end.fold.split68.i:                           ; preds = %do.body.i
  br label %for.end.i, !dbg !422

for.end.fold.split69.i:                           ; preds = %do.body.i
  br label %for.end.i, !dbg !422

for.end.fold.split70.i:                           ; preds = %do.body.i
  br label %for.end.i, !dbg !422

for.end.fold.split71.i:                           ; preds = %do.body.i
  br label %for.end.i, !dbg !422

for.end.i:                                        ; preds = %for.end.fold.split71.i, %for.end.fold.split70.i, %for.end.fold.split69.i, %for.end.fold.split68.i, %for.end.fold.split67.i, %for.end.fold.split66.i, %for.end.fold.split65.i, %for.end.fold.split.i, %do.body.i
  %arrayidx4.lcssa.i = phi ptr [ @features, %do.body.i ], [ getelementptr inbounds (i8, ptr @features, i64 24), %for.end.fold.split.i ], [ getelementptr inbounds (i8, ptr @features, i64 48), %for.end.fold.split65.i ], [ getelementptr inbounds (i8, ptr @features, i64 72), %for.end.fold.split66.i ], [ getelementptr inbounds (i8, ptr @features, i64 96), %for.end.fold.split67.i ], [ getelementptr inbounds (i8, ptr @features, i64 120), %for.end.fold.split68.i ], [ getelementptr inbounds (i8, ptr @features, i64 144), %for.end.fold.split69.i ], [ getelementptr inbounds (i8, ptr @features, i64 168), %for.end.fold.split70.i ], [ getelementptr inbounds (i8, ptr @features, i64 192), %for.end.fold.split71.i ], !dbg !423
  %loadedv.i = trunc nuw i8 %non_last_ok.0.i to i1, !dbg !422
  br i1 %loadedv.i, label %do.cond.i, label %return, !dbg !424

do.cond.i:                                        ; preds = %for.end.i
  %non_last_ok15.i = getelementptr inbounds i8, ptr %arrayidx4.lcssa.i, i64 16, !dbg !425
  %2 = load i8, ptr %non_last_ok15.i, align 8, !dbg !425, !range !310, !noundef !311
    #dbg_value(i8 %2, !286, !DIExpression(), !410)
    #dbg_value(i8 poison, !287, !DIExpression(), !410)
  %changes_size.i = getelementptr inbounds i8, ptr %arrayidx4.lcssa.i, i64 18, !dbg !426
  %3 = load i8, ptr %changes_size.i, align 2, !dbg !426, !range !310, !noundef !311
  %loadedv22.i = zext nneg i8 %3 to i64, !dbg !426
  %add.i = add i64 %changes_size_count.0.i, %loadedv22.i, !dbg !427
    #dbg_value(i64 %add.i, !285, !DIExpression(), !410)
  %inc23.i = add i64 %i.0.i, 1, !dbg !428
    #dbg_value(i64 %inc23.i, !288, !DIExpression(), !410)
  %arrayidx24.i = getelementptr inbounds %struct.lzma_filter, ptr %filters, i64 %inc23.i, !dbg !429
  %4 = load i64, ptr %arrayidx24.i, align 8, !dbg !430
  %cmp26.not.i = icmp eq i64 %4, -1, !dbg !431
  br i1 %cmp26.not.i, label %do.end.i, label %do.body.i, !dbg !432, !llvm.loop !433

do.end.i:                                         ; preds = %do.cond.i
  %last_ok18.i = getelementptr inbounds i8, ptr %arrayidx4.lcssa.i, i64 17, !dbg !436
  %5 = load i8, ptr %last_ok18.i, align 1, !dbg !436, !range !310, !noundef !311
    #dbg_value(i8 %5, !287, !DIExpression(), !410)
  %cmp28.i = icmp ult i64 %inc23.i, 5, !dbg !437
  %loadedv31.i = trunc nuw i8 %5 to i1
  %cmp33.i = icmp ult i64 %add.i, 4
  %6 = select i1 %cmp28.i, i1 %loadedv31.i, i1 false, !dbg !438
  %or.cond.i = select i1 %6, i1 %cmp33.i, i1 false, !dbg !438
  br i1 %or.cond.i, label %do.body, label %return, !dbg !438

do.body:                                          ; preds = %do.end.i, %do.cond
  %7 = phi i64 [ %10, %do.cond ], [ %0, %do.end.i ], !dbg !439
  %total.0 = phi i64 [ %total.345, %do.cond ], [ 0, %do.end.i ], !dbg !440
  %i.0 = phi i64 [ %inc, %do.cond ], [ 0, %do.end.i ], !dbg !409
    #dbg_value(i64 %i.0, !402, !DIExpression(), !409)
    #dbg_value(i64 %total.0, !401, !DIExpression(), !409)
  %call1 = tail call ptr %coder_find(i64 noundef %7) #4, !dbg !441
    #dbg_value(ptr %call1, !403, !DIExpression(), !442)
  %cmp2 = icmp eq ptr %call1, null, !dbg !443
  br i1 %cmp2, label %return, label %if.end4, !dbg !445

if.end4:                                          ; preds = %do.body
  %memusage = getelementptr inbounds i8, ptr %call1, i64 16, !dbg !446
  %8 = load ptr, ptr %memusage, align 8, !dbg !446
  %cmp5 = icmp eq ptr %8, null, !dbg !447
  br i1 %cmp5, label %cleanup18.thread, label %cleanup18, !dbg !448

cleanup18.thread:                                 ; preds = %if.end4
  %add = add i64 %total.0, 1024, !dbg !449
    #dbg_value(i64 %add, !401, !DIExpression(), !409)
  br label %do.cond

cleanup18:                                        ; preds = %if.end4
  %options = getelementptr inbounds %struct.lzma_filter, ptr %filters, i64 %i.0, i32 1, !dbg !451
  %9 = load ptr, ptr %options, align 8, !dbg !451
  %call9 = tail call i64 %8(ptr noundef %9) #4, !dbg !452
    #dbg_value(i64 %call9, !405, !DIExpression(), !453)
  %cmp10.not.not = icmp eq i64 %call9, -1, !dbg !454
  %add13 = select i1 %cmp10.not.not, i64 0, i64 %call9, !dbg !456
  %total.1 = add i64 %add13, %total.0, !dbg !456
    #dbg_value(i64 %total.1, !401, !DIExpression(), !409)
  br i1 %cmp10.not.not, label %return, label %do.cond

do.cond:                                          ; preds = %cleanup18.thread, %cleanup18
  %total.345 = phi i64 [ %add, %cleanup18.thread ], [ %total.1, %cleanup18 ]
  %inc = add i64 %i.0, 1, !dbg !457
    #dbg_value(i64 %inc, !402, !DIExpression(), !409)
  %arrayidx21 = getelementptr inbounds %struct.lzma_filter, ptr %filters, i64 %inc, !dbg !458
  %10 = load i64, ptr %arrayidx21, align 8, !dbg !459
  %cmp23.not = icmp eq i64 %10, -1, !dbg !460
  br i1 %cmp23.not, label %do.end, label %do.body, !dbg !461, !llvm.loop !462

do.end:                                           ; preds = %do.cond
  %add24 = add i64 %total.345, 32768, !dbg !465
  br label %return, !dbg !466

return:                                           ; preds = %for.end.i, %do.body.i, %do.body, %cleanup18, %do.end.i, %entry, %lor.lhs.false.i, %do.end
  %retval.6 = phi i64 [ %add24, %do.end ], [ -1, %lor.lhs.false.i ], [ -1, %entry ], [ -1, %do.end.i ], [ -1, %cleanup18 ], [ -1, %do.body ], [ -1, %do.body.i ], [ -1, %for.end.i ], !dbg !409
  ret i64 %retval.6, !dbg !467
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "features", scope: !2, file: !3, line: 36, type: !37, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !34, globals: !36, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "liblzma/common/filter_common.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "40ce9c1355191130339ea0043a46dd45")
!4 = !{!5, !21, !27}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 57, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "liblzma/api/lzma/base.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "81a3070447cc5b61b56cfbed076853db")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20}
!9 = !DIEnumerator(name: "LZMA_OK", value: 0)
!10 = !DIEnumerator(name: "LZMA_STREAM_END", value: 1)
!11 = !DIEnumerator(name: "LZMA_NO_CHECK", value: 2)
!12 = !DIEnumerator(name: "LZMA_UNSUPPORTED_CHECK", value: 3)
!13 = !DIEnumerator(name: "LZMA_GET_CHECK", value: 4)
!14 = !DIEnumerator(name: "LZMA_MEM_ERROR", value: 5)
!15 = !DIEnumerator(name: "LZMA_MEMLIMIT_ERROR", value: 6)
!16 = !DIEnumerator(name: "LZMA_FORMAT_ERROR", value: 7)
!17 = !DIEnumerator(name: "LZMA_OPTIONS_ERROR", value: 8)
!18 = !DIEnumerator(name: "LZMA_DATA_ERROR", value: 9)
!19 = !DIEnumerator(name: "LZMA_BUF_ERROR", value: 10)
!20 = !DIEnumerator(name: "LZMA_PROG_ERROR", value: 11)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 250, baseType: !7, size: 32, elements: !22)
!22 = !{!23, !24, !25, !26}
!23 = !DIEnumerator(name: "LZMA_RUN", value: 0)
!24 = !DIEnumerator(name: "LZMA_SYNC_FLUSH", value: 1)
!25 = !DIEnumerator(name: "LZMA_FULL_FLUSH", value: 2)
!26 = !DIEnumerator(name: "LZMA_FINISH", value: 3)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !28, line: 27, baseType: !7, size: 32, elements: !29)
!28 = !DIFile(filename: "liblzma/api/lzma/check.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "b07c3297e2bcc14bb477793d08325ee3")
!29 = !{!30, !31, !32, !33}
!30 = !DIEnumerator(name: "LZMA_CHECK_NONE", value: 0)
!31 = !DIEnumerator(name: "LZMA_CHECK_CRC32", value: 1)
!32 = !DIEnumerator(name: "LZMA_CHECK_CRC64", value: 4)
!33 = !DIEnumerator(name: "LZMA_CHECK_SHA256", value: 10)
!34 = !{!35}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!36 = !{!0}
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 1920, elements: !56)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 16, size: 192, elements: !40)
!40 = !{!41, !49, !52, !54, !55}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !39, file: !3, line: 18, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !43, line: 63, baseType: !44)
!43 = !DIFile(filename: "liblzma/api/lzma/vli.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !45, line: 27, baseType: !46)
!45 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !47, line: 45, baseType: !48)
!47 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!48 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "options_size", scope: !39, file: !3, line: 21, baseType: !50, size: 64, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !51, line: 18, baseType: !48)
!51 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!52 = !DIDerivedType(tag: DW_TAG_member, name: "non_last_ok", scope: !39, file: !3, line: 25, baseType: !53, size: 8, offset: 128)
!53 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "last_ok", scope: !39, file: !3, line: 29, baseType: !53, size: 8, offset: 136)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "changes_size", scope: !39, file: !3, line: 34, baseType: !53, size: 8, offset: 144)
!56 = !{!57}
!57 = !DISubrange(count: 10)
!58 = !{i32 7, !"Dwarf Version", i32 5}
!59 = !{i32 2, !"Debug Info Version", i32 3}
!60 = !{i32 1, !"wchar_size", i32 4}
!61 = !{i32 8, !"PIC Level", i32 2}
!62 = !{i32 7, !"PIE Level", i32 2}
!63 = !{i32 7, !"uwtable", i32 2}
!64 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!65 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!66 = distinct !DISubprogram(name: "lzma_filters_copy", scope: !3, file: !3, line: 125, type: !67, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !92)
!67 = !DISubroutineType(types: !68)
!68 = !{!69, !70, !78, !79}
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !6, line: 237, baseType: !5)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !73, line: 65, baseType: !74)
!73 = !DIFile(filename: "liblzma/api/lzma/filter.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !73, line: 43, size: 128, elements: !75)
!75 = !{!76, !77}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !74, file: !73, line: 54, baseType: !42, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !74, file: !73, line: 63, baseType: !35, size: 64, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !6, line: 403, baseType: !81)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 341, size: 192, elements: !82)
!82 = !{!83, !87, !91}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !81, file: !6, line: 376, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DISubroutineType(types: !86)
!86 = !{!35, !35, !50, !50}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !81, file: !6, line: 390, baseType: !88, size: 64, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DISubroutineType(types: !90)
!90 = !{null, !35, !35}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !81, file: !6, line: 401, baseType: !35, size: 64, offset: 128)
!92 = !{!93, !94, !95, !96, !97, !98, !104}
!93 = !DILocalVariable(name: "src", arg: 1, scope: !66, file: !3, line: 125, type: !70)
!94 = !DILocalVariable(name: "dest", arg: 2, scope: !66, file: !3, line: 125, type: !78)
!95 = !DILocalVariable(name: "allocator", arg: 3, scope: !66, file: !3, line: 126, type: !79)
!96 = !DILocalVariable(name: "ret", scope: !66, file: !3, line: 131, type: !69)
!97 = !DILocalVariable(name: "i", scope: !66, file: !3, line: 132, type: !50)
!98 = !DILocalVariable(name: "j", scope: !99, file: !3, line: 154, type: !50)
!99 = distinct !DILexicalBlock(scope: !100, file: !3, line: 145, column: 10)
!100 = distinct !DILexicalBlock(scope: !101, file: !3, line: 143, column: 7)
!101 = distinct !DILexicalBlock(scope: !102, file: !3, line: 133, column: 50)
!102 = distinct !DILexicalBlock(scope: !103, file: !3, line: 133, column: 2)
!103 = distinct !DILexicalBlock(scope: !66, file: !3, line: 133, column: 2)
!104 = !DILabel(scope: !66, name: "error", file: !3, line: 182)
!105 = !DILocation(line: 0, scope: !66)
!106 = !DILocation(line: 128, column: 10, scope: !107)
!107 = distinct !DILexicalBlock(scope: !66, file: !3, line: 128, column: 6)
!108 = !DILocation(line: 128, column: 18, scope: !107)
!109 = !DILocation(line: 133, column: 21, scope: !102)
!110 = !DILocation(line: 133, column: 24, scope: !102)
!111 = !DILocation(line: 133, column: 2, scope: !103)
!112 = !DILocation(line: 141, column: 14, scope: !101)
!113 = !DILocation(line: 143, column: 14, scope: !100)
!114 = !DILocation(line: 143, column: 22, scope: !100)
!115 = !DILocation(line: 143, column: 7, scope: !101)
!116 = !DILocation(line: 0, scope: !99)
!117 = !DILocation(line: 155, column: 4, scope: !118)
!118 = distinct !DILexicalBlock(scope: !99, file: !3, line: 155, column: 4)
!119 = !DILocation(line: 144, column: 12, scope: !120)
!120 = distinct !DILexicalBlock(scope: !100, file: !3, line: 143, column: 31)
!121 = !DILocation(line: 144, column: 20, scope: !120)
!122 = !DILocation(line: 145, column: 3, scope: !120)
!123 = !DILocation(line: 163, column: 45, scope: !99)
!124 = !DILocation(line: 155, column: 29, scope: !125)
!125 = distinct !DILexicalBlock(scope: !118, file: !3, line: 155, column: 4)
!126 = !DILocation(line: 163, column: 22, scope: !99)
!127 = !DILocation(line: 163, column: 12, scope: !99)
!128 = !DILocation(line: 163, column: 20, scope: !99)
!129 = !DILocation(line: 165, column: 24, scope: !130)
!130 = distinct !DILexicalBlock(scope: !99, file: !3, line: 165, column: 8)
!131 = !DILocation(line: 165, column: 8, scope: !99)
!132 = !DILocation(line: 170, column: 35, scope: !99)
!133 = !DILocation(line: 170, column: 4, scope: !99)
!134 = !DILocation(line: 133, column: 14, scope: !102)
!135 = distinct !{!135, !111, !136}
!136 = !DILocation(line: 173, column: 2, scope: !103)
!137 = !DILocation(line: 136, column: 9, scope: !138)
!138 = distinct !DILexicalBlock(scope: !101, file: !3, line: 136, column: 7)
!139 = !DILocation(line: 141, column: 3, scope: !101)
!140 = !DILocation(line: 133, scope: !103)
!141 = !DILocation(line: 177, column: 2, scope: !66)
!142 = !DILocation(line: 177, column: 13, scope: !66)
!143 = !DILocation(line: 178, column: 10, scope: !66)
!144 = !DILocation(line: 178, column: 18, scope: !66)
!145 = !DILocation(line: 180, column: 2, scope: !66)
!146 = !DILocation(line: 0, scope: !101)
!147 = !DILocation(line: 182, column: 1, scope: !66)
!148 = !DILocation(line: 184, column: 2, scope: !66)
!149 = !DILocation(line: 184, column: 10, scope: !66)
!150 = !DILocation(line: 185, column: 21, scope: !151)
!151 = distinct !DILexicalBlock(scope: !66, file: !3, line: 184, column: 18)
!152 = !DILocation(line: 185, column: 3, scope: !151)
!153 = !DILocation(line: 186, column: 19, scope: !151)
!154 = !DILocation(line: 184, column: 13, scope: !66)
!155 = distinct !{!155, !148, !156}
!156 = !DILocation(line: 187, column: 2, scope: !66)
!157 = !DILocation(line: 190, column: 1, scope: !66)
!158 = !DISubprogram(name: "lzma_alloc", scope: !159, file: !159, line: 211, type: !160, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!159 = !DIFile(filename: "liblzma/common/common.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!160 = !DISubroutineType(types: !161)
!161 = !{!35, !50, !79}
!162 = !DISubprogram(name: "lzma_free", scope: !159, file: !159, line: 215, type: !163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!163 = !DISubroutineType(types: !164)
!164 = !{null, !35, !79}
!165 = distinct !DISubprogram(name: "lzma_raw_coder_init", scope: !3, file: !3, line: 242, type: !166, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !246)
!166 = !DISubroutineType(types: !167)
!167 = !{!69, !168, !79, !70, !216, !53}
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_next_coder", file: !159, line: 80, baseType: !170)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_next_coder_s", file: !159, line: 124, size: 512, elements: !171)
!171 = !{!172, !175, !176, !179, !195, !200, !207, !212}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !170, file: !159, line: 126, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_coder", file: !159, line: 78, baseType: null)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !170, file: !159, line: 130, baseType: !42, size: 64, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !170, file: !159, line: 136, baseType: !177, size: 64, offset: 128)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !178, line: 90, baseType: !48)
!178 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!179 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !170, file: !159, line: 139, baseType: !180, size: 64, offset: 192)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_code_function", file: !159, line: 94, baseType: !181)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DISubroutineType(types: !183)
!183 = !{!69, !173, !79, !184, !190, !50, !192, !190, !50, !194}
!184 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !185)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !187)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !45, line: 24, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !47, line: 38, baseType: !189)
!189 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!190 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !191)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !193)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !6, line: 322, baseType: !21)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !170, file: !159, line: 144, baseType: !196, size: 64, offset: 256)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_end_function", file: !159, line: 102, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{null, !173, !79}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "get_check", scope: !170, file: !159, line: 148, baseType: !201, size: 64, offset: 320)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{!204, !205}
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !28, line: 55, baseType: !27)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !174)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "memconfig", scope: !170, file: !159, line: 152, baseType: !208, size: 64, offset: 384)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{!69, !173, !211, !211, !44}
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !170, file: !159, line: 157, baseType: !213, size: 64, offset: 448)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{!69, !173, !79, !70, !70}
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter_find", file: !217, line: 35, baseType: !218)
!217 = !DIFile(filename: "liblzma/common/filter_common.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "2b3d0d0ae4b0d967ddcb9fa677c708ca")
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{!221, !42}
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter_coder", file: !217, line: 32, baseType: !224)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !217, line: 20, size: 192, elements: !225)
!225 = !{!226, !227, !240}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !224, file: !217, line: 22, baseType: !42, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !224, file: !217, line: 26, baseType: !228, size: 64, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_init_function", file: !159, line: 86, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{!69, !168, !79, !232}
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !234)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter_info", file: !159, line: 82, baseType: !235)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_filter_info_s", file: !159, line: 109, size: 192, elements: !236)
!236 = !{!237, !238, !239}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !235, file: !159, line: 112, baseType: !42, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !235, file: !159, line: 116, baseType: !228, size: 64, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !235, file: !159, line: 119, baseType: !35, size: 64, offset: 128)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "memusage", scope: !224, file: !217, line: 30, baseType: !241, size: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DISubroutineType(types: !243)
!243 = !{!44, !244}
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!246 = !{!247, !248, !249, !250, !251, !252, !253, !256, !260, !264, !268, !270, !273, !276}
!247 = !DILocalVariable(name: "next", arg: 1, scope: !165, file: !3, line: 242, type: !168)
!248 = !DILocalVariable(name: "allocator", arg: 2, scope: !165, file: !3, line: 242, type: !79)
!249 = !DILocalVariable(name: "options", arg: 3, scope: !165, file: !3, line: 243, type: !70)
!250 = !DILocalVariable(name: "coder_find", arg: 4, scope: !165, file: !3, line: 244, type: !216)
!251 = !DILocalVariable(name: "is_encoder", arg: 5, scope: !165, file: !3, line: 244, type: !53)
!252 = !DILocalVariable(name: "count", scope: !165, file: !3, line: 247, type: !50)
!253 = !DILocalVariable(name: "ret_", scope: !254, file: !3, line: 248, type: !255)
!254 = distinct !DILexicalBlock(scope: !165, file: !3, line: 248, column: 2)
!255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!256 = !DILocalVariable(name: "filters", scope: !165, file: !3, line: 251, type: !257)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, size: 960, elements: !258)
!258 = !{!259}
!259 = !DISubrange(count: 5)
!260 = !DILocalVariable(name: "i", scope: !261, file: !3, line: 253, type: !50)
!261 = distinct !DILexicalBlock(scope: !262, file: !3, line: 253, column: 3)
!262 = distinct !DILexicalBlock(scope: !263, file: !3, line: 252, column: 18)
!263 = distinct !DILexicalBlock(scope: !165, file: !3, line: 252, column: 6)
!264 = !DILocalVariable(name: "j", scope: !265, file: !3, line: 257, type: !267)
!265 = distinct !DILexicalBlock(scope: !266, file: !3, line: 253, column: 38)
!266 = distinct !DILexicalBlock(scope: !261, file: !3, line: 253, column: 3)
!267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!268 = !DILocalVariable(name: "fc", scope: !265, file: !3, line: 259, type: !269)
!269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !221)
!270 = !DILocalVariable(name: "i", scope: !271, file: !3, line: 269, type: !50)
!271 = distinct !DILexicalBlock(scope: !272, file: !3, line: 269, column: 3)
!272 = distinct !DILexicalBlock(scope: !263, file: !3, line: 268, column: 9)
!273 = !DILocalVariable(name: "fc", scope: !274, file: !3, line: 270, type: !269)
!274 = distinct !DILexicalBlock(scope: !275, file: !3, line: 269, column: 38)
!275 = distinct !DILexicalBlock(scope: !271, file: !3, line: 269, column: 3)
!276 = !DILocalVariable(name: "ret", scope: !165, file: !3, line: 286, type: !255)
!277 = distinct !DIAssignID()
!278 = !DILocation(line: 0, scope: !165)
!279 = !DILocalVariable(name: "filters", arg: 1, scope: !280, file: !3, line: 194, type: !70)
!280 = distinct !DISubprogram(name: "validate_chain", scope: !3, file: !3, line: 194, type: !281, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !283)
!281 = !DISubroutineType(types: !282)
!282 = !{!69, !70, !191}
!283 = !{!279, !284, !285, !286, !287, !288, !289}
!284 = !DILocalVariable(name: "count", arg: 2, scope: !280, file: !3, line: 194, type: !191)
!285 = !DILocalVariable(name: "changes_size_count", scope: !280, file: !3, line: 202, type: !50)
!286 = !DILocalVariable(name: "non_last_ok", scope: !280, file: !3, line: 205, type: !53)
!287 = !DILocalVariable(name: "last_ok", scope: !280, file: !3, line: 210, type: !53)
!288 = !DILocalVariable(name: "i", scope: !280, file: !3, line: 212, type: !50)
!289 = !DILocalVariable(name: "j", scope: !290, file: !3, line: 214, type: !50)
!290 = distinct !DILexicalBlock(scope: !280, file: !3, line: 213, column: 5)
!291 = !DILocation(line: 0, scope: !280, inlinedAt: !292)
!292 = distinct !DILocation(line: 248, column: 2, scope: !254)
!293 = !DILocation(line: 197, column: 14, scope: !294, inlinedAt: !292)
!294 = distinct !DILexicalBlock(scope: !280, file: !3, line: 197, column: 6)
!295 = !DILocation(line: 197, column: 22, scope: !294, inlinedAt: !292)
!296 = !DILocation(line: 197, column: 36, scope: !294, inlinedAt: !292)
!297 = !DILocation(line: 197, column: 39, scope: !294, inlinedAt: !292)
!298 = !DILocation(line: 197, column: 6, scope: !280, inlinedAt: !292)
!299 = !DILocation(line: 202, column: 9, scope: !280, inlinedAt: !292)
!300 = !DILocation(line: 205, column: 7, scope: !280, inlinedAt: !292)
!301 = !DILocation(line: 0, scope: !290, inlinedAt: !292)
!302 = !DILocation(line: 215, column: 3, scope: !303, inlinedAt: !292)
!303 = distinct !DILexicalBlock(scope: !290, file: !3, line: 215, column: 3)
!304 = !DILocation(line: 221, column: 8, scope: !305, inlinedAt: !292)
!305 = distinct !DILexicalBlock(scope: !290, file: !3, line: 221, column: 7)
!306 = !DILocation(line: 215, column: 32, scope: !307, inlinedAt: !292)
!307 = distinct !DILexicalBlock(scope: !303, file: !3, line: 215, column: 3)
!308 = !DILocation(line: 221, column: 7, scope: !290, inlinedAt: !292)
!309 = !DILocation(line: 224, column: 29, scope: !290, inlinedAt: !292)
!310 = !{i8 0, i8 2}
!311 = !{}
!312 = !DILocation(line: 226, column: 37, scope: !290, inlinedAt: !292)
!313 = !DILocation(line: 226, column: 22, scope: !290, inlinedAt: !292)
!314 = !DILocation(line: 228, column: 19, scope: !280, inlinedAt: !292)
!315 = !DILocation(line: 228, column: 11, scope: !280, inlinedAt: !292)
!316 = !DILocation(line: 228, column: 24, scope: !280, inlinedAt: !292)
!317 = !DILocation(line: 228, column: 27, scope: !280, inlinedAt: !292)
!318 = !DILocation(line: 228, column: 2, scope: !290, inlinedAt: !292)
!319 = distinct !{!319, !320, !321}
!320 = !DILocation(line: 213, column: 2, scope: !280, inlinedAt: !292)
!321 = !DILocation(line: 228, column: 46, scope: !280, inlinedAt: !292)
!322 = !DILocation(line: 225, column: 25, scope: !290, inlinedAt: !292)
!323 = !DILocation(line: 233, column: 8, scope: !324, inlinedAt: !292)
!324 = distinct !DILexicalBlock(scope: !280, file: !3, line: 233, column: 6)
!325 = !DILocation(line: 233, column: 27, scope: !324, inlinedAt: !292)
!326 = !DILocation(line: 0, scope: !254)
!327 = !DILocation(line: 251, column: 2, scope: !165)
!328 = !DILocation(line: 0, scope: !263)
!329 = !DILocation(line: 252, column: 6, scope: !165)
!330 = !DILocation(line: 0, scope: !271)
!331 = !DILocation(line: 269, column: 3, scope: !271)
!332 = !DILocation(line: 0, scope: !261)
!333 = !DILocation(line: 253, column: 3, scope: !261)
!334 = !DILocation(line: 257, column: 31, scope: !265)
!335 = !DILocation(line: 0, scope: !265)
!336 = !DILocation(line: 260, column: 19, scope: !265)
!337 = !DILocation(line: 260, column: 30, scope: !265)
!338 = !DILocation(line: 260, column: 8, scope: !265)
!339 = !DILocation(line: 261, column: 11, scope: !340)
!340 = distinct !DILexicalBlock(scope: !265, file: !3, line: 261, column: 8)
!341 = !DILocation(line: 261, column: 19, scope: !340)
!342 = !DILocation(line: 261, column: 26, scope: !340)
!343 = !DILocation(line: 261, column: 31, scope: !340)
!344 = !DILocation(line: 261, column: 8, scope: !265)
!345 = !DILocation(line: 264, column: 31, scope: !265)
!346 = !DILocation(line: 264, column: 4, scope: !265)
!347 = !DILocation(line: 264, column: 18, scope: !265)
!348 = !DILocation(line: 265, column: 15, scope: !265)
!349 = !DILocation(line: 265, column: 20, scope: !265)
!350 = !DILocation(line: 266, column: 36, scope: !265)
!351 = !DILocation(line: 266, column: 15, scope: !265)
!352 = !DILocation(line: 266, column: 23, scope: !265)
!353 = !DILocation(line: 253, column: 33, scope: !266)
!354 = !DILocation(line: 253, column: 24, scope: !266)
!355 = distinct !{!355, !333, !356}
!356 = !DILocation(line: 267, column: 3, scope: !261)
!357 = !DILocation(line: 271, column: 19, scope: !274)
!358 = !DILocation(line: 271, column: 30, scope: !274)
!359 = !DILocation(line: 271, column: 8, scope: !274)
!360 = !DILocation(line: 0, scope: !274)
!361 = !DILocation(line: 272, column: 11, scope: !362)
!362 = distinct !DILexicalBlock(scope: !274, file: !3, line: 272, column: 8)
!363 = !DILocation(line: 272, column: 19, scope: !362)
!364 = !DILocation(line: 272, column: 26, scope: !362)
!365 = !DILocation(line: 272, column: 31, scope: !362)
!366 = !DILocation(line: 272, column: 8, scope: !274)
!367 = !DILocation(line: 275, column: 31, scope: !274)
!368 = !DILocation(line: 275, column: 4, scope: !274)
!369 = !DILocation(line: 275, column: 18, scope: !274)
!370 = !DILocation(line: 276, column: 15, scope: !274)
!371 = !DILocation(line: 276, column: 20, scope: !274)
!372 = !DILocation(line: 277, column: 36, scope: !274)
!373 = !DILocation(line: 277, column: 15, scope: !274)
!374 = !DILocation(line: 277, column: 23, scope: !274)
!375 = !DILocation(line: 269, column: 33, scope: !275)
!376 = !DILocation(line: 269, column: 24, scope: !275)
!377 = distinct !{!377, !331, !378}
!378 = !DILocation(line: 278, column: 3, scope: !271)
!379 = !DILocation(line: 282, column: 2, scope: !165)
!380 = !DILocation(line: 282, column: 20, scope: !165)
!381 = !DILocation(line: 283, column: 17, scope: !165)
!382 = !DILocation(line: 283, column: 22, scope: !165)
!383 = !DILocation(line: 286, column: 23, scope: !165)
!384 = !DILocation(line: 287, column: 10, scope: !385)
!385 = distinct !DILexicalBlock(scope: !165, file: !3, line: 287, column: 6)
!386 = !DILocation(line: 287, column: 6, scope: !165)
!387 = !DILocation(line: 288, column: 3, scope: !385)
!388 = !DILocation(line: 291, column: 1, scope: !165)
!389 = !DISubprogram(name: "lzma_next_filter_init", scope: !159, file: !159, line: 226, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!390 = !DISubprogram(name: "lzma_next_end", scope: !159, file: !159, line: 237, type: !391, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!391 = !DISubroutineType(types: !392)
!392 = !{null, !168, !79}
!393 = distinct !DISubprogram(name: "lzma_raw_coder_memusage", scope: !3, file: !3, line: 295, type: !394, scopeLine: 297, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !396)
!394 = !DISubroutineType(types: !395)
!395 = !{!44, !216, !70}
!396 = !{!397, !398, !399, !401, !402, !403, !405}
!397 = !DILocalVariable(name: "coder_find", arg: 1, scope: !393, file: !3, line: 295, type: !216)
!398 = !DILocalVariable(name: "filters", arg: 2, scope: !393, file: !3, line: 296, type: !70)
!399 = !DILocalVariable(name: "tmp", scope: !400, file: !3, line: 300, type: !50)
!400 = distinct !DILexicalBlock(scope: !393, file: !3, line: 299, column: 2)
!401 = !DILocalVariable(name: "total", scope: !393, file: !3, line: 305, type: !44)
!402 = !DILocalVariable(name: "i", scope: !393, file: !3, line: 306, type: !50)
!403 = !DILocalVariable(name: "fc", scope: !404, file: !3, line: 309, type: !269)
!404 = distinct !DILexicalBlock(scope: !393, file: !3, line: 308, column: 5)
!405 = !DILocalVariable(name: "usage", scope: !406, file: !3, line: 325, type: !408)
!406 = distinct !DILexicalBlock(scope: !407, file: !3, line: 322, column: 10)
!407 = distinct !DILexicalBlock(scope: !404, file: !3, line: 314, column: 7)
!408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!409 = !DILocation(line: 0, scope: !393)
!410 = !DILocation(line: 0, scope: !280, inlinedAt: !411)
!411 = distinct !DILocation(line: 301, column: 7, scope: !412)
!412 = distinct !DILexicalBlock(scope: !400, file: !3, line: 301, column: 7)
!413 = !DILocation(line: 197, column: 14, scope: !294, inlinedAt: !411)
!414 = !DILocation(line: 197, column: 22, scope: !294, inlinedAt: !411)
!415 = !DILocation(line: 197, column: 36, scope: !294, inlinedAt: !411)
!416 = !DILocation(line: 197, column: 39, scope: !294, inlinedAt: !411)
!417 = !DILocation(line: 197, column: 6, scope: !280, inlinedAt: !411)
!418 = !DILocation(line: 202, column: 9, scope: !280, inlinedAt: !411)
!419 = !DILocation(line: 205, column: 7, scope: !280, inlinedAt: !411)
!420 = !DILocation(line: 0, scope: !290, inlinedAt: !411)
!421 = !DILocation(line: 215, column: 3, scope: !303, inlinedAt: !411)
!422 = !DILocation(line: 221, column: 8, scope: !305, inlinedAt: !411)
!423 = !DILocation(line: 215, column: 32, scope: !307, inlinedAt: !411)
!424 = !DILocation(line: 221, column: 7, scope: !290, inlinedAt: !411)
!425 = !DILocation(line: 224, column: 29, scope: !290, inlinedAt: !411)
!426 = !DILocation(line: 226, column: 37, scope: !290, inlinedAt: !411)
!427 = !DILocation(line: 226, column: 22, scope: !290, inlinedAt: !411)
!428 = !DILocation(line: 228, column: 19, scope: !280, inlinedAt: !411)
!429 = !DILocation(line: 228, column: 11, scope: !280, inlinedAt: !411)
!430 = !DILocation(line: 228, column: 24, scope: !280, inlinedAt: !411)
!431 = !DILocation(line: 228, column: 27, scope: !280, inlinedAt: !411)
!432 = !DILocation(line: 228, column: 2, scope: !290, inlinedAt: !411)
!433 = distinct !{!433, !434, !435}
!434 = !DILocation(line: 213, column: 2, scope: !280, inlinedAt: !411)
!435 = !DILocation(line: 228, column: 46, scope: !280, inlinedAt: !411)
!436 = !DILocation(line: 225, column: 25, scope: !290, inlinedAt: !411)
!437 = !DILocation(line: 233, column: 8, scope: !324, inlinedAt: !411)
!438 = !DILocation(line: 233, column: 27, scope: !324, inlinedAt: !411)
!439 = !DILocation(line: 310, column: 30, scope: !404)
!440 = !DILocation(line: 305, column: 11, scope: !393)
!441 = !DILocation(line: 310, column: 8, scope: !404)
!442 = !DILocation(line: 0, scope: !404)
!443 = !DILocation(line: 311, column: 10, scope: !444)
!444 = distinct !DILexicalBlock(scope: !404, file: !3, line: 311, column: 7)
!445 = !DILocation(line: 311, column: 7, scope: !404)
!446 = !DILocation(line: 314, column: 11, scope: !407)
!447 = !DILocation(line: 314, column: 20, scope: !407)
!448 = !DILocation(line: 314, column: 7, scope: !404)
!449 = !DILocation(line: 321, column: 10, scope: !450)
!450 = distinct !DILexicalBlock(scope: !407, file: !3, line: 314, column: 29)
!451 = !DILocation(line: 326, column: 32, scope: !406)
!452 = !DILocation(line: 326, column: 8, scope: !406)
!453 = !DILocation(line: 0, scope: !406)
!454 = !DILocation(line: 327, column: 14, scope: !455)
!455 = distinct !DILexicalBlock(scope: !406, file: !3, line: 327, column: 8)
!456 = !DILocation(line: 327, column: 8, scope: !406)
!457 = !DILocation(line: 332, column: 19, scope: !393)
!458 = !DILocation(line: 332, column: 11, scope: !393)
!459 = !DILocation(line: 332, column: 24, scope: !393)
!460 = !DILocation(line: 332, column: 27, scope: !393)
!461 = !DILocation(line: 332, column: 2, scope: !404)
!462 = distinct !{!462, !463, !464}
!463 = !DILocation(line: 308, column: 2, scope: !393)
!464 = !DILocation(line: 332, column: 46, scope: !393)
!465 = !DILocation(line: 336, column: 15, scope: !393)
!466 = !DILocation(line: 336, column: 2, scope: !393)
!467 = !DILocation(line: 337, column: 1, scope: !393)
