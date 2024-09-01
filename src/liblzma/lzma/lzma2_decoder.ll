; ModuleID = 'liblzma/lzma/lzma2_decoder.c'
source_filename = "liblzma/lzma/lzma2_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_lzma2_decoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters) local_unnamed_addr #0 !dbg !181 {
entry:
    #dbg_value(ptr %next, !237, !DIExpression(), !240)
    #dbg_value(ptr %allocator, !238, !DIExpression(), !240)
    #dbg_value(ptr %filters, !239, !DIExpression(), !240)
  %call = tail call i32 @lzma_lz_decoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters, ptr noundef nonnull @lzma2_decoder_init) #4, !dbg !241
  ret i32 %call, !dbg !242
}

declare !dbg !243 i32 @lzma_lz_decoder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @lzma2_decoder_init(ptr nocapture noundef %lz, ptr noundef %allocator, ptr noundef %opt, ptr noundef %lz_options) #0 !dbg !257 {
entry:
    #dbg_value(ptr %lz, !259, !DIExpression(), !266)
    #dbg_value(ptr %allocator, !260, !DIExpression(), !266)
    #dbg_value(ptr %opt, !261, !DIExpression(), !266)
    #dbg_value(ptr %lz_options, !262, !DIExpression(), !266)
  %0 = load ptr, ptr %lz, align 8, !dbg !267
  %cmp = icmp eq ptr %0, null, !dbg !269
  br i1 %cmp, label %if.then, label %if.end9, !dbg !270

if.then:                                          ; preds = %entry
  %call = tail call ptr @lzma_alloc(i64 noundef 184, ptr noundef %allocator) #4, !dbg !271
  store ptr %call, ptr %lz, align 8, !dbg !273
  %cmp3 = icmp eq ptr %call, null, !dbg !274
  br i1 %cmp3, label %return, label %if.end, !dbg !276

if.end:                                           ; preds = %if.then
  %code = getelementptr inbounds i8, ptr %lz, i64 8, !dbg !277
  store ptr @lzma2_decode, ptr %code, align 8, !dbg !278
  %end = getelementptr inbounds i8, ptr %lz, i64 32, !dbg !279
  store ptr @lzma2_decoder_end, ptr %end, align 8, !dbg !280
  %lzma = getelementptr inbounds i8, ptr %call, i64 8, !dbg !281
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %lzma, i8 0, i64 40, i1 false), !dbg !282
  %.pre = load ptr, ptr %lz, align 8, !dbg !283
  br label %if.end9, !dbg !284

if.end9:                                          ; preds = %if.end, %entry
  %1 = phi ptr [ %.pre, %if.end ], [ %0, %entry ], !dbg !283
    #dbg_value(ptr %opt, !263, !DIExpression(), !266)
  store i32 0, ptr %1, align 8, !dbg !285
  %2 = load ptr, ptr %lz, align 8, !dbg !286
  %need_properties = getelementptr inbounds i8, ptr %2, i64 64, !dbg !287
  store i8 1, ptr %need_properties, align 8, !dbg !288
  %preset_dict = getelementptr inbounds i8, ptr %opt, i64 8, !dbg !289
  %3 = load ptr, ptr %preset_dict, align 8, !dbg !289
  %cmp12 = icmp eq ptr %3, null, !dbg !290
  br i1 %cmp12, label %lor.end, label %lor.rhs, !dbg !291

lor.rhs:                                          ; preds = %if.end9
  %preset_dict_size = getelementptr inbounds i8, ptr %opt, i64 16, !dbg !292
  %4 = load i32, ptr %preset_dict_size, align 8, !dbg !292
  %cmp13 = icmp eq i32 %4, 0, !dbg !293
  %5 = zext i1 %cmp13 to i8, !dbg !294
  br label %lor.end, !dbg !291

lor.end:                                          ; preds = %lor.rhs, %if.end9
  %storedv = phi i8 [ 1, %if.end9 ], [ %5, %lor.rhs ]
  %6 = load ptr, ptr %lz, align 8, !dbg !295
  %need_dictionary_reset = getelementptr inbounds i8, ptr %6, i64 65, !dbg !296
  store i8 %storedv, ptr %need_dictionary_reset, align 1, !dbg !294
  %7 = load ptr, ptr %lz, align 8, !dbg !297
  %lzma16 = getelementptr inbounds i8, ptr %7, i64 8, !dbg !298
  %call17 = tail call i32 @lzma_lzma_decoder_create(ptr noundef nonnull %lzma16, ptr noundef %allocator, ptr noundef nonnull %opt, ptr noundef %lz_options) #4, !dbg !299
  br label %return

return:                                           ; preds = %if.then, %lor.end
  %retval.0 = phi i32 [ %call17, %lor.end ], [ 5, %if.then ], !dbg !266
  ret i32 %retval.0, !dbg !300
}

; Function Attrs: nounwind uwtable
define dso_local i64 @lzma_lzma2_decoder_memusage(ptr noundef %options) local_unnamed_addr #0 !dbg !301 {
entry:
    #dbg_value(ptr %options, !305, !DIExpression(), !306)
  %call = tail call i64 @lzma_lzma_decoder_memusage_nocheck(ptr noundef %options) #4, !dbg !307
  %add = add i64 %call, 184, !dbg !308
  ret i64 %add, !dbg !309
}

declare !dbg !310 i64 @lzma_lzma_decoder_memusage_nocheck(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 9) i32 @lzma_lzma2_props_decode(ptr nocapture noundef writeonly %options, ptr noundef %allocator, ptr nocapture noundef readonly %props, i64 noundef %props_size) local_unnamed_addr #0 !dbg !312 {
entry:
    #dbg_value(ptr %options, !317, !DIExpression(), !323)
    #dbg_value(ptr %allocator, !318, !DIExpression(), !323)
    #dbg_value(ptr %props, !319, !DIExpression(), !323)
    #dbg_value(i64 %props_size, !320, !DIExpression(), !323)
  %cmp.not = icmp eq i64 %props_size, 1, !dbg !324
  br i1 %cmp.not, label %if.end, label %return, !dbg !326

if.end:                                           ; preds = %entry
  %0 = load i8, ptr %props, align 1, !dbg !327
  %cmp5 = icmp ugt i8 %0, 40
  br i1 %cmp5, label %return, label %if.end8, !dbg !329

if.end8:                                          ; preds = %if.end
  %call = tail call ptr @lzma_alloc(i64 noundef 112, ptr noundef %allocator) #4, !dbg !330
    #dbg_value(ptr %call, !321, !DIExpression(), !323)
  %cmp9 = icmp eq ptr %call, null, !dbg !331
  br i1 %cmp9, label %return, label %if.end12, !dbg !333

if.end12:                                         ; preds = %if.end8
  %1 = load i8, ptr %props, align 1, !dbg !334
  %cmp15 = icmp eq i8 %1, 40, !dbg !336
  br i1 %cmp15, label %if.end25, label %if.else, !dbg !337

if.else:                                          ; preds = %if.end12
  %2 = and i8 %1, 1, !dbg !338
  %3 = or disjoint i8 %2, 2, !dbg !340
  %or = zext nneg i8 %3 to i32, !dbg !340
  store i32 %or, ptr %call, align 8, !dbg !341
  %4 = load i8, ptr %props, align 1, !dbg !342
  %5 = lshr i8 %4, 1, !dbg !343
  %narrow = add nuw i8 %5, 11, !dbg !344
  %add = zext nneg i8 %narrow to i32, !dbg !344
  %shl = shl i32 %or, %add, !dbg !345
  br label %if.end25

if.end25:                                         ; preds = %if.end12, %if.else
  %storemerge = phi i32 [ %shl, %if.else ], [ -1, %if.end12 ], !dbg !346
  store i32 %storemerge, ptr %call, align 8, !dbg !346
  %preset_dict = getelementptr inbounds i8, ptr %call, i64 8, !dbg !347
  store ptr null, ptr %preset_dict, align 8, !dbg !348
  %preset_dict_size = getelementptr inbounds i8, ptr %call, i64 16, !dbg !349
  store i32 0, ptr %preset_dict_size, align 8, !dbg !350
  store ptr %call, ptr %options, align 8, !dbg !351
  br label %return, !dbg !352

return:                                           ; preds = %if.end25, %if.end8, %if.end, %entry
  %retval.1 = phi i32 [ 8, %entry ], [ 8, %if.end ], [ 0, %if.end25 ], [ 5, %if.end8 ], !dbg !323
  ret i32 %retval.1, !dbg !353
}

declare !dbg !354 ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @lzma2_decode(ptr noundef %pcoder, ptr noalias noundef %dict, ptr noalias noundef %in, ptr noalias noundef %in_pos, i64 noundef %in_size) #0 !dbg !357 {
entry:
    #dbg_value(ptr %pcoder, !361, !DIExpression(), !378)
    #dbg_value(ptr %dict, !362, !DIExpression(), !378)
    #dbg_value(ptr %in, !363, !DIExpression(), !378)
    #dbg_value(ptr %in_pos, !364, !DIExpression(), !378)
    #dbg_value(i64 %in_size, !365, !DIExpression(), !378)
    #dbg_value(ptr %pcoder, !366, !DIExpression(), !378)
  %compressed_size127 = getelementptr inbounds i8, ptr %pcoder, i64 56
  %pos.i = getelementptr inbounds i8, ptr %dict, i64 8
  %limit.i = getelementptr inbounds i8, ptr %dict, i64 24
  %full.i = getelementptr inbounds i8, ptr %dict, i64 16
  %lzma101 = getelementptr inbounds i8, ptr %pcoder, i64 8
  %code = getelementptr inbounds i8, ptr %pcoder, i64 16
  %options89 = getelementptr inbounds i8, ptr %pcoder, i64 72
  %reset95 = getelementptr inbounds i8, ptr %pcoder, i64 24
  %next_sequence86 = getelementptr inbounds i8, ptr %pcoder, i64 4
  %uncompressed_size64 = getelementptr inbounds i8, ptr %pcoder, i64 48
  %set_uncompressed = getelementptr inbounds i8, ptr %pcoder, i64 32
  %need_dictionary_reset10 = getelementptr inbounds i8, ptr %pcoder, i64 65
  %need_properties = getelementptr inbounds i8, ptr %pcoder, i64 64
  br label %while.cond, !dbg !379

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %0 = load i64, ptr %in_pos, align 8, !dbg !380
  %cmp = icmp ult i64 %0, %in_size, !dbg !381
  %.pr = load i32, ptr %pcoder, align 8, !dbg !378
  br i1 %cmp, label %while.body, label %lor.rhs, !dbg !382

lor.rhs:                                          ; preds = %while.cond
  %cmp1 = icmp eq i32 %.pr, 6, !dbg !383
  br i1 %cmp1, label %sw.bb100, label %cleanup134, !dbg !379

while.body:                                       ; preds = %while.cond
  switch i32 %.pr, label %cleanup134 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb50
    i32 2, label %sw.bb58
    i32 3, label %sw.bb71
    i32 4, label %sw.bb78
    i32 5, label %sw.bb88
    i32 6, label %sw.bb100
    i32 7, label %sw.bb126
  ], !dbg !384

sw.bb:                                            ; preds = %while.body
  %arrayidx = getelementptr inbounds i8, ptr %in, i64 %0, !dbg !385
  %1 = load i8, ptr %arrayidx, align 1, !dbg !385
  %conv = zext i8 %1 to i64, !dbg !385
    #dbg_value(i8 %1, !368, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !386)
  %inc = add nuw i64 %0, 1, !dbg !387
  store i64 %inc, ptr %in_pos, align 8, !dbg !387
  %cmp3 = icmp eq i8 %1, 0, !dbg !388
  br i1 %cmp3, label %cleanup134, label %if.end, !dbg !390

if.end:                                           ; preds = %sw.bb
  %cmp5 = icmp ugt i8 %1, -33, !dbg !391
  %cmp7 = icmp eq i8 %1, 1
  %or.cond = or i1 %cmp5, %cmp7, !dbg !393
  br i1 %or.cond, label %if.then9, label %if.else, !dbg !393

if.then9:                                         ; preds = %if.end
  store i8 1, ptr %need_properties, align 8, !dbg !394
  store i8 1, ptr %need_dictionary_reset10, align 1, !dbg !396
  br label %if.end13, !dbg !397

if.else:                                          ; preds = %if.end
  %2 = load i8, ptr %need_dictionary_reset10, align 1, !dbg !398, !range !400, !noundef !401
  %loadedv = trunc nuw i8 %2 to i1, !dbg !398
  br i1 %loadedv, label %cleanup134, label %if.end13, !dbg !402

if.end13:                                         ; preds = %if.else, %if.then9
  %3 = phi i8 [ %2, %if.else ], [ 1, %if.then9 ]
  %cmp14 = icmp slt i8 %1, 0, !dbg !403
  br i1 %cmp14, label %if.then16, label %if.else37, !dbg !405

if.then16:                                        ; preds = %if.end13
  %and = shl nuw nsw i64 %conv, 16, !dbg !406
  %shl = and i64 %and, 2031616, !dbg !406
  store i64 %shl, ptr %uncompressed_size64, align 8, !dbg !408
  store i32 1, ptr %pcoder, align 8, !dbg !409
  %cmp19 = icmp ugt i8 %1, -65, !dbg !410
  br i1 %cmp19, label %if.then21, label %if.else23, !dbg !412

if.then21:                                        ; preds = %if.then16
  store i8 0, ptr %need_properties, align 8, !dbg !413
  store i32 5, ptr %next_sequence86, align 4, !dbg !415
  br label %if.end44, !dbg !416

if.else23:                                        ; preds = %if.then16
  %4 = load i8, ptr %need_properties, align 8, !dbg !417, !range !400, !noundef !401
  %loadedv25 = trunc nuw i8 %4 to i1, !dbg !417
  br i1 %loadedv25, label %cleanup134, label %if.else27, !dbg !419

if.else27:                                        ; preds = %if.else23
  store i32 6, ptr %next_sequence86, align 4, !dbg !420
  %cmp29 = icmp ugt i8 %1, -97, !dbg !422
  br i1 %cmp29, label %if.then31, label %if.end44, !dbg !424

if.then31:                                        ; preds = %if.else27
  %5 = load ptr, ptr %reset95, align 8, !dbg !425
  %6 = load ptr, ptr %lzma101, align 8, !dbg !426
  tail call void %5(ptr noundef %6, ptr noundef nonnull %options89) #4, !dbg !427
  %.pre = load i8, ptr %need_dictionary_reset10, align 1, !dbg !428, !range !400
  br label %if.end44, !dbg !427

if.else37:                                        ; preds = %if.end13
  %cmp38 = icmp ugt i8 %1, 2, !dbg !430
  br i1 %cmp38, label %cleanup134, label %if.end41, !dbg !433

if.end41:                                         ; preds = %if.else37
  store i32 3, ptr %pcoder, align 8, !dbg !434
  store i32 7, ptr %next_sequence86, align 4, !dbg !435
  br label %if.end44

if.end44:                                         ; preds = %if.then21, %if.else27, %if.then31, %if.end41
  %7 = phi i8 [ %3, %if.then21 ], [ %3, %if.else27 ], [ %.pre, %if.then31 ], [ %3, %if.end41 ], !dbg !428
  %loadedv46 = trunc nuw i8 %7 to i1, !dbg !428
  br i1 %loadedv46, label %if.then47, label %while.cond.backedge, !dbg !436

if.then47:                                        ; preds = %if.end44
  store i8 0, ptr %need_dictionary_reset10, align 1, !dbg !437
    #dbg_value(ptr %dict, !439, !DIExpression(), !444)
  %need_reset.i = getelementptr inbounds i8, ptr %dict, i64 40, !dbg !446
  store i8 1, ptr %need_reset.i, align 8, !dbg !447
  br label %cleanup134, !dbg !448

sw.bb50:                                          ; preds = %while.body
  %inc51 = add nuw i64 %0, 1, !dbg !449
  store i64 %inc51, ptr %in_pos, align 8, !dbg !449
  %arrayidx52 = getelementptr inbounds i8, ptr %in, i64 %0, !dbg !450
  %8 = load i8, ptr %arrayidx52, align 1, !dbg !450
  %conv53 = zext i8 %8 to i64, !dbg !451
  %shl54 = shl nuw nsw i64 %conv53, 8, !dbg !452
  %9 = load i64, ptr %uncompressed_size64, align 8, !dbg !453
  %add = add i64 %shl54, %9, !dbg !453
  store i64 %add, ptr %uncompressed_size64, align 8, !dbg !453
  store i32 2, ptr %pcoder, align 8, !dbg !454
  br label %while.cond.backedge, !dbg !455

sw.bb58:                                          ; preds = %while.body
  %inc59 = add nuw i64 %0, 1, !dbg !456
  store i64 %inc59, ptr %in_pos, align 8, !dbg !456
  %arrayidx60 = getelementptr inbounds i8, ptr %in, i64 %0, !dbg !457
  %10 = load i8, ptr %arrayidx60, align 1, !dbg !457
  %conv61 = zext i8 %10 to i64, !dbg !457
  %add62 = add nuw nsw i64 %conv61, 1, !dbg !458
  %11 = load i64, ptr %uncompressed_size64, align 8, !dbg !459
  %add65 = add i64 %add62, %11, !dbg !459
  store i64 %add65, ptr %uncompressed_size64, align 8, !dbg !459
  store i32 3, ptr %pcoder, align 8, !dbg !460
  %12 = load ptr, ptr %set_uncompressed, align 8, !dbg !461
  %13 = load ptr, ptr %lzma101, align 8, !dbg !462
  tail call void %12(ptr noundef %13, i64 noundef %add65) #4, !dbg !463
  br label %while.cond.backedge, !dbg !464

sw.bb71:                                          ; preds = %while.body
  %inc72 = add nuw i64 %0, 1, !dbg !465
  store i64 %inc72, ptr %in_pos, align 8, !dbg !465
  %arrayidx73 = getelementptr inbounds i8, ptr %in, i64 %0, !dbg !466
  %14 = load i8, ptr %arrayidx73, align 1, !dbg !466
  %conv74 = zext i8 %14 to i64, !dbg !467
  %shl75 = shl nuw nsw i64 %conv74, 8, !dbg !468
  store i64 %shl75, ptr %compressed_size127, align 8, !dbg !469
  store i32 4, ptr %pcoder, align 8, !dbg !470
  br label %while.cond.backedge, !dbg !471

sw.bb78:                                          ; preds = %while.body
  %inc79 = add nuw i64 %0, 1, !dbg !472
  store i64 %inc79, ptr %in_pos, align 8, !dbg !472
  %arrayidx80 = getelementptr inbounds i8, ptr %in, i64 %0, !dbg !473
  %15 = load i8, ptr %arrayidx80, align 1, !dbg !473
  %conv81 = zext i8 %15 to i64, !dbg !473
  %add82 = add nuw nsw i64 %conv81, 1, !dbg !474
  %16 = load i64, ptr %compressed_size127, align 8, !dbg !475
  %add85 = add i64 %add82, %16, !dbg !475
  store i64 %add85, ptr %compressed_size127, align 8, !dbg !475
  %17 = load i32, ptr %next_sequence86, align 4, !dbg !476
  store i32 %17, ptr %pcoder, align 8, !dbg !477
  br label %while.cond.backedge, !dbg !478

sw.bb88:                                          ; preds = %while.body
  %inc90 = add nuw i64 %0, 1, !dbg !479
  store i64 %inc90, ptr %in_pos, align 8, !dbg !479
  %arrayidx91 = getelementptr inbounds i8, ptr %in, i64 %0, !dbg !481
  %18 = load i8, ptr %arrayidx91, align 1, !dbg !481
  %call = tail call zeroext i1 @lzma_lzma_lclppb_decode(ptr noundef nonnull %options89, i8 noundef zeroext %18) #4, !dbg !482
  br i1 %call, label %cleanup134, label %if.end93, !dbg !483

if.end93:                                         ; preds = %sw.bb88
  %19 = load ptr, ptr %reset95, align 8, !dbg !484
  %20 = load ptr, ptr %lzma101, align 8, !dbg !485
  tail call void %19(ptr noundef %20, ptr noundef nonnull %options89) #4, !dbg !486
  store i32 6, ptr %pcoder, align 8, !dbg !487
  br label %while.cond.backedge, !dbg !488

sw.bb100:                                         ; preds = %lor.rhs, %while.body
    #dbg_value(i64 %0, !372, !DIExpression(), !489)
  %21 = load ptr, ptr %code, align 8, !dbg !490
  %22 = load ptr, ptr %lzma101, align 8, !dbg !491
  %call104 = tail call i32 %21(ptr noundef %22, ptr noundef %dict, ptr noundef %in, ptr noundef nonnull %in_pos, i64 noundef %in_size) #4, !dbg !492
    #dbg_value(i32 %call104, !375, !DIExpression(), !489)
  %23 = load i64, ptr %in_pos, align 8, !dbg !493
  %sub = sub i64 %23, %0, !dbg !494
    #dbg_value(i64 %sub, !377, !DIExpression(), !489)
  %24 = load i64, ptr %compressed_size127, align 8, !dbg !495
  %cmp106 = icmp ugt i64 %sub, %24, !dbg !497
  br i1 %cmp106, label %cleanup134, label %if.end109, !dbg !498

if.end109:                                        ; preds = %sw.bb100
  %sub111 = sub i64 %24, %sub, !dbg !499
  store i64 %sub111, ptr %compressed_size127, align 8, !dbg !499
  %cmp112.not = icmp eq i32 %call104, 1, !dbg !500
  br i1 %cmp112.not, label %if.end115, label %cleanup134, !dbg !502

if.end115:                                        ; preds = %if.end109
  %cmp117.not = icmp eq i64 %24, %sub, !dbg !503
  br i1 %cmp117.not, label %cleanup122, label %cleanup134, !dbg !505

cleanup122:                                       ; preds = %if.end115
  store i32 0, ptr %pcoder, align 8, !dbg !506
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %cleanup122, %if.end44, %if.end132, %if.end93, %sw.bb78, %sw.bb71, %sw.bb58, %sw.bb50
  br label %while.cond, !dbg !380, !llvm.loop !507

sw.bb126:                                         ; preds = %while.body
  tail call void @llvm.experimental.noalias.scope.decl(metadata !509), !dbg !512
  tail call void @llvm.experimental.noalias.scope.decl(metadata !514), !dbg !512
    #dbg_value(ptr %dict, !516, !DIExpression(), !525)
    #dbg_value(ptr %in, !521, !DIExpression(), !525)
    #dbg_value(ptr %in_pos, !522, !DIExpression(), !525)
    #dbg_value(i64 %in_size, !523, !DIExpression(), !525)
    #dbg_value(ptr %compressed_size127, !524, !DIExpression(), !525)
  %sub.i = sub i64 %in_size, %0, !dbg !527
  %25 = load i64, ptr %compressed_size127, align 8, !dbg !529, !alias.scope !514, !noalias !530
  %cmp.i = icmp ugt i64 %sub.i, %25, !dbg !533
  %add.i = add i64 %25, %0
  %spec.select.i = select i1 %cmp.i, i64 %add.i, i64 %in_size, !dbg !534
    #dbg_value(i64 %spec.select.i, !523, !DIExpression(), !525)
  %26 = load ptr, ptr %dict, align 8, !dbg !535, !alias.scope !509, !noalias !536
  %27 = load i64, ptr %limit.i, align 8, !dbg !537, !alias.scope !509, !noalias !536
  %call.i = tail call i64 @lzma_bufcpy(ptr noundef %in, ptr noundef nonnull %in_pos, i64 noundef %spec.select.i, ptr noundef %26, ptr noundef nonnull %pos.i, i64 noundef %27) #4, !dbg !538, !noalias !514
  %sub1.i = sub i64 %25, %call.i, !dbg !539
  store i64 %sub1.i, ptr %compressed_size127, align 8, !dbg !539, !alias.scope !514, !noalias !530
  %28 = load i64, ptr %pos.i, align 8, !dbg !540, !alias.scope !509, !noalias !536
  %29 = load i64, ptr %full.i, align 8, !dbg !542, !alias.scope !509, !noalias !536
  %cmp3.i = icmp ugt i64 %28, %29, !dbg !543
  br i1 %cmp3.i, label %if.then4.i, label %dict_write.exit, !dbg !544

if.then4.i:                                       ; preds = %sw.bb126
  store i64 %28, ptr %full.i, align 8, !dbg !545, !alias.scope !509, !noalias !536
  br label %dict_write.exit, !dbg !546

dict_write.exit:                                  ; preds = %sw.bb126, %if.then4.i
  %cmp129.not = icmp eq i64 %25, %call.i, !dbg !547
  br i1 %cmp129.not, label %if.end132, label %cleanup134, !dbg !549

if.end132:                                        ; preds = %dict_write.exit
  store i32 0, ptr %pcoder, align 8, !dbg !550
  br label %while.cond.backedge, !dbg !551

cleanup134:                                       ; preds = %if.end115, %if.end109, %sw.bb100, %if.else37, %if.else23, %if.else, %sw.bb, %lor.rhs, %while.body, %dict_write.exit, %sw.bb88, %if.then47
  %retval.4 = phi i32 [ 0, %if.then47 ], [ 9, %sw.bb100 ], [ %call104, %if.end109 ], [ 9, %if.end115 ], [ 1, %sw.bb ], [ 9, %if.else ], [ 9, %if.else23 ], [ 9, %if.else37 ], [ 0, %lor.rhs ], [ 11, %while.body ], [ 0, %dict_write.exit ], [ 9, %sw.bb88 ], !dbg !378
  ret i32 %retval.4, !dbg !552
}

; Function Attrs: nounwind uwtable
define internal void @lzma2_decoder_end(ptr noundef %pcoder, ptr noundef %allocator) #0 !dbg !553 {
entry:
    #dbg_value(ptr %pcoder, !555, !DIExpression(), !558)
    #dbg_value(ptr %allocator, !556, !DIExpression(), !558)
    #dbg_value(ptr %pcoder, !557, !DIExpression(), !558)
  %lzma = getelementptr inbounds i8, ptr %pcoder, i64 8, !dbg !559
  %0 = load ptr, ptr %lzma, align 8, !dbg !560
  tail call void @lzma_free(ptr noundef %0, ptr noundef %allocator) #4, !dbg !561
  tail call void @lzma_free(ptr noundef %pcoder, ptr noundef %allocator) #4, !dbg !562
  ret void, !dbg !563
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare !dbg !564 i32 @lzma_lzma_decoder_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !565 zeroext i1 @lzma_lzma_lclppb_decode(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare !dbg !568 i64 @lzma_bufcpy(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !571 void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!173, !174, !175, !176, !177, !178, !179}
!llvm.ident = !{!180}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !57, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "liblzma/lzma/lzma2_decoder.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "9cda6399cf9c2869972035c0d84226da")
!2 = !{!3, !19, !25, !32, !37, !44, !47}
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
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !33, line: 138, baseType: !5, size: 32, elements: !34)
!33 = !DIFile(filename: "liblzma/api/lzma/lzma.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "c59c540efa0aff44f03d71331089fff8")
!34 = !{!35, !36}
!35 = !DIEnumerator(name: "LZMA_MODE_FAST", value: 1)
!36 = !DIEnumerator(name: "LZMA_MODE_NORMAL", value: 2)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !33, line: 58, baseType: !5, size: 32, elements: !38)
!38 = !{!39, !40, !41, !42, !43}
!39 = !DIEnumerator(name: "LZMA_MF_HC3", value: 3)
!40 = !DIEnumerator(name: "LZMA_MF_HC4", value: 4)
!41 = !DIEnumerator(name: "LZMA_MF_BT2", value: 18)
!42 = !DIEnumerator(name: "LZMA_MF_BT3", value: 19)
!43 = !DIEnumerator(name: "LZMA_MF_BT4", value: 20)
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 44, baseType: !5, size: 32, elements: !45)
!45 = !{!46}
!46 = !DIEnumerator(name: "LZMA_RESERVED_ENUM", value: 0)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "sequence", file: !1, line: 20, baseType: !5, size: 32, elements: !48)
!48 = !{!49, !50, !51, !52, !53, !54, !55, !56}
!49 = !DIEnumerator(name: "SEQ_CONTROL", value: 0)
!50 = !DIEnumerator(name: "SEQ_UNCOMPRESSED_1", value: 1)
!51 = !DIEnumerator(name: "SEQ_UNCOMPRESSED_2", value: 2)
!52 = !DIEnumerator(name: "SEQ_COMPRESSED_0", value: 3)
!53 = !DIEnumerator(name: "SEQ_COMPRESSED_1", value: 4)
!54 = !DIEnumerator(name: "SEQ_PROPERTIES", value: 5)
!55 = !DIEnumerator(name: "SEQ_LZMA", value: 6)
!56 = !DIEnumerator(name: "SEQ_COPY", value: 7)
!57 = !{!58, !59, !145}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_coder_s", file: !1, line: 19, size: 1472, elements: !61)
!61 = !{!62, !63, !64, !136, !137, !138, !139, !140}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !60, file: !1, line: 29, baseType: !47, size: 32)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "next_sequence", scope: !60, file: !1, line: 32, baseType: !47, size: 32, offset: 32)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "lzma", scope: !60, file: !1, line: 35, baseType: !65, size: 320, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_lz_decoder", file: !66, line: 72, baseType: !67)
!66 = !DIFile(filename: "liblzma/lz/lz_decoder.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "27344aa2da5754ad4a118fbd9137003b")
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !66, line: 54, size: 320, elements: !68)
!68 = !{!69, !73, !105, !111, !119}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !67, file: !66, line: 56, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_coder", file: !72, line: 78, baseType: null)
!72 = !DIFile(filename: "liblzma/common/common.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!73 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !67, file: !66, line: 59, baseType: !74, size: 64, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DISubroutineType(types: !76)
!76 = !{!77, !78, !79, !100, !103, !92}
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!78 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !70)
!79 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_dict", file: !66, line: 44, baseType: !82)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !66, line: 20, size: 384, elements: !83)
!83 = !{!84, !91, !95, !96, !97, !98}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !82, file: !66, line: 24, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !87, line: 24, baseType: !88)
!87 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !89, line: 38, baseType: !90)
!89 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!90 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !82, file: !66, line: 28, baseType: !92, size: 64, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !93, line: 18, baseType: !94)
!93 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!94 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !82, file: !66, line: 33, baseType: !92, size: 64, offset: 128)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !82, file: !66, line: 36, baseType: !92, size: 64, offset: 192)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !82, file: !66, line: 39, baseType: !92, size: 64, offset: 256)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "need_reset", scope: !82, file: !66, line: 42, baseType: !99, size: 8, offset: 320)
!99 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!100 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !101)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!103 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !67, file: !66, line: 63, baseType: !106, size: 64, offset: 128)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DISubroutineType(types: !108)
!108 = !{null, !70, !109}
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "set_uncompressed", scope: !67, file: !66, line: 66, baseType: !112, size: 64, offset: 192)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DISubroutineType(types: !114)
!114 = !{null, !70, !115}
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !116, line: 63, baseType: !117)
!116 = !DIFile(filename: "liblzma/api/lzma/vli.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !87, line: 27, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !89, line: 45, baseType: !94)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !67, file: !66, line: 70, baseType: !120, size: 64, offset: 256)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DISubroutineType(types: !122)
!122 = !{null, !70, !123}
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !4, line: 403, baseType: !125)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 341, size: 192, elements: !126)
!126 = !{!127, !131, !135}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !125, file: !4, line: 376, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DISubroutineType(types: !130)
!130 = !{!58, !58, !92, !92}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !125, file: !4, line: 390, baseType: !132, size: 64, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{null, !58, !58}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !125, file: !4, line: 401, baseType: !58, size: 64, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_size", scope: !60, file: !1, line: 38, baseType: !92, size: 64, offset: 384)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_size", scope: !60, file: !1, line: 42, baseType: !92, size: 64, offset: 448)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "need_properties", scope: !60, file: !1, line: 46, baseType: !99, size: 8, offset: 512)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "need_dictionary_reset", scope: !60, file: !1, line: 50, baseType: !99, size: 8, offset: 520)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !60, file: !1, line: 52, baseType: !141, size: 896, offset: 576)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_options_lzma", file: !33, line: 399, baseType: !142)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !33, line: 185, size: 896, elements: !143)
!143 = !{!144, !147, !148, !149, !150, !151, !152, !154, !155, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !168, !169, !170, !171, !172}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "dict_size", scope: !142, file: !33, line: 217, baseType: !145, size: 32)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !87, line: 26, baseType: !146)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !89, line: 42, baseType: !5)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict", scope: !142, file: !33, line: 240, baseType: !101, size: 64, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict_size", scope: !142, file: !33, line: 254, baseType: !145, size: 32, offset: 128)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "lc", scope: !142, file: !33, line: 281, baseType: !145, size: 32, offset: 160)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "lp", scope: !142, file: !33, line: 293, baseType: !145, size: 32, offset: 192)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "pb", scope: !142, file: !33, line: 316, baseType: !145, size: 32, offset: 224)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !142, file: !33, line: 322, baseType: !153, size: 32, offset: 256)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_mode", file: !33, line: 155, baseType: !32)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nice_len", scope: !142, file: !33, line: 342, baseType: !145, size: 32, offset: 288)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "mf", scope: !142, file: !33, line: 345, baseType: !156, size: 32, offset: 320)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_match_finder", file: !33, line: 111, baseType: !37)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !142, file: !33, line: 375, baseType: !145, size: 32, offset: 352)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !142, file: !33, line: 384, baseType: !145, size: 32, offset: 384)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !142, file: !33, line: 385, baseType: !145, size: 32, offset: 416)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !142, file: !33, line: 386, baseType: !145, size: 32, offset: 448)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !142, file: !33, line: 387, baseType: !145, size: 32, offset: 480)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int5", scope: !142, file: !33, line: 388, baseType: !145, size: 32, offset: 512)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int6", scope: !142, file: !33, line: 389, baseType: !145, size: 32, offset: 544)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int7", scope: !142, file: !33, line: 390, baseType: !145, size: 32, offset: 576)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int8", scope: !142, file: !33, line: 391, baseType: !145, size: 32, offset: 608)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !142, file: !33, line: 392, baseType: !167, size: 32, offset: 640)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !4, line: 46, baseType: !44)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !142, file: !33, line: 393, baseType: !167, size: 32, offset: 672)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !142, file: !33, line: 394, baseType: !167, size: 32, offset: 704)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !142, file: !33, line: 395, baseType: !167, size: 32, offset: 736)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !142, file: !33, line: 396, baseType: !58, size: 64, offset: 768)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !142, file: !33, line: 397, baseType: !58, size: 64, offset: 832)
!173 = !{i32 7, !"Dwarf Version", i32 5}
!174 = !{i32 2, !"Debug Info Version", i32 3}
!175 = !{i32 1, !"wchar_size", i32 4}
!176 = !{i32 8, !"PIC Level", i32 2}
!177 = !{i32 7, !"PIE Level", i32 2}
!178 = !{i32 7, !"uwtable", i32 2}
!179 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!180 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!181 = distinct !DISubprogram(name: "lzma_lzma2_decoder_init", scope: !1, file: !1, line: 253, type: !182, scopeLine: 255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !236)
!182 = !DISubroutineType(types: !183)
!183 = !{!77, !184, !123, !226}
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_next_coder", file: !72, line: 80, baseType: !186)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_next_coder_s", file: !72, line: 124, size: 512, elements: !187)
!187 = !{!188, !189, !190, !193, !200, !202, !209, !214}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !186, file: !72, line: 126, baseType: !70, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !186, file: !72, line: 130, baseType: !115, size: 64, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !186, file: !72, line: 136, baseType: !191, size: 64, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !192, line: 90, baseType: !94)
!192 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!193 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !186, file: !72, line: 139, baseType: !194, size: 64, offset: 192)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_code_function", file: !72, line: 94, baseType: !195)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{!77, !70, !123, !100, !103, !92, !198, !103, !92, !199}
!198 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !85)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !4, line: 322, baseType: !19)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !186, file: !72, line: 144, baseType: !201, size: 64, offset: 256)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_end_function", file: !72, line: 102, baseType: !120)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "get_check", scope: !186, file: !72, line: 148, baseType: !203, size: 64, offset: 320)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DISubroutineType(types: !205)
!205 = !{!206, !207}
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !26, line: 55, baseType: !25)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "memconfig", scope: !186, file: !72, line: 152, baseType: !210, size: 64, offset: 384)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!77, !70, !213, !213, !117}
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !186, file: !72, line: 157, baseType: !215, size: 64, offset: 448)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!77, !70, !123, !218, !218}
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !221, line: 65, baseType: !222)
!221 = !DIFile(filename: "liblzma/api/lzma/filter.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !221, line: 43, size: 128, elements: !223)
!223 = !{!224, !225}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !222, file: !221, line: 54, baseType: !115, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !222, file: !221, line: 63, baseType: !58, size: 64, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter_info", file: !72, line: 82, baseType: !229)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_filter_info_s", file: !72, line: 109, size: 192, elements: !230)
!230 = !{!231, !232, !235}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !229, file: !72, line: 112, baseType: !115, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !229, file: !72, line: 116, baseType: !233, size: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_init_function", file: !72, line: 86, baseType: !234)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !229, file: !72, line: 119, baseType: !58, size: 64, offset: 128)
!236 = !{!237, !238, !239}
!237 = !DILocalVariable(name: "next", arg: 1, scope: !181, file: !1, line: 253, type: !184)
!238 = !DILocalVariable(name: "allocator", arg: 2, scope: !181, file: !1, line: 253, type: !123)
!239 = !DILocalVariable(name: "filters", arg: 3, scope: !181, file: !1, line: 254, type: !226)
!240 = !DILocation(line: 0, scope: !181)
!241 = !DILocation(line: 260, column: 9, scope: !181)
!242 = !DILocation(line: 260, column: 2, scope: !181)
!243 = !DISubprogram(name: "lzma_lz_decoder_init", scope: !66, file: !66, line: 85, type: !244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!244 = !DISubroutineType(types: !245)
!245 = !{!77, !184, !123, !226, !246}
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{!77, !249, !123, !109, !250}
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_lz_options", file: !66, line: 51, baseType: !252)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !66, line: 47, size: 192, elements: !253)
!253 = !{!254, !255, !256}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "dict_size", scope: !252, file: !66, line: 48, baseType: !92, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict", scope: !252, file: !66, line: 49, baseType: !101, size: 64, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict_size", scope: !252, file: !66, line: 50, baseType: !92, size: 64, offset: 128)
!257 = distinct !DISubprogram(name: "lzma2_decoder_init", scope: !1, file: !1, line: 226, type: !247, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !258)
!258 = !{!259, !260, !261, !262, !263}
!259 = !DILocalVariable(name: "lz", arg: 1, scope: !257, file: !1, line: 226, type: !249)
!260 = !DILocalVariable(name: "allocator", arg: 2, scope: !257, file: !1, line: 226, type: !123)
!261 = !DILocalVariable(name: "opt", arg: 3, scope: !257, file: !1, line: 227, type: !109)
!262 = !DILocalVariable(name: "lz_options", arg: 4, scope: !257, file: !1, line: 227, type: !250)
!263 = !DILocalVariable(name: "options", scope: !257, file: !1, line: 240, type: !264)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !141)
!266 = !DILocation(line: 0, scope: !257)
!267 = !DILocation(line: 229, column: 10, scope: !268)
!268 = distinct !DILexicalBlock(scope: !257, file: !1, line: 229, column: 6)
!269 = !DILocation(line: 229, column: 16, scope: !268)
!270 = !DILocation(line: 229, column: 6, scope: !257)
!271 = !DILocation(line: 230, column: 15, scope: !272)
!272 = distinct !DILexicalBlock(scope: !268, file: !1, line: 229, column: 25)
!273 = !DILocation(line: 230, column: 13, scope: !272)
!274 = !DILocation(line: 231, column: 17, scope: !275)
!275 = distinct !DILexicalBlock(scope: !272, file: !1, line: 231, column: 7)
!276 = !DILocation(line: 231, column: 7, scope: !272)
!277 = !DILocation(line: 234, column: 7, scope: !272)
!278 = !DILocation(line: 234, column: 12, scope: !272)
!279 = !DILocation(line: 235, column: 7, scope: !272)
!280 = !DILocation(line: 235, column: 11, scope: !272)
!281 = !DILocation(line: 237, column: 38, scope: !272)
!282 = !DILocation(line: 237, column: 45, scope: !272)
!283 = !DILocation(line: 242, column: 29, scope: !257)
!284 = !DILocation(line: 238, column: 2, scope: !272)
!285 = !DILocation(line: 242, column: 46, scope: !257)
!286 = !DILocation(line: 243, column: 29, scope: !257)
!287 = !DILocation(line: 243, column: 37, scope: !257)
!288 = !DILocation(line: 243, column: 53, scope: !257)
!289 = !DILocation(line: 244, column: 70, scope: !257)
!290 = !DILocation(line: 244, column: 82, scope: !257)
!291 = !DILocation(line: 245, column: 4, scope: !257)
!292 = !DILocation(line: 245, column: 16, scope: !257)
!293 = !DILocation(line: 245, column: 33, scope: !257)
!294 = !DILocation(line: 244, column: 59, scope: !257)
!295 = !DILocation(line: 244, column: 29, scope: !257)
!296 = !DILocation(line: 244, column: 37, scope: !257)
!297 = !DILocation(line: 247, column: 62, scope: !257)
!298 = !DILocation(line: 247, column: 70, scope: !257)
!299 = !DILocation(line: 247, column: 9, scope: !257)
!300 = !DILocation(line: 249, column: 1, scope: !257)
!301 = distinct !DISubprogram(name: "lzma_lzma2_decoder_memusage", scope: !1, file: !1, line: 266, type: !302, scopeLine: 267, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !304)
!302 = !DISubroutineType(types: !303)
!303 = !{!117, !109}
!304 = !{!305}
!305 = !DILocalVariable(name: "options", arg: 1, scope: !301, file: !1, line: 266, type: !109)
!306 = !DILocation(line: 0, scope: !301)
!307 = !DILocation(line: 269, column: 6, scope: !301)
!308 = !DILocation(line: 269, column: 4, scope: !301)
!309 = !DILocation(line: 268, column: 2, scope: !301)
!310 = !DISubprogram(name: "lzma_lzma_decoder_memusage_nocheck", scope: !311, file: !311, line: 48, type: !302, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!311 = !DIFile(filename: "liblzma/lzma/lzma_decoder.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "0caa14a517fbe6eb5d1a0f4dac3f4c24")
!312 = distinct !DISubprogram(name: "lzma_lzma2_props_decode", scope: !1, file: !1, line: 274, type: !313, scopeLine: 276, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !316)
!313 = !DISubroutineType(types: !314)
!314 = !{!77, !315, !123, !101, !92}
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!316 = !{!317, !318, !319, !320, !321}
!317 = !DILocalVariable(name: "options", arg: 1, scope: !312, file: !1, line: 274, type: !315)
!318 = !DILocalVariable(name: "allocator", arg: 2, scope: !312, file: !1, line: 274, type: !123)
!319 = !DILocalVariable(name: "props", arg: 3, scope: !312, file: !1, line: 275, type: !101)
!320 = !DILocalVariable(name: "props_size", arg: 4, scope: !312, file: !1, line: 275, type: !92)
!321 = !DILocalVariable(name: "opt", scope: !312, file: !1, line: 288, type: !322)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!323 = !DILocation(line: 0, scope: !312)
!324 = !DILocation(line: 277, column: 17, scope: !325)
!325 = distinct !DILexicalBlock(scope: !312, file: !1, line: 277, column: 6)
!326 = !DILocation(line: 277, column: 6, scope: !312)
!327 = !DILocation(line: 281, column: 6, scope: !328)
!328 = distinct !DILexicalBlock(scope: !312, file: !1, line: 281, column: 6)
!329 = !DILocation(line: 281, column: 6, scope: !312)
!330 = !DILocation(line: 288, column: 27, scope: !312)
!331 = !DILocation(line: 290, column: 10, scope: !332)
!332 = distinct !DILexicalBlock(scope: !312, file: !1, line: 290, column: 6)
!333 = !DILocation(line: 290, column: 6, scope: !312)
!334 = !DILocation(line: 293, column: 6, scope: !335)
!335 = distinct !DILexicalBlock(scope: !312, file: !1, line: 293, column: 6)
!336 = !DILocation(line: 293, column: 15, scope: !335)
!337 = !DILocation(line: 293, column: 6, scope: !312)
!338 = !DILocation(line: 296, column: 34, scope: !339)
!339 = distinct !DILexicalBlock(scope: !335, file: !1, line: 295, column: 9)
!340 = !DILocation(line: 296, column: 22, scope: !339)
!341 = !DILocation(line: 296, column: 18, scope: !339)
!342 = !DILocation(line: 297, column: 22, scope: !339)
!343 = !DILocation(line: 297, column: 31, scope: !339)
!344 = !DILocation(line: 297, column: 35, scope: !339)
!345 = !DILocation(line: 297, column: 18, scope: !339)
!346 = !DILocation(line: 0, scope: !335)
!347 = !DILocation(line: 300, column: 7, scope: !312)
!348 = !DILocation(line: 300, column: 19, scope: !312)
!349 = !DILocation(line: 301, column: 7, scope: !312)
!350 = !DILocation(line: 301, column: 24, scope: !312)
!351 = !DILocation(line: 303, column: 11, scope: !312)
!352 = !DILocation(line: 305, column: 2, scope: !312)
!353 = !DILocation(line: 306, column: 1, scope: !312)
!354 = !DISubprogram(name: "lzma_alloc", scope: !72, file: !72, line: 211, type: !355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!355 = !DISubroutineType(types: !356)
!356 = !{!58, !92, !123}
!357 = distinct !DISubprogram(name: "lzma2_decode", scope: !1, file: !1, line: 57, type: !358, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !360)
!358 = !DISubroutineType(types: !359)
!359 = !{!77, !70, !79, !100, !103, !92}
!360 = !{!361, !362, !363, !364, !365, !366, !368, !372, !375, !377}
!361 = !DILocalVariable(name: "pcoder", arg: 1, scope: !357, file: !1, line: 57, type: !70)
!362 = !DILocalVariable(name: "dict", arg: 2, scope: !357, file: !1, line: 57, type: !79)
!363 = !DILocalVariable(name: "in", arg: 3, scope: !357, file: !1, line: 58, type: !100)
!364 = !DILocalVariable(name: "in_pos", arg: 4, scope: !357, file: !1, line: 58, type: !103)
!365 = !DILocalVariable(name: "in_size", arg: 5, scope: !357, file: !1, line: 59, type: !92)
!366 = !DILocalVariable(name: "coder", scope: !357, file: !1, line: 61, type: !367)
!367 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !59)
!368 = !DILocalVariable(name: "control", scope: !369, file: !1, line: 68, type: !371)
!369 = distinct !DILexicalBlock(scope: !370, file: !1, line: 67, column: 20)
!370 = distinct !DILexicalBlock(scope: !357, file: !1, line: 66, column: 27)
!371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !145)
!372 = !DILocalVariable(name: "in_start", scope: !373, file: !1, line: 166, type: !374)
!373 = distinct !DILexicalBlock(scope: !370, file: !1, line: 163, column: 17)
!374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!375 = !DILocalVariable(name: "ret", scope: !373, file: !1, line: 169, type: !376)
!376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!377 = !DILocalVariable(name: "in_used", scope: !373, file: !1, line: 173, type: !374)
!378 = !DILocation(line: 0, scope: !357)
!379 = !DILocation(line: 65, column: 2, scope: !357)
!380 = !DILocation(line: 65, column: 9, scope: !357)
!381 = !DILocation(line: 65, column: 17, scope: !357)
!382 = !DILocation(line: 65, column: 27, scope: !357)
!383 = !DILocation(line: 65, column: 46, scope: !357)
!384 = !DILocation(line: 66, column: 2, scope: !357)
!385 = !DILocation(line: 68, column: 28, scope: !369)
!386 = !DILocation(line: 0, scope: !369)
!387 = !DILocation(line: 69, column: 3, scope: !369)
!388 = !DILocation(line: 72, column: 15, scope: !389)
!389 = distinct !DILexicalBlock(scope: !369, file: !1, line: 72, column: 7)
!390 = !DILocation(line: 72, column: 7, scope: !369)
!391 = !DILocation(line: 75, column: 15, scope: !392)
!392 = distinct !DILexicalBlock(scope: !369, file: !1, line: 75, column: 7)
!393 = !DILocation(line: 75, column: 23, scope: !392)
!394 = !DILocation(line: 78, column: 27, scope: !395)
!395 = distinct !DILexicalBlock(scope: !392, file: !1, line: 75, column: 40)
!396 = !DILocation(line: 79, column: 33, scope: !395)
!397 = !DILocation(line: 80, column: 3, scope: !395)
!398 = !DILocation(line: 80, column: 21, scope: !399)
!399 = distinct !DILexicalBlock(scope: !392, file: !1, line: 80, column: 14)
!400 = !{i8 0, i8 2}
!401 = !{}
!402 = !DILocation(line: 80, column: 14, scope: !392)
!403 = !DILocation(line: 84, column: 15, scope: !404)
!404 = distinct !DILexicalBlock(scope: !369, file: !1, line: 84, column: 7)
!405 = !DILocation(line: 84, column: 7, scope: !369)
!406 = !DILocation(line: 87, column: 48, scope: !407)
!407 = distinct !DILexicalBlock(scope: !404, file: !1, line: 84, column: 24)
!408 = !DILocation(line: 87, column: 29, scope: !407)
!409 = !DILocation(line: 88, column: 20, scope: !407)
!410 = !DILocation(line: 92, column: 16, scope: !411)
!411 = distinct !DILexicalBlock(scope: !407, file: !1, line: 92, column: 8)
!412 = !DILocation(line: 92, column: 8, scope: !407)
!413 = !DILocation(line: 95, column: 28, scope: !414)
!414 = distinct !DILexicalBlock(scope: !411, file: !1, line: 92, column: 25)
!415 = !DILocation(line: 96, column: 26, scope: !414)
!416 = !DILocation(line: 98, column: 4, scope: !414)
!417 = !DILocation(line: 98, column: 22, scope: !418)
!418 = distinct !DILexicalBlock(scope: !411, file: !1, line: 98, column: 15)
!419 = !DILocation(line: 98, column: 15, scope: !411)
!420 = !DILocation(line: 102, column: 26, scope: !421)
!421 = distinct !DILexicalBlock(scope: !418, file: !1, line: 101, column: 11)
!422 = !DILocation(line: 107, column: 17, scope: !423)
!423 = distinct !DILexicalBlock(scope: !421, file: !1, line: 107, column: 9)
!424 = !DILocation(line: 107, column: 9, scope: !421)
!425 = !DILocation(line: 108, column: 18, scope: !423)
!426 = !DILocation(line: 108, column: 36, scope: !423)
!427 = !DILocation(line: 108, column: 6, scope: !423)
!428 = !DILocation(line: 121, column: 14, scope: !429)
!429 = distinct !DILexicalBlock(scope: !369, file: !1, line: 121, column: 7)
!430 = !DILocation(line: 113, column: 16, scope: !431)
!431 = distinct !DILexicalBlock(scope: !432, file: !1, line: 113, column: 8)
!432 = distinct !DILexicalBlock(scope: !404, file: !1, line: 111, column: 10)
!433 = !DILocation(line: 113, column: 8, scope: !432)
!434 = !DILocation(line: 117, column: 20, scope: !432)
!435 = !DILocation(line: 118, column: 25, scope: !432)
!436 = !DILocation(line: 121, column: 7, scope: !369)
!437 = !DILocation(line: 124, column: 33, scope: !438)
!438 = distinct !DILexicalBlock(scope: !429, file: !1, line: 121, column: 37)
!439 = !DILocalVariable(name: "dict", arg: 1, scope: !440, file: !66, line: 228, type: !80)
!440 = distinct !DISubprogram(name: "dict_reset", scope: !66, file: !66, line: 228, type: !441, scopeLine: 229, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !443)
!441 = !DISubroutineType(types: !442)
!442 = !{null, !80}
!443 = !{!439}
!444 = !DILocation(line: 0, scope: !440, inlinedAt: !445)
!445 = distinct !DILocation(line: 125, column: 4, scope: !438)
!446 = !DILocation(line: 230, column: 8, scope: !440, inlinedAt: !445)
!447 = !DILocation(line: 230, column: 19, scope: !440, inlinedAt: !445)
!448 = !DILocation(line: 126, column: 4, scope: !438)
!449 = !DILocation(line: 133, column: 54, scope: !370)
!450 = !DILocation(line: 133, column: 42, scope: !370)
!451 = !DILocation(line: 133, column: 31, scope: !370)
!452 = !DILocation(line: 133, column: 59, scope: !370)
!453 = !DILocation(line: 133, column: 28, scope: !370)
!454 = !DILocation(line: 134, column: 19, scope: !370)
!455 = !DILocation(line: 135, column: 3, scope: !370)
!456 = !DILocation(line: 138, column: 43, scope: !370)
!457 = !DILocation(line: 138, column: 31, scope: !370)
!458 = !DILocation(line: 138, column: 47, scope: !370)
!459 = !DILocation(line: 138, column: 28, scope: !370)
!460 = !DILocation(line: 139, column: 19, scope: !370)
!461 = !DILocation(line: 140, column: 15, scope: !370)
!462 = !DILocation(line: 140, column: 44, scope: !370)
!463 = !DILocation(line: 140, column: 3, scope: !370)
!464 = !DILocation(line: 142, column: 3, scope: !370)
!465 = !DILocation(line: 145, column: 51, scope: !370)
!466 = !DILocation(line: 145, column: 39, scope: !370)
!467 = !DILocation(line: 145, column: 28, scope: !370)
!468 = !DILocation(line: 145, column: 56, scope: !370)
!469 = !DILocation(line: 145, column: 26, scope: !370)
!470 = !DILocation(line: 146, column: 19, scope: !370)
!471 = !DILocation(line: 147, column: 3, scope: !370)
!472 = !DILocation(line: 150, column: 41, scope: !370)
!473 = !DILocation(line: 150, column: 29, scope: !370)
!474 = !DILocation(line: 150, column: 45, scope: !370)
!475 = !DILocation(line: 150, column: 26, scope: !370)
!476 = !DILocation(line: 151, column: 28, scope: !370)
!477 = !DILocation(line: 151, column: 19, scope: !370)
!478 = !DILocation(line: 152, column: 3, scope: !370)
!479 = !DILocation(line: 155, column: 60, scope: !480)
!480 = distinct !DILexicalBlock(scope: !370, file: !1, line: 155, column: 7)
!481 = !DILocation(line: 155, column: 48, scope: !480)
!482 = !DILocation(line: 155, column: 7, scope: !480)
!483 = !DILocation(line: 155, column: 7, scope: !370)
!484 = !DILocation(line: 158, column: 15, scope: !370)
!485 = !DILocation(line: 158, column: 33, scope: !370)
!486 = !DILocation(line: 158, column: 3, scope: !370)
!487 = !DILocation(line: 160, column: 19, scope: !370)
!488 = !DILocation(line: 161, column: 3, scope: !370)
!489 = !DILocation(line: 0, scope: !373)
!490 = !DILocation(line: 169, column: 36, scope: !373)
!491 = !DILocation(line: 169, column: 53, scope: !373)
!492 = !DILocation(line: 169, column: 24, scope: !373)
!493 = !DILocation(line: 173, column: 26, scope: !373)
!494 = !DILocation(line: 173, column: 34, scope: !373)
!495 = !DILocation(line: 174, column: 24, scope: !496)
!496 = distinct !DILexicalBlock(scope: !373, file: !1, line: 174, column: 7)
!497 = !DILocation(line: 174, column: 15, scope: !496)
!498 = !DILocation(line: 174, column: 7, scope: !373)
!499 = !DILocation(line: 177, column: 26, scope: !373)
!500 = !DILocation(line: 180, column: 11, scope: !501)
!501 = distinct !DILexicalBlock(scope: !373, file: !1, line: 180, column: 7)
!502 = !DILocation(line: 180, column: 7, scope: !373)
!503 = !DILocation(line: 186, column: 30, scope: !504)
!504 = distinct !DILexicalBlock(scope: !373, file: !1, line: 186, column: 7)
!505 = !DILocation(line: 186, column: 7, scope: !373)
!506 = !DILocation(line: 189, column: 19, scope: !373)
!507 = distinct !{!507, !379, !508}
!508 = !DILocation(line: 206, column: 2, scope: !357)
!509 = !{!510}
!510 = distinct !{!510, !511, !"dict_write: %dict"}
!511 = distinct !{!511, !"dict_write"}
!512 = !DILocation(line: 195, column: 3, scope: !513)
!513 = distinct !DILexicalBlock(scope: !370, file: !1, line: 193, column: 17)
!514 = !{!515}
!515 = distinct !{!515, !511, !"dict_write: %left"}
!516 = !DILocalVariable(name: "dict", arg: 1, scope: !517, file: !66, line: 203, type: !79)
!517 = distinct !DISubprogram(name: "dict_write", scope: !66, file: !66, line: 203, type: !518, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !520)
!518 = !DISubroutineType(types: !519)
!519 = !{null, !79, !100, !103, !92, !103}
!520 = !{!516, !521, !522, !523, !524}
!521 = !DILocalVariable(name: "in", arg: 2, scope: !517, file: !66, line: 203, type: !100)
!522 = !DILocalVariable(name: "in_pos", arg: 3, scope: !517, file: !66, line: 204, type: !103)
!523 = !DILocalVariable(name: "in_size", arg: 4, scope: !517, file: !66, line: 204, type: !92)
!524 = !DILocalVariable(name: "left", arg: 5, scope: !517, file: !66, line: 205, type: !103)
!525 = !DILocation(line: 0, scope: !517, inlinedAt: !526)
!526 = distinct !DILocation(line: 195, column: 3, scope: !513)
!527 = !DILocation(line: 214, column: 14, scope: !528, inlinedAt: !526)
!528 = distinct !DILexicalBlock(scope: !517, file: !66, line: 214, column: 6)
!529 = !DILocation(line: 214, column: 26, scope: !528, inlinedAt: !526)
!530 = !{!510, !531, !532}
!531 = distinct !{!531, !511, !"dict_write: %in"}
!532 = distinct !{!532, !511, !"dict_write: %in_pos"}
!533 = !DILocation(line: 214, column: 24, scope: !528, inlinedAt: !526)
!534 = !DILocation(line: 214, column: 6, scope: !517, inlinedAt: !526)
!535 = !DILocation(line: 218, column: 10, scope: !517, inlinedAt: !526)
!536 = !{!531, !532, !515}
!537 = !DILocation(line: 218, column: 33, scope: !517, inlinedAt: !526)
!538 = !DILocation(line: 217, column: 11, scope: !517, inlinedAt: !526)
!539 = !DILocation(line: 217, column: 8, scope: !517, inlinedAt: !526)
!540 = !DILocation(line: 220, column: 12, scope: !541, inlinedAt: !526)
!541 = distinct !DILexicalBlock(scope: !517, file: !66, line: 220, column: 6)
!542 = !DILocation(line: 220, column: 24, scope: !541, inlinedAt: !526)
!543 = !DILocation(line: 220, column: 16, scope: !541, inlinedAt: !526)
!544 = !DILocation(line: 220, column: 6, scope: !517, inlinedAt: !526)
!545 = !DILocation(line: 221, column: 14, scope: !541, inlinedAt: !526)
!546 = !DILocation(line: 221, column: 3, scope: !541, inlinedAt: !526)
!547 = !DILocation(line: 196, column: 30, scope: !548)
!548 = distinct !DILexicalBlock(scope: !513, file: !1, line: 196, column: 7)
!549 = !DILocation(line: 196, column: 7, scope: !513)
!550 = !DILocation(line: 199, column: 19, scope: !513)
!551 = !DILocation(line: 200, column: 3, scope: !513)
!552 = !DILocation(line: 209, column: 1, scope: !357)
!553 = distinct !DISubprogram(name: "lzma2_decoder_end", scope: !1, file: !1, line: 213, type: !121, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !554)
!554 = !{!555, !556, !557}
!555 = !DILocalVariable(name: "pcoder", arg: 1, scope: !553, file: !1, line: 213, type: !70)
!556 = !DILocalVariable(name: "allocator", arg: 2, scope: !553, file: !1, line: 213, type: !123)
!557 = !DILocalVariable(name: "coder", scope: !553, file: !1, line: 215, type: !59)
!558 = !DILocation(line: 0, scope: !553)
!559 = !DILocation(line: 217, column: 19, scope: !553)
!560 = !DILocation(line: 217, column: 24, scope: !553)
!561 = !DILocation(line: 217, column: 2, scope: !553)
!562 = !DILocation(line: 219, column: 2, scope: !553)
!563 = !DILocation(line: 222, column: 1, scope: !553)
!564 = !DISubprogram(name: "lzma_lzma_decoder_create", scope: !311, file: !311, line: 42, type: !247, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!565 = !DISubprogram(name: "lzma_lzma_lclppb_decode", scope: !311, file: !311, line: 35, type: !566, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!566 = !DISubroutineType(types: !567)
!567 = !{!99, !322, !86}
!568 = !DISubprogram(name: "lzma_bufcpy", scope: !72, file: !72, line: 242, type: !569, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!569 = !DISubroutineType(types: !570)
!570 = !{!92, !100, !103, !92, !198, !103, !92}
!571 = !DISubprogram(name: "lzma_free", scope: !72, file: !72, line: 215, type: !572, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!572 = !DISubroutineType(types: !573)
!573 = !{null, !58, !123}
