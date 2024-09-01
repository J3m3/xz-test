; ModuleID = 'xz/util.c'
source_filename = "xz/util.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [4 x i8] c"max\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [48 x i8] c"%s: Value is not a non-negative decimal integer\00", align 1, !dbg !12
@.str.6 = private unnamed_addr constant [30 x i8] c"%s: Invalid multiplier suffix\00", align 1, !dbg !17
@.str.7 = private unnamed_addr constant [65 x i8] c"Valid suffixes are `KiB' (2^10), `MiB' (2^20), and `GiB' (2^30).\00", align 1, !dbg !22
@.str.8 = private unnamed_addr constant [57 x i8] c"Value of the option `%s' must be in the range [%lu, %lu]\00", align 1, !dbg !27
@bufs = internal global [4 x [128 x i8]] zeroinitializer, align 16, !dbg !32
@.str.9 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1, !dbg !74
@.str.10 = private unnamed_addr constant [3 x i8] c"%u\00", align 1, !dbg !76
@.str.11 = private unnamed_addr constant [5 x i8] c"%.1f\00", align 1, !dbg !78
@uint64_to_nicestr.suffix = internal constant [5 x [4 x i8]] [[4 x i8] c"B\00\00\00", [4 x i8] c"KiB\00", [4 x i8] c"MiB\00", [4 x i8] c"GiB\00", [4 x i8] c"TiB\00"], align 16, !dbg !83
@.str.12 = private unnamed_addr constant [4 x i8] c" %s\00", align 1, !dbg !112
@.str.13 = private unnamed_addr constant [9 x i8] c" (%lu B)\00", align 1, !dbg !114
@.str.14 = private unnamed_addr constant [25 x i8] c"Empty filename, skipping\00", align 1, !dbg !119

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %ptr, i64 noundef %size) local_unnamed_addr #0 !dbg !137 {
entry:
    #dbg_value(ptr %ptr, !141, !DIExpression(), !149)
    #dbg_value(i64 %size, !142, !DIExpression(), !149)
    #dbg_value(ptr %ptr, !143, !DIExpression(), !149)
  %call = tail call ptr @realloc(ptr noundef %ptr, i64 noundef %size) #15, !dbg !150
    #dbg_value(ptr %call, !141, !DIExpression(), !149)
  %cmp = icmp eq ptr %call, null, !dbg !151
  br i1 %cmp, label %if.then, label %if.end, !dbg !152

if.then:                                          ; preds = %entry
  %call1 = tail call ptr @__errno_location() #16, !dbg !153
  %0 = load i32, ptr %call1, align 4, !dbg !153
    #dbg_value(i32 %0, !144, !DIExpression(), !154)
  tail call void @free(ptr noundef %ptr) #17, !dbg !155
  %call2 = tail call ptr @strerror(i32 noundef %0) #17, !dbg !156
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str, ptr noundef %call2) #17, !dbg !157
  br label %if.end, !dbg !158

if.end:                                           ; preds = %if.then, %entry
  ret ptr %call, !dbg !159
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !160 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !162 ptr @__errno_location() local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !167 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

declare !dbg !170 void @message_fatal(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !173 ptr @strerror(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @xstrdup(ptr nocapture noundef readonly %src) local_unnamed_addr #0 !dbg !177 {
entry:
    #dbg_value(ptr %src, !181, !DIExpression(), !185)
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %src) #18, !dbg !186
  %add = add i64 %call, 1, !dbg !187
    #dbg_value(i64 %add, !182, !DIExpression(), !185)
    #dbg_value(ptr null, !141, !DIExpression(), !188)
    #dbg_value(i64 %add, !142, !DIExpression(), !188)
    #dbg_value(ptr null, !143, !DIExpression(), !188)
  %malloc = tail call ptr @malloc(i64 %add), !dbg !190
    #dbg_value(ptr %malloc, !141, !DIExpression(), !188)
  %cmp.i = icmp eq ptr %malloc, null, !dbg !191
  br i1 %cmp.i, label %if.then.i, label %xrealloc.exit, !dbg !192

if.then.i:                                        ; preds = %entry
  %call1.i = tail call ptr @__errno_location() #16, !dbg !193
  %0 = load i32, ptr %call1.i, align 4, !dbg !193
    #dbg_value(i32 %0, !144, !DIExpression(), !194)
  %call2.i = tail call ptr @strerror(i32 noundef %0) #17, !dbg !195
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str, ptr noundef %call2.i) #17, !dbg !196
  br label %xrealloc.exit, !dbg !197

xrealloc.exit:                                    ; preds = %entry, %if.then.i
    #dbg_value(ptr %malloc, !184, !DIExpression(), !185)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %malloc, ptr align 1 %src, i64 %add, i1 false), !dbg !198
  ret ptr %malloc, !dbg !199
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !200 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define dso_local i64 @str_to_uint64(ptr noundef %name, ptr noundef %value, i64 noundef %min, i64 noundef %max) local_unnamed_addr #0 !dbg !203 {
entry:
    #dbg_value(ptr %name, !207, !DIExpression(), !219)
    #dbg_value(ptr %value, !208, !DIExpression(), !219)
    #dbg_value(i64 %min, !209, !DIExpression(), !219)
    #dbg_value(i64 %max, !210, !DIExpression(), !219)
    #dbg_value(i64 0, !211, !DIExpression(), !219)
  br label %while.cond, !dbg !220

while.cond:                                       ; preds = %while.body, %entry
  %value.addr.0 = phi ptr [ %value, %entry ], [ %incdec.ptr, %while.body ]
    #dbg_value(ptr %value.addr.0, !208, !DIExpression(), !219)
  %0 = load i8, ptr %value.addr.0, align 1, !dbg !221
  switch i8 %0, label %while.end [
    i8 32, label %while.body
    i8 9, label %while.body
  ], !dbg !222

while.body:                                       ; preds = %while.cond, %while.cond
  %incdec.ptr = getelementptr inbounds i8, ptr %value.addr.0, i64 1, !dbg !223
    #dbg_value(ptr %incdec.ptr, !208, !DIExpression(), !219)
  br label %while.cond, !dbg !220, !llvm.loop !224

while.end:                                        ; preds = %while.cond
  %call = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %value.addr.0, ptr noundef nonnull dereferenceable(4) @.str.1) #18, !dbg !226
  %cmp5 = icmp eq i32 %call, 0, !dbg !228
  br i1 %cmp5, label %cleanup104, label %if.end, !dbg !229

if.end:                                           ; preds = %while.end
  %1 = add i8 %0, -58, !dbg !230
  %or.cond = icmp ult i8 %1, -10, !dbg !230
  br i1 %or.cond, label %if.then13, label %do.body.preheader, !dbg !230

if.then13:                                        ; preds = %if.end
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str.2, ptr noundef nonnull %value.addr.0) #17, !dbg !232
  br label %do.body.preheader, !dbg !232

do.body.preheader:                                ; preds = %if.end, %if.then13
  br label %do.body, !dbg !233

do.body:                                          ; preds = %do.body.preheader, %do.cond
  %value.addr.1 = phi ptr [ %incdec.ptr28, %do.cond ], [ %value.addr.0, %do.body.preheader ]
  %result.0 = phi i64 [ %add27, %do.cond ], [ 0, %do.body.preheader ], !dbg !219
    #dbg_value(i64 %result.0, !211, !DIExpression(), !219)
    #dbg_value(ptr %value.addr.1, !208, !DIExpression(), !219)
  %cmp15 = icmp ugt i64 %result.0, 1844674407370955161, !dbg !234
  br i1 %cmp15, label %error, label %if.end18, !dbg !236

if.end18:                                         ; preds = %do.body
  %mul = mul nuw i64 %result.0, 10, !dbg !237
    #dbg_value(i64 %mul, !211, !DIExpression(), !219)
  %2 = load i8, ptr %value.addr.1, align 1, !dbg !238
  %conv19 = sext i8 %2 to i64, !dbg !238
  %sub = add nsw i64 %conv19, 4294967248, !dbg !239
  %conv20 = and i64 %sub, 4294967295, !dbg !240
    #dbg_value(i64 %sub, !212, !DIExpression(), !242)
  %sub21 = xor i64 %conv20, -1, !dbg !243
  %cmp22 = icmp ugt i64 %mul, %sub21, !dbg !244
    #dbg_value(i64 undef, !211, !DIExpression(), !219)
    #dbg_value(ptr undef, !208, !DIExpression(), !219)
  br i1 %cmp22, label %error, label %do.cond

do.cond:                                          ; preds = %if.end18
  %incdec.ptr28 = getelementptr inbounds i8, ptr %value.addr.1, i64 1, !dbg !245
  %add27 = add i64 %conv20, %mul, !dbg !245
  %3 = load i8, ptr %incdec.ptr28, align 1, !dbg !246
  %4 = add i8 %3, -48, !dbg !247
  %or.cond144 = icmp ult i8 %4, 10, !dbg !247
  br i1 %or.cond144, label %do.body, label %do.end, !dbg !247, !llvm.loop !248

do.end:                                           ; preds = %do.cond
  switch i8 %3, label %if.end66.fold.split [
    i8 0, label %if.end96
    i8 107, label %if.end66
    i8 75, label %if.end66
    i8 109, label %if.then54
    i8 77, label %if.then54
    i8 103, label %if.then63
    i8 71, label %if.then63
  ], !dbg !250

if.then54:                                        ; preds = %do.end, %do.end
    #dbg_value(i64 1048576, !215, !DIExpression(), !251)
  br label %if.end66, !dbg !252

if.then63:                                        ; preds = %do.end, %do.end
    #dbg_value(i64 1073741824, !215, !DIExpression(), !251)
  br label %if.end66, !dbg !255

if.end66.fold.split:                              ; preds = %do.end
  br label %if.end66, !dbg !257

if.end66:                                         ; preds = %do.end, %do.end, %if.end66.fold.split, %if.then54, %if.then63
  %cmp84 = phi i1 [ false, %if.then54 ], [ false, %if.then63 ], [ false, %do.end ], [ false, %do.end ], [ true, %if.end66.fold.split ], !dbg !251
  %multiplier.0 = phi i64 [ 1048576, %if.then54 ], [ 1073741824, %if.then63 ], [ 1024, %do.end ], [ 1024, %do.end ], [ 0, %if.end66.fold.split ], !dbg !251
    #dbg_value(i64 %multiplier.0, !215, !DIExpression(), !251)
  %incdec.ptr67 = getelementptr inbounds i8, ptr %value.addr.1, i64 2, !dbg !257
    #dbg_value(ptr %incdec.ptr67, !208, !DIExpression(), !219)
  %5 = load i8, ptr %incdec.ptr67, align 1, !dbg !258
  switch i8 %5, label %if.then86 [
    i8 0, label %if.end83
    i8 105, label %land.lhs.true.tail
    i8 66, label %land.lhs.true78.tail
  ], !dbg !260

land.lhs.true.tail:                               ; preds = %if.end66
  %6 = getelementptr inbounds i8, ptr %value.addr.1, i64 3
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %7, 0, !dbg !261
  br i1 %8, label %if.end83, label %sub_1152, !dbg !262

sub_1152:                                         ; preds = %land.lhs.true.tail
  %9 = getelementptr inbounds i8, ptr %value.addr.1, i64 3
  %10 = load i8, ptr %9, align 1
  %.not160 = icmp eq i8 %10, 66
  br i1 %.not160, label %land.lhs.true74.tail, label %if.then86

land.lhs.true74.tail:                             ; preds = %sub_1152
  %11 = getelementptr inbounds i8, ptr %value.addr.1, i64 4
  %12 = load i8, ptr %11, align 1
  %13 = icmp ne i8 %12, 0, !dbg !263
  %brmerge = or i1 %13, %cmp84, !dbg !264
  br i1 %brmerge, label %if.then86, label %if.end87, !dbg !264

land.lhs.true78.tail:                             ; preds = %if.end66
  %14 = getelementptr inbounds i8, ptr %value.addr.1, i64 3
  %15 = load i8, ptr %14, align 1
  %16 = icmp ne i8 %15, 0, !dbg !265
    #dbg_value(i64 %multiplier.0, !215, !DIExpression(), !251)
  %or.cond150 = or i1 %cmp84, %16, !dbg !266
  br i1 %or.cond150, label %if.then86, label %if.end87, !dbg !266

if.end83:                                         ; preds = %if.end66, %land.lhs.true.tail
    #dbg_value(i64 %multiplier.0, !215, !DIExpression(), !251)
  br i1 %cmp84, label %if.then86, label %if.end87, !dbg !267

if.then86:                                        ; preds = %land.lhs.true74.tail, %if.end66, %sub_1152, %land.lhs.true78.tail, %if.end83
  tail call void (i32, ptr, ...) @message(i32 noundef 1, ptr noundef nonnull @.str.6, ptr noundef nonnull %incdec.ptr28) #17, !dbg !268
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str.7) #17, !dbg !271
  br label %if.end87, !dbg !272

if.end87:                                         ; preds = %land.lhs.true74.tail, %land.lhs.true78.tail, %if.then86, %if.end83
  %multiplier.1148 = phi i64 [ 0, %if.then86 ], [ %multiplier.0, %if.end83 ], [ %multiplier.0, %land.lhs.true78.tail ], [ %multiplier.0, %land.lhs.true74.tail ]
  %mul143 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %multiplier.1148, i64 %add27), !dbg !273
  %mul.ov = extractvalue { i64, i1 } %mul143, 1, !dbg !273
  %mul92 = mul i64 %multiplier.1148, %add27, !dbg !275
    #dbg_value(i64 undef, !211, !DIExpression(), !219)
  br i1 %mul.ov, label %error, label %if.end96

if.end96:                                         ; preds = %if.end87, %do.end
  %result.3 = phi i64 [ %mul92, %if.end87 ], [ %add27, %do.end ], !dbg !237
    #dbg_value(i64 %result.3, !211, !DIExpression(), !219)
  %cmp97 = icmp ult i64 %result.3, %min, !dbg !276
  %cmp100 = icmp ugt i64 %result.3, %max
  %or.cond145 = or i1 %cmp97, %cmp100, !dbg !278
  br i1 %or.cond145, label %error, label %cleanup104, !dbg !278

error:                                            ; preds = %if.end18, %do.body, %if.end87, %if.end96
    #dbg_label(!218, !279)
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str.8, ptr noundef %name, i64 noundef %min, i64 noundef %max) #17, !dbg !280
  br label %cleanup104, !dbg !281

cleanup104:                                       ; preds = %if.end96, %while.end, %error
  %retval.0 = phi i64 [ 0, %error ], [ %max, %while.end ], [ %result.3, %if.end96 ]
  ret i64 %retval.0, !dbg !282
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !283 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

declare !dbg !286 void @message(i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 17592186044417) i64 @round_up_to_mib(i64 noundef %n) local_unnamed_addr #9 !dbg !289 {
entry:
    #dbg_value(i64 %n, !293, !DIExpression(), !294)
  %shr = lshr i64 %n, 20, !dbg !295
  %and = and i64 %n, 1048575, !dbg !296
  %cmp = icmp ne i64 %and, 0, !dbg !297
  %conv1 = zext i1 %cmp to i64, !dbg !298
  %add = add nuw nsw i64 %shr, %conv1, !dbg !299
  ret i64 %add, !dbg !300
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef nonnull ptr @uint64_to_str(i64 noundef %value, i32 noundef %slot) local_unnamed_addr #10 !dbg !301 {
entry:
    #dbg_value(i64 %value, !305, !DIExpression(), !307)
    #dbg_value(i32 %slot, !306, !DIExpression(), !307)
  %idxprom = zext i32 %slot to i64, !dbg !308
  %arrayidx = getelementptr inbounds [4 x [128 x i8]], ptr @bufs, i64 0, i64 %idxprom, !dbg !308
  %call = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %arrayidx, i64 noundef 128, ptr noundef nonnull @.str.9, i64 noundef %value) #17, !dbg !309
  ret ptr %arrayidx, !dbg !310
}

; Function Attrs: nofree nounwind
declare !dbg !311 noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @uint64_to_nicestr(i64 noundef %value, i32 noundef %unit_min, i32 noundef %unit_max, i1 noundef zeroext %always_also_bytes, i32 noundef %slot) local_unnamed_addr #10 !dbg !85 {
entry:
  %pos = alloca ptr, align 8, !DIAssignID !317
    #dbg_assign(i1 undef, !104, !DIExpression(), !317, ptr %pos, !DIExpression(), !318)
  %left = alloca i64, align 8, !DIAssignID !319
    #dbg_assign(i1 undef, !106, !DIExpression(), !319, ptr %left, !DIExpression(), !318)
    #dbg_value(i64 %value, !98, !DIExpression(), !318)
    #dbg_value(i32 %unit_min, !99, !DIExpression(), !318)
    #dbg_value(i32 %unit_max, !100, !DIExpression(), !318)
    #dbg_value(i1 %always_also_bytes, !101, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !318)
    #dbg_value(i32 %slot, !102, !DIExpression(), !318)
    #dbg_value(i32 0, !103, !DIExpression(), !318)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos) #17, !dbg !320
  %idxprom = zext i32 %slot to i64, !dbg !321
  %arrayidx = getelementptr inbounds [4 x [128 x i8]], ptr @bufs, i64 0, i64 %idxprom, !dbg !321
  store ptr %arrayidx, ptr %pos, align 8, !dbg !322, !DIAssignID !323
    #dbg_assign(ptr %arrayidx, !104, !DIExpression(), !323, ptr %pos, !DIExpression(), !318)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %left) #17, !dbg !324
  store i64 128, ptr %left, align 8, !dbg !325, !DIAssignID !326
    #dbg_assign(i64 128, !106, !DIExpression(), !326, ptr %left, !DIExpression(), !318)
  %cmp = icmp eq i32 %unit_min, 0, !dbg !327
  %cmp1 = icmp ult i64 %value, 10000
  %or.cond = and i1 %cmp1, %cmp, !dbg !328
  %cmp2 = icmp eq i32 %unit_max, 0
  %or.cond22 = or i1 %or.cond, %cmp2, !dbg !328
  br i1 %or.cond22, label %if.then, label %if.else, !dbg !328

if.then:                                          ; preds = %entry
  %conv = trunc i64 %value to i32, !dbg !329
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %pos, ptr noundef nonnull %left, ptr noundef nonnull @.str.10, i32 noundef %conv), !dbg !331
  br label %if.end, !dbg !332

if.else:                                          ; preds = %entry
  %conv3 = uitofp i64 %value to double, !dbg !333
    #dbg_value(double %conv3, !107, !DIExpression(), !334)
  br label %do.body, !dbg !335

do.body:                                          ; preds = %do.body.backedge, %if.else
  %unit.0 = phi i32 [ 0, %if.else ], [ %inc, %do.body.backedge ], !dbg !318
  %d.0 = phi double [ %conv3, %if.else ], [ %div, %do.body.backedge ], !dbg !334
    #dbg_value(double %d.0, !107, !DIExpression(), !334)
    #dbg_value(i32 %unit.0, !103, !DIExpression(), !318)
  %div = fmul double %d.0, 0x3F50000000000000, !dbg !336
    #dbg_value(double %div, !107, !DIExpression(), !334)
  %inc = add nuw i32 %unit.0, 1, !dbg !338
    #dbg_value(i32 %inc, !103, !DIExpression(), !318)
  %cmp4 = icmp ult i32 %inc, %unit_min, !dbg !339
  br i1 %cmp4, label %do.body.backedge, label %lor.rhs, !dbg !340

lor.rhs:                                          ; preds = %do.body
  %cmp6 = fcmp ogt double %div, 0x40C387F333333333, !dbg !341
  %cmp8 = icmp ult i32 %inc, %unit_max, !dbg !342
  %0 = and i1 %cmp8, %cmp6, !dbg !342
  br i1 %0, label %do.body.backedge, label %do.end, !dbg !343

do.body.backedge:                                 ; preds = %lor.rhs, %do.body
  br label %do.body, !dbg !336, !llvm.loop !344

do.end:                                           ; preds = %lor.rhs
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %pos, ptr noundef nonnull %left, ptr noundef nonnull @.str.11, double noundef %div), !dbg !346
  %1 = zext i32 %inc to i64, !dbg !347
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  %unit.1 = phi i64 [ 0, %if.then ], [ %1, %do.end ], !dbg !318
    #dbg_value(i64 %unit.1, !103, !DIExpression(), !318)
  %arrayidx11 = getelementptr inbounds [5 x [4 x i8]], ptr @uint64_to_nicestr.suffix, i64 0, i64 %unit.1, !dbg !347
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %pos, ptr noundef nonnull %left, ptr noundef nonnull @.str.12, ptr noundef nonnull %arrayidx11), !dbg !348
  %cmp15 = icmp ugt i64 %value, 9999
  %or.cond23 = and i1 %cmp15, %always_also_bytes, !dbg !349
  br i1 %or.cond23, label %if.then17, label %if.end18, !dbg !349

if.then17:                                        ; preds = %if.end
  %2 = load ptr, ptr %pos, align 8, !dbg !351
  %3 = load i64, ptr %left, align 8, !dbg !353
  %call = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %2, i64 noundef %3, ptr noundef nonnull @.str.13, i64 noundef %value) #17, !dbg !354
  br label %if.end18, !dbg !355

if.end18:                                         ; preds = %if.then17, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %left) #17, !dbg !356
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos) #17, !dbg !356
  ret ptr %arrayidx, !dbg !357
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @my_snprintf(ptr nocapture noundef %pos, ptr nocapture noundef %left, ptr nocapture noundef readonly %fmt, ...) local_unnamed_addr #10 !dbg !358 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !381
    #dbg_assign(i1 undef, !367, !DIExpression(), !381, ptr %ap, !DIExpression(), !382)
    #dbg_value(ptr %pos, !364, !DIExpression(), !382)
    #dbg_value(ptr %left, !365, !DIExpression(), !382)
    #dbg_value(ptr %fmt, !366, !DIExpression(), !382)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ap) #17, !dbg !383
  call void @llvm.va_start.p0(ptr nonnull %ap), !dbg !384
  %0 = load ptr, ptr %pos, align 8, !dbg !385
  %1 = load i64, ptr %left, align 8, !dbg !386
  %call = call i32 @vsnprintf(ptr noundef %0, i64 noundef %1, ptr noundef %fmt, ptr noundef nonnull %ap) #17, !dbg !387
    #dbg_value(i32 %call, !380, !DIExpression(), !382)
  call void @llvm.va_end.p0(ptr nonnull %ap), !dbg !388
  %cmp = icmp slt i32 %call, 0, !dbg !389
  br i1 %cmp, label %if.end, label %lor.lhs.false, !dbg !391

lor.lhs.false:                                    ; preds = %entry
  %conv = zext nneg i32 %call to i64, !dbg !392
  %2 = load i64, ptr %left, align 8, !dbg !393
  %cmp3.not = icmp ugt i64 %2, %conv, !dbg !394
  br i1 %cmp3.not, label %if.else, label %if.end, !dbg !395

if.else:                                          ; preds = %lor.lhs.false
  %3 = load ptr, ptr %pos, align 8, !dbg !396
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %conv, !dbg !396
  store ptr %add.ptr, ptr %pos, align 8, !dbg !396
  %4 = load i64, ptr %left, align 8, !dbg !398
  %sub = sub i64 %4, %conv, !dbg !398
  br label %if.end

if.end:                                           ; preds = %entry, %lor.lhs.false, %if.else
  %storemerge = phi i64 [ %sub, %if.else ], [ 0, %lor.lhs.false ], [ 0, %entry ], !dbg !399
  store i64 %storemerge, ptr %left, align 8, !dbg !399
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ap) #17, !dbg !400
  ret void, !dbg !400
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #12

; Function Attrs: nofree nounwind
declare !dbg !401 noundef i32 @vsnprintf(ptr nocapture noundef, i64 noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #12

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @is_empty_filename(ptr nocapture noundef readonly %filename) local_unnamed_addr #0 !dbg !405 {
entry:
    #dbg_value(ptr %filename, !409, !DIExpression(), !410)
  %0 = load i8, ptr %filename, align 1, !dbg !411
  %cmp = icmp eq i8 %0, 0, !dbg !413
  br i1 %cmp, label %if.then, label %return, !dbg !414

if.then:                                          ; preds = %entry
  tail call void (ptr, ...) @message_error(ptr noundef nonnull @.str.14) #17, !dbg !415
  br label %return, !dbg !417

return:                                           ; preds = %entry, %if.then
  ret i1 %cmp, !dbg !418
}

declare !dbg !419 void @message_error(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @is_tty_stdin() local_unnamed_addr #9 !dbg !420 {
entry:
  ret i1 false, !dbg !423
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @is_tty_stdout() local_unnamed_addr #9 !dbg !424 {
entry:
  ret i1 false, !dbg !425
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

!llvm.dbg.cu = !{!34}
!llvm.module.flags = !{!129, !130, !131, !132, !133, !134, !135}
!llvm.ident = !{!136}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 40, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "xz/util.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "ff8c3ae1214b737ca57c54c6781f3e36")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 3)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 67, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 4)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 71, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 48)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 113, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 30)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 115, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 520, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 65)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 132, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 456, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 57)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "bufs", scope: !34, file: !2, line: 18, type: !126, isLocal: true, isDefinition: true)
!34 = distinct !DICompileUnit(language: DW_LANG_C99, file: !2, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !35, retainedTypes: !58, globals: !64, splitDebugInlining: false, nameTableKind: None)
!35 = !{!36, !45, !53}
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "message_verbosity", file: !37, line: 14, baseType: !38, size: 32, elements: !39)
!37 = !DIFile(filename: "xz/message.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "46ce4fae4ea23be71658f9b2e1a5aef3")
!38 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!39 = !{!40, !41, !42, !43, !44}
!40 = !DIEnumerator(name: "V_SILENT", value: 0)
!41 = !DIEnumerator(name: "V_ERROR", value: 1)
!42 = !DIEnumerator(name: "V_WARNING", value: 2)
!43 = !DIEnumerator(name: "V_VERBOSE", value: 3)
!44 = !DIEnumerator(name: "V_DEBUG", value: 4)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "nicestr_unit", file: !46, line: 64, baseType: !38, size: 32, elements: !47)
!46 = !DIFile(filename: "xz/util.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "36136e1fc433f9fd7b2b728f8484a043")
!47 = !{!48, !49, !50, !51, !52}
!48 = !DIEnumerator(name: "NICESTR_B", value: 0)
!49 = !DIEnumerator(name: "NICESTR_KIB", value: 1)
!50 = !DIEnumerator(name: "NICESTR_MIB", value: 2)
!51 = !DIEnumerator(name: "NICESTR_GIB", value: 3)
!52 = !DIEnumerator(name: "NICESTR_TIB", value: 4)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 21, baseType: !38, size: 32, elements: !54)
!54 = !{!55, !56, !57}
!55 = !DIEnumerator(name: "UNKNOWN", value: 0)
!56 = !DIEnumerator(name: "WORKS", value: 1)
!57 = !DIEnumerator(name: "BROKEN", value: 2)
!58 = !{!59, !38, !60, !61}
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!60 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !62, line: 18, baseType: !63)
!62 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!63 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!64 = !{!0, !7, !12, !65, !70, !72, !17, !22, !27, !74, !76, !78, !83, !112, !114, !119, !32, !124}
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(scope: null, file: !2, line: 107, type: !67, isLocal: true, isDefinition: true)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 2)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(scope: null, file: !2, line: 108, type: !3, isLocal: true, isDefinition: true)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(scope: null, file: !2, line: 109, type: !67, isLocal: true, isDefinition: true)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(scope: null, file: !2, line: 181, type: !9, isLocal: true, isDefinition: true)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(scope: null, file: !2, line: 210, type: !3, isLocal: true, isDefinition: true)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(scope: null, file: !2, line: 226, type: !80, isLocal: true, isDefinition: true)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 5)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(name: "suffix", scope: !85, file: !2, line: 229, type: !110, isLocal: true, isDefinition: true)
!85 = distinct !DISubprogram(name: "uint64_to_nicestr", scope: !2, file: !2, line: 188, type: !86, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !97)
!86 = !DISubroutineType(types: !87)
!87 = !{!88, !90, !45, !45, !94, !95}
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !91, line: 27, baseType: !92)
!91 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !93, line: 45, baseType: !63)
!93 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!94 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !91, line: 26, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !93, line: 42, baseType: !38)
!97 = !{!98, !99, !100, !101, !102, !103, !104, !106, !107}
!98 = !DILocalVariable(name: "value", arg: 1, scope: !85, file: !2, line: 188, type: !90)
!99 = !DILocalVariable(name: "unit_min", arg: 2, scope: !85, file: !2, line: 188, type: !45)
!100 = !DILocalVariable(name: "unit_max", arg: 3, scope: !85, file: !2, line: 189, type: !45)
!101 = !DILocalVariable(name: "always_also_bytes", arg: 4, scope: !85, file: !2, line: 189, type: !94)
!102 = !DILocalVariable(name: "slot", arg: 5, scope: !85, file: !2, line: 190, type: !95)
!103 = !DILocalVariable(name: "unit", scope: !85, file: !2, line: 198, type: !45)
!104 = !DILocalVariable(name: "pos", scope: !85, file: !2, line: 199, type: !105)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!106 = !DILocalVariable(name: "left", scope: !85, file: !2, line: 200, type: !61)
!107 = !DILocalVariable(name: "d", scope: !108, file: !2, line: 215, type: !60)
!108 = distinct !DILexicalBlock(scope: !109, file: !2, line: 211, column: 9)
!109 = distinct !DILexicalBlock(scope: !85, file: !2, line: 202, column: 6)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 160, elements: !111)
!111 = !{!82, !11}
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(scope: null, file: !2, line: 230, type: !9, isLocal: true, isDefinition: true)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(scope: null, file: !2, line: 238, type: !116, isLocal: true, isDefinition: true)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: 9)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(scope: null, file: !2, line: 274, type: !121, isLocal: true, isDefinition: true)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !122)
!122 = !{!123}
!123 = !DISubrange(count: 25)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(name: "thousand", scope: !34, file: !2, line: 21, type: !53, isLocal: true, isDefinition: true)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 4096, elements: !127)
!127 = !{!11, !128}
!128 = !DISubrange(count: 128)
!129 = !{i32 7, !"Dwarf Version", i32 5}
!130 = !{i32 2, !"Debug Info Version", i32 3}
!131 = !{i32 1, !"wchar_size", i32 4}
!132 = !{i32 8, !"PIC Level", i32 2}
!133 = !{i32 7, !"PIE Level", i32 2}
!134 = !{i32 7, !"uwtable", i32 2}
!135 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!136 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!137 = distinct !DISubprogram(name: "xrealloc", scope: !2, file: !2, line: 25, type: !138, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !140)
!138 = !DISubroutineType(types: !139)
!139 = !{!59, !59, !61}
!140 = !{!141, !142, !143, !144}
!141 = !DILocalVariable(name: "ptr", arg: 1, scope: !137, file: !2, line: 25, type: !59)
!142 = !DILocalVariable(name: "size", arg: 2, scope: !137, file: !2, line: 25, type: !61)
!143 = !DILocalVariable(name: "p", scope: !137, file: !2, line: 34, type: !59)
!144 = !DILocalVariable(name: "saved_errno", scope: !145, file: !2, line: 38, type: !147)
!145 = distinct !DILexicalBlock(scope: !146, file: !2, line: 37, column: 19)
!146 = distinct !DILexicalBlock(scope: !137, file: !2, line: 37, column: 6)
!147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !148)
!148 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!149 = !DILocation(line: 0, scope: !137)
!150 = !DILocation(line: 35, column: 8, scope: !137)
!151 = !DILocation(line: 37, column: 10, scope: !146)
!152 = !DILocation(line: 37, column: 6, scope: !137)
!153 = !DILocation(line: 38, column: 27, scope: !145)
!154 = !DILocation(line: 0, scope: !145)
!155 = !DILocation(line: 39, column: 3, scope: !145)
!156 = !DILocation(line: 40, column: 23, scope: !145)
!157 = !DILocation(line: 40, column: 3, scope: !145)
!158 = !DILocation(line: 41, column: 2, scope: !145)
!159 = !DILocation(line: 43, column: 2, scope: !137)
!160 = !DISubprogram(name: "realloc", scope: !161, file: !161, line: 551, type: !138, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!161 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!162 = !DISubprogram(name: "__errno_location", scope: !163, file: !163, line: 37, type: !164, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!163 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!164 = !DISubroutineType(types: !165)
!165 = !{!166}
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!167 = !DISubprogram(name: "free", scope: !161, file: !161, line: 555, type: !168, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!168 = !DISubroutineType(types: !169)
!169 = !{null, !59}
!170 = !DISubprogram(name: "message_fatal", scope: !37, file: !37, line: 70, type: !171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!171 = !DISubroutineType(types: !172)
!172 = !{null, !88, null}
!173 = !DISubprogram(name: "strerror", scope: !174, file: !174, line: 419, type: !175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!174 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!175 = !DISubroutineType(types: !176)
!176 = !{!105, !148}
!177 = distinct !DISubprogram(name: "xstrdup", scope: !2, file: !2, line: 48, type: !178, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !180)
!178 = !DISubroutineType(types: !179)
!179 = !{!105, !88}
!180 = !{!181, !182, !184}
!181 = !DILocalVariable(name: "src", arg: 1, scope: !177, file: !2, line: 48, type: !88)
!182 = !DILocalVariable(name: "size", scope: !177, file: !2, line: 51, type: !183)
!183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!184 = !DILocalVariable(name: "dest", scope: !177, file: !2, line: 52, type: !105)
!185 = !DILocation(line: 0, scope: !177)
!186 = !DILocation(line: 51, column: 22, scope: !177)
!187 = !DILocation(line: 51, column: 34, scope: !177)
!188 = !DILocation(line: 0, scope: !137, inlinedAt: !189)
!189 = distinct !DILocation(line: 52, column: 15, scope: !177)
!190 = !DILocation(line: 35, column: 8, scope: !137, inlinedAt: !189)
!191 = !DILocation(line: 37, column: 10, scope: !146, inlinedAt: !189)
!192 = !DILocation(line: 37, column: 6, scope: !137, inlinedAt: !189)
!193 = !DILocation(line: 38, column: 27, scope: !145, inlinedAt: !189)
!194 = !DILocation(line: 0, scope: !145, inlinedAt: !189)
!195 = !DILocation(line: 40, column: 23, scope: !145, inlinedAt: !189)
!196 = !DILocation(line: 40, column: 3, scope: !145, inlinedAt: !189)
!197 = !DILocation(line: 41, column: 2, scope: !145, inlinedAt: !189)
!198 = !DILocation(line: 53, column: 9, scope: !177)
!199 = !DILocation(line: 53, column: 2, scope: !177)
!200 = !DISubprogram(name: "strlen", scope: !174, file: !174, line: 407, type: !201, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!201 = !DISubroutineType(types: !202)
!202 = !{!63, !88}
!203 = distinct !DISubprogram(name: "str_to_uint64", scope: !2, file: !2, line: 58, type: !204, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !206)
!204 = !DISubroutineType(types: !205)
!205 = !{!90, !88, !88, !90, !90}
!206 = !{!207, !208, !209, !210, !211, !212, !215, !218}
!207 = !DILocalVariable(name: "name", arg: 1, scope: !203, file: !2, line: 58, type: !88)
!208 = !DILocalVariable(name: "value", arg: 2, scope: !203, file: !2, line: 58, type: !88)
!209 = !DILocalVariable(name: "min", arg: 3, scope: !203, file: !2, line: 58, type: !90)
!210 = !DILocalVariable(name: "max", arg: 4, scope: !203, file: !2, line: 58, type: !90)
!211 = !DILocalVariable(name: "result", scope: !203, file: !2, line: 60, type: !90)
!212 = !DILocalVariable(name: "add", scope: !213, file: !2, line: 82, type: !214)
!213 = distinct !DILexicalBlock(scope: !203, file: !2, line: 74, column: 5)
!214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!215 = !DILocalVariable(name: "multiplier", scope: !216, file: !2, line: 96, type: !90)
!216 = distinct !DILexicalBlock(scope: !217, file: !2, line: 90, column: 22)
!217 = distinct !DILexicalBlock(scope: !203, file: !2, line: 90, column: 6)
!218 = !DILabel(scope: !203, name: "error", file: !2, line: 131)
!219 = !DILocation(line: 0, scope: !203)
!220 = !DILocation(line: 63, column: 2, scope: !203)
!221 = !DILocation(line: 63, column: 9, scope: !203)
!222 = !DILocation(line: 63, column: 23, scope: !203)
!223 = !DILocation(line: 64, column: 3, scope: !203)
!224 = distinct !{!224, !220, !225}
!225 = !DILocation(line: 64, column: 5, scope: !203)
!226 = !DILocation(line: 67, column: 6, scope: !227)
!227 = distinct !DILexicalBlock(scope: !203, file: !2, line: 67, column: 6)
!228 = !DILocation(line: 67, column: 27, scope: !227)
!229 = !DILocation(line: 67, column: 6, scope: !203)
!230 = !DILocation(line: 70, column: 19, scope: !231)
!231 = distinct !DILexicalBlock(scope: !203, file: !2, line: 70, column: 6)
!232 = !DILocation(line: 71, column: 3, scope: !231)
!233 = !DILocation(line: 74, column: 2, scope: !203)
!234 = !DILocation(line: 76, column: 14, scope: !235)
!235 = distinct !DILexicalBlock(scope: !213, file: !2, line: 76, column: 7)
!236 = !DILocation(line: 76, column: 7, scope: !213)
!237 = !DILocation(line: 79, column: 10, scope: !213)
!238 = !DILocation(line: 82, column: 24, scope: !213)
!239 = !DILocation(line: 82, column: 31, scope: !213)
!240 = !DILocation(line: 83, column: 20, scope: !241)
!241 = distinct !DILexicalBlock(scope: !213, file: !2, line: 83, column: 7)
!242 = !DILocation(line: 0, scope: !213)
!243 = !DILocation(line: 83, column: 18, scope: !241)
!244 = !DILocation(line: 83, column: 24, scope: !241)
!245 = !DILocation(line: 83, column: 7, scope: !213)
!246 = !DILocation(line: 88, column: 11, scope: !203)
!247 = !DILocation(line: 88, column: 25, scope: !203)
!248 = distinct !{!248, !233, !249}
!249 = !DILocation(line: 88, column: 41, scope: !203)
!250 = !DILocation(line: 90, column: 6, scope: !203)
!251 = !DILocation(line: 0, scope: !216)
!252 = !DILocation(line: 100, column: 4, scope: !253)
!253 = distinct !DILexicalBlock(scope: !254, file: !2, line: 99, column: 12)
!254 = distinct !DILexicalBlock(scope: !216, file: !2, line: 97, column: 7)
!255 = !DILocation(line: 102, column: 4, scope: !256)
!256 = distinct !DILexicalBlock(scope: !253, file: !2, line: 101, column: 12)
!257 = !DILocation(line: 104, column: 3, scope: !216)
!258 = !DILocation(line: 107, column: 7, scope: !259)
!259 = distinct !DILexicalBlock(scope: !216, file: !2, line: 107, column: 7)
!260 = !DILocation(line: 107, column: 22, scope: !259)
!261 = !DILocation(line: 107, column: 44, scope: !259)
!262 = !DILocation(line: 108, column: 5, scope: !259)
!263 = !DILocation(line: 108, column: 28, scope: !259)
!264 = !DILocation(line: 109, column: 5, scope: !259)
!265 = !DILocation(line: 109, column: 27, scope: !259)
!266 = !DILocation(line: 107, column: 7, scope: !216)
!267 = !DILocation(line: 112, column: 7, scope: !216)
!268 = !DILocation(line: 113, column: 4, scope: !269)
!269 = distinct !DILexicalBlock(scope: !270, file: !2, line: 112, column: 24)
!270 = distinct !DILexicalBlock(scope: !216, file: !2, line: 112, column: 7)
!271 = !DILocation(line: 115, column: 4, scope: !269)
!272 = !DILocation(line: 117, column: 3, scope: !269)
!273 = !DILocation(line: 120, column: 14, scope: !274)
!274 = distinct !DILexicalBlock(scope: !216, file: !2, line: 120, column: 7)
!275 = !DILocation(line: 120, column: 7, scope: !216)
!276 = !DILocation(line: 126, column: 13, scope: !277)
!277 = distinct !DILexicalBlock(scope: !203, file: !2, line: 126, column: 6)
!278 = !DILocation(line: 126, column: 19, scope: !277)
!279 = !DILocation(line: 131, column: 1, scope: !203)
!280 = !DILocation(line: 132, column: 2, scope: !203)
!281 = !DILocation(line: 138, column: 9, scope: !203)
!282 = !DILocation(line: 140, column: 1, scope: !203)
!283 = !DISubprogram(name: "strcmp", scope: !174, file: !174, line: 156, type: !284, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!284 = !DISubroutineType(types: !285)
!285 = !{!148, !88, !88}
!286 = !DISubprogram(name: "message", scope: !37, file: !37, line: 47, type: !287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!287 = !DISubroutineType(types: !288)
!288 = !{null, !36, !88, null}
!289 = distinct !DISubprogram(name: "round_up_to_mib", scope: !2, file: !2, line: 144, type: !290, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !292)
!290 = !DISubroutineType(types: !291)
!291 = !{!90, !90}
!292 = !{!293}
!293 = !DILocalVariable(name: "n", arg: 1, scope: !289, file: !2, line: 144, type: !90)
!294 = !DILocation(line: 0, scope: !289)
!295 = !DILocation(line: 146, column: 12, scope: !289)
!296 = !DILocation(line: 146, column: 25, scope: !289)
!297 = !DILocation(line: 146, column: 54, scope: !289)
!298 = !DILocation(line: 146, column: 21, scope: !289)
!299 = !DILocation(line: 146, column: 19, scope: !289)
!300 = !DILocation(line: 146, column: 2, scope: !289)
!301 = distinct !DISubprogram(name: "uint64_to_str", scope: !2, file: !2, line: 170, type: !302, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !304)
!302 = !DISubroutineType(types: !303)
!303 = !{!88, !90, !95}
!304 = !{!305, !306}
!305 = !DILocalVariable(name: "value", arg: 1, scope: !301, file: !2, line: 170, type: !90)
!306 = !DILocalVariable(name: "slot", arg: 2, scope: !301, file: !2, line: 170, type: !95)
!307 = !DILocation(line: 0, scope: !301)
!308 = !DILocation(line: 181, column: 12, scope: !301)
!309 = !DILocation(line: 181, column: 3, scope: !301)
!310 = !DILocation(line: 183, column: 2, scope: !301)
!311 = !DISubprogram(name: "snprintf", scope: !312, file: !312, line: 378, type: !313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!312 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!313 = !DISubroutineType(types: !314)
!314 = !{!148, !315, !61, !316, null}
!315 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !105)
!316 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !88)
!317 = distinct !DIAssignID()
!318 = !DILocation(line: 0, scope: !85)
!319 = distinct !DIAssignID()
!320 = !DILocation(line: 199, column: 2, scope: !85)
!321 = !DILocation(line: 199, column: 14, scope: !85)
!322 = !DILocation(line: 199, column: 8, scope: !85)
!323 = distinct !DIAssignID()
!324 = !DILocation(line: 200, column: 2, scope: !85)
!325 = !DILocation(line: 200, column: 9, scope: !85)
!326 = distinct !DIAssignID()
!327 = !DILocation(line: 202, column: 16, scope: !109)
!328 = !DILocation(line: 202, column: 29, scope: !109)
!329 = !DILocation(line: 210, column: 35, scope: !330)
!330 = distinct !DILexicalBlock(scope: !109, file: !2, line: 203, column: 30)
!331 = !DILocation(line: 210, column: 4, scope: !330)
!332 = !DILocation(line: 211, column: 2, scope: !330)
!333 = !DILocation(line: 215, column: 14, scope: !108)
!334 = !DILocation(line: 0, scope: !108)
!335 = !DILocation(line: 216, column: 3, scope: !108)
!336 = !DILocation(line: 217, column: 6, scope: !337)
!337 = distinct !DILexicalBlock(scope: !108, file: !2, line: 216, column: 6)
!338 = !DILocation(line: 218, column: 4, scope: !337)
!339 = !DILocation(line: 219, column: 17, scope: !108)
!340 = !DILocation(line: 219, column: 28, scope: !108)
!341 = !DILocation(line: 219, column: 34, scope: !108)
!342 = !DILocation(line: 219, column: 43, scope: !108)
!343 = !DILocation(line: 219, column: 3, scope: !337)
!344 = distinct !{!344, !335, !345}
!345 = !DILocation(line: 219, column: 62, scope: !108)
!346 = !DILocation(line: 226, column: 4, scope: !108)
!347 = !DILocation(line: 230, column: 34, scope: !85)
!348 = !DILocation(line: 230, column: 2, scope: !85)
!349 = !DILocation(line: 232, column: 24, scope: !350)
!350 = distinct !DILexicalBlock(scope: !85, file: !2, line: 232, column: 6)
!351 = !DILocation(line: 238, column: 13, scope: !352)
!352 = distinct !DILexicalBlock(scope: !350, file: !2, line: 232, column: 43)
!353 = !DILocation(line: 238, column: 18, scope: !352)
!354 = !DILocation(line: 238, column: 4, scope: !352)
!355 = !DILocation(line: 239, column: 2, scope: !352)
!356 = !DILocation(line: 242, column: 1, scope: !85)
!357 = !DILocation(line: 241, column: 2, scope: !85)
!358 = distinct !DISubprogram(name: "my_snprintf", scope: !2, file: !2, line: 246, type: !359, scopeLine: 247, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !363)
!359 = !DISubroutineType(types: !360)
!360 = !{null, !361, !362, !88, null}
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!363 = !{!364, !365, !366, !367, !380}
!364 = !DILocalVariable(name: "pos", arg: 1, scope: !358, file: !2, line: 246, type: !361)
!365 = !DILocalVariable(name: "left", arg: 2, scope: !358, file: !2, line: 246, type: !362)
!366 = !DILocalVariable(name: "fmt", arg: 3, scope: !358, file: !2, line: 246, type: !88)
!367 = !DILocalVariable(name: "ap", scope: !358, file: !2, line: 248, type: !368)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !369, line: 12, baseType: !370)
!369 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stdarg_va_list.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "7bd78a282b99fcfe41a9e3c566d14f7d")
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2, baseType: !371)
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 192, elements: !378)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !373)
!373 = !{!374, !375, !376, !377}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !372, file: !2, line: 248, baseType: !38, size: 32)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !372, file: !2, line: 248, baseType: !38, size: 32, offset: 32)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !372, file: !2, line: 248, baseType: !59, size: 64, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !372, file: !2, line: 248, baseType: !59, size: 64, offset: 128)
!378 = !{!379}
!379 = !DISubrange(count: 1)
!380 = !DILocalVariable(name: "len", scope: !358, file: !2, line: 250, type: !147)
!381 = distinct !DIAssignID()
!382 = !DILocation(line: 0, scope: !358)
!383 = !DILocation(line: 248, column: 2, scope: !358)
!384 = !DILocation(line: 249, column: 2, scope: !358)
!385 = !DILocation(line: 250, column: 28, scope: !358)
!386 = !DILocation(line: 250, column: 34, scope: !358)
!387 = !DILocation(line: 250, column: 18, scope: !358)
!388 = !DILocation(line: 251, column: 2, scope: !358)
!389 = !DILocation(line: 259, column: 10, scope: !390)
!390 = distinct !DILexicalBlock(scope: !358, file: !2, line: 259, column: 6)
!391 = !DILocation(line: 259, column: 14, scope: !390)
!392 = !DILocation(line: 259, column: 17, scope: !390)
!393 = !DILocation(line: 259, column: 34, scope: !390)
!394 = !DILocation(line: 259, column: 31, scope: !390)
!395 = !DILocation(line: 259, column: 6, scope: !358)
!396 = !DILocation(line: 262, column: 8, scope: !397)
!397 = distinct !DILexicalBlock(scope: !390, file: !2, line: 261, column: 9)
!398 = !DILocation(line: 263, column: 9, scope: !397)
!399 = !DILocation(line: 0, scope: !390)
!400 = !DILocation(line: 267, column: 1, scope: !358)
!401 = !DISubprogram(name: "vsnprintf", scope: !312, file: !312, line: 382, type: !402, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!402 = !DISubroutineType(types: !403)
!403 = !{!148, !315, !61, !316, !404}
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!405 = distinct !DISubprogram(name: "is_empty_filename", scope: !2, file: !2, line: 271, type: !406, scopeLine: 272, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !408)
!406 = !DISubroutineType(types: !407)
!407 = !{!94, !88}
!408 = !{!409}
!409 = !DILocalVariable(name: "filename", arg: 1, scope: !405, file: !2, line: 271, type: !88)
!410 = !DILocation(line: 0, scope: !405)
!411 = !DILocation(line: 273, column: 6, scope: !412)
!412 = distinct !DILexicalBlock(scope: !405, file: !2, line: 273, column: 6)
!413 = !DILocation(line: 273, column: 18, scope: !412)
!414 = !DILocation(line: 273, column: 6, scope: !405)
!415 = !DILocation(line: 274, column: 3, scope: !416)
!416 = distinct !DILexicalBlock(scope: !412, file: !2, line: 273, column: 27)
!417 = !DILocation(line: 275, column: 3, scope: !416)
!418 = !DILocation(line: 279, column: 1, scope: !405)
!419 = !DISubprogram(name: "message_error", scope: !37, file: !37, line: 63, type: !171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!420 = distinct !DISubprogram(name: "is_tty_stdin", scope: !2, file: !2, line: 283, type: !421, scopeLine: 284, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34)
!421 = !DISubroutineType(types: !422)
!422 = !{!94}
!423 = !DILocation(line: 286, column: 9, scope: !420)
!424 = distinct !DISubprogram(name: "is_tty_stdout", scope: !2, file: !2, line: 300, type: !421, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34)
!425 = !DILocation(line: 303, column: 9, scope: !424)
