; ModuleID = 'liblzma/lzma/lzma2_encoder.c'
source_filename = "liblzma/lzma/lzma2_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lzma_fastpos = external local_unnamed_addr constant [8192 x i8], align 16

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_lzma2_encoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters) local_unnamed_addr #0 !dbg !128 {
entry:
    #dbg_value(ptr %next, !209, !DIExpression(), !212)
    #dbg_value(ptr %allocator, !210, !DIExpression(), !212)
    #dbg_value(ptr %filters, !211, !DIExpression(), !212)
  %call = tail call i32 @lzma_lz_encoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters, ptr noundef nonnull @lzma2_encoder_init) #7, !dbg !213
  ret i32 %call, !dbg !214
}

declare !dbg !215 i32 @lzma_lz_encoder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @lzma2_encoder_init(ptr nocapture noundef %lz, ptr noundef %allocator, ptr noundef readonly %options, ptr noundef %lz_options) #0 !dbg !293 {
entry:
    #dbg_value(ptr %lz, !295, !DIExpression(), !302)
    #dbg_value(ptr %allocator, !296, !DIExpression(), !302)
    #dbg_value(ptr %options, !297, !DIExpression(), !302)
    #dbg_value(ptr %lz_options, !298, !DIExpression(), !302)
  %cmp = icmp eq ptr %options, null, !dbg !303
  br i1 %cmp, label %return, label %if.end, !dbg !305

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %lz, align 8, !dbg !306
  %cmp1 = icmp eq ptr %0, null, !dbg !308
  br i1 %cmp1, label %if.then2, label %if.end9, !dbg !309

if.then2:                                         ; preds = %if.end
  %call = tail call ptr @lzma_alloc(i64 noundef 65704, ptr noundef %allocator) #7, !dbg !310
  store ptr %call, ptr %lz, align 8, !dbg !312
  %cmp5 = icmp eq ptr %call, null, !dbg !313
  br i1 %cmp5, label %return, label %if.end7, !dbg !315

if.end7:                                          ; preds = %if.then2
  %code = getelementptr inbounds i8, ptr %lz, i64 8, !dbg !316
  store ptr @lzma2_encode, ptr %code, align 8, !dbg !317
  %end = getelementptr inbounds i8, ptr %lz, i64 16, !dbg !318
  store ptr @lzma2_encoder_end, ptr %end, align 8, !dbg !319
  %options_update = getelementptr inbounds i8, ptr %lz, i64 24, !dbg !320
  store ptr @lzma2_encoder_options_update, ptr %options_update, align 8, !dbg !321
  %lzma = getelementptr inbounds i8, ptr %call, i64 8, !dbg !322
  store ptr null, ptr %lzma, align 8, !dbg !323
  %.pre = load ptr, ptr %lz, align 8, !dbg !324
  br label %if.end9, !dbg !325

if.end9:                                          ; preds = %if.end7, %if.end
  %1 = phi ptr [ %.pre, %if.end7 ], [ %0, %if.end ], !dbg !324
  %opt_cur = getelementptr inbounds i8, ptr %1, i64 16, !dbg !326
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %opt_cur, ptr noundef nonnull align 8 dereferenceable(112) %options, i64 112, i1 false), !dbg !327
  %2 = load ptr, ptr %lz, align 8, !dbg !328
  store i32 0, ptr %2, align 8, !dbg !329
  %3 = load ptr, ptr %lz, align 8, !dbg !330
  %need_properties = getelementptr inbounds i8, ptr %3, i64 128, !dbg !331
  store i8 1, ptr %need_properties, align 8, !dbg !332
  %4 = load ptr, ptr %lz, align 8, !dbg !333
  %need_state_reset = getelementptr inbounds i8, ptr %4, i64 129, !dbg !334
  store i8 0, ptr %need_state_reset, align 1, !dbg !335
  %5 = load ptr, ptr %lz, align 8, !dbg !336
  %preset_dict = getelementptr inbounds i8, ptr %5, i64 24, !dbg !337
  %6 = load ptr, ptr %preset_dict, align 8, !dbg !337
  %cmp16 = icmp eq ptr %6, null, !dbg !338
  br i1 %cmp16, label %lor.end, label %lor.rhs, !dbg !339

lor.rhs:                                          ; preds = %if.end9
  %preset_dict_size = getelementptr inbounds i8, ptr %5, i64 32, !dbg !340
  %7 = load i32, ptr %preset_dict_size, align 8, !dbg !340
  %cmp19 = icmp eq i32 %7, 0, !dbg !341
  %8 = zext i1 %cmp19 to i8, !dbg !342
  br label %lor.end, !dbg !339

lor.end:                                          ; preds = %lor.rhs, %if.end9
  %storedv = phi i8 [ 1, %if.end9 ], [ %8, %lor.rhs ]
  %need_dictionary_reset = getelementptr inbounds i8, ptr %5, i64 130, !dbg !343
  store i8 %storedv, ptr %need_dictionary_reset, align 2, !dbg !342
  %9 = load ptr, ptr %lz, align 8, !dbg !344
  %lzma22 = getelementptr inbounds i8, ptr %9, i64 8, !dbg !344
  %opt_cur24 = getelementptr inbounds i8, ptr %9, i64 16, !dbg !344
  %call25 = tail call i32 @lzma_lzma_encoder_create(ptr noundef nonnull %lzma22, ptr noundef %allocator, ptr noundef nonnull %opt_cur24, ptr noundef %lz_options) #7, !dbg !344
    #dbg_value(i32 %call25, !299, !DIExpression(), !345)
  %cmp26.not.not = icmp eq i32 %call25, 0, !dbg !346
  br i1 %cmp26.not.not, label %do.end, label %return

do.end:                                           ; preds = %lor.end
  %10 = load i64, ptr %lz_options, align 8, !dbg !348
  %dict_size = getelementptr inbounds i8, ptr %lz_options, i64 8, !dbg !350
  %11 = load i64, ptr %dict_size, align 8, !dbg !350
  %add = add i64 %11, %10, !dbg !351
  %cmp29 = icmp ult i64 %add, 65536, !dbg !352
  br i1 %cmp29, label %if.then30, label %return, !dbg !353

if.then30:                                        ; preds = %do.end
  %sub = sub i64 65536, %11, !dbg !354
  store i64 %sub, ptr %lz_options, align 8, !dbg !355
  br label %return, !dbg !356

return:                                           ; preds = %lor.end, %do.end, %if.then30, %if.then2, %entry
  %retval.1 = phi i32 [ %call25, %lor.end ], [ 11, %entry ], [ 5, %if.then2 ], [ 0, %if.then30 ], [ 0, %do.end ], !dbg !302
  ret i32 %retval.1, !dbg !357
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 65704, 65703) i64 @lzma_lzma2_encoder_memusage(ptr noundef %options) local_unnamed_addr #0 !dbg !358 {
entry:
    #dbg_value(ptr %options, !362, !DIExpression(), !365)
  %call = tail call i64 @lzma_lzma_encoder_memusage(ptr noundef %options) #7, !dbg !366
    #dbg_value(i64 %call, !363, !DIExpression(), !365)
  %cmp = icmp eq i64 %call, -1, !dbg !367
  %add = add i64 %call, 65704, !dbg !369
  %retval.0 = select i1 %cmp, i64 -1, i64 %add, !dbg !369
  ret i64 %retval.0, !dbg !370
}

declare !dbg !371 i64 @lzma_lzma_encoder_memusage(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @lzma_lzma2_props_encode(ptr nocapture noundef readonly %options, ptr nocapture noundef writeonly %out) local_unnamed_addr #2 !dbg !373 {
entry:
    #dbg_value(ptr %options, !377, !DIExpression(), !382)
    #dbg_value(ptr %out, !378, !DIExpression(), !382)
    #dbg_value(ptr %options, !379, !DIExpression(), !382)
  %0 = load i32, ptr %options, align 8, !dbg !383
  %cmp = icmp ugt i32 %0, 4096, !dbg !383
  %1 = add i32 %0, -1
  %spec.select = select i1 %cmp, i32 %1, i32 4095, !dbg !383
    #dbg_value(i32 %spec.select, !381, !DIExpression(), !382)
    #dbg_value(i32 %spec.select, !381, !DIExpression(), !382)
  %shr = lshr i32 %spec.select, 2, !dbg !384
  %or = or i32 %shr, %spec.select, !dbg !385
    #dbg_value(i32 %or, !381, !DIExpression(), !382)
  %shr2 = lshr i32 %or, 3, !dbg !386
  %or3 = or i32 %shr2, %or, !dbg !387
    #dbg_value(i32 %or3, !381, !DIExpression(), !382)
  %shr4 = lshr i32 %or3, 4, !dbg !388
  %or5 = or i32 %shr4, %or3, !dbg !389
    #dbg_value(i32 %or5, !381, !DIExpression(), !382)
  %shr6 = lshr i32 %or5, 8, !dbg !390
  %or7 = or i32 %shr6, %or5, !dbg !391
    #dbg_value(i32 %or7, !381, !DIExpression(), !382)
  %shr8 = lshr i32 %or7, 16, !dbg !392
  %or9 = or i32 %shr8, %or7, !dbg !393
    #dbg_value(i32 %or9, !381, !DIExpression(), !382)
  %cmp10 = icmp eq i32 %or9, -1, !dbg !394
  br i1 %cmp10, label %if.end, label %if.else, !dbg !396

if.else:                                          ; preds = %entry
  %add = add nuw i32 %or9, 1, !dbg !397
    #dbg_value(i32 %add, !398, !DIExpression(), !404)
  %cmp.i = icmp ult i32 %or9, 8191, !dbg !406
  br i1 %cmp.i, label %if.then.i, label %if.end.i, !dbg !408

if.then.i:                                        ; preds = %if.else
  %idxprom.i = zext nneg i32 %add to i64, !dbg !409
  %arrayidx.i = getelementptr inbounds [8192 x i8], ptr @lzma_fastpos, i64 0, i64 %idxprom.i, !dbg !409
  %2 = load i8, ptr %arrayidx.i, align 1, !dbg !409
  br label %get_pos_slot.exit, !dbg !410

if.end.i:                                         ; preds = %if.else
  %cmp1.i = icmp ult i32 %or9, 33554431, !dbg !411
  br i1 %cmp1.i, label %if.then3.i, label %if.end7.i, !dbg !413

if.then3.i:                                       ; preds = %if.end.i
  %shr.i = lshr i32 %add, 12, !dbg !414
  %idxprom4.i = zext nneg i32 %shr.i to i64, !dbg !414
  %arrayidx5.i = getelementptr inbounds [8192 x i8], ptr @lzma_fastpos, i64 0, i64 %idxprom4.i, !dbg !414
  %3 = load i8, ptr %arrayidx5.i, align 1, !dbg !414
  %add.i = add i8 %3, 24, !dbg !414
  br label %get_pos_slot.exit, !dbg !415

if.end7.i:                                        ; preds = %if.end.i
  %shr8.i = lshr i32 %add, 24, !dbg !416
  %idxprom9.i = zext nneg i32 %shr8.i to i64, !dbg !416
  %arrayidx10.i = getelementptr inbounds [8192 x i8], ptr @lzma_fastpos, i64 0, i64 %idxprom9.i, !dbg !416
  %4 = load i8, ptr %arrayidx10.i, align 1, !dbg !416
  %add12.i = add i8 %4, 48, !dbg !416
  br label %get_pos_slot.exit, !dbg !417

get_pos_slot.exit:                                ; preds = %if.then.i, %if.then3.i, %if.end7.i
  %retval.0.i = phi i8 [ %2, %if.then.i ], [ %add.i, %if.then3.i ], [ %add12.i, %if.end7.i ], !dbg !404
  %conv = add i8 %retval.0.i, -24, !dbg !418
  br label %if.end

if.end:                                           ; preds = %entry, %get_pos_slot.exit
  %storemerge = phi i8 [ %conv, %get_pos_slot.exit ], [ 40, %entry ], !dbg !419
  store i8 %storemerge, ptr %out, align 1, !dbg !419
  ret i32 0, !dbg !420
}

declare !dbg !421 ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @lzma2_encode(ptr noundef %pcoder, ptr noalias noundef %mf, ptr noalias noundef %out, ptr noalias noundef %out_pos, i64 noundef %out_size) #0 !dbg !424 {
entry:
    #dbg_value(ptr %pcoder, !428, !DIExpression(), !445)
    #dbg_value(ptr %mf, !429, !DIExpression(), !445)
    #dbg_value(ptr %out, !430, !DIExpression(), !445)
    #dbg_value(ptr %out_pos, !431, !DIExpression(), !445)
    #dbg_value(i64 %out_size, !432, !DIExpression(), !445)
    #dbg_value(ptr %pcoder, !433, !DIExpression(), !445)
  %0 = load i64, ptr %out_pos, align 8, !dbg !446
  %cmp173 = icmp ult i64 %0, %out_size, !dbg !447
  br i1 %cmp173, label %while.body.lr.ph, label %cleanup91, !dbg !448

while.body.lr.ph:                                 ; preds = %entry
  %buf73 = getelementptr inbounds i8, ptr %pcoder, i64 160
  %buf_pos75 = getelementptr inbounds i8, ptr %pcoder, i64 152
  %uncompressed_size84 = getelementptr inbounds i8, ptr %pcoder, i64 136
  %1 = getelementptr i8, ptr %mf, i64 24
  %write_pos.i = getelementptr inbounds i8, ptr %mf, i64 36
  %read_ahead.i = getelementptr inbounds i8, ptr %mf, i64 28
  %need_state_reset = getelementptr inbounds i8, ptr %pcoder, i64 129
  %lzma = getelementptr inbounds i8, ptr %pcoder, i64 8
  %opt_cur = getelementptr inbounds i8, ptr %pcoder, i64 16
  %compressed_size = getelementptr inbounds i8, ptr %pcoder, i64 144
  %match_len_max = getelementptr inbounds i8, ptr %mf, i64 100
  %add.ptr = getelementptr inbounds i8, ptr %pcoder, i64 166
  %need_dictionary_reset.i = getelementptr inbounds i8, ptr %pcoder, i64 130
  %arrayidx5.i = getelementptr inbounds i8, ptr %pcoder, i64 161
  %arrayidx10.i = getelementptr inbounds i8, ptr %pcoder, i64 162
  %need_properties.i = getelementptr inbounds i8, ptr %pcoder, i64 128
  %.pre = load i32, ptr %pcoder, align 8, !dbg !449
  br label %while.body, !dbg !448

while.body:                                       ; preds = %while.body.lr.ph, %sw.epilog
  %2 = phi i32 [ %.pre, %while.body.lr.ph ], [ %36, %sw.epilog ], !dbg !449
  %3 = phi i64 [ %0, %while.body.lr.ph ], [ %37, %sw.epilog ]
  switch i32 %2, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %while.body.sw.bb14_crit_edge
    i32 2, label %while.body.sw.bb60_crit_edge
    i32 3, label %sw.bb72
    i32 4, label %sw.bb83
  ], !dbg !450

while.body.sw.bb60_crit_edge:                     ; preds = %while.body
  %.pre184 = load i64, ptr %compressed_size, align 8, !dbg !451
  br label %sw.bb60, !dbg !450

while.body.sw.bb14_crit_edge:                     ; preds = %while.body
  %.pre181 = load i64, ptr %uncompressed_size84, align 8, !dbg !452
  br label %sw.bb14, !dbg !450

sw.bb:                                            ; preds = %while.body
    #dbg_value(ptr %mf, !453, !DIExpression(), !460)
  %4 = load i32, ptr %write_pos.i, align 4, !dbg !463
  %5 = load i32, ptr %1, align 8, !dbg !464
  %sub.i = sub i32 %4, %5, !dbg !465
  %6 = load i32, ptr %read_ahead.i, align 4, !dbg !466
  %add.i = sub i32 0, %6, !dbg !467
  %cmp1 = icmp eq i32 %sub.i, %add.i, !dbg !467
  br i1 %cmp1, label %if.then, label %if.end6, !dbg !468

if.then:                                          ; preds = %sw.bb
  %action = getelementptr inbounds i8, ptr %mf, i64 104, !dbg !469
  %7 = load i32, ptr %action, align 8, !dbg !469
  %cmp2 = icmp eq i32 %7, 3, !dbg !472
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !473

if.then3:                                         ; preds = %if.then
  %inc = add nuw i64 %3, 1, !dbg !474
  store i64 %inc, ptr %out_pos, align 8, !dbg !474
  %arrayidx = getelementptr inbounds i8, ptr %out, i64 %3, !dbg !475
  store i8 0, ptr %arrayidx, align 1, !dbg !476
  br label %if.end, !dbg !475

if.end:                                           ; preds = %if.then3, %if.then
  %cmp5 = icmp ne i32 %7, 0, !dbg !477
  %cond = zext i1 %cmp5 to i32, !dbg !478
  br label %cleanup91, !dbg !479

if.end6:                                          ; preds = %sw.bb
  %8 = load i8, ptr %need_state_reset, align 1, !dbg !480, !range !481, !noundef !482
  %loadedv = trunc nuw i8 %8 to i1, !dbg !480
  br i1 %loadedv, label %do.body, label %if.end12, !dbg !483

do.body:                                          ; preds = %if.end6
  %9 = load ptr, ptr %lzma, align 8, !dbg !484
  %call8 = tail call i32 @lzma_lzma_encoder_reset(ptr noundef %9, ptr noundef nonnull %opt_cur) #7, !dbg !484
    #dbg_value(i32 %call8, !435, !DIExpression(), !485)
  %cmp9.not = icmp eq i32 %call8, 0, !dbg !486
  br i1 %cmp9.not, label %if.end12, label %cleanup91

if.end12:                                         ; preds = %do.body, %if.end6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %uncompressed_size84, i8 0, i64 16, i1 false), !dbg !488
  store i32 1, ptr %pcoder, align 8, !dbg !489
  br label %sw.bb14, !dbg !490

sw.bb14:                                          ; preds = %while.body.sw.bb14_crit_edge, %if.end12
  %10 = phi i64 [ %.pre181, %while.body.sw.bb14_crit_edge ], [ 0, %if.end12 ], !dbg !452
  %11 = trunc i64 %10 to i32, !dbg !491
  %conv = sub i32 2097152, %11, !dbg !491
    #dbg_value(i32 %conv, !439, !DIExpression(), !492)
  %12 = load i32, ptr %match_len_max, align 4, !dbg !493
  %cmp16 = icmp ult i32 %conv, %12, !dbg !495
  %.pre182 = load i32, ptr %1, align 8, !dbg !496
  %.pre183 = load i32, ptr %read_ahead.i, align 4, !dbg !497
  %13 = add i32 %conv, %.pre182, !dbg !498
  %14 = add i32 %12, %.pre183, !dbg !498
  %sub21 = sub i32 %13, %14, !dbg !498
  %limit.0 = select i1 %cmp16, i32 0, i32 %sub21, !dbg !498
    #dbg_value(i32 %limit.0, !442, !DIExpression(), !492)
    #dbg_value(!DIArgList(i32 %.pre182, i32 %.pre183), !443, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !492)
  %15 = load ptr, ptr %lzma, align 8, !dbg !499
  %call28 = tail call i32 @lzma_lzma_encode(ptr noundef %15, ptr noundef nonnull %mf, ptr noundef nonnull %add.ptr, ptr noundef nonnull %compressed_size, i64 noundef 65536, i32 noundef %limit.0) #7, !dbg !500
    #dbg_value(i32 %call28, !444, !DIExpression(), !492)
  %16 = load i32, ptr %1, align 8, !dbg !501
  %17 = load i32, ptr %read_ahead.i, align 4, !dbg !502
  %18 = add i32 %.pre183, %16, !dbg !503
  %19 = add i32 %.pre182, %17, !dbg !503
  %sub32 = sub i32 %18, %19, !dbg !503
  %conv33 = zext i32 %sub32 to i64, !dbg !504
  %20 = load i64, ptr %uncompressed_size84, align 8, !dbg !505
  %add35 = add i64 %20, %conv33, !dbg !505
  store i64 %add35, ptr %uncompressed_size84, align 8, !dbg !505
  %cmp36.not = icmp eq i32 %call28, 1, !dbg !506
  br i1 %cmp36.not, label %if.end39, label %cleanup91, !dbg !508

if.end39:                                         ; preds = %sw.bb14
  %21 = load i64, ptr %compressed_size, align 8, !dbg !509
  %cmp42.not = icmp ult i64 %21, %add35, !dbg !511
  br i1 %cmp42.not, label %if.end52, label %cleanup54, !dbg !512

if.end52:                                         ; preds = %if.end39
    #dbg_value(ptr %pcoder, !513, !DIExpression(), !521)
    #dbg_value(ptr %pcoder, !518, !DIExpression(), !521)
  %22 = load i8, ptr %need_properties.i, align 8, !dbg !523, !range !481, !noundef !482
  %loadedv.i154 = trunc nuw i8 %22 to i1, !dbg !523
  br i1 %loadedv.i154, label %if.then.i, label %if.else5.i, !dbg !525

if.then.i:                                        ; preds = %if.end52
    #dbg_value(i64 0, !519, !DIExpression(), !521)
  %23 = load i8, ptr %need_dictionary_reset.i, align 2, !dbg !526, !range !481, !noundef !482
  %loadedv1.i = trunc nuw i8 %23 to i1, !dbg !526
  br i1 %loadedv1.i, label %if.then2.i, label %if.else.i, !dbg !529

if.then2.i:                                       ; preds = %if.then.i
  store i8 -32, ptr %buf73, align 1, !dbg !530
  br label %if.end14.i, !dbg !531

if.else.i:                                        ; preds = %if.then.i
  store i8 -64, ptr %buf73, align 1, !dbg !532
  br label %if.end14.i

if.else5.i:                                       ; preds = %if.end52
    #dbg_value(i64 1, !519, !DIExpression(), !521)
  %24 = load i8, ptr %need_state_reset, align 1, !dbg !533, !range !481, !noundef !482
  %loadedv6.i = trunc nuw i8 %24 to i1, !dbg !533
  br i1 %loadedv6.i, label %if.then7.i, label %if.else10.i, !dbg !536

if.then7.i:                                       ; preds = %if.else5.i
  store i8 -96, ptr %arrayidx5.i, align 1, !dbg !537
  br label %if.end14.i, !dbg !538

if.else10.i:                                      ; preds = %if.else5.i
  store i8 -128, ptr %arrayidx5.i, align 1, !dbg !539
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.else10.i, %if.then7.i, %if.else.i, %if.then2.i
  %pos.0.i = phi i64 [ 0, %if.then2.i ], [ 0, %if.else.i ], [ 1, %if.then7.i ], [ 1, %if.else10.i ], !dbg !540
    #dbg_value(i64 %pos.0.i, !519, !DIExpression(), !521)
  store i64 %pos.0.i, ptr %buf_pos75, align 8, !dbg !541
  %sub.i157 = add i64 %add35, -1, !dbg !542
    #dbg_value(i64 %sub.i157, !520, !DIExpression(), !521)
  %shr.i158 = lshr i64 %sub.i157, 16, !dbg !543
  %inc.i = add nuw nsw i64 %pos.0.i, 1, !dbg !544
    #dbg_value(i64 %inc.i, !519, !DIExpression(), !521)
  %arrayidx16.i = getelementptr inbounds [65542 x i8], ptr %buf73, i64 0, i64 %pos.0.i, !dbg !545
  %25 = load i8, ptr %arrayidx16.i, align 1, !dbg !546
  %26 = trunc i64 %shr.i158 to i8, !dbg !546
  %conv17.i = add i8 %25, %26, !dbg !546
  store i8 %conv17.i, ptr %arrayidx16.i, align 1, !dbg !546
  %shr18.i = lshr i64 %sub.i157, 8, !dbg !547
  %conv19.i = trunc i64 %shr18.i to i8, !dbg !548
  %inc21.i = or disjoint i64 %pos.0.i, 2, !dbg !549
    #dbg_value(i64 %inc21.i, !519, !DIExpression(), !521)
  %arrayidx22.i = getelementptr inbounds [65542 x i8], ptr %buf73, i64 0, i64 %inc.i, !dbg !550
  store i8 %conv19.i, ptr %arrayidx22.i, align 1, !dbg !551
  %conv24.i = trunc i64 %sub.i157 to i8, !dbg !552
  %inc26.i = add nuw nsw i64 %pos.0.i, 3, !dbg !553
    #dbg_value(i64 %inc26.i, !519, !DIExpression(), !521)
  %arrayidx27.i = getelementptr inbounds [65542 x i8], ptr %buf73, i64 0, i64 %inc21.i, !dbg !554
  store i8 %conv24.i, ptr %arrayidx27.i, align 1, !dbg !555
  %sub28.i = add i64 %21, -1, !dbg !556
    #dbg_value(i64 %sub28.i, !520, !DIExpression(), !521)
  %shr29.i = lshr i64 %sub28.i, 8, !dbg !557
  %conv30.i = trunc i64 %shr29.i to i8, !dbg !558
  %inc32.i = or disjoint i64 %pos.0.i, 4, !dbg !559
    #dbg_value(i64 %inc32.i, !519, !DIExpression(), !521)
  %arrayidx33.i = getelementptr inbounds [65542 x i8], ptr %buf73, i64 0, i64 %inc26.i, !dbg !560
  store i8 %conv30.i, ptr %arrayidx33.i, align 1, !dbg !561
  %conv35.i = trunc i64 %sub28.i to i8, !dbg !562
    #dbg_value(i64 %inc32.i, !519, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !521)
  %arrayidx38.i = getelementptr inbounds [65542 x i8], ptr %buf73, i64 0, i64 %inc32.i, !dbg !563
  store i8 %conv35.i, ptr %arrayidx38.i, align 1, !dbg !564
  br i1 %loadedv.i154, label %if.then41.i, label %cleanup54.thread165, !dbg !565

if.then41.i:                                      ; preds = %if.end14.i
    #dbg_value(i64 %pos.0.i, !519, !DIExpression(DW_OP_plus_uconst, 5, DW_OP_stack_value), !521)
  %add.ptr.i = getelementptr inbounds i8, ptr %arrayidx16.i, i64 5, !dbg !566
  %call.i = tail call zeroext i1 @lzma_lzma_lclppb_encode(ptr noundef nonnull %opt_cur, ptr noundef nonnull %add.ptr.i) #7, !dbg !568
  %.pre.i = load i64, ptr %compressed_size, align 8, !dbg !569
  br label %cleanup54.thread165, !dbg !568

cleanup54.thread165:                              ; preds = %if.then41.i, %if.end14.i
  %27 = phi i64 [ %.pre.i, %if.then41.i ], [ %21, %if.end14.i ], !dbg !569
  store i8 0, ptr %need_properties.i, align 8, !dbg !570
  store i8 0, ptr %need_state_reset, align 1, !dbg !571
  store i8 0, ptr %need_dictionary_reset.i, align 2, !dbg !572
  %add48.i = add i64 %27, 6, !dbg !569
  store i64 %add48.i, ptr %compressed_size, align 8, !dbg !569
  store i32 2, ptr %pcoder, align 8, !dbg !573
  br label %sw.bb60

cleanup54:                                        ; preds = %if.end39
  %conv46 = zext i32 %17 to i64, !dbg !574
  %add48 = add i64 %add35, %conv46, !dbg !576
  store i64 %add48, ptr %uncompressed_size84, align 8, !dbg !576
  store i32 0, ptr %read_ahead.i, align 4, !dbg !577
    #dbg_value(ptr %pcoder, !578, !DIExpression(), !582)
    #dbg_value(ptr %pcoder, !581, !DIExpression(), !582)
  %28 = load i8, ptr %need_dictionary_reset.i, align 2, !dbg !584, !range !481, !noundef !482
  %loadedv.i = trunc nuw i8 %28 to i1, !dbg !584
  %spec.select.i = select i1 %loadedv.i, i8 1, i8 2, !dbg !586
  store i8 %spec.select.i, ptr %buf73, align 8, !dbg !587
  store i8 0, ptr %need_dictionary_reset.i, align 2, !dbg !588
  %sub.i153 = add i64 %add48, 65535, !dbg !589
  %shr.i = lshr i64 %sub.i153, 8, !dbg !590
  %conv.i = trunc i64 %shr.i to i8, !dbg !591
  store i8 %conv.i, ptr %arrayidx5.i, align 1, !dbg !592
  %29 = trunc i64 %add48 to i8, !dbg !593
  %conv8.i = add i8 %29, -1, !dbg !593
  store i8 %conv8.i, ptr %arrayidx10.i, align 2, !dbg !594
  store i64 0, ptr %buf_pos75, align 8, !dbg !595
  store i8 1, ptr %need_state_reset, align 1, !dbg !596
  br label %sw.epilog.sink.split

sw.bb60:                                          ; preds = %while.body.sw.bb60_crit_edge, %cleanup54.thread165
  %30 = phi i64 [ %.pre184, %while.body.sw.bb60_crit_edge ], [ %add48.i, %cleanup54.thread165 ], !dbg !451
  %call64 = tail call i64 @lzma_bufcpy(ptr noundef nonnull %buf73, ptr noundef nonnull %buf_pos75, i64 noundef %30, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %out_size) #7, !dbg !597
  %31 = load i64, ptr %buf_pos75, align 8, !dbg !598
  %32 = load i64, ptr %compressed_size, align 8, !dbg !600
  %cmp67.not = icmp eq i64 %31, %32, !dbg !601
  br i1 %cmp67.not, label %sw.epilog.sink.split, label %cleanup91, !dbg !602

sw.bb72:                                          ; preds = %while.body
  %call76 = tail call i64 @lzma_bufcpy(ptr noundef nonnull %buf73, ptr noundef nonnull %buf_pos75, i64 noundef 3, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %out_size) #7, !dbg !603
  %33 = load i64, ptr %buf_pos75, align 8, !dbg !604
  %cmp78.not = icmp eq i64 %33, 3, !dbg !606
  br i1 %cmp78.not, label %if.end81, label %cleanup91, !dbg !607

if.end81:                                         ; preds = %sw.bb72
  store i32 4, ptr %pcoder, align 8, !dbg !608
  %.pre180 = load i64, ptr %out_pos, align 8, !dbg !609
  br label %sw.bb83, !dbg !623

sw.bb83:                                          ; preds = %while.body, %if.end81
  %34 = phi i64 [ %3, %while.body ], [ %.pre180, %if.end81 ], !dbg !609
  %mf.val = load ptr, ptr %mf, align 8, !dbg !624
  %mf.val152 = load i32, ptr %1, align 8, !dbg !624
    #dbg_value(ptr undef, !614, !DIExpression(), !625)
    #dbg_value(ptr %out, !615, !DIExpression(), !625)
    #dbg_value(ptr %out_pos, !616, !DIExpression(), !625)
    #dbg_value(i64 %out_size, !617, !DIExpression(), !625)
    #dbg_value(ptr %uncompressed_size84, !618, !DIExpression(), !625)
  %sub.i160 = sub i64 %out_size, %34, !dbg !626
    #dbg_value(i64 %sub.i160, !619, !DIExpression(), !625)
  %35 = load i64, ptr %uncompressed_size84, align 8, !dbg !627
  %sub..i = tail call i64 @llvm.umin.i64(i64 %sub.i160, i64 %35), !dbg !627
    #dbg_value(i64 %sub..i, !621, !DIExpression(), !625)
  %add.ptr.i161 = getelementptr inbounds i8, ptr %out, i64 %34, !dbg !628
  %idx.ext.i = zext i32 %mf.val152 to i64, !dbg !629
  %add.ptr1.i = getelementptr inbounds i8, ptr %mf.val, i64 %idx.ext.i, !dbg !629
  %idx.neg.i = sub i64 0, %35, !dbg !630
  %add.ptr2.i = getelementptr inbounds i8, ptr %add.ptr1.i, i64 %idx.neg.i, !dbg !630
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr.i161, ptr readonly align 1 %add.ptr2.i, i64 %sub..i, i1 false), !dbg !631
  %add.i162 = add i64 %sub..i, %34, !dbg !632
  store i64 %add.i162, ptr %out_pos, align 8, !dbg !632
  %sub3.i = sub i64 %35, %sub..i, !dbg !633
  store i64 %sub3.i, ptr %uncompressed_size84, align 8, !dbg !633
  %cmp86.not.not = icmp ugt i64 %35, %sub.i160, !dbg !634
  br i1 %cmp86.not.not, label %cleanup91, label %sw.epilog.sink.split, !dbg !636

sw.epilog.sink.split:                             ; preds = %sw.bb83, %sw.bb60, %cleanup54
  %.sink = phi i32 [ 3, %cleanup54 ], [ 0, %sw.bb60 ], [ 0, %sw.bb83 ]
  store i32 %.sink, ptr %pcoder, align 8, !dbg !637
  br label %sw.epilog, !dbg !446

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %while.body
  %36 = phi i32 [ %2, %while.body ], [ %.sink, %sw.epilog.sink.split ]
  %37 = load i64, ptr %out_pos, align 8, !dbg !446
  %cmp = icmp ult i64 %37, %out_size, !dbg !447
  br i1 %cmp, label %while.body, label %cleanup91, !dbg !448, !llvm.loop !638

cleanup91:                                        ; preds = %do.body, %sw.bb60, %sw.bb72, %sw.bb83, %sw.epilog, %sw.bb14, %entry, %if.end
  %retval.7 = phi i32 [ %cond, %if.end ], [ 0, %entry ], [ %call8, %do.body ], [ 0, %sw.bb60 ], [ 0, %sw.bb72 ], [ 0, %sw.bb83 ], [ 0, %sw.epilog ], [ 0, %sw.bb14 ], !dbg !445
  ret i32 %retval.7, !dbg !640
}

; Function Attrs: nounwind uwtable
define internal void @lzma2_encoder_end(ptr noundef %pcoder, ptr noundef %allocator) #0 !dbg !641 {
entry:
    #dbg_value(ptr %pcoder, !643, !DIExpression(), !646)
    #dbg_value(ptr %allocator, !644, !DIExpression(), !646)
    #dbg_value(ptr %pcoder, !645, !DIExpression(), !646)
  %lzma = getelementptr inbounds i8, ptr %pcoder, i64 8, !dbg !647
  %0 = load ptr, ptr %lzma, align 8, !dbg !647
  tail call void @lzma_free(ptr noundef %0, ptr noundef %allocator) #7, !dbg !648
  tail call void @lzma_free(ptr noundef %pcoder, ptr noundef %allocator) #7, !dbg !649
  ret void, !dbg !650
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal range(i32 0, 12) i32 @lzma2_encoder_options_update(ptr nocapture noundef %pcoder, ptr nocapture noundef readonly %filter) #3 !dbg !651 {
entry:
    #dbg_value(ptr %pcoder, !653, !DIExpression(), !657)
    #dbg_value(ptr %filter, !654, !DIExpression(), !657)
    #dbg_value(ptr %pcoder, !655, !DIExpression(), !657)
  %options = getelementptr inbounds i8, ptr %filter, i64 8, !dbg !658
  %0 = load ptr, ptr %options, align 8, !dbg !658
  %cmp = icmp eq ptr %0, null, !dbg !660
  br i1 %cmp, label %cleanup38, label %lor.lhs.false, !dbg !661

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %pcoder, align 8, !dbg !662
  %cmp1.not = icmp eq i32 %1, 0, !dbg !663
  br i1 %cmp1.not, label %if.end, label %cleanup38, !dbg !664

if.end:                                           ; preds = %lor.lhs.false
    #dbg_value(ptr %0, !656, !DIExpression(), !657)
  %lc = getelementptr inbounds i8, ptr %pcoder, i64 36, !dbg !665
  %2 = load i32, ptr %lc, align 4, !dbg !665
  %lc3 = getelementptr inbounds i8, ptr %0, i64 20, !dbg !667
  %3 = load i32, ptr %lc3, align 4, !dbg !667
  %cmp4.not = icmp eq i32 %2, %3, !dbg !668
  br i1 %cmp4.not, label %lor.lhs.false5, label %if.then13, !dbg !669

lor.lhs.false5:                                   ; preds = %if.end
  %lp = getelementptr inbounds i8, ptr %pcoder, i64 40, !dbg !670
  %4 = load i32, ptr %lp, align 8, !dbg !670
  %lp7 = getelementptr inbounds i8, ptr %0, i64 24, !dbg !671
  %5 = load i32, ptr %lp7, align 8, !dbg !671
  %cmp8.not = icmp eq i32 %4, %5, !dbg !672
  br i1 %cmp8.not, label %lor.lhs.false9, label %if.then13, !dbg !673

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %pb = getelementptr inbounds i8, ptr %pcoder, i64 44, !dbg !674
  %6 = load i32, ptr %pb, align 4, !dbg !674
  %pb11 = getelementptr inbounds i8, ptr %0, i64 28, !dbg !675
  %7 = load i32, ptr %pb11, align 4, !dbg !675
  %cmp12.not = icmp eq i32 %6, %7, !dbg !676
  br i1 %cmp12.not, label %cleanup38, label %if.then13, !dbg !677

if.then13:                                        ; preds = %lor.lhs.false9, %lor.lhs.false5, %if.end
  %cmp15 = icmp ugt i32 %3, 4, !dbg !678
  br i1 %cmp15, label %cleanup38, label %lor.lhs.false16, !dbg !681

lor.lhs.false16:                                  ; preds = %if.then13
  %lp17 = getelementptr inbounds i8, ptr %0, i64 24, !dbg !682
  %8 = load i32, ptr %lp17, align 8, !dbg !682
  %cmp18 = icmp ugt i32 %8, 4, !dbg !683
  %add = add nuw nsw i32 %8, %3
  %cmp22 = icmp ugt i32 %add, 4
  %or.cond = select i1 %cmp18, i1 true, i1 %cmp22, !dbg !684
  br i1 %or.cond, label %cleanup38, label %lor.lhs.false23, !dbg !684

lor.lhs.false23:                                  ; preds = %lor.lhs.false16
  %pb24 = getelementptr inbounds i8, ptr %0, i64 28, !dbg !685
  %9 = load i32, ptr %pb24, align 4, !dbg !685
  %cmp25 = icmp ugt i32 %9, 4, !dbg !686
  br i1 %cmp25, label %cleanup38, label %if.end27, !dbg !687

if.end27:                                         ; preds = %lor.lhs.false23
  store i32 %3, ptr %lc, align 4, !dbg !688
  %10 = load i32, ptr %lp17, align 8, !dbg !689
  %lp33 = getelementptr inbounds i8, ptr %pcoder, i64 40, !dbg !690
  store i32 %10, ptr %lp33, align 8, !dbg !691
  %11 = load i32, ptr %pb24, align 4, !dbg !692
  %pb36 = getelementptr inbounds i8, ptr %pcoder, i64 44, !dbg !693
  store i32 %11, ptr %pb36, align 4, !dbg !694
  %need_properties = getelementptr inbounds i8, ptr %pcoder, i64 128, !dbg !695
  store i8 1, ptr %need_properties, align 8, !dbg !696
  %need_state_reset = getelementptr inbounds i8, ptr %pcoder, i64 129, !dbg !697
  store i8 1, ptr %need_state_reset, align 1, !dbg !698
  br label %cleanup38, !dbg !699

cleanup38:                                        ; preds = %lor.lhs.false23, %lor.lhs.false16, %if.then13, %if.end27, %lor.lhs.false9, %entry, %lor.lhs.false
  %retval.1 = phi i32 [ 11, %lor.lhs.false ], [ 11, %entry ], [ 8, %lor.lhs.false23 ], [ 8, %lor.lhs.false16 ], [ 8, %if.then13 ], [ 0, %if.end27 ], [ 0, %lor.lhs.false9 ], !dbg !657
  ret i32 %retval.1, !dbg !700
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare !dbg !701 i32 @lzma_lzma_encoder_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !705 i32 @lzma_lzma_encoder_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !708 i32 @lzma_lzma_encode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !711 i64 @lzma_bufcpy(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !714 zeroext i1 @lzma_lzma_lclppb_encode(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !717 void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!120, !121, !122, !123, !124, !125, !126}
!llvm.ident = !{!127}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !116, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "liblzma/lzma/lzma2_encoder.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "24a99a9eab13c31bc3d49edc2de38059")
!2 = !{!3, !19, !25, !32, !40, !44, !47}
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
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !33, line: 58, baseType: !5, size: 32, elements: !34)
!33 = !DIFile(filename: "liblzma/api/lzma/lzma.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "c59c540efa0aff44f03d71331089fff8")
!34 = !{!35, !36, !37, !38, !39}
!35 = !DIEnumerator(name: "LZMA_MF_HC3", value: 3)
!36 = !DIEnumerator(name: "LZMA_MF_HC4", value: 4)
!37 = !DIEnumerator(name: "LZMA_MF_BT2", value: 18)
!38 = !DIEnumerator(name: "LZMA_MF_BT3", value: 19)
!39 = !DIEnumerator(name: "LZMA_MF_BT4", value: 20)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !33, line: 138, baseType: !5, size: 32, elements: !41)
!41 = !{!42, !43}
!42 = !DIEnumerator(name: "LZMA_MODE_FAST", value: 1)
!43 = !DIEnumerator(name: "LZMA_MODE_NORMAL", value: 2)
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 44, baseType: !5, size: 32, elements: !45)
!45 = !{!46}
!46 = !DIEnumerator(name: "LZMA_RESERVED_ENUM", value: 0)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !48, file: !1, line: 21, baseType: !5, size: 32, elements: !110)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_coder_s", file: !1, line: 20, size: 525632, elements: !49)
!49 = !{!50, !51, !55, !96, !98, !99, !100, !104, !105, !106}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !48, file: !1, line: 27, baseType: !47, size: 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "lzma", scope: !48, file: !1, line: 30, baseType: !52, size: 64, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_coder", file: !54, line: 78, baseType: null)
!54 = !DIFile(filename: "liblzma/common/common.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!55 = !DIDerivedType(tag: DW_TAG_member, name: "opt_cur", scope: !48, file: !1, line: 33, baseType: !56, size: 896, offset: 128)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_options_lzma", file: !33, line: 399, baseType: !57)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !33, line: 185, size: 896, elements: !58)
!58 = !{!59, !64, !70, !71, !72, !73, !74, !76, !77, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !90, !91, !92, !93, !95}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "dict_size", scope: !57, file: !33, line: 217, baseType: !60, size: 32)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !61, line: 26, baseType: !62)
!61 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !63, line: 42, baseType: !5)
!63 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!64 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict", scope: !57, file: !33, line: 240, baseType: !65, size: 64, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !61, line: 24, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !63, line: 38, baseType: !69)
!69 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict_size", scope: !57, file: !33, line: 254, baseType: !60, size: 32, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "lc", scope: !57, file: !33, line: 281, baseType: !60, size: 32, offset: 160)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "lp", scope: !57, file: !33, line: 293, baseType: !60, size: 32, offset: 192)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "pb", scope: !57, file: !33, line: 316, baseType: !60, size: 32, offset: 224)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !57, file: !33, line: 322, baseType: !75, size: 32, offset: 256)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_mode", file: !33, line: 155, baseType: !40)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "nice_len", scope: !57, file: !33, line: 342, baseType: !60, size: 32, offset: 288)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "mf", scope: !57, file: !33, line: 345, baseType: !78, size: 32, offset: 320)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_match_finder", file: !33, line: 111, baseType: !32)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !57, file: !33, line: 375, baseType: !60, size: 32, offset: 352)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !57, file: !33, line: 384, baseType: !60, size: 32, offset: 384)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !57, file: !33, line: 385, baseType: !60, size: 32, offset: 416)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !57, file: !33, line: 386, baseType: !60, size: 32, offset: 448)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !57, file: !33, line: 387, baseType: !60, size: 32, offset: 480)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int5", scope: !57, file: !33, line: 388, baseType: !60, size: 32, offset: 512)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int6", scope: !57, file: !33, line: 389, baseType: !60, size: 32, offset: 544)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int7", scope: !57, file: !33, line: 390, baseType: !60, size: 32, offset: 576)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int8", scope: !57, file: !33, line: 391, baseType: !60, size: 32, offset: 608)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !57, file: !33, line: 392, baseType: !89, size: 32, offset: 640)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !4, line: 46, baseType: !44)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !57, file: !33, line: 393, baseType: !89, size: 32, offset: 672)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !57, file: !33, line: 394, baseType: !89, size: 32, offset: 704)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !57, file: !33, line: 395, baseType: !89, size: 32, offset: 736)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !57, file: !33, line: 396, baseType: !94, size: 64, offset: 768)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !57, file: !33, line: 397, baseType: !94, size: 64, offset: 832)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "need_properties", scope: !48, file: !1, line: 35, baseType: !97, size: 8, offset: 1024)
!97 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "need_state_reset", scope: !48, file: !1, line: 36, baseType: !97, size: 8, offset: 1032)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "need_dictionary_reset", scope: !48, file: !1, line: 37, baseType: !97, size: 8, offset: 1040)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_size", scope: !48, file: !1, line: 40, baseType: !101, size: 64, offset: 1088)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !102, line: 18, baseType: !103)
!102 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!103 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_size", scope: !48, file: !1, line: 44, baseType: !101, size: 64, offset: 1152)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "buf_pos", scope: !48, file: !1, line: 47, baseType: !101, size: 64, offset: 1216)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !48, file: !1, line: 50, baseType: !107, size: 524336, offset: 1280)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 524336, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 65542)
!110 = !{!111, !112, !113, !114, !115}
!111 = !DIEnumerator(name: "SEQ_INIT", value: 0)
!112 = !DIEnumerator(name: "SEQ_LZMA_ENCODE", value: 1)
!113 = !DIEnumerator(name: "SEQ_LZMA_COPY", value: 2)
!114 = !DIEnumerator(name: "SEQ_UNCOMPRESSED_HEADER", value: 3)
!115 = !DIEnumerator(name: "SEQ_UNCOMPRESSED_COPY", value: 4)
!116 = !{!94, !117, !118}
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!120 = !{i32 7, !"Dwarf Version", i32 5}
!121 = !{i32 2, !"Debug Info Version", i32 3}
!122 = !{i32 1, !"wchar_size", i32 4}
!123 = !{i32 8, !"PIC Level", i32 2}
!124 = !{i32 7, !"PIE Level", i32 2}
!125 = !{i32 7, !"uwtable", i32 2}
!126 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!127 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!128 = distinct !DISubprogram(name: "lzma_lzma2_encoder_init", scope: !1, file: !1, line: 357, type: !129, scopeLine: 359, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !208)
!129 = !DISubroutineType(types: !130)
!130 = !{!131, !132, !150, !198}
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_next_coder", file: !54, line: 80, baseType: !134)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_next_coder_s", file: !54, line: 124, size: 512, elements: !135)
!135 = !{!136, !137, !142, !145, !169, !174, !181, !186}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !134, file: !54, line: 126, baseType: !52, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !134, file: !54, line: 130, baseType: !138, size: 64, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !139, line: 63, baseType: !140)
!139 = !DIFile(filename: "liblzma/api/lzma/vli.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !61, line: 27, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !63, line: 45, baseType: !103)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !134, file: !54, line: 136, baseType: !143, size: 64, offset: 128)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !144, line: 90, baseType: !103)
!144 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!145 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !134, file: !54, line: 139, baseType: !146, size: 64, offset: 192)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_code_function", file: !54, line: 94, baseType: !147)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DISubroutineType(types: !149)
!149 = !{!131, !52, !150, !163, !164, !101, !166, !164, !101, !168}
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !4, line: 403, baseType: !152)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 341, size: 192, elements: !153)
!153 = !{!154, !158, !162}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !152, file: !4, line: 376, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DISubroutineType(types: !157)
!157 = !{!94, !94, !101, !101}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !152, file: !4, line: 390, baseType: !159, size: 64, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DISubroutineType(types: !161)
!161 = !{null, !94, !94}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !152, file: !4, line: 401, baseType: !94, size: 64, offset: 128)
!163 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !65)
!164 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !165)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !167)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !4, line: 322, baseType: !19)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !134, file: !54, line: 144, baseType: !170, size: 64, offset: 256)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_end_function", file: !54, line: 102, baseType: !171)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DISubroutineType(types: !173)
!173 = !{null, !52, !150}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "get_check", scope: !134, file: !54, line: 148, baseType: !175, size: 64, offset: 320)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DISubroutineType(types: !177)
!177 = !{!178, !179}
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !26, line: 55, baseType: !25)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "memconfig", scope: !134, file: !54, line: 152, baseType: !182, size: 64, offset: 384)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DISubroutineType(types: !184)
!184 = !{!131, !52, !185, !185, !140}
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !134, file: !54, line: 157, baseType: !187, size: 64, offset: 448)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{!131, !52, !150, !190, !190}
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !193, line: 65, baseType: !194)
!193 = !DIFile(filename: "liblzma/api/lzma/filter.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !193, line: 43, size: 128, elements: !195)
!195 = !{!196, !197}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !194, file: !193, line: 54, baseType: !138, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !194, file: !193, line: 63, baseType: !94, size: 64, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !200)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter_info", file: !54, line: 82, baseType: !201)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_filter_info_s", file: !54, line: 109, size: 192, elements: !202)
!202 = !{!203, !204, !207}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !201, file: !54, line: 112, baseType: !138, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !201, file: !54, line: 116, baseType: !205, size: 64, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_init_function", file: !54, line: 86, baseType: !206)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !201, file: !54, line: 119, baseType: !94, size: 64, offset: 128)
!208 = !{!209, !210, !211}
!209 = !DILocalVariable(name: "next", arg: 1, scope: !128, file: !1, line: 357, type: !132)
!210 = !DILocalVariable(name: "allocator", arg: 2, scope: !128, file: !1, line: 357, type: !150)
!211 = !DILocalVariable(name: "filters", arg: 3, scope: !128, file: !1, line: 358, type: !198)
!212 = !DILocation(line: 0, scope: !128)
!213 = !DILocation(line: 360, column: 9, scope: !128)
!214 = !DILocation(line: 360, column: 2, scope: !128)
!215 = !DISubprogram(name: "lzma_lz_encoder_init", scope: !216, file: !216, line: 298, type: !217, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!216 = !DIFile(filename: "liblzma/lz/lz_encoder.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "780f78e6e21a3ca52f57df68bfdc6f53")
!217 = !DISubroutineType(types: !218)
!218 = !{!131, !132, !150, !198, !219}
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{!131, !222, !150, !278, !280}
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_lz_encoder", file: !216, line: 208, baseType: !224)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !216, line: 192, size: 256, elements: !225)
!225 = !{!226, !227, !273, !274}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !224, file: !216, line: 194, baseType: !52, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !224, file: !216, line: 197, baseType: !228, size: 64, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{!131, !231, !232, !166, !164, !101}
!231 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !52)
!232 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !233)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_mf", file: !216, line: 28, baseType: !235)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_mf_s", file: !216, line: 29, size: 960, elements: !236)
!236 = !{!237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !257, !261, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !235, file: !216, line: 35, baseType: !167, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !235, file: !216, line: 39, baseType: !60, size: 32, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "keep_size_before", scope: !235, file: !216, line: 45, baseType: !60, size: 32, offset: 96)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "keep_size_after", scope: !235, file: !216, line: 51, baseType: !60, size: 32, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !235, file: !216, line: 58, baseType: !60, size: 32, offset: 160)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !235, file: !216, line: 63, baseType: !60, size: 32, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "read_ahead", scope: !235, file: !216, line: 67, baseType: !60, size: 32, offset: 224)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "read_limit", scope: !235, file: !216, line: 75, baseType: !60, size: 32, offset: 256)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "write_pos", scope: !235, file: !216, line: 80, baseType: !60, size: 32, offset: 288)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !235, file: !216, line: 84, baseType: !60, size: 32, offset: 320)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "find", scope: !235, file: !216, line: 92, baseType: !248, size: 64, offset: 384)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{!60, !233, !251}
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_match", file: !216, line: 25, baseType: !253)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !216, line: 22, size: 64, elements: !254)
!254 = !{!255, !256}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !253, file: !216, line: 23, baseType: !60, size: 32)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "dist", scope: !253, file: !216, line: 24, baseType: !60, size: 32, offset: 32)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !235, file: !216, line: 97, baseType: !258, size: 64, offset: 448)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{null, !233, !60}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !235, file: !216, line: 99, baseType: !262, size: 64, offset: 512)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "son", scope: !235, file: !216, line: 100, baseType: !262, size: 64, offset: 576)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "cyclic_pos", scope: !235, file: !216, line: 101, baseType: !60, size: 32, offset: 640)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "cyclic_size", scope: !235, file: !216, line: 102, baseType: !60, size: 32, offset: 672)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "hash_mask", scope: !235, file: !216, line: 103, baseType: !60, size: 32, offset: 704)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !235, file: !216, line: 106, baseType: !60, size: 32, offset: 736)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "nice_len", scope: !235, file: !216, line: 109, baseType: !60, size: 32, offset: 768)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "match_len_max", scope: !235, file: !216, line: 114, baseType: !60, size: 32, offset: 800)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !235, file: !216, line: 119, baseType: !168, size: 32, offset: 832)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "hash_size_sum", scope: !235, file: !216, line: 122, baseType: !60, size: 32, offset: 864)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "sons_count", scope: !235, file: !216, line: 125, baseType: !60, size: 32, offset: 896)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !224, file: !216, line: 202, baseType: !171, size: 64, offset: 128)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "options_update", scope: !224, file: !216, line: 205, baseType: !275, size: 64, offset: 192)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{!131, !52, !190}
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_lz_options", file: !216, line: 161, baseType: !282)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !216, line: 129, size: 512, elements: !283)
!283 = !{!284, !285, !286, !287, !288, !289, !290, !291, !292}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "before_size", scope: !282, file: !216, line: 132, baseType: !101, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "dict_size", scope: !282, file: !216, line: 135, baseType: !101, size: 64, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "after_size", scope: !282, file: !216, line: 139, baseType: !101, size: 64, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "match_len_max", scope: !282, file: !216, line: 144, baseType: !101, size: 64, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "nice_len", scope: !282, file: !216, line: 148, baseType: !101, size: 64, offset: 256)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "match_finder", scope: !282, file: !216, line: 151, baseType: !78, size: 32, offset: 320)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !282, file: !216, line: 154, baseType: !60, size: 32, offset: 352)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict", scope: !282, file: !216, line: 157, baseType: !65, size: 64, offset: 384)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict_size", scope: !282, file: !216, line: 159, baseType: !60, size: 32, offset: 448)
!293 = distinct !DISubprogram(name: "lzma2_encoder_init", scope: !1, file: !1, line: 312, type: !220, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !294)
!294 = !{!295, !296, !297, !298, !299}
!295 = !DILocalVariable(name: "lz", arg: 1, scope: !293, file: !1, line: 312, type: !222)
!296 = !DILocalVariable(name: "allocator", arg: 2, scope: !293, file: !1, line: 312, type: !150)
!297 = !DILocalVariable(name: "options", arg: 3, scope: !293, file: !1, line: 313, type: !278)
!298 = !DILocalVariable(name: "lz_options", arg: 4, scope: !293, file: !1, line: 313, type: !280)
!299 = !DILocalVariable(name: "ret_", scope: !300, file: !1, line: 340, type: !301)
!300 = distinct !DILexicalBlock(scope: !293, file: !1, line: 340, column: 2)
!301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!302 = !DILocation(line: 0, scope: !293)
!303 = !DILocation(line: 315, column: 14, scope: !304)
!304 = distinct !DILexicalBlock(scope: !293, file: !1, line: 315, column: 6)
!305 = !DILocation(line: 315, column: 6, scope: !293)
!306 = !DILocation(line: 318, column: 10, scope: !307)
!307 = distinct !DILexicalBlock(scope: !293, file: !1, line: 318, column: 6)
!308 = !DILocation(line: 318, column: 16, scope: !307)
!309 = !DILocation(line: 318, column: 6, scope: !293)
!310 = !DILocation(line: 319, column: 15, scope: !311)
!311 = distinct !DILexicalBlock(scope: !307, file: !1, line: 318, column: 25)
!312 = !DILocation(line: 319, column: 13, scope: !311)
!313 = !DILocation(line: 320, column: 17, scope: !314)
!314 = distinct !DILexicalBlock(scope: !311, file: !1, line: 320, column: 7)
!315 = !DILocation(line: 320, column: 7, scope: !311)
!316 = !DILocation(line: 323, column: 7, scope: !311)
!317 = !DILocation(line: 323, column: 12, scope: !311)
!318 = !DILocation(line: 324, column: 7, scope: !311)
!319 = !DILocation(line: 324, column: 11, scope: !311)
!320 = !DILocation(line: 325, column: 7, scope: !311)
!321 = !DILocation(line: 325, column: 22, scope: !311)
!322 = !DILocation(line: 327, column: 38, scope: !311)
!323 = !DILocation(line: 327, column: 43, scope: !311)
!324 = !DILocation(line: 330, column: 29, scope: !293)
!325 = !DILocation(line: 328, column: 2, scope: !311)
!326 = !DILocation(line: 330, column: 37, scope: !293)
!327 = !DILocation(line: 330, column: 47, scope: !293)
!328 = !DILocation(line: 332, column: 29, scope: !293)
!329 = !DILocation(line: 332, column: 46, scope: !293)
!330 = !DILocation(line: 333, column: 29, scope: !293)
!331 = !DILocation(line: 333, column: 37, scope: !293)
!332 = !DILocation(line: 333, column: 53, scope: !293)
!333 = !DILocation(line: 334, column: 29, scope: !293)
!334 = !DILocation(line: 334, column: 37, scope: !293)
!335 = !DILocation(line: 334, column: 54, scope: !293)
!336 = !DILocation(line: 336, column: 33, scope: !293)
!337 = !DILocation(line: 336, column: 49, scope: !293)
!338 = !DILocation(line: 336, column: 61, scope: !293)
!339 = !DILocation(line: 337, column: 4, scope: !293)
!340 = !DILocation(line: 337, column: 50, scope: !293)
!341 = !DILocation(line: 337, column: 67, scope: !293)
!342 = !DILocation(line: 336, column: 4, scope: !293)
!343 = !DILocation(line: 335, column: 37, scope: !293)
!344 = !DILocation(line: 340, column: 2, scope: !300)
!345 = !DILocation(line: 0, scope: !300)
!346 = !DILocation(line: 340, column: 2, scope: !347)
!347 = distinct !DILexicalBlock(scope: !300, file: !1, line: 340, column: 2)
!348 = !DILocation(line: 348, column: 18, scope: !349)
!349 = distinct !DILexicalBlock(scope: !293, file: !1, line: 348, column: 6)
!350 = !DILocation(line: 348, column: 44, scope: !349)
!351 = !DILocation(line: 348, column: 30, scope: !349)
!352 = !DILocation(line: 348, column: 54, scope: !349)
!353 = !DILocation(line: 348, column: 6, scope: !293)
!354 = !DILocation(line: 350, column: 23, scope: !349)
!355 = !DILocation(line: 350, column: 5, scope: !349)
!356 = !DILocation(line: 349, column: 3, scope: !349)
!357 = !DILocation(line: 353, column: 1, scope: !293)
!358 = distinct !DISubprogram(name: "lzma_lzma2_encoder_memusage", scope: !1, file: !1, line: 366, type: !359, scopeLine: 367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !361)
!359 = !DISubroutineType(types: !360)
!360 = !{!140, !278}
!361 = !{!362, !363}
!362 = !DILocalVariable(name: "options", arg: 1, scope: !358, file: !1, line: 366, type: !278)
!363 = !DILocalVariable(name: "lzma_mem", scope: !358, file: !1, line: 368, type: !364)
!364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !140)
!365 = !DILocation(line: 0, scope: !358)
!366 = !DILocation(line: 368, column: 28, scope: !358)
!367 = !DILocation(line: 369, column: 15, scope: !368)
!368 = distinct !DILexicalBlock(scope: !358, file: !1, line: 369, column: 6)
!369 = !DILocation(line: 369, column: 6, scope: !358)
!370 = !DILocation(line: 373, column: 1, scope: !358)
!371 = !DISubprogram(name: "lzma_lzma_encoder_memusage", scope: !372, file: !372, line: 24, type: !359, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!372 = !DIFile(filename: "liblzma/lzma/lzma_encoder.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "f040cedafb3694586d90cdd6536f6965")
!373 = distinct !DISubprogram(name: "lzma_lzma2_props_encode", scope: !1, file: !1, line: 377, type: !374, scopeLine: 378, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !376)
!374 = !DISubroutineType(types: !375)
!375 = !{!131, !278, !167}
!376 = !{!377, !378, !379, !381}
!377 = !DILocalVariable(name: "options", arg: 1, scope: !373, file: !1, line: 377, type: !278)
!378 = !DILocalVariable(name: "out", arg: 2, scope: !373, file: !1, line: 377, type: !167)
!379 = !DILocalVariable(name: "opt", scope: !373, file: !1, line: 379, type: !380)
!380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!381 = !DILocalVariable(name: "d", scope: !373, file: !1, line: 380, type: !60)
!382 = !DILocation(line: 0, scope: !373)
!383 = !DILocation(line: 380, column: 15, scope: !373)
!384 = !DILocation(line: 385, column: 9, scope: !373)
!385 = !DILocation(line: 385, column: 4, scope: !373)
!386 = !DILocation(line: 386, column: 9, scope: !373)
!387 = !DILocation(line: 386, column: 4, scope: !373)
!388 = !DILocation(line: 387, column: 9, scope: !373)
!389 = !DILocation(line: 387, column: 4, scope: !373)
!390 = !DILocation(line: 388, column: 9, scope: !373)
!391 = !DILocation(line: 388, column: 4, scope: !373)
!392 = !DILocation(line: 389, column: 9, scope: !373)
!393 = !DILocation(line: 389, column: 4, scope: !373)
!394 = !DILocation(line: 392, column: 8, scope: !395)
!395 = distinct !DILexicalBlock(scope: !373, file: !1, line: 392, column: 6)
!396 = !DILocation(line: 392, column: 6, scope: !373)
!397 = !DILocation(line: 395, column: 27, scope: !395)
!398 = !DILocalVariable(name: "pos", arg: 1, scope: !399, file: !400, line: 108, type: !60)
!399 = distinct !DISubprogram(name: "get_pos_slot", scope: !400, file: !400, line: 108, type: !401, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !403)
!400 = !DIFile(filename: "liblzma/lzma/fastpos.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "cbaa9cd9040be4a8dee21ea4da47c8df")
!401 = !DISubroutineType(types: !402)
!402 = !{!60, !60}
!403 = !{!398}
!404 = !DILocation(line: 0, scope: !399, inlinedAt: !405)
!405 = distinct !DILocation(line: 395, column: 12, scope: !395)
!406 = !DILocation(line: 112, column: 10, scope: !407, inlinedAt: !405)
!407 = distinct !DILexicalBlock(scope: !399, file: !400, line: 112, column: 6)
!408 = !DILocation(line: 112, column: 6, scope: !399, inlinedAt: !405)
!409 = !DILocation(line: 113, column: 10, scope: !407, inlinedAt: !405)
!410 = !DILocation(line: 113, column: 3, scope: !407, inlinedAt: !405)
!411 = !DILocation(line: 115, column: 10, scope: !412, inlinedAt: !405)
!412 = distinct !DILexicalBlock(scope: !399, file: !400, line: 115, column: 6)
!413 = !DILocation(line: 115, column: 6, scope: !399, inlinedAt: !405)
!414 = !DILocation(line: 116, column: 10, scope: !412, inlinedAt: !405)
!415 = !DILocation(line: 116, column: 3, scope: !412, inlinedAt: !405)
!416 = !DILocation(line: 118, column: 9, scope: !399, inlinedAt: !405)
!417 = !DILocation(line: 118, column: 2, scope: !399, inlinedAt: !405)
!418 = !DILocation(line: 395, column: 12, scope: !395)
!419 = !DILocation(line: 0, scope: !395)
!420 = !DILocation(line: 397, column: 2, scope: !373)
!421 = !DISubprogram(name: "lzma_alloc", scope: !54, file: !54, line: 211, type: !422, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!422 = !DISubroutineType(types: !423)
!423 = !{!94, !101, !150}
!424 = distinct !DISubprogram(name: "lzma2_encode", scope: !1, file: !1, line: 138, type: !425, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !427)
!425 = !DISubroutineType(types: !426)
!426 = !{!131, !52, !232, !166, !164, !101}
!427 = !{!428, !429, !430, !431, !432, !433, !435, !439, !442, !443, !444}
!428 = !DILocalVariable(name: "pcoder", arg: 1, scope: !424, file: !1, line: 138, type: !52)
!429 = !DILocalVariable(name: "mf", arg: 2, scope: !424, file: !1, line: 138, type: !232)
!430 = !DILocalVariable(name: "out", arg: 3, scope: !424, file: !1, line: 139, type: !166)
!431 = !DILocalVariable(name: "out_pos", arg: 4, scope: !424, file: !1, line: 139, type: !164)
!432 = !DILocalVariable(name: "out_size", arg: 5, scope: !424, file: !1, line: 140, type: !101)
!433 = !DILocalVariable(name: "coder", scope: !424, file: !1, line: 142, type: !434)
!434 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !117)
!435 = !DILocalVariable(name: "ret_", scope: !436, file: !1, line: 158, type: !301)
!436 = distinct !DILexicalBlock(scope: !437, file: !1, line: 158, column: 4)
!437 = distinct !DILexicalBlock(scope: !438, file: !1, line: 157, column: 7)
!438 = distinct !DILexicalBlock(scope: !424, file: !1, line: 144, column: 27)
!439 = !DILocalVariable(name: "left", scope: !440, file: !1, line: 170, type: !441)
!440 = distinct !DILexicalBlock(scope: !438, file: !1, line: 167, column: 24)
!441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!442 = !DILocalVariable(name: "limit", scope: !440, file: !1, line: 172, type: !60)
!443 = !DILocalVariable(name: "read_start", scope: !440, file: !1, line: 188, type: !441)
!444 = !DILocalVariable(name: "ret", scope: !440, file: !1, line: 191, type: !301)
!445 = !DILocation(line: 0, scope: !424)
!446 = !DILocation(line: 143, column: 9, scope: !424)
!447 = !DILocation(line: 143, column: 18, scope: !424)
!448 = !DILocation(line: 143, column: 2, scope: !424)
!449 = !DILocation(line: 144, column: 17, scope: !424)
!450 = !DILocation(line: 144, column: 2, scope: !424)
!451 = !DILocation(line: 232, column: 12, scope: !438)
!452 = !DILocation(line: 171, column: 14, scope: !440)
!453 = !DILocalVariable(name: "mf", arg: 1, scope: !454, file: !216, line: 239, type: !457)
!454 = distinct !DISubprogram(name: "mf_unencoded", scope: !216, file: !216, line: 239, type: !455, scopeLine: 240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !459)
!455 = !DISubroutineType(types: !456)
!456 = !{!60, !457}
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !234)
!459 = !{!453}
!460 = !DILocation(line: 0, scope: !454, inlinedAt: !461)
!461 = distinct !DILocation(line: 148, column: 7, scope: !462)
!462 = distinct !DILexicalBlock(scope: !438, file: !1, line: 148, column: 7)
!463 = !DILocation(line: 241, column: 13, scope: !454, inlinedAt: !461)
!464 = !DILocation(line: 241, column: 29, scope: !454, inlinedAt: !461)
!465 = !DILocation(line: 241, column: 23, scope: !454, inlinedAt: !461)
!466 = !DILocation(line: 241, column: 44, scope: !454, inlinedAt: !461)
!467 = !DILocation(line: 148, column: 24, scope: !462)
!468 = !DILocation(line: 148, column: 7, scope: !438)
!469 = !DILocation(line: 150, column: 12, scope: !470)
!470 = distinct !DILexicalBlock(scope: !471, file: !1, line: 150, column: 8)
!471 = distinct !DILexicalBlock(scope: !462, file: !1, line: 148, column: 30)
!472 = !DILocation(line: 150, column: 19, scope: !470)
!473 = !DILocation(line: 150, column: 8, scope: !471)
!474 = !DILocation(line: 151, column: 19, scope: !470)
!475 = !DILocation(line: 151, column: 5, scope: !470)
!476 = !DILocation(line: 151, column: 23, scope: !470)
!477 = !DILocation(line: 153, column: 22, scope: !471)
!478 = !DILocation(line: 153, column: 11, scope: !471)
!479 = !DILocation(line: 153, column: 4, scope: !471)
!480 = !DILocation(line: 157, column: 14, scope: !437)
!481 = !{i8 0, i8 2}
!482 = !{}
!483 = !DILocation(line: 157, column: 7, scope: !438)
!484 = !DILocation(line: 158, column: 4, scope: !436)
!485 = !DILocation(line: 0, scope: !436)
!486 = !DILocation(line: 158, column: 4, scope: !487)
!487 = distinct !DILexicalBlock(scope: !436, file: !1, line: 158, column: 4)
!488 = !DILocation(line: 162, column: 26, scope: !438)
!489 = !DILocation(line: 163, column: 19, scope: !438)
!490 = !DILocation(line: 163, column: 3, scope: !438)
!491 = !DILocation(line: 170, column: 25, scope: !440)
!492 = !DILocation(line: 0, scope: !440)
!493 = !DILocation(line: 174, column: 18, scope: !494)
!494 = distinct !DILexicalBlock(scope: !440, file: !1, line: 174, column: 7)
!495 = !DILocation(line: 174, column: 12, scope: !494)
!496 = !DILocation(line: 188, column: 35, scope: !440)
!497 = !DILocation(line: 188, column: 50, scope: !440)
!498 = !DILocation(line: 174, column: 7, scope: !440)
!499 = !DILocation(line: 191, column: 48, scope: !440)
!500 = !DILocation(line: 191, column: 24, scope: !440)
!501 = !DILocation(line: 196, column: 35, scope: !440)
!502 = !DILocation(line: 196, column: 50, scope: !440)
!503 = !DILocation(line: 197, column: 5, scope: !440)
!504 = !DILocation(line: 196, column: 31, scope: !440)
!505 = !DILocation(line: 196, column: 28, scope: !440)
!506 = !DILocation(line: 202, column: 11, scope: !507)
!507 = distinct !DILexicalBlock(scope: !440, file: !1, line: 202, column: 7)
!508 = !DILocation(line: 202, column: 7, scope: !440)
!509 = !DILocation(line: 208, column: 14, scope: !510)
!510 = distinct !DILexicalBlock(scope: !440, file: !1, line: 208, column: 7)
!511 = !DILocation(line: 208, column: 30, scope: !510)
!512 = !DILocation(line: 208, column: 7, scope: !440)
!513 = !DILocalVariable(name: "pcoder", arg: 1, scope: !514, file: !1, line: 55, type: !52)
!514 = distinct !DISubprogram(name: "lzma2_header_lzma", scope: !1, file: !1, line: 55, type: !515, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !517)
!515 = !DISubroutineType(types: !516)
!516 = !{null, !52}
!517 = !{!513, !518, !519, !520}
!518 = !DILocalVariable(name: "coder", scope: !514, file: !1, line: 57, type: !117)
!519 = !DILocalVariable(name: "pos", scope: !514, file: !1, line: 63, type: !101)
!520 = !DILocalVariable(name: "size", scope: !514, file: !1, line: 85, type: !101)
!521 = !DILocation(line: 0, scope: !514, inlinedAt: !522)
!522 = distinct !DILocation(line: 221, column: 3, scope: !440)
!523 = !DILocation(line: 65, column: 13, scope: !524, inlinedAt: !522)
!524 = distinct !DILexicalBlock(scope: !514, file: !1, line: 65, column: 6)
!525 = !DILocation(line: 65, column: 6, scope: !514, inlinedAt: !522)
!526 = !DILocation(line: 68, column: 14, scope: !527, inlinedAt: !522)
!527 = distinct !DILexicalBlock(scope: !528, file: !1, line: 68, column: 7)
!528 = distinct !DILexicalBlock(scope: !524, file: !1, line: 65, column: 30)
!529 = !DILocation(line: 68, column: 7, scope: !528, inlinedAt: !522)
!530 = !DILocation(line: 69, column: 20, scope: !527, inlinedAt: !522)
!531 = !DILocation(line: 69, column: 4, scope: !527, inlinedAt: !522)
!532 = !DILocation(line: 71, column: 20, scope: !527, inlinedAt: !522)
!533 = !DILocation(line: 75, column: 14, scope: !534, inlinedAt: !522)
!534 = distinct !DILexicalBlock(scope: !535, file: !1, line: 75, column: 7)
!535 = distinct !DILexicalBlock(scope: !524, file: !1, line: 72, column: 9)
!536 = !DILocation(line: 75, column: 7, scope: !535, inlinedAt: !522)
!537 = !DILocation(line: 76, column: 20, scope: !534, inlinedAt: !522)
!538 = !DILocation(line: 76, column: 4, scope: !534, inlinedAt: !522)
!539 = !DILocation(line: 78, column: 20, scope: !534, inlinedAt: !522)
!540 = !DILocation(line: 0, scope: !524, inlinedAt: !522)
!541 = !DILocation(line: 82, column: 17, scope: !514, inlinedAt: !522)
!542 = !DILocation(line: 85, column: 41, scope: !514, inlinedAt: !522)
!543 = !DILocation(line: 86, column: 28, scope: !514, inlinedAt: !522)
!544 = !DILocation(line: 86, column: 16, scope: !514, inlinedAt: !522)
!545 = !DILocation(line: 86, column: 2, scope: !514, inlinedAt: !522)
!546 = !DILocation(line: 86, column: 20, scope: !514, inlinedAt: !522)
!547 = !DILocation(line: 87, column: 28, scope: !514, inlinedAt: !522)
!548 = !DILocation(line: 87, column: 22, scope: !514, inlinedAt: !522)
!549 = !DILocation(line: 87, column: 16, scope: !514, inlinedAt: !522)
!550 = !DILocation(line: 87, column: 2, scope: !514, inlinedAt: !522)
!551 = !DILocation(line: 87, column: 20, scope: !514, inlinedAt: !522)
!552 = !DILocation(line: 88, column: 22, scope: !514, inlinedAt: !522)
!553 = !DILocation(line: 88, column: 16, scope: !514, inlinedAt: !522)
!554 = !DILocation(line: 88, column: 2, scope: !514, inlinedAt: !522)
!555 = !DILocation(line: 88, column: 20, scope: !514, inlinedAt: !522)
!556 = !DILocation(line: 91, column: 32, scope: !514, inlinedAt: !522)
!557 = !DILocation(line: 92, column: 27, scope: !514, inlinedAt: !522)
!558 = !DILocation(line: 92, column: 22, scope: !514, inlinedAt: !522)
!559 = !DILocation(line: 92, column: 16, scope: !514, inlinedAt: !522)
!560 = !DILocation(line: 92, column: 2, scope: !514, inlinedAt: !522)
!561 = !DILocation(line: 92, column: 20, scope: !514, inlinedAt: !522)
!562 = !DILocation(line: 93, column: 22, scope: !514, inlinedAt: !522)
!563 = !DILocation(line: 93, column: 2, scope: !514, inlinedAt: !522)
!564 = !DILocation(line: 93, column: 20, scope: !514, inlinedAt: !522)
!565 = !DILocation(line: 96, column: 6, scope: !514, inlinedAt: !522)
!566 = !DILocation(line: 97, column: 55, scope: !567, inlinedAt: !522)
!567 = distinct !DILexicalBlock(scope: !514, file: !1, line: 96, column: 6)
!568 = !DILocation(line: 97, column: 3, scope: !567, inlinedAt: !522)
!569 = !DILocation(line: 105, column: 25, scope: !514, inlinedAt: !522)
!570 = !DILocation(line: 99, column: 25, scope: !514, inlinedAt: !522)
!571 = !DILocation(line: 100, column: 26, scope: !514, inlinedAt: !522)
!572 = !DILocation(line: 101, column: 31, scope: !514, inlinedAt: !522)
!573 = !DILocation(line: 223, column: 19, scope: !440)
!574 = !DILocation(line: 209, column: 32, scope: !575)
!575 = distinct !DILexicalBlock(scope: !510, file: !1, line: 208, column: 59)
!576 = !DILocation(line: 209, column: 29, scope: !575)
!577 = !DILocation(line: 212, column: 19, scope: !575)
!578 = !DILocalVariable(name: "pcoder", arg: 1, scope: !579, file: !1, line: 112, type: !52)
!579 = distinct !DISubprogram(name: "lzma2_header_uncompressed", scope: !1, file: !1, line: 112, type: !515, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !580)
!580 = !{!578, !581}
!581 = !DILocalVariable(name: "coder", scope: !579, file: !1, line: 114, type: !117)
!582 = !DILocation(line: 0, scope: !579, inlinedAt: !583)
!583 = distinct !DILocation(line: 213, column: 4, scope: !575)
!584 = !DILocation(line: 120, column: 13, scope: !585, inlinedAt: !583)
!585 = distinct !DILexicalBlock(scope: !579, file: !1, line: 120, column: 6)
!586 = !DILocation(line: 120, column: 6, scope: !579, inlinedAt: !583)
!587 = !DILocation(line: 0, scope: !585, inlinedAt: !583)
!588 = !DILocation(line: 125, column: 31, scope: !579, inlinedAt: !583)
!589 = !DILocation(line: 128, column: 44, scope: !579, inlinedAt: !583)
!590 = !DILocation(line: 128, column: 49, scope: !579, inlinedAt: !583)
!591 = !DILocation(line: 128, column: 18, scope: !579, inlinedAt: !583)
!592 = !DILocation(line: 128, column: 16, scope: !579, inlinedAt: !583)
!593 = !DILocation(line: 129, column: 18, scope: !579, inlinedAt: !583)
!594 = !DILocation(line: 129, column: 16, scope: !579, inlinedAt: !583)
!595 = !DILocation(line: 132, column: 17, scope: !579, inlinedAt: !583)
!596 = !DILocation(line: 214, column: 28, scope: !575)
!597 = !DILocation(line: 231, column: 3, scope: !438)
!598 = !DILocation(line: 234, column: 14, scope: !599)
!599 = distinct !DILexicalBlock(scope: !438, file: !1, line: 234, column: 7)
!600 = !DILocation(line: 234, column: 32, scope: !599)
!601 = !DILocation(line: 234, column: 22, scope: !599)
!602 = !DILocation(line: 234, column: 7, scope: !438)
!603 = !DILocation(line: 242, column: 3, scope: !438)
!604 = !DILocation(line: 245, column: 14, scope: !605)
!605 = distinct !DILexicalBlock(scope: !438, file: !1, line: 245, column: 7)
!606 = !DILocation(line: 245, column: 22, scope: !605)
!607 = !DILocation(line: 245, column: 7, scope: !438)
!608 = !DILocation(line: 248, column: 19, scope: !438)
!609 = !DILocation(line: 283, column: 38, scope: !610, inlinedAt: !622)
!610 = distinct !DISubprogram(name: "mf_read", scope: !216, file: !216, line: 280, type: !611, scopeLine: 282, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !613)
!611 = !DISubroutineType(types: !612)
!612 = !{null, !233, !167, !165, !101, !165}
!613 = !{!614, !615, !616, !617, !618, !619, !621}
!614 = !DILocalVariable(name: "mf", arg: 1, scope: !610, file: !216, line: 280, type: !233)
!615 = !DILocalVariable(name: "out", arg: 2, scope: !610, file: !216, line: 280, type: !167)
!616 = !DILocalVariable(name: "out_pos", arg: 3, scope: !610, file: !216, line: 280, type: !165)
!617 = !DILocalVariable(name: "out_size", arg: 4, scope: !610, file: !216, line: 280, type: !101)
!618 = !DILocalVariable(name: "left", arg: 5, scope: !610, file: !216, line: 281, type: !165)
!619 = !DILocalVariable(name: "out_avail", scope: !610, file: !216, line: 283, type: !620)
!620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!621 = !DILocalVariable(name: "copy_size", scope: !610, file: !216, line: 284, type: !620)
!622 = distinct !DILocation(line: 255, column: 3, scope: !438)
!623 = !DILocation(line: 248, column: 3, scope: !438)
!624 = !DILocation(line: 255, column: 3, scope: !438)
!625 = !DILocation(line: 0, scope: !610, inlinedAt: !622)
!626 = !DILocation(line: 283, column: 36, scope: !610, inlinedAt: !622)
!627 = !DILocation(line: 284, column: 27, scope: !610, inlinedAt: !622)
!628 = !DILocation(line: 289, column: 13, scope: !610, inlinedAt: !622)
!629 = !DILocation(line: 289, column: 36, scope: !610, inlinedAt: !622)
!630 = !DILocation(line: 289, column: 51, scope: !610, inlinedAt: !622)
!631 = !DILocation(line: 289, column: 2, scope: !610, inlinedAt: !622)
!632 = !DILocation(line: 292, column: 11, scope: !610, inlinedAt: !622)
!633 = !DILocation(line: 293, column: 8, scope: !610, inlinedAt: !622)
!634 = !DILocation(line: 256, column: 32, scope: !635)
!635 = distinct !DILexicalBlock(scope: !438, file: !1, line: 256, column: 7)
!636 = !DILocation(line: 256, column: 7, scope: !438)
!637 = !DILocation(line: 0, scope: !438)
!638 = distinct !{!638, !448, !639}
!639 = !DILocation(line: 261, column: 2, scope: !424)
!640 = !DILocation(line: 264, column: 1, scope: !424)
!641 = distinct !DISubprogram(name: "lzma2_encoder_end", scope: !1, file: !1, line: 268, type: !172, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !642)
!642 = !{!643, !644, !645}
!643 = !DILocalVariable(name: "pcoder", arg: 1, scope: !641, file: !1, line: 268, type: !52)
!644 = !DILocalVariable(name: "allocator", arg: 2, scope: !641, file: !1, line: 268, type: !150)
!645 = !DILocalVariable(name: "coder", scope: !641, file: !1, line: 270, type: !117)
!646 = !DILocation(line: 0, scope: !641)
!647 = !DILocation(line: 271, column: 19, scope: !641)
!648 = !DILocation(line: 271, column: 2, scope: !641)
!649 = !DILocation(line: 272, column: 2, scope: !641)
!650 = !DILocation(line: 274, column: 1, scope: !641)
!651 = distinct !DISubprogram(name: "lzma2_encoder_options_update", scope: !1, file: !1, line: 278, type: !276, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !652)
!652 = !{!653, !654, !655, !656}
!653 = !DILocalVariable(name: "pcoder", arg: 1, scope: !651, file: !1, line: 278, type: !52)
!654 = !DILocalVariable(name: "filter", arg: 2, scope: !651, file: !1, line: 278, type: !190)
!655 = !DILocalVariable(name: "coder", scope: !651, file: !1, line: 280, type: !117)
!656 = !DILocalVariable(name: "opt", scope: !651, file: !1, line: 289, type: !118)
!657 = !DILocation(line: 0, scope: !651)
!658 = !DILocation(line: 284, column: 14, scope: !659)
!659 = distinct !DILexicalBlock(scope: !651, file: !1, line: 284, column: 6)
!660 = !DILocation(line: 284, column: 22, scope: !659)
!661 = !DILocation(line: 284, column: 30, scope: !659)
!662 = !DILocation(line: 284, column: 40, scope: !659)
!663 = !DILocation(line: 284, column: 49, scope: !659)
!664 = !DILocation(line: 284, column: 6, scope: !651)
!665 = !DILocation(line: 290, column: 21, scope: !666)
!666 = distinct !DILexicalBlock(scope: !651, file: !1, line: 290, column: 6)
!667 = !DILocation(line: 290, column: 32, scope: !666)
!668 = !DILocation(line: 290, column: 24, scope: !666)
!669 = !DILocation(line: 290, column: 35, scope: !666)
!670 = !DILocation(line: 290, column: 53, scope: !666)
!671 = !DILocation(line: 290, column: 64, scope: !666)
!672 = !DILocation(line: 290, column: 56, scope: !666)
!673 = !DILocation(line: 291, column: 4, scope: !666)
!674 = !DILocation(line: 291, column: 22, scope: !666)
!675 = !DILocation(line: 291, column: 33, scope: !666)
!676 = !DILocation(line: 291, column: 25, scope: !666)
!677 = !DILocation(line: 290, column: 6, scope: !651)
!678 = !DILocation(line: 293, column: 15, scope: !679)
!679 = distinct !DILexicalBlock(scope: !680, file: !1, line: 293, column: 7)
!680 = distinct !DILexicalBlock(scope: !666, file: !1, line: 291, column: 37)
!681 = !DILocation(line: 293, column: 31, scope: !679)
!682 = !DILocation(line: 293, column: 39, scope: !679)
!683 = !DILocation(line: 293, column: 42, scope: !679)
!684 = !DILocation(line: 294, column: 5, scope: !679)
!685 = !DILocation(line: 295, column: 13, scope: !679)
!686 = !DILocation(line: 295, column: 16, scope: !679)
!687 = !DILocation(line: 293, column: 7, scope: !680)
!688 = !DILocation(line: 300, column: 21, scope: !680)
!689 = !DILocation(line: 301, column: 28, scope: !680)
!690 = !DILocation(line: 301, column: 18, scope: !680)
!691 = !DILocation(line: 301, column: 21, scope: !680)
!692 = !DILocation(line: 302, column: 28, scope: !680)
!693 = !DILocation(line: 302, column: 18, scope: !680)
!694 = !DILocation(line: 302, column: 21, scope: !680)
!695 = !DILocation(line: 303, column: 10, scope: !680)
!696 = !DILocation(line: 303, column: 26, scope: !680)
!697 = !DILocation(line: 304, column: 10, scope: !680)
!698 = !DILocation(line: 304, column: 27, scope: !680)
!699 = !DILocation(line: 305, column: 2, scope: !680)
!700 = !DILocation(line: 308, column: 1, scope: !651)
!701 = !DISubprogram(name: "lzma_lzma_encoder_create", scope: !372, file: !372, line: 37, type: !702, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!702 = !DISubroutineType(types: !703)
!703 = !{!131, !704, !150, !118, !280}
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!705 = !DISubprogram(name: "lzma_lzma_encoder_reset", scope: !372, file: !372, line: 43, type: !706, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!706 = !DISubroutineType(types: !707)
!707 = !{!131, !52, !118}
!708 = !DISubprogram(name: "lzma_lzma_encode", scope: !372, file: !372, line: 47, type: !709, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!709 = !DISubroutineType(types: !710)
!710 = !{!131, !231, !232, !166, !164, !101, !60}
!711 = !DISubprogram(name: "lzma_bufcpy", scope: !54, file: !54, line: 242, type: !712, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!712 = !DISubroutineType(types: !713)
!713 = !{!101, !163, !164, !101, !166, !164, !101}
!714 = !DISubprogram(name: "lzma_lzma_lclppb_encode", scope: !372, file: !372, line: 30, type: !715, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!715 = !DISubroutineType(types: !716)
!716 = !{!97, !118, !167}
!717 = !DISubprogram(name: "lzma_free", scope: !54, file: !54, line: 215, type: !718, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!718 = !DISubroutineType(types: !719)
!719 = !{null, !94, !150}
