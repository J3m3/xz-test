; ModuleID = 'liblzma/lz/lz_decoder.c'
source_filename = "liblzma/lz/lz_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_lz_options = type { i64, ptr, i64 }

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_lz_decoder_init(ptr nocapture noundef %next, ptr noundef %allocator, ptr noundef %filters, ptr nocapture noundef readonly %lz_init) local_unnamed_addr #0 !dbg !171 {
entry:
  %lz_options = alloca %struct.lzma_lz_options, align 8, !DIAssignID !212
    #dbg_assign(i1 undef, !203, !DIExpression(), !212, ptr %lz_options, !DIExpression(), !213)
    #dbg_value(ptr %next, !199, !DIExpression(), !213)
    #dbg_value(ptr %allocator, !200, !DIExpression(), !213)
    #dbg_value(ptr %filters, !201, !DIExpression(), !213)
    #dbg_value(ptr %lz_init, !202, !DIExpression(), !213)
  %0 = load ptr, ptr %next, align 8, !dbg !214
  %cmp = icmp eq ptr %0, null, !dbg !216
  br i1 %cmp, label %if.then, label %if.end18, !dbg !217

if.then:                                          ; preds = %entry
  %call = tail call ptr @lzma_alloc(i64 noundef 4272, ptr noundef %allocator) #8, !dbg !218
  store ptr %call, ptr %next, align 8, !dbg !220
  %cmp3 = icmp eq ptr %call, null, !dbg !221
  br i1 %cmp3, label %return, label %if.end, !dbg !223

if.end:                                           ; preds = %if.then
  %code = getelementptr inbounds i8, ptr %next, i64 24, !dbg !224
  store ptr @lz_decode, ptr %code, align 8, !dbg !225
  %end = getelementptr inbounds i8, ptr %next, i64 32, !dbg !226
  store ptr @lz_decoder_end, ptr %end, align 8, !dbg !227
  store ptr null, ptr %call, align 8, !dbg !228
  %1 = load ptr, ptr %next, align 8, !dbg !229
  %size = getelementptr inbounds i8, ptr %1, i64 32, !dbg !230
  store i64 0, ptr %size, align 8, !dbg !231
  %2 = load ptr, ptr %next, align 8, !dbg !232
  %lz = getelementptr inbounds i8, ptr %2, i64 48, !dbg !233
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %lz, i8 0, i64 40, i1 false), !dbg !234
  %3 = load ptr, ptr %next, align 8, !dbg !235
  %next13 = getelementptr inbounds i8, ptr %3, i64 88, !dbg !236
  store ptr null, ptr %next13, align 8, !dbg !237
  %.compoundliteral14.sroa.2.0.next13.sroa_idx = getelementptr inbounds i8, ptr %3, i64 96, !dbg !237
  store i64 -1, ptr %.compoundliteral14.sroa.2.0.next13.sroa_idx, align 8, !dbg !237
  %.compoundliteral14.sroa.3.0.next13.sroa_idx = getelementptr inbounds i8, ptr %3, i64 104, !dbg !237
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.compoundliteral14.sroa.3.0.next13.sroa_idx, i8 0, i64 48, i1 false), !dbg !237
  %.pre = load ptr, ptr %next, align 8, !dbg !238
  br label %if.end18, !dbg !239

if.end18:                                         ; preds = %if.end, %entry
  %4 = phi ptr [ %.pre, %if.end ], [ %0, %entry ], !dbg !238
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %lz_options) #8, !dbg !240
  %lz20 = getelementptr inbounds i8, ptr %4, i64 48, !dbg !238
  %options = getelementptr inbounds i8, ptr %filters, i64 16, !dbg !238
  %5 = load ptr, ptr %options, align 8, !dbg !238
  %call21 = call i32 %lz_init(ptr noundef nonnull %lz20, ptr noundef %allocator, ptr noundef %5, ptr noundef nonnull %lz_options) #8, !dbg !238
    #dbg_value(i32 %call21, !204, !DIExpression(), !241)
  %cmp22.not = icmp eq i32 %call21, 0, !dbg !242
  br i1 %cmp22.not, label %do.end, label %cleanup90

do.end:                                           ; preds = %if.end18
  %6 = load i64, ptr %lz_options, align 8, !dbg !244
  %cmp25 = icmp ult i64 %6, 4096, !dbg !246
  br i1 %cmp25, label %if.end32, label %if.end28, !dbg !247

if.end28:                                         ; preds = %do.end
  %cmp30 = icmp ugt i64 %6, -16, !dbg !248
  br i1 %cmp30, label %cleanup90, label %if.end32, !dbg !250

if.end32:                                         ; preds = %do.end, %if.end28
  %7 = phi i64 [ %6, %if.end28 ], [ 4096, %do.end ]
  %add = add nuw i64 %7, 15, !dbg !251
  %and = and i64 %add, -16, !dbg !252
  store i64 %and, ptr %lz_options, align 8, !dbg !253, !DIAssignID !254
    #dbg_assign(i64 %and, !203, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !254, ptr %lz_options, !DIExpression(), !213)
  %8 = load ptr, ptr %next, align 8, !dbg !255
  %size37 = getelementptr inbounds i8, ptr %8, i64 32, !dbg !257
  %9 = load i64, ptr %size37, align 8, !dbg !257
  %cmp39.not = icmp eq i64 %9, %and, !dbg !258
  br i1 %cmp39.not, label %if.end59, label %if.then40, !dbg !259

if.then40:                                        ; preds = %if.end32
  %10 = load ptr, ptr %8, align 8, !dbg !260
  call void @lzma_free(ptr noundef %10, ptr noundef %allocator) #8, !dbg !262
  %11 = load i64, ptr %lz_options, align 8, !dbg !263
  %call45 = call ptr @lzma_alloc(i64 noundef %11, ptr noundef %allocator) #8, !dbg !264
  %12 = load ptr, ptr %next, align 8, !dbg !265
  store ptr %call45, ptr %12, align 8, !dbg !266
  %13 = load ptr, ptr %next, align 8, !dbg !267
  %14 = load ptr, ptr %13, align 8, !dbg !269
  %cmp52 = icmp eq ptr %14, null, !dbg !270
  br i1 %cmp52, label %cleanup90, label %if.end54, !dbg !271

if.end54:                                         ; preds = %if.then40
  %15 = load i64, ptr %lz_options, align 8, !dbg !272
  %size58 = getelementptr inbounds i8, ptr %13, i64 32, !dbg !273
  store i64 %15, ptr %size58, align 8, !dbg !274
  %.pre127 = load ptr, ptr %next, align 8, !dbg !275
  %size.i.phi.trans.insert = getelementptr inbounds i8, ptr %.pre127, i64 32
  %.pre128 = load i64, ptr %size.i.phi.trans.insert, align 8, !dbg !276
  br label %if.end59, !dbg !284

if.end59:                                         ; preds = %if.end54, %if.end32
  %16 = phi i64 [ %.pre128, %if.end54 ], [ %and, %if.end32 ], !dbg !276
  %17 = phi ptr [ %.pre127, %if.end54 ], [ %8, %if.end32 ], !dbg !275
    #dbg_value(ptr %17, !281, !DIExpression(), !285)
    #dbg_value(ptr %17, !282, !DIExpression(), !285)
  %pos.i = getelementptr inbounds i8, ptr %17, i64 8, !dbg !286
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %pos.i, i8 0, i64 16, i1 false), !dbg !287
  %18 = load ptr, ptr %17, align 8, !dbg !288
  %19 = getelementptr i8, ptr %18, i64 %16, !dbg !289
  %arrayidx.i = getelementptr i8, ptr %19, i64 -1, !dbg !289
  store i8 0, ptr %arrayidx.i, align 1, !dbg !290
  %need_reset.i = getelementptr inbounds i8, ptr %17, i64 40, !dbg !291
  store i8 0, ptr %need_reset.i, align 8, !dbg !292
  %preset_dict = getelementptr inbounds i8, ptr %lz_options, i64 8, !dbg !293
  %20 = load ptr, ptr %preset_dict, align 8, !dbg !293
  %cmp61 = icmp ne ptr %20, null, !dbg !294
  %preset_dict_size = getelementptr inbounds i8, ptr %lz_options, i64 16
  %21 = load i64, ptr %preset_dict_size, align 8
  %cmp62 = icmp ne i64 %21, 0
  %or.cond = select i1 %cmp61, i1 %cmp62, i1 false, !dbg !295
  br i1 %or.cond, label %if.then63, label %if.end78, !dbg !295

if.then63:                                        ; preds = %if.end59
  %22 = load i64, ptr %lz_options, align 8, !dbg !296
  %cond = call i64 @llvm.umin.i64(i64 %21, i64 %22), !dbg !296
    #dbg_value(i64 %cond, !207, !DIExpression(), !297)
  %sub = sub i64 %21, %cond, !dbg !298
    #dbg_value(i64 %sub, !211, !DIExpression(), !297)
  %23 = load ptr, ptr %next, align 8, !dbg !299
  %24 = load ptr, ptr %23, align 8, !dbg !300
  %add.ptr = getelementptr inbounds i8, ptr %20, i64 %sub, !dbg !301
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %24, ptr nonnull align 1 %add.ptr, i64 %cond, i1 false), !dbg !302
  %25 = load ptr, ptr %next, align 8, !dbg !303
  %pos = getelementptr inbounds i8, ptr %25, i64 8, !dbg !304
  store i64 %cond, ptr %pos, align 8, !dbg !305
  %26 = load ptr, ptr %next, align 8, !dbg !306
  %full = getelementptr inbounds i8, ptr %26, i64 16, !dbg !307
  store i64 %cond, ptr %full, align 8, !dbg !308
  br label %if.end78, !dbg !309

if.end78:                                         ; preds = %if.then63, %if.end59
  %27 = load ptr, ptr %next, align 8, !dbg !310
  %next_finished = getelementptr inbounds i8, ptr %27, i64 152, !dbg !311
  store i8 0, ptr %next_finished, align 8, !dbg !312
  %28 = load ptr, ptr %next, align 8, !dbg !313
  %this_finished = getelementptr inbounds i8, ptr %28, i64 153, !dbg !314
  store i8 0, ptr %this_finished, align 1, !dbg !315
  %29 = load ptr, ptr %next, align 8, !dbg !316
  %temp = getelementptr inbounds i8, ptr %29, i64 160, !dbg !317
  store i64 0, ptr %temp, align 8, !dbg !318
  %30 = load ptr, ptr %next, align 8, !dbg !319
  %size85 = getelementptr inbounds i8, ptr %30, i64 168, !dbg !320
  store i64 0, ptr %size85, align 8, !dbg !321
  %31 = load ptr, ptr %next, align 8, !dbg !322
  %next87 = getelementptr inbounds i8, ptr %31, i64 88, !dbg !323
  %add.ptr88 = getelementptr inbounds i8, ptr %filters, i64 24, !dbg !324
  %call89 = call i32 @lzma_next_filter_init(ptr noundef nonnull %next87, ptr noundef %allocator, ptr noundef nonnull %add.ptr88) #8, !dbg !325
  br label %cleanup90, !dbg !326

cleanup90:                                        ; preds = %if.then40, %if.end28, %if.end18, %if.end78
  %retval.1 = phi i32 [ %call89, %if.end78 ], [ %call21, %if.end18 ], [ 5, %if.end28 ], [ 5, %if.then40 ], !dbg !213
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %lz_options) #8, !dbg !327
  br label %return

return:                                           ; preds = %if.then, %cleanup90
  %retval.2 = phi i32 [ %retval.1, %cleanup90 ], [ 5, %if.then ], !dbg !213
  ret i32 %retval.2, !dbg !327
}

declare !dbg !328 ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @lz_decode(ptr noundef %pcoder, ptr noundef %allocator, ptr noalias noundef %in, ptr noalias noundef %in_pos, i64 noundef %in_size, ptr noalias nocapture noundef writeonly %out, ptr noalias nocapture noundef %out_pos, i64 noundef %out_size, i32 noundef %action) #0 !dbg !331 {
entry:
    #dbg_value(ptr %pcoder, !333, !DIExpression(), !348)
    #dbg_value(ptr %allocator, !334, !DIExpression(), !348)
    #dbg_value(ptr %in, !335, !DIExpression(), !348)
    #dbg_value(ptr %in_pos, !336, !DIExpression(), !348)
    #dbg_value(i64 %in_size, !337, !DIExpression(), !348)
    #dbg_value(ptr %out, !338, !DIExpression(), !348)
    #dbg_value(ptr %out_pos, !339, !DIExpression(), !348)
    #dbg_value(i64 %out_size, !340, !DIExpression(), !348)
    #dbg_value(i32 %action, !341, !DIExpression(), !348)
    #dbg_value(ptr %pcoder, !342, !DIExpression(), !348)
  %next = getelementptr inbounds i8, ptr %pcoder, i64 88, !dbg !349
  %code = getelementptr inbounds i8, ptr %pcoder, i64 112, !dbg !351
  %0 = load ptr, ptr %code, align 8, !dbg !351
  %cmp = icmp eq ptr %0, null, !dbg !352
  br i1 %cmp, label %if.then, label %while.cond.preheader, !dbg !353

while.cond.preheader:                             ; preds = %entry
  %out_pos.promoted = load i64, ptr %out_pos, align 8
  %cmp1155 = icmp ult i64 %out_pos.promoted, %out_size, !dbg !354
  br i1 %cmp1155, label %while.body.lr.ph, label %cleanup67, !dbg !355

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %next_finished = getelementptr inbounds i8, ptr %pcoder, i64 152
  %temp = getelementptr inbounds i8, ptr %pcoder, i64 160
  %size = getelementptr inbounds i8, ptr %pcoder, i64 168
  %buffer = getelementptr inbounds i8, ptr %pcoder, i64 176
  %this_finished = getelementptr inbounds i8, ptr %pcoder, i64 153
  %pos.i105 = getelementptr inbounds i8, ptr %pcoder, i64 8
  %size.i106 = getelementptr inbounds i8, ptr %pcoder, i64 32
  %limit.i107 = getelementptr inbounds i8, ptr %pcoder, i64 24
  %lz.i108 = getelementptr inbounds i8, ptr %pcoder, i64 48
  %code.i109 = getelementptr inbounds i8, ptr %pcoder, i64 56
  %need_reset.i111 = getelementptr inbounds i8, ptr %pcoder, i64 40
  br label %while.body, !dbg !355

if.then:                                          ; preds = %entry
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356), !dbg !359
    #dbg_value(ptr %pcoder, !360, !DIExpression(), !376)
    #dbg_value(ptr %in, !365, !DIExpression(), !376)
    #dbg_value(ptr %in_pos, !366, !DIExpression(), !376)
    #dbg_value(i64 %in_size, !367, !DIExpression(), !376)
    #dbg_value(ptr %out, !368, !DIExpression(), !376)
    #dbg_value(ptr %out_pos, !369, !DIExpression(), !376)
    #dbg_value(i64 %out_size, !370, !DIExpression(), !376)
    #dbg_value(ptr %pcoder, !371, !DIExpression(), !376)
  %pos.i = getelementptr inbounds i8, ptr %pcoder, i64 8
  %size.i = getelementptr inbounds i8, ptr %pcoder, i64 32
  %limit.i = getelementptr inbounds i8, ptr %pcoder, i64 24
  %lz.i = getelementptr inbounds i8, ptr %pcoder, i64 48
  %code.i = getelementptr inbounds i8, ptr %pcoder, i64 56
  %out_pos.promoted.i = load i64, ptr %out_pos, align 8, !alias.scope !356, !noalias !378
  %need_reset.i = getelementptr inbounds i8, ptr %pcoder, i64 40
  br label %while.cond.i, !dbg !382

while.cond.i:                                     ; preds = %while.cond.i.backedge, %if.then
  %1 = phi i64 [ %out_pos.promoted.i, %if.then ], [ %add29.i, %while.cond.i.backedge ]
  %2 = load i64, ptr %pos.i, align 8, !dbg !383, !noalias !385
  %3 = load i64, ptr %size.i, align 8, !dbg !386, !noalias !385
  %cmp.i = icmp eq i64 %2, %3, !dbg !387
  br i1 %cmp.i, label %if.then.i, label %if.end.i, !dbg !388

if.then.i:                                        ; preds = %while.cond.i
  store i64 0, ptr %pos.i, align 8, !dbg !389, !noalias !385
  br label %if.end.i, !dbg !390

if.end.i:                                         ; preds = %if.then.i, %while.cond.i
  %4 = phi i64 [ 0, %if.then.i ], [ %2, %while.cond.i ], !dbg !391
    #dbg_value(i64 %4, !372, !DIExpression(), !392)
  %sub.i = sub i64 %out_size, %1, !dbg !393
  %sub12.i = sub i64 %3, %4, !dbg !393
  %sub.sub12.i = tail call i64 @llvm.umin.i64(i64 %sub.i, i64 %sub12.i), !dbg !393
  %add.i = add i64 %sub.sub12.i, %4, !dbg !394
  store i64 %add.i, ptr %limit.i, align 8, !dbg !395, !noalias !385
  %5 = load ptr, ptr %code.i, align 8, !dbg !396, !noalias !385
  %6 = load ptr, ptr %lz.i, align 8, !dbg !397, !noalias !385
  %call.i = tail call i32 %5(ptr noundef %6, ptr noundef nonnull %pcoder, ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size) #8, !dbg !398, !noalias !399
    #dbg_value(i32 %call.i, !374, !DIExpression(), !392)
  %7 = load i64, ptr %pos.i, align 8, !dbg !400, !noalias !385
  %sub26.i = sub i64 %7, %4, !dbg !401
    #dbg_value(i64 %sub26.i, !375, !DIExpression(), !392)
  %add.ptr.i = getelementptr inbounds i8, ptr %out, i64 %1, !dbg !402
  %8 = load ptr, ptr %pcoder, align 8, !dbg !403, !noalias !385
  %add.ptr28.i = getelementptr inbounds i8, ptr %8, i64 %4, !dbg !404
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr.i, ptr align 1 %add.ptr28.i, i64 %sub26.i, i1 false), !dbg !405, !noalias !356
  %add29.i = add i64 %sub26.i, %1, !dbg !406
  store i64 %add29.i, ptr %out_pos, align 8, !dbg !406, !alias.scope !356, !noalias !378
  %9 = load i8, ptr %need_reset.i, align 8, !dbg !407, !range !409, !noalias !385, !noundef !410
  %loadedv.i = trunc nuw i8 %9 to i1, !dbg !407
  br i1 %loadedv.i, label %if.then31.i, label %if.else.i, !dbg !411

if.then31.i:                                      ; preds = %if.end.i
    #dbg_value(ptr %pcoder, !281, !DIExpression(), !412)
    #dbg_value(ptr %pcoder, !282, !DIExpression(), !412)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %pos.i, i8 0, i64 16, i1 false), !dbg !415, !noalias !385
  %10 = load i64, ptr %size.i, align 8, !dbg !416, !noalias !385
  %11 = getelementptr i8, ptr %8, i64 %10, !dbg !417
  %arrayidx.i.i = getelementptr i8, ptr %11, i64 -1, !dbg !417
  store i8 0, ptr %arrayidx.i.i, align 1, !dbg !418, !noalias !399
  store i8 0, ptr %need_reset.i, align 8, !dbg !419, !noalias !385
  %cmp32.not.i = icmp ne i32 %call.i, 0, !dbg !420
  %cmp33.i = icmp eq i64 %add29.i, %out_size
  %or.cond86.i = select i1 %cmp32.not.i, i1 true, i1 %cmp33.i, !dbg !422
  br i1 %or.cond86.i, label %cleanup67, label %while.cond.i.backedge, !dbg !422

if.else.i:                                        ; preds = %if.end.i
  %cmp36.not.i = icmp ne i32 %call.i, 0, !dbg !423
  %cmp38.i = icmp eq i64 %add29.i, %out_size
  %or.cond.i = select i1 %cmp36.not.i, i1 true, i1 %cmp38.i, !dbg !426
  br i1 %or.cond.i, label %cleanup67, label %lor.lhs.false39.i, !dbg !426

lor.lhs.false39.i:                                ; preds = %if.else.i
  %12 = load i64, ptr %size.i, align 8, !dbg !427, !noalias !385
  %cmp44.i = icmp ult i64 %7, %12, !dbg !428
  br i1 %cmp44.i, label %cleanup67, label %while.cond.i.backedge, !dbg !429

while.cond.i.backedge:                            ; preds = %lor.lhs.false39.i, %if.then31.i
  br label %while.cond.i, !dbg !383, !llvm.loop !430

while.body:                                       ; preds = %while.body.lr.ph, %cleanup64
  %add29.i123150156 = phi i64 [ %out_pos.promoted, %while.body.lr.ph ], [ %add29.i123, %cleanup64 ]
  %13 = load i8, ptr %next_finished, align 8, !dbg !432, !range !409, !noundef !410
  %loadedv = trunc nuw i8 %13 to i1, !dbg !432
  br i1 %loadedv, label %if.end27, label %land.lhs.true, !dbg !433

land.lhs.true:                                    ; preds = %while.body
  %14 = load i64, ptr %temp, align 8, !dbg !434
  %15 = load i64, ptr %size, align 8, !dbg !435
  %cmp3 = icmp eq i64 %14, %15, !dbg !436
  br i1 %cmp3, label %if.then4, label %if.end27, !dbg !437

if.then4:                                         ; preds = %land.lhs.true
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %temp, i8 0, i64 16, i1 false), !dbg !438
  %16 = load ptr, ptr %code, align 8, !dbg !439
  %17 = load ptr, ptr %next, align 8, !dbg !440
  %call16 = tail call i32 %16(ptr noundef %17, ptr noundef %allocator, ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size, ptr noundef nonnull %buffer, ptr noundef nonnull %size, i64 noundef 4096, i32 noundef %action) #8, !dbg !441
    #dbg_value(i32 %call16, !343, !DIExpression(), !442)
  switch i32 %call16, label %cleanup67 [
    i32 1, label %if.then18
    i32 0, label %lor.lhs.false
  ], !dbg !443

if.then18:                                        ; preds = %if.then4
  store i8 1, ptr %next_finished, align 8, !dbg !444
  br label %if.end27, !dbg !446

lor.lhs.false:                                    ; preds = %if.then4
  %18 = load i64, ptr %size, align 8, !dbg !447
  %cmp23 = icmp eq i64 %18, 0, !dbg !449
  br i1 %cmp23, label %cleanup67, label %if.end27, !dbg !450

if.end27:                                         ; preds = %lor.lhs.false, %if.then18, %land.lhs.true, %while.body
  %19 = load i8, ptr %this_finished, align 1, !dbg !451, !range !409, !noundef !410
  %loadedv28 = trunc nuw i8 %19 to i1, !dbg !451
  %20 = load i64, ptr %size, align 8, !dbg !453
  br i1 %loadedv28, label %if.then29, label %if.end39, !dbg !454

if.then29:                                        ; preds = %if.end27
  %cmp32.not = icmp eq i64 %20, 0, !dbg !455
  br i1 %cmp32.not, label %if.end34, label %cleanup67, !dbg !458

if.end34:                                         ; preds = %if.then29
  %21 = load i8, ptr %next_finished, align 8, !dbg !459, !range !409, !noundef !410
  %loadedv36 = zext nneg i8 %21 to i32, !dbg !459
  br label %cleanup67, !dbg !461

if.end39:                                         ; preds = %if.end27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !462), !dbg !465
    #dbg_value(ptr %pcoder, !360, !DIExpression(), !466)
    #dbg_value(ptr %buffer, !365, !DIExpression(), !466)
    #dbg_value(ptr %temp, !366, !DIExpression(), !466)
    #dbg_value(i64 %20, !367, !DIExpression(), !466)
    #dbg_value(ptr %out, !368, !DIExpression(), !466)
    #dbg_value(ptr %out_pos, !369, !DIExpression(), !466)
    #dbg_value(i64 %out_size, !370, !DIExpression(), !466)
    #dbg_value(ptr %pcoder, !371, !DIExpression(), !466)
  br label %while.cond.i112, !dbg !468

while.cond.i112:                                  ; preds = %while.cond.i112.backedge, %if.end39
  %22 = phi i64 [ %add29.i123150156, %if.end39 ], [ %add29.i123, %while.cond.i112.backedge ]
  %23 = load i64, ptr %pos.i105, align 8, !dbg !469, !noalias !470
  %24 = load i64, ptr %size.i106, align 8, !dbg !474, !noalias !470
  %cmp.i113 = icmp eq i64 %23, %24, !dbg !475
  br i1 %cmp.i113, label %if.then.i138, label %if.end.i114, !dbg !476

if.then.i138:                                     ; preds = %while.cond.i112
  store i64 0, ptr %pos.i105, align 8, !dbg !477, !noalias !470
  br label %if.end.i114, !dbg !478

if.end.i114:                                      ; preds = %if.then.i138, %while.cond.i112
  %25 = phi i64 [ 0, %if.then.i138 ], [ %23, %while.cond.i112 ], !dbg !479
    #dbg_value(i64 %25, !372, !DIExpression(), !480)
  %sub.i115 = sub i64 %out_size, %22, !dbg !481
  %sub12.i116 = sub i64 %24, %25, !dbg !481
  %sub.sub12.i117 = tail call i64 @llvm.umin.i64(i64 %sub.i115, i64 %sub12.i116), !dbg !481
  %add.i118 = add i64 %sub.sub12.i117, %25, !dbg !482
  store i64 %add.i118, ptr %limit.i107, align 8, !dbg !483, !noalias !470
  %26 = load ptr, ptr %code.i109, align 8, !dbg !484, !noalias !470
  %27 = load ptr, ptr %lz.i108, align 8, !dbg !485, !noalias !470
  %call.i119 = tail call i32 %26(ptr noundef %27, ptr noundef nonnull %pcoder, ptr noundef nonnull %buffer, ptr noundef nonnull %temp, i64 noundef %20) #8, !dbg !486, !noalias !487
    #dbg_value(i32 %call.i119, !374, !DIExpression(), !480)
  %28 = load i64, ptr %pos.i105, align 8, !dbg !488, !noalias !470
  %sub26.i120 = sub i64 %28, %25, !dbg !489
    #dbg_value(i64 %sub26.i120, !375, !DIExpression(), !480)
  %add.ptr.i121 = getelementptr inbounds i8, ptr %out, i64 %22, !dbg !490
  %29 = load ptr, ptr %pcoder, align 8, !dbg !491, !noalias !470
  %add.ptr28.i122 = getelementptr inbounds i8, ptr %29, i64 %25, !dbg !492
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr.i121, ptr align 1 %add.ptr28.i122, i64 %sub26.i120, i1 false), !dbg !493, !noalias !462
  %add29.i123 = add i64 %sub26.i120, %22, !dbg !494
  store i64 %add29.i123, ptr %out_pos, align 8, !dbg !494, !alias.scope !462, !noalias !495
  %30 = load i8, ptr %need_reset.i111, align 8, !dbg !496, !range !409, !noalias !470, !noundef !410
  %loadedv.i124 = trunc nuw i8 %30 to i1, !dbg !496
  br i1 %loadedv.i124, label %if.then31.i133, label %if.else.i125, !dbg !497

if.then31.i133:                                   ; preds = %if.end.i114
    #dbg_value(ptr %pcoder, !281, !DIExpression(), !498)
    #dbg_value(ptr %pcoder, !282, !DIExpression(), !498)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %pos.i105, i8 0, i64 16, i1 false), !dbg !500, !noalias !470
  %31 = load i64, ptr %size.i106, align 8, !dbg !501, !noalias !470
  %32 = getelementptr i8, ptr %29, i64 %31, !dbg !502
  %arrayidx.i.i134 = getelementptr i8, ptr %32, i64 -1, !dbg !502
  store i8 0, ptr %arrayidx.i.i134, align 1, !dbg !503, !noalias !487
  store i8 0, ptr %need_reset.i111, align 8, !dbg !504, !noalias !470
  %cmp32.not.i135 = icmp ne i32 %call.i119, 0, !dbg !505
  %cmp33.i136 = icmp eq i64 %add29.i123, %out_size
  %or.cond86.i137 = select i1 %cmp32.not.i135, i1 true, i1 %cmp33.i136, !dbg !506
  br i1 %or.cond86.i137, label %decode_buffer.exit139, label %while.cond.i112.backedge, !dbg !506

if.else.i125:                                     ; preds = %if.end.i114
  %cmp36.not.i126 = icmp ne i32 %call.i119, 0, !dbg !507
  %cmp38.i127 = icmp eq i64 %add29.i123, %out_size
  %or.cond.i128 = select i1 %cmp36.not.i126, i1 true, i1 %cmp38.i127, !dbg !508
  br i1 %or.cond.i128, label %decode_buffer.exit139, label %lor.lhs.false39.i129, !dbg !508

lor.lhs.false39.i129:                             ; preds = %if.else.i125
  %33 = load i64, ptr %size.i106, align 8, !dbg !509, !noalias !470
  %cmp44.i130 = icmp ult i64 %28, %33, !dbg !510
  br i1 %cmp44.i130, label %if.else55, label %while.cond.i112.backedge, !dbg !511

while.cond.i112.backedge:                         ; preds = %lor.lhs.false39.i129, %if.then31.i133
  br label %while.cond.i112, !dbg !469, !llvm.loop !512

decode_buffer.exit139:                            ; preds = %if.then31.i133, %if.else.i125
    #dbg_value(i32 %call.i119, !347, !DIExpression(), !453)
  switch i32 %call.i119, label %cleanup67 [
    i32 1, label %if.then50
    i32 0, label %if.else55
  ], !dbg !514

if.then50:                                        ; preds = %decode_buffer.exit139
  store i8 1, ptr %this_finished, align 1, !dbg !515
  br label %cleanup64, !dbg !517

if.else55:                                        ; preds = %lor.lhs.false39.i129, %decode_buffer.exit139
  %34 = load i8, ptr %next_finished, align 8, !dbg !518, !range !409, !noundef !410
  %loadedv57 = trunc nuw i8 %34 to i1, !dbg !518
  %cmp59 = icmp ult i64 %add29.i123, %out_size
  %or.cond = select i1 %loadedv57, i1 %cmp59, i1 false, !dbg !521
  br i1 %or.cond, label %cleanup67, label %cleanup64, !dbg !521

cleanup64:                                        ; preds = %if.then50, %if.else55
  %cmp1 = icmp ult i64 %add29.i123, %out_size, !dbg !354
  br i1 %cmp1, label %while.body, label %cleanup67, !dbg !355, !llvm.loop !522

cleanup67:                                        ; preds = %cleanup64, %if.then4, %lor.lhs.false, %decode_buffer.exit139, %if.else55, %lor.lhs.false39.i, %if.else.i, %if.then31.i, %while.cond.preheader, %if.end34, %if.then29
  %retval.4 = phi i32 [ 9, %if.then29 ], [ %loadedv36, %if.end34 ], [ 0, %while.cond.preheader ], [ %call.i, %if.else.i ], [ 0, %lor.lhs.false39.i ], [ %call.i, %if.then31.i ], [ 0, %cleanup64 ], [ %call16, %if.then4 ], [ 0, %lor.lhs.false ], [ %call.i119, %decode_buffer.exit139 ], [ 9, %if.else55 ]
  ret i32 %retval.4, !dbg !524
}

; Function Attrs: nounwind uwtable
define internal void @lz_decoder_end(ptr noundef %pcoder, ptr noundef %allocator) #0 !dbg !525 {
entry:
    #dbg_value(ptr %pcoder, !527, !DIExpression(), !530)
    #dbg_value(ptr %allocator, !528, !DIExpression(), !530)
    #dbg_value(ptr %pcoder, !529, !DIExpression(), !530)
  %next = getelementptr inbounds i8, ptr %pcoder, i64 88, !dbg !531
  tail call void @lzma_next_end(ptr noundef nonnull %next, ptr noundef %allocator) #8, !dbg !532
  %0 = load ptr, ptr %pcoder, align 8, !dbg !533
  tail call void @lzma_free(ptr noundef %0, ptr noundef %allocator) #8, !dbg !534
  %lz = getelementptr inbounds i8, ptr %pcoder, i64 48, !dbg !535
  %end = getelementptr inbounds i8, ptr %pcoder, i64 80, !dbg !537
  %1 = load ptr, ptr %end, align 8, !dbg !537
  %cmp.not = icmp eq ptr %1, null, !dbg !538
  %2 = load ptr, ptr %lz, align 8, !dbg !539
  br i1 %cmp.not, label %if.else, label %if.then, !dbg !540

if.then:                                          ; preds = %entry
  tail call void %1(ptr noundef %2, ptr noundef %allocator) #8, !dbg !541
  br label %if.end, !dbg !541

if.else:                                          ; preds = %entry
  tail call void @lzma_free(ptr noundef %2, ptr noundef %allocator) #8, !dbg !542
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @lzma_free(ptr noundef nonnull %pcoder, ptr noundef %allocator) #8, !dbg !543
  ret void, !dbg !544
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

declare !dbg !545 void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !548 i32 @lzma_next_filter_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @lzma_lz_decoder_memusage(i64 noundef %dictionary_size) local_unnamed_addr #5 !dbg !549 {
entry:
    #dbg_value(i64 %dictionary_size, !553, !DIExpression(), !554)
  %add = add i64 %dictionary_size, 4272, !dbg !555
  ret i64 %add, !dbg !556
}

; Function Attrs: nounwind uwtable
define dso_local void @lzma_lz_decoder_uncompressed(ptr nocapture noundef readonly %pcoder, i64 noundef %uncompressed_size) local_unnamed_addr #0 !dbg !557 {
entry:
    #dbg_value(ptr %pcoder, !559, !DIExpression(), !562)
    #dbg_value(i64 %uncompressed_size, !560, !DIExpression(), !562)
    #dbg_value(ptr %pcoder, !561, !DIExpression(), !562)
  %lz = getelementptr inbounds i8, ptr %pcoder, i64 48, !dbg !563
  %set_uncompressed = getelementptr inbounds i8, ptr %pcoder, i64 72, !dbg !564
  %0 = load ptr, ptr %set_uncompressed, align 8, !dbg !564
  %1 = load ptr, ptr %lz, align 8, !dbg !565
  tail call void %0(ptr noundef %1, i64 noundef %uncompressed_size) #8, !dbg !566
  ret void, !dbg !567
}

declare !dbg !568 void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!163, !164, !165, !166, !167, !168, !169}
!llvm.ident = !{!170}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !32, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "liblzma/lz/lz_decoder.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "ed19f3c26d5c9c90f2e6eec526321cb7")
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
!32 = !{!33, !34, !50, !91}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_coder_s", file: !1, line: 23, size: 34176, elements: !36)
!36 = !{!37, !58, !110, !152, !153, !154}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !35, file: !1, line: 25, baseType: !38, size: 384)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_dict", file: !39, line: 44, baseType: !40)
!39 = !DIFile(filename: "liblzma/lz/lz_decoder.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "27344aa2da5754ad4a118fbd9137003b")
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !39, line: 20, size: 384, elements: !41)
!41 = !{!42, !49, !53, !54, !55, !56}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !40, file: !39, line: 24, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !45, line: 24, baseType: !46)
!45 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !47, line: 38, baseType: !48)
!47 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!48 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !40, file: !39, line: 28, baseType: !50, size: 64, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !51, line: 18, baseType: !52)
!51 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!52 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !40, file: !39, line: 33, baseType: !50, size: 64, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !40, file: !39, line: 36, baseType: !50, size: 64, offset: 192)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !40, file: !39, line: 39, baseType: !50, size: 64, offset: 256)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "need_reset", scope: !40, file: !39, line: 42, baseType: !57, size: 8, offset: 320)
!57 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "lz", scope: !35, file: !1, line: 28, baseType: !59, size: 320, offset: 384)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_lz_decoder", file: !39, line: 72, baseType: !60)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !39, line: 54, size: 320, elements: !61)
!61 = !{!62, !66, !79, !85, !93}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !60, file: !39, line: 56, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_coder", file: !65, line: 78, baseType: null)
!65 = !DIFile(filename: "liblzma/common/common.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!66 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !60, file: !39, line: 59, baseType: !67, size: 64, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{!70, !71, !72, !74, !77, !50}
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!71 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !63)
!72 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !73)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!77 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !60, file: !39, line: 63, baseType: !80, size: 64, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DISubroutineType(types: !82)
!82 = !{null, !63, !83}
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "set_uncompressed", scope: !60, file: !39, line: 66, baseType: !86, size: 64, offset: 192)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DISubroutineType(types: !88)
!88 = !{null, !63, !89}
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !90, line: 63, baseType: !91)
!90 = !DIFile(filename: "liblzma/api/lzma/vli.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !45, line: 27, baseType: !92)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !47, line: 45, baseType: !52)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !60, file: !39, line: 70, baseType: !94, size: 64, offset: 256)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DISubroutineType(types: !96)
!96 = !{null, !63, !97}
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !4, line: 403, baseType: !99)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 341, size: 192, elements: !100)
!100 = !{!101, !105, !109}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !99, file: !4, line: 376, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DISubroutineType(types: !104)
!104 = !{!33, !33, !50, !50}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !99, file: !4, line: 390, baseType: !106, size: 64, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DISubroutineType(types: !108)
!108 = !{null, !33, !33}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !99, file: !4, line: 401, baseType: !33, size: 64, offset: 128)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !35, file: !1, line: 33, baseType: !111, size: 512, offset: 704)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_next_coder", file: !65, line: 80, baseType: !112)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_next_coder_s", file: !65, line: 124, size: 512, elements: !113)
!113 = !{!114, !115, !116, !119, !126, !128, !135, !140}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !112, file: !65, line: 126, baseType: !63, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !112, file: !65, line: 130, baseType: !89, size: 64, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !112, file: !65, line: 136, baseType: !117, size: 64, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !118, line: 90, baseType: !52)
!118 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!119 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !112, file: !65, line: 139, baseType: !120, size: 64, offset: 192)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_code_function", file: !65, line: 94, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{!70, !63, !97, !74, !77, !50, !124, !77, !50, !125}
!124 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !43)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !4, line: 322, baseType: !19)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !112, file: !65, line: 144, baseType: !127, size: 64, offset: 256)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_end_function", file: !65, line: 102, baseType: !94)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "get_check", scope: !112, file: !65, line: 148, baseType: !129, size: 64, offset: 320)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{!132, !133}
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !26, line: 55, baseType: !25)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "memconfig", scope: !112, file: !65, line: 152, baseType: !136, size: 64, offset: 384)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DISubroutineType(types: !138)
!138 = !{!70, !63, !139, !139, !91}
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !112, file: !65, line: 157, baseType: !141, size: 64, offset: 448)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DISubroutineType(types: !143)
!143 = !{!70, !63, !97, !144, !144}
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !146)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !147, line: 65, baseType: !148)
!147 = !DIFile(filename: "liblzma/api/lzma/filter.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !147, line: 43, size: 128, elements: !149)
!149 = !{!150, !151}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !148, file: !147, line: 54, baseType: !89, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !148, file: !147, line: 63, baseType: !33, size: 64, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "next_finished", scope: !35, file: !1, line: 36, baseType: !57, size: 8, offset: 1216)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "this_finished", scope: !35, file: !1, line: 40, baseType: !57, size: 8, offset: 1224)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !35, file: !1, line: 50, baseType: !155, size: 32896, offset: 1280)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !35, file: !1, line: 46, size: 32896, elements: !156)
!156 = !{!157, !158, !159}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !155, file: !1, line: 47, baseType: !50, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !155, file: !1, line: 48, baseType: !50, size: 64, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !155, file: !1, line: 49, baseType: !160, size: 32768, offset: 128)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 32768, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 4096)
!163 = !{i32 7, !"Dwarf Version", i32 5}
!164 = !{i32 2, !"Debug Info Version", i32 3}
!165 = !{i32 1, !"wchar_size", i32 4}
!166 = !{i32 8, !"PIC Level", i32 2}
!167 = !{i32 7, !"PIE Level", i32 2}
!168 = !{i32 7, !"uwtable", i32 2}
!169 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!170 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!171 = distinct !DISubprogram(name: "lzma_lz_decoder_init", scope: !1, file: !1, line: 207, type: !172, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !198)
!172 = !DISubroutineType(types: !173)
!173 = !{!70, !174, !97, !175, !187}
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter_info", file: !65, line: 82, baseType: !178)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_filter_info_s", file: !65, line: 109, size: 192, elements: !179)
!179 = !{!180, !181, !186}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !178, file: !65, line: 112, baseType: !89, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !178, file: !65, line: 116, baseType: !182, size: 64, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_init_function", file: !65, line: 86, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!70, !174, !97, !175}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !178, file: !65, line: 119, baseType: !33, size: 64, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{!70, !190, !97, !83, !191}
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_lz_options", file: !39, line: 51, baseType: !193)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !39, line: 47, size: 192, elements: !194)
!194 = !{!195, !196, !197}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "dict_size", scope: !193, file: !39, line: 48, baseType: !50, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict", scope: !193, file: !39, line: 49, baseType: !75, size: 64, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict_size", scope: !193, file: !39, line: 50, baseType: !50, size: 64, offset: 128)
!198 = !{!199, !200, !201, !202, !203, !204, !207, !211}
!199 = !DILocalVariable(name: "next", arg: 1, scope: !171, file: !1, line: 207, type: !174)
!200 = !DILocalVariable(name: "allocator", arg: 2, scope: !171, file: !1, line: 207, type: !97)
!201 = !DILocalVariable(name: "filters", arg: 3, scope: !171, file: !1, line: 208, type: !175)
!202 = !DILocalVariable(name: "lz_init", arg: 4, scope: !171, file: !1, line: 209, type: !187)
!203 = !DILocalVariable(name: "lz_options", scope: !171, file: !1, line: 230, type: !192)
!204 = !DILocalVariable(name: "ret_", scope: !205, file: !1, line: 231, type: !206)
!205 = distinct !DILexicalBlock(scope: !171, file: !1, line: 231, column: 2)
!206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!207 = !DILocalVariable(name: "copy_size", scope: !208, file: !1, line: 272, type: !210)
!208 = distinct !DILexicalBlock(scope: !209, file: !1, line: 269, column: 40)
!209 = distinct !DILexicalBlock(scope: !171, file: !1, line: 268, column: 6)
!210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!211 = !DILocalVariable(name: "offset", scope: !208, file: !1, line: 274, type: !210)
!212 = distinct !DIAssignID()
!213 = !DILocation(line: 0, scope: !171)
!214 = !DILocation(line: 214, column: 12, scope: !215)
!215 = distinct !DILexicalBlock(scope: !171, file: !1, line: 214, column: 6)
!216 = !DILocation(line: 214, column: 18, scope: !215)
!217 = !DILocation(line: 214, column: 6, scope: !171)
!218 = !DILocation(line: 215, column: 17, scope: !219)
!219 = distinct !DILexicalBlock(scope: !215, file: !1, line: 214, column: 27)
!220 = !DILocation(line: 215, column: 15, scope: !219)
!221 = !DILocation(line: 216, column: 19, scope: !222)
!222 = distinct !DILexicalBlock(scope: !219, file: !1, line: 216, column: 7)
!223 = !DILocation(line: 216, column: 7, scope: !219)
!224 = !DILocation(line: 219, column: 9, scope: !219)
!225 = !DILocation(line: 219, column: 14, scope: !219)
!226 = !DILocation(line: 220, column: 9, scope: !219)
!227 = !DILocation(line: 220, column: 13, scope: !219)
!228 = !DILocation(line: 222, column: 49, scope: !219)
!229 = !DILocation(line: 223, column: 32, scope: !219)
!230 = !DILocation(line: 223, column: 45, scope: !219)
!231 = !DILocation(line: 223, column: 50, scope: !219)
!232 = !DILocation(line: 224, column: 32, scope: !219)
!233 = !DILocation(line: 224, column: 40, scope: !219)
!234 = !DILocation(line: 224, column: 45, scope: !219)
!235 = !DILocation(line: 225, column: 32, scope: !219)
!236 = !DILocation(line: 225, column: 40, scope: !219)
!237 = !DILocation(line: 225, column: 47, scope: !219)
!238 = !DILocation(line: 231, column: 2, scope: !205)
!239 = !DILocation(line: 226, column: 2, scope: !219)
!240 = !DILocation(line: 230, column: 2, scope: !171)
!241 = !DILocation(line: 0, scope: !205)
!242 = !DILocation(line: 231, column: 2, scope: !243)
!243 = distinct !DILexicalBlock(scope: !205, file: !1, line: 231, column: 2)
!244 = !DILocation(line: 239, column: 17, scope: !245)
!245 = distinct !DILexicalBlock(scope: !171, file: !1, line: 239, column: 6)
!246 = !DILocation(line: 239, column: 27, scope: !245)
!247 = !DILocation(line: 239, column: 6, scope: !171)
!248 = !DILocation(line: 249, column: 27, scope: !249)
!249 = distinct !DILexicalBlock(scope: !171, file: !1, line: 249, column: 6)
!250 = !DILocation(line: 249, column: 6, scope: !171)
!251 = !DILocation(line: 252, column: 47, scope: !171)
!252 = !DILocation(line: 252, column: 53, scope: !171)
!253 = !DILocation(line: 252, column: 23, scope: !171)
!254 = distinct !DIAssignID()
!255 = !DILocation(line: 255, column: 35, scope: !256)
!256 = distinct !DILexicalBlock(scope: !171, file: !1, line: 255, column: 6)
!257 = !DILocation(line: 255, column: 48, scope: !256)
!258 = !DILocation(line: 255, column: 53, scope: !256)
!259 = !DILocation(line: 255, column: 6, scope: !171)
!260 = !DILocation(line: 256, column: 55, scope: !261)
!261 = distinct !DILexicalBlock(scope: !256, file: !1, line: 255, column: 78)
!262 = !DILocation(line: 256, column: 3, scope: !261)
!263 = !DILocation(line: 258, column: 29, scope: !261)
!264 = !DILocation(line: 258, column: 7, scope: !261)
!265 = !DILocation(line: 257, column: 32, scope: !261)
!266 = !DILocation(line: 258, column: 5, scope: !261)
!267 = !DILocation(line: 259, column: 36, scope: !268)
!268 = distinct !DILexicalBlock(scope: !261, file: !1, line: 259, column: 7)
!269 = !DILocation(line: 259, column: 49, scope: !268)
!270 = !DILocation(line: 259, column: 53, scope: !268)
!271 = !DILocation(line: 259, column: 7, scope: !261)
!272 = !DILocation(line: 262, column: 63, scope: !261)
!273 = !DILocation(line: 262, column: 45, scope: !261)
!274 = !DILocation(line: 262, column: 50, scope: !261)
!275 = !DILocation(line: 265, column: 25, scope: !171)
!276 = !DILocation(line: 60, column: 30, scope: !277, inlinedAt: !283)
!277 = distinct !DISubprogram(name: "lz_decoder_reset", scope: !1, file: !1, line: 55, type: !278, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !280)
!278 = !DISubroutineType(types: !279)
!279 = !{null, !63}
!280 = !{!281, !282}
!281 = !DILocalVariable(name: "pcoder", arg: 1, scope: !277, file: !1, line: 55, type: !63)
!282 = !DILocalVariable(name: "coder", scope: !277, file: !1, line: 57, type: !34)
!283 = distinct !DILocation(line: 265, column: 2, scope: !171)
!284 = !DILocation(line: 263, column: 2, scope: !261)
!285 = !DILocation(line: 0, scope: !277, inlinedAt: !283)
!286 = !DILocation(line: 58, column: 14, scope: !277, inlinedAt: !283)
!287 = !DILocation(line: 59, column: 19, scope: !277, inlinedAt: !283)
!288 = !DILocation(line: 60, column: 14, scope: !277, inlinedAt: !283)
!289 = !DILocation(line: 60, column: 2, scope: !277, inlinedAt: !283)
!290 = !DILocation(line: 60, column: 40, scope: !277, inlinedAt: !283)
!291 = !DILocation(line: 61, column: 14, scope: !277, inlinedAt: !283)
!292 = !DILocation(line: 61, column: 25, scope: !277, inlinedAt: !283)
!293 = !DILocation(line: 268, column: 17, scope: !209)
!294 = !DILocation(line: 268, column: 29, scope: !209)
!295 = !DILocation(line: 269, column: 4, scope: !209)
!296 = !DILocation(line: 272, column: 28, scope: !208)
!297 = !DILocation(line: 0, scope: !208)
!298 = !DILocation(line: 274, column: 53, scope: !208)
!299 = !DILocation(line: 275, column: 39, scope: !208)
!300 = !DILocation(line: 275, column: 52, scope: !208)
!301 = !DILocation(line: 275, column: 80, scope: !208)
!302 = !DILocation(line: 275, column: 3, scope: !208)
!303 = !DILocation(line: 277, column: 32, scope: !208)
!304 = !DILocation(line: 277, column: 45, scope: !208)
!305 = !DILocation(line: 277, column: 49, scope: !208)
!306 = !DILocation(line: 278, column: 32, scope: !208)
!307 = !DILocation(line: 278, column: 45, scope: !208)
!308 = !DILocation(line: 278, column: 50, scope: !208)
!309 = !DILocation(line: 279, column: 2, scope: !208)
!310 = !DILocation(line: 282, column: 31, scope: !171)
!311 = !DILocation(line: 282, column: 39, scope: !171)
!312 = !DILocation(line: 282, column: 53, scope: !171)
!313 = !DILocation(line: 283, column: 31, scope: !171)
!314 = !DILocation(line: 283, column: 39, scope: !171)
!315 = !DILocation(line: 283, column: 53, scope: !171)
!316 = !DILocation(line: 284, column: 31, scope: !171)
!317 = !DILocation(line: 284, column: 39, scope: !171)
!318 = !DILocation(line: 284, column: 48, scope: !171)
!319 = !DILocation(line: 285, column: 31, scope: !171)
!320 = !DILocation(line: 285, column: 44, scope: !171)
!321 = !DILocation(line: 285, column: 49, scope: !171)
!322 = !DILocation(line: 288, column: 61, scope: !171)
!323 = !DILocation(line: 288, column: 69, scope: !171)
!324 = !DILocation(line: 289, column: 12, scope: !171)
!325 = !DILocation(line: 288, column: 9, scope: !171)
!326 = !DILocation(line: 288, column: 2, scope: !171)
!327 = !DILocation(line: 290, column: 1, scope: !171)
!328 = !DISubprogram(name: "lzma_alloc", scope: !65, file: !65, line: 211, type: !329, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!329 = !DISubroutineType(types: !330)
!330 = !{!33, !50, !97}
!331 = distinct !DISubprogram(name: "lz_decode", scope: !1, file: !1, line: 130, type: !122, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !332)
!332 = !{!333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !347}
!333 = !DILocalVariable(name: "pcoder", arg: 1, scope: !331, file: !1, line: 130, type: !63)
!334 = !DILocalVariable(name: "allocator", arg: 2, scope: !331, file: !1, line: 131, type: !97)
!335 = !DILocalVariable(name: "in", arg: 3, scope: !331, file: !1, line: 132, type: !74)
!336 = !DILocalVariable(name: "in_pos", arg: 4, scope: !331, file: !1, line: 132, type: !77)
!337 = !DILocalVariable(name: "in_size", arg: 5, scope: !331, file: !1, line: 133, type: !50)
!338 = !DILocalVariable(name: "out", arg: 6, scope: !331, file: !1, line: 133, type: !124)
!339 = !DILocalVariable(name: "out_pos", arg: 7, scope: !331, file: !1, line: 134, type: !77)
!340 = !DILocalVariable(name: "out_size", arg: 8, scope: !331, file: !1, line: 134, type: !50)
!341 = !DILocalVariable(name: "action", arg: 9, scope: !331, file: !1, line: 135, type: !125)
!342 = !DILocalVariable(name: "coder", scope: !331, file: !1, line: 137, type: !34)
!343 = !DILocalVariable(name: "ret", scope: !344, file: !1, line: 151, type: !206)
!344 = distinct !DILexicalBlock(scope: !345, file: !1, line: 147, column: 45)
!345 = distinct !DILexicalBlock(scope: !346, file: !1, line: 146, column: 7)
!346 = distinct !DILexicalBlock(scope: !331, file: !1, line: 144, column: 30)
!347 = !DILocalVariable(name: "ret", scope: !346, file: !1, line: 173, type: !206)
!348 = !DILocation(line: 0, scope: !331)
!349 = !DILocation(line: 138, column: 13, scope: !350)
!350 = distinct !DILexicalBlock(scope: !331, file: !1, line: 138, column: 6)
!351 = !DILocation(line: 138, column: 18, scope: !350)
!352 = !DILocation(line: 138, column: 23, scope: !350)
!353 = !DILocation(line: 138, column: 6, scope: !331)
!354 = !DILocation(line: 144, column: 18, scope: !331)
!355 = !DILocation(line: 144, column: 2, scope: !331)
!356 = !{!357}
!357 = distinct !{!357, !358, !"decode_buffer: %out_pos"}
!358 = distinct !{!358, !"decode_buffer"}
!359 = !DILocation(line: 139, column: 10, scope: !350)
!360 = !DILocalVariable(name: "pcoder", arg: 1, scope: !361, file: !1, line: 67, type: !63)
!361 = distinct !DISubprogram(name: "decode_buffer", scope: !1, file: !1, line: 67, type: !362, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !364)
!362 = !DISubroutineType(types: !363)
!363 = !{!70, !63, !74, !77, !50, !124, !77, !50}
!364 = !{!360, !365, !366, !367, !368, !369, !370, !371, !372, !374, !375}
!365 = !DILocalVariable(name: "in", arg: 2, scope: !361, file: !1, line: 68, type: !74)
!366 = !DILocalVariable(name: "in_pos", arg: 3, scope: !361, file: !1, line: 68, type: !77)
!367 = !DILocalVariable(name: "in_size", arg: 4, scope: !361, file: !1, line: 69, type: !50)
!368 = !DILocalVariable(name: "out", arg: 5, scope: !361, file: !1, line: 69, type: !124)
!369 = !DILocalVariable(name: "out_pos", arg: 6, scope: !361, file: !1, line: 70, type: !77)
!370 = !DILocalVariable(name: "out_size", arg: 7, scope: !361, file: !1, line: 70, type: !50)
!371 = !DILocalVariable(name: "coder", scope: !361, file: !1, line: 72, type: !34)
!372 = !DILocalVariable(name: "dict_start", scope: !373, file: !1, line: 80, type: !210)
!373 = distinct !DILexicalBlock(scope: !361, file: !1, line: 73, column: 15)
!374 = !DILocalVariable(name: "ret", scope: !373, file: !1, line: 91, type: !206)
!375 = !DILocalVariable(name: "copy_size", scope: !373, file: !1, line: 97, type: !210)
!376 = !DILocation(line: 0, scope: !361, inlinedAt: !377)
!377 = distinct !DILocation(line: 139, column: 10, scope: !350)
!378 = !{!379, !380, !381}
!379 = distinct !{!379, !358, !"decode_buffer: %in"}
!380 = distinct !{!380, !358, !"decode_buffer: %in_pos"}
!381 = distinct !{!381, !358, !"decode_buffer: %out"}
!382 = !DILocation(line: 73, column: 2, scope: !361, inlinedAt: !377)
!383 = !DILocation(line: 75, column: 19, scope: !384, inlinedAt: !377)
!384 = distinct !DILexicalBlock(scope: !373, file: !1, line: 75, column: 7)
!385 = !{!379, !380, !381, !357}
!386 = !DILocation(line: 75, column: 38, scope: !384, inlinedAt: !377)
!387 = !DILocation(line: 75, column: 23, scope: !384, inlinedAt: !377)
!388 = !DILocation(line: 75, column: 7, scope: !373, inlinedAt: !377)
!389 = !DILocation(line: 76, column: 20, scope: !384, inlinedAt: !377)
!390 = !DILocation(line: 76, column: 4, scope: !384, inlinedAt: !377)
!391 = !DILocation(line: 80, column: 41, scope: !373, inlinedAt: !377)
!392 = !DILocation(line: 0, scope: !373, inlinedAt: !377)
!393 = !DILocation(line: 87, column: 7, scope: !373, inlinedAt: !377)
!394 = !DILocation(line: 87, column: 5, scope: !373, inlinedAt: !377)
!395 = !DILocation(line: 86, column: 21, scope: !373, inlinedAt: !377)
!396 = !DILocation(line: 91, column: 34, scope: !373, inlinedAt: !377)
!397 = !DILocation(line: 92, column: 15, scope: !373, inlinedAt: !377)
!398 = !DILocation(line: 91, column: 24, scope: !373, inlinedAt: !377)
!399 = !{!381, !357}
!400 = !DILocation(line: 97, column: 40, scope: !373, inlinedAt: !377)
!401 = !DILocation(line: 97, column: 44, scope: !373, inlinedAt: !377)
!402 = !DILocation(line: 99, column: 14, scope: !373, inlinedAt: !377)
!403 = !DILocation(line: 99, column: 38, scope: !373, inlinedAt: !377)
!404 = !DILocation(line: 99, column: 42, scope: !373, inlinedAt: !377)
!405 = !DILocation(line: 99, column: 3, scope: !373, inlinedAt: !377)
!406 = !DILocation(line: 101, column: 12, scope: !373, inlinedAt: !377)
!407 = !DILocation(line: 104, column: 19, scope: !408, inlinedAt: !377)
!408 = distinct !DILexicalBlock(scope: !373, file: !1, line: 104, column: 7)
!409 = !{i8 0, i8 2}
!410 = !{}
!411 = !DILocation(line: 104, column: 7, scope: !373, inlinedAt: !377)
!412 = !DILocation(line: 0, scope: !277, inlinedAt: !413)
!413 = distinct !DILocation(line: 105, column: 4, scope: !414, inlinedAt: !377)
!414 = distinct !DILexicalBlock(scope: !408, file: !1, line: 104, column: 31)
!415 = !DILocation(line: 59, column: 19, scope: !277, inlinedAt: !413)
!416 = !DILocation(line: 60, column: 30, scope: !277, inlinedAt: !413)
!417 = !DILocation(line: 60, column: 2, scope: !277, inlinedAt: !413)
!418 = !DILocation(line: 60, column: 40, scope: !277, inlinedAt: !413)
!419 = !DILocation(line: 61, column: 25, scope: !277, inlinedAt: !413)
!420 = !DILocation(line: 109, column: 12, scope: !421, inlinedAt: !377)
!421 = distinct !DILexicalBlock(scope: !414, file: !1, line: 109, column: 8)
!422 = !DILocation(line: 109, column: 23, scope: !421, inlinedAt: !377)
!423 = !DILocation(line: 121, column: 12, scope: !424, inlinedAt: !377)
!424 = distinct !DILexicalBlock(scope: !425, file: !1, line: 121, column: 8)
!425 = distinct !DILexicalBlock(scope: !408, file: !1, line: 111, column: 10)
!426 = !DILocation(line: 121, column: 23, scope: !424, inlinedAt: !377)
!427 = !DILocation(line: 122, column: 39, scope: !424, inlinedAt: !377)
!428 = !DILocation(line: 122, column: 25, scope: !424, inlinedAt: !377)
!429 = !DILocation(line: 121, column: 8, scope: !425, inlinedAt: !377)
!430 = distinct !{!430, !382, !431}
!431 = !DILocation(line: 125, column: 2, scope: !361, inlinedAt: !377)
!432 = !DILocation(line: 146, column: 15, scope: !345)
!433 = !DILocation(line: 147, column: 5, scope: !345)
!434 = !DILocation(line: 147, column: 20, scope: !345)
!435 = !DILocation(line: 147, column: 39, scope: !345)
!436 = !DILocation(line: 147, column: 24, scope: !345)
!437 = !DILocation(line: 146, column: 7, scope: !346)
!438 = !DILocation(line: 149, column: 21, scope: !344)
!439 = !DILocation(line: 151, column: 37, scope: !344)
!440 = !DILocation(line: 152, column: 18, scope: !344)
!441 = !DILocation(line: 151, column: 25, scope: !344)
!442 = !DILocation(line: 0, scope: !344)
!443 = !DILocation(line: 157, column: 8, scope: !344)
!444 = !DILocation(line: 158, column: 26, scope: !445)
!445 = distinct !DILexicalBlock(scope: !344, file: !1, line: 157, column: 8)
!446 = !DILocation(line: 158, column: 5, scope: !445)
!447 = !DILocation(line: 159, column: 43, scope: !448)
!448 = distinct !DILexicalBlock(scope: !445, file: !1, line: 159, column: 13)
!449 = !DILocation(line: 159, column: 48, scope: !448)
!450 = !DILocation(line: 159, column: 13, scope: !445)
!451 = !DILocation(line: 163, column: 14, scope: !452)
!452 = distinct !DILexicalBlock(scope: !346, file: !1, line: 163, column: 7)
!453 = !DILocation(line: 0, scope: !346)
!454 = !DILocation(line: 163, column: 7, scope: !346)
!455 = !DILocation(line: 164, column: 25, scope: !456)
!456 = distinct !DILexicalBlock(scope: !457, file: !1, line: 164, column: 8)
!457 = distinct !DILexicalBlock(scope: !452, file: !1, line: 163, column: 29)
!458 = !DILocation(line: 164, column: 8, scope: !457)
!459 = !DILocation(line: 167, column: 15, scope: !460)
!460 = distinct !DILexicalBlock(scope: !457, file: !1, line: 167, column: 8)
!461 = !DILocation(line: 0, scope: !457)
!462 = !{!463}
!463 = distinct !{!463, !464, !"decode_buffer: %out_pos"}
!464 = distinct !{!464, !"decode_buffer"}
!465 = !DILocation(line: 173, column: 24, scope: !346)
!466 = !DILocation(line: 0, scope: !361, inlinedAt: !467)
!467 = distinct !DILocation(line: 173, column: 24, scope: !346)
!468 = !DILocation(line: 73, column: 2, scope: !361, inlinedAt: !467)
!469 = !DILocation(line: 75, column: 19, scope: !384, inlinedAt: !467)
!470 = !{!471, !472, !473, !463}
!471 = distinct !{!471, !464, !"decode_buffer: %in"}
!472 = distinct !{!472, !464, !"decode_buffer: %in_pos"}
!473 = distinct !{!473, !464, !"decode_buffer: %out"}
!474 = !DILocation(line: 75, column: 38, scope: !384, inlinedAt: !467)
!475 = !DILocation(line: 75, column: 23, scope: !384, inlinedAt: !467)
!476 = !DILocation(line: 75, column: 7, scope: !373, inlinedAt: !467)
!477 = !DILocation(line: 76, column: 20, scope: !384, inlinedAt: !467)
!478 = !DILocation(line: 76, column: 4, scope: !384, inlinedAt: !467)
!479 = !DILocation(line: 80, column: 41, scope: !373, inlinedAt: !467)
!480 = !DILocation(line: 0, scope: !373, inlinedAt: !467)
!481 = !DILocation(line: 87, column: 7, scope: !373, inlinedAt: !467)
!482 = !DILocation(line: 87, column: 5, scope: !373, inlinedAt: !467)
!483 = !DILocation(line: 86, column: 21, scope: !373, inlinedAt: !467)
!484 = !DILocation(line: 91, column: 34, scope: !373, inlinedAt: !467)
!485 = !DILocation(line: 92, column: 15, scope: !373, inlinedAt: !467)
!486 = !DILocation(line: 91, column: 24, scope: !373, inlinedAt: !467)
!487 = !{!473, !463}
!488 = !DILocation(line: 97, column: 40, scope: !373, inlinedAt: !467)
!489 = !DILocation(line: 97, column: 44, scope: !373, inlinedAt: !467)
!490 = !DILocation(line: 99, column: 14, scope: !373, inlinedAt: !467)
!491 = !DILocation(line: 99, column: 38, scope: !373, inlinedAt: !467)
!492 = !DILocation(line: 99, column: 42, scope: !373, inlinedAt: !467)
!493 = !DILocation(line: 99, column: 3, scope: !373, inlinedAt: !467)
!494 = !DILocation(line: 101, column: 12, scope: !373, inlinedAt: !467)
!495 = !{!471, !472, !473}
!496 = !DILocation(line: 104, column: 19, scope: !408, inlinedAt: !467)
!497 = !DILocation(line: 104, column: 7, scope: !373, inlinedAt: !467)
!498 = !DILocation(line: 0, scope: !277, inlinedAt: !499)
!499 = distinct !DILocation(line: 105, column: 4, scope: !414, inlinedAt: !467)
!500 = !DILocation(line: 59, column: 19, scope: !277, inlinedAt: !499)
!501 = !DILocation(line: 60, column: 30, scope: !277, inlinedAt: !499)
!502 = !DILocation(line: 60, column: 2, scope: !277, inlinedAt: !499)
!503 = !DILocation(line: 60, column: 40, scope: !277, inlinedAt: !499)
!504 = !DILocation(line: 61, column: 25, scope: !277, inlinedAt: !499)
!505 = !DILocation(line: 109, column: 12, scope: !421, inlinedAt: !467)
!506 = !DILocation(line: 109, column: 23, scope: !421, inlinedAt: !467)
!507 = !DILocation(line: 121, column: 12, scope: !424, inlinedAt: !467)
!508 = !DILocation(line: 121, column: 23, scope: !424, inlinedAt: !467)
!509 = !DILocation(line: 122, column: 39, scope: !424, inlinedAt: !467)
!510 = !DILocation(line: 122, column: 25, scope: !424, inlinedAt: !467)
!511 = !DILocation(line: 121, column: 8, scope: !425, inlinedAt: !467)
!512 = distinct !{!512, !468, !513}
!513 = !DILocation(line: 125, column: 2, scope: !361, inlinedAt: !467)
!514 = !DILocation(line: 177, column: 7, scope: !346)
!515 = !DILocation(line: 178, column: 25, scope: !516)
!516 = distinct !DILexicalBlock(scope: !346, file: !1, line: 177, column: 7)
!517 = !DILocation(line: 178, column: 4, scope: !516)
!518 = !DILocation(line: 181, column: 19, scope: !519)
!519 = distinct !DILexicalBlock(scope: !520, file: !1, line: 181, column: 12)
!520 = distinct !DILexicalBlock(scope: !516, file: !1, line: 179, column: 12)
!521 = !DILocation(line: 181, column: 33, scope: !519)
!522 = distinct !{!522, !355, !523}
!523 = !DILocation(line: 183, column: 2, scope: !331)
!524 = !DILocation(line: 186, column: 1, scope: !331)
!525 = distinct !DISubprogram(name: "lz_decoder_end", scope: !1, file: !1, line: 190, type: !95, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !526)
!526 = !{!527, !528, !529}
!527 = !DILocalVariable(name: "pcoder", arg: 1, scope: !525, file: !1, line: 190, type: !63)
!528 = !DILocalVariable(name: "allocator", arg: 2, scope: !525, file: !1, line: 190, type: !97)
!529 = !DILocalVariable(name: "coder", scope: !525, file: !1, line: 192, type: !34)
!530 = !DILocation(line: 0, scope: !525)
!531 = !DILocation(line: 193, column: 24, scope: !525)
!532 = !DILocation(line: 193, column: 2, scope: !525)
!533 = !DILocation(line: 194, column: 24, scope: !525)
!534 = !DILocation(line: 194, column: 2, scope: !525)
!535 = !DILocation(line: 196, column: 13, scope: !536)
!536 = distinct !DILexicalBlock(scope: !525, file: !1, line: 196, column: 6)
!537 = !DILocation(line: 196, column: 16, scope: !536)
!538 = !DILocation(line: 196, column: 20, scope: !536)
!539 = !DILocation(line: 0, scope: !536)
!540 = !DILocation(line: 196, column: 6, scope: !525)
!541 = !DILocation(line: 197, column: 3, scope: !536)
!542 = !DILocation(line: 199, column: 3, scope: !536)
!543 = !DILocation(line: 201, column: 2, scope: !525)
!544 = !DILocation(line: 203, column: 1, scope: !525)
!545 = !DISubprogram(name: "lzma_free", scope: !65, file: !65, line: 215, type: !546, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!546 = !DISubroutineType(types: !547)
!547 = !{null, !33, !97}
!548 = !DISubprogram(name: "lzma_next_filter_init", scope: !65, file: !65, line: 226, type: !184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!549 = distinct !DISubprogram(name: "lzma_lz_decoder_memusage", scope: !1, file: !1, line: 294, type: !550, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !552)
!550 = !DISubroutineType(types: !551)
!551 = !{!91, !50}
!552 = !{!553}
!553 = !DILocalVariable(name: "dictionary_size", arg: 1, scope: !549, file: !1, line: 294, type: !50)
!554 = !DILocation(line: 0, scope: !549)
!555 = !DILocation(line: 296, column: 37, scope: !549)
!556 = !DILocation(line: 296, column: 2, scope: !549)
!557 = distinct !DISubprogram(name: "lzma_lz_decoder_uncompressed", scope: !1, file: !1, line: 301, type: !87, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !558)
!558 = !{!559, !560, !561}
!559 = !DILocalVariable(name: "pcoder", arg: 1, scope: !557, file: !1, line: 301, type: !63)
!560 = !DILocalVariable(name: "uncompressed_size", arg: 2, scope: !557, file: !1, line: 301, type: !89)
!561 = !DILocalVariable(name: "coder", scope: !557, file: !1, line: 303, type: !34)
!562 = !DILocation(line: 0, scope: !557)
!563 = !DILocation(line: 304, column: 9, scope: !557)
!564 = !DILocation(line: 304, column: 12, scope: !557)
!565 = !DILocation(line: 304, column: 39, scope: !557)
!566 = !DILocation(line: 304, column: 2, scope: !557)
!567 = !DILocation(line: 305, column: 1, scope: !557)
!568 = !DISubprogram(name: "lzma_next_end", scope: !65, file: !65, line: 237, type: !569, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!569 = !DISubroutineType(types: !570)
!570 = !{null, !174, !97}
