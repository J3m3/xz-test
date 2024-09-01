; ModuleID = 'liblzma/simple/simple_coder.c'
source_filename = "liblzma/simple/simple_coder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_simple_coder_init(ptr nocapture noundef %next, ptr noundef %allocator, ptr noundef %filters, ptr noundef %filter, i64 noundef %simple_size, i64 noundef %unfiltered_max, i32 noundef %alignment, i1 noundef zeroext %is_encoder) local_unnamed_addr #0 !dbg !148 {
entry:
    #dbg_value(ptr %next, !165, !DIExpression(), !183)
    #dbg_value(ptr %allocator, !166, !DIExpression(), !183)
    #dbg_value(ptr %filters, !167, !DIExpression(), !183)
    #dbg_value(ptr %filter, !168, !DIExpression(), !183)
    #dbg_value(i64 %simple_size, !169, !DIExpression(), !183)
    #dbg_value(i64 %unfiltered_max, !170, !DIExpression(), !183)
    #dbg_value(i32 %alignment, !171, !DIExpression(), !183)
  %storedv = zext i1 %is_encoder to i8
    #dbg_value(i8 %storedv, !172, !DIExpression(), !183)
  %0 = load ptr, ptr %next, align 8, !dbg !184
  %cmp = icmp eq ptr %0, null, !dbg !186
  br i1 %cmp, label %if.then, label %if.end27, !dbg !187

if.then:                                          ; preds = %entry
  %mul = shl i64 %unfiltered_max, 1, !dbg !188
  %add = add i64 %mul, 128, !dbg !190
  %call = tail call ptr @lzma_alloc(i64 noundef %add, ptr noundef %allocator) #5, !dbg !191
  store ptr %call, ptr %next, align 8, !dbg !192
  %cmp3 = icmp eq ptr %call, null, !dbg !193
  br i1 %cmp3, label %return, label %if.end, !dbg !195

if.end:                                           ; preds = %if.then
  %code = getelementptr inbounds i8, ptr %next, i64 24, !dbg !196
  store ptr @simple_code, ptr %code, align 8, !dbg !197
  %end = getelementptr inbounds i8, ptr %next, i64 32, !dbg !198
  store ptr @simple_coder_end, ptr %end, align 8, !dbg !199
  %update = getelementptr inbounds i8, ptr %next, i64 56, !dbg !200
  store ptr @simple_coder_update, ptr %update, align 8, !dbg !201
  store ptr null, ptr %call, align 8, !dbg !202
  %.compoundliteral.sroa.2.0.next6.sroa_idx = getelementptr inbounds i8, ptr %call, i64 8, !dbg !202
  store i64 -1, ptr %.compoundliteral.sroa.2.0.next6.sroa_idx, align 8, !dbg !202
  %.compoundliteral.sroa.3.0.next6.sroa_idx = getelementptr inbounds i8, ptr %call, i64 16, !dbg !202
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.compoundliteral.sroa.3.0.next6.sroa_idx, i8 0, i64 48, i1 false), !dbg !202
  %1 = load ptr, ptr %next, align 8, !dbg !203
  %filter12 = getelementptr inbounds i8, ptr %1, i64 72, !dbg !204
  store ptr %filter, ptr %filter12, align 8, !dbg !205
  %2 = load ptr, ptr %next, align 8, !dbg !206
  %allocated = getelementptr inbounds i8, ptr %2, i64 96, !dbg !207
  store i64 %mul, ptr %allocated, align 8, !dbg !208
  %cmp15.not = icmp eq i64 %simple_size, 0, !dbg !209
  br i1 %cmp15.not, label %if.else, label %if.then16, !dbg !211

if.then16:                                        ; preds = %if.end
  %call17 = tail call ptr @lzma_alloc(i64 noundef %simple_size, ptr noundef %allocator) #5, !dbg !212
  %3 = load ptr, ptr %next, align 8, !dbg !214
  %simple = getelementptr inbounds i8, ptr %3, i64 80, !dbg !215
  store ptr %call17, ptr %simple, align 8, !dbg !216
  %4 = load ptr, ptr %next, align 8, !dbg !217
  %simple20 = getelementptr inbounds i8, ptr %4, i64 80, !dbg !219
  %5 = load ptr, ptr %simple20, align 8, !dbg !219
  %cmp21 = icmp eq ptr %5, null, !dbg !220
  br i1 %cmp21, label %return, label %if.end27, !dbg !221

if.else:                                          ; preds = %if.end
  %6 = load ptr, ptr %next, align 8, !dbg !222
  %simple25 = getelementptr inbounds i8, ptr %6, i64 80, !dbg !224
  store ptr null, ptr %simple25, align 8, !dbg !225
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then16, %entry
  %options = getelementptr inbounds i8, ptr %filters, i64 16, !dbg !226
  %7 = load ptr, ptr %options, align 8, !dbg !226
  %cmp28.not = icmp eq ptr %7, null, !dbg !227
  br i1 %cmp28.not, label %if.else38, label %if.then29, !dbg !228

if.then29:                                        ; preds = %if.end27
    #dbg_value(ptr %7, !173, !DIExpression(), !229)
  %8 = load i32, ptr %7, align 4, !dbg !230
  %9 = load ptr, ptr %next, align 8, !dbg !231
  %now_pos = getelementptr inbounds i8, ptr %9, i64 88, !dbg !232
  store i32 %8, ptr %now_pos, align 8, !dbg !233
  %10 = load ptr, ptr %next, align 8, !dbg !234
  %now_pos35 = getelementptr inbounds i8, ptr %10, i64 88, !dbg !236
  %11 = load i32, ptr %now_pos35, align 8, !dbg !236
  %sub = add i32 %alignment, -1, !dbg !237
  %and = and i32 %11, %sub, !dbg !238
  %tobool.not.not = icmp eq i32 %and, 0, !dbg !238
  br i1 %tobool.not.not, label %if.end41, label %return

if.else38:                                        ; preds = %if.end27
  %12 = load ptr, ptr %next, align 8, !dbg !239
  %now_pos40 = getelementptr inbounds i8, ptr %12, i64 88, !dbg !241
  store i32 0, ptr %now_pos40, align 8, !dbg !242
  %.pre = load ptr, ptr %next, align 8, !dbg !243
  br label %if.end41

if.end41:                                         ; preds = %if.then29, %if.else38
  %13 = phi ptr [ %10, %if.then29 ], [ %.pre, %if.else38 ], !dbg !243
  %is_encoder43 = getelementptr inbounds i8, ptr %13, i64 65, !dbg !244
  store i8 %storedv, ptr %is_encoder43, align 1, !dbg !245
  %14 = load ptr, ptr %next, align 8, !dbg !246
  %end_was_reached = getelementptr inbounds i8, ptr %14, i64 64, !dbg !247
  store i8 0, ptr %end_was_reached, align 8, !dbg !248
  %15 = load ptr, ptr %next, align 8, !dbg !249
  %pos = getelementptr inbounds i8, ptr %15, i64 104, !dbg !250
  store i64 0, ptr %pos, align 8, !dbg !251
  %16 = load ptr, ptr %next, align 8, !dbg !252
  %filtered = getelementptr inbounds i8, ptr %16, i64 112, !dbg !253
  store i64 0, ptr %filtered, align 8, !dbg !254
  %17 = load ptr, ptr %next, align 8, !dbg !255
  %size = getelementptr inbounds i8, ptr %17, i64 120, !dbg !256
  store i64 0, ptr %size, align 8, !dbg !257
  %18 = load ptr, ptr %next, align 8, !dbg !258
  %add.ptr = getelementptr inbounds i8, ptr %filters, i64 24, !dbg !259
  %call51 = tail call i32 @lzma_next_filter_init(ptr noundef %18, ptr noundef %allocator, ptr noundef nonnull %add.ptr) #5, !dbg !260
  br label %return, !dbg !261

return:                                           ; preds = %if.then29, %if.then16, %if.then, %if.end41
  %retval.1 = phi i32 [ 8, %if.then29 ], [ %call51, %if.end41 ], [ 5, %if.then ], [ 5, %if.then16 ], !dbg !183
  ret i32 %retval.1, !dbg !262
}

declare !dbg !263 ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @simple_code(ptr noundef %pcoder, ptr noundef %allocator, ptr noalias noundef %in, ptr noalias noundef %in_pos, i64 noundef %in_size, ptr noalias noundef %out, ptr noalias noundef %out_pos, i64 noundef %out_size, i32 noundef %action) #0 !dbg !266 {
entry:
    #dbg_value(ptr %pcoder, !268, !DIExpression(), !294)
    #dbg_value(ptr %allocator, !269, !DIExpression(), !294)
    #dbg_value(ptr %in, !270, !DIExpression(), !294)
    #dbg_value(ptr %in_pos, !271, !DIExpression(), !294)
    #dbg_value(i64 %in_size, !272, !DIExpression(), !294)
    #dbg_value(ptr %out, !273, !DIExpression(), !294)
    #dbg_value(ptr %out_pos, !274, !DIExpression(), !294)
    #dbg_value(i64 %out_size, !275, !DIExpression(), !294)
    #dbg_value(i32 %action, !276, !DIExpression(), !294)
    #dbg_value(ptr %pcoder, !277, !DIExpression(), !294)
  %cmp = icmp eq i32 %action, 1, !dbg !295
  br i1 %cmp, label %cleanup106, label %if.end, !dbg !297

if.end:                                           ; preds = %entry
  %pos = getelementptr inbounds i8, ptr %pcoder, i64 104, !dbg !298
  %0 = load i64, ptr %pos, align 8, !dbg !298
  %filtered = getelementptr inbounds i8, ptr %pcoder, i64 112, !dbg !300
  %1 = load i64, ptr %filtered, align 8, !dbg !300
  %cmp1 = icmp ult i64 %0, %1, !dbg !301
  br i1 %cmp1, label %if.then2, label %if.end12, !dbg !302

if.then2:                                         ; preds = %if.end
  %buffer = getelementptr inbounds i8, ptr %pcoder, i64 128, !dbg !303
  %call = tail call i64 @lzma_bufcpy(ptr noundef nonnull %buffer, ptr noundef nonnull %pos, i64 noundef %1, ptr noundef %out, ptr noundef %out_pos, i64 noundef %out_size) #5, !dbg !305
  %2 = load i64, ptr %pos, align 8, !dbg !306
  %3 = load i64, ptr %filtered, align 8, !dbg !308
  %cmp7 = icmp ult i64 %2, %3, !dbg !309
  br i1 %cmp7, label %cleanup106, label %if.end9, !dbg !310

if.end9:                                          ; preds = %if.then2
  %end_was_reached = getelementptr inbounds i8, ptr %pcoder, i64 64, !dbg !311
  %4 = load i8, ptr %end_was_reached, align 8, !dbg !311, !range !313, !noundef !314
  %loadedv = trunc nuw i8 %4 to i1, !dbg !311
  br i1 %loadedv, label %cleanup106, label %if.end12, !dbg !315

if.end12:                                         ; preds = %if.end9, %if.end
  %5 = phi i64 [ %0, %if.end ], [ %2, %if.end9 ], !dbg !316
  store i64 0, ptr %filtered, align 8, !dbg !317
  %6 = load i64, ptr %out_pos, align 8, !dbg !318
  %sub = sub i64 %out_size, %6, !dbg !319
    #dbg_value(i64 %sub, !278, !DIExpression(), !294)
  %size = getelementptr inbounds i8, ptr %pcoder, i64 120, !dbg !320
  %7 = load i64, ptr %size, align 8, !dbg !320
  %sub15 = sub i64 %7, %5, !dbg !321
    #dbg_value(i64 %sub15, !280, !DIExpression(), !294)
  %cmp16 = icmp ugt i64 %sub, %sub15, !dbg !322
  %cmp17 = icmp eq i64 %7, %5
  %or.cond = or i1 %cmp17, %cmp16, !dbg !323
  br i1 %or.cond, label %if.then18, label %if.else50, !dbg !323

if.then18:                                        ; preds = %if.end12
    #dbg_value(i64 %6, !281, !DIExpression(), !324)
  %add.ptr = getelementptr inbounds i8, ptr %out, i64 %6, !dbg !325
  %buffer19 = getelementptr inbounds i8, ptr %pcoder, i64 128, !dbg !326
  %add.ptr22 = getelementptr inbounds i8, ptr %buffer19, i64 %5, !dbg !327
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr nonnull align 1 %add.ptr22, i64 %sub15, i1 false), !dbg !328
  %add = add i64 %sub15, %6, !dbg !329
  store i64 %add, ptr %out_pos, align 8, !dbg !329
  tail call void @llvm.experimental.noalias.scope.decl(metadata !330), !dbg !333
    #dbg_value(ptr %pcoder, !334, !DIExpression(), !349)
    #dbg_value(ptr %allocator, !337, !DIExpression(), !349)
    #dbg_value(ptr %in, !338, !DIExpression(), !349)
    #dbg_value(ptr %in_pos, !339, !DIExpression(), !349)
    #dbg_value(i64 %in_size, !340, !DIExpression(), !349)
    #dbg_value(ptr %out, !341, !DIExpression(), !349)
    #dbg_value(ptr %out_pos, !342, !DIExpression(), !349)
    #dbg_value(i64 %out_size, !343, !DIExpression(), !349)
    #dbg_value(i32 %action, !344, !DIExpression(), !349)
    #dbg_value(ptr %pcoder, !345, !DIExpression(), !349)
  %code.i = getelementptr inbounds i8, ptr %pcoder, i64 24, !dbg !351
  %8 = load ptr, ptr %code.i, align 8, !dbg !351, !noalias !352
  %cmp.i = icmp eq ptr %8, null, !dbg !356
  br i1 %cmp.i, label %if.then.i, label %if.else.i, !dbg !357

if.then.i:                                        ; preds = %if.then18
  %call.i = tail call i64 @lzma_bufcpy(ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %out_size) #5, !dbg !358
  %is_encoder.i = getelementptr inbounds i8, ptr %pcoder, i64 65, !dbg !360
  %9 = load i8, ptr %is_encoder.i, align 1, !dbg !360, !range !313, !noalias !352, !noundef !314
  %loadedv.i = trunc nuw i8 %9 to i1, !dbg !360
  %cmp1.i = icmp eq i32 %action, 3
  %or.cond.i = and i1 %cmp1.i, %loadedv.i, !dbg !362
  br i1 %or.cond.i, label %land.lhs.true2.i, label %cleanup.cont, !dbg !362

land.lhs.true2.i:                                 ; preds = %if.then.i
  %10 = load i64, ptr %in_pos, align 8, !dbg !363, !alias.scope !330, !noalias !364
  %cmp3.i = icmp eq i64 %10, %in_size, !dbg !365
  br i1 %cmp3.i, label %cleanup.cont.sink.split, label %cleanup.cont, !dbg !366

if.else.i:                                        ; preds = %if.then18
  %11 = load ptr, ptr %pcoder, align 8, !dbg !367, !noalias !352
  %call9.i = tail call i32 %8(ptr noundef %11, ptr noundef %allocator, ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %out_size, i32 noundef %action) #5, !dbg !368
    #dbg_value(i32 %call9.i, !346, !DIExpression(), !369)
  switch i32 %call9.i, label %cleanup106 [
    i32 1, label %cleanup.cont.sink.split
    i32 0, label %cleanup.cont
  ], !dbg !370

cleanup.cont.sink.split:                          ; preds = %if.else.i, %land.lhs.true2.i
  %end_was_reached12.i = getelementptr inbounds i8, ptr %pcoder, i64 64, !dbg !371
  store i8 1, ptr %end_was_reached12.i, align 8, !dbg !371, !noalias !352
  br label %cleanup.cont, !dbg !372

cleanup.cont:                                     ; preds = %cleanup.cont.sink.split, %if.else.i, %if.then.i, %land.lhs.true2.i
    #dbg_value(i32 0, !284, !DIExpression(), !373)
  %12 = load i64, ptr %out_pos, align 8, !dbg !372
  %sub28 = sub i64 %12, %6, !dbg !374
    #dbg_value(i64 %sub28, !287, !DIExpression(), !324)
    #dbg_value(ptr %pcoder, !375, !DIExpression(), !384)
    #dbg_value(ptr %add.ptr, !380, !DIExpression(), !384)
    #dbg_value(i64 %sub28, !381, !DIExpression(), !384)
    #dbg_value(ptr %pcoder, !382, !DIExpression(), !384)
  %filter.i = getelementptr inbounds i8, ptr %pcoder, i64 72, !dbg !386
  %13 = load ptr, ptr %filter.i, align 8, !dbg !386
  %simple.i = getelementptr inbounds i8, ptr %pcoder, i64 80, !dbg !387
  %14 = load ptr, ptr %simple.i, align 8, !dbg !387
  %now_pos.i = getelementptr inbounds i8, ptr %pcoder, i64 88, !dbg !388
  %15 = load i32, ptr %now_pos.i, align 8, !dbg !388
  %is_encoder.i190 = getelementptr inbounds i8, ptr %pcoder, i64 65, !dbg !389
  %16 = load i8, ptr %is_encoder.i190, align 1, !dbg !389, !range !313, !noundef !314
  %loadedv.i191 = trunc nuw i8 %16 to i1, !dbg !389
  %call.i192 = tail call i64 %13(ptr noundef %14, i32 noundef %15, i1 noundef zeroext %loadedv.i191, ptr noundef %add.ptr, i64 noundef %sub28) #5, !dbg !390
    #dbg_value(i64 %call.i192, !383, !DIExpression(), !384)
  %17 = load i32, ptr %now_pos.i, align 8, !dbg !391
  %18 = trunc i64 %call.i192 to i32, !dbg !391
  %conv2.i = add i32 %17, %18, !dbg !391
  store i32 %conv2.i, ptr %now_pos.i, align 8, !dbg !391
    #dbg_value(i64 %call.i192, !288, !DIExpression(), !324)
  %sub32 = sub i64 %sub28, %call.i192, !dbg !392
    #dbg_value(i64 %sub32, !289, !DIExpression(), !324)
  store i64 0, ptr %pos, align 8, !dbg !393
  store i64 %sub32, ptr %size, align 8, !dbg !394
  %end_was_reached35 = getelementptr inbounds i8, ptr %pcoder, i64 64, !dbg !395
  %19 = load i8, ptr %end_was_reached35, align 8, !dbg !395, !range !313, !noundef !314
  %loadedv36 = trunc nuw i8 %19 to i1, !dbg !395
  br i1 %loadedv36, label %if.end65.thread, label %if.else, !dbg !397

if.end65.thread:                                  ; preds = %cleanup.cont
  store i64 0, ptr %size, align 8, !dbg !398
  br label %if.end96, !dbg !400

if.else:                                          ; preds = %cleanup.cont
  %cmp39.not = icmp eq i64 %sub28, %call.i192, !dbg !401
  br i1 %cmp39.not, label %if.end65, label %if.then40, !dbg !403

if.then40:                                        ; preds = %if.else
  %20 = load i64, ptr %out_pos, align 8, !dbg !404
  %sub41 = sub i64 %20, %sub32, !dbg !404
  store i64 %sub41, ptr %out_pos, align 8, !dbg !404
  %add.ptr44 = getelementptr inbounds i8, ptr %out, i64 %sub41, !dbg !406
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %buffer19, ptr align 1 %add.ptr44, i64 %sub32, i1 false), !dbg !407
  br label %if.end65, !dbg !408

if.else50:                                        ; preds = %if.end12
  %cmp52.not = icmp eq i64 %5, 0, !dbg !409
  br i1 %cmp52.not, label %if.end65, label %if.then53, !dbg !411

if.then53:                                        ; preds = %if.else50
  %buffer54 = getelementptr inbounds i8, ptr %pcoder, i64 128, !dbg !412
  %add.ptr59 = getelementptr inbounds i8, ptr %buffer54, i64 %5, !dbg !414
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %buffer54, ptr nonnull align 1 %add.ptr59, i64 %sub15, i1 false), !dbg !415
  store i64 %sub15, ptr %size, align 8, !dbg !416
  store i64 0, ptr %pos, align 8, !dbg !417
  br label %if.end65, !dbg !418

if.end65:                                         ; preds = %if.else, %if.then40, %if.else50, %if.then53
  %21 = phi i64 [ %sub15, %if.then53 ], [ %7, %if.else50 ], [ %sub32, %if.then40 ], [ %sub32, %if.else ], !dbg !419
  %cmp67.not = icmp eq i64 %21, 0, !dbg !420
  br i1 %cmp67.not, label %if.end96, label %if.then68, !dbg !400

if.then68:                                        ; preds = %if.end65
  %buffer70 = getelementptr inbounds i8, ptr %pcoder, i64 128, !dbg !421
  %allocated = getelementptr inbounds i8, ptr %pcoder, i64 96, !dbg !422
  %22 = load i64, ptr %allocated, align 8, !dbg !422
  tail call void @llvm.experimental.noalias.scope.decl(metadata !423), !dbg !426
    #dbg_value(ptr %pcoder, !334, !DIExpression(), !427)
    #dbg_value(ptr %allocator, !337, !DIExpression(), !427)
    #dbg_value(ptr %in, !338, !DIExpression(), !427)
    #dbg_value(ptr %in_pos, !339, !DIExpression(), !427)
    #dbg_value(i64 %in_size, !340, !DIExpression(), !427)
    #dbg_value(ptr %buffer70, !341, !DIExpression(), !427)
    #dbg_value(ptr %size, !342, !DIExpression(), !427)
    #dbg_value(i64 %22, !343, !DIExpression(), !427)
    #dbg_value(i32 %action, !344, !DIExpression(), !427)
    #dbg_value(ptr %pcoder, !345, !DIExpression(), !427)
  %code.i193 = getelementptr inbounds i8, ptr %pcoder, i64 24, !dbg !429
  %23 = load ptr, ptr %code.i193, align 8, !dbg !429, !noalias !430
  %cmp.i194 = icmp eq ptr %23, null, !dbg !434
  br i1 %cmp.i194, label %if.then.i201, label %if.else.i195, !dbg !435

if.then.i201:                                     ; preds = %if.then68
  %call.i202 = tail call i64 @lzma_bufcpy(ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size, ptr noundef nonnull %buffer70, ptr noundef nonnull %size, i64 noundef %22) #5, !dbg !436
  %is_encoder.i203 = getelementptr inbounds i8, ptr %pcoder, i64 65, !dbg !437
  %24 = load i8, ptr %is_encoder.i203, align 1, !dbg !437, !range !313, !noalias !430, !noundef !314
  %loadedv.i204 = trunc nuw i8 %24 to i1, !dbg !437
  %cmp1.i205 = icmp eq i32 %action, 3
  %or.cond.i206 = and i1 %cmp1.i205, %loadedv.i204, !dbg !438
  br i1 %or.cond.i206, label %land.lhs.true2.i207, label %cleanup.cont79, !dbg !438

land.lhs.true2.i207:                              ; preds = %if.then.i201
  %25 = load i64, ptr %in_pos, align 8, !dbg !439, !alias.scope !423, !noalias !440
  %cmp3.i208 = icmp eq i64 %25, %in_size, !dbg !441
  br i1 %cmp3.i208, label %cleanup.cont79.sink.split, label %cleanup.cont79, !dbg !442

if.else.i195:                                     ; preds = %if.then68
  %26 = load ptr, ptr %pcoder, align 8, !dbg !443, !noalias !430
  %call9.i196 = tail call i32 %23(ptr noundef %26, ptr noundef %allocator, ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size, ptr noundef nonnull %buffer70, ptr noundef nonnull %size, i64 noundef %22, i32 noundef %action) #5, !dbg !444
    #dbg_value(i32 %call9.i196, !346, !DIExpression(), !445)
  switch i32 %call9.i196, label %cleanup106 [
    i32 1, label %cleanup.cont79.sink.split
    i32 0, label %cleanup.cont79
  ], !dbg !446

cleanup.cont79.sink.split:                        ; preds = %if.else.i195, %land.lhs.true2.i207
  %end_was_reached12.i200 = getelementptr inbounds i8, ptr %pcoder, i64 64, !dbg !447
  store i8 1, ptr %end_was_reached12.i200, align 8, !dbg !447, !noalias !430
  br label %cleanup.cont79, !dbg !448

cleanup.cont79:                                   ; preds = %cleanup.cont79.sink.split, %if.else.i195, %if.then.i201, %land.lhs.true2.i207
    #dbg_value(i32 0, !290, !DIExpression(), !449)
  %27 = load i64, ptr %size, align 8, !dbg !448
    #dbg_value(ptr %pcoder, !375, !DIExpression(), !450)
    #dbg_value(ptr %buffer70, !380, !DIExpression(), !450)
    #dbg_value(i64 %27, !381, !DIExpression(), !450)
    #dbg_value(ptr %pcoder, !382, !DIExpression(), !450)
  %filter.i212 = getelementptr inbounds i8, ptr %pcoder, i64 72, !dbg !452
  %28 = load ptr, ptr %filter.i212, align 8, !dbg !452
  %simple.i213 = getelementptr inbounds i8, ptr %pcoder, i64 80, !dbg !453
  %29 = load ptr, ptr %simple.i213, align 8, !dbg !453
  %now_pos.i214 = getelementptr inbounds i8, ptr %pcoder, i64 88, !dbg !454
  %30 = load i32, ptr %now_pos.i214, align 8, !dbg !454
  %is_encoder.i215 = getelementptr inbounds i8, ptr %pcoder, i64 65, !dbg !455
  %31 = load i8, ptr %is_encoder.i215, align 1, !dbg !455, !range !313, !noundef !314
  %loadedv.i216 = trunc nuw i8 %31 to i1, !dbg !455
  %call.i217 = tail call i64 %28(ptr noundef %29, i32 noundef %30, i1 noundef zeroext %loadedv.i216, ptr noundef nonnull %buffer70, i64 noundef %27) #5, !dbg !456
    #dbg_value(i64 %call.i217, !383, !DIExpression(), !450)
  %32 = load i32, ptr %now_pos.i214, align 8, !dbg !457
  %33 = trunc i64 %call.i217 to i32, !dbg !457
  %conv2.i218 = add i32 %32, %33, !dbg !457
  store i32 %conv2.i218, ptr %now_pos.i214, align 8, !dbg !457
  store i64 %call.i217, ptr %filtered, align 8, !dbg !458
  %end_was_reached85 = getelementptr inbounds i8, ptr %pcoder, i64 64, !dbg !459
  %34 = load i8, ptr %end_was_reached85, align 8, !dbg !459, !range !313, !noundef !314
  %loadedv86 = trunc nuw i8 %34 to i1, !dbg !459
  br i1 %loadedv86, label %if.then87, label %if.end90, !dbg !461

if.then87:                                        ; preds = %cleanup.cont79
  %35 = load i64, ptr %size, align 8, !dbg !462
  store i64 %35, ptr %filtered, align 8, !dbg !463
  br label %if.end90, !dbg !464

if.end90:                                         ; preds = %if.then87, %cleanup.cont79
  %36 = phi i64 [ %35, %if.then87 ], [ %call.i217, %cleanup.cont79 ], !dbg !465
  %call95 = tail call i64 @lzma_bufcpy(ptr noundef nonnull %buffer70, ptr noundef nonnull %pos, i64 noundef %36, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %out_size) #5, !dbg !466
  br label %if.end96, !dbg !467

if.end96:                                         ; preds = %if.end65.thread, %if.end90, %if.end65
  %end_was_reached97 = getelementptr inbounds i8, ptr %pcoder, i64 64, !dbg !468
  %37 = load i8, ptr %end_was_reached97, align 8, !dbg !468, !range !313, !noundef !314
  %loadedv98 = trunc nuw i8 %37 to i1, !dbg !468
  br i1 %loadedv98, label %land.lhs.true, label %if.end103, !dbg !470

land.lhs.true:                                    ; preds = %if.end96
  %38 = load i64, ptr %pos, align 8, !dbg !471
  %39 = load i64, ptr %size, align 8, !dbg !472
  %cmp101 = icmp eq i64 %38, %39, !dbg !473
  br i1 %cmp101, label %cleanup106, label %if.end103, !dbg !474

if.end103:                                        ; preds = %land.lhs.true, %if.end96
  br label %cleanup106, !dbg !475

cleanup106:                                       ; preds = %if.else.i195, %if.else.i, %if.end103, %land.lhs.true, %if.end9, %if.then2, %entry
  %retval.4 = phi i32 [ 8, %entry ], [ 0, %if.then2 ], [ 1, %if.end9 ], [ 0, %if.end103 ], [ 1, %land.lhs.true ], [ %call9.i, %if.else.i ], [ %call9.i196, %if.else.i195 ], !dbg !294
  ret i32 %retval.4, !dbg !476
}

; Function Attrs: nounwind uwtable
define internal void @simple_coder_end(ptr noundef %pcoder, ptr noundef %allocator) #0 !dbg !477 {
entry:
    #dbg_value(ptr %pcoder, !479, !DIExpression(), !482)
    #dbg_value(ptr %allocator, !480, !DIExpression(), !482)
    #dbg_value(ptr %pcoder, !481, !DIExpression(), !482)
  tail call void @lzma_next_end(ptr noundef %pcoder, ptr noundef %allocator) #5, !dbg !483
  %simple = getelementptr inbounds i8, ptr %pcoder, i64 80, !dbg !484
  %0 = load ptr, ptr %simple, align 8, !dbg !484
  tail call void @lzma_free(ptr noundef %0, ptr noundef %allocator) #5, !dbg !485
  tail call void @lzma_free(ptr noundef %pcoder, ptr noundef %allocator) #5, !dbg !486
  ret void, !dbg !487
}

; Function Attrs: nounwind uwtable
define internal i32 @simple_coder_update(ptr noundef %pcoder, ptr noundef %allocator, ptr nocapture readnone %filters_null, ptr noundef %reversed_filters) #0 !dbg !488 {
entry:
    #dbg_value(ptr %pcoder, !490, !DIExpression(), !495)
    #dbg_value(ptr %allocator, !491, !DIExpression(), !495)
    #dbg_value(ptr poison, !492, !DIExpression(), !495)
    #dbg_value(ptr %reversed_filters, !493, !DIExpression(), !495)
    #dbg_value(ptr %pcoder, !494, !DIExpression(), !495)
  %add.ptr = getelementptr inbounds i8, ptr %reversed_filters, i64 16, !dbg !496
  %call = tail call i32 @lzma_next_filter_update(ptr noundef %pcoder, ptr noundef %allocator, ptr noundef nonnull %add.ptr) #5, !dbg !497
  ret i32 %call, !dbg !498
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare !dbg !499 i32 @lzma_next_filter_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !500 i64 @lzma_bufcpy(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #3

declare !dbg !503 void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !506 void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !509 i32 @lzma_next_filter_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!140, !141, !142, !143, !144, !145, !146}
!llvm.ident = !{!147}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !32, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "liblzma/simple/simple_coder.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "3e67190b93c2e77773d54577efadbe6e")
!2 = !{!3, !19, !25}
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
!32 = !{!33, !34}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_coder_s", file: !36, line: 21, size: 1024, elements: !37)
!36 = !DIFile(filename: "liblzma/simple/simple_private.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "2921a659cca72849047c4661dc5d5b7e")
!37 = !{!38, !118, !120, !121, !130, !131, !132, !133, !134, !135, !136}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !35, file: !36, line: 23, baseType: !39, size: 512)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_next_coder", file: !40, line: 80, baseType: !41)
!40 = !DIFile(filename: "liblzma/common/common.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_next_coder_s", file: !40, line: 124, size: 512, elements: !42)
!42 = !{!43, !46, !54, !57, !89, !94, !101, !106}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !41, file: !40, line: 126, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_coder", file: !40, line: 78, baseType: null)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !41, file: !40, line: 130, baseType: !47, size: 64, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !48, line: 63, baseType: !49)
!48 = !DIFile(filename: "liblzma/api/lzma/vli.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !50, line: 27, baseType: !51)
!50 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !52, line: 45, baseType: !53)
!52 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!53 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !41, file: !40, line: 136, baseType: !55, size: 64, offset: 128)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !56, line: 90, baseType: !53)
!56 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!57 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !41, file: !40, line: 139, baseType: !58, size: 64, offset: 192)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_code_function", file: !40, line: 94, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DISubroutineType(types: !61)
!61 = !{!62, !44, !63, !78, !84, !71, !86, !84, !71, !88}
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !4, line: 403, baseType: !65)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 341, size: 192, elements: !66)
!66 = !{!67, !73, !77}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !65, file: !4, line: 376, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{!33, !33, !71, !71}
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !72, line: 18, baseType: !53)
!72 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!73 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !65, file: !4, line: 390, baseType: !74, size: 64, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DISubroutineType(types: !76)
!76 = !{null, !33, !33}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !65, file: !4, line: 401, baseType: !33, size: 64, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !50, line: 24, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !52, line: 38, baseType: !83)
!83 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!84 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !4, line: 322, baseType: !19)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !41, file: !40, line: 144, baseType: !90, size: 64, offset: 256)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_end_function", file: !40, line: 102, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DISubroutineType(types: !93)
!93 = !{null, !44, !63}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "get_check", scope: !41, file: !40, line: 148, baseType: !95, size: 64, offset: 320)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DISubroutineType(types: !97)
!97 = !{!98, !99}
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !26, line: 55, baseType: !25)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "memconfig", scope: !41, file: !40, line: 152, baseType: !102, size: 64, offset: 384)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DISubroutineType(types: !104)
!104 = !{!62, !44, !105, !105, !49}
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !41, file: !40, line: 157, baseType: !107, size: 64, offset: 448)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DISubroutineType(types: !109)
!109 = !{!62, !44, !63, !110, !110}
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !113, line: 65, baseType: !114)
!113 = !DIFile(filename: "liblzma/api/lzma/filter.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !113, line: 43, size: 128, elements: !115)
!115 = !{!116, !117}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !114, file: !113, line: 54, baseType: !47, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !114, file: !113, line: 63, baseType: !33, size: 64, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "end_was_reached", scope: !35, file: !36, line: 26, baseType: !119, size: 8, offset: 512)
!119 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "is_encoder", scope: !35, file: !36, line: 32, baseType: !119, size: 8, offset: 520)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !35, file: !36, line: 36, baseType: !122, size: 64, offset: 576)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DISubroutineType(types: !124)
!124 = !{!71, !125, !128, !119, !87, !71}
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_simple", file: !36, line: 19, baseType: !127)
!127 = !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_simple_s", file: !36, line: 19, flags: DIFlagFwdDecl)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !50, line: 26, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !52, line: 42, baseType: !5)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "simple", scope: !35, file: !36, line: 41, baseType: !125, size: 64, offset: 640)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "now_pos", scope: !35, file: !36, line: 46, baseType: !128, size: 32, offset: 704)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !35, file: !36, line: 49, baseType: !71, size: 64, offset: 768)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !35, file: !36, line: 53, baseType: !71, size: 64, offset: 832)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "filtered", scope: !35, file: !36, line: 57, baseType: !71, size: 64, offset: 896)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !35, file: !36, line: 61, baseType: !71, size: 64, offset: 960)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !35, file: !36, line: 64, baseType: !137, offset: 1024)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, elements: !138)
!138 = !{!139}
!139 = !DISubrange(count: -1)
!140 = !{i32 7, !"Dwarf Version", i32 5}
!141 = !{i32 2, !"Debug Info Version", i32 3}
!142 = !{i32 1, !"wchar_size", i32 4}
!143 = !{i32 8, !"PIC Level", i32 2}
!144 = !{i32 7, !"PIE Level", i32 2}
!145 = !{i32 7, !"uwtable", i32 2}
!146 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!147 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!148 = distinct !DISubprogram(name: "lzma_simple_coder_init", scope: !1, file: !1, line: 227, type: !149, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !164)
!149 = !DISubroutineType(types: !150)
!150 = !{!62, !151, !63, !152, !122, !71, !71, !128, !119}
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter_info", file: !40, line: 82, baseType: !155)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_filter_info_s", file: !40, line: 109, size: 192, elements: !156)
!156 = !{!157, !158, !163}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !155, file: !40, line: 112, baseType: !47, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !155, file: !40, line: 116, baseType: !159, size: 64, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_init_function", file: !40, line: 86, baseType: !160)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DISubroutineType(types: !162)
!162 = !{!62, !151, !63, !152}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !155, file: !40, line: 119, baseType: !33, size: 64, offset: 128)
!164 = !{!165, !166, !167, !168, !169, !170, !171, !172, !173}
!165 = !DILocalVariable(name: "next", arg: 1, scope: !148, file: !1, line: 227, type: !151)
!166 = !DILocalVariable(name: "allocator", arg: 2, scope: !148, file: !1, line: 227, type: !63)
!167 = !DILocalVariable(name: "filters", arg: 3, scope: !148, file: !1, line: 228, type: !152)
!168 = !DILocalVariable(name: "filter", arg: 4, scope: !148, file: !1, line: 229, type: !122)
!169 = !DILocalVariable(name: "simple_size", arg: 5, scope: !148, file: !1, line: 231, type: !71)
!170 = !DILocalVariable(name: "unfiltered_max", arg: 6, scope: !148, file: !1, line: 231, type: !71)
!171 = !DILocalVariable(name: "alignment", arg: 7, scope: !148, file: !1, line: 232, type: !128)
!172 = !DILocalVariable(name: "is_encoder", arg: 8, scope: !148, file: !1, line: 232, type: !119)
!173 = !DILocalVariable(name: "simple", scope: !174, file: !1, line: 265, type: !176)
!174 = distinct !DILexicalBlock(scope: !175, file: !1, line: 264, column: 34)
!175 = distinct !DILexicalBlock(scope: !148, file: !1, line: 264, column: 6)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !178)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_options_bcj", file: !179, line: 90, baseType: !180)
!179 = !DIFile(filename: "liblzma/api/lzma/bcj.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "a1035092336f34cf9afafbb05b1edd83")
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !179, line: 73, size: 32, elements: !181)
!181 = !{!182}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "start_offset", scope: !180, file: !179, line: 88, baseType: !128, size: 32)
!183 = !DILocation(line: 0, scope: !148)
!184 = !DILocation(line: 235, column: 12, scope: !185)
!185 = distinct !DILexicalBlock(scope: !148, file: !1, line: 235, column: 6)
!186 = !DILocation(line: 235, column: 18, scope: !185)
!187 = !DILocation(line: 235, column: 6, scope: !148)
!188 = !DILocation(line: 241, column: 9, scope: !189)
!189 = distinct !DILexicalBlock(scope: !185, file: !1, line: 235, column: 27)
!190 = !DILocation(line: 241, column: 5, scope: !189)
!191 = !DILocation(line: 240, column: 17, scope: !189)
!192 = !DILocation(line: 240, column: 15, scope: !189)
!193 = !DILocation(line: 242, column: 19, scope: !194)
!194 = distinct !DILexicalBlock(scope: !189, file: !1, line: 242, column: 7)
!195 = !DILocation(line: 242, column: 7, scope: !189)
!196 = !DILocation(line: 245, column: 9, scope: !189)
!197 = !DILocation(line: 245, column: 14, scope: !189)
!198 = !DILocation(line: 246, column: 9, scope: !189)
!199 = !DILocation(line: 246, column: 13, scope: !189)
!200 = !DILocation(line: 247, column: 9, scope: !189)
!201 = !DILocation(line: 247, column: 16, scope: !189)
!202 = !DILocation(line: 249, column: 47, scope: !189)
!203 = !DILocation(line: 250, column: 32, scope: !189)
!204 = !DILocation(line: 250, column: 40, scope: !189)
!205 = !DILocation(line: 250, column: 47, scope: !189)
!206 = !DILocation(line: 251, column: 32, scope: !189)
!207 = !DILocation(line: 251, column: 40, scope: !189)
!208 = !DILocation(line: 251, column: 50, scope: !189)
!209 = !DILocation(line: 254, column: 19, scope: !210)
!210 = distinct !DILexicalBlock(scope: !189, file: !1, line: 254, column: 7)
!211 = !DILocation(line: 254, column: 7, scope: !189)
!212 = !DILocation(line: 255, column: 50, scope: !213)
!213 = distinct !DILexicalBlock(scope: !210, file: !1, line: 254, column: 24)
!214 = !DILocation(line: 255, column: 33, scope: !213)
!215 = !DILocation(line: 255, column: 41, scope: !213)
!216 = !DILocation(line: 255, column: 48, scope: !213)
!217 = !DILocation(line: 257, column: 37, scope: !218)
!218 = distinct !DILexicalBlock(scope: !213, file: !1, line: 257, column: 8)
!219 = !DILocation(line: 257, column: 45, scope: !218)
!220 = !DILocation(line: 257, column: 52, scope: !218)
!221 = !DILocation(line: 257, column: 8, scope: !213)
!222 = !DILocation(line: 260, column: 33, scope: !223)
!223 = distinct !DILexicalBlock(scope: !210, file: !1, line: 259, column: 10)
!224 = !DILocation(line: 260, column: 41, scope: !223)
!225 = !DILocation(line: 260, column: 48, scope: !223)
!226 = !DILocation(line: 264, column: 17, scope: !175)
!227 = !DILocation(line: 264, column: 25, scope: !175)
!228 = !DILocation(line: 264, column: 6, scope: !148)
!229 = !DILocation(line: 0, scope: !174)
!230 = !DILocation(line: 266, column: 58, scope: !174)
!231 = !DILocation(line: 266, column: 32, scope: !174)
!232 = !DILocation(line: 266, column: 40, scope: !174)
!233 = !DILocation(line: 266, column: 48, scope: !174)
!234 = !DILocation(line: 267, column: 36, scope: !235)
!235 = distinct !DILexicalBlock(scope: !174, file: !1, line: 267, column: 7)
!236 = !DILocation(line: 267, column: 44, scope: !235)
!237 = !DILocation(line: 267, column: 65, scope: !235)
!238 = !DILocation(line: 267, column: 52, scope: !235)
!239 = !DILocation(line: 270, column: 32, scope: !240)
!240 = distinct !DILexicalBlock(scope: !175, file: !1, line: 269, column: 9)
!241 = !DILocation(line: 270, column: 40, scope: !240)
!242 = !DILocation(line: 270, column: 48, scope: !240)
!243 = !DILocation(line: 274, column: 31, scope: !148)
!244 = !DILocation(line: 274, column: 39, scope: !148)
!245 = !DILocation(line: 274, column: 50, scope: !148)
!246 = !DILocation(line: 275, column: 31, scope: !148)
!247 = !DILocation(line: 275, column: 39, scope: !148)
!248 = !DILocation(line: 275, column: 55, scope: !148)
!249 = !DILocation(line: 276, column: 31, scope: !148)
!250 = !DILocation(line: 276, column: 39, scope: !148)
!251 = !DILocation(line: 276, column: 43, scope: !148)
!252 = !DILocation(line: 277, column: 31, scope: !148)
!253 = !DILocation(line: 277, column: 39, scope: !148)
!254 = !DILocation(line: 277, column: 48, scope: !148)
!255 = !DILocation(line: 278, column: 31, scope: !148)
!256 = !DILocation(line: 278, column: 39, scope: !148)
!257 = !DILocation(line: 278, column: 44, scope: !148)
!258 = !DILocation(line: 281, column: 34, scope: !148)
!259 = !DILocation(line: 281, column: 67, scope: !148)
!260 = !DILocation(line: 280, column: 9, scope: !148)
!261 = !DILocation(line: 280, column: 2, scope: !148)
!262 = !DILocation(line: 282, column: 1, scope: !148)
!263 = !DISubprogram(name: "lzma_alloc", scope: !40, file: !40, line: 211, type: !264, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!264 = !DISubroutineType(types: !265)
!265 = !{!33, !71, !63}
!266 = distinct !DISubprogram(name: "simple_code", scope: !1, file: !1, line: 71, type: !60, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !267)
!267 = !{!268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !280, !281, !284, !287, !288, !289, !290}
!268 = !DILocalVariable(name: "pcoder", arg: 1, scope: !266, file: !1, line: 71, type: !44)
!269 = !DILocalVariable(name: "allocator", arg: 2, scope: !266, file: !1, line: 71, type: !63)
!270 = !DILocalVariable(name: "in", arg: 3, scope: !266, file: !1, line: 72, type: !78)
!271 = !DILocalVariable(name: "in_pos", arg: 4, scope: !266, file: !1, line: 72, type: !84)
!272 = !DILocalVariable(name: "in_size", arg: 5, scope: !266, file: !1, line: 73, type: !71)
!273 = !DILocalVariable(name: "out", arg: 6, scope: !266, file: !1, line: 73, type: !86)
!274 = !DILocalVariable(name: "out_pos", arg: 7, scope: !266, file: !1, line: 74, type: !84)
!275 = !DILocalVariable(name: "out_size", arg: 8, scope: !266, file: !1, line: 74, type: !71)
!276 = !DILocalVariable(name: "action", arg: 9, scope: !266, file: !1, line: 74, type: !88)
!277 = !DILocalVariable(name: "coder", scope: !266, file: !1, line: 76, type: !34)
!278 = !DILocalVariable(name: "out_avail", scope: !266, file: !1, line: 111, type: !279)
!279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!280 = !DILocalVariable(name: "buf_avail", scope: !266, file: !1, line: 112, type: !279)
!281 = !DILocalVariable(name: "out_start", scope: !282, file: !1, line: 116, type: !279)
!282 = distinct !DILexicalBlock(scope: !283, file: !1, line: 113, column: 47)
!283 = distinct !DILexicalBlock(scope: !266, file: !1, line: 113, column: 6)
!284 = !DILocalVariable(name: "ret", scope: !285, file: !1, line: 127, type: !286)
!285 = distinct !DILexicalBlock(scope: !282, file: !1, line: 126, column: 3)
!286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!287 = !DILocalVariable(name: "size", scope: !282, file: !1, line: 136, type: !279)
!288 = !DILocalVariable(name: "filtered", scope: !282, file: !1, line: 137, type: !279)
!289 = !DILocalVariable(name: "unfiltered", scope: !282, file: !1, line: 140, type: !279)
!290 = !DILocalVariable(name: "ret", scope: !291, file: !1, line: 173, type: !286)
!291 = distinct !DILexicalBlock(scope: !292, file: !1, line: 172, column: 3)
!292 = distinct !DILexicalBlock(scope: !293, file: !1, line: 171, column: 23)
!293 = distinct !DILexicalBlock(scope: !266, file: !1, line: 171, column: 6)
!294 = !DILocation(line: 0, scope: !266)
!295 = !DILocation(line: 82, column: 13, scope: !296)
!296 = distinct !DILexicalBlock(scope: !266, file: !1, line: 82, column: 6)
!297 = !DILocation(line: 82, column: 6, scope: !266)
!298 = !DILocation(line: 86, column: 13, scope: !299)
!299 = distinct !DILexicalBlock(scope: !266, file: !1, line: 86, column: 6)
!300 = !DILocation(line: 86, column: 26, scope: !299)
!301 = !DILocation(line: 86, column: 17, scope: !299)
!302 = !DILocation(line: 86, column: 6, scope: !266)
!303 = !DILocation(line: 87, column: 22, scope: !304)
!304 = distinct !DILexicalBlock(scope: !299, file: !1, line: 86, column: 36)
!305 = !DILocation(line: 87, column: 3, scope: !304)
!306 = !DILocation(line: 92, column: 14, scope: !307)
!307 = distinct !DILexicalBlock(scope: !304, file: !1, line: 92, column: 7)
!308 = !DILocation(line: 92, column: 27, scope: !307)
!309 = !DILocation(line: 92, column: 18, scope: !307)
!310 = !DILocation(line: 92, column: 7, scope: !304)
!311 = !DILocation(line: 95, column: 14, scope: !312)
!312 = distinct !DILexicalBlock(scope: !304, file: !1, line: 95, column: 7)
!313 = !{i8 0, i8 2}
!314 = !{}
!315 = !DILocation(line: 95, column: 7, scope: !304)
!316 = !DILocation(line: 112, column: 48, scope: !266)
!317 = !DILocation(line: 102, column: 18, scope: !266)
!318 = !DILocation(line: 111, column: 38, scope: !266)
!319 = !DILocation(line: 111, column: 36, scope: !266)
!320 = !DILocation(line: 112, column: 34, scope: !266)
!321 = !DILocation(line: 112, column: 39, scope: !266)
!322 = !DILocation(line: 113, column: 16, scope: !283)
!323 = !DILocation(line: 113, column: 28, scope: !283)
!324 = !DILocation(line: 0, scope: !282)
!325 = !DILocation(line: 122, column: 14, scope: !282)
!326 = !DILocation(line: 122, column: 33, scope: !282)
!327 = !DILocation(line: 122, column: 40, scope: !282)
!328 = !DILocation(line: 122, column: 3, scope: !282)
!329 = !DILocation(line: 123, column: 12, scope: !282)
!330 = !{!331}
!331 = distinct !{!331, !332, !"copy_or_code: %in_pos"}
!332 = distinct !{!332, !"copy_or_code"}
!333 = !DILocation(line: 127, column: 25, scope: !285)
!334 = !DILocalVariable(name: "pcoder", arg: 1, scope: !335, file: !1, line: 21, type: !44)
!335 = distinct !DISubprogram(name: "copy_or_code", scope: !1, file: !1, line: 21, type: !60, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !336)
!336 = !{!334, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346}
!337 = !DILocalVariable(name: "allocator", arg: 2, scope: !335, file: !1, line: 21, type: !63)
!338 = !DILocalVariable(name: "in", arg: 3, scope: !335, file: !1, line: 22, type: !78)
!339 = !DILocalVariable(name: "in_pos", arg: 4, scope: !335, file: !1, line: 22, type: !84)
!340 = !DILocalVariable(name: "in_size", arg: 5, scope: !335, file: !1, line: 23, type: !71)
!341 = !DILocalVariable(name: "out", arg: 6, scope: !335, file: !1, line: 23, type: !86)
!342 = !DILocalVariable(name: "out_pos", arg: 7, scope: !335, file: !1, line: 24, type: !84)
!343 = !DILocalVariable(name: "out_size", arg: 8, scope: !335, file: !1, line: 24, type: !71)
!344 = !DILocalVariable(name: "action", arg: 9, scope: !335, file: !1, line: 24, type: !88)
!345 = !DILocalVariable(name: "coder", scope: !335, file: !1, line: 26, type: !34)
!346 = !DILocalVariable(name: "ret", scope: !347, file: !1, line: 39, type: !286)
!347 = distinct !DILexicalBlock(scope: !348, file: !1, line: 37, column: 9)
!348 = distinct !DILexicalBlock(scope: !335, file: !1, line: 29, column: 6)
!349 = !DILocation(line: 0, scope: !335, inlinedAt: !350)
!350 = distinct !DILocation(line: 127, column: 25, scope: !285)
!351 = !DILocation(line: 29, column: 18, scope: !348, inlinedAt: !350)
!352 = !{!353, !331, !354, !355}
!353 = distinct !{!353, !332, !"copy_or_code: %in"}
!354 = distinct !{!354, !332, !"copy_or_code: %out"}
!355 = distinct !{!355, !332, !"copy_or_code: %out_pos"}
!356 = !DILocation(line: 29, column: 23, scope: !348, inlinedAt: !350)
!357 = !DILocation(line: 29, column: 6, scope: !335, inlinedAt: !350)
!358 = !DILocation(line: 30, column: 3, scope: !359, inlinedAt: !350)
!359 = distinct !DILexicalBlock(scope: !348, file: !1, line: 29, column: 32)
!360 = !DILocation(line: 33, column: 14, scope: !361, inlinedAt: !350)
!361 = distinct !DILexicalBlock(scope: !359, file: !1, line: 33, column: 7)
!362 = !DILocation(line: 33, column: 25, scope: !361, inlinedAt: !350)
!363 = !DILocation(line: 34, column: 8, scope: !361, inlinedAt: !350)
!364 = !{!353, !354, !355}
!365 = !DILocation(line: 34, column: 16, scope: !361, inlinedAt: !350)
!366 = !DILocation(line: 33, column: 7, scope: !359, inlinedAt: !350)
!367 = !DILocation(line: 40, column: 17, scope: !347, inlinedAt: !350)
!368 = !DILocation(line: 39, column: 24, scope: !347, inlinedAt: !350)
!369 = !DILocation(line: 0, scope: !347, inlinedAt: !350)
!370 = !DILocation(line: 44, column: 7, scope: !347, inlinedAt: !350)
!371 = !DILocation(line: 0, scope: !348, inlinedAt: !350)
!372 = !DILocation(line: 136, column: 23, scope: !282)
!373 = !DILocation(line: 0, scope: !285)
!374 = !DILocation(line: 136, column: 32, scope: !282)
!375 = !DILocalVariable(name: "pcoder", arg: 1, scope: !376, file: !1, line: 59, type: !44)
!376 = distinct !DISubprogram(name: "call_filter", scope: !1, file: !1, line: 59, type: !377, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !379)
!377 = !DISubroutineType(types: !378)
!378 = !{!71, !44, !87, !71}
!379 = !{!375, !380, !381, !382, !383}
!380 = !DILocalVariable(name: "buffer", arg: 2, scope: !376, file: !1, line: 59, type: !87)
!381 = !DILocalVariable(name: "size", arg: 3, scope: !376, file: !1, line: 59, type: !71)
!382 = !DILocalVariable(name: "coder", scope: !376, file: !1, line: 61, type: !34)
!383 = !DILocalVariable(name: "filtered", scope: !376, file: !1, line: 62, type: !279)
!384 = !DILocation(line: 0, scope: !376, inlinedAt: !385)
!385 = distinct !DILocation(line: 137, column: 27, scope: !282)
!386 = !DILocation(line: 62, column: 33, scope: !376, inlinedAt: !385)
!387 = !DILocation(line: 62, column: 47, scope: !376, inlinedAt: !385)
!388 = !DILocation(line: 63, column: 11, scope: !376, inlinedAt: !385)
!389 = !DILocation(line: 63, column: 27, scope: !376, inlinedAt: !385)
!390 = !DILocation(line: 62, column: 26, scope: !376, inlinedAt: !385)
!391 = !DILocation(line: 65, column: 17, scope: !376, inlinedAt: !385)
!392 = !DILocation(line: 140, column: 34, scope: !282)
!393 = !DILocation(line: 145, column: 14, scope: !282)
!394 = !DILocation(line: 146, column: 15, scope: !282)
!395 = !DILocation(line: 148, column: 14, scope: !396)
!396 = distinct !DILexicalBlock(scope: !282, file: !1, line: 148, column: 7)
!397 = !DILocation(line: 148, column: 7, scope: !282)
!398 = !DILocation(line: 151, column: 16, scope: !399)
!399 = distinct !DILexicalBlock(scope: !396, file: !1, line: 148, column: 31)
!400 = !DILocation(line: 171, column: 6, scope: !266)
!401 = !DILocation(line: 153, column: 25, scope: !402)
!402 = distinct !DILexicalBlock(scope: !396, file: !1, line: 153, column: 14)
!403 = !DILocation(line: 153, column: 14, scope: !396)
!404 = !DILocation(line: 156, column: 13, scope: !405)
!405 = distinct !DILexicalBlock(scope: !402, file: !1, line: 153, column: 30)
!406 = !DILocation(line: 157, column: 30, scope: !405)
!407 = !DILocation(line: 157, column: 4, scope: !405)
!408 = !DILocation(line: 158, column: 3, scope: !405)
!409 = !DILocation(line: 159, column: 24, scope: !410)
!410 = distinct !DILexicalBlock(scope: !283, file: !1, line: 159, column: 13)
!411 = !DILocation(line: 159, column: 13, scope: !283)
!412 = !DILocation(line: 160, column: 18, scope: !413)
!413 = distinct !DILexicalBlock(scope: !410, file: !1, line: 159, column: 29)
!414 = !DILocation(line: 160, column: 40, scope: !413)
!415 = !DILocation(line: 160, column: 3, scope: !413)
!416 = !DILocation(line: 161, column: 15, scope: !413)
!417 = !DILocation(line: 162, column: 14, scope: !413)
!418 = !DILocation(line: 163, column: 2, scope: !413)
!419 = !DILocation(line: 171, column: 13, scope: !293)
!420 = !DILocation(line: 171, column: 18, scope: !293)
!421 = !DILocation(line: 175, column: 13, scope: !291)
!422 = !DILocation(line: 176, column: 13, scope: !291)
!423 = !{!424}
!424 = distinct !{!424, !425, !"copy_or_code: %in_pos"}
!425 = distinct !{!425, !"copy_or_code"}
!426 = !DILocation(line: 173, column: 25, scope: !291)
!427 = !DILocation(line: 0, scope: !335, inlinedAt: !428)
!428 = distinct !DILocation(line: 173, column: 25, scope: !291)
!429 = !DILocation(line: 29, column: 18, scope: !348, inlinedAt: !428)
!430 = !{!431, !424, !432, !433}
!431 = distinct !{!431, !425, !"copy_or_code: %in"}
!432 = distinct !{!432, !425, !"copy_or_code: %out"}
!433 = distinct !{!433, !425, !"copy_or_code: %out_pos"}
!434 = !DILocation(line: 29, column: 23, scope: !348, inlinedAt: !428)
!435 = !DILocation(line: 29, column: 6, scope: !335, inlinedAt: !428)
!436 = !DILocation(line: 30, column: 3, scope: !359, inlinedAt: !428)
!437 = !DILocation(line: 33, column: 14, scope: !361, inlinedAt: !428)
!438 = !DILocation(line: 33, column: 25, scope: !361, inlinedAt: !428)
!439 = !DILocation(line: 34, column: 8, scope: !361, inlinedAt: !428)
!440 = !{!431, !432, !433}
!441 = !DILocation(line: 34, column: 16, scope: !361, inlinedAt: !428)
!442 = !DILocation(line: 33, column: 7, scope: !359, inlinedAt: !428)
!443 = !DILocation(line: 40, column: 17, scope: !347, inlinedAt: !428)
!444 = !DILocation(line: 39, column: 24, scope: !347, inlinedAt: !428)
!445 = !DILocation(line: 0, scope: !347, inlinedAt: !428)
!446 = !DILocation(line: 44, column: 7, scope: !347, inlinedAt: !428)
!447 = !DILocation(line: 0, scope: !348, inlinedAt: !428)
!448 = !DILocation(line: 183, column: 34, scope: !292)
!449 = !DILocation(line: 0, scope: !291)
!450 = !DILocation(line: 0, scope: !376, inlinedAt: !451)
!451 = distinct !DILocation(line: 182, column: 21, scope: !292)
!452 = !DILocation(line: 62, column: 33, scope: !376, inlinedAt: !451)
!453 = !DILocation(line: 62, column: 47, scope: !376, inlinedAt: !451)
!454 = !DILocation(line: 63, column: 11, scope: !376, inlinedAt: !451)
!455 = !DILocation(line: 63, column: 27, scope: !376, inlinedAt: !451)
!456 = !DILocation(line: 62, column: 26, scope: !376, inlinedAt: !451)
!457 = !DILocation(line: 65, column: 17, scope: !376, inlinedAt: !451)
!458 = !DILocation(line: 182, column: 19, scope: !292)
!459 = !DILocation(line: 187, column: 14, scope: !460)
!460 = distinct !DILexicalBlock(scope: !292, file: !1, line: 187, column: 7)
!461 = !DILocation(line: 187, column: 7, scope: !292)
!462 = !DILocation(line: 188, column: 29, scope: !460)
!463 = !DILocation(line: 188, column: 20, scope: !460)
!464 = !DILocation(line: 188, column: 4, scope: !460)
!465 = !DILocation(line: 191, column: 50, scope: !292)
!466 = !DILocation(line: 191, column: 3, scope: !292)
!467 = !DILocation(line: 193, column: 2, scope: !292)
!468 = !DILocation(line: 196, column: 13, scope: !469)
!469 = distinct !DILexicalBlock(scope: !266, file: !1, line: 196, column: 6)
!470 = !DILocation(line: 196, column: 29, scope: !469)
!471 = !DILocation(line: 196, column: 39, scope: !469)
!472 = !DILocation(line: 196, column: 53, scope: !469)
!473 = !DILocation(line: 196, column: 43, scope: !469)
!474 = !DILocation(line: 196, column: 6, scope: !266)
!475 = !DILocation(line: 199, column: 2, scope: !266)
!476 = !DILocation(line: 200, column: 1, scope: !266)
!477 = distinct !DISubprogram(name: "simple_coder_end", scope: !1, file: !1, line: 204, type: !92, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !478)
!478 = !{!479, !480, !481}
!479 = !DILocalVariable(name: "pcoder", arg: 1, scope: !477, file: !1, line: 204, type: !44)
!480 = !DILocalVariable(name: "allocator", arg: 2, scope: !477, file: !1, line: 204, type: !63)
!481 = !DILocalVariable(name: "coder", scope: !477, file: !1, line: 206, type: !34)
!482 = !DILocation(line: 0, scope: !477)
!483 = !DILocation(line: 207, column: 2, scope: !477)
!484 = !DILocation(line: 208, column: 19, scope: !477)
!485 = !DILocation(line: 208, column: 2, scope: !477)
!486 = !DILocation(line: 209, column: 2, scope: !477)
!487 = !DILocation(line: 211, column: 1, scope: !477)
!488 = distinct !DISubprogram(name: "simple_coder_update", scope: !1, file: !1, line: 215, type: !108, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !489)
!489 = !{!490, !491, !492, !493, !494}
!490 = !DILocalVariable(name: "pcoder", arg: 1, scope: !488, file: !1, line: 215, type: !44)
!491 = !DILocalVariable(name: "allocator", arg: 2, scope: !488, file: !1, line: 215, type: !63)
!492 = !DILocalVariable(name: "filters_null", arg: 3, scope: !488, file: !1, line: 216, type: !110)
!493 = !DILocalVariable(name: "reversed_filters", arg: 4, scope: !488, file: !1, line: 217, type: !110)
!494 = !DILocalVariable(name: "coder", scope: !488, file: !1, line: 219, type: !34)
!495 = !DILocation(line: 0, scope: !488)
!496 = !DILocation(line: 222, column: 46, scope: !488)
!497 = !DILocation(line: 221, column: 9, scope: !488)
!498 = !DILocation(line: 221, column: 2, scope: !488)
!499 = !DISubprogram(name: "lzma_next_filter_init", scope: !40, file: !40, line: 226, type: !161, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!500 = !DISubprogram(name: "lzma_bufcpy", scope: !40, file: !40, line: 242, type: !501, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!501 = !DISubroutineType(types: !502)
!502 = !{!71, !78, !84, !71, !86, !84, !71}
!503 = !DISubprogram(name: "lzma_next_end", scope: !40, file: !40, line: 237, type: !504, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!504 = !DISubroutineType(types: !505)
!505 = !{null, !151, !63}
!506 = !DISubprogram(name: "lzma_free", scope: !40, file: !40, line: 215, type: !507, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!507 = !DISubroutineType(types: !508)
!508 = !{null, !33, !63}
!509 = !DISubprogram(name: "lzma_next_filter_update", scope: !40, file: !40, line: 231, type: !510, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!510 = !DISubroutineType(types: !511)
!511 = !{!62, !151, !63, !110}
