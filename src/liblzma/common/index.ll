; ModuleID = 'liblzma/common/index.c'
source_filename = "liblzma/common/index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_record = type { i64, i64 }
%struct.index_cat_info = type { i64, i64, i64, i32, ptr }

; Function Attrs: nounwind uwtable
define dso_local ptr @lzma_index_init(ptr noundef %allocator) local_unnamed_addr #0 !dbg !143 {
entry:
    #dbg_value(ptr %allocator, !171, !DIExpression(), !174)
    #dbg_value(ptr %allocator, !175, !DIExpression(), !179)
  %call.i = tail call ptr @lzma_alloc(i64 noundef 80, ptr noundef %allocator) #12, !dbg !181
    #dbg_value(ptr %call.i, !178, !DIExpression(), !179)
  %cmp.not.i = icmp eq ptr %call.i, null, !dbg !182
  br i1 %cmp.not.i, label %cleanup5, label %if.end, !dbg !184

if.end:                                           ; preds = %entry
    #dbg_value(ptr %call.i, !185, !DIExpression(), !191)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %call.i, i8 0, i64 28, i1 false), !dbg !194
  %uncompressed_size.i = getelementptr inbounds i8, ptr %call.i, i64 32, !dbg !195
  %prealloc.i = getelementptr inbounds i8, ptr %call.i, i64 64, !dbg !196
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %uncompressed_size.i, i8 0, i64 32, i1 false), !dbg !197
  store i64 512, ptr %prealloc.i, align 8, !dbg !198
  %checks.i = getelementptr inbounds i8, ptr %call.i, i64 72, !dbg !199
  store i32 0, ptr %checks.i, align 8, !dbg !200
    #dbg_value(ptr %call.i, !172, !DIExpression(), !174)
    #dbg_value(i64 0, !201, !DIExpression(), !211)
    #dbg_value(i64 0, !206, !DIExpression(), !211)
    #dbg_value(i64 1, !207, !DIExpression(), !211)
    #dbg_value(i64 0, !208, !DIExpression(), !211)
    #dbg_value(ptr %allocator, !209, !DIExpression(), !211)
  %call.i12 = tail call ptr @lzma_alloc(i64 noundef 168, ptr noundef %allocator) #12, !dbg !213
    #dbg_value(ptr %call.i12, !210, !DIExpression(), !211)
  %cmp.i = icmp eq ptr %call.i12, null, !dbg !214
  br i1 %cmp.i, label %if.then3, label %if.end4, !dbg !216

if.then3:                                         ; preds = %if.end
    #dbg_value(ptr %call.i12, !173, !DIExpression(), !174)
  tail call void @lzma_free(ptr noundef nonnull %call.i, ptr noundef %allocator) #12, !dbg !217
  br label %cleanup5, !dbg !220

if.end4:                                          ; preds = %if.end
  %number.i = getelementptr inbounds i8, ptr %call.i12, i64 40, !dbg !221
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %call.i12, i8 0, i64 40, i1 false), !dbg !222
  store i32 1, ptr %number.i, align 8, !dbg !223
  %block_number_base7.i = getelementptr inbounds i8, ptr %call.i12, i64 48, !dbg !224
    #dbg_value(ptr %call.i12, !185, !DIExpression(DW_OP_plus_uconst, 56, DW_OP_stack_value), !225)
  %record_count.i = getelementptr inbounds i8, ptr %call.i12, i64 88, !dbg !227
  %stream_flags.i = getelementptr inbounds i8, ptr %call.i12, i64 104, !dbg !228
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %record_count.i, i8 0, i64 16, i1 false), !dbg !229
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %block_number_base7.i, i8 0, i64 36, i1 false), !dbg !230
  store i32 -1, ptr %stream_flags.i, align 8, !dbg !231
  %stream_padding.i = getelementptr inbounds i8, ptr %call.i12, i64 160, !dbg !232
  store i64 0, ptr %stream_padding.i, align 8, !dbg !233
    #dbg_value(ptr %call.i12, !173, !DIExpression(), !174)
  tail call fastcc void @index_tree_append(ptr noundef nonnull %call.i, ptr noundef nonnull %call.i12), !dbg !234
  br label %cleanup5, !dbg !235

cleanup5:                                         ; preds = %entry, %if.then3, %if.end4
  %retval.1 = phi ptr [ null, %if.then3 ], [ %call.i, %if.end4 ], [ null, %entry ], !dbg !174
  ret ptr %retval.1, !dbg !236
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !237 void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @index_tree_append(ptr nocapture noundef %tree, ptr noundef %node) unnamed_addr #3 !dbg !241 {
entry:
    #dbg_value(ptr %tree, !245, !DIExpression(), !251)
    #dbg_value(ptr %node, !246, !DIExpression(), !251)
  %rightmost = getelementptr inbounds i8, ptr %tree, i64 16, !dbg !252
  %0 = load ptr, ptr %rightmost, align 8, !dbg !252
  %parent = getelementptr inbounds i8, ptr %node, i64 16, !dbg !253
  store ptr %0, ptr %parent, align 8, !dbg !254
  %left = getelementptr inbounds i8, ptr %node, i64 24, !dbg !255
  %count = getelementptr inbounds i8, ptr %tree, i64 24, !dbg !256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %left, i8 0, i64 16, i1 false), !dbg !257
  %1 = load i32, ptr %count, align 8, !dbg !258
  %inc = add i32 %1, 1, !dbg !258
  store i32 %inc, ptr %count, align 8, !dbg !258
  %2 = load ptr, ptr %tree, align 8, !dbg !259
  %cmp = icmp eq ptr %2, null, !dbg !261
  br i1 %cmp, label %if.then, label %if.end, !dbg !262

if.then:                                          ; preds = %entry
  store ptr %node, ptr %tree, align 8, !dbg !263
  %leftmost = getelementptr inbounds i8, ptr %tree, i64 8, !dbg !265
  store ptr %node, ptr %leftmost, align 8, !dbg !266
  store ptr %node, ptr %rightmost, align 8, !dbg !267
  br label %return, !dbg !268

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %rightmost, align 8, !dbg !269
  %right4 = getelementptr inbounds i8, ptr %3, i64 32, !dbg !270
  store ptr %node, ptr %right4, align 8, !dbg !271
  store ptr %node, ptr %rightmost, align 8, !dbg !272
  %4 = load i32, ptr %count, align 8, !dbg !273
    #dbg_value(i32 %4, !274, !DIExpression(), !281)
    #dbg_value(i32 31, !280, !DIExpression(), !281)
  %cmp.i = icmp ult i32 %4, 65536, !dbg !283
  %shl.i = shl nuw i32 %4, 16
  %spec.select.i = select i1 %cmp.i, i32 %shl.i, i32 %4, !dbg !285
  %spec.select34.i = select i1 %cmp.i, i32 15, i32 31, !dbg !285
    #dbg_value(i32 %spec.select34.i, !280, !DIExpression(), !281)
    #dbg_value(i32 %spec.select.i, !274, !DIExpression(), !281)
  %cmp2.i = icmp ult i32 %spec.select.i, 16777216, !dbg !286
  %shl4.i = shl nuw i32 %spec.select.i, 8, !dbg !288
  %sub.i = add nsw i32 %spec.select34.i, -8, !dbg !288
  %n.addr.1.i = select i1 %cmp2.i, i32 %shl4.i, i32 %spec.select.i, !dbg !288
  %i.1.i = select i1 %cmp2.i, i32 %sub.i, i32 %spec.select34.i, !dbg !288
    #dbg_value(i32 %i.1.i, !280, !DIExpression(), !281)
    #dbg_value(i32 %n.addr.1.i, !274, !DIExpression(), !281)
  %cmp7.i = icmp ult i32 %n.addr.1.i, 268435456, !dbg !289
  %shl9.i = shl nuw i32 %n.addr.1.i, 4, !dbg !291
  %sub10.i = add nsw i32 %i.1.i, -4, !dbg !291
  %n.addr.2.i = select i1 %cmp7.i, i32 %shl9.i, i32 %n.addr.1.i, !dbg !291
  %i.2.i = select i1 %cmp7.i, i32 %sub10.i, i32 %i.1.i, !dbg !291
    #dbg_value(i32 %i.2.i, !280, !DIExpression(), !281)
    #dbg_value(i32 %n.addr.2.i, !274, !DIExpression(), !281)
  %cmp13.i = icmp ult i32 %n.addr.2.i, 1073741824, !dbg !292
  %shl15.i = shl nuw i32 %n.addr.2.i, 2, !dbg !294
  %sub16.i = add nsw i32 %i.2.i, -2, !dbg !294
  %n.addr.3.i = select i1 %cmp13.i, i32 %shl15.i, i32 %n.addr.2.i, !dbg !294
  %i.3.i = select i1 %cmp13.i, i32 %sub16.i, i32 %i.2.i, !dbg !294
    #dbg_value(i32 %i.3.i, !280, !DIExpression(), !281)
    #dbg_value(i32 %n.addr.3.i, !274, !DIExpression(), !281)
  %cmp1935.i = icmp sgt i32 %n.addr.3.i, -1, !dbg !295
  %dec.i = sext i1 %cmp1935.i to i32, !dbg !295
  %i.4.i = add nsw i32 %i.3.i, %dec.i, !dbg !295
    #dbg_value(i32 %i.4.i, !280, !DIExpression(), !281)
  %shl = shl nuw i32 1, %i.4.i, !dbg !296
    #dbg_value(!DIArgList(i32 %4, i32 %shl), !247, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !251)
  %cmp8.not = icmp eq i32 %4, %shl, !dbg !297
  br i1 %cmp8.not, label %return, label %if.then9, !dbg !298

if.then9:                                         ; preds = %if.end
    #dbg_value(i32 %4, !299, !DIExpression(), !303)
    #dbg_value(i32 0, !302, !DIExpression(), !303)
  %and.i = and i32 %4, 65535, !dbg !305
  %cmp.i71 = icmp eq i32 %and.i, 0, !dbg !307
  %shr.i = lshr exact i32 %4, 16
  %spec.select.i72 = select i1 %cmp.i71, i32 %shr.i, i32 %4, !dbg !308
  %spec.select34.i73 = select i1 %cmp.i71, i32 16, i32 0, !dbg !308
    #dbg_value(i32 %spec.select34.i73, !302, !DIExpression(), !303)
    #dbg_value(i32 %spec.select.i72, !299, !DIExpression(), !303)
  %and1.i = and i32 %spec.select.i72, 255, !dbg !309
  %cmp2.i74 = icmp eq i32 %and1.i, 0, !dbg !311
  %shr4.i = lshr exact i32 %spec.select.i72, 8, !dbg !312
  %add.i = or disjoint i32 %spec.select34.i73, 8, !dbg !312
  %n.addr.1.i75 = select i1 %cmp2.i74, i32 %shr4.i, i32 %spec.select.i72, !dbg !312
  %i.1.i76 = select i1 %cmp2.i74, i32 %add.i, i32 %spec.select34.i73, !dbg !312
    #dbg_value(i32 %i.1.i76, !302, !DIExpression(), !303)
    #dbg_value(i32 %n.addr.1.i75, !299, !DIExpression(), !303)
  %and6.i = and i32 %n.addr.1.i75, 15, !dbg !313
  %cmp7.i77 = icmp eq i32 %and6.i, 0, !dbg !315
  %shr9.i = lshr exact i32 %n.addr.1.i75, 4, !dbg !316
  %add10.i = or disjoint i32 %i.1.i76, 4, !dbg !316
  %n.addr.2.i78 = select i1 %cmp7.i77, i32 %shr9.i, i32 %n.addr.1.i75, !dbg !316
  %i.2.i79 = select i1 %cmp7.i77, i32 %add10.i, i32 %i.1.i76, !dbg !316
    #dbg_value(i32 %i.2.i79, !302, !DIExpression(), !303)
    #dbg_value(i32 %n.addr.2.i78, !299, !DIExpression(), !303)
  %and12.i = and i32 %n.addr.2.i78, 3, !dbg !317
  %cmp13.i80 = icmp eq i32 %and12.i, 0, !dbg !319
  %shr15.i = lshr exact i32 %n.addr.2.i78, 2, !dbg !320
  %add16.i = or disjoint i32 %i.2.i79, 2, !dbg !320
  %n.addr.3.i81 = select i1 %cmp13.i80, i32 %shr15.i, i32 %n.addr.2.i78, !dbg !320
  %i.3.i82 = select i1 %cmp13.i80, i32 %add16.i, i32 %i.2.i79, !dbg !320
    #dbg_value(i32 %i.3.i82, !302, !DIExpression(), !303)
    #dbg_value(i32 %n.addr.3.i81, !299, !DIExpression(), !303)
  %and18.i = and i32 %n.addr.3.i81, 1, !dbg !321
  %5 = xor i32 %and18.i, 1, !dbg !323
    #dbg_value(i32 poison, !302, !DIExpression(), !303)
  %i.4.i83 = add i32 %i.3.i82, 2, !dbg !323
  %add = add i32 %i.4.i83, %5, !dbg !324
    #dbg_value(i32 %add, !247, !DIExpression(), !251)
  %6 = add i32 %i.3.i82, %5, !dbg !325
  %7 = add i32 %6, 1, !dbg !325
  %xtraiter = and i32 %add, 7, !dbg !325
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !325
  br i1 %lcmp.mod.not, label %do.body.prol.loopexit, label %do.body.prol, !dbg !325

do.body.prol:                                     ; preds = %if.then9, %do.body.prol
  %up.0.prol = phi i32 [ %dec.prol, %do.body.prol ], [ %add, %if.then9 ], !dbg !326
  %node.addr.0.prol = phi ptr [ %8, %do.body.prol ], [ %node, %if.then9 ]
  %prol.iter = phi i32 [ %prol.iter.next, %do.body.prol ], [ 0, %if.then9 ]
    #dbg_value(ptr %node.addr.0.prol, !246, !DIExpression(), !251)
    #dbg_value(i32 %up.0.prol, !247, !DIExpression(), !251)
  %parent12.prol = getelementptr inbounds i8, ptr %node.addr.0.prol, i64 16, !dbg !327
  %8 = load ptr, ptr %parent12.prol, align 8, !dbg !327
    #dbg_value(ptr %8, !246, !DIExpression(), !251)
  %dec.prol = add i32 %up.0.prol, -1, !dbg !329
    #dbg_value(i32 %dec.prol, !247, !DIExpression(), !251)
  %prol.iter.next = add i32 %prol.iter, 1, !dbg !330
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter, !dbg !330
  br i1 %prol.iter.cmp.not, label %do.body.prol.loopexit, label %do.body.prol, !dbg !330, !llvm.loop !331

do.body.prol.loopexit:                            ; preds = %do.body.prol, %if.then9
  %.lcssa.unr = phi ptr [ poison, %if.then9 ], [ %8, %do.body.prol ]
  %up.0.unr = phi i32 [ %add, %if.then9 ], [ %dec.prol, %do.body.prol ]
  %node.addr.0.unr = phi ptr [ %node, %if.then9 ], [ %8, %do.body.prol ]
  %9 = icmp ult i32 %7, 7, !dbg !325
  br i1 %9, label %do.end, label %do.body, !dbg !325

do.body:                                          ; preds = %do.body.prol.loopexit, %do.body
  %up.0 = phi i32 [ %dec.7, %do.body ], [ %up.0.unr, %do.body.prol.loopexit ], !dbg !326
  %node.addr.0 = phi ptr [ %17, %do.body ], [ %node.addr.0.unr, %do.body.prol.loopexit ]
    #dbg_value(ptr %node.addr.0, !246, !DIExpression(), !251)
    #dbg_value(i32 %up.0, !247, !DIExpression(), !251)
  %parent12 = getelementptr inbounds i8, ptr %node.addr.0, i64 16, !dbg !327
  %10 = load ptr, ptr %parent12, align 8, !dbg !327
    #dbg_value(ptr %10, !246, !DIExpression(), !251)
    #dbg_value(i32 %up.0, !247, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !251)
  %parent12.1 = getelementptr inbounds i8, ptr %10, i64 16, !dbg !327
  %11 = load ptr, ptr %parent12.1, align 8, !dbg !327
    #dbg_value(ptr %11, !246, !DIExpression(), !251)
    #dbg_value(i32 %up.0, !247, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !251)
  %parent12.2 = getelementptr inbounds i8, ptr %11, i64 16, !dbg !327
  %12 = load ptr, ptr %parent12.2, align 8, !dbg !327
    #dbg_value(ptr %12, !246, !DIExpression(), !251)
    #dbg_value(i32 %up.0, !247, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value), !251)
  %parent12.3 = getelementptr inbounds i8, ptr %12, i64 16, !dbg !327
  %13 = load ptr, ptr %parent12.3, align 8, !dbg !327
    #dbg_value(ptr %13, !246, !DIExpression(), !251)
    #dbg_value(i32 %up.0, !247, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value), !251)
  %parent12.4 = getelementptr inbounds i8, ptr %13, i64 16, !dbg !327
  %14 = load ptr, ptr %parent12.4, align 8, !dbg !327
    #dbg_value(ptr %14, !246, !DIExpression(), !251)
    #dbg_value(i32 %up.0, !247, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value), !251)
  %parent12.5 = getelementptr inbounds i8, ptr %14, i64 16, !dbg !327
  %15 = load ptr, ptr %parent12.5, align 8, !dbg !327
    #dbg_value(ptr %15, !246, !DIExpression(), !251)
    #dbg_value(i32 %up.0, !247, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value), !251)
  %parent12.6 = getelementptr inbounds i8, ptr %15, i64 16, !dbg !327
  %16 = load ptr, ptr %parent12.6, align 8, !dbg !327
    #dbg_value(ptr %16, !246, !DIExpression(), !251)
    #dbg_value(i32 %up.0, !247, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value), !251)
  %parent12.7 = getelementptr inbounds i8, ptr %16, i64 16, !dbg !327
  %17 = load ptr, ptr %parent12.7, align 8, !dbg !327
    #dbg_value(ptr %17, !246, !DIExpression(), !251)
  %dec.7 = add i32 %up.0, -8, !dbg !329
    #dbg_value(i32 %dec.7, !247, !DIExpression(), !251)
  %cmp13.not.7 = icmp eq i32 %dec.7, 0, !dbg !333
  br i1 %cmp13.not.7, label %do.end, label %do.body, !dbg !330, !llvm.loop !334

do.end:                                           ; preds = %do.body, %do.body.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %do.body.prol.loopexit ], [ %17, %do.body ], !dbg !327
  %right14 = getelementptr inbounds i8, ptr %.lcssa, i64 32, !dbg !336
  %18 = load ptr, ptr %right14, align 8, !dbg !336
    #dbg_value(ptr %18, !248, !DIExpression(), !326)
  %parent15 = getelementptr inbounds i8, ptr %.lcssa, i64 16, !dbg !337
  %19 = load ptr, ptr %parent15, align 8, !dbg !337
  %cmp16 = icmp eq ptr %19, null, !dbg !339
  %right20 = getelementptr inbounds i8, ptr %19, i64 32, !dbg !340
  %right20.sink = select i1 %cmp16, ptr %tree, ptr %right20, !dbg !340
  store ptr %18, ptr %right20.sink, align 8, !dbg !341
  %20 = load ptr, ptr %parent15, align 8, !dbg !342
  %parent23 = getelementptr inbounds i8, ptr %18, i64 16, !dbg !343
  store ptr %20, ptr %parent23, align 8, !dbg !344
  %left24 = getelementptr inbounds i8, ptr %18, i64 24, !dbg !345
  %21 = load ptr, ptr %left24, align 8, !dbg !345
  store ptr %21, ptr %right14, align 8, !dbg !346
  %cmp27.not = icmp eq ptr %21, null, !dbg !347
  br i1 %cmp27.not, label %if.end31, label %if.then28, !dbg !349

if.then28:                                        ; preds = %do.end
  %parent30 = getelementptr inbounds i8, ptr %21, i64 16, !dbg !350
  store ptr %.lcssa, ptr %parent30, align 8, !dbg !351
  br label %if.end31, !dbg !352

if.end31:                                         ; preds = %if.then28, %do.end
  store ptr %.lcssa, ptr %left24, align 8, !dbg !353
  store ptr %18, ptr %parent15, align 8, !dbg !354
  br label %return, !dbg !355

return:                                           ; preds = %if.end, %if.end31, %if.then
  ret void, !dbg !356
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @lzma_index_end(ptr noundef %i, ptr noundef %allocator) local_unnamed_addr #0 !dbg !357 {
entry:
    #dbg_value(ptr %i, !361, !DIExpression(), !363)
    #dbg_value(ptr %allocator, !362, !DIExpression(), !363)
  %cmp.not = icmp eq ptr %i, null, !dbg !364
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !366

if.then:                                          ; preds = %entry
  %i.val = load ptr, ptr %i, align 8, !dbg !367
    #dbg_value(ptr undef, !369, !DIExpression(), !377)
    #dbg_value(ptr %allocator, !375, !DIExpression(), !377)
    #dbg_value(ptr @index_stream_end, !376, !DIExpression(), !377)
  %cmp.not.i = icmp eq ptr %i.val, null, !dbg !379
  br i1 %cmp.not.i, label %index_tree_end.exit, label %if.then.i, !dbg !381

if.then.i:                                        ; preds = %if.then
  tail call fastcc void @index_tree_node_end(ptr noundef nonnull %i.val, ptr noundef %allocator, ptr noundef nonnull @index_stream_end), !dbg !382
  br label %index_tree_end.exit, !dbg !382

index_tree_end.exit:                              ; preds = %if.then, %if.then.i
  tail call void @lzma_free(ptr noundef nonnull %i, ptr noundef %allocator) #12, !dbg !383
  br label %if.end, !dbg !384

if.end:                                           ; preds = %index_tree_end.exit, %entry
  ret void, !dbg !385
}

; Function Attrs: nounwind uwtable
define internal void @index_stream_end(ptr nocapture noundef readonly %node, ptr noundef %allocator) #0 !dbg !386 {
entry:
    #dbg_value(ptr %node, !388, !DIExpression(), !391)
    #dbg_value(ptr %allocator, !389, !DIExpression(), !391)
    #dbg_value(ptr %node, !390, !DIExpression(), !391)
  %groups = getelementptr inbounds i8, ptr %node, i64 56, !dbg !392
  %groups.val = load ptr, ptr %groups, align 8, !dbg !393
    #dbg_value(ptr undef, !369, !DIExpression(), !394)
    #dbg_value(ptr %allocator, !375, !DIExpression(), !394)
    #dbg_value(ptr null, !376, !DIExpression(), !394)
  %cmp.not.i = icmp eq ptr %groups.val, null, !dbg !396
  br i1 %cmp.not.i, label %index_tree_end.exit, label %if.then.i, !dbg !397

if.then.i:                                        ; preds = %entry
  tail call fastcc void @index_tree_node_end(ptr noundef nonnull %groups.val, ptr noundef %allocator, ptr noundef null), !dbg !398
  br label %index_tree_end.exit, !dbg !398

index_tree_end.exit:                              ; preds = %entry, %if.then.i
  ret void, !dbg !399
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @lzma_index_prealloc(ptr nocapture noundef writeonly %i, i64 noundef %records) local_unnamed_addr #4 !dbg !400 {
entry:
    #dbg_value(ptr %i, !404, !DIExpression(), !406)
    #dbg_value(i64 %records, !405, !DIExpression(), !406)
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %records, i64 1152921504606846971), !dbg !407
    #dbg_value(i64 %spec.store.select, !405, !DIExpression(), !406)
  %prealloc = getelementptr inbounds i8, ptr %i, i64 64, !dbg !408
  store i64 %spec.store.select, ptr %prealloc, align 8, !dbg !409
  ret void, !dbg !410
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @lzma_index_memusage(i64 noundef %streams, i64 noundef %blocks) local_unnamed_addr #5 !dbg !411 {
entry:
    #dbg_value(i64 %streams, !415, !DIExpression(), !428)
    #dbg_value(i64 %blocks, !416, !DIExpression(), !428)
    #dbg_value(i64 32, !417, !DIExpression(), !428)
    #dbg_value(i64 296, !419, !DIExpression(), !428)
    #dbg_value(i64 8288, !420, !DIExpression(), !428)
  %sub = add i64 %blocks, 511, !dbg !429
  %div31 = lshr i64 %sub, 9, !dbg !430
    #dbg_value(i64 %div31, !421, !DIExpression(), !428)
  %mul = mul i64 %streams, 296, !dbg !431
    #dbg_value(i64 %mul, !423, !DIExpression(), !428)
  %mul1 = mul i64 %div31, 8288, !dbg !432
    #dbg_value(i64 %mul1, !425, !DIExpression(), !428)
    #dbg_value(i64 112, !426, !DIExpression(), !428)
    #dbg_value(i64 -113, !427, !DIExpression(), !428)
  %0 = add i64 %streams, -4294967296, !dbg !433
  %1 = icmp ult i64 %0, -4294967295, !dbg !433
  %2 = icmp ugt i64 %blocks, 1139567201464682496, !dbg !433
  %or.cond23 = or i1 %1, %2, !dbg !433
  %sub10 = sub nuw nsw i64 -113, %mul
  %cmp11 = icmp ult i64 %sub10, %mul1
  %or.cond = select i1 %or.cond23, i1 true, i1 %cmp11, !dbg !433
  %add12 = add nuw nsw i64 %mul, 112, !dbg !433
  %add13 = add i64 %add12, %mul1, !dbg !433
  %retval.0 = select i1 %or.cond, i64 -1, i64 %add13, !dbg !433
  ret i64 %retval.0, !dbg !435
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @lzma_index_memused(ptr nocapture noundef readonly %i) local_unnamed_addr #6 !dbg !436 {
entry:
    #dbg_value(ptr %i, !442, !DIExpression(), !443)
  %count = getelementptr inbounds i8, ptr %i, i64 24, !dbg !444
  %0 = load i32, ptr %count, align 8, !dbg !444
  %conv = zext i32 %0 to i64, !dbg !445
  %record_count = getelementptr inbounds i8, ptr %i, i64 48, !dbg !446
  %1 = load i64, ptr %record_count, align 8, !dbg !446
    #dbg_value(i64 %conv, !415, !DIExpression(), !447)
    #dbg_value(i64 %1, !416, !DIExpression(), !447)
    #dbg_value(i64 32, !417, !DIExpression(), !447)
    #dbg_value(i64 296, !419, !DIExpression(), !447)
    #dbg_value(i64 8288, !420, !DIExpression(), !447)
  %sub.i = add i64 %1, 511, !dbg !449
  %div31.i = lshr i64 %sub.i, 9, !dbg !450
    #dbg_value(i64 %div31.i, !421, !DIExpression(), !447)
  %mul.i = mul nuw nsw i64 %conv, 296, !dbg !451
    #dbg_value(i64 %mul.i, !423, !DIExpression(), !447)
  %mul1.i = mul i64 %div31.i, 8288, !dbg !452
    #dbg_value(i64 %mul1.i, !425, !DIExpression(), !447)
    #dbg_value(i64 112, !426, !DIExpression(), !447)
    #dbg_value(i64 -113, !427, !DIExpression(), !447)
  %2 = icmp eq i32 %0, 0, !dbg !453
  %3 = icmp ugt i64 %1, 1139567201464682496, !dbg !453
  %or.cond23.i = or i1 %2, %3, !dbg !453
  %sub10.i = sub nuw nsw i64 -113, %mul.i
  %cmp11.i = icmp ult i64 %sub10.i, %mul1.i
  %or.cond.i = select i1 %or.cond23.i, i1 true, i1 %cmp11.i, !dbg !453
  %add12.i = add nuw nsw i64 %mul.i, 112, !dbg !453
  %add13.i = add i64 %add12.i, %mul1.i, !dbg !453
  %retval.0.i = select i1 %or.cond.i, i64 -1, i64 %add13.i, !dbg !453
  ret i64 %retval.0.i, !dbg !454
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @lzma_index_block_count(ptr nocapture noundef readonly %i) local_unnamed_addr #6 !dbg !455 {
entry:
    #dbg_value(ptr %i, !459, !DIExpression(), !460)
  %record_count = getelementptr inbounds i8, ptr %i, i64 48, !dbg !461
  %0 = load i64, ptr %record_count, align 8, !dbg !461
  ret i64 %0, !dbg !462
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 4294967296) i64 @lzma_index_stream_count(ptr nocapture noundef readonly %i) local_unnamed_addr #6 !dbg !463 {
entry:
    #dbg_value(ptr %i, !465, !DIExpression(), !466)
  %count = getelementptr inbounds i8, ptr %i, i64 24, !dbg !467
  %0 = load i32, ptr %count, align 8, !dbg !467
  %conv = zext i32 %0 to i64, !dbg !468
  ret i64 %conv, !dbg !469
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, -3) i64 @lzma_index_size(ptr nocapture noundef readonly %i) local_unnamed_addr #0 !dbg !470 {
entry:
    #dbg_value(ptr %i, !472, !DIExpression(), !473)
  %record_count = getelementptr inbounds i8, ptr %i, i64 48, !dbg !474
  %0 = load i64, ptr %record_count, align 8, !dbg !474
  %index_list_size = getelementptr inbounds i8, ptr %i, i64 56, !dbg !475
  %1 = load i64, ptr %index_list_size, align 8, !dbg !475
    #dbg_value(i64 %0, !476, !DIExpression(), !483)
    #dbg_value(i64 %1, !482, !DIExpression(), !483)
    #dbg_value(i64 %0, !485, !DIExpression(), !489)
    #dbg_value(i64 %1, !488, !DIExpression(), !489)
  %call.i.i = tail call i32 @lzma_vli_size(i64 noundef %0) #12, !dbg !491
  %add.i.i = add i32 %call.i.i, 1, !dbg !492
  %conv.i.i = zext i32 %add.i.i to i64, !dbg !493
    #dbg_value(i64 poison, !494, !DIExpression(), !499)
  %add2.i.i = add i64 %1, 7, !dbg !501
  %add.i2.i = add i64 %add2.i.i, %conv.i.i, !dbg !502
  %and.i.i = and i64 %add.i2.i, -4, !dbg !503
  ret i64 %and.i.i, !dbg !504
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @lzma_index_total_size(ptr nocapture noundef readonly %i) local_unnamed_addr #6 !dbg !505 {
entry:
    #dbg_value(ptr %i, !507, !DIExpression(), !508)
  %total_size = getelementptr inbounds i8, ptr %i, i64 40, !dbg !509
  %0 = load i64, ptr %total_size, align 8, !dbg !509
  ret i64 %0, !dbg !510
}

; Function Attrs: nounwind uwtable
define dso_local i64 @lzma_index_stream_size(ptr nocapture noundef readonly %i) local_unnamed_addr #0 !dbg !511 {
entry:
    #dbg_value(ptr %i, !513, !DIExpression(), !514)
  %total_size = getelementptr inbounds i8, ptr %i, i64 40, !dbg !515
  %0 = load i64, ptr %total_size, align 8, !dbg !515
  %record_count = getelementptr inbounds i8, ptr %i, i64 48, !dbg !516
  %1 = load i64, ptr %record_count, align 8, !dbg !516
  %index_list_size = getelementptr inbounds i8, ptr %i, i64 56, !dbg !517
  %2 = load i64, ptr %index_list_size, align 8, !dbg !517
    #dbg_value(i64 %1, !476, !DIExpression(), !518)
    #dbg_value(i64 %2, !482, !DIExpression(), !518)
    #dbg_value(i64 %1, !485, !DIExpression(), !520)
    #dbg_value(i64 %2, !488, !DIExpression(), !520)
  %call.i.i = tail call i32 @lzma_vli_size(i64 noundef %1) #12, !dbg !522
  %add.i.i = add i32 %call.i.i, 1, !dbg !523
  %conv.i.i = zext i32 %add.i.i to i64, !dbg !524
    #dbg_value(i64 poison, !494, !DIExpression(), !525)
  %add2.i.i = add i64 %2, 7, !dbg !527
  %add.i2.i = add i64 %add2.i.i, %conv.i.i, !dbg !528
  %and.i.i = and i64 %add.i2.i, -4, !dbg !529
  %add1 = add i64 %0, 24, !dbg !530
  %add2 = add i64 %add1, %and.i.i, !dbg !531
  ret i64 %add2, !dbg !532
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -1, -9223372036854775808) i64 @lzma_index_file_size(ptr nocapture noundef readonly %i) local_unnamed_addr #0 !dbg !533 {
entry:
    #dbg_value(ptr %i, !535, !DIExpression(), !538)
  %rightmost = getelementptr inbounds i8, ptr %i, i64 16, !dbg !539
  %0 = load ptr, ptr %rightmost, align 8, !dbg !539
    #dbg_value(ptr %0, !536, !DIExpression(), !538)
  %rightmost1 = getelementptr inbounds i8, ptr %0, i64 72, !dbg !540
  %1 = load ptr, ptr %rightmost1, align 8, !dbg !540
    #dbg_value(ptr %1, !537, !DIExpression(), !538)
  %compressed_base = getelementptr inbounds i8, ptr %0, i64 8, !dbg !541
  %2 = load i64, ptr %compressed_base, align 8, !dbg !541
  %cmp = icmp eq ptr %1, null, !dbg !542
  br i1 %cmp, label %cond.end, label %cond.false, !dbg !543

cond.false:                                       ; preds = %entry
  %records = getelementptr inbounds i8, ptr %1, i64 64, !dbg !544
  %last = getelementptr inbounds i8, ptr %1, i64 56, !dbg !545
  %3 = load i64, ptr %last, align 8, !dbg !545
  %unpadded_sum = getelementptr inbounds [0 x %struct.index_record], ptr %records, i64 0, i64 %3, i32 1, !dbg !546
  %4 = load i64, ptr %unpadded_sum, align 8, !dbg !546
  %5 = add i64 %4, 3, !dbg !547
  %6 = and i64 %5, -4, !dbg !560
  br label %cond.end, !dbg !543

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi i64 [ %6, %cond.false ], [ 0, %entry ], !dbg !543
  %stream_padding = getelementptr inbounds i8, ptr %0, i64 160, !dbg !561
  %7 = load i64, ptr %stream_padding, align 8, !dbg !561
    #dbg_value(i64 %2, !553, !DIExpression(), !562)
    #dbg_value(i64 %cond, !554, !DIExpression(), !562)
    #dbg_value(i64 poison, !555, !DIExpression(), !562)
    #dbg_value(i64 poison, !556, !DIExpression(), !562)
    #dbg_value(i64 %7, !557, !DIExpression(), !562)
  %add.i = add i64 %2, 24, !dbg !563
    #dbg_value(i64 %cond, !494, !DIExpression(), !564)
  %add1.i = add i64 %add.i, %cond, !dbg !565
  %add2.i = add i64 %add1.i, %7, !dbg !566
    #dbg_value(i64 %add2.i, !558, !DIExpression(), !562)
  %cmp.i = icmp slt i64 %add2.i, 0, !dbg !567
  br i1 %cmp.i, label %index_file_size.exit, label %if.end.i, !dbg !569

if.end.i:                                         ; preds = %cond.end
  %index_list_size = getelementptr inbounds i8, ptr %0, i64 96, !dbg !570
  %8 = load i64, ptr %index_list_size, align 8, !dbg !570
    #dbg_value(i64 %8, !556, !DIExpression(), !562)
  %record_count = getelementptr inbounds i8, ptr %0, i64 88, !dbg !571
  %9 = load i64, ptr %record_count, align 8, !dbg !571
    #dbg_value(i64 %9, !555, !DIExpression(), !562)
    #dbg_value(i64 %9, !476, !DIExpression(), !572)
    #dbg_value(i64 %8, !482, !DIExpression(), !572)
    #dbg_value(i64 %9, !485, !DIExpression(), !574)
    #dbg_value(i64 %8, !488, !DIExpression(), !574)
  %call.i.i.i = tail call i32 @lzma_vli_size(i64 noundef %9) #12, !dbg !576
  %add.i.i.i = add i32 %call.i.i.i, 1, !dbg !577
  %conv.i.i.i = zext i32 %add.i.i.i to i64, !dbg !578
    #dbg_value(i64 poison, !494, !DIExpression(), !579)
  %add2.i.i.i = add i64 %8, 7, !dbg !581
  %add.i2.i.i = add i64 %add2.i.i.i, %conv.i.i.i, !dbg !582
  %and.i.i.i = and i64 %add.i2.i.i, -4, !dbg !583
  %add4.i = add i64 %and.i.i.i, %add2.i, !dbg !584
    #dbg_value(i64 %add4.i, !558, !DIExpression(), !562)
  %.add4.i = tail call i64 @llvm.smax.i64(i64 %add4.i, i64 -1), !dbg !562
  br label %index_file_size.exit, !dbg !562

index_file_size.exit:                             ; preds = %cond.end, %if.end.i
  %retval.0.i = phi i64 [ -1, %cond.end ], [ %.add4.i, %if.end.i ], !dbg !562
  ret i64 %retval.0.i, !dbg !585
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @lzma_index_uncompressed_size(ptr nocapture noundef readonly %i) local_unnamed_addr #6 !dbg !586 {
entry:
    #dbg_value(ptr %i, !588, !DIExpression(), !589)
  %uncompressed_size = getelementptr inbounds i8, ptr %i, i64 32, !dbg !590
  %0 = load i64, ptr %uncompressed_size, align 8, !dbg !590
  ret i64 %0, !dbg !591
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @lzma_index_checks(ptr nocapture noundef readonly %i) local_unnamed_addr #7 !dbg !592 {
entry:
    #dbg_value(ptr %i, !596, !DIExpression(), !599)
  %checks1 = getelementptr inbounds i8, ptr %i, i64 72, !dbg !600
  %0 = load i32, ptr %checks1, align 8, !dbg !600
    #dbg_value(i32 %0, !597, !DIExpression(), !599)
  %rightmost = getelementptr inbounds i8, ptr %i, i64 16, !dbg !601
  %1 = load ptr, ptr %rightmost, align 8, !dbg !601
    #dbg_value(ptr %1, !598, !DIExpression(), !599)
  %stream_flags = getelementptr inbounds i8, ptr %1, i64 104, !dbg !602
  %2 = load i32, ptr %stream_flags, align 8, !dbg !604
  %cmp.not = icmp eq i32 %2, -1, !dbg !605
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !606

if.then:                                          ; preds = %entry
  %check = getelementptr inbounds i8, ptr %1, i64 120, !dbg !607
  %3 = load i32, ptr %check, align 8, !dbg !607
  %shl = shl nuw i32 1, %3, !dbg !608
  %or = or i32 %shl, %0, !dbg !609
    #dbg_value(i32 %or, !597, !DIExpression(), !599)
  br label %if.end, !dbg !610

if.end:                                           ; preds = %if.then, %entry
  %checks.0 = phi i32 [ %or, %if.then ], [ %0, %entry ], !dbg !599
    #dbg_value(i32 %checks.0, !597, !DIExpression(), !599)
  ret i32 %checks.0, !dbg !611
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 4) i32 @lzma_index_padding_size(ptr nocapture noundef readonly %i) local_unnamed_addr #0 !dbg !612 {
entry:
    #dbg_value(ptr %i, !614, !DIExpression(), !615)
  %record_count = getelementptr inbounds i8, ptr %i, i64 48, !dbg !616
  %0 = load i64, ptr %record_count, align 8, !dbg !616
  %index_list_size = getelementptr inbounds i8, ptr %i, i64 56, !dbg !617
  %1 = load i64, ptr %index_list_size, align 8, !dbg !617
    #dbg_value(i64 %0, !485, !DIExpression(), !618)
    #dbg_value(i64 %1, !488, !DIExpression(), !618)
  %call.i = tail call i32 @lzma_vli_size(i64 noundef %0) #12, !dbg !620
  %2 = trunc i64 %1 to i32, !dbg !621
  %3 = add i32 %call.i, %2, !dbg !621
  %4 = sub i32 3, %3, !dbg !621
  %conv = and i32 %4, 3, !dbg !621
  ret i32 %conv, !dbg !622
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_index_stream_flags(ptr noundef readonly %i, ptr noundef %stream_flags) local_unnamed_addr #0 !dbg !623 {
entry:
    #dbg_value(ptr %i, !630, !DIExpression(), !636)
    #dbg_value(ptr %stream_flags, !631, !DIExpression(), !636)
  %cmp = icmp eq ptr %i, null, !dbg !637
  %cmp1 = icmp eq ptr %stream_flags, null
  %or.cond = or i1 %cmp, %cmp1, !dbg !639
  br i1 %or.cond, label %return, label %do.body, !dbg !639

do.body:                                          ; preds = %entry
  %call = tail call i32 @lzma_stream_flags_compare(ptr noundef nonnull %stream_flags, ptr noundef nonnull %stream_flags) #12, !dbg !640
    #dbg_value(i32 %call, !632, !DIExpression(), !641)
  %cmp2.not.not = icmp eq i32 %call, 0, !dbg !642
  br i1 %cmp2.not.not, label %do.end, label %return

do.end:                                           ; preds = %do.body
  %rightmost = getelementptr inbounds i8, ptr %i, i64 16, !dbg !644
  %0 = load ptr, ptr %rightmost, align 8, !dbg !644
    #dbg_value(ptr %0, !635, !DIExpression(), !636)
  %stream_flags5 = getelementptr inbounds i8, ptr %0, i64 104, !dbg !645
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %stream_flags5, ptr noundef nonnull align 8 dereferenceable(56) %stream_flags, i64 56, i1 false), !dbg !646
  br label %return

return:                                           ; preds = %do.body, %entry, %do.end
  %retval.1 = phi i32 [ %call, %do.body ], [ 0, %do.end ], [ 11, %entry ], !dbg !636
  ret i32 %retval.1, !dbg !647
}

declare !dbg !648 i32 @lzma_stream_flags_compare(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 12) i32 @lzma_index_stream_padding(ptr noundef readonly %i, i64 noundef %stream_padding) local_unnamed_addr #0 !dbg !651 {
entry:
    #dbg_value(ptr %i, !655, !DIExpression(), !659)
    #dbg_value(i64 %stream_padding, !656, !DIExpression(), !659)
  %cmp = icmp ne ptr %i, null, !dbg !660
  %0 = and i64 %stream_padding, -9223372036854775805, !dbg !662
  %1 = icmp eq i64 %0, 0, !dbg !662
  %or.cond20 = and i1 %cmp, %1, !dbg !662
  br i1 %or.cond20, label %if.end, label %return, !dbg !662

if.end:                                           ; preds = %entry
  %rightmost = getelementptr inbounds i8, ptr %i, i64 16, !dbg !663
  %2 = load ptr, ptr %rightmost, align 8, !dbg !663
    #dbg_value(ptr %2, !657, !DIExpression(), !659)
  %stream_padding4 = getelementptr inbounds i8, ptr %2, i64 160, !dbg !664
  %3 = load i64, ptr %stream_padding4, align 8, !dbg !664
    #dbg_value(i64 %3, !658, !DIExpression(), !659)
  store i64 0, ptr %stream_padding4, align 8, !dbg !665
    #dbg_value(ptr %i, !535, !DIExpression(), !666)
  %4 = load ptr, ptr %rightmost, align 8, !dbg !669
    #dbg_value(ptr %4, !536, !DIExpression(), !666)
  %rightmost1.i = getelementptr inbounds i8, ptr %4, i64 72, !dbg !670
  %5 = load ptr, ptr %rightmost1.i, align 8, !dbg !670
    #dbg_value(ptr %5, !537, !DIExpression(), !666)
  %compressed_base.i = getelementptr inbounds i8, ptr %4, i64 8, !dbg !671
  %6 = load i64, ptr %compressed_base.i, align 8, !dbg !671
  %cmp.i = icmp eq ptr %5, null, !dbg !672
  br i1 %cmp.i, label %cond.end.i, label %cond.false.i, !dbg !673

cond.false.i:                                     ; preds = %if.end
  %records.i = getelementptr inbounds i8, ptr %5, i64 64, !dbg !674
  %last.i = getelementptr inbounds i8, ptr %5, i64 56, !dbg !675
  %7 = load i64, ptr %last.i, align 8, !dbg !675
  %unpadded_sum.i = getelementptr inbounds [0 x %struct.index_record], ptr %records.i, i64 0, i64 %7, i32 1, !dbg !676
  %8 = load i64, ptr %unpadded_sum.i, align 8, !dbg !676
  %9 = add i64 %8, 3, !dbg !677
  %10 = and i64 %9, -4, !dbg !680
  br label %cond.end.i, !dbg !673

cond.end.i:                                       ; preds = %cond.false.i, %if.end
  %cond.i = phi i64 [ %10, %cond.false.i ], [ 0, %if.end ], !dbg !673
  %stream_padding.i = getelementptr inbounds i8, ptr %4, i64 160, !dbg !681
  %11 = load i64, ptr %stream_padding.i, align 8, !dbg !681
    #dbg_value(i64 %6, !553, !DIExpression(), !682)
    #dbg_value(i64 %cond.i, !554, !DIExpression(), !682)
    #dbg_value(i64 poison, !555, !DIExpression(), !682)
    #dbg_value(i64 poison, !556, !DIExpression(), !682)
    #dbg_value(i64 %11, !557, !DIExpression(), !682)
  %add.i.i = add i64 %6, 24, !dbg !683
    #dbg_value(i64 %cond.i, !494, !DIExpression(), !684)
  %add1.i.i = add i64 %add.i.i, %cond.i, !dbg !685
  %add2.i.i = add i64 %add1.i.i, %11, !dbg !686
    #dbg_value(i64 %add2.i.i, !558, !DIExpression(), !682)
  %cmp.i.i = icmp slt i64 %add2.i.i, 0, !dbg !687
  br i1 %cmp.i.i, label %lzma_index_file_size.exit, label %if.end.i.i, !dbg !688

if.end.i.i:                                       ; preds = %cond.end.i
  %index_list_size.i = getelementptr inbounds i8, ptr %4, i64 96, !dbg !689
  %12 = load i64, ptr %index_list_size.i, align 8, !dbg !689
    #dbg_value(i64 %12, !556, !DIExpression(), !682)
  %record_count.i = getelementptr inbounds i8, ptr %4, i64 88, !dbg !690
  %13 = load i64, ptr %record_count.i, align 8, !dbg !690
    #dbg_value(i64 %13, !555, !DIExpression(), !682)
    #dbg_value(i64 %13, !476, !DIExpression(), !691)
    #dbg_value(i64 %12, !482, !DIExpression(), !691)
    #dbg_value(i64 %13, !485, !DIExpression(), !693)
    #dbg_value(i64 %12, !488, !DIExpression(), !693)
  %call.i.i.i.i = tail call i32 @lzma_vli_size(i64 noundef %13) #12, !dbg !695
  %add.i.i.i.i = add i32 %call.i.i.i.i, 1, !dbg !696
  %conv.i.i.i.i = zext i32 %add.i.i.i.i to i64, !dbg !697
    #dbg_value(i64 poison, !494, !DIExpression(), !698)
  %add2.i.i.i.i = add i64 %12, 7, !dbg !700
  %add.i2.i.i.i = add i64 %add2.i.i.i.i, %conv.i.i.i.i, !dbg !701
  %and.i.i.i.i = and i64 %add.i2.i.i.i, -4, !dbg !702
  %add4.i.i = add i64 %and.i.i.i.i, %add2.i.i, !dbg !703
    #dbg_value(i64 %add4.i.i, !558, !DIExpression(), !682)
  %.add4.i.i = tail call i64 @llvm.smax.i64(i64 %add4.i.i, i64 -1), !dbg !682
  br label %lzma_index_file_size.exit, !dbg !682

lzma_index_file_size.exit:                        ; preds = %cond.end.i, %if.end.i.i
  %retval.0.i.i = phi i64 [ -1, %cond.end.i ], [ %.add4.i.i, %if.end.i.i ], !dbg !682
  %add = add i64 %retval.0.i.i, %stream_padding, !dbg !704
  %cmp6 = icmp slt i64 %add, 0, !dbg !705
  %.stream_padding = select i1 %cmp6, i64 %3, i64 %stream_padding, !dbg !659
  %. = select i1 %cmp6, i32 9, i32 0, !dbg !659
  store i64 %.stream_padding, ptr %stream_padding4, align 8, !dbg !659
  br label %return

return:                                           ; preds = %entry, %lzma_index_file_size.exit
  %retval.1 = phi i32 [ %., %lzma_index_file_size.exit ], [ 11, %entry ], !dbg !659
  ret i32 %retval.1, !dbg !706
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 12) i32 @lzma_index_append(ptr noundef %i, ptr noundef %allocator, i64 noundef %unpadded_size, i64 noundef %uncompressed_size) local_unnamed_addr #0 !dbg !707 {
entry:
    #dbg_value(ptr %i, !711, !DIExpression(), !721)
    #dbg_value(ptr %allocator, !712, !DIExpression(), !721)
    #dbg_value(i64 %unpadded_size, !713, !DIExpression(), !721)
    #dbg_value(i64 %uncompressed_size, !714, !DIExpression(), !721)
  %cmp = icmp eq ptr %i, null, !dbg !722
  %0 = add i64 %unpadded_size, -9223372036854775805, !dbg !724
  %1 = icmp ult i64 %0, -9223372036854775800, !dbg !724
  %or.cond92 = or i1 %cmp, %1, !dbg !724
  %cmp5 = icmp slt i64 %uncompressed_size, 0
  %or.cond93 = or i1 %cmp5, %or.cond92, !dbg !724
  br i1 %or.cond93, label %return, label %if.end, !dbg !724

if.end:                                           ; preds = %entry
  %rightmost = getelementptr inbounds i8, ptr %i, i64 16, !dbg !725
  %2 = load ptr, ptr %rightmost, align 8, !dbg !725
    #dbg_value(ptr %2, !715, !DIExpression(), !721)
  %groups = getelementptr inbounds i8, ptr %2, i64 56, !dbg !726
  %rightmost6 = getelementptr inbounds i8, ptr %2, i64 72, !dbg !727
  %3 = load ptr, ptr %rightmost6, align 8, !dbg !727
    #dbg_value(ptr %3, !716, !DIExpression(), !721)
  %cmp7 = icmp eq ptr %3, null, !dbg !728
  br i1 %cmp7, label %cond.end14, label %cond.false10, !dbg !729

cond.false10:                                     ; preds = %if.end
  %records = getelementptr inbounds i8, ptr %3, i64 64, !dbg !730
  %last = getelementptr inbounds i8, ptr %3, i64 56, !dbg !731
  %4 = load i64, ptr %last, align 8, !dbg !731
  %unpadded_sum = getelementptr inbounds [0 x %struct.index_record], ptr %records, i64 0, i64 %4, i32 1, !dbg !732
  %5 = load i64, ptr %unpadded_sum, align 8, !dbg !732
    #dbg_value(i64 %5, !494, !DIExpression(), !733)
  %add.i = add i64 %5, 3, !dbg !735
  %and.i = and i64 %add.i, -4, !dbg !736
    #dbg_value(i64 %and.i, !717, !DIExpression(), !721)
  %arrayidx13 = getelementptr inbounds [0 x %struct.index_record], ptr %records, i64 0, i64 %4, !dbg !737
  %6 = load i64, ptr %arrayidx13, align 8, !dbg !738
  br label %cond.end14, !dbg !739

cond.end14:                                       ; preds = %if.end, %cond.false10
  %cond152 = phi i64 [ %and.i, %cond.false10 ], [ 0, %if.end ]
  %cond15 = phi i64 [ %6, %cond.false10 ], [ 0, %if.end ], !dbg !739
    #dbg_value(i64 %cond15, !718, !DIExpression(), !721)
  %call16 = tail call i32 @lzma_vli_size(i64 noundef %unpadded_size) #12, !dbg !740
  %call17 = tail call i32 @lzma_vli_size(i64 noundef %uncompressed_size) #12, !dbg !741
  %add = add i32 %call17, %call16, !dbg !742
    #dbg_value(i32 %add, !719, !DIExpression(), !721)
  %compressed_base18 = getelementptr inbounds i8, ptr %2, i64 8, !dbg !743
  %7 = load i64, ptr %compressed_base18, align 8, !dbg !743
  %add19 = add i64 %cond152, %unpadded_size, !dbg !745
  %record_count = getelementptr inbounds i8, ptr %2, i64 88, !dbg !746
  %conv = zext i32 %add to i64, !dbg !747
  %stream_padding = getelementptr inbounds i8, ptr %2, i64 160, !dbg !748
  %8 = load i64, ptr %stream_padding, align 8, !dbg !748
    #dbg_value(i64 %7, !553, !DIExpression(), !749)
    #dbg_value(i64 %add19, !554, !DIExpression(), !749)
    #dbg_value(i64 poison, !555, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !749)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !556, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !749)
    #dbg_value(i64 %8, !557, !DIExpression(), !749)
    #dbg_value(i64 %add19, !494, !DIExpression(), !751)
  %add.i.i = add i64 %add19, 3, !dbg !753
  %and.i.i = and i64 %add.i.i, -4, !dbg !754
  %add.i146 = add i64 %and.i.i, 24, !dbg !755
  %add1.i = add i64 %add.i146, %7, !dbg !756
  %add2.i = add i64 %add1.i, %8, !dbg !757
    #dbg_value(i64 %add2.i, !558, !DIExpression(), !749)
  %cmp.i = icmp slt i64 %add2.i, 0, !dbg !758
  br i1 %cmp.i, label %return, label %index_file_size.exit, !dbg !759

index_file_size.exit:                             ; preds = %cond.end14
  %index_list_size = getelementptr inbounds i8, ptr %2, i64 96, !dbg !760
  %9 = load i64, ptr %index_list_size, align 8, !dbg !760
    #dbg_value(!DIArgList(i64 %9, i64 %conv), !556, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !749)
    #dbg_value(i64 poison, !556, !DIExpression(), !749)
  %10 = load i64, ptr %record_count, align 8, !dbg !746
    #dbg_value(i64 %10, !555, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !749)
  %add20 = add i64 %10, 1, !dbg !761
    #dbg_value(i64 %add20, !555, !DIExpression(), !749)
    #dbg_value(i64 %add20, !476, !DIExpression(), !762)
    #dbg_value(i64 poison, !482, !DIExpression(), !762)
    #dbg_value(i64 %add20, !485, !DIExpression(), !764)
    #dbg_value(i64 poison, !488, !DIExpression(), !764)
  %call.i.i.i = tail call i32 @lzma_vli_size(i64 noundef %add20) #12, !dbg !766
  %add.i.i.i = add i32 %call.i.i.i, 1, !dbg !767
  %conv.i.i.i = zext i32 %add.i.i.i to i64, !dbg !768
    #dbg_value(i64 poison, !494, !DIExpression(), !769)
  %add21 = add nuw nsw i64 %conv, 7, !dbg !771
  %add2.i.i.i = add i64 %add21, %9, !dbg !772
  %add.i2.i.i = add i64 %add2.i.i.i, %conv.i.i.i, !dbg !773
  %and.i.i.i = and i64 %add.i2.i.i, -4, !dbg !774
  %add4.i = add i64 %and.i.i.i, %add2.i, !dbg !775
    #dbg_value(i64 %add4.i, !558, !DIExpression(), !749)
  %cmp23 = icmp slt i64 %add4.i, 0, !dbg !776
  br i1 %cmp23, label %return, label %if.end26, !dbg !777

if.end26:                                         ; preds = %index_file_size.exit
  %record_count27 = getelementptr inbounds i8, ptr %i, i64 48, !dbg !778
  %11 = load i64, ptr %record_count27, align 8, !dbg !778
  %add28 = add i64 %11, 1, !dbg !780
  %index_list_size29 = getelementptr inbounds i8, ptr %i, i64 56, !dbg !781
  %12 = load i64, ptr %index_list_size29, align 8, !dbg !781
    #dbg_value(i64 %add28, !476, !DIExpression(), !782)
    #dbg_value(i64 poison, !482, !DIExpression(), !782)
    #dbg_value(i64 %add28, !485, !DIExpression(), !784)
    #dbg_value(i64 poison, !488, !DIExpression(), !784)
  %call.i.i = tail call i32 @lzma_vli_size(i64 noundef %add28) #12, !dbg !786
  %add.i.i147 = add i32 %call.i.i, 1, !dbg !787
  %conv.i.i = zext i32 %add.i.i147 to i64, !dbg !788
    #dbg_value(i64 poison, !494, !DIExpression(), !789)
  %add2.i.i = add i64 %add21, %12, !dbg !791
  %add.i2.i = add i64 %add2.i.i, %conv.i.i, !dbg !792
  %and.i.i148 = and i64 %add.i2.i, -4, !dbg !793
  %cmp33 = icmp ugt i64 %and.i.i148, 17179869184, !dbg !794
  br i1 %cmp33, label %return, label %if.end36, !dbg !795

if.end36:                                         ; preds = %if.end26
  br i1 %cmp7, label %if.else, label %land.lhs.true, !dbg !796

land.lhs.true:                                    ; preds = %if.end36
  %last39 = getelementptr inbounds i8, ptr %3, i64 56, !dbg !798
  %13 = load i64, ptr %last39, align 8, !dbg !798
  %add40 = add i64 %13, 1, !dbg !799
  %allocated = getelementptr inbounds i8, ptr %3, i64 48, !dbg !800
  %14 = load i64, ptr %allocated, align 8, !dbg !800
  %cmp41 = icmp ult i64 %add40, %14, !dbg !801
  br i1 %cmp41, label %if.then43, label %if.else, !dbg !802

if.then43:                                        ; preds = %land.lhs.true
  store i64 %add40, ptr %last39, align 8, !dbg !803
  br label %if.end63, !dbg !805

if.else:                                          ; preds = %land.lhs.true, %if.end36
  %prealloc = getelementptr inbounds i8, ptr %i, i64 64, !dbg !806
  %15 = load i64, ptr %prealloc, align 8, !dbg !806
  %mul = shl i64 %15, 4, !dbg !808
  %add45 = add i64 %mul, 64, !dbg !809
  %call46 = tail call ptr @lzma_alloc(i64 noundef %add45, ptr noundef %allocator) #12, !dbg !810
    #dbg_value(ptr %call46, !716, !DIExpression(), !721)
  %cmp47 = icmp eq ptr %call46, null, !dbg !811
  br i1 %cmp47, label %return, label %if.end50, !dbg !813

if.end50:                                         ; preds = %if.else
  %last51 = getelementptr inbounds i8, ptr %call46, i64 56, !dbg !814
  store i64 0, ptr %last51, align 8, !dbg !815
  %16 = load i64, ptr %prealloc, align 8, !dbg !816
  %allocated53 = getelementptr inbounds i8, ptr %call46, i64 48, !dbg !817
  store i64 %16, ptr %allocated53, align 8, !dbg !818
  store i64 512, ptr %prealloc, align 8, !dbg !819
  store i64 %cond15, ptr %call46, align 8, !dbg !820
  %compressed_base58 = getelementptr inbounds i8, ptr %call46, i64 8, !dbg !821
  store i64 %cond152, ptr %compressed_base58, align 8, !dbg !822
  %17 = load i64, ptr %record_count, align 8, !dbg !823
  %add60 = add i64 %17, 1, !dbg !824
  %number_base = getelementptr inbounds i8, ptr %call46, i64 40, !dbg !825
  store i64 %add60, ptr %number_base, align 8, !dbg !826
  tail call fastcc void @index_tree_append(ptr noundef nonnull %groups, ptr noundef nonnull %call46), !dbg !827
  %.pre = load i64, ptr %last51, align 8, !dbg !828
  br label %if.end63

if.end63:                                         ; preds = %if.end50, %if.then43
  %18 = phi i64 [ %add40, %if.then43 ], [ %.pre, %if.end50 ], !dbg !828
  %g.0 = phi ptr [ %3, %if.then43 ], [ %call46, %if.end50 ], !dbg !721
    #dbg_value(ptr %g.0, !716, !DIExpression(), !721)
  %add64 = add i64 %cond15, %uncompressed_size, !dbg !829
  %records65 = getelementptr inbounds i8, ptr %g.0, i64 64, !dbg !830
  %arrayidx67 = getelementptr inbounds [0 x %struct.index_record], ptr %records65, i64 0, i64 %18, !dbg !831
  store i64 %add64, ptr %arrayidx67, align 8, !dbg !832
  %unpadded_sum73 = getelementptr inbounds [0 x %struct.index_record], ptr %records65, i64 0, i64 %18, i32 1, !dbg !833
  store i64 %add19, ptr %unpadded_sum73, align 8, !dbg !834
  %19 = load <2 x i64>, ptr %record_count, align 8, !dbg !835
  %20 = insertelement <2 x i64> <i64 1, i64 poison>, i64 %conv, i64 1, !dbg !835
  %21 = add <2 x i64> %19, %20, !dbg !835
  store <2 x i64> %21, ptr %record_count, align 8, !dbg !835
    #dbg_value(i64 %unpadded_size, !494, !DIExpression(), !836)
  %add.i149 = add nuw nsw i64 %unpadded_size, 3, !dbg !838
  %and.i150 = and i64 %add.i149, 9223372036854775804, !dbg !839
  %total_size = getelementptr inbounds i8, ptr %i, i64 40, !dbg !840
  %uncompressed_size81 = getelementptr inbounds i8, ptr %i, i64 32, !dbg !841
  %22 = load i64, ptr %uncompressed_size81, align 8, !dbg !842
  %add82 = add i64 %22, %uncompressed_size, !dbg !842
  store i64 %add82, ptr %uncompressed_size81, align 8, !dbg !842
  %23 = load <2 x i64>, ptr %total_size, align 8, !dbg !843
  %24 = insertelement <2 x i64> <i64 poison, i64 1>, i64 %and.i150, i64 0, !dbg !843
  %25 = add <2 x i64> %23, %24, !dbg !843
  store <2 x i64> %25, ptr %total_size, align 8, !dbg !843
  %26 = load i64, ptr %index_list_size29, align 8, !dbg !844
  %add87 = add i64 %26, %conv, !dbg !844
  store i64 %add87, ptr %index_list_size29, align 8, !dbg !844
  br label %return, !dbg !845

return:                                           ; preds = %cond.end14, %if.end63, %index_file_size.exit, %if.end26, %if.else, %entry
  %retval.1 = phi i32 [ 11, %entry ], [ 0, %if.end63 ], [ 9, %index_file_size.exit ], [ 9, %if.end26 ], [ 5, %if.else ], [ 9, %cond.end14 ], !dbg !721
  ret i32 %retval.1, !dbg !846
}

declare !dbg !847 i32 @lzma_vli_size(i64 noundef) local_unnamed_addr #2

declare !dbg !850 ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 10) i32 @lzma_index_cat(ptr noalias noundef %dest, ptr noalias noundef %src, ptr noundef %allocator) local_unnamed_addr #0 !dbg !853 {
entry:
  %info = alloca %struct.index_cat_info, align 8, !DIAssignID !881
    #dbg_assign(i1 undef, !871, !DIExpression(), !881, ptr %info, !DIExpression(), !882)
    #dbg_value(ptr %dest, !858, !DIExpression(), !882)
    #dbg_value(ptr %src, !859, !DIExpression(), !882)
    #dbg_value(ptr %allocator, !860, !DIExpression(), !882)
    #dbg_value(ptr %dest, !535, !DIExpression(), !883)
  %rightmost.i = getelementptr inbounds i8, ptr %dest, i64 16, !dbg !885
  %0 = load ptr, ptr %rightmost.i, align 8, !dbg !885
    #dbg_value(ptr %0, !536, !DIExpression(), !883)
  %rightmost1.i = getelementptr inbounds i8, ptr %0, i64 72, !dbg !886
  %1 = load ptr, ptr %rightmost1.i, align 8, !dbg !886
    #dbg_value(ptr %1, !537, !DIExpression(), !883)
  %compressed_base.i = getelementptr inbounds i8, ptr %0, i64 8, !dbg !887
  %2 = load i64, ptr %compressed_base.i, align 8, !dbg !887
  %cmp.i = icmp eq ptr %1, null, !dbg !888
  br i1 %cmp.i, label %cond.end.i, label %cond.false.i, !dbg !889

cond.false.i:                                     ; preds = %entry
  %records.i = getelementptr inbounds i8, ptr %1, i64 64, !dbg !890
  %last.i = getelementptr inbounds i8, ptr %1, i64 56, !dbg !891
  %3 = load i64, ptr %last.i, align 8, !dbg !891
  %unpadded_sum.i = getelementptr inbounds [0 x %struct.index_record], ptr %records.i, i64 0, i64 %3, i32 1, !dbg !892
  %4 = load i64, ptr %unpadded_sum.i, align 8, !dbg !892
  %5 = add i64 %4, 3, !dbg !893
  %6 = and i64 %5, -4, !dbg !896
  br label %cond.end.i, !dbg !889

cond.end.i:                                       ; preds = %cond.false.i, %entry
  %cond.i = phi i64 [ %6, %cond.false.i ], [ 0, %entry ], !dbg !889
  %stream_padding.i = getelementptr inbounds i8, ptr %0, i64 160, !dbg !897
  %7 = load i64, ptr %stream_padding.i, align 8, !dbg !897
    #dbg_value(i64 %2, !553, !DIExpression(), !898)
    #dbg_value(i64 %cond.i, !554, !DIExpression(), !898)
    #dbg_value(i64 poison, !555, !DIExpression(), !898)
    #dbg_value(i64 poison, !556, !DIExpression(), !898)
    #dbg_value(i64 %7, !557, !DIExpression(), !898)
  %add.i.i = add i64 %2, 24, !dbg !899
    #dbg_value(i64 %cond.i, !494, !DIExpression(), !900)
  %add1.i.i = add i64 %add.i.i, %cond.i, !dbg !901
  %add2.i.i = add i64 %add1.i.i, %7, !dbg !902
    #dbg_value(i64 %add2.i.i, !558, !DIExpression(), !898)
  %cmp.i.i = icmp slt i64 %add2.i.i, 0, !dbg !903
  br i1 %cmp.i.i, label %lzma_index_file_size.exit, label %if.end.i.i, !dbg !904

if.end.i.i:                                       ; preds = %cond.end.i
  %index_list_size.i = getelementptr inbounds i8, ptr %0, i64 96, !dbg !905
  %8 = load i64, ptr %index_list_size.i, align 8, !dbg !905
    #dbg_value(i64 %8, !556, !DIExpression(), !898)
  %record_count.i = getelementptr inbounds i8, ptr %0, i64 88, !dbg !906
  %9 = load i64, ptr %record_count.i, align 8, !dbg !906
    #dbg_value(i64 %9, !555, !DIExpression(), !898)
    #dbg_value(i64 %9, !476, !DIExpression(), !907)
    #dbg_value(i64 %8, !482, !DIExpression(), !907)
    #dbg_value(i64 %9, !485, !DIExpression(), !909)
    #dbg_value(i64 %8, !488, !DIExpression(), !909)
  %call.i.i.i.i = tail call i32 @lzma_vli_size(i64 noundef %9) #12, !dbg !911
  %add.i.i.i.i = add i32 %call.i.i.i.i, 1, !dbg !912
  %conv.i.i.i.i = zext i32 %add.i.i.i.i to i64, !dbg !913
    #dbg_value(i64 poison, !494, !DIExpression(), !914)
  %add2.i.i.i.i = add i64 %8, 7, !dbg !916
  %add.i2.i.i.i = add i64 %add2.i.i.i.i, %conv.i.i.i.i, !dbg !917
  %and.i.i.i.i = and i64 %add.i2.i.i.i, -4, !dbg !918
  %add4.i.i = add i64 %and.i.i.i.i, %add2.i.i, !dbg !919
    #dbg_value(i64 %add4.i.i, !558, !DIExpression(), !898)
  %.add4.i.i = tail call i64 @llvm.smax.i64(i64 %add4.i.i, i64 -1), !dbg !898
  br label %lzma_index_file_size.exit, !dbg !898

lzma_index_file_size.exit:                        ; preds = %cond.end.i, %if.end.i.i
  %retval.0.i.i = phi i64 [ -1, %cond.end.i ], [ %.add4.i.i, %if.end.i.i ], !dbg !898
    #dbg_value(i64 %retval.0.i.i, !861, !DIExpression(), !882)
    #dbg_value(ptr %src, !535, !DIExpression(), !920)
  %rightmost.i155 = getelementptr inbounds i8, ptr %src, i64 16, !dbg !923
  %10 = load ptr, ptr %rightmost.i155, align 8, !dbg !923
    #dbg_value(ptr %10, !536, !DIExpression(), !920)
  %rightmost1.i156 = getelementptr inbounds i8, ptr %10, i64 72, !dbg !924
  %11 = load ptr, ptr %rightmost1.i156, align 8, !dbg !924
    #dbg_value(ptr %11, !537, !DIExpression(), !920)
  %compressed_base.i157 = getelementptr inbounds i8, ptr %10, i64 8, !dbg !925
  %12 = load i64, ptr %compressed_base.i157, align 8, !dbg !925
  %cmp.i158 = icmp eq ptr %11, null, !dbg !926
  br i1 %cmp.i158, label %cond.end.i163, label %cond.false.i159, !dbg !927

cond.false.i159:                                  ; preds = %lzma_index_file_size.exit
  %records.i160 = getelementptr inbounds i8, ptr %11, i64 64, !dbg !928
  %last.i161 = getelementptr inbounds i8, ptr %11, i64 56, !dbg !929
  %13 = load i64, ptr %last.i161, align 8, !dbg !929
  %unpadded_sum.i162 = getelementptr inbounds [0 x %struct.index_record], ptr %records.i160, i64 0, i64 %13, i32 1, !dbg !930
  %14 = load i64, ptr %unpadded_sum.i162, align 8, !dbg !930
  %15 = add i64 %14, 3, !dbg !931
  %16 = and i64 %15, -4, !dbg !934
  br label %cond.end.i163, !dbg !927

cond.end.i163:                                    ; preds = %cond.false.i159, %lzma_index_file_size.exit
  %cond.i164 = phi i64 [ %16, %cond.false.i159 ], [ 0, %lzma_index_file_size.exit ], !dbg !927
  %stream_padding.i165 = getelementptr inbounds i8, ptr %10, i64 160, !dbg !935
  %17 = load i64, ptr %stream_padding.i165, align 8, !dbg !935
    #dbg_value(i64 %12, !553, !DIExpression(), !936)
    #dbg_value(i64 %cond.i164, !554, !DIExpression(), !936)
    #dbg_value(i64 poison, !555, !DIExpression(), !936)
    #dbg_value(i64 poison, !556, !DIExpression(), !936)
    #dbg_value(i64 %17, !557, !DIExpression(), !936)
  %add.i.i166 = add i64 %12, 24, !dbg !937
    #dbg_value(i64 %cond.i164, !494, !DIExpression(), !938)
  %add1.i.i167 = add i64 %add.i.i166, %cond.i164, !dbg !939
  %add2.i.i168 = add i64 %add1.i.i167, %17, !dbg !940
    #dbg_value(i64 %add2.i.i168, !558, !DIExpression(), !936)
  %cmp.i.i169 = icmp slt i64 %add2.i.i168, 0, !dbg !941
  br i1 %cmp.i.i169, label %lzma_index_file_size.exit182, label %if.end.i.i170, !dbg !942

if.end.i.i170:                                    ; preds = %cond.end.i163
  %index_list_size.i171 = getelementptr inbounds i8, ptr %10, i64 96, !dbg !943
  %18 = load i64, ptr %index_list_size.i171, align 8, !dbg !943
    #dbg_value(i64 %18, !556, !DIExpression(), !936)
  %record_count.i172 = getelementptr inbounds i8, ptr %10, i64 88, !dbg !944
  %19 = load i64, ptr %record_count.i172, align 8, !dbg !944
    #dbg_value(i64 %19, !555, !DIExpression(), !936)
    #dbg_value(i64 %19, !476, !DIExpression(), !945)
    #dbg_value(i64 %18, !482, !DIExpression(), !945)
    #dbg_value(i64 %19, !485, !DIExpression(), !947)
    #dbg_value(i64 %18, !488, !DIExpression(), !947)
  %call.i.i.i.i173 = tail call i32 @lzma_vli_size(i64 noundef %19) #12, !dbg !949
  %add.i.i.i.i174 = add i32 %call.i.i.i.i173, 1, !dbg !950
  %conv.i.i.i.i175 = zext i32 %add.i.i.i.i174 to i64, !dbg !951
    #dbg_value(i64 poison, !494, !DIExpression(), !952)
  %add2.i.i.i.i176 = add i64 %18, 7, !dbg !954
  %add.i2.i.i.i177 = add i64 %add2.i.i.i.i176, %conv.i.i.i.i175, !dbg !955
  %and.i.i.i.i178 = and i64 %add.i2.i.i.i177, -4, !dbg !956
  %add4.i.i179 = add i64 %and.i.i.i.i178, %add2.i.i168, !dbg !957
    #dbg_value(i64 %add4.i.i179, !558, !DIExpression(), !936)
  %.add4.i.i180 = tail call i64 @llvm.smax.i64(i64 %add4.i.i179, i64 -1), !dbg !936
  br label %lzma_index_file_size.exit182, !dbg !936

lzma_index_file_size.exit182:                     ; preds = %cond.end.i163, %if.end.i.i170
  %retval.0.i.i181 = phi i64 [ -1, %cond.end.i163 ], [ %.add4.i.i180, %if.end.i.i170 ], !dbg !936
  %add = add i64 %retval.0.i.i181, %retval.0.i.i, !dbg !958
  %cmp = icmp slt i64 %add, 0, !dbg !959
  br i1 %cmp, label %cleanup94, label %lor.lhs.false, !dbg !960

lor.lhs.false:                                    ; preds = %lzma_index_file_size.exit182
  %uncompressed_size = getelementptr inbounds i8, ptr %dest, i64 32, !dbg !961
  %20 = load i64, ptr %uncompressed_size, align 8, !dbg !961
  %uncompressed_size2 = getelementptr inbounds i8, ptr %src, i64 32, !dbg !962
  %21 = load i64, ptr %uncompressed_size2, align 8, !dbg !962
  %add3 = add i64 %21, %20, !dbg !963
  %cmp4 = icmp slt i64 %add3, 0, !dbg !964
  br i1 %cmp4, label %cleanup94, label %if.end, !dbg !965

if.end:                                           ; preds = %lor.lhs.false
  %record_count = getelementptr inbounds i8, ptr %dest, i64 48, !dbg !966
  %22 = load i64, ptr %record_count, align 8, !dbg !966
  %index_list_size = getelementptr inbounds i8, ptr %dest, i64 56, !dbg !967
  %23 = load i64, ptr %index_list_size, align 8, !dbg !967
    #dbg_value(i64 %22, !485, !DIExpression(), !968)
    #dbg_value(i64 %23, !488, !DIExpression(), !968)
  %call.i = tail call i32 @lzma_vli_size(i64 noundef %22) #12, !dbg !970
  %add.i = add i32 %call.i, 1, !dbg !971
  %conv.i = zext i32 %add.i to i64, !dbg !972
    #dbg_value(i64 poison, !862, !DIExpression(), !973)
  %record_count6 = getelementptr inbounds i8, ptr %src, i64 48, !dbg !974
  %24 = load <2 x i64>, ptr %record_count6, align 8, !dbg !974
    #dbg_value(i64 poison, !485, !DIExpression(), !975)
    #dbg_value(i64 poison, !488, !DIExpression(), !975)
  %25 = extractelement <2 x i64> %24, i64 0, !dbg !977
  %call.i183 = tail call i32 @lzma_vli_size(i64 noundef %25) #12, !dbg !977
  %add.i184 = add i32 %call.i183, 1, !dbg !978
  %conv.i185 = zext i32 %add.i184 to i64, !dbg !979
    #dbg_value(!DIArgList(i64 poison, i64 poison), !864, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 4, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !973)
    #dbg_value(i64 poison, !494, !DIExpression(), !980)
  %add1.i = add i64 %23, 11, !dbg !983
  %add2.i = add i64 %add1.i, %conv.i, !dbg !984
  %26 = extractelement <2 x i64> %24, i64 1, !dbg !985
  %add9 = add i64 %add2.i, %26, !dbg !985
  %add.i188 = add i64 %add9, %conv.i185, !dbg !986
  %and.i = and i64 %add.i188, -4, !dbg !987
  %cmp11 = icmp ult i64 %and.i, 17179869185, !dbg !988
  br i1 %cmp11, label %cleanup.cont, label %cleanup94

cleanup.cont:                                     ; preds = %if.end
    #dbg_value(ptr %0, !865, !DIExpression(), !989)
  %groups = getelementptr inbounds i8, ptr %0, i64 56, !dbg !990
  %27 = load ptr, ptr %rightmost1.i, align 8, !dbg !991
    #dbg_value(ptr %27, !867, !DIExpression(), !989)
  %cmp16.not = icmp eq ptr %27, null, !dbg !992
  br i1 %cmp16.not, label %cleanup.cont71, label %land.lhs.true, !dbg !993

land.lhs.true:                                    ; preds = %cleanup.cont
  %last = getelementptr inbounds i8, ptr %27, i64 56, !dbg !994
  %28 = load i64, ptr %last, align 8, !dbg !994
  %add17 = add i64 %28, 1, !dbg !995
  %allocated = getelementptr inbounds i8, ptr %27, i64 48, !dbg !996
  %29 = load i64, ptr %allocated, align 8, !dbg !996
  %cmp18 = icmp ult i64 %add17, %29, !dbg !997
  br i1 %cmp18, label %if.then19, label %cleanup.cont71, !dbg !998

if.then19:                                        ; preds = %land.lhs.true
  %mul = shl i64 %add17, 4, !dbg !999
  %add22 = add i64 %mul, 64, !dbg !1000
  %call23 = tail call ptr @lzma_alloc(i64 noundef %add22, ptr noundef %allocator) #12, !dbg !1001
    #dbg_value(ptr %call23, !868, !DIExpression(), !1002)
  %cmp24.not = icmp eq ptr %call23, null, !dbg !1003
  br i1 %cmp24.not, label %cleanup94, label %if.end26, !dbg !1005

if.end26:                                         ; preds = %if.then19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %call23, ptr noundef nonnull align 8 dereferenceable(40) %27, i64 40, i1 false), !dbg !1006
  %30 = load i64, ptr %last, align 8, !dbg !1007
  %add29 = add i64 %30, 1, !dbg !1008
  %allocated30 = getelementptr inbounds i8, ptr %call23, i64 48, !dbg !1009
  store i64 %add29, ptr %allocated30, align 8, !dbg !1010
  %31 = load i64, ptr %last, align 8, !dbg !1011
  %last32 = getelementptr inbounds i8, ptr %call23, i64 56, !dbg !1012
  store i64 %31, ptr %last32, align 8, !dbg !1013
  %number_base = getelementptr inbounds i8, ptr %27, i64 40, !dbg !1014
  %32 = load i64, ptr %number_base, align 8, !dbg !1014
  %number_base33 = getelementptr inbounds i8, ptr %call23, i64 40, !dbg !1015
  store i64 %32, ptr %number_base33, align 8, !dbg !1016
  %records = getelementptr inbounds i8, ptr %call23, i64 64, !dbg !1017
  %records34 = getelementptr inbounds i8, ptr %27, i64 64, !dbg !1018
  %mul37 = shl i64 %add29, 4, !dbg !1019
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %records, ptr nonnull align 8 %records34, i64 %mul37, i1 false), !dbg !1020
  %parent = getelementptr inbounds i8, ptr %27, i64 16, !dbg !1021
  %33 = load ptr, ptr %parent, align 8, !dbg !1021
  %cmp39.not = icmp eq ptr %33, null, !dbg !1023
  br i1 %cmp39.not, label %if.end44, label %if.then40, !dbg !1024

if.then40:                                        ; preds = %if.end26
  %right = getelementptr inbounds i8, ptr %33, i64 32, !dbg !1025
  store ptr %call23, ptr %right, align 8, !dbg !1027
  br label %if.end44, !dbg !1028

if.end44:                                         ; preds = %if.then40, %if.end26
  %leftmost = getelementptr inbounds i8, ptr %0, i64 64, !dbg !1029
  %34 = load ptr, ptr %leftmost, align 8, !dbg !1029
  %cmp47 = icmp eq ptr %34, %27, !dbg !1031
  br i1 %cmp47, label %if.then48, label %if.end54, !dbg !1032

if.then48:                                        ; preds = %if.end44
  store ptr %call23, ptr %leftmost, align 8, !dbg !1033
  store ptr %call23, ptr %groups, align 8, !dbg !1035
  br label %if.end54, !dbg !1036

if.end54:                                         ; preds = %if.then48, %if.end44
  %35 = load ptr, ptr %rightmost1.i, align 8, !dbg !1037
  %cmp58 = icmp eq ptr %35, %27, !dbg !1039
  br i1 %cmp58, label %if.then59, label %cleanup68.thread192, !dbg !1040

if.then59:                                        ; preds = %if.end54
  store ptr %call23, ptr %rightmost1.i, align 8, !dbg !1041
  br label %cleanup68.thread192, !dbg !1042

cleanup68.thread192:                              ; preds = %if.end54, %if.then59
  tail call void @lzma_free(ptr noundef nonnull %27, ptr noundef %allocator) #12, !dbg !1043
  br label %cleanup.cont71

cleanup.cont71:                                   ; preds = %cleanup.cont, %land.lhs.true, %cleanup68.thread192
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %info) #12, !dbg !1044
  store i64 %20, ptr %info, align 8, !dbg !1045, !DIAssignID !1046
    #dbg_assign(i64 %20, !871, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1046, ptr %info, !DIExpression(), !882)
  %file_size = getelementptr inbounds i8, ptr %info, i64 8, !dbg !1045
  store i64 %retval.0.i.i, ptr %file_size, align 8, !dbg !1045, !DIAssignID !1047
    #dbg_assign(i64 %retval.0.i.i, !871, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1047, ptr %file_size, !DIExpression(), !882)
  %block_number_add = getelementptr inbounds i8, ptr %info, i64 16, !dbg !1045
  store i64 %22, ptr %block_number_add, align 8, !dbg !1045, !DIAssignID !1048
    #dbg_assign(i64 %22, !871, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !1048, ptr %block_number_add, !DIExpression(), !882)
  %stream_number_add = getelementptr inbounds i8, ptr %info, i64 24, !dbg !1045
  %count = getelementptr inbounds i8, ptr %dest, i64 24, !dbg !1049
  %36 = load i32, ptr %count, align 8, !dbg !1049
  store i32 %36, ptr %stream_number_add, align 8, !dbg !1045, !DIAssignID !1050
    #dbg_assign(i32 %36, !871, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !1050, ptr %stream_number_add, !DIExpression(), !882)
  %streams76 = getelementptr inbounds i8, ptr %info, i64 32, !dbg !1045
  store ptr %dest, ptr %streams76, align 8, !dbg !1045, !DIAssignID !1051
    #dbg_assign(ptr %dest, !871, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !1051, ptr %streams76, !DIExpression(), !882)
  %37 = load ptr, ptr %src, align 8, !dbg !1052
  call fastcc void @index_cat_helper(ptr noundef nonnull %info, ptr noundef %37), !dbg !1053
  %38 = load i64, ptr %uncompressed_size, align 8, !dbg !1054
  %add82 = add i64 %38, %21, !dbg !1054
  store i64 %add82, ptr %uncompressed_size, align 8, !dbg !1054
  %total_size = getelementptr inbounds i8, ptr %src, i64 40, !dbg !1055
  %39 = load i64, ptr %total_size, align 8, !dbg !1055
  %total_size83 = getelementptr inbounds i8, ptr %dest, i64 40, !dbg !1056
  %40 = load i64, ptr %total_size83, align 8, !dbg !1057
  %add84 = add i64 %40, %39, !dbg !1057
  store i64 %add84, ptr %total_size83, align 8, !dbg !1057
  %41 = load <2 x i64>, ptr %record_count, align 8, !dbg !1058
  %42 = add <2 x i64> %41, %24, !dbg !1058
  store <2 x i64> %42, ptr %record_count, align 8, !dbg !1058
    #dbg_value(ptr %dest, !596, !DIExpression(), !1059)
  %checks1.i = getelementptr inbounds i8, ptr %dest, i64 72, !dbg !1061
  %43 = load i32, ptr %checks1.i, align 8, !dbg !1061
    #dbg_value(i32 %43, !597, !DIExpression(), !1059)
  %44 = load ptr, ptr %rightmost.i, align 8, !dbg !1062
    #dbg_value(ptr %44, !598, !DIExpression(), !1059)
  %stream_flags.i = getelementptr inbounds i8, ptr %44, i64 104, !dbg !1063
  %45 = load i32, ptr %stream_flags.i, align 8, !dbg !1064
  %cmp.not.i = icmp eq i32 %45, -1, !dbg !1065
  br i1 %cmp.not.i, label %lzma_index_checks.exit, label %if.then.i, !dbg !1066

if.then.i:                                        ; preds = %cleanup.cont71
  %check.i = getelementptr inbounds i8, ptr %44, i64 120, !dbg !1067
  %46 = load i32, ptr %check.i, align 8, !dbg !1067
  %shl.i = shl nuw i32 1, %46, !dbg !1068
  %or.i = or i32 %shl.i, %43, !dbg !1069
    #dbg_value(i32 %or.i, !597, !DIExpression(), !1059)
  br label %lzma_index_checks.exit, !dbg !1070

lzma_index_checks.exit:                           ; preds = %cleanup.cont71, %if.then.i
  %checks.0.i = phi i32 [ %or.i, %if.then.i ], [ %43, %cleanup.cont71 ], !dbg !1059
    #dbg_value(i32 %checks.0.i, !597, !DIExpression(), !1059)
  %checks = getelementptr inbounds i8, ptr %src, i64 72, !dbg !1071
  %47 = load i32, ptr %checks, align 8, !dbg !1071
  %or = or i32 %47, %checks.0.i, !dbg !1072
  store i32 %or, ptr %checks1.i, align 8, !dbg !1073
  tail call void @lzma_free(ptr noundef nonnull %src, ptr noundef %allocator) #12, !dbg !1074
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %info) #12, !dbg !1075
  br label %cleanup94

cleanup94:                                        ; preds = %if.then19, %lzma_index_file_size.exit182, %lor.lhs.false, %if.end, %lzma_index_checks.exit
  %retval.4 = phi i32 [ 0, %lzma_index_checks.exit ], [ 9, %if.end ], [ 9, %lor.lhs.false ], [ 9, %lzma_index_file_size.exit182 ], [ 5, %if.then19 ], !dbg !882
  ret i32 %retval.4, !dbg !1075
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @index_cat_helper(ptr nocapture noundef readonly %info, ptr noundef %this) unnamed_addr #9 !dbg !1076 {
entry:
  %file_size = getelementptr inbounds i8, ptr %info, i64 8
  %stream_number_add = getelementptr inbounds i8, ptr %info, i64 24
  %block_number_add = getelementptr inbounds i8, ptr %info, i64 16
  %streams = getelementptr inbounds i8, ptr %info, i64 32
  br label %tailrecurse

tailrecurse:                                      ; preds = %if.end, %entry
  %this.tr = phi ptr [ %this, %entry ], [ %1, %if.end ]
    #dbg_value(ptr %info, !1081, !DIExpression(), !1085)
    #dbg_value(ptr %this.tr, !1082, !DIExpression(), !1085)
  %left1 = getelementptr inbounds i8, ptr %this.tr, i64 24, !dbg !1086
  %0 = load ptr, ptr %left1, align 8, !dbg !1086
    #dbg_value(ptr %0, !1083, !DIExpression(), !1085)
  %right3 = getelementptr inbounds i8, ptr %this.tr, i64 32, !dbg !1087
  %1 = load ptr, ptr %right3, align 8, !dbg !1087
    #dbg_value(ptr %1, !1084, !DIExpression(), !1085)
  %cmp.not = icmp eq ptr %0, null, !dbg !1088
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1090

if.then:                                          ; preds = %tailrecurse
  tail call fastcc void @index_cat_helper(ptr noundef %info, ptr noundef nonnull %0), !dbg !1091
  br label %if.end, !dbg !1091

if.end:                                           ; preds = %if.then, %tailrecurse
  %2 = load i64, ptr %info, align 8, !dbg !1092
  %3 = load i64, ptr %this.tr, align 8, !dbg !1093
  %add = add i64 %3, %2, !dbg !1093
  store i64 %add, ptr %this.tr, align 8, !dbg !1093
  %4 = load i64, ptr %file_size, align 8, !dbg !1094
  %compressed_base = getelementptr inbounds i8, ptr %this.tr, i64 8, !dbg !1095
  %5 = load i64, ptr %compressed_base, align 8, !dbg !1096
  %add6 = add i64 %5, %4, !dbg !1096
  store i64 %add6, ptr %compressed_base, align 8, !dbg !1096
  %6 = load i32, ptr %stream_number_add, align 8, !dbg !1097
  %number = getelementptr inbounds i8, ptr %this.tr, i64 40, !dbg !1098
  %7 = load i32, ptr %number, align 8, !dbg !1099
  %add7 = add i32 %7, %6, !dbg !1099
  store i32 %add7, ptr %number, align 8, !dbg !1099
  %8 = load i64, ptr %block_number_add, align 8, !dbg !1100
  %block_number_base = getelementptr inbounds i8, ptr %this.tr, i64 48, !dbg !1101
  %9 = load i64, ptr %block_number_base, align 8, !dbg !1102
  %add8 = add i64 %9, %8, !dbg !1102
  store i64 %add8, ptr %block_number_base, align 8, !dbg !1102
  %10 = load ptr, ptr %streams, align 8, !dbg !1103
  tail call fastcc void @index_tree_append(ptr noundef %10, ptr noundef nonnull %this.tr), !dbg !1104
  %cmp10.not = icmp eq ptr %1, null, !dbg !1105
  br i1 %cmp10.not, label %if.end12, label %tailrecurse, !dbg !1107

if.end12:                                         ; preds = %if.end
  ret void, !dbg !1108
}

; Function Attrs: nounwind uwtable
define dso_local ptr @lzma_index_dup(ptr nocapture noundef readonly %src, ptr noundef %allocator) local_unnamed_addr #0 !dbg !1109 {
entry:
    #dbg_value(ptr %src, !1113, !DIExpression(), !1119)
    #dbg_value(ptr %allocator, !1114, !DIExpression(), !1119)
    #dbg_value(ptr %allocator, !175, !DIExpression(), !1120)
  %call.i = tail call ptr @lzma_alloc(i64 noundef 80, ptr noundef %allocator) #12, !dbg !1122
    #dbg_value(ptr %call.i, !178, !DIExpression(), !1120)
  %cmp.not.i = icmp eq ptr %call.i, null, !dbg !1123
  br i1 %cmp.not.i, label %cleanup14, label %if.end, !dbg !1124

if.end:                                           ; preds = %entry
    #dbg_value(ptr %call.i, !185, !DIExpression(), !1125)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %call.i, i8 0, i64 28, i1 false), !dbg !1127
  %uncompressed_size.i = getelementptr inbounds i8, ptr %call.i, i64 32, !dbg !1128
  %prealloc.i = getelementptr inbounds i8, ptr %call.i, i64 64, !dbg !1129
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %uncompressed_size.i, i8 0, i64 32, i1 false), !dbg !1130
  store i64 512, ptr %prealloc.i, align 8, !dbg !1131
  %checks.i = getelementptr inbounds i8, ptr %call.i, i64 72, !dbg !1132
  store i32 0, ptr %checks.i, align 8, !dbg !1133
    #dbg_value(ptr %call.i, !1115, !DIExpression(), !1119)
  %uncompressed_size = getelementptr inbounds i8, ptr %src, i64 32, !dbg !1134
  %0 = load i64, ptr %uncompressed_size, align 8, !dbg !1134
  store i64 %0, ptr %uncompressed_size.i, align 8, !dbg !1135
  %total_size = getelementptr inbounds i8, ptr %src, i64 40, !dbg !1136
  %1 = load i64, ptr %total_size, align 8, !dbg !1136
  %total_size2 = getelementptr inbounds i8, ptr %call.i, i64 40, !dbg !1137
  store i64 %1, ptr %total_size2, align 8, !dbg !1138
  %record_count = getelementptr inbounds i8, ptr %src, i64 48, !dbg !1139
  %2 = load i64, ptr %record_count, align 8, !dbg !1139
  %record_count3 = getelementptr inbounds i8, ptr %call.i, i64 48, !dbg !1140
  store i64 %2, ptr %record_count3, align 8, !dbg !1141
  %index_list_size = getelementptr inbounds i8, ptr %src, i64 56, !dbg !1142
  %3 = load i64, ptr %index_list_size, align 8, !dbg !1142
  %index_list_size4 = getelementptr inbounds i8, ptr %call.i, i64 56, !dbg !1143
  store i64 %3, ptr %index_list_size4, align 8, !dbg !1144
  %leftmost = getelementptr inbounds i8, ptr %src, i64 8, !dbg !1145
  %4 = load ptr, ptr %leftmost, align 8, !dbg !1145
    #dbg_value(ptr %4, !1116, !DIExpression(), !1119)
    #dbg_value(ptr %4, !1146, !DIExpression(), !1156)
    #dbg_value(ptr %allocator, !1151, !DIExpression(), !1156)
  %record_count.i58 = getelementptr inbounds i8, ptr %4, i64 88, !dbg !1158
  %5 = load i64, ptr %record_count.i58, align 8, !dbg !1158
  %cmp.i59 = icmp ugt i64 %5, 1152921504606846971, !dbg !1160
  br i1 %cmp.i59, label %if.then.i32, label %if.end.i, !dbg !1161

if.end.i:                                         ; preds = %if.end, %do.cond
  %record_count.i61 = phi ptr [ %record_count.i, %do.cond ], [ %record_count.i58, %if.end ]
  %srcstream.060 = phi ptr [ %srcstream.1, %do.cond ], [ %4, %if.end ]
    #dbg_value(ptr %srcstream.060, !1116, !DIExpression(), !1119)
  %6 = load <2 x i64>, ptr %srcstream.060, align 8, !dbg !1162
  %number.i = getelementptr inbounds i8, ptr %srcstream.060, i64 40, !dbg !1163
  %7 = load i32, ptr %number.i, align 8, !dbg !1163
  %block_number_base.i = getelementptr inbounds i8, ptr %srcstream.060, i64 48, !dbg !1164
  %8 = load i64, ptr %block_number_base.i, align 8, !dbg !1164
    #dbg_value(i64 poison, !201, !DIExpression(), !1165)
    #dbg_value(i64 poison, !206, !DIExpression(), !1165)
    #dbg_value(i32 %7, !207, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !1165)
    #dbg_value(i64 %8, !208, !DIExpression(), !1165)
    #dbg_value(ptr %allocator, !209, !DIExpression(), !1165)
  %call.i.i = tail call ptr @lzma_alloc(i64 noundef 168, ptr noundef %allocator) #12, !dbg !1167
    #dbg_value(ptr %call.i.i, !210, !DIExpression(), !1165)
  %cmp.i.i = icmp eq ptr %call.i.i, null, !dbg !1168
  br i1 %cmp.i.i, label %if.then.i32, label %lor.lhs.false.i, !dbg !1169

lor.lhs.false.i:                                  ; preds = %if.end.i
  store <2 x i64> %6, ptr %call.i.i, align 8, !dbg !1170
  %parent.i.i = getelementptr inbounds i8, ptr %call.i.i, i64 16, !dbg !1171
  %number.i.i = getelementptr inbounds i8, ptr %call.i.i, i64 40, !dbg !1172
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %parent.i.i, i8 0, i64 24, i1 false), !dbg !1173
  store i32 %7, ptr %number.i.i, align 8, !dbg !1174
  %block_number_base7.i.i = getelementptr inbounds i8, ptr %call.i.i, i64 48, !dbg !1175
  store i64 %8, ptr %block_number_base7.i.i, align 8, !dbg !1176
  %groups.i.i = getelementptr inbounds i8, ptr %call.i.i, i64 56, !dbg !1177
    #dbg_value(ptr %groups.i.i, !185, !DIExpression(), !1178)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %groups.i.i, i8 0, i64 28, i1 false), !dbg !1180
  %record_count.i.i = getelementptr inbounds i8, ptr %call.i.i, i64 88, !dbg !1181
  %stream_flags.i.i = getelementptr inbounds i8, ptr %call.i.i, i64 104, !dbg !1182
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %record_count.i.i, i8 0, i64 16, i1 false), !dbg !1183
  store i32 -1, ptr %stream_flags.i.i, align 8, !dbg !1184
  %stream_padding.i.i = getelementptr inbounds i8, ptr %call.i.i, i64 160, !dbg !1185
  store i64 0, ptr %stream_padding.i.i, align 8, !dbg !1186
    #dbg_value(ptr %call.i.i, !1152, !DIExpression(), !1156)
  %leftmost.i = getelementptr inbounds i8, ptr %srcstream.060, i64 64, !dbg !1187
  %9 = load ptr, ptr %leftmost.i, align 8, !dbg !1187
  %cmp4.i = icmp eq ptr %9, null, !dbg !1189
  br i1 %cmp4.i, label %if.end8, label %if.end7.i, !dbg !1190

if.end7.i:                                        ; preds = %lor.lhs.false.i
  %10 = load i64, ptr %record_count.i61, align 8, !dbg !1191
  store i64 %10, ptr %record_count.i.i, align 8, !dbg !1192
  %index_list_size.i = getelementptr inbounds i8, ptr %srcstream.060, i64 96, !dbg !1193
  %11 = load i64, ptr %index_list_size.i, align 8, !dbg !1193
  %index_list_size10.i = getelementptr inbounds i8, ptr %call.i.i, i64 96, !dbg !1194
  store i64 %11, ptr %index_list_size10.i, align 8, !dbg !1195
  %stream_flags11.i = getelementptr inbounds i8, ptr %srcstream.060, i64 104, !dbg !1196
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %stream_flags.i.i, ptr noundef nonnull readonly align 8 dereferenceable(56) %stream_flags11.i, i64 56, i1 false), !dbg !1196
  %stream_padding.i = getelementptr inbounds i8, ptr %srcstream.060, i64 160, !dbg !1197
  %12 = load i64, ptr %stream_padding.i, align 8, !dbg !1197
  store i64 %12, ptr %stream_padding.i.i, align 8, !dbg !1198
  %13 = load i64, ptr %record_count.i61, align 8, !dbg !1199
  %mul.i = shl i64 %13, 4, !dbg !1200
  %add.i = add i64 %mul.i, 64, !dbg !1201
  %call14.i = tail call ptr @lzma_alloc(i64 noundef %add.i, ptr noundef %allocator) #12, !dbg !1202
    #dbg_value(ptr %call14.i, !1153, !DIExpression(), !1156)
  %cmp15.i = icmp eq ptr %call14.i, null, !dbg !1203
  br i1 %cmp15.i, label %if.then17.i, label %if.end18.i, !dbg !1205

if.then17.i:                                      ; preds = %if.end7.i
    #dbg_value(ptr %call.i.i, !388, !DIExpression(), !1206)
    #dbg_value(ptr %allocator, !389, !DIExpression(), !1206)
    #dbg_value(ptr %call.i.i, !390, !DIExpression(), !1206)
  %groups.val.i.i = load ptr, ptr %groups.i.i, align 8, !dbg !1209
    #dbg_value(ptr undef, !369, !DIExpression(), !1210)
    #dbg_value(ptr %allocator, !375, !DIExpression(), !1210)
    #dbg_value(ptr null, !376, !DIExpression(), !1210)
  %cmp.not.i.i.i = icmp eq ptr %groups.val.i.i, null, !dbg !1212
  br i1 %cmp.not.i.i.i, label %if.then.i32, label %if.then.i.i.i, !dbg !1213

if.then.i.i.i:                                    ; preds = %if.then17.i
  tail call fastcc void @index_tree_node_end(ptr noundef nonnull %groups.val.i.i, ptr noundef %allocator, ptr noundef null), !dbg !1214
  br label %if.then.i32, !dbg !1214

if.end18.i:                                       ; preds = %if.end7.i
  %number_base.i = getelementptr inbounds i8, ptr %call14.i, i64 40, !dbg !1215
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %call14.i, i8 0, i64 16, i1 false), !dbg !1216
  store i64 1, ptr %number_base.i, align 8, !dbg !1217
  %14 = load i64, ptr %record_count.i61, align 8, !dbg !1218
  %allocated.i = getelementptr inbounds i8, ptr %call14.i, i64 48, !dbg !1219
  store i64 %14, ptr %allocated.i, align 8, !dbg !1220
  %sub.i = add i64 %14, -1, !dbg !1221
  %last.i = getelementptr inbounds i8, ptr %call14.i, i64 56, !dbg !1222
  store i64 %sub.i, ptr %last.i, align 8, !dbg !1223
  %15 = load ptr, ptr %leftmost.i, align 8, !dbg !1224
    #dbg_value(ptr %15, !1154, !DIExpression(), !1156)
    #dbg_value(i64 0, !1155, !DIExpression(), !1156)
  %records.i = getelementptr inbounds i8, ptr %call14.i, i64 64
  br label %do.body.i, !dbg !1225

do.body.i:                                        ; preds = %index_tree_next.exit.i, %if.end18.i
  %srcg.0.i = phi ptr [ %15, %if.end18.i ], [ %retval.0.i.i, %index_tree_next.exit.i ], !dbg !1156
  %i.0.i = phi i64 [ 0, %if.end18.i ], [ %add34.i, %index_tree_next.exit.i ], !dbg !1156
    #dbg_value(i64 %i.0.i, !1155, !DIExpression(), !1156)
    #dbg_value(ptr %srcg.0.i, !1154, !DIExpression(), !1156)
  %add.ptr.i = getelementptr inbounds %struct.index_record, ptr %records.i, i64 %i.0.i, !dbg !1226
  %records27.i = getelementptr inbounds i8, ptr %srcg.0.i, i64 64, !dbg !1228
  %last29.i = getelementptr inbounds i8, ptr %srcg.0.i, i64 56, !dbg !1229
  %16 = load i64, ptr %last29.i, align 8, !dbg !1229
  %add30.i = shl i64 %16, 4, !dbg !1230
  %mul31.i = add i64 %add30.i, 16, !dbg !1230
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %add.ptr.i, ptr nonnull align 8 %records27.i, i64 %mul31.i, i1 false), !dbg !1231
  %17 = load i64, ptr %last29.i, align 8, !dbg !1232
  %add33.i = add i64 %i.0.i, 1, !dbg !1233
  %add34.i = add i64 %add33.i, %17, !dbg !1234
    #dbg_value(i64 %add34.i, !1155, !DIExpression(), !1156)
    #dbg_value(ptr %srcg.0.i, !1235, !DIExpression(), !1242)
  %right.i.i = getelementptr inbounds i8, ptr %srcg.0.i, i64 32, !dbg !1244
  %18 = load ptr, ptr %right.i.i, align 8, !dbg !1244
  %cmp.not.i.i = icmp eq ptr %18, null, !dbg !1246
  br i1 %cmp.not.i.i, label %while.cond4.i.i, label %while.cond.i.i, !dbg !1247

while.cond.i.i:                                   ; preds = %do.body.i, %while.cond.i.i
  %node.addr.0.i.i = phi ptr [ %19, %while.cond.i.i ], [ %18, %do.body.i ], !dbg !1248
    #dbg_value(ptr %node.addr.0.i.i, !1235, !DIExpression(), !1242)
  %left.i.i = getelementptr inbounds i8, ptr %node.addr.0.i.i, i64 24, !dbg !1250
  %19 = load ptr, ptr %left.i.i, align 8, !dbg !1250
  %cmp2.not.i.i = icmp eq ptr %19, null, !dbg !1251
  br i1 %cmp2.not.i.i, label %index_tree_next.exit.i, label %while.cond.i.i, !dbg !1252, !llvm.loop !1253

while.cond4.i.i:                                  ; preds = %do.body.i, %land.rhs.i.i
  %node.addr.1.i.i = phi ptr [ %20, %land.rhs.i.i ], [ %srcg.0.i, %do.body.i ]
    #dbg_value(ptr %node.addr.1.i.i, !1235, !DIExpression(), !1242)
  %parent.i78.i = getelementptr inbounds i8, ptr %node.addr.1.i.i, i64 16, !dbg !1255
  %20 = load ptr, ptr %parent.i78.i, align 8, !dbg !1255
  %cmp5.not.i.i = icmp eq ptr %20, null, !dbg !1256
  br i1 %cmp5.not.i.i, label %index_dup_stream.exit, label %land.rhs.i.i, !dbg !1257

land.rhs.i.i:                                     ; preds = %while.cond4.i.i
  %right7.i.i = getelementptr inbounds i8, ptr %20, i64 32, !dbg !1258
  %21 = load ptr, ptr %right7.i.i, align 8, !dbg !1258
  %cmp8.i.i = icmp eq ptr %21, %node.addr.1.i.i, !dbg !1259
  br i1 %cmp8.i.i, label %while.cond4.i.i, label %index_tree_next.exit.i, !dbg !1260, !llvm.loop !1261

index_tree_next.exit.i:                           ; preds = %while.cond.i.i, %land.rhs.i.i
  %retval.0.i.i = phi ptr [ %20, %land.rhs.i.i ], [ %node.addr.0.i.i, %while.cond.i.i ], !dbg !1242
    #dbg_value(ptr %retval.0.i.i, !1154, !DIExpression(), !1156)
  br label %do.body.i, !dbg !1263, !llvm.loop !1264

index_dup_stream.exit:                            ; preds = %while.cond4.i.i
    #dbg_value(ptr null, !1154, !DIExpression(), !1156)
  tail call fastcc void @index_tree_append(ptr noundef nonnull %groups.i.i, ptr noundef nonnull %call14.i), !dbg !1266
    #dbg_value(ptr %call.i.i, !1117, !DIExpression(), !1267)
  br label %if.end8, !dbg !1268

if.then.i32:                                      ; preds = %do.cond, %if.end.i, %if.end, %if.then.i.i.i, %if.then17.i
    #dbg_value(ptr %call.i, !361, !DIExpression(), !1269)
    #dbg_value(ptr %allocator, !362, !DIExpression(), !1269)
  %i.val.i = load ptr, ptr %call.i, align 8, !dbg !1273
    #dbg_value(ptr undef, !369, !DIExpression(), !1274)
    #dbg_value(ptr %allocator, !375, !DIExpression(), !1274)
    #dbg_value(ptr @index_stream_end, !376, !DIExpression(), !1274)
  %cmp.not.i.i33 = icmp eq ptr %i.val.i, null, !dbg !1276
  br i1 %cmp.not.i.i33, label %cleanup.thread, label %if.then.i.i, !dbg !1277

if.then.i.i:                                      ; preds = %if.then.i32
  tail call fastcc void @index_tree_node_end(ptr noundef nonnull %i.val.i, ptr noundef %allocator, ptr noundef nonnull @index_stream_end), !dbg !1278
  br label %cleanup.thread, !dbg !1278

cleanup.thread:                                   ; preds = %if.then.i.i, %if.then.i32
  tail call void @lzma_free(ptr noundef nonnull %call.i, ptr noundef %allocator) #12, !dbg !1279
    #dbg_value(ptr poison, !1116, !DIExpression(), !1119)
  br label %cleanup14

if.end8:                                          ; preds = %index_dup_stream.exit, %lor.lhs.false.i
  tail call fastcc void @index_tree_append(ptr noundef nonnull %call.i, ptr noundef nonnull %call.i.i), !dbg !1280
    #dbg_value(ptr %srcstream.060, !1235, !DIExpression(), !1281)
  %right.i = getelementptr inbounds i8, ptr %srcstream.060, i64 32, !dbg !1283
  %22 = load ptr, ptr %right.i, align 8, !dbg !1283
  %cmp.not.i35 = icmp eq ptr %22, null, !dbg !1284
  br i1 %cmp.not.i35, label %while.cond4.i, label %while.cond.i, !dbg !1285

while.cond.i:                                     ; preds = %if.end8, %while.cond.i
  %node.addr.0.i = phi ptr [ %23, %while.cond.i ], [ %22, %if.end8 ], !dbg !1286
    #dbg_value(ptr %node.addr.0.i, !1235, !DIExpression(), !1281)
  %left.i = getelementptr inbounds i8, ptr %node.addr.0.i, i64 24, !dbg !1287
  %23 = load ptr, ptr %left.i, align 8, !dbg !1287
  %cmp2.not.i = icmp eq ptr %23, null, !dbg !1288
  br i1 %cmp2.not.i, label %do.cond, label %while.cond.i, !dbg !1289, !llvm.loop !1290

while.cond4.i:                                    ; preds = %if.end8, %land.rhs.i
  %node.addr.1.i = phi ptr [ %24, %land.rhs.i ], [ %srcstream.060, %if.end8 ]
    #dbg_value(ptr %node.addr.1.i, !1235, !DIExpression(), !1281)
  %parent.i = getelementptr inbounds i8, ptr %node.addr.1.i, i64 16, !dbg !1292
  %24 = load ptr, ptr %parent.i, align 8, !dbg !1292
  %cmp5.not.i = icmp eq ptr %24, null, !dbg !1293
  br i1 %cmp5.not.i, label %cleanup14, label %land.rhs.i, !dbg !1294

land.rhs.i:                                       ; preds = %while.cond4.i
  %right7.i = getelementptr inbounds i8, ptr %24, i64 32, !dbg !1295
  %25 = load ptr, ptr %right7.i, align 8, !dbg !1295
  %cmp8.i = icmp eq ptr %25, %node.addr.1.i, !dbg !1296
  br i1 %cmp8.i, label %while.cond4.i, label %do.cond, !dbg !1297, !llvm.loop !1298

do.cond:                                          ; preds = %while.cond.i, %land.rhs.i
  %srcstream.1 = phi ptr [ %24, %land.rhs.i ], [ %node.addr.0.i, %while.cond.i ], !dbg !1119
    #dbg_value(ptr %srcstream.1, !1116, !DIExpression(), !1119)
    #dbg_value(ptr %srcstream.1, !1146, !DIExpression(), !1156)
    #dbg_value(ptr %allocator, !1151, !DIExpression(), !1156)
  %record_count.i = getelementptr inbounds i8, ptr %srcstream.1, i64 88, !dbg !1158
  %26 = load i64, ptr %record_count.i, align 8, !dbg !1158
  %cmp.i = icmp ugt i64 %26, 1152921504606846971, !dbg !1160
  br i1 %cmp.i, label %if.then.i32, label %if.end.i, !dbg !1161

cleanup14:                                        ; preds = %while.cond4.i, %entry, %cleanup.thread
  %retval.3 = phi ptr [ null, %cleanup.thread ], [ null, %entry ], [ %call.i, %while.cond4.i ], !dbg !1119
  ret ptr %retval.3, !dbg !1300
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @lzma_index_iter_init(ptr nocapture noundef writeonly %iter, ptr noundef %i) local_unnamed_addr #4 !dbg !1301 {
entry:
    #dbg_value(ptr %iter, !1358, !DIExpression(), !1360)
    #dbg_value(ptr %i, !1359, !DIExpression(), !1360)
  %internal = getelementptr inbounds i8, ptr %iter, i64 256, !dbg !1361
  store ptr %i, ptr %internal, align 8, !dbg !1362
    #dbg_value(ptr %iter, !1363, !DIExpression(), !1368)
  %arrayidx.i = getelementptr inbounds i8, ptr %iter, i64 264, !dbg !1370
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %arrayidx.i, i8 0, i64 32, i1 false), !dbg !1371
  ret void, !dbg !1372
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @lzma_index_iter_rewind(ptr nocapture noundef writeonly %iter) local_unnamed_addr #4 !dbg !1364 {
entry:
    #dbg_value(ptr %iter, !1363, !DIExpression(), !1373)
  %arrayidx = getelementptr inbounds i8, ptr %iter, i64 264, !dbg !1374
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %arrayidx, i8 0, i64 32, i1 false), !dbg !1375
  ret void, !dbg !1376
}

; Function Attrs: nounwind uwtable
define dso_local zeroext range(i8 0, 2) i8 @lzma_index_iter_next(ptr nocapture noundef %iter, i32 noundef %mode) local_unnamed_addr #0 !dbg !1377 {
entry:
    #dbg_value(ptr %iter, !1382, !DIExpression(), !1389)
    #dbg_value(i32 %mode, !1383, !DIExpression(), !1389)
  %cmp = icmp ugt i32 %mode, 3, !dbg !1390
  br i1 %cmp, label %return, label %if.end, !dbg !1392

if.end:                                           ; preds = %entry
  %internal = getelementptr inbounds i8, ptr %iter, i64 256, !dbg !1393
  %0 = load ptr, ptr %internal, align 8, !dbg !1394
    #dbg_value(ptr %0, !1384, !DIExpression(), !1389)
  %arrayidx2 = getelementptr inbounds i8, ptr %iter, i64 264, !dbg !1395
  %1 = load ptr, ptr %arrayidx2, align 8, !dbg !1396
    #dbg_value(ptr %1, !1385, !DIExpression(), !1389)
    #dbg_value(ptr null, !1386, !DIExpression(), !1389)
  %arrayidx4 = getelementptr inbounds i8, ptr %iter, i64 280, !dbg !1397
  %2 = load i64, ptr %arrayidx4, align 8, !dbg !1398
    #dbg_value(i64 %2, !1387, !DIExpression(), !1389)
  %cmp5.not = icmp eq i32 %mode, 1, !dbg !1399
  br i1 %cmp5.not, label %if.end15, label %if.then6, !dbg !1401

if.then6:                                         ; preds = %if.end
  %arrayidx8 = getelementptr inbounds i8, ptr %iter, i64 288, !dbg !1402
  %3 = load i64, ptr %arrayidx8, align 8, !dbg !1404
  switch i64 %3, label %if.end15 [
    i64 0, label %sw.bb
    i64 1, label %sw.bb11
    i64 2, label %sw.bb14
  ], !dbg !1405

sw.bb:                                            ; preds = %if.then6
  %arrayidx10 = getelementptr inbounds i8, ptr %iter, i64 272, !dbg !1406
    #dbg_value(ptr %9, !1386, !DIExpression(), !1389)
  br label %if.end15.sink.split, !dbg !1408

sw.bb11:                                          ; preds = %if.then6
  %arrayidx13 = getelementptr inbounds i8, ptr %iter, i64 272, !dbg !1409
  %4 = load ptr, ptr %arrayidx13, align 8, !dbg !1410
    #dbg_value(ptr %4, !1235, !DIExpression(), !1411)
  %right.i = getelementptr inbounds i8, ptr %4, i64 32, !dbg !1413
  %5 = load ptr, ptr %right.i, align 8, !dbg !1413
  %cmp.not.i = icmp eq ptr %5, null, !dbg !1414
  br i1 %cmp.not.i, label %while.cond4.i, label %while.cond.i, !dbg !1415

while.cond.i:                                     ; preds = %sw.bb11, %while.cond.i
  %node.addr.0.i = phi ptr [ %6, %while.cond.i ], [ %5, %sw.bb11 ], !dbg !1416
    #dbg_value(ptr %node.addr.0.i, !1235, !DIExpression(), !1411)
  %left.i = getelementptr inbounds i8, ptr %node.addr.0.i, i64 24, !dbg !1417
  %6 = load ptr, ptr %left.i, align 8, !dbg !1417
  %cmp2.not.i = icmp eq ptr %6, null, !dbg !1418
  br i1 %cmp2.not.i, label %if.end15, label %while.cond.i, !dbg !1419, !llvm.loop !1420

while.cond4.i:                                    ; preds = %sw.bb11, %land.rhs.i
  %node.addr.1.i = phi ptr [ %7, %land.rhs.i ], [ %4, %sw.bb11 ]
    #dbg_value(ptr %node.addr.1.i, !1235, !DIExpression(), !1411)
  %parent.i = getelementptr inbounds i8, ptr %node.addr.1.i, i64 16, !dbg !1422
  %7 = load ptr, ptr %parent.i, align 8, !dbg !1422
  %cmp5.not.i = icmp eq ptr %7, null, !dbg !1423
  br i1 %cmp5.not.i, label %if.end15, label %land.rhs.i, !dbg !1424

land.rhs.i:                                       ; preds = %while.cond4.i
  %right7.i = getelementptr inbounds i8, ptr %7, i64 32, !dbg !1425
  %8 = load ptr, ptr %right7.i, align 8, !dbg !1425
  %cmp8.i = icmp eq ptr %8, %node.addr.1.i, !dbg !1426
  br i1 %cmp8.i, label %while.cond4.i, label %if.end15, !dbg !1427, !llvm.loop !1428

sw.bb14:                                          ; preds = %if.then6
  %leftmost = getelementptr inbounds i8, ptr %1, i64 64, !dbg !1430
    #dbg_value(ptr %9, !1386, !DIExpression(), !1389)
  br label %if.end15.sink.split, !dbg !1431

if.end15.sink.split:                              ; preds = %sw.bb14, %sw.bb
  %arrayidx10.sink = phi ptr [ %arrayidx10, %sw.bb ], [ %leftmost, %sw.bb14 ]
  %9 = load ptr, ptr %arrayidx10.sink, align 8, !dbg !1432
  br label %if.end15

if.end15:                                         ; preds = %while.cond.i, %land.rhs.i, %while.cond4.i, %if.end15.sink.split, %if.then6, %if.end
  %group.0 = phi ptr [ null, %if.then6 ], [ null, %if.end ], [ %9, %if.end15.sink.split ], [ null, %while.cond4.i ], [ %7, %land.rhs.i ], [ %node.addr.0.i, %while.cond.i ], !dbg !1389
    #dbg_value(ptr %group.0, !1386, !DIExpression(), !1389)
  %cmp47 = icmp ugt i32 %mode, 1
  %leftmost18 = getelementptr inbounds i8, ptr %0, i64 8
  %cmp56 = icmp eq i32 %mode, 3
  br label %again, !dbg !1433

again:                                            ; preds = %again.backedge, %if.end15
  %stream.0 = phi ptr [ %1, %if.end15 ], [ %stream.4, %again.backedge ], !dbg !1389
  %group.1 = phi ptr [ %group.0, %if.end15 ], [ %group.3, %again.backedge ], !dbg !1389
  %record.0 = phi i64 [ %2, %if.end15 ], [ %record.1, %again.backedge ], !dbg !1389
    #dbg_value(i64 %record.0, !1387, !DIExpression(), !1389)
    #dbg_value(ptr %group.1, !1386, !DIExpression(), !1389)
    #dbg_value(ptr %stream.0, !1385, !DIExpression(), !1389)
    #dbg_label(!1388, !1434)
  %cmp16 = icmp eq ptr %stream.0, null, !dbg !1435
  br i1 %cmp16, label %if.then17, label %if.else, !dbg !1437

if.then17:                                        ; preds = %again
  %10 = load ptr, ptr %leftmost18, align 8, !dbg !1438
    #dbg_value(ptr %10, !1385, !DIExpression(), !1389)
  %leftmost22184 = getelementptr inbounds i8, ptr %10, i64 64
  %11 = load ptr, ptr %leftmost22184, align 8, !dbg !1440
  br i1 %cmp47, label %while.cond.preheader, label %if.end76, !dbg !1441

while.cond.preheader:                             ; preds = %if.then17
    #dbg_value(ptr %10, !1385, !DIExpression(), !1389)
  %cmp23185 = icmp eq ptr %11, null, !dbg !1442
  br i1 %cmp23185, label %while.body, label %if.end55, !dbg !1445

while.body:                                       ; preds = %while.cond.preheader, %index_tree_next.exit137
  %stream.1186 = phi ptr [ %retval.0.i129, %index_tree_next.exit137 ], [ %10, %while.cond.preheader ]
    #dbg_value(ptr %stream.1186, !1385, !DIExpression(), !1389)
    #dbg_value(ptr %stream.1186, !1235, !DIExpression(), !1446)
  %right.i123 = getelementptr inbounds i8, ptr %stream.1186, i64 32, !dbg !1449
  %12 = load ptr, ptr %right.i123, align 8, !dbg !1449
  %cmp.not.i124 = icmp eq ptr %12, null, !dbg !1450
  br i1 %cmp.not.i124, label %while.cond4.i130, label %while.cond.i125, !dbg !1451

while.cond.i125:                                  ; preds = %while.body, %while.cond.i125
  %node.addr.0.i126 = phi ptr [ %13, %while.cond.i125 ], [ %12, %while.body ], !dbg !1452
    #dbg_value(ptr %node.addr.0.i126, !1235, !DIExpression(), !1446)
  %left.i127 = getelementptr inbounds i8, ptr %node.addr.0.i126, i64 24, !dbg !1453
  %13 = load ptr, ptr %left.i127, align 8, !dbg !1453
  %cmp2.not.i128 = icmp eq ptr %13, null, !dbg !1454
  br i1 %cmp2.not.i128, label %index_tree_next.exit137, label %while.cond.i125, !dbg !1455, !llvm.loop !1456

while.cond4.i130:                                 ; preds = %while.body, %land.rhs.i134
  %node.addr.1.i131 = phi ptr [ %14, %land.rhs.i134 ], [ %stream.1186, %while.body ]
    #dbg_value(ptr %node.addr.1.i131, !1235, !DIExpression(), !1446)
  %parent.i132 = getelementptr inbounds i8, ptr %node.addr.1.i131, i64 16, !dbg !1458
  %14 = load ptr, ptr %parent.i132, align 8, !dbg !1458
  %cmp5.not.i133 = icmp eq ptr %14, null, !dbg !1459
  br i1 %cmp5.not.i133, label %return, label %land.rhs.i134, !dbg !1460

land.rhs.i134:                                    ; preds = %while.cond4.i130
  %right7.i135 = getelementptr inbounds i8, ptr %14, i64 32, !dbg !1461
  %15 = load ptr, ptr %right7.i135, align 8, !dbg !1461
  %cmp8.i136 = icmp eq ptr %15, %node.addr.1.i131, !dbg !1462
  br i1 %cmp8.i136, label %while.cond4.i130, label %index_tree_next.exit137, !dbg !1463, !llvm.loop !1464

index_tree_next.exit137:                          ; preds = %while.cond.i125, %land.rhs.i134
  %retval.0.i129 = phi ptr [ %14, %land.rhs.i134 ], [ %node.addr.0.i126, %while.cond.i125 ], !dbg !1446
    #dbg_value(ptr %retval.0.i129, !1385, !DIExpression(), !1389)
  %leftmost22 = getelementptr inbounds i8, ptr %retval.0.i129, i64 64, !dbg !1466
  %16 = load ptr, ptr %leftmost22, align 8, !dbg !1466
  %cmp23 = icmp eq ptr %16, null, !dbg !1442
  br i1 %cmp23, label %while.body, label %if.end55, !dbg !1445, !llvm.loop !1467

if.else:                                          ; preds = %again
  %cmp31.not = icmp eq ptr %group.1, null, !dbg !1469
  br i1 %cmp31.not, label %if.end39, label %land.lhs.true, !dbg !1471

land.lhs.true:                                    ; preds = %if.else
  %last = getelementptr inbounds i8, ptr %group.1, i64 56, !dbg !1472
  %17 = load i64, ptr %last, align 8, !dbg !1472
  %cmp32 = icmp ult i64 %record.0, %17, !dbg !1473
  br i1 %cmp32, label %if.then33, label %if.then36, !dbg !1474

if.then33:                                        ; preds = %land.lhs.true
  %inc = add nuw i64 %record.0, 1, !dbg !1475
    #dbg_value(i64 %inc, !1387, !DIExpression(), !1389)
  br label %if.end55, !dbg !1477

if.then36:                                        ; preds = %land.lhs.true
    #dbg_value(i64 0, !1387, !DIExpression(), !1389)
    #dbg_value(ptr %group.1, !1235, !DIExpression(), !1478)
  %right.i138 = getelementptr inbounds i8, ptr %group.1, i64 32, !dbg !1482
  %18 = load ptr, ptr %right.i138, align 8, !dbg !1482
  %cmp.not.i139 = icmp eq ptr %18, null, !dbg !1483
  br i1 %cmp.not.i139, label %while.cond4.i145, label %while.cond.i140, !dbg !1484

while.cond.i140:                                  ; preds = %if.then36, %while.cond.i140
  %node.addr.0.i141 = phi ptr [ %19, %while.cond.i140 ], [ %18, %if.then36 ], !dbg !1485
    #dbg_value(ptr %node.addr.0.i141, !1235, !DIExpression(), !1478)
  %left.i142 = getelementptr inbounds i8, ptr %node.addr.0.i141, i64 24, !dbg !1486
  %19 = load ptr, ptr %left.i142, align 8, !dbg !1486
  %cmp2.not.i143 = icmp eq ptr %19, null, !dbg !1487
  br i1 %cmp2.not.i143, label %if.end55, label %while.cond.i140, !dbg !1488, !llvm.loop !1489

while.cond4.i145:                                 ; preds = %if.then36, %land.rhs.i149
  %node.addr.1.i146 = phi ptr [ %20, %land.rhs.i149 ], [ %group.1, %if.then36 ]
    #dbg_value(ptr %node.addr.1.i146, !1235, !DIExpression(), !1478)
  %parent.i147 = getelementptr inbounds i8, ptr %node.addr.1.i146, i64 16, !dbg !1491
  %20 = load ptr, ptr %parent.i147, align 8, !dbg !1491
  %cmp5.not.i148 = icmp eq ptr %20, null, !dbg !1492
  br i1 %cmp5.not.i148, label %if.end39, label %land.rhs.i149, !dbg !1493

land.rhs.i149:                                    ; preds = %while.cond4.i145
  %right7.i150 = getelementptr inbounds i8, ptr %20, i64 32, !dbg !1494
  %21 = load ptr, ptr %right7.i150, align 8, !dbg !1494
  %cmp8.i151 = icmp eq ptr %21, %node.addr.1.i146, !dbg !1495
  br i1 %cmp8.i151, label %while.cond4.i145, label %if.end55, !dbg !1496, !llvm.loop !1497

if.end39:                                         ; preds = %while.cond4.i145, %if.else
    #dbg_value(ptr null, !1386, !DIExpression(), !1389)
  br i1 %cmp47, label %do.body.us, label %if.end39.split

do.body.us:                                       ; preds = %if.end39, %do.cond.us
  %stream.3.us = phi ptr [ %retval.0.i159.ph.us, %do.cond.us ], [ %stream.0, %if.end39 ], !dbg !1389
    #dbg_value(ptr %stream.3.us, !1385, !DIExpression(), !1389)
    #dbg_value(ptr %stream.3.us, !1235, !DIExpression(), !1499)
  %right.i153.us = getelementptr inbounds i8, ptr %stream.3.us, i64 32, !dbg !1504
  %22 = load ptr, ptr %right.i153.us, align 8, !dbg !1504
  %cmp.not.i154.us = icmp eq ptr %22, null, !dbg !1505
  br i1 %cmp.not.i154.us, label %while.cond4.i160.us, label %while.cond.i155.us, !dbg !1506

while.cond.i155.us:                               ; preds = %do.body.us, %while.cond.i155.us
  %node.addr.0.i156.us = phi ptr [ %23, %while.cond.i155.us ], [ %22, %do.body.us ], !dbg !1507
    #dbg_value(ptr %node.addr.0.i156.us, !1235, !DIExpression(), !1499)
  %left.i157.us = getelementptr inbounds i8, ptr %node.addr.0.i156.us, i64 24, !dbg !1508
  %23 = load ptr, ptr %left.i157.us, align 8, !dbg !1508
  %cmp2.not.i158.us = icmp eq ptr %23, null, !dbg !1509
  br i1 %cmp2.not.i158.us, label %do.cond.us, label %while.cond.i155.us, !dbg !1510, !llvm.loop !1511

while.cond4.i160.us:                              ; preds = %do.body.us, %land.rhs.i164.us
  %node.addr.1.i161.us = phi ptr [ %24, %land.rhs.i164.us ], [ %stream.3.us, %do.body.us ]
    #dbg_value(ptr %node.addr.1.i161.us, !1235, !DIExpression(), !1499)
  %parent.i162.us = getelementptr inbounds i8, ptr %node.addr.1.i161.us, i64 16, !dbg !1513
  %24 = load ptr, ptr %parent.i162.us, align 8, !dbg !1513
  %cmp5.not.i163.us = icmp eq ptr %24, null, !dbg !1514
  br i1 %cmp5.not.i163.us, label %return, label %land.rhs.i164.us, !dbg !1515

land.rhs.i164.us:                                 ; preds = %while.cond4.i160.us
  %right7.i165.us = getelementptr inbounds i8, ptr %24, i64 32, !dbg !1516
  %25 = load ptr, ptr %right7.i165.us, align 8, !dbg !1516
  %cmp8.i166.us = icmp eq ptr %25, %node.addr.1.i161.us, !dbg !1517
  br i1 %cmp8.i166.us, label %while.cond4.i160.us, label %do.cond.us, !dbg !1518, !llvm.loop !1519

do.cond.us:                                       ; preds = %while.cond.i155.us, %land.rhs.i164.us
  %retval.0.i159.ph.us = phi ptr [ %24, %land.rhs.i164.us ], [ %node.addr.0.i156.us, %while.cond.i155.us ]
    #dbg_value(ptr %retval.0.i159.ph.us, !1385, !DIExpression(), !1389)
  %leftmost49.us = getelementptr inbounds i8, ptr %retval.0.i159.ph.us, i64 64, !dbg !1521
  %26 = load ptr, ptr %leftmost49.us, align 8, !dbg !1521
  %cmp50.us = icmp eq ptr %26, null, !dbg !1522
  br i1 %cmp50.us, label %do.body.us, label %do.end, !dbg !1523, !llvm.loop !1524

if.end39.split:                                   ; preds = %if.end39
    #dbg_value(ptr %stream.0, !1385, !DIExpression(), !1389)
    #dbg_value(ptr %stream.0, !1235, !DIExpression(), !1499)
  %right.i153 = getelementptr inbounds i8, ptr %stream.0, i64 32, !dbg !1504
  %27 = load ptr, ptr %right.i153, align 8, !dbg !1504
  %cmp.not.i154 = icmp eq ptr %27, null, !dbg !1505
  br i1 %cmp.not.i154, label %while.cond4.i160, label %while.cond.i155, !dbg !1506

while.cond.i155:                                  ; preds = %if.end39.split, %while.cond.i155
  %node.addr.0.i156 = phi ptr [ %28, %while.cond.i155 ], [ %27, %if.end39.split ], !dbg !1507
    #dbg_value(ptr %node.addr.0.i156, !1235, !DIExpression(), !1499)
  %left.i157 = getelementptr inbounds i8, ptr %node.addr.0.i156, i64 24, !dbg !1508
  %28 = load ptr, ptr %left.i157, align 8, !dbg !1508
  %cmp2.not.i158 = icmp eq ptr %28, null, !dbg !1509
  br i1 %cmp2.not.i158, label %do.end, label %while.cond.i155, !dbg !1510, !llvm.loop !1511

while.cond4.i160:                                 ; preds = %if.end39.split, %land.rhs.i164
  %node.addr.1.i161 = phi ptr [ %29, %land.rhs.i164 ], [ %stream.0, %if.end39.split ]
    #dbg_value(ptr %node.addr.1.i161, !1235, !DIExpression(), !1499)
  %parent.i162 = getelementptr inbounds i8, ptr %node.addr.1.i161, i64 16, !dbg !1513
  %29 = load ptr, ptr %parent.i162, align 8, !dbg !1513
  %cmp5.not.i163 = icmp eq ptr %29, null, !dbg !1514
  br i1 %cmp5.not.i163, label %return, label %land.rhs.i164, !dbg !1515

land.rhs.i164:                                    ; preds = %while.cond4.i160
  %right7.i165 = getelementptr inbounds i8, ptr %29, i64 32, !dbg !1516
  %30 = load ptr, ptr %right7.i165, align 8, !dbg !1516
  %cmp8.i166 = icmp eq ptr %30, %node.addr.1.i161, !dbg !1517
  br i1 %cmp8.i166, label %while.cond4.i160, label %do.end, !dbg !1518, !llvm.loop !1519

do.end:                                           ; preds = %while.cond.i155, %land.rhs.i164, %do.cond.us
  %.us-phi = phi ptr [ %retval.0.i159.ph.us, %do.cond.us ], [ %29, %land.rhs.i164 ], [ %node.addr.0.i156, %while.cond.i155 ], !dbg !1527
  %leftmost52 = getelementptr inbounds i8, ptr %.us-phi, i64 64, !dbg !1527
  %31 = load ptr, ptr %leftmost52, align 8, !dbg !1527
    #dbg_value(ptr %31, !1386, !DIExpression(), !1389)
  br label %if.end55, !dbg !1528

if.end55:                                         ; preds = %while.cond.i140, %land.rhs.i149, %index_tree_next.exit137, %while.cond.preheader, %if.then33, %do.end
  %stream.4 = phi ptr [ %stream.0, %if.then33 ], [ %.us-phi, %do.end ], [ %10, %while.cond.preheader ], [ %retval.0.i129, %index_tree_next.exit137 ], [ %stream.0, %land.rhs.i149 ], [ %stream.0, %while.cond.i140 ], !dbg !1389
  %group.3 = phi ptr [ %group.1, %if.then33 ], [ %31, %do.end ], [ %11, %while.cond.preheader ], [ %16, %index_tree_next.exit137 ], [ %20, %land.rhs.i149 ], [ %node.addr.0.i141, %while.cond.i140 ], !dbg !1389
  %record.1 = phi i64 [ %inc, %if.then33 ], [ 0, %do.end ], [ 0, %while.cond.preheader ], [ 0, %index_tree_next.exit137 ], [ 0, %land.rhs.i149 ], [ 0, %while.cond.i140 ], !dbg !1529
    #dbg_value(i64 %record.1, !1387, !DIExpression(), !1389)
    #dbg_value(ptr %group.3, !1386, !DIExpression(), !1389)
    #dbg_value(ptr %stream.4, !1385, !DIExpression(), !1389)
  br i1 %cmp56, label %if.then57, label %if.end76, !dbg !1530

if.then57:                                        ; preds = %if.end55
  %cmp58 = icmp eq i64 %record.1, 0, !dbg !1531
  br i1 %cmp58, label %if.then59, label %if.else65, !dbg !1535

if.then59:                                        ; preds = %if.then57
  %32 = load i64, ptr %group.3, align 8, !dbg !1536
  %records = getelementptr inbounds i8, ptr %group.3, i64 64, !dbg !1539
  %33 = load i64, ptr %records, align 8, !dbg !1540
  %cmp62 = icmp eq i64 %32, %33, !dbg !1541
  br i1 %cmp62, label %again.backedge, label %if.end76, !dbg !1542

again.backedge:                                   ; preds = %if.then59, %if.else65
  br label %again, !dbg !1435

if.else65:                                        ; preds = %if.then57
  %records66 = getelementptr inbounds i8, ptr %group.3, i64 64, !dbg !1543
  %sub = add i64 %record.1, -1, !dbg !1545
  %arrayidx67 = getelementptr inbounds [0 x %struct.index_record], ptr %records66, i64 0, i64 %sub, !dbg !1546
  %34 = load i64, ptr %arrayidx67, align 8, !dbg !1547
  %arrayidx70 = getelementptr inbounds [0 x %struct.index_record], ptr %records66, i64 0, i64 %record.1, !dbg !1548
  %35 = load i64, ptr %arrayidx70, align 8, !dbg !1549
  %cmp72 = icmp eq i64 %34, %35, !dbg !1550
  br i1 %cmp72, label %again.backedge, label %if.end76, !dbg !1551

if.end76:                                         ; preds = %if.then59, %if.else65, %if.end55, %if.then17
  %group.3203 = phi ptr [ %11, %if.then17 ], [ %group.3, %if.end55 ], [ %group.3, %if.else65 ], [ %group.3, %if.then59 ]
  %stream.4202 = phi ptr [ %10, %if.then17 ], [ %stream.4, %if.end55 ], [ %stream.4, %if.else65 ], [ %stream.4, %if.then59 ]
  %record.1.lcssa = phi i64 [ 0, %if.then17 ], [ %record.1, %if.end55 ], [ %record.1, %if.else65 ], [ 0, %if.then59 ], !dbg !1529
  store ptr %stream.4202, ptr %arrayidx2, align 8, !dbg !1552
  %arrayidx80 = getelementptr inbounds i8, ptr %iter, i64 272, !dbg !1553
  store ptr %group.3203, ptr %arrayidx80, align 8, !dbg !1554
  store i64 %record.1.lcssa, ptr %arrayidx4, align 8, !dbg !1555
  tail call fastcc void @iter_set_info(ptr noundef %iter), !dbg !1556
  br label %return, !dbg !1557

return:                                           ; preds = %while.cond4.i160, %while.cond4.i160.us, %while.cond4.i130, %if.end76, %entry
  %retval.1 = phi i8 [ 1, %entry ], [ 0, %if.end76 ], [ 1, %while.cond4.i130 ], [ 1, %while.cond4.i160.us ], [ 1, %while.cond4.i160 ], !dbg !1389
  ret i8 %retval.1, !dbg !1558
}

; Function Attrs: nounwind uwtable
define internal fastcc void @iter_set_info(ptr nocapture noundef %iter) unnamed_addr #0 !dbg !1559 {
entry:
    #dbg_value(ptr %iter, !1561, !DIExpression(), !1569)
    #dbg_value(ptr poison, !1562, !DIExpression(), !1569)
  %arrayidx2 = getelementptr inbounds i8, ptr %iter, i64 264, !dbg !1570
  %0 = load ptr, ptr %arrayidx2, align 8, !dbg !1571
    #dbg_value(ptr %0, !1563, !DIExpression(), !1569)
  %arrayidx4 = getelementptr inbounds i8, ptr %iter, i64 272, !dbg !1572
  %1 = load ptr, ptr %arrayidx4, align 8, !dbg !1573
    #dbg_value(ptr %1, !1564, !DIExpression(), !1569)
  %arrayidx6 = getelementptr inbounds i8, ptr %iter, i64 280, !dbg !1574
  %2 = load i64, ptr %arrayidx6, align 8, !dbg !1575
    #dbg_value(i64 %2, !1565, !DIExpression(), !1569)
  %cmp = icmp eq ptr %1, null, !dbg !1576
  br i1 %cmp, label %if.then, label %if.else, !dbg !1578

if.then:                                          ; preds = %entry
  %arrayidx8 = getelementptr inbounds i8, ptr %iter, i64 288, !dbg !1579
  store i64 2, ptr %arrayidx8, align 8, !dbg !1581
  br label %if.end32, !dbg !1582

if.else:                                          ; preds = %entry
  %internal = getelementptr inbounds i8, ptr %iter, i64 256, !dbg !1583
  %3 = load ptr, ptr %internal, align 8, !dbg !1584
    #dbg_value(ptr %3, !1562, !DIExpression(), !1569)
  %rightmost = getelementptr inbounds i8, ptr %3, i64 16, !dbg !1585
  %4 = load ptr, ptr %rightmost, align 8, !dbg !1585
  %cmp9.not = icmp eq ptr %4, %0, !dbg !1587
  br i1 %cmp9.not, label %lor.lhs.false, label %if.then13, !dbg !1588

lor.lhs.false:                                    ; preds = %if.else
  %rightmost10 = getelementptr inbounds i8, ptr %0, i64 72, !dbg !1589
  %5 = load ptr, ptr %rightmost10, align 8, !dbg !1589
  %cmp12.not = icmp eq ptr %5, %1, !dbg !1590
  br i1 %cmp12.not, label %if.else16, label %if.then13, !dbg !1591

if.then13:                                        ; preds = %lor.lhs.false, %if.else
  %arrayidx15 = getelementptr inbounds i8, ptr %iter, i64 288, !dbg !1592
  store i64 0, ptr %arrayidx15, align 8, !dbg !1594
  br label %if.end32, !dbg !1595

if.else16:                                        ; preds = %lor.lhs.false
  %leftmost = getelementptr inbounds i8, ptr %0, i64 64, !dbg !1596
  %6 = load ptr, ptr %leftmost, align 8, !dbg !1596
  %cmp19.not = icmp eq ptr %6, %1, !dbg !1598
  %arrayidx28 = getelementptr inbounds i8, ptr %iter, i64 288, !dbg !1599
  br i1 %cmp19.not, label %if.else26, label %if.then20, !dbg !1600

if.then20:                                        ; preds = %if.else16
  store i64 1, ptr %arrayidx28, align 8, !dbg !1601
  %parent = getelementptr inbounds i8, ptr %1, i64 16, !dbg !1603
  %7 = load ptr, ptr %parent, align 8, !dbg !1603
  store ptr %7, ptr %arrayidx4, align 8, !dbg !1604
  br label %if.end32, !dbg !1605

if.else26:                                        ; preds = %if.else16
  store i64 2, ptr %arrayidx28, align 8, !dbg !1606
  store ptr null, ptr %arrayidx4, align 8, !dbg !1608
  br label %if.end32

if.end32:                                         ; preds = %if.then13, %if.else26, %if.then20, %if.then
  %number = getelementptr inbounds i8, ptr %0, i64 40, !dbg !1609
  %8 = load i32, ptr %number, align 8, !dbg !1609
  %conv = zext i32 %8 to i64, !dbg !1610
  %number34 = getelementptr inbounds i8, ptr %iter, i64 32, !dbg !1611
  store i64 %conv, ptr %number34, align 8, !dbg !1612
  %record_count = getelementptr inbounds i8, ptr %0, i64 88, !dbg !1613
  %9 = load i64, ptr %record_count, align 8, !dbg !1613
  %block_count = getelementptr inbounds i8, ptr %iter, i64 40, !dbg !1614
  store i64 %9, ptr %block_count, align 8, !dbg !1615
  %compressed_base = getelementptr inbounds i8, ptr %0, i64 8, !dbg !1616
  %10 = load i64, ptr %compressed_base, align 8, !dbg !1616
  %compressed_offset = getelementptr inbounds i8, ptr %iter, i64 48, !dbg !1617
  store i64 %10, ptr %compressed_offset, align 8, !dbg !1618
  %11 = load i64, ptr %0, align 8, !dbg !1619
  %uncompressed_offset = getelementptr inbounds i8, ptr %iter, i64 56, !dbg !1620
  store i64 %11, ptr %uncompressed_offset, align 8, !dbg !1621
  %stream_flags = getelementptr inbounds i8, ptr %0, i64 104, !dbg !1622
  %12 = load i32, ptr %stream_flags, align 8, !dbg !1623
  %cmp40 = icmp eq i32 %12, -1, !dbg !1624
  %cond = select i1 %cmp40, ptr null, ptr %stream_flags, !dbg !1625
  store ptr %cond, ptr %iter, align 8, !dbg !1626
  %stream_padding = getelementptr inbounds i8, ptr %0, i64 160, !dbg !1627
  %13 = load i64, ptr %stream_padding, align 8, !dbg !1627
  %padding = getelementptr inbounds i8, ptr %iter, i64 80, !dbg !1628
  store i64 %13, ptr %padding, align 8, !dbg !1629
  %rightmost46 = getelementptr inbounds i8, ptr %0, i64 72, !dbg !1630
  %14 = load ptr, ptr %rightmost46, align 8, !dbg !1630
  %cmp47 = icmp eq ptr %14, null, !dbg !1631
  br i1 %cmp47, label %if.then49, label %if.else52, !dbg !1632

if.then49:                                        ; preds = %if.end32
    #dbg_value(i64 0, !476, !DIExpression(), !1633)
    #dbg_value(i64 0, !482, !DIExpression(), !1633)
    #dbg_value(i64 0, !485, !DIExpression(), !1636)
    #dbg_value(i64 0, !488, !DIExpression(), !1636)
  %call.i.i = tail call i32 @lzma_vli_size(i64 noundef 0) #12, !dbg !1638
  %add.i.i = add i32 %call.i.i, 1, !dbg !1639
  %conv.i.i = zext i32 %add.i.i to i64, !dbg !1640
    #dbg_value(i64 poison, !494, !DIExpression(), !1641)
  %add.i2.i = add nuw nsw i64 %conv.i.i, 7, !dbg !1643
  %and.i.i = and i64 %add.i2.i, 8589934588, !dbg !1644
  %add = add nuw nsw i64 %and.i.i, 24, !dbg !1645
  %compressed_size = getelementptr inbounds i8, ptr %iter, i64 64, !dbg !1646
  store i64 %add, ptr %compressed_size, align 8, !dbg !1647
  br label %if.end68, !dbg !1648

if.else52:                                        ; preds = %if.end32
    #dbg_value(ptr %14, !1566, !DIExpression(), !1649)
  %15 = load i64, ptr %record_count, align 8, !dbg !1650
  %index_list_size = getelementptr inbounds i8, ptr %0, i64 96, !dbg !1651
  %16 = load i64, ptr %index_list_size, align 8, !dbg !1651
    #dbg_value(i64 %15, !476, !DIExpression(), !1652)
    #dbg_value(i64 %16, !482, !DIExpression(), !1652)
    #dbg_value(i64 %15, !485, !DIExpression(), !1654)
    #dbg_value(i64 %16, !488, !DIExpression(), !1654)
  %call.i.i213 = tail call i32 @lzma_vli_size(i64 noundef %15) #12, !dbg !1656
  %add.i.i214 = add i32 %call.i.i213, 1, !dbg !1657
  %conv.i.i215 = zext i32 %add.i.i214 to i64, !dbg !1658
    #dbg_value(i64 poison, !494, !DIExpression(), !1659)
  %add2.i.i = add i64 %16, 7, !dbg !1661
  %add.i2.i216 = add i64 %add2.i.i, %conv.i.i215, !dbg !1662
  %and.i.i217 = and i64 %add.i2.i216, -4, !dbg !1663
  %add57 = add i64 %and.i.i217, 24, !dbg !1664
  %records = getelementptr inbounds i8, ptr %14, i64 64, !dbg !1665
  %last = getelementptr inbounds i8, ptr %14, i64 56, !dbg !1666
  %17 = load i64, ptr %last, align 8, !dbg !1666
  %unpadded_sum = getelementptr inbounds [0 x %struct.index_record], ptr %records, i64 0, i64 %17, i32 1, !dbg !1667
  %18 = load i64, ptr %unpadded_sum, align 8, !dbg !1667
    #dbg_value(i64 %18, !494, !DIExpression(), !1668)
  %add.i = add i64 %18, 3, !dbg !1670
  %and.i = and i64 %add.i, -4, !dbg !1671
  %add60 = add i64 %add57, %and.i, !dbg !1672
  %compressed_size62 = getelementptr inbounds i8, ptr %iter, i64 64, !dbg !1673
  store i64 %add60, ptr %compressed_size62, align 8, !dbg !1674
  %19 = load i64, ptr %last, align 8, !dbg !1675
  %arrayidx65 = getelementptr inbounds [0 x %struct.index_record], ptr %records, i64 0, i64 %19, !dbg !1676
  %20 = load i64, ptr %arrayidx65, align 8, !dbg !1677
  br label %if.end68

if.end68:                                         ; preds = %if.else52, %if.then49
  %.sink = phi i64 [ 0, %if.then49 ], [ %20, %if.else52 ], !dbg !1678
  %21 = getelementptr inbounds i8, ptr %iter, i64 72, !dbg !1678
  store i64 %.sink, ptr %21, align 8, !dbg !1678
  br i1 %cmp, label %if.end137, label %if.then71, !dbg !1679

if.then71:                                        ; preds = %if.end68
  %number_base = getelementptr inbounds i8, ptr %1, i64 40, !dbg !1680
  %22 = load i64, ptr %number_base, align 8, !dbg !1680
  %add72 = add i64 %22, %2, !dbg !1683
  %block = getelementptr inbounds i8, ptr %iter, i64 120, !dbg !1684
  %number_in_stream = getelementptr inbounds i8, ptr %iter, i64 144, !dbg !1685
  store i64 %add72, ptr %number_in_stream, align 8, !dbg !1686
  %block_number_base = getelementptr inbounds i8, ptr %0, i64 48, !dbg !1687
  %23 = load i64, ptr %block_number_base, align 8, !dbg !1687
  %add75 = add i64 %23, %add72, !dbg !1688
  store i64 %add75, ptr %block, align 8, !dbg !1689
  %cmp77 = icmp eq i64 %2, 0, !dbg !1690
  br i1 %cmp77, label %cond.true79, label %cond.false82, !dbg !1691

cond.true79:                                      ; preds = %if.then71
  %compressed_base81 = getelementptr inbounds i8, ptr %1, i64 8, !dbg !1692
  %24 = load i64, ptr %compressed_base81, align 8, !dbg !1692
  br label %cond.end87, !dbg !1691

cond.false82:                                     ; preds = %if.then71
  %records83 = getelementptr inbounds i8, ptr %1, i64 64, !dbg !1693
  %sub = add i64 %2, -1, !dbg !1694
  %unpadded_sum85 = getelementptr inbounds [0 x %struct.index_record], ptr %records83, i64 0, i64 %sub, i32 1, !dbg !1695
  %25 = load i64, ptr %unpadded_sum85, align 8, !dbg !1695
    #dbg_value(i64 %25, !494, !DIExpression(), !1696)
  %add.i218 = add i64 %25, 3, !dbg !1698
  %and.i219 = and i64 %add.i218, -4, !dbg !1699
  br label %cond.end87, !dbg !1691

cond.end87:                                       ; preds = %cond.false82, %cond.true79
  %sub97.pre-phi = phi i64 [ %sub, %cond.false82 ], [ -1, %cond.true79 ], !dbg !1700
  %cond88 = phi i64 [ %and.i219, %cond.false82 ], [ %24, %cond.true79 ], !dbg !1691
  %compressed_stream_offset = getelementptr inbounds i8, ptr %iter, i64 152, !dbg !1701
  store i64 %cond88, ptr %compressed_stream_offset, align 8, !dbg !1702
  %records96 = getelementptr inbounds i8, ptr %1, i64 64, !dbg !1700
  %arrayidx98 = getelementptr inbounds [0 x %struct.index_record], ptr %records96, i64 0, i64 %sub97.pre-phi, !dbg !1700
  %cond101.in = select i1 %cmp77, ptr %1, ptr %arrayidx98, !dbg !1700
  %cond101 = load i64, ptr %cond101.in, align 8, !dbg !1700
  %uncompressed_stream_offset = getelementptr inbounds i8, ptr %iter, i64 160, !dbg !1703
  store i64 %cond101, ptr %uncompressed_stream_offset, align 8, !dbg !1704
  %arrayidx104 = getelementptr inbounds [0 x %struct.index_record], ptr %records96, i64 0, i64 %2, !dbg !1705
  %26 = load i64, ptr %arrayidx104, align 8, !dbg !1706
  %sub108 = sub i64 %26, %cond101, !dbg !1707
  %uncompressed_size110 = getelementptr inbounds i8, ptr %iter, i64 168, !dbg !1708
  store i64 %sub108, ptr %uncompressed_size110, align 8, !dbg !1709
  %unpadded_sum113 = getelementptr inbounds i8, ptr %arrayidx104, i64 8, !dbg !1710
  %27 = load i64, ptr %unpadded_sum113, align 8, !dbg !1710
  %sub116 = sub i64 %27, %cond88, !dbg !1711
  %unpadded_size = getelementptr inbounds i8, ptr %iter, i64 176, !dbg !1712
  store i64 %sub116, ptr %unpadded_size, align 8, !dbg !1713
    #dbg_value(i64 %sub116, !494, !DIExpression(), !1714)
  %add.i220 = add i64 %sub116, 3, !dbg !1716
  %and.i221 = and i64 %add.i220, -4, !dbg !1717
  %total_size = getelementptr inbounds i8, ptr %iter, i64 184, !dbg !1718
  store i64 %and.i221, ptr %total_size, align 8, !dbg !1719
  %add124 = add i64 %cond88, 12, !dbg !1720
  store i64 %add124, ptr %compressed_stream_offset, align 8, !dbg !1720
  %28 = load i64, ptr %compressed_offset, align 8, !dbg !1721
  %add129 = add i64 %28, %add124, !dbg !1722
  %compressed_file_offset = getelementptr inbounds i8, ptr %iter, i64 128, !dbg !1723
  store i64 %add129, ptr %compressed_file_offset, align 8, !dbg !1724
  %29 = load i64, ptr %uncompressed_offset, align 8, !dbg !1725
  %add135 = add i64 %29, %cond101, !dbg !1726
  %uncompressed_file_offset = getelementptr inbounds i8, ptr %iter, i64 136, !dbg !1727
  store i64 %add135, ptr %uncompressed_file_offset, align 8, !dbg !1728
  br label %if.end137, !dbg !1729

if.end137:                                        ; preds = %cond.end87, %if.end68
  ret void, !dbg !1730
}

; Function Attrs: nounwind uwtable
define dso_local zeroext range(i8 0, 2) i8 @lzma_index_iter_locate(ptr nocapture noundef %iter, i64 noundef %target) local_unnamed_addr #0 !dbg !1731 {
entry:
    #dbg_value(ptr %iter, !1735, !DIExpression(), !1744)
    #dbg_value(i64 %target, !1736, !DIExpression(), !1744)
  %internal = getelementptr inbounds i8, ptr %iter, i64 256, !dbg !1745
  %0 = load ptr, ptr %internal, align 8, !dbg !1746
    #dbg_value(ptr %0, !1737, !DIExpression(), !1744)
  %uncompressed_size = getelementptr inbounds i8, ptr %0, i64 32, !dbg !1747
  %1 = load i64, ptr %uncompressed_size, align 8, !dbg !1747
  %cmp.not = icmp ugt i64 %1, %target, !dbg !1749
  br i1 %cmp.not, label %if.end, label %cleanup, !dbg !1750

if.end:                                           ; preds = %entry
    #dbg_value(ptr %0, !1751, !DIExpression(), !1761)
    #dbg_value(i64 %target, !1758, !DIExpression(), !1761)
    #dbg_value(ptr null, !1759, !DIExpression(), !1761)
    #dbg_value(ptr poison, !1760, !DIExpression(), !1761)
  %node.06.i = load ptr, ptr %0, align 8, !dbg !1761
  %cmp.not7.i = icmp eq ptr %node.06.i, null, !dbg !1763
  br i1 %cmp.not7.i, label %index_tree_locate.exit, label %while.body.i, !dbg !1764

while.body.i:                                     ; preds = %if.end, %while.body.i
  %node.09.i = phi ptr [ %node.0.i, %while.body.i ], [ %node.06.i, %if.end ]
  %result.08.i = phi ptr [ %result.1.i, %while.body.i ], [ null, %if.end ]
    #dbg_value(ptr %result.08.i, !1759, !DIExpression(), !1761)
  %2 = load i64, ptr %node.09.i, align 8, !dbg !1765
  %cmp1.i = icmp ugt i64 %2, %target, !dbg !1768
  %result.1.i = select i1 %cmp1.i, ptr %result.08.i, ptr %node.09.i, !dbg !1769
  %node.1.in.v.i = select i1 %cmp1.i, i64 24, i64 32, !dbg !1769
  %node.1.in.i = getelementptr inbounds i8, ptr %node.09.i, i64 %node.1.in.v.i, !dbg !1769
    #dbg_value(ptr poison, !1760, !DIExpression(), !1761)
    #dbg_value(ptr %result.1.i, !1759, !DIExpression(), !1761)
  %node.0.i = load ptr, ptr %node.1.in.i, align 8, !dbg !1761
    #dbg_value(ptr %node.0.i, !1760, !DIExpression(), !1761)
  %cmp.not.i = icmp eq ptr %node.0.i, null, !dbg !1763
  br i1 %cmp.not.i, label %index_tree_locate.exit, label %while.body.i, !dbg !1764, !llvm.loop !1770

index_tree_locate.exit:                           ; preds = %while.body.i, %if.end
  %result.0.lcssa.i = phi ptr [ null, %if.end ], [ %result.1.i, %while.body.i ], !dbg !1772
    #dbg_value(ptr %result.0.lcssa.i, !1738, !DIExpression(), !1744)
  %3 = load i64, ptr %result.0.lcssa.i, align 8, !dbg !1773
  %sub = sub i64 %target, %3, !dbg !1774
    #dbg_value(i64 %sub, !1736, !DIExpression(), !1744)
  %groups = getelementptr inbounds i8, ptr %result.0.lcssa.i, i64 56, !dbg !1775
    #dbg_value(ptr %groups, !1751, !DIExpression(), !1776)
    #dbg_value(i64 %sub, !1758, !DIExpression(), !1776)
    #dbg_value(ptr null, !1759, !DIExpression(), !1776)
    #dbg_value(ptr poison, !1760, !DIExpression(), !1776)
  %node.06.i35 = load ptr, ptr %groups, align 8, !dbg !1776
  %cmp.not7.i36 = icmp eq ptr %node.06.i35, null, !dbg !1778
  br i1 %cmp.not7.i36, label %index_tree_locate.exit47, label %while.body.i37, !dbg !1779

while.body.i37:                                   ; preds = %index_tree_locate.exit, %while.body.i37
  %node.09.i38 = phi ptr [ %node.0.i44, %while.body.i37 ], [ %node.06.i35, %index_tree_locate.exit ]
  %result.08.i39 = phi ptr [ %result.1.i41, %while.body.i37 ], [ null, %index_tree_locate.exit ]
    #dbg_value(ptr %result.08.i39, !1759, !DIExpression(), !1776)
  %4 = load i64, ptr %node.09.i38, align 8, !dbg !1780
  %cmp1.i40 = icmp ugt i64 %4, %sub, !dbg !1781
  %result.1.i41 = select i1 %cmp1.i40, ptr %result.08.i39, ptr %node.09.i38, !dbg !1782
  %node.1.in.v.i42 = select i1 %cmp1.i40, i64 24, i64 32, !dbg !1782
  %node.1.in.i43 = getelementptr inbounds i8, ptr %node.09.i38, i64 %node.1.in.v.i42, !dbg !1782
    #dbg_value(ptr poison, !1760, !DIExpression(), !1776)
    #dbg_value(ptr %result.1.i41, !1759, !DIExpression(), !1776)
  %node.0.i44 = load ptr, ptr %node.1.in.i43, align 8, !dbg !1776
    #dbg_value(ptr %node.0.i44, !1760, !DIExpression(), !1776)
  %cmp.not.i45 = icmp eq ptr %node.0.i44, null, !dbg !1778
  br i1 %cmp.not.i45, label %index_tree_locate.exit47, label %while.body.i37, !dbg !1779, !llvm.loop !1783

index_tree_locate.exit47:                         ; preds = %while.body.i37, %index_tree_locate.exit
  %result.0.lcssa.i46 = phi ptr [ null, %index_tree_locate.exit ], [ %result.1.i41, %while.body.i37 ], !dbg !1785
    #dbg_value(ptr %result.0.lcssa.i46, !1739, !DIExpression(), !1744)
    #dbg_value(i64 0, !1740, !DIExpression(), !1744)
  %last = getelementptr inbounds i8, ptr %result.0.lcssa.i46, i64 56, !dbg !1786
  %5 = load i64, ptr %last, align 8, !dbg !1786
    #dbg_value(i64 %5, !1741, !DIExpression(), !1744)
  %cmp248.not = icmp eq i64 %5, 0, !dbg !1787
  br i1 %cmp248.not, label %while.end, label %while.body.lr.ph, !dbg !1788

while.body.lr.ph:                                 ; preds = %index_tree_locate.exit47
  %records = getelementptr inbounds i8, ptr %result.0.lcssa.i46, i64 64
  br label %while.body, !dbg !1788

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %right.050 = phi i64 [ %5, %while.body.lr.ph ], [ %right.1, %while.body ]
  %left.049 = phi i64 [ 0, %while.body.lr.ph ], [ %left.1, %while.body ]
    #dbg_value(i64 %right.050, !1741, !DIExpression(), !1744)
    #dbg_value(i64 %left.049, !1740, !DIExpression(), !1744)
  %sub3 = sub i64 %right.050, %left.049, !dbg !1789
  %div34 = lshr i64 %sub3, 1, !dbg !1790
  %add = add i64 %div34, %left.049, !dbg !1791
    #dbg_value(i64 %add, !1742, !DIExpression(), !1792)
  %arrayidx4 = getelementptr inbounds [0 x %struct.index_record], ptr %records, i64 0, i64 %add, !dbg !1793
  %6 = load i64, ptr %arrayidx4, align 8, !dbg !1795
  %cmp5.not = icmp ugt i64 %6, %sub, !dbg !1796
  %add7 = add i64 %add, 1, !dbg !1797
  %left.1 = select i1 %cmp5.not, i64 %left.049, i64 %add7, !dbg !1797
  %right.1 = select i1 %cmp5.not, i64 %add, i64 %right.050, !dbg !1797
    #dbg_value(i64 %right.1, !1741, !DIExpression(), !1744)
    #dbg_value(i64 %left.1, !1740, !DIExpression(), !1744)
  %cmp2 = icmp ult i64 %left.1, %right.1, !dbg !1787
  br i1 %cmp2, label %while.body, label %while.end, !dbg !1788, !llvm.loop !1798

while.end:                                        ; preds = %while.body, %index_tree_locate.exit47
  %left.0.lcssa = phi i64 [ 0, %index_tree_locate.exit47 ], [ %left.1, %while.body ], !dbg !1744
  %arrayidx10 = getelementptr inbounds i8, ptr %iter, i64 264, !dbg !1800
  store ptr %result.0.lcssa.i, ptr %arrayidx10, align 8, !dbg !1801
  %arrayidx12 = getelementptr inbounds i8, ptr %iter, i64 272, !dbg !1802
  store ptr %result.0.lcssa.i46, ptr %arrayidx12, align 8, !dbg !1803
  %arrayidx14 = getelementptr inbounds i8, ptr %iter, i64 280, !dbg !1804
  store i64 %left.0.lcssa, ptr %arrayidx14, align 8, !dbg !1805
  tail call fastcc void @iter_set_info(ptr noundef %iter), !dbg !1806
  br label %cleanup

cleanup:                                          ; preds = %entry, %while.end
  %retval.0 = phi i8 [ 0, %while.end ], [ 1, %entry ], !dbg !1744
  ret i8 %retval.0, !dbg !1807
}

; Function Attrs: nounwind uwtable
define internal fastcc void @index_tree_node_end(ptr noundef %node, ptr noundef %allocator, ptr noundef %free_func) unnamed_addr #0 !dbg !1808 {
entry:
    #dbg_value(ptr %node, !1812, !DIExpression(), !1815)
    #dbg_value(ptr %allocator, !1813, !DIExpression(), !1815)
    #dbg_value(ptr %free_func, !1814, !DIExpression(), !1815)
  %left = getelementptr inbounds i8, ptr %node, i64 24, !dbg !1816
  %0 = load ptr, ptr %left, align 8, !dbg !1816
  %cmp.not = icmp eq ptr %0, null, !dbg !1818
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1819

if.then:                                          ; preds = %entry
  tail call fastcc void @index_tree_node_end(ptr noundef nonnull %0, ptr noundef %allocator, ptr noundef %free_func), !dbg !1820
  br label %if.end, !dbg !1820

if.end:                                           ; preds = %if.then, %entry
  %right = getelementptr inbounds i8, ptr %node, i64 32, !dbg !1821
  %1 = load ptr, ptr %right, align 8, !dbg !1821
  %cmp2.not = icmp eq ptr %1, null, !dbg !1823
  br i1 %cmp2.not, label %if.end5, label %if.then3, !dbg !1824

if.then3:                                         ; preds = %if.end
  tail call fastcc void @index_tree_node_end(ptr noundef nonnull %1, ptr noundef %allocator, ptr noundef %free_func), !dbg !1825
  br label %if.end5, !dbg !1825

if.end5:                                          ; preds = %if.then3, %if.end
  %cmp6.not = icmp eq ptr %free_func, null, !dbg !1826
  br i1 %cmp6.not, label %if.end8, label %if.then7, !dbg !1828

if.then7:                                         ; preds = %if.end5
  tail call void %free_func(ptr noundef nonnull %node, ptr noundef %allocator) #12, !dbg !1829, !callees !1830
  br label %if.end8, !dbg !1829

if.end8:                                          ; preds = %if.then7, %if.end5
  tail call void @lzma_free(ptr noundef nonnull %node, ptr noundef %allocator) #12, !dbg !1831
  ret void, !dbg !1832
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!135, !136, !137, !138, !139, !140, !141}
!llvm.ident = !{!142}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !48, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "liblzma/common/index.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "a67edd3e4f07ad87d5aa64b659eab087")
!2 = !{!3, !11, !15, !29, !36, !41}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 27, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "liblzma/api/lzma/check.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "b07c3297e2bcc14bb477793d08325ee3")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10}
!7 = !DIEnumerator(name: "LZMA_CHECK_NONE", value: 0)
!8 = !DIEnumerator(name: "LZMA_CHECK_CRC32", value: 1)
!9 = !DIEnumerator(name: "LZMA_CHECK_CRC64", value: 4)
!10 = !DIEnumerator(name: "LZMA_CHECK_SHA256", value: 10)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 44, baseType: !5, size: 32, elements: !13)
!12 = !DIFile(filename: "liblzma/api/lzma/base.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "81a3070447cc5b61b56cfbed076853db")
!13 = !{!14}
!14 = !DIEnumerator(name: "LZMA_RESERVED_ENUM", value: 0)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 57, baseType: !5, size: 32, elements: !16)
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!17 = !DIEnumerator(name: "LZMA_OK", value: 0)
!18 = !DIEnumerator(name: "LZMA_STREAM_END", value: 1)
!19 = !DIEnumerator(name: "LZMA_NO_CHECK", value: 2)
!20 = !DIEnumerator(name: "LZMA_UNSUPPORTED_CHECK", value: 3)
!21 = !DIEnumerator(name: "LZMA_GET_CHECK", value: 4)
!22 = !DIEnumerator(name: "LZMA_MEM_ERROR", value: 5)
!23 = !DIEnumerator(name: "LZMA_MEMLIMIT_ERROR", value: 6)
!24 = !DIEnumerator(name: "LZMA_FORMAT_ERROR", value: 7)
!25 = !DIEnumerator(name: "LZMA_OPTIONS_ERROR", value: 8)
!26 = !DIEnumerator(name: "LZMA_DATA_ERROR", value: 9)
!27 = !DIEnumerator(name: "LZMA_BUF_ERROR", value: 10)
!28 = !DIEnumerator(name: "LZMA_PROG_ERROR", value: 11)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 956, baseType: !5, size: 32, elements: !30)
!30 = !{!31, !32, !33, !34, !35}
!31 = !DIEnumerator(name: "ITER_INDEX", value: 0)
!32 = !DIEnumerator(name: "ITER_STREAM", value: 1)
!33 = !DIEnumerator(name: "ITER_GROUP", value: 2)
!34 = !DIEnumerator(name: "ITER_RECORD", value: 3)
!35 = !DIEnumerator(name: "ITER_METHOD", value: 4)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 966, baseType: !5, size: 32, elements: !37)
!37 = !{!38, !39, !40}
!38 = !DIEnumerator(name: "ITER_METHOD_NORMAL", value: 0)
!39 = !DIEnumerator(name: "ITER_METHOD_NEXT", value: 1)
!40 = !DIEnumerator(name: "ITER_METHOD_LEFTMOST", value: 2)
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !42, line: 226, baseType: !5, size: 32, elements: !43)
!42 = !DIFile(filename: "liblzma/api/lzma/index.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "923fbd07d3b348bf7a676d089b5c066f")
!43 = !{!44, !45, !46, !47}
!44 = !DIEnumerator(name: "LZMA_INDEX_ITER_ANY", value: 0)
!45 = !DIEnumerator(name: "LZMA_INDEX_ITER_STREAM", value: 1)
!46 = !DIEnumerator(name: "LZMA_INDEX_ITER_BLOCK", value: 2)
!47 = !DIEnumerator(name: "LZMA_INDEX_ITER_NONEMPTY_BLOCK", value: 3)
!48 = !{!49, !50, !53, !115, !133, !134, !5}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !51, line: 18, baseType: !52)
!51 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!52 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "index_stream", file: !1, line: 142, baseType: !56)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 107, size: 1344, elements: !57)
!57 = !{!58, !74, !77, !78, !86, !87, !88, !114}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !56, file: !1, line: 109, baseType: !59, size: 320)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "index_tree_node", file: !1, line: 29, baseType: !60)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "index_tree_node_s", file: !1, line: 30, size: 320, elements: !61)
!61 = !{!62, !69, !70, !72, !73}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_base", scope: !60, file: !1, line: 34, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !64, line: 63, baseType: !65)
!64 = !DIFile(filename: "liblzma/api/lzma/vli.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !66, line: 27, baseType: !67)
!66 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !68, line: 45, baseType: !52)
!68 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!69 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_base", scope: !60, file: !1, line: 37, baseType: !63, size: 64, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !60, file: !1, line: 39, baseType: !71, size: 64, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !60, file: !1, line: 40, baseType: !71, size: 64, offset: 192)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !60, file: !1, line: 41, baseType: !71, size: 64, offset: 256)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !56, file: !1, line: 112, baseType: !75, size: 32, offset: 320)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !66, line: 26, baseType: !76)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !68, line: 42, baseType: !5)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "block_number_base", scope: !56, file: !1, line: 115, baseType: !63, size: 64, offset: 384)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !56, file: !1, line: 122, baseType: !79, size: 256, offset: 448)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "index_tree", file: !1, line: 62, baseType: !80)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 46, size: 256, elements: !81)
!81 = !{!82, !83, !84, !85}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !80, file: !1, line: 48, baseType: !71, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "leftmost", scope: !80, file: !1, line: 53, baseType: !71, size: 64, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "rightmost", scope: !80, file: !1, line: 57, baseType: !71, size: 64, offset: 128)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !80, file: !1, line: 60, baseType: !75, size: 32, offset: 192)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "record_count", scope: !56, file: !1, line: 125, baseType: !63, size: 64, offset: 704)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "index_list_size", scope: !56, file: !1, line: 130, baseType: !63, size: 64, offset: 768)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "stream_flags", scope: !56, file: !1, line: 136, baseType: !89, size: 448, offset: 832)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_stream_flags", file: !90, line: 105, baseType: !91)
!90 = !DIFile(filename: "liblzma/api/lzma/stream_flags.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "d3814c86a389337e759db33a259f1072")
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !90, line: 33, size: 448, elements: !92)
!92 = !{!93, !94, !95, !97, !99, !100, !101, !102, !105, !106, !107, !108, !109, !110, !111, !112, !113}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !91, file: !90, line: 51, baseType: !75, size: 32)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "backward_size", scope: !91, file: !90, line: 69, baseType: !63, size: 64, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !91, file: !90, line: 79, baseType: !96, size: 32, offset: 128)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !4, line: 55, baseType: !3)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !91, file: !90, line: 90, baseType: !98, size: 32, offset: 160)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !12, line: 46, baseType: !11)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !91, file: !90, line: 91, baseType: !98, size: 32, offset: 192)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !91, file: !90, line: 92, baseType: !98, size: 32, offset: 224)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !91, file: !90, line: 93, baseType: !98, size: 32, offset: 256)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool1", scope: !91, file: !90, line: 94, baseType: !103, size: 8, offset: 288)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_bool", file: !12, line: 29, baseType: !104)
!104 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool2", scope: !91, file: !90, line: 95, baseType: !103, size: 8, offset: 296)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool3", scope: !91, file: !90, line: 96, baseType: !103, size: 8, offset: 304)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool4", scope: !91, file: !90, line: 97, baseType: !103, size: 8, offset: 312)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool5", scope: !91, file: !90, line: 98, baseType: !103, size: 8, offset: 320)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool6", scope: !91, file: !90, line: 99, baseType: !103, size: 8, offset: 328)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool7", scope: !91, file: !90, line: 100, baseType: !103, size: 8, offset: 336)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool8", scope: !91, file: !90, line: 101, baseType: !103, size: 8, offset: 344)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !91, file: !90, line: 102, baseType: !75, size: 32, offset: 352)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !91, file: !90, line: 103, baseType: !75, size: 32, offset: 384)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "stream_padding", scope: !56, file: !1, line: 140, baseType: !63, size: 64, offset: 1280)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "index_group", file: !1, line: 104, baseType: !118)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 71, size: 512, elements: !119)
!119 = !{!120, !121, !122, !123, !124}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !118, file: !1, line: 73, baseType: !59, size: 320)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "number_base", scope: !118, file: !1, line: 76, baseType: !63, size: 64, offset: 320)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !118, file: !1, line: 79, baseType: !50, size: 64, offset: 384)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !118, file: !1, line: 82, baseType: !50, size: 64, offset: 448)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "records", scope: !118, file: !1, line: 102, baseType: !125, offset: 512)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, elements: !131)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "index_record", file: !1, line: 68, baseType: !127)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 65, size: 128, elements: !128)
!128 = !{!129, !130}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_sum", scope: !127, file: !1, line: 66, baseType: !63, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "unpadded_sum", scope: !127, file: !1, line: 67, baseType: !63, size: 64, offset: 64)
!131 = !{!132}
!132 = !DISubrange(count: -1)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!135 = !{i32 7, !"Dwarf Version", i32 5}
!136 = !{i32 2, !"Debug Info Version", i32 3}
!137 = !{i32 1, !"wchar_size", i32 4}
!138 = !{i32 8, !"PIC Level", i32 2}
!139 = !{i32 7, !"PIE Level", i32 2}
!140 = !{i32 7, !"uwtable", i32 2}
!141 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!142 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!143 = distinct !DISubprogram(name: "lzma_index_init", scope: !1, file: !1, line: 398, type: !144, scopeLine: 399, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !170)
!144 = !DISubroutineType(types: !145)
!145 = !{!146, !157}
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_index", file: !42, line: 37, baseType: !148)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_index_s", file: !1, line: 145, size: 640, elements: !149)
!149 = !{!150, !151, !152, !153, !154, !155, !156}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !148, file: !1, line: 149, baseType: !79, size: 256)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_size", scope: !148, file: !1, line: 152, baseType: !63, size: 64, offset: 256)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "total_size", scope: !148, file: !1, line: 155, baseType: !63, size: 64, offset: 320)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "record_count", scope: !148, file: !1, line: 158, baseType: !63, size: 64, offset: 384)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "index_list_size", scope: !148, file: !1, line: 166, baseType: !63, size: 64, offset: 448)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !148, file: !1, line: 171, baseType: !50, size: 64, offset: 512)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "checks", scope: !148, file: !1, line: 177, baseType: !75, size: 32, offset: 576)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !12, line: 403, baseType: !159)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 341, size: 192, elements: !160)
!160 = !{!161, !165, !169}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !159, file: !12, line: 376, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DISubroutineType(types: !164)
!164 = !{!49, !49, !50, !50}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !159, file: !12, line: 390, baseType: !166, size: 64, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DISubroutineType(types: !168)
!168 = !{null, !49, !49}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !159, file: !12, line: 401, baseType: !49, size: 64, offset: 128)
!170 = !{!171, !172, !173}
!171 = !DILocalVariable(name: "allocator", arg: 1, scope: !143, file: !1, line: 398, type: !157)
!172 = !DILocalVariable(name: "i", scope: !143, file: !1, line: 400, type: !146)
!173 = !DILocalVariable(name: "s", scope: !143, file: !1, line: 404, type: !133)
!174 = !DILocation(line: 0, scope: !143)
!175 = !DILocalVariable(name: "allocator", arg: 1, scope: !176, file: !1, line: 380, type: !157)
!176 = distinct !DISubprogram(name: "index_init_plain", scope: !1, file: !1, line: 380, type: !144, scopeLine: 381, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !177)
!177 = !{!175, !178}
!178 = !DILocalVariable(name: "i", scope: !176, file: !1, line: 382, type: !146)
!179 = !DILocation(line: 0, scope: !176, inlinedAt: !180)
!180 = distinct !DILocation(line: 400, column: 18, scope: !143)
!181 = !DILocation(line: 382, column: 18, scope: !176, inlinedAt: !180)
!182 = !DILocation(line: 383, column: 8, scope: !183, inlinedAt: !180)
!183 = distinct !DILexicalBlock(scope: !176, file: !1, line: 383, column: 6)
!184 = !DILocation(line: 383, column: 6, scope: !176, inlinedAt: !180)
!185 = !DILocalVariable(name: "tree", arg: 1, scope: !186, file: !1, line: 182, type: !189)
!186 = distinct !DISubprogram(name: "index_tree_init", scope: !1, file: !1, line: 182, type: !187, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !190)
!187 = !DISubroutineType(types: !188)
!188 = !{null, !189}
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!190 = !{!185}
!191 = !DILocation(line: 0, scope: !186, inlinedAt: !192)
!192 = distinct !DILocation(line: 384, column: 3, scope: !193, inlinedAt: !180)
!193 = distinct !DILexicalBlock(scope: !183, file: !1, line: 383, column: 17)
!194 = !DILocation(line: 185, column: 17, scope: !186, inlinedAt: !192)
!195 = !DILocation(line: 385, column: 6, scope: !193, inlinedAt: !180)
!196 = !DILocation(line: 389, column: 6, scope: !193, inlinedAt: !180)
!197 = !DILocation(line: 385, column: 24, scope: !193, inlinedAt: !180)
!198 = !DILocation(line: 389, column: 15, scope: !193, inlinedAt: !180)
!199 = !DILocation(line: 390, column: 6, scope: !193, inlinedAt: !180)
!200 = !DILocation(line: 390, column: 13, scope: !193, inlinedAt: !180)
!201 = !DILocalVariable(name: "compressed_base", arg: 1, scope: !202, file: !1, line: 341, type: !63)
!202 = distinct !DISubprogram(name: "index_stream_init", scope: !1, file: !1, line: 341, type: !203, scopeLine: 344, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !205)
!203 = !DISubroutineType(types: !204)
!204 = !{!133, !63, !63, !63, !63, !157}
!205 = !{!201, !206, !207, !208, !209, !210}
!206 = !DILocalVariable(name: "uncompressed_base", arg: 2, scope: !202, file: !1, line: 341, type: !63)
!207 = !DILocalVariable(name: "stream_number", arg: 3, scope: !202, file: !1, line: 342, type: !63)
!208 = !DILocalVariable(name: "block_number_base", arg: 4, scope: !202, file: !1, line: 342, type: !63)
!209 = !DILocalVariable(name: "allocator", arg: 5, scope: !202, file: !1, line: 343, type: !157)
!210 = !DILocalVariable(name: "s", scope: !202, file: !1, line: 345, type: !133)
!211 = !DILocation(line: 0, scope: !202, inlinedAt: !212)
!212 = distinct !DILocation(line: 404, column: 20, scope: !143)
!213 = !DILocation(line: 345, column: 20, scope: !202, inlinedAt: !212)
!214 = !DILocation(line: 346, column: 8, scope: !215, inlinedAt: !212)
!215 = distinct !DILexicalBlock(scope: !202, file: !1, line: 346, column: 6)
!216 = !DILocation(line: 346, column: 6, scope: !202, inlinedAt: !212)
!217 = !DILocation(line: 406, column: 3, scope: !218)
!218 = distinct !DILexicalBlock(scope: !219, file: !1, line: 405, column: 17)
!219 = distinct !DILexicalBlock(scope: !143, file: !1, line: 405, column: 6)
!220 = !DILocation(line: 407, column: 3, scope: !218)
!221 = !DILocation(line: 355, column: 5, scope: !202, inlinedAt: !212)
!222 = !DILocation(line: 350, column: 26, scope: !202, inlinedAt: !212)
!223 = !DILocation(line: 355, column: 12, scope: !202, inlinedAt: !212)
!224 = !DILocation(line: 356, column: 5, scope: !202, inlinedAt: !212)
!225 = !DILocation(line: 0, scope: !186, inlinedAt: !226)
!226 = distinct !DILocation(line: 358, column: 2, scope: !202, inlinedAt: !212)
!227 = !DILocation(line: 360, column: 5, scope: !202, inlinedAt: !212)
!228 = !DILocation(line: 362, column: 5, scope: !202, inlinedAt: !212)
!229 = !DILocation(line: 360, column: 18, scope: !202, inlinedAt: !212)
!230 = !DILocation(line: 185, column: 17, scope: !186, inlinedAt: !226)
!231 = !DILocation(line: 362, column: 26, scope: !202, inlinedAt: !212)
!232 = !DILocation(line: 363, column: 5, scope: !202, inlinedAt: !212)
!233 = !DILocation(line: 363, column: 20, scope: !202, inlinedAt: !212)
!234 = !DILocation(line: 410, column: 2, scope: !143)
!235 = !DILocation(line: 412, column: 2, scope: !143)
!236 = !DILocation(line: 413, column: 1, scope: !143)
!237 = !DISubprogram(name: "lzma_free", scope: !238, file: !238, line: 215, type: !239, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!238 = !DIFile(filename: "liblzma/common/common.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!239 = !DISubroutineType(types: !240)
!240 = !{null, !49, !157}
!241 = distinct !DISubprogram(name: "index_tree_append", scope: !1, file: !1, line: 231, type: !242, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !244)
!242 = !DISubroutineType(types: !243)
!243 = !{null, !189, !71}
!244 = !{!245, !246, !247, !248}
!245 = !DILocalVariable(name: "tree", arg: 1, scope: !241, file: !1, line: 231, type: !189)
!246 = !DILocalVariable(name: "node", arg: 2, scope: !241, file: !1, line: 231, type: !71)
!247 = !DILocalVariable(name: "up", scope: !241, file: !1, line: 261, type: !75)
!248 = !DILocalVariable(name: "pivot", scope: !249, file: !1, line: 270, type: !71)
!249 = distinct !DILexicalBlock(scope: !250, file: !1, line: 262, column: 15)
!250 = distinct !DILexicalBlock(scope: !241, file: !1, line: 262, column: 6)
!251 = !DILocation(line: 0, scope: !241)
!252 = !DILocation(line: 233, column: 23, scope: !241)
!253 = !DILocation(line: 233, column: 8, scope: !241)
!254 = !DILocation(line: 233, column: 15, scope: !241)
!255 = !DILocation(line: 234, column: 8, scope: !241)
!256 = !DILocation(line: 237, column: 10, scope: !241)
!257 = !DILocation(line: 235, column: 14, scope: !241)
!258 = !DILocation(line: 237, column: 2, scope: !241)
!259 = !DILocation(line: 240, column: 12, scope: !260)
!260 = distinct !DILexicalBlock(scope: !241, file: !1, line: 240, column: 6)
!261 = !DILocation(line: 240, column: 17, scope: !260)
!262 = !DILocation(line: 240, column: 6, scope: !241)
!263 = !DILocation(line: 241, column: 14, scope: !264)
!264 = distinct !DILexicalBlock(scope: !260, file: !1, line: 240, column: 26)
!265 = !DILocation(line: 242, column: 9, scope: !264)
!266 = !DILocation(line: 242, column: 18, scope: !264)
!267 = !DILocation(line: 243, column: 19, scope: !264)
!268 = !DILocation(line: 244, column: 3, scope: !264)
!269 = !DILocation(line: 253, column: 8, scope: !241)
!270 = !DILocation(line: 253, column: 19, scope: !241)
!271 = !DILocation(line: 253, column: 25, scope: !241)
!272 = !DILocation(line: 254, column: 18, scope: !241)
!273 = !DILocation(line: 261, column: 22, scope: !241)
!274 = !DILocalVariable(name: "n", arg: 1, scope: !275, file: !276, line: 364, type: !75)
!275 = distinct !DISubprogram(name: "bsr32", scope: !276, file: !276, line: 364, type: !277, scopeLine: 365, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !279)
!276 = !DIFile(filename: "common/tuklib_integer.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "877bd6a1d04ec1170bc985c87ef412ed")
!277 = !DISubroutineType(types: !278)
!278 = !{!75, !75}
!279 = !{!274, !280}
!280 = !DILocalVariable(name: "i", scope: !275, file: !276, line: 391, type: !75)
!281 = !DILocation(line: 0, scope: !275, inlinedAt: !282)
!282 = distinct !DILocation(line: 261, column: 46, scope: !241)
!283 = !DILocation(line: 393, column: 33, scope: !284, inlinedAt: !282)
!284 = distinct !DILexicalBlock(scope: !275, file: !276, line: 393, column: 6)
!285 = !DILocation(line: 393, column: 6, scope: !275, inlinedAt: !282)
!286 = !DILocation(line: 398, column: 33, scope: !287, inlinedAt: !282)
!287 = distinct !DILexicalBlock(scope: !275, file: !276, line: 398, column: 6)
!288 = !DILocation(line: 398, column: 6, scope: !275, inlinedAt: !282)
!289 = !DILocation(line: 403, column: 33, scope: !290, inlinedAt: !282)
!290 = distinct !DILexicalBlock(scope: !275, file: !276, line: 403, column: 6)
!291 = !DILocation(line: 403, column: 6, scope: !275, inlinedAt: !282)
!292 = !DILocation(line: 408, column: 33, scope: !293, inlinedAt: !282)
!293 = distinct !DILexicalBlock(scope: !275, file: !276, line: 408, column: 6)
!294 = !DILocation(line: 408, column: 6, scope: !275, inlinedAt: !282)
!295 = !DILocation(line: 413, column: 6, scope: !275, inlinedAt: !282)
!296 = !DILocation(line: 261, column: 43, scope: !241)
!297 = !DILocation(line: 262, column: 9, scope: !250)
!298 = !DILocation(line: 262, column: 6, scope: !241)
!299 = !DILocalVariable(name: "n", arg: 1, scope: !300, file: !276, line: 475, type: !75)
!300 = distinct !DISubprogram(name: "ctz32", scope: !276, file: !276, line: 475, type: !277, scopeLine: 476, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !301)
!301 = !{!299, !302}
!302 = !DILocalVariable(name: "i", scope: !300, file: !276, line: 495, type: !75)
!303 = !DILocation(line: 0, scope: !300, inlinedAt: !304)
!304 = distinct !DILocation(line: 264, column: 8, scope: !249)
!305 = !DILocation(line: 497, column: 9, scope: !306, inlinedAt: !304)
!306 = distinct !DILexicalBlock(scope: !300, file: !276, line: 497, column: 6)
!307 = !DILocation(line: 497, column: 33, scope: !306, inlinedAt: !304)
!308 = !DILocation(line: 497, column: 6, scope: !300, inlinedAt: !304)
!309 = !DILocation(line: 502, column: 9, scope: !310, inlinedAt: !304)
!310 = distinct !DILexicalBlock(scope: !300, file: !276, line: 502, column: 6)
!311 = !DILocation(line: 502, column: 33, scope: !310, inlinedAt: !304)
!312 = !DILocation(line: 502, column: 6, scope: !300, inlinedAt: !304)
!313 = !DILocation(line: 507, column: 9, scope: !314, inlinedAt: !304)
!314 = distinct !DILexicalBlock(scope: !300, file: !276, line: 507, column: 6)
!315 = !DILocation(line: 507, column: 33, scope: !314, inlinedAt: !304)
!316 = !DILocation(line: 507, column: 6, scope: !300, inlinedAt: !304)
!317 = !DILocation(line: 512, column: 9, scope: !318, inlinedAt: !304)
!318 = distinct !DILexicalBlock(scope: !300, file: !276, line: 512, column: 6)
!319 = !DILocation(line: 512, column: 33, scope: !318, inlinedAt: !304)
!320 = !DILocation(line: 512, column: 6, scope: !300, inlinedAt: !304)
!321 = !DILocation(line: 517, column: 9, scope: !322, inlinedAt: !304)
!322 = distinct !DILexicalBlock(scope: !300, file: !276, line: 517, column: 6)
!323 = !DILocation(line: 517, column: 6, scope: !300, inlinedAt: !304)
!324 = !DILocation(line: 264, column: 27, scope: !249)
!325 = !DILocation(line: 265, column: 3, scope: !249)
!326 = !DILocation(line: 0, scope: !249)
!327 = !DILocation(line: 266, column: 17, scope: !328)
!328 = distinct !DILexicalBlock(scope: !249, file: !1, line: 265, column: 6)
!329 = !DILocation(line: 267, column: 12, scope: !249)
!330 = !DILocation(line: 267, column: 3, scope: !328)
!331 = distinct !{!331, !332}
!332 = !{!"llvm.loop.unroll.disable"}
!333 = !DILocation(line: 267, column: 17, scope: !249)
!334 = distinct !{!334, !325, !335}
!335 = !DILocation(line: 267, column: 20, scope: !249)
!336 = !DILocation(line: 270, column: 34, scope: !249)
!337 = !DILocation(line: 272, column: 13, scope: !338)
!338 = distinct !DILexicalBlock(scope: !249, file: !1, line: 272, column: 7)
!339 = !DILocation(line: 272, column: 20, scope: !338)
!340 = !DILocation(line: 272, column: 7, scope: !249)
!341 = !DILocation(line: 0, scope: !338)
!342 = !DILocation(line: 279, column: 25, scope: !249)
!343 = !DILocation(line: 279, column: 10, scope: !249)
!344 = !DILocation(line: 279, column: 17, scope: !249)
!345 = !DILocation(line: 281, column: 24, scope: !249)
!346 = !DILocation(line: 281, column: 15, scope: !249)
!347 = !DILocation(line: 282, column: 19, scope: !348)
!348 = distinct !DILexicalBlock(scope: !249, file: !1, line: 282, column: 7)
!349 = !DILocation(line: 282, column: 7, scope: !249)
!350 = !DILocation(line: 283, column: 17, scope: !348)
!351 = !DILocation(line: 283, column: 24, scope: !348)
!352 = !DILocation(line: 283, column: 4, scope: !348)
!353 = !DILocation(line: 285, column: 15, scope: !249)
!354 = !DILocation(line: 286, column: 16, scope: !249)
!355 = !DILocation(line: 287, column: 2, scope: !249)
!356 = !DILocation(line: 290, column: 1, scope: !241)
!357 = distinct !DISubprogram(name: "lzma_index_end", scope: !1, file: !1, line: 417, type: !358, scopeLine: 418, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !360)
!358 = !DISubroutineType(types: !359)
!359 = !{null, !146, !157}
!360 = !{!361, !362}
!361 = !DILocalVariable(name: "i", arg: 1, scope: !357, file: !1, line: 417, type: !146)
!362 = !DILocalVariable(name: "allocator", arg: 2, scope: !357, file: !1, line: 417, type: !157)
!363 = !DILocation(line: 0, scope: !357)
!364 = !DILocation(line: 421, column: 8, scope: !365)
!365 = distinct !DILexicalBlock(scope: !357, file: !1, line: 421, column: 6)
!366 = !DILocation(line: 421, column: 6, scope: !357)
!367 = !DILocation(line: 422, column: 3, scope: !368)
!368 = distinct !DILexicalBlock(scope: !365, file: !1, line: 421, column: 17)
!369 = !DILocalVariable(name: "tree", arg: 1, scope: !370, file: !1, line: 218, type: !189)
!370 = distinct !DISubprogram(name: "index_tree_end", scope: !1, file: !1, line: 218, type: !371, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !374)
!371 = !DISubroutineType(types: !372)
!372 = !{null, !189, !157, !373}
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!374 = !{!369, !375, !376}
!375 = !DILocalVariable(name: "allocator", arg: 2, scope: !370, file: !1, line: 218, type: !157)
!376 = !DILocalVariable(name: "free_func", arg: 3, scope: !370, file: !1, line: 219, type: !373)
!377 = !DILocation(line: 0, scope: !370, inlinedAt: !378)
!378 = distinct !DILocation(line: 422, column: 3, scope: !368)
!379 = !DILocation(line: 221, column: 17, scope: !380, inlinedAt: !378)
!380 = distinct !DILexicalBlock(scope: !370, file: !1, line: 221, column: 6)
!381 = !DILocation(line: 221, column: 6, scope: !370, inlinedAt: !378)
!382 = !DILocation(line: 222, column: 3, scope: !380, inlinedAt: !378)
!383 = !DILocation(line: 423, column: 3, scope: !368)
!384 = !DILocation(line: 424, column: 2, scope: !368)
!385 = !DILocation(line: 426, column: 2, scope: !357)
!386 = distinct !DISubprogram(name: "index_stream_end", scope: !1, file: !1, line: 371, type: !239, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !387)
!387 = !{!388, !389, !390}
!388 = !DILocalVariable(name: "node", arg: 1, scope: !386, file: !1, line: 371, type: !49)
!389 = !DILocalVariable(name: "allocator", arg: 2, scope: !386, file: !1, line: 371, type: !157)
!390 = !DILocalVariable(name: "s", scope: !386, file: !1, line: 373, type: !133)
!391 = !DILocation(line: 0, scope: !386)
!392 = !DILocation(line: 374, column: 21, scope: !386)
!393 = !DILocation(line: 374, column: 2, scope: !386)
!394 = !DILocation(line: 0, scope: !370, inlinedAt: !395)
!395 = distinct !DILocation(line: 374, column: 2, scope: !386)
!396 = !DILocation(line: 221, column: 17, scope: !380, inlinedAt: !395)
!397 = !DILocation(line: 221, column: 6, scope: !370, inlinedAt: !395)
!398 = !DILocation(line: 222, column: 3, scope: !380, inlinedAt: !395)
!399 = !DILocation(line: 376, column: 1, scope: !386)
!400 = distinct !DISubprogram(name: "lzma_index_prealloc", scope: !1, file: !1, line: 431, type: !401, scopeLine: 432, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !403)
!401 = !DISubroutineType(types: !402)
!402 = !{null, !146, !63}
!403 = !{!404, !405}
!404 = !DILocalVariable(name: "i", arg: 1, scope: !400, file: !1, line: 431, type: !146)
!405 = !DILocalVariable(name: "records", arg: 2, scope: !400, file: !1, line: 431, type: !63)
!406 = !DILocation(line: 0, scope: !400)
!407 = !DILocation(line: 433, column: 6, scope: !400)
!408 = !DILocation(line: 436, column: 5, scope: !400)
!409 = !DILocation(line: 436, column: 14, scope: !400)
!410 = !DILocation(line: 437, column: 2, scope: !400)
!411 = distinct !DISubprogram(name: "lzma_index_memusage", scope: !1, file: !1, line: 442, type: !412, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !414)
!412 = !DISubroutineType(types: !413)
!413 = !{!65, !63, !63}
!414 = !{!415, !416, !417, !419, !420, !421, !423, !425, !426, !427}
!415 = !DILocalVariable(name: "streams", arg: 1, scope: !411, file: !1, line: 442, type: !63)
!416 = !DILocalVariable(name: "blocks", arg: 2, scope: !411, file: !1, line: 442, type: !63)
!417 = !DILocalVariable(name: "alloc_overhead", scope: !411, file: !1, line: 451, type: !418)
!418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!419 = !DILocalVariable(name: "stream_base", scope: !411, file: !1, line: 456, type: !418)
!420 = !DILocalVariable(name: "group_base", scope: !411, file: !1, line: 460, type: !418)
!421 = !DILocalVariable(name: "groups", scope: !411, file: !1, line: 466, type: !422)
!422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!423 = !DILocalVariable(name: "streams_mem", scope: !411, file: !1, line: 470, type: !424)
!424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!425 = !DILocalVariable(name: "groups_mem", scope: !411, file: !1, line: 471, type: !424)
!426 = !DILocalVariable(name: "index_base", scope: !411, file: !1, line: 474, type: !424)
!427 = !DILocalVariable(name: "limit", scope: !411, file: !1, line: 479, type: !424)
!428 = !DILocation(line: 0, scope: !411)
!429 = !DILocation(line: 467, column: 33, scope: !411)
!430 = !DILocation(line: 467, column: 38, scope: !411)
!431 = !DILocation(line: 470, column: 39, scope: !411)
!432 = !DILocation(line: 471, column: 37, scope: !411)
!433 = !DILocation(line: 480, column: 19, scope: !434)
!434 = distinct !DILexicalBlock(scope: !411, file: !1, line: 480, column: 6)
!435 = !DILocation(line: 487, column: 1, scope: !411)
!436 = distinct !DISubprogram(name: "lzma_index_memused", scope: !1, file: !1, line: 491, type: !437, scopeLine: 492, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !441)
!437 = !DISubroutineType(types: !438)
!438 = !{!65, !439}
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!441 = !{!442}
!442 = !DILocalVariable(name: "i", arg: 1, scope: !436, file: !1, line: 491, type: !439)
!443 = !DILocation(line: 0, scope: !436)
!444 = !DILocation(line: 493, column: 40, scope: !436)
!445 = !DILocation(line: 493, column: 29, scope: !436)
!446 = !DILocation(line: 493, column: 50, scope: !436)
!447 = !DILocation(line: 0, scope: !411, inlinedAt: !448)
!448 = distinct !DILocation(line: 493, column: 9, scope: !436)
!449 = !DILocation(line: 467, column: 33, scope: !411, inlinedAt: !448)
!450 = !DILocation(line: 467, column: 38, scope: !411, inlinedAt: !448)
!451 = !DILocation(line: 470, column: 39, scope: !411, inlinedAt: !448)
!452 = !DILocation(line: 471, column: 37, scope: !411, inlinedAt: !448)
!453 = !DILocation(line: 480, column: 19, scope: !434, inlinedAt: !448)
!454 = !DILocation(line: 493, column: 2, scope: !436)
!455 = distinct !DISubprogram(name: "lzma_index_block_count", scope: !1, file: !1, line: 498, type: !456, scopeLine: 499, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !458)
!456 = !DISubroutineType(types: !457)
!457 = !{!63, !439}
!458 = !{!459}
!459 = !DILocalVariable(name: "i", arg: 1, scope: !455, file: !1, line: 498, type: !439)
!460 = !DILocation(line: 0, scope: !455)
!461 = !DILocation(line: 500, column: 12, scope: !455)
!462 = !DILocation(line: 500, column: 2, scope: !455)
!463 = distinct !DISubprogram(name: "lzma_index_stream_count", scope: !1, file: !1, line: 505, type: !456, scopeLine: 506, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !464)
!464 = !{!465}
!465 = !DILocalVariable(name: "i", arg: 1, scope: !463, file: !1, line: 505, type: !439)
!466 = !DILocation(line: 0, scope: !463)
!467 = !DILocation(line: 507, column: 20, scope: !463)
!468 = !DILocation(line: 507, column: 9, scope: !463)
!469 = !DILocation(line: 507, column: 2, scope: !463)
!470 = distinct !DISubprogram(name: "lzma_index_size", scope: !1, file: !1, line: 512, type: !456, scopeLine: 513, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !471)
!471 = !{!472}
!472 = !DILocalVariable(name: "i", arg: 1, scope: !470, file: !1, line: 512, type: !439)
!473 = !DILocation(line: 0, scope: !470)
!474 = !DILocation(line: 514, column: 23, scope: !470)
!475 = !DILocation(line: 514, column: 40, scope: !470)
!476 = !DILocalVariable(name: "count", arg: 1, scope: !477, file: !478, line: 57, type: !63)
!477 = distinct !DISubprogram(name: "index_size", scope: !478, file: !478, line: 57, type: !479, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !481)
!478 = !DIFile(filename: "liblzma/common/index.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "8c1da33cfb6445c1ed40367774c91b69")
!479 = !DISubroutineType(types: !480)
!480 = !{!63, !63, !63}
!481 = !{!476, !482}
!482 = !DILocalVariable(name: "index_list_size", arg: 2, scope: !477, file: !478, line: 57, type: !63)
!483 = !DILocation(line: 0, scope: !477, inlinedAt: !484)
!484 = distinct !DILocation(line: 514, column: 9, scope: !470)
!485 = !DILocalVariable(name: "count", arg: 1, scope: !486, file: !478, line: 48, type: !63)
!486 = distinct !DISubprogram(name: "index_size_unpadded", scope: !478, file: !478, line: 48, type: !479, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !487)
!487 = !{!485, !488}
!488 = !DILocalVariable(name: "index_list_size", arg: 2, scope: !486, file: !478, line: 48, type: !63)
!489 = !DILocation(line: 0, scope: !486, inlinedAt: !490)
!490 = distinct !DILocation(line: 59, column: 19, scope: !477, inlinedAt: !484)
!491 = !DILocation(line: 51, column: 13, scope: !486, inlinedAt: !490)
!492 = !DILocation(line: 51, column: 11, scope: !486, inlinedAt: !490)
!493 = !DILocation(line: 51, column: 9, scope: !486, inlinedAt: !490)
!494 = !DILocalVariable(name: "vli", arg: 1, scope: !495, file: !478, line: 39, type: !63)
!495 = distinct !DISubprogram(name: "vli_ceil4", scope: !478, file: !478, line: 39, type: !496, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !498)
!496 = !DISubroutineType(types: !497)
!497 = !{!63, !63}
!498 = !{!494}
!499 = !DILocation(line: 0, scope: !495, inlinedAt: !500)
!500 = distinct !DILocation(line: 59, column: 9, scope: !477, inlinedAt: !484)
!501 = !DILocation(line: 51, column: 52, scope: !486, inlinedAt: !490)
!502 = !DILocation(line: 42, column: 14, scope: !495, inlinedAt: !500)
!503 = !DILocation(line: 42, column: 19, scope: !495, inlinedAt: !500)
!504 = !DILocation(line: 514, column: 2, scope: !470)
!505 = distinct !DISubprogram(name: "lzma_index_total_size", scope: !1, file: !1, line: 519, type: !456, scopeLine: 520, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !506)
!506 = !{!507}
!507 = !DILocalVariable(name: "i", arg: 1, scope: !505, file: !1, line: 519, type: !439)
!508 = !DILocation(line: 0, scope: !505)
!509 = !DILocation(line: 521, column: 12, scope: !505)
!510 = !DILocation(line: 521, column: 2, scope: !505)
!511 = distinct !DISubprogram(name: "lzma_index_stream_size", scope: !1, file: !1, line: 526, type: !456, scopeLine: 527, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !512)
!512 = !{!513}
!513 = !DILocalVariable(name: "i", arg: 1, scope: !511, file: !1, line: 526, type: !439)
!514 = !DILocation(line: 0, scope: !511)
!515 = !DILocation(line: 529, column: 38, scope: !511)
!516 = !DILocation(line: 530, column: 20, scope: !511)
!517 = !DILocation(line: 530, column: 37, scope: !511)
!518 = !DILocation(line: 0, scope: !477, inlinedAt: !519)
!519 = distinct !DILocation(line: 530, column: 6, scope: !511)
!520 = !DILocation(line: 0, scope: !486, inlinedAt: !521)
!521 = distinct !DILocation(line: 59, column: 19, scope: !477, inlinedAt: !519)
!522 = !DILocation(line: 51, column: 13, scope: !486, inlinedAt: !521)
!523 = !DILocation(line: 51, column: 11, scope: !486, inlinedAt: !521)
!524 = !DILocation(line: 51, column: 9, scope: !486, inlinedAt: !521)
!525 = !DILocation(line: 0, scope: !495, inlinedAt: !526)
!526 = distinct !DILocation(line: 59, column: 9, scope: !477, inlinedAt: !519)
!527 = !DILocation(line: 51, column: 52, scope: !486, inlinedAt: !521)
!528 = !DILocation(line: 42, column: 14, scope: !495, inlinedAt: !526)
!529 = !DILocation(line: 42, column: 19, scope: !495, inlinedAt: !526)
!530 = !DILocation(line: 530, column: 4, scope: !511)
!531 = !DILocation(line: 531, column: 4, scope: !511)
!532 = !DILocation(line: 529, column: 2, scope: !511)
!533 = distinct !DISubprogram(name: "lzma_index_file_size", scope: !1, file: !1, line: 560, type: !456, scopeLine: 561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !534)
!534 = !{!535, !536, !537}
!535 = !DILocalVariable(name: "i", arg: 1, scope: !533, file: !1, line: 560, type: !439)
!536 = !DILocalVariable(name: "s", scope: !533, file: !1, line: 562, type: !53)
!537 = !DILocalVariable(name: "g", scope: !533, file: !1, line: 563, type: !115)
!538 = !DILocation(line: 0, scope: !533)
!539 = !DILocation(line: 562, column: 60, scope: !533)
!540 = !DILocation(line: 563, column: 57, scope: !533)
!541 = !DILocation(line: 564, column: 33, scope: !533)
!542 = !DILocation(line: 565, column: 6, scope: !533)
!543 = !DILocation(line: 565, column: 4, scope: !533)
!544 = !DILocation(line: 565, column: 23, scope: !533)
!545 = !DILocation(line: 565, column: 34, scope: !533)
!546 = !DILocation(line: 565, column: 40, scope: !533)
!547 = !DILocation(line: 42, column: 14, scope: !495, inlinedAt: !548)
!548 = distinct !DILocation(line: 546, column: 23, scope: !549, inlinedAt: !559)
!549 = distinct !DISubprogram(name: "index_file_size", scope: !1, file: !1, line: 536, type: !550, scopeLine: 539, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !552)
!550 = !DISubroutineType(types: !551)
!551 = !{!63, !63, !63, !63, !63, !63}
!552 = !{!553, !554, !555, !556, !557, !558}
!553 = !DILocalVariable(name: "compressed_base", arg: 1, scope: !549, file: !1, line: 536, type: !63)
!554 = !DILocalVariable(name: "unpadded_sum", arg: 2, scope: !549, file: !1, line: 536, type: !63)
!555 = !DILocalVariable(name: "record_count", arg: 3, scope: !549, file: !1, line: 537, type: !63)
!556 = !DILocalVariable(name: "index_list_size", arg: 4, scope: !549, file: !1, line: 537, type: !63)
!557 = !DILocalVariable(name: "stream_padding", arg: 5, scope: !549, file: !1, line: 538, type: !63)
!558 = !DILocalVariable(name: "file_size", scope: !549, file: !1, line: 545, type: !63)
!559 = distinct !DILocation(line: 564, column: 9, scope: !533)
!560 = !DILocation(line: 42, column: 19, scope: !495, inlinedAt: !548)
!561 = !DILocation(line: 567, column: 7, scope: !533)
!562 = !DILocation(line: 0, scope: !549, inlinedAt: !559)
!563 = !DILocation(line: 545, column: 39, scope: !549, inlinedAt: !559)
!564 = !DILocation(line: 0, scope: !495, inlinedAt: !548)
!565 = !DILocation(line: 546, column: 4, scope: !549, inlinedAt: !559)
!566 = !DILocation(line: 546, column: 21, scope: !549, inlinedAt: !559)
!567 = !DILocation(line: 547, column: 16, scope: !568, inlinedAt: !559)
!568 = distinct !DILexicalBlock(scope: !549, file: !1, line: 547, column: 6)
!569 = !DILocation(line: 547, column: 6, scope: !549, inlinedAt: !559)
!570 = !DILocation(line: 566, column: 24, scope: !533)
!571 = !DILocation(line: 566, column: 7, scope: !533)
!572 = !DILocation(line: 0, scope: !477, inlinedAt: !573)
!573 = distinct !DILocation(line: 551, column: 15, scope: !549, inlinedAt: !559)
!574 = !DILocation(line: 0, scope: !486, inlinedAt: !575)
!575 = distinct !DILocation(line: 59, column: 19, scope: !477, inlinedAt: !573)
!576 = !DILocation(line: 51, column: 13, scope: !486, inlinedAt: !575)
!577 = !DILocation(line: 51, column: 11, scope: !486, inlinedAt: !575)
!578 = !DILocation(line: 51, column: 9, scope: !486, inlinedAt: !575)
!579 = !DILocation(line: 0, scope: !495, inlinedAt: !580)
!580 = distinct !DILocation(line: 59, column: 9, scope: !477, inlinedAt: !573)
!581 = !DILocation(line: 51, column: 52, scope: !486, inlinedAt: !575)
!582 = !DILocation(line: 42, column: 14, scope: !495, inlinedAt: !580)
!583 = !DILocation(line: 42, column: 19, scope: !495, inlinedAt: !580)
!584 = !DILocation(line: 551, column: 12, scope: !549, inlinedAt: !559)
!585 = !DILocation(line: 564, column: 2, scope: !533)
!586 = distinct !DISubprogram(name: "lzma_index_uncompressed_size", scope: !1, file: !1, line: 572, type: !456, scopeLine: 573, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !587)
!587 = !{!588}
!588 = !DILocalVariable(name: "i", arg: 1, scope: !586, file: !1, line: 572, type: !439)
!589 = !DILocation(line: 0, scope: !586)
!590 = !DILocation(line: 574, column: 12, scope: !586)
!591 = !DILocation(line: 574, column: 2, scope: !586)
!592 = distinct !DISubprogram(name: "lzma_index_checks", scope: !1, file: !1, line: 579, type: !593, scopeLine: 580, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !595)
!593 = !DISubroutineType(types: !594)
!594 = !{!75, !439}
!595 = !{!596, !597, !598}
!596 = !DILocalVariable(name: "i", arg: 1, scope: !592, file: !1, line: 579, type: !439)
!597 = !DILocalVariable(name: "checks", scope: !592, file: !1, line: 581, type: !75)
!598 = !DILocalVariable(name: "s", scope: !592, file: !1, line: 584, type: !53)
!599 = !DILocation(line: 0, scope: !592)
!600 = !DILocation(line: 581, column: 23, scope: !592)
!601 = !DILocation(line: 584, column: 60, scope: !592)
!602 = !DILocation(line: 585, column: 9, scope: !603)
!603 = distinct !DILexicalBlock(scope: !592, file: !1, line: 585, column: 6)
!604 = !DILocation(line: 585, column: 22, scope: !603)
!605 = !DILocation(line: 585, column: 30, scope: !603)
!606 = !DILocation(line: 585, column: 6, scope: !592)
!607 = !DILocation(line: 586, column: 44, scope: !603)
!608 = !DILocation(line: 586, column: 25, scope: !603)
!609 = !DILocation(line: 586, column: 10, scope: !603)
!610 = !DILocation(line: 586, column: 3, scope: !603)
!611 = !DILocation(line: 588, column: 2, scope: !592)
!612 = distinct !DISubprogram(name: "lzma_index_padding_size", scope: !1, file: !1, line: 593, type: !593, scopeLine: 594, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !613)
!613 = !{!614}
!614 = !DILocalVariable(name: "i", arg: 1, scope: !612, file: !1, line: 593, type: !439)
!615 = !DILocation(line: 0, scope: !612)
!616 = !DILocation(line: 596, column: 7, scope: !612)
!617 = !DILocation(line: 596, column: 24, scope: !612)
!618 = !DILocation(line: 0, scope: !486, inlinedAt: !619)
!619 = distinct !DILocation(line: 595, column: 26, scope: !612)
!620 = !DILocation(line: 51, column: 13, scope: !486, inlinedAt: !619)
!621 = !DILocation(line: 595, column: 9, scope: !612)
!622 = !DILocation(line: 595, column: 2, scope: !612)
!623 = distinct !DISubprogram(name: "lzma_index_stream_flags", scope: !1, file: !1, line: 601, type: !624, scopeLine: 602, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !629)
!624 = !DISubroutineType(types: !625)
!625 = !{!626, !146, !627}
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !12, line: 237, baseType: !15)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!629 = !{!630, !631, !632, !635}
!630 = !DILocalVariable(name: "i", arg: 1, scope: !623, file: !1, line: 601, type: !146)
!631 = !DILocalVariable(name: "stream_flags", arg: 2, scope: !623, file: !1, line: 601, type: !627)
!632 = !DILocalVariable(name: "ret_", scope: !633, file: !1, line: 607, type: !634)
!633 = distinct !DILexicalBlock(scope: !623, file: !1, line: 607, column: 2)
!634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !626)
!635 = !DILocalVariable(name: "s", scope: !623, file: !1, line: 610, type: !133)
!636 = !DILocation(line: 0, scope: !623)
!637 = !DILocation(line: 603, column: 8, scope: !638)
!638 = distinct !DILexicalBlock(scope: !623, file: !1, line: 603, column: 6)
!639 = !DILocation(line: 603, column: 16, scope: !638)
!640 = !DILocation(line: 607, column: 2, scope: !633)
!641 = !DILocation(line: 0, scope: !633)
!642 = !DILocation(line: 607, column: 2, scope: !643)
!643 = distinct !DILexicalBlock(scope: !633, file: !1, line: 607, column: 2)
!644 = !DILocation(line: 610, column: 48, scope: !623)
!645 = !DILocation(line: 611, column: 5, scope: !623)
!646 = !DILocation(line: 611, column: 20, scope: !623)
!647 = !DILocation(line: 614, column: 1, scope: !623)
!648 = !DISubprogram(name: "lzma_stream_flags_compare", scope: !90, file: !90, line: 221, type: !649, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!649 = !DISubroutineType(types: !650)
!650 = !{!626, !627, !627}
!651 = distinct !DISubprogram(name: "lzma_index_stream_padding", scope: !1, file: !1, line: 618, type: !652, scopeLine: 619, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !654)
!652 = !DISubroutineType(types: !653)
!653 = !{!626, !146, !63}
!654 = !{!655, !656, !657, !658}
!655 = !DILocalVariable(name: "i", arg: 1, scope: !651, file: !1, line: 618, type: !146)
!656 = !DILocalVariable(name: "stream_padding", arg: 2, scope: !651, file: !1, line: 618, type: !63)
!657 = !DILocalVariable(name: "s", scope: !651, file: !1, line: 624, type: !133)
!658 = !DILocalVariable(name: "old_stream_padding", scope: !651, file: !1, line: 627, type: !422)
!659 = !DILocation(line: 0, scope: !651)
!660 = !DILocation(line: 620, column: 8, scope: !661)
!661 = distinct !DILexicalBlock(scope: !651, file: !1, line: 620, column: 6)
!662 = !DILocation(line: 620, column: 16, scope: !661)
!663 = !DILocation(line: 624, column: 48, scope: !651)
!664 = !DILocation(line: 627, column: 41, scope: !651)
!665 = !DILocation(line: 628, column: 20, scope: !651)
!666 = !DILocation(line: 0, scope: !533, inlinedAt: !667)
!667 = distinct !DILocation(line: 629, column: 6, scope: !668)
!668 = distinct !DILexicalBlock(scope: !651, file: !1, line: 629, column: 6)
!669 = !DILocation(line: 562, column: 60, scope: !533, inlinedAt: !667)
!670 = !DILocation(line: 563, column: 57, scope: !533, inlinedAt: !667)
!671 = !DILocation(line: 564, column: 33, scope: !533, inlinedAt: !667)
!672 = !DILocation(line: 565, column: 6, scope: !533, inlinedAt: !667)
!673 = !DILocation(line: 565, column: 4, scope: !533, inlinedAt: !667)
!674 = !DILocation(line: 565, column: 23, scope: !533, inlinedAt: !667)
!675 = !DILocation(line: 565, column: 34, scope: !533, inlinedAt: !667)
!676 = !DILocation(line: 565, column: 40, scope: !533, inlinedAt: !667)
!677 = !DILocation(line: 42, column: 14, scope: !495, inlinedAt: !678)
!678 = distinct !DILocation(line: 546, column: 23, scope: !549, inlinedAt: !679)
!679 = distinct !DILocation(line: 564, column: 9, scope: !533, inlinedAt: !667)
!680 = !DILocation(line: 42, column: 19, scope: !495, inlinedAt: !678)
!681 = !DILocation(line: 567, column: 7, scope: !533, inlinedAt: !667)
!682 = !DILocation(line: 0, scope: !549, inlinedAt: !679)
!683 = !DILocation(line: 545, column: 39, scope: !549, inlinedAt: !679)
!684 = !DILocation(line: 0, scope: !495, inlinedAt: !678)
!685 = !DILocation(line: 546, column: 4, scope: !549, inlinedAt: !679)
!686 = !DILocation(line: 546, column: 21, scope: !549, inlinedAt: !679)
!687 = !DILocation(line: 547, column: 16, scope: !568, inlinedAt: !679)
!688 = !DILocation(line: 547, column: 6, scope: !549, inlinedAt: !679)
!689 = !DILocation(line: 566, column: 24, scope: !533, inlinedAt: !667)
!690 = !DILocation(line: 566, column: 7, scope: !533, inlinedAt: !667)
!691 = !DILocation(line: 0, scope: !477, inlinedAt: !692)
!692 = distinct !DILocation(line: 551, column: 15, scope: !549, inlinedAt: !679)
!693 = !DILocation(line: 0, scope: !486, inlinedAt: !694)
!694 = distinct !DILocation(line: 59, column: 19, scope: !477, inlinedAt: !692)
!695 = !DILocation(line: 51, column: 13, scope: !486, inlinedAt: !694)
!696 = !DILocation(line: 51, column: 11, scope: !486, inlinedAt: !694)
!697 = !DILocation(line: 51, column: 9, scope: !486, inlinedAt: !694)
!698 = !DILocation(line: 0, scope: !495, inlinedAt: !699)
!699 = distinct !DILocation(line: 59, column: 9, scope: !477, inlinedAt: !692)
!700 = !DILocation(line: 51, column: 52, scope: !486, inlinedAt: !694)
!701 = !DILocation(line: 42, column: 14, scope: !495, inlinedAt: !699)
!702 = !DILocation(line: 42, column: 19, scope: !495, inlinedAt: !699)
!703 = !DILocation(line: 551, column: 12, scope: !549, inlinedAt: !679)
!704 = !DILocation(line: 629, column: 30, scope: !668)
!705 = !DILocation(line: 629, column: 47, scope: !668)
!706 = !DILocation(line: 636, column: 1, scope: !651)
!707 = distinct !DISubprogram(name: "lzma_index_append", scope: !1, file: !1, line: 640, type: !708, scopeLine: 642, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !710)
!708 = !DISubroutineType(types: !709)
!709 = !{!626, !146, !157, !63, !63}
!710 = !{!711, !712, !713, !714, !715, !716, !717, !718, !719}
!711 = !DILocalVariable(name: "i", arg: 1, scope: !707, file: !1, line: 640, type: !146)
!712 = !DILocalVariable(name: "allocator", arg: 2, scope: !707, file: !1, line: 640, type: !157)
!713 = !DILocalVariable(name: "unpadded_size", arg: 3, scope: !707, file: !1, line: 641, type: !63)
!714 = !DILocalVariable(name: "uncompressed_size", arg: 4, scope: !707, file: !1, line: 641, type: !63)
!715 = !DILocalVariable(name: "s", scope: !707, file: !1, line: 649, type: !133)
!716 = !DILocalVariable(name: "g", scope: !707, file: !1, line: 650, type: !134)
!717 = !DILocalVariable(name: "compressed_base", scope: !707, file: !1, line: 652, type: !422)
!718 = !DILocalVariable(name: "uncompressed_base", scope: !707, file: !1, line: 654, type: !422)
!719 = !DILocalVariable(name: "index_list_size_add", scope: !707, file: !1, line: 656, type: !720)
!720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!721 = !DILocation(line: 0, scope: !707)
!722 = !DILocation(line: 644, column: 8, scope: !723)
!723 = distinct !DILexicalBlock(scope: !707, file: !1, line: 644, column: 6)
!724 = !DILocation(line: 644, column: 16, scope: !723)
!725 = !DILocation(line: 649, column: 48, scope: !707)
!726 = !DILocation(line: 650, column: 38, scope: !707)
!727 = !DILocation(line: 650, column: 45, scope: !707)
!728 = !DILocation(line: 652, column: 37, scope: !707)
!729 = !DILocation(line: 652, column: 35, scope: !707)
!730 = !DILocation(line: 653, column: 19, scope: !707)
!731 = !DILocation(line: 653, column: 30, scope: !707)
!732 = !DILocation(line: 653, column: 36, scope: !707)
!733 = !DILocation(line: 0, scope: !495, inlinedAt: !734)
!734 = distinct !DILocation(line: 653, column: 6, scope: !707)
!735 = !DILocation(line: 42, column: 14, scope: !495, inlinedAt: !734)
!736 = !DILocation(line: 42, column: 19, scope: !495, inlinedAt: !734)
!737 = !DILocation(line: 655, column: 6, scope: !707)
!738 = !DILocation(line: 655, column: 26, scope: !707)
!739 = !DILocation(line: 654, column: 37, scope: !707)
!740 = !DILocation(line: 656, column: 39, scope: !707)
!741 = !DILocation(line: 657, column: 6, scope: !707)
!742 = !DILocation(line: 657, column: 4, scope: !707)
!743 = !DILocation(line: 660, column: 30, scope: !744)
!744 = distinct !DILexicalBlock(scope: !707, file: !1, line: 660, column: 6)
!745 = !DILocation(line: 661, column: 20, scope: !744)
!746 = !DILocation(line: 661, column: 40, scope: !744)
!747 = !DILocation(line: 662, column: 25, scope: !744)
!748 = !DILocation(line: 663, column: 7, scope: !744)
!749 = !DILocation(line: 0, scope: !549, inlinedAt: !750)
!750 = distinct !DILocation(line: 660, column: 6, scope: !744)
!751 = !DILocation(line: 0, scope: !495, inlinedAt: !752)
!752 = distinct !DILocation(line: 546, column: 23, scope: !549, inlinedAt: !750)
!753 = !DILocation(line: 42, column: 14, scope: !495, inlinedAt: !752)
!754 = !DILocation(line: 42, column: 19, scope: !495, inlinedAt: !752)
!755 = !DILocation(line: 545, column: 39, scope: !549, inlinedAt: !750)
!756 = !DILocation(line: 546, column: 4, scope: !549, inlinedAt: !750)
!757 = !DILocation(line: 546, column: 21, scope: !549, inlinedAt: !750)
!758 = !DILocation(line: 547, column: 16, scope: !568, inlinedAt: !750)
!759 = !DILocation(line: 547, column: 6, scope: !549, inlinedAt: !750)
!760 = !DILocation(line: 662, column: 7, scope: !744)
!761 = !DILocation(line: 661, column: 53, scope: !744)
!762 = !DILocation(line: 0, scope: !477, inlinedAt: !763)
!763 = distinct !DILocation(line: 551, column: 15, scope: !549, inlinedAt: !750)
!764 = !DILocation(line: 0, scope: !486, inlinedAt: !765)
!765 = distinct !DILocation(line: 59, column: 19, scope: !477, inlinedAt: !763)
!766 = !DILocation(line: 51, column: 13, scope: !486, inlinedAt: !765)
!767 = !DILocation(line: 51, column: 11, scope: !486, inlinedAt: !765)
!768 = !DILocation(line: 51, column: 9, scope: !486, inlinedAt: !765)
!769 = !DILocation(line: 0, scope: !495, inlinedAt: !770)
!770 = distinct !DILocation(line: 59, column: 9, scope: !477, inlinedAt: !763)
!771 = !DILocation(line: 662, column: 23, scope: !744)
!772 = !DILocation(line: 51, column: 52, scope: !486, inlinedAt: !765)
!773 = !DILocation(line: 42, column: 14, scope: !495, inlinedAt: !770)
!774 = !DILocation(line: 42, column: 19, scope: !495, inlinedAt: !770)
!775 = !DILocation(line: 551, column: 12, scope: !549, inlinedAt: !750)
!776 = !DILocation(line: 663, column: 23, scope: !744)
!777 = !DILocation(line: 660, column: 6, scope: !707)
!778 = !DILocation(line: 668, column: 20, scope: !779)
!779 = distinct !DILexicalBlock(scope: !707, file: !1, line: 668, column: 6)
!780 = !DILocation(line: 668, column: 33, scope: !779)
!781 = !DILocation(line: 669, column: 7, scope: !779)
!782 = !DILocation(line: 0, scope: !477, inlinedAt: !783)
!783 = distinct !DILocation(line: 668, column: 6, scope: !779)
!784 = !DILocation(line: 0, scope: !486, inlinedAt: !785)
!785 = distinct !DILocation(line: 59, column: 19, scope: !477, inlinedAt: !783)
!786 = !DILocation(line: 51, column: 13, scope: !486, inlinedAt: !785)
!787 = !DILocation(line: 51, column: 11, scope: !486, inlinedAt: !785)
!788 = !DILocation(line: 51, column: 9, scope: !486, inlinedAt: !785)
!789 = !DILocation(line: 0, scope: !495, inlinedAt: !790)
!790 = distinct !DILocation(line: 59, column: 9, scope: !477, inlinedAt: !783)
!791 = !DILocation(line: 51, column: 52, scope: !486, inlinedAt: !785)
!792 = !DILocation(line: 42, column: 14, scope: !495, inlinedAt: !790)
!793 = !DILocation(line: 42, column: 19, scope: !495, inlinedAt: !790)
!794 = !DILocation(line: 670, column: 4, scope: !779)
!795 = !DILocation(line: 668, column: 6, scope: !707)
!796 = !DILocation(line: 673, column: 16, scope: !797)
!797 = distinct !DILexicalBlock(scope: !707, file: !1, line: 673, column: 6)
!798 = !DILocation(line: 673, column: 22, scope: !797)
!799 = !DILocation(line: 673, column: 27, scope: !797)
!800 = !DILocation(line: 673, column: 36, scope: !797)
!801 = !DILocation(line: 673, column: 31, scope: !797)
!802 = !DILocation(line: 673, column: 6, scope: !707)
!803 = !DILocation(line: 675, column: 3, scope: !804)
!804 = distinct !DILexicalBlock(scope: !797, file: !1, line: 673, column: 47)
!805 = !DILocation(line: 676, column: 2, scope: !804)
!806 = !DILocation(line: 679, column: 10, scope: !807)
!807 = distinct !DILexicalBlock(scope: !797, file: !1, line: 676, column: 9)
!808 = !DILocation(line: 679, column: 19, scope: !807)
!809 = !DILocation(line: 679, column: 5, scope: !807)
!810 = !DILocation(line: 678, column: 7, scope: !807)
!811 = !DILocation(line: 681, column: 9, scope: !812)
!812 = distinct !DILexicalBlock(scope: !807, file: !1, line: 681, column: 7)
!813 = !DILocation(line: 681, column: 7, scope: !807)
!814 = !DILocation(line: 684, column: 6, scope: !807)
!815 = !DILocation(line: 684, column: 11, scope: !807)
!816 = !DILocation(line: 685, column: 21, scope: !807)
!817 = !DILocation(line: 685, column: 6, scope: !807)
!818 = !DILocation(line: 685, column: 16, scope: !807)
!819 = !DILocation(line: 689, column: 15, scope: !807)
!820 = !DILocation(line: 692, column: 29, scope: !807)
!821 = !DILocation(line: 693, column: 11, scope: !807)
!822 = !DILocation(line: 693, column: 27, scope: !807)
!823 = !DILocation(line: 694, column: 23, scope: !807)
!824 = !DILocation(line: 694, column: 36, scope: !807)
!825 = !DILocation(line: 694, column: 6, scope: !807)
!826 = !DILocation(line: 694, column: 18, scope: !807)
!827 = !DILocation(line: 697, column: 3, scope: !807)
!828 = !DILocation(line: 701, column: 16, scope: !707)
!829 = !DILocation(line: 702, column: 24, scope: !707)
!830 = !DILocation(line: 701, column: 5, scope: !707)
!831 = !DILocation(line: 701, column: 2, scope: !707)
!832 = !DILocation(line: 702, column: 4, scope: !707)
!833 = !DILocation(line: 703, column: 22, scope: !707)
!834 = !DILocation(line: 704, column: 4, scope: !707)
!835 = !DILocation(line: 707, column: 2, scope: !707)
!836 = !DILocation(line: 0, scope: !495, inlinedAt: !837)
!837 = distinct !DILocation(line: 710, column: 19, scope: !707)
!838 = !DILocation(line: 42, column: 14, scope: !495, inlinedAt: !837)
!839 = !DILocation(line: 42, column: 19, scope: !495, inlinedAt: !837)
!840 = !DILocation(line: 710, column: 5, scope: !707)
!841 = !DILocation(line: 711, column: 5, scope: !707)
!842 = !DILocation(line: 711, column: 23, scope: !707)
!843 = !DILocation(line: 710, column: 16, scope: !707)
!844 = !DILocation(line: 713, column: 21, scope: !707)
!845 = !DILocation(line: 715, column: 2, scope: !707)
!846 = !DILocation(line: 716, column: 1, scope: !707)
!847 = !DISubprogram(name: "lzma_vli_size", scope: !64, file: !64, line: 165, type: !848, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!848 = !DISubroutineType(types: !849)
!849 = !{!75, !63}
!850 = !DISubprogram(name: "lzma_alloc", scope: !238, file: !238, line: 211, type: !851, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!851 = !DISubroutineType(types: !852)
!852 = !{!49, !50, !157}
!853 = distinct !DISubprogram(name: "lzma_index_cat", scope: !1, file: !1, line: 767, type: !854, scopeLine: 769, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !857)
!854 = !DISubroutineType(types: !855)
!855 = !{!626, !856, !856, !157}
!856 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !146)
!857 = !{!858, !859, !860, !861, !862, !864, !865, !867, !868, !871}
!858 = !DILocalVariable(name: "dest", arg: 1, scope: !853, file: !1, line: 767, type: !856)
!859 = !DILocalVariable(name: "src", arg: 2, scope: !853, file: !1, line: 767, type: !856)
!860 = !DILocalVariable(name: "allocator", arg: 3, scope: !853, file: !1, line: 768, type: !157)
!861 = !DILocalVariable(name: "dest_file_size", scope: !853, file: !1, line: 770, type: !422)
!862 = !DILocalVariable(name: "dest_size", scope: !863, file: !1, line: 785, type: !422)
!863 = distinct !DILexicalBlock(scope: !853, file: !1, line: 784, column: 2)
!864 = !DILocalVariable(name: "src_size", scope: !863, file: !1, line: 787, type: !422)
!865 = !DILocalVariable(name: "s", scope: !866, file: !1, line: 796, type: !133)
!866 = distinct !DILexicalBlock(scope: !853, file: !1, line: 795, column: 2)
!867 = !DILocalVariable(name: "g", scope: !866, file: !1, line: 797, type: !134)
!868 = !DILocalVariable(name: "newg", scope: !869, file: !1, line: 802, type: !134)
!869 = distinct !DILexicalBlock(scope: !870, file: !1, line: 798, column: 48)
!870 = distinct !DILexicalBlock(scope: !866, file: !1, line: 798, column: 7)
!871 = !DILocalVariable(name: "info", scope: !853, file: !1, line: 837, type: !872)
!872 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !873)
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "index_cat_info", file: !1, line: 738, baseType: !874)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 720, size: 320, elements: !875)
!875 = !{!876, !877, !878, !879, !880}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_size", scope: !874, file: !1, line: 722, baseType: !63, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "file_size", scope: !874, file: !1, line: 725, baseType: !63, size: 64, offset: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "block_number_add", scope: !874, file: !1, line: 728, baseType: !63, size: 64, offset: 128)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "stream_number_add", scope: !874, file: !1, line: 733, baseType: !75, size: 32, offset: 192)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !874, file: !1, line: 736, baseType: !189, size: 64, offset: 256)
!881 = distinct !DIAssignID()
!882 = !DILocation(line: 0, scope: !853)
!883 = !DILocation(line: 0, scope: !533, inlinedAt: !884)
!884 = distinct !DILocation(line: 770, column: 34, scope: !853)
!885 = !DILocation(line: 562, column: 60, scope: !533, inlinedAt: !884)
!886 = !DILocation(line: 563, column: 57, scope: !533, inlinedAt: !884)
!887 = !DILocation(line: 564, column: 33, scope: !533, inlinedAt: !884)
!888 = !DILocation(line: 565, column: 6, scope: !533, inlinedAt: !884)
!889 = !DILocation(line: 565, column: 4, scope: !533, inlinedAt: !884)
!890 = !DILocation(line: 565, column: 23, scope: !533, inlinedAt: !884)
!891 = !DILocation(line: 565, column: 34, scope: !533, inlinedAt: !884)
!892 = !DILocation(line: 565, column: 40, scope: !533, inlinedAt: !884)
!893 = !DILocation(line: 42, column: 14, scope: !495, inlinedAt: !894)
!894 = distinct !DILocation(line: 546, column: 23, scope: !549, inlinedAt: !895)
!895 = distinct !DILocation(line: 564, column: 9, scope: !533, inlinedAt: !884)
!896 = !DILocation(line: 42, column: 19, scope: !495, inlinedAt: !894)
!897 = !DILocation(line: 567, column: 7, scope: !533, inlinedAt: !884)
!898 = !DILocation(line: 0, scope: !549, inlinedAt: !895)
!899 = !DILocation(line: 545, column: 39, scope: !549, inlinedAt: !895)
!900 = !DILocation(line: 0, scope: !495, inlinedAt: !894)
!901 = !DILocation(line: 546, column: 4, scope: !549, inlinedAt: !895)
!902 = !DILocation(line: 546, column: 21, scope: !549, inlinedAt: !895)
!903 = !DILocation(line: 547, column: 16, scope: !568, inlinedAt: !895)
!904 = !DILocation(line: 547, column: 6, scope: !549, inlinedAt: !895)
!905 = !DILocation(line: 566, column: 24, scope: !533, inlinedAt: !884)
!906 = !DILocation(line: 566, column: 7, scope: !533, inlinedAt: !884)
!907 = !DILocation(line: 0, scope: !477, inlinedAt: !908)
!908 = distinct !DILocation(line: 551, column: 15, scope: !549, inlinedAt: !895)
!909 = !DILocation(line: 0, scope: !486, inlinedAt: !910)
!910 = distinct !DILocation(line: 59, column: 19, scope: !477, inlinedAt: !908)
!911 = !DILocation(line: 51, column: 13, scope: !486, inlinedAt: !910)
!912 = !DILocation(line: 51, column: 11, scope: !486, inlinedAt: !910)
!913 = !DILocation(line: 51, column: 9, scope: !486, inlinedAt: !910)
!914 = !DILocation(line: 0, scope: !495, inlinedAt: !915)
!915 = distinct !DILocation(line: 59, column: 9, scope: !477, inlinedAt: !908)
!916 = !DILocation(line: 51, column: 52, scope: !486, inlinedAt: !910)
!917 = !DILocation(line: 42, column: 14, scope: !495, inlinedAt: !915)
!918 = !DILocation(line: 42, column: 19, scope: !495, inlinedAt: !915)
!919 = !DILocation(line: 551, column: 12, scope: !549, inlinedAt: !895)
!920 = !DILocation(line: 0, scope: !533, inlinedAt: !921)
!921 = distinct !DILocation(line: 773, column: 23, scope: !922)
!922 = distinct !DILexicalBlock(scope: !853, file: !1, line: 773, column: 6)
!923 = !DILocation(line: 562, column: 60, scope: !533, inlinedAt: !921)
!924 = !DILocation(line: 563, column: 57, scope: !533, inlinedAt: !921)
!925 = !DILocation(line: 564, column: 33, scope: !533, inlinedAt: !921)
!926 = !DILocation(line: 565, column: 6, scope: !533, inlinedAt: !921)
!927 = !DILocation(line: 565, column: 4, scope: !533, inlinedAt: !921)
!928 = !DILocation(line: 565, column: 23, scope: !533, inlinedAt: !921)
!929 = !DILocation(line: 565, column: 34, scope: !533, inlinedAt: !921)
!930 = !DILocation(line: 565, column: 40, scope: !533, inlinedAt: !921)
!931 = !DILocation(line: 42, column: 14, scope: !495, inlinedAt: !932)
!932 = distinct !DILocation(line: 546, column: 23, scope: !549, inlinedAt: !933)
!933 = distinct !DILocation(line: 564, column: 9, scope: !533, inlinedAt: !921)
!934 = !DILocation(line: 42, column: 19, scope: !495, inlinedAt: !932)
!935 = !DILocation(line: 567, column: 7, scope: !533, inlinedAt: !921)
!936 = !DILocation(line: 0, scope: !549, inlinedAt: !933)
!937 = !DILocation(line: 545, column: 39, scope: !549, inlinedAt: !933)
!938 = !DILocation(line: 0, scope: !495, inlinedAt: !932)
!939 = !DILocation(line: 546, column: 4, scope: !549, inlinedAt: !933)
!940 = !DILocation(line: 546, column: 21, scope: !549, inlinedAt: !933)
!941 = !DILocation(line: 547, column: 16, scope: !568, inlinedAt: !933)
!942 = !DILocation(line: 547, column: 6, scope: !549, inlinedAt: !933)
!943 = !DILocation(line: 566, column: 24, scope: !533, inlinedAt: !921)
!944 = !DILocation(line: 566, column: 7, scope: !533, inlinedAt: !921)
!945 = !DILocation(line: 0, scope: !477, inlinedAt: !946)
!946 = distinct !DILocation(line: 551, column: 15, scope: !549, inlinedAt: !933)
!947 = !DILocation(line: 0, scope: !486, inlinedAt: !948)
!948 = distinct !DILocation(line: 59, column: 19, scope: !477, inlinedAt: !946)
!949 = !DILocation(line: 51, column: 13, scope: !486, inlinedAt: !948)
!950 = !DILocation(line: 51, column: 11, scope: !486, inlinedAt: !948)
!951 = !DILocation(line: 51, column: 9, scope: !486, inlinedAt: !948)
!952 = !DILocation(line: 0, scope: !495, inlinedAt: !953)
!953 = distinct !DILocation(line: 59, column: 9, scope: !477, inlinedAt: !946)
!954 = !DILocation(line: 51, column: 52, scope: !486, inlinedAt: !948)
!955 = !DILocation(line: 42, column: 14, scope: !495, inlinedAt: !953)
!956 = !DILocation(line: 42, column: 19, scope: !495, inlinedAt: !953)
!957 = !DILocation(line: 551, column: 12, scope: !549, inlinedAt: !933)
!958 = !DILocation(line: 773, column: 21, scope: !922)
!959 = !DILocation(line: 773, column: 49, scope: !922)
!960 = !DILocation(line: 774, column: 4, scope: !922)
!961 = !DILocation(line: 774, column: 13, scope: !922)
!962 = !DILocation(line: 774, column: 38, scope: !922)
!963 = !DILocation(line: 774, column: 31, scope: !922)
!964 = !DILocation(line: 775, column: 5, scope: !922)
!965 = !DILocation(line: 773, column: 6, scope: !853)
!966 = !DILocation(line: 786, column: 11, scope: !863)
!967 = !DILocation(line: 786, column: 31, scope: !863)
!968 = !DILocation(line: 0, scope: !486, inlinedAt: !969)
!969 = distinct !DILocation(line: 785, column: 30, scope: !863)
!970 = !DILocation(line: 51, column: 13, scope: !486, inlinedAt: !969)
!971 = !DILocation(line: 51, column: 11, scope: !486, inlinedAt: !969)
!972 = !DILocation(line: 51, column: 9, scope: !486, inlinedAt: !969)
!973 = !DILocation(line: 0, scope: !863)
!974 = !DILocation(line: 788, column: 10, scope: !863)
!975 = !DILocation(line: 0, scope: !486, inlinedAt: !976)
!976 = distinct !DILocation(line: 787, column: 29, scope: !863)
!977 = !DILocation(line: 51, column: 13, scope: !486, inlinedAt: !976)
!978 = !DILocation(line: 51, column: 11, scope: !486, inlinedAt: !976)
!979 = !DILocation(line: 51, column: 9, scope: !486, inlinedAt: !976)
!980 = !DILocation(line: 0, scope: !495, inlinedAt: !981)
!981 = distinct !DILocation(line: 789, column: 7, scope: !982)
!982 = distinct !DILexicalBlock(scope: !863, file: !1, line: 789, column: 7)
!983 = !DILocation(line: 51, column: 34, scope: !486, inlinedAt: !969)
!984 = !DILocation(line: 51, column: 52, scope: !486, inlinedAt: !969)
!985 = !DILocation(line: 789, column: 27, scope: !982)
!986 = !DILocation(line: 42, column: 14, scope: !495, inlinedAt: !981)
!987 = !DILocation(line: 42, column: 19, scope: !495, inlinedAt: !981)
!988 = !DILocation(line: 789, column: 39, scope: !982)
!989 = !DILocation(line: 0, scope: !866)
!990 = !DILocation(line: 797, column: 39, scope: !866)
!991 = !DILocation(line: 797, column: 46, scope: !866)
!992 = !DILocation(line: 798, column: 9, scope: !870)
!993 = !DILocation(line: 798, column: 17, scope: !870)
!994 = !DILocation(line: 798, column: 23, scope: !870)
!995 = !DILocation(line: 798, column: 28, scope: !870)
!996 = !DILocation(line: 798, column: 37, scope: !870)
!997 = !DILocation(line: 798, column: 32, scope: !870)
!998 = !DILocation(line: 798, column: 7, scope: !866)
!999 = !DILocation(line: 804, column: 6, scope: !869)
!1000 = !DILocation(line: 803, column: 6, scope: !869)
!1001 = !DILocation(line: 802, column: 24, scope: !869)
!1002 = !DILocation(line: 0, scope: !869)
!1003 = !DILocation(line: 806, column: 13, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !869, file: !1, line: 806, column: 8)
!1005 = !DILocation(line: 806, column: 8, scope: !869)
!1006 = !DILocation(line: 809, column: 20, scope: !869)
!1007 = !DILocation(line: 810, column: 25, scope: !869)
!1008 = !DILocation(line: 810, column: 30, scope: !869)
!1009 = !DILocation(line: 810, column: 10, scope: !869)
!1010 = !DILocation(line: 810, column: 20, scope: !869)
!1011 = !DILocation(line: 811, column: 20, scope: !869)
!1012 = !DILocation(line: 811, column: 10, scope: !869)
!1013 = !DILocation(line: 811, column: 15, scope: !869)
!1014 = !DILocation(line: 812, column: 27, scope: !869)
!1015 = !DILocation(line: 812, column: 10, scope: !869)
!1016 = !DILocation(line: 812, column: 22, scope: !869)
!1017 = !DILocation(line: 814, column: 17, scope: !869)
!1018 = !DILocation(line: 814, column: 29, scope: !869)
!1019 = !DILocation(line: 815, column: 6, scope: !869)
!1020 = !DILocation(line: 814, column: 4, scope: !869)
!1021 = !DILocation(line: 817, column: 16, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !869, file: !1, line: 817, column: 8)
!1023 = !DILocation(line: 817, column: 23, scope: !1022)
!1024 = !DILocation(line: 817, column: 8, scope: !869)
!1025 = !DILocation(line: 819, column: 21, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1022, file: !1, line: 817, column: 32)
!1027 = !DILocation(line: 819, column: 27, scope: !1026)
!1028 = !DILocation(line: 820, column: 4, scope: !1026)
!1029 = !DILocation(line: 822, column: 18, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !869, file: !1, line: 822, column: 8)
!1031 = !DILocation(line: 822, column: 27, scope: !1030)
!1032 = !DILocation(line: 822, column: 8, scope: !869)
!1033 = !DILocation(line: 824, column: 24, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1030, file: !1, line: 822, column: 40)
!1035 = !DILocation(line: 825, column: 20, scope: !1034)
!1036 = !DILocation(line: 826, column: 4, scope: !1034)
!1037 = !DILocation(line: 828, column: 18, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !869, file: !1, line: 828, column: 8)
!1039 = !DILocation(line: 828, column: 28, scope: !1038)
!1040 = !DILocation(line: 828, column: 8, scope: !869)
!1041 = !DILocation(line: 829, column: 25, scope: !1038)
!1042 = !DILocation(line: 829, column: 5, scope: !1038)
!1043 = !DILocation(line: 831, column: 4, scope: !869)
!1044 = !DILocation(line: 837, column: 2, scope: !853)
!1045 = !DILocation(line: 837, column: 30, scope: !853)
!1046 = distinct !DIAssignID()
!1047 = distinct !DIAssignID()
!1048 = distinct !DIAssignID()
!1049 = !DILocation(line: 840, column: 38, scope: !853)
!1050 = distinct !DIAssignID()
!1051 = distinct !DIAssignID()
!1052 = !DILocation(line: 844, column: 56, scope: !853)
!1053 = !DILocation(line: 844, column: 2, scope: !853)
!1054 = !DILocation(line: 847, column: 26, scope: !853)
!1055 = !DILocation(line: 848, column: 27, scope: !853)
!1056 = !DILocation(line: 848, column: 8, scope: !853)
!1057 = !DILocation(line: 848, column: 19, scope: !853)
!1058 = !DILocation(line: 849, column: 21, scope: !853)
!1059 = !DILocation(line: 0, scope: !592, inlinedAt: !1060)
!1060 = distinct !DILocation(line: 851, column: 17, scope: !853)
!1061 = !DILocation(line: 581, column: 23, scope: !592, inlinedAt: !1060)
!1062 = !DILocation(line: 584, column: 60, scope: !592, inlinedAt: !1060)
!1063 = !DILocation(line: 585, column: 9, scope: !603, inlinedAt: !1060)
!1064 = !DILocation(line: 585, column: 22, scope: !603, inlinedAt: !1060)
!1065 = !DILocation(line: 585, column: 30, scope: !603, inlinedAt: !1060)
!1066 = !DILocation(line: 585, column: 6, scope: !592, inlinedAt: !1060)
!1067 = !DILocation(line: 586, column: 44, scope: !603, inlinedAt: !1060)
!1068 = !DILocation(line: 586, column: 25, scope: !603, inlinedAt: !1060)
!1069 = !DILocation(line: 586, column: 10, scope: !603, inlinedAt: !1060)
!1070 = !DILocation(line: 586, column: 3, scope: !603, inlinedAt: !1060)
!1071 = !DILocation(line: 851, column: 48, scope: !853)
!1072 = !DILocation(line: 851, column: 41, scope: !853)
!1073 = !DILocation(line: 851, column: 15, scope: !853)
!1074 = !DILocation(line: 854, column: 2, scope: !853)
!1075 = !DILocation(line: 857, column: 1, scope: !853)
!1076 = distinct !DISubprogram(name: "index_cat_helper", scope: !1, file: !1, line: 745, type: !1077, scopeLine: 746, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1080)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{null, !1079, !133}
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!1080 = !{!1081, !1082, !1083, !1084}
!1081 = !DILocalVariable(name: "info", arg: 1, scope: !1076, file: !1, line: 745, type: !1079)
!1082 = !DILocalVariable(name: "this", arg: 2, scope: !1076, file: !1, line: 745, type: !133)
!1083 = !DILocalVariable(name: "left", scope: !1076, file: !1, line: 747, type: !133)
!1084 = !DILocalVariable(name: "right", scope: !1076, file: !1, line: 748, type: !133)
!1085 = !DILocation(line: 0, scope: !1076)
!1086 = !DILocation(line: 747, column: 51, scope: !1076)
!1087 = !DILocation(line: 748, column: 52, scope: !1076)
!1088 = !DILocation(line: 750, column: 11, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1076, file: !1, line: 750, column: 6)
!1090 = !DILocation(line: 750, column: 6, scope: !1076)
!1091 = !DILocation(line: 751, column: 3, scope: !1089)
!1092 = !DILocation(line: 753, column: 40, scope: !1076)
!1093 = !DILocation(line: 753, column: 31, scope: !1076)
!1094 = !DILocation(line: 754, column: 38, scope: !1076)
!1095 = !DILocation(line: 754, column: 13, scope: !1076)
!1096 = !DILocation(line: 754, column: 29, scope: !1076)
!1097 = !DILocation(line: 755, column: 24, scope: !1076)
!1098 = !DILocation(line: 755, column: 8, scope: !1076)
!1099 = !DILocation(line: 755, column: 15, scope: !1076)
!1100 = !DILocation(line: 756, column: 35, scope: !1076)
!1101 = !DILocation(line: 756, column: 8, scope: !1076)
!1102 = !DILocation(line: 756, column: 26, scope: !1076)
!1103 = !DILocation(line: 757, column: 26, scope: !1076)
!1104 = !DILocation(line: 757, column: 2, scope: !1076)
!1105 = !DILocation(line: 759, column: 12, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1076, file: !1, line: 759, column: 6)
!1107 = !DILocation(line: 759, column: 6, scope: !1076)
!1108 = !DILocation(line: 763, column: 1, scope: !1076)
!1109 = distinct !DISubprogram(name: "lzma_index_dup", scope: !1, file: !1, line: 922, type: !1110, scopeLine: 923, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1112)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{!146, !439, !157}
!1112 = !{!1113, !1114, !1115, !1116, !1117}
!1113 = !DILocalVariable(name: "src", arg: 1, scope: !1109, file: !1, line: 922, type: !439)
!1114 = !DILocalVariable(name: "allocator", arg: 2, scope: !1109, file: !1, line: 922, type: !157)
!1115 = !DILocalVariable(name: "dest", scope: !1109, file: !1, line: 925, type: !146)
!1116 = !DILocalVariable(name: "srcstream", scope: !1109, file: !1, line: 936, type: !53)
!1117 = !DILocalVariable(name: "deststream", scope: !1118, file: !1, line: 939, type: !133)
!1118 = distinct !DILexicalBlock(scope: !1109, file: !1, line: 938, column: 5)
!1119 = !DILocation(line: 0, scope: !1109)
!1120 = !DILocation(line: 0, scope: !176, inlinedAt: !1121)
!1121 = distinct !DILocation(line: 925, column: 21, scope: !1109)
!1122 = !DILocation(line: 382, column: 18, scope: !176, inlinedAt: !1121)
!1123 = !DILocation(line: 383, column: 8, scope: !183, inlinedAt: !1121)
!1124 = !DILocation(line: 383, column: 6, scope: !176, inlinedAt: !1121)
!1125 = !DILocation(line: 0, scope: !186, inlinedAt: !1126)
!1126 = distinct !DILocation(line: 384, column: 3, scope: !193, inlinedAt: !1121)
!1127 = !DILocation(line: 185, column: 17, scope: !186, inlinedAt: !1126)
!1128 = !DILocation(line: 385, column: 6, scope: !193, inlinedAt: !1121)
!1129 = !DILocation(line: 389, column: 6, scope: !193, inlinedAt: !1121)
!1130 = !DILocation(line: 385, column: 24, scope: !193, inlinedAt: !1121)
!1131 = !DILocation(line: 389, column: 15, scope: !193, inlinedAt: !1121)
!1132 = !DILocation(line: 390, column: 6, scope: !193, inlinedAt: !1121)
!1133 = !DILocation(line: 390, column: 13, scope: !193, inlinedAt: !1121)
!1134 = !DILocation(line: 930, column: 33, scope: !1109)
!1135 = !DILocation(line: 930, column: 26, scope: !1109)
!1136 = !DILocation(line: 931, column: 26, scope: !1109)
!1137 = !DILocation(line: 931, column: 8, scope: !1109)
!1138 = !DILocation(line: 931, column: 19, scope: !1109)
!1139 = !DILocation(line: 932, column: 28, scope: !1109)
!1140 = !DILocation(line: 932, column: 8, scope: !1109)
!1141 = !DILocation(line: 932, column: 21, scope: !1109)
!1142 = !DILocation(line: 933, column: 31, scope: !1109)
!1143 = !DILocation(line: 933, column: 8, scope: !1109)
!1144 = !DILocation(line: 933, column: 24, scope: !1109)
!1145 = !DILocation(line: 937, column: 42, scope: !1109)
!1146 = !DILocalVariable(name: "src", arg: 1, scope: !1147, file: !1, line: 862, type: !53)
!1147 = distinct !DISubprogram(name: "index_dup_stream", scope: !1, file: !1, line: 862, type: !1148, scopeLine: 863, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1150)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!133, !53, !157}
!1150 = !{!1146, !1151, !1152, !1153, !1154, !1155}
!1151 = !DILocalVariable(name: "allocator", arg: 2, scope: !1147, file: !1, line: 862, type: !157)
!1152 = !DILocalVariable(name: "dest", scope: !1147, file: !1, line: 869, type: !133)
!1153 = !DILocalVariable(name: "destg", scope: !1147, file: !1, line: 887, type: !134)
!1154 = !DILocalVariable(name: "srcg", scope: !1147, file: !1, line: 903, type: !115)
!1155 = !DILocalVariable(name: "i", scope: !1147, file: !1, line: 904, type: !50)
!1156 = !DILocation(line: 0, scope: !1147, inlinedAt: !1157)
!1157 = distinct !DILocation(line: 939, column: 30, scope: !1118)
!1158 = !DILocation(line: 865, column: 11, scope: !1159, inlinedAt: !1157)
!1159 = distinct !DILexicalBlock(scope: !1147, file: !1, line: 865, column: 6)
!1160 = !DILocation(line: 865, column: 24, scope: !1159, inlinedAt: !1157)
!1161 = !DILocation(line: 865, column: 6, scope: !1147, inlinedAt: !1157)
!1162 = !DILocation(line: 870, column: 14, scope: !1147, inlinedAt: !1157)
!1163 = !DILocation(line: 870, column: 38, scope: !1147, inlinedAt: !1157)
!1164 = !DILocation(line: 871, column: 9, scope: !1147, inlinedAt: !1157)
!1165 = !DILocation(line: 0, scope: !202, inlinedAt: !1166)
!1166 = distinct !DILocation(line: 869, column: 23, scope: !1147, inlinedAt: !1157)
!1167 = !DILocation(line: 345, column: 20, scope: !202, inlinedAt: !1166)
!1168 = !DILocation(line: 346, column: 8, scope: !215, inlinedAt: !1166)
!1169 = !DILocation(line: 346, column: 6, scope: !202, inlinedAt: !1166)
!1170 = !DILocation(line: 349, column: 28, scope: !202, inlinedAt: !1166)
!1171 = !DILocation(line: 351, column: 10, scope: !202, inlinedAt: !1166)
!1172 = !DILocation(line: 355, column: 5, scope: !202, inlinedAt: !1166)
!1173 = !DILocation(line: 352, column: 15, scope: !202, inlinedAt: !1166)
!1174 = !DILocation(line: 355, column: 12, scope: !202, inlinedAt: !1166)
!1175 = !DILocation(line: 356, column: 5, scope: !202, inlinedAt: !1166)
!1176 = !DILocation(line: 356, column: 23, scope: !202, inlinedAt: !1166)
!1177 = !DILocation(line: 358, column: 22, scope: !202, inlinedAt: !1166)
!1178 = !DILocation(line: 0, scope: !186, inlinedAt: !1179)
!1179 = distinct !DILocation(line: 358, column: 2, scope: !202, inlinedAt: !1166)
!1180 = !DILocation(line: 185, column: 17, scope: !186, inlinedAt: !1179)
!1181 = !DILocation(line: 360, column: 5, scope: !202, inlinedAt: !1166)
!1182 = !DILocation(line: 362, column: 5, scope: !202, inlinedAt: !1166)
!1183 = !DILocation(line: 360, column: 18, scope: !202, inlinedAt: !1166)
!1184 = !DILocation(line: 362, column: 26, scope: !202, inlinedAt: !1166)
!1185 = !DILocation(line: 363, column: 5, scope: !202, inlinedAt: !1166)
!1186 = !DILocation(line: 363, column: 20, scope: !202, inlinedAt: !1166)
!1187 = !DILocation(line: 875, column: 34, scope: !1188, inlinedAt: !1157)
!1188 = distinct !DILexicalBlock(scope: !1147, file: !1, line: 875, column: 6)
!1189 = !DILocation(line: 875, column: 43, scope: !1188, inlinedAt: !1157)
!1190 = !DILocation(line: 875, column: 6, scope: !1147, inlinedAt: !1157)
!1191 = !DILocation(line: 879, column: 28, scope: !1147, inlinedAt: !1157)
!1192 = !DILocation(line: 879, column: 21, scope: !1147, inlinedAt: !1157)
!1193 = !DILocation(line: 880, column: 31, scope: !1147, inlinedAt: !1157)
!1194 = !DILocation(line: 880, column: 8, scope: !1147, inlinedAt: !1157)
!1195 = !DILocation(line: 880, column: 24, scope: !1147, inlinedAt: !1157)
!1196 = !DILocation(line: 881, column: 28, scope: !1147, inlinedAt: !1157)
!1197 = !DILocation(line: 882, column: 30, scope: !1147, inlinedAt: !1157)
!1198 = !DILocation(line: 882, column: 23, scope: !1147, inlinedAt: !1157)
!1199 = !DILocation(line: 888, column: 11, scope: !1147, inlinedAt: !1157)
!1200 = !DILocation(line: 888, column: 24, scope: !1147, inlinedAt: !1157)
!1201 = !DILocation(line: 888, column: 4, scope: !1147, inlinedAt: !1157)
!1202 = !DILocation(line: 887, column: 23, scope: !1147, inlinedAt: !1157)
!1203 = !DILocation(line: 890, column: 12, scope: !1204, inlinedAt: !1157)
!1204 = distinct !DILexicalBlock(scope: !1147, file: !1, line: 890, column: 6)
!1205 = !DILocation(line: 890, column: 6, scope: !1147, inlinedAt: !1157)
!1206 = !DILocation(line: 0, scope: !386, inlinedAt: !1207)
!1207 = distinct !DILocation(line: 891, column: 3, scope: !1208, inlinedAt: !1157)
!1208 = distinct !DILexicalBlock(scope: !1204, file: !1, line: 890, column: 21)
!1209 = !DILocation(line: 374, column: 2, scope: !386, inlinedAt: !1207)
!1210 = !DILocation(line: 0, scope: !370, inlinedAt: !1211)
!1211 = distinct !DILocation(line: 374, column: 2, scope: !386, inlinedAt: !1207)
!1212 = !DILocation(line: 221, column: 17, scope: !380, inlinedAt: !1211)
!1213 = !DILocation(line: 221, column: 6, scope: !370, inlinedAt: !1211)
!1214 = !DILocation(line: 222, column: 3, scope: !380, inlinedAt: !1211)
!1215 = !DILocation(line: 898, column: 9, scope: !1147, inlinedAt: !1157)
!1216 = !DILocation(line: 897, column: 30, scope: !1147, inlinedAt: !1157)
!1217 = !DILocation(line: 898, column: 21, scope: !1147, inlinedAt: !1157)
!1218 = !DILocation(line: 899, column: 26, scope: !1147, inlinedAt: !1157)
!1219 = !DILocation(line: 899, column: 9, scope: !1147, inlinedAt: !1157)
!1220 = !DILocation(line: 899, column: 19, scope: !1147, inlinedAt: !1157)
!1221 = !DILocation(line: 900, column: 34, scope: !1147, inlinedAt: !1157)
!1222 = !DILocation(line: 900, column: 9, scope: !1147, inlinedAt: !1157)
!1223 = !DILocation(line: 900, column: 14, scope: !1147, inlinedAt: !1157)
!1224 = !DILocation(line: 903, column: 62, scope: !1147, inlinedAt: !1157)
!1225 = !DILocation(line: 905, column: 2, scope: !1147, inlinedAt: !1157)
!1226 = !DILocation(line: 906, column: 25, scope: !1227, inlinedAt: !1157)
!1227 = distinct !DILexicalBlock(scope: !1147, file: !1, line: 905, column: 5)
!1228 = !DILocation(line: 906, column: 36, scope: !1227, inlinedAt: !1157)
!1229 = !DILocation(line: 907, column: 12, scope: !1227, inlinedAt: !1157)
!1230 = !DILocation(line: 907, column: 22, scope: !1227, inlinedAt: !1157)
!1231 = !DILocation(line: 906, column: 3, scope: !1227, inlinedAt: !1157)
!1232 = !DILocation(line: 908, column: 14, scope: !1227, inlinedAt: !1157)
!1233 = !DILocation(line: 908, column: 19, scope: !1227, inlinedAt: !1157)
!1234 = !DILocation(line: 908, column: 5, scope: !1227, inlinedAt: !1157)
!1235 = !DILocalVariable(name: "node", arg: 1, scope: !1236, file: !1, line: 295, type: !1239)
!1236 = distinct !DISubprogram(name: "index_tree_next", scope: !1, file: !1, line: 295, type: !1237, scopeLine: 296, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1241)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{!49, !1239}
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!1241 = !{!1235}
!1242 = !DILocation(line: 0, scope: !1236, inlinedAt: !1243)
!1243 = distinct !DILocation(line: 909, column: 10, scope: !1227, inlinedAt: !1157)
!1244 = !DILocation(line: 297, column: 12, scope: !1245, inlinedAt: !1243)
!1245 = distinct !DILexicalBlock(scope: !1236, file: !1, line: 297, column: 6)
!1246 = !DILocation(line: 297, column: 18, scope: !1245, inlinedAt: !1243)
!1247 = !DILocation(line: 297, column: 6, scope: !1236, inlinedAt: !1243)
!1248 = !DILocation(line: 0, scope: !1249, inlinedAt: !1243)
!1249 = distinct !DILexicalBlock(scope: !1245, file: !1, line: 297, column: 27)
!1250 = !DILocation(line: 299, column: 16, scope: !1249, inlinedAt: !1243)
!1251 = !DILocation(line: 299, column: 21, scope: !1249, inlinedAt: !1243)
!1252 = !DILocation(line: 299, column: 3, scope: !1249, inlinedAt: !1243)
!1253 = distinct !{!1253, !1252, !1254}
!1254 = !DILocation(line: 300, column: 17, scope: !1249, inlinedAt: !1243)
!1255 = !DILocation(line: 305, column: 15, scope: !1236, inlinedAt: !1243)
!1256 = !DILocation(line: 305, column: 22, scope: !1236, inlinedAt: !1243)
!1257 = !DILocation(line: 305, column: 30, scope: !1236, inlinedAt: !1243)
!1258 = !DILocation(line: 305, column: 47, scope: !1236, inlinedAt: !1243)
!1259 = !DILocation(line: 305, column: 53, scope: !1236, inlinedAt: !1243)
!1260 = !DILocation(line: 305, column: 2, scope: !1236, inlinedAt: !1243)
!1261 = distinct !{!1261, !1260, !1262}
!1262 = !DILocation(line: 306, column: 16, scope: !1236, inlinedAt: !1243)
!1263 = !DILocation(line: 910, column: 2, scope: !1227, inlinedAt: !1157)
!1264 = distinct !{!1264, !1225, !1265}
!1265 = !DILocation(line: 910, column: 23, scope: !1147, inlinedAt: !1157)
!1266 = !DILocation(line: 915, column: 2, scope: !1147, inlinedAt: !1157)
!1267 = !DILocation(line: 0, scope: !1118)
!1268 = !DILocation(line: 941, column: 7, scope: !1118)
!1269 = !DILocation(line: 0, scope: !357, inlinedAt: !1270)
!1270 = distinct !DILocation(line: 942, column: 4, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1272, file: !1, line: 941, column: 27)
!1272 = distinct !DILexicalBlock(scope: !1118, file: !1, line: 941, column: 7)
!1273 = !DILocation(line: 422, column: 3, scope: !368, inlinedAt: !1270)
!1274 = !DILocation(line: 0, scope: !370, inlinedAt: !1275)
!1275 = distinct !DILocation(line: 422, column: 3, scope: !368, inlinedAt: !1270)
!1276 = !DILocation(line: 221, column: 17, scope: !380, inlinedAt: !1275)
!1277 = !DILocation(line: 221, column: 6, scope: !370, inlinedAt: !1275)
!1278 = !DILocation(line: 222, column: 3, scope: !380, inlinedAt: !1275)
!1279 = !DILocation(line: 423, column: 3, scope: !368, inlinedAt: !1270)
!1280 = !DILocation(line: 946, column: 3, scope: !1118)
!1281 = !DILocation(line: 0, scope: !1236, inlinedAt: !1282)
!1282 = distinct !DILocation(line: 948, column: 15, scope: !1118)
!1283 = !DILocation(line: 297, column: 12, scope: !1245, inlinedAt: !1282)
!1284 = !DILocation(line: 297, column: 18, scope: !1245, inlinedAt: !1282)
!1285 = !DILocation(line: 297, column: 6, scope: !1236, inlinedAt: !1282)
!1286 = !DILocation(line: 0, scope: !1249, inlinedAt: !1282)
!1287 = !DILocation(line: 299, column: 16, scope: !1249, inlinedAt: !1282)
!1288 = !DILocation(line: 299, column: 21, scope: !1249, inlinedAt: !1282)
!1289 = !DILocation(line: 299, column: 3, scope: !1249, inlinedAt: !1282)
!1290 = distinct !{!1290, !1289, !1291}
!1291 = !DILocation(line: 300, column: 17, scope: !1249, inlinedAt: !1282)
!1292 = !DILocation(line: 305, column: 15, scope: !1236, inlinedAt: !1282)
!1293 = !DILocation(line: 305, column: 22, scope: !1236, inlinedAt: !1282)
!1294 = !DILocation(line: 305, column: 30, scope: !1236, inlinedAt: !1282)
!1295 = !DILocation(line: 305, column: 47, scope: !1236, inlinedAt: !1282)
!1296 = !DILocation(line: 305, column: 53, scope: !1236, inlinedAt: !1282)
!1297 = !DILocation(line: 305, column: 2, scope: !1236, inlinedAt: !1282)
!1298 = distinct !{!1298, !1297, !1299}
!1299 = !DILocation(line: 306, column: 16, scope: !1236, inlinedAt: !1282)
!1300 = !DILocation(line: 952, column: 1, scope: !1109)
!1301 = distinct !DISubprogram(name: "lzma_index_iter_init", scope: !1, file: !1, line: 1077, type: !1302, scopeLine: 1078, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1357)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{null, !1304, !439}
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_index_iter", file: !42, line: 220, baseType: !1306)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !42, line: 43, size: 2432, elements: !1307)
!1307 = !{!1308, !1328, !1348}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !1306, file: !42, line: 114, baseType: !1309, size: 960)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1306, file: !42, line: 44, size: 960, elements: !1310)
!1310 = !{!1311, !1312, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1309, file: !42, line: 51, baseType: !627, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !1309, file: !42, line: 53, baseType: !1313, size: 64, offset: 64)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !1309, file: !42, line: 54, baseType: !1313, size: 64, offset: 128)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !1309, file: !42, line: 55, baseType: !1313, size: 64, offset: 192)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !1309, file: !42, line: 62, baseType: !63, size: 64, offset: 256)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "block_count", scope: !1309, file: !42, line: 70, baseType: !63, size: 64, offset: 320)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_offset", scope: !1309, file: !42, line: 78, baseType: !63, size: 64, offset: 384)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_offset", scope: !1309, file: !42, line: 86, baseType: !63, size: 64, offset: 448)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_size", scope: !1309, file: !42, line: 94, baseType: !63, size: 64, offset: 512)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_size", scope: !1309, file: !42, line: 99, baseType: !63, size: 64, offset: 576)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1309, file: !42, line: 108, baseType: !63, size: 64, offset: 640)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_vli1", scope: !1309, file: !42, line: 110, baseType: !63, size: 64, offset: 704)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_vli2", scope: !1309, file: !42, line: 111, baseType: !63, size: 64, offset: 768)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_vli3", scope: !1309, file: !42, line: 112, baseType: !63, size: 64, offset: 832)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_vli4", scope: !1309, file: !42, line: 113, baseType: !63, size: 64, offset: 896)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1306, file: !42, line: 208, baseType: !1329, size: 1088, offset: 960)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1306, file: !42, line: 116, size: 1088, elements: !1330)
!1330 = !{!1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "number_in_file", scope: !1329, file: !42, line: 122, baseType: !63, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_file_offset", scope: !1329, file: !42, line: 132, baseType: !63, size: 64, offset: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_file_offset", scope: !1329, file: !42, line: 147, baseType: !63, size: 64, offset: 128)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "number_in_stream", scope: !1329, file: !42, line: 154, baseType: !63, size: 64, offset: 192)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_stream_offset", scope: !1329, file: !42, line: 162, baseType: !63, size: 64, offset: 256)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_stream_offset", scope: !1329, file: !42, line: 170, baseType: !63, size: 64, offset: 320)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_size", scope: !1329, file: !42, line: 179, baseType: !63, size: 64, offset: 384)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "unpadded_size", scope: !1329, file: !42, line: 188, baseType: !63, size: 64, offset: 448)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "total_size", scope: !1329, file: !42, line: 197, baseType: !63, size: 64, offset: 512)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_vli1", scope: !1329, file: !42, line: 199, baseType: !63, size: 64, offset: 576)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_vli2", scope: !1329, file: !42, line: 200, baseType: !63, size: 64, offset: 640)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_vli3", scope: !1329, file: !42, line: 201, baseType: !63, size: 64, offset: 704)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_vli4", scope: !1329, file: !42, line: 202, baseType: !63, size: 64, offset: 768)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !1329, file: !42, line: 204, baseType: !1313, size: 64, offset: 832)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !1329, file: !42, line: 205, baseType: !1313, size: 64, offset: 896)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !1329, file: !42, line: 206, baseType: !1313, size: 64, offset: 960)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr4", scope: !1329, file: !42, line: 207, baseType: !1313, size: 64, offset: 1024)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !1306, file: !42, line: 219, baseType: !1349, size: 384, offset: 2048)
!1349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1350, size: 384, elements: !1355)
!1350 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1306, file: !42, line: 215, size: 64, elements: !1351)
!1351 = !{!1352, !1353, !1354}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1350, file: !42, line: 216, baseType: !1313, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1350, file: !42, line: 217, baseType: !50, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !1350, file: !42, line: 218, baseType: !63, size: 64)
!1355 = !{!1356}
!1356 = !DISubrange(count: 6)
!1357 = !{!1358, !1359}
!1358 = !DILocalVariable(name: "iter", arg: 1, scope: !1301, file: !1, line: 1077, type: !1304)
!1359 = !DILocalVariable(name: "i", arg: 2, scope: !1301, file: !1, line: 1077, type: !439)
!1360 = !DILocation(line: 0, scope: !1301)
!1361 = !DILocation(line: 1079, column: 8, scope: !1301)
!1362 = !DILocation(line: 1079, column: 31, scope: !1301)
!1363 = !DILocalVariable(name: "iter", arg: 1, scope: !1364, file: !1, line: 1086, type: !1304)
!1364 = distinct !DISubprogram(name: "lzma_index_iter_rewind", scope: !1, file: !1, line: 1086, type: !1365, scopeLine: 1087, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1367)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{null, !1304}
!1367 = !{!1363}
!1368 = !DILocation(line: 0, scope: !1364, inlinedAt: !1369)
!1369 = distinct !DILocation(line: 1080, column: 2, scope: !1301)
!1370 = !DILocation(line: 1088, column: 2, scope: !1364, inlinedAt: !1369)
!1371 = !DILocation(line: 1089, column: 31, scope: !1364, inlinedAt: !1369)
!1372 = !DILocation(line: 1081, column: 2, scope: !1301)
!1373 = !DILocation(line: 0, scope: !1364)
!1374 = !DILocation(line: 1088, column: 2, scope: !1364)
!1375 = !DILocation(line: 1089, column: 31, scope: !1364)
!1376 = !DILocation(line: 1092, column: 2, scope: !1364)
!1377 = distinct !DISubprogram(name: "lzma_index_iter_next", scope: !1, file: !1, line: 1097, type: !1378, scopeLine: 1098, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1381)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{!103, !1304, !1380}
!1380 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_index_iter_mode", file: !42, line: 268, baseType: !41)
!1381 = !{!1382, !1383, !1384, !1385, !1386, !1387, !1388}
!1382 = !DILocalVariable(name: "iter", arg: 1, scope: !1377, file: !1, line: 1097, type: !1304)
!1383 = !DILocalVariable(name: "mode", arg: 2, scope: !1377, file: !1, line: 1097, type: !1380)
!1384 = !DILocalVariable(name: "i", scope: !1377, file: !1, line: 1103, type: !439)
!1385 = !DILocalVariable(name: "stream", scope: !1377, file: !1, line: 1104, type: !53)
!1386 = !DILocalVariable(name: "group", scope: !1377, file: !1, line: 1105, type: !115)
!1387 = !DILocalVariable(name: "record", scope: !1377, file: !1, line: 1106, type: !50)
!1388 = !DILabel(scope: !1377, name: "again", file: !1, line: 1130)
!1389 = !DILocation(line: 0, scope: !1377)
!1390 = !DILocation(line: 1100, column: 27, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1377, file: !1, line: 1100, column: 6)
!1392 = !DILocation(line: 1100, column: 6, scope: !1377)
!1393 = !DILocation(line: 1103, column: 30, scope: !1377)
!1394 = !DILocation(line: 1103, column: 51, scope: !1377)
!1395 = !DILocation(line: 1104, column: 31, scope: !1377)
!1396 = !DILocation(line: 1104, column: 59, scope: !1377)
!1397 = !DILocation(line: 1106, column: 18, scope: !1377)
!1398 = !DILocation(line: 1106, column: 46, scope: !1377)
!1399 = !DILocation(line: 1111, column: 11, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1377, file: !1, line: 1111, column: 6)
!1401 = !DILocation(line: 1111, column: 6, scope: !1377)
!1402 = !DILocation(line: 1114, column: 11, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1400, file: !1, line: 1111, column: 38)
!1404 = !DILocation(line: 1114, column: 39, scope: !1403)
!1405 = !DILocation(line: 1114, column: 3, scope: !1403)
!1406 = !DILocation(line: 1116, column: 12, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1403, file: !1, line: 1114, column: 42)
!1408 = !DILocation(line: 1117, column: 4, scope: !1407)
!1409 = !DILocation(line: 1120, column: 28, scope: !1407)
!1410 = !DILocation(line: 1120, column: 55, scope: !1407)
!1411 = !DILocation(line: 0, scope: !1236, inlinedAt: !1412)
!1412 = distinct !DILocation(line: 1120, column: 12, scope: !1407)
!1413 = !DILocation(line: 297, column: 12, scope: !1245, inlinedAt: !1412)
!1414 = !DILocation(line: 297, column: 18, scope: !1245, inlinedAt: !1412)
!1415 = !DILocation(line: 297, column: 6, scope: !1236, inlinedAt: !1412)
!1416 = !DILocation(line: 0, scope: !1249, inlinedAt: !1412)
!1417 = !DILocation(line: 299, column: 16, scope: !1249, inlinedAt: !1412)
!1418 = !DILocation(line: 299, column: 21, scope: !1249, inlinedAt: !1412)
!1419 = !DILocation(line: 299, column: 3, scope: !1249, inlinedAt: !1412)
!1420 = distinct !{!1420, !1419, !1421}
!1421 = !DILocation(line: 300, column: 17, scope: !1249, inlinedAt: !1412)
!1422 = !DILocation(line: 305, column: 15, scope: !1236, inlinedAt: !1412)
!1423 = !DILocation(line: 305, column: 22, scope: !1236, inlinedAt: !1412)
!1424 = !DILocation(line: 305, column: 30, scope: !1236, inlinedAt: !1412)
!1425 = !DILocation(line: 305, column: 47, scope: !1236, inlinedAt: !1412)
!1426 = !DILocation(line: 305, column: 53, scope: !1236, inlinedAt: !1412)
!1427 = !DILocation(line: 305, column: 2, scope: !1236, inlinedAt: !1412)
!1428 = distinct !{!1428, !1427, !1429}
!1429 = !DILocation(line: 306, column: 16, scope: !1236, inlinedAt: !1412)
!1430 = !DILocation(line: 1125, column: 21, scope: !1407)
!1431 = !DILocation(line: 1126, column: 4, scope: !1407)
!1432 = !DILocation(line: 0, scope: !1407)
!1433 = !DILocation(line: 1111, column: 14, scope: !1400)
!1434 = !DILocation(line: 1130, column: 1, scope: !1377)
!1435 = !DILocation(line: 1131, column: 13, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1377, file: !1, line: 1131, column: 6)
!1437 = !DILocation(line: 1131, column: 6, scope: !1377)
!1438 = !DILocation(line: 1134, column: 46, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1436, file: !1, line: 1131, column: 22)
!1440 = !DILocation(line: 0, scope: !1439)
!1441 = !DILocation(line: 1135, column: 7, scope: !1439)
!1442 = !DILocation(line: 1139, column: 35, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1444, file: !1, line: 1135, column: 38)
!1444 = distinct !DILexicalBlock(scope: !1439, file: !1, line: 1135, column: 7)
!1445 = !DILocation(line: 1139, column: 4, scope: !1443)
!1446 = !DILocation(line: 0, scope: !1236, inlinedAt: !1447)
!1447 = distinct !DILocation(line: 1140, column: 14, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1443, file: !1, line: 1139, column: 44)
!1449 = !DILocation(line: 297, column: 12, scope: !1245, inlinedAt: !1447)
!1450 = !DILocation(line: 297, column: 18, scope: !1245, inlinedAt: !1447)
!1451 = !DILocation(line: 297, column: 6, scope: !1236, inlinedAt: !1447)
!1452 = !DILocation(line: 0, scope: !1249, inlinedAt: !1447)
!1453 = !DILocation(line: 299, column: 16, scope: !1249, inlinedAt: !1447)
!1454 = !DILocation(line: 299, column: 21, scope: !1249, inlinedAt: !1447)
!1455 = !DILocation(line: 299, column: 3, scope: !1249, inlinedAt: !1447)
!1456 = distinct !{!1456, !1455, !1457}
!1457 = !DILocation(line: 300, column: 17, scope: !1249, inlinedAt: !1447)
!1458 = !DILocation(line: 305, column: 15, scope: !1236, inlinedAt: !1447)
!1459 = !DILocation(line: 305, column: 22, scope: !1236, inlinedAt: !1447)
!1460 = !DILocation(line: 305, column: 30, scope: !1236, inlinedAt: !1447)
!1461 = !DILocation(line: 305, column: 47, scope: !1236, inlinedAt: !1447)
!1462 = !DILocation(line: 305, column: 53, scope: !1236, inlinedAt: !1447)
!1463 = !DILocation(line: 305, column: 2, scope: !1236, inlinedAt: !1447)
!1464 = distinct !{!1464, !1463, !1465}
!1465 = !DILocation(line: 306, column: 16, scope: !1236, inlinedAt: !1447)
!1466 = !DILocation(line: 1139, column: 26, scope: !1443)
!1467 = distinct !{!1467, !1445, !1468}
!1468 = !DILocation(line: 1143, column: 4, scope: !1443)
!1469 = !DILocation(line: 1150, column: 19, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1436, file: !1, line: 1150, column: 13)
!1471 = !DILocation(line: 1150, column: 27, scope: !1470)
!1472 = !DILocation(line: 1150, column: 46, scope: !1470)
!1473 = !DILocation(line: 1150, column: 37, scope: !1470)
!1474 = !DILocation(line: 1150, column: 13, scope: !1436)
!1475 = !DILocation(line: 1152, column: 3, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1470, file: !1, line: 1150, column: 52)
!1477 = !DILocation(line: 1154, column: 2, scope: !1476)
!1478 = !DILocation(line: 0, scope: !1236, inlinedAt: !1479)
!1479 = distinct !DILocation(line: 1162, column: 12, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !1, line: 1161, column: 7)
!1481 = distinct !DILexicalBlock(scope: !1470, file: !1, line: 1154, column: 9)
!1482 = !DILocation(line: 297, column: 12, scope: !1245, inlinedAt: !1479)
!1483 = !DILocation(line: 297, column: 18, scope: !1245, inlinedAt: !1479)
!1484 = !DILocation(line: 297, column: 6, scope: !1236, inlinedAt: !1479)
!1485 = !DILocation(line: 0, scope: !1249, inlinedAt: !1479)
!1486 = !DILocation(line: 299, column: 16, scope: !1249, inlinedAt: !1479)
!1487 = !DILocation(line: 299, column: 21, scope: !1249, inlinedAt: !1479)
!1488 = !DILocation(line: 299, column: 3, scope: !1249, inlinedAt: !1479)
!1489 = distinct !{!1489, !1488, !1490}
!1490 = !DILocation(line: 300, column: 17, scope: !1249, inlinedAt: !1479)
!1491 = !DILocation(line: 305, column: 15, scope: !1236, inlinedAt: !1479)
!1492 = !DILocation(line: 305, column: 22, scope: !1236, inlinedAt: !1479)
!1493 = !DILocation(line: 305, column: 30, scope: !1236, inlinedAt: !1479)
!1494 = !DILocation(line: 305, column: 47, scope: !1236, inlinedAt: !1479)
!1495 = !DILocation(line: 305, column: 53, scope: !1236, inlinedAt: !1479)
!1496 = !DILocation(line: 305, column: 2, scope: !1236, inlinedAt: !1479)
!1497 = distinct !{!1497, !1496, !1498}
!1498 = !DILocation(line: 306, column: 16, scope: !1236, inlinedAt: !1479)
!1499 = !DILocation(line: 0, scope: !1236, inlinedAt: !1500)
!1500 = distinct !DILocation(line: 1169, column: 14, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1502, file: !1, line: 1168, column: 7)
!1502 = distinct !DILexicalBlock(scope: !1503, file: !1, line: 1164, column: 22)
!1503 = distinct !DILexicalBlock(scope: !1481, file: !1, line: 1164, column: 7)
!1504 = !DILocation(line: 297, column: 12, scope: !1245, inlinedAt: !1500)
!1505 = !DILocation(line: 297, column: 18, scope: !1245, inlinedAt: !1500)
!1506 = !DILocation(line: 297, column: 6, scope: !1236, inlinedAt: !1500)
!1507 = !DILocation(line: 0, scope: !1249, inlinedAt: !1500)
!1508 = !DILocation(line: 299, column: 16, scope: !1249, inlinedAt: !1500)
!1509 = !DILocation(line: 299, column: 21, scope: !1249, inlinedAt: !1500)
!1510 = !DILocation(line: 299, column: 3, scope: !1249, inlinedAt: !1500)
!1511 = distinct !{!1511, !1510, !1512}
!1512 = !DILocation(line: 300, column: 17, scope: !1249, inlinedAt: !1500)
!1513 = !DILocation(line: 305, column: 15, scope: !1236, inlinedAt: !1500)
!1514 = !DILocation(line: 305, column: 22, scope: !1236, inlinedAt: !1500)
!1515 = !DILocation(line: 305, column: 30, scope: !1236, inlinedAt: !1500)
!1516 = !DILocation(line: 305, column: 47, scope: !1236, inlinedAt: !1500)
!1517 = !DILocation(line: 305, column: 53, scope: !1236, inlinedAt: !1500)
!1518 = !DILocation(line: 305, column: 2, scope: !1236, inlinedAt: !1500)
!1519 = distinct !{!1519, !1518, !1520}
!1520 = !DILocation(line: 306, column: 16, scope: !1236, inlinedAt: !1500)
!1521 = !DILocation(line: 1173, column: 24, scope: !1502)
!1522 = !DILocation(line: 1173, column: 33, scope: !1502)
!1523 = !DILocation(line: 1172, column: 4, scope: !1501)
!1524 = distinct !{!1524, !1525, !1526}
!1525 = !DILocation(line: 1168, column: 4, scope: !1502)
!1526 = !DILocation(line: 1173, column: 40, scope: !1502)
!1527 = !DILocation(line: 1176, column: 21, scope: !1502)
!1528 = !DILocation(line: 1177, column: 3, scope: !1502)
!1529 = !DILocation(line: 0, scope: !1436)
!1530 = !DILocation(line: 1180, column: 6, scope: !1377)
!1531 = !DILocation(line: 1183, column: 14, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1533, file: !1, line: 1183, column: 7)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !1, line: 1180, column: 46)
!1534 = distinct !DILexicalBlock(scope: !1377, file: !1, line: 1180, column: 6)
!1535 = !DILocation(line: 1183, column: 7, scope: !1533)
!1536 = !DILocation(line: 1184, column: 20, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1538, file: !1, line: 1184, column: 8)
!1538 = distinct !DILexicalBlock(scope: !1532, file: !1, line: 1183, column: 20)
!1539 = !DILocation(line: 1185, column: 16, scope: !1537)
!1540 = !DILocation(line: 1185, column: 27, scope: !1537)
!1541 = !DILocation(line: 1185, column: 6, scope: !1537)
!1542 = !DILocation(line: 1184, column: 8, scope: !1538)
!1543 = !DILocation(line: 1187, column: 21, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1532, file: !1, line: 1187, column: 14)
!1545 = !DILocation(line: 1187, column: 36, scope: !1544)
!1546 = !DILocation(line: 1187, column: 14, scope: !1544)
!1547 = !DILocation(line: 1187, column: 41, scope: !1544)
!1548 = !DILocation(line: 1188, column: 8, scope: !1544)
!1549 = !DILocation(line: 1188, column: 31, scope: !1544)
!1550 = !DILocation(line: 1188, column: 5, scope: !1544)
!1551 = !DILocation(line: 1187, column: 14, scope: !1532)
!1552 = !DILocation(line: 1193, column: 32, scope: !1377)
!1553 = !DILocation(line: 1194, column: 2, scope: !1377)
!1554 = !DILocation(line: 1194, column: 31, scope: !1377)
!1555 = !DILocation(line: 1195, column: 32, scope: !1377)
!1556 = !DILocation(line: 1197, column: 2, scope: !1377)
!1557 = !DILocation(line: 1199, column: 2, scope: !1377)
!1558 = !DILocation(line: 1200, column: 1, scope: !1377)
!1559 = distinct !DISubprogram(name: "iter_set_info", scope: !1, file: !1, line: 974, type: !1365, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1560)
!1560 = !{!1561, !1562, !1563, !1564, !1565, !1566}
!1561 = !DILocalVariable(name: "iter", arg: 1, scope: !1559, file: !1, line: 974, type: !1304)
!1562 = !DILocalVariable(name: "i", scope: !1559, file: !1, line: 976, type: !439)
!1563 = !DILocalVariable(name: "stream", scope: !1559, file: !1, line: 977, type: !53)
!1564 = !DILocalVariable(name: "group", scope: !1559, file: !1, line: 978, type: !115)
!1565 = !DILocalVariable(name: "record", scope: !1559, file: !1, line: 979, type: !418)
!1566 = !DILocalVariable(name: "g", scope: !1567, file: !1, line: 1028, type: !115)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !1, line: 1027, column: 9)
!1568 = distinct !DILexicalBlock(scope: !1559, file: !1, line: 1022, column: 6)
!1569 = !DILocation(line: 0, scope: !1559)
!1570 = !DILocation(line: 977, column: 31, scope: !1559)
!1571 = !DILocation(line: 977, column: 59, scope: !1559)
!1572 = !DILocation(line: 978, column: 29, scope: !1559)
!1573 = !DILocation(line: 978, column: 56, scope: !1559)
!1574 = !DILocation(line: 979, column: 24, scope: !1559)
!1575 = !DILocation(line: 979, column: 52, scope: !1559)
!1576 = !DILocation(line: 984, column: 12, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1559, file: !1, line: 984, column: 6)
!1578 = !DILocation(line: 984, column: 6, scope: !1559)
!1579 = !DILocation(line: 987, column: 3, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1577, file: !1, line: 984, column: 21)
!1581 = !DILocation(line: 987, column: 33, scope: !1580)
!1582 = !DILocation(line: 989, column: 2, scope: !1580)
!1583 = !DILocation(line: 976, column: 30, scope: !1559)
!1584 = !DILocation(line: 976, column: 51, scope: !1559)
!1585 = !DILocation(line: 989, column: 24, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1577, file: !1, line: 989, column: 13)
!1587 = !DILocation(line: 989, column: 34, scope: !1586)
!1588 = !DILocation(line: 990, column: 4, scope: !1586)
!1589 = !DILocation(line: 990, column: 22, scope: !1586)
!1590 = !DILocation(line: 990, column: 32, scope: !1586)
!1591 = !DILocation(line: 989, column: 13, scope: !1577)
!1592 = !DILocation(line: 992, column: 3, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1586, file: !1, line: 990, column: 49)
!1594 = !DILocation(line: 992, column: 33, scope: !1593)
!1595 = !DILocation(line: 994, column: 2, scope: !1593)
!1596 = !DILocation(line: 994, column: 28, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1586, file: !1, line: 994, column: 13)
!1598 = !DILocation(line: 994, column: 37, scope: !1597)
!1599 = !DILocation(line: 0, scope: !1597)
!1600 = !DILocation(line: 994, column: 13, scope: !1586)
!1601 = !DILocation(line: 1000, column: 33, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1597, file: !1, line: 994, column: 54)
!1603 = !DILocation(line: 1001, column: 46, scope: !1602)
!1604 = !DILocation(line: 1001, column: 32, scope: !1602)
!1605 = !DILocation(line: 1003, column: 2, scope: !1602)
!1606 = !DILocation(line: 1007, column: 33, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1597, file: !1, line: 1003, column: 9)
!1608 = !DILocation(line: 1008, column: 32, scope: !1607)
!1609 = !DILocation(line: 1011, column: 32, scope: !1559)
!1610 = !DILocation(line: 1011, column: 24, scope: !1559)
!1611 = !DILocation(line: 1011, column: 15, scope: !1559)
!1612 = !DILocation(line: 1011, column: 22, scope: !1559)
!1613 = !DILocation(line: 1012, column: 37, scope: !1559)
!1614 = !DILocation(line: 1012, column: 15, scope: !1559)
!1615 = !DILocation(line: 1012, column: 27, scope: !1559)
!1616 = !DILocation(line: 1013, column: 48, scope: !1559)
!1617 = !DILocation(line: 1013, column: 15, scope: !1559)
!1618 = !DILocation(line: 1013, column: 33, scope: !1559)
!1619 = !DILocation(line: 1014, column: 50, scope: !1559)
!1620 = !DILocation(line: 1014, column: 15, scope: !1559)
!1621 = !DILocation(line: 1014, column: 35, scope: !1559)
!1622 = !DILocation(line: 1018, column: 31, scope: !1559)
!1623 = !DILocation(line: 1018, column: 44, scope: !1559)
!1624 = !DILocation(line: 1018, column: 52, scope: !1559)
!1625 = !DILocation(line: 1018, column: 23, scope: !1559)
!1626 = !DILocation(line: 1018, column: 21, scope: !1559)
!1627 = !DILocation(line: 1020, column: 33, scope: !1559)
!1628 = !DILocation(line: 1020, column: 15, scope: !1559)
!1629 = !DILocation(line: 1020, column: 23, scope: !1559)
!1630 = !DILocation(line: 1022, column: 21, scope: !1568)
!1631 = !DILocation(line: 1022, column: 31, scope: !1568)
!1632 = !DILocation(line: 1022, column: 6, scope: !1559)
!1633 = !DILocation(line: 0, scope: !477, inlinedAt: !1634)
!1634 = distinct !DILocation(line: 1024, column: 34, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1568, file: !1, line: 1022, column: 40)
!1636 = !DILocation(line: 0, scope: !486, inlinedAt: !1637)
!1637 = distinct !DILocation(line: 59, column: 19, scope: !477, inlinedAt: !1634)
!1638 = !DILocation(line: 51, column: 13, scope: !486, inlinedAt: !1637)
!1639 = !DILocation(line: 51, column: 11, scope: !486, inlinedAt: !1637)
!1640 = !DILocation(line: 51, column: 9, scope: !486, inlinedAt: !1637)
!1641 = !DILocation(line: 0, scope: !495, inlinedAt: !1642)
!1642 = distinct !DILocation(line: 59, column: 9, scope: !477, inlinedAt: !1634)
!1643 = !DILocation(line: 42, column: 14, scope: !495, inlinedAt: !1642)
!1644 = !DILocation(line: 42, column: 19, scope: !495, inlinedAt: !1642)
!1645 = !DILocation(line: 1025, column: 5, scope: !1635)
!1646 = !DILocation(line: 1024, column: 16, scope: !1635)
!1647 = !DILocation(line: 1024, column: 32, scope: !1635)
!1648 = !DILocation(line: 1027, column: 2, scope: !1635)
!1649 = !DILocation(line: 0, scope: !1567)
!1650 = !DILocation(line: 1033, column: 26, scope: !1567)
!1651 = !DILocation(line: 1034, column: 14, scope: !1567)
!1652 = !DILocation(line: 0, scope: !477, inlinedAt: !1653)
!1653 = distinct !DILocation(line: 1033, column: 7, scope: !1567)
!1654 = !DILocation(line: 0, scope: !486, inlinedAt: !1655)
!1655 = distinct !DILocation(line: 59, column: 19, scope: !477, inlinedAt: !1653)
!1656 = !DILocation(line: 51, column: 13, scope: !486, inlinedAt: !1655)
!1657 = !DILocation(line: 51, column: 11, scope: !486, inlinedAt: !1655)
!1658 = !DILocation(line: 51, column: 9, scope: !486, inlinedAt: !1655)
!1659 = !DILocation(line: 0, scope: !495, inlinedAt: !1660)
!1660 = distinct !DILocation(line: 59, column: 9, scope: !477, inlinedAt: !1653)
!1661 = !DILocation(line: 51, column: 52, scope: !486, inlinedAt: !1655)
!1662 = !DILocation(line: 42, column: 14, scope: !495, inlinedAt: !1660)
!1663 = !DILocation(line: 42, column: 19, scope: !495, inlinedAt: !1660)
!1664 = !DILocation(line: 1033, column: 5, scope: !1567)
!1665 = !DILocation(line: 1035, column: 20, scope: !1567)
!1666 = !DILocation(line: 1035, column: 31, scope: !1567)
!1667 = !DILocation(line: 1035, column: 37, scope: !1567)
!1668 = !DILocation(line: 0, scope: !495, inlinedAt: !1669)
!1669 = distinct !DILocation(line: 1035, column: 7, scope: !1567)
!1670 = !DILocation(line: 42, column: 14, scope: !495, inlinedAt: !1669)
!1671 = !DILocation(line: 42, column: 19, scope: !495, inlinedAt: !1669)
!1672 = !DILocation(line: 1035, column: 5, scope: !1567)
!1673 = !DILocation(line: 1032, column: 16, scope: !1567)
!1674 = !DILocation(line: 1032, column: 32, scope: !1567)
!1675 = !DILocation(line: 1037, column: 21, scope: !1567)
!1676 = !DILocation(line: 1037, column: 7, scope: !1567)
!1677 = !DILocation(line: 1037, column: 27, scope: !1567)
!1678 = !DILocation(line: 0, scope: !1568)
!1679 = !DILocation(line: 1040, column: 6, scope: !1559)
!1680 = !DILocation(line: 1041, column: 41, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1682, file: !1, line: 1040, column: 21)
!1682 = distinct !DILexicalBlock(scope: !1559, file: !1, line: 1040, column: 6)
!1683 = !DILocation(line: 1041, column: 53, scope: !1681)
!1684 = !DILocation(line: 1041, column: 9, scope: !1681)
!1685 = !DILocation(line: 1041, column: 15, scope: !1681)
!1686 = !DILocation(line: 1041, column: 32, scope: !1681)
!1687 = !DILocation(line: 1043, column: 15, scope: !1681)
!1688 = !DILocation(line: 1043, column: 5, scope: !1681)
!1689 = !DILocation(line: 1042, column: 30, scope: !1681)
!1690 = !DILocation(line: 1046, column: 14, scope: !1681)
!1691 = !DILocation(line: 1046, column: 7, scope: !1681)
!1692 = !DILocation(line: 1046, column: 33, scope: !1681)
!1693 = !DILocation(line: 1047, column: 24, scope: !1681)
!1694 = !DILocation(line: 1048, column: 13, scope: !1681)
!1695 = !DILocation(line: 1048, column: 18, scope: !1681)
!1696 = !DILocation(line: 0, scope: !495, inlinedAt: !1697)
!1697 = distinct !DILocation(line: 1047, column: 7, scope: !1681)
!1698 = !DILocation(line: 42, column: 14, scope: !495, inlinedAt: !1697)
!1699 = !DILocation(line: 42, column: 19, scope: !495, inlinedAt: !1697)
!1700 = !DILocation(line: 1050, column: 7, scope: !1681)
!1701 = !DILocation(line: 1045, column: 15, scope: !1681)
!1702 = !DILocation(line: 1046, column: 5, scope: !1681)
!1703 = !DILocation(line: 1049, column: 15, scope: !1681)
!1704 = !DILocation(line: 1050, column: 5, scope: !1681)
!1705 = !DILocation(line: 1054, column: 7, scope: !1681)
!1706 = !DILocation(line: 1054, column: 30, scope: !1681)
!1707 = !DILocation(line: 1055, column: 5, scope: !1681)
!1708 = !DILocation(line: 1053, column: 15, scope: !1681)
!1709 = !DILocation(line: 1054, column: 5, scope: !1681)
!1710 = !DILocation(line: 1057, column: 30, scope: !1681)
!1711 = !DILocation(line: 1058, column: 5, scope: !1681)
!1712 = !DILocation(line: 1056, column: 15, scope: !1681)
!1713 = !DILocation(line: 1057, column: 5, scope: !1681)
!1714 = !DILocation(line: 0, scope: !495, inlinedAt: !1715)
!1715 = distinct !DILocation(line: 1059, column: 28, scope: !1681)
!1716 = !DILocation(line: 42, column: 14, scope: !495, inlinedAt: !1715)
!1717 = !DILocation(line: 42, column: 19, scope: !495, inlinedAt: !1715)
!1718 = !DILocation(line: 1059, column: 15, scope: !1681)
!1719 = !DILocation(line: 1059, column: 26, scope: !1681)
!1720 = !DILocation(line: 1062, column: 5, scope: !1681)
!1721 = !DILocation(line: 1066, column: 20, scope: !1681)
!1722 = !DILocation(line: 1066, column: 5, scope: !1681)
!1723 = !DILocation(line: 1064, column: 15, scope: !1681)
!1724 = !DILocation(line: 1065, column: 5, scope: !1681)
!1725 = !DILocation(line: 1069, column: 20, scope: !1681)
!1726 = !DILocation(line: 1069, column: 5, scope: !1681)
!1727 = !DILocation(line: 1067, column: 15, scope: !1681)
!1728 = !DILocation(line: 1068, column: 5, scope: !1681)
!1729 = !DILocation(line: 1070, column: 2, scope: !1681)
!1730 = !DILocation(line: 1073, column: 1, scope: !1559)
!1731 = distinct !DISubprogram(name: "lzma_index_iter_locate", scope: !1, file: !1, line: 1204, type: !1732, scopeLine: 1205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1734)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{!103, !1304, !63}
!1734 = !{!1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742}
!1735 = !DILocalVariable(name: "iter", arg: 1, scope: !1731, file: !1, line: 1204, type: !1304)
!1736 = !DILocalVariable(name: "target", arg: 2, scope: !1731, file: !1, line: 1204, type: !63)
!1737 = !DILocalVariable(name: "i", scope: !1731, file: !1, line: 1206, type: !439)
!1738 = !DILocalVariable(name: "stream", scope: !1731, file: !1, line: 1213, type: !53)
!1739 = !DILocalVariable(name: "group", scope: !1731, file: !1, line: 1218, type: !115)
!1740 = !DILocalVariable(name: "left", scope: !1731, file: !1, line: 1226, type: !50)
!1741 = !DILocalVariable(name: "right", scope: !1731, file: !1, line: 1227, type: !50)
!1742 = !DILocalVariable(name: "pos", scope: !1743, file: !1, line: 1230, type: !418)
!1743 = distinct !DILexicalBlock(scope: !1731, file: !1, line: 1229, column: 23)
!1744 = !DILocation(line: 0, scope: !1731)
!1745 = !DILocation(line: 1206, column: 30, scope: !1731)
!1746 = !DILocation(line: 1206, column: 51, scope: !1731)
!1747 = !DILocation(line: 1209, column: 9, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1731, file: !1, line: 1209, column: 6)
!1749 = !DILocation(line: 1209, column: 27, scope: !1748)
!1750 = !DILocation(line: 1209, column: 6, scope: !1731)
!1751 = !DILocalVariable(name: "tree", arg: 1, scope: !1752, file: !1, line: 316, type: !1755)
!1752 = distinct !DISubprogram(name: "index_tree_locate", scope: !1, file: !1, line: 316, type: !1753, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1757)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{!49, !1755, !63}
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!1757 = !{!1751, !1758, !1759, !1760}
!1758 = !DILocalVariable(name: "target", arg: 2, scope: !1752, file: !1, line: 316, type: !63)
!1759 = !DILocalVariable(name: "result", scope: !1752, file: !1, line: 318, type: !1239)
!1760 = !DILocalVariable(name: "node", scope: !1752, file: !1, line: 319, type: !1239)
!1761 = !DILocation(line: 0, scope: !1752, inlinedAt: !1762)
!1762 = distinct !DILocation(line: 1213, column: 31, scope: !1731)
!1763 = !DILocation(line: 326, column: 14, scope: !1752, inlinedAt: !1762)
!1764 = !DILocation(line: 326, column: 2, scope: !1752, inlinedAt: !1762)
!1765 = !DILocation(line: 327, column: 13, scope: !1766, inlinedAt: !1762)
!1766 = distinct !DILexicalBlock(scope: !1767, file: !1, line: 327, column: 7)
!1767 = distinct !DILexicalBlock(scope: !1752, file: !1, line: 326, column: 23)
!1768 = !DILocation(line: 327, column: 31, scope: !1766, inlinedAt: !1762)
!1769 = !DILocation(line: 327, column: 7, scope: !1767, inlinedAt: !1762)
!1770 = distinct !{!1770, !1764, !1771}
!1771 = !DILocation(line: 333, column: 2, scope: !1752, inlinedAt: !1762)
!1772 = !DILocation(line: 318, column: 25, scope: !1752, inlinedAt: !1762)
!1773 = !DILocation(line: 1215, column: 25, scope: !1731)
!1774 = !DILocation(line: 1215, column: 9, scope: !1731)
!1775 = !DILocation(line: 1218, column: 56, scope: !1731)
!1776 = !DILocation(line: 0, scope: !1752, inlinedAt: !1777)
!1777 = distinct !DILocation(line: 1218, column: 29, scope: !1731)
!1778 = !DILocation(line: 326, column: 14, scope: !1752, inlinedAt: !1777)
!1779 = !DILocation(line: 326, column: 2, scope: !1752, inlinedAt: !1777)
!1780 = !DILocation(line: 327, column: 13, scope: !1766, inlinedAt: !1777)
!1781 = !DILocation(line: 327, column: 31, scope: !1766, inlinedAt: !1777)
!1782 = !DILocation(line: 327, column: 7, scope: !1767, inlinedAt: !1777)
!1783 = distinct !{!1783, !1779, !1784}
!1784 = !DILocation(line: 333, column: 2, scope: !1752, inlinedAt: !1777)
!1785 = !DILocation(line: 318, column: 25, scope: !1752, inlinedAt: !1777)
!1786 = !DILocation(line: 1227, column: 24, scope: !1731)
!1787 = !DILocation(line: 1229, column: 14, scope: !1731)
!1788 = !DILocation(line: 1229, column: 2, scope: !1731)
!1789 = !DILocation(line: 1230, column: 36, scope: !1743)
!1790 = !DILocation(line: 1230, column: 44, scope: !1743)
!1791 = !DILocation(line: 1230, column: 27, scope: !1743)
!1792 = !DILocation(line: 0, scope: !1743)
!1793 = !DILocation(line: 1231, column: 7, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1743, file: !1, line: 1231, column: 7)
!1795 = !DILocation(line: 1231, column: 27, scope: !1794)
!1796 = !DILocation(line: 1231, column: 44, scope: !1794)
!1797 = !DILocation(line: 1231, column: 7, scope: !1743)
!1798 = distinct !{!1798, !1788, !1799}
!1799 = !DILocation(line: 1235, column: 2, scope: !1731)
!1800 = !DILocation(line: 1237, column: 2, scope: !1731)
!1801 = !DILocation(line: 1237, column: 32, scope: !1731)
!1802 = !DILocation(line: 1238, column: 2, scope: !1731)
!1803 = !DILocation(line: 1238, column: 31, scope: !1731)
!1804 = !DILocation(line: 1239, column: 2, scope: !1731)
!1805 = !DILocation(line: 1239, column: 32, scope: !1731)
!1806 = !DILocation(line: 1241, column: 2, scope: !1731)
!1807 = !DILocation(line: 1244, column: 1, scope: !1731)
!1808 = distinct !DISubprogram(name: "index_tree_node_end", scope: !1, file: !1, line: 194, type: !1809, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1811)
!1809 = !DISubroutineType(types: !1810)
!1810 = !{null, !71, !157, !373}
!1811 = !{!1812, !1813, !1814}
!1812 = !DILocalVariable(name: "node", arg: 1, scope: !1808, file: !1, line: 194, type: !71)
!1813 = !DILocalVariable(name: "allocator", arg: 2, scope: !1808, file: !1, line: 194, type: !157)
!1814 = !DILocalVariable(name: "free_func", arg: 3, scope: !1808, file: !1, line: 195, type: !373)
!1815 = !DILocation(line: 0, scope: !1808)
!1816 = !DILocation(line: 199, column: 12, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1808, file: !1, line: 199, column: 6)
!1818 = !DILocation(line: 199, column: 17, scope: !1817)
!1819 = !DILocation(line: 199, column: 6, scope: !1808)
!1820 = !DILocation(line: 200, column: 3, scope: !1817)
!1821 = !DILocation(line: 202, column: 12, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1808, file: !1, line: 202, column: 6)
!1823 = !DILocation(line: 202, column: 18, scope: !1822)
!1824 = !DILocation(line: 202, column: 6, scope: !1808)
!1825 = !DILocation(line: 203, column: 3, scope: !1822)
!1826 = !DILocation(line: 205, column: 16, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1808, file: !1, line: 205, column: 6)
!1828 = !DILocation(line: 205, column: 6, scope: !1808)
!1829 = !DILocation(line: 206, column: 3, scope: !1827)
!1830 = !{ptr @index_stream_end}
!1831 = !DILocation(line: 208, column: 2, scope: !1808)
!1832 = !DILocation(line: 209, column: 2, scope: !1808)
