; ModuleID = 'liblzma/common/filter_common.c'
source_filename = "liblzma/common/filter_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i64, i64, i8, i8, i8 }
%struct.lzma_filter = type { i64, ptr }
%struct.lzma_filter_info_s = type { i64, ptr, ptr }

@features = internal unnamed_addr constant [10 x %struct.anon] [%struct.anon { i64 4611686018427387905, i64 112, i8 0, i8 1, i8 1 }, %struct.anon { i64 33, i64 112, i8 0, i8 1, i8 1 }, %struct.anon { i64 4, i64 4, i8 1, i8 0, i8 0 }, %struct.anon { i64 5, i64 4, i8 1, i8 0, i8 0 }, %struct.anon { i64 6, i64 4, i8 1, i8 0, i8 0 }, %struct.anon { i64 7, i64 4, i8 1, i8 0, i8 0 }, %struct.anon { i64 8, i64 4, i8 1, i8 0, i8 0 }, %struct.anon { i64 9, i64 4, i8 1, i8 0, i8 0 }, %struct.anon { i64 3, i64 40, i8 1, i8 0, i8 0 }, %struct.anon { i64 -1, i64 0, i8 0, i8 0, i8 0 }], align 16

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @lzma_filters_copy(ptr noundef readonly %src, ptr noundef %dest, ptr noundef %allocator) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq ptr %src, null
  %cmp1 = icmp eq ptr %dest, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %return, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %0 = load i64, ptr %src, align 8
  %cmp2.not101 = icmp eq i64 %0, -1
  br i1 %cmp2.not101, label %for.end44, label %if.end5

if.end5:                                          ; preds = %for.cond.preheader
  store i64 %0, ptr %dest, align 8
  %options = getelementptr inbounds i8, ptr %src, i64 8
  %1 = load ptr, ptr %options, align 8
  %cmp11 = icmp eq ptr %1, null
  br i1 %cmp11, label %if.then12, label %for.cond15.preheader

for.cond15.preheader:                             ; preds = %if.end5
  %2 = load i64, ptr %src, align 8
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
  ]

if.then12:                                        ; preds = %if.end5
  %options14 = getelementptr inbounds i8, ptr %dest, i64 8
  store ptr null, ptr %options14, align 8
  br label %for.inc42

for.end.fold.split:                               ; preds = %for.cond15.preheader
  br label %for.end

for.end.fold.split119:                            ; preds = %for.cond15.preheader
  br label %for.end

for.end.fold.split120:                            ; preds = %for.cond15.preheader
  br label %for.end

for.end.fold.split121:                            ; preds = %for.cond15.preheader
  br label %for.end

for.end.fold.split122:                            ; preds = %for.cond15.preheader
  br label %for.end

for.end.fold.split123:                            ; preds = %for.cond15.preheader
  br label %for.end

for.end.fold.split124:                            ; preds = %for.cond15.preheader
  br label %for.end

for.end.fold.split125:                            ; preds = %for.cond15.preheader
  br label %for.end

for.end.fold.split126:                            ; preds = %for.cond15.preheader
  br label %for.end

for.end:                                          ; preds = %for.cond15.preheader, %for.end.fold.split126, %for.end.fold.split125, %for.end.fold.split124, %for.end.fold.split123, %for.end.fold.split122, %for.end.fold.split121, %for.end.fold.split120, %for.end.fold.split119, %for.end.fold.split
  %arrayidx18.lcssa = phi ptr [ @features, %for.cond15.preheader ], [ getelementptr inbounds (i8, ptr @features, i64 24), %for.end.fold.split ], [ getelementptr inbounds (i8, ptr @features, i64 48), %for.end.fold.split119 ], [ getelementptr inbounds (i8, ptr @features, i64 72), %for.end.fold.split120 ], [ getelementptr inbounds (i8, ptr @features, i64 96), %for.end.fold.split121 ], [ getelementptr inbounds (i8, ptr @features, i64 120), %for.end.fold.split122 ], [ getelementptr inbounds (i8, ptr @features, i64 144), %for.end.fold.split123 ], [ getelementptr inbounds (i8, ptr @features, i64 168), %for.end.fold.split124 ], [ getelementptr inbounds (i8, ptr @features, i64 192), %for.end.fold.split125 ], [ getelementptr inbounds (i8, ptr @features, i64 216), %for.end.fold.split126 ]
  %options_size = getelementptr inbounds i8, ptr %arrayidx18.lcssa, i64 8
  %3 = load i64, ptr %options_size, align 8
  %call = tail call ptr @lzma_alloc(i64 noundef %3, ptr noundef %allocator) #4
  %options29 = getelementptr inbounds i8, ptr %dest, i64 8
  store ptr %call, ptr %options29, align 8
  %cmp32 = icmp eq ptr %call, null
  br i1 %cmp32, label %error, label %cleanup

cleanup:                                          ; preds = %for.end
  %4 = load ptr, ptr %options, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %call, ptr align 1 %4, i64 %3, i1 false)
  br label %for.inc42

for.inc42:                                        ; preds = %cleanup, %if.then12
  %arrayidx = getelementptr inbounds i8, ptr %src, i64 16
  %5 = load i64, ptr %arrayidx, align 8
  %cmp2.not = icmp eq i64 %5, -1
  br i1 %cmp2.not, label %for.end44, label %for.body.1

for.body.1:                                       ; preds = %for.inc42
  %arrayidx103.1 = getelementptr inbounds i8, ptr %src, i64 16
  %arrayidx8.1 = getelementptr inbounds i8, ptr %dest, i64 16
  store i64 %5, ptr %arrayidx8.1, align 8
  %options.1 = getelementptr inbounds i8, ptr %src, i64 24
  %6 = load ptr, ptr %options.1, align 8
  %cmp11.1 = icmp eq ptr %6, null
  br i1 %cmp11.1, label %if.then12.1, label %for.cond15.preheader.1

for.cond15.preheader.1:                           ; preds = %for.body.1
  %7 = load i64, ptr %arrayidx103.1, align 8
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
  ]

for.end.fold.split126.1:                          ; preds = %for.cond15.preheader.1
  br label %for.end.1

for.end.fold.split125.1:                          ; preds = %for.cond15.preheader.1
  br label %for.end.1

for.end.fold.split124.1:                          ; preds = %for.cond15.preheader.1
  br label %for.end.1

for.end.fold.split123.1:                          ; preds = %for.cond15.preheader.1
  br label %for.end.1

for.end.fold.split122.1:                          ; preds = %for.cond15.preheader.1
  br label %for.end.1

for.end.fold.split121.1:                          ; preds = %for.cond15.preheader.1
  br label %for.end.1

for.end.fold.split120.1:                          ; preds = %for.cond15.preheader.1
  br label %for.end.1

for.end.fold.split119.1:                          ; preds = %for.cond15.preheader.1
  br label %for.end.1

for.end.fold.split.1:                             ; preds = %for.cond15.preheader.1
  br label %for.end.1

for.end.1:                                        ; preds = %for.end.fold.split.1, %for.end.fold.split119.1, %for.end.fold.split120.1, %for.end.fold.split121.1, %for.end.fold.split122.1, %for.end.fold.split123.1, %for.end.fold.split124.1, %for.end.fold.split125.1, %for.end.fold.split126.1, %for.cond15.preheader.1
  %arrayidx18.lcssa.1 = phi ptr [ @features, %for.cond15.preheader.1 ], [ getelementptr inbounds (i8, ptr @features, i64 24), %for.end.fold.split.1 ], [ getelementptr inbounds (i8, ptr @features, i64 48), %for.end.fold.split119.1 ], [ getelementptr inbounds (i8, ptr @features, i64 72), %for.end.fold.split120.1 ], [ getelementptr inbounds (i8, ptr @features, i64 96), %for.end.fold.split121.1 ], [ getelementptr inbounds (i8, ptr @features, i64 120), %for.end.fold.split122.1 ], [ getelementptr inbounds (i8, ptr @features, i64 144), %for.end.fold.split123.1 ], [ getelementptr inbounds (i8, ptr @features, i64 168), %for.end.fold.split124.1 ], [ getelementptr inbounds (i8, ptr @features, i64 192), %for.end.fold.split125.1 ], [ getelementptr inbounds (i8, ptr @features, i64 216), %for.end.fold.split126.1 ]
  %options_size.1 = getelementptr inbounds i8, ptr %arrayidx18.lcssa.1, i64 8
  %8 = load i64, ptr %options_size.1, align 8
  %call.1 = tail call ptr @lzma_alloc(i64 noundef %8, ptr noundef %allocator) #4
  %options29.1 = getelementptr inbounds i8, ptr %dest, i64 24
  store ptr %call.1, ptr %options29.1, align 8
  %cmp32.1 = icmp eq ptr %call.1, null
  br i1 %cmp32.1, label %error, label %cleanup.1

cleanup.1:                                        ; preds = %for.end.1
  %9 = load ptr, ptr %options.1, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %call.1, ptr align 1 %9, i64 %8, i1 false)
  br label %for.inc42.1

if.then12.1:                                      ; preds = %for.body.1
  %options14.1 = getelementptr inbounds i8, ptr %dest, i64 24
  store ptr null, ptr %options14.1, align 8
  br label %for.inc42.1

for.inc42.1:                                      ; preds = %if.then12.1, %cleanup.1
  %arrayidx.1 = getelementptr inbounds i8, ptr %src, i64 32
  %10 = load i64, ptr %arrayidx.1, align 8
  %cmp2.not.1 = icmp eq i64 %10, -1
  br i1 %cmp2.not.1, label %for.end44, label %for.body.2

for.body.2:                                       ; preds = %for.inc42.1
  %arrayidx103.2 = getelementptr inbounds i8, ptr %src, i64 32
  %arrayidx8.2 = getelementptr inbounds i8, ptr %dest, i64 32
  store i64 %10, ptr %arrayidx8.2, align 8
  %options.2 = getelementptr inbounds i8, ptr %src, i64 40
  %11 = load ptr, ptr %options.2, align 8
  %cmp11.2 = icmp eq ptr %11, null
  br i1 %cmp11.2, label %if.then12.2, label %for.cond15.preheader.2

for.cond15.preheader.2:                           ; preds = %for.body.2
  %12 = load i64, ptr %arrayidx103.2, align 8
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
  ]

for.end.fold.split126.2:                          ; preds = %for.cond15.preheader.2
  br label %for.end.2

for.end.fold.split125.2:                          ; preds = %for.cond15.preheader.2
  br label %for.end.2

for.end.fold.split124.2:                          ; preds = %for.cond15.preheader.2
  br label %for.end.2

for.end.fold.split123.2:                          ; preds = %for.cond15.preheader.2
  br label %for.end.2

for.end.fold.split122.2:                          ; preds = %for.cond15.preheader.2
  br label %for.end.2

for.end.fold.split121.2:                          ; preds = %for.cond15.preheader.2
  br label %for.end.2

for.end.fold.split120.2:                          ; preds = %for.cond15.preheader.2
  br label %for.end.2

for.end.fold.split119.2:                          ; preds = %for.cond15.preheader.2
  br label %for.end.2

for.end.fold.split.2:                             ; preds = %for.cond15.preheader.2
  br label %for.end.2

for.end.2:                                        ; preds = %for.end.fold.split.2, %for.end.fold.split119.2, %for.end.fold.split120.2, %for.end.fold.split121.2, %for.end.fold.split122.2, %for.end.fold.split123.2, %for.end.fold.split124.2, %for.end.fold.split125.2, %for.end.fold.split126.2, %for.cond15.preheader.2
  %arrayidx18.lcssa.2 = phi ptr [ @features, %for.cond15.preheader.2 ], [ getelementptr inbounds (i8, ptr @features, i64 24), %for.end.fold.split.2 ], [ getelementptr inbounds (i8, ptr @features, i64 48), %for.end.fold.split119.2 ], [ getelementptr inbounds (i8, ptr @features, i64 72), %for.end.fold.split120.2 ], [ getelementptr inbounds (i8, ptr @features, i64 96), %for.end.fold.split121.2 ], [ getelementptr inbounds (i8, ptr @features, i64 120), %for.end.fold.split122.2 ], [ getelementptr inbounds (i8, ptr @features, i64 144), %for.end.fold.split123.2 ], [ getelementptr inbounds (i8, ptr @features, i64 168), %for.end.fold.split124.2 ], [ getelementptr inbounds (i8, ptr @features, i64 192), %for.end.fold.split125.2 ], [ getelementptr inbounds (i8, ptr @features, i64 216), %for.end.fold.split126.2 ]
  %options_size.2 = getelementptr inbounds i8, ptr %arrayidx18.lcssa.2, i64 8
  %13 = load i64, ptr %options_size.2, align 8
  %call.2 = tail call ptr @lzma_alloc(i64 noundef %13, ptr noundef %allocator) #4
  %options29.2 = getelementptr inbounds i8, ptr %dest, i64 40
  store ptr %call.2, ptr %options29.2, align 8
  %cmp32.2 = icmp eq ptr %call.2, null
  br i1 %cmp32.2, label %error, label %cleanup.2

cleanup.2:                                        ; preds = %for.end.2
  %14 = load ptr, ptr %options.2, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %call.2, ptr align 1 %14, i64 %13, i1 false)
  br label %for.inc42.2

if.then12.2:                                      ; preds = %for.body.2
  %options14.2 = getelementptr inbounds i8, ptr %dest, i64 40
  store ptr null, ptr %options14.2, align 8
  br label %for.inc42.2

for.inc42.2:                                      ; preds = %if.then12.2, %cleanup.2
  %arrayidx.2 = getelementptr inbounds i8, ptr %src, i64 48
  %15 = load i64, ptr %arrayidx.2, align 8
  %cmp2.not.2 = icmp eq i64 %15, -1
  br i1 %cmp2.not.2, label %for.end44, label %for.body.3

for.body.3:                                       ; preds = %for.inc42.2
  %arrayidx103.3 = getelementptr inbounds i8, ptr %src, i64 48
  %arrayidx8.3 = getelementptr inbounds i8, ptr %dest, i64 48
  store i64 %15, ptr %arrayidx8.3, align 8
  %options.3 = getelementptr inbounds i8, ptr %src, i64 56
  %16 = load ptr, ptr %options.3, align 8
  %cmp11.3 = icmp eq ptr %16, null
  br i1 %cmp11.3, label %if.then12.3, label %for.cond15.preheader.3

for.cond15.preheader.3:                           ; preds = %for.body.3
  %17 = load i64, ptr %arrayidx103.3, align 8
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
  ]

for.end.fold.split126.3:                          ; preds = %for.cond15.preheader.3
  br label %for.end.3

for.end.fold.split125.3:                          ; preds = %for.cond15.preheader.3
  br label %for.end.3

for.end.fold.split124.3:                          ; preds = %for.cond15.preheader.3
  br label %for.end.3

for.end.fold.split123.3:                          ; preds = %for.cond15.preheader.3
  br label %for.end.3

for.end.fold.split122.3:                          ; preds = %for.cond15.preheader.3
  br label %for.end.3

for.end.fold.split121.3:                          ; preds = %for.cond15.preheader.3
  br label %for.end.3

for.end.fold.split120.3:                          ; preds = %for.cond15.preheader.3
  br label %for.end.3

for.end.fold.split119.3:                          ; preds = %for.cond15.preheader.3
  br label %for.end.3

for.end.fold.split.3:                             ; preds = %for.cond15.preheader.3
  br label %for.end.3

for.end.3:                                        ; preds = %for.end.fold.split.3, %for.end.fold.split119.3, %for.end.fold.split120.3, %for.end.fold.split121.3, %for.end.fold.split122.3, %for.end.fold.split123.3, %for.end.fold.split124.3, %for.end.fold.split125.3, %for.end.fold.split126.3, %for.cond15.preheader.3
  %arrayidx18.lcssa.3 = phi ptr [ @features, %for.cond15.preheader.3 ], [ getelementptr inbounds (i8, ptr @features, i64 24), %for.end.fold.split.3 ], [ getelementptr inbounds (i8, ptr @features, i64 48), %for.end.fold.split119.3 ], [ getelementptr inbounds (i8, ptr @features, i64 72), %for.end.fold.split120.3 ], [ getelementptr inbounds (i8, ptr @features, i64 96), %for.end.fold.split121.3 ], [ getelementptr inbounds (i8, ptr @features, i64 120), %for.end.fold.split122.3 ], [ getelementptr inbounds (i8, ptr @features, i64 144), %for.end.fold.split123.3 ], [ getelementptr inbounds (i8, ptr @features, i64 168), %for.end.fold.split124.3 ], [ getelementptr inbounds (i8, ptr @features, i64 192), %for.end.fold.split125.3 ], [ getelementptr inbounds (i8, ptr @features, i64 216), %for.end.fold.split126.3 ]
  %options_size.3 = getelementptr inbounds i8, ptr %arrayidx18.lcssa.3, i64 8
  %18 = load i64, ptr %options_size.3, align 8
  %call.3 = tail call ptr @lzma_alloc(i64 noundef %18, ptr noundef %allocator) #4
  %options29.3 = getelementptr inbounds i8, ptr %dest, i64 56
  store ptr %call.3, ptr %options29.3, align 8
  %cmp32.3 = icmp eq ptr %call.3, null
  br i1 %cmp32.3, label %error, label %cleanup.3

cleanup.3:                                        ; preds = %for.end.3
  %19 = load ptr, ptr %options.3, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %call.3, ptr align 1 %19, i64 %18, i1 false)
  br label %for.inc42.3

if.then12.3:                                      ; preds = %for.body.3
  %options14.3 = getelementptr inbounds i8, ptr %dest, i64 56
  store ptr null, ptr %options14.3, align 8
  br label %for.inc42.3

for.inc42.3:                                      ; preds = %if.then12.3, %cleanup.3
  %arrayidx.3 = getelementptr inbounds i8, ptr %src, i64 64
  %20 = load i64, ptr %arrayidx.3, align 8
  %cmp2.not.3 = icmp eq i64 %20, -1
  br i1 %cmp2.not.3, label %for.end44, label %while.body.preheader

for.end44:                                        ; preds = %for.inc42, %for.inc42.1, %for.inc42.2, %for.inc42.3, %for.cond.preheader
  %i.0.lcssa = phi i64 [ 0, %for.cond.preheader ], [ 1, %for.inc42 ], [ 2, %for.inc42.1 ], [ 3, %for.inc42.2 ], [ 4, %for.inc42.3 ]
  %arrayidx45 = getelementptr inbounds %struct.lzma_filter, ptr %dest, i64 %i.0.lcssa
  store i64 -1, ptr %arrayidx45, align 8
  %options48 = getelementptr inbounds i8, ptr %arrayidx45, i64 8
  store ptr null, ptr %options48, align 8
  br label %return

error:                                            ; preds = %for.end.3, %for.cond15.preheader.3, %for.end.2, %for.cond15.preheader.2, %for.end.1, %for.cond15.preheader.1, %for.cond15.preheader, %for.end
  %cmp49.not105 = phi i1 [ true, %for.cond15.preheader ], [ true, %for.end ], [ false, %for.cond15.preheader.1 ], [ false, %for.end.1 ], [ false, %for.cond15.preheader.2 ], [ false, %for.end.2 ], [ false, %for.cond15.preheader.3 ], [ false, %for.end.3 ]
  %i.0102.lcssa129 = phi i64 [ 0, %for.cond15.preheader ], [ 0, %for.end ], [ 1, %for.cond15.preheader.1 ], [ 1, %for.end.1 ], [ 2, %for.cond15.preheader.2 ], [ 2, %for.end.2 ], [ 3, %for.cond15.preheader.3 ], [ 3, %for.end.3 ]
  %ret.3 = phi i32 [ 8, %for.cond15.preheader ], [ 5, %for.end ], [ 8, %for.cond15.preheader.1 ], [ 5, %for.end.1 ], [ 8, %for.cond15.preheader.2 ], [ 5, %for.end.2 ], [ 8, %for.cond15.preheader.3 ], [ 5, %for.end.3 ]
  br i1 %cmp49.not105, label %return, label %while.body.preheader

while.body.preheader:                             ; preds = %for.inc42.3, %error
  %ret.3116 = phi i32 [ %ret.3, %error ], [ 8, %for.inc42.3 ]
  %i.0102111115 = phi i64 [ %i.0102.lcssa129, %error ], [ 4, %for.inc42.3 ]
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %while.body
  %i.1106 = phi i64 [ %dec, %while.body ], [ %i.0102111115, %while.body.preheader ]
  %dec = add nsw i64 %i.1106, -1
  %options51 = getelementptr inbounds %struct.lzma_filter, ptr %dest, i64 %dec, i32 1
  %21 = load ptr, ptr %options51, align 8
  tail call void @lzma_free(ptr noundef %21, ptr noundef %allocator) #4
  store ptr null, ptr %options51, align 8
  %cmp49.not = icmp eq i64 %dec, 0
  br i1 %cmp49.not, label %return, label %while.body

return:                                           ; preds = %while.body, %error, %for.end44, %entry
  %retval.1 = phi i32 [ 11, %entry ], [ 0, %for.end44 ], [ %ret.3, %error ], [ %ret.3116, %while.body ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_raw_coder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef readonly %options, ptr nocapture noundef readonly %coder_find, i1 noundef zeroext %is_encoder) local_unnamed_addr #0 {
entry:
  %filters = alloca [5 x %struct.lzma_filter_info_s], align 16
  %cmp.i = icmp eq ptr %options, null
  br i1 %cmp.i, label %cleanup71, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %entry
  %0 = load i64, ptr %options, align 8
  %cmp1.i = icmp eq i64 %0, -1
  br i1 %cmp1.i, label %cleanup71, label %do.body.i

do.body.i:                                        ; preds = %lor.lhs.false.i, %do.cond.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %do.cond.i ], [ 1, %lor.lhs.false.i ]
  %1 = phi i64 [ %4, %do.cond.i ], [ %0, %lor.lhs.false.i ]
  %changes_size_count.0.i = phi i64 [ %add.i, %do.cond.i ], [ 0, %lor.lhs.false.i ]
  %non_last_ok.0.i = phi i8 [ %2, %do.cond.i ], [ 1, %lor.lhs.false.i ]
  %i.0.i = phi i64 [ %inc23.i, %do.cond.i ], [ 0, %lor.lhs.false.i ]
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
  ]

for.end.fold.split.i:                             ; preds = %do.body.i
  br label %for.end.i

for.end.fold.split65.i:                           ; preds = %do.body.i
  br label %for.end.i

for.end.fold.split66.i:                           ; preds = %do.body.i
  br label %for.end.i

for.end.fold.split67.i:                           ; preds = %do.body.i
  br label %for.end.i

for.end.fold.split68.i:                           ; preds = %do.body.i
  br label %for.end.i

for.end.fold.split69.i:                           ; preds = %do.body.i
  br label %for.end.i

for.end.fold.split70.i:                           ; preds = %do.body.i
  br label %for.end.i

for.end.fold.split71.i:                           ; preds = %do.body.i
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.fold.split71.i, %for.end.fold.split70.i, %for.end.fold.split69.i, %for.end.fold.split68.i, %for.end.fold.split67.i, %for.end.fold.split66.i, %for.end.fold.split65.i, %for.end.fold.split.i, %do.body.i
  %arrayidx4.lcssa.i = phi ptr [ @features, %do.body.i ], [ getelementptr inbounds (i8, ptr @features, i64 24), %for.end.fold.split.i ], [ getelementptr inbounds (i8, ptr @features, i64 48), %for.end.fold.split65.i ], [ getelementptr inbounds (i8, ptr @features, i64 72), %for.end.fold.split66.i ], [ getelementptr inbounds (i8, ptr @features, i64 96), %for.end.fold.split67.i ], [ getelementptr inbounds (i8, ptr @features, i64 120), %for.end.fold.split68.i ], [ getelementptr inbounds (i8, ptr @features, i64 144), %for.end.fold.split69.i ], [ getelementptr inbounds (i8, ptr @features, i64 168), %for.end.fold.split70.i ], [ getelementptr inbounds (i8, ptr @features, i64 192), %for.end.fold.split71.i ]
  %loadedv.i = trunc nuw i8 %non_last_ok.0.i to i1
  br i1 %loadedv.i, label %do.cond.i, label %cleanup71

do.cond.i:                                        ; preds = %for.end.i
  %non_last_ok15.i = getelementptr inbounds i8, ptr %arrayidx4.lcssa.i, i64 16
  %2 = load i8, ptr %non_last_ok15.i, align 8, !range !5, !noundef !6
  %changes_size.i = getelementptr inbounds i8, ptr %arrayidx4.lcssa.i, i64 18
  %3 = load i8, ptr %changes_size.i, align 2, !range !5, !noundef !6
  %loadedv22.i = zext nneg i8 %3 to i64
  %add.i = add i64 %changes_size_count.0.i, %loadedv22.i
  %inc23.i = add i64 %i.0.i, 1
  %arrayidx24.i = getelementptr inbounds %struct.lzma_filter, ptr %options, i64 %inc23.i
  %4 = load i64, ptr %arrayidx24.i, align 8
  %cmp26.not.i = icmp eq i64 %4, -1
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp26.not.i, label %do.end.i, label %do.body.i

do.end.i:                                         ; preds = %do.cond.i
  %last_ok18.i = getelementptr inbounds i8, ptr %arrayidx4.lcssa.i, i64 17
  %5 = load i8, ptr %last_ok18.i, align 1, !range !5, !noundef !6
  %cmp28.i = icmp ult i64 %inc23.i, 5
  %loadedv31.i = trunc nuw i8 %5 to i1
  %cmp33.i = icmp ult i64 %add.i, 4
  %6 = select i1 %cmp28.i, i1 %loadedv31.i, i1 false
  %or.cond.i = select i1 %6, i1 %cmp33.i, i1 false
  br i1 %or.cond.i, label %do.end, label %cleanup71

do.end:                                           ; preds = %do.end.i
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %filters) #4
  %cmp2.not126.not = icmp eq i64 %inc23.i, 0
  br i1 %is_encoder, label %for.cond.preheader, label %for.cond27.preheader

for.cond27.preheader:                             ; preds = %do.end
  br i1 %cmp2.not126.not, label %if.end60, label %for.body30

for.cond.preheader:                               ; preds = %do.end
  br i1 %cmp2.not126.not, label %if.end60, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %i.0127 = phi i64 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %sub3 = sub i64 %i.0.i, %i.0127
  %arrayidx = getelementptr inbounds %struct.lzma_filter, ptr %options, i64 %i.0127
  %7 = load i64, ptr %arrayidx, align 8
  %call4 = tail call ptr %coder_find(i64 noundef %7) #4
  %cmp5 = icmp eq ptr %call4, null
  br i1 %cmp5, label %cleanup70, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %init = getelementptr inbounds i8, ptr %call4, i64 8
  %8 = load ptr, ptr %init, align 8
  %cmp6 = icmp eq ptr %8, null
  br i1 %cmp6, label %cleanup70, label %for.inc

for.inc:                                          ; preds = %lor.lhs.false
  %9 = load i64, ptr %arrayidx, align 8
  %arrayidx11 = getelementptr inbounds [5 x %struct.lzma_filter_info_s], ptr %filters, i64 0, i64 %sub3
  store i64 %9, ptr %arrayidx11, align 8
  %init15 = getelementptr inbounds i8, ptr %arrayidx11, i64 8
  store ptr %8, ptr %init15, align 8
  %options17 = getelementptr inbounds i8, ptr %arrayidx, i64 8
  %10 = load ptr, ptr %options17, align 8
  %options19 = getelementptr inbounds i8, ptr %arrayidx11, i64 16
  store ptr %10, ptr %options19, align 8
  %inc = add nuw i64 %i.0127, 1
  %exitcond133.not = icmp eq i64 %inc, %indvars.iv
  br i1 %exitcond133.not, label %if.end60, label %for.body

for.body30:                                       ; preds = %for.cond27.preheader, %for.inc55
  %i26.0125 = phi i64 [ %inc56, %for.inc55 ], [ 0, %for.cond27.preheader ]
  %arrayidx32 = getelementptr inbounds %struct.lzma_filter, ptr %options, i64 %i26.0125
  %11 = load i64, ptr %arrayidx32, align 8
  %call34 = tail call ptr %coder_find(i64 noundef %11) #4
  %cmp35 = icmp eq ptr %call34, null
  br i1 %cmp35, label %cleanup70, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %for.body30
  %init37 = getelementptr inbounds i8, ptr %call34, i64 8
  %12 = load ptr, ptr %init37, align 8
  %cmp38 = icmp eq ptr %12, null
  br i1 %cmp38, label %cleanup70, label %for.inc55

for.inc55:                                        ; preds = %lor.lhs.false36
  %13 = load i64, ptr %arrayidx32, align 8
  %arrayidx43 = getelementptr inbounds [5 x %struct.lzma_filter_info_s], ptr %filters, i64 0, i64 %i26.0125
  store i64 %13, ptr %arrayidx43, align 8
  %init47 = getelementptr inbounds i8, ptr %arrayidx43, i64 8
  store ptr %12, ptr %init47, align 8
  %options49 = getelementptr inbounds i8, ptr %arrayidx32, i64 8
  %14 = load ptr, ptr %options49, align 8
  %options51 = getelementptr inbounds i8, ptr %arrayidx43, i64 16
  store ptr %14, ptr %options51, align 8
  %inc56 = add nuw i64 %i26.0125, 1
  %exitcond.not = icmp eq i64 %inc56, %indvars.iv
  br i1 %exitcond.not, label %if.end60, label %for.body30

if.end60:                                         ; preds = %for.inc55, %for.inc, %for.cond27.preheader, %for.cond.preheader
  %arrayidx61 = getelementptr inbounds [5 x %struct.lzma_filter_info_s], ptr %filters, i64 0, i64 %inc23.i
  store i64 -1, ptr %arrayidx61, align 8
  %init64 = getelementptr inbounds [5 x %struct.lzma_filter_info_s], ptr %filters, i64 0, i64 %inc23.i, i32 1
  store ptr null, ptr %init64, align 8
  %call65 = call i32 @lzma_next_filter_init(ptr noundef %next, ptr noundef %allocator, ptr noundef nonnull %filters) #4
  %cmp66.not = icmp eq i32 %call65, 0
  br i1 %cmp66.not, label %cleanup70, label %if.then67

if.then67:                                        ; preds = %if.end60
  call void @lzma_next_end(ptr noundef %next, ptr noundef %allocator) #4
  br label %cleanup70

cleanup70:                                        ; preds = %lor.lhs.false36, %for.body30, %lor.lhs.false, %for.body, %if.end60, %if.then67
  %retval.7 = phi i32 [ %call65, %if.then67 ], [ 0, %if.end60 ], [ 8, %for.body ], [ 8, %lor.lhs.false ], [ 8, %for.body30 ], [ 8, %lor.lhs.false36 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %filters) #4
  br label %cleanup71

cleanup71:                                        ; preds = %for.end.i, %do.body.i, %do.end.i, %entry, %lor.lhs.false.i, %cleanup70
  %retval.8 = phi i32 [ %retval.7, %cleanup70 ], [ 8, %do.end.i ], [ 11, %entry ], [ 11, %lor.lhs.false.i ], [ 8, %do.body.i ], [ 8, %for.end.i ]
  ret i32 %retval.8
}

declare i32 @lzma_next_filter_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @lzma_raw_coder_memusage(ptr nocapture noundef readonly %coder_find, ptr noundef readonly %filters) local_unnamed_addr #0 {
entry:
  %cmp.i = icmp eq ptr %filters, null
  br i1 %cmp.i, label %return, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %entry
  %0 = load i64, ptr %filters, align 8
  %cmp1.i = icmp eq i64 %0, -1
  br i1 %cmp1.i, label %return, label %do.body.i

do.body.i:                                        ; preds = %lor.lhs.false.i, %do.cond.i
  %1 = phi i64 [ %4, %do.cond.i ], [ %0, %lor.lhs.false.i ]
  %changes_size_count.0.i = phi i64 [ %add.i, %do.cond.i ], [ 0, %lor.lhs.false.i ]
  %non_last_ok.0.i = phi i8 [ %2, %do.cond.i ], [ 1, %lor.lhs.false.i ]
  %i.0.i = phi i64 [ %inc23.i, %do.cond.i ], [ 0, %lor.lhs.false.i ]
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
  ]

for.end.fold.split.i:                             ; preds = %do.body.i
  br label %for.end.i

for.end.fold.split65.i:                           ; preds = %do.body.i
  br label %for.end.i

for.end.fold.split66.i:                           ; preds = %do.body.i
  br label %for.end.i

for.end.fold.split67.i:                           ; preds = %do.body.i
  br label %for.end.i

for.end.fold.split68.i:                           ; preds = %do.body.i
  br label %for.end.i

for.end.fold.split69.i:                           ; preds = %do.body.i
  br label %for.end.i

for.end.fold.split70.i:                           ; preds = %do.body.i
  br label %for.end.i

for.end.fold.split71.i:                           ; preds = %do.body.i
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.fold.split71.i, %for.end.fold.split70.i, %for.end.fold.split69.i, %for.end.fold.split68.i, %for.end.fold.split67.i, %for.end.fold.split66.i, %for.end.fold.split65.i, %for.end.fold.split.i, %do.body.i
  %arrayidx4.lcssa.i = phi ptr [ @features, %do.body.i ], [ getelementptr inbounds (i8, ptr @features, i64 24), %for.end.fold.split.i ], [ getelementptr inbounds (i8, ptr @features, i64 48), %for.end.fold.split65.i ], [ getelementptr inbounds (i8, ptr @features, i64 72), %for.end.fold.split66.i ], [ getelementptr inbounds (i8, ptr @features, i64 96), %for.end.fold.split67.i ], [ getelementptr inbounds (i8, ptr @features, i64 120), %for.end.fold.split68.i ], [ getelementptr inbounds (i8, ptr @features, i64 144), %for.end.fold.split69.i ], [ getelementptr inbounds (i8, ptr @features, i64 168), %for.end.fold.split70.i ], [ getelementptr inbounds (i8, ptr @features, i64 192), %for.end.fold.split71.i ]
  %loadedv.i = trunc nuw i8 %non_last_ok.0.i to i1
  br i1 %loadedv.i, label %do.cond.i, label %return

do.cond.i:                                        ; preds = %for.end.i
  %non_last_ok15.i = getelementptr inbounds i8, ptr %arrayidx4.lcssa.i, i64 16
  %2 = load i8, ptr %non_last_ok15.i, align 8, !range !5, !noundef !6
  %changes_size.i = getelementptr inbounds i8, ptr %arrayidx4.lcssa.i, i64 18
  %3 = load i8, ptr %changes_size.i, align 2, !range !5, !noundef !6
  %loadedv22.i = zext nneg i8 %3 to i64
  %add.i = add i64 %changes_size_count.0.i, %loadedv22.i
  %inc23.i = add i64 %i.0.i, 1
  %arrayidx24.i = getelementptr inbounds %struct.lzma_filter, ptr %filters, i64 %inc23.i
  %4 = load i64, ptr %arrayidx24.i, align 8
  %cmp26.not.i = icmp eq i64 %4, -1
  br i1 %cmp26.not.i, label %do.end.i, label %do.body.i

do.end.i:                                         ; preds = %do.cond.i
  %last_ok18.i = getelementptr inbounds i8, ptr %arrayidx4.lcssa.i, i64 17
  %5 = load i8, ptr %last_ok18.i, align 1, !range !5, !noundef !6
  %cmp28.i = icmp ult i64 %inc23.i, 5
  %loadedv31.i = trunc nuw i8 %5 to i1
  %cmp33.i = icmp ult i64 %add.i, 4
  %6 = select i1 %cmp28.i, i1 %loadedv31.i, i1 false
  %or.cond.i = select i1 %6, i1 %cmp33.i, i1 false
  br i1 %or.cond.i, label %do.body, label %return

do.body:                                          ; preds = %do.end.i, %do.cond
  %7 = phi i64 [ %10, %do.cond ], [ %0, %do.end.i ]
  %total.0 = phi i64 [ %total.345, %do.cond ], [ 0, %do.end.i ]
  %i.0 = phi i64 [ %inc, %do.cond ], [ 0, %do.end.i ]
  %call1 = tail call ptr %coder_find(i64 noundef %7) #4
  %cmp2 = icmp eq ptr %call1, null
  br i1 %cmp2, label %return, label %if.end4

if.end4:                                          ; preds = %do.body
  %memusage = getelementptr inbounds i8, ptr %call1, i64 16
  %8 = load ptr, ptr %memusage, align 8
  %cmp5 = icmp eq ptr %8, null
  br i1 %cmp5, label %cleanup18.thread, label %cleanup18

cleanup18.thread:                                 ; preds = %if.end4
  %add = add i64 %total.0, 1024
  br label %do.cond

cleanup18:                                        ; preds = %if.end4
  %options = getelementptr inbounds %struct.lzma_filter, ptr %filters, i64 %i.0, i32 1
  %9 = load ptr, ptr %options, align 8
  %call9 = tail call i64 %8(ptr noundef %9) #4
  %cmp10.not.not = icmp eq i64 %call9, -1
  %add13 = select i1 %cmp10.not.not, i64 0, i64 %call9
  %total.1 = add i64 %add13, %total.0
  br i1 %cmp10.not.not, label %return, label %do.cond

do.cond:                                          ; preds = %cleanup18.thread, %cleanup18
  %total.345 = phi i64 [ %add, %cleanup18.thread ], [ %total.1, %cleanup18 ]
  %inc = add i64 %i.0, 1
  %arrayidx21 = getelementptr inbounds %struct.lzma_filter, ptr %filters, i64 %inc
  %10 = load i64, ptr %arrayidx21, align 8
  %cmp23.not = icmp eq i64 %10, -1
  br i1 %cmp23.not, label %do.end, label %do.body

do.end:                                           ; preds = %do.cond
  %add24 = add i64 %total.345, 32768
  br label %return

return:                                           ; preds = %for.end.i, %do.body.i, %do.body, %cleanup18, %do.end.i, %entry, %lor.lhs.false.i, %do.end
  %retval.6 = phi i64 [ %add24, %do.end ], [ -1, %lor.lhs.false.i ], [ -1, %entry ], [ -1, %do.end.i ], [ -1, %cleanup18 ], [ -1, %do.body ], [ -1, %do.body.i ], [ -1, %for.end.i ]
  ret i64 %retval.6
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!5 = !{i8 0, i8 2}
!6 = !{}
