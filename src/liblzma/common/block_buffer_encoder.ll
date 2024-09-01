; ModuleID = 'liblzma/common/block_buffer_encoder.c'
source_filename = "liblzma/common/block_buffer_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_check_state = type { %union.anon, %union.anon.0 }
%union.anon = type { [8 x i64] }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { [8 x i32], i64 }
%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }
%struct.lzma_options_lzma = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.lzma_filter = type { i64, ptr }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, -9222949824389710820) i64 @lzma_block_buffer_bound(i64 noundef %uncompressed_size) local_unnamed_addr #0 !dbg !62 {
entry:
    #dbg_value(i64 %uncompressed_size, !66, !DIExpression(), !74)
    #dbg_value(i64 %uncompressed_size, !75, !DIExpression(), !82)
  %cmp.i = icmp ugt i64 %uncompressed_size, 9223372036854774716, !dbg !84
  br i1 %cmp.i, label %select.unfold, label %if.end.i, !dbg !86

if.end.i:                                         ; preds = %entry
  %sub.i = add nuw i64 %uncompressed_size, 65535, !dbg !87
  %div11.i = lshr i64 %sub.i, 16, !dbg !88
  %mul.i = mul nuw nsw i64 %div11.i, 3, !dbg !89
    #dbg_value(i64 %mul.i, !80, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !82)
  %sub2.i = sub nuw nsw i64 9223372036854774715, %mul.i, !dbg !90
  %cmp3.i = icmp ult i64 %sub2.i, %uncompressed_size, !dbg !92
  br i1 %cmp3.i, label %select.unfold, label %lzma2_bound.exit

lzma2_bound.exit:                                 ; preds = %if.end.i
    #dbg_value(i64 poison, !67, !DIExpression(), !74)
  %add6.i = add nuw nsw i64 %uncompressed_size, 4, !dbg !93
  %add = add nuw i64 %add6.i, %mul.i, !dbg !94
  %and = and i64 %add, -4, !dbg !94
  %add1 = add nuw i64 %and, 92, !dbg !94
  br label %select.unfold, !dbg !94

select.unfold:                                    ; preds = %if.end.i, %entry, %lzma2_bound.exit
  %0 = phi i64 [ %add1, %lzma2_bound.exit ], [ 0, %entry ], [ 0, %if.end.i ], !dbg !94
  ret i64 %0, !dbg !95
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_block_buffer_encode(ptr noundef %block, ptr noundef %allocator, ptr noundef %in, i64 noundef %in_size, ptr noundef %out, ptr noundef %out_pos, i64 noundef %out_size) local_unnamed_addr #2 !dbg !96 {
entry:
  %check50 = alloca %struct.lzma_check_state, align 8, !DIAssignID !218
    #dbg_assign(i1 undef, !188, !DIExpression(), !218, ptr %check50, !DIExpression(), !219)
    #dbg_value(ptr %block, !171, !DIExpression(), !220)
    #dbg_value(ptr %allocator, !172, !DIExpression(), !220)
    #dbg_value(ptr %in, !173, !DIExpression(), !220)
    #dbg_value(i64 %in_size, !174, !DIExpression(), !220)
    #dbg_value(ptr %out, !175, !DIExpression(), !220)
    #dbg_value(ptr %out_pos, !176, !DIExpression(), !220)
    #dbg_value(i64 %out_size, !177, !DIExpression(), !220)
  %cmp = icmp eq ptr %block, null, !dbg !221
  br i1 %cmp, label %return, label %lor.lhs.false, !dbg !223

lor.lhs.false:                                    ; preds = %entry
  %cmp1 = icmp eq ptr %in, null, !dbg !224
  %cmp2 = icmp ne i64 %in_size, 0
  %or.cond = and i1 %cmp1, %cmp2, !dbg !225
  %cmp4 = icmp eq ptr %out, null
  %or.cond60 = or i1 %or.cond, %cmp4, !dbg !225
  %cmp6 = icmp eq ptr %out_pos, null
  %or.cond61 = or i1 %or.cond60, %cmp6, !dbg !225
  br i1 %or.cond61, label %return, label %lor.lhs.false7, !dbg !225

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %0 = load i64, ptr %out_pos, align 8, !dbg !226
  %cmp8 = icmp ugt i64 %0, %out_size, !dbg !227
  br i1 %cmp8, label %return, label %if.end, !dbg !228

if.end:                                           ; preds = %lor.lhs.false7
  %1 = load i32, ptr %block, align 8, !dbg !229
  %cmp9.not = icmp eq i32 %1, 0, !dbg !231
  br i1 %cmp9.not, label %if.end11, label %return, !dbg !232

if.end11:                                         ; preds = %if.end
  %check = getelementptr inbounds i8, ptr %block, i64 8, !dbg !233
  %2 = load i32, ptr %check, align 8, !dbg !233
  %cmp12 = icmp ugt i32 %2, 15, !dbg !235
  br i1 %cmp12, label %return, label %lor.lhs.false13, !dbg !236

lor.lhs.false13:                                  ; preds = %if.end11
  %filters = getelementptr inbounds i8, ptr %block, i64 32, !dbg !237
  %3 = load ptr, ptr %filters, align 8, !dbg !237
  %cmp14 = icmp eq ptr %3, null, !dbg !238
  br i1 %cmp14, label %return, label %if.end16, !dbg !239

if.end16:                                         ; preds = %lor.lhs.false13
  %call = tail call zeroext i8 @lzma_check_is_supported(i32 noundef %2) #7, !dbg !240
  %tobool.not = icmp eq i8 %call, 0, !dbg !240
  br i1 %tobool.not, label %return, label %if.end19, !dbg !242

if.end19:                                         ; preds = %if.end16
  %4 = load i64, ptr %out_pos, align 8, !dbg !243
  %sub = sub i64 %out_size, %4, !dbg !244
  %and = and i64 %sub, 3, !dbg !245
  %sub20 = sub i64 %out_size, %and, !dbg !246
    #dbg_value(i64 %sub20, !177, !DIExpression(), !220)
  %5 = load i32, ptr %check, align 8, !dbg !247
  %call22 = tail call i32 @lzma_check_size(i32 noundef %5) #7, !dbg !248
  %conv = zext i32 %call22 to i64, !dbg !248
    #dbg_value(i64 %conv, !178, !DIExpression(), !220)
  %6 = load i64, ptr %out_pos, align 8, !dbg !249
  %sub23 = sub i64 %sub20, %6, !dbg !251
  %cmp24.not = icmp ugt i64 %sub23, %conv, !dbg !252
  br i1 %cmp24.not, label %if.end27, label %return, !dbg !253

if.end27:                                         ; preds = %if.end19
  %sub28 = sub i64 %sub20, %conv, !dbg !254
    #dbg_value(i64 %sub28, !177, !DIExpression(), !220)
  %call29 = tail call fastcc i32 @block_encode_normal(ptr noundef nonnull %block, ptr noundef %allocator, ptr noundef %in, i64 noundef %in_size, ptr noundef nonnull %out, ptr noundef nonnull %out_pos, i64 noundef %sub28), !dbg !255
    #dbg_value(i32 %call29, !180, !DIExpression(), !220)
  switch i32 %call29, label %return [
    i32 0, label %if.end42
    i32 10, label %do.body
  ], !dbg !256

do.body:                                          ; preds = %if.end27
  %call37 = tail call fastcc i32 @block_encode_uncompressed(ptr noundef nonnull %block, ptr noundef %in, i64 noundef %in_size, ptr noundef nonnull %out, ptr noundef nonnull %out_pos, i64 noundef %sub28), !dbg !257
    #dbg_value(i32 %call37, !182, !DIExpression(), !258)
  %cmp38.not = icmp eq i32 %call37, 0, !dbg !259
  br i1 %cmp38.not, label %if.end42, label %return

if.end42:                                         ; preds = %if.end27, %do.body
  %compressed_size = getelementptr inbounds i8, ptr %block, i64 16, !dbg !261
  %7 = load i64, ptr %compressed_size, align 8, !dbg !261
    #dbg_value(i64 %7, !186, !DIExpression(), !262)
  %and43107 = and i64 %7, 3, !dbg !263
  %tobool44.not108 = icmp eq i64 %and43107, 0, !dbg !265
  br i1 %tobool44.not108, label %for.cond.cleanup, label %for.body, !dbg !265

for.cond.cleanup:                                 ; preds = %for.body, %for.body.1, %for.body.2, %for.body.3, %if.end42
  %cmp47.not = icmp eq i32 %call22, 0, !dbg !266
  br i1 %cmp47.not, label %return, label %if.then49, !dbg !267

for.body:                                         ; preds = %if.end42
    #dbg_value(i64 %7, !186, !DIExpression(), !262)
  %8 = load i64, ptr %out_pos, align 8, !dbg !268
  %inc = add i64 %8, 1, !dbg !268
  store i64 %inc, ptr %out_pos, align 8, !dbg !268
  %arrayidx = getelementptr inbounds i8, ptr %out, i64 %8, !dbg !270
  store i8 0, ptr %arrayidx, align 1, !dbg !271
  %inc45 = add i64 %7, 1, !dbg !272
    #dbg_value(i64 %inc45, !186, !DIExpression(), !262)
  %and43 = and i64 %inc45, 3, !dbg !263
  %tobool44.not = icmp eq i64 %and43, 0, !dbg !265
  br i1 %tobool44.not, label %for.cond.cleanup, label %for.body.1, !dbg !265, !llvm.loop !273

for.body.1:                                       ; preds = %for.body
    #dbg_value(i64 %inc45, !186, !DIExpression(), !262)
  %9 = load i64, ptr %out_pos, align 8, !dbg !268
  %inc.1 = add i64 %9, 1, !dbg !268
  store i64 %inc.1, ptr %out_pos, align 8, !dbg !268
  %arrayidx.1 = getelementptr inbounds i8, ptr %out, i64 %9, !dbg !270
  store i8 0, ptr %arrayidx.1, align 1, !dbg !271
    #dbg_value(i64 %7, !186, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !262)
  %10 = and i64 %7, 3, !dbg !263
  %tobool44.not.1 = icmp eq i64 %10, 2, !dbg !265
  br i1 %tobool44.not.1, label %for.cond.cleanup, label %for.body.2, !dbg !265, !llvm.loop !273

for.body.2:                                       ; preds = %for.body.1
    #dbg_value(i64 %7, !186, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !262)
  %11 = load i64, ptr %out_pos, align 8, !dbg !268
  %inc.2 = add i64 %11, 1, !dbg !268
  store i64 %inc.2, ptr %out_pos, align 8, !dbg !268
  %arrayidx.2 = getelementptr inbounds i8, ptr %out, i64 %11, !dbg !270
  store i8 0, ptr %arrayidx.2, align 1, !dbg !271
  %inc45.2 = add i64 %7, 3, !dbg !272
    #dbg_value(i64 %inc45.2, !186, !DIExpression(), !262)
  %and43.2 = and i64 %inc45.2, 3, !dbg !263
  %tobool44.not.2 = icmp eq i64 %and43.2, 0, !dbg !265
  br i1 %tobool44.not.2, label %for.cond.cleanup, label %for.body.3, !dbg !265, !llvm.loop !273

for.body.3:                                       ; preds = %for.body.2
    #dbg_value(i64 %inc45.2, !186, !DIExpression(), !262)
  %12 = load i64, ptr %out_pos, align 8, !dbg !268
  %inc.3 = add i64 %12, 1, !dbg !268
  store i64 %inc.3, ptr %out_pos, align 8, !dbg !268
  %arrayidx.3 = getelementptr inbounds i8, ptr %out, i64 %12, !dbg !270
  store i8 0, ptr %arrayidx.3, align 1, !dbg !271
    #dbg_value(i64 %7, !186, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !262)
  br label %for.cond.cleanup

if.then49:                                        ; preds = %for.cond.cleanup
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %check50) #7, !dbg !275
  %13 = load i32, ptr %check, align 8, !dbg !276
  call void @lzma_check_init(ptr noundef nonnull %check50, i32 noundef %13) #7, !dbg !277
  %14 = load i32, ptr %check, align 8, !dbg !278
  call void @lzma_check_update(ptr noundef nonnull %check50, i32 noundef %14, ptr noundef %in, i64 noundef %in_size) #7, !dbg !279
  %15 = load i32, ptr %check, align 8, !dbg !280
  call void @lzma_check_finish(ptr noundef nonnull %check50, i32 noundef %15) #7, !dbg !281
  %raw_check = getelementptr inbounds i8, ptr %block, i64 40, !dbg !282
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %raw_check, ptr nonnull align 8 %check50, i64 %conv, i1 false), !dbg !283
  %16 = load i64, ptr %out_pos, align 8, !dbg !284
  %add.ptr = getelementptr inbounds i8, ptr %out, i64 %16, !dbg !285
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr nonnull align 8 %check50, i64 %conv, i1 false), !dbg !286
  %17 = load i64, ptr %out_pos, align 8, !dbg !287
  %add = add i64 %17, %conv, !dbg !287
  store i64 %add, ptr %out_pos, align 8, !dbg !287
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %check50) #7, !dbg !288
  br label %return, !dbg !289

return:                                           ; preds = %if.end19, %for.cond.cleanup, %if.then49, %if.end27, %do.body, %if.end16, %if.end11, %lor.lhs.false13, %if.end, %entry, %lor.lhs.false7, %lor.lhs.false
  %retval.3 = phi i32 [ 11, %lor.lhs.false ], [ 11, %lor.lhs.false7 ], [ 11, %entry ], [ 8, %if.end ], [ 11, %lor.lhs.false13 ], [ 11, %if.end11 ], [ 3, %if.end16 ], [ 10, %if.end19 ], [ %call37, %do.body ], [ %call29, %if.end27 ], [ 0, %if.then49 ], [ 0, %for.cond.cleanup ], !dbg !220
  ret i32 %retval.3, !dbg !290
}

declare !dbg !291 zeroext i8 @lzma_check_is_supported(i32 noundef) local_unnamed_addr #3

declare !dbg !294 i32 @lzma_check_size(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @block_encode_normal(ptr noundef %block, ptr noundef %allocator, ptr noundef %in, i64 noundef %in_size, ptr noundef %out, ptr noundef %out_pos, i64 noundef %out_size) unnamed_addr #2 !dbg !297 {
entry:
  %raw_encoder = alloca %struct.lzma_next_coder_s, align 8, !DIAssignID !354
    #dbg_assign(i1 undef, !309, !DIExpression(), !354, ptr %raw_encoder, !DIExpression(), !355)
  %in_pos = alloca i64, align 8, !DIAssignID !356
    #dbg_assign(i1 undef, !351, !DIExpression(), !356, ptr %in_pos, !DIExpression(), !357)
    #dbg_value(ptr %block, !299, !DIExpression(), !355)
    #dbg_value(ptr %allocator, !300, !DIExpression(), !355)
    #dbg_value(ptr %in, !301, !DIExpression(), !355)
    #dbg_value(i64 %in_size, !302, !DIExpression(), !355)
    #dbg_value(ptr %out, !303, !DIExpression(), !355)
    #dbg_value(ptr %out_pos, !304, !DIExpression(), !355)
    #dbg_value(i64 %out_size, !305, !DIExpression(), !355)
    #dbg_value(i64 %in_size, !75, !DIExpression(), !358)
  %cmp.i = icmp ugt i64 %in_size, 9223372036854774716, !dbg !360
  br i1 %cmp.i, label %lzma2_bound.exit.thread, label %if.end.i, !dbg !361

if.end.i:                                         ; preds = %entry
  %sub.i = add nuw i64 %in_size, 65535, !dbg !362
  %div11.i = lshr i64 %sub.i, 16, !dbg !363
  %mul.i = mul nuw nsw i64 %div11.i, 3, !dbg !364
    #dbg_value(i64 %mul.i, !80, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !358)
  %sub2.i = sub nuw nsw i64 9223372036854774715, %mul.i, !dbg !365
  %cmp3.i = icmp ult i64 %sub2.i, %in_size, !dbg !366
  br i1 %cmp3.i, label %lzma2_bound.exit.thread, label %if.end

lzma2_bound.exit.thread:                          ; preds = %entry, %if.end.i
  %compressed_size86 = getelementptr inbounds i8, ptr %block, i64 16, !dbg !367
  store i64 0, ptr %compressed_size86, align 8, !dbg !368
  br label %return, !dbg !369

if.end:                                           ; preds = %if.end.i
  %add1.i = add nuw nsw i64 %in_size, 1, !dbg !370
  %add6.i = add nuw i64 %add1.i, %mul.i, !dbg !370
  %compressed_size = getelementptr inbounds i8, ptr %block, i64 16, !dbg !367
  store i64 %add6.i, ptr %compressed_size, align 8, !dbg !368
  %uncompressed_size = getelementptr inbounds i8, ptr %block, i64 24, !dbg !371
  store i64 %in_size, ptr %uncompressed_size, align 8, !dbg !372
  %call2 = tail call i32 @lzma_block_header_size(ptr noundef %block) #7, !dbg !373
    #dbg_value(i32 %call2, !306, !DIExpression(), !374)
  %cmp3.not.not = icmp eq i32 %call2, 0, !dbg !375
  br i1 %cmp3.not.not, label %do.end, label %return

do.end:                                           ; preds = %if.end
  %0 = load i64, ptr %out_pos, align 8, !dbg !377
  %sub = sub i64 %out_size, %0, !dbg !379
  %header_size = getelementptr inbounds i8, ptr %block, i64 4, !dbg !380
  %1 = load i32, ptr %header_size, align 4, !dbg !380
  %conv = zext i32 %1 to i64, !dbg !381
  %cmp6.not = icmp ugt i64 %sub, %conv, !dbg !382
  br i1 %cmp6.not, label %if.end9, label %return, !dbg !383

if.end9:                                          ; preds = %do.end
    #dbg_value(i64 %0, !308, !DIExpression(), !355)
  %add = add i64 %0, %conv, !dbg !384
  store i64 %add, ptr %out_pos, align 8, !dbg !384
  %2 = load i64, ptr %compressed_size, align 8, !dbg !385
    #dbg_value(i64 poison, !305, !DIExpression(), !355)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %raw_encoder) #7, !dbg !387
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %raw_encoder, i8 0, i64 64, i1 false), !dbg !388, !DIAssignID !389
    #dbg_assign(i8 0, !309, !DIExpression(), !389, ptr %raw_encoder, !DIExpression(), !355)
  %3 = getelementptr inbounds i8, ptr %raw_encoder, i64 8, !dbg !388
  store i64 -1, ptr %3, align 8, !dbg !388, !DIAssignID !390
    #dbg_assign(i64 -1, !309, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !390, ptr %3, !DIExpression(), !355)
  %filters = getelementptr inbounds i8, ptr %block, i64 32, !dbg !391
  %4 = load ptr, ptr %filters, align 8, !dbg !391
  %call20 = call i32 @lzma_raw_encoder_init(ptr noundef nonnull %raw_encoder, ptr noundef %allocator, ptr noundef %4) #7, !dbg !392
    #dbg_value(i32 %call20, !350, !DIExpression(), !355)
  %cmp21 = icmp eq i32 %call20, 0, !dbg !393
  br i1 %cmp21, label %if.then23, label %if.end25, !dbg !394

if.then23:                                        ; preds = %if.end9
  %sub12 = sub i64 %out_size, %add, !dbg !395
  %cmp14 = icmp ugt i64 %sub12, %2, !dbg !396
  %add18 = add i64 %2, %add
  %spec.select = select i1 %cmp14, i64 %add18, i64 %out_size, !dbg !397
    #dbg_value(i64 %spec.select, !305, !DIExpression(), !355)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %in_pos) #7, !dbg !398
  store i64 0, ptr %in_pos, align 8, !dbg !399, !DIAssignID !400
    #dbg_assign(i64 0, !351, !DIExpression(), !400, ptr %in_pos, !DIExpression(), !357)
  %code = getelementptr inbounds i8, ptr %raw_encoder, i64 24, !dbg !401
  %5 = load ptr, ptr %code, align 8, !dbg !401
  %6 = load ptr, ptr %raw_encoder, align 8, !dbg !402
  %call24 = call i32 %5(ptr noundef %6, ptr noundef %allocator, ptr noundef %in, ptr noundef nonnull %in_pos, i64 noundef %in_size, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %spec.select, i32 noundef 3) #7, !dbg !403
    #dbg_value(i32 %call24, !350, !DIExpression(), !355)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in_pos) #7, !dbg !404
  br label %if.end25, !dbg !405

if.end25:                                         ; preds = %if.then23, %if.end9
  %ret.0 = phi i32 [ %call24, %if.then23 ], [ %call20, %if.end9 ], !dbg !355
    #dbg_value(i32 %ret.0, !350, !DIExpression(), !355)
  call void @lzma_next_end(ptr noundef nonnull %raw_encoder, ptr noundef %allocator) #7, !dbg !406
  switch i32 %ret.0, label %if.then46 [
    i32 1, label %if.then28
    i32 0, label %select.unfold89
  ], !dbg !407

if.then28:                                        ; preds = %if.end25
  %7 = load i64, ptr %out_pos, align 8, !dbg !408
  %8 = load i32, ptr %header_size, align 4, !dbg !411
  %conv30 = zext i32 %8 to i64, !dbg !412
  %9 = add i64 %0, %conv30, !dbg !413
  %sub32 = sub i64 %7, %9, !dbg !413
  store i64 %sub32, ptr %compressed_size, align 8, !dbg !414
  %add.ptr = getelementptr inbounds i8, ptr %out, i64 %0, !dbg !415
  %call34 = call i32 @lzma_block_header_encode(ptr noundef nonnull %block, ptr noundef %add.ptr) #7, !dbg !416
    #dbg_value(i32 %call34, !350, !DIExpression(), !355)
  %cmp35.not = icmp eq i32 %call34, 0, !dbg !417
    #dbg_value(i32 undef, !350, !DIExpression(), !355)
  br i1 %cmp35.not, label %if.end47, label %if.then46, !dbg !419

select.unfold89:                                  ; preds = %if.end25
  br label %if.then46

if.then46:                                        ; preds = %if.end25, %if.then28, %select.unfold89
  %ret.1.ph = phi i32 [ 10, %select.unfold89 ], [ 11, %if.then28 ], [ %ret.0, %if.end25 ]
    #dbg_value(i32 %ret.1.ph, !350, !DIExpression(), !355)
  store i64 %0, ptr %out_pos, align 8, !dbg !420
  br label %if.end47, !dbg !422

if.end47:                                         ; preds = %if.then28, %if.then46
  %ret.193 = phi i32 [ %ret.1.ph, %if.then46 ], [ 0, %if.then28 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %raw_encoder) #7, !dbg !423
  br label %return

return:                                           ; preds = %lzma2_bound.exit.thread, %if.end, %do.end, %if.end47
  %retval.1 = phi i32 [ %call2, %if.end ], [ %ret.193, %if.end47 ], [ 10, %do.end ], [ 9, %lzma2_bound.exit.thread ], !dbg !355
  ret i32 %retval.1, !dbg !423
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 12) i32 @block_encode_uncompressed(ptr noundef %block, ptr nocapture noundef readonly %in, i64 noundef %in_size, ptr noundef %out, ptr nocapture noundef %out_pos, i64 noundef %out_size) unnamed_addr #2 !dbg !424 {
entry:
  %lzma2 = alloca %struct.lzma_options_lzma, align 8, !DIAssignID !473
    #dbg_assign(i1 undef, !434, !DIExpression(), !473, ptr %lzma2, !DIExpression(), !474)
  %filters = alloca [2 x %struct.lzma_filter], align 16, !DIAssignID !475
    #dbg_assign(i1 undef, !464, !DIExpression(), !475, ptr %filters, !DIExpression(), !474)
    #dbg_value(ptr %block, !428, !DIExpression(), !474)
    #dbg_value(ptr %in, !429, !DIExpression(), !474)
    #dbg_value(i64 %in_size, !430, !DIExpression(), !474)
    #dbg_value(ptr %out, !431, !DIExpression(), !474)
    #dbg_value(ptr %out_pos, !432, !DIExpression(), !474)
    #dbg_value(i64 %out_size, !433, !DIExpression(), !474)
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %lzma2) #7, !dbg !476
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %lzma2, i8 0, i64 112, i1 false), !dbg !477, !DIAssignID !478
    #dbg_assign(i8 0, !434, !DIExpression(), !478, ptr %lzma2, !DIExpression(), !474)
  store i32 4096, ptr %lzma2, align 8, !dbg !477, !DIAssignID !479
    #dbg_assign(i32 4096, !434, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !479, ptr %lzma2, !DIExpression(), !474)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %filters) #7, !dbg !480
  store i64 33, ptr %filters, align 16, !dbg !481, !DIAssignID !482
    #dbg_assign(i64 33, !464, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !482, ptr %filters, !DIExpression(), !474)
  %options = getelementptr inbounds i8, ptr %filters, i64 8, !dbg !483
  store ptr %lzma2, ptr %options, align 8, !dbg !484, !DIAssignID !485
    #dbg_assign(ptr %lzma2, !464, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !485, ptr %options, !DIExpression(), !474)
  %arrayidx2 = getelementptr inbounds i8, ptr %filters, i64 16, !dbg !486
  store i64 -1, ptr %arrayidx2, align 16, !dbg !487, !DIAssignID !488
    #dbg_assign(i64 -1, !464, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !488, ptr %arrayidx2, !DIExpression(), !474)
  %filters4 = getelementptr inbounds i8, ptr %block, i64 32, !dbg !489
  %0 = load ptr, ptr %filters4, align 8, !dbg !489
    #dbg_value(ptr %0, !468, !DIExpression(), !474)
  store ptr %filters, ptr %filters4, align 8, !dbg !490
  %call = call i32 @lzma_block_header_size(ptr noundef %block) #7, !dbg !491
  %cmp.not = icmp eq i32 %call, 0, !dbg !493
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !494

if.then:                                          ; preds = %entry
  store ptr %0, ptr %filters4, align 8, !dbg !495
  br label %cleanup, !dbg !497

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %out_pos, align 8, !dbg !498
  %sub = sub i64 %out_size, %1, !dbg !500
  %header_size = getelementptr inbounds i8, ptr %block, i64 4, !dbg !501
  %2 = load i32, ptr %header_size, align 4, !dbg !501
  %conv = zext i32 %2 to i64, !dbg !502
  %compressed_size = getelementptr inbounds i8, ptr %block, i64 16, !dbg !503
  %3 = load i64, ptr %compressed_size, align 8, !dbg !503
  %add = add i64 %3, %conv, !dbg !504
  %cmp7 = icmp ult i64 %sub, %add, !dbg !505
  br i1 %cmp7, label %if.then9, label %if.end11, !dbg !506

if.then9:                                         ; preds = %if.end
  store ptr %0, ptr %filters4, align 8, !dbg !507
  br label %cleanup, !dbg !509

if.end11:                                         ; preds = %if.end
  %add.ptr = getelementptr inbounds i8, ptr %out, i64 %1, !dbg !510
  %call12 = call i32 @lzma_block_header_encode(ptr noundef nonnull %block, ptr noundef %add.ptr) #7, !dbg !512
  %cmp13.not = icmp eq i32 %call12, 0, !dbg !513
  store ptr %0, ptr %filters4, align 8, !dbg !474
  br i1 %cmp13.not, label %if.end17, label %cleanup, !dbg !514

if.end17:                                         ; preds = %if.end11
  %4 = load i32, ptr %header_size, align 4, !dbg !515
  %conv20 = zext i32 %4 to i64, !dbg !516
  %5 = load i64, ptr %out_pos, align 8, !dbg !517
  %add21 = add i64 %5, %conv20, !dbg !517
    #dbg_value(i64 0, !469, !DIExpression(), !474)
    #dbg_value(i8 1, !470, !DIExpression(), !474)
  %cmp2281.not = icmp eq i64 %in_size, 0, !dbg !518
  br i1 %cmp2281.not, label %while.end, label %while.body.preheader, !dbg !519

while.body.preheader:                             ; preds = %if.end17
    #dbg_value(i8 1, !470, !DIExpression(), !474)
    #dbg_value(i64 0, !469, !DIExpression(), !474)
  %inc.peel = add i64 %add21, 1, !dbg !520
  store i64 %inc.peel, ptr %out_pos, align 8, !dbg !520
  %arrayidx24.peel = getelementptr inbounds i8, ptr %out, i64 %add21, !dbg !521
  store i8 1, ptr %arrayidx24.peel, align 1, !dbg !522
    #dbg_value(i8 2, !470, !DIExpression(), !474)
  %cond.peel = call i64 @llvm.umin.i64(i64 %in_size, i64 65536), !dbg !523
    #dbg_value(i64 %cond.peel, !471, !DIExpression(), !524)
  %sub29.peel = add nsw i64 %cond.peel, -1, !dbg !525
  %shr.peel = lshr i64 %sub29.peel, 8, !dbg !526
  %conv30.peel = trunc i64 %shr.peel to i8, !dbg !527
  %6 = load i64, ptr %out_pos, align 8, !dbg !528
  %inc31.peel = add i64 %6, 1, !dbg !528
  store i64 %inc31.peel, ptr %out_pos, align 8, !dbg !528
  %arrayidx32.peel = getelementptr inbounds i8, ptr %out, i64 %6, !dbg !529
  store i8 %conv30.peel, ptr %arrayidx32.peel, align 1, !dbg !530
  %conv34.peel = trunc i64 %sub29.peel to i8, !dbg !531
  %7 = load i64, ptr %out_pos, align 8, !dbg !532
  %inc35.peel = add i64 %7, 1, !dbg !532
  store i64 %inc35.peel, ptr %out_pos, align 8, !dbg !532
  %arrayidx36.peel = getelementptr inbounds i8, ptr %out, i64 %7, !dbg !533
  store i8 %conv34.peel, ptr %arrayidx36.peel, align 1, !dbg !534
  %8 = load i64, ptr %out_pos, align 8, !dbg !535
  %add.ptr37.peel = getelementptr inbounds i8, ptr %out, i64 %8, !dbg !536
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr37.peel, ptr align 1 %in, i64 %cond.peel, i1 false), !dbg !537
    #dbg_value(i64 %cond.peel, !469, !DIExpression(), !474)
  %9 = load i64, ptr %out_pos, align 8, !dbg !538
  %add40.peel = add i64 %9, %cond.peel, !dbg !538
  %cmp22.peel = icmp ugt i64 %in_size, 65536, !dbg !518
  br i1 %cmp22.peel, label %while.body, label %while.end, !dbg !519

while.body:                                       ; preds = %while.body.preheader, %while.body
  %in_pos.083 = phi i64 [ %add39, %while.body ], [ %cond.peel, %while.body.preheader ]
  %storemerge82 = phi i64 [ %add40, %while.body ], [ %add40.peel, %while.body.preheader ]
    #dbg_value(i8 2, !470, !DIExpression(), !474)
    #dbg_value(i64 %in_pos.083, !469, !DIExpression(), !474)
  %inc = add i64 %storemerge82, 1, !dbg !520
  store i64 %inc, ptr %out_pos, align 8, !dbg !520
  %arrayidx24 = getelementptr inbounds i8, ptr %out, i64 %storemerge82, !dbg !521
  store i8 2, ptr %arrayidx24, align 1, !dbg !522
  %sub25 = sub i64 %in_size, %in_pos.083, !dbg !523
  %cond = call i64 @llvm.umin.i64(i64 %sub25, i64 65536), !dbg !523
    #dbg_value(i64 %cond, !471, !DIExpression(), !524)
  %sub29 = add nsw i64 %cond, -1, !dbg !525
  %shr = lshr i64 %sub29, 8, !dbg !526
  %conv30 = trunc i64 %shr to i8, !dbg !527
  %10 = load i64, ptr %out_pos, align 8, !dbg !528
  %inc31 = add i64 %10, 1, !dbg !528
  store i64 %inc31, ptr %out_pos, align 8, !dbg !528
  %arrayidx32 = getelementptr inbounds i8, ptr %out, i64 %10, !dbg !529
  store i8 %conv30, ptr %arrayidx32, align 1, !dbg !530
  %conv34 = trunc i64 %sub29 to i8, !dbg !531
  %11 = load i64, ptr %out_pos, align 8, !dbg !532
  %inc35 = add i64 %11, 1, !dbg !532
  store i64 %inc35, ptr %out_pos, align 8, !dbg !532
  %arrayidx36 = getelementptr inbounds i8, ptr %out, i64 %11, !dbg !533
  store i8 %conv34, ptr %arrayidx36, align 1, !dbg !534
  %12 = load i64, ptr %out_pos, align 8, !dbg !535
  %add.ptr37 = getelementptr inbounds i8, ptr %out, i64 %12, !dbg !536
  %add.ptr38 = getelementptr inbounds i8, ptr %in, i64 %in_pos.083, !dbg !539
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr37, ptr align 1 %add.ptr38, i64 %cond, i1 false), !dbg !537
  %add39 = add i64 %cond, %in_pos.083, !dbg !540
    #dbg_value(i64 %add39, !469, !DIExpression(), !474)
  %13 = load i64, ptr %out_pos, align 8, !dbg !538
  %add40 = add i64 %13, %cond, !dbg !538
  store i64 %add40, ptr %out_pos, align 8, !dbg !474
  %cmp22 = icmp ult i64 %add39, %in_size, !dbg !518
  br i1 %cmp22, label %while.body, label %while.end, !dbg !519, !llvm.loop !541

while.end:                                        ; preds = %while.body, %while.body.preheader, %if.end17
  %storemerge.lcssa = phi i64 [ %add21, %if.end17 ], [ %add40.peel, %while.body.preheader ], [ %add40, %while.body ], !dbg !474
  %inc41 = add i64 %storemerge.lcssa, 1, !dbg !544
  store i64 %inc41, ptr %out_pos, align 8, !dbg !544
  %arrayidx42 = getelementptr inbounds i8, ptr %out, i64 %storemerge.lcssa, !dbg !545
  store i8 0, ptr %arrayidx42, align 1, !dbg !546
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %while.end, %if.then9, %if.then
  %retval.0 = phi i32 [ 11, %if.then ], [ 10, %if.then9 ], [ 0, %while.end ], [ 11, %if.end11 ], !dbg !474
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %filters) #7, !dbg !547
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %lzma2) #7, !dbg !547
  ret i32 %retval.0, !dbg !547
}

declare !dbg !548 void @lzma_check_init(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !552 void @lzma_check_update(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !555 void @lzma_check_finish(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare !dbg !556 i32 @lzma_block_header_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare !dbg !559 i32 @lzma_raw_encoder_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !564 void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !567 i32 @lzma_block_header_encode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !47, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "liblzma/common/block_buffer_encoder.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "898d84ac5cb0ab1b377dfd08911813d3")
!2 = !{!3, !19, !26, !29, !35, !40}
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
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 27, baseType: !5, size: 32, elements: !21)
!20 = !DIFile(filename: "liblzma/api/lzma/check.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "b07c3297e2bcc14bb477793d08325ee3")
!21 = !{!22, !23, !24, !25}
!22 = !DIEnumerator(name: "LZMA_CHECK_NONE", value: 0)
!23 = !DIEnumerator(name: "LZMA_CHECK_CRC32", value: 1)
!24 = !DIEnumerator(name: "LZMA_CHECK_CRC64", value: 4)
!25 = !DIEnumerator(name: "LZMA_CHECK_SHA256", value: 10)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 44, baseType: !5, size: 32, elements: !27)
!27 = !{!28}
!28 = !DIEnumerator(name: "LZMA_RESERVED_ENUM", value: 0)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 250, baseType: !5, size: 32, elements: !30)
!30 = !{!31, !32, !33, !34}
!31 = !DIEnumerator(name: "LZMA_RUN", value: 0)
!32 = !DIEnumerator(name: "LZMA_SYNC_FLUSH", value: 1)
!33 = !DIEnumerator(name: "LZMA_FULL_FLUSH", value: 2)
!34 = !DIEnumerator(name: "LZMA_FINISH", value: 3)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 138, baseType: !5, size: 32, elements: !37)
!36 = !DIFile(filename: "liblzma/api/lzma/lzma.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "c59c540efa0aff44f03d71331089fff8")
!37 = !{!38, !39}
!38 = !DIEnumerator(name: "LZMA_MODE_FAST", value: 1)
!39 = !DIEnumerator(name: "LZMA_MODE_NORMAL", value: 2)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 58, baseType: !5, size: 32, elements: !41)
!41 = !{!42, !43, !44, !45, !46}
!42 = !DIEnumerator(name: "LZMA_MF_HC3", value: 3)
!43 = !DIEnumerator(name: "LZMA_MF_HC4", value: 4)
!44 = !DIEnumerator(name: "LZMA_MF_BT2", value: 18)
!45 = !DIEnumerator(name: "LZMA_MF_BT3", value: 19)
!46 = !DIEnumerator(name: "LZMA_MF_BT4", value: 20)
!47 = !{!48, !5, !49, !52}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !50, line: 18, baseType: !51)
!50 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!51 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !53, line: 90, baseType: !51)
!53 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!54 = !{i32 7, !"Dwarf Version", i32 5}
!55 = !{i32 2, !"Debug Info Version", i32 3}
!56 = !{i32 1, !"wchar_size", i32 4}
!57 = !{i32 8, !"PIC Level", i32 2}
!58 = !{i32 7, !"PIE Level", i32 2}
!59 = !{i32 7, !"uwtable", i32 2}
!60 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!61 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!62 = distinct !DISubprogram(name: "lzma_block_buffer_bound", scope: !1, file: !1, line: 55, type: !63, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !65)
!63 = !DISubroutineType(types: !64)
!64 = !{!49, !49}
!65 = !{!66, !67}
!66 = !DILocalVariable(name: "uncompressed_size", arg: 1, scope: !62, file: !1, line: 55, type: !49)
!67 = !DILocalVariable(name: "lzma2_size", scope: !62, file: !1, line: 62, type: !68)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !69, line: 63, baseType: !70)
!69 = !DIFile(filename: "liblzma/api/lzma/vli.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !71, line: 27, baseType: !72)
!71 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !73, line: 45, baseType: !51)
!73 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!74 = !DILocation(line: 0, scope: !62)
!75 = !DILocalVariable(name: "uncompressed_size", arg: 1, scope: !76, file: !1, line: 32, type: !68)
!76 = distinct !DISubprogram(name: "lzma2_bound", scope: !1, file: !1, line: 32, type: !77, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !79)
!77 = !DISubroutineType(types: !78)
!78 = !{!68, !68}
!79 = !{!75, !80}
!80 = !DILocalVariable(name: "overhead", scope: !76, file: !1, line: 42, type: !81)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!82 = !DILocation(line: 0, scope: !76, inlinedAt: !83)
!83 = distinct !DILocation(line: 62, column: 24, scope: !62)
!84 = !DILocation(line: 35, column: 24, scope: !85, inlinedAt: !83)
!85 = distinct !DILexicalBlock(scope: !76, file: !1, line: 35, column: 6)
!86 = !DILocation(line: 35, column: 6, scope: !76, inlinedAt: !83)
!87 = !DILocation(line: 42, column: 66, scope: !76, inlinedAt: !83)
!88 = !DILocation(line: 43, column: 5, scope: !76, inlinedAt: !83)
!89 = !DILocation(line: 44, column: 4, scope: !76, inlinedAt: !83)
!90 = !DILocation(line: 47, column: 26, scope: !91, inlinedAt: !83)
!91 = distinct !DILexicalBlock(scope: !76, file: !1, line: 47, column: 6)
!92 = !DILocation(line: 47, column: 37, scope: !91, inlinedAt: !83)
!93 = !DILocation(line: 47, column: 6, scope: !76, inlinedAt: !83)
!94 = !DILocation(line: 63, column: 6, scope: !62)
!95 = !DILocation(line: 78, column: 1, scope: !62)
!96 = distinct !DISubprogram(name: "lzma_block_buffer_encode", scope: !1, file: !1, line: 225, type: !97, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !170)
!97 = !DISubroutineType(types: !98)
!98 = !{!99, !100, !153, !166, !49, !168, !169, !49}
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_block", file: !102, line: 245, baseType: !103)
!102 = !DIFile(filename: "liblzma/api/lzma/block.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "bf8cbafce550217b909c63081e414910")
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !102, line: 30, size: 1664, elements: !104)
!104 = !{!105, !108, !109, !111, !112, !113, !121, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !141, !142, !143, !144, !146, !147, !148, !149, !150, !151, !152}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !103, file: !102, line: 47, baseType: !106, size: 32)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !71, line: 26, baseType: !107)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !73, line: 42, baseType: !5)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !103, file: !102, line: 67, baseType: !106, size: 32, offset: 32)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !103, file: !102, line: 88, baseType: !110, size: 32, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !20, line: 55, baseType: !19)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_size", scope: !103, file: !102, line: 143, baseType: !68, size: 64, offset: 128)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_size", scope: !103, file: !102, line: 167, baseType: !68, size: 64, offset: 192)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "filters", scope: !103, file: !102, line: 195, baseType: !114, size: 64, offset: 256)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !116, line: 65, baseType: !117)
!116 = !DIFile(filename: "liblzma/api/lzma/filter.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !116, line: 43, size: 128, elements: !118)
!118 = !{!119, !120}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !117, file: !116, line: 54, baseType: !68, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !117, file: !116, line: 63, baseType: !48, size: 64, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "raw_check", scope: !103, file: !102, line: 212, baseType: !122, size: 512, offset: 320)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 512, elements: !126)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !71, line: 24, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !73, line: 38, baseType: !125)
!125 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!126 = !{!127}
!127 = !DISubrange(count: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !103, file: !102, line: 221, baseType: !48, size: 64, offset: 832)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !103, file: !102, line: 222, baseType: !48, size: 64, offset: 896)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !103, file: !102, line: 223, baseType: !48, size: 64, offset: 960)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !103, file: !102, line: 224, baseType: !106, size: 32, offset: 1024)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !103, file: !102, line: 225, baseType: !106, size: 32, offset: 1056)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !103, file: !102, line: 226, baseType: !68, size: 64, offset: 1088)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !103, file: !102, line: 227, baseType: !68, size: 64, offset: 1152)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int5", scope: !103, file: !102, line: 228, baseType: !68, size: 64, offset: 1216)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int6", scope: !103, file: !102, line: 229, baseType: !68, size: 64, offset: 1280)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int7", scope: !103, file: !102, line: 230, baseType: !68, size: 64, offset: 1344)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int8", scope: !103, file: !102, line: 231, baseType: !68, size: 64, offset: 1408)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !103, file: !102, line: 232, baseType: !140, size: 32, offset: 1472)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !4, line: 46, baseType: !26)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !103, file: !102, line: 233, baseType: !140, size: 32, offset: 1504)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !103, file: !102, line: 234, baseType: !140, size: 32, offset: 1536)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !103, file: !102, line: 235, baseType: !140, size: 32, offset: 1568)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool1", scope: !103, file: !102, line: 236, baseType: !145, size: 8, offset: 1600)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_bool", file: !4, line: 29, baseType: !125)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool2", scope: !103, file: !102, line: 237, baseType: !145, size: 8, offset: 1608)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool3", scope: !103, file: !102, line: 238, baseType: !145, size: 8, offset: 1616)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool4", scope: !103, file: !102, line: 239, baseType: !145, size: 8, offset: 1624)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool5", scope: !103, file: !102, line: 240, baseType: !145, size: 8, offset: 1632)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool6", scope: !103, file: !102, line: 241, baseType: !145, size: 8, offset: 1640)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool7", scope: !103, file: !102, line: 242, baseType: !145, size: 8, offset: 1648)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool8", scope: !103, file: !102, line: 243, baseType: !145, size: 8, offset: 1656)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !4, line: 403, baseType: !155)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 341, size: 192, elements: !156)
!156 = !{!157, !161, !165}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !155, file: !4, line: 376, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DISubroutineType(types: !160)
!160 = !{!48, !48, !49, !49}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !155, file: !4, line: 390, baseType: !162, size: 64, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DISubroutineType(types: !164)
!164 = !{null, !48, !48}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !155, file: !4, line: 401, baseType: !48, size: 64, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!170 = !{!171, !172, !173, !174, !175, !176, !177, !178, !180, !182, !186, !188}
!171 = !DILocalVariable(name: "block", arg: 1, scope: !96, file: !1, line: 225, type: !100)
!172 = !DILocalVariable(name: "allocator", arg: 2, scope: !96, file: !1, line: 225, type: !153)
!173 = !DILocalVariable(name: "in", arg: 3, scope: !96, file: !1, line: 226, type: !166)
!174 = !DILocalVariable(name: "in_size", arg: 4, scope: !96, file: !1, line: 226, type: !49)
!175 = !DILocalVariable(name: "out", arg: 5, scope: !96, file: !1, line: 227, type: !168)
!176 = !DILocalVariable(name: "out_pos", arg: 6, scope: !96, file: !1, line: 227, type: !169)
!177 = !DILocalVariable(name: "out_size", arg: 7, scope: !96, file: !1, line: 227, type: !49)
!178 = !DILocalVariable(name: "check_size", scope: !96, file: !1, line: 252, type: !179)
!179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!180 = !DILocalVariable(name: "ret", scope: !96, file: !1, line: 262, type: !181)
!181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!182 = !DILocalVariable(name: "ret_", scope: !183, file: !1, line: 275, type: !181)
!183 = distinct !DILexicalBlock(scope: !184, file: !1, line: 275, column: 3)
!184 = distinct !DILexicalBlock(scope: !185, file: !1, line: 264, column: 22)
!185 = distinct !DILexicalBlock(scope: !96, file: !1, line: 264, column: 6)
!186 = !DILocalVariable(name: "i", scope: !187, file: !1, line: 284, type: !49)
!187 = distinct !DILexicalBlock(scope: !96, file: !1, line: 284, column: 2)
!188 = !DILocalVariable(name: "check", scope: !189, file: !1, line: 294, type: !191)
!189 = distinct !DILexicalBlock(scope: !190, file: !1, line: 290, column: 22)
!190 = distinct !DILexicalBlock(scope: !96, file: !1, line: 290, column: 6)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check_state", file: !192, line: 56, baseType: !193)
!192 = !DIFile(filename: "liblzma/check/check.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "938220df6e0ab33115ef85b0d8c70c5b")
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !192, line: 34, size: 832, elements: !194)
!194 = !{!195, !207}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !193, file: !192, line: 40, baseType: !196, size: 512)
!196 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !193, file: !192, line: 36, size: 512, elements: !197)
!197 = !{!198, !199, !203}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "u8", scope: !196, file: !192, line: 37, baseType: !122, size: 512)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "u32", scope: !196, file: !192, line: 38, baseType: !200, size: 512)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 512, elements: !201)
!201 = !{!202}
!202 = !DISubrange(count: 16)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !196, file: !192, line: 39, baseType: !204, size: 512)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 512, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 8)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !193, file: !192, line: 54, baseType: !208, size: 320, offset: 512)
!208 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !193, file: !192, line: 43, size: 320, elements: !209)
!209 = !{!210, !211, !212}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "crc32", scope: !208, file: !192, line: 44, baseType: !106, size: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "crc64", scope: !208, file: !192, line: 45, baseType: !70, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "sha256", scope: !208, file: !192, line: 53, baseType: !213, size: 320)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !208, file: !192, line: 47, size: 320, elements: !214)
!214 = !{!215, !217}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !213, file: !192, line: 49, baseType: !216, size: 256)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 256, elements: !205)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !213, file: !192, line: 52, baseType: !70, size: 64, offset: 256)
!218 = distinct !DIAssignID()
!219 = !DILocation(line: 0, scope: !189)
!220 = !DILocation(line: 0, scope: !96)
!221 = !DILocation(line: 230, column: 12, scope: !222)
!222 = distinct !DILexicalBlock(scope: !96, file: !1, line: 230, column: 6)
!223 = !DILocation(line: 230, column: 20, scope: !222)
!224 = !DILocation(line: 230, column: 27, scope: !222)
!225 = !DILocation(line: 230, column: 35, scope: !222)
!226 = !DILocation(line: 231, column: 26, scope: !222)
!227 = !DILocation(line: 231, column: 35, scope: !222)
!228 = !DILocation(line: 230, column: 6, scope: !96)
!229 = !DILocation(line: 236, column: 13, scope: !230)
!230 = distinct !DILexicalBlock(scope: !96, file: !1, line: 236, column: 6)
!231 = !DILocation(line: 236, column: 21, scope: !230)
!232 = !DILocation(line: 236, column: 6, scope: !96)
!233 = !DILocation(line: 239, column: 28, scope: !234)
!234 = distinct !DILexicalBlock(scope: !96, file: !1, line: 239, column: 6)
!235 = !DILocation(line: 239, column: 35, scope: !234)
!236 = !DILocation(line: 240, column: 4, scope: !234)
!237 = !DILocation(line: 240, column: 14, scope: !234)
!238 = !DILocation(line: 240, column: 22, scope: !234)
!239 = !DILocation(line: 239, column: 6, scope: !96)
!240 = !DILocation(line: 243, column: 7, scope: !241)
!241 = distinct !DILexicalBlock(scope: !96, file: !1, line: 243, column: 6)
!242 = !DILocation(line: 243, column: 6, scope: !96)
!243 = !DILocation(line: 249, column: 26, scope: !96)
!244 = !DILocation(line: 249, column: 24, scope: !96)
!245 = !DILocation(line: 249, column: 36, scope: !96)
!246 = !DILocation(line: 249, column: 11, scope: !96)
!247 = !DILocation(line: 252, column: 51, scope: !96)
!248 = !DILocation(line: 252, column: 28, scope: !96)
!249 = !DILocation(line: 256, column: 17, scope: !250)
!250 = distinct !DILexicalBlock(scope: !96, file: !1, line: 256, column: 6)
!251 = !DILocation(line: 256, column: 15, scope: !250)
!252 = !DILocation(line: 256, column: 26, scope: !250)
!253 = !DILocation(line: 256, column: 6, scope: !96)
!254 = !DILocation(line: 259, column: 11, scope: !96)
!255 = !DILocation(line: 262, column: 23, scope: !96)
!256 = !DILocation(line: 264, column: 6, scope: !96)
!257 = !DILocation(line: 275, column: 3, scope: !183)
!258 = !DILocation(line: 0, scope: !183)
!259 = !DILocation(line: 275, column: 3, scope: !260)
!260 = distinct !DILexicalBlock(scope: !183, file: !1, line: 275, column: 3)
!261 = !DILocation(line: 284, column: 34, scope: !187)
!262 = !DILocation(line: 0, scope: !187)
!263 = !DILocation(line: 284, column: 54, scope: !264)
!264 = distinct !DILexicalBlock(scope: !187, file: !1, line: 284, column: 2)
!265 = !DILocation(line: 284, column: 2, scope: !187)
!266 = !DILocation(line: 290, column: 17, scope: !190)
!267 = !DILocation(line: 290, column: 6, scope: !96)
!268 = !DILocation(line: 286, column: 17, scope: !269)
!269 = distinct !DILexicalBlock(scope: !264, file: !1, line: 284, column: 64)
!270 = !DILocation(line: 286, column: 3, scope: !269)
!271 = !DILocation(line: 286, column: 21, scope: !269)
!272 = !DILocation(line: 284, column: 59, scope: !264)
!273 = distinct !{!273, !265, !274}
!274 = !DILocation(line: 287, column: 2, scope: !187)
!275 = !DILocation(line: 294, column: 3, scope: !189)
!276 = !DILocation(line: 295, column: 34, scope: !189)
!277 = !DILocation(line: 295, column: 3, scope: !189)
!278 = !DILocation(line: 296, column: 36, scope: !189)
!279 = !DILocation(line: 296, column: 3, scope: !189)
!280 = !DILocation(line: 297, column: 36, scope: !189)
!281 = !DILocation(line: 297, column: 3, scope: !189)
!282 = !DILocation(line: 299, column: 17, scope: !189)
!283 = !DILocation(line: 299, column: 3, scope: !189)
!284 = !DILocation(line: 300, column: 16, scope: !189)
!285 = !DILocation(line: 300, column: 14, scope: !189)
!286 = !DILocation(line: 300, column: 3, scope: !189)
!287 = !DILocation(line: 301, column: 12, scope: !189)
!288 = !DILocation(line: 302, column: 2, scope: !190)
!289 = !DILocation(line: 302, column: 2, scope: !189)
!290 = !DILocation(line: 305, column: 1, scope: !96)
!291 = !DISubprogram(name: "lzma_check_is_supported", scope: !20, file: !20, line: 81, type: !292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!292 = !DISubroutineType(types: !293)
!293 = !{!145, !110}
!294 = !DISubprogram(name: "lzma_check_size", scope: !20, file: !20, line: 95, type: !295, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!295 = !DISubroutineType(types: !296)
!296 = !{!106, !110}
!297 = distinct !DISubprogram(name: "block_encode_normal", scope: !1, file: !1, line: 163, type: !97, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !298)
!298 = !{!299, !300, !301, !302, !303, !304, !305, !306, !308, !309, !350, !351}
!299 = !DILocalVariable(name: "block", arg: 1, scope: !297, file: !1, line: 163, type: !100)
!300 = !DILocalVariable(name: "allocator", arg: 2, scope: !297, file: !1, line: 163, type: !153)
!301 = !DILocalVariable(name: "in", arg: 3, scope: !297, file: !1, line: 164, type: !166)
!302 = !DILocalVariable(name: "in_size", arg: 4, scope: !297, file: !1, line: 164, type: !49)
!303 = !DILocalVariable(name: "out", arg: 5, scope: !297, file: !1, line: 165, type: !168)
!304 = !DILocalVariable(name: "out_pos", arg: 6, scope: !297, file: !1, line: 165, type: !169)
!305 = !DILocalVariable(name: "out_size", arg: 7, scope: !297, file: !1, line: 165, type: !49)
!306 = !DILocalVariable(name: "ret_", scope: !307, file: !1, line: 173, type: !181)
!307 = distinct !DILexicalBlock(scope: !297, file: !1, line: 173, column: 2)
!308 = !DILocalVariable(name: "out_start", scope: !297, file: !1, line: 179, type: !179)
!309 = !DILocalVariable(name: "raw_encoder", scope: !297, file: !1, line: 189, type: !310)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_next_coder", file: !311, line: 80, baseType: !312)
!311 = !DIFile(filename: "liblzma/common/common.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_next_coder_s", file: !311, line: 124, size: 512, elements: !313)
!313 = !{!314, !317, !318, !319, !328, !333, !339, !344}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !312, file: !311, line: 126, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_coder", file: !311, line: 78, baseType: null)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !312, file: !311, line: 130, baseType: !68, size: 64, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !312, file: !311, line: 136, baseType: !52, size: 64, offset: 128)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !312, file: !311, line: 139, baseType: !320, size: 64, offset: 192)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_code_function", file: !311, line: 94, baseType: !321)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DISubroutineType(types: !323)
!323 = !{!99, !315, !153, !324, !325, !49, !326, !325, !49, !327}
!324 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !166)
!325 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !169)
!326 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !168)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !4, line: 322, baseType: !29)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !312, file: !311, line: 144, baseType: !329, size: 64, offset: 256)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_end_function", file: !311, line: 102, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !315, !153}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "get_check", scope: !312, file: !311, line: 148, baseType: !334, size: 64, offset: 320)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{!110, !337}
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !316)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "memconfig", scope: !312, file: !311, line: 152, baseType: !340, size: 64, offset: 384)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DISubroutineType(types: !342)
!342 = !{!99, !315, !343, !343, !70}
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !312, file: !311, line: 157, baseType: !345, size: 64, offset: 448)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DISubroutineType(types: !347)
!347 = !{!99, !315, !153, !348, !348}
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!350 = !DILocalVariable(name: "ret", scope: !297, file: !1, line: 190, type: !99)
!351 = !DILocalVariable(name: "in_pos", scope: !352, file: !1, line: 194, type: !49)
!352 = distinct !DILexicalBlock(scope: !353, file: !1, line: 193, column: 22)
!353 = distinct !DILexicalBlock(scope: !297, file: !1, line: 193, column: 6)
!354 = distinct !DIAssignID()
!355 = !DILocation(line: 0, scope: !297)
!356 = distinct !DIAssignID()
!357 = !DILocation(line: 0, scope: !352)
!358 = !DILocation(line: 0, scope: !76, inlinedAt: !359)
!359 = distinct !DILocation(line: 168, column: 27, scope: !297)
!360 = !DILocation(line: 35, column: 24, scope: !85, inlinedAt: !359)
!361 = !DILocation(line: 35, column: 6, scope: !76, inlinedAt: !359)
!362 = !DILocation(line: 42, column: 66, scope: !76, inlinedAt: !359)
!363 = !DILocation(line: 43, column: 5, scope: !76, inlinedAt: !359)
!364 = !DILocation(line: 44, column: 4, scope: !76, inlinedAt: !359)
!365 = !DILocation(line: 47, column: 26, scope: !91, inlinedAt: !359)
!366 = !DILocation(line: 47, column: 37, scope: !91, inlinedAt: !359)
!367 = !DILocation(line: 168, column: 9, scope: !297)
!368 = !DILocation(line: 168, column: 25, scope: !297)
!369 = !DILocation(line: 169, column: 6, scope: !297)
!370 = !DILocation(line: 47, column: 6, scope: !76, inlinedAt: !359)
!371 = !DILocation(line: 172, column: 9, scope: !297)
!372 = !DILocation(line: 172, column: 27, scope: !297)
!373 = !DILocation(line: 173, column: 2, scope: !307)
!374 = !DILocation(line: 0, scope: !307)
!375 = !DILocation(line: 173, column: 2, scope: !376)
!376 = distinct !DILexicalBlock(scope: !307, file: !1, line: 173, column: 2)
!377 = !DILocation(line: 176, column: 17, scope: !378)
!378 = distinct !DILexicalBlock(scope: !297, file: !1, line: 176, column: 6)
!379 = !DILocation(line: 176, column: 15, scope: !378)
!380 = !DILocation(line: 176, column: 36, scope: !378)
!381 = !DILocation(line: 176, column: 29, scope: !378)
!382 = !DILocation(line: 176, column: 26, scope: !378)
!383 = !DILocation(line: 176, column: 6, scope: !297)
!384 = !DILocation(line: 180, column: 11, scope: !297)
!385 = !DILocation(line: 184, column: 35, scope: !386)
!386 = distinct !DILexicalBlock(scope: !297, file: !1, line: 184, column: 6)
!387 = !DILocation(line: 189, column: 2, scope: !297)
!388 = !DILocation(line: 189, column: 18, scope: !297)
!389 = distinct !DIAssignID()
!390 = distinct !DIAssignID()
!391 = !DILocation(line: 191, column: 36, scope: !297)
!392 = !DILocation(line: 190, column: 17, scope: !297)
!393 = !DILocation(line: 193, column: 10, scope: !353)
!394 = !DILocation(line: 193, column: 6, scope: !297)
!395 = !DILocation(line: 184, column: 15, scope: !386)
!396 = !DILocation(line: 184, column: 26, scope: !386)
!397 = !DILocation(line: 184, column: 6, scope: !297)
!398 = !DILocation(line: 194, column: 3, scope: !352)
!399 = !DILocation(line: 194, column: 10, scope: !352)
!400 = distinct !DIAssignID()
!401 = !DILocation(line: 195, column: 21, scope: !352)
!402 = !DILocation(line: 195, column: 38, scope: !352)
!403 = !DILocation(line: 195, column: 9, scope: !352)
!404 = !DILocation(line: 198, column: 2, scope: !353)
!405 = !DILocation(line: 198, column: 2, scope: !352)
!406 = !DILocation(line: 201, column: 2, scope: !297)
!407 = !DILocation(line: 203, column: 6, scope: !297)
!408 = !DILocation(line: 206, column: 7, scope: !409)
!409 = distinct !DILexicalBlock(scope: !410, file: !1, line: 203, column: 30)
!410 = distinct !DILexicalBlock(scope: !297, file: !1, line: 203, column: 6)
!411 = !DILocation(line: 206, column: 38, scope: !409)
!412 = !DILocation(line: 206, column: 31, scope: !409)
!413 = !DILocation(line: 206, column: 16, scope: !409)
!414 = !DILocation(line: 206, column: 5, scope: !409)
!415 = !DILocation(line: 207, column: 45, scope: !409)
!416 = !DILocation(line: 207, column: 9, scope: !409)
!417 = !DILocation(line: 208, column: 11, scope: !418)
!418 = distinct !DILexicalBlock(scope: !409, file: !1, line: 208, column: 7)
!419 = !DILocation(line: 0, scope: !409)
!420 = !DILocation(line: 218, column: 12, scope: !421)
!421 = distinct !DILexicalBlock(scope: !297, file: !1, line: 217, column: 6)
!422 = !DILocation(line: 218, column: 3, scope: !421)
!423 = !DILocation(line: 221, column: 1, scope: !297)
!424 = distinct !DISubprogram(name: "block_encode_uncompressed", scope: !1, file: !1, line: 82, type: !425, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !427)
!425 = !DISubroutineType(types: !426)
!426 = !{!99, !100, !166, !49, !168, !169, !49}
!427 = !{!428, !429, !430, !431, !432, !433, !434, !464, !468, !469, !470, !471}
!428 = !DILocalVariable(name: "block", arg: 1, scope: !424, file: !1, line: 82, type: !100)
!429 = !DILocalVariable(name: "in", arg: 2, scope: !424, file: !1, line: 82, type: !166)
!430 = !DILocalVariable(name: "in_size", arg: 3, scope: !424, file: !1, line: 82, type: !49)
!431 = !DILocalVariable(name: "out", arg: 4, scope: !424, file: !1, line: 83, type: !168)
!432 = !DILocalVariable(name: "out_pos", arg: 5, scope: !424, file: !1, line: 83, type: !169)
!433 = !DILocalVariable(name: "out_size", arg: 6, scope: !424, file: !1, line: 83, type: !49)
!434 = !DILocalVariable(name: "lzma2", scope: !424, file: !1, line: 91, type: !435)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_options_lzma", file: !36, line: 399, baseType: !436)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 185, size: 896, elements: !437)
!437 = !{!438, !439, !440, !441, !442, !443, !444, !446, !447, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "dict_size", scope: !436, file: !36, line: 217, baseType: !106, size: 32)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict", scope: !436, file: !36, line: 240, baseType: !166, size: 64, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict_size", scope: !436, file: !36, line: 254, baseType: !106, size: 32, offset: 128)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "lc", scope: !436, file: !36, line: 281, baseType: !106, size: 32, offset: 160)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "lp", scope: !436, file: !36, line: 293, baseType: !106, size: 32, offset: 192)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "pb", scope: !436, file: !36, line: 316, baseType: !106, size: 32, offset: 224)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !436, file: !36, line: 322, baseType: !445, size: 32, offset: 256)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_mode", file: !36, line: 155, baseType: !35)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "nice_len", scope: !436, file: !36, line: 342, baseType: !106, size: 32, offset: 288)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "mf", scope: !436, file: !36, line: 345, baseType: !448, size: 32, offset: 320)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_match_finder", file: !36, line: 111, baseType: !40)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !436, file: !36, line: 375, baseType: !106, size: 32, offset: 352)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !436, file: !36, line: 384, baseType: !106, size: 32, offset: 384)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !436, file: !36, line: 385, baseType: !106, size: 32, offset: 416)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !436, file: !36, line: 386, baseType: !106, size: 32, offset: 448)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !436, file: !36, line: 387, baseType: !106, size: 32, offset: 480)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int5", scope: !436, file: !36, line: 388, baseType: !106, size: 32, offset: 512)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int6", scope: !436, file: !36, line: 389, baseType: !106, size: 32, offset: 544)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int7", scope: !436, file: !36, line: 390, baseType: !106, size: 32, offset: 576)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int8", scope: !436, file: !36, line: 391, baseType: !106, size: 32, offset: 608)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !436, file: !36, line: 392, baseType: !140, size: 32, offset: 640)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !436, file: !36, line: 393, baseType: !140, size: 32, offset: 672)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !436, file: !36, line: 394, baseType: !140, size: 32, offset: 704)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !436, file: !36, line: 395, baseType: !140, size: 32, offset: 736)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !436, file: !36, line: 396, baseType: !48, size: 64, offset: 768)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !436, file: !36, line: 397, baseType: !48, size: 64, offset: 832)
!464 = !DILocalVariable(name: "filters", scope: !424, file: !1, line: 95, type: !465)
!465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 256, elements: !466)
!466 = !{!467}
!467 = !DISubrange(count: 2)
!468 = !DILocalVariable(name: "filters_orig", scope: !424, file: !1, line: 102, type: !114)
!469 = !DILocalVariable(name: "in_pos", scope: !424, file: !1, line: 131, type: !49)
!470 = !DILocalVariable(name: "control", scope: !424, file: !1, line: 132, type: !123)
!471 = !DILocalVariable(name: "copy_size", scope: !472, file: !1, line: 141, type: !179)
!472 = distinct !DILexicalBlock(scope: !424, file: !1, line: 134, column: 27)
!473 = distinct !DIAssignID()
!474 = !DILocation(line: 0, scope: !424)
!475 = distinct !DIAssignID()
!476 = !DILocation(line: 91, column: 2, scope: !424)
!477 = !DILocation(line: 91, column: 20, scope: !424)
!478 = distinct !DIAssignID()
!479 = distinct !DIAssignID()
!480 = !DILocation(line: 95, column: 2, scope: !424)
!481 = !DILocation(line: 96, column: 16, scope: !424)
!482 = distinct !DIAssignID()
!483 = !DILocation(line: 97, column: 13, scope: !424)
!484 = !DILocation(line: 97, column: 21, scope: !424)
!485 = distinct !DIAssignID()
!486 = !DILocation(line: 98, column: 2, scope: !424)
!487 = !DILocation(line: 98, column: 16, scope: !424)
!488 = distinct !DIAssignID()
!489 = !DILocation(line: 102, column: 37, scope: !424)
!490 = !DILocation(line: 103, column: 17, scope: !424)
!491 = !DILocation(line: 105, column: 6, scope: !492)
!492 = distinct !DILexicalBlock(scope: !424, file: !1, line: 105, column: 6)
!493 = !DILocation(line: 105, column: 36, scope: !492)
!494 = !DILocation(line: 105, column: 6, scope: !424)
!495 = !DILocation(line: 106, column: 18, scope: !496)
!496 = distinct !DILexicalBlock(scope: !492, file: !1, line: 105, column: 48)
!497 = !DILocation(line: 107, column: 3, scope: !496)
!498 = !DILocation(line: 116, column: 17, scope: !499)
!499 = distinct !DILexicalBlock(scope: !424, file: !1, line: 116, column: 6)
!500 = !DILocation(line: 116, column: 15, scope: !499)
!501 = !DILocation(line: 117, column: 13, scope: !499)
!502 = !DILocation(line: 117, column: 6, scope: !499)
!503 = !DILocation(line: 117, column: 34, scope: !499)
!504 = !DILocation(line: 117, column: 25, scope: !499)
!505 = !DILocation(line: 117, column: 4, scope: !499)
!506 = !DILocation(line: 116, column: 6, scope: !424)
!507 = !DILocation(line: 118, column: 18, scope: !508)
!508 = distinct !DILexicalBlock(scope: !499, file: !1, line: 117, column: 51)
!509 = !DILocation(line: 119, column: 3, scope: !508)
!510 = !DILocation(line: 122, column: 42, scope: !511)
!511 = distinct !DILexicalBlock(scope: !424, file: !1, line: 122, column: 6)
!512 = !DILocation(line: 122, column: 6, scope: !511)
!513 = !DILocation(line: 122, column: 54, scope: !511)
!514 = !DILocation(line: 122, column: 6, scope: !424)
!515 = !DILocation(line: 128, column: 21, scope: !424)
!516 = !DILocation(line: 128, column: 14, scope: !424)
!517 = !DILocation(line: 128, column: 11, scope: !424)
!518 = !DILocation(line: 134, column: 16, scope: !424)
!519 = !DILocation(line: 134, column: 2, scope: !424)
!520 = !DILocation(line: 137, column: 17, scope: !472)
!521 = !DILocation(line: 137, column: 3, scope: !472)
!522 = !DILocation(line: 137, column: 21, scope: !472)
!523 = !DILocation(line: 142, column: 7, scope: !472)
!524 = !DILocation(line: 0, scope: !472)
!525 = !DILocation(line: 143, column: 34, scope: !472)
!526 = !DILocation(line: 143, column: 39, scope: !472)
!527 = !DILocation(line: 143, column: 23, scope: !472)
!528 = !DILocation(line: 143, column: 17, scope: !472)
!529 = !DILocation(line: 143, column: 3, scope: !472)
!530 = !DILocation(line: 143, column: 21, scope: !472)
!531 = !DILocation(line: 144, column: 23, scope: !472)
!532 = !DILocation(line: 144, column: 17, scope: !472)
!533 = !DILocation(line: 144, column: 3, scope: !472)
!534 = !DILocation(line: 144, column: 21, scope: !472)
!535 = !DILocation(line: 148, column: 16, scope: !472)
!536 = !DILocation(line: 148, column: 14, scope: !472)
!537 = !DILocation(line: 148, column: 3, scope: !472)
!538 = !DILocation(line: 151, column: 12, scope: !472)
!539 = !DILocation(line: 148, column: 29, scope: !472)
!540 = !DILocation(line: 150, column: 10, scope: !472)
!541 = distinct !{!541, !519, !542, !543}
!542 = !DILocation(line: 152, column: 2, scope: !424)
!543 = !{!"llvm.loop.peeled.count", i32 1}
!544 = !DILocation(line: 155, column: 16, scope: !424)
!545 = !DILocation(line: 155, column: 2, scope: !424)
!546 = !DILocation(line: 155, column: 20, scope: !424)
!547 = !DILocation(line: 159, column: 1, scope: !424)
!548 = !DISubprogram(name: "lzma_check_init", scope: !192, file: !192, line: 75, type: !549, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!549 = !DISubroutineType(types: !550)
!550 = !{null, !551, !110}
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!552 = !DISubprogram(name: "lzma_check_update", scope: !192, file: !192, line: 78, type: !553, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!553 = !DISubroutineType(types: !554)
!554 = !{null, !551, !110, !166, !49}
!555 = !DISubprogram(name: "lzma_check_finish", scope: !192, file: !192, line: 82, type: !549, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!556 = !DISubprogram(name: "lzma_block_header_size", scope: !102, file: !102, line: 283, type: !557, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!557 = !DISubroutineType(types: !558)
!558 = !{!99, !100}
!559 = !DISubprogram(name: "lzma_raw_encoder_init", scope: !560, file: !560, line: 23, type: !561, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!560 = !DIFile(filename: "liblzma/common/filter_encoder.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "ddc4c6a58369644501ee0eefd7b6bf8f")
!561 = !DISubroutineType(types: !562)
!562 = !{!99, !563, !153, !348}
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!564 = !DISubprogram(name: "lzma_next_end", scope: !311, file: !311, line: 237, type: !565, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!565 = !DISubroutineType(types: !566)
!566 = !{null, !563, !153}
!567 = !DISubprogram(name: "lzma_block_header_encode", scope: !102, file: !102, line: 305, type: !568, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!568 = !DISubroutineType(types: !569)
!569 = !{!99, !570, !168}
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
