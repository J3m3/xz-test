; ModuleID = 'liblzma/common/index_hash.c'
source_filename = "liblzma/common/index_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @lzma_index_hash_init(ptr noundef %index_hash, ptr noundef %allocator) local_unnamed_addr #0 !dbg !109 {
entry:
    #dbg_value(ptr %index_hash, !129, !DIExpression(), !131)
    #dbg_value(ptr %allocator, !130, !DIExpression(), !131)
  %cmp = icmp eq ptr %index_hash, null, !dbg !132
  br i1 %cmp, label %if.then, label %if.end3, !dbg !134

if.then:                                          ; preds = %entry
  %call = tail call ptr @lzma_alloc(i64 noundef 320, ptr noundef %allocator) #5, !dbg !135
    #dbg_value(ptr %call, !129, !DIExpression(), !131)
  %cmp1 = icmp eq ptr %call, null, !dbg !137
  br i1 %cmp1, label %return, label %if.end3, !dbg !139

if.end3:                                          ; preds = %if.then, %entry
  %index_hash.addr.0 = phi ptr [ %call, %if.then ], [ %index_hash, %entry ]
    #dbg_value(ptr %index_hash.addr.0, !129, !DIExpression(), !131)
  store i32 0, ptr %index_hash.addr.0, align 8, !dbg !140
  %blocks = getelementptr inbounds i8, ptr %index_hash.addr.0, i64 8, !dbg !141
  %records = getelementptr inbounds i8, ptr %index_hash.addr.0, i64 144, !dbg !142
  %unpadded_size = getelementptr inbounds i8, ptr %index_hash.addr.0, i64 288, !dbg !143
  %check = getelementptr inbounds i8, ptr %index_hash.addr.0, i64 40, !dbg !144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %blocks, i8 0, i64 32, i1 false), !dbg !145
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %records, i8 0, i64 32, i1 false), !dbg !146
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %unpadded_size, i8 0, i64 28, i1 false), !dbg !147
  tail call void @lzma_check_init(ptr noundef nonnull %check, i32 noundef 10) #5, !dbg !148
  %check17 = getelementptr inbounds i8, ptr %index_hash.addr.0, i64 176, !dbg !149
  tail call void @lzma_check_init(ptr noundef nonnull %check17, i32 noundef 10) #5, !dbg !150
  br label %return, !dbg !151

return:                                           ; preds = %if.then, %if.end3
  %retval.0 = phi ptr [ %index_hash.addr.0, %if.end3 ], [ null, %if.then ], !dbg !131
  ret ptr %retval.0, !dbg !152
}

declare !dbg !153 ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !157 void @lzma_check_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @lzma_index_hash_end(ptr noundef %index_hash, ptr noundef %allocator) local_unnamed_addr #0 !dbg !162 {
entry:
    #dbg_value(ptr %index_hash, !166, !DIExpression(), !168)
    #dbg_value(ptr %allocator, !167, !DIExpression(), !168)
  tail call void @lzma_free(ptr noundef %index_hash, ptr noundef %allocator) #5, !dbg !169
  ret void, !dbg !170
}

declare !dbg !171 void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, -3) i64 @lzma_index_hash_size(ptr nocapture noundef readonly %index_hash) local_unnamed_addr #0 !dbg !174 {
entry:
    #dbg_value(ptr %index_hash, !180, !DIExpression(), !181)
  %count = getelementptr inbounds i8, ptr %index_hash, i64 24, !dbg !182
  %0 = load i64, ptr %count, align 8, !dbg !182
  %index_list_size = getelementptr inbounds i8, ptr %index_hash, i64 32, !dbg !183
  %1 = load i64, ptr %index_list_size, align 8, !dbg !183
    #dbg_value(i64 %0, !184, !DIExpression(), !191)
    #dbg_value(i64 %1, !190, !DIExpression(), !191)
    #dbg_value(i64 %0, !193, !DIExpression(), !197)
    #dbg_value(i64 %1, !196, !DIExpression(), !197)
  %call.i.i = tail call i32 @lzma_vli_size(i64 noundef %0) #5, !dbg !199
  %add.i.i = add i32 %call.i.i, 1, !dbg !200
  %conv.i.i = zext i32 %add.i.i to i64, !dbg !201
    #dbg_value(i64 poison, !202, !DIExpression(), !207)
  %add2.i.i = add i64 %1, 7, !dbg !209
  %add.i2.i = add i64 %add2.i.i, %conv.i.i, !dbg !210
  %and.i.i = and i64 %add.i2.i, -4, !dbg !211
  ret i64 %and.i.i, !dbg !212
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 12) i32 @lzma_index_hash_append(ptr noundef %index_hash, i64 noundef %unpadded_size, i64 noundef %uncompressed_size) local_unnamed_addr #0 !dbg !213 {
entry:
  %sizes.i = alloca [2 x i64], align 16, !DIAssignID !224
    #dbg_value(ptr %index_hash, !218, !DIExpression(), !225)
    #dbg_value(i64 %unpadded_size, !219, !DIExpression(), !225)
    #dbg_value(i64 %uncompressed_size, !220, !DIExpression(), !225)
  %0 = load i32, ptr %index_hash, align 8, !dbg !226
  %cmp = icmp ne i32 %0, 0, !dbg !228
  %1 = add i64 %unpadded_size, -9223372036854775805, !dbg !229
  %2 = icmp ult i64 %1, -9223372036854775800, !dbg !229
  %or.cond31 = or i1 %2, %cmp, !dbg !229
  %cmp5 = icmp slt i64 %uncompressed_size, 0
  %or.cond32 = or i1 %cmp5, %or.cond31, !dbg !229
  br i1 %or.cond32, label %return, label %do.body, !dbg !229

do.body:                                          ; preds = %entry
  %blocks = getelementptr inbounds i8, ptr %index_hash, i64 8, !dbg !230
    #dbg_assign(i1 undef, !231, !DIExpression(), !224, ptr %sizes.i, !DIExpression(), !244)
    #dbg_value(ptr %blocks, !237, !DIExpression(), !244)
    #dbg_value(i64 %unpadded_size, !238, !DIExpression(), !244)
    #dbg_value(i64 %uncompressed_size, !239, !DIExpression(), !244)
    #dbg_value(i64 %unpadded_size, !202, !DIExpression(), !246)
  %add.i.i = add nuw nsw i64 %unpadded_size, 3, !dbg !248
  %and.i.i = and i64 %add.i.i, 9223372036854775804, !dbg !249
  %3 = load i64, ptr %blocks, align 8, !dbg !250
  %add.i = add i64 %3, %and.i.i, !dbg !250
  store i64 %add.i, ptr %blocks, align 8, !dbg !250
  %uncompressed_size1.i = getelementptr inbounds i8, ptr %index_hash, i64 16, !dbg !251
  %4 = load i64, ptr %uncompressed_size1.i, align 8, !dbg !252
  %add2.i = add i64 %4, %uncompressed_size, !dbg !252
  store i64 %add2.i, ptr %uncompressed_size1.i, align 8, !dbg !252
  %call3.i = tail call i32 @lzma_vli_size(i64 noundef %unpadded_size) #5, !dbg !253
  %call4.i = tail call i32 @lzma_vli_size(i64 noundef %uncompressed_size) #5, !dbg !254
  %add5.i = add i32 %call4.i, %call3.i, !dbg !255
  %conv.i = zext i32 %add5.i to i64, !dbg !253
  %index_list_size.i = getelementptr inbounds i8, ptr %index_hash, i64 32, !dbg !256
  %count.i = getelementptr inbounds i8, ptr %index_hash, i64 24, !dbg !257
  %5 = load <2 x i64>, ptr %count.i, align 8, !dbg !258
  %6 = insertelement <2 x i64> <i64 1, i64 poison>, i64 %conv.i, i64 1, !dbg !258
  %7 = add <2 x i64> %5, %6, !dbg !258
  store <2 x i64> %7, ptr %count.i, align 8, !dbg !258
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sizes.i) #5, !dbg !259
  store i64 %unpadded_size, ptr %sizes.i, align 16, !dbg !260, !DIAssignID !261
    #dbg_assign(i64 %unpadded_size, !231, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !261, ptr %sizes.i, !DIExpression(), !244)
  %arrayinit.element.i = getelementptr inbounds i8, ptr %sizes.i, i64 8, !dbg !260
  store i64 %uncompressed_size, ptr %arrayinit.element.i, align 8, !dbg !260, !DIAssignID !262
    #dbg_assign(i64 %uncompressed_size, !231, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !262, ptr %arrayinit.element.i, !DIExpression(), !244)
  %check.i = getelementptr inbounds i8, ptr %index_hash, i64 40, !dbg !263
  call void @lzma_check_update(ptr noundef nonnull %check.i, i32 noundef 10, ptr noundef nonnull %sizes.i, i64 noundef 16) #5, !dbg !264
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sizes.i) #5, !dbg !265
    #dbg_value(i32 0, !221, !DIExpression(), !266)
  %8 = load i64, ptr %blocks, align 8, !dbg !267
  %cmp10 = icmp slt i64 %8, 0, !dbg !269
  br i1 %cmp10, label %return, label %lor.lhs.false11, !dbg !270

lor.lhs.false11:                                  ; preds = %do.body
  %9 = load i64, ptr %uncompressed_size1.i, align 8, !dbg !271
  %cmp14 = icmp slt i64 %9, 0, !dbg !272
  br i1 %cmp14, label %return, label %lor.lhs.false15, !dbg !273

lor.lhs.false15:                                  ; preds = %lor.lhs.false11
  %10 = load i64, ptr %count.i, align 8, !dbg !274
  %11 = load i64, ptr %index_list_size.i, align 8, !dbg !275
    #dbg_value(i64 %10, !184, !DIExpression(), !276)
    #dbg_value(i64 %11, !190, !DIExpression(), !276)
    #dbg_value(i64 %10, !193, !DIExpression(), !278)
    #dbg_value(i64 %11, !196, !DIExpression(), !278)
  %call.i.i = call i32 @lzma_vli_size(i64 noundef %10) #5, !dbg !280
  %add.i.i45 = add i32 %call.i.i, 1, !dbg !281
  %conv.i.i = zext i32 %add.i.i45 to i64, !dbg !282
    #dbg_value(i64 poison, !202, !DIExpression(), !283)
  %add2.i.i = add i64 %11, 7, !dbg !285
  %add.i2.i = add i64 %add2.i.i, %conv.i.i, !dbg !286
  %and.i.i46 = and i64 %add.i2.i, -4, !dbg !287
  %cmp19 = icmp ugt i64 %and.i.i46, 17179869184, !dbg !288
  br i1 %cmp19, label %return, label %lor.lhs.false20, !dbg !289

lor.lhs.false20:                                  ; preds = %lor.lhs.false15
  %12 = load i64, ptr %blocks, align 8, !dbg !290
  %13 = load i64, ptr %count.i, align 8, !dbg !291
  %14 = load i64, ptr %index_list_size.i, align 8, !dbg !292
    #dbg_value(i64 %12, !293, !DIExpression(), !300)
    #dbg_value(i64 %13, !298, !DIExpression(), !300)
    #dbg_value(i64 %14, !299, !DIExpression(), !300)
    #dbg_value(i64 %13, !184, !DIExpression(), !302)
    #dbg_value(i64 %14, !190, !DIExpression(), !302)
    #dbg_value(i64 %13, !193, !DIExpression(), !304)
    #dbg_value(i64 %14, !196, !DIExpression(), !304)
  %call.i.i.i = call i32 @lzma_vli_size(i64 noundef %13) #5, !dbg !306
  %add.i.i.i = add i32 %call.i.i.i, 1, !dbg !307
  %conv.i.i.i = zext i32 %add.i.i.i to i64, !dbg !308
    #dbg_value(i64 poison, !202, !DIExpression(), !309)
  %add2.i.i.i = add i64 %14, 7, !dbg !311
  %add.i2.i.i = add i64 %add2.i.i.i, %conv.i.i.i, !dbg !312
  %and.i.i.i = and i64 %add.i2.i.i, -4, !dbg !313
  %add1.i = add i64 %12, 24, !dbg !314
  %add2.i47 = add i64 %add1.i, %and.i.i.i, !dbg !315
  %cmp28 = icmp slt i64 %add2.i47, 0, !dbg !316
  %spec.select = select i1 %cmp28, i32 9, i32 0, !dbg !317
  br label %return, !dbg !317

return:                                           ; preds = %lor.lhs.false20, %do.body, %lor.lhs.false11, %lor.lhs.false15, %entry
  %retval.1 = phi i32 [ 11, %entry ], [ 9, %lor.lhs.false15 ], [ 9, %lor.lhs.false11 ], [ 9, %do.body ], [ %spec.select, %lor.lhs.false20 ], !dbg !225
  ret i32 %retval.1, !dbg !318
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_index_hash_decode(ptr noundef %index_hash, ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size) local_unnamed_addr #0 !dbg !319 {
entry:
  %sizes.i = alloca [2 x i64], align 16, !DIAssignID !340
    #dbg_value(ptr %index_hash, !324, !DIExpression(), !341)
    #dbg_value(ptr %in, !325, !DIExpression(), !341)
    #dbg_value(ptr %in_pos, !326, !DIExpression(), !341)
    #dbg_value(i64 %in_size, !327, !DIExpression(), !341)
  %0 = load i64, ptr %in_pos, align 8, !dbg !342
  %cmp.not = icmp ult i64 %0, %in_size, !dbg !344
  br i1 %cmp.not, label %while.body.lr.ph, label %return, !dbg !345

while.body.lr.ph:                                 ; preds = %entry
    #dbg_value(i32 0, !330, !DIExpression(), !341)
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
  br label %while.body, !dbg !346

while.body:                                       ; preds = %while.body.lr.ph, %sw.epilog
  %1 = phi i64 [ %0, %while.body.lr.ph ], [ %42, %sw.epilog ]
  %2 = load i32, ptr %index_hash, align 8, !dbg !347
  switch i32 %2, label %return [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
    i32 2, label %sw.bb22
    i32 3, label %sw.bb22
    i32 4, label %sw.bb82
    i32 5, label %while.body.sw.bb90_crit_edge
    i32 6, label %sw.bb147
  ], !dbg !348

while.body.sw.bb90_crit_edge:                     ; preds = %while.body
  %.pre = load i64, ptr %pos88, align 8, !dbg !349
  br label %sw.bb90, !dbg !348

sw.bb:                                            ; preds = %while.body
  %inc = add nuw i64 %1, 1, !dbg !351
  store i64 %inc, ptr %in_pos, align 8, !dbg !351
  %arrayidx = getelementptr inbounds i8, ptr %in, i64 %1, !dbg !353
  %3 = load i8, ptr %arrayidx, align 1, !dbg !353
  %cmp2.not = icmp eq i8 %3, 0, !dbg !354
  br i1 %cmp2.not, label %sw.epilog.sink.split, label %return, !dbg !355

sw.bb7:                                           ; preds = %while.body
  %call = call i32 @lzma_vli_decode(ptr noundef nonnull %remaining74, ptr noundef nonnull %pos88, ptr noundef %in, ptr noundef nonnull %in_pos, i64 noundef %in_size) #5, !dbg !356
    #dbg_value(i32 %call, !330, !DIExpression(), !341)
  %cmp8.not = icmp eq i32 %call, 1, !dbg !358
  br i1 %cmp8.not, label %if.end11, label %out, !dbg !360

if.end11:                                         ; preds = %sw.bb7
  %4 = load i64, ptr %remaining74, align 8, !dbg !361
  %5 = load i64, ptr %count, align 8, !dbg !363
  %cmp13.not = icmp eq i64 %4, %5, !dbg !364
  br i1 %cmp13.not, label %if.end16, label %return, !dbg !365

if.end16:                                         ; preds = %if.end11
    #dbg_value(i32 0, !330, !DIExpression(), !341)
  store i64 0, ptr %pos88, align 8, !dbg !366
  %cmp19 = icmp eq i64 %4, 0, !dbg !367
  %cond = select i1 %cmp19, i32 4, i32 2, !dbg !368
  br label %sw.epilog.sink.split, !dbg !369

sw.bb22:                                          ; preds = %while.body, %while.body
  %cmp24 = icmp eq i32 %2, 2, !dbg !370
  %cond26 = select i1 %cmp24, ptr %unpadded_size, ptr %uncompressed_size, !dbg !371
    #dbg_value(ptr %cond26, !331, !DIExpression(), !372)
  %call28 = call i32 @lzma_vli_decode(ptr noundef nonnull %cond26, ptr noundef nonnull %pos88, ptr noundef %in, ptr noundef nonnull %in_pos, i64 noundef %in_size) #5, !dbg !373
    #dbg_value(i32 %call28, !330, !DIExpression(), !341)
  %cmp29.not = icmp eq i32 %call28, 1, !dbg !374
  br i1 %cmp29.not, label %if.end32, label %out, !dbg !376

if.end32:                                         ; preds = %sw.bb22
    #dbg_value(i32 0, !330, !DIExpression(), !341)
  store i64 0, ptr %pos88, align 8, !dbg !377
  %6 = load i32, ptr %index_hash, align 8, !dbg !378
  %cmp35 = icmp eq i32 %6, 2, !dbg !379
  %7 = load i64, ptr %unpadded_size, align 8, !dbg !380
  br i1 %cmp35, label %if.then37, label %do.body, !dbg !381

if.then37:                                        ; preds = %if.end32
  %8 = add i64 %7, -9223372036854775805, !dbg !382
  %or.cond = icmp ult i64 %8, -9223372036854775800, !dbg !382
  br i1 %or.cond, label %return, label %sw.epilog.sink.split, !dbg !382

do.body:                                          ; preds = %if.end32
  %9 = load i64, ptr %uncompressed_size, align 8, !dbg !385
    #dbg_assign(i1 undef, !231, !DIExpression(), !340, ptr %sizes.i, !DIExpression(), !386)
    #dbg_value(ptr %records, !237, !DIExpression(), !386)
    #dbg_value(i64 %7, !238, !DIExpression(), !386)
    #dbg_value(i64 %9, !239, !DIExpression(), !386)
    #dbg_value(i64 %7, !202, !DIExpression(), !388)
  %add.i.i = add i64 %7, 3, !dbg !390
  %and.i.i = and i64 %add.i.i, -4, !dbg !391
  %10 = load i64, ptr %records, align 8, !dbg !392
  %add.i = add i64 %10, %and.i.i, !dbg !392
  store i64 %add.i, ptr %records, align 8, !dbg !392
  %11 = load i64, ptr %uncompressed_size1.i, align 8, !dbg !393
  %add2.i = add i64 %11, %9, !dbg !393
  store i64 %add2.i, ptr %uncompressed_size1.i, align 8, !dbg !393
  %call3.i = call i32 @lzma_vli_size(i64 noundef %7) #5, !dbg !394
  %call4.i = call i32 @lzma_vli_size(i64 noundef %9) #5, !dbg !395
  %add5.i = add i32 %call4.i, %call3.i, !dbg !396
  %conv.i = zext i32 %add5.i to i64, !dbg !394
  %12 = load <2 x i64>, ptr %count84, align 8, !dbg !397
  %13 = insertelement <2 x i64> <i64 1, i64 poison>, i64 %conv.i, i64 1, !dbg !397
  %14 = add <2 x i64> %12, %13, !dbg !397
  store <2 x i64> %14, ptr %count84, align 8, !dbg !397
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sizes.i) #5, !dbg !398
  store i64 %7, ptr %sizes.i, align 16, !dbg !399, !DIAssignID !400
    #dbg_assign(i64 %7, !231, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !400, ptr %sizes.i, !DIExpression(), !386)
  store i64 %9, ptr %arrayinit.element.i, align 8, !dbg !399, !DIAssignID !401
    #dbg_assign(i64 %9, !231, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !401, ptr %arrayinit.element.i, !DIExpression(), !386)
  call void @lzma_check_update(ptr noundef nonnull %check.i, i32 noundef 10, ptr noundef nonnull %sizes.i, i64 noundef 16) #5, !dbg !402
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sizes.i) #5, !dbg !403
    #dbg_value(i32 0, !335, !DIExpression(), !404)
  %15 = load i64, ptr %blocks54, align 8, !dbg !405
  %16 = load i64, ptr %records, align 8, !dbg !407
  %cmp57 = icmp ult i64 %15, %16, !dbg !408
  br i1 %cmp57, label %return, label %lor.lhs.false59, !dbg !409

lor.lhs.false59:                                  ; preds = %do.body
  %17 = load i64, ptr %uncompressed_size61, align 8, !dbg !410
  %18 = load i64, ptr %uncompressed_size1.i, align 8, !dbg !411
  %cmp64 = icmp ult i64 %17, %18, !dbg !412
  br i1 %cmp64, label %return, label %lor.lhs.false66, !dbg !413

lor.lhs.false66:                                  ; preds = %lor.lhs.false59
  %19 = load i64, ptr %index_list_size, align 8, !dbg !414
  %20 = load i64, ptr %index_list_size86, align 8, !dbg !415
  %cmp70 = icmp ult i64 %19, %20, !dbg !416
  br i1 %cmp70, label %return, label %if.end73, !dbg !417

if.end73:                                         ; preds = %lor.lhs.false66
  %21 = load i64, ptr %remaining74, align 8, !dbg !418
  %dec = add i64 %21, -1, !dbg !418
  store i64 %dec, ptr %remaining74, align 8, !dbg !418
  %cmp75 = icmp eq i64 %dec, 0, !dbg !419
  %cond77 = select i1 %cmp75, i32 4, i32 2, !dbg !418
  br label %sw.epilog.sink.split

sw.bb82:                                          ; preds = %while.body
  %22 = load i64, ptr %count84, align 8, !dbg !420
  %23 = load i64, ptr %index_list_size86, align 8, !dbg !421
    #dbg_value(i64 %22, !193, !DIExpression(), !422)
    #dbg_value(i64 %23, !196, !DIExpression(), !422)
  %call.i = call i32 @lzma_vli_size(i64 noundef %22) #5, !dbg !424
  %add.i260 = add i32 %call.i, 1, !dbg !425
  %conv.i261 = zext i32 %add.i260 to i64, !dbg !426
  %24 = add i64 %23, %conv.i261, !dbg !427
  %add2.i262.neg = sub i64 0, %24, !dbg !427
  %and = and i64 %add2.i262.neg, 3, !dbg !428
  store i64 %and, ptr %pos88, align 8, !dbg !429
  store i32 5, ptr %index_hash, align 8, !dbg !430
  br label %sw.bb90, !dbg !431

sw.bb90:                                          ; preds = %while.body.sw.bb90_crit_edge, %sw.bb82
  %25 = phi i64 [ %.pre, %while.body.sw.bb90_crit_edge ], [ %and, %sw.bb82 ], !dbg !349
  %cmp92.not = icmp eq i64 %25, 0, !dbg !432
  br i1 %cmp92.not, label %if.end104, label %if.then94, !dbg !433

if.then94:                                        ; preds = %sw.bb90
  %dec96 = add i64 %25, -1, !dbg !434
  store i64 %dec96, ptr %pos88, align 8, !dbg !434
  %26 = load i64, ptr %in_pos, align 8, !dbg !436
  %inc97 = add i64 %26, 1, !dbg !436
  store i64 %inc97, ptr %in_pos, align 8, !dbg !436
  %arrayidx98 = getelementptr inbounds i8, ptr %in, i64 %26, !dbg !438
  %27 = load i8, ptr %arrayidx98, align 1, !dbg !438
  %cmp100.not = icmp eq i8 %27, 0, !dbg !439
  br i1 %cmp100.not, label %sw.epilog, label %return, !dbg !440

if.end104:                                        ; preds = %sw.bb90
  %28 = load i64, ptr %blocks54, align 8, !dbg !441
  %29 = load i64, ptr %records, align 8, !dbg !443
  %cmp109.not = icmp eq i64 %28, %29, !dbg !444
  br i1 %cmp109.not, label %lor.lhs.false111, label %return, !dbg !445

lor.lhs.false111:                                 ; preds = %if.end104
  %30 = load i64, ptr %uncompressed_size61, align 8, !dbg !446
  %31 = load i64, ptr %uncompressed_size1.i, align 8, !dbg !447
  %cmp116.not = icmp eq i64 %30, %31, !dbg !448
  br i1 %cmp116.not, label %lor.lhs.false118, label %return, !dbg !449

lor.lhs.false118:                                 ; preds = %lor.lhs.false111
  %32 = load i64, ptr %index_list_size, align 8, !dbg !450
  %33 = load i64, ptr %index_list_size86, align 8, !dbg !451
  %cmp123.not = icmp eq i64 %32, %33, !dbg !452
  br i1 %cmp123.not, label %if.end126, label %return, !dbg !453

if.end126:                                        ; preds = %lor.lhs.false118
  %check = getelementptr inbounds i8, ptr %index_hash, i64 40, !dbg !454
  call void @lzma_check_finish(ptr noundef nonnull %check, i32 noundef 10) #5, !dbg !455
  call void @lzma_check_finish(ptr noundef nonnull %check.i, i32 noundef 10) #5, !dbg !456
  %call136 = call i32 @lzma_check_size(i32 noundef 10) #5, !dbg !457
  %conv137 = zext i32 %call136 to i64, !dbg !457
  %bcmp = call i32 @bcmp(ptr nonnull %check, ptr nonnull %check.i, i64 %conv137), !dbg !459
  %cmp139.not = icmp eq i32 %bcmp, 0, !dbg !460
  br i1 %cmp139.not, label %if.end142, label %return, !dbg !461

if.end142:                                        ; preds = %if.end126
  %add.ptr = getelementptr inbounds i8, ptr %in, i64 %0, !dbg !462
  %34 = load i64, ptr %in_pos, align 8, !dbg !463
  %sub143 = sub i64 %34, %0, !dbg !464
  %crc32 = getelementptr inbounds i8, ptr %index_hash, i64 312, !dbg !465
  %35 = load i32, ptr %crc32, align 8, !dbg !465
  %call144 = call i32 @lzma_crc32(ptr noundef %add.ptr, i64 noundef %sub143, i32 noundef %35) #5, !dbg !466
  store i32 %call144, ptr %crc32, align 8, !dbg !467
  store i32 6, ptr %index_hash, align 8, !dbg !468
  br label %sw.bb147, !dbg !469

sw.bb147:                                         ; preds = %while.body, %if.end142
  %crc32153 = getelementptr inbounds i8, ptr %index_hash, i64 312, !dbg !470
  br label %do.body148, !dbg !473

do.body148:                                       ; preds = %do.cond163, %sw.bb147
  %36 = load i64, ptr %in_pos, align 8, !dbg !474
  %cmp149 = icmp eq i64 %36, %in_size, !dbg !476
  br i1 %cmp149, label %return, label %if.end152, !dbg !477

if.end152:                                        ; preds = %do.body148
  %37 = load i32, ptr %crc32153, align 8, !dbg !470
  %38 = load i64, ptr %pos88, align 8, !dbg !478
  %.tr = trunc i64 %38 to i32, !dbg !479
  %sh_prom = shl i32 %.tr, 3, !dbg !479
  %shr = lshr i32 %37, %sh_prom, !dbg !479
  %inc156 = add i64 %36, 1, !dbg !480
  store i64 %inc156, ptr %in_pos, align 8, !dbg !480
  %arrayidx157 = getelementptr inbounds i8, ptr %in, i64 %36, !dbg !481
  %39 = load i8, ptr %arrayidx157, align 1, !dbg !481
  %40 = trunc i32 %shr to i8, !dbg !482
  %cmp159.not = icmp eq i8 %39, %40, !dbg !482
  br i1 %cmp159.not, label %do.cond163, label %return, !dbg !483

do.cond163:                                       ; preds = %if.end152
  %41 = load i64, ptr %pos88, align 8, !dbg !484
  %inc165 = add i64 %41, 1, !dbg !484
  store i64 %inc165, ptr %pos88, align 8, !dbg !484
  %cmp166 = icmp ult i64 %inc165, 4, !dbg !485
  br i1 %cmp166, label %do.body148, label %return, !dbg !486, !llvm.loop !487

sw.epilog.sink.split:                             ; preds = %if.then37, %if.end73, %sw.bb, %if.end16
  %storemerge.sink = phi i32 [ %cond, %if.end16 ], [ 1, %sw.bb ], [ %cond77, %if.end73 ], [ 3, %if.then37 ]
  store i32 %storemerge.sink, ptr %index_hash, align 8, !dbg !489
  br label %sw.epilog, !dbg !490

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.then94
    #dbg_value(i32 0, !330, !DIExpression(), !341)
  %42 = load i64, ptr %in_pos, align 8, !dbg !490
  %cmp1 = icmp ult i64 %42, %in_size, !dbg !491
  br i1 %cmp1, label %while.body, label %out, !dbg !346, !llvm.loop !492

out:                                              ; preds = %sw.bb7, %sw.epilog, %sw.bb22
  %ret.3.ph = phi i32 [ %call, %sw.bb7 ], [ 0, %sw.epilog ], [ %call28, %sw.bb22 ]
  %.pre275 = load i64, ptr %in_pos, align 8, !dbg !494
    #dbg_value(i32 %ret.3.ph, !330, !DIExpression(), !341)
    #dbg_label(!339, !495)
  %add.ptr169 = getelementptr inbounds i8, ptr %in, i64 %0, !dbg !496
  %sub170 = sub i64 %.pre275, %0, !dbg !497
  %crc32171 = getelementptr inbounds i8, ptr %index_hash, i64 312, !dbg !498
  %43 = load i32, ptr %crc32171, align 8, !dbg !498
  %call172 = call i32 @lzma_crc32(ptr noundef %add.ptr169, i64 noundef %sub170, i32 noundef %43) #5, !dbg !499
  store i32 %call172, ptr %crc32171, align 8, !dbg !500
  br label %return, !dbg !501

return:                                           ; preds = %do.body, %lor.lhs.false59, %lor.lhs.false66, %if.then37, %sw.bb, %if.end11, %if.then94, %while.body, %do.body148, %if.end152, %do.cond163, %out, %lor.lhs.false118, %lor.lhs.false111, %if.end104, %if.end126, %entry
  %retval.6 = phi i32 [ 10, %entry ], [ %ret.3.ph, %out ], [ 9, %lor.lhs.false118 ], [ 9, %lor.lhs.false111 ], [ 9, %if.end104 ], [ 9, %if.end126 ], [ 1, %do.cond163 ], [ 9, %if.end152 ], [ 0, %do.body148 ], [ 9, %do.body ], [ 9, %lor.lhs.false59 ], [ 9, %lor.lhs.false66 ], [ 9, %if.then37 ], [ 11, %while.body ], [ 9, %if.then94 ], [ 9, %if.end11 ], [ 9, %sw.bb ], !dbg !341
  ret i32 %retval.6, !dbg !502
}

declare !dbg !503 i32 @lzma_vli_decode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !506 void @lzma_check_finish(ptr noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !507 i32 @lzma_check_size(i32 noundef) local_unnamed_addr #1

declare !dbg !510 i32 @lzma_crc32(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !513 i32 @lzma_vli_size(i64 noundef) local_unnamed_addr #1

declare !dbg !516 void @lzma_check_update(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

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

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!101, !102, !103, !104, !105, !106, !107}
!llvm.ident = !{!108}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !97, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "liblzma/common/index_hash.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "5b32f3be9e6ab3427cac2d3fabd9ce41")
!2 = !{!3, !75, !82}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !4, file: !1, line: 38, baseType: !41, size: 32, elements: !67)
!4 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_index_hash_s", file: !1, line: 37, size: 2560, elements: !5)
!5 = !{!6, !7, !59, !60, !61, !62, !63, !66}
!6 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !4, file: !1, line: 46, baseType: !3, size: 32)
!7 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4, file: !1, line: 49, baseType: !8, size: 1088, offset: 64)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_index_hash_info", file: !1, line: 34, baseType: !9)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 18, size: 1088, elements: !10)
!10 = !{!11, !19, !20, !21, !22}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_size", scope: !9, file: !1, line: 20, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !13, line: 63, baseType: !14)
!13 = !DIFile(filename: "liblzma/api/lzma/vli.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !15, line: 27, baseType: !16)
!15 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !17, line: 45, baseType: !18)
!17 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!18 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_size", scope: !9, file: !1, line: 23, baseType: !12, size: 64, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !9, file: !1, line: 26, baseType: !12, size: 64, offset: 128)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "index_list_size", scope: !9, file: !1, line: 29, baseType: !12, size: 64, offset: 192)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !9, file: !1, line: 32, baseType: !23, size: 832, offset: 256)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check_state", file: !24, line: 56, baseType: !25)
!24 = !DIFile(filename: "liblzma/check/check.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "938220df6e0ab33115ef85b0d8c70c5b")
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 34, size: 832, elements: !26)
!26 = !{!27, !48}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !25, file: !24, line: 40, baseType: !28, size: 512)
!28 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !25, file: !24, line: 36, size: 512, elements: !29)
!29 = !{!30, !37, !44}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "u8", scope: !28, file: !24, line: 37, baseType: !31, size: 512)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 512, elements: !35)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !15, line: 24, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !17, line: 38, baseType: !34)
!34 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!35 = !{!36}
!36 = !DISubrange(count: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "u32", scope: !28, file: !24, line: 38, baseType: !38, size: 512)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 512, elements: !42)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !15, line: 26, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !17, line: 42, baseType: !41)
!41 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!42 = !{!43}
!43 = !DISubrange(count: 16)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !28, file: !24, line: 39, baseType: !45, size: 512)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 512, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 8)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !25, file: !24, line: 54, baseType: !49, size: 320, offset: 512)
!49 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !25, file: !24, line: 43, size: 320, elements: !50)
!50 = !{!51, !52, !53}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "crc32", scope: !49, file: !24, line: 44, baseType: !39, size: 32)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "crc64", scope: !49, file: !24, line: 45, baseType: !14, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "sha256", scope: !49, file: !24, line: 53, baseType: !54, size: 320)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !49, file: !24, line: 47, size: 320, elements: !55)
!55 = !{!56, !58}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !54, file: !24, line: 49, baseType: !57, size: 256)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 256, elements: !46)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !54, file: !24, line: 52, baseType: !14, size: 64, offset: 256)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "records", scope: !4, file: !1, line: 52, baseType: !8, size: 1088, offset: 1152)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "remaining", scope: !4, file: !1, line: 55, baseType: !12, size: 64, offset: 2240)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "unpadded_size", scope: !4, file: !1, line: 58, baseType: !12, size: 64, offset: 2304)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_size", scope: !4, file: !1, line: 61, baseType: !12, size: 64, offset: 2368)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4, file: !1, line: 65, baseType: !64, size: 64, offset: 2432)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !65, line: 18, baseType: !18)
!65 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!66 = !DIDerivedType(tag: DW_TAG_member, name: "crc32", scope: !4, file: !1, line: 68, baseType: !39, size: 32, offset: 2496)
!67 = !{!68, !69, !70, !71, !72, !73, !74}
!68 = !DIEnumerator(name: "SEQ_BLOCK", value: 0)
!69 = !DIEnumerator(name: "SEQ_COUNT", value: 1)
!70 = !DIEnumerator(name: "SEQ_UNPADDED", value: 2)
!71 = !DIEnumerator(name: "SEQ_UNCOMPRESSED", value: 3)
!72 = !DIEnumerator(name: "SEQ_PADDING_INIT", value: 4)
!73 = !DIEnumerator(name: "SEQ_PADDING", value: 5)
!74 = !DIEnumerator(name: "SEQ_CRC32", value: 6)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !76, line: 27, baseType: !41, size: 32, elements: !77)
!76 = !DIFile(filename: "liblzma/api/lzma/check.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "b07c3297e2bcc14bb477793d08325ee3")
!77 = !{!78, !79, !80, !81}
!78 = !DIEnumerator(name: "LZMA_CHECK_NONE", value: 0)
!79 = !DIEnumerator(name: "LZMA_CHECK_CRC32", value: 1)
!80 = !DIEnumerator(name: "LZMA_CHECK_CRC64", value: 4)
!81 = !DIEnumerator(name: "LZMA_CHECK_SHA256", value: 10)
!82 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !83, line: 57, baseType: !41, size: 32, elements: !84)
!83 = !DIFile(filename: "liblzma/api/lzma/base.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "81a3070447cc5b61b56cfbed076853db")
!84 = !{!85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96}
!85 = !DIEnumerator(name: "LZMA_OK", value: 0)
!86 = !DIEnumerator(name: "LZMA_STREAM_END", value: 1)
!87 = !DIEnumerator(name: "LZMA_NO_CHECK", value: 2)
!88 = !DIEnumerator(name: "LZMA_UNSUPPORTED_CHECK", value: 3)
!89 = !DIEnumerator(name: "LZMA_GET_CHECK", value: 4)
!90 = !DIEnumerator(name: "LZMA_MEM_ERROR", value: 5)
!91 = !DIEnumerator(name: "LZMA_MEMLIMIT_ERROR", value: 6)
!92 = !DIEnumerator(name: "LZMA_FORMAT_ERROR", value: 7)
!93 = !DIEnumerator(name: "LZMA_OPTIONS_ERROR", value: 8)
!94 = !DIEnumerator(name: "LZMA_DATA_ERROR", value: 9)
!95 = !DIEnumerator(name: "LZMA_BUF_ERROR", value: 10)
!96 = !DIEnumerator(name: "LZMA_PROG_ERROR", value: 11)
!97 = !{!98, !99}
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!101 = !{i32 7, !"Dwarf Version", i32 5}
!102 = !{i32 2, !"Debug Info Version", i32 3}
!103 = !{i32 1, !"wchar_size", i32 4}
!104 = !{i32 8, !"PIC Level", i32 2}
!105 = !{i32 7, !"PIE Level", i32 2}
!106 = !{i32 7, !"uwtable", i32 2}
!107 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!108 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!109 = distinct !DISubprogram(name: "lzma_index_hash_init", scope: !1, file: !1, line: 73, type: !110, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !128)
!110 = !DISubroutineType(types: !111)
!111 = !{!112, !112, !115}
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_index_hash", file: !114, line: 25, baseType: !4)
!114 = !DIFile(filename: "liblzma/api/lzma/index_hash.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "93f41ec399d5b72fa726dbb2f572cbec")
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !83, line: 403, baseType: !117)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !83, line: 341, size: 192, elements: !118)
!118 = !{!119, !123, !127}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !117, file: !83, line: 376, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DISubroutineType(types: !122)
!122 = !{!98, !98, !64, !64}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !117, file: !83, line: 390, baseType: !124, size: 64, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DISubroutineType(types: !126)
!126 = !{null, !98, !98}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !117, file: !83, line: 401, baseType: !98, size: 64, offset: 128)
!128 = !{!129, !130}
!129 = !DILocalVariable(name: "index_hash", arg: 1, scope: !109, file: !1, line: 73, type: !112)
!130 = !DILocalVariable(name: "allocator", arg: 2, scope: !109, file: !1, line: 73, type: !115)
!131 = !DILocation(line: 0, scope: !109)
!132 = !DILocation(line: 75, column: 17, scope: !133)
!133 = distinct !DILexicalBlock(scope: !109, file: !1, line: 75, column: 6)
!134 = !DILocation(line: 75, column: 6, scope: !109)
!135 = !DILocation(line: 76, column: 16, scope: !136)
!136 = distinct !DILexicalBlock(scope: !133, file: !1, line: 75, column: 26)
!137 = !DILocation(line: 77, column: 18, scope: !138)
!138 = distinct !DILexicalBlock(scope: !136, file: !1, line: 77, column: 7)
!139 = !DILocation(line: 77, column: 7, scope: !136)
!140 = !DILocation(line: 81, column: 23, scope: !109)
!141 = !DILocation(line: 82, column: 14, scope: !109)
!142 = !DILocation(line: 86, column: 14, scope: !109)
!143 = !DILocation(line: 90, column: 14, scope: !109)
!144 = !DILocation(line: 96, column: 44, scope: !109)
!145 = !DILocation(line: 82, column: 33, scope: !109)
!146 = !DILocation(line: 86, column: 34, scope: !109)
!147 = !DILocation(line: 90, column: 28, scope: !109)
!148 = !DILocation(line: 96, column: 8, scope: !109)
!149 = !DILocation(line: 97, column: 45, scope: !109)
!150 = !DILocation(line: 97, column: 8, scope: !109)
!151 = !DILocation(line: 99, column: 2, scope: !109)
!152 = !DILocation(line: 100, column: 1, scope: !109)
!153 = !DISubprogram(name: "lzma_alloc", scope: !154, file: !154, line: 211, type: !155, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!154 = !DIFile(filename: "liblzma/common/common.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!155 = !DISubroutineType(types: !156)
!156 = !{!98, !64, !115}
!157 = !DISubprogram(name: "lzma_check_init", scope: !24, file: !24, line: 75, type: !158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!158 = !DISubroutineType(types: !159)
!159 = !{null, !160, !161}
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !76, line: 55, baseType: !75)
!162 = distinct !DISubprogram(name: "lzma_index_hash_end", scope: !1, file: !1, line: 104, type: !163, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !165)
!163 = !DISubroutineType(types: !164)
!164 = !{null, !112, !115}
!165 = !{!166, !167}
!166 = !DILocalVariable(name: "index_hash", arg: 1, scope: !162, file: !1, line: 104, type: !112)
!167 = !DILocalVariable(name: "allocator", arg: 2, scope: !162, file: !1, line: 104, type: !115)
!168 = !DILocation(line: 0, scope: !162)
!169 = !DILocation(line: 106, column: 2, scope: !162)
!170 = !DILocation(line: 107, column: 2, scope: !162)
!171 = !DISubprogram(name: "lzma_free", scope: !154, file: !154, line: 215, type: !172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!172 = !DISubroutineType(types: !173)
!173 = !{null, !98, !115}
!174 = distinct !DISubprogram(name: "lzma_index_hash_size", scope: !1, file: !1, line: 112, type: !175, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !179)
!175 = !DISubroutineType(types: !176)
!176 = !{!12, !177}
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!179 = !{!180}
!180 = !DILocalVariable(name: "index_hash", arg: 1, scope: !174, file: !1, line: 112, type: !177)
!181 = !DILocation(line: 0, scope: !174)
!182 = !DILocation(line: 117, column: 39, scope: !174)
!183 = !DILocation(line: 118, column: 23, scope: !174)
!184 = !DILocalVariable(name: "count", arg: 1, scope: !185, file: !186, line: 57, type: !12)
!185 = distinct !DISubprogram(name: "index_size", scope: !186, file: !186, line: 57, type: !187, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !189)
!186 = !DIFile(filename: "liblzma/common/index.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "8c1da33cfb6445c1ed40367774c91b69")
!187 = !DISubroutineType(types: !188)
!188 = !{!12, !12, !12}
!189 = !{!184, !190}
!190 = !DILocalVariable(name: "index_list_size", arg: 2, scope: !185, file: !186, line: 57, type: !12)
!191 = !DILocation(line: 0, scope: !185, inlinedAt: !192)
!192 = distinct !DILocation(line: 117, column: 9, scope: !174)
!193 = !DILocalVariable(name: "count", arg: 1, scope: !194, file: !186, line: 48, type: !12)
!194 = distinct !DISubprogram(name: "index_size_unpadded", scope: !186, file: !186, line: 48, type: !187, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !195)
!195 = !{!193, !196}
!196 = !DILocalVariable(name: "index_list_size", arg: 2, scope: !194, file: !186, line: 48, type: !12)
!197 = !DILocation(line: 0, scope: !194, inlinedAt: !198)
!198 = distinct !DILocation(line: 59, column: 19, scope: !185, inlinedAt: !192)
!199 = !DILocation(line: 51, column: 13, scope: !194, inlinedAt: !198)
!200 = !DILocation(line: 51, column: 11, scope: !194, inlinedAt: !198)
!201 = !DILocation(line: 51, column: 9, scope: !194, inlinedAt: !198)
!202 = !DILocalVariable(name: "vli", arg: 1, scope: !203, file: !186, line: 39, type: !12)
!203 = distinct !DISubprogram(name: "vli_ceil4", scope: !186, file: !186, line: 39, type: !204, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !206)
!204 = !DISubroutineType(types: !205)
!205 = !{!12, !12}
!206 = !{!202}
!207 = !DILocation(line: 0, scope: !203, inlinedAt: !208)
!208 = distinct !DILocation(line: 59, column: 9, scope: !185, inlinedAt: !192)
!209 = !DILocation(line: 51, column: 52, scope: !194, inlinedAt: !198)
!210 = !DILocation(line: 42, column: 14, scope: !203, inlinedAt: !208)
!211 = !DILocation(line: 42, column: 19, scope: !203, inlinedAt: !208)
!212 = !DILocation(line: 117, column: 2, scope: !174)
!213 = distinct !DISubprogram(name: "lzma_index_hash_append", scope: !1, file: !1, line: 142, type: !214, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!214 = !DISubroutineType(types: !215)
!215 = !{!216, !112, !12, !12}
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !83, line: 237, baseType: !82)
!217 = !{!218, !219, !220, !221}
!218 = !DILocalVariable(name: "index_hash", arg: 1, scope: !213, file: !1, line: 142, type: !112)
!219 = !DILocalVariable(name: "unpadded_size", arg: 2, scope: !213, file: !1, line: 142, type: !12)
!220 = !DILocalVariable(name: "uncompressed_size", arg: 3, scope: !213, file: !1, line: 143, type: !12)
!221 = !DILocalVariable(name: "ret_", scope: !222, file: !1, line: 153, type: !223)
!222 = distinct !DILexicalBlock(scope: !213, file: !1, line: 153, column: 2)
!223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !216)
!224 = distinct !DIAssignID()
!225 = !DILocation(line: 0, scope: !213)
!226 = !DILocation(line: 146, column: 18, scope: !227)
!227 = distinct !DILexicalBlock(scope: !213, file: !1, line: 146, column: 6)
!228 = !DILocation(line: 146, column: 27, scope: !227)
!229 = !DILocation(line: 147, column: 4, scope: !227)
!230 = !DILocation(line: 153, column: 2, scope: !222)
!231 = !DILocalVariable(name: "sizes", scope: !232, file: !1, line: 133, type: !240)
!232 = distinct !DISubprogram(name: "hash_append", scope: !1, file: !1, line: 124, type: !233, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !236)
!233 = !DISubroutineType(types: !234)
!234 = !{!216, !235, !12, !12}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!236 = !{!237, !238, !239, !231}
!237 = !DILocalVariable(name: "info", arg: 1, scope: !232, file: !1, line: 124, type: !235)
!238 = !DILocalVariable(name: "unpadded_size", arg: 2, scope: !232, file: !1, line: 124, type: !12)
!239 = !DILocalVariable(name: "uncompressed_size", arg: 3, scope: !232, file: !1, line: 125, type: !12)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 128, elements: !242)
!241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!242 = !{!243}
!243 = !DISubrange(count: 2)
!244 = !DILocation(line: 0, scope: !232, inlinedAt: !245)
!245 = distinct !DILocation(line: 153, column: 2, scope: !222)
!246 = !DILocation(line: 0, scope: !203, inlinedAt: !247)
!247 = distinct !DILocation(line: 127, column: 23, scope: !232, inlinedAt: !245)
!248 = !DILocation(line: 42, column: 14, scope: !203, inlinedAt: !247)
!249 = !DILocation(line: 42, column: 19, scope: !203, inlinedAt: !247)
!250 = !DILocation(line: 127, column: 20, scope: !232, inlinedAt: !245)
!251 = !DILocation(line: 128, column: 8, scope: !232, inlinedAt: !245)
!252 = !DILocation(line: 128, column: 26, scope: !232, inlinedAt: !245)
!253 = !DILocation(line: 129, column: 27, scope: !232, inlinedAt: !245)
!254 = !DILocation(line: 130, column: 6, scope: !232, inlinedAt: !245)
!255 = !DILocation(line: 130, column: 4, scope: !232, inlinedAt: !245)
!256 = !DILocation(line: 129, column: 8, scope: !232, inlinedAt: !245)
!257 = !DILocation(line: 131, column: 10, scope: !232, inlinedAt: !245)
!258 = !DILocation(line: 131, column: 2, scope: !232, inlinedAt: !245)
!259 = !DILocation(line: 133, column: 2, scope: !232, inlinedAt: !245)
!260 = !DILocation(line: 133, column: 28, scope: !232, inlinedAt: !245)
!261 = distinct !DIAssignID()
!262 = distinct !DIAssignID()
!263 = !DILocation(line: 134, column: 27, scope: !232, inlinedAt: !245)
!264 = !DILocation(line: 134, column: 2, scope: !232, inlinedAt: !245)
!265 = !DILocation(line: 138, column: 1, scope: !232, inlinedAt: !245)
!266 = !DILocation(line: 0, scope: !222)
!267 = !DILocation(line: 157, column: 25, scope: !268)
!268 = distinct !DILexicalBlock(scope: !213, file: !1, line: 157, column: 6)
!269 = !DILocation(line: 157, column: 37, scope: !268)
!270 = !DILocation(line: 158, column: 4, scope: !268)
!271 = !DILocation(line: 158, column: 26, scope: !268)
!272 = !DILocation(line: 158, column: 44, scope: !268)
!273 = !DILocation(line: 159, column: 4, scope: !268)
!274 = !DILocation(line: 159, column: 37, scope: !268)
!275 = !DILocation(line: 160, column: 25, scope: !268)
!276 = !DILocation(line: 0, scope: !185, inlinedAt: !277)
!277 = distinct !DILocation(line: 159, column: 7, scope: !268)
!278 = !DILocation(line: 0, scope: !194, inlinedAt: !279)
!279 = distinct !DILocation(line: 59, column: 19, scope: !185, inlinedAt: !277)
!280 = !DILocation(line: 51, column: 13, scope: !194, inlinedAt: !279)
!281 = !DILocation(line: 51, column: 11, scope: !194, inlinedAt: !279)
!282 = !DILocation(line: 51, column: 9, scope: !194, inlinedAt: !279)
!283 = !DILocation(line: 0, scope: !203, inlinedAt: !284)
!284 = distinct !DILocation(line: 59, column: 9, scope: !185, inlinedAt: !277)
!285 = !DILocation(line: 51, column: 52, scope: !194, inlinedAt: !279)
!286 = !DILocation(line: 42, column: 14, scope: !203, inlinedAt: !284)
!287 = !DILocation(line: 42, column: 19, scope: !203, inlinedAt: !284)
!288 = !DILocation(line: 161, column: 5, scope: !268)
!289 = !DILocation(line: 162, column: 4, scope: !268)
!290 = !DILocation(line: 162, column: 44, scope: !268)
!291 = !DILocation(line: 163, column: 25, scope: !268)
!292 = !DILocation(line: 164, column: 25, scope: !268)
!293 = !DILocalVariable(name: "blocks_size", arg: 1, scope: !294, file: !186, line: 65, type: !12)
!294 = distinct !DISubprogram(name: "index_stream_size", scope: !186, file: !186, line: 65, type: !295, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !297)
!295 = !DISubroutineType(types: !296)
!296 = !{!12, !12, !12, !12}
!297 = !{!293, !298, !299}
!298 = !DILocalVariable(name: "count", arg: 2, scope: !294, file: !186, line: 66, type: !12)
!299 = !DILocalVariable(name: "index_list_size", arg: 3, scope: !294, file: !186, line: 66, type: !12)
!300 = !DILocation(line: 0, scope: !294, inlinedAt: !301)
!301 = distinct !DILocation(line: 162, column: 7, scope: !268)
!302 = !DILocation(line: 0, scope: !185, inlinedAt: !303)
!303 = distinct !DILocation(line: 69, column: 6, scope: !294, inlinedAt: !301)
!304 = !DILocation(line: 0, scope: !194, inlinedAt: !305)
!305 = distinct !DILocation(line: 59, column: 19, scope: !185, inlinedAt: !303)
!306 = !DILocation(line: 51, column: 13, scope: !194, inlinedAt: !305)
!307 = !DILocation(line: 51, column: 11, scope: !194, inlinedAt: !305)
!308 = !DILocation(line: 51, column: 9, scope: !194, inlinedAt: !305)
!309 = !DILocation(line: 0, scope: !203, inlinedAt: !310)
!310 = distinct !DILocation(line: 59, column: 9, scope: !185, inlinedAt: !303)
!311 = !DILocation(line: 51, column: 52, scope: !194, inlinedAt: !305)
!312 = !DILocation(line: 42, column: 14, scope: !203, inlinedAt: !310)
!313 = !DILocation(line: 42, column: 19, scope: !203, inlinedAt: !310)
!314 = !DILocation(line: 69, column: 4, scope: !294, inlinedAt: !301)
!315 = !DILocation(line: 70, column: 4, scope: !294, inlinedAt: !301)
!316 = !DILocation(line: 165, column: 5, scope: !268)
!317 = !DILocation(line: 157, column: 6, scope: !213)
!318 = !DILocation(line: 169, column: 1, scope: !213)
!319 = distinct !DISubprogram(name: "lzma_index_hash_decode", scope: !1, file: !1, line: 173, type: !320, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !323)
!320 = !DISubroutineType(types: !321)
!321 = !{!216, !112, !99, !322, !64}
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!323 = !{!324, !325, !326, !327, !328, !330, !331, !335, !339}
!324 = !DILocalVariable(name: "index_hash", arg: 1, scope: !319, file: !1, line: 173, type: !112)
!325 = !DILocalVariable(name: "in", arg: 2, scope: !319, file: !1, line: 173, type: !99)
!326 = !DILocalVariable(name: "in_pos", arg: 3, scope: !319, file: !1, line: 174, type: !322)
!327 = !DILocalVariable(name: "in_size", arg: 4, scope: !319, file: !1, line: 174, type: !64)
!328 = !DILocalVariable(name: "in_start", scope: !319, file: !1, line: 185, type: !329)
!329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!330 = !DILocalVariable(name: "ret", scope: !319, file: !1, line: 186, type: !216)
!331 = !DILocalVariable(name: "size", scope: !332, file: !1, line: 219, type: !334)
!332 = distinct !DILexicalBlock(scope: !333, file: !1, line: 218, column: 25)
!333 = distinct !DILexicalBlock(scope: !319, file: !1, line: 189, column: 32)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!335 = !DILocalVariable(name: "ret_", scope: !336, file: !1, line: 240, type: !223)
!336 = distinct !DILexicalBlock(scope: !337, file: !1, line: 240, column: 4)
!337 = distinct !DILexicalBlock(scope: !338, file: !1, line: 238, column: 10)
!338 = distinct !DILexicalBlock(scope: !332, file: !1, line: 231, column: 7)
!339 = !DILabel(scope: !319, name: "out", file: !1, line: 326)
!340 = distinct !DIAssignID()
!341 = !DILocation(line: 0, scope: !319)
!342 = !DILocation(line: 179, column: 6, scope: !343)
!343 = distinct !DILexicalBlock(scope: !319, file: !1, line: 179, column: 6)
!344 = !DILocation(line: 179, column: 14, scope: !343)
!345 = !DILocation(line: 179, column: 6, scope: !319)
!346 = !DILocation(line: 188, column: 2, scope: !319)
!347 = !DILocation(line: 189, column: 22, scope: !319)
!348 = !DILocation(line: 189, column: 2, scope: !319)
!349 = !DILocation(line: 275, column: 19, scope: !350)
!350 = distinct !DILexicalBlock(scope: !333, file: !1, line: 275, column: 7)
!351 = !DILocation(line: 192, column: 19, scope: !352)
!352 = distinct !DILexicalBlock(scope: !333, file: !1, line: 192, column: 7)
!353 = !DILocation(line: 192, column: 7, scope: !352)
!354 = !DILocation(line: 192, column: 23, scope: !352)
!355 = !DILocation(line: 192, column: 7, scope: !333)
!356 = !DILocation(line: 199, column: 9, scope: !357)
!357 = distinct !DILexicalBlock(scope: !333, file: !1, line: 198, column: 18)
!358 = !DILocation(line: 201, column: 11, scope: !359)
!359 = distinct !DILexicalBlock(scope: !357, file: !1, line: 201, column: 7)
!360 = !DILocation(line: 201, column: 7, scope: !357)
!361 = !DILocation(line: 205, column: 19, scope: !362)
!362 = distinct !DILexicalBlock(scope: !357, file: !1, line: 205, column: 7)
!363 = !DILocation(line: 205, column: 51, scope: !362)
!364 = !DILocation(line: 205, column: 29, scope: !362)
!365 = !DILocation(line: 205, column: 7, scope: !357)
!366 = !DILocation(line: 209, column: 19, scope: !357)
!367 = !DILocation(line: 212, column: 48, scope: !357)
!368 = !DILocation(line: 212, column: 26, scope: !357)
!369 = !DILocation(line: 214, column: 3, scope: !357)
!370 = !DILocation(line: 219, column: 41, scope: !332)
!371 = !DILocation(line: 219, column: 20, scope: !332)
!372 = !DILocation(line: 0, scope: !332)
!373 = !DILocation(line: 223, column: 9, scope: !332)
!374 = !DILocation(line: 225, column: 11, scope: !375)
!375 = distinct !DILexicalBlock(scope: !332, file: !1, line: 225, column: 7)
!376 = !DILocation(line: 225, column: 7, scope: !332)
!377 = !DILocation(line: 229, column: 19, scope: !332)
!378 = !DILocation(line: 231, column: 19, scope: !338)
!379 = !DILocation(line: 231, column: 28, scope: !338)
!380 = !DILocation(line: 0, scope: !338)
!381 = !DILocation(line: 231, column: 7, scope: !332)
!382 = !DILocation(line: 233, column: 6, scope: !383)
!383 = distinct !DILexicalBlock(scope: !384, file: !1, line: 232, column: 8)
!384 = distinct !DILexicalBlock(scope: !338, file: !1, line: 231, column: 45)
!385 = !DILocation(line: 240, column: 4, scope: !336)
!386 = !DILocation(line: 0, scope: !232, inlinedAt: !387)
!387 = distinct !DILocation(line: 240, column: 4, scope: !336)
!388 = !DILocation(line: 0, scope: !203, inlinedAt: !389)
!389 = distinct !DILocation(line: 127, column: 23, scope: !232, inlinedAt: !387)
!390 = !DILocation(line: 42, column: 14, scope: !203, inlinedAt: !389)
!391 = !DILocation(line: 42, column: 19, scope: !203, inlinedAt: !389)
!392 = !DILocation(line: 127, column: 20, scope: !232, inlinedAt: !387)
!393 = !DILocation(line: 128, column: 26, scope: !232, inlinedAt: !387)
!394 = !DILocation(line: 129, column: 27, scope: !232, inlinedAt: !387)
!395 = !DILocation(line: 130, column: 6, scope: !232, inlinedAt: !387)
!396 = !DILocation(line: 130, column: 4, scope: !232, inlinedAt: !387)
!397 = !DILocation(line: 131, column: 2, scope: !232, inlinedAt: !387)
!398 = !DILocation(line: 133, column: 2, scope: !232, inlinedAt: !387)
!399 = !DILocation(line: 133, column: 28, scope: !232, inlinedAt: !387)
!400 = distinct !DIAssignID()
!401 = distinct !DIAssignID()
!402 = !DILocation(line: 134, column: 2, scope: !232, inlinedAt: !387)
!403 = !DILocation(line: 138, column: 1, scope: !232, inlinedAt: !387)
!404 = !DILocation(line: 0, scope: !336)
!405 = !DILocation(line: 250, column: 27, scope: !406)
!406 = distinct !DILexicalBlock(scope: !337, file: !1, line: 250, column: 8)
!407 = !DILocation(line: 251, column: 28, scope: !406)
!408 = !DILocation(line: 251, column: 6, scope: !406)
!409 = !DILocation(line: 252, column: 6, scope: !406)
!410 = !DILocation(line: 252, column: 28, scope: !406)
!411 = !DILocation(line: 253, column: 28, scope: !406)
!412 = !DILocation(line: 253, column: 6, scope: !406)
!413 = !DILocation(line: 254, column: 6, scope: !406)
!414 = !DILocation(line: 254, column: 28, scope: !406)
!415 = !DILocation(line: 255, column: 28, scope: !406)
!416 = !DILocation(line: 255, column: 6, scope: !406)
!417 = !DILocation(line: 250, column: 8, scope: !337)
!418 = !DILocation(line: 259, column: 27, scope: !337)
!419 = !DILocation(line: 259, column: 51, scope: !337)
!420 = !DILocation(line: 268, column: 25, scope: !333)
!421 = !DILocation(line: 269, column: 25, scope: !333)
!422 = !DILocation(line: 0, scope: !194, inlinedAt: !423)
!423 = distinct !DILocation(line: 267, column: 38, scope: !333)
!424 = !DILocation(line: 51, column: 13, scope: !194, inlinedAt: !423)
!425 = !DILocation(line: 51, column: 11, scope: !194, inlinedAt: !423)
!426 = !DILocation(line: 51, column: 9, scope: !194, inlinedAt: !423)
!427 = !DILocation(line: 51, column: 52, scope: !194, inlinedAt: !423)
!428 = !DILocation(line: 269, column: 43, scope: !333)
!429 = !DILocation(line: 267, column: 19, scope: !333)
!430 = !DILocation(line: 270, column: 24, scope: !333)
!431 = !DILocation(line: 270, column: 3, scope: !333)
!432 = !DILocation(line: 275, column: 23, scope: !350)
!433 = !DILocation(line: 275, column: 7, scope: !333)
!434 = !DILocation(line: 276, column: 4, scope: !435)
!435 = distinct !DILexicalBlock(scope: !350, file: !1, line: 275, column: 28)
!436 = !DILocation(line: 277, column: 20, scope: !437)
!437 = distinct !DILexicalBlock(scope: !435, file: !1, line: 277, column: 8)
!438 = !DILocation(line: 277, column: 8, scope: !437)
!439 = !DILocation(line: 277, column: 24, scope: !437)
!440 = !DILocation(line: 277, column: 8, scope: !435)
!441 = !DILocation(line: 284, column: 26, scope: !442)
!442 = distinct !DILexicalBlock(scope: !333, file: !1, line: 284, column: 7)
!443 = !DILocation(line: 285, column: 28, scope: !442)
!444 = !DILocation(line: 285, column: 5, scope: !442)
!445 = !DILocation(line: 286, column: 5, scope: !442)
!446 = !DILocation(line: 286, column: 27, scope: !442)
!447 = !DILocation(line: 287, column: 28, scope: !442)
!448 = !DILocation(line: 287, column: 5, scope: !442)
!449 = !DILocation(line: 288, column: 5, scope: !442)
!450 = !DILocation(line: 288, column: 27, scope: !442)
!451 = !DILocation(line: 289, column: 28, scope: !442)
!452 = !DILocation(line: 289, column: 5, scope: !442)
!453 = !DILocation(line: 284, column: 7, scope: !333)
!454 = !DILocation(line: 293, column: 41, scope: !333)
!455 = !DILocation(line: 293, column: 3, scope: !333)
!456 = !DILocation(line: 294, column: 3, scope: !333)
!457 = !DILocation(line: 297, column: 5, scope: !458)
!458 = distinct !DILexicalBlock(scope: !333, file: !1, line: 295, column: 7)
!459 = !DILocation(line: 295, column: 7, scope: !458)
!460 = !DILocation(line: 297, column: 39, scope: !458)
!461 = !DILocation(line: 295, column: 7, scope: !333)
!462 = !DILocation(line: 301, column: 37, scope: !333)
!463 = !DILocation(line: 302, column: 5, scope: !333)
!464 = !DILocation(line: 302, column: 13, scope: !333)
!465 = !DILocation(line: 302, column: 37, scope: !333)
!466 = !DILocation(line: 301, column: 23, scope: !333)
!467 = !DILocation(line: 301, column: 21, scope: !333)
!468 = !DILocation(line: 304, column: 24, scope: !333)
!469 = !DILocation(line: 304, column: 3, scope: !333)
!470 = !DILocation(line: 313, column: 22, scope: !471)
!471 = distinct !DILexicalBlock(scope: !472, file: !1, line: 313, column: 8)
!472 = distinct !DILexicalBlock(scope: !333, file: !1, line: 309, column: 6)
!473 = !DILocation(line: 309, column: 3, scope: !333)
!474 = !DILocation(line: 310, column: 8, scope: !475)
!475 = distinct !DILexicalBlock(scope: !472, file: !1, line: 310, column: 8)
!476 = !DILocation(line: 310, column: 16, scope: !475)
!477 = !DILocation(line: 310, column: 8, scope: !472)
!478 = !DILocation(line: 313, column: 44, scope: !471)
!479 = !DILocation(line: 313, column: 28, scope: !471)
!480 = !DILocation(line: 314, column: 29, scope: !471)
!481 = !DILocation(line: 314, column: 17, scope: !471)
!482 = !DILocation(line: 314, column: 14, scope: !471)
!483 = !DILocation(line: 313, column: 8, scope: !472)
!484 = !DILocation(line: 317, column: 12, scope: !333)
!485 = !DILocation(line: 317, column: 30, scope: !333)
!486 = !DILocation(line: 317, column: 3, scope: !472)
!487 = distinct !{!487, !473, !488}
!488 = !DILocation(line: 317, column: 33, scope: !333)
!489 = !DILocation(line: 0, scope: !333)
!490 = !DILocation(line: 188, column: 9, scope: !319)
!491 = !DILocation(line: 188, column: 17, scope: !319)
!492 = distinct !{!492, !346, !493}
!493 = !DILocation(line: 324, column: 2, scope: !319)
!494 = !DILocation(line: 329, column: 4, scope: !319)
!495 = !DILocation(line: 326, column: 1, scope: !319)
!496 = !DILocation(line: 328, column: 36, scope: !319)
!497 = !DILocation(line: 329, column: 12, scope: !319)
!498 = !DILocation(line: 329, column: 36, scope: !319)
!499 = !DILocation(line: 328, column: 22, scope: !319)
!500 = !DILocation(line: 328, column: 20, scope: !319)
!501 = !DILocation(line: 331, column: 2, scope: !319)
!502 = !DILocation(line: 332, column: 1, scope: !319)
!503 = !DISubprogram(name: "lzma_vli_decode", scope: !13, file: !13, line: 154, type: !504, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!504 = !DISubroutineType(types: !505)
!505 = !{!216, !334, !322, !99, !322, !64}
!506 = !DISubprogram(name: "lzma_check_finish", scope: !24, file: !24, line: 82, type: !158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!507 = !DISubprogram(name: "lzma_check_size", scope: !76, file: !76, line: 95, type: !508, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!508 = !DISubroutineType(types: !509)
!509 = !{!39, !161}
!510 = !DISubprogram(name: "lzma_crc32", scope: !76, file: !76, line: 119, type: !511, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!511 = !DISubroutineType(types: !512)
!512 = !{!39, !99, !64, !39}
!513 = !DISubprogram(name: "lzma_vli_size", scope: !13, file: !13, line: 165, type: !514, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!514 = !DISubroutineType(types: !515)
!515 = !{!39, !12}
!516 = !DISubprogram(name: "lzma_check_update", scope: !24, file: !24, line: 78, type: !517, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!517 = !DISubroutineType(types: !518)
!518 = !{null, !160, !161, !99, !64}
