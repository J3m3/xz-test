; ModuleID = 'xz/util.c'
source_filename = "xz/util.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"%s: Value is not a non-negative decimal integer\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"%s: Invalid multiplier suffix\00", align 1
@.str.7 = private unnamed_addr constant [65 x i8] c"Valid suffixes are `KiB' (2^10), `MiB' (2^20), and `GiB' (2^30).\00", align 1
@.str.8 = private unnamed_addr constant [57 x i8] c"Value of the option `%s' must be in the range [%lu, %lu]\00", align 1
@bufs = internal global [4 x [128 x i8]] zeroinitializer, align 16
@.str.9 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"%.1f\00", align 1
@uint64_to_nicestr.suffix = internal constant [5 x [4 x i8]] [[4 x i8] c"B\00\00\00", [4 x i8] c"KiB\00", [4 x i8] c"MiB\00", [4 x i8] c"GiB\00", [4 x i8] c"TiB\00"], align 16
@.str.12 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c" (%lu B)\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"Empty filename, skipping\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %ptr, i64 noundef %size) local_unnamed_addr #0 {
entry:
  %call = tail call ptr @realloc(ptr noundef %ptr, i64 noundef %size) #15
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call ptr @__errno_location() #16
  %0 = load i32, ptr %call1, align 4
  tail call void @free(ptr noundef %ptr) #17
  %call2 = tail call ptr @strerror(i32 noundef %0) #17
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str, ptr noundef %call2) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret ptr %call
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

declare void @message_fatal(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @xstrdup(ptr nocapture noundef readonly %src) local_unnamed_addr #0 {
entry:
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %src) #18
  %add = add i64 %call, 1
  %malloc = tail call ptr @malloc(i64 %add)
  %cmp.i = icmp eq ptr %malloc, null
  br i1 %cmp.i, label %if.then.i, label %xrealloc.exit

if.then.i:                                        ; preds = %entry
  %call1.i = tail call ptr @__errno_location() #16
  %0 = load i32, ptr %call1.i, align 4
  %call2.i = tail call ptr @strerror(i32 noundef %0) #17
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str, ptr noundef %call2.i) #17
  br label %xrealloc.exit

xrealloc.exit:                                    ; preds = %entry, %if.then.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %malloc, ptr align 1 %src, i64 %add, i1 false)
  ret ptr %malloc
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define dso_local i64 @str_to_uint64(ptr noundef %name, ptr noundef %value, i64 noundef %min, i64 noundef %max) local_unnamed_addr #0 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %value.addr.0 = phi ptr [ %value, %entry ], [ %incdec.ptr, %while.body ]
  %0 = load i8, ptr %value.addr.0, align 1
  switch i8 %0, label %while.end [
    i8 32, label %while.body
    i8 9, label %while.body
  ]

while.body:                                       ; preds = %while.cond, %while.cond
  %incdec.ptr = getelementptr inbounds i8, ptr %value.addr.0, i64 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %value.addr.0, ptr noundef nonnull dereferenceable(4) @.str.1) #18
  %cmp5 = icmp eq i32 %call, 0
  br i1 %cmp5, label %cleanup104, label %if.end

if.end:                                           ; preds = %while.end
  %1 = add i8 %0, -58
  %or.cond = icmp ult i8 %1, -10
  br i1 %or.cond, label %if.then13, label %do.body.preheader

if.then13:                                        ; preds = %if.end
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str.2, ptr noundef nonnull %value.addr.0) #17
  br label %do.body.preheader

do.body.preheader:                                ; preds = %if.end, %if.then13
  br label %do.body

do.body:                                          ; preds = %do.body.preheader, %do.cond
  %value.addr.1 = phi ptr [ %incdec.ptr28, %do.cond ], [ %value.addr.0, %do.body.preheader ]
  %result.0 = phi i64 [ %add27, %do.cond ], [ 0, %do.body.preheader ]
  %cmp15 = icmp ugt i64 %result.0, 1844674407370955161
  br i1 %cmp15, label %error, label %if.end18

if.end18:                                         ; preds = %do.body
  %mul = mul nuw i64 %result.0, 10
  %2 = load i8, ptr %value.addr.1, align 1
  %conv19 = sext i8 %2 to i64
  %sub = add nsw i64 %conv19, 4294967248
  %conv20 = and i64 %sub, 4294967295
  %sub21 = xor i64 %conv20, -1
  %cmp22 = icmp ugt i64 %mul, %sub21
  br i1 %cmp22, label %error, label %do.cond

do.cond:                                          ; preds = %if.end18
  %incdec.ptr28 = getelementptr inbounds i8, ptr %value.addr.1, i64 1
  %add27 = add i64 %conv20, %mul
  %3 = load i8, ptr %incdec.ptr28, align 1
  %4 = add i8 %3, -48
  %or.cond144 = icmp ult i8 %4, 10
  br i1 %or.cond144, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  switch i8 %3, label %if.end66.fold.split [
    i8 0, label %if.end96
    i8 107, label %if.end66
    i8 75, label %if.end66
    i8 109, label %if.then54
    i8 77, label %if.then54
    i8 103, label %if.then63
    i8 71, label %if.then63
  ]

if.then54:                                        ; preds = %do.end, %do.end
  br label %if.end66

if.then63:                                        ; preds = %do.end, %do.end
  br label %if.end66

if.end66.fold.split:                              ; preds = %do.end
  br label %if.end66

if.end66:                                         ; preds = %do.end, %do.end, %if.end66.fold.split, %if.then54, %if.then63
  %cmp84 = phi i1 [ false, %if.then54 ], [ false, %if.then63 ], [ false, %do.end ], [ false, %do.end ], [ true, %if.end66.fold.split ]
  %multiplier.0 = phi i64 [ 1048576, %if.then54 ], [ 1073741824, %if.then63 ], [ 1024, %do.end ], [ 1024, %do.end ], [ 0, %if.end66.fold.split ]
  %incdec.ptr67 = getelementptr inbounds i8, ptr %value.addr.1, i64 2
  %5 = load i8, ptr %incdec.ptr67, align 1
  switch i8 %5, label %if.then86 [
    i8 0, label %if.end83
    i8 105, label %land.lhs.true.tail
    i8 66, label %land.lhs.true78.tail
  ]

land.lhs.true.tail:                               ; preds = %if.end66
  %6 = getelementptr inbounds i8, ptr %value.addr.1, i64 3
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %if.end83, label %sub_1152

sub_1152:                                         ; preds = %land.lhs.true.tail
  %9 = getelementptr inbounds i8, ptr %value.addr.1, i64 3
  %10 = load i8, ptr %9, align 1
  %.not160 = icmp eq i8 %10, 66
  br i1 %.not160, label %land.lhs.true74.tail, label %if.then86

land.lhs.true74.tail:                             ; preds = %sub_1152
  %11 = getelementptr inbounds i8, ptr %value.addr.1, i64 4
  %12 = load i8, ptr %11, align 1
  %13 = icmp ne i8 %12, 0
  %brmerge = or i1 %13, %cmp84
  br i1 %brmerge, label %if.then86, label %if.end87

land.lhs.true78.tail:                             ; preds = %if.end66
  %14 = getelementptr inbounds i8, ptr %value.addr.1, i64 3
  %15 = load i8, ptr %14, align 1
  %16 = icmp ne i8 %15, 0
  %or.cond150 = or i1 %cmp84, %16
  br i1 %or.cond150, label %if.then86, label %if.end87

if.end83:                                         ; preds = %if.end66, %land.lhs.true.tail
  br i1 %cmp84, label %if.then86, label %if.end87

if.then86:                                        ; preds = %land.lhs.true74.tail, %if.end66, %sub_1152, %land.lhs.true78.tail, %if.end83
  tail call void (i32, ptr, ...) @message(i32 noundef 1, ptr noundef nonnull @.str.6, ptr noundef nonnull %incdec.ptr28) #17
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str.7) #17
  br label %if.end87

if.end87:                                         ; preds = %land.lhs.true74.tail, %land.lhs.true78.tail, %if.then86, %if.end83
  %multiplier.1148 = phi i64 [ 0, %if.then86 ], [ %multiplier.0, %if.end83 ], [ %multiplier.0, %land.lhs.true78.tail ], [ %multiplier.0, %land.lhs.true74.tail ]
  %mul143 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %multiplier.1148, i64 %add27)
  %mul.ov = extractvalue { i64, i1 } %mul143, 1
  %mul92 = mul i64 %multiplier.1148, %add27
  br i1 %mul.ov, label %error, label %if.end96

if.end96:                                         ; preds = %if.end87, %do.end
  %result.3 = phi i64 [ %mul92, %if.end87 ], [ %add27, %do.end ]
  %cmp97 = icmp ult i64 %result.3, %min
  %cmp100 = icmp ugt i64 %result.3, %max
  %or.cond145 = or i1 %cmp97, %cmp100
  br i1 %or.cond145, label %error, label %cleanup104

error:                                            ; preds = %if.end18, %do.body, %if.end87, %if.end96
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str.8, ptr noundef %name, i64 noundef %min, i64 noundef %max) #17
  br label %cleanup104

cleanup104:                                       ; preds = %if.end96, %while.end, %error
  %retval.0 = phi i64 [ 0, %error ], [ %max, %while.end ], [ %result.3, %if.end96 ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

declare void @message(i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 17592186044417) i64 @round_up_to_mib(i64 noundef %n) local_unnamed_addr #9 {
entry:
  %shr = lshr i64 %n, 20
  %and = and i64 %n, 1048575
  %cmp = icmp ne i64 %and, 0
  %conv1 = zext i1 %cmp to i64
  %add = add nuw nsw i64 %shr, %conv1
  ret i64 %add
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef nonnull ptr @uint64_to_str(i64 noundef %value, i32 noundef %slot) local_unnamed_addr #10 {
entry:
  %idxprom = zext i32 %slot to i64
  %arrayidx = getelementptr inbounds [4 x [128 x i8]], ptr @bufs, i64 0, i64 %idxprom
  %call = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %arrayidx, i64 noundef 128, ptr noundef nonnull @.str.9, i64 noundef %value) #17
  ret ptr %arrayidx
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @uint64_to_nicestr(i64 noundef %value, i32 noundef %unit_min, i32 noundef %unit_max, i1 noundef zeroext %always_also_bytes, i32 noundef %slot) local_unnamed_addr #10 {
entry:
  %pos = alloca ptr, align 8
  %left = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos) #17
  %idxprom = zext i32 %slot to i64
  %arrayidx = getelementptr inbounds [4 x [128 x i8]], ptr @bufs, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %pos, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %left) #17
  store i64 128, ptr %left, align 8
  %cmp = icmp eq i32 %unit_min, 0
  %cmp1 = icmp ult i64 %value, 10000
  %or.cond = and i1 %cmp1, %cmp
  %cmp2 = icmp eq i32 %unit_max, 0
  %or.cond22 = or i1 %or.cond, %cmp2
  br i1 %or.cond22, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %conv = trunc i64 %value to i32
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %pos, ptr noundef nonnull %left, ptr noundef nonnull @.str.10, i32 noundef %conv)
  br label %if.end

if.else:                                          ; preds = %entry
  %conv3 = uitofp i64 %value to double
  br label %do.body

do.body:                                          ; preds = %do.body.backedge, %if.else
  %unit.0 = phi i32 [ 0, %if.else ], [ %inc, %do.body.backedge ]
  %d.0 = phi double [ %conv3, %if.else ], [ %div, %do.body.backedge ]
  %div = fmul double %d.0, 0x3F50000000000000
  %inc = add nuw i32 %unit.0, 1
  %cmp4 = icmp ult i32 %inc, %unit_min
  br i1 %cmp4, label %do.body.backedge, label %lor.rhs

lor.rhs:                                          ; preds = %do.body
  %cmp6 = fcmp ogt double %div, 0x40C387F333333333
  %cmp8 = icmp ult i32 %inc, %unit_max
  %0 = and i1 %cmp8, %cmp6
  br i1 %0, label %do.body.backedge, label %do.end

do.body.backedge:                                 ; preds = %lor.rhs, %do.body
  br label %do.body

do.end:                                           ; preds = %lor.rhs
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %pos, ptr noundef nonnull %left, ptr noundef nonnull @.str.11, double noundef %div)
  %1 = zext i32 %inc to i64
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  %unit.1 = phi i64 [ 0, %if.then ], [ %1, %do.end ]
  %arrayidx11 = getelementptr inbounds [5 x [4 x i8]], ptr @uint64_to_nicestr.suffix, i64 0, i64 %unit.1
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %pos, ptr noundef nonnull %left, ptr noundef nonnull @.str.12, ptr noundef nonnull %arrayidx11)
  %cmp15 = icmp ugt i64 %value, 9999
  %or.cond23 = and i1 %cmp15, %always_also_bytes
  br i1 %or.cond23, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end
  %2 = load ptr, ptr %pos, align 8
  %3 = load i64, ptr %left, align 8
  %call = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %2, i64 noundef %3, ptr noundef nonnull @.str.13, i64 noundef %value) #17
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %left) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos) #17
  ret ptr %arrayidx
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @my_snprintf(ptr nocapture noundef %pos, ptr nocapture noundef %left, ptr nocapture noundef readonly %fmt, ...) local_unnamed_addr #10 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ap) #17
  call void @llvm.va_start.p0(ptr nonnull %ap)
  %0 = load ptr, ptr %pos, align 8
  %1 = load i64, ptr %left, align 8
  %call = call i32 @vsnprintf(ptr noundef %0, i64 noundef %1, ptr noundef %fmt, ptr noundef nonnull %ap) #17
  call void @llvm.va_end.p0(ptr nonnull %ap)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %conv = zext nneg i32 %call to i64
  %2 = load i64, ptr %left, align 8
  %cmp3.not = icmp ugt i64 %2, %conv
  br i1 %cmp3.not, label %if.else, label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %3 = load ptr, ptr %pos, align 8
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %conv
  store ptr %add.ptr, ptr %pos, align 8
  %4 = load i64, ptr %left, align 8
  %sub = sub i64 %4, %conv
  br label %if.end

if.end:                                           ; preds = %entry, %lor.lhs.false, %if.else
  %storemerge = phi i64 [ %sub, %if.else ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  store i64 %storemerge, ptr %left, align 8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ap) #17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #12

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr nocapture noundef, i64 noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #12

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @is_empty_filename(ptr nocapture noundef readonly %filename) local_unnamed_addr #0 {
entry:
  %0 = load i8, ptr %filename, align 1
  %cmp = icmp eq i8 %0, 0
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %entry
  tail call void (ptr, ...) @message_error(ptr noundef nonnull @.str.14) #17
  br label %return

return:                                           ; preds = %entry, %if.then
  ret i1 %cmp
}

declare void @message_error(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @is_tty_stdin() local_unnamed_addr #9 {
entry:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @is_tty_stdout() local_unnamed_addr #9 {
entry:
  ret i1 false
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #13

; Function Attrs: nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" }
attributes #15 = { nounwind allocsize(1) }
attributes #16 = { nounwind willreturn memory(none) }
attributes #17 = { nounwind }
attributes #18 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
