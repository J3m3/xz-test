; ModuleID = 'liblzma/common/alone_decoder.c'
source_filename = "liblzma/common/alone_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_filter_info_s = type { i64, ptr, ptr }

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 12) i32 @lzma_alone_decoder_init(ptr noundef %next, ptr noundef %allocator, i64 noundef %memlimit, i1 noundef zeroext %picky) #0 !dbg !205 {
entry:
    #dbg_value(ptr %next, !210, !DIExpression(), !214)
    #dbg_value(ptr %allocator, !211, !DIExpression(), !214)
    #dbg_value(i64 %memlimit, !212, !DIExpression(), !214)
  %storedv = zext i1 %picky to i8
    #dbg_value(i8 %storedv, !213, !DIExpression(), !214)
  %init = getelementptr inbounds i8, ptr %next, i64 16, !dbg !215
  %0 = load i64, ptr %init, align 8, !dbg !215
  %cmp.not = icmp eq i64 %0, ptrtoint (ptr @lzma_alone_decoder_init to i64), !dbg !215
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !218

if.then:                                          ; preds = %entry
  tail call void @lzma_next_end(ptr noundef nonnull %next, ptr noundef %allocator) #5, !dbg !215
  br label %if.end, !dbg !215

if.end:                                           ; preds = %if.then, %entry
  store i64 ptrtoint (ptr @lzma_alone_decoder_init to i64), ptr %init, align 8, !dbg !218
  %cmp2 = icmp eq i64 %memlimit, 0, !dbg !219
  br i1 %cmp2, label %return, label %if.end4, !dbg !221

if.end4:                                          ; preds = %if.end
  %1 = load ptr, ptr %next, align 8, !dbg !222
  %cmp5 = icmp eq ptr %1, null, !dbg !224
  br i1 %cmp5, label %if.then6, label %if.end19, !dbg !225

if.then6:                                         ; preds = %if.end4
  %call = tail call ptr @lzma_alloc(i64 noundef 216, ptr noundef %allocator) #5, !dbg !226
  store ptr %call, ptr %next, align 8, !dbg !228
  %cmp9 = icmp eq ptr %call, null, !dbg !229
  br i1 %cmp9, label %return, label %if.end11, !dbg !231

if.end11:                                         ; preds = %if.then6
  %code = getelementptr inbounds i8, ptr %next, i64 24, !dbg !232
  store ptr @alone_decode, ptr %code, align 8, !dbg !233
  %end = getelementptr inbounds i8, ptr %next, i64 32, !dbg !234
  store ptr @alone_decoder_end, ptr %end, align 8, !dbg !235
  %memconfig = getelementptr inbounds i8, ptr %next, i64 48, !dbg !236
  store ptr @alone_decoder_memconfig, ptr %memconfig, align 8, !dbg !237
  store ptr null, ptr %call, align 8, !dbg !238
  %.compoundliteral.sroa.2.0.next13.sroa_idx = getelementptr inbounds i8, ptr %call, i64 8, !dbg !238
  store i64 -1, ptr %.compoundliteral.sroa.2.0.next13.sroa_idx, align 8, !dbg !238
  %.compoundliteral.sroa.3.0.next13.sroa_idx = getelementptr inbounds i8, ptr %call, i64 16, !dbg !238
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.compoundliteral.sroa.3.0.next13.sroa_idx, i8 0, i64 48, i1 false), !dbg !238
  %.pre = load ptr, ptr %next, align 8, !dbg !239
  br label %if.end19, !dbg !240

if.end19:                                         ; preds = %if.end11, %if.end4
  %2 = phi ptr [ %.pre, %if.end11 ], [ %1, %if.end4 ], !dbg !239
  %sequence = getelementptr inbounds i8, ptr %2, i64 64, !dbg !241
  store i32 0, ptr %sequence, align 8, !dbg !242
  %3 = load ptr, ptr %next, align 8, !dbg !243
  %picky22 = getelementptr inbounds i8, ptr %3, i64 68, !dbg !244
  store i8 %storedv, ptr %picky22, align 4, !dbg !245
  %4 = load ptr, ptr %next, align 8, !dbg !246
  %pos = getelementptr inbounds i8, ptr %4, i64 72, !dbg !247
  store i64 0, ptr %pos, align 8, !dbg !248
  %5 = load ptr, ptr %next, align 8, !dbg !249
  %options = getelementptr inbounds i8, ptr %5, i64 104, !dbg !250
  store i32 0, ptr %options, align 8, !dbg !251
  %6 = load ptr, ptr %next, align 8, !dbg !252
  %preset_dict = getelementptr inbounds i8, ptr %6, i64 112, !dbg !253
  store ptr null, ptr %preset_dict, align 8, !dbg !254
  %7 = load ptr, ptr %next, align 8, !dbg !255
  %preset_dict_size = getelementptr inbounds i8, ptr %7, i64 120, !dbg !256
  store i32 0, ptr %preset_dict_size, align 8, !dbg !257
  %8 = load ptr, ptr %next, align 8, !dbg !258
  %uncompressed_size = getelementptr inbounds i8, ptr %8, i64 80, !dbg !259
  store i64 0, ptr %uncompressed_size, align 8, !dbg !260
  %9 = load ptr, ptr %next, align 8, !dbg !261
  %memlimit32 = getelementptr inbounds i8, ptr %9, i64 88, !dbg !262
  store i64 %memlimit, ptr %memlimit32, align 8, !dbg !263
  %10 = load ptr, ptr %next, align 8, !dbg !264
  %memusage = getelementptr inbounds i8, ptr %10, i64 96, !dbg !265
  store i64 32768, ptr %memusage, align 8, !dbg !266
  br label %return, !dbg !267

return:                                           ; preds = %if.then6, %if.end, %if.end19
  %retval.0 = phi i32 [ 0, %if.end19 ], [ 11, %if.end ], [ 5, %if.then6 ], !dbg !214
  ret i32 %retval.0, !dbg !268
}

declare !dbg !269 void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !272 ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @alone_decode(ptr noundef %pcoder, ptr noundef %allocator, ptr noalias noundef %in, ptr noalias noundef %in_pos, i64 noundef %in_size, ptr noalias noundef %out, ptr noalias noundef %out_pos, i64 noundef %out_size, i32 noundef %action) #0 !dbg !275 {
entry:
  %filters = alloca [2 x %struct.lzma_filter_info_s], align 16, !DIAssignID !312
    #dbg_assign(i1 undef, !293, !DIExpression(), !312, ptr %filters, !DIExpression(), !313)
    #dbg_value(ptr %pcoder, !277, !DIExpression(), !314)
    #dbg_value(ptr %allocator, !278, !DIExpression(), !314)
    #dbg_value(ptr %in, !279, !DIExpression(), !314)
    #dbg_value(ptr %in_pos, !280, !DIExpression(), !314)
    #dbg_value(i64 %in_size, !281, !DIExpression(), !314)
    #dbg_value(ptr %out, !282, !DIExpression(), !314)
    #dbg_value(ptr %out_pos, !283, !DIExpression(), !314)
    #dbg_value(i64 %out_size, !284, !DIExpression(), !314)
    #dbg_value(i32 %action, !285, !DIExpression(), !314)
    #dbg_value(ptr %pcoder, !286, !DIExpression(), !314)
  %0 = load i64, ptr %out_pos, align 8, !dbg !315
  %cmp167 = icmp ult i64 %0, %out_size, !dbg !316
  br i1 %cmp167, label %land.rhs.lr.ph, label %cleanup103, !dbg !317

land.rhs.lr.ph:                                   ; preds = %entry
  %sequence = getelementptr inbounds i8, ptr %pcoder, i64 64
  %pos47 = getelementptr inbounds i8, ptr %pcoder, i64 72
  %uncompressed_size = getelementptr inbounds i8, ptr %pcoder, i64 80
  %picky58 = getelementptr inbounds i8, ptr %pcoder, i64 68
  %options71 = getelementptr inbounds i8, ptr %pcoder, i64 104
  %memusage = getelementptr inbounds i8, ptr %pcoder, i64 96
  %memlimit = getelementptr inbounds i8, ptr %pcoder, i64 88
  %init = getelementptr inbounds i8, ptr %filters, i64 8
  %options81 = getelementptr inbounds i8, ptr %filters, i64 16
  %arrayinit.element = getelementptr inbounds i8, ptr %filters, i64 24
  %.pre = load i32, ptr %sequence, align 8, !dbg !318
  %cmp1175 = icmp eq i32 %.pre, 4, !dbg !319
  br i1 %cmp1175, label %sw.bb98, label %lor.rhs, !dbg !320

lor.rhs:                                          ; preds = %land.rhs.lr.ph, %sw.epilog
  %1 = phi i32 [ %21, %sw.epilog ], [ %.pre, %land.rhs.lr.ph ]
  %2 = load i64, ptr %in_pos, align 8, !dbg !321
  %cmp2 = icmp ult i64 %2, %in_size, !dbg !322
  br i1 %cmp2, label %while.body, label %cleanup103, !dbg !323

while.body:                                       ; preds = %lor.rhs
  switch i32 %1, label %cleanup103 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
    i32 2, label %sw.bb44
    i32 3, label %while.body.sw.bb75_crit_edge
  ], !dbg !324

while.body.sw.bb75_crit_edge:                     ; preds = %while.body
  %.pre174 = load i64, ptr %memusage, align 8, !dbg !325
  br label %sw.bb75, !dbg !324

sw.bb:                                            ; preds = %while.body
  %arrayidx = getelementptr inbounds i8, ptr %in, i64 %2, !dbg !327
  %3 = load i8, ptr %arrayidx, align 1, !dbg !327
  %call = call zeroext i1 @lzma_lzma_lclppb_decode(ptr noundef nonnull %options71, i8 noundef zeroext %3) #5, !dbg !329
  br i1 %call, label %cleanup103, label %if.end, !dbg !330

if.end:                                           ; preds = %sw.bb
  store i32 1, ptr %sequence, align 8, !dbg !331
  %inc = add nuw i64 %2, 1, !dbg !332
  store i64 %inc, ptr %in_pos, align 8, !dbg !332
  br label %sw.epilog, !dbg !333

sw.bb5:                                           ; preds = %while.body
  %arrayidx6 = getelementptr inbounds i8, ptr %in, i64 %2, !dbg !334
  %4 = load i8, ptr %arrayidx6, align 1, !dbg !334
  %conv = zext i8 %4 to i64, !dbg !335
  %5 = load i64, ptr %pos47, align 8, !dbg !336
  %mul = shl i64 %5, 3, !dbg !337
  %shl = shl i64 %conv, %mul, !dbg !338
  %6 = load i32, ptr %options71, align 8, !dbg !339
  %7 = trunc i64 %shl to i32, !dbg !339
  %conv9 = or i32 %6, %7, !dbg !339
  store i32 %conv9, ptr %options71, align 8, !dbg !339
  %inc11 = add i64 %5, 1, !dbg !340
  store i64 %inc11, ptr %pos47, align 8, !dbg !340
  %cmp12 = icmp eq i64 %inc11, 4, !dbg !341
  br i1 %cmp12, label %if.then14, label %if.end42, !dbg !342

if.then14:                                        ; preds = %sw.bb5
  %8 = load i8, ptr %picky58, align 4, !dbg !343, !range !344, !noundef !345
  %loadedv = trunc nuw i8 %8 to i1, !dbg !343
  %cmp18.not = icmp ne i32 %conv9, -1
  %or.cond165.not = select i1 %loadedv, i1 %cmp18.not, i1 false, !dbg !346
  br i1 %or.cond165.not, label %if.then20, label %if.end39, !dbg !346

if.then20:                                        ; preds = %if.then14
  %sub = add i32 %conv9, -1, !dbg !347
    #dbg_value(i32 %sub, !287, !DIExpression(), !348)
  %shr = lshr i32 %sub, 2, !dbg !349
  %or23 = or i32 %shr, %sub, !dbg !350
    #dbg_value(i32 %or23, !287, !DIExpression(), !348)
  %shr24 = lshr i32 %or23, 3, !dbg !351
  %or25 = or i32 %shr24, %or23, !dbg !352
    #dbg_value(i32 %or25, !287, !DIExpression(), !348)
  %shr26 = lshr i32 %or25, 4, !dbg !353
  %or27 = or i32 %shr26, %or25, !dbg !354
    #dbg_value(i32 %or27, !287, !DIExpression(), !348)
  %shr28 = lshr i32 %or27, 8, !dbg !355
  %or29 = or i32 %shr28, %or27, !dbg !356
    #dbg_value(i32 %or29, !287, !DIExpression(), !348)
  %shr30 = lshr i32 %or29, 16, !dbg !357
  %or31 = or i32 %shr30, %or29, !dbg !358
    #dbg_value(i32 %or31, !287, !DIExpression(), !348)
  %inc32 = add i32 %or31, 1, !dbg !359
    #dbg_value(i32 %inc32, !287, !DIExpression(), !348)
  %cmp35.not = icmp eq i32 %inc32, %conv9, !dbg !360
  br i1 %cmp35.not, label %if.end39, label %cleanup103

if.end39:                                         ; preds = %if.then20, %if.then14
  store i64 0, ptr %pos47, align 8, !dbg !362
  store i32 2, ptr %sequence, align 8, !dbg !363
  br label %if.end42, !dbg !364

if.end42:                                         ; preds = %if.end39, %sw.bb5
  %9 = phi i32 [ 2, %if.end39 ], [ 1, %sw.bb5 ]
  %inc43 = add nuw i64 %2, 1, !dbg !365
  store i64 %inc43, ptr %in_pos, align 8, !dbg !365
  br label %sw.epilog, !dbg !366

sw.bb44:                                          ; preds = %while.body
  %arrayidx45 = getelementptr inbounds i8, ptr %in, i64 %2, !dbg !367
  %10 = load i8, ptr %arrayidx45, align 1, !dbg !367
  %conv46 = zext i8 %10 to i64, !dbg !368
  %11 = load i64, ptr %pos47, align 8, !dbg !369
  %mul48 = shl i64 %11, 3, !dbg !370
  %shl49 = shl i64 %conv46, %mul48, !dbg !371
  %12 = load i64, ptr %uncompressed_size, align 8, !dbg !372
  %or50 = or i64 %shl49, %12, !dbg !372
  store i64 %or50, ptr %uncompressed_size, align 8, !dbg !372
  %inc51 = add nuw i64 %2, 1, !dbg !373
  store i64 %inc51, ptr %in_pos, align 8, !dbg !373
  %inc53 = add i64 %11, 1, !dbg !374
  store i64 %inc53, ptr %pos47, align 8, !dbg !374
  %cmp54 = icmp ult i64 %inc53, 8, !dbg !376
  br i1 %cmp54, label %sw.epilog, label %if.end57, !dbg !377

if.end57:                                         ; preds = %sw.bb44
  %13 = load i8, ptr %picky58, align 4, !dbg !378, !range !344, !noundef !345
  %loadedv59 = trunc nuw i8 %13 to i1, !dbg !378
  %14 = add i64 %or50, -274877906944
  %or.cond = icmp ult i64 %14, -274877906945
  %or.cond166 = select i1 %loadedv59, i1 %or.cond, i1 false, !dbg !380
  br i1 %or.cond166, label %cleanup103, label %if.end70, !dbg !380

if.end70:                                         ; preds = %if.end57
  %call72 = call i64 @lzma_lzma_decoder_memusage(ptr noundef nonnull %options71) #5, !dbg !381
  %add = add i64 %call72, 32768, !dbg !382
  store i64 %add, ptr %memusage, align 8, !dbg !383
  store i64 0, ptr %pos47, align 8, !dbg !384
  store i32 3, ptr %sequence, align 8, !dbg !385
  br label %sw.bb75, !dbg !386

sw.bb75:                                          ; preds = %while.body.sw.bb75_crit_edge, %if.end70
  %15 = phi i64 [ %.pre174, %while.body.sw.bb75_crit_edge ], [ %add, %if.end70 ], !dbg !325
  %16 = load i64, ptr %memlimit, align 8, !dbg !387
  %cmp77 = icmp ugt i64 %15, %16, !dbg !388
  br i1 %cmp77, label %cleanup103, label %if.end80, !dbg !389

if.end80:                                         ; preds = %sw.bb75
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %filters) #5, !dbg !390
  store i64 0, ptr %filters, align 16, !dbg !391, !DIAssignID !392
    #dbg_assign(i64 0, !293, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !392, ptr %filters, !DIExpression(), !313)
  store ptr @lzma_lzma_decoder_init, ptr %init, align 8, !dbg !391, !DIAssignID !393
    #dbg_assign(ptr @lzma_lzma_decoder_init, !293, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !393, ptr %init, !DIExpression(), !313)
  store ptr %options71, ptr %options81, align 16, !dbg !391, !DIAssignID !394
    #dbg_assign(ptr %options71, !293, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !394, ptr %options81, !DIExpression(), !313)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %arrayinit.element, i8 0, i64 24, i1 false), !dbg !395, !DIAssignID !396
    #dbg_assign(i8 0, !293, !DIExpression(DW_OP_LLVM_fragment, 192, 192), !396, ptr %arrayinit.element, !DIExpression(), !313)
  %call86 = call i32 @lzma_next_filter_init(ptr noundef nonnull %pcoder, ptr noundef %allocator, ptr noundef nonnull %filters) #5, !dbg !397
    #dbg_value(i32 %call86, !310, !DIExpression(), !313)
  %cmp87.not = icmp eq i32 %call86, 0, !dbg !398
  br i1 %cmp87.not, label %cleanup95.thread, label %cleanup95, !dbg !400

cleanup95.thread:                                 ; preds = %if.end80
  %17 = load ptr, ptr %pcoder, align 8, !dbg !401
  %18 = load i64, ptr %uncompressed_size, align 8, !dbg !402
  call void @lzma_lz_decoder_uncompressed(ptr noundef %17, i64 noundef %18) #5, !dbg !403
  store i32 4, ptr %sequence, align 8, !dbg !404
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %filters) #5, !dbg !405
  br label %sw.epilog

cleanup95:                                        ; preds = %if.end80
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %filters) #5, !dbg !405
  br label %cleanup103

sw.bb98:                                          ; preds = %sw.epilog, %land.rhs.lr.ph
  %code = getelementptr inbounds i8, ptr %pcoder, i64 24, !dbg !406
  %19 = load ptr, ptr %code, align 8, !dbg !406
  %20 = load ptr, ptr %pcoder, align 8, !dbg !408
  %call102 = call i32 %19(ptr noundef %20, ptr noundef %allocator, ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %out_size, i32 noundef %action) #5, !dbg !409
  br label %cleanup103, !dbg !410

sw.epilog:                                        ; preds = %cleanup95.thread, %sw.bb44, %if.end42, %if.end
  %21 = phi i32 [ 4, %cleanup95.thread ], [ 2, %sw.bb44 ], [ %9, %if.end42 ], [ 1, %if.end ]
  %cmp1 = icmp eq i32 %21, 4, !dbg !319
  br i1 %cmp1, label %sw.bb98, label %lor.rhs, !dbg !320

cleanup103:                                       ; preds = %if.then20, %sw.bb, %sw.bb75, %while.body, %lor.rhs, %if.end57, %entry, %cleanup95, %sw.bb98
  %retval.6 = phi i32 [ %call102, %sw.bb98 ], [ %call86, %cleanup95 ], [ 0, %entry ], [ 7, %if.end57 ], [ 0, %lor.rhs ], [ 11, %while.body ], [ 6, %sw.bb75 ], [ 7, %sw.bb ], [ 7, %if.then20 ], !dbg !314
  ret i32 %retval.6, !dbg !411
}

; Function Attrs: nounwind uwtable
define internal void @alone_decoder_end(ptr noundef %pcoder, ptr noundef %allocator) #0 !dbg !412 {
entry:
    #dbg_value(ptr %pcoder, !414, !DIExpression(), !417)
    #dbg_value(ptr %allocator, !415, !DIExpression(), !417)
    #dbg_value(ptr %pcoder, !416, !DIExpression(), !417)
  tail call void @lzma_next_end(ptr noundef %pcoder, ptr noundef %allocator) #5, !dbg !418
  tail call void @lzma_free(ptr noundef %pcoder, ptr noundef %allocator) #5, !dbg !419
  ret void, !dbg !420
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 0, 7) i32 @alone_decoder_memconfig(ptr nocapture noundef %pcoder, ptr nocapture noundef writeonly %memusage, ptr nocapture noundef writeonly %old_memlimit, i64 noundef %new_memlimit) #2 !dbg !421 {
entry:
    #dbg_value(ptr %pcoder, !423, !DIExpression(), !428)
    #dbg_value(ptr %memusage, !424, !DIExpression(), !428)
    #dbg_value(ptr %old_memlimit, !425, !DIExpression(), !428)
    #dbg_value(i64 %new_memlimit, !426, !DIExpression(), !428)
    #dbg_value(ptr %pcoder, !427, !DIExpression(), !428)
  %memusage1 = getelementptr inbounds i8, ptr %pcoder, i64 96, !dbg !429
  %0 = load i64, ptr %memusage1, align 8, !dbg !429
  store i64 %0, ptr %memusage, align 8, !dbg !430
  %memlimit = getelementptr inbounds i8, ptr %pcoder, i64 88, !dbg !431
  %1 = load i64, ptr %memlimit, align 8, !dbg !431
  store i64 %1, ptr %old_memlimit, align 8, !dbg !432
  %cmp.not = icmp eq i64 %new_memlimit, 0, !dbg !433
  br i1 %cmp.not, label %cleanup, label %if.then, !dbg !435

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %memusage1, align 8, !dbg !436
  %cmp3 = icmp ugt i64 %2, %new_memlimit, !dbg !439
  br i1 %cmp3, label %cleanup, label %if.end, !dbg !440

if.end:                                           ; preds = %if.then
  store i64 %new_memlimit, ptr %memlimit, align 8, !dbg !441
  br label %cleanup, !dbg !442

cleanup:                                          ; preds = %entry, %if.end, %if.then
  %retval.0 = phi i32 [ 6, %if.then ], [ 0, %if.end ], [ 0, %entry ], !dbg !428
  ret i32 %retval.0, !dbg !443
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_alone_decoder(ptr noundef %strm, i64 noundef %memlimit) local_unnamed_addr #0 !dbg !444 {
entry:
    #dbg_value(ptr %strm, !472, !DIExpression(), !478)
    #dbg_value(i64 %memlimit, !473, !DIExpression(), !478)
  %call = tail call i32 @lzma_strm_init(ptr noundef %strm) #5, !dbg !479
    #dbg_value(i32 %call, !474, !DIExpression(), !480)
  %cmp.not.not = icmp eq i32 %call, 0, !dbg !481
  br i1 %cmp.not.not, label %do.end, label %return

do.end:                                           ; preds = %entry
  %internal = getelementptr inbounds i8, ptr %strm, i64 56, !dbg !483
  %0 = load ptr, ptr %internal, align 8, !dbg !483
  %allocator = getelementptr inbounds i8, ptr %strm, i64 48, !dbg !483
  %1 = load ptr, ptr %allocator, align 8, !dbg !483
    #dbg_value(ptr %0, !210, !DIExpression(), !484)
    #dbg_value(ptr %1, !211, !DIExpression(), !484)
    #dbg_value(i64 %memlimit, !212, !DIExpression(), !484)
    #dbg_value(i8 0, !213, !DIExpression(), !484)
  %init.i = getelementptr inbounds i8, ptr %0, i64 16, !dbg !486
  %2 = load i64, ptr %init.i, align 8, !dbg !486
  %cmp.not.i = icmp eq i64 %2, ptrtoint (ptr @lzma_alone_decoder_init to i64), !dbg !486
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !dbg !487

if.then.i:                                        ; preds = %do.end
  tail call void @lzma_next_end(ptr noundef nonnull %0, ptr noundef %1) #5, !dbg !486
  br label %if.end.i, !dbg !486

if.end.i:                                         ; preds = %if.then.i, %do.end
  store i64 ptrtoint (ptr @lzma_alone_decoder_init to i64), ptr %init.i, align 8, !dbg !487
  %cmp2.i = icmp eq i64 %memlimit, 0, !dbg !488
  br i1 %cmp2.i, label %cleanup7, label %if.end4.i, !dbg !489

if.end4.i:                                        ; preds = %if.end.i
  %3 = load ptr, ptr %0, align 8, !dbg !490
  %cmp5.i = icmp eq ptr %3, null, !dbg !491
  br i1 %cmp5.i, label %if.then6.i, label %do.end10, !dbg !492

if.then6.i:                                       ; preds = %if.end4.i
  %call.i = tail call ptr @lzma_alloc(i64 noundef 216, ptr noundef %1) #5, !dbg !493
  store ptr %call.i, ptr %0, align 8, !dbg !494
  %cmp9.i = icmp eq ptr %call.i, null, !dbg !495
  br i1 %cmp9.i, label %cleanup7, label %if.end11.i, !dbg !496

if.end11.i:                                       ; preds = %if.then6.i
  %code.i = getelementptr inbounds i8, ptr %0, i64 24, !dbg !497
  store ptr @alone_decode, ptr %code.i, align 8, !dbg !498
  %end.i = getelementptr inbounds i8, ptr %0, i64 32, !dbg !499
  store ptr @alone_decoder_end, ptr %end.i, align 8, !dbg !500
  %memconfig.i = getelementptr inbounds i8, ptr %0, i64 48, !dbg !501
  store ptr @alone_decoder_memconfig, ptr %memconfig.i, align 8, !dbg !502
  store ptr null, ptr %call.i, align 8, !dbg !503
  %.compoundliteral.sroa.2.0.next13.sroa_idx.i = getelementptr inbounds i8, ptr %call.i, i64 8, !dbg !503
  store i64 -1, ptr %.compoundliteral.sroa.2.0.next13.sroa_idx.i, align 8, !dbg !503
  %.compoundliteral.sroa.3.0.next13.sroa_idx.i = getelementptr inbounds i8, ptr %call.i, i64 16, !dbg !503
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.compoundliteral.sroa.3.0.next13.sroa_idx.i, i8 0, i64 48, i1 false), !dbg !503
  %.pre.i = load ptr, ptr %0, align 8, !dbg !504
  br label %do.end10, !dbg !505

cleanup7:                                         ; preds = %if.then6.i, %if.end.i
  %retval.0.i.ph = phi i32 [ 5, %if.then6.i ], [ 11, %if.end.i ]
    #dbg_value(i32 %retval.0.i.ph, !477, !DIExpression(), !506)
  tail call void @lzma_end(ptr noundef nonnull %strm) #5, !dbg !507
  br label %return

do.end10:                                         ; preds = %if.end11.i, %if.end4.i
  %4 = phi ptr [ %.pre.i, %if.end11.i ], [ %3, %if.end4.i ], !dbg !504
  %sequence.i = getelementptr inbounds i8, ptr %4, i64 64, !dbg !510
  store i32 0, ptr %sequence.i, align 8, !dbg !511
  %5 = load ptr, ptr %0, align 8, !dbg !512
  %picky22.i = getelementptr inbounds i8, ptr %5, i64 68, !dbg !513
  store i8 0, ptr %picky22.i, align 4, !dbg !514
  %6 = load ptr, ptr %0, align 8, !dbg !515
  %pos.i = getelementptr inbounds i8, ptr %6, i64 72, !dbg !516
  store i64 0, ptr %pos.i, align 8, !dbg !517
  %7 = load ptr, ptr %0, align 8, !dbg !518
  %options.i = getelementptr inbounds i8, ptr %7, i64 104, !dbg !519
  store i32 0, ptr %options.i, align 8, !dbg !520
  %8 = load ptr, ptr %0, align 8, !dbg !521
  %preset_dict.i = getelementptr inbounds i8, ptr %8, i64 112, !dbg !522
  store ptr null, ptr %preset_dict.i, align 8, !dbg !523
  %9 = load ptr, ptr %0, align 8, !dbg !524
  %preset_dict_size.i = getelementptr inbounds i8, ptr %9, i64 120, !dbg !525
  store i32 0, ptr %preset_dict_size.i, align 8, !dbg !526
  %10 = load ptr, ptr %0, align 8, !dbg !527
  %uncompressed_size.i = getelementptr inbounds i8, ptr %10, i64 80, !dbg !528
  store i64 0, ptr %uncompressed_size.i, align 8, !dbg !529
  %11 = load ptr, ptr %0, align 8, !dbg !530
  %memlimit32.i = getelementptr inbounds i8, ptr %11, i64 88, !dbg !531
  store i64 %memlimit, ptr %memlimit32.i, align 8, !dbg !532
  %12 = load ptr, ptr %0, align 8, !dbg !533
  %memusage.i = getelementptr inbounds i8, ptr %12, i64 96, !dbg !534
  store i64 32768, ptr %memusage.i, align 8, !dbg !535
    #dbg_value(i32 0, !477, !DIExpression(), !506)
  %13 = load ptr, ptr %internal, align 8, !dbg !536
  %supported_actions = getelementptr inbounds i8, ptr %13, i64 80, !dbg !537
  store i8 1, ptr %supported_actions, align 8, !dbg !538
  %14 = load ptr, ptr %internal, align 8, !dbg !539
  %arrayidx14 = getelementptr inbounds i8, ptr %14, i64 83, !dbg !540
  store i8 1, ptr %arrayidx14, align 1, !dbg !541
  br label %return, !dbg !542

return:                                           ; preds = %cleanup7, %entry, %do.end10
  %retval.2 = phi i32 [ %call, %entry ], [ %retval.0.i.ph, %cleanup7 ], [ 0, %do.end10 ], !dbg !478
  ret i32 %retval.2, !dbg !543
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare !dbg !544 i32 @lzma_strm_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

declare !dbg !547 void @lzma_end(ptr noundef) local_unnamed_addr #1

declare !dbg !550 zeroext i1 @lzma_lzma_lclppb_decode(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare !dbg !555 i64 @lzma_lzma_decoder_memusage(ptr noundef) local_unnamed_addr #1

declare i32 @lzma_lzma_decoder_init(ptr noundef, ptr noundef, ptr noundef) #1

declare !dbg !560 i32 @lzma_next_filter_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !561 void @lzma_lz_decoder_uncompressed(ptr noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !565 void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!197, !198, !199, !200, !201, !202, !203}
!llvm.ident = !{!204}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !195, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "liblzma/common/alone_decoder.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "3e33dd073c64eb400f430c607a596c8a")
!2 = !{!3, !19, !25, !32, !138, !145, !163, !177}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 57, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "liblzma/api/lzma/base.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "81a3070447cc5b61b56cfbed076853db")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18}
!7 = !DIEnumerator(name: "LZMA_OK", value: 0)
!8 = !DIEnumerator(name: "LZMA_STREAM_END", value: 1)
!9 = !DIEnumerator(name: "LZMA_NO_CHECK", value: 2)
!10 = !DIEnumerator(name: "LZMA_UNSUPPORTED_CHECK", value: 3)
!11 = !DIEnumerator(name: "LZMA_GET_CHECK", value: 4)
!12 = !DIEnumerator(name: "LZMA_MEM_ERROR", value: 5)
!13 = !DIEnumerator(name: "LZMA_MEMLIMIT_ERROR", value: 6)
!14 = !DIEnumerator(name: "LZMA_FORMAT_ERROR", value: 7)
!15 = !DIEnumerator(name: "LZMA_OPTIONS_ERROR", value: 8)
!16 = !DIEnumerator(name: "LZMA_DATA_ERROR", value: 9)
!17 = !DIEnumerator(name: "LZMA_BUF_ERROR", value: 10)
!18 = !DIEnumerator(name: "LZMA_PROG_ERROR", value: 11)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 250, baseType: !5, size: 32, elements: !20)
!20 = !{!21, !22, !23, !24}
!21 = !DIEnumerator(name: "LZMA_RUN", value: 0)
!22 = !DIEnumerator(name: "LZMA_SYNC_FLUSH", value: 1)
!23 = !DIEnumerator(name: "LZMA_FULL_FLUSH", value: 2)
!24 = !DIEnumerator(name: "LZMA_FINISH", value: 3)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !26, line: 27, baseType: !5, size: 32, elements: !27)
!26 = !DIFile(filename: "liblzma/api/lzma/check.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "b07c3297e2bcc14bb477793d08325ee3")
!27 = !{!28, !29, !30, !31}
!28 = !DIEnumerator(name: "LZMA_CHECK_NONE", value: 0)
!29 = !DIEnumerator(name: "LZMA_CHECK_CRC32", value: 1)
!30 = !DIEnumerator(name: "LZMA_CHECK_CRC64", value: 4)
!31 = !DIEnumerator(name: "LZMA_CHECK_SHA256", value: 10)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !33, file: !1, line: 21, baseType: !5, size: 32, elements: !171)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_coder_s", file: !1, line: 18, size: 1728, elements: !34)
!34 = !{!35, !116, !117, !119, !120, !121, !122, !123}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !33, file: !1, line: 19, baseType: !36, size: 512)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_next_coder", file: !37, line: 80, baseType: !38)
!37 = !DIFile(filename: "liblzma/common/common.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_next_coder_s", file: !37, line: 124, size: 512, elements: !39)
!39 = !{!40, !43, !51, !54, !87, !92, !99, !104}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !38, file: !37, line: 126, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_coder", file: !37, line: 78, baseType: null)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !38, file: !37, line: 130, baseType: !44, size: 64, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !45, line: 63, baseType: !46)
!45 = !DIFile(filename: "liblzma/api/lzma/vli.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !47, line: 27, baseType: !48)
!47 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !49, line: 45, baseType: !50)
!49 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!50 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !38, file: !37, line: 136, baseType: !52, size: 64, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !53, line: 90, baseType: !50)
!53 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!54 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !38, file: !37, line: 139, baseType: !55, size: 64, offset: 192)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_code_function", file: !37, line: 94, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DISubroutineType(types: !58)
!58 = !{!59, !41, !60, !76, !82, !69, !84, !82, !69, !86}
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !4, line: 403, baseType: !62)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 341, size: 192, elements: !63)
!63 = !{!64, !71, !75}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !62, file: !4, line: 376, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{!68, !68, !69, !69}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !70, line: 18, baseType: !50)
!70 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!71 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !62, file: !4, line: 390, baseType: !72, size: 64, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DISubroutineType(types: !74)
!74 = !{null, !68, !68}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !62, file: !4, line: 401, baseType: !68, size: 64, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !77)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !47, line: 24, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !49, line: 38, baseType: !81)
!81 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!82 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !4, line: 322, baseType: !19)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !38, file: !37, line: 144, baseType: !88, size: 64, offset: 256)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_end_function", file: !37, line: 102, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DISubroutineType(types: !91)
!91 = !{null, !41, !60}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "get_check", scope: !38, file: !37, line: 148, baseType: !93, size: 64, offset: 320)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DISubroutineType(types: !95)
!95 = !{!96, !97}
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !26, line: 55, baseType: !25)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "memconfig", scope: !38, file: !37, line: 152, baseType: !100, size: 64, offset: 384)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DISubroutineType(types: !102)
!102 = !{!59, !41, !103, !103, !46}
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !38, file: !37, line: 157, baseType: !105, size: 64, offset: 448)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DISubroutineType(types: !107)
!107 = !{!59, !41, !60, !108, !108}
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !111, line: 65, baseType: !112)
!111 = !DIFile(filename: "liblzma/api/lzma/filter.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !111, line: 43, size: 128, elements: !113)
!113 = !{!114, !115}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !112, file: !111, line: 54, baseType: !44, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !112, file: !111, line: 63, baseType: !68, size: 64, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !33, file: !1, line: 27, baseType: !32, size: 32, offset: 512)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "picky", scope: !33, file: !1, line: 32, baseType: !118, size: 8, offset: 544)
!118 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !33, file: !1, line: 35, baseType: !69, size: 64, offset: 576)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_size", scope: !33, file: !1, line: 38, baseType: !44, size: 64, offset: 640)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "memlimit", scope: !33, file: !1, line: 41, baseType: !46, size: 64, offset: 704)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "memusage", scope: !33, file: !1, line: 44, baseType: !46, size: 64, offset: 768)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !33, file: !1, line: 48, baseType: !124, size: 896, offset: 832)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_options_lzma", file: !125, line: 399, baseType: !126)
!125 = !DIFile(filename: "liblzma/api/lzma/lzma.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "c59c540efa0aff44f03d71331089fff8")
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !125, line: 185, size: 896, elements: !127)
!127 = !{!128, !131, !132, !133, !134, !135, !136, !142, !143, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !166, !167, !168, !169, !170}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "dict_size", scope: !126, file: !125, line: 217, baseType: !129, size: 32)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !47, line: 26, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !49, line: 42, baseType: !5)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict", scope: !126, file: !125, line: 240, baseType: !77, size: 64, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict_size", scope: !126, file: !125, line: 254, baseType: !129, size: 32, offset: 128)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "lc", scope: !126, file: !125, line: 281, baseType: !129, size: 32, offset: 160)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "lp", scope: !126, file: !125, line: 293, baseType: !129, size: 32, offset: 192)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "pb", scope: !126, file: !125, line: 316, baseType: !129, size: 32, offset: 224)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !126, file: !125, line: 322, baseType: !137, size: 32, offset: 256)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_mode", file: !125, line: 155, baseType: !138)
!138 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !125, line: 138, baseType: !5, size: 32, elements: !139)
!139 = !{!140, !141}
!140 = !DIEnumerator(name: "LZMA_MODE_FAST", value: 1)
!141 = !DIEnumerator(name: "LZMA_MODE_NORMAL", value: 2)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "nice_len", scope: !126, file: !125, line: 342, baseType: !129, size: 32, offset: 288)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "mf", scope: !126, file: !125, line: 345, baseType: !144, size: 32, offset: 320)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_match_finder", file: !125, line: 111, baseType: !145)
!145 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !125, line: 58, baseType: !5, size: 32, elements: !146)
!146 = !{!147, !148, !149, !150, !151}
!147 = !DIEnumerator(name: "LZMA_MF_HC3", value: 3)
!148 = !DIEnumerator(name: "LZMA_MF_HC4", value: 4)
!149 = !DIEnumerator(name: "LZMA_MF_BT2", value: 18)
!150 = !DIEnumerator(name: "LZMA_MF_BT3", value: 19)
!151 = !DIEnumerator(name: "LZMA_MF_BT4", value: 20)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !126, file: !125, line: 375, baseType: !129, size: 32, offset: 352)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !126, file: !125, line: 384, baseType: !129, size: 32, offset: 384)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !126, file: !125, line: 385, baseType: !129, size: 32, offset: 416)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !126, file: !125, line: 386, baseType: !129, size: 32, offset: 448)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !126, file: !125, line: 387, baseType: !129, size: 32, offset: 480)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int5", scope: !126, file: !125, line: 388, baseType: !129, size: 32, offset: 512)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int6", scope: !126, file: !125, line: 389, baseType: !129, size: 32, offset: 544)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int7", scope: !126, file: !125, line: 390, baseType: !129, size: 32, offset: 576)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int8", scope: !126, file: !125, line: 391, baseType: !129, size: 32, offset: 608)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !126, file: !125, line: 392, baseType: !162, size: 32, offset: 640)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !4, line: 46, baseType: !163)
!163 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 44, baseType: !5, size: 32, elements: !164)
!164 = !{!165}
!165 = !DIEnumerator(name: "LZMA_RESERVED_ENUM", value: 0)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !126, file: !125, line: 393, baseType: !162, size: 32, offset: 672)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !126, file: !125, line: 394, baseType: !162, size: 32, offset: 704)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !126, file: !125, line: 395, baseType: !162, size: 32, offset: 736)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !126, file: !125, line: 396, baseType: !68, size: 64, offset: 768)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !126, file: !125, line: 397, baseType: !68, size: 64, offset: 832)
!171 = !{!172, !173, !174, !175, !176}
!172 = !DIEnumerator(name: "SEQ_PROPERTIES", value: 0)
!173 = !DIEnumerator(name: "SEQ_DICTIONARY_SIZE", value: 1)
!174 = !DIEnumerator(name: "SEQ_UNCOMPRESSED_SIZE", value: 2)
!175 = !DIEnumerator(name: "SEQ_CODER_INIT", value: 3)
!176 = !DIEnumerator(name: "SEQ_CODE", value: 4)
!177 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !178, file: !37, line: 187, baseType: !5, size: 32, elements: !188)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_internal_s", file: !37, line: 179, size: 704, elements: !179)
!179 = !{!180, !181, !182, !183, !187}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !178, file: !37, line: 181, baseType: !36, size: 512)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !178, file: !37, line: 194, baseType: !177, size: 32, offset: 512)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !178, file: !37, line: 199, baseType: !69, size: 64, offset: 576)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "supported_actions", scope: !178, file: !37, line: 202, baseType: !184, size: 32, offset: 640)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 32, elements: !185)
!185 = !{!186}
!186 = !DISubrange(count: 4)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "allow_buf_error", scope: !178, file: !37, line: 206, baseType: !118, size: 8, offset: 672)
!188 = !{!189, !190, !191, !192, !193, !194}
!189 = !DIEnumerator(name: "ISEQ_RUN", value: 0)
!190 = !DIEnumerator(name: "ISEQ_SYNC_FLUSH", value: 1)
!191 = !DIEnumerator(name: "ISEQ_FULL_FLUSH", value: 2)
!192 = !DIEnumerator(name: "ISEQ_FINISH", value: 3)
!193 = !DIEnumerator(name: "ISEQ_END", value: 4)
!194 = !DIEnumerator(name: "ISEQ_ERROR", value: 5)
!195 = !{!52, !68, !196, !69, !44}
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!197 = !{i32 7, !"Dwarf Version", i32 5}
!198 = !{i32 2, !"Debug Info Version", i32 3}
!199 = !{i32 1, !"wchar_size", i32 4}
!200 = !{i32 8, !"PIC Level", i32 2}
!201 = !{i32 7, !"PIE Level", i32 2}
!202 = !{i32 7, !"uwtable", i32 2}
!203 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!204 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!205 = distinct !DISubprogram(name: "lzma_alone_decoder_init", scope: !1, file: !1, line: 199, type: !206, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !209)
!206 = !DISubroutineType(types: !207)
!207 = !{!59, !208, !60, !46, !118}
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!209 = !{!210, !211, !212, !213}
!210 = !DILocalVariable(name: "next", arg: 1, scope: !205, file: !1, line: 199, type: !208)
!211 = !DILocalVariable(name: "allocator", arg: 2, scope: !205, file: !1, line: 199, type: !60)
!212 = !DILocalVariable(name: "memlimit", arg: 3, scope: !205, file: !1, line: 200, type: !46)
!213 = !DILocalVariable(name: "picky", arg: 4, scope: !205, file: !1, line: 200, type: !118)
!214 = !DILocation(line: 0, scope: !205)
!215 = !DILocation(line: 202, column: 2, scope: !216)
!216 = distinct !DILexicalBlock(scope: !217, file: !1, line: 202, column: 2)
!217 = distinct !DILexicalBlock(scope: !205, file: !1, line: 202, column: 2)
!218 = !DILocation(line: 202, column: 2, scope: !217)
!219 = !DILocation(line: 204, column: 15, scope: !220)
!220 = distinct !DILexicalBlock(scope: !205, file: !1, line: 204, column: 6)
!221 = !DILocation(line: 204, column: 6, scope: !205)
!222 = !DILocation(line: 207, column: 12, scope: !223)
!223 = distinct !DILexicalBlock(scope: !205, file: !1, line: 207, column: 6)
!224 = !DILocation(line: 207, column: 18, scope: !223)
!225 = !DILocation(line: 207, column: 6, scope: !205)
!226 = !DILocation(line: 208, column: 17, scope: !227)
!227 = distinct !DILexicalBlock(scope: !223, file: !1, line: 207, column: 27)
!228 = !DILocation(line: 208, column: 15, scope: !227)
!229 = !DILocation(line: 209, column: 19, scope: !230)
!230 = distinct !DILexicalBlock(scope: !227, file: !1, line: 209, column: 7)
!231 = !DILocation(line: 209, column: 7, scope: !227)
!232 = !DILocation(line: 212, column: 9, scope: !227)
!233 = !DILocation(line: 212, column: 14, scope: !227)
!234 = !DILocation(line: 213, column: 9, scope: !227)
!235 = !DILocation(line: 213, column: 13, scope: !227)
!236 = !DILocation(line: 214, column: 9, scope: !227)
!237 = !DILocation(line: 214, column: 19, scope: !227)
!238 = !DILocation(line: 215, column: 47, scope: !227)
!239 = !DILocation(line: 218, column: 31, scope: !205)
!240 = !DILocation(line: 216, column: 2, scope: !227)
!241 = !DILocation(line: 218, column: 39, scope: !205)
!242 = !DILocation(line: 218, column: 48, scope: !205)
!243 = !DILocation(line: 219, column: 31, scope: !205)
!244 = !DILocation(line: 219, column: 39, scope: !205)
!245 = !DILocation(line: 219, column: 45, scope: !205)
!246 = !DILocation(line: 220, column: 31, scope: !205)
!247 = !DILocation(line: 220, column: 39, scope: !205)
!248 = !DILocation(line: 220, column: 43, scope: !205)
!249 = !DILocation(line: 221, column: 31, scope: !205)
!250 = !DILocation(line: 221, column: 39, scope: !205)
!251 = !DILocation(line: 221, column: 57, scope: !205)
!252 = !DILocation(line: 222, column: 31, scope: !205)
!253 = !DILocation(line: 222, column: 47, scope: !205)
!254 = !DILocation(line: 222, column: 59, scope: !205)
!255 = !DILocation(line: 223, column: 31, scope: !205)
!256 = !DILocation(line: 223, column: 47, scope: !205)
!257 = !DILocation(line: 223, column: 64, scope: !205)
!258 = !DILocation(line: 224, column: 31, scope: !205)
!259 = !DILocation(line: 224, column: 39, scope: !205)
!260 = !DILocation(line: 224, column: 57, scope: !205)
!261 = !DILocation(line: 225, column: 31, scope: !205)
!262 = !DILocation(line: 225, column: 39, scope: !205)
!263 = !DILocation(line: 225, column: 48, scope: !205)
!264 = !DILocation(line: 226, column: 31, scope: !205)
!265 = !DILocation(line: 226, column: 39, scope: !205)
!266 = !DILocation(line: 226, column: 48, scope: !205)
!267 = !DILocation(line: 228, column: 2, scope: !205)
!268 = !DILocation(line: 229, column: 1, scope: !205)
!269 = !DISubprogram(name: "lzma_next_end", scope: !37, file: !37, line: 237, type: !270, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!270 = !DISubroutineType(types: !271)
!271 = !{null, !208, !60}
!272 = !DISubprogram(name: "lzma_alloc", scope: !37, file: !37, line: 211, type: !273, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!273 = !DISubroutineType(types: !274)
!274 = !{!68, !69, !60}
!275 = distinct !DISubprogram(name: "alone_decode", scope: !1, file: !1, line: 53, type: !57, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !276)
!276 = !{!277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !293, !310}
!277 = !DILocalVariable(name: "pcoder", arg: 1, scope: !275, file: !1, line: 53, type: !41)
!278 = !DILocalVariable(name: "allocator", arg: 2, scope: !275, file: !1, line: 54, type: !60)
!279 = !DILocalVariable(name: "in", arg: 3, scope: !275, file: !1, line: 55, type: !76)
!280 = !DILocalVariable(name: "in_pos", arg: 4, scope: !275, file: !1, line: 55, type: !82)
!281 = !DILocalVariable(name: "in_size", arg: 5, scope: !275, file: !1, line: 56, type: !69)
!282 = !DILocalVariable(name: "out", arg: 6, scope: !275, file: !1, line: 56, type: !84)
!283 = !DILocalVariable(name: "out_pos", arg: 7, scope: !275, file: !1, line: 57, type: !82)
!284 = !DILocalVariable(name: "out_size", arg: 8, scope: !275, file: !1, line: 57, type: !69)
!285 = !DILocalVariable(name: "action", arg: 9, scope: !275, file: !1, line: 58, type: !86)
!286 = !DILocalVariable(name: "coder", scope: !275, file: !1, line: 60, type: !196)
!287 = !DILocalVariable(name: "d", scope: !288, file: !1, line: 84, type: !129)
!288 = distinct !DILexicalBlock(scope: !289, file: !1, line: 78, column: 21)
!289 = distinct !DILexicalBlock(scope: !290, file: !1, line: 77, column: 8)
!290 = distinct !DILexicalBlock(scope: !291, file: !1, line: 76, column: 26)
!291 = distinct !DILexicalBlock(scope: !292, file: !1, line: 76, column: 7)
!292 = distinct !DILexicalBlock(scope: !275, file: !1, line: 63, column: 27)
!293 = !DILocalVariable(name: "filters", scope: !294, file: !1, line: 133, type: !295)
!294 = distinct !DILexicalBlock(scope: !292, file: !1, line: 129, column: 23)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 384, elements: !308)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter_info", file: !37, line: 82, baseType: !297)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_filter_info_s", file: !37, line: 109, size: 192, elements: !298)
!298 = !{!299, !300, !307}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !297, file: !37, line: 112, baseType: !44, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !297, file: !37, line: 116, baseType: !301, size: 64, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_init_function", file: !37, line: 86, baseType: !302)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DISubroutineType(types: !304)
!304 = !{!59, !208, !60, !305}
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !296)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !297, file: !37, line: 119, baseType: !68, size: 64, offset: 128)
!308 = !{!309}
!309 = !DISubrange(count: 2)
!310 = !DILocalVariable(name: "ret", scope: !294, file: !1, line: 142, type: !311)
!311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!312 = distinct !DIAssignID()
!313 = !DILocation(line: 0, scope: !294)
!314 = !DILocation(line: 0, scope: !275)
!315 = !DILocation(line: 61, column: 9, scope: !275)
!316 = !DILocation(line: 61, column: 18, scope: !275)
!317 = !DILocation(line: 62, column: 4, scope: !275)
!318 = !DILocation(line: 62, column: 15, scope: !275)
!319 = !DILocation(line: 62, column: 24, scope: !275)
!320 = !DILocation(line: 62, column: 36, scope: !275)
!321 = !DILocation(line: 62, column: 39, scope: !275)
!322 = !DILocation(line: 62, column: 47, scope: !275)
!323 = !DILocation(line: 61, column: 2, scope: !275)
!324 = !DILocation(line: 63, column: 2, scope: !275)
!325 = !DILocation(line: 130, column: 14, scope: !326)
!326 = distinct !DILexicalBlock(scope: !294, file: !1, line: 130, column: 7)
!327 = !DILocation(line: 65, column: 48, scope: !328)
!328 = distinct !DILexicalBlock(scope: !292, file: !1, line: 65, column: 7)
!329 = !DILocation(line: 65, column: 7, scope: !328)
!330 = !DILocation(line: 65, column: 7, scope: !292)
!331 = !DILocation(line: 68, column: 19, scope: !292)
!332 = !DILocation(line: 69, column: 3, scope: !292)
!333 = !DILocation(line: 70, column: 3, scope: !292)
!334 = !DILocation(line: 74, column: 17, scope: !292)
!335 = !DILocation(line: 74, column: 8, scope: !292)
!336 = !DILocation(line: 74, column: 41, scope: !292)
!337 = !DILocation(line: 74, column: 45, scope: !292)
!338 = !DILocation(line: 74, column: 30, scope: !292)
!339 = !DILocation(line: 74, column: 5, scope: !292)
!340 = !DILocation(line: 76, column: 7, scope: !291)
!341 = !DILocation(line: 76, column: 20, scope: !291)
!342 = !DILocation(line: 76, column: 7, scope: !292)
!343 = !DILocation(line: 77, column: 15, scope: !289)
!344 = !{i8 0, i8 2}
!345 = !{}
!346 = !DILocation(line: 77, column: 21, scope: !289)
!347 = !DILocation(line: 84, column: 43, scope: !288)
!348 = !DILocation(line: 0, scope: !288)
!349 = !DILocation(line: 85, column: 12, scope: !288)
!350 = !DILocation(line: 85, column: 7, scope: !288)
!351 = !DILocation(line: 86, column: 12, scope: !288)
!352 = !DILocation(line: 86, column: 7, scope: !288)
!353 = !DILocation(line: 87, column: 12, scope: !288)
!354 = !DILocation(line: 87, column: 7, scope: !288)
!355 = !DILocation(line: 88, column: 12, scope: !288)
!356 = !DILocation(line: 88, column: 7, scope: !288)
!357 = !DILocation(line: 89, column: 12, scope: !288)
!358 = !DILocation(line: 89, column: 7, scope: !288)
!359 = !DILocation(line: 90, column: 5, scope: !288)
!360 = !DILocation(line: 92, column: 11, scope: !361)
!361 = distinct !DILexicalBlock(scope: !288, file: !1, line: 92, column: 9)
!362 = !DILocation(line: 96, column: 15, scope: !290)
!363 = !DILocation(line: 97, column: 20, scope: !290)
!364 = !DILocation(line: 98, column: 3, scope: !290)
!365 = !DILocation(line: 100, column: 3, scope: !292)
!366 = !DILocation(line: 101, column: 3, scope: !292)
!367 = !DILocation(line: 105, column: 19, scope: !292)
!368 = !DILocation(line: 105, column: 8, scope: !292)
!369 = !DILocation(line: 105, column: 43, scope: !292)
!370 = !DILocation(line: 105, column: 47, scope: !292)
!371 = !DILocation(line: 105, column: 32, scope: !292)
!372 = !DILocation(line: 105, column: 5, scope: !292)
!373 = !DILocation(line: 106, column: 3, scope: !292)
!374 = !DILocation(line: 107, column: 7, scope: !375)
!375 = distinct !DILexicalBlock(scope: !292, file: !1, line: 107, column: 7)
!376 = !DILocation(line: 107, column: 20, scope: !375)
!377 = !DILocation(line: 107, column: 7, scope: !292)
!378 = !DILocation(line: 113, column: 14, scope: !379)
!379 = distinct !DILexicalBlock(scope: !292, file: !1, line: 113, column: 7)
!380 = !DILocation(line: 114, column: 5, scope: !379)
!381 = !DILocation(line: 121, column: 21, scope: !292)
!382 = !DILocation(line: 122, column: 5, scope: !292)
!383 = !DILocation(line: 121, column: 19, scope: !292)
!384 = !DILocation(line: 124, column: 14, scope: !292)
!385 = !DILocation(line: 125, column: 19, scope: !292)
!386 = !DILocation(line: 125, column: 3, scope: !292)
!387 = !DILocation(line: 130, column: 32, scope: !326)
!388 = !DILocation(line: 130, column: 23, scope: !326)
!389 = !DILocation(line: 130, column: 7, scope: !294)
!390 = !DILocation(line: 133, column: 3, scope: !294)
!391 = !DILocation(line: 134, column: 4, scope: !294)
!392 = distinct !DIAssignID()
!393 = distinct !DIAssignID()
!394 = distinct !DIAssignID()
!395 = !DILocation(line: 133, column: 33, scope: !294)
!396 = distinct !DIAssignID()
!397 = !DILocation(line: 142, column: 24, scope: !294)
!398 = !DILocation(line: 144, column: 11, scope: !399)
!399 = distinct !DILexicalBlock(scope: !294, file: !1, line: 144, column: 7)
!400 = !DILocation(line: 144, column: 7, scope: !294)
!401 = !DILocation(line: 148, column: 44, scope: !294)
!402 = !DILocation(line: 149, column: 12, scope: !294)
!403 = !DILocation(line: 148, column: 3, scope: !294)
!404 = !DILocation(line: 151, column: 19, scope: !294)
!405 = !DILocation(line: 153, column: 2, scope: !292)
!406 = !DILocation(line: 156, column: 22, scope: !407)
!407 = distinct !DILexicalBlock(scope: !292, file: !1, line: 155, column: 17)
!408 = !DILocation(line: 156, column: 39, scope: !407)
!409 = !DILocation(line: 156, column: 10, scope: !407)
!410 = !DILocation(line: 156, column: 3, scope: !407)
!411 = !DILocation(line: 166, column: 1, scope: !275)
!412 = distinct !DISubprogram(name: "alone_decoder_end", scope: !1, file: !1, line: 170, type: !90, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !413)
!413 = !{!414, !415, !416}
!414 = !DILocalVariable(name: "pcoder", arg: 1, scope: !412, file: !1, line: 170, type: !41)
!415 = !DILocalVariable(name: "allocator", arg: 2, scope: !412, file: !1, line: 170, type: !60)
!416 = !DILocalVariable(name: "coder", scope: !412, file: !1, line: 172, type: !196)
!417 = !DILocation(line: 0, scope: !412)
!418 = !DILocation(line: 173, column: 2, scope: !412)
!419 = !DILocation(line: 174, column: 2, scope: !412)
!420 = !DILocation(line: 176, column: 1, scope: !412)
!421 = distinct !DISubprogram(name: "alone_decoder_memconfig", scope: !1, file: !1, line: 180, type: !101, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !422)
!422 = !{!423, !424, !425, !426, !427}
!423 = !DILocalVariable(name: "pcoder", arg: 1, scope: !421, file: !1, line: 180, type: !41)
!424 = !DILocalVariable(name: "memusage", arg: 2, scope: !421, file: !1, line: 180, type: !103)
!425 = !DILocalVariable(name: "old_memlimit", arg: 3, scope: !421, file: !1, line: 181, type: !103)
!426 = !DILocalVariable(name: "new_memlimit", arg: 4, scope: !421, file: !1, line: 181, type: !46)
!427 = !DILocalVariable(name: "coder", scope: !421, file: !1, line: 183, type: !196)
!428 = !DILocation(line: 0, scope: !421)
!429 = !DILocation(line: 184, column: 21, scope: !421)
!430 = !DILocation(line: 184, column: 12, scope: !421)
!431 = !DILocation(line: 185, column: 25, scope: !421)
!432 = !DILocation(line: 185, column: 16, scope: !421)
!433 = !DILocation(line: 187, column: 19, scope: !434)
!434 = distinct !DILexicalBlock(scope: !421, file: !1, line: 187, column: 6)
!435 = !DILocation(line: 187, column: 6, scope: !421)
!436 = !DILocation(line: 188, column: 29, scope: !437)
!437 = distinct !DILexicalBlock(scope: !438, file: !1, line: 188, column: 7)
!438 = distinct !DILexicalBlock(scope: !434, file: !1, line: 187, column: 25)
!439 = !DILocation(line: 188, column: 20, scope: !437)
!440 = !DILocation(line: 188, column: 7, scope: !438)
!441 = !DILocation(line: 191, column: 19, scope: !438)
!442 = !DILocation(line: 192, column: 2, scope: !438)
!443 = !DILocation(line: 195, column: 1, scope: !421)
!444 = distinct !DISubprogram(name: "lzma_alone_decoder", scope: !1, file: !1, line: 233, type: !445, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !471)
!445 = !DISubroutineType(types: !446)
!446 = !{!59, !447, !46}
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_stream", file: !4, line: 490, baseType: !449)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 453, size: 1088, elements: !450)
!450 = !{!451, !452, !453, !454, !455, !456, !457, !458, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !449, file: !4, line: 454, baseType: !77, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !449, file: !4, line: 455, baseType: !69, size: 64, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "total_in", scope: !449, file: !4, line: 456, baseType: !46, size: 64, offset: 128)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !449, file: !4, line: 458, baseType: !85, size: 64, offset: 192)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !449, file: !4, line: 459, baseType: !69, size: 64, offset: 256)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "total_out", scope: !449, file: !4, line: 460, baseType: !46, size: 64, offset: 320)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !449, file: !4, line: 468, baseType: !60, size: 64, offset: 384)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !449, file: !4, line: 471, baseType: !459, size: 64, offset: 448)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_internal", file: !4, line: 411, baseType: !178)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !449, file: !4, line: 479, baseType: !68, size: 64, offset: 512)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !449, file: !4, line: 480, baseType: !68, size: 64, offset: 576)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !449, file: !4, line: 481, baseType: !68, size: 64, offset: 640)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr4", scope: !449, file: !4, line: 482, baseType: !68, size: 64, offset: 704)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !449, file: !4, line: 483, baseType: !46, size: 64, offset: 768)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !449, file: !4, line: 484, baseType: !46, size: 64, offset: 832)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !449, file: !4, line: 485, baseType: !69, size: 64, offset: 896)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !449, file: !4, line: 486, baseType: !69, size: 64, offset: 960)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !449, file: !4, line: 487, baseType: !162, size: 32, offset: 1024)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !449, file: !4, line: 488, baseType: !162, size: 32, offset: 1056)
!471 = !{!472, !473, !474, !477}
!472 = !DILocalVariable(name: "strm", arg: 1, scope: !444, file: !1, line: 233, type: !447)
!473 = !DILocalVariable(name: "memlimit", arg: 2, scope: !444, file: !1, line: 233, type: !46)
!474 = !DILocalVariable(name: "ret_", scope: !475, file: !1, line: 235, type: !311)
!475 = distinct !DILexicalBlock(scope: !476, file: !1, line: 235, column: 2)
!476 = distinct !DILexicalBlock(scope: !444, file: !1, line: 235, column: 2)
!477 = !DILocalVariable(name: "ret_", scope: !476, file: !1, line: 235, type: !311)
!478 = !DILocation(line: 0, scope: !444)
!479 = !DILocation(line: 235, column: 2, scope: !475)
!480 = !DILocation(line: 0, scope: !475)
!481 = !DILocation(line: 235, column: 2, scope: !482)
!482 = distinct !DILexicalBlock(scope: !475, file: !1, line: 235, column: 2)
!483 = !DILocation(line: 235, column: 2, scope: !476)
!484 = !DILocation(line: 0, scope: !205, inlinedAt: !485)
!485 = distinct !DILocation(line: 235, column: 2, scope: !476)
!486 = !DILocation(line: 202, column: 2, scope: !216, inlinedAt: !485)
!487 = !DILocation(line: 202, column: 2, scope: !217, inlinedAt: !485)
!488 = !DILocation(line: 204, column: 15, scope: !220, inlinedAt: !485)
!489 = !DILocation(line: 204, column: 6, scope: !205, inlinedAt: !485)
!490 = !DILocation(line: 207, column: 12, scope: !223, inlinedAt: !485)
!491 = !DILocation(line: 207, column: 18, scope: !223, inlinedAt: !485)
!492 = !DILocation(line: 207, column: 6, scope: !205, inlinedAt: !485)
!493 = !DILocation(line: 208, column: 17, scope: !227, inlinedAt: !485)
!494 = !DILocation(line: 208, column: 15, scope: !227, inlinedAt: !485)
!495 = !DILocation(line: 209, column: 19, scope: !230, inlinedAt: !485)
!496 = !DILocation(line: 209, column: 7, scope: !227, inlinedAt: !485)
!497 = !DILocation(line: 212, column: 9, scope: !227, inlinedAt: !485)
!498 = !DILocation(line: 212, column: 14, scope: !227, inlinedAt: !485)
!499 = !DILocation(line: 213, column: 9, scope: !227, inlinedAt: !485)
!500 = !DILocation(line: 213, column: 13, scope: !227, inlinedAt: !485)
!501 = !DILocation(line: 214, column: 9, scope: !227, inlinedAt: !485)
!502 = !DILocation(line: 214, column: 19, scope: !227, inlinedAt: !485)
!503 = !DILocation(line: 215, column: 47, scope: !227, inlinedAt: !485)
!504 = !DILocation(line: 218, column: 31, scope: !205, inlinedAt: !485)
!505 = !DILocation(line: 216, column: 2, scope: !227, inlinedAt: !485)
!506 = !DILocation(line: 0, scope: !476)
!507 = !DILocation(line: 235, column: 2, scope: !508)
!508 = distinct !DILexicalBlock(scope: !509, file: !1, line: 235, column: 2)
!509 = distinct !DILexicalBlock(scope: !476, file: !1, line: 235, column: 2)
!510 = !DILocation(line: 218, column: 39, scope: !205, inlinedAt: !485)
!511 = !DILocation(line: 218, column: 48, scope: !205, inlinedAt: !485)
!512 = !DILocation(line: 219, column: 31, scope: !205, inlinedAt: !485)
!513 = !DILocation(line: 219, column: 39, scope: !205, inlinedAt: !485)
!514 = !DILocation(line: 219, column: 45, scope: !205, inlinedAt: !485)
!515 = !DILocation(line: 220, column: 31, scope: !205, inlinedAt: !485)
!516 = !DILocation(line: 220, column: 39, scope: !205, inlinedAt: !485)
!517 = !DILocation(line: 220, column: 43, scope: !205, inlinedAt: !485)
!518 = !DILocation(line: 221, column: 31, scope: !205, inlinedAt: !485)
!519 = !DILocation(line: 221, column: 39, scope: !205, inlinedAt: !485)
!520 = !DILocation(line: 221, column: 57, scope: !205, inlinedAt: !485)
!521 = !DILocation(line: 222, column: 31, scope: !205, inlinedAt: !485)
!522 = !DILocation(line: 222, column: 47, scope: !205, inlinedAt: !485)
!523 = !DILocation(line: 222, column: 59, scope: !205, inlinedAt: !485)
!524 = !DILocation(line: 223, column: 31, scope: !205, inlinedAt: !485)
!525 = !DILocation(line: 223, column: 47, scope: !205, inlinedAt: !485)
!526 = !DILocation(line: 223, column: 64, scope: !205, inlinedAt: !485)
!527 = !DILocation(line: 224, column: 31, scope: !205, inlinedAt: !485)
!528 = !DILocation(line: 224, column: 39, scope: !205, inlinedAt: !485)
!529 = !DILocation(line: 224, column: 57, scope: !205, inlinedAt: !485)
!530 = !DILocation(line: 225, column: 31, scope: !205, inlinedAt: !485)
!531 = !DILocation(line: 225, column: 39, scope: !205, inlinedAt: !485)
!532 = !DILocation(line: 225, column: 48, scope: !205, inlinedAt: !485)
!533 = !DILocation(line: 226, column: 31, scope: !205, inlinedAt: !485)
!534 = !DILocation(line: 226, column: 39, scope: !205, inlinedAt: !485)
!535 = !DILocation(line: 226, column: 48, scope: !205, inlinedAt: !485)
!536 = !DILocation(line: 237, column: 8, scope: !444)
!537 = !DILocation(line: 237, column: 18, scope: !444)
!538 = !DILocation(line: 237, column: 46, scope: !444)
!539 = !DILocation(line: 238, column: 8, scope: !444)
!540 = !DILocation(line: 238, column: 2, scope: !444)
!541 = !DILocation(line: 238, column: 49, scope: !444)
!542 = !DILocation(line: 240, column: 2, scope: !444)
!543 = !DILocation(line: 241, column: 1, scope: !444)
!544 = !DISubprogram(name: "lzma_strm_init", scope: !37, file: !37, line: 220, type: !545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!545 = !DISubroutineType(types: !546)
!546 = !{!59, !447}
!547 = !DISubprogram(name: "lzma_end", scope: !4, file: !4, line: 546, type: !548, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!548 = !DISubroutineType(types: !549)
!549 = !{null, !447}
!550 = !DISubprogram(name: "lzma_lzma_lclppb_decode", scope: !551, file: !551, line: 35, type: !552, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!551 = !DIFile(filename: "liblzma/lzma/lzma_decoder.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "0caa14a517fbe6eb5d1a0f4dac3f4c24")
!552 = !DISubroutineType(types: !553)
!553 = !{!118, !554, !79}
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!555 = !DISubprogram(name: "lzma_lzma_decoder_memusage", scope: !551, file: !551, line: 24, type: !556, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!556 = !DISubroutineType(types: !557)
!557 = !{!46, !558}
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!560 = !DISubprogram(name: "lzma_next_filter_init", scope: !37, file: !37, line: 226, type: !303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!561 = !DISubprogram(name: "lzma_lz_decoder_uncompressed", scope: !562, file: !562, line: 93, type: !563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!562 = !DIFile(filename: "liblzma/lz/lz_decoder.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "27344aa2da5754ad4a118fbd9137003b")
!563 = !DISubroutineType(types: !564)
!564 = !{null, !41, !44}
!565 = !DISubprogram(name: "lzma_free", scope: !37, file: !37, line: 215, type: !566, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!566 = !DISubroutineType(types: !567)
!567 = !{null, !68, !60}
