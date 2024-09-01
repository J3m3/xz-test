; ModuleID = 'liblzma/common/auto_decoder.c'
source_filename = "liblzma/common/auto_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_auto_decoder(ptr noundef %strm, i64 noundef %memlimit, i32 noundef %flags) local_unnamed_addr #0 !dbg !157 {
entry:
    #dbg_value(ptr %strm, !186, !DIExpression(), !194)
    #dbg_value(i64 %memlimit, !187, !DIExpression(), !194)
    #dbg_value(i32 %flags, !188, !DIExpression(), !194)
  %call = tail call i32 @lzma_strm_init(ptr noundef %strm) #3, !dbg !195
    #dbg_value(i32 %call, !189, !DIExpression(), !196)
  %cmp.not.not = icmp eq i32 %call, 0, !dbg !197
  br i1 %cmp.not.not, label %do.end, label %return

do.end:                                           ; preds = %entry
  %internal = getelementptr inbounds i8, ptr %strm, i64 56, !dbg !199
  %0 = load ptr, ptr %internal, align 8, !dbg !199
  %allocator = getelementptr inbounds i8, ptr %strm, i64 48, !dbg !199
  %1 = load ptr, ptr %allocator, align 8, !dbg !199
    #dbg_value(ptr %0, !200, !DIExpression(), !209)
    #dbg_value(ptr %1, !206, !DIExpression(), !209)
    #dbg_value(i64 %memlimit, !207, !DIExpression(), !209)
    #dbg_value(i32 %flags, !208, !DIExpression(), !209)
  %init.i = getelementptr inbounds i8, ptr %0, i64 16, !dbg !211
  %2 = load i64, ptr %init.i, align 8, !dbg !211
  %cmp.not.i = icmp eq i64 %2, ptrtoint (ptr @auto_decoder_init to i64), !dbg !211
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !dbg !214

if.then.i:                                        ; preds = %do.end
  tail call void @lzma_next_end(ptr noundef nonnull %0, ptr noundef %1) #3, !dbg !211
  br label %if.end.i, !dbg !211

if.end.i:                                         ; preds = %if.then.i, %do.end
  store i64 ptrtoint (ptr @auto_decoder_init to i64), ptr %init.i, align 8, !dbg !214
  %cmp2.i = icmp eq i64 %memlimit, 0, !dbg !215
  br i1 %cmp2.i, label %cleanup7, label %if.end4.i, !dbg !217

if.end4.i:                                        ; preds = %if.end.i
  %tobool.not.i = icmp ult i32 %flags, 16, !dbg !218
  br i1 %tobool.not.i, label %if.end6.i, label %cleanup7, !dbg !220

if.end6.i:                                        ; preds = %if.end4.i
  %3 = load ptr, ptr %0, align 8, !dbg !221
  %cmp7.i = icmp eq ptr %3, null, !dbg !223
  br i1 %cmp7.i, label %if.then8.i, label %do.end10, !dbg !224

if.then8.i:                                       ; preds = %if.end6.i
  %call.i = tail call ptr @lzma_alloc(i64 noundef 80, ptr noundef %1) #3, !dbg !225
  store ptr %call.i, ptr %0, align 8, !dbg !227
  %cmp11.i = icmp eq ptr %call.i, null, !dbg !228
  br i1 %cmp11.i, label %cleanup7, label %if.end13.i, !dbg !230

if.end13.i:                                       ; preds = %if.then8.i
  %code.i = getelementptr inbounds i8, ptr %0, i64 24, !dbg !231
  store ptr @auto_decode, ptr %code.i, align 8, !dbg !232
  %end.i = getelementptr inbounds i8, ptr %0, i64 32, !dbg !233
  store ptr @auto_decoder_end, ptr %end.i, align 8, !dbg !234
  %get_check.i = getelementptr inbounds i8, ptr %0, i64 40, !dbg !235
  store ptr @auto_decoder_get_check, ptr %get_check.i, align 8, !dbg !236
  %memconfig.i = getelementptr inbounds i8, ptr %0, i64 48, !dbg !237
  store ptr @auto_decoder_memconfig, ptr %memconfig.i, align 8, !dbg !238
  store ptr null, ptr %call.i, align 8, !dbg !239
  %.compoundliteral.sroa.2.0.next15.sroa_idx.i = getelementptr inbounds i8, ptr %call.i, i64 8, !dbg !239
  store i64 -1, ptr %.compoundliteral.sroa.2.0.next15.sroa_idx.i, align 8, !dbg !239
  %.compoundliteral.sroa.3.0.next15.sroa_idx.i = getelementptr inbounds i8, ptr %call.i, i64 16, !dbg !239
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.compoundliteral.sroa.3.0.next15.sroa_idx.i, i8 0, i64 48, i1 false), !dbg !239
  %.pre.i = load ptr, ptr %0, align 8, !dbg !240
  br label %do.end10, !dbg !241

cleanup7:                                         ; preds = %if.then8.i, %if.end4.i, %if.end.i
  %retval.0.i.ph = phi i32 [ 5, %if.then8.i ], [ 8, %if.end4.i ], [ 11, %if.end.i ]
    #dbg_value(i32 %retval.0.i.ph, !193, !DIExpression(), !242)
  tail call void @lzma_end(ptr noundef nonnull %strm) #3, !dbg !243
  br label %return

do.end10:                                         ; preds = %if.end13.i, %if.end6.i
  %4 = phi ptr [ %.pre.i, %if.end13.i ], [ %3, %if.end6.i ], !dbg !240
  %memlimit24.i = getelementptr inbounds i8, ptr %4, i64 64, !dbg !246
  store i64 %memlimit, ptr %memlimit24.i, align 8, !dbg !247
  %5 = load ptr, ptr %0, align 8, !dbg !248
  %flags26.i = getelementptr inbounds i8, ptr %5, i64 72, !dbg !249
  store i32 %flags, ptr %flags26.i, align 8, !dbg !250
  %6 = load ptr, ptr %0, align 8, !dbg !251
  %sequence.i = getelementptr inbounds i8, ptr %6, i64 76, !dbg !252
  store i32 0, ptr %sequence.i, align 4, !dbg !253
    #dbg_value(i32 0, !193, !DIExpression(), !242)
  %7 = load ptr, ptr %internal, align 8, !dbg !254
  %supported_actions = getelementptr inbounds i8, ptr %7, i64 80, !dbg !255
  store i8 1, ptr %supported_actions, align 8, !dbg !256
  %8 = load ptr, ptr %internal, align 8, !dbg !257
  %arrayidx14 = getelementptr inbounds i8, ptr %8, i64 83, !dbg !258
  store i8 1, ptr %arrayidx14, align 1, !dbg !259
  br label %return, !dbg !260

return:                                           ; preds = %cleanup7, %entry, %do.end10
  %retval.2 = phi i32 [ %call, %entry ], [ %retval.0.i.ph, %cleanup7 ], [ 0, %do.end10 ], !dbg !194
  ret i32 %retval.2, !dbg !261
}

declare !dbg !262 i32 @lzma_strm_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 12) i32 @auto_decoder_init(ptr noundef %next, ptr noundef %allocator, i64 noundef %memlimit, i32 noundef %flags) #0 !dbg !201 {
entry:
    #dbg_value(ptr %next, !200, !DIExpression(), !265)
    #dbg_value(ptr %allocator, !206, !DIExpression(), !265)
    #dbg_value(i64 %memlimit, !207, !DIExpression(), !265)
    #dbg_value(i32 %flags, !208, !DIExpression(), !265)
  %init = getelementptr inbounds i8, ptr %next, i64 16, !dbg !266
  %0 = load i64, ptr %init, align 8, !dbg !266
  %cmp.not = icmp eq i64 %0, ptrtoint (ptr @auto_decoder_init to i64), !dbg !266
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !267

if.then:                                          ; preds = %entry
  tail call void @lzma_next_end(ptr noundef nonnull %next, ptr noundef %allocator) #3, !dbg !266
  br label %if.end, !dbg !266

if.end:                                           ; preds = %if.then, %entry
  store i64 ptrtoint (ptr @auto_decoder_init to i64), ptr %init, align 8, !dbg !267
  %cmp2 = icmp eq i64 %memlimit, 0, !dbg !268
  br i1 %cmp2, label %return, label %if.end4, !dbg !269

if.end4:                                          ; preds = %if.end
  %tobool.not = icmp ult i32 %flags, 16, !dbg !270
  br i1 %tobool.not, label %if.end6, label %return, !dbg !271

if.end6:                                          ; preds = %if.end4
  %1 = load ptr, ptr %next, align 8, !dbg !272
  %cmp7 = icmp eq ptr %1, null, !dbg !273
  br i1 %cmp7, label %if.then8, label %if.end22, !dbg !274

if.then8:                                         ; preds = %if.end6
  %call = tail call ptr @lzma_alloc(i64 noundef 80, ptr noundef %allocator) #3, !dbg !275
  store ptr %call, ptr %next, align 8, !dbg !276
  %cmp11 = icmp eq ptr %call, null, !dbg !277
  br i1 %cmp11, label %return, label %if.end13, !dbg !278

if.end13:                                         ; preds = %if.then8
  %code = getelementptr inbounds i8, ptr %next, i64 24, !dbg !279
  store ptr @auto_decode, ptr %code, align 8, !dbg !280
  %end = getelementptr inbounds i8, ptr %next, i64 32, !dbg !281
  store ptr @auto_decoder_end, ptr %end, align 8, !dbg !282
  %get_check = getelementptr inbounds i8, ptr %next, i64 40, !dbg !283
  store ptr @auto_decoder_get_check, ptr %get_check, align 8, !dbg !284
  %memconfig = getelementptr inbounds i8, ptr %next, i64 48, !dbg !285
  store ptr @auto_decoder_memconfig, ptr %memconfig, align 8, !dbg !286
  store ptr null, ptr %call, align 8, !dbg !287
  %.compoundliteral.sroa.2.0.next15.sroa_idx = getelementptr inbounds i8, ptr %call, i64 8, !dbg !287
  store i64 -1, ptr %.compoundliteral.sroa.2.0.next15.sroa_idx, align 8, !dbg !287
  %.compoundliteral.sroa.3.0.next15.sroa_idx = getelementptr inbounds i8, ptr %call, i64 16, !dbg !287
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.compoundliteral.sroa.3.0.next15.sroa_idx, i8 0, i64 48, i1 false), !dbg !287
  %.pre = load ptr, ptr %next, align 8, !dbg !288
  br label %if.end22, !dbg !289

if.end22:                                         ; preds = %if.end13, %if.end6
  %2 = phi ptr [ %.pre, %if.end13 ], [ %1, %if.end6 ], !dbg !288
  %memlimit24 = getelementptr inbounds i8, ptr %2, i64 64, !dbg !290
  store i64 %memlimit, ptr %memlimit24, align 8, !dbg !291
  %3 = load ptr, ptr %next, align 8, !dbg !292
  %flags26 = getelementptr inbounds i8, ptr %3, i64 72, !dbg !293
  store i32 %flags, ptr %flags26, align 8, !dbg !294
  %4 = load ptr, ptr %next, align 8, !dbg !295
  %sequence = getelementptr inbounds i8, ptr %4, i64 76, !dbg !296
  store i32 0, ptr %sequence, align 4, !dbg !297
  br label %return, !dbg !298

return:                                           ; preds = %if.then8, %if.end4, %if.end, %if.end22
  %retval.0 = phi i32 [ 0, %if.end22 ], [ 11, %if.end ], [ 8, %if.end4 ], [ 5, %if.then8 ], !dbg !265
  ret i32 %retval.0, !dbg !299
}

declare !dbg !300 void @lzma_end(ptr noundef) local_unnamed_addr #1

declare !dbg !303 void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !306 ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @auto_decode(ptr noundef %pcoder, ptr noundef %allocator, ptr noalias noundef %in, ptr noalias noundef %in_pos, i64 noundef %in_size, ptr noalias noundef %out, ptr noalias noundef %out_pos, i64 noundef %out_size, i32 noundef %action) #0 !dbg !309 {
entry:
    #dbg_value(ptr %pcoder, !311, !DIExpression(), !331)
    #dbg_value(ptr %allocator, !312, !DIExpression(), !331)
    #dbg_value(ptr %in, !313, !DIExpression(), !331)
    #dbg_value(ptr %in_pos, !314, !DIExpression(), !331)
    #dbg_value(i64 %in_size, !315, !DIExpression(), !331)
    #dbg_value(ptr %out, !316, !DIExpression(), !331)
    #dbg_value(ptr %out_pos, !317, !DIExpression(), !331)
    #dbg_value(i64 %out_size, !318, !DIExpression(), !331)
    #dbg_value(i32 %action, !319, !DIExpression(), !331)
    #dbg_value(ptr %pcoder, !320, !DIExpression(), !331)
  %sequence = getelementptr inbounds i8, ptr %pcoder, i64 76, !dbg !332
  %0 = load i32, ptr %sequence, align 4, !dbg !332
  switch i32 %0, label %cleanup56 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb32
    i32 2, label %sw.bb49
  ], !dbg !333

sw.bb:                                            ; preds = %entry
  %1 = load i64, ptr %in_pos, align 8, !dbg !334
  %cmp.not = icmp ult i64 %1, %in_size, !dbg !336
  br i1 %cmp.not, label %if.end, label %cleanup56, !dbg !337

if.end:                                           ; preds = %sw.bb
  store i32 1, ptr %sequence, align 4, !dbg !338
  %arrayidx = getelementptr inbounds i8, ptr %in, i64 %1, !dbg !339
  %2 = load i8, ptr %arrayidx, align 1, !dbg !339
  %cmp2 = icmp eq i8 %2, -3, !dbg !340
  %memlimit = getelementptr inbounds i8, ptr %pcoder, i64 64, !dbg !341
  %3 = load i64, ptr %memlimit, align 8, !dbg !341
  br i1 %cmp2, label %do.body, label %do.body9, !dbg !342

do.body:                                          ; preds = %if.end
  %flags = getelementptr inbounds i8, ptr %pcoder, i64 72, !dbg !343
  %4 = load i32, ptr %flags, align 8, !dbg !343
  %call = tail call i32 @lzma_stream_decoder_init(ptr noundef nonnull %pcoder, ptr noundef %allocator, i64 noundef %3, i32 noundef %4) #3, !dbg !343
    #dbg_value(i32 %call, !321, !DIExpression(), !344)
  %cmp5.not = icmp eq i32 %call, 0, !dbg !345
  br i1 %cmp5.not, label %sw.bb32, label %cleanup56

do.body9:                                         ; preds = %if.end
  %call13 = tail call i32 @lzma_alone_decoder_init(ptr noundef nonnull %pcoder, ptr noundef %allocator, i64 noundef %3, i1 noundef zeroext true) #3, !dbg !347
    #dbg_value(i32 %call13, !326, !DIExpression(), !348)
  %cmp14.not = icmp eq i32 %call13, 0, !dbg !349
  br i1 %cmp14.not, label %do.end22, label %cleanup56

do.end22:                                         ; preds = %do.body9
  %flags23 = getelementptr inbounds i8, ptr %pcoder, i64 72, !dbg !351
  %5 = load i32, ptr %flags23, align 8, !dbg !351
  %and = and i32 %5, 1, !dbg !353
  %tobool.not = icmp eq i32 %and, 0, !dbg !353
  br i1 %tobool.not, label %if.end25, label %cleanup56, !dbg !354

if.end25:                                         ; preds = %do.end22
  %and27 = and i32 %5, 4, !dbg !355
  %tobool28.not = icmp eq i32 %and27, 0, !dbg !355
  br i1 %tobool28.not, label %sw.bb32, label %cleanup56, !dbg !357

sw.bb32:                                          ; preds = %do.body, %if.end25, %entry
  %code = getelementptr inbounds i8, ptr %pcoder, i64 24, !dbg !358
  %6 = load ptr, ptr %code, align 8, !dbg !358
  %7 = load ptr, ptr %pcoder, align 8, !dbg !359
  %call36 = tail call i32 %6(ptr noundef %7, ptr noundef %allocator, ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size, ptr noundef %out, ptr noundef %out_pos, i64 noundef %out_size, i32 noundef %action) #3, !dbg !360
    #dbg_value(i32 %call36, !329, !DIExpression(), !361)
  %cmp37.not = icmp eq i32 %call36, 1, !dbg !362
  br i1 %cmp37.not, label %lor.lhs.false, label %cleanup56, !dbg !364

lor.lhs.false:                                    ; preds = %sw.bb32
  %flags39 = getelementptr inbounds i8, ptr %pcoder, i64 72, !dbg !365
  %8 = load i32, ptr %flags39, align 8, !dbg !365
  %and40 = and i32 %8, 8, !dbg !366
  %cmp41 = icmp eq i32 %and40, 0, !dbg !367
  br i1 %cmp41, label %cleanup56, label %cleanup46, !dbg !368

cleanup46:                                        ; preds = %lor.lhs.false
  store i32 2, ptr %sequence, align 4, !dbg !369
  br label %sw.bb49

sw.bb49:                                          ; preds = %cleanup46, %entry
  %9 = load i64, ptr %in_pos, align 8, !dbg !370
  %cmp50 = icmp ult i64 %9, %in_size, !dbg !372
  br i1 %cmp50, label %cleanup56, label %if.end53, !dbg !373

if.end53:                                         ; preds = %sw.bb49
  %cmp54 = icmp eq i32 %action, 3, !dbg !374
  %cond = zext i1 %cmp54 to i32, !dbg !375
  br label %cleanup56, !dbg !376

cleanup56:                                        ; preds = %sw.bb32, %lor.lhs.false, %entry, %sw.bb49, %if.end25, %do.end22, %sw.bb, %do.body, %do.body9, %if.end53
  %retval.4 = phi i32 [ %cond, %if.end53 ], [ %call, %do.body ], [ %call13, %do.body9 ], [ 0, %sw.bb ], [ 2, %do.end22 ], [ 4, %if.end25 ], [ 9, %sw.bb49 ], [ 11, %entry ], [ 1, %lor.lhs.false ], [ %call36, %sw.bb32 ], !dbg !377
  ret i32 %retval.4, !dbg !378
}

; Function Attrs: nounwind uwtable
define internal void @auto_decoder_end(ptr noundef %pcoder, ptr noundef %allocator) #0 !dbg !379 {
entry:
    #dbg_value(ptr %pcoder, !381, !DIExpression(), !384)
    #dbg_value(ptr %allocator, !382, !DIExpression(), !384)
    #dbg_value(ptr %pcoder, !383, !DIExpression(), !384)
  tail call void @lzma_next_end(ptr noundef %pcoder, ptr noundef %allocator) #3, !dbg !385
  tail call void @lzma_free(ptr noundef %pcoder, ptr noundef %allocator) #3, !dbg !386
  ret void, !dbg !387
}

; Function Attrs: nounwind uwtable
define internal i32 @auto_decoder_get_check(ptr nocapture noundef readonly %pcoder) #0 !dbg !388 {
entry:
    #dbg_value(ptr %pcoder, !390, !DIExpression(), !394)
    #dbg_value(ptr %pcoder, !391, !DIExpression(), !394)
  %get_check = getelementptr inbounds i8, ptr %pcoder, i64 40, !dbg !395
  %0 = load ptr, ptr %get_check, align 8, !dbg !395
  %cmp = icmp eq ptr %0, null, !dbg !396
  br i1 %cmp, label %cond.end, label %cond.false, !dbg !397

cond.false:                                       ; preds = %entry
  %1 = load ptr, ptr %pcoder, align 8, !dbg !398
  %call = tail call i32 %0(ptr noundef %1) #3, !dbg !399
  br label %cond.end, !dbg !397

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi i32 [ %call, %cond.false ], [ 0, %entry ], !dbg !397
  ret i32 %cond, !dbg !400
}

; Function Attrs: nounwind uwtable
define internal i32 @auto_decoder_memconfig(ptr nocapture noundef %pcoder, ptr noundef %memusage, ptr noundef %old_memlimit, i64 noundef %new_memlimit) #0 !dbg !401 {
entry:
    #dbg_value(ptr %pcoder, !403, !DIExpression(), !409)
    #dbg_value(ptr %memusage, !404, !DIExpression(), !409)
    #dbg_value(ptr %old_memlimit, !405, !DIExpression(), !409)
    #dbg_value(i64 %new_memlimit, !406, !DIExpression(), !409)
    #dbg_value(ptr %pcoder, !408, !DIExpression(), !409)
  %memconfig = getelementptr inbounds i8, ptr %pcoder, i64 48, !dbg !410
  %0 = load ptr, ptr %memconfig, align 8, !dbg !410
  %cmp.not = icmp eq ptr %0, null, !dbg !412
  br i1 %cmp.not, label %if.else, label %if.then, !dbg !413

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pcoder, align 8, !dbg !414
  %call = tail call i32 %0(ptr noundef %1, ptr noundef %memusage, ptr noundef %old_memlimit, i64 noundef %new_memlimit) #3, !dbg !416
    #dbg_value(i32 %call, !407, !DIExpression(), !409)
  br label %if.end, !dbg !417

if.else:                                          ; preds = %entry
  store i64 32768, ptr %memusage, align 8, !dbg !418
  %memlimit = getelementptr inbounds i8, ptr %pcoder, i64 64, !dbg !420
  %2 = load i64, ptr %memlimit, align 8, !dbg !420
  store i64 %2, ptr %old_memlimit, align 8, !dbg !421
    #dbg_value(i32 0, !407, !DIExpression(), !409)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call, %if.then ], [ 0, %if.else ], !dbg !422
    #dbg_value(i32 %ret.0, !407, !DIExpression(), !409)
  %cmp5 = icmp eq i32 %ret.0, 0, !dbg !423
  %cmp6 = icmp ne i64 %new_memlimit, 0
  %or.cond = and i1 %cmp6, %cmp5, !dbg !425
  br i1 %or.cond, label %if.then7, label %if.end9, !dbg !425

if.then7:                                         ; preds = %if.end
  %memlimit8 = getelementptr inbounds i8, ptr %pcoder, i64 64, !dbg !426
  store i64 %new_memlimit, ptr %memlimit8, align 8, !dbg !427
  br label %if.end9, !dbg !428

if.end9:                                          ; preds = %if.then7, %if.end
  ret i32 %ret.0, !dbg !429
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare !dbg !430 i32 @lzma_stream_decoder_init(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !432 i32 @lzma_alone_decoder_init(ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare !dbg !436 void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!149, !150, !151, !152, !153, !154, !155}
!llvm.ident = !{!156}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !147, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "liblzma/common/auto_decoder.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "068df4f0ac82120f07aa061486068a40")
!2 = !{!3, !19, !25, !32, !131, !134}
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
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !135, file: !1, line: 24, baseType: !5, size: 32, elements: !143)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_coder_s", file: !1, line: 17, size: 640, elements: !136)
!136 = !{!137, !138, !139, !142}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !135, file: !1, line: 19, baseType: !37, size: 512)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "memlimit", scope: !135, file: !1, line: 21, baseType: !46, size: 64, offset: 512)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !135, file: !1, line: 22, baseType: !140, size: 32, offset: 576)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !47, line: 26, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !49, line: 42, baseType: !5)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !135, file: !1, line: 28, baseType: !134, size: 32, offset: 608)
!143 = !{!144, !145, !146}
!144 = !DIEnumerator(name: "SEQ_INIT", value: 0)
!145 = !DIEnumerator(name: "SEQ_CODE", value: 1)
!146 = !DIEnumerator(name: "SEQ_FINISH", value: 2)
!147 = !{!52, !68, !148}
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!149 = !{i32 7, !"Dwarf Version", i32 5}
!150 = !{i32 2, !"Debug Info Version", i32 3}
!151 = !{i32 1, !"wchar_size", i32 4}
!152 = !{i32 8, !"PIC Level", i32 2}
!153 = !{i32 7, !"PIE Level", i32 2}
!154 = !{i32 7, !"uwtable", i32 2}
!155 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!156 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!157 = distinct !DISubprogram(name: "lzma_auto_decoder", scope: !1, file: !1, line: 182, type: !158, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !185)
!158 = !DISubroutineType(types: !159)
!159 = !{!59, !160, !46, !140}
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_stream", file: !4, line: 490, baseType: !162)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 453, size: 1088, elements: !163)
!163 = !{!164, !165, !166, !167, !168, !169, !170, !171, !174, !175, !176, !177, !178, !179, !180, !181, !182, !184}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !162, file: !4, line: 454, baseType: !77, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !162, file: !4, line: 455, baseType: !69, size: 64, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "total_in", scope: !162, file: !4, line: 456, baseType: !46, size: 64, offset: 128)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !162, file: !4, line: 458, baseType: !85, size: 64, offset: 192)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !162, file: !4, line: 459, baseType: !69, size: 64, offset: 256)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "total_out", scope: !162, file: !4, line: 460, baseType: !46, size: 64, offset: 320)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !162, file: !4, line: 468, baseType: !60, size: 64, offset: 384)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !162, file: !4, line: 471, baseType: !172, size: 64, offset: 448)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_internal", file: !4, line: 411, baseType: !34)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !162, file: !4, line: 479, baseType: !68, size: 64, offset: 512)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !162, file: !4, line: 480, baseType: !68, size: 64, offset: 576)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !162, file: !4, line: 481, baseType: !68, size: 64, offset: 640)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr4", scope: !162, file: !4, line: 482, baseType: !68, size: 64, offset: 704)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !162, file: !4, line: 483, baseType: !46, size: 64, offset: 768)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !162, file: !4, line: 484, baseType: !46, size: 64, offset: 832)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !162, file: !4, line: 485, baseType: !69, size: 64, offset: 896)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !162, file: !4, line: 486, baseType: !69, size: 64, offset: 960)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !162, file: !4, line: 487, baseType: !183, size: 32, offset: 1024)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !4, line: 46, baseType: !131)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !162, file: !4, line: 488, baseType: !183, size: 32, offset: 1056)
!185 = !{!186, !187, !188, !189, !193}
!186 = !DILocalVariable(name: "strm", arg: 1, scope: !157, file: !1, line: 182, type: !160)
!187 = !DILocalVariable(name: "memlimit", arg: 2, scope: !157, file: !1, line: 182, type: !46)
!188 = !DILocalVariable(name: "flags", arg: 3, scope: !157, file: !1, line: 182, type: !140)
!189 = !DILocalVariable(name: "ret_", scope: !190, file: !1, line: 184, type: !192)
!190 = distinct !DILexicalBlock(scope: !191, file: !1, line: 184, column: 2)
!191 = distinct !DILexicalBlock(scope: !157, file: !1, line: 184, column: 2)
!192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!193 = !DILocalVariable(name: "ret_", scope: !191, file: !1, line: 184, type: !192)
!194 = !DILocation(line: 0, scope: !157)
!195 = !DILocation(line: 184, column: 2, scope: !190)
!196 = !DILocation(line: 0, scope: !190)
!197 = !DILocation(line: 184, column: 2, scope: !198)
!198 = distinct !DILexicalBlock(scope: !190, file: !1, line: 184, column: 2)
!199 = !DILocation(line: 184, column: 2, scope: !191)
!200 = !DILocalVariable(name: "next", arg: 1, scope: !201, file: !1, line: 150, type: !204)
!201 = distinct !DISubprogram(name: "auto_decoder_init", scope: !1, file: !1, line: 150, type: !202, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !205)
!202 = !DISubroutineType(types: !203)
!203 = !{!59, !204, !60, !46, !140}
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!205 = !{!200, !206, !207, !208}
!206 = !DILocalVariable(name: "allocator", arg: 2, scope: !201, file: !1, line: 150, type: !60)
!207 = !DILocalVariable(name: "memlimit", arg: 3, scope: !201, file: !1, line: 151, type: !46)
!208 = !DILocalVariable(name: "flags", arg: 4, scope: !201, file: !1, line: 151, type: !140)
!209 = !DILocation(line: 0, scope: !201, inlinedAt: !210)
!210 = distinct !DILocation(line: 184, column: 2, scope: !191)
!211 = !DILocation(line: 153, column: 2, scope: !212, inlinedAt: !210)
!212 = distinct !DILexicalBlock(scope: !213, file: !1, line: 153, column: 2)
!213 = distinct !DILexicalBlock(scope: !201, file: !1, line: 153, column: 2)
!214 = !DILocation(line: 153, column: 2, scope: !213, inlinedAt: !210)
!215 = !DILocation(line: 155, column: 15, scope: !216, inlinedAt: !210)
!216 = distinct !DILexicalBlock(scope: !201, file: !1, line: 155, column: 6)
!217 = !DILocation(line: 155, column: 6, scope: !201, inlinedAt: !210)
!218 = !DILocation(line: 158, column: 12, scope: !219, inlinedAt: !210)
!219 = distinct !DILexicalBlock(scope: !201, file: !1, line: 158, column: 6)
!220 = !DILocation(line: 158, column: 6, scope: !201, inlinedAt: !210)
!221 = !DILocation(line: 161, column: 12, scope: !222, inlinedAt: !210)
!222 = distinct !DILexicalBlock(scope: !201, file: !1, line: 161, column: 6)
!223 = !DILocation(line: 161, column: 18, scope: !222, inlinedAt: !210)
!224 = !DILocation(line: 161, column: 6, scope: !201, inlinedAt: !210)
!225 = !DILocation(line: 162, column: 17, scope: !226, inlinedAt: !210)
!226 = distinct !DILexicalBlock(scope: !222, file: !1, line: 161, column: 27)
!227 = !DILocation(line: 162, column: 15, scope: !226, inlinedAt: !210)
!228 = !DILocation(line: 163, column: 19, scope: !229, inlinedAt: !210)
!229 = distinct !DILexicalBlock(scope: !226, file: !1, line: 163, column: 7)
!230 = !DILocation(line: 163, column: 7, scope: !226, inlinedAt: !210)
!231 = !DILocation(line: 166, column: 9, scope: !226, inlinedAt: !210)
!232 = !DILocation(line: 166, column: 14, scope: !226, inlinedAt: !210)
!233 = !DILocation(line: 167, column: 9, scope: !226, inlinedAt: !210)
!234 = !DILocation(line: 167, column: 13, scope: !226, inlinedAt: !210)
!235 = !DILocation(line: 168, column: 9, scope: !226, inlinedAt: !210)
!236 = !DILocation(line: 168, column: 19, scope: !226, inlinedAt: !210)
!237 = !DILocation(line: 169, column: 9, scope: !226, inlinedAt: !210)
!238 = !DILocation(line: 169, column: 19, scope: !226, inlinedAt: !210)
!239 = !DILocation(line: 170, column: 47, scope: !226, inlinedAt: !210)
!240 = !DILocation(line: 173, column: 31, scope: !201, inlinedAt: !210)
!241 = !DILocation(line: 171, column: 2, scope: !226, inlinedAt: !210)
!242 = !DILocation(line: 0, scope: !191)
!243 = !DILocation(line: 184, column: 2, scope: !244)
!244 = distinct !DILexicalBlock(scope: !245, file: !1, line: 184, column: 2)
!245 = distinct !DILexicalBlock(scope: !191, file: !1, line: 184, column: 2)
!246 = !DILocation(line: 173, column: 39, scope: !201, inlinedAt: !210)
!247 = !DILocation(line: 173, column: 48, scope: !201, inlinedAt: !210)
!248 = !DILocation(line: 174, column: 31, scope: !201, inlinedAt: !210)
!249 = !DILocation(line: 174, column: 39, scope: !201, inlinedAt: !210)
!250 = !DILocation(line: 174, column: 45, scope: !201, inlinedAt: !210)
!251 = !DILocation(line: 175, column: 31, scope: !201, inlinedAt: !210)
!252 = !DILocation(line: 175, column: 39, scope: !201, inlinedAt: !210)
!253 = !DILocation(line: 175, column: 48, scope: !201, inlinedAt: !210)
!254 = !DILocation(line: 186, column: 8, scope: !157)
!255 = !DILocation(line: 186, column: 18, scope: !157)
!256 = !DILocation(line: 186, column: 46, scope: !157)
!257 = !DILocation(line: 187, column: 8, scope: !157)
!258 = !DILocation(line: 187, column: 2, scope: !157)
!259 = !DILocation(line: 187, column: 49, scope: !157)
!260 = !DILocation(line: 189, column: 2, scope: !157)
!261 = !DILocation(line: 190, column: 1, scope: !157)
!262 = !DISubprogram(name: "lzma_strm_init", scope: !33, file: !33, line: 220, type: !263, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!263 = !DISubroutineType(types: !264)
!264 = !{!59, !160}
!265 = !DILocation(line: 0, scope: !201)
!266 = !DILocation(line: 153, column: 2, scope: !212)
!267 = !DILocation(line: 153, column: 2, scope: !213)
!268 = !DILocation(line: 155, column: 15, scope: !216)
!269 = !DILocation(line: 155, column: 6, scope: !201)
!270 = !DILocation(line: 158, column: 12, scope: !219)
!271 = !DILocation(line: 158, column: 6, scope: !201)
!272 = !DILocation(line: 161, column: 12, scope: !222)
!273 = !DILocation(line: 161, column: 18, scope: !222)
!274 = !DILocation(line: 161, column: 6, scope: !201)
!275 = !DILocation(line: 162, column: 17, scope: !226)
!276 = !DILocation(line: 162, column: 15, scope: !226)
!277 = !DILocation(line: 163, column: 19, scope: !229)
!278 = !DILocation(line: 163, column: 7, scope: !226)
!279 = !DILocation(line: 166, column: 9, scope: !226)
!280 = !DILocation(line: 166, column: 14, scope: !226)
!281 = !DILocation(line: 167, column: 9, scope: !226)
!282 = !DILocation(line: 167, column: 13, scope: !226)
!283 = !DILocation(line: 168, column: 9, scope: !226)
!284 = !DILocation(line: 168, column: 19, scope: !226)
!285 = !DILocation(line: 169, column: 9, scope: !226)
!286 = !DILocation(line: 169, column: 19, scope: !226)
!287 = !DILocation(line: 170, column: 47, scope: !226)
!288 = !DILocation(line: 173, column: 31, scope: !201)
!289 = !DILocation(line: 171, column: 2, scope: !226)
!290 = !DILocation(line: 173, column: 39, scope: !201)
!291 = !DILocation(line: 173, column: 48, scope: !201)
!292 = !DILocation(line: 174, column: 31, scope: !201)
!293 = !DILocation(line: 174, column: 39, scope: !201)
!294 = !DILocation(line: 174, column: 45, scope: !201)
!295 = !DILocation(line: 175, column: 31, scope: !201)
!296 = !DILocation(line: 175, column: 39, scope: !201)
!297 = !DILocation(line: 175, column: 48, scope: !201)
!298 = !DILocation(line: 177, column: 2, scope: !201)
!299 = !DILocation(line: 178, column: 1, scope: !201)
!300 = !DISubprogram(name: "lzma_end", scope: !4, file: !4, line: 546, type: !301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!301 = !DISubroutineType(types: !302)
!302 = !{null, !160}
!303 = !DISubprogram(name: "lzma_next_end", scope: !33, file: !33, line: 237, type: !304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!304 = !DISubroutineType(types: !305)
!305 = !{null, !204, !60}
!306 = !DISubprogram(name: "lzma_alloc", scope: !33, file: !33, line: 211, type: !307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!307 = !DISubroutineType(types: !308)
!308 = !{!68, !69, !60}
!309 = distinct !DISubprogram(name: "auto_decode", scope: !1, file: !1, line: 33, type: !57, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!310 = !{!311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !326, !329}
!311 = !DILocalVariable(name: "pcoder", arg: 1, scope: !309, file: !1, line: 33, type: !41)
!312 = !DILocalVariable(name: "allocator", arg: 2, scope: !309, file: !1, line: 33, type: !60)
!313 = !DILocalVariable(name: "in", arg: 3, scope: !309, file: !1, line: 34, type: !76)
!314 = !DILocalVariable(name: "in_pos", arg: 4, scope: !309, file: !1, line: 34, type: !82)
!315 = !DILocalVariable(name: "in_size", arg: 5, scope: !309, file: !1, line: 35, type: !69)
!316 = !DILocalVariable(name: "out", arg: 6, scope: !309, file: !1, line: 35, type: !84)
!317 = !DILocalVariable(name: "out_pos", arg: 7, scope: !309, file: !1, line: 36, type: !82)
!318 = !DILocalVariable(name: "out_size", arg: 8, scope: !309, file: !1, line: 36, type: !69)
!319 = !DILocalVariable(name: "action", arg: 9, scope: !309, file: !1, line: 36, type: !86)
!320 = !DILocalVariable(name: "coder", scope: !309, file: !1, line: 38, type: !148)
!321 = !DILocalVariable(name: "ret_", scope: !322, file: !1, line: 53, type: !192)
!322 = distinct !DILexicalBlock(scope: !323, file: !1, line: 53, column: 4)
!323 = distinct !DILexicalBlock(scope: !324, file: !1, line: 52, column: 28)
!324 = distinct !DILexicalBlock(scope: !325, file: !1, line: 52, column: 7)
!325 = distinct !DILexicalBlock(scope: !309, file: !1, line: 39, column: 27)
!326 = !DILocalVariable(name: "ret_", scope: !327, file: !1, line: 57, type: !192)
!327 = distinct !DILexicalBlock(scope: !328, file: !1, line: 57, column: 4)
!328 = distinct !DILexicalBlock(scope: !324, file: !1, line: 56, column: 10)
!329 = !DILocalVariable(name: "ret", scope: !330, file: !1, line: 74, type: !192)
!330 = distinct !DILexicalBlock(scope: !325, file: !1, line: 73, column: 17)
!331 = !DILocation(line: 0, scope: !309)
!332 = !DILocation(line: 39, column: 17, scope: !309)
!333 = !DILocation(line: 39, column: 2, scope: !309)
!334 = !DILocation(line: 41, column: 7, scope: !335)
!335 = distinct !DILexicalBlock(scope: !325, file: !1, line: 41, column: 7)
!336 = !DILocation(line: 41, column: 15, scope: !335)
!337 = !DILocation(line: 41, column: 7, scope: !325)
!338 = !DILocation(line: 46, column: 19, scope: !325)
!339 = !DILocation(line: 52, column: 7, scope: !324)
!340 = !DILocation(line: 52, column: 19, scope: !324)
!341 = !DILocation(line: 0, scope: !324)
!342 = !DILocation(line: 52, column: 7, scope: !325)
!343 = !DILocation(line: 53, column: 4, scope: !322)
!344 = !DILocation(line: 0, scope: !322)
!345 = !DILocation(line: 53, column: 4, scope: !346)
!346 = distinct !DILexicalBlock(scope: !322, file: !1, line: 53, column: 4)
!347 = !DILocation(line: 57, column: 4, scope: !327)
!348 = !DILocation(line: 0, scope: !327)
!349 = !DILocation(line: 57, column: 4, scope: !350)
!350 = distinct !DILexicalBlock(scope: !327, file: !1, line: 57, column: 4)
!351 = !DILocation(line: 64, column: 15, scope: !352)
!352 = distinct !DILexicalBlock(scope: !328, file: !1, line: 64, column: 8)
!353 = !DILocation(line: 64, column: 21, scope: !352)
!354 = !DILocation(line: 64, column: 8, scope: !328)
!355 = !DILocation(line: 67, column: 21, scope: !356)
!356 = distinct !DILexicalBlock(scope: !328, file: !1, line: 67, column: 8)
!357 = !DILocation(line: 67, column: 8, scope: !328)
!358 = !DILocation(line: 74, column: 36, scope: !330)
!359 = !DILocation(line: 75, column: 17, scope: !330)
!360 = !DILocation(line: 74, column: 24, scope: !330)
!361 = !DILocation(line: 0, scope: !330)
!362 = !DILocation(line: 78, column: 11, scope: !363)
!363 = distinct !DILexicalBlock(scope: !330, file: !1, line: 78, column: 7)
!364 = !DILocation(line: 79, column: 5, scope: !363)
!365 = !DILocation(line: 79, column: 16, scope: !363)
!366 = !DILocation(line: 79, column: 22, scope: !363)
!367 = !DILocation(line: 79, column: 43, scope: !363)
!368 = !DILocation(line: 78, column: 7, scope: !330)
!369 = !DILocation(line: 82, column: 19, scope: !330)
!370 = !DILocation(line: 91, column: 7, scope: !371)
!371 = distinct !DILexicalBlock(scope: !325, file: !1, line: 91, column: 7)
!372 = !DILocation(line: 91, column: 15, scope: !371)
!373 = !DILocation(line: 91, column: 7, scope: !325)
!374 = !DILocation(line: 94, column: 17, scope: !325)
!375 = !DILocation(line: 94, column: 10, scope: !325)
!376 = !DILocation(line: 94, column: 3, scope: !325)
!377 = !DILocation(line: 0, scope: !325)
!378 = !DILocation(line: 100, column: 1, scope: !309)
!379 = distinct !DISubprogram(name: "auto_decoder_end", scope: !1, file: !1, line: 104, type: !90, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !380)
!380 = !{!381, !382, !383}
!381 = !DILocalVariable(name: "pcoder", arg: 1, scope: !379, file: !1, line: 104, type: !41)
!382 = !DILocalVariable(name: "allocator", arg: 2, scope: !379, file: !1, line: 104, type: !60)
!383 = !DILocalVariable(name: "coder", scope: !379, file: !1, line: 106, type: !148)
!384 = !DILocation(line: 0, scope: !379)
!385 = !DILocation(line: 107, column: 2, scope: !379)
!386 = !DILocation(line: 108, column: 2, scope: !379)
!387 = !DILocation(line: 110, column: 1, scope: !379)
!388 = distinct !DISubprogram(name: "auto_decoder_get_check", scope: !1, file: !1, line: 114, type: !94, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !389)
!389 = !{!390, !391}
!390 = !DILocalVariable(name: "pcoder", arg: 1, scope: !388, file: !1, line: 114, type: !97)
!391 = !DILocalVariable(name: "coder", scope: !388, file: !1, line: 116, type: !392)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !135)
!394 = !DILocation(line: 0, scope: !388)
!395 = !DILocation(line: 118, column: 21, scope: !388)
!396 = !DILocation(line: 118, column: 31, scope: !388)
!397 = !DILocation(line: 118, column: 9, scope: !388)
!398 = !DILocation(line: 119, column: 40, scope: !388)
!399 = !DILocation(line: 119, column: 6, scope: !388)
!400 = !DILocation(line: 118, column: 2, scope: !388)
!401 = distinct !DISubprogram(name: "auto_decoder_memconfig", scope: !1, file: !1, line: 124, type: !101, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !402)
!402 = !{!403, !404, !405, !406, !407, !408}
!403 = !DILocalVariable(name: "pcoder", arg: 1, scope: !401, file: !1, line: 124, type: !41)
!404 = !DILocalVariable(name: "memusage", arg: 2, scope: !401, file: !1, line: 124, type: !103)
!405 = !DILocalVariable(name: "old_memlimit", arg: 3, scope: !401, file: !1, line: 125, type: !103)
!406 = !DILocalVariable(name: "new_memlimit", arg: 4, scope: !401, file: !1, line: 125, type: !46)
!407 = !DILocalVariable(name: "ret", scope: !401, file: !1, line: 127, type: !59)
!408 = !DILocalVariable(name: "coder", scope: !401, file: !1, line: 128, type: !148)
!409 = !DILocation(line: 0, scope: !401)
!410 = !DILocation(line: 130, column: 18, scope: !411)
!411 = distinct !DILexicalBlock(scope: !401, file: !1, line: 130, column: 6)
!412 = !DILocation(line: 130, column: 28, scope: !411)
!413 = !DILocation(line: 130, column: 6, scope: !401)
!414 = !DILocation(line: 131, column: 43, scope: !415)
!415 = distinct !DILexicalBlock(scope: !411, file: !1, line: 130, column: 37)
!416 = !DILocation(line: 131, column: 9, scope: !415)
!417 = !DILocation(line: 134, column: 2, scope: !415)
!418 = !DILocation(line: 137, column: 13, scope: !419)
!419 = distinct !DILexicalBlock(scope: !411, file: !1, line: 134, column: 9)
!420 = !DILocation(line: 138, column: 26, scope: !419)
!421 = !DILocation(line: 138, column: 17, scope: !419)
!422 = !DILocation(line: 0, scope: !411)
!423 = !DILocation(line: 142, column: 10, scope: !424)
!424 = distinct !DILexicalBlock(scope: !401, file: !1, line: 142, column: 6)
!425 = !DILocation(line: 142, column: 21, scope: !424)
!426 = !DILocation(line: 143, column: 10, scope: !424)
!427 = !DILocation(line: 143, column: 19, scope: !424)
!428 = !DILocation(line: 143, column: 3, scope: !424)
!429 = !DILocation(line: 145, column: 2, scope: !401)
!430 = !DISubprogram(name: "lzma_stream_decoder_init", scope: !431, file: !431, line: 18, type: !202, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!431 = !DIFile(filename: "liblzma/common/stream_decoder.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "82f2a7f1e50521ce1ad27540f4230cca")
!432 = !DISubprogram(name: "lzma_alone_decoder_init", scope: !433, file: !433, line: 19, type: !434, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!433 = !DIFile(filename: "liblzma/common/alone_decoder.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "203183a4127ab5050dfd29f01fbfc121")
!434 = !DISubroutineType(types: !435)
!435 = !{!59, !204, !60, !46, !120}
!436 = !DISubprogram(name: "lzma_free", scope: !33, file: !33, line: 215, type: !437, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!437 = !DISubroutineType(types: !438)
!438 = !{null, !68, !60}
