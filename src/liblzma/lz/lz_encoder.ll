; ModuleID = 'liblzma/lz/lz_encoder.c'
source_filename = "liblzma/lz/lz_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_mf_s = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lzma_lz_options = type { i64, i64, i64, i64, i64, i32, i32, ptr, i32 }

; Function Attrs: nounwind uwtable
define dso_local range(i64 -1, 21474836692) i64 @lzma_lz_encoder_memusage(ptr nocapture noundef readonly %lz_options) local_unnamed_addr #0 !dbg !193 {
entry:
  %mf = alloca %struct.lzma_mf_s, align 8, !DIAssignID !214
    #dbg_assign(i1 undef, !213, !DIExpression(), !214, ptr %mf, !DIExpression(), !215)
    #dbg_value(ptr %lz_options, !212, !DIExpression(), !215)
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %mf) #7, !dbg !216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %mf, i8 0, i64 120, i1 false), !dbg !217, !DIAssignID !218
    #dbg_assign(i8 0, !213, !DIExpression(), !218, ptr %mf, !DIExpression(), !215)
  %call = call fastcc zeroext i1 @lz_encoder_prepare(ptr noundef nonnull %mf, ptr noundef null, ptr noundef %lz_options), !dbg !219
  br i1 %call, label %cleanup, label %if.end, !dbg !221

if.end:                                           ; preds = %entry
  %hash_size_sum = getelementptr inbounds i8, ptr %mf, i64 108, !dbg !222
  %0 = load i32, ptr %hash_size_sum, align 4, !dbg !222
  %sons_count = getelementptr inbounds i8, ptr %mf, i64 112, !dbg !223
  %1 = load i32, ptr %sons_count, align 8, !dbg !223
  %add = add i32 %1, %0, !dbg !224
  %conv = zext i32 %add to i64, !dbg !225
  %mul = shl nuw nsw i64 %conv, 2, !dbg !226
  %size = getelementptr inbounds i8, ptr %mf, i64 8, !dbg !227
  %2 = load i32, ptr %size, align 8, !dbg !227
  %conv1 = zext i32 %2 to i64, !dbg !228
  %add2 = add nuw nsw i64 %conv1, 216, !dbg !229
  %add3 = add nuw nsw i64 %add2, %mul, !dbg !230
  br label %cleanup, !dbg !231

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %add3, %if.end ], [ -1, %entry ], !dbg !215
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %mf) #7, !dbg !232
  ret i64 %retval.0, !dbg !232
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @lz_encoder_prepare(ptr nocapture noundef %mf, ptr noundef %allocator, ptr nocapture noundef readonly %lz_options) unnamed_addr #0 !dbg !233 {
entry:
    #dbg_value(ptr %mf, !238, !DIExpression(), !250)
    #dbg_value(ptr %allocator, !239, !DIExpression(), !250)
    #dbg_value(ptr %lz_options, !240, !DIExpression(), !250)
  %dict_size = getelementptr inbounds i8, ptr %lz_options, i64 8, !dbg !251
  %0 = load i64, ptr %dict_size, align 8, !dbg !251
  %1 = add i64 %0, -1610612737, !dbg !253
  %or.cond = icmp ult i64 %1, -1610608641, !dbg !253
  br i1 %or.cond, label %return, label %lor.lhs.false3, !dbg !253

lor.lhs.false3:                                   ; preds = %entry
  %nice_len = getelementptr inbounds i8, ptr %lz_options, i64 32, !dbg !254
  %2 = load i64, ptr %nice_len, align 8, !dbg !254
  %match_len_max = getelementptr inbounds i8, ptr %lz_options, i64 24, !dbg !255
  %3 = load i64, ptr %match_len_max, align 8, !dbg !255
  %cmp4 = icmp ugt i64 %2, %3, !dbg !256
  br i1 %cmp4, label %return, label %if.end, !dbg !257

if.end:                                           ; preds = %lor.lhs.false3
  %4 = load i64, ptr %lz_options, align 8, !dbg !258
  %add = add i64 %4, %0, !dbg !259
  %conv = trunc i64 %add to i32, !dbg !260
  %keep_size_before = getelementptr inbounds i8, ptr %mf, i64 12, !dbg !261
  store i32 %conv, ptr %keep_size_before, align 4, !dbg !262
  %after_size = getelementptr inbounds i8, ptr %lz_options, i64 16, !dbg !263
  %5 = load i64, ptr %after_size, align 8, !dbg !263
  %6 = load i64, ptr %match_len_max, align 8, !dbg !264
  %add7 = add i64 %6, %5, !dbg !265
  %conv8 = trunc i64 %add7 to i32, !dbg !266
  %keep_size_after = getelementptr inbounds i8, ptr %mf, i64 16, !dbg !267
  store i32 %conv8, ptr %keep_size_after, align 8, !dbg !268
  %7 = load i64, ptr %dict_size, align 8, !dbg !269
  %div225 = lshr i64 %7, 1, !dbg !270
  %conv10 = trunc i64 %div225 to i32, !dbg !271
    #dbg_value(i32 %conv10, !241, !DIExpression(), !250)
  %cmp11 = icmp ugt i32 %conv10, 1073741824, !dbg !272
  %div14226 = zext i1 %cmp11 to i32, !dbg !274
  %spec.select = lshr i32 %conv10, %div14226, !dbg !274
    #dbg_value(i32 %spec.select, !241, !DIExpression(), !250)
  %8 = load i64, ptr %lz_options, align 8, !dbg !275
  %9 = load i64, ptr %match_len_max, align 8, !dbg !276
  %add18 = add i64 %9, %8, !dbg !277
  %10 = load i64, ptr %after_size, align 8, !dbg !278
  %add20 = add i64 %add18, %10, !dbg !279
  %div21227 = lshr i64 %add20, 1, !dbg !280
  %11 = trunc i64 %div21227 to i32, !dbg !281
    #dbg_value(i32 poison, !241, !DIExpression(), !250)
  %size = getelementptr inbounds i8, ptr %mf, i64 8, !dbg !282
  %12 = load i32, ptr %size, align 8, !dbg !282
    #dbg_value(i32 %12, !242, !DIExpression(), !250)
  %13 = add i32 %conv, 524288, !dbg !281
  %conv25 = add i32 %13, %conv8, !dbg !281
  %add27 = add i32 %conv25, %spec.select, !dbg !283
  %add29 = add i32 %add27, %11, !dbg !284
  store i32 %add29, ptr %size, align 8, !dbg !285
  %14 = load ptr, ptr %mf, align 8, !dbg !286
  %cmp31.not = icmp eq ptr %14, null, !dbg !288
  %cmp34.not = icmp eq i32 %12, %add29
  %or.cond230 = select i1 %cmp31.not, i1 true, i1 %cmp34.not, !dbg !289
  br i1 %or.cond230, label %if.end39, label %if.then36, !dbg !289

if.then36:                                        ; preds = %if.end
  tail call void @lzma_free(ptr noundef nonnull %14, ptr noundef %allocator) #7, !dbg !290
  store ptr null, ptr %mf, align 8, !dbg !292
  br label %if.end39, !dbg !293

if.end39:                                         ; preds = %if.then36, %if.end
  %15 = load i64, ptr %match_len_max, align 8, !dbg !294
  %conv41 = trunc i64 %15 to i32, !dbg !295
  %match_len_max42 = getelementptr inbounds i8, ptr %mf, i64 100, !dbg !296
  store i32 %conv41, ptr %match_len_max42, align 4, !dbg !297
  %16 = load i64, ptr %nice_len, align 8, !dbg !298
  %conv44 = trunc i64 %16 to i32, !dbg !299
  %nice_len45 = getelementptr inbounds i8, ptr %mf, i64 96, !dbg !300
  store i32 %conv44, ptr %nice_len45, align 8, !dbg !301
  %17 = load i64, ptr %dict_size, align 8, !dbg !302
  %18 = trunc i64 %17 to i32, !dbg !303
  %conv48 = add i32 %18, 1, !dbg !303
  %cyclic_size = getelementptr inbounds i8, ptr %mf, i64 84, !dbg !304
  store i32 %conv48, ptr %cyclic_size, align 4, !dbg !305
  %match_finder = getelementptr inbounds i8, ptr %lz_options, i64 40, !dbg !306
  %19 = load i32, ptr %match_finder, align 8, !dbg !306
  switch i32 %19, label %return [
    i32 3, label %sw.epilog
    i32 4, label %sw.bb49
    i32 18, label %sw.bb52
    i32 19, label %sw.bb55
    i32 20, label %sw.bb58
  ], !dbg !307

sw.bb49:                                          ; preds = %if.end39
  br label %sw.epilog, !dbg !308

sw.bb52:                                          ; preds = %if.end39
  br label %sw.epilog, !dbg !310

sw.bb55:                                          ; preds = %if.end39
  br label %sw.epilog, !dbg !311

sw.bb58:                                          ; preds = %if.end39
  br label %sw.epilog, !dbg !312

sw.epilog:                                        ; preds = %if.end39, %sw.bb58, %sw.bb55, %sw.bb52, %sw.bb49
  %lzma_mf_bt4_find.sink = phi ptr [ @lzma_mf_bt4_find, %sw.bb58 ], [ @lzma_mf_bt3_find, %sw.bb55 ], [ @lzma_mf_bt2_find, %sw.bb52 ], [ @lzma_mf_hc4_find, %sw.bb49 ], [ @lzma_mf_hc3_find, %if.end39 ]
  %lzma_mf_bt4_skip.sink = phi ptr [ @lzma_mf_bt4_skip, %sw.bb58 ], [ @lzma_mf_bt3_skip, %sw.bb55 ], [ @lzma_mf_bt2_skip, %sw.bb52 ], [ @lzma_mf_hc4_skip, %sw.bb49 ], [ @lzma_mf_hc3_skip, %if.end39 ]
  %find59 = getelementptr inbounds i8, ptr %mf, i64 48, !dbg !313
  store ptr %lzma_mf_bt4_find.sink, ptr %find59, align 8, !dbg !313
  %skip60 = getelementptr inbounds i8, ptr %mf, i64 56, !dbg !313
  store ptr %lzma_mf_bt4_skip.sink, ptr %skip60, align 8, !dbg !313
  %20 = load i32, ptr %match_finder, align 8, !dbg !314
  %and = and i32 %20, 15, !dbg !315
    #dbg_value(i32 %and, !244, !DIExpression(), !250)
  %cmp63 = icmp ugt i32 %and, %conv44, !dbg !316
  br i1 %cmp63, label %return, label %if.end66, !dbg !318

if.end66:                                         ; preds = %sw.epilog
  %and68 = and i32 %20, 16, !dbg !319
  %cmp69.not = icmp eq i32 %and68, 0, !dbg !320
    #dbg_value(i1 %cmp69.not, !245, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !250)
  %cmp71 = icmp eq i32 %and, 2, !dbg !321
  br i1 %cmp71, label %if.end94, label %if.else, !dbg !323

if.else:                                          ; preds = %if.end66
  %21 = load i64, ptr %dict_size, align 8, !dbg !324
  %22 = trunc i64 %21 to i32, !dbg !326
  %conv75 = add i32 %22, -1, !dbg !326
    #dbg_value(i32 %conv75, !247, !DIExpression(), !250)
  %shr = lshr i32 %conv75, 1, !dbg !327
  %or = or i32 %shr, %conv75, !dbg !328
    #dbg_value(i32 %or, !247, !DIExpression(), !250)
  %shr76 = lshr i32 %or, 2, !dbg !329
  %or77 = or i32 %shr76, %or, !dbg !330
    #dbg_value(i32 %or77, !247, !DIExpression(), !250)
  %shr78 = lshr i32 %or77, 4, !dbg !331
  %or79 = or i32 %shr78, %or77, !dbg !332
    #dbg_value(i32 %or79, !247, !DIExpression(), !250)
    #dbg_value(!DIArgList(i32 %or79, i32 %or79), !247, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shr, DW_OP_or, DW_OP_stack_value), !250)
  %23 = lshr i32 %or79, 9, !dbg !333
  %24 = lshr i32 %or79, 1, !dbg !333
    #dbg_value(i32 poison, !247, !DIExpression(), !250)
  %shr82 = or i32 %24, %23, !dbg !334
  %or83 = or i32 %shr82, 65535, !dbg !334
    #dbg_value(i32 %or83, !247, !DIExpression(), !250)
  %cmp84 = icmp ugt i32 %or83, 16777216, !dbg !335
  br i1 %cmp84, label %if.then86, label %if.end94, !dbg !337

if.then86:                                        ; preds = %if.else
  %cmp87 = icmp eq i32 %and, 3, !dbg !338
  %shr91 = lshr i32 %or83, 1
  %spec.select232 = select i1 %cmp87, i32 16777215, i32 %shr91, !dbg !341
  br label %if.end94, !dbg !341

if.end94:                                         ; preds = %if.then86, %if.end66, %if.else
  %hs.0 = phi i32 [ %or83, %if.else ], [ 65535, %if.end66 ], [ %spec.select232, %if.then86 ], !dbg !342
    #dbg_value(i32 %hs.0, !247, !DIExpression(), !250)
  %hash_mask = getelementptr inbounds i8, ptr %mf, i64 88, !dbg !343
  store i32 %hs.0, ptr %hash_mask, align 8, !dbg !344
    #dbg_value(i32 %hs.0, !247, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !250)
  %cmp95 = icmp ugt i32 %and, 2, !dbg !345
  %spec.select231.v = select i1 %cmp95, i32 1025, i32 1, !dbg !347
  %spec.select231 = add nuw nsw i32 %hs.0, %spec.select231.v, !dbg !347
    #dbg_value(i32 %spec.select231, !247, !DIExpression(), !250)
  %cmp100 = icmp ugt i32 %and, 3, !dbg !348
  %add103 = add nuw nsw i32 %spec.select231, 65536, !dbg !350
  %hs.2 = select i1 %cmp100, i32 %add103, i32 %spec.select231, !dbg !350
    #dbg_value(i32 %hs.2, !247, !DIExpression(), !250)
  %hash_size_sum = getelementptr inbounds i8, ptr %mf, i64 108, !dbg !351
  %25 = load i32, ptr %hash_size_sum, align 4, !dbg !351
  %sons_count = getelementptr inbounds i8, ptr %mf, i64 112, !dbg !352
  %26 = load i32, ptr %sons_count, align 8, !dbg !352
  %add105 = add i32 %26, %25, !dbg !353
    #dbg_value(i32 %add105, !248, !DIExpression(), !250)
  store i32 %hs.2, ptr %hash_size_sum, align 4, !dbg !354
  %27 = lshr exact i32 %and68, 4, !dbg !355
  %storemerge = shl i32 %conv48, %27, !dbg !355
  store i32 %storemerge, ptr %sons_count, align 8, !dbg !250
  %add114 = add i32 %hs.2, %storemerge, !dbg !356
    #dbg_value(i32 %add114, !249, !DIExpression(), !250)
  %cmp115.not = icmp eq i32 %add105, %add114, !dbg !357
  br i1 %cmp115.not, label %if.end119, label %if.then117, !dbg !359

if.then117:                                       ; preds = %if.end94
  %hash = getelementptr inbounds i8, ptr %mf, i64 64, !dbg !360
  %28 = load ptr, ptr %hash, align 8, !dbg !360
  tail call void @lzma_free(ptr noundef %28, ptr noundef %allocator) #7, !dbg !362
  store ptr null, ptr %hash, align 8, !dbg !363
  br label %if.end119, !dbg !364

if.end119:                                        ; preds = %if.then117, %if.end94
  %depth = getelementptr inbounds i8, ptr %lz_options, i64 44, !dbg !365
  %29 = load i32, ptr %depth, align 4, !dbg !365
  %depth120 = getelementptr inbounds i8, ptr %mf, i64 92, !dbg !366
  store i32 %29, ptr %depth120, align 4, !dbg !367
  %cmp122 = icmp eq i32 %29, 0, !dbg !368
  br i1 %cmp122, label %if.then124, label %return, !dbg !370

if.then124:                                       ; preds = %if.end119
  %30 = load i32, ptr %nice_len45, align 8, !dbg !371
  %. = select i1 %cmp69.not, i32 2, i32 1
  %.234 = select i1 %cmp69.not, i32 4, i32 16
  %div133228 = lshr i32 %30, %., !dbg !371
  %add134 = add nuw i32 %div133228, %.234, !dbg !371
  store i32 %add134, ptr %depth120, align 4, !dbg !371
  br label %return, !dbg !374

return:                                           ; preds = %if.then124, %if.end39, %if.end119, %sw.epilog, %entry, %lor.lhs.false3
  %retval.2 = phi i1 [ true, %lor.lhs.false3 ], [ true, %entry ], [ true, %if.end39 ], [ false, %if.end119 ], [ true, %sw.epilog ], [ false, %if.then124 ], !dbg !250
  ret i1 %retval.2, !dbg !374
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_lz_encoder_init(ptr nocapture noundef %next, ptr noundef %allocator, ptr noundef %filters, ptr nocapture noundef readonly %lz_init) local_unnamed_addr #0 !dbg !375 {
entry:
  %lz_options = alloca %struct.lzma_lz_options, align 8, !DIAssignID !407
    #dbg_assign(i1 undef, !403, !DIExpression(), !407, ptr %lz_options, !DIExpression(), !408)
    #dbg_value(ptr %next, !399, !DIExpression(), !408)
    #dbg_value(ptr %allocator, !400, !DIExpression(), !408)
    #dbg_value(ptr %filters, !401, !DIExpression(), !408)
    #dbg_value(ptr %lz_init, !402, !DIExpression(), !408)
  %0 = load ptr, ptr %next, align 8, !dbg !409
  %cmp = icmp eq ptr %0, null, !dbg !411
  br i1 %cmp, label %if.then, label %if.end26, !dbg !412

if.then:                                          ; preds = %entry
  %call = tail call ptr @lzma_alloc(i64 noundef 216, ptr noundef %allocator) #7, !dbg !413
  store ptr %call, ptr %next, align 8, !dbg !415
  %cmp3 = icmp eq ptr %call, null, !dbg !416
  br i1 %cmp3, label %return, label %if.end, !dbg !418

if.end:                                           ; preds = %if.then
  %code = getelementptr inbounds i8, ptr %next, i64 24, !dbg !419
  store ptr @lz_encode, ptr %code, align 8, !dbg !420
  %end = getelementptr inbounds i8, ptr %next, i64 32, !dbg !421
  store ptr @lz_encoder_end, ptr %end, align 8, !dbg !422
  %update = getelementptr inbounds i8, ptr %next, i64 56, !dbg !423
  store ptr @lz_encoder_update, ptr %update, align 8, !dbg !424
  store ptr null, ptr %call, align 8, !dbg !425
  %1 = load ptr, ptr %next, align 8, !dbg !426
  %code9 = getelementptr inbounds i8, ptr %1, i64 8, !dbg !427
  store ptr null, ptr %code9, align 8, !dbg !428
  %2 = load ptr, ptr %next, align 8, !dbg !429
  %end12 = getelementptr inbounds i8, ptr %2, i64 16, !dbg !430
  store ptr null, ptr %end12, align 8, !dbg !431
  %3 = load ptr, ptr %next, align 8, !dbg !432
  %mf = getelementptr inbounds i8, ptr %3, i64 32, !dbg !433
  store ptr null, ptr %mf, align 8, !dbg !434
  %4 = load ptr, ptr %next, align 8, !dbg !435
  %hash = getelementptr inbounds i8, ptr %4, i64 96, !dbg !436
  store ptr null, ptr %hash, align 8, !dbg !437
  %5 = load ptr, ptr %next, align 8, !dbg !438
  %hash_size_sum = getelementptr inbounds i8, ptr %5, i64 140, !dbg !439
  store i32 0, ptr %hash_size_sum, align 4, !dbg !440
  %6 = load ptr, ptr %next, align 8, !dbg !441
  %sons_count = getelementptr inbounds i8, ptr %6, i64 144, !dbg !442
  store i32 0, ptr %sons_count, align 8, !dbg !443
  %7 = load ptr, ptr %next, align 8, !dbg !444
  %next21 = getelementptr inbounds i8, ptr %7, i64 152, !dbg !445
  store ptr null, ptr %next21, align 8, !dbg !446
  %.compoundliteral.sroa.2.0.next21.sroa_idx = getelementptr inbounds i8, ptr %7, i64 160, !dbg !446
  store i64 -1, ptr %.compoundliteral.sroa.2.0.next21.sroa_idx, align 8, !dbg !446
  %.compoundliteral.sroa.3.0.next21.sroa_idx = getelementptr inbounds i8, ptr %7, i64 168, !dbg !446
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.compoundliteral.sroa.3.0.next21.sroa_idx, i8 0, i64 48, i1 false), !dbg !446
  %.pre = load ptr, ptr %next, align 8, !dbg !447
  br label %if.end26, !dbg !448

if.end26:                                         ; preds = %if.end, %entry
  %8 = phi ptr [ %.pre, %if.end ], [ %0, %entry ], !dbg !447
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %lz_options) #7, !dbg !449
  %options = getelementptr inbounds i8, ptr %filters, i64 16, !dbg !447
  %9 = load ptr, ptr %options, align 8, !dbg !447
  %call29 = call i32 %lz_init(ptr noundef %8, ptr noundef %allocator, ptr noundef %9, ptr noundef nonnull %lz_options) #7, !dbg !447
    #dbg_value(i32 %call29, !404, !DIExpression(), !450)
  %cmp30.not = icmp eq i32 %call29, 0, !dbg !451
  br i1 %cmp30.not, label %do.end, label %cleanup46

do.end:                                           ; preds = %if.end26
  %10 = load ptr, ptr %next, align 8, !dbg !453
  %mf34 = getelementptr inbounds i8, ptr %10, i64 32, !dbg !455
  %call35 = call fastcc zeroext i1 @lz_encoder_prepare(ptr noundef nonnull %mf34, ptr noundef %allocator, ptr noundef nonnull %lz_options), !dbg !456
  br i1 %call35, label %cleanup46, label %if.end37, !dbg !457

if.end37:                                         ; preds = %do.end
  %11 = load ptr, ptr %next, align 8, !dbg !458
  %mf39 = getelementptr inbounds i8, ptr %11, i64 32, !dbg !460
    #dbg_value(ptr %mf39, !461, !DIExpression(), !468)
    #dbg_value(ptr %allocator, !464, !DIExpression(), !468)
    #dbg_value(ptr %lz_options, !465, !DIExpression(), !468)
  %12 = load ptr, ptr %mf39, align 8, !dbg !470
  %cmp.i = icmp eq ptr %12, null, !dbg !472
  br i1 %cmp.i, label %if.then.i, label %if.end6.i, !dbg !473

if.then.i:                                        ; preds = %if.end37
  %size.i = getelementptr inbounds i8, ptr %11, i64 40, !dbg !474
  %13 = load i32, ptr %size.i, align 8, !dbg !474
  %conv.i = zext i32 %13 to i64, !dbg !476
  %call.i = call ptr @lzma_alloc(i64 noundef %conv.i, ptr noundef %allocator) #7, !dbg !477
  store ptr %call.i, ptr %mf39, align 8, !dbg !478
  %cmp3.i = icmp eq ptr %call.i, null, !dbg !479
  br i1 %cmp3.i, label %cleanup46, label %if.end6.i, !dbg !481

if.end6.i:                                        ; preds = %if.then.i, %if.end37
  %cyclic_size.i = getelementptr inbounds i8, ptr %11, i64 116, !dbg !482
  %14 = load i32, ptr %cyclic_size.i, align 4, !dbg !482
  %offset.i = getelementptr inbounds i8, ptr %11, i64 52, !dbg !483
  store i32 %14, ptr %offset.i, align 4, !dbg !484
  %read_pos.i = getelementptr inbounds i8, ptr %11, i64 56, !dbg !485
  %write_pos.i = getelementptr inbounds i8, ptr %11, i64 68, !dbg !486
  %hash_size_sum.i = getelementptr inbounds i8, ptr %11, i64 140, !dbg !487
    #dbg_value(!DIArgList(i32 poison, i32 poison), !466, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !468)
  %hash.i = getelementptr inbounds i8, ptr %11, i64 96, !dbg !488
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %read_pos.i, i8 0, i64 20, i1 false), !dbg !490
  %15 = load ptr, ptr %hash.i, align 8, !dbg !488
  %cmp8.i = icmp eq ptr %15, null, !dbg !491
  br i1 %cmp8.i, label %if.then10.i, label %if.end18.i, !dbg !492

if.then10.i:                                      ; preds = %if.end6.i
  %16 = load i32, ptr %hash_size_sum.i, align 4, !dbg !487
  %sons_count.i = getelementptr inbounds i8, ptr %11, i64 144, !dbg !493
  %17 = load i32, ptr %sons_count.i, align 8, !dbg !493
    #dbg_value(!DIArgList(i32 %16, i32 %17), !466, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !468)
  %add.i = add i32 %17, %16, !dbg !494
    #dbg_value(i32 %add.i, !466, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !468)
  %conv7.i = zext i32 %add.i to i64, !dbg !495
    #dbg_value(i64 %conv7.i, !466, !DIExpression(), !468)
  %mul.i = shl nuw nsw i64 %conv7.i, 2, !dbg !496
  %call11.i = call ptr @lzma_alloc(i64 noundef %mul.i, ptr noundef %allocator) #7, !dbg !498
  store ptr %call11.i, ptr %hash.i, align 8, !dbg !499
  %cmp14.i = icmp eq ptr %call11.i, null, !dbg !500
  br i1 %cmp14.i, label %cleanup46, label %if.end18.i, !dbg !502

if.end18.i:                                       ; preds = %if.then10.i, %if.end6.i
  %18 = phi ptr [ %call11.i, %if.then10.i ], [ %15, %if.end6.i ], !dbg !503
  %19 = load i32, ptr %hash_size_sum.i, align 4, !dbg !504
  %idx.ext.i = zext i32 %19 to i64, !dbg !505
  %add.ptr.i = getelementptr inbounds i32, ptr %18, i64 %idx.ext.i, !dbg !505
  %son.i = getelementptr inbounds i8, ptr %11, i64 104, !dbg !506
  store ptr %add.ptr.i, ptr %son.i, align 8, !dbg !507
  %cyclic_pos.i = getelementptr inbounds i8, ptr %11, i64 112, !dbg !508
  store i32 0, ptr %cyclic_pos.i, align 8, !dbg !509
  %mul24.i = shl nuw nsw i64 %idx.ext.i, 2, !dbg !510
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %18, i8 0, i64 %mul24.i, i1 false), !dbg !510
  %preset_dict.i = getelementptr inbounds i8, ptr %lz_options, i64 48, !dbg !511
  %20 = load ptr, ptr %preset_dict.i, align 8, !dbg !511
  %cmp25.not.i = icmp eq ptr %20, null, !dbg !513
  br i1 %cmp25.not.i, label %if.end42, label %land.lhs.true.i, !dbg !514

land.lhs.true.i:                                  ; preds = %if.end18.i
  %preset_dict_size.i = getelementptr inbounds i8, ptr %lz_options, i64 56, !dbg !515
  %21 = load i32, ptr %preset_dict_size.i, align 8, !dbg !515
  %cmp27.not.i = icmp eq i32 %21, 0, !dbg !516
  br i1 %cmp27.not.i, label %if.end42, label %if.then29.i, !dbg !517

if.then29.i:                                      ; preds = %land.lhs.true.i
  %size31.i = getelementptr inbounds i8, ptr %11, i64 40, !dbg !518
  %22 = load i32, ptr %size31.i, align 8, !dbg !518
  %..i = call i32 @llvm.umin.i32(i32 %21, i32 %22), !dbg !518
  store i32 %..i, ptr %write_pos.i, align 4, !dbg !520
  %23 = load ptr, ptr %mf39, align 8, !dbg !521
  %idx.ext40.i = zext i32 %21 to i64, !dbg !522
  %add.ptr41.i = getelementptr inbounds i8, ptr %20, i64 %idx.ext40.i, !dbg !522
  %idx.ext43.i = zext i32 %..i to i64, !dbg !523
  %idx.neg.i = sub nsw i64 0, %idx.ext43.i, !dbg !523
  %add.ptr44.i = getelementptr inbounds i8, ptr %add.ptr41.i, i64 %idx.neg.i, !dbg !523
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %23, ptr nonnull align 1 %add.ptr44.i, i64 %idx.ext43.i, i1 false), !dbg !524
  %action.i = getelementptr inbounds i8, ptr %11, i64 136, !dbg !525
  store i32 1, ptr %action.i, align 8, !dbg !526
  %skip.i = getelementptr inbounds i8, ptr %11, i64 88, !dbg !527
  %24 = load ptr, ptr %skip.i, align 8, !dbg !527
  %25 = load i32, ptr %write_pos.i, align 4, !dbg !528
  call void %24(ptr noundef nonnull %mf39, i32 noundef %25) #7, !dbg !529
  br label %if.end42, !dbg !530

if.end42:                                         ; preds = %if.then29.i, %land.lhs.true.i, %if.end18.i
  %action49.i = getelementptr inbounds i8, ptr %11, i64 136, !dbg !531
  store i32 0, ptr %action49.i, align 8, !dbg !532
  %26 = load ptr, ptr %next, align 8, !dbg !533
  %next44 = getelementptr inbounds i8, ptr %26, i64 152, !dbg !534
  %add.ptr = getelementptr inbounds i8, ptr %filters, i64 24, !dbg !535
  %call45 = call i32 @lzma_next_filter_init(ptr noundef nonnull %next44, ptr noundef %allocator, ptr noundef nonnull %add.ptr) #7, !dbg !536
  br label %cleanup46, !dbg !537

cleanup46:                                        ; preds = %if.then10.i, %if.then.i, %do.end, %if.end26, %if.end42
  %retval.1 = phi i32 [ %call45, %if.end42 ], [ %call29, %if.end26 ], [ 8, %do.end ], [ 5, %if.then.i ], [ 5, %if.then10.i ], !dbg !408
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %lz_options) #7, !dbg !538
  br label %return

return:                                           ; preds = %if.then, %cleanup46
  %retval.2 = phi i32 [ %retval.1, %cleanup46 ], [ 5, %if.then ], !dbg !408
  ret i32 %retval.2, !dbg !538
}

declare !dbg !539 ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i32 @lz_encode(ptr noundef %pcoder, ptr noundef %allocator, ptr noalias noundef %in, ptr noalias noundef %in_pos, i64 noundef %in_size, ptr noalias noundef %out, ptr noalias noundef %out_pos, i64 noundef %out_size, i32 noundef %action) #0 !dbg !542 {
entry:
  %write_pos.i = alloca i64, align 8, !DIAssignID !559
    #dbg_value(ptr %pcoder, !544, !DIExpression(), !560)
    #dbg_value(ptr %allocator, !545, !DIExpression(), !560)
    #dbg_value(ptr %in, !546, !DIExpression(), !560)
    #dbg_value(ptr %in_pos, !547, !DIExpression(), !560)
    #dbg_value(i64 %in_size, !548, !DIExpression(), !560)
    #dbg_value(ptr %out, !549, !DIExpression(), !560)
    #dbg_value(ptr %out_pos, !550, !DIExpression(), !560)
    #dbg_value(i64 %out_size, !551, !DIExpression(), !560)
    #dbg_value(i32 %action, !552, !DIExpression(), !560)
    #dbg_value(ptr %pcoder, !553, !DIExpression(), !560)
  %cmp2 = icmp ne i32 %action, 0
  %mf = getelementptr inbounds i8, ptr %pcoder, i64 32
  %action3 = getelementptr inbounds i8, ptr %pcoder, i64 136
  %read_pos = getelementptr inbounds i8, ptr %pcoder, i64 56
  %read_limit = getelementptr inbounds i8, ptr %pcoder, i64 64
  %size.i = getelementptr inbounds i8, ptr %pcoder, i64 40
  %keep_size_after.i = getelementptr inbounds i8, ptr %pcoder, i64 48
  %keep_size_before.i.i = getelementptr inbounds i8, ptr %pcoder, i64 44
  %write_pos.i.i = getelementptr inbounds i8, ptr %pcoder, i64 68
  %offset.i.i = getelementptr inbounds i8, ptr %pcoder, i64 52
  %code.i = getelementptr inbounds i8, ptr %pcoder, i64 176
  %next.i = getelementptr inbounds i8, ptr %pcoder, i64 152
  %cmp13.not.i = icmp eq i32 %action, 0
  %pending.i = getelementptr inbounds i8, ptr %pcoder, i64 72
  %skip.i = getelementptr inbounds i8, ptr %pcoder, i64 88
  %code = getelementptr inbounds i8, ptr %pcoder, i64 8
  br label %while.cond, !dbg !561

while.cond:                                       ; preds = %if.end10, %entry
  %0 = load i64, ptr %out_pos, align 8, !dbg !562
  %cmp = icmp ult i64 %0, %out_size, !dbg !563
  br i1 %cmp, label %land.rhs, label %cleanup23, !dbg !564

land.rhs:                                         ; preds = %while.cond
  %1 = load i64, ptr %in_pos, align 8, !dbg !565
  %cmp1 = icmp ult i64 %1, %in_size, !dbg !566
  %2 = or i1 %cmp2, %cmp1, !dbg !567
  br i1 %2, label %while.body, label %cleanup23, !dbg !561

while.body:                                       ; preds = %land.rhs
  %3 = load i32, ptr %action3, align 8, !dbg !568
  %cmp4 = icmp eq i32 %3, 0, !dbg !569
  br i1 %cmp4, label %land.lhs.true, label %if.end10, !dbg !570

land.lhs.true:                                    ; preds = %while.body
  %4 = load i32, ptr %read_pos, align 8, !dbg !571
  %5 = load i32, ptr %read_limit, align 8, !dbg !572
  %cmp7.not = icmp ult i32 %4, %5, !dbg !573
  br i1 %cmp7.not, label %if.end10, label %do.body, !dbg !574

do.body:                                          ; preds = %land.lhs.true
    #dbg_assign(i1 undef, !575, !DIExpression(), !559, ptr %write_pos.i, !DIExpression(), !591)
    #dbg_value(ptr %pcoder, !580, !DIExpression(), !591)
    #dbg_value(ptr %allocator, !581, !DIExpression(), !591)
    #dbg_value(ptr %in, !582, !DIExpression(), !591)
    #dbg_value(ptr %in_pos, !583, !DIExpression(), !591)
    #dbg_value(i64 %in_size, !584, !DIExpression(), !591)
    #dbg_value(i32 %action, !585, !DIExpression(), !591)
    #dbg_value(ptr %pcoder, !586, !DIExpression(), !591)
  %6 = load i32, ptr %size.i, align 8, !dbg !593
  %7 = load i32, ptr %keep_size_after.i, align 8, !dbg !595
  %sub.i = sub i32 %6, %7, !dbg !596
  %cmp.not.i = icmp ult i32 %4, %sub.i, !dbg !597
  br i1 %cmp.not.i, label %entry.if.end_crit_edge.i, label %if.then.i, !dbg !598

entry.if.end_crit_edge.i:                         ; preds = %do.body
  %.pre.i = load i32, ptr %write_pos.i.i, align 4, !dbg !599
  br label %if.end.i, !dbg !598

if.then.i:                                        ; preds = %do.body
    #dbg_value(ptr %mf, !600, !DIExpression(), !607)
  %8 = load i32, ptr %keep_size_before.i.i, align 4, !dbg !609
  %sub.i.i = sub i32 %4, %8, !dbg !610
  %and.i.i = and i32 %sub.i.i, -16, !dbg !611
    #dbg_value(i32 %and.i.i, !605, !DIExpression(), !607)
  %9 = load i32, ptr %write_pos.i.i, align 4, !dbg !612
  %sub1.i.i = sub i32 %9, %and.i.i, !dbg !613
  %conv.i.i = zext i32 %sub1.i.i to i64, !dbg !614
    #dbg_value(i64 %conv.i.i, !606, !DIExpression(), !607)
  %10 = load ptr, ptr %mf, align 8, !dbg !615
  %idx.ext.i.i = zext i32 %and.i.i to i64, !dbg !616
  %add.ptr.i.i = getelementptr inbounds i8, ptr %10, i64 %idx.ext.i.i, !dbg !616
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %10, ptr align 1 %add.ptr.i.i, i64 %conv.i.i, i1 false), !dbg !617
  %11 = load i32, ptr %offset.i.i, align 4, !dbg !618
  %add.i.i = add i32 %11, %and.i.i, !dbg !618
  store i32 %add.i.i, ptr %offset.i.i, align 4, !dbg !618
  %12 = load i32, ptr %read_pos, align 8, !dbg !619
  %sub4.i.i = sub i32 %12, %and.i.i, !dbg !619
  store i32 %sub4.i.i, ptr %read_pos, align 8, !dbg !619
  %13 = load i32, ptr %read_limit, align 8, !dbg !620
  %sub5.i.i = sub i32 %13, %and.i.i, !dbg !620
  store i32 %sub5.i.i, ptr %read_limit, align 8, !dbg !620
  %14 = load i32, ptr %write_pos.i.i, align 4, !dbg !621
  %sub7.i.i = sub i32 %14, %and.i.i, !dbg !621
  store i32 %sub7.i.i, ptr %write_pos.i.i, align 4, !dbg !621
  br label %if.end.i, !dbg !622

if.end.i:                                         ; preds = %if.then.i, %entry.if.end_crit_edge.i
  %15 = phi i32 [ %.pre.i, %entry.if.end_crit_edge.i ], [ %sub7.i.i, %if.then.i ], !dbg !599
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %write_pos.i) #7, !dbg !623
  %conv.i = zext i32 %15 to i64, !dbg !624
  store i64 %conv.i, ptr %write_pos.i, align 8, !dbg !625, !DIAssignID !626
    #dbg_assign(i64 %conv.i, !575, !DIExpression(), !626, ptr %write_pos.i, !DIExpression(), !591)
  %16 = load ptr, ptr %code.i, align 8, !dbg !627
  %cmp6.i = icmp eq ptr %16, null, !dbg !629
  br i1 %cmp6.i, label %if.then8.i, label %if.else.i, !dbg !630

if.then8.i:                                       ; preds = %if.end.i
  %17 = load ptr, ptr %mf, align 8, !dbg !631
  %18 = load i32, ptr %size.i, align 8, !dbg !633
  %conv12.i = zext i32 %18 to i64, !dbg !634
  %call.i = call i64 @lzma_bufcpy(ptr noundef %in, ptr noundef nonnull %in_pos, i64 noundef %in_size, ptr noundef %17, ptr noundef nonnull %write_pos.i, i64 noundef %conv12.i) #7, !dbg !635
  br i1 %cmp13.not.i, label %if.end27.thread.i, label %land.rhs.i, !dbg !636

if.end27.thread.i:                                ; preds = %if.then8.i
    #dbg_value(i32 0, !587, !DIExpression(), !591)
  %19 = load i64, ptr %write_pos.i, align 8, !dbg !637
  %conv28121.i = trunc i64 %19 to i32, !dbg !637
  store i32 %conv28121.i, ptr %write_pos.i.i, align 4, !dbg !638
  br label %if.else39.i, !dbg !639

land.rhs.i:                                       ; preds = %if.then8.i
  %20 = load i64, ptr %in_pos, align 8, !dbg !640
  %cmp15.i = icmp eq i64 %20, %in_size, !dbg !641
  %21 = zext i1 %cmp15.i to i32, !dbg !642
  br label %if.end27.i

if.else.i:                                        ; preds = %if.end.i
  %22 = load ptr, ptr %next.i, align 8, !dbg !643
  %23 = load ptr, ptr %mf, align 8, !dbg !645
  %24 = load i32, ptr %size.i, align 8, !dbg !646
  %conv25.i = zext i32 %24 to i64, !dbg !647
  %call26.i = call i32 %16(ptr noundef %22, ptr noundef %allocator, ptr noundef %in, ptr noundef nonnull %in_pos, i64 noundef %in_size, ptr noundef %23, ptr noundef nonnull %write_pos.i, i64 noundef %conv25.i, i32 noundef %action) #7, !dbg !648
    #dbg_value(i32 %call26.i, !587, !DIExpression(), !591)
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.else.i, %land.rhs.i
  %ret.0.i = phi i32 [ %call26.i, %if.else.i ], [ %21, %land.rhs.i ], !dbg !649
    #dbg_value(i32 %ret.0.i, !587, !DIExpression(), !591)
  %25 = load i64, ptr %write_pos.i, align 8, !dbg !637
  %conv28.i = trunc i64 %25 to i32, !dbg !637
  store i32 %conv28.i, ptr %write_pos.i.i, align 4, !dbg !638
  %cmp31.i = icmp eq i32 %ret.0.i, 1, !dbg !650
  br i1 %cmp31.i, label %if.then33.i, label %if.else39.i, !dbg !639

if.then33.i:                                      ; preds = %if.end27.i
    #dbg_value(i32 0, !587, !DIExpression(), !591)
  store i32 %action, ptr %action3, align 8, !dbg !652
  br label %if.end55.sink.split.i, !dbg !654

if.else39.i:                                      ; preds = %if.end27.i, %if.end27.thread.i
  %conv28124.i = phi i32 [ %conv28121.i, %if.end27.thread.i ], [ %conv28.i, %if.end27.i ]
  %ret.0123.i = phi i32 [ 0, %if.end27.thread.i ], [ %ret.0.i, %if.end27.i ]
  %26 = load i32, ptr %keep_size_after.i, align 8, !dbg !655
  %cmp44.i = icmp ult i32 %26, %conv28124.i, !dbg !657
  br i1 %cmp44.i, label %if.then46.i, label %if.end55.i, !dbg !658

if.then46.i:                                      ; preds = %if.else39.i
  %sub51.i = sub i32 %conv28124.i, %26, !dbg !659
  br label %if.end55.sink.split.i, !dbg !661

if.end55.sink.split.i:                            ; preds = %if.then46.i, %if.then33.i
  %sub51.sink.i = phi i32 [ %sub51.i, %if.then46.i ], [ %conv28.i, %if.then33.i ]
  %ret.1.ph.i = phi i32 [ %ret.0123.i, %if.then46.i ], [ 0, %if.then33.i ]
  store i32 %sub51.sink.i, ptr %read_limit, align 8, !dbg !662
  br label %if.end55.i, !dbg !663

if.end55.i:                                       ; preds = %if.end55.sink.split.i, %if.else39.i
  %ret.1.i = phi i32 [ %ret.0123.i, %if.else39.i ], [ %ret.1.ph.i, %if.end55.sink.split.i ], !dbg !591
    #dbg_value(i32 %ret.1.i, !587, !DIExpression(), !591)
  %27 = load i32, ptr %pending.i, align 8, !dbg !663
  %cmp57.not.i = icmp eq i32 %27, 0, !dbg !664
  br i1 %cmp57.not.i, label %fill_window.exit, label %land.lhs.true.i, !dbg !665

land.lhs.true.i:                                  ; preds = %if.end55.i
  %28 = load i32, ptr %read_pos, align 8, !dbg !666
  %29 = load i32, ptr %read_limit, align 8, !dbg !667
  %cmp63.i = icmp ult i32 %28, %29, !dbg !668
  br i1 %cmp63.i, label %if.then65.i, label %fill_window.exit, !dbg !669

if.then65.i:                                      ; preds = %land.lhs.true.i
    #dbg_value(i32 %27, !588, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !670)
  store i32 0, ptr %pending.i, align 8, !dbg !671
  %sub75.i = sub i32 %28, %27, !dbg !672
  store i32 %sub75.i, ptr %read_pos, align 8, !dbg !672
  %30 = load ptr, ptr %skip.i, align 8, !dbg !673
  call void %30(ptr noundef nonnull %mf, i32 noundef %27) #7, !dbg !674
  br label %fill_window.exit, !dbg !675

fill_window.exit:                                 ; preds = %if.end55.i, %land.lhs.true.i, %if.then65.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %write_pos.i) #7, !dbg !676
    #dbg_value(i32 %ret.1.i, !554, !DIExpression(), !677)
  %cmp8.not = icmp eq i32 %ret.1.i, 0, !dbg !678
  br i1 %cmp8.not, label %if.end10, label %cleanup23

if.end10:                                         ; preds = %fill_window.exit, %land.lhs.true, %while.body
  %31 = load ptr, ptr %code, align 8, !dbg !680
  %32 = load ptr, ptr %pcoder, align 8, !dbg !681
  %call14 = call i32 %31(ptr noundef %32, ptr noundef nonnull %mf, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %out_size) #7, !dbg !682
    #dbg_value(i32 %call14, !558, !DIExpression(), !683)
  %cmp15.not = icmp eq i32 %call14, 0, !dbg !684
  br i1 %cmp15.not, label %while.cond, label %cleanup20.thread, !dbg !686, !llvm.loop !687

cleanup20.thread:                                 ; preds = %if.end10
  store i32 0, ptr %action3, align 8, !dbg !689
  br label %cleanup23

cleanup23:                                        ; preds = %land.rhs, %while.cond, %fill_window.exit, %cleanup20.thread
  %retval.4 = phi i32 [ %call14, %cleanup20.thread ], [ 0, %land.rhs ], [ 0, %while.cond ], [ %ret.1.i, %fill_window.exit ], !dbg !560
  ret i32 %retval.4, !dbg !691
}

; Function Attrs: nounwind uwtable
define internal void @lz_encoder_end(ptr noundef %pcoder, ptr noundef %allocator) #0 !dbg !692 {
entry:
    #dbg_value(ptr %pcoder, !694, !DIExpression(), !697)
    #dbg_value(ptr %allocator, !695, !DIExpression(), !697)
    #dbg_value(ptr %pcoder, !696, !DIExpression(), !697)
  %next = getelementptr inbounds i8, ptr %pcoder, i64 152, !dbg !698
  tail call void @lzma_next_end(ptr noundef nonnull %next, ptr noundef %allocator) #7, !dbg !699
  %mf = getelementptr inbounds i8, ptr %pcoder, i64 32, !dbg !700
  %hash = getelementptr inbounds i8, ptr %pcoder, i64 96, !dbg !701
  %0 = load ptr, ptr %hash, align 8, !dbg !701
  tail call void @lzma_free(ptr noundef %0, ptr noundef %allocator) #7, !dbg !702
  %1 = load ptr, ptr %mf, align 8, !dbg !703
  tail call void @lzma_free(ptr noundef %1, ptr noundef %allocator) #7, !dbg !704
  %end = getelementptr inbounds i8, ptr %pcoder, i64 16, !dbg !705
  %2 = load ptr, ptr %end, align 8, !dbg !705
  %cmp.not = icmp eq ptr %2, null, !dbg !707
  %3 = load ptr, ptr %pcoder, align 8, !dbg !708
  br i1 %cmp.not, label %if.else, label %if.then, !dbg !709

if.then:                                          ; preds = %entry
  tail call void %2(ptr noundef %3, ptr noundef %allocator) #7, !dbg !710
  br label %if.end, !dbg !710

if.else:                                          ; preds = %entry
  tail call void @lzma_free(ptr noundef %3, ptr noundef %allocator) #7, !dbg !711
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @lzma_free(ptr noundef nonnull %pcoder, ptr noundef %allocator) #7, !dbg !712
  ret void, !dbg !713
}

; Function Attrs: nounwind uwtable
define internal i32 @lz_encoder_update(ptr noundef %pcoder, ptr noundef %allocator, ptr nocapture readnone %filters_null, ptr noundef %reversed_filters) #0 !dbg !714 {
entry:
    #dbg_value(ptr %pcoder, !716, !DIExpression(), !723)
    #dbg_value(ptr %allocator, !717, !DIExpression(), !723)
    #dbg_value(ptr poison, !718, !DIExpression(), !723)
    #dbg_value(ptr %reversed_filters, !719, !DIExpression(), !723)
    #dbg_value(ptr %pcoder, !720, !DIExpression(), !723)
  %options_update = getelementptr inbounds i8, ptr %pcoder, i64 24, !dbg !724
  %0 = load ptr, ptr %options_update, align 8, !dbg !724
  %cmp = icmp eq ptr %0, null, !dbg !726
  br i1 %cmp, label %cleanup9, label %do.body, !dbg !727

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %pcoder, align 8, !dbg !728
  %call = tail call i32 %0(ptr noundef %1, ptr noundef %reversed_filters) #7, !dbg !728
    #dbg_value(i32 %call, !721, !DIExpression(), !729)
  %cmp5.not = icmp eq i32 %call, 0, !dbg !730
  br i1 %cmp5.not, label %do.end, label %cleanup9

do.end:                                           ; preds = %do.body
  %next = getelementptr inbounds i8, ptr %pcoder, i64 152, !dbg !732
  %add.ptr = getelementptr inbounds i8, ptr %reversed_filters, i64 16, !dbg !733
  %call8 = tail call i32 @lzma_next_filter_update(ptr noundef nonnull %next, ptr noundef %allocator, ptr noundef nonnull %add.ptr) #7, !dbg !734
  br label %cleanup9, !dbg !735

cleanup9:                                         ; preds = %entry, %do.body, %do.end
  %retval.1 = phi i32 [ %call8, %do.end ], [ %call, %do.body ], [ 11, %entry ], !dbg !723
  ret i32 %retval.1, !dbg !736
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare !dbg !737 i32 @lzma_next_filter_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext range(i8 0, 2) i8 @lzma_mf_is_supported(i32 noundef %mf) local_unnamed_addr #5 !dbg !738 {
entry:
    #dbg_value(i32 %mf, !743, !DIExpression(), !745)
    #dbg_value(i8 0, !744, !DIExpression(), !745)
    #dbg_value(i32 %mf, !744, !DIExpression(DW_OP_constu, 3, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !745)
  %0 = add i32 %mf, -3, !dbg !746
  %narrow = icmp ult i32 %0, 2, !dbg !746
    #dbg_value(i1 %narrow, !744, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !745)
    #dbg_value(!DIArgList(i32 %mf, i1 %narrow), !744, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18, DW_OP_eq, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !745)
  %1 = and i32 %mf, -2, !dbg !747
  %2 = icmp eq i32 %1, 18, !dbg !747
  %narrow22 = or i1 %2, %narrow, !dbg !747
    #dbg_value(i1 %narrow22, !744, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !745)
  %cmp10 = icmp eq i32 %mf, 20, !dbg !748
  %narrow23 = or i1 %cmp10, %narrow22, !dbg !750
    #dbg_value(i1 %narrow23, !744, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !745)
  %conv = zext i1 %narrow23 to i8, !dbg !751
  ret i8 %conv, !dbg !752
}

declare !dbg !753 void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @lzma_mf_hc3_find(ptr noundef, ptr noundef) #3

declare void @lzma_mf_hc3_skip(ptr noundef, i32 noundef) #3

declare i32 @lzma_mf_hc4_find(ptr noundef, ptr noundef) #3

declare void @lzma_mf_hc4_skip(ptr noundef, i32 noundef) #3

declare i32 @lzma_mf_bt2_find(ptr noundef, ptr noundef) #3

declare void @lzma_mf_bt2_skip(ptr noundef, i32 noundef) #3

declare i32 @lzma_mf_bt3_find(ptr noundef, ptr noundef) #3

declare void @lzma_mf_bt3_skip(ptr noundef, i32 noundef) #3

declare i32 @lzma_mf_bt4_find(ptr noundef, ptr noundef) #3

declare void @lzma_mf_bt4_skip(ptr noundef, i32 noundef) #3

declare !dbg !756 i64 @lzma_bufcpy(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #4

declare !dbg !759 void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !762 i32 @lzma_next_filter_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!185, !186, !187, !188, !189, !190, !191}
!llvm.ident = !{!192}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !40, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "liblzma/lz/lz_encoder.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "65da03540b3892812a4487523e184b85")
!2 = !{!3, !12, !19, !33}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 58, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "liblzma/api/lzma/lzma.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "c59c540efa0aff44f03d71331089fff8")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11}
!7 = !DIEnumerator(name: "LZMA_MF_HC3", value: 3)
!8 = !DIEnumerator(name: "LZMA_MF_HC4", value: 4)
!9 = !DIEnumerator(name: "LZMA_MF_BT2", value: 18)
!10 = !DIEnumerator(name: "LZMA_MF_BT3", value: 19)
!11 = !DIEnumerator(name: "LZMA_MF_BT4", value: 20)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 250, baseType: !5, size: 32, elements: !14)
!13 = !DIFile(filename: "liblzma/api/lzma/base.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "81a3070447cc5b61b56cfbed076853db")
!14 = !{!15, !16, !17, !18}
!15 = !DIEnumerator(name: "LZMA_RUN", value: 0)
!16 = !DIEnumerator(name: "LZMA_SYNC_FLUSH", value: 1)
!17 = !DIEnumerator(name: "LZMA_FULL_FLUSH", value: 2)
!18 = !DIEnumerator(name: "LZMA_FINISH", value: 3)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 57, baseType: !5, size: 32, elements: !20)
!20 = !{!21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!21 = !DIEnumerator(name: "LZMA_OK", value: 0)
!22 = !DIEnumerator(name: "LZMA_STREAM_END", value: 1)
!23 = !DIEnumerator(name: "LZMA_NO_CHECK", value: 2)
!24 = !DIEnumerator(name: "LZMA_UNSUPPORTED_CHECK", value: 3)
!25 = !DIEnumerator(name: "LZMA_GET_CHECK", value: 4)
!26 = !DIEnumerator(name: "LZMA_MEM_ERROR", value: 5)
!27 = !DIEnumerator(name: "LZMA_MEMLIMIT_ERROR", value: 6)
!28 = !DIEnumerator(name: "LZMA_FORMAT_ERROR", value: 7)
!29 = !DIEnumerator(name: "LZMA_OPTIONS_ERROR", value: 8)
!30 = !DIEnumerator(name: "LZMA_DATA_ERROR", value: 9)
!31 = !DIEnumerator(name: "LZMA_BUF_ERROR", value: 10)
!32 = !DIEnumerator(name: "LZMA_PROG_ERROR", value: 11)
!33 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !34, line: 27, baseType: !5, size: 32, elements: !35)
!34 = !DIFile(filename: "liblzma/api/lzma/check.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "b07c3297e2bcc14bb477793d08325ee3")
!35 = !{!36, !37, !38, !39}
!36 = !DIEnumerator(name: "LZMA_CHECK_NONE", value: 0)
!37 = !DIEnumerator(name: "LZMA_CHECK_CRC32", value: 1)
!38 = !DIEnumerator(name: "LZMA_CHECK_CRC64", value: 4)
!39 = !DIEnumerator(name: "LZMA_CHECK_SHA256", value: 10)
!40 = !{!41, !42, !47, !116}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !43, line: 27, baseType: !44)
!43 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !45, line: 45, baseType: !46)
!45 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!46 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_coder_s", file: !1, line: 24, size: 1728, elements: !49)
!49 = !{!50, !149, !150}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "lz", scope: !48, file: !1, line: 26, baseType: !51, size: 256)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_lz_encoder", file: !52, line: 208, baseType: !53)
!52 = !DIFile(filename: "liblzma/lz/lz_encoder.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "780f78e6e21a3ca52f57df68bfdc6f53")
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !52, line: 192, size: 256, elements: !54)
!54 = !{!55, !59, !118, !135}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !53, file: !52, line: 194, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_coder", file: !58, line: 78, baseType: null)
!58 = !DIFile(filename: "liblzma/common/common.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!59 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !53, file: !52, line: 197, baseType: !60, size: 64, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{!63, !64, !65, !113, !114, !116}
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !13, line: 237, baseType: !19)
!64 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !56)
!65 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_mf", file: !52, line: 28, baseType: !68)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_mf_s", file: !52, line: 29, size: 960, elements: !69)
!69 = !{!70, !75, !78, !79, !80, !81, !82, !83, !84, !85, !86, !96, !100, !102, !103, !104, !105, !106, !107, !108, !109, !111, !112}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !68, file: !52, line: 35, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !43, line: 24, baseType: !73)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !45, line: 38, baseType: !74)
!74 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !68, file: !52, line: 39, baseType: !76, size: 32, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !43, line: 26, baseType: !77)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !45, line: 42, baseType: !5)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "keep_size_before", scope: !68, file: !52, line: 45, baseType: !76, size: 32, offset: 96)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "keep_size_after", scope: !68, file: !52, line: 51, baseType: !76, size: 32, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !68, file: !52, line: 58, baseType: !76, size: 32, offset: 160)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !68, file: !52, line: 63, baseType: !76, size: 32, offset: 192)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "read_ahead", scope: !68, file: !52, line: 67, baseType: !76, size: 32, offset: 224)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "read_limit", scope: !68, file: !52, line: 75, baseType: !76, size: 32, offset: 256)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "write_pos", scope: !68, file: !52, line: 80, baseType: !76, size: 32, offset: 288)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !68, file: !52, line: 84, baseType: !76, size: 32, offset: 320)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "find", scope: !68, file: !52, line: 92, baseType: !87, size: 64, offset: 384)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DISubroutineType(types: !89)
!89 = !{!76, !66, !90}
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_match", file: !52, line: 25, baseType: !92)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !52, line: 22, size: 64, elements: !93)
!93 = !{!94, !95}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !92, file: !52, line: 23, baseType: !76, size: 32)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "dist", scope: !92, file: !52, line: 24, baseType: !76, size: 32, offset: 32)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !68, file: !52, line: 97, baseType: !97, size: 64, offset: 448)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DISubroutineType(types: !99)
!99 = !{null, !66, !76}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !68, file: !52, line: 99, baseType: !101, size: 64, offset: 512)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "son", scope: !68, file: !52, line: 100, baseType: !101, size: 64, offset: 576)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "cyclic_pos", scope: !68, file: !52, line: 101, baseType: !76, size: 32, offset: 640)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "cyclic_size", scope: !68, file: !52, line: 102, baseType: !76, size: 32, offset: 672)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "hash_mask", scope: !68, file: !52, line: 103, baseType: !76, size: 32, offset: 704)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !68, file: !52, line: 106, baseType: !76, size: 32, offset: 736)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "nice_len", scope: !68, file: !52, line: 109, baseType: !76, size: 32, offset: 768)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "match_len_max", scope: !68, file: !52, line: 114, baseType: !76, size: 32, offset: 800)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !68, file: !52, line: 119, baseType: !110, size: 32, offset: 832)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !13, line: 322, baseType: !12)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "hash_size_sum", scope: !68, file: !52, line: 122, baseType: !76, size: 32, offset: 864)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "sons_count", scope: !68, file: !52, line: 125, baseType: !76, size: 32, offset: 896)
!113 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !71)
!114 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !117, line: 18, baseType: !46)
!117 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!118 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !53, file: !52, line: 202, baseType: !119, size: 64, offset: 128)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DISubroutineType(types: !121)
!121 = !{null, !56, !122}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !13, line: 403, baseType: !124)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 341, size: 192, elements: !125)
!125 = !{!126, !130, !134}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !124, file: !13, line: 376, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DISubroutineType(types: !129)
!129 = !{!41, !41, !116, !116}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !124, file: !13, line: 390, baseType: !131, size: 64, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{null, !41, !41}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !124, file: !13, line: 401, baseType: !41, size: 64, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "options_update", scope: !53, file: !52, line: 205, baseType: !136, size: 64, offset: 192)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DISubroutineType(types: !138)
!138 = !{!63, !56, !139}
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !142, line: 65, baseType: !143)
!142 = !DIFile(filename: "liblzma/api/lzma/filter.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !142, line: 43, size: 128, elements: !144)
!144 = !{!145, !148}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !143, file: !142, line: 54, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !147, line: 63, baseType: !42)
!147 = !DIFile(filename: "liblzma/api/lzma/vli.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!148 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !143, file: !142, line: 63, baseType: !41, size: 64, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "mf", scope: !48, file: !1, line: 29, baseType: !67, size: 960, offset: 256)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !48, file: !1, line: 32, baseType: !151, size: 512, offset: 1216)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_next_coder", file: !58, line: 80, baseType: !152)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_next_coder_s", file: !58, line: 124, size: 512, elements: !153)
!153 = !{!154, !155, !156, !159, !167, !169, !176, !181}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !152, file: !58, line: 126, baseType: !56, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !152, file: !58, line: 130, baseType: !146, size: 64, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !152, file: !58, line: 136, baseType: !157, size: 64, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !158, line: 90, baseType: !46)
!158 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!159 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !152, file: !58, line: 139, baseType: !160, size: 64, offset: 192)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_code_function", file: !58, line: 94, baseType: !161)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DISubroutineType(types: !163)
!163 = !{!63, !56, !122, !164, !114, !116, !113, !114, !116, !110}
!164 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !165)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !152, file: !58, line: 144, baseType: !168, size: 64, offset: 256)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_end_function", file: !58, line: 102, baseType: !119)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "get_check", scope: !152, file: !58, line: 148, baseType: !170, size: 64, offset: 320)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DISubroutineType(types: !172)
!172 = !{!173, !174}
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !34, line: 55, baseType: !33)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "memconfig", scope: !152, file: !58, line: 152, baseType: !177, size: 64, offset: 384)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DISubroutineType(types: !179)
!179 = !{!63, !56, !180, !180, !42}
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !152, file: !58, line: 157, baseType: !182, size: 64, offset: 448)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DISubroutineType(types: !184)
!184 = !{!63, !56, !122, !139, !139}
!185 = !{i32 7, !"Dwarf Version", i32 5}
!186 = !{i32 2, !"Debug Info Version", i32 3}
!187 = !{i32 1, !"wchar_size", i32 4}
!188 = !{i32 8, !"PIC Level", i32 2}
!189 = !{i32 7, !"PIE Level", i32 2}
!190 = !{i32 7, !"uwtable", i32 2}
!191 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!192 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!193 = distinct !DISubprogram(name: "lzma_lz_encoder_memusage", scope: !1, file: !1, line: 444, type: !194, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !211)
!194 = !DISubroutineType(types: !195)
!195 = !{!42, !196}
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_lz_options", file: !52, line: 161, baseType: !199)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !52, line: 129, size: 512, elements: !200)
!200 = !{!201, !202, !203, !204, !205, !206, !208, !209, !210}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "before_size", scope: !199, file: !52, line: 132, baseType: !116, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "dict_size", scope: !199, file: !52, line: 135, baseType: !116, size: 64, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "after_size", scope: !199, file: !52, line: 139, baseType: !116, size: 64, offset: 128)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "match_len_max", scope: !199, file: !52, line: 144, baseType: !116, size: 64, offset: 192)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "nice_len", scope: !199, file: !52, line: 148, baseType: !116, size: 64, offset: 256)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "match_finder", scope: !199, file: !52, line: 151, baseType: !207, size: 32, offset: 320)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_match_finder", file: !4, line: 111, baseType: !3)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !199, file: !52, line: 154, baseType: !76, size: 32, offset: 352)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict", scope: !199, file: !52, line: 157, baseType: !165, size: 64, offset: 384)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict_size", scope: !199, file: !52, line: 159, baseType: !76, size: 32, offset: 448)
!211 = !{!212, !213}
!212 = !DILocalVariable(name: "lz_options", arg: 1, scope: !193, file: !1, line: 444, type: !196)
!213 = !DILocalVariable(name: "mf", scope: !193, file: !1, line: 447, type: !67)
!214 = distinct !DIAssignID()
!215 = !DILocation(line: 0, scope: !193)
!216 = !DILocation(line: 447, column: 2, scope: !193)
!217 = !DILocation(line: 447, column: 10, scope: !193)
!218 = distinct !DIAssignID()
!219 = !DILocation(line: 455, column: 6, scope: !220)
!220 = distinct !DILexicalBlock(scope: !193, file: !1, line: 455, column: 6)
!221 = !DILocation(line: 455, column: 6, scope: !193)
!222 = !DILocation(line: 459, column: 23, scope: !193)
!223 = !DILocation(line: 459, column: 42, scope: !193)
!224 = !DILocation(line: 459, column: 37, scope: !193)
!225 = !DILocation(line: 459, column: 9, scope: !193)
!226 = !DILocation(line: 460, column: 5, scope: !193)
!227 = !DILocation(line: 461, column: 41, scope: !193)
!228 = !DILocation(line: 461, column: 27, scope: !193)
!229 = !DILocation(line: 461, column: 25, scope: !193)
!230 = !DILocation(line: 461, column: 47, scope: !193)
!231 = !DILocation(line: 459, column: 2, scope: !193)
!232 = !DILocation(line: 462, column: 1, scope: !193)
!233 = distinct !DISubprogram(name: "lz_encoder_prepare", scope: !1, file: !1, line: 184, type: !234, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !237)
!234 = !DISubroutineType(types: !235)
!235 = !{!236, !66, !122, !196}
!236 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!237 = !{!238, !239, !240, !241, !242, !244, !245, !247, !248, !249}
!238 = !DILocalVariable(name: "mf", arg: 1, scope: !233, file: !1, line: 184, type: !66)
!239 = !DILocalVariable(name: "allocator", arg: 2, scope: !233, file: !1, line: 184, type: !122)
!240 = !DILocalVariable(name: "lz_options", arg: 3, scope: !233, file: !1, line: 185, type: !196)
!241 = !DILocalVariable(name: "reserve", scope: !233, file: !1, line: 212, type: !76)
!242 = !DILocalVariable(name: "old_size", scope: !233, file: !1, line: 219, type: !243)
!243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!244 = !DILocalVariable(name: "hash_bytes", scope: !233, file: !1, line: 289, type: !243)
!245 = !DILocalVariable(name: "is_bt", scope: !233, file: !1, line: 293, type: !246)
!246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !236)
!247 = !DILocalVariable(name: "hs", scope: !233, file: !1, line: 294, type: !76)
!248 = !DILocalVariable(name: "old_count", scope: !233, file: !1, line: 336, type: !243)
!249 = !DILocalVariable(name: "new_count", scope: !233, file: !1, line: 342, type: !243)
!250 = !DILocation(line: 0, scope: !233)
!251 = !DILocation(line: 190, column: 18, scope: !252)
!252 = distinct !DILexicalBlock(scope: !233, file: !1, line: 190, column: 6)
!253 = !DILocation(line: 191, column: 4, scope: !252)
!254 = !DILocation(line: 193, column: 19, scope: !252)
!255 = !DILocation(line: 193, column: 42, scope: !252)
!256 = !DILocation(line: 193, column: 28, scope: !252)
!257 = !DILocation(line: 190, column: 6, scope: !233)
!258 = !DILocation(line: 196, column: 37, scope: !233)
!259 = !DILocation(line: 196, column: 49, scope: !233)
!260 = !DILocation(line: 196, column: 25, scope: !233)
!261 = !DILocation(line: 196, column: 6, scope: !233)
!262 = !DILocation(line: 196, column: 23, scope: !233)
!263 = !DILocation(line: 198, column: 36, scope: !233)
!264 = !DILocation(line: 199, column: 18, scope: !233)
!265 = !DILocation(line: 199, column: 4, scope: !233)
!266 = !DILocation(line: 198, column: 24, scope: !233)
!267 = !DILocation(line: 198, column: 6, scope: !233)
!268 = !DILocation(line: 198, column: 22, scope: !233)
!269 = !DILocation(line: 212, column: 33, scope: !233)
!270 = !DILocation(line: 212, column: 43, scope: !233)
!271 = !DILocation(line: 212, column: 21, scope: !233)
!272 = !DILocation(line: 213, column: 14, scope: !273)
!273 = distinct !DILexicalBlock(scope: !233, file: !1, line: 213, column: 6)
!274 = !DILocation(line: 213, column: 6, scope: !233)
!275 = !DILocation(line: 216, column: 26, scope: !233)
!276 = !DILocation(line: 216, column: 52, scope: !233)
!277 = !DILocation(line: 216, column: 38, scope: !233)
!278 = !DILocation(line: 217, column: 18, scope: !233)
!279 = !DILocation(line: 217, column: 4, scope: !233)
!280 = !DILocation(line: 217, column: 30, scope: !233)
!281 = !DILocation(line: 216, column: 10, scope: !233)
!282 = !DILocation(line: 219, column: 32, scope: !233)
!283 = !DILocation(line: 220, column: 34, scope: !233)
!284 = !DILocation(line: 220, column: 44, scope: !233)
!285 = !DILocation(line: 220, column: 11, scope: !233)
!286 = !DILocation(line: 224, column: 10, scope: !287)
!287 = distinct !DILexicalBlock(scope: !233, file: !1, line: 224, column: 6)
!288 = !DILocation(line: 224, column: 17, scope: !287)
!289 = !DILocation(line: 224, column: 25, scope: !287)
!290 = !DILocation(line: 225, column: 3, scope: !291)
!291 = distinct !DILexicalBlock(scope: !287, file: !1, line: 224, column: 50)
!292 = !DILocation(line: 226, column: 14, scope: !291)
!293 = !DILocation(line: 227, column: 2, scope: !291)
!294 = !DILocation(line: 230, column: 34, scope: !233)
!295 = !DILocation(line: 230, column: 22, scope: !233)
!296 = !DILocation(line: 230, column: 6, scope: !233)
!297 = !DILocation(line: 230, column: 20, scope: !233)
!298 = !DILocation(line: 231, column: 29, scope: !233)
!299 = !DILocation(line: 231, column: 17, scope: !233)
!300 = !DILocation(line: 231, column: 6, scope: !233)
!301 = !DILocation(line: 231, column: 15, scope: !233)
!302 = !DILocation(line: 248, column: 32, scope: !233)
!303 = !DILocation(line: 248, column: 20, scope: !233)
!304 = !DILocation(line: 248, column: 6, scope: !233)
!305 = !DILocation(line: 248, column: 18, scope: !233)
!306 = !DILocation(line: 251, column: 22, scope: !233)
!307 = !DILocation(line: 251, column: 2, scope: !233)
!308 = !DILocation(line: 262, column: 3, scope: !309)
!309 = distinct !DILexicalBlock(scope: !233, file: !1, line: 251, column: 36)
!310 = !DILocation(line: 268, column: 3, scope: !309)
!311 = !DILocation(line: 274, column: 3, scope: !309)
!312 = !DILocation(line: 280, column: 3, scope: !309)
!313 = !DILocation(line: 0, scope: !309)
!314 = !DILocation(line: 289, column: 42, scope: !233)
!315 = !DILocation(line: 289, column: 55, scope: !233)
!316 = !DILocation(line: 290, column: 17, scope: !317)
!317 = distinct !DILexicalBlock(scope: !233, file: !1, line: 290, column: 6)
!318 = !DILocation(line: 290, column: 6, scope: !233)
!319 = !DILocation(line: 293, column: 47, scope: !233)
!320 = !DILocation(line: 293, column: 55, scope: !233)
!321 = !DILocation(line: 296, column: 17, scope: !322)
!322 = distinct !DILexicalBlock(scope: !233, file: !1, line: 296, column: 6)
!323 = !DILocation(line: 296, column: 6, scope: !233)
!324 = !DILocation(line: 301, column: 20, scope: !325)
!325 = distinct !DILexicalBlock(scope: !322, file: !1, line: 298, column: 9)
!326 = !DILocation(line: 301, column: 8, scope: !325)
!327 = !DILocation(line: 302, column: 12, scope: !325)
!328 = !DILocation(line: 302, column: 6, scope: !325)
!329 = !DILocation(line: 303, column: 12, scope: !325)
!330 = !DILocation(line: 303, column: 6, scope: !325)
!331 = !DILocation(line: 304, column: 12, scope: !325)
!332 = !DILocation(line: 304, column: 6, scope: !325)
!333 = !DILocation(line: 306, column: 6, scope: !325)
!334 = !DILocation(line: 307, column: 6, scope: !325)
!335 = !DILocation(line: 309, column: 10, scope: !336)
!336 = distinct !DILexicalBlock(scope: !325, file: !1, line: 309, column: 7)
!337 = !DILocation(line: 309, column: 7, scope: !325)
!338 = !DILocation(line: 310, column: 19, scope: !339)
!339 = distinct !DILexicalBlock(scope: !340, file: !1, line: 310, column: 8)
!340 = distinct !DILexicalBlock(scope: !336, file: !1, line: 309, column: 33)
!341 = !DILocation(line: 310, column: 8, scope: !340)
!342 = !DILocation(line: 0, scope: !322)
!343 = !DILocation(line: 317, column: 6, scope: !233)
!344 = !DILocation(line: 317, column: 16, scope: !233)
!345 = !DILocation(line: 320, column: 17, scope: !346)
!346 = distinct !DILexicalBlock(scope: !233, file: !1, line: 320, column: 6)
!347 = !DILocation(line: 320, column: 6, scope: !233)
!348 = !DILocation(line: 322, column: 17, scope: !349)
!349 = distinct !DILexicalBlock(scope: !233, file: !1, line: 322, column: 6)
!350 = !DILocation(line: 322, column: 6, scope: !233)
!351 = !DILocation(line: 336, column: 33, scope: !233)
!352 = !DILocation(line: 336, column: 53, scope: !233)
!353 = !DILocation(line: 336, column: 47, scope: !233)
!354 = !DILocation(line: 337, column: 20, scope: !233)
!355 = !DILocation(line: 339, column: 6, scope: !233)
!356 = !DILocation(line: 342, column: 47, scope: !233)
!357 = !DILocation(line: 346, column: 16, scope: !358)
!358 = distinct !DILexicalBlock(scope: !233, file: !1, line: 346, column: 6)
!359 = !DILocation(line: 346, column: 6, scope: !233)
!360 = !DILocation(line: 347, column: 17, scope: !361)
!361 = distinct !DILexicalBlock(scope: !358, file: !1, line: 346, column: 30)
!362 = !DILocation(line: 347, column: 3, scope: !361)
!363 = !DILocation(line: 348, column: 12, scope: !361)
!364 = !DILocation(line: 349, column: 2, scope: !361)
!365 = !DILocation(line: 352, column: 26, scope: !233)
!366 = !DILocation(line: 352, column: 6, scope: !233)
!367 = !DILocation(line: 352, column: 12, scope: !233)
!368 = !DILocation(line: 353, column: 16, scope: !369)
!369 = distinct !DILexicalBlock(scope: !233, file: !1, line: 353, column: 6)
!370 = !DILocation(line: 353, column: 6, scope: !233)
!371 = !DILocation(line: 0, scope: !372)
!372 = distinct !DILexicalBlock(scope: !373, file: !1, line: 354, column: 7)
!373 = distinct !DILexicalBlock(scope: !369, file: !1, line: 353, column: 22)
!374 = !DILocation(line: 361, column: 1, scope: !233)
!375 = distinct !DISubprogram(name: "lzma_lz_encoder_init", scope: !1, file: !1, line: 502, type: !376, scopeLine: 507, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !398)
!376 = !DISubroutineType(types: !377)
!377 = !{!63, !378, !122, !379, !391}
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !381)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter_info", file: !58, line: 82, baseType: !382)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_filter_info_s", file: !58, line: 109, size: 192, elements: !383)
!383 = !{!384, !385, !390}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !382, file: !58, line: 112, baseType: !146, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !382, file: !58, line: 116, baseType: !386, size: 64, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_init_function", file: !58, line: 86, baseType: !387)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DISubroutineType(types: !389)
!389 = !{!63, !378, !122, !379}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !382, file: !58, line: 119, baseType: !41, size: 64, offset: 128)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DISubroutineType(types: !393)
!393 = !{!63, !394, !122, !395, !397}
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!398 = !{!399, !400, !401, !402, !403, !404}
!399 = !DILocalVariable(name: "next", arg: 1, scope: !375, file: !1, line: 502, type: !378)
!400 = !DILocalVariable(name: "allocator", arg: 2, scope: !375, file: !1, line: 502, type: !122)
!401 = !DILocalVariable(name: "filters", arg: 3, scope: !375, file: !1, line: 503, type: !379)
!402 = !DILocalVariable(name: "lz_init", arg: 4, scope: !375, file: !1, line: 504, type: !391)
!403 = !DILocalVariable(name: "lz_options", scope: !375, file: !1, line: 536, type: !198)
!404 = !DILocalVariable(name: "ret_", scope: !405, file: !1, line: 537, type: !406)
!405 = distinct !DILexicalBlock(scope: !375, file: !1, line: 537, column: 2)
!406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!407 = distinct !DIAssignID()
!408 = !DILocation(line: 0, scope: !375)
!409 = !DILocation(line: 514, column: 12, scope: !410)
!410 = distinct !DILexicalBlock(scope: !375, file: !1, line: 514, column: 6)
!411 = !DILocation(line: 514, column: 18, scope: !410)
!412 = !DILocation(line: 514, column: 6, scope: !375)
!413 = !DILocation(line: 515, column: 17, scope: !414)
!414 = distinct !DILexicalBlock(scope: !410, file: !1, line: 514, column: 27)
!415 = !DILocation(line: 515, column: 15, scope: !414)
!416 = !DILocation(line: 516, column: 19, scope: !417)
!417 = distinct !DILexicalBlock(scope: !414, file: !1, line: 516, column: 7)
!418 = !DILocation(line: 516, column: 7, scope: !414)
!419 = !DILocation(line: 519, column: 9, scope: !414)
!420 = !DILocation(line: 519, column: 14, scope: !414)
!421 = !DILocation(line: 520, column: 9, scope: !414)
!422 = !DILocation(line: 520, column: 13, scope: !414)
!423 = !DILocation(line: 521, column: 9, scope: !414)
!424 = !DILocation(line: 521, column: 16, scope: !414)
!425 = !DILocation(line: 523, column: 49, scope: !414)
!426 = !DILocation(line: 524, column: 32, scope: !414)
!427 = !DILocation(line: 524, column: 43, scope: !414)
!428 = !DILocation(line: 524, column: 48, scope: !414)
!429 = !DILocation(line: 525, column: 32, scope: !414)
!430 = !DILocation(line: 525, column: 43, scope: !414)
!431 = !DILocation(line: 525, column: 47, scope: !414)
!432 = !DILocation(line: 527, column: 32, scope: !414)
!433 = !DILocation(line: 527, column: 40, scope: !414)
!434 = !DILocation(line: 527, column: 50, scope: !414)
!435 = !DILocation(line: 528, column: 32, scope: !414)
!436 = !DILocation(line: 528, column: 43, scope: !414)
!437 = !DILocation(line: 528, column: 48, scope: !414)
!438 = !DILocation(line: 529, column: 32, scope: !414)
!439 = !DILocation(line: 529, column: 43, scope: !414)
!440 = !DILocation(line: 529, column: 57, scope: !414)
!441 = !DILocation(line: 530, column: 32, scope: !414)
!442 = !DILocation(line: 530, column: 43, scope: !414)
!443 = !DILocation(line: 530, column: 54, scope: !414)
!444 = !DILocation(line: 532, column: 32, scope: !414)
!445 = !DILocation(line: 532, column: 40, scope: !414)
!446 = !DILocation(line: 532, column: 47, scope: !414)
!447 = !DILocation(line: 537, column: 2, scope: !405)
!448 = !DILocation(line: 533, column: 2, scope: !414)
!449 = !DILocation(line: 536, column: 2, scope: !375)
!450 = !DILocation(line: 0, scope: !405)
!451 = !DILocation(line: 537, column: 2, scope: !452)
!452 = distinct !DILexicalBlock(scope: !405, file: !1, line: 537, column: 2)
!453 = !DILocation(line: 542, column: 55, scope: !454)
!454 = distinct !DILexicalBlock(scope: !375, file: !1, line: 542, column: 6)
!455 = !DILocation(line: 542, column: 63, scope: !454)
!456 = !DILocation(line: 542, column: 6, scope: !454)
!457 = !DILocation(line: 542, column: 6, scope: !375)
!458 = !DILocation(line: 547, column: 52, scope: !459)
!459 = distinct !DILexicalBlock(scope: !375, file: !1, line: 547, column: 6)
!460 = !DILocation(line: 547, column: 60, scope: !459)
!461 = !DILocalVariable(name: "mf", arg: 1, scope: !462, file: !1, line: 365, type: !66)
!462 = distinct !DISubprogram(name: "lz_encoder_init", scope: !1, file: !1, line: 365, type: !234, scopeLine: 367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !463)
!463 = !{!461, !464, !465, !466}
!464 = !DILocalVariable(name: "allocator", arg: 2, scope: !462, file: !1, line: 365, type: !122)
!465 = !DILocalVariable(name: "lz_options", arg: 3, scope: !462, file: !1, line: 366, type: !196)
!466 = !DILocalVariable(name: "alloc_count", scope: !462, file: !1, line: 387, type: !467)
!467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!468 = !DILocation(line: 0, scope: !462, inlinedAt: !469)
!469 = distinct !DILocation(line: 547, column: 6, scope: !459)
!470 = !DILocation(line: 369, column: 10, scope: !471, inlinedAt: !469)
!471 = distinct !DILexicalBlock(scope: !462, file: !1, line: 369, column: 6)
!472 = !DILocation(line: 369, column: 17, scope: !471, inlinedAt: !469)
!473 = !DILocation(line: 369, column: 6, scope: !462, inlinedAt: !469)
!474 = !DILocation(line: 370, column: 31, scope: !475, inlinedAt: !469)
!475 = distinct !DILexicalBlock(scope: !471, file: !1, line: 369, column: 26)
!476 = !DILocation(line: 370, column: 27, scope: !475, inlinedAt: !469)
!477 = !DILocation(line: 370, column: 16, scope: !475, inlinedAt: !469)
!478 = !DILocation(line: 370, column: 14, scope: !475, inlinedAt: !469)
!479 = !DILocation(line: 371, column: 18, scope: !480, inlinedAt: !469)
!480 = distinct !DILexicalBlock(scope: !475, file: !1, line: 371, column: 7)
!481 = !DILocation(line: 371, column: 7, scope: !475, inlinedAt: !469)
!482 = !DILocation(line: 379, column: 19, scope: !462, inlinedAt: !469)
!483 = !DILocation(line: 379, column: 6, scope: !462, inlinedAt: !469)
!484 = !DILocation(line: 379, column: 13, scope: !462, inlinedAt: !469)
!485 = !DILocation(line: 380, column: 6, scope: !462, inlinedAt: !469)
!486 = !DILocation(line: 383, column: 6, scope: !462, inlinedAt: !469)
!487 = !DILocation(line: 387, column: 33, scope: !462, inlinedAt: !469)
!488 = !DILocation(line: 396, column: 10, scope: !489, inlinedAt: !469)
!489 = distinct !DILexicalBlock(scope: !462, file: !1, line: 396, column: 6)
!490 = !DILocation(line: 381, column: 17, scope: !462, inlinedAt: !469)
!491 = !DILocation(line: 396, column: 15, scope: !489, inlinedAt: !469)
!492 = !DILocation(line: 396, column: 6, scope: !462, inlinedAt: !469)
!493 = !DILocation(line: 387, column: 53, scope: !462, inlinedAt: !469)
!494 = !DILocation(line: 387, column: 47, scope: !462, inlinedAt: !469)
!495 = !DILocation(line: 387, column: 29, scope: !462, inlinedAt: !469)
!496 = !DILocation(line: 397, column: 37, scope: !497, inlinedAt: !469)
!497 = distinct !DILexicalBlock(scope: !489, file: !1, line: 396, column: 24)
!498 = !DILocation(line: 397, column: 14, scope: !497, inlinedAt: !469)
!499 = !DILocation(line: 397, column: 12, scope: !497, inlinedAt: !469)
!500 = !DILocation(line: 399, column: 16, scope: !501, inlinedAt: !469)
!501 = distinct !DILexicalBlock(scope: !497, file: !1, line: 399, column: 7)
!502 = !DILocation(line: 399, column: 7, scope: !497, inlinedAt: !469)
!503 = !DILocation(line: 403, column: 16, scope: !462, inlinedAt: !469)
!504 = !DILocation(line: 403, column: 27, scope: !462, inlinedAt: !469)
!505 = !DILocation(line: 403, column: 21, scope: !462, inlinedAt: !469)
!506 = !DILocation(line: 403, column: 6, scope: !462, inlinedAt: !469)
!507 = !DILocation(line: 403, column: 10, scope: !462, inlinedAt: !469)
!508 = !DILocation(line: 404, column: 6, scope: !462, inlinedAt: !469)
!509 = !DILocation(line: 404, column: 17, scope: !462, inlinedAt: !469)
!510 = !DILocation(line: 412, column: 2, scope: !462, inlinedAt: !469)
!511 = !DILocation(line: 425, column: 18, scope: !512, inlinedAt: !469)
!512 = distinct !DILexicalBlock(scope: !462, file: !1, line: 425, column: 6)
!513 = !DILocation(line: 425, column: 30, scope: !512, inlinedAt: !469)
!514 = !DILocation(line: 426, column: 4, scope: !512, inlinedAt: !469)
!515 = !DILocation(line: 426, column: 19, scope: !512, inlinedAt: !469)
!516 = !DILocation(line: 426, column: 36, scope: !512, inlinedAt: !469)
!517 = !DILocation(line: 425, column: 6, scope: !462, inlinedAt: !469)
!518 = !DILocation(line: 429, column: 19, scope: !519, inlinedAt: !469)
!519 = distinct !DILexicalBlock(scope: !512, file: !1, line: 426, column: 41)
!520 = !DILocation(line: 429, column: 17, scope: !519, inlinedAt: !469)
!521 = !DILocation(line: 430, column: 14, scope: !519, inlinedAt: !469)
!522 = !DILocation(line: 431, column: 5, scope: !519, inlinedAt: !469)
!523 = !DILocation(line: 431, column: 36, scope: !519, inlinedAt: !469)
!524 = !DILocation(line: 430, column: 3, scope: !519, inlinedAt: !469)
!525 = !DILocation(line: 433, column: 7, scope: !519, inlinedAt: !469)
!526 = !DILocation(line: 433, column: 14, scope: !519, inlinedAt: !469)
!527 = !DILocation(line: 434, column: 7, scope: !519, inlinedAt: !469)
!528 = !DILocation(line: 434, column: 20, scope: !519, inlinedAt: !469)
!529 = !DILocation(line: 434, column: 3, scope: !519, inlinedAt: !469)
!530 = !DILocation(line: 435, column: 2, scope: !519, inlinedAt: !469)
!531 = !DILocation(line: 437, column: 6, scope: !462, inlinedAt: !469)
!532 = !DILocation(line: 437, column: 13, scope: !462, inlinedAt: !469)
!533 = !DILocation(line: 551, column: 61, scope: !375)
!534 = !DILocation(line: 551, column: 69, scope: !375)
!535 = !DILocation(line: 552, column: 12, scope: !375)
!536 = !DILocation(line: 551, column: 9, scope: !375)
!537 = !DILocation(line: 551, column: 2, scope: !375)
!538 = !DILocation(line: 553, column: 1, scope: !375)
!539 = !DISubprogram(name: "lzma_alloc", scope: !58, file: !58, line: 211, type: !540, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!540 = !DISubroutineType(types: !541)
!541 = !{!41, !116, !122}
!542 = distinct !DISubprogram(name: "lz_encode", scope: !1, file: !1, line: 152, type: !162, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !543)
!543 = !{!544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !558}
!544 = !DILocalVariable(name: "pcoder", arg: 1, scope: !542, file: !1, line: 152, type: !56)
!545 = !DILocalVariable(name: "allocator", arg: 2, scope: !542, file: !1, line: 152, type: !122)
!546 = !DILocalVariable(name: "in", arg: 3, scope: !542, file: !1, line: 153, type: !164)
!547 = !DILocalVariable(name: "in_pos", arg: 4, scope: !542, file: !1, line: 153, type: !114)
!548 = !DILocalVariable(name: "in_size", arg: 5, scope: !542, file: !1, line: 154, type: !116)
!549 = !DILocalVariable(name: "out", arg: 6, scope: !542, file: !1, line: 155, type: !113)
!550 = !DILocalVariable(name: "out_pos", arg: 7, scope: !542, file: !1, line: 155, type: !114)
!551 = !DILocalVariable(name: "out_size", arg: 8, scope: !542, file: !1, line: 156, type: !116)
!552 = !DILocalVariable(name: "action", arg: 9, scope: !542, file: !1, line: 156, type: !110)
!553 = !DILocalVariable(name: "coder", scope: !542, file: !1, line: 158, type: !47)
!554 = !DILocalVariable(name: "ret_", scope: !555, file: !1, line: 164, type: !406)
!555 = distinct !DILexicalBlock(scope: !556, file: !1, line: 164, column: 4)
!556 = distinct !DILexicalBlock(scope: !557, file: !1, line: 162, column: 7)
!557 = distinct !DILexicalBlock(scope: !542, file: !1, line: 160, column: 50)
!558 = !DILocalVariable(name: "ret", scope: !557, file: !1, line: 168, type: !406)
!559 = distinct !DIAssignID()
!560 = !DILocation(line: 0, scope: !542)
!561 = !DILocation(line: 159, column: 2, scope: !542)
!562 = !DILocation(line: 159, column: 9, scope: !542)
!563 = !DILocation(line: 159, column: 18, scope: !542)
!564 = !DILocation(line: 160, column: 4, scope: !542)
!565 = !DILocation(line: 160, column: 8, scope: !542)
!566 = !DILocation(line: 160, column: 16, scope: !542)
!567 = !DILocation(line: 160, column: 26, scope: !542)
!568 = !DILocation(line: 162, column: 17, scope: !556)
!569 = !DILocation(line: 162, column: 24, scope: !556)
!570 = !DILocation(line: 162, column: 36, scope: !556)
!571 = !DILocation(line: 162, column: 49, scope: !556)
!572 = !DILocation(line: 163, column: 18, scope: !556)
!573 = !DILocation(line: 163, column: 5, scope: !556)
!574 = !DILocation(line: 162, column: 7, scope: !557)
!575 = !DILocalVariable(name: "write_pos", scope: !576, file: !1, line: 92, type: !116)
!576 = distinct !DISubprogram(name: "fill_window", scope: !1, file: !1, line: 79, type: !577, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !579)
!577 = !DISubroutineType(types: !578)
!578 = !{!63, !56, !122, !165, !115, !116, !110}
!579 = !{!580, !581, !582, !583, !584, !585, !586, !575, !587, !588}
!580 = !DILocalVariable(name: "pcoder", arg: 1, scope: !576, file: !1, line: 79, type: !56)
!581 = !DILocalVariable(name: "allocator", arg: 2, scope: !576, file: !1, line: 79, type: !122)
!582 = !DILocalVariable(name: "in", arg: 3, scope: !576, file: !1, line: 79, type: !165)
!583 = !DILocalVariable(name: "in_pos", arg: 4, scope: !576, file: !1, line: 80, type: !115)
!584 = !DILocalVariable(name: "in_size", arg: 5, scope: !576, file: !1, line: 80, type: !116)
!585 = !DILocalVariable(name: "action", arg: 6, scope: !576, file: !1, line: 80, type: !110)
!586 = !DILocalVariable(name: "coder", scope: !576, file: !1, line: 82, type: !47)
!587 = !DILocalVariable(name: "ret", scope: !576, file: !1, line: 93, type: !63)
!588 = !DILocalVariable(name: "pending", scope: !589, file: !1, line: 134, type: !467)
!589 = distinct !DILexicalBlock(scope: !590, file: !1, line: 131, column: 50)
!590 = distinct !DILexicalBlock(scope: !576, file: !1, line: 130, column: 6)
!591 = !DILocation(line: 0, scope: !576, inlinedAt: !592)
!592 = distinct !DILocation(line: 164, column: 4, scope: !555)
!593 = !DILocation(line: 86, column: 38, scope: !594, inlinedAt: !592)
!594 = distinct !DILexicalBlock(scope: !576, file: !1, line: 86, column: 6)
!595 = !DILocation(line: 86, column: 55, scope: !594, inlinedAt: !592)
!596 = !DILocation(line: 86, column: 43, scope: !594, inlinedAt: !592)
!597 = !DILocation(line: 86, column: 25, scope: !594, inlinedAt: !592)
!598 = !DILocation(line: 86, column: 6, scope: !576, inlinedAt: !592)
!599 = !DILocation(line: 92, column: 31, scope: !576, inlinedAt: !592)
!600 = !DILocalVariable(name: "mf", arg: 1, scope: !601, file: !1, line: 44, type: !66)
!601 = distinct !DISubprogram(name: "move_window", scope: !1, file: !1, line: 44, type: !602, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !604)
!602 = !DISubroutineType(types: !603)
!603 = !{null, !66}
!604 = !{!600, !605, !606}
!605 = !DILocalVariable(name: "move_offset", scope: !601, file: !1, line: 51, type: !243)
!606 = !DILocalVariable(name: "move_size", scope: !601, file: !1, line: 55, type: !467)
!607 = !DILocation(line: 0, scope: !601, inlinedAt: !608)
!608 = distinct !DILocation(line: 87, column: 3, scope: !594, inlinedAt: !592)
!609 = !DILocation(line: 52, column: 25, scope: !601, inlinedAt: !608)
!610 = !DILocation(line: 52, column: 19, scope: !601, inlinedAt: !608)
!611 = !DILocation(line: 52, column: 43, scope: !601, inlinedAt: !608)
!612 = !DILocation(line: 55, column: 31, scope: !601, inlinedAt: !608)
!613 = !DILocation(line: 55, column: 41, scope: !601, inlinedAt: !608)
!614 = !DILocation(line: 55, column: 27, scope: !601, inlinedAt: !608)
!615 = !DILocation(line: 59, column: 14, scope: !601, inlinedAt: !608)
!616 = !DILocation(line: 59, column: 33, scope: !601, inlinedAt: !608)
!617 = !DILocation(line: 59, column: 2, scope: !601, inlinedAt: !608)
!618 = !DILocation(line: 61, column: 13, scope: !601, inlinedAt: !608)
!619 = !DILocation(line: 62, column: 15, scope: !601, inlinedAt: !608)
!620 = !DILocation(line: 63, column: 17, scope: !601, inlinedAt: !608)
!621 = !DILocation(line: 64, column: 16, scope: !601, inlinedAt: !608)
!622 = !DILocation(line: 87, column: 3, scope: !594, inlinedAt: !592)
!623 = !DILocation(line: 92, column: 2, scope: !576, inlinedAt: !592)
!624 = !DILocation(line: 92, column: 21, scope: !576, inlinedAt: !592)
!625 = !DILocation(line: 92, column: 9, scope: !576, inlinedAt: !592)
!626 = distinct !DIAssignID()
!627 = !DILocation(line: 94, column: 18, scope: !628, inlinedAt: !592)
!628 = distinct !DILexicalBlock(scope: !576, file: !1, line: 94, column: 6)
!629 = !DILocation(line: 94, column: 23, scope: !628, inlinedAt: !592)
!630 = !DILocation(line: 94, column: 6, scope: !576, inlinedAt: !592)
!631 = !DILocation(line: 96, column: 46, scope: !632, inlinedAt: !592)
!632 = distinct !DILexicalBlock(scope: !628, file: !1, line: 94, column: 32)
!633 = !DILocation(line: 97, column: 27, scope: !632, inlinedAt: !592)
!634 = !DILocation(line: 97, column: 17, scope: !632, inlinedAt: !592)
!635 = !DILocation(line: 96, column: 3, scope: !632, inlinedAt: !592)
!636 = !DILocation(line: 99, column: 28, scope: !632, inlinedAt: !592)
!637 = !DILocation(line: 109, column: 24, scope: !576, inlinedAt: !592)
!638 = !DILocation(line: 109, column: 22, scope: !576, inlinedAt: !592)
!639 = !DILocation(line: 115, column: 6, scope: !576, inlinedAt: !592)
!640 = !DILocation(line: 99, column: 31, scope: !632, inlinedAt: !592)
!641 = !DILocation(line: 99, column: 39, scope: !632, inlinedAt: !592)
!642 = !DILocation(line: 99, column: 9, scope: !632, inlinedAt: !592)
!643 = !DILocation(line: 103, column: 38, scope: !644, inlinedAt: !592)
!644 = distinct !DILexicalBlock(scope: !628, file: !1, line: 102, column: 9)
!645 = !DILocation(line: 105, column: 15, scope: !644, inlinedAt: !592)
!646 = !DILocation(line: 106, column: 15, scope: !644, inlinedAt: !592)
!647 = !DILocation(line: 106, column: 5, scope: !644, inlinedAt: !592)
!648 = !DILocation(line: 103, column: 9, scope: !644, inlinedAt: !592)
!649 = !DILocation(line: 0, scope: !628, inlinedAt: !592)
!650 = !DILocation(line: 115, column: 10, scope: !651, inlinedAt: !592)
!651 = distinct !DILexicalBlock(scope: !576, file: !1, line: 115, column: 6)
!652 = !DILocation(line: 118, column: 20, scope: !653, inlinedAt: !592)
!653 = distinct !DILexicalBlock(scope: !651, file: !1, line: 115, column: 30)
!654 = !DILocation(line: 121, column: 2, scope: !653, inlinedAt: !592)
!655 = !DILocation(line: 121, column: 45, scope: !656, inlinedAt: !592)
!656 = distinct !DILexicalBlock(scope: !651, file: !1, line: 121, column: 13)
!657 = !DILocation(line: 121, column: 33, scope: !656, inlinedAt: !592)
!658 = !DILocation(line: 121, column: 13, scope: !651, inlinedAt: !592)
!659 = !DILocation(line: 126, column: 5, scope: !660, inlinedAt: !592)
!660 = distinct !DILexicalBlock(scope: !656, file: !1, line: 121, column: 62)
!661 = !DILocation(line: 127, column: 2, scope: !660, inlinedAt: !592)
!662 = !DILocation(line: 0, scope: !651, inlinedAt: !592)
!663 = !DILocation(line: 130, column: 16, scope: !590, inlinedAt: !592)
!664 = !DILocation(line: 130, column: 24, scope: !590, inlinedAt: !592)
!665 = !DILocation(line: 131, column: 4, scope: !590, inlinedAt: !592)
!666 = !DILocation(line: 131, column: 17, scope: !590, inlinedAt: !592)
!667 = !DILocation(line: 131, column: 38, scope: !590, inlinedAt: !592)
!668 = !DILocation(line: 131, column: 26, scope: !590, inlinedAt: !592)
!669 = !DILocation(line: 130, column: 6, scope: !576, inlinedAt: !592)
!670 = !DILocation(line: 0, scope: !589, inlinedAt: !592)
!671 = !DILocation(line: 135, column: 21, scope: !589, inlinedAt: !592)
!672 = !DILocation(line: 140, column: 22, scope: !589, inlinedAt: !592)
!673 = !DILocation(line: 144, column: 13, scope: !589, inlinedAt: !592)
!674 = !DILocation(line: 144, column: 3, scope: !589, inlinedAt: !592)
!675 = !DILocation(line: 145, column: 2, scope: !589, inlinedAt: !592)
!676 = !DILocation(line: 148, column: 1, scope: !576, inlinedAt: !592)
!677 = !DILocation(line: 0, scope: !555)
!678 = !DILocation(line: 164, column: 4, scope: !679)
!679 = distinct !DILexicalBlock(scope: !555, file: !1, line: 164, column: 4)
!680 = !DILocation(line: 168, column: 34, scope: !557)
!681 = !DILocation(line: 168, column: 49, scope: !557)
!682 = !DILocation(line: 168, column: 24, scope: !557)
!683 = !DILocation(line: 0, scope: !557)
!684 = !DILocation(line: 170, column: 11, scope: !685)
!685 = distinct !DILexicalBlock(scope: !557, file: !1, line: 170, column: 7)
!686 = !DILocation(line: 170, column: 7, scope: !557)
!687 = distinct !{!687, !561, !688}
!688 = !DILocation(line: 177, column: 2, scope: !542)
!689 = !DILocation(line: 174, column: 21, scope: !690)
!690 = distinct !DILexicalBlock(scope: !685, file: !1, line: 170, column: 23)
!691 = !DILocation(line: 180, column: 1, scope: !542)
!692 = distinct !DISubprogram(name: "lz_encoder_end", scope: !1, file: !1, line: 466, type: !120, scopeLine: 467, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !693)
!693 = !{!694, !695, !696}
!694 = !DILocalVariable(name: "pcoder", arg: 1, scope: !692, file: !1, line: 466, type: !56)
!695 = !DILocalVariable(name: "allocator", arg: 2, scope: !692, file: !1, line: 466, type: !122)
!696 = !DILocalVariable(name: "coder", scope: !692, file: !1, line: 468, type: !47)
!697 = !DILocation(line: 0, scope: !692)
!698 = !DILocation(line: 469, column: 24, scope: !692)
!699 = !DILocation(line: 469, column: 2, scope: !692)
!700 = !DILocation(line: 471, column: 19, scope: !692)
!701 = !DILocation(line: 471, column: 22, scope: !692)
!702 = !DILocation(line: 471, column: 2, scope: !692)
!703 = !DILocation(line: 472, column: 22, scope: !692)
!704 = !DILocation(line: 472, column: 2, scope: !692)
!705 = !DILocation(line: 474, column: 16, scope: !706)
!706 = distinct !DILexicalBlock(scope: !692, file: !1, line: 474, column: 6)
!707 = !DILocation(line: 474, column: 20, scope: !706)
!708 = !DILocation(line: 0, scope: !706)
!709 = !DILocation(line: 474, column: 6, scope: !692)
!710 = !DILocation(line: 475, column: 3, scope: !706)
!711 = !DILocation(line: 477, column: 3, scope: !706)
!712 = !DILocation(line: 479, column: 2, scope: !692)
!713 = !DILocation(line: 481, column: 1, scope: !692)
!714 = distinct !DISubprogram(name: "lz_encoder_update", scope: !1, file: !1, line: 485, type: !183, scopeLine: 488, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !715)
!715 = !{!716, !717, !718, !719, !720, !721}
!716 = !DILocalVariable(name: "pcoder", arg: 1, scope: !714, file: !1, line: 485, type: !56)
!717 = !DILocalVariable(name: "allocator", arg: 2, scope: !714, file: !1, line: 485, type: !122)
!718 = !DILocalVariable(name: "filters_null", arg: 3, scope: !714, file: !1, line: 486, type: !139)
!719 = !DILocalVariable(name: "reversed_filters", arg: 4, scope: !714, file: !1, line: 487, type: !139)
!720 = !DILocalVariable(name: "coder", scope: !714, file: !1, line: 489, type: !47)
!721 = !DILocalVariable(name: "ret_", scope: !722, file: !1, line: 493, type: !406)
!722 = distinct !DILexicalBlock(scope: !714, file: !1, line: 493, column: 2)
!723 = !DILocation(line: 0, scope: !714)
!724 = !DILocation(line: 490, column: 16, scope: !725)
!725 = distinct !DILexicalBlock(scope: !714, file: !1, line: 490, column: 6)
!726 = !DILocation(line: 490, column: 31, scope: !725)
!727 = !DILocation(line: 490, column: 6, scope: !714)
!728 = !DILocation(line: 493, column: 2, scope: !722)
!729 = !DILocation(line: 0, scope: !722)
!730 = !DILocation(line: 493, column: 2, scope: !731)
!731 = distinct !DILexicalBlock(scope: !722, file: !1, line: 493, column: 2)
!732 = !DILocation(line: 497, column: 12, scope: !714)
!733 = !DILocation(line: 497, column: 46, scope: !714)
!734 = !DILocation(line: 496, column: 9, scope: !714)
!735 = !DILocation(line: 496, column: 2, scope: !714)
!736 = !DILocation(line: 498, column: 1, scope: !714)
!737 = !DISubprogram(name: "lzma_next_filter_init", scope: !58, file: !58, line: 226, type: !388, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!738 = distinct !DISubprogram(name: "lzma_mf_is_supported", scope: !1, file: !1, line: 557, type: !739, scopeLine: 558, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !742)
!739 = !DISubroutineType(types: !740)
!740 = !{!741, !207}
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_bool", file: !13, line: 29, baseType: !74)
!742 = !{!743, !744}
!743 = !DILocalVariable(name: "mf", arg: 1, scope: !738, file: !1, line: 557, type: !207)
!744 = !DILocalVariable(name: "ret", scope: !738, file: !1, line: 559, type: !236)
!745 = !DILocation(line: 0, scope: !738)
!746 = !DILocation(line: 567, column: 6, scope: !738)
!747 = !DILocation(line: 577, column: 6, scope: !738)
!748 = !DILocation(line: 582, column: 9, scope: !749)
!749 = distinct !DILexicalBlock(scope: !738, file: !1, line: 582, column: 6)
!750 = !DILocation(line: 582, column: 6, scope: !738)
!751 = !DILocation(line: 586, column: 9, scope: !738)
!752 = !DILocation(line: 586, column: 2, scope: !738)
!753 = !DISubprogram(name: "lzma_free", scope: !58, file: !58, line: 215, type: !754, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!754 = !DISubroutineType(types: !755)
!755 = !{null, !41, !122}
!756 = !DISubprogram(name: "lzma_bufcpy", scope: !58, file: !58, line: 242, type: !757, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!757 = !DISubroutineType(types: !758)
!758 = !{!116, !164, !114, !116, !113, !114, !116}
!759 = !DISubprogram(name: "lzma_next_end", scope: !58, file: !58, line: 237, type: !760, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!760 = !DISubroutineType(types: !761)
!761 = !{null, !378, !122}
!762 = !DISubprogram(name: "lzma_next_filter_update", scope: !58, file: !58, line: 231, type: !763, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!763 = !DISubroutineType(types: !764)
!764 = !{!63, !378, !122, !139}
