; ModuleID = 'liblzma/common/index_encoder.c'
source_filename = "liblzma/common/index_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_coder_s = type { i32, ptr, %struct.lzma_index_iter, i64, i32 }
%struct.lzma_index_iter = type { %struct.anon, %struct.anon.0, [6 x %union.anon] }
%struct.anon = type { ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.0 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr, ptr }
%union.anon = type { ptr }

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 12) i32 @lzma_index_encoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %i) #0 !dbg !249 {
entry:
    #dbg_value(ptr %next, !254, !DIExpression(), !257)
    #dbg_value(ptr %allocator, !255, !DIExpression(), !257)
    #dbg_value(ptr %i, !256, !DIExpression(), !257)
  %init = getelementptr inbounds i8, ptr %next, i64 16, !dbg !258
  %0 = load i64, ptr %init, align 8, !dbg !258
  %cmp.not = icmp eq i64 %0, ptrtoint (ptr @lzma_index_encoder_init to i64), !dbg !258
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !261

if.then:                                          ; preds = %entry
  tail call void @lzma_next_end(ptr noundef nonnull %next, ptr noundef %allocator) #3, !dbg !258
  br label %if.end, !dbg !258

if.end:                                           ; preds = %if.then, %entry
  store i64 ptrtoint (ptr @lzma_index_encoder_init to i64), ptr %init, align 8, !dbg !261
  %cmp2 = icmp eq ptr %i, null, !dbg !262
  br i1 %cmp2, label %return, label %if.end4, !dbg !264

if.end4:                                          ; preds = %if.end
  %1 = load ptr, ptr %next, align 8, !dbg !265
  %cmp5 = icmp eq ptr %1, null, !dbg !267
  br i1 %cmp5, label %if.then6, label %if.end12, !dbg !268

if.then6:                                         ; preds = %if.end4
  %call = tail call ptr @lzma_alloc(i64 noundef 336, ptr noundef %allocator) #3, !dbg !269
  store ptr %call, ptr %next, align 8, !dbg !271
  %cmp9 = icmp eq ptr %call, null, !dbg !272
  br i1 %cmp9, label %return, label %if.end11, !dbg !274

if.end11:                                         ; preds = %if.then6
  %code = getelementptr inbounds i8, ptr %next, i64 24, !dbg !275
  store ptr @index_encode, ptr %code, align 8, !dbg !276
  %end = getelementptr inbounds i8, ptr %next, i64 32, !dbg !277
  store ptr @index_encoder_end, ptr %end, align 8, !dbg !278
  br label %if.end12, !dbg !279

if.end12:                                         ; preds = %if.end11, %if.end4
  %2 = phi ptr [ %call, %if.end11 ], [ %1, %if.end4 ], !dbg !280
    #dbg_value(ptr %2, !281, !DIExpression(), !289)
    #dbg_value(ptr %i, !286, !DIExpression(), !289)
    #dbg_value(ptr %2, !287, !DIExpression(), !289)
  %iter.i = getelementptr inbounds i8, ptr %2, i64 16, !dbg !291
  tail call void @lzma_index_iter_init(ptr noundef nonnull %iter.i, ptr noundef nonnull %i) #3, !dbg !292
  store i32 0, ptr %2, align 8, !dbg !293
  %index.i = getelementptr inbounds i8, ptr %2, i64 8, !dbg !294
  store ptr %i, ptr %index.i, align 8, !dbg !295
  %pos.i = getelementptr inbounds i8, ptr %2, i64 320, !dbg !296
  store i64 0, ptr %pos.i, align 8, !dbg !297
  %crc32.i = getelementptr inbounds i8, ptr %2, i64 328, !dbg !298
  store i32 0, ptr %crc32.i, align 8, !dbg !299
  br label %return, !dbg !300

return:                                           ; preds = %if.then6, %if.end, %if.end12
  %retval.0 = phi i32 [ 0, %if.end12 ], [ 11, %if.end ], [ 5, %if.then6 ], !dbg !257
  ret i32 %retval.0, !dbg !301
}

declare !dbg !302 void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !305 ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @index_encode(ptr noundef %pcoder, ptr nocapture readnone %allocator, ptr noalias nocapture readnone %in, ptr noalias nocapture readnone %in_pos, i64 %in_size, ptr noalias noundef %out, ptr noalias noundef %out_pos, i64 noundef %out_size, i32 %action) #0 !dbg !308 {
entry:
    #dbg_value(ptr %pcoder, !310, !DIExpression(), !330)
    #dbg_value(ptr poison, !311, !DIExpression(), !330)
    #dbg_value(ptr poison, !312, !DIExpression(), !330)
    #dbg_value(ptr poison, !313, !DIExpression(), !330)
    #dbg_value(i64 poison, !314, !DIExpression(), !330)
    #dbg_value(ptr %out, !315, !DIExpression(), !330)
    #dbg_value(ptr %out_pos, !316, !DIExpression(), !330)
    #dbg_value(i64 %out_size, !317, !DIExpression(), !330)
    #dbg_value(i32 poison, !318, !DIExpression(), !330)
    #dbg_value(ptr %pcoder, !319, !DIExpression(), !330)
  %0 = load i64, ptr %out_pos, align 8, !dbg !331
    #dbg_value(i64 %0, !320, !DIExpression(), !330)
    #dbg_value(i32 0, !322, !DIExpression(), !330)
  %cmp136 = icmp ult i64 %0, %out_size, !dbg !332
  br i1 %cmp136, label %while.body.lr.ph, label %out60, !dbg !333

while.body.lr.ph:                                 ; preds = %entry
  %pos35 = getelementptr inbounds i8, ptr %pcoder, i64 320
  %iter = getelementptr inbounds i8, ptr %pcoder, i64 16
  %index10 = getelementptr inbounds i8, ptr %pcoder, i64 8
  %.pre = load i32, ptr %pcoder, align 8, !dbg !334
  br label %while.body, !dbg !333

while.body:                                       ; preds = %while.body.lr.ph, %sw.epilog
  %1 = phi i32 [ %.pre, %while.body.lr.ph ], [ %15, %sw.epilog ]
  %2 = phi i32 [ %.pre, %while.body.lr.ph ], [ %16, %sw.epilog ], !dbg !334
  %3 = phi i64 [ %0, %while.body.lr.ph ], [ %17, %sw.epilog ]
  %.fr = freeze i32 %1, !dbg !335
  switch i32 %2, label %cleanup66 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 4, label %sw.bb7
    i32 2, label %sw.bb16
    i32 3, label %sw.bb16
    i32 5, label %sw.bb34
    i32 6, label %sw.bb46
  ], !dbg !336

sw.bb:                                            ; preds = %while.body
  %arrayidx = getelementptr inbounds i8, ptr %out, i64 %3, !dbg !337
  store i8 0, ptr %arrayidx, align 1, !dbg !338
  %inc = add nuw i64 %3, 1, !dbg !339
  store i64 %inc, ptr %out_pos, align 8, !dbg !339
  store i32 1, ptr %pcoder, align 8, !dbg !340
  br label %sw.epilog, !dbg !341

sw.bb2:                                           ; preds = %while.body
  %4 = load ptr, ptr %index10, align 8, !dbg !342
  %call = tail call i64 @lzma_index_block_count(ptr noundef %4) #3, !dbg !343
    #dbg_value(i64 %call, !323, !DIExpression(), !344)
  %call3 = tail call i32 @lzma_vli_encode(i64 noundef %call, ptr noundef nonnull %pos35, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %out_size) #3, !dbg !345
    #dbg_value(i32 %call3, !322, !DIExpression(), !330)
  %cmp4.not = icmp eq i32 %call3, 1, !dbg !346
  br i1 %cmp4.not, label %cleanup.thread, label %out60.loopexit, !dbg !348

cleanup.thread:                                   ; preds = %sw.bb2
    #dbg_value(i32 0, !322, !DIExpression(), !330)
  store i64 0, ptr %pos35, align 8, !dbg !349
  store i32 4, ptr %pcoder, align 8, !dbg !350
  br label %sw.epilog

sw.bb7:                                           ; preds = %while.body
  %call8 = tail call zeroext i8 @lzma_index_iter_next(ptr noundef nonnull %iter, i32 noundef 2) #3, !dbg !351
  %tobool.not = icmp eq i8 %call8, 0, !dbg !351
  br i1 %tobool.not, label %sw.bb16.thread, label %if.then9, !dbg !353

if.then9:                                         ; preds = %sw.bb7
  %5 = load ptr, ptr %index10, align 8, !dbg !354
  %call11 = tail call i32 @lzma_index_padding_size(ptr noundef %5) #3, !dbg !356
  %conv = zext i32 %call11 to i64, !dbg !356
  store i64 %conv, ptr %pos35, align 8, !dbg !357
  store i32 5, ptr %pcoder, align 8, !dbg !358
  br label %sw.epilog, !dbg !359

sw.bb16.thread:                                   ; preds = %sw.bb7
  store i32 2, ptr %pcoder, align 8, !dbg !360
  br label %6, !dbg !361

sw.bb16:                                          ; preds = %while.body, %while.body
  %cmp18 = icmp eq i32 %.fr, 2, !dbg !335
  br i1 %cmp18, label %6, label %7, !dbg !361

6:                                                ; preds = %sw.bb16.thread, %sw.bb16
  br label %7, !dbg !361

7:                                                ; preds = %sw.bb16, %6
  %8 = phi i64 [ 192, %6 ], [ 184, %sw.bb16 ], !dbg !361
  %cond.in = getelementptr inbounds i8, ptr %pcoder, i64 %8, !dbg !361
  %cond = load i64, ptr %cond.in, align 8, !dbg !361
    #dbg_value(i64 %cond, !327, !DIExpression(), !362)
  %call24 = tail call i32 @lzma_vli_encode(i64 noundef %cond, ptr noundef nonnull %pos35, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %out_size) #3, !dbg !363
    #dbg_value(i32 %call24, !322, !DIExpression(), !330)
  %cmp25.not = icmp eq i32 %call24, 1, !dbg !364
  br i1 %cmp25.not, label %cleanup32.thread, label %out60.loopexit, !dbg !366

cleanup32.thread:                                 ; preds = %7
    #dbg_value(i32 0, !322, !DIExpression(), !330)
  store i64 0, ptr %pos35, align 8, !dbg !367
  %9 = load i32, ptr %pcoder, align 8, !dbg !368
  %inc31 = add i32 %9, 1, !dbg !368
  store i32 %inc31, ptr %pcoder, align 8, !dbg !368
  br label %sw.epilog

sw.bb34:                                          ; preds = %while.body
  %10 = load i64, ptr %pos35, align 8, !dbg !369
  %cmp36.not = icmp eq i64 %10, 0, !dbg !371
  br i1 %cmp36.not, label %if.end42, label %if.then38, !dbg !372

if.then38:                                        ; preds = %sw.bb34
  %dec = add i64 %10, -1, !dbg !373
  store i64 %dec, ptr %pos35, align 8, !dbg !373
  %inc40 = add nuw i64 %3, 1, !dbg !375
  store i64 %inc40, ptr %out_pos, align 8, !dbg !375
  %arrayidx41 = getelementptr inbounds i8, ptr %out, i64 %3, !dbg !376
  store i8 0, ptr %arrayidx41, align 1, !dbg !377
  br label %sw.epilog, !dbg !378

if.end42:                                         ; preds = %sw.bb34
  %add.ptr = getelementptr inbounds i8, ptr %out, i64 %0, !dbg !379
  %sub = sub i64 %3, %0, !dbg !380
  %crc32 = getelementptr inbounds i8, ptr %pcoder, i64 328, !dbg !381
  %11 = load i32, ptr %crc32, align 8, !dbg !381
  %call43 = tail call i32 @lzma_crc32(ptr noundef %add.ptr, i64 noundef %sub, i32 noundef %11) #3, !dbg !382
  store i32 %call43, ptr %crc32, align 8, !dbg !383
  store i32 6, ptr %pcoder, align 8, !dbg !384
  %out_pos.promoted.pre = load i64, ptr %out_pos, align 8
  br label %sw.bb46, !dbg !385

sw.bb46:                                          ; preds = %while.body, %if.end42
  %out_pos.promoted = phi i64 [ %out_pos.promoted.pre, %if.end42 ], [ %3, %while.body ]
  %crc3251 = getelementptr inbounds i8, ptr %pcoder, i64 328, !dbg !386
  br label %do.body, !dbg !388

do.body:                                          ; preds = %if.end50, %sw.bb46
  %12 = phi i64 [ %inc55, %if.end50 ], [ %out_pos.promoted, %sw.bb46 ]
  %cmp47 = icmp eq i64 %12, %out_size, !dbg !389
  br i1 %cmp47, label %cleanup66, label %if.end50, !dbg !391

if.end50:                                         ; preds = %do.body
  %13 = load i32, ptr %crc3251, align 8, !dbg !386
  %14 = load i64, ptr %pos35, align 8, !dbg !392
  %.tr = trunc i64 %14 to i32, !dbg !393
  %sh_prom = shl i32 %.tr, 3, !dbg !393
  %shr = lshr i32 %13, %sh_prom, !dbg !393
  %conv53 = trunc i32 %shr to i8, !dbg !394
  %arrayidx54 = getelementptr inbounds i8, ptr %out, i64 %12, !dbg !395
  store i8 %conv53, ptr %arrayidx54, align 1, !dbg !396
  %inc55 = add i64 %12, 1, !dbg !397
  store i64 %inc55, ptr %out_pos, align 8, !dbg !397
  %inc57 = add i64 %14, 1, !dbg !398
  store i64 %inc57, ptr %pos35, align 8, !dbg !398
  %cmp58 = icmp ult i64 %inc57, 4, !dbg !399
  br i1 %cmp58, label %do.body, label %cleanup66, !dbg !400, !llvm.loop !401

sw.epilog:                                        ; preds = %cleanup32.thread, %cleanup.thread, %if.then38, %if.then9, %sw.bb
  %15 = phi i32 [ %inc31, %cleanup32.thread ], [ 4, %cleanup.thread ], [ %.fr, %if.then38 ], [ 5, %if.then9 ], [ 1, %sw.bb ]
  %16 = phi i32 [ %inc31, %cleanup32.thread ], [ 4, %cleanup.thread ], [ 5, %if.then38 ], [ 5, %if.then9 ], [ 1, %sw.bb ]
    #dbg_value(i32 0, !322, !DIExpression(), !330)
  %17 = load i64, ptr %out_pos, align 8, !dbg !403
  %cmp = icmp ult i64 %17, %out_size, !dbg !332
  br i1 %cmp, label %while.body, label %out60.loopexit, !dbg !333, !llvm.loop !404

out60.loopexit:                                   ; preds = %7, %sw.bb2, %sw.epilog
  %ret.4.ph = phi i32 [ 0, %sw.epilog ], [ %call3, %sw.bb2 ], [ %call24, %7 ]
  %.pre144 = load i64, ptr %out_pos, align 8, !dbg !406
  br label %out60, !dbg !407

out60:                                            ; preds = %out60.loopexit, %entry
  %18 = phi i64 [ %0, %entry ], [ %.pre144, %out60.loopexit ], !dbg !406
  %ret.4 = phi i32 [ 0, %entry ], [ %ret.4.ph, %out60.loopexit ], !dbg !330
    #dbg_value(i32 %ret.4, !322, !DIExpression(), !330)
    #dbg_label(!329, !408)
  %add.ptr61 = getelementptr inbounds i8, ptr %out, i64 %0, !dbg !407
  %sub62 = sub i64 %18, %0, !dbg !409
  %crc3263 = getelementptr inbounds i8, ptr %pcoder, i64 328, !dbg !410
  %19 = load i32, ptr %crc3263, align 8, !dbg !410
  %call64 = tail call i32 @lzma_crc32(ptr noundef %add.ptr61, i64 noundef %sub62, i32 noundef %19) #3, !dbg !411
  store i32 %call64, ptr %crc3263, align 8, !dbg !412
  br label %cleanup66, !dbg !413

cleanup66:                                        ; preds = %while.body, %if.end50, %do.body, %out60
  %retval.0 = phi i32 [ %ret.4, %out60 ], [ 1, %if.end50 ], [ 0, %do.body ], [ 11, %while.body ]
  ret i32 %retval.0, !dbg !414
}

; Function Attrs: nounwind uwtable
define internal void @index_encoder_end(ptr noundef %pcoder, ptr noundef %allocator) #0 !dbg !415 {
entry:
    #dbg_value(ptr %pcoder, !417, !DIExpression(), !419)
    #dbg_value(ptr %allocator, !418, !DIExpression(), !419)
  tail call void @lzma_free(ptr noundef %pcoder, ptr noundef %allocator) #3, !dbg !420
  ret void, !dbg !421
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_index_encoder(ptr noundef %strm, ptr noundef %i) local_unnamed_addr #0 !dbg !422 {
entry:
    #dbg_value(ptr %strm, !450, !DIExpression(), !457)
    #dbg_value(ptr %i, !451, !DIExpression(), !457)
  %call = tail call i32 @lzma_strm_init(ptr noundef %strm) #3, !dbg !458
    #dbg_value(i32 %call, !452, !DIExpression(), !459)
  %cmp.not.not = icmp eq i32 %call, 0, !dbg !460
  br i1 %cmp.not.not, label %do.end, label %return

do.end:                                           ; preds = %entry
  %internal = getelementptr inbounds i8, ptr %strm, i64 56, !dbg !462
  %0 = load ptr, ptr %internal, align 8, !dbg !462
  %allocator = getelementptr inbounds i8, ptr %strm, i64 48, !dbg !462
  %1 = load ptr, ptr %allocator, align 8, !dbg !462
    #dbg_value(ptr %0, !254, !DIExpression(), !463)
    #dbg_value(ptr %1, !255, !DIExpression(), !463)
    #dbg_value(ptr %i, !256, !DIExpression(), !463)
  %init.i = getelementptr inbounds i8, ptr %0, i64 16, !dbg !465
  %2 = load i64, ptr %init.i, align 8, !dbg !465
  %cmp.not.i = icmp eq i64 %2, ptrtoint (ptr @lzma_index_encoder_init to i64), !dbg !465
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !dbg !466

if.then.i:                                        ; preds = %do.end
  tail call void @lzma_next_end(ptr noundef nonnull %0, ptr noundef %1) #3, !dbg !465
  br label %if.end.i, !dbg !465

if.end.i:                                         ; preds = %if.then.i, %do.end
  store i64 ptrtoint (ptr @lzma_index_encoder_init to i64), ptr %init.i, align 8, !dbg !466
  %cmp2.i = icmp eq ptr %i, null, !dbg !467
  br i1 %cmp2.i, label %cleanup7, label %if.end4.i, !dbg !468

if.end4.i:                                        ; preds = %if.end.i
  %3 = load ptr, ptr %0, align 8, !dbg !469
  %cmp5.i = icmp eq ptr %3, null, !dbg !470
  br i1 %cmp5.i, label %if.then6.i, label %do.end10, !dbg !471

if.then6.i:                                       ; preds = %if.end4.i
  %call.i = tail call ptr @lzma_alloc(i64 noundef 336, ptr noundef %1) #3, !dbg !472
  store ptr %call.i, ptr %0, align 8, !dbg !473
  %cmp9.i = icmp eq ptr %call.i, null, !dbg !474
  br i1 %cmp9.i, label %cleanup7, label %if.end11.i, !dbg !475

if.end11.i:                                       ; preds = %if.then6.i
  %code.i = getelementptr inbounds i8, ptr %0, i64 24, !dbg !476
  store ptr @index_encode, ptr %code.i, align 8, !dbg !477
  %end.i = getelementptr inbounds i8, ptr %0, i64 32, !dbg !478
  store ptr @index_encoder_end, ptr %end.i, align 8, !dbg !479
  br label %do.end10, !dbg !480

cleanup7:                                         ; preds = %if.then6.i, %if.end.i
  %retval.0.i.ph = phi i32 [ 5, %if.then6.i ], [ 11, %if.end.i ]
    #dbg_value(i32 %retval.0.i.ph, !456, !DIExpression(), !481)
  tail call void @lzma_end(ptr noundef nonnull %strm) #3, !dbg !482
  br label %return

do.end10:                                         ; preds = %if.end11.i, %if.end4.i
  %4 = phi ptr [ %call.i, %if.end11.i ], [ %3, %if.end4.i ], !dbg !485
    #dbg_value(ptr %4, !281, !DIExpression(), !486)
    #dbg_value(ptr %i, !286, !DIExpression(), !486)
    #dbg_value(ptr %4, !287, !DIExpression(), !486)
  %iter.i.i = getelementptr inbounds i8, ptr %4, i64 16, !dbg !488
  tail call void @lzma_index_iter_init(ptr noundef nonnull %iter.i.i, ptr noundef nonnull %i) #3, !dbg !489
  store i32 0, ptr %4, align 8, !dbg !490
  %index.i.i = getelementptr inbounds i8, ptr %4, i64 8, !dbg !491
  store ptr %i, ptr %index.i.i, align 8, !dbg !492
  %pos.i.i = getelementptr inbounds i8, ptr %4, i64 320, !dbg !493
  store i64 0, ptr %pos.i.i, align 8, !dbg !494
  %crc32.i.i = getelementptr inbounds i8, ptr %4, i64 328, !dbg !495
  store i32 0, ptr %crc32.i.i, align 8, !dbg !496
    #dbg_value(i32 0, !456, !DIExpression(), !481)
  %5 = load ptr, ptr %internal, align 8, !dbg !497
  %supported_actions = getelementptr inbounds i8, ptr %5, i64 80, !dbg !498
  store i8 1, ptr %supported_actions, align 8, !dbg !499
  %6 = load ptr, ptr %internal, align 8, !dbg !500
  %arrayidx14 = getelementptr inbounds i8, ptr %6, i64 83, !dbg !501
  store i8 1, ptr %arrayidx14, align 1, !dbg !502
  br label %return, !dbg !503

return:                                           ; preds = %cleanup7, %entry, %do.end10
  %retval.2 = phi i32 [ %call, %entry ], [ %retval.0.i.ph, %cleanup7 ], [ 0, %do.end10 ], !dbg !457
  ret i32 %retval.2, !dbg !504
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !505 i32 @lzma_strm_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare !dbg !508 void @lzma_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 12) i32 @lzma_index_buffer_encode(ptr noundef %i, ptr noundef %out, ptr noundef %out_pos, i64 noundef %out_size) local_unnamed_addr #0 !dbg !511 {
entry:
  %coder = alloca %struct.lzma_coder_s, align 8, !DIAssignID !522
    #dbg_assign(i1 undef, !519, !DIExpression(), !522, ptr %coder, !DIExpression(), !523)
    #dbg_value(ptr %i, !515, !DIExpression(), !523)
    #dbg_value(ptr %out, !516, !DIExpression(), !523)
    #dbg_value(ptr %out_pos, !517, !DIExpression(), !523)
    #dbg_value(i64 %out_size, !518, !DIExpression(), !523)
  %cmp = icmp eq ptr %i, null, !dbg !524
  %cmp1 = icmp eq ptr %out, null
  %or.cond = or i1 %cmp, %cmp1, !dbg !526
  %cmp3 = icmp eq ptr %out_pos, null
  %or.cond13 = or i1 %or.cond, %cmp3, !dbg !526
  br i1 %or.cond13, label %return, label %lor.lhs.false4, !dbg !526

lor.lhs.false4:                                   ; preds = %entry
  %0 = load i64, ptr %out_pos, align 8, !dbg !527
  %cmp5 = icmp ugt i64 %0, %out_size, !dbg !528
  br i1 %cmp5, label %return, label %if.end, !dbg !529

if.end:                                           ; preds = %lor.lhs.false4
  %sub = sub i64 %out_size, %0, !dbg !530
  %call = tail call i64 @lzma_index_size(ptr noundef nonnull %i) #3, !dbg !532
  %cmp6 = icmp ult i64 %sub, %call, !dbg !533
  br i1 %cmp6, label %return, label %if.end8, !dbg !534

if.end8:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 336, ptr nonnull %coder) #3, !dbg !535
    #dbg_value(ptr %coder, !281, !DIExpression(), !536)
    #dbg_value(ptr %i, !286, !DIExpression(), !536)
    #dbg_value(ptr %coder, !287, !DIExpression(), !536)
  %iter.i = getelementptr inbounds i8, ptr %coder, i64 16, !dbg !538
  call void @lzma_index_iter_init(ptr noundef nonnull %iter.i, ptr noundef nonnull %i) #3, !dbg !539
  store i32 0, ptr %coder, align 8, !dbg !540, !DIAssignID !541
    #dbg_assign(i32 0, !519, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !541, ptr %coder, !DIExpression(), !523)
  %index.i = getelementptr inbounds i8, ptr %coder, i64 8, !dbg !542
  store ptr %i, ptr %index.i, align 8, !dbg !543, !DIAssignID !544
    #dbg_assign(ptr %i, !519, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !544, ptr %index.i, !DIExpression(), !523)
  %pos.i = getelementptr inbounds i8, ptr %coder, i64 320, !dbg !545
  store i64 0, ptr %pos.i, align 8, !dbg !546, !DIAssignID !547
    #dbg_assign(i64 0, !519, !DIExpression(DW_OP_LLVM_fragment, 2560, 64), !547, ptr %pos.i, !DIExpression(), !523)
  %crc32.i = getelementptr inbounds i8, ptr %coder, i64 328, !dbg !548
  store i32 0, ptr %crc32.i, align 8, !dbg !549, !DIAssignID !550
    #dbg_assign(i32 0, !519, !DIExpression(DW_OP_LLVM_fragment, 2624, 32), !550, ptr %crc32.i, !DIExpression(), !523)
  %1 = load i64, ptr %out_pos, align 8, !dbg !551
    #dbg_value(i64 %1, !520, !DIExpression(), !523)
  %call9 = call i32 @index_encode(ptr noundef nonnull %coder, ptr poison, ptr poison, ptr poison, i64 poison, ptr noundef nonnull %out, ptr noundef nonnull %out_pos, i64 noundef %out_size, i32 poison), !dbg !552
    #dbg_value(i32 %call9, !521, !DIExpression(), !523)
  %cmp10 = icmp eq i32 %call9, 1, !dbg !553
  br i1 %cmp10, label %if.end12, label %if.else, !dbg !555

if.else:                                          ; preds = %if.end8
  store i64 %1, ptr %out_pos, align 8, !dbg !556
    #dbg_value(i32 11, !521, !DIExpression(), !523)
  br label %if.end12

if.end12:                                         ; preds = %if.end8, %if.else
  %ret.0 = phi i32 [ 11, %if.else ], [ 0, %if.end8 ], !dbg !558
    #dbg_value(i32 %ret.0, !521, !DIExpression(), !523)
  call void @llvm.lifetime.end.p0(i64 336, ptr nonnull %coder) #3, !dbg !559
  br label %return

return:                                           ; preds = %if.end, %entry, %lor.lhs.false4, %if.end12
  %retval.0 = phi i32 [ %ret.0, %if.end12 ], [ 11, %lor.lhs.false4 ], [ 11, %entry ], [ 10, %if.end ], !dbg !523
  ret i32 %retval.0, !dbg !559
}

declare !dbg !560 i64 @lzma_index_size(ptr noundef) local_unnamed_addr #1

declare !dbg !563 i64 @lzma_index_block_count(ptr noundef) local_unnamed_addr #1

declare !dbg !564 i32 @lzma_vli_encode(i64 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !567 zeroext i8 @lzma_index_iter_next(ptr noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !572 i32 @lzma_index_padding_size(ptr noundef) local_unnamed_addr #1

declare !dbg !576 i32 @lzma_crc32(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !579 void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !582 void @lzma_index_iter_init(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!241, !242, !243, !244, !245, !246, !247}
!llvm.ident = !{!248}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !240, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "liblzma/common/index_encoder.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "16b8a0128ac6b9bca59f5e628fc962e5")
!2 = !{!3, !19, !25, !32, !131, !134, !234}
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
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !34, file: !33, line: 187, baseType: !5, size: 32, elements: !124)
!33 = !DIFile(filename: "liblzma/common/common.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_internal_s", file: !33, line: 179, size: 704, elements: !35)
!35 = !{!36, !116, !117, !118, !123}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !34, file: !33, line: 181, baseType: !37, size: 512)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_next_coder", file: !33, line: 80, baseType: !38)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_next_coder_s", file: !33, line: 124, size: 512, elements: !39)
!39 = !{!40, !43, !51, !54, !87, !92, !99, !104}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !38, file: !33, line: 126, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_coder", file: !33, line: 78, baseType: null)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !38, file: !33, line: 130, baseType: !44, size: 64, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !45, line: 63, baseType: !46)
!45 = !DIFile(filename: "liblzma/api/lzma/vli.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !47, line: 27, baseType: !48)
!47 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !49, line: 45, baseType: !50)
!49 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!50 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !38, file: !33, line: 136, baseType: !52, size: 64, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !53, line: 90, baseType: !50)
!53 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!54 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !38, file: !33, line: 139, baseType: !55, size: 64, offset: 192)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_code_function", file: !33, line: 94, baseType: !56)
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
!87 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !38, file: !33, line: 144, baseType: !88, size: 64, offset: 256)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_end_function", file: !33, line: 102, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DISubroutineType(types: !91)
!91 = !{null, !41, !60}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "get_check", scope: !38, file: !33, line: 148, baseType: !93, size: 64, offset: 320)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DISubroutineType(types: !95)
!95 = !{!96, !97}
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !26, line: 55, baseType: !25)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "memconfig", scope: !38, file: !33, line: 152, baseType: !100, size: 64, offset: 384)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DISubroutineType(types: !102)
!102 = !{!59, !41, !103, !103, !46}
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !38, file: !33, line: 157, baseType: !105, size: 64, offset: 448)
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
!116 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !34, file: !33, line: 194, baseType: !32, size: 32, offset: 512)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !34, file: !33, line: 199, baseType: !69, size: 64, offset: 576)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "supported_actions", scope: !34, file: !33, line: 202, baseType: !119, size: 32, offset: 640)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 32, elements: !121)
!120 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!121 = !{!122}
!122 = !DISubrange(count: 4)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "allow_buf_error", scope: !34, file: !33, line: 206, baseType: !120, size: 8, offset: 672)
!124 = !{!125, !126, !127, !128, !129, !130}
!125 = !DIEnumerator(name: "ISEQ_RUN", value: 0)
!126 = !DIEnumerator(name: "ISEQ_SYNC_FLUSH", value: 1)
!127 = !DIEnumerator(name: "ISEQ_FULL_FLUSH", value: 2)
!128 = !DIEnumerator(name: "ISEQ_FINISH", value: 3)
!129 = !DIEnumerator(name: "ISEQ_END", value: 4)
!130 = !DIEnumerator(name: "ISEQ_ERROR", value: 5)
!131 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 44, baseType: !5, size: 32, elements: !132)
!132 = !{!133}
!133 = !DIEnumerator(name: "LZMA_RESERVED_ENUM", value: 0)
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !135, file: !1, line: 19, baseType: !5, size: 32, elements: !226)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_coder_s", file: !1, line: 18, size: 2688, elements: !136)
!136 = !{!137, !138, !144, !224, !225}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !135, file: !1, line: 27, baseType: !134, size: 32)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !135, file: !1, line: 30, baseType: !139, size: 64, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_index", file: !142, line: 37, baseType: !143)
!142 = !DIFile(filename: "liblzma/api/lzma/index.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "923fbd07d3b348bf7a676d089b5c066f")
!143 = !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_index_s", file: !142, line: 37, flags: DIFlagFwdDecl)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !135, file: !1, line: 33, baseType: !145, size: 2432, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_index_iter", file: !142, line: 220, baseType: !146)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !142, line: 43, size: 2432, elements: !147)
!147 = !{!148, !195, !215}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !146, file: !142, line: 114, baseType: !149, size: 960)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !146, file: !142, line: 44, size: 960, elements: !150)
!150 = !{!151, !179, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !149, file: !142, line: 51, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_stream_flags", file: !155, line: 105, baseType: !156)
!155 = !DIFile(filename: "liblzma/api/lzma/stream_flags.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "d3814c86a389337e759db33a259f1072")
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !155, line: 33, size: 448, elements: !157)
!157 = !{!158, !161, !162, !163, !165, !166, !167, !168, !170, !171, !172, !173, !174, !175, !176, !177, !178}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !156, file: !155, line: 51, baseType: !159, size: 32)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !47, line: 26, baseType: !160)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !49, line: 42, baseType: !5)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "backward_size", scope: !156, file: !155, line: 69, baseType: !44, size: 64, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !156, file: !155, line: 79, baseType: !96, size: 32, offset: 128)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !156, file: !155, line: 90, baseType: !164, size: 32, offset: 160)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !4, line: 46, baseType: !131)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !156, file: !155, line: 91, baseType: !164, size: 32, offset: 192)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !156, file: !155, line: 92, baseType: !164, size: 32, offset: 224)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !156, file: !155, line: 93, baseType: !164, size: 32, offset: 256)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool1", scope: !156, file: !155, line: 94, baseType: !169, size: 8, offset: 288)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_bool", file: !4, line: 29, baseType: !81)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool2", scope: !156, file: !155, line: 95, baseType: !169, size: 8, offset: 296)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool3", scope: !156, file: !155, line: 96, baseType: !169, size: 8, offset: 304)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool4", scope: !156, file: !155, line: 97, baseType: !169, size: 8, offset: 312)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool5", scope: !156, file: !155, line: 98, baseType: !169, size: 8, offset: 320)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool6", scope: !156, file: !155, line: 99, baseType: !169, size: 8, offset: 328)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool7", scope: !156, file: !155, line: 100, baseType: !169, size: 8, offset: 336)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool8", scope: !156, file: !155, line: 101, baseType: !169, size: 8, offset: 344)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !156, file: !155, line: 102, baseType: !159, size: 32, offset: 352)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !156, file: !155, line: 103, baseType: !159, size: 32, offset: 384)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !149, file: !142, line: 53, baseType: !180, size: 64, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !149, file: !142, line: 54, baseType: !180, size: 64, offset: 128)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !149, file: !142, line: 55, baseType: !180, size: 64, offset: 192)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !149, file: !142, line: 62, baseType: !44, size: 64, offset: 256)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "block_count", scope: !149, file: !142, line: 70, baseType: !44, size: 64, offset: 320)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_offset", scope: !149, file: !142, line: 78, baseType: !44, size: 64, offset: 384)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_offset", scope: !149, file: !142, line: 86, baseType: !44, size: 64, offset: 448)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_size", scope: !149, file: !142, line: 94, baseType: !44, size: 64, offset: 512)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_size", scope: !149, file: !142, line: 99, baseType: !44, size: 64, offset: 576)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !149, file: !142, line: 108, baseType: !44, size: 64, offset: 640)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_vli1", scope: !149, file: !142, line: 110, baseType: !44, size: 64, offset: 704)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_vli2", scope: !149, file: !142, line: 111, baseType: !44, size: 64, offset: 768)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_vli3", scope: !149, file: !142, line: 112, baseType: !44, size: 64, offset: 832)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_vli4", scope: !149, file: !142, line: 113, baseType: !44, size: 64, offset: 896)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !146, file: !142, line: 208, baseType: !196, size: 1088, offset: 960)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !146, file: !142, line: 116, size: 1088, elements: !197)
!197 = !{!198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "number_in_file", scope: !196, file: !142, line: 122, baseType: !44, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_file_offset", scope: !196, file: !142, line: 132, baseType: !44, size: 64, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_file_offset", scope: !196, file: !142, line: 147, baseType: !44, size: 64, offset: 128)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "number_in_stream", scope: !196, file: !142, line: 154, baseType: !44, size: 64, offset: 192)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_stream_offset", scope: !196, file: !142, line: 162, baseType: !44, size: 64, offset: 256)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_stream_offset", scope: !196, file: !142, line: 170, baseType: !44, size: 64, offset: 320)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_size", scope: !196, file: !142, line: 179, baseType: !44, size: 64, offset: 384)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "unpadded_size", scope: !196, file: !142, line: 188, baseType: !44, size: 64, offset: 448)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "total_size", scope: !196, file: !142, line: 197, baseType: !44, size: 64, offset: 512)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_vli1", scope: !196, file: !142, line: 199, baseType: !44, size: 64, offset: 576)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_vli2", scope: !196, file: !142, line: 200, baseType: !44, size: 64, offset: 640)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_vli3", scope: !196, file: !142, line: 201, baseType: !44, size: 64, offset: 704)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_vli4", scope: !196, file: !142, line: 202, baseType: !44, size: 64, offset: 768)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !196, file: !142, line: 204, baseType: !180, size: 64, offset: 832)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !196, file: !142, line: 205, baseType: !180, size: 64, offset: 896)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !196, file: !142, line: 206, baseType: !180, size: 64, offset: 960)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr4", scope: !196, file: !142, line: 207, baseType: !180, size: 64, offset: 1024)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !146, file: !142, line: 219, baseType: !216, size: 384, offset: 2048)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 384, elements: !222)
!217 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !146, file: !142, line: 215, size: 64, elements: !218)
!218 = !{!219, !220, !221}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !217, file: !142, line: 216, baseType: !180, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !217, file: !142, line: 217, baseType: !69, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !217, file: !142, line: 218, baseType: !44, size: 64)
!222 = !{!223}
!223 = !DISubrange(count: 6)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !135, file: !1, line: 36, baseType: !69, size: 64, offset: 2560)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "crc32", scope: !135, file: !1, line: 39, baseType: !159, size: 32, offset: 2624)
!226 = !{!227, !228, !229, !230, !231, !232, !233}
!227 = !DIEnumerator(name: "SEQ_INDICATOR", value: 0)
!228 = !DIEnumerator(name: "SEQ_COUNT", value: 1)
!229 = !DIEnumerator(name: "SEQ_UNPADDED", value: 2)
!230 = !DIEnumerator(name: "SEQ_UNCOMPRESSED", value: 3)
!231 = !DIEnumerator(name: "SEQ_NEXT", value: 4)
!232 = !DIEnumerator(name: "SEQ_PADDING", value: 5)
!233 = !DIEnumerator(name: "SEQ_CRC32", value: 6)
!234 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !142, line: 226, baseType: !5, size: 32, elements: !235)
!235 = !{!236, !237, !238, !239}
!236 = !DIEnumerator(name: "LZMA_INDEX_ITER_ANY", value: 0)
!237 = !DIEnumerator(name: "LZMA_INDEX_ITER_STREAM", value: 1)
!238 = !DIEnumerator(name: "LZMA_INDEX_ITER_BLOCK", value: 2)
!239 = !DIEnumerator(name: "LZMA_INDEX_ITER_NONEMPTY_BLOCK", value: 3)
!240 = !{!52, !68}
!241 = !{i32 7, !"Dwarf Version", i32 5}
!242 = !{i32 2, !"Debug Info Version", i32 3}
!243 = !{i32 1, !"wchar_size", i32 4}
!244 = !{i32 8, !"PIC Level", i32 2}
!245 = !{i32 7, !"PIE Level", i32 2}
!246 = !{i32 7, !"uwtable", i32 2}
!247 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!248 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!249 = distinct !DISubprogram(name: "lzma_index_encoder_init", scope: !1, file: !1, line: 186, type: !250, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !253)
!250 = !DISubroutineType(types: !251)
!251 = !{!59, !252, !60, !139}
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!253 = !{!254, !255, !256}
!254 = !DILocalVariable(name: "next", arg: 1, scope: !249, file: !1, line: 186, type: !252)
!255 = !DILocalVariable(name: "allocator", arg: 2, scope: !249, file: !1, line: 186, type: !60)
!256 = !DILocalVariable(name: "i", arg: 3, scope: !249, file: !1, line: 187, type: !139)
!257 = !DILocation(line: 0, scope: !249)
!258 = !DILocation(line: 189, column: 2, scope: !259)
!259 = distinct !DILexicalBlock(scope: !260, file: !1, line: 189, column: 2)
!260 = distinct !DILexicalBlock(scope: !249, file: !1, line: 189, column: 2)
!261 = !DILocation(line: 189, column: 2, scope: !260)
!262 = !DILocation(line: 191, column: 8, scope: !263)
!263 = distinct !DILexicalBlock(scope: !249, file: !1, line: 191, column: 6)
!264 = !DILocation(line: 191, column: 6, scope: !249)
!265 = !DILocation(line: 194, column: 12, scope: !266)
!266 = distinct !DILexicalBlock(scope: !249, file: !1, line: 194, column: 6)
!267 = !DILocation(line: 194, column: 18, scope: !266)
!268 = !DILocation(line: 194, column: 6, scope: !249)
!269 = !DILocation(line: 195, column: 17, scope: !270)
!270 = distinct !DILexicalBlock(scope: !266, file: !1, line: 194, column: 27)
!271 = !DILocation(line: 195, column: 15, scope: !270)
!272 = !DILocation(line: 196, column: 19, scope: !273)
!273 = distinct !DILexicalBlock(scope: !270, file: !1, line: 196, column: 7)
!274 = !DILocation(line: 196, column: 7, scope: !270)
!275 = !DILocation(line: 199, column: 9, scope: !270)
!276 = !DILocation(line: 199, column: 14, scope: !270)
!277 = !DILocation(line: 200, column: 9, scope: !270)
!278 = !DILocation(line: 200, column: 13, scope: !270)
!279 = !DILocation(line: 201, column: 2, scope: !270)
!280 = !DILocation(line: 203, column: 28, scope: !249)
!281 = !DILocalVariable(name: "pcoder", arg: 1, scope: !282, file: !1, line: 171, type: !41)
!282 = distinct !DISubprogram(name: "index_encoder_reset", scope: !1, file: !1, line: 171, type: !283, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !285)
!283 = !DISubroutineType(types: !284)
!284 = !{null, !41, !139}
!285 = !{!281, !286, !287}
!286 = !DILocalVariable(name: "i", arg: 2, scope: !282, file: !1, line: 171, type: !139)
!287 = !DILocalVariable(name: "coder", scope: !282, file: !1, line: 173, type: !288)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!289 = !DILocation(line: 0, scope: !282, inlinedAt: !290)
!290 = distinct !DILocation(line: 203, column: 2, scope: !249)
!291 = !DILocation(line: 174, column: 31, scope: !282, inlinedAt: !290)
!292 = !DILocation(line: 174, column: 2, scope: !282, inlinedAt: !290)
!293 = !DILocation(line: 176, column: 18, scope: !282, inlinedAt: !290)
!294 = !DILocation(line: 177, column: 9, scope: !282, inlinedAt: !290)
!295 = !DILocation(line: 177, column: 15, scope: !282, inlinedAt: !290)
!296 = !DILocation(line: 178, column: 9, scope: !282, inlinedAt: !290)
!297 = !DILocation(line: 178, column: 13, scope: !282, inlinedAt: !290)
!298 = !DILocation(line: 179, column: 9, scope: !282, inlinedAt: !290)
!299 = !DILocation(line: 179, column: 15, scope: !282, inlinedAt: !290)
!300 = !DILocation(line: 205, column: 2, scope: !249)
!301 = !DILocation(line: 206, column: 1, scope: !249)
!302 = !DISubprogram(name: "lzma_next_end", scope: !33, file: !33, line: 237, type: !303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!303 = !DISubroutineType(types: !304)
!304 = !{null, !252, !60}
!305 = !DISubprogram(name: "lzma_alloc", scope: !33, file: !33, line: 211, type: !306, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!306 = !DISubroutineType(types: !307)
!307 = !{!68, !69, !60}
!308 = distinct !DISubprogram(name: "index_encode", scope: !1, file: !1, line: 44, type: !57, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !309)
!309 = !{!310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !322, !323, !327, !329}
!310 = !DILocalVariable(name: "pcoder", arg: 1, scope: !308, file: !1, line: 44, type: !41)
!311 = !DILocalVariable(name: "allocator", arg: 2, scope: !308, file: !1, line: 45, type: !60)
!312 = !DILocalVariable(name: "in", arg: 3, scope: !308, file: !1, line: 46, type: !76)
!313 = !DILocalVariable(name: "in_pos", arg: 4, scope: !308, file: !1, line: 47, type: !82)
!314 = !DILocalVariable(name: "in_size", arg: 5, scope: !308, file: !1, line: 48, type: !69)
!315 = !DILocalVariable(name: "out", arg: 6, scope: !308, file: !1, line: 49, type: !84)
!316 = !DILocalVariable(name: "out_pos", arg: 7, scope: !308, file: !1, line: 49, type: !82)
!317 = !DILocalVariable(name: "out_size", arg: 8, scope: !308, file: !1, line: 50, type: !69)
!318 = !DILocalVariable(name: "action", arg: 9, scope: !308, file: !1, line: 51, type: !86)
!319 = !DILocalVariable(name: "coder", scope: !308, file: !1, line: 53, type: !288)
!320 = !DILocalVariable(name: "out_start", scope: !308, file: !1, line: 56, type: !321)
!321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!322 = !DILocalVariable(name: "ret", scope: !308, file: !1, line: 62, type: !59)
!323 = !DILocalVariable(name: "count", scope: !324, file: !1, line: 73, type: !326)
!324 = distinct !DILexicalBlock(scope: !325, file: !1, line: 72, column: 18)
!325 = distinct !DILexicalBlock(scope: !308, file: !1, line: 65, column: 27)
!326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!327 = !DILocalVariable(name: "size", scope: !328, file: !1, line: 101, type: !326)
!328 = distinct !DILexicalBlock(scope: !325, file: !1, line: 100, column: 25)
!329 = !DILabel(scope: !308, name: "out", file: !1, line: 153)
!330 = !DILocation(line: 0, scope: !308)
!331 = !DILocation(line: 56, column: 27, scope: !308)
!332 = !DILocation(line: 64, column: 18, scope: !308)
!333 = !DILocation(line: 64, column: 2, scope: !308)
!334 = !DILocation(line: 65, column: 17, scope: !308)
!335 = !DILocation(line: 101, column: 41, scope: !328)
!336 = !DILocation(line: 65, column: 2, scope: !308)
!337 = !DILocation(line: 67, column: 3, scope: !325)
!338 = !DILocation(line: 67, column: 17, scope: !325)
!339 = !DILocation(line: 68, column: 3, scope: !325)
!340 = !DILocation(line: 69, column: 19, scope: !325)
!341 = !DILocation(line: 70, column: 3, scope: !325)
!342 = !DILocation(line: 73, column: 56, scope: !324)
!343 = !DILocation(line: 73, column: 26, scope: !324)
!344 = !DILocation(line: 0, scope: !324)
!345 = !DILocation(line: 74, column: 9, scope: !324)
!346 = !DILocation(line: 76, column: 11, scope: !347)
!347 = distinct !DILexicalBlock(scope: !324, file: !1, line: 76, column: 7)
!348 = !DILocation(line: 76, column: 7, scope: !324)
!349 = !DILocation(line: 80, column: 14, scope: !324)
!350 = !DILocation(line: 81, column: 19, scope: !324)
!351 = !DILocation(line: 86, column: 7, scope: !352)
!352 = distinct !DILexicalBlock(scope: !325, file: !1, line: 86, column: 7)
!353 = !DILocation(line: 86, column: 7, scope: !325)
!354 = !DILocation(line: 89, column: 48, scope: !355)
!355 = distinct !DILexicalBlock(scope: !352, file: !1, line: 87, column: 43)
!356 = !DILocation(line: 89, column: 17, scope: !355)
!357 = !DILocation(line: 89, column: 15, scope: !355)
!358 = !DILocation(line: 91, column: 20, scope: !355)
!359 = !DILocation(line: 92, column: 4, scope: !355)
!360 = !DILocation(line: 95, column: 19, scope: !325)
!361 = !DILocation(line: 101, column: 25, scope: !328)
!362 = !DILocation(line: 0, scope: !328)
!363 = !DILocation(line: 105, column: 9, scope: !328)
!364 = !DILocation(line: 107, column: 11, scope: !365)
!365 = distinct !DILexicalBlock(scope: !328, file: !1, line: 107, column: 7)
!366 = !DILocation(line: 107, column: 7, scope: !328)
!367 = !DILocation(line: 111, column: 14, scope: !328)
!368 = !DILocation(line: 114, column: 3, scope: !328)
!369 = !DILocation(line: 119, column: 14, scope: !370)
!370 = distinct !DILexicalBlock(scope: !325, file: !1, line: 119, column: 7)
!371 = !DILocation(line: 119, column: 18, scope: !370)
!372 = !DILocation(line: 119, column: 7, scope: !325)
!373 = !DILocation(line: 120, column: 4, scope: !374)
!374 = distinct !DILexicalBlock(scope: !370, file: !1, line: 119, column: 23)
!375 = !DILocation(line: 121, column: 18, scope: !374)
!376 = !DILocation(line: 121, column: 4, scope: !374)
!377 = !DILocation(line: 121, column: 22, scope: !374)
!378 = !DILocation(line: 122, column: 4, scope: !374)
!379 = !DILocation(line: 126, column: 33, scope: !325)
!380 = !DILocation(line: 127, column: 14, scope: !325)
!381 = !DILocation(line: 127, column: 34, scope: !325)
!382 = !DILocation(line: 126, column: 18, scope: !325)
!383 = !DILocation(line: 126, column: 16, scope: !325)
!384 = !DILocation(line: 129, column: 19, scope: !325)
!385 = !DILocation(line: 129, column: 3, scope: !325)
!386 = !DILocation(line: 140, column: 28, scope: !387)
!387 = distinct !DILexicalBlock(scope: !325, file: !1, line: 136, column: 6)
!388 = !DILocation(line: 136, column: 3, scope: !325)
!389 = !DILocation(line: 137, column: 17, scope: !390)
!390 = distinct !DILexicalBlock(scope: !387, file: !1, line: 137, column: 8)
!391 = !DILocation(line: 137, column: 8, scope: !387)
!392 = !DILocation(line: 140, column: 45, scope: !387)
!393 = !DILocation(line: 140, column: 34, scope: !387)
!394 = !DILocation(line: 140, column: 20, scope: !387)
!395 = !DILocation(line: 140, column: 4, scope: !387)
!396 = !DILocation(line: 140, column: 18, scope: !387)
!397 = !DILocation(line: 142, column: 4, scope: !387)
!398 = !DILocation(line: 144, column: 12, scope: !325)
!399 = !DILocation(line: 144, column: 25, scope: !325)
!400 = !DILocation(line: 144, column: 3, scope: !387)
!401 = distinct !{!401, !388, !402}
!402 = !DILocation(line: 144, column: 28, scope: !325)
!403 = !DILocation(line: 64, column: 9, scope: !308)
!404 = distinct !{!404, !333, !405}
!405 = !DILocation(line: 151, column: 2, scope: !308)
!406 = !DILocation(line: 156, column: 4, scope: !308)
!407 = !DILocation(line: 155, column: 32, scope: !308)
!408 = !DILocation(line: 153, column: 1, scope: !308)
!409 = !DILocation(line: 156, column: 13, scope: !308)
!410 = !DILocation(line: 156, column: 33, scope: !308)
!411 = !DILocation(line: 155, column: 17, scope: !308)
!412 = !DILocation(line: 155, column: 15, scope: !308)
!413 = !DILocation(line: 158, column: 2, scope: !308)
!414 = !DILocation(line: 159, column: 1, scope: !308)
!415 = distinct !DISubprogram(name: "index_encoder_end", scope: !1, file: !1, line: 163, type: !90, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !416)
!416 = !{!417, !418}
!417 = !DILocalVariable(name: "pcoder", arg: 1, scope: !415, file: !1, line: 163, type: !41)
!418 = !DILocalVariable(name: "allocator", arg: 2, scope: !415, file: !1, line: 163, type: !60)
!419 = !DILocation(line: 0, scope: !415)
!420 = !DILocation(line: 165, column: 2, scope: !415)
!421 = !DILocation(line: 166, column: 2, scope: !415)
!422 = distinct !DISubprogram(name: "lzma_index_encoder", scope: !1, file: !1, line: 210, type: !423, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !449)
!423 = !DISubroutineType(types: !424)
!424 = !{!59, !425, !139}
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_stream", file: !4, line: 490, baseType: !427)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 453, size: 1088, elements: !428)
!428 = !{!429, !430, !431, !432, !433, !434, !435, !436, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !427, file: !4, line: 454, baseType: !77, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !427, file: !4, line: 455, baseType: !69, size: 64, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "total_in", scope: !427, file: !4, line: 456, baseType: !46, size: 64, offset: 128)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !427, file: !4, line: 458, baseType: !85, size: 64, offset: 192)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !427, file: !4, line: 459, baseType: !69, size: 64, offset: 256)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "total_out", scope: !427, file: !4, line: 460, baseType: !46, size: 64, offset: 320)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !427, file: !4, line: 468, baseType: !60, size: 64, offset: 384)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !427, file: !4, line: 471, baseType: !437, size: 64, offset: 448)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_internal", file: !4, line: 411, baseType: !34)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !427, file: !4, line: 479, baseType: !68, size: 64, offset: 512)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !427, file: !4, line: 480, baseType: !68, size: 64, offset: 576)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !427, file: !4, line: 481, baseType: !68, size: 64, offset: 640)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr4", scope: !427, file: !4, line: 482, baseType: !68, size: 64, offset: 704)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !427, file: !4, line: 483, baseType: !46, size: 64, offset: 768)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !427, file: !4, line: 484, baseType: !46, size: 64, offset: 832)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !427, file: !4, line: 485, baseType: !69, size: 64, offset: 896)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !427, file: !4, line: 486, baseType: !69, size: 64, offset: 960)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !427, file: !4, line: 487, baseType: !164, size: 32, offset: 1024)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !427, file: !4, line: 488, baseType: !164, size: 32, offset: 1056)
!449 = !{!450, !451, !452, !456}
!450 = !DILocalVariable(name: "strm", arg: 1, scope: !422, file: !1, line: 210, type: !425)
!451 = !DILocalVariable(name: "i", arg: 2, scope: !422, file: !1, line: 210, type: !139)
!452 = !DILocalVariable(name: "ret_", scope: !453, file: !1, line: 212, type: !455)
!453 = distinct !DILexicalBlock(scope: !454, file: !1, line: 212, column: 2)
!454 = distinct !DILexicalBlock(scope: !422, file: !1, line: 212, column: 2)
!455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!456 = !DILocalVariable(name: "ret_", scope: !454, file: !1, line: 212, type: !455)
!457 = !DILocation(line: 0, scope: !422)
!458 = !DILocation(line: 212, column: 2, scope: !453)
!459 = !DILocation(line: 0, scope: !453)
!460 = !DILocation(line: 212, column: 2, scope: !461)
!461 = distinct !DILexicalBlock(scope: !453, file: !1, line: 212, column: 2)
!462 = !DILocation(line: 212, column: 2, scope: !454)
!463 = !DILocation(line: 0, scope: !249, inlinedAt: !464)
!464 = distinct !DILocation(line: 212, column: 2, scope: !454)
!465 = !DILocation(line: 189, column: 2, scope: !259, inlinedAt: !464)
!466 = !DILocation(line: 189, column: 2, scope: !260, inlinedAt: !464)
!467 = !DILocation(line: 191, column: 8, scope: !263, inlinedAt: !464)
!468 = !DILocation(line: 191, column: 6, scope: !249, inlinedAt: !464)
!469 = !DILocation(line: 194, column: 12, scope: !266, inlinedAt: !464)
!470 = !DILocation(line: 194, column: 18, scope: !266, inlinedAt: !464)
!471 = !DILocation(line: 194, column: 6, scope: !249, inlinedAt: !464)
!472 = !DILocation(line: 195, column: 17, scope: !270, inlinedAt: !464)
!473 = !DILocation(line: 195, column: 15, scope: !270, inlinedAt: !464)
!474 = !DILocation(line: 196, column: 19, scope: !273, inlinedAt: !464)
!475 = !DILocation(line: 196, column: 7, scope: !270, inlinedAt: !464)
!476 = !DILocation(line: 199, column: 9, scope: !270, inlinedAt: !464)
!477 = !DILocation(line: 199, column: 14, scope: !270, inlinedAt: !464)
!478 = !DILocation(line: 200, column: 9, scope: !270, inlinedAt: !464)
!479 = !DILocation(line: 200, column: 13, scope: !270, inlinedAt: !464)
!480 = !DILocation(line: 201, column: 2, scope: !270, inlinedAt: !464)
!481 = !DILocation(line: 0, scope: !454)
!482 = !DILocation(line: 212, column: 2, scope: !483)
!483 = distinct !DILexicalBlock(scope: !484, file: !1, line: 212, column: 2)
!484 = distinct !DILexicalBlock(scope: !454, file: !1, line: 212, column: 2)
!485 = !DILocation(line: 203, column: 28, scope: !249, inlinedAt: !464)
!486 = !DILocation(line: 0, scope: !282, inlinedAt: !487)
!487 = distinct !DILocation(line: 203, column: 2, scope: !249, inlinedAt: !464)
!488 = !DILocation(line: 174, column: 31, scope: !282, inlinedAt: !487)
!489 = !DILocation(line: 174, column: 2, scope: !282, inlinedAt: !487)
!490 = !DILocation(line: 176, column: 18, scope: !282, inlinedAt: !487)
!491 = !DILocation(line: 177, column: 9, scope: !282, inlinedAt: !487)
!492 = !DILocation(line: 177, column: 15, scope: !282, inlinedAt: !487)
!493 = !DILocation(line: 178, column: 9, scope: !282, inlinedAt: !487)
!494 = !DILocation(line: 178, column: 13, scope: !282, inlinedAt: !487)
!495 = !DILocation(line: 179, column: 9, scope: !282, inlinedAt: !487)
!496 = !DILocation(line: 179, column: 15, scope: !282, inlinedAt: !487)
!497 = !DILocation(line: 214, column: 8, scope: !422)
!498 = !DILocation(line: 214, column: 18, scope: !422)
!499 = !DILocation(line: 214, column: 46, scope: !422)
!500 = !DILocation(line: 215, column: 8, scope: !422)
!501 = !DILocation(line: 215, column: 2, scope: !422)
!502 = !DILocation(line: 215, column: 49, scope: !422)
!503 = !DILocation(line: 217, column: 2, scope: !422)
!504 = !DILocation(line: 218, column: 1, scope: !422)
!505 = !DISubprogram(name: "lzma_strm_init", scope: !33, file: !33, line: 220, type: !506, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!506 = !DISubroutineType(types: !507)
!507 = !{!59, !425}
!508 = !DISubprogram(name: "lzma_end", scope: !4, file: !4, line: 546, type: !509, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!509 = !DISubroutineType(types: !510)
!510 = !{null, !425}
!511 = distinct !DISubprogram(name: "lzma_index_buffer_encode", scope: !1, file: !1, line: 222, type: !512, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !514)
!512 = !DISubroutineType(types: !513)
!513 = !{!59, !139, !85, !83, !69}
!514 = !{!515, !516, !517, !518, !519, !520, !521}
!515 = !DILocalVariable(name: "i", arg: 1, scope: !511, file: !1, line: 222, type: !139)
!516 = !DILocalVariable(name: "out", arg: 2, scope: !511, file: !1, line: 223, type: !85)
!517 = !DILocalVariable(name: "out_pos", arg: 3, scope: !511, file: !1, line: 223, type: !83)
!518 = !DILocalVariable(name: "out_size", arg: 4, scope: !511, file: !1, line: 223, type: !69)
!519 = !DILocalVariable(name: "coder", scope: !511, file: !1, line: 235, type: !135)
!520 = !DILocalVariable(name: "out_start", scope: !511, file: !1, line: 240, type: !321)
!521 = !DILocalVariable(name: "ret", scope: !511, file: !1, line: 241, type: !59)
!522 = distinct !DIAssignID()
!523 = !DILocation(line: 0, scope: !511)
!524 = !DILocation(line: 226, column: 8, scope: !525)
!525 = distinct !DILexicalBlock(scope: !511, file: !1, line: 226, column: 6)
!526 = !DILocation(line: 226, column: 16, scope: !525)
!527 = !DILocation(line: 226, column: 53, scope: !525)
!528 = !DILocation(line: 226, column: 62, scope: !525)
!529 = !DILocation(line: 226, column: 6, scope: !511)
!530 = !DILocation(line: 230, column: 15, scope: !531)
!531 = distinct !DILexicalBlock(scope: !511, file: !1, line: 230, column: 6)
!532 = !DILocation(line: 230, column: 28, scope: !531)
!533 = !DILocation(line: 230, column: 26, scope: !531)
!534 = !DILocation(line: 230, column: 6, scope: !511)
!535 = !DILocation(line: 235, column: 2, scope: !511)
!536 = !DILocation(line: 0, scope: !282, inlinedAt: !537)
!537 = distinct !DILocation(line: 236, column: 2, scope: !511)
!538 = !DILocation(line: 174, column: 31, scope: !282, inlinedAt: !537)
!539 = !DILocation(line: 174, column: 2, scope: !282, inlinedAt: !537)
!540 = !DILocation(line: 176, column: 18, scope: !282, inlinedAt: !537)
!541 = distinct !DIAssignID()
!542 = !DILocation(line: 177, column: 9, scope: !282, inlinedAt: !537)
!543 = !DILocation(line: 177, column: 15, scope: !282, inlinedAt: !537)
!544 = distinct !DIAssignID()
!545 = !DILocation(line: 178, column: 9, scope: !282, inlinedAt: !537)
!546 = !DILocation(line: 178, column: 13, scope: !282, inlinedAt: !537)
!547 = distinct !DIAssignID()
!548 = !DILocation(line: 179, column: 9, scope: !282, inlinedAt: !537)
!549 = !DILocation(line: 179, column: 15, scope: !282, inlinedAt: !537)
!550 = distinct !DIAssignID()
!551 = !DILocation(line: 240, column: 27, scope: !511)
!552 = !DILocation(line: 241, column: 17, scope: !511)
!553 = !DILocation(line: 244, column: 10, scope: !554)
!554 = distinct !DILexicalBlock(scope: !511, file: !1, line: 244, column: 6)
!555 = !DILocation(line: 244, column: 6, scope: !511)
!556 = !DILocation(line: 251, column: 12, scope: !557)
!557 = distinct !DILexicalBlock(scope: !554, file: !1, line: 246, column: 9)
!558 = !DILocation(line: 0, scope: !554)
!559 = !DILocation(line: 256, column: 1, scope: !511)
!560 = !DISubprogram(name: "lzma_index_size", scope: !142, file: !142, line: 424, type: !561, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!561 = !DISubroutineType(types: !562)
!562 = !{!44, !139}
!563 = !DISubprogram(name: "lzma_index_block_count", scope: !142, file: !142, line: 415, type: !561, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!564 = !DISubprogram(name: "lzma_vli_encode", scope: !45, file: !45, line: 115, type: !565, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!565 = !DISubroutineType(types: !566)
!566 = !{!59, !44, !83, !85, !83, !69}
!567 = !DISubprogram(name: "lzma_index_iter_next", scope: !142, file: !142, line: 514, type: !568, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!568 = !DISubroutineType(types: !569)
!569 = !{!169, !570, !571}
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_index_iter_mode", file: !142, line: 268, baseType: !234)
!572 = !DISubprogram(name: "lzma_index_padding_size", scope: !573, file: !573, line: 28, type: !574, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!573 = !DIFile(filename: "liblzma/common/index.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "8c1da33cfb6445c1ed40367774c91b69")
!574 = !DISubroutineType(types: !575)
!575 = !{!159, !139}
!576 = !DISubprogram(name: "lzma_crc32", scope: !26, file: !26, line: 119, type: !577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!577 = !DISubroutineType(types: !578)
!578 = !{!159, !77, !69, !159}
!579 = !DISubprogram(name: "lzma_free", scope: !33, file: !33, line: 215, type: !580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!580 = !DISubroutineType(types: !581)
!581 = !{null, !68, !60}
!582 = !DISubprogram(name: "lzma_index_iter_init", scope: !142, file: !142, line: 487, type: !583, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!583 = !DISubroutineType(types: !584)
!584 = !{null, !570, !139}
