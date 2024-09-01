; ModuleID = 'liblzma/common/index_hash.c'
source_filename = "liblzma/common/index_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @lzma_index_hash_init(ptr noundef %index_hash, ptr noundef %allocator) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq ptr %index_hash, null
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call ptr @lzma_alloc(i64 noundef 320, ptr noundef %allocator) #5
  %cmp1 = icmp eq ptr %call, null
  br i1 %cmp1, label %return, label %if.end3

if.end3:                                          ; preds = %if.then, %entry
  %index_hash.addr.0 = phi ptr [ %call, %if.then ], [ %index_hash, %entry ]
  store i32 0, ptr %index_hash.addr.0, align 8
  %blocks = getelementptr inbounds i8, ptr %index_hash.addr.0, i64 8
  %records = getelementptr inbounds i8, ptr %index_hash.addr.0, i64 144
  %unpadded_size = getelementptr inbounds i8, ptr %index_hash.addr.0, i64 288
  %check = getelementptr inbounds i8, ptr %index_hash.addr.0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %blocks, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %records, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %unpadded_size, i8 0, i64 28, i1 false)
  tail call void @lzma_check_init(ptr noundef nonnull %check, i32 noundef 10) #5
  %check17 = getelementptr inbounds i8, ptr %index_hash.addr.0, i64 176
  tail call void @lzma_check_init(ptr noundef nonnull %check17, i32 noundef 10) #5
  br label %return

return:                                           ; preds = %if.then, %if.end3
  %retval.0 = phi ptr [ %index_hash.addr.0, %if.end3 ], [ null, %if.then ]
  ret ptr %retval.0
}

declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @lzma_check_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @lzma_index_hash_end(ptr noundef %index_hash, ptr noundef %allocator) local_unnamed_addr #0 {
entry:
  tail call void @lzma_free(ptr noundef %index_hash, ptr noundef %allocator) #5
  ret void
}

declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, -3) i64 @lzma_index_hash_size(ptr nocapture noundef readonly %index_hash) local_unnamed_addr #0 {
entry:
  %count = getelementptr inbounds i8, ptr %index_hash, i64 24
  %0 = load i64, ptr %count, align 8
  %index_list_size = getelementptr inbounds i8, ptr %index_hash, i64 32
  %1 = load i64, ptr %index_list_size, align 8
  %call.i.i = tail call i32 @lzma_vli_size(i64 noundef %0) #5
  %add.i.i = add i32 %call.i.i, 1
  %conv.i.i = zext i32 %add.i.i to i64
  %add2.i.i = add i64 %1, 7
  %add.i2.i = add i64 %add2.i.i, %conv.i.i
  %and.i.i = and i64 %add.i2.i, -4
  ret i64 %and.i.i
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 12) i32 @lzma_index_hash_append(ptr noundef %index_hash, i64 noundef %unpadded_size, i64 noundef %uncompressed_size) local_unnamed_addr #0 {
entry:
  %sizes.i = alloca [2 x i64], align 16
  %0 = load i32, ptr %index_hash, align 8
  %cmp = icmp ne i32 %0, 0
  %1 = add i64 %unpadded_size, -9223372036854775805
  %2 = icmp ult i64 %1, -9223372036854775800
  %or.cond31 = or i1 %2, %cmp
  %cmp5 = icmp slt i64 %uncompressed_size, 0
  %or.cond32 = or i1 %cmp5, %or.cond31
  br i1 %or.cond32, label %return, label %do.body

do.body:                                          ; preds = %entry
  %blocks = getelementptr inbounds i8, ptr %index_hash, i64 8
  %add.i.i = add nuw nsw i64 %unpadded_size, 3
  %and.i.i = and i64 %add.i.i, 9223372036854775804
  %3 = load i64, ptr %blocks, align 8
  %add.i = add i64 %3, %and.i.i
  store i64 %add.i, ptr %blocks, align 8
  %uncompressed_size1.i = getelementptr inbounds i8, ptr %index_hash, i64 16
  %4 = load i64, ptr %uncompressed_size1.i, align 8
  %add2.i = add i64 %4, %uncompressed_size
  store i64 %add2.i, ptr %uncompressed_size1.i, align 8
  %call3.i = tail call i32 @lzma_vli_size(i64 noundef %unpadded_size) #5
  %call4.i = tail call i32 @lzma_vli_size(i64 noundef %uncompressed_size) #5
  %add5.i = add i32 %call4.i, %call3.i
  %conv.i = zext i32 %add5.i to i64
  %index_list_size.i = getelementptr inbounds i8, ptr %index_hash, i64 32
  %count.i = getelementptr inbounds i8, ptr %index_hash, i64 24
  %5 = load <2 x i64>, ptr %count.i, align 8
  %6 = insertelement <2 x i64> <i64 1, i64 poison>, i64 %conv.i, i64 1
  %7 = add <2 x i64> %5, %6
  store <2 x i64> %7, ptr %count.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sizes.i) #5
  store i64 %unpadded_size, ptr %sizes.i, align 16
  %arrayinit.element.i = getelementptr inbounds i8, ptr %sizes.i, i64 8
  store i64 %uncompressed_size, ptr %arrayinit.element.i, align 8
  %check.i = getelementptr inbounds i8, ptr %index_hash, i64 40
  call void @lzma_check_update(ptr noundef nonnull %check.i, i32 noundef 10, ptr noundef nonnull %sizes.i, i64 noundef 16) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sizes.i) #5
  %8 = load i64, ptr %blocks, align 8
  %cmp10 = icmp slt i64 %8, 0
  br i1 %cmp10, label %return, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %do.body
  %9 = load i64, ptr %uncompressed_size1.i, align 8
  %cmp14 = icmp slt i64 %9, 0
  br i1 %cmp14, label %return, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false11
  %10 = load i64, ptr %count.i, align 8
  %11 = load i64, ptr %index_list_size.i, align 8
  %call.i.i = call i32 @lzma_vli_size(i64 noundef %10) #5
  %add.i.i45 = add i32 %call.i.i, 1
  %conv.i.i = zext i32 %add.i.i45 to i64
  %add2.i.i = add i64 %11, 7
  %add.i2.i = add i64 %add2.i.i, %conv.i.i
  %and.i.i46 = and i64 %add.i2.i, -4
  %cmp19 = icmp ugt i64 %and.i.i46, 17179869184
  br i1 %cmp19, label %return, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %lor.lhs.false15
  %12 = load i64, ptr %blocks, align 8
  %13 = load i64, ptr %count.i, align 8
  %14 = load i64, ptr %index_list_size.i, align 8
  %call.i.i.i = call i32 @lzma_vli_size(i64 noundef %13) #5
  %add.i.i.i = add i32 %call.i.i.i, 1
  %conv.i.i.i = zext i32 %add.i.i.i to i64
  %add2.i.i.i = add i64 %14, 7
  %add.i2.i.i = add i64 %add2.i.i.i, %conv.i.i.i
  %and.i.i.i = and i64 %add.i2.i.i, -4
  %add1.i = add i64 %12, 24
  %add2.i47 = add i64 %add1.i, %and.i.i.i
  %cmp28 = icmp slt i64 %add2.i47, 0
  %spec.select = select i1 %cmp28, i32 9, i32 0
  br label %return

return:                                           ; preds = %lor.lhs.false20, %do.body, %lor.lhs.false11, %lor.lhs.false15, %entry
  %retval.1 = phi i32 [ 11, %entry ], [ 9, %lor.lhs.false15 ], [ 9, %lor.lhs.false11 ], [ 9, %do.body ], [ %spec.select, %lor.lhs.false20 ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_index_hash_decode(ptr noundef %index_hash, ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size) local_unnamed_addr #0 {
entry:
  %sizes.i = alloca [2 x i64], align 16
  %0 = load i64, ptr %in_pos, align 8
  %cmp.not = icmp ult i64 %0, %in_size
  br i1 %cmp.not, label %while.body.lr.ph, label %return

while.body.lr.ph:                                 ; preds = %entry
  %count84 = getelementptr inbounds i8, ptr %index_hash, i64 160
  %index_list_size86 = getelementptr inbounds i8, ptr %index_hash, i64 168
  %pos88 = getelementptr inbounds i8, ptr %index_hash, i64 304
  %unpadded_size = getelementptr inbounds i8, ptr %index_hash, i64 288
  %uncompressed_size = getelementptr inbounds i8, ptr %index_hash, i64 296
  %records = getelementptr inbounds i8, ptr %index_hash, i64 144
  %uncompressed_size1.i = getelementptr inbounds i8, ptr %index_hash, i64 152
  %arrayinit.element.i = getelementptr inbounds i8, ptr %sizes.i, i64 8
  %check.i = getelementptr inbounds i8, ptr %index_hash, i64 176
  %blocks54 = getelementptr inbounds i8, ptr %index_hash, i64 8
  %uncompressed_size61 = getelementptr inbounds i8, ptr %index_hash, i64 16
  %index_list_size = getelementptr inbounds i8, ptr %index_hash, i64 32
  %remaining74 = getelementptr inbounds i8, ptr %index_hash, i64 280
  %count = getelementptr inbounds i8, ptr %index_hash, i64 24
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %sw.epilog
  %1 = phi i64 [ %0, %while.body.lr.ph ], [ %42, %sw.epilog ]
  %2 = load i32, ptr %index_hash, align 8
  switch i32 %2, label %return [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
    i32 2, label %sw.bb22
    i32 3, label %sw.bb22
    i32 4, label %sw.bb82
    i32 5, label %while.body.sw.bb90_crit_edge
    i32 6, label %sw.bb147
  ]

while.body.sw.bb90_crit_edge:                     ; preds = %while.body
  %.pre = load i64, ptr %pos88, align 8
  br label %sw.bb90

sw.bb:                                            ; preds = %while.body
  %inc = add nuw i64 %1, 1
  store i64 %inc, ptr %in_pos, align 8
  %arrayidx = getelementptr inbounds i8, ptr %in, i64 %1
  %3 = load i8, ptr %arrayidx, align 1
  %cmp2.not = icmp eq i8 %3, 0
  br i1 %cmp2.not, label %sw.epilog.sink.split, label %return

sw.bb7:                                           ; preds = %while.body
  %call = call i32 @lzma_vli_decode(ptr noundef nonnull %remaining74, ptr noundef nonnull %pos88, ptr noundef %in, ptr noundef nonnull %in_pos, i64 noundef %in_size) #5
  %cmp8.not = icmp eq i32 %call, 1
  br i1 %cmp8.not, label %if.end11, label %out

if.end11:                                         ; preds = %sw.bb7
  %4 = load i64, ptr %remaining74, align 8
  %5 = load i64, ptr %count, align 8
  %cmp13.not = icmp eq i64 %4, %5
  br i1 %cmp13.not, label %if.end16, label %return

if.end16:                                         ; preds = %if.end11
  store i64 0, ptr %pos88, align 8
  %cmp19 = icmp eq i64 %4, 0
  %cond = select i1 %cmp19, i32 4, i32 2
  br label %sw.epilog.sink.split

sw.bb22:                                          ; preds = %while.body, %while.body
  %cmp24 = icmp eq i32 %2, 2
  %cond26 = select i1 %cmp24, ptr %unpadded_size, ptr %uncompressed_size
  %call28 = call i32 @lzma_vli_decode(ptr noundef nonnull %cond26, ptr noundef nonnull %pos88, ptr noundef %in, ptr noundef nonnull %in_pos, i64 noundef %in_size) #5
  %cmp29.not = icmp eq i32 %call28, 1
  br i1 %cmp29.not, label %if.end32, label %out

if.end32:                                         ; preds = %sw.bb22
  store i64 0, ptr %pos88, align 8
  %6 = load i32, ptr %index_hash, align 8
  %cmp35 = icmp eq i32 %6, 2
  %7 = load i64, ptr %unpadded_size, align 8
  br i1 %cmp35, label %if.then37, label %do.body

if.then37:                                        ; preds = %if.end32
  %8 = add i64 %7, -9223372036854775805
  %or.cond = icmp ult i64 %8, -9223372036854775800
  br i1 %or.cond, label %return, label %sw.epilog.sink.split

do.body:                                          ; preds = %if.end32
  %9 = load i64, ptr %uncompressed_size, align 8
  %add.i.i = add i64 %7, 3
  %and.i.i = and i64 %add.i.i, -4
  %10 = load i64, ptr %records, align 8
  %add.i = add i64 %10, %and.i.i
  store i64 %add.i, ptr %records, align 8
  %11 = load i64, ptr %uncompressed_size1.i, align 8
  %add2.i = add i64 %11, %9
  store i64 %add2.i, ptr %uncompressed_size1.i, align 8
  %call3.i = call i32 @lzma_vli_size(i64 noundef %7) #5
  %call4.i = call i32 @lzma_vli_size(i64 noundef %9) #5
  %add5.i = add i32 %call4.i, %call3.i
  %conv.i = zext i32 %add5.i to i64
  %12 = load <2 x i64>, ptr %count84, align 8
  %13 = insertelement <2 x i64> <i64 1, i64 poison>, i64 %conv.i, i64 1
  %14 = add <2 x i64> %12, %13
  store <2 x i64> %14, ptr %count84, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sizes.i) #5
  store i64 %7, ptr %sizes.i, align 16
  store i64 %9, ptr %arrayinit.element.i, align 8
  call void @lzma_check_update(ptr noundef nonnull %check.i, i32 noundef 10, ptr noundef nonnull %sizes.i, i64 noundef 16) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sizes.i) #5
  %15 = load i64, ptr %blocks54, align 8
  %16 = load i64, ptr %records, align 8
  %cmp57 = icmp ult i64 %15, %16
  br i1 %cmp57, label %return, label %lor.lhs.false59

lor.lhs.false59:                                  ; preds = %do.body
  %17 = load i64, ptr %uncompressed_size61, align 8
  %18 = load i64, ptr %uncompressed_size1.i, align 8
  %cmp64 = icmp ult i64 %17, %18
  br i1 %cmp64, label %return, label %lor.lhs.false66

lor.lhs.false66:                                  ; preds = %lor.lhs.false59
  %19 = load i64, ptr %index_list_size, align 8
  %20 = load i64, ptr %index_list_size86, align 8
  %cmp70 = icmp ult i64 %19, %20
  br i1 %cmp70, label %return, label %if.end73

if.end73:                                         ; preds = %lor.lhs.false66
  %21 = load i64, ptr %remaining74, align 8
  %dec = add i64 %21, -1
  store i64 %dec, ptr %remaining74, align 8
  %cmp75 = icmp eq i64 %dec, 0
  %cond77 = select i1 %cmp75, i32 4, i32 2
  br label %sw.epilog.sink.split

sw.bb82:                                          ; preds = %while.body
  %22 = load i64, ptr %count84, align 8
  %23 = load i64, ptr %index_list_size86, align 8
  %call.i = call i32 @lzma_vli_size(i64 noundef %22) #5
  %add.i260 = add i32 %call.i, 1
  %conv.i261 = zext i32 %add.i260 to i64
  %24 = add i64 %23, %conv.i261
  %add2.i262.neg = sub i64 0, %24
  %and = and i64 %add2.i262.neg, 3
  store i64 %and, ptr %pos88, align 8
  store i32 5, ptr %index_hash, align 8
  br label %sw.bb90

sw.bb90:                                          ; preds = %while.body.sw.bb90_crit_edge, %sw.bb82
  %25 = phi i64 [ %.pre, %while.body.sw.bb90_crit_edge ], [ %and, %sw.bb82 ]
  %cmp92.not = icmp eq i64 %25, 0
  br i1 %cmp92.not, label %if.end104, label %if.then94

if.then94:                                        ; preds = %sw.bb90
  %dec96 = add i64 %25, -1
  store i64 %dec96, ptr %pos88, align 8
  %26 = load i64, ptr %in_pos, align 8
  %inc97 = add i64 %26, 1
  store i64 %inc97, ptr %in_pos, align 8
  %arrayidx98 = getelementptr inbounds i8, ptr %in, i64 %26
  %27 = load i8, ptr %arrayidx98, align 1
  %cmp100.not = icmp eq i8 %27, 0
  br i1 %cmp100.not, label %sw.epilog, label %return

if.end104:                                        ; preds = %sw.bb90
  %28 = load i64, ptr %blocks54, align 8
  %29 = load i64, ptr %records, align 8
  %cmp109.not = icmp eq i64 %28, %29
  br i1 %cmp109.not, label %lor.lhs.false111, label %return

lor.lhs.false111:                                 ; preds = %if.end104
  %30 = load i64, ptr %uncompressed_size61, align 8
  %31 = load i64, ptr %uncompressed_size1.i, align 8
  %cmp116.not = icmp eq i64 %30, %31
  br i1 %cmp116.not, label %lor.lhs.false118, label %return

lor.lhs.false118:                                 ; preds = %lor.lhs.false111
  %32 = load i64, ptr %index_list_size, align 8
  %33 = load i64, ptr %index_list_size86, align 8
  %cmp123.not = icmp eq i64 %32, %33
  br i1 %cmp123.not, label %if.end126, label %return

if.end126:                                        ; preds = %lor.lhs.false118
  %check = getelementptr inbounds i8, ptr %index_hash, i64 40
  call void @lzma_check_finish(ptr noundef nonnull %check, i32 noundef 10) #5
  call void @lzma_check_finish(ptr noundef nonnull %check.i, i32 noundef 10) #5
  %call136 = call i32 @lzma_check_size(i32 noundef 10) #5
  %conv137 = zext i32 %call136 to i64
  %bcmp = call i32 @bcmp(ptr nonnull %check, ptr nonnull %check.i, i64 %conv137)
  %cmp139.not = icmp eq i32 %bcmp, 0
  br i1 %cmp139.not, label %if.end142, label %return

if.end142:                                        ; preds = %if.end126
  %add.ptr = getelementptr inbounds i8, ptr %in, i64 %0
  %34 = load i64, ptr %in_pos, align 8
  %sub143 = sub i64 %34, %0
  %crc32 = getelementptr inbounds i8, ptr %index_hash, i64 312
  %35 = load i32, ptr %crc32, align 8
  %call144 = call i32 @lzma_crc32(ptr noundef %add.ptr, i64 noundef %sub143, i32 noundef %35) #5
  store i32 %call144, ptr %crc32, align 8
  store i32 6, ptr %index_hash, align 8
  br label %sw.bb147

sw.bb147:                                         ; preds = %while.body, %if.end142
  %crc32153 = getelementptr inbounds i8, ptr %index_hash, i64 312
  br label %do.body148

do.body148:                                       ; preds = %do.cond163, %sw.bb147
  %36 = load i64, ptr %in_pos, align 8
  %cmp149 = icmp eq i64 %36, %in_size
  br i1 %cmp149, label %return, label %if.end152

if.end152:                                        ; preds = %do.body148
  %37 = load i32, ptr %crc32153, align 8
  %38 = load i64, ptr %pos88, align 8
  %.tr = trunc i64 %38 to i32
  %sh_prom = shl i32 %.tr, 3
  %shr = lshr i32 %37, %sh_prom
  %inc156 = add i64 %36, 1
  store i64 %inc156, ptr %in_pos, align 8
  %arrayidx157 = getelementptr inbounds i8, ptr %in, i64 %36
  %39 = load i8, ptr %arrayidx157, align 1
  %40 = trunc i32 %shr to i8
  %cmp159.not = icmp eq i8 %39, %40
  br i1 %cmp159.not, label %do.cond163, label %return

do.cond163:                                       ; preds = %if.end152
  %41 = load i64, ptr %pos88, align 8
  %inc165 = add i64 %41, 1
  store i64 %inc165, ptr %pos88, align 8
  %cmp166 = icmp ult i64 %inc165, 4
  br i1 %cmp166, label %do.body148, label %return

sw.epilog.sink.split:                             ; preds = %if.then37, %if.end73, %sw.bb, %if.end16
  %storemerge.sink = phi i32 [ %cond, %if.end16 ], [ 1, %sw.bb ], [ %cond77, %if.end73 ], [ 3, %if.then37 ]
  store i32 %storemerge.sink, ptr %index_hash, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.then94
  %42 = load i64, ptr %in_pos, align 8
  %cmp1 = icmp ult i64 %42, %in_size
  br i1 %cmp1, label %while.body, label %out

out:                                              ; preds = %sw.bb7, %sw.epilog, %sw.bb22
  %ret.3.ph = phi i32 [ %call, %sw.bb7 ], [ 0, %sw.epilog ], [ %call28, %sw.bb22 ]
  %.pre275 = load i64, ptr %in_pos, align 8
  %add.ptr169 = getelementptr inbounds i8, ptr %in, i64 %0
  %sub170 = sub i64 %.pre275, %0
  %crc32171 = getelementptr inbounds i8, ptr %index_hash, i64 312
  %43 = load i32, ptr %crc32171, align 8
  %call172 = call i32 @lzma_crc32(ptr noundef %add.ptr169, i64 noundef %sub170, i32 noundef %43) #5
  store i32 %call172, ptr %crc32171, align 8
  br label %return

return:                                           ; preds = %do.body, %lor.lhs.false59, %lor.lhs.false66, %if.then37, %sw.bb, %if.end11, %if.then94, %while.body, %do.body148, %if.end152, %do.cond163, %out, %lor.lhs.false118, %lor.lhs.false111, %if.end104, %if.end126, %entry
  %retval.6 = phi i32 [ 10, %entry ], [ %ret.3.ph, %out ], [ 9, %lor.lhs.false118 ], [ 9, %lor.lhs.false111 ], [ 9, %if.end104 ], [ 9, %if.end126 ], [ 1, %do.cond163 ], [ 9, %if.end152 ], [ 0, %do.body148 ], [ 9, %do.body ], [ 9, %lor.lhs.false59 ], [ 9, %lor.lhs.false66 ], [ 9, %if.then37 ], [ 11, %while.body ], [ 9, %if.then94 ], [ 9, %if.end11 ], [ 9, %sw.bb ]
  ret i32 %retval.6
}

declare i32 @lzma_vli_decode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @lzma_check_finish(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @lzma_check_size(i32 noundef) local_unnamed_addr #1

declare i32 @lzma_crc32(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @lzma_vli_size(i64 noundef) local_unnamed_addr #1

declare void @lzma_check_update(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind willreturn memory(argmem: read) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
